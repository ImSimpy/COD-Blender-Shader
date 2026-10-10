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
; shader hash: 7f23540fde01e159a5b15ca9de9d59ce
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
;   [160 x i8] (type annotation not present)
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
;                                   texture     f32          2d     T16             t1     1
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
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
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %49 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = alloca [12 x float], align 4
  %97 = alloca [12 x float], align 4
  %98 = alloca [4 x float], align 4
  %99 = alloca [4 x float], align 4
  %100 = alloca [4 x float], align 4
  %101 = alloca [4 x float], align 4
  %102 = alloca [3 x float], align 4
  %103 = alloca [3 x float], align 4
  %104 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %105 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 0
  %108 = fmul fast float %107, %92
  %109 = fmul fast float %107, %93
  %110 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %111 = bitcast float %110 to i32
  %112 = ashr i32 %111, 1
  %113 = sub nsw i32 1597250115, %112
  %114 = bitcast i32 %113 to float
  %115 = fmul fast float %114, %83
  %116 = fmul fast float %114, %84
  %117 = fmul fast float %114, %85
  %118 = fmul fast float %84, %81
  %119 = fmul fast float %85, %80
  %120 = fsub fast float %118, %119
  %121 = fmul fast float %85, %79
  %122 = fmul fast float %83, %81
  %123 = fsub fast float %121, %122
  %124 = fmul fast float %83, %80
  %125 = fmul fast float %84, %79
  %126 = fsub fast float %124, %125
  %127 = fmul fast float %120, %82
  %128 = fmul fast float %123, %82
  %129 = fmul fast float %126, %82
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 0
  %132 = fcmp fast une float %131, 0.000000e+00
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 3
  %136 = fmul fast float %108, 2.000000e+00
  %137 = fmul fast float %136, %134
  %138 = fmul fast float %109, 2.000000e+00
  %139 = fmul fast float %138, %135
  %140 = fsub fast float 1.000000e+00, %137
  %141 = fsub fast float 1.000000e+00, %139
  %142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.f32 %142, 0
  %144 = extractvalue %dx.types.CBufRet.f32 %142, 1
  %145 = extractvalue %dx.types.CBufRet.f32 %142, 2
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 0
  %148 = extractvalue %dx.types.CBufRet.f32 %146, 1
  %149 = extractvalue %dx.types.CBufRet.f32 %146, 2
  %150 = select i1 %132, float %143, float %147
  %151 = select i1 %132, float %144, float %148
  %152 = select i1 %132, float %145, float %149
  %153 = fmul fast float %150, %140
  %154 = fmul fast float %151, %140
  %155 = fmul fast float %152, %140
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 0
  %158 = extractvalue %dx.types.CBufRet.f32 %156, 1
  %159 = extractvalue %dx.types.CBufRet.f32 %156, 2
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.f32 %160, 0
  %162 = extractvalue %dx.types.CBufRet.f32 %160, 1
  %163 = extractvalue %dx.types.CBufRet.f32 %160, 2
  %164 = select i1 %132, float %157, float %161
  %165 = select i1 %132, float %158, float %162
  %166 = select i1 %132, float %159, float %163
  %167 = fmul fast float %164, %141
  %168 = fmul fast float %165, %141
  %169 = fmul fast float %166, %141
  %170 = fadd fast float %167, %153
  %171 = fadd fast float %168, %154
  %172 = fadd fast float %169, %155
  %173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %174 = extractvalue %dx.types.CBufRet.f32 %173, 0
  %175 = extractvalue %dx.types.CBufRet.f32 %173, 1
  %176 = extractvalue %dx.types.CBufRet.f32 %173, 2
  %177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %178 = extractvalue %dx.types.CBufRet.f32 %177, 0
  %179 = extractvalue %dx.types.CBufRet.f32 %177, 1
  %180 = extractvalue %dx.types.CBufRet.f32 %177, 2
  %181 = select i1 %132, float %174, float %178
  %182 = select i1 %132, float %175, float %179
  %183 = select i1 %132, float %176, float %180
  %184 = fadd fast float %170, %181
  %185 = fadd fast float %171, %182
  %186 = fadd fast float %172, %183
  %187 = fmul fast float %184, %95
  %188 = fmul fast float %185, %95
  %189 = fmul fast float %186, %95
  %190 = fmul fast float %108, 5.000000e-01
  %191 = fmul fast float %109, 5.000000e-01
  %192 = fptosi float %190 to i32
  %193 = fptosi float %191 to i32
  %194 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %21, i32 0, i32 %192, i32 %193, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %195 = extractvalue %dx.types.ResRet.i32 %194, 0
  %196 = lshr i32 %195, 18
  %197 = uitofp i32 %196 to float
  %198 = fmul fast float %197, 0x3F4C00EBA0000000
  %199 = call float @dx.op.unary.f32(i32 21, float %198)  ; Exp(value)
  %200 = fadd fast float %199, -1.000000e+00
  %201 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %21, i32 0)  ; GetDimensions(handle,mipLevel)
  %202 = extractvalue %dx.types.Dimensions %201, 0
  %203 = sitofp i32 %202 to float
  %204 = extractvalue %dx.types.Dimensions %201, 1
  %205 = sitofp i32 %204 to float
  %206 = fcmp fast oge float %190, %203
  %207 = fcmp fast oge float %191, %205
  %208 = or i1 %206, %207
  %209 = select i1 %208, float 0x4197782600000000, float %200
  %210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.f32 %210, 2
  %212 = extractvalue %dx.types.CBufRet.f32 %210, 3
  %213 = fmul fast float %211, %108
  %214 = fmul fast float %212, %109
  %215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %216 = extractvalue %dx.types.ResRet.i32 %215, 0
  %217 = and i32 %216, 114688
  %218 = icmp ne i32 %217, 0
  %219 = select i1 %218, float %213, float 0.000000e+00
  %220 = select i1 %218, float %214, float 0.000000e+00
  %221 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %219, float %220, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %222 = extractvalue %dx.types.ResRet.f32 %221, 0
  %223 = fmul fast float %222, 2.550000e+02
  %224 = fptoui float %223 to i32
  %225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %226 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %227 = extractvalue %dx.types.CBufRet.i32 %226, 3
  %228 = and i32 %227, 3
  %229 = icmp ne i32 %228, 0
  %230 = and i32 %227, 4
  %231 = icmp ne i32 %230, 0
  %232 = and i1 %229, %231
  br i1 %232, label %233, label %244

; <label>:233                                     ; preds = %0
  %234 = extractvalue %dx.types.CBufRet.f32 %225, 3
  %235 = fmul fast float %234, %109
  %236 = extractvalue %dx.types.CBufRet.f32 %225, 2
  %237 = fmul fast float %236, %108
  %238 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %43, float %237, float %235, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %239 = extractvalue %dx.types.ResRet.f32 %238, 0
  %240 = fsub fast float 1.000000e+00, %239
  %241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %242 = extractvalue %dx.types.CBufRet.f32 %241, 0
  %243 = fcmp fast olt float %240, %242
  br label %247

; <label>:244                                     ; preds = %0
  %245 = icmp eq i32 %230, 0
  %246 = and i1 %229, %245
  br label %247

; <label>:247                                     ; preds = %244, %233
  %248 = phi i1 [ %243, %233 ], [ %246, %244 ]
  %249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %250 = extractvalue %dx.types.CBufRet.f32 %249, 2
  %251 = fmul fast float %250, 0x3FE3C6EF40000000
  %252 = frem fast float %108, 2.560000e+02
  %253 = frem fast float %109, 2.560000e+02
  %254 = fptoui float %252 to i32
  %255 = fptoui float %253 to i32
  %256 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %27, i32 0, i32 %254, i32 %255, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %257 = extractvalue %dx.types.ResRet.f32 %256, 0
  %258 = fadd fast float %257, %251
  %259 = call float @dx.op.unary.f32(i32 22, float %258)  ; Frc(value)
  %260 = add i32 %49, 156
  %261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %260, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.i32 %261, 0
  %263 = shl i32 %262, 4
  %264 = and i32 %263, 32752
  %265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %264)  ; LegacyF16ToF32(value)
  %266 = lshr i32 %262, 7
  %267 = and i32 %266, 32752
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = lshr i32 %262, 22
  %270 = shl nuw nsw i32 %269, 5
  %271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %270)  ; LegacyF16ToF32(value)
  %272 = add i32 %49, 216
  %273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.i32 %273, 0
  %275 = and i32 %274, 255
  %276 = uitofp i32 %275 to float
  %277 = fmul fast float %276, 0x3F70101020000000
  %278 = lshr i32 %274, 8
  %279 = and i32 %278, 255
  %280 = uitofp i32 %279 to float
  %281 = fmul fast float %280, 0x3F70101020000000
  %282 = lshr i32 %274, 16
  %283 = and i32 %282, 255
  %284 = uitofp i32 %283 to float
  %285 = fmul fast float %284, 0x3F70101020000000
  %286 = add i32 %49, 36
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.i32 %287, 0
  %289 = and i32 %288, 65535
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = lshr i32 %288, 16
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = add i32 %49, 288
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = and i32 %295, 65535
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = lshr i32 %295, 16
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = fmul fast float %297, 0x3F50624DE0000000
  %301 = fmul fast float %299, 0x3F50624DE0000000
  %302 = add i32 %49, 172
  %303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 0
  %305 = shl i32 %304, 4
  %306 = and i32 %305, 32752
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = lshr i32 %304, 7
  %309 = and i32 %308, 32752
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = lshr i32 %304, 22
  %312 = shl nuw nsw i32 %311, 5
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = add i32 %49, 232
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = and i32 %316, 255
  %318 = uitofp i32 %317 to float
  %319 = fmul fast float %318, 0x3F70101020000000
  %320 = lshr i32 %316, 8
  %321 = and i32 %320, 255
  %322 = uitofp i32 %321 to float
  %323 = fmul fast float %322, 0x3F70101020000000
  %324 = lshr i32 %316, 16
  %325 = and i32 %324, 255
  %326 = uitofp i32 %325 to float
  %327 = fmul fast float %326, 0x3F70101020000000
  %328 = add i32 %49, 52
  %329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.i32 %329, 0
  %331 = and i32 %330, 65535
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = lshr i32 %330, 16
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = add i32 %49, 304
  %336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %337 = extractvalue %dx.types.ResRet.i32 %336, 0
  %338 = and i32 %337, 65535
  %339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %338)  ; LegacyF16ToF32(value)
  %340 = lshr i32 %337, 16
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = fmul fast float %339, 0x3F50624DE0000000
  %343 = fmul fast float %341, 0x3F50624DE0000000
  %344 = add i32 %49, 188
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = shl i32 %346, 4
  %348 = and i32 %347, 32752
  %349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %348)  ; LegacyF16ToF32(value)
  %350 = lshr i32 %346, 7
  %351 = and i32 %350, 32752
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = lshr i32 %346, 22
  %354 = shl nuw nsw i32 %353, 5
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = add i32 %49, 248
  %357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %356, i32 undef)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.i32 %357, 0
  %359 = and i32 %358, 255
  %360 = uitofp i32 %359 to float
  %361 = fmul fast float %360, 0x3F70101020000000
  %362 = lshr i32 %358, 8
  %363 = and i32 %362, 255
  %364 = uitofp i32 %363 to float
  %365 = fmul fast float %364, 0x3F70101020000000
  %366 = lshr i32 %358, 16
  %367 = and i32 %366, 255
  %368 = uitofp i32 %367 to float
  %369 = fmul fast float %368, 0x3F70101020000000
  %370 = add i32 %49, 68
  %371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %372 = extractvalue %dx.types.ResRet.i32 %371, 0
  %373 = and i32 %372, 65535
  %374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %373)  ; LegacyF16ToF32(value)
  %375 = lshr i32 %372, 16
  %376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %375)  ; LegacyF16ToF32(value)
  %377 = add i32 %49, 320
  %378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.i32 %378, 0
  %380 = and i32 %379, 65535
  %381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %380)  ; LegacyF16ToF32(value)
  %382 = lshr i32 %379, 16
  %383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %382)  ; LegacyF16ToF32(value)
  %384 = fmul fast float %381, 0x3F50624DE0000000
  %385 = fmul fast float %383, 0x3F50624DE0000000
  %386 = add i32 %49, 204
  %387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.i32 %387, 0
  %389 = shl i32 %388, 4
  %390 = and i32 %389, 32752
  %391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %390)  ; LegacyF16ToF32(value)
  %392 = lshr i32 %388, 7
  %393 = and i32 %392, 32752
  %394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %393)  ; LegacyF16ToF32(value)
  %395 = lshr i32 %388, 22
  %396 = shl nuw nsw i32 %395, 5
  %397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %396)  ; LegacyF16ToF32(value)
  %398 = add i32 %49, 264
  %399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %400 = extractvalue %dx.types.ResRet.i32 %399, 0
  %401 = and i32 %400, 255
  %402 = uitofp i32 %401 to float
  %403 = fmul fast float %402, 0x3F70101020000000
  %404 = lshr i32 %400, 8
  %405 = and i32 %404, 255
  %406 = uitofp i32 %405 to float
  %407 = fmul fast float %406, 0x3F70101020000000
  %408 = lshr i32 %400, 16
  %409 = and i32 %408, 255
  %410 = uitofp i32 %409 to float
  %411 = fmul fast float %410, 0x3F70101020000000
  %412 = add i32 %49, 84
  %413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.i32 %413, 0
  %415 = and i32 %414, 65535
  %416 = call float @dx.op.legacyF16ToF32(i32 131, i32 %415)  ; LegacyF16ToF32(value)
  %417 = lshr i32 %414, 16
  %418 = call float @dx.op.legacyF16ToF32(i32 131, i32 %417)  ; LegacyF16ToF32(value)
  %419 = add i32 %49, 336
  %420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.i32 %420, 0
  %422 = and i32 %421, 65535
  %423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %422)  ; LegacyF16ToF32(value)
  %424 = lshr i32 %421, 16
  %425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %424)  ; LegacyF16ToF32(value)
  %426 = fmul fast float %423, 0x3F50624DE0000000
  %427 = fmul fast float %425, 0x3F50624DE0000000
  %428 = add i32 %49, 348
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = and i32 %430, 32
  %432 = icmp eq i32 %431, 0
  %433 = and i32 %430, 64
  %434 = icmp eq i32 %433, 0
  %435 = and i32 %430, 128
  %436 = icmp eq i32 %435, 0
  %437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.i32 %437, 0
  %439 = and i32 %438, 2
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %456, label %441

; <label>:441                                     ; preds = %247
  %442 = add i32 %49, 504
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 0
  %445 = add i32 %444, 0
  %446 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %445, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %447 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %446, %dx.types.Handle %105, float %86, float %87, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %448 = extractvalue %dx.types.ResRet.f32 %447, 0
  %449 = extractvalue %dx.types.ResRet.f32 %447, 1
  %450 = extractvalue %dx.types.ResRet.f32 %447, 2
  %451 = extractvalue %dx.types.ResRet.f32 %447, 3
  %452 = fmul fast float %451, %88
  %453 = fmul fast float %448, %89
  %454 = fmul fast float %449, %90
  %455 = fmul fast float %450, %91
  br label %456

; <label>:456                                     ; preds = %441, %247
  %457 = phi float [ %91, %247 ], [ %455, %441 ]
  %458 = phi float [ %90, %247 ], [ %454, %441 ]
  %459 = phi float [ %89, %247 ], [ %453, %441 ]
  %460 = phi float [ %88, %247 ], [ %452, %441 ]
  %461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.i32 %461, 0
  %463 = and i32 %462, 2
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %484, label %465

; <label>:465                                     ; preds = %456
  %466 = add i32 %49, 44
  %467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.i32 %467, 0
  %469 = and i32 %468, 1
  %470 = icmp ne i32 %469, 0
  %471 = select i1 %470, float %459, float 1.000000e+00
  %472 = add i32 %49, 60
  %473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.i32 %473, 0
  %475 = and i32 %474, 1
  %476 = icmp ne i32 %475, 0
  %477 = select i1 %476, float %458, float 1.000000e+00
  %478 = add i32 %49, 76
  %479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.i32 %479, 0
  %481 = and i32 %480, 1
  %482 = icmp ne i32 %481, 0
  %483 = select i1 %482, float %457, float 1.000000e+00
  br label %484

; <label>:484                                     ; preds = %465, %456
  %485 = phi float [ %457, %456 ], [ %483, %465 ]
  %486 = phi float [ %458, %456 ], [ %477, %465 ]
  %487 = phi float [ %459, %456 ], [ %471, %465 ]
  %488 = lshr i32 %462, 20
  %489 = and i32 %488, 3
  %490 = add nuw nsw i32 %489, 1
  %491 = add i32 %49, 24
  %492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.i32 %492, 0
  %494 = add i32 %49, 28
  %495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %494, i32 undef)  ; BufferLoad(srv,index,wot)
  %496 = extractvalue %dx.types.ResRet.i32 %495, 0
  %497 = or i32 %496, %493
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %1144, label %499

; <label>:499                                     ; preds = %484
  %500 = and i32 %493, 262144
  %501 = icmp ne i32 %500, 0
  %502 = select i1 %501, float %54, float 1.000000e+00
  %503 = select i1 %501, float %55, float 0.000000e+00
  %504 = select i1 %501, float %56, float 0.000000e+00
  %505 = select i1 %501, float %57, float 1.000000e+00
  %506 = select i1 %501, float %58, float %86
  %507 = select i1 %501, float %59, float %87
  %508 = add i32 %49, 284
  %509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.i32 %509, 0
  %511 = lshr i32 %510, 16
  %512 = call float @dx.op.legacyF16ToF32(i32 131, i32 %511)  ; LegacyF16ToF32(value)
  %513 = fmul fast float %512, 0x3F50624DE0000000
  %514 = add i32 %49, 88
  %515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %514, i32 undef)  ; BufferLoad(srv,index,wot)
  %516 = extractvalue %dx.types.ResRet.i32 %515, 0
  %517 = lshr i32 %516, 16
  %518 = and i32 %517, 255
  %519 = lshr i32 %516, 24
  %520 = add i32 %49, 292
  %521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %520, i32 undef)  ; BufferLoad(srv,index,wot)
  %522 = extractvalue %dx.types.ResRet.i32 %521, 0
  %523 = and i32 %522, 65535
  %524 = call float @dx.op.legacyF16ToF32(i32 131, i32 %523)  ; LegacyF16ToF32(value)
  %525 = lshr i32 %522, 16
  %526 = call float @dx.op.legacyF16ToF32(i32 131, i32 %525)  ; LegacyF16ToF32(value)
  %527 = add i32 %49, 32
  %528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.i32 %528, 0
  %530 = lshr i32 %529, 22
  %531 = shl nuw nsw i32 %530, 5
  %532 = call float @dx.op.legacyF16ToF32(i32 131, i32 %531)  ; LegacyF16ToF32(value)
  %533 = shl i32 %529, 4
  %534 = and i32 %533, 32752
  %535 = call float @dx.op.legacyF16ToF32(i32 131, i32 %534)  ; LegacyF16ToF32(value)
  %536 = lshr i32 %529, 7
  %537 = and i32 %536, 32752
  %538 = call float @dx.op.legacyF16ToF32(i32 131, i32 %537)  ; LegacyF16ToF32(value)
  %539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %540 = extractvalue %dx.types.CBufRet.f32 %539, 3
  %541 = fmul fast float %540, 1.000000e+03
  %542 = fmul fast float %300, %541
  %543 = call float @dx.op.unary.f32(i32 22, float %542)  ; Frc(value)
  %544 = fadd fast float %543, %290
  %545 = fmul fast float %301, %541
  %546 = call float @dx.op.unary.f32(i32 22, float %545)  ; Frc(value)
  %547 = fadd fast float %546, %292
  %548 = fmul fast float %513, %541
  %549 = call float @dx.op.unary.f32(i32 22, float %548)  ; Frc(value)
  %550 = fmul fast float %549, 0x401921FB60000000
  %551 = fadd fast float %550, %532
  %552 = call float @dx.op.unary.f32(i32 13, float %551)  ; Sin(value)
  %553 = call float @dx.op.unary.f32(i32 12, float %551)  ; Cos(value)
  %554 = fsub fast float -0.000000e+00, %552
  %555 = fadd fast float %506, -5.000000e-01
  %556 = fadd fast float %507, -5.000000e-01
  %557 = fmul fast float %524, %555
  %558 = fmul fast float %526, %556
  %559 = fadd fast float %557, 5.000000e-01
  %560 = fadd fast float %558, 5.000000e-01
  %561 = fmul fast float %535, %559
  %562 = fmul fast float %538, %560
  %563 = fmul fast float %553, %561
  %564 = call float @dx.op.tertiary.f32(i32 46, float %554, float %562, float %563)  ; FMad(a,b,c)
  %565 = fmul fast float %552, %561
  %566 = call float @dx.op.tertiary.f32(i32 46, float %553, float %562, float %565)  ; FMad(a,b,c)
  %567 = fadd fast float %544, %564
  %568 = fadd fast float %547, %566
  %569 = icmp ugt i32 %518, 1
  %570 = icmp ugt i32 %516, 33554431
  %571 = or i1 %570, %569
  br i1 %571, label %572, label %597

; <label>:572                                     ; preds = %499
  %573 = add i32 %49, 228
  %574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %573, i32 undef)  ; BufferLoad(srv,index,wot)
  %575 = extractvalue %dx.types.ResRet.i32 %574, 0
  %576 = lshr i32 %575, 16
  %577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %576)  ; LegacyF16ToF32(value)
  %578 = fmul fast float %540, %577
  %579 = call float @dx.op.unary.f32(i32 22, float %578)  ; Frc(value)
  %580 = mul nuw nsw i32 %518, %519
  %581 = uitofp i32 %580 to float
  %582 = fmul fast float %579, %581
  %583 = call float @dx.op.unary.f32(i32 27, float %582)  ; Round_ni(value)
  %584 = fptoui float %583 to i32
  %585 = urem i32 %584, %518
  %586 = udiv i32 %584, %519
  %587 = call float @dx.op.unary.f32(i32 22, float %567)  ; Frc(value)
  %588 = call float @dx.op.unary.f32(i32 22, float %568)  ; Frc(value)
  %589 = uitofp i32 %585 to float
  %590 = uitofp i32 %586 to float
  %591 = fadd fast float %587, %589
  %592 = fadd fast float %588, %590
  %593 = uitofp i32 %518 to float
  %594 = uitofp i32 %519 to float
  %595 = fdiv fast float %591, %593
  %596 = fdiv fast float %592, %594
  br label %597

; <label>:597                                     ; preds = %572, %499
  %598 = phi float [ %595, %572 ], [ %567, %499 ]
  %599 = phi float [ %596, %572 ], [ %568, %499 ]
  %600 = and i32 %493, 256
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %648, label %602

; <label>:602                                     ; preds = %597
  %603 = add i32 %49, 440
  %604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %603, i32 undef)  ; BufferLoad(srv,index,wot)
  %605 = extractvalue %dx.types.ResRet.i32 %604, 0
  %606 = add i32 %605, 0
  %607 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %606, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %608 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %607, %dx.types.Handle %105, float %598, float %599, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %609 = extractvalue %dx.types.ResRet.f32 %608, 0
  %610 = add i32 %49, 100
  %611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %610, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.i32 %611, 0
  %613 = shl i32 %612, 4
  %614 = and i32 %613, 32752
  %615 = call float @dx.op.legacyF16ToF32(i32 131, i32 %614)  ; LegacyF16ToF32(value)
  %616 = lshr i32 %612, 7
  %617 = and i32 %616, 32752
  %618 = call float @dx.op.legacyF16ToF32(i32 131, i32 %617)  ; LegacyF16ToF32(value)
  %619 = fsub fast float 1.000000e+00, %460
  %620 = call float @dx.op.binary.f32(i32 35, float %619, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %621 = bitcast float %460 to i32
  %622 = sitofp i32 %621 to float
  %623 = fadd fast float %622, 0xC1CFBF8940000000
  %624 = fmul fast float %618, %623
  %625 = fadd fast float %624, 0x41CFBF8940000000
  %626 = fptosi float %625 to i32
  %627 = bitcast i32 %626 to float
  %628 = bitcast float %620 to i32
  %629 = sitofp i32 %628 to float
  %630 = fadd fast float %629, 0xC1CFBF8940000000
  %631 = fmul fast float %630, %618
  %632 = fadd fast float %631, 0x41CFBF8940000000
  %633 = fptosi float %632 to i32
  %634 = bitcast i32 %633 to float
  %635 = fmul fast float %627, %615
  %636 = fmul fast float %634, %615
  %637 = fsub fast float %620, %635
  %638 = fadd fast float %636, %620
  %639 = call float @dx.op.unary.f32(i32 7, float %637)  ; Saturate(value)
  %640 = call float @dx.op.unary.f32(i32 7, float %638)  ; Saturate(value)
  %641 = fsub fast float %609, %639
  %642 = fsub fast float %640, %639
  %643 = bitcast float %642 to i32
  %644 = sub nsw i32 2129859010, %643
  %645 = bitcast i32 %644 to float
  %646 = fmul fast float %645, %641
  %647 = call float @dx.op.unary.f32(i32 7, float %646)  ; Saturate(value)
  br label %648

; <label>:648                                     ; preds = %602, %597
  %649 = phi float [ %647, %602 ], [ %460, %597 ]
  %650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %651 = extractvalue %dx.types.ResRet.i32 %650, 0
  %652 = and i32 %651, 128
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %670, label %654

; <label>:654                                     ; preds = %648
  %655 = add i32 %49, 424
  %656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %655, i32 undef)  ; BufferLoad(srv,index,wot)
  %657 = extractvalue %dx.types.ResRet.i32 %656, 0
  %658 = add i32 %657, 0
  %659 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %658, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %660 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %659, %dx.types.Handle %105, float %598, float %599, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %661 = extractvalue %dx.types.ResRet.f32 %660, 0
  %662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %663 = extractvalue %dx.types.ResRet.i32 %662, 0
  %664 = and i32 %663, 524288
  %665 = icmp ne i32 %664, 0
  %666 = fcmp fast ogt float %661, 0x3FE0101020000000
  %667 = select i1 %666, float 1.000000e+00, float 0.000000e+00
  %668 = select i1 %665, float %667, float %661
  %669 = fmul fast float %668, %649
  br label %670

; <label>:670                                     ; preds = %654, %648
  %671 = phi float [ %669, %654 ], [ %649, %648 ]
  %672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %673 = extractvalue %dx.types.ResRet.i32 %672, 0
  %674 = and i32 %673, 16
  %675 = icmp eq i32 %674, 0
  br i1 %675, label %874, label %676

; <label>:676                                     ; preds = %670
  %677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %514, i32 undef)  ; BufferLoad(srv,index,wot)
  %678 = extractvalue %dx.types.ResRet.i32 %677, 0
  %679 = add i32 %49, 376
  %680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %679, i32 undef)  ; BufferLoad(srv,index,wot)
  %681 = extractvalue %dx.types.ResRet.i32 %680, 0
  %682 = add i32 %681, 0
  %683 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %682, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %684 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %683, %dx.types.Handle %104, float %598, float %599, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %685 = extractvalue %dx.types.ResRet.f32 %684, 0
  %686 = extractvalue %dx.types.ResRet.f32 %684, 1
  %687 = extractvalue %dx.types.ResRet.f32 %684, 2
  %688 = extractvalue %dx.types.ResRet.f32 %684, 3
  %689 = and i32 %678, 255
  %690 = uitofp i32 %689 to float
  %691 = lshr i32 %678, 8
  %692 = and i32 %691, 255
  %693 = uitofp i32 %692 to float
  %694 = fmul fast float %688, %690
  %695 = fadd fast float %694, %693
  %696 = fmul fast float %695, 0x3F70101000000000
  %697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %698 = extractvalue %dx.types.ResRet.i32 %697, 0
  %699 = and i32 %698, 512
  %700 = icmp eq i32 %699, 0
  br i1 %700, label %709, label %701

; <label>:701                                     ; preds = %676
  %702 = add i32 %49, 456
  %703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %702, i32 undef)  ; BufferLoad(srv,index,wot)
  %704 = extractvalue %dx.types.ResRet.i32 %703, 0
  %705 = add i32 %704, 0
  %706 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %705, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %707 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %706, %dx.types.Handle %105, float %598, float %599, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %708 = extractvalue %dx.types.ResRet.f32 %707, 0
  br label %709

; <label>:709                                     ; preds = %701, %676
  %710 = phi float [ %708, %701 ], [ 1.000000e+00, %676 ]
  %711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %712 = extractvalue %dx.types.ResRet.i32 %711, 0
  %713 = and i32 %712, 33554432
  %714 = icmp eq i32 %713, 0
  br i1 %714, label %821, label %715

; <label>:715                                     ; preds = %709
  %716 = add i32 %49, 224
  %717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %716, i32 undef)  ; BufferLoad(srv,index,wot)
  %718 = extractvalue %dx.types.ResRet.i32 %717, 0
  %719 = and i32 %718, 65535
  %720 = call float @dx.op.legacyF16ToF32(i32 131, i32 %719)  ; LegacyF16ToF32(value)
  %721 = lshr i32 %718, 16
  %722 = call float @dx.op.legacyF16ToF32(i32 131, i32 %721)  ; LegacyF16ToF32(value)
  %723 = add i32 %49, 228
  %724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %723, i32 undef)  ; BufferLoad(srv,index,wot)
  %725 = extractvalue %dx.types.ResRet.i32 %724, 0
  %726 = and i32 %725, 65535
  %727 = call float @dx.op.legacyF16ToF32(i32 131, i32 %726)  ; LegacyF16ToF32(value)
  %728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.i32 %728, 0
  %730 = lshr i32 %729, 24
  %731 = uitofp i32 %730 to float
  %732 = fmul fast float %731, 0x3F70101020000000
  %733 = and i32 %729, 255
  %734 = uitofp i32 %733 to float
  %735 = fmul fast float %734, 0x3F70101020000000
  %736 = lshr i32 %729, 8
  %737 = and i32 %736, 255
  %738 = uitofp i32 %737 to float
  %739 = fmul fast float %738, 0x3F70101020000000
  %740 = lshr i32 %729, 16
  %741 = and i32 %740, 255
  %742 = uitofp i32 %741 to float
  %743 = fmul fast float %742, 0x3F70101020000000
  %744 = add i32 %49, 220
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %744, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = lshr i32 %746, 24
  %748 = uitofp i32 %747 to float
  %749 = fmul fast float %748, 0x3F70101020000000
  %750 = and i32 %746, 255
  %751 = uitofp i32 %750 to float
  %752 = fmul fast float %751, 0x3F70101020000000
  %753 = lshr i32 %746, 8
  %754 = and i32 %753, 255
  %755 = uitofp i32 %754 to float
  %756 = fmul fast float %755, 0x3F70101020000000
  %757 = lshr i32 %746, 16
  %758 = and i32 %757, 255
  %759 = uitofp i32 %758 to float
  %760 = fmul fast float %759, 0x3F70101020000000
  %761 = bitcast float %685 to i32
  %762 = ashr i32 %761, 1
  %763 = sub nsw i32 1597463174, %762
  %764 = bitcast i32 %763 to float
  %765 = fmul fast float %685, 5.000000e-01
  %766 = fmul fast float %764, %764
  %767 = fmul fast float %766, %765
  %768 = fsub fast float 1.500000e+00, %767
  %769 = fmul fast float %764, %685
  %770 = fmul fast float %769, %768
  %771 = bitcast float %686 to i32
  %772 = ashr i32 %771, 1
  %773 = sub nsw i32 1597463174, %772
  %774 = bitcast i32 %773 to float
  %775 = fmul fast float %686, 5.000000e-01
  %776 = fmul fast float %774, %774
  %777 = fmul fast float %776, %775
  %778 = fsub fast float 1.500000e+00, %777
  %779 = fmul fast float %774, %686
  %780 = fmul fast float %779, %778
  %781 = bitcast float %687 to i32
  %782 = ashr i32 %781, 1
  %783 = sub nsw i32 1597463174, %782
  %784 = bitcast i32 %783 to float
  %785 = fmul fast float %687, 5.000000e-01
  %786 = fmul fast float %784, %784
  %787 = fmul fast float %786, %785
  %788 = fsub fast float 1.500000e+00, %787
  %789 = fmul fast float %784, %687
  %790 = fmul fast float %789, %788
  %791 = fsub fast float %770, %752
  %792 = fsub fast float %780, %756
  %793 = fsub fast float %790, %760
  %794 = fmul fast float %791, %720
  %795 = fmul fast float %792, %722
  %796 = fmul fast float %793, %727
  %797 = fadd fast float %794, %735
  %798 = fadd fast float %795, %739
  %799 = fadd fast float %796, %743
  %800 = call float @dx.op.unary.f32(i32 7, float %797)  ; Saturate(value)
  %801 = call float @dx.op.unary.f32(i32 7, float %798)  ; Saturate(value)
  %802 = call float @dx.op.unary.f32(i32 7, float %799)  ; Saturate(value)
  %803 = fmul fast float %800, %800
  %804 = fmul fast float %801, %801
  %805 = fmul fast float %802, %802
  %806 = fsub fast float %803, %685
  %807 = fsub fast float %804, %686
  %808 = fsub fast float %805, %687
  %809 = fmul fast float %806, %710
  %810 = fmul fast float %807, %710
  %811 = fmul fast float %808, %710
  %812 = fadd fast float %809, %685
  %813 = fadd fast float %810, %686
  %814 = fadd fast float %811, %687
  %815 = fadd fast float %732, %696
  %816 = fsub fast float %815, %749
  %817 = call float @dx.op.unary.f32(i32 7, float %816)  ; Saturate(value)
  %818 = fsub fast float %817, %696
  %819 = fmul fast float %818, %710
  %820 = fadd fast float %819, %696
  br label %874

; <label>:821                                     ; preds = %709
  %822 = and i32 %712, 134217728
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %858, label %824

; <label>:824                                     ; preds = %821
  %825 = call float @dx.op.unary.f32(i32 24, float %277)  ; Sqrt(value)
  %826 = call float @dx.op.unary.f32(i32 24, float %281)  ; Sqrt(value)
  %827 = call float @dx.op.unary.f32(i32 24, float %285)  ; Sqrt(value)
  %828 = fadd fast float %825, -5.000000e-01
  %829 = fadd fast float %826, -5.000000e-01
  %830 = fadd fast float %827, -5.000000e-01
  %831 = fmul fast float %828, %710
  %832 = fmul fast float %829, %710
  %833 = fmul fast float %830, %710
  %834 = fadd fast float %831, 5.000000e-01
  %835 = fadd fast float %832, 5.000000e-01
  %836 = fadd fast float %833, 5.000000e-01
  %837 = call float @dx.op.unary.f32(i32 24, float %685)  ; Sqrt(value)
  %838 = call float @dx.op.unary.f32(i32 24, float %686)  ; Sqrt(value)
  %839 = call float @dx.op.unary.f32(i32 24, float %687)  ; Sqrt(value)
  %840 = fmul fast float %834, 2.000000e+00
  %841 = fsub fast float 1.000000e+00, %840
  %842 = fmul fast float %841, %837
  %843 = fadd fast float %842, %840
  %844 = fmul fast float %843, %837
  %845 = fmul fast float %835, 2.000000e+00
  %846 = fsub fast float 1.000000e+00, %845
  %847 = fmul fast float %846, %838
  %848 = fadd fast float %847, %845
  %849 = fmul fast float %848, %838
  %850 = fmul fast float %836, 2.000000e+00
  %851 = fsub fast float 1.000000e+00, %850
  %852 = fmul fast float %851, %839
  %853 = fadd fast float %852, %850
  %854 = fmul fast float %853, %839
  %855 = fmul fast float %844, %844
  %856 = fmul fast float %849, %849
  %857 = fmul fast float %854, %854
  br label %874

; <label>:858                                     ; preds = %821
  %859 = fmul fast float %277, %277
  %860 = fmul fast float %281, %281
  %861 = fmul fast float %285, %285
  %862 = fadd fast float %859, -1.000000e+00
  %863 = fadd fast float %860, -1.000000e+00
  %864 = fadd fast float %861, -1.000000e+00
  %865 = fmul fast float %710, %862
  %866 = fmul fast float %710, %863
  %867 = fmul fast float %710, %864
  %868 = fadd fast float %865, 1.000000e+00
  %869 = fadd fast float %866, 1.000000e+00
  %870 = fadd fast float %867, 1.000000e+00
  %871 = fmul fast float %868, %685
  %872 = fmul fast float %869, %686
  %873 = fmul fast float %870, %687
  br label %874

; <label>:874                                     ; preds = %858, %824, %715, %670
  %875 = phi float [ %820, %715 ], [ %696, %824 ], [ %696, %858 ], [ 0x3FA23C0BE0000000, %670 ]
  %876 = phi float [ %812, %715 ], [ %855, %824 ], [ %871, %858 ], [ 1.000000e+00, %670 ]
  %877 = phi float [ %813, %715 ], [ %856, %824 ], [ %872, %858 ], [ 1.000000e+00, %670 ]
  %878 = phi float [ %814, %715 ], [ %857, %824 ], [ %873, %858 ], [ 1.000000e+00, %670 ]
  %879 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %880 = extractvalue %dx.types.CBufRet.i32 %879, 1
  %881 = and i32 %880, 1
  %882 = icmp ne i32 %881, 0
  %883 = add i32 %49, 356
  %884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %883, i32 undef)  ; BufferLoad(srv,index,wot)
  %885 = extractvalue %dx.types.ResRet.i32 %884, 0
  %886 = and i32 %885, 32
  %887 = icmp ne i32 %886, 0
  %888 = and i1 %882, %887
  %889 = select i1 %888, float 1.000000e+00, float %876
  %890 = select i1 %888, float 0x3FD3333340000000, float %877
  %891 = select i1 %888, float 0x3FD3333340000000, float %878
  %892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %893 = extractvalue %dx.types.ResRet.i32 %892, 0
  %894 = and i32 %893, 32
  %895 = icmp eq i32 %894, 0
  br i1 %895, label %968, label %896

; <label>:896                                     ; preds = %874
  %897 = add i32 %49, 92
  %898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %897, i32 undef)  ; BufferLoad(srv,index,wot)
  %899 = extractvalue %dx.types.ResRet.i32 %898, 0
  %900 = add i32 %49, 392
  %901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %900, i32 undef)  ; BufferLoad(srv,index,wot)
  %902 = extractvalue %dx.types.ResRet.i32 %901, 0
  %903 = add i32 %902, 0
  %904 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %903, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %905 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %904, %dx.types.Handle %104, float %598, float %599, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %906 = extractvalue %dx.types.ResRet.f32 %905, 0
  %907 = extractvalue %dx.types.ResRet.f32 %905, 1
  %908 = extractvalue %dx.types.ResRet.f32 %905, 2
  %909 = extractvalue %dx.types.ResRet.f32 %905, 3
  %910 = and i32 %899, 255
  %911 = uitofp i32 %910 to float
  %912 = lshr i32 %899, 8
  %913 = and i32 %912, 255
  %914 = uitofp i32 %913 to float
  %915 = lshr i32 %899, 16
  %916 = and i32 %915, 255
  %917 = uitofp i32 %916 to float
  %918 = fmul fast float %917, 0x3F70101000000000
  %919 = fmul fast float %906, %911
  %920 = fadd fast float %919, %914
  %921 = fmul fast float %920, 0x3F70101000000000
  %922 = fadd fast float %907, -5.000000e-01
  %923 = fadd fast float %909, -5.000000e-01
  %924 = fmul fast float %922, %918
  %925 = fmul fast float %923, %918
  %926 = fadd fast float %924, 5.000000e-01
  %927 = fadd fast float %925, 5.000000e-01
  %928 = fmul fast float %926, 2.000000e+00
  %929 = fadd fast float %928, -1.000000e+00
  %930 = fmul fast float %927, 2.000000e+00
  %931 = fadd fast float %930, -1.000000e+00
  %932 = fadd fast float %929, %931
  %933 = fmul fast float %932, 5.000000e-01
  %934 = fsub fast float %929, %931
  %935 = fmul fast float %934, 5.000000e-01
  %936 = call float @dx.op.unary.f32(i32 6, float %933)  ; FAbs(value)
  %937 = fsub fast float 1.000000e+00, %936
  %938 = call float @dx.op.unary.f32(i32 6, float %935)  ; FAbs(value)
  %939 = fsub fast float %937, %938
  %940 = call float @dx.op.dot3.f32(i32 55, float %933, float %935, float %939, float %933, float %935, float %939)  ; Dot3(ax,ay,az,bx,by,bz)
  %941 = call float @dx.op.unary.f32(i32 25, float %940)  ; Rsqrt(value)
  %942 = fmul fast float %933, %941
  %943 = fmul fast float %935, %941
  %944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %945 = extractvalue %dx.types.ResRet.i32 %944, 0
  %946 = and i32 %945, 67108864
  %947 = icmp eq i32 %946, 0
  br i1 %947, label %964, label %948

; <label>:948                                     ; preds = %896
  %949 = add i32 %49, 280
  %950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %949, i32 undef)  ; BufferLoad(srv,index,wot)
  %951 = extractvalue %dx.types.ResRet.i32 %950, 0
  %952 = and i32 %951, 65535
  %953 = call float @dx.op.legacyF16ToF32(i32 131, i32 %952)  ; LegacyF16ToF32(value)
  %954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %955 = extractvalue %dx.types.ResRet.i32 %954, 0
  %956 = and i32 %955, 65535
  %957 = call float @dx.op.legacyF16ToF32(i32 131, i32 %956)  ; LegacyF16ToF32(value)
  %958 = lshr i32 %951, 16
  %959 = call float @dx.op.legacyF16ToF32(i32 131, i32 %958)  ; LegacyF16ToF32(value)
  %960 = fsub fast float %921, %959
  %961 = fmul fast float %960, %953
  %962 = fadd fast float %961, %957
  %963 = call float @dx.op.unary.f32(i32 7, float %962)  ; Saturate(value)
  br label %964

; <label>:964                                     ; preds = %948, %896
  %965 = phi float [ %963, %948 ], [ %921, %896 ]
  %966 = call float @dx.op.dot2.f32(i32 54, float %942, float %943, float %502, float %503)  ; Dot2(ax,ay,bx,by)
  %967 = call float @dx.op.dot2.f32(i32 54, float %942, float %943, float %504, float %505)  ; Dot2(ax,ay,bx,by)
  br label %968

; <label>:968                                     ; preds = %964, %874
  %969 = phi float [ %965, %964 ], [ 0x3FD6666660000000, %874 ]
  %970 = phi float [ %966, %964 ], [ 0.000000e+00, %874 ]
  %971 = phi float [ %967, %964 ], [ 0.000000e+00, %874 ]
  %972 = phi float [ %908, %964 ], [ 1.000000e+00, %874 ]
  %973 = add i32 %49, 160
  %974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %973, i32 undef)  ; BufferLoad(srv,index,wot)
  %975 = extractvalue %dx.types.ResRet.i32 %974, 0
  %976 = lshr i32 %975, 22
  %977 = shl nuw nsw i32 %976, 5
  %978 = call float @dx.op.legacyF16ToF32(i32 131, i32 %977)  ; LegacyF16ToF32(value)
  %979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %980 = extractvalue %dx.types.ResRet.i32 %979, 0
  %981 = and i32 %980, 64
  %982 = icmp eq i32 %981, 0
  br i1 %982, label %1016, label %983

; <label>:983                                     ; preds = %968
  %984 = add i32 %49, 408
  %985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %984, i32 undef)  ; BufferLoad(srv,index,wot)
  %986 = extractvalue %dx.types.ResRet.i32 %985, 0
  %987 = add i32 %986, 0
  %988 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %987, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %990 = extractvalue %dx.types.ResRet.i32 %989, 0
  %991 = and i32 %990, 131072
  %992 = icmp eq i32 %991, 0
  %993 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %988, %dx.types.Handle %104, float %598, float %599, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %994 = extractvalue %dx.types.ResRet.f32 %993, 0
  %995 = extractvalue %dx.types.ResRet.f32 %993, 1
  %996 = extractvalue %dx.types.ResRet.f32 %993, 2
  %997 = fmul fast float %994, %265
  %998 = fmul fast float %995, %268
  %999 = fmul fast float %996, %271
  br i1 %992, label %1006, label %1000

; <label>:1000                                    ; preds = %983
  %1001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1002 = extractvalue %dx.types.CBufRet.f32 %1001, 0
  %1003 = fmul fast float %1002, %997
  %1004 = fmul fast float %1002, %998
  %1005 = fmul fast float %1002, %999
  br label %1006

; <label>:1006                                    ; preds = %1000, %983
  %1007 = phi float [ %1003, %1000 ], [ %997, %983 ]
  %1008 = phi float [ %1004, %1000 ], [ %998, %983 ]
  %1009 = phi float [ %1005, %1000 ], [ %999, %983 ]
  %1010 = fmul fast float %1007, %978
  %1011 = select i1 %248, float %1010, float %1007
  %1012 = call float @dx.op.dot3.f32(i32 55, float %1011, float %1008, float %1009, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1013 = select i1 %248, float 0.000000e+00, float %1007
  %1014 = select i1 %248, float %1012, float %1008
  %1015 = select i1 %248, float 0.000000e+00, float %1009
  br label %1016

; <label>:1016                                    ; preds = %1006, %968
  %1017 = phi float [ %1013, %1006 ], [ 0.000000e+00, %968 ]
  %1018 = phi float [ %1014, %1006 ], [ 0.000000e+00, %968 ]
  %1019 = phi float [ %1015, %1006 ], [ 0.000000e+00, %968 ]
  %1020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %1021 = extractvalue %dx.types.ResRet.i32 %1020, 0
  %1022 = and i32 %1021, 1024
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %1054, label %1024

; <label>:1024                                    ; preds = %1016
  %1025 = add i32 %49, 152
  %1026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1025, i32 undef)  ; BufferLoad(srv,index,wot)
  %1027 = extractvalue %dx.types.ResRet.i32 %1026, 0
  %1028 = and i32 %1027, 255
  %1029 = uitofp i32 %1028 to float
  %1030 = fmul fast float %1029, 0x3F70101020000000
  %1031 = lshr i32 %1027, 8
  %1032 = and i32 %1031, 255
  %1033 = uitofp i32 %1032 to float
  %1034 = fmul fast float %1033, 0x3F70101020000000
  %1035 = lshr i32 %1027, 16
  %1036 = and i32 %1035, 255
  %1037 = uitofp i32 %1036 to float
  %1038 = fmul fast float %1037, 0x3F70101020000000
  %1039 = fmul fast float %1030, %1030
  %1040 = fmul fast float %1034, %1034
  %1041 = fmul fast float %1038, %1038
  %1042 = add i32 %49, 472
  %1043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1042, i32 undef)  ; BufferLoad(srv,index,wot)
  %1044 = extractvalue %dx.types.ResRet.i32 %1043, 0
  %1045 = add i32 %1044, 0
  %1046 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1045, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1047 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1046, %dx.types.Handle %105, float %598, float %599, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1048 = extractvalue %dx.types.ResRet.f32 %1047, 0
  %1049 = extractvalue %dx.types.ResRet.f32 %1047, 1
  %1050 = extractvalue %dx.types.ResRet.f32 %1047, 2
  %1051 = fmul fast float %1039, %1048
  %1052 = fmul fast float %1040, %1049
  %1053 = fmul fast float %1041, %1050
  br label %1054

; <label>:1054                                    ; preds = %1024, %1016
  %1055 = phi float [ %1051, %1024 ], [ 0.000000e+00, %1016 ]
  %1056 = phi float [ %1052, %1024 ], [ 0.000000e+00, %1016 ]
  %1057 = phi float [ %1053, %1024 ], [ 0.000000e+00, %1016 ]
  %1058 = fcmp fast ogt float %1055, 0.000000e+00
  %1059 = fcmp fast ogt float %1056, 0.000000e+00
  %1060 = fcmp fast ogt float %1057, 0.000000e+00
  %1061 = call float @dx.op.unary.f32(i32 23, float %1055)  ; Log(value)
  %1062 = call float @dx.op.unary.f32(i32 23, float %1056)  ; Log(value)
  %1063 = call float @dx.op.unary.f32(i32 23, float %1057)  ; Log(value)
  %1064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %973, i32 undef)  ; BufferLoad(srv,index,wot)
  %1065 = extractvalue %dx.types.ResRet.i32 %1064, 0
  %1066 = lshr i32 %1065, 7
  %1067 = and i32 %1066, 32752
  %1068 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1067)  ; LegacyF16ToF32(value)
  %1069 = fmul fast float %1061, 0xBFE62E4300000000
  %1070 = fmul fast float %1069, %1068
  %1071 = fmul fast float %1062, 0xBFE62E4300000000
  %1072 = fmul fast float %1071, %1068
  %1073 = fmul fast float %1063, 0xBFE62E4300000000
  %1074 = fmul fast float %1073, %1068
  %1075 = select i1 %1058, float %1070, float 1.270000e+02
  %1076 = select i1 %1059, float %1072, float 1.270000e+02
  %1077 = select i1 %1060, float %1074, float 1.270000e+02
  %1078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %1079 = extractvalue %dx.types.ResRet.i32 %1078, 0
  %1080 = and i32 %1079, 10240
  %1081 = icmp eq i32 %1080, 0
  br i1 %1081, label %1126, label %1082

; <label>:1082                                    ; preds = %1054
  %1083 = add i32 %49, 488
  %1084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1085 = extractvalue %dx.types.ResRet.i32 %1084, 0
  %1086 = add i32 %1085, 0
  %1087 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1086, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1088 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1087, %dx.types.Handle %105, float %598, float %599, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1089 = extractvalue %dx.types.ResRet.f32 %1088, 1
  %1090 = extractvalue %dx.types.ResRet.f32 %1088, 3
  %1091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %1092 = extractvalue %dx.types.ResRet.i32 %1091, 0
  %1093 = and i32 %1092, 1048576
  %1094 = icmp ne i32 %1093, 0
  %1095 = and i32 %1092, 8192
  %1096 = icmp eq i32 %1095, 0
  br i1 %1096, label %1112, label %1097

; <label>:1097                                    ; preds = %1082
  %1098 = extractvalue %dx.types.ResRet.f32 %1088, 2
  %1099 = select i1 %1094, float %1098, float %1089
  %1100 = extractvalue %dx.types.ResRet.f32 %1088, 0
  %1101 = select i1 %1094, float %1100, float %1089
  %1102 = add i32 %49, 96
  %1103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1102, i32 undef)  ; BufferLoad(srv,index,wot)
  %1104 = extractvalue %dx.types.ResRet.i32 %1103, 0
  %1105 = lshr i32 %1104, 16
  %1106 = and i32 %1105, 255
  %1107 = uitofp i32 %1106 to float
  %1108 = fmul fast float %1107, 0x3F80101020000000
  %1109 = fmul fast float %1108, %1101
  %1110 = fmul fast float %1108, %1089
  %1111 = fmul fast float %1108, %1099
  br label %1112

; <label>:1112                                    ; preds = %1097, %1082
  %1113 = phi float [ %1109, %1097 ], [ 0.000000e+00, %1082 ]
  %1114 = phi float [ %1110, %1097 ], [ 0.000000e+00, %1082 ]
  %1115 = phi float [ %1111, %1097 ], [ 0.000000e+00, %1082 ]
  %1116 = and i32 %1092, 2048
  %1117 = icmp eq i32 %1116, 0
  br i1 %1117, label %1126, label %1118

; <label>:1118                                    ; preds = %1112
  %1119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %973, i32 undef)  ; BufferLoad(srv,index,wot)
  %1120 = extractvalue %dx.types.ResRet.i32 %1119, 0
  %1121 = shl i32 %1120, 4
  %1122 = and i32 %1121, 32752
  %1123 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1122)  ; LegacyF16ToF32(value)
  %1124 = fmul fast float %1123, %1090
  %1125 = call float @dx.op.binary.f32(i32 35, float %1124, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1126

; <label>:1126                                    ; preds = %1118, %1112, %1054
  %1127 = phi float [ %1113, %1118 ], [ %1113, %1112 ], [ 0.000000e+00, %1054 ]
  %1128 = phi float [ %1114, %1118 ], [ %1114, %1112 ], [ 0.000000e+00, %1054 ]
  %1129 = phi float [ %1115, %1118 ], [ %1115, %1112 ], [ 0.000000e+00, %1054 ]
  %1130 = phi float [ %1125, %1118 ], [ 0x3F70101020000000, %1112 ], [ 0x3F70101020000000, %1054 ]
  %1131 = add i32 %49, 96
  %1132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1131, i32 undef)  ; BufferLoad(srv,index,wot)
  %1133 = extractvalue %dx.types.ResRet.i32 %1132, 0
  %1134 = and i32 %1133, 255
  %1135 = uitofp i32 %1134 to float
  %1136 = lshr i32 %1133, 8
  %1137 = and i32 %1136, 255
  %1138 = uitofp i32 %1137 to float
  %1139 = call float @dx.op.dot3.f32(i32 55, float %889, float %890, float %891, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1140 = fmul fast float %1138, %1139
  %1141 = fadd fast float %1140, %1135
  %1142 = fmul fast float %1141, 0x3F70101020000000
  %1143 = call float @dx.op.unary.f32(i32 7, float %1142)  ; Saturate(value)
  br label %1144

; <label>:1144                                    ; preds = %1126, %484
  %1145 = phi float [ 0.000000e+00, %484 ], [ %970, %1126 ]
  %1146 = phi float [ 0.000000e+00, %484 ], [ %971, %1126 ]
  %1147 = phi float [ 0.000000e+00, %484 ], [ %889, %1126 ]
  %1148 = phi float [ 0.000000e+00, %484 ], [ %890, %1126 ]
  %1149 = phi float [ 0.000000e+00, %484 ], [ %891, %1126 ]
  %1150 = phi float [ 0.000000e+00, %484 ], [ %1017, %1126 ]
  %1151 = phi float [ 0.000000e+00, %484 ], [ %1018, %1126 ]
  %1152 = phi float [ 0.000000e+00, %484 ], [ %1019, %1126 ]
  %1153 = phi float [ 0.000000e+00, %484 ], [ %1127, %1126 ]
  %1154 = phi float [ 0.000000e+00, %484 ], [ %1128, %1126 ]
  %1155 = phi float [ 0.000000e+00, %484 ], [ %1129, %1126 ]
  %1156 = phi float [ 0.000000e+00, %484 ], [ %1075, %1126 ]
  %1157 = phi float [ 0.000000e+00, %484 ], [ %1076, %1126 ]
  %1158 = phi float [ 0.000000e+00, %484 ], [ %1077, %1126 ]
  %1159 = phi float [ 0.000000e+00, %484 ], [ %875, %1126 ]
  %1160 = phi float [ 0.000000e+00, %484 ], [ %671, %1126 ]
  %1161 = phi float [ 0.000000e+00, %484 ], [ %969, %1126 ]
  %1162 = phi float [ 0.000000e+00, %484 ], [ %972, %1126 ]
  %1163 = phi float [ 0.000000e+00, %484 ], [ %1130, %1126 ]
  %1164 = phi float [ 0.000000e+00, %484 ], [ %1143, %1126 ]
  br i1 %432, label %2087, label %1165

; <label>:1165                                    ; preds = %1144
  %1166 = icmp ult i32 %490, 2
  %1167 = add i32 %49, 40
  %1168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1169 = extractvalue %dx.types.ResRet.i32 %1168, 0
  %1170 = add i32 %49, 44
  %1171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1170, i32 undef)  ; BufferLoad(srv,index,wot)
  %1172 = extractvalue %dx.types.ResRet.i32 %1171, 0
  %1173 = or i32 %1172, %1169
  %1174 = icmp eq i32 %1173, 0
  br i1 %1174, label %2087, label %1175

; <label>:1175                                    ; preds = %1165
  %1176 = and i32 %1169, 262144
  %1177 = icmp ne i32 %1176, 0
  %1178 = select i1 %1177, float %54, float 1.000000e+00
  %1179 = select i1 %1177, float %55, float 0.000000e+00
  %1180 = select i1 %1177, float %56, float 0.000000e+00
  %1181 = select i1 %1177, float %57, float 1.000000e+00
  %1182 = select i1 %1177, float %58, float %86
  %1183 = select i1 %1177, float %59, float %87
  %1184 = add i32 %49, 300
  %1185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1184, i32 undef)  ; BufferLoad(srv,index,wot)
  %1186 = extractvalue %dx.types.ResRet.i32 %1185, 0
  %1187 = lshr i32 %1186, 16
  %1188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1187)  ; LegacyF16ToF32(value)
  %1189 = fmul fast float %1188, 0x3F50624DE0000000
  %1190 = add i32 %49, 104
  %1191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1192 = extractvalue %dx.types.ResRet.i32 %1191, 0
  %1193 = lshr i32 %1192, 16
  %1194 = and i32 %1193, 255
  %1195 = lshr i32 %1192, 24
  %1196 = add i32 %49, 308
  %1197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1196, i32 undef)  ; BufferLoad(srv,index,wot)
  %1198 = extractvalue %dx.types.ResRet.i32 %1197, 0
  %1199 = and i32 %1198, 65535
  %1200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1199)  ; LegacyF16ToF32(value)
  %1201 = lshr i32 %1198, 16
  %1202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1201)  ; LegacyF16ToF32(value)
  %1203 = add i32 %49, 48
  %1204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1203, i32 undef)  ; BufferLoad(srv,index,wot)
  %1205 = extractvalue %dx.types.ResRet.i32 %1204, 0
  %1206 = lshr i32 %1205, 22
  %1207 = shl nuw nsw i32 %1206, 5
  %1208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1207)  ; LegacyF16ToF32(value)
  %1209 = shl i32 %1205, 4
  %1210 = and i32 %1209, 32752
  %1211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1210)  ; LegacyF16ToF32(value)
  %1212 = lshr i32 %1205, 7
  %1213 = and i32 %1212, 32752
  %1214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1213)  ; LegacyF16ToF32(value)
  %1215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1216 = extractvalue %dx.types.CBufRet.f32 %1215, 3
  %1217 = fmul fast float %1216, 1.000000e+03
  %1218 = fmul fast float %342, %1217
  %1219 = call float @dx.op.unary.f32(i32 22, float %1218)  ; Frc(value)
  %1220 = fadd fast float %1219, %332
  %1221 = fmul fast float %343, %1217
  %1222 = call float @dx.op.unary.f32(i32 22, float %1221)  ; Frc(value)
  %1223 = fadd fast float %1222, %334
  %1224 = fmul fast float %1189, %1217
  %1225 = call float @dx.op.unary.f32(i32 22, float %1224)  ; Frc(value)
  %1226 = fmul fast float %1225, 0x401921FB60000000
  %1227 = fadd fast float %1226, %1208
  %1228 = call float @dx.op.unary.f32(i32 13, float %1227)  ; Sin(value)
  %1229 = call float @dx.op.unary.f32(i32 12, float %1227)  ; Cos(value)
  %1230 = fsub fast float -0.000000e+00, %1228
  %1231 = fadd fast float %1182, -5.000000e-01
  %1232 = fadd fast float %1183, -5.000000e-01
  %1233 = fmul fast float %1200, %1231
  %1234 = fmul fast float %1202, %1232
  %1235 = fadd fast float %1233, 5.000000e-01
  %1236 = fadd fast float %1234, 5.000000e-01
  %1237 = fmul fast float %1211, %1235
  %1238 = fmul fast float %1214, %1236
  %1239 = fmul fast float %1229, %1237
  %1240 = call float @dx.op.tertiary.f32(i32 46, float %1230, float %1238, float %1239)  ; FMad(a,b,c)
  %1241 = fmul fast float %1228, %1237
  %1242 = call float @dx.op.tertiary.f32(i32 46, float %1229, float %1238, float %1241)  ; FMad(a,b,c)
  %1243 = fadd fast float %1220, %1240
  %1244 = fadd fast float %1223, %1242
  %1245 = icmp ugt i32 %1194, 1
  %1246 = icmp ugt i32 %1192, 33554431
  %1247 = or i1 %1246, %1245
  br i1 %1247, label %1248, label %1273

; <label>:1248                                    ; preds = %1175
  %1249 = add i32 %49, 244
  %1250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1251 = extractvalue %dx.types.ResRet.i32 %1250, 0
  %1252 = lshr i32 %1251, 16
  %1253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1252)  ; LegacyF16ToF32(value)
  %1254 = fmul fast float %1216, %1253
  %1255 = call float @dx.op.unary.f32(i32 22, float %1254)  ; Frc(value)
  %1256 = mul nuw nsw i32 %1194, %1195
  %1257 = uitofp i32 %1256 to float
  %1258 = fmul fast float %1255, %1257
  %1259 = call float @dx.op.unary.f32(i32 27, float %1258)  ; Round_ni(value)
  %1260 = fptoui float %1259 to i32
  %1261 = urem i32 %1260, %1194
  %1262 = udiv i32 %1260, %1195
  %1263 = call float @dx.op.unary.f32(i32 22, float %1243)  ; Frc(value)
  %1264 = call float @dx.op.unary.f32(i32 22, float %1244)  ; Frc(value)
  %1265 = uitofp i32 %1261 to float
  %1266 = uitofp i32 %1262 to float
  %1267 = fadd fast float %1263, %1265
  %1268 = fadd fast float %1264, %1266
  %1269 = uitofp i32 %1194 to float
  %1270 = uitofp i32 %1195 to float
  %1271 = fdiv fast float %1267, %1269
  %1272 = fdiv fast float %1268, %1270
  br label %1273

; <label>:1273                                    ; preds = %1248, %1175
  %1274 = phi float [ %1271, %1248 ], [ %1243, %1175 ]
  %1275 = phi float [ %1272, %1248 ], [ %1244, %1175 ]
  %1276 = and i32 %1169, 256
  %1277 = icmp eq i32 %1276, 0
  br i1 %1277, label %1324, label %1278

; <label>:1278                                    ; preds = %1273
  %1279 = add i32 %49, 444
  %1280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1279, i32 undef)  ; BufferLoad(srv,index,wot)
  %1281 = extractvalue %dx.types.ResRet.i32 %1280, 0
  %1282 = add i32 %1281, 0
  %1283 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1282, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1284 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1283, %dx.types.Handle %105, float %1274, float %1275, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1285 = extractvalue %dx.types.ResRet.f32 %1284, 0
  %1286 = add i32 %49, 116
  %1287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1286, i32 undef)  ; BufferLoad(srv,index,wot)
  %1288 = extractvalue %dx.types.ResRet.i32 %1287, 0
  %1289 = shl i32 %1288, 4
  %1290 = and i32 %1289, 32752
  %1291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1290)  ; LegacyF16ToF32(value)
  %1292 = lshr i32 %1288, 7
  %1293 = and i32 %1292, 32752
  %1294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1293)  ; LegacyF16ToF32(value)
  %1295 = fsub fast float 1.000000e+00, %487
  %1296 = call float @dx.op.binary.f32(i32 35, float %1295, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1297 = bitcast float %487 to i32
  %1298 = sitofp i32 %1297 to float
  %1299 = fadd fast float %1298, 0xC1CFBF8940000000
  %1300 = fmul fast float %1294, %1299
  %1301 = fadd fast float %1300, 0x41CFBF8940000000
  %1302 = fptosi float %1301 to i32
  %1303 = bitcast i32 %1302 to float
  %1304 = bitcast float %1296 to i32
  %1305 = sitofp i32 %1304 to float
  %1306 = fadd fast float %1305, 0xC1CFBF8940000000
  %1307 = fmul fast float %1306, %1294
  %1308 = fadd fast float %1307, 0x41CFBF8940000000
  %1309 = fptosi float %1308 to i32
  %1310 = bitcast i32 %1309 to float
  %1311 = fmul fast float %1303, %1291
  %1312 = fmul fast float %1310, %1291
  %1313 = fsub fast float %1296, %1311
  %1314 = fadd fast float %1312, %1296
  %1315 = call float @dx.op.unary.f32(i32 7, float %1313)  ; Saturate(value)
  %1316 = call float @dx.op.unary.f32(i32 7, float %1314)  ; Saturate(value)
  %1317 = fsub fast float %1285, %1315
  %1318 = fsub fast float %1316, %1315
  %1319 = bitcast float %1318 to i32
  %1320 = sub nsw i32 2129859010, %1319
  %1321 = bitcast i32 %1320 to float
  %1322 = fmul fast float %1321, %1317
  %1323 = call float @dx.op.unary.f32(i32 7, float %1322)  ; Saturate(value)
  br label %1324

; <label>:1324                                    ; preds = %1278, %1273
  %1325 = phi float [ %1323, %1278 ], [ %487, %1273 ]
  %1326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1327 = extractvalue %dx.types.ResRet.i32 %1326, 0
  %1328 = and i32 %1327, 128
  %1329 = icmp eq i32 %1328, 0
  br i1 %1329, label %1346, label %1330

; <label>:1330                                    ; preds = %1324
  %1331 = add i32 %49, 428
  %1332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1331, i32 undef)  ; BufferLoad(srv,index,wot)
  %1333 = extractvalue %dx.types.ResRet.i32 %1332, 0
  %1334 = add i32 %1333, 0
  %1335 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1334, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1336 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1335, %dx.types.Handle %105, float %1274, float %1275, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1337 = extractvalue %dx.types.ResRet.f32 %1336, 0
  %1338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1339 = extractvalue %dx.types.ResRet.i32 %1338, 0
  %1340 = and i32 %1339, 524288
  %1341 = icmp ne i32 %1340, 0
  %1342 = fcmp fast ogt float %1337, 0x3FE0101020000000
  %1343 = select i1 %1342, float 1.000000e+00, float 0.000000e+00
  %1344 = select i1 %1341, float %1343, float %1337
  %1345 = fmul fast float %1344, %1325
  br label %1346

; <label>:1346                                    ; preds = %1330, %1324
  %1347 = phi float [ %1345, %1330 ], [ %1325, %1324 ]
  %1348 = fcmp fast ult float %1347, 0x3F70101020000000
  br i1 %1348, label %2087, label %1349

; <label>:1349                                    ; preds = %1346
  %1350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1351 = extractvalue %dx.types.ResRet.i32 %1350, 0
  %1352 = and i32 %1351, 16
  %1353 = icmp eq i32 %1352, 0
  br i1 %1353, label %1552, label %1354

; <label>:1354                                    ; preds = %1349
  %1355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1356 = extractvalue %dx.types.ResRet.i32 %1355, 0
  %1357 = add i32 %49, 380
  %1358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1357, i32 undef)  ; BufferLoad(srv,index,wot)
  %1359 = extractvalue %dx.types.ResRet.i32 %1358, 0
  %1360 = add i32 %1359, 0
  %1361 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1360, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1362 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1361, %dx.types.Handle %104, float %1274, float %1275, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1363 = extractvalue %dx.types.ResRet.f32 %1362, 0
  %1364 = extractvalue %dx.types.ResRet.f32 %1362, 1
  %1365 = extractvalue %dx.types.ResRet.f32 %1362, 2
  %1366 = extractvalue %dx.types.ResRet.f32 %1362, 3
  %1367 = and i32 %1356, 255
  %1368 = uitofp i32 %1367 to float
  %1369 = lshr i32 %1356, 8
  %1370 = and i32 %1369, 255
  %1371 = uitofp i32 %1370 to float
  %1372 = fmul fast float %1366, %1368
  %1373 = fadd fast float %1372, %1371
  %1374 = fmul fast float %1373, 0x3F70101000000000
  %1375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1376 = extractvalue %dx.types.ResRet.i32 %1375, 0
  %1377 = and i32 %1376, 512
  %1378 = icmp eq i32 %1377, 0
  br i1 %1378, label %1387, label %1379

; <label>:1379                                    ; preds = %1354
  %1380 = add i32 %49, 460
  %1381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1380, i32 undef)  ; BufferLoad(srv,index,wot)
  %1382 = extractvalue %dx.types.ResRet.i32 %1381, 0
  %1383 = add i32 %1382, 0
  %1384 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1383, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1385 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1384, %dx.types.Handle %105, float %1274, float %1275, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1386 = extractvalue %dx.types.ResRet.f32 %1385, 0
  br label %1387

; <label>:1387                                    ; preds = %1379, %1354
  %1388 = phi float [ %1386, %1379 ], [ 1.000000e+00, %1354 ]
  %1389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1390 = extractvalue %dx.types.ResRet.i32 %1389, 0
  %1391 = and i32 %1390, 33554432
  %1392 = icmp eq i32 %1391, 0
  br i1 %1392, label %1499, label %1393

; <label>:1393                                    ; preds = %1387
  %1394 = add i32 %49, 240
  %1395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1394, i32 undef)  ; BufferLoad(srv,index,wot)
  %1396 = extractvalue %dx.types.ResRet.i32 %1395, 0
  %1397 = and i32 %1396, 65535
  %1398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1397)  ; LegacyF16ToF32(value)
  %1399 = lshr i32 %1396, 16
  %1400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1399)  ; LegacyF16ToF32(value)
  %1401 = add i32 %49, 244
  %1402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1401, i32 undef)  ; BufferLoad(srv,index,wot)
  %1403 = extractvalue %dx.types.ResRet.i32 %1402, 0
  %1404 = and i32 %1403, 65535
  %1405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1404)  ; LegacyF16ToF32(value)
  %1406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1422 = add i32 %49, 236
  %1423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1422, i32 undef)  ; BufferLoad(srv,index,wot)
  %1424 = extractvalue %dx.types.ResRet.i32 %1423, 0
  %1425 = lshr i32 %1424, 24
  %1426 = uitofp i32 %1425 to float
  %1427 = fmul fast float %1426, 0x3F70101020000000
  %1428 = and i32 %1424, 255
  %1429 = uitofp i32 %1428 to float
  %1430 = fmul fast float %1429, 0x3F70101020000000
  %1431 = lshr i32 %1424, 8
  %1432 = and i32 %1431, 255
  %1433 = uitofp i32 %1432 to float
  %1434 = fmul fast float %1433, 0x3F70101020000000
  %1435 = lshr i32 %1424, 16
  %1436 = and i32 %1435, 255
  %1437 = uitofp i32 %1436 to float
  %1438 = fmul fast float %1437, 0x3F70101020000000
  %1439 = bitcast float %1363 to i32
  %1440 = ashr i32 %1439, 1
  %1441 = sub nsw i32 1597463174, %1440
  %1442 = bitcast i32 %1441 to float
  %1443 = fmul fast float %1363, 5.000000e-01
  %1444 = fmul fast float %1442, %1442
  %1445 = fmul fast float %1444, %1443
  %1446 = fsub fast float 1.500000e+00, %1445
  %1447 = fmul fast float %1442, %1363
  %1448 = fmul fast float %1447, %1446
  %1449 = bitcast float %1364 to i32
  %1450 = ashr i32 %1449, 1
  %1451 = sub nsw i32 1597463174, %1450
  %1452 = bitcast i32 %1451 to float
  %1453 = fmul fast float %1364, 5.000000e-01
  %1454 = fmul fast float %1452, %1452
  %1455 = fmul fast float %1454, %1453
  %1456 = fsub fast float 1.500000e+00, %1455
  %1457 = fmul fast float %1452, %1364
  %1458 = fmul fast float %1457, %1456
  %1459 = bitcast float %1365 to i32
  %1460 = ashr i32 %1459, 1
  %1461 = sub nsw i32 1597463174, %1460
  %1462 = bitcast i32 %1461 to float
  %1463 = fmul fast float %1365, 5.000000e-01
  %1464 = fmul fast float %1462, %1462
  %1465 = fmul fast float %1464, %1463
  %1466 = fsub fast float 1.500000e+00, %1465
  %1467 = fmul fast float %1462, %1365
  %1468 = fmul fast float %1467, %1466
  %1469 = fsub fast float %1448, %1430
  %1470 = fsub fast float %1458, %1434
  %1471 = fsub fast float %1468, %1438
  %1472 = fmul fast float %1469, %1398
  %1473 = fmul fast float %1470, %1400
  %1474 = fmul fast float %1471, %1405
  %1475 = fadd fast float %1472, %1413
  %1476 = fadd fast float %1473, %1417
  %1477 = fadd fast float %1474, %1421
  %1478 = call float @dx.op.unary.f32(i32 7, float %1475)  ; Saturate(value)
  %1479 = call float @dx.op.unary.f32(i32 7, float %1476)  ; Saturate(value)
  %1480 = call float @dx.op.unary.f32(i32 7, float %1477)  ; Saturate(value)
  %1481 = fmul fast float %1478, %1478
  %1482 = fmul fast float %1479, %1479
  %1483 = fmul fast float %1480, %1480
  %1484 = fsub fast float %1481, %1363
  %1485 = fsub fast float %1482, %1364
  %1486 = fsub fast float %1483, %1365
  %1487 = fmul fast float %1484, %1388
  %1488 = fmul fast float %1485, %1388
  %1489 = fmul fast float %1486, %1388
  %1490 = fadd fast float %1487, %1363
  %1491 = fadd fast float %1488, %1364
  %1492 = fadd fast float %1489, %1365
  %1493 = fadd fast float %1410, %1374
  %1494 = fsub fast float %1493, %1427
  %1495 = call float @dx.op.unary.f32(i32 7, float %1494)  ; Saturate(value)
  %1496 = fsub fast float %1495, %1374
  %1497 = fmul fast float %1496, %1388
  %1498 = fadd fast float %1497, %1374
  br label %1552

; <label>:1499                                    ; preds = %1387
  %1500 = and i32 %1390, 134217728
  %1501 = icmp eq i32 %1500, 0
  br i1 %1501, label %1536, label %1502

; <label>:1502                                    ; preds = %1499
  %1503 = call float @dx.op.unary.f32(i32 24, float %319)  ; Sqrt(value)
  %1504 = call float @dx.op.unary.f32(i32 24, float %323)  ; Sqrt(value)
  %1505 = call float @dx.op.unary.f32(i32 24, float %327)  ; Sqrt(value)
  %1506 = fadd fast float %1503, -5.000000e-01
  %1507 = fadd fast float %1504, -5.000000e-01
  %1508 = fadd fast float %1505, -5.000000e-01
  %1509 = fmul fast float %1506, %1388
  %1510 = fmul fast float %1507, %1388
  %1511 = fmul fast float %1508, %1388
  %1512 = fadd fast float %1509, 5.000000e-01
  %1513 = fadd fast float %1510, 5.000000e-01
  %1514 = fadd fast float %1511, 5.000000e-01
  %1515 = call float @dx.op.unary.f32(i32 24, float %1363)  ; Sqrt(value)
  %1516 = call float @dx.op.unary.f32(i32 24, float %1364)  ; Sqrt(value)
  %1517 = call float @dx.op.unary.f32(i32 24, float %1365)  ; Sqrt(value)
  %1518 = fmul fast float %1512, 2.000000e+00
  %1519 = fsub fast float 1.000000e+00, %1518
  %1520 = fmul fast float %1519, %1515
  %1521 = fadd fast float %1520, %1518
  %1522 = fmul fast float %1521, %1515
  %1523 = fmul fast float %1513, 2.000000e+00
  %1524 = fsub fast float 1.000000e+00, %1523
  %1525 = fmul fast float %1524, %1516
  %1526 = fadd fast float %1525, %1523
  %1527 = fmul fast float %1526, %1516
  %1528 = fmul fast float %1514, 2.000000e+00
  %1529 = fsub fast float 1.000000e+00, %1528
  %1530 = fmul fast float %1529, %1517
  %1531 = fadd fast float %1530, %1528
  %1532 = fmul fast float %1531, %1517
  %1533 = fmul fast float %1522, %1522
  %1534 = fmul fast float %1527, %1527
  %1535 = fmul fast float %1532, %1532
  br label %1552

; <label>:1536                                    ; preds = %1499
  %1537 = fmul fast float %319, %319
  %1538 = fmul fast float %323, %323
  %1539 = fmul fast float %327, %327
  %1540 = fadd fast float %1537, -1.000000e+00
  %1541 = fadd fast float %1538, -1.000000e+00
  %1542 = fadd fast float %1539, -1.000000e+00
  %1543 = fmul fast float %1388, %1540
  %1544 = fmul fast float %1388, %1541
  %1545 = fmul fast float %1388, %1542
  %1546 = fadd fast float %1543, 1.000000e+00
  %1547 = fadd fast float %1544, 1.000000e+00
  %1548 = fadd fast float %1545, 1.000000e+00
  %1549 = fmul fast float %1546, %1363
  %1550 = fmul fast float %1547, %1364
  %1551 = fmul fast float %1548, %1365
  br label %1552

; <label>:1552                                    ; preds = %1536, %1502, %1393, %1349
  %1553 = phi float [ %1498, %1393 ], [ %1374, %1502 ], [ %1374, %1536 ], [ 0x3FA23C0BE0000000, %1349 ]
  %1554 = phi float [ %1490, %1393 ], [ %1533, %1502 ], [ %1549, %1536 ], [ 1.000000e+00, %1349 ]
  %1555 = phi float [ %1491, %1393 ], [ %1534, %1502 ], [ %1550, %1536 ], [ 1.000000e+00, %1349 ]
  %1556 = phi float [ %1492, %1393 ], [ %1535, %1502 ], [ %1551, %1536 ], [ 1.000000e+00, %1349 ]
  %1557 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1558 = extractvalue %dx.types.CBufRet.i32 %1557, 1
  %1559 = and i32 %1558, 1
  %1560 = icmp ne i32 %1559, 0
  %1561 = add i32 %49, 356
  %1562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1561, i32 undef)  ; BufferLoad(srv,index,wot)
  %1563 = extractvalue %dx.types.ResRet.i32 %1562, 0
  %1564 = and i32 %1563, 32
  %1565 = icmp ne i32 %1564, 0
  %1566 = and i1 %1560, %1565
  %1567 = select i1 %1566, float 1.000000e+00, float %1554
  %1568 = select i1 %1566, float 0x3FD3333340000000, float %1555
  %1569 = select i1 %1566, float 0x3FD3333340000000, float %1556
  %1570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1571 = extractvalue %dx.types.ResRet.i32 %1570, 0
  %1572 = and i32 %1571, 32
  %1573 = icmp eq i32 %1572, 0
  br i1 %1573, label %1646, label %1574

; <label>:1574                                    ; preds = %1552
  %1575 = add i32 %49, 108
  %1576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1575, i32 undef)  ; BufferLoad(srv,index,wot)
  %1577 = extractvalue %dx.types.ResRet.i32 %1576, 0
  %1578 = add i32 %49, 396
  %1579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1578, i32 undef)  ; BufferLoad(srv,index,wot)
  %1580 = extractvalue %dx.types.ResRet.i32 %1579, 0
  %1581 = add i32 %1580, 0
  %1582 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1581, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1583 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1582, %dx.types.Handle %104, float %1274, float %1275, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1584 = extractvalue %dx.types.ResRet.f32 %1583, 0
  %1585 = extractvalue %dx.types.ResRet.f32 %1583, 1
  %1586 = extractvalue %dx.types.ResRet.f32 %1583, 2
  %1587 = extractvalue %dx.types.ResRet.f32 %1583, 3
  %1588 = and i32 %1577, 255
  %1589 = uitofp i32 %1588 to float
  %1590 = lshr i32 %1577, 8
  %1591 = and i32 %1590, 255
  %1592 = uitofp i32 %1591 to float
  %1593 = lshr i32 %1577, 16
  %1594 = and i32 %1593, 255
  %1595 = uitofp i32 %1594 to float
  %1596 = fmul fast float %1595, 0x3F70101000000000
  %1597 = fmul fast float %1584, %1589
  %1598 = fadd fast float %1597, %1592
  %1599 = fmul fast float %1598, 0x3F70101000000000
  %1600 = fadd fast float %1585, -5.000000e-01
  %1601 = fadd fast float %1587, -5.000000e-01
  %1602 = fmul fast float %1600, %1596
  %1603 = fmul fast float %1601, %1596
  %1604 = fadd fast float %1602, 5.000000e-01
  %1605 = fadd fast float %1603, 5.000000e-01
  %1606 = fmul fast float %1604, 2.000000e+00
  %1607 = fadd fast float %1606, -1.000000e+00
  %1608 = fmul fast float %1605, 2.000000e+00
  %1609 = fadd fast float %1608, -1.000000e+00
  %1610 = fadd fast float %1607, %1609
  %1611 = fmul fast float %1610, 5.000000e-01
  %1612 = fsub fast float %1607, %1609
  %1613 = fmul fast float %1612, 5.000000e-01
  %1614 = call float @dx.op.unary.f32(i32 6, float %1611)  ; FAbs(value)
  %1615 = fsub fast float 1.000000e+00, %1614
  %1616 = call float @dx.op.unary.f32(i32 6, float %1613)  ; FAbs(value)
  %1617 = fsub fast float %1615, %1616
  %1618 = call float @dx.op.dot3.f32(i32 55, float %1611, float %1613, float %1617, float %1611, float %1613, float %1617)  ; Dot3(ax,ay,az,bx,by,bz)
  %1619 = call float @dx.op.unary.f32(i32 25, float %1618)  ; Rsqrt(value)
  %1620 = fmul fast float %1611, %1619
  %1621 = fmul fast float %1613, %1619
  %1622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1623 = extractvalue %dx.types.ResRet.i32 %1622, 0
  %1624 = and i32 %1623, 67108864
  %1625 = icmp eq i32 %1624, 0
  br i1 %1625, label %1642, label %1626

; <label>:1626                                    ; preds = %1574
  %1627 = add i32 %49, 296
  %1628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1627, i32 undef)  ; BufferLoad(srv,index,wot)
  %1629 = extractvalue %dx.types.ResRet.i32 %1628, 0
  %1630 = and i32 %1629, 65535
  %1631 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1630)  ; LegacyF16ToF32(value)
  %1632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1184, i32 undef)  ; BufferLoad(srv,index,wot)
  %1633 = extractvalue %dx.types.ResRet.i32 %1632, 0
  %1634 = and i32 %1633, 65535
  %1635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1634)  ; LegacyF16ToF32(value)
  %1636 = lshr i32 %1629, 16
  %1637 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1636)  ; LegacyF16ToF32(value)
  %1638 = fsub fast float %1599, %1637
  %1639 = fmul fast float %1638, %1631
  %1640 = fadd fast float %1639, %1635
  %1641 = call float @dx.op.unary.f32(i32 7, float %1640)  ; Saturate(value)
  br label %1642

; <label>:1642                                    ; preds = %1626, %1574
  %1643 = phi float [ %1641, %1626 ], [ %1599, %1574 ]
  %1644 = call float @dx.op.dot2.f32(i32 54, float %1620, float %1621, float %1178, float %1179)  ; Dot2(ax,ay,bx,by)
  %1645 = call float @dx.op.dot2.f32(i32 54, float %1620, float %1621, float %1180, float %1181)  ; Dot2(ax,ay,bx,by)
  br label %1646

; <label>:1646                                    ; preds = %1642, %1552
  %1647 = phi float [ %1643, %1642 ], [ 0x3FD6666660000000, %1552 ]
  %1648 = phi float [ %1644, %1642 ], [ 0.000000e+00, %1552 ]
  %1649 = phi float [ %1645, %1642 ], [ 0.000000e+00, %1552 ]
  %1650 = phi float [ %1586, %1642 ], [ 1.000000e+00, %1552 ]
  %1651 = add i32 %49, 176
  %1652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1651, i32 undef)  ; BufferLoad(srv,index,wot)
  %1653 = extractvalue %dx.types.ResRet.i32 %1652, 0
  %1654 = lshr i32 %1653, 22
  %1655 = shl nuw nsw i32 %1654, 5
  %1656 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1655)  ; LegacyF16ToF32(value)
  %1657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1658 = extractvalue %dx.types.ResRet.i32 %1657, 0
  %1659 = and i32 %1658, 64
  %1660 = icmp eq i32 %1659, 0
  br i1 %1660, label %1694, label %1661

; <label>:1661                                    ; preds = %1646
  %1662 = add i32 %49, 412
  %1663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1662, i32 undef)  ; BufferLoad(srv,index,wot)
  %1664 = extractvalue %dx.types.ResRet.i32 %1663, 0
  %1665 = add i32 %1664, 0
  %1666 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1665, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1668 = extractvalue %dx.types.ResRet.i32 %1667, 0
  %1669 = and i32 %1668, 131072
  %1670 = icmp eq i32 %1669, 0
  %1671 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1666, %dx.types.Handle %104, float %1274, float %1275, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1672 = extractvalue %dx.types.ResRet.f32 %1671, 0
  %1673 = extractvalue %dx.types.ResRet.f32 %1671, 1
  %1674 = extractvalue %dx.types.ResRet.f32 %1671, 2
  %1675 = fmul fast float %1672, %307
  %1676 = fmul fast float %1673, %310
  %1677 = fmul fast float %1674, %313
  br i1 %1670, label %1684, label %1678

; <label>:1678                                    ; preds = %1661
  %1679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1680 = extractvalue %dx.types.CBufRet.f32 %1679, 0
  %1681 = fmul fast float %1680, %1675
  %1682 = fmul fast float %1680, %1676
  %1683 = fmul fast float %1680, %1677
  br label %1684

; <label>:1684                                    ; preds = %1678, %1661
  %1685 = phi float [ %1681, %1678 ], [ %1675, %1661 ]
  %1686 = phi float [ %1682, %1678 ], [ %1676, %1661 ]
  %1687 = phi float [ %1683, %1678 ], [ %1677, %1661 ]
  %1688 = fmul fast float %1685, %1656
  %1689 = select i1 %248, float %1688, float %1685
  %1690 = call float @dx.op.dot3.f32(i32 55, float %1689, float %1686, float %1687, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1691 = select i1 %248, float 0.000000e+00, float %1685
  %1692 = select i1 %248, float %1690, float %1686
  %1693 = select i1 %248, float 0.000000e+00, float %1687
  br label %1694

; <label>:1694                                    ; preds = %1684, %1646
  %1695 = phi float [ %1691, %1684 ], [ 0.000000e+00, %1646 ]
  %1696 = phi float [ %1692, %1684 ], [ 0.000000e+00, %1646 ]
  %1697 = phi float [ %1693, %1684 ], [ 0.000000e+00, %1646 ]
  %1698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1699 = extractvalue %dx.types.ResRet.i32 %1698, 0
  %1700 = and i32 %1699, 1024
  %1701 = icmp eq i32 %1700, 0
  br i1 %1701, label %1732, label %1702

; <label>:1702                                    ; preds = %1694
  %1703 = add i32 %49, 168
  %1704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1703, i32 undef)  ; BufferLoad(srv,index,wot)
  %1705 = extractvalue %dx.types.ResRet.i32 %1704, 0
  %1706 = and i32 %1705, 255
  %1707 = uitofp i32 %1706 to float
  %1708 = fmul fast float %1707, 0x3F70101020000000
  %1709 = lshr i32 %1705, 8
  %1710 = and i32 %1709, 255
  %1711 = uitofp i32 %1710 to float
  %1712 = fmul fast float %1711, 0x3F70101020000000
  %1713 = lshr i32 %1705, 16
  %1714 = and i32 %1713, 255
  %1715 = uitofp i32 %1714 to float
  %1716 = fmul fast float %1715, 0x3F70101020000000
  %1717 = fmul fast float %1708, %1708
  %1718 = fmul fast float %1712, %1712
  %1719 = fmul fast float %1716, %1716
  %1720 = add i32 %49, 476
  %1721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1720, i32 undef)  ; BufferLoad(srv,index,wot)
  %1722 = extractvalue %dx.types.ResRet.i32 %1721, 0
  %1723 = add i32 %1722, 0
  %1724 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1723, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1725 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1724, %dx.types.Handle %105, float %1274, float %1275, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1726 = extractvalue %dx.types.ResRet.f32 %1725, 0
  %1727 = extractvalue %dx.types.ResRet.f32 %1725, 1
  %1728 = extractvalue %dx.types.ResRet.f32 %1725, 2
  %1729 = fmul fast float %1717, %1726
  %1730 = fmul fast float %1718, %1727
  %1731 = fmul fast float %1719, %1728
  br label %1732

; <label>:1732                                    ; preds = %1702, %1694
  %1733 = phi float [ %1729, %1702 ], [ 0.000000e+00, %1694 ]
  %1734 = phi float [ %1730, %1702 ], [ 0.000000e+00, %1694 ]
  %1735 = phi float [ %1731, %1702 ], [ 0.000000e+00, %1694 ]
  %1736 = fcmp fast ogt float %1733, 0.000000e+00
  %1737 = fcmp fast ogt float %1734, 0.000000e+00
  %1738 = fcmp fast ogt float %1735, 0.000000e+00
  %1739 = call float @dx.op.unary.f32(i32 23, float %1733)  ; Log(value)
  %1740 = call float @dx.op.unary.f32(i32 23, float %1734)  ; Log(value)
  %1741 = call float @dx.op.unary.f32(i32 23, float %1735)  ; Log(value)
  %1742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1651, i32 undef)  ; BufferLoad(srv,index,wot)
  %1743 = extractvalue %dx.types.ResRet.i32 %1742, 0
  %1744 = lshr i32 %1743, 7
  %1745 = and i32 %1744, 32752
  %1746 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1745)  ; LegacyF16ToF32(value)
  %1747 = fmul fast float %1739, 0xBFE62E4300000000
  %1748 = fmul fast float %1747, %1746
  %1749 = fmul fast float %1740, 0xBFE62E4300000000
  %1750 = fmul fast float %1749, %1746
  %1751 = fmul fast float %1741, 0xBFE62E4300000000
  %1752 = fmul fast float %1751, %1746
  %1753 = select i1 %1736, float %1748, float 1.270000e+02
  %1754 = select i1 %1737, float %1750, float 1.270000e+02
  %1755 = select i1 %1738, float %1752, float 1.270000e+02
  %1756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1757 = extractvalue %dx.types.ResRet.i32 %1756, 0
  %1758 = and i32 %1757, 10240
  %1759 = icmp eq i32 %1758, 0
  br i1 %1759, label %1804, label %1760

; <label>:1760                                    ; preds = %1732
  %1761 = add i32 %49, 492
  %1762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1761, i32 undef)  ; BufferLoad(srv,index,wot)
  %1763 = extractvalue %dx.types.ResRet.i32 %1762, 0
  %1764 = add i32 %1763, 0
  %1765 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1764, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1766 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1765, %dx.types.Handle %105, float %1274, float %1275, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1767 = extractvalue %dx.types.ResRet.f32 %1766, 1
  %1768 = extractvalue %dx.types.ResRet.f32 %1766, 3
  %1769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1770 = extractvalue %dx.types.ResRet.i32 %1769, 0
  %1771 = and i32 %1770, 1048576
  %1772 = icmp ne i32 %1771, 0
  %1773 = and i32 %1770, 8192
  %1774 = icmp eq i32 %1773, 0
  br i1 %1774, label %1790, label %1775

; <label>:1775                                    ; preds = %1760
  %1776 = extractvalue %dx.types.ResRet.f32 %1766, 2
  %1777 = select i1 %1772, float %1776, float %1767
  %1778 = extractvalue %dx.types.ResRet.f32 %1766, 0
  %1779 = select i1 %1772, float %1778, float %1767
  %1780 = add i32 %49, 112
  %1781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1780, i32 undef)  ; BufferLoad(srv,index,wot)
  %1782 = extractvalue %dx.types.ResRet.i32 %1781, 0
  %1783 = lshr i32 %1782, 16
  %1784 = and i32 %1783, 255
  %1785 = uitofp i32 %1784 to float
  %1786 = fmul fast float %1785, 0x3F80101020000000
  %1787 = fmul fast float %1786, %1779
  %1788 = fmul fast float %1786, %1767
  %1789 = fmul fast float %1786, %1777
  br label %1790

; <label>:1790                                    ; preds = %1775, %1760
  %1791 = phi float [ %1787, %1775 ], [ 0.000000e+00, %1760 ]
  %1792 = phi float [ %1788, %1775 ], [ 0.000000e+00, %1760 ]
  %1793 = phi float [ %1789, %1775 ], [ 0.000000e+00, %1760 ]
  %1794 = and i32 %1770, 2048
  %1795 = icmp eq i32 %1794, 0
  br i1 %1795, label %1804, label %1796

; <label>:1796                                    ; preds = %1790
  %1797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1651, i32 undef)  ; BufferLoad(srv,index,wot)
  %1798 = extractvalue %dx.types.ResRet.i32 %1797, 0
  %1799 = shl i32 %1798, 4
  %1800 = and i32 %1799, 32752
  %1801 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1800)  ; LegacyF16ToF32(value)
  %1802 = fmul fast float %1801, %1768
  %1803 = call float @dx.op.binary.f32(i32 35, float %1802, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1804

; <label>:1804                                    ; preds = %1796, %1790, %1732
  %1805 = phi float [ %1791, %1796 ], [ %1791, %1790 ], [ 0.000000e+00, %1732 ]
  %1806 = phi float [ %1792, %1796 ], [ %1792, %1790 ], [ 0.000000e+00, %1732 ]
  %1807 = phi float [ %1793, %1796 ], [ %1793, %1790 ], [ 0.000000e+00, %1732 ]
  %1808 = phi float [ %1803, %1796 ], [ 0x3F70101020000000, %1790 ], [ 0x3F70101020000000, %1732 ]
  %1809 = add i32 %49, 112
  %1810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1809, i32 undef)  ; BufferLoad(srv,index,wot)
  %1811 = extractvalue %dx.types.ResRet.i32 %1810, 0
  %1812 = and i32 %1811, 255
  %1813 = uitofp i32 %1812 to float
  %1814 = lshr i32 %1811, 8
  %1815 = and i32 %1814, 255
  %1816 = uitofp i32 %1815 to float
  %1817 = call float @dx.op.dot3.f32(i32 55, float %1567, float %1568, float %1569, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1818 = fmul fast float %1816, %1817
  %1819 = fadd fast float %1818, %1813
  %1820 = fmul fast float %1819, 0x3F70101020000000
  %1821 = call float @dx.op.unary.f32(i32 7, float %1820)  ; Saturate(value)
  br i1 %1166, label %1822, label %1857

; <label>:1822                                    ; preds = %1804
  %1823 = fmul fast float %1808, 2.000000e+00
  %1824 = fcmp fast olt float %1753, 1.270000e+02
  %1825 = fcmp fast olt float %1754, 1.270000e+02
  %1826 = fcmp fast olt float %1755, 1.270000e+02
  %1827 = fmul fast float %1753, 0xBFF7154760000000
  %1828 = fmul fast float %1827, %1823
  %1829 = fmul fast float %1754, 0xBFF7154760000000
  %1830 = fmul fast float %1829, %1823
  %1831 = fmul fast float %1755, 0xBFF7154760000000
  %1832 = fmul fast float %1831, %1823
  %1833 = call float @dx.op.unary.f32(i32 21, float %1828)  ; Exp(value)
  %1834 = call float @dx.op.unary.f32(i32 21, float %1830)  ; Exp(value)
  %1835 = call float @dx.op.unary.f32(i32 21, float %1832)  ; Exp(value)
  %1836 = call float @dx.op.unary.f32(i32 7, float %1833)  ; Saturate(value)
  %1837 = call float @dx.op.unary.f32(i32 7, float %1834)  ; Saturate(value)
  %1838 = call float @dx.op.unary.f32(i32 7, float %1835)  ; Saturate(value)
  %1839 = fadd fast float %1836, -1.000000e+00
  %1840 = select i1 %1824, float %1839, float -1.000000e+00
  %1841 = fadd fast float %1837, -1.000000e+00
  %1842 = select i1 %1825, float %1841, float -1.000000e+00
  %1843 = fadd fast float %1838, -1.000000e+00
  %1844 = select i1 %1826, float %1843, float -1.000000e+00
  %1845 = fmul fast float %1840, %1347
  %1846 = fmul fast float %1842, %1347
  %1847 = fmul fast float %1844, %1347
  %1848 = fadd fast float %1845, 1.000000e+00
  %1849 = fadd fast float %1846, 1.000000e+00
  %1850 = fadd fast float %1847, 1.000000e+00
  %1851 = fmul fast float %1848, %1147
  %1852 = fmul fast float %1849, %1148
  %1853 = fmul fast float %1850, %1149
  %1854 = fmul fast float %1848, %1150
  %1855 = fmul fast float %1849, %1151
  %1856 = fmul fast float %1850, %1152
  br label %1857

; <label>:1857                                    ; preds = %1822, %1804
  %1858 = phi float [ %1851, %1822 ], [ %1147, %1804 ]
  %1859 = phi float [ %1852, %1822 ], [ %1148, %1804 ]
  %1860 = phi float [ %1853, %1822 ], [ %1149, %1804 ]
  %1861 = phi float [ %1854, %1822 ], [ %1150, %1804 ]
  %1862 = phi float [ %1855, %1822 ], [ %1151, %1804 ]
  %1863 = phi float [ %1856, %1822 ], [ %1152, %1804 ]
  %1864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1865 = extractvalue %dx.types.ResRet.i32 %1864, 0
  %1866 = and i32 %1865, 3
  %1867 = icmp eq i32 %1866, 3
  br i1 %1867, label %1946, label %1868

; <label>:1868                                    ; preds = %1857
  %1869 = and i32 %1865, 16
  %1870 = icmp ne i32 %1869, 0
  %1871 = select i1 %1870, float %1347, float 0.000000e+00
  %1872 = icmp eq i32 %1866, 0
  br i1 %1872, label %1873, label %1901

; <label>:1873                                    ; preds = %1868
  %1874 = and i32 %1865, 64
  %1875 = icmp ne i32 %1874, 0
  %1876 = select i1 %1875, float %1347, float 0.000000e+00
  %1877 = fsub fast float %1567, %1858
  %1878 = fsub fast float %1568, %1859
  %1879 = fsub fast float %1569, %1860
  %1880 = fmul fast float %1871, %1877
  %1881 = fmul fast float %1871, %1878
  %1882 = fmul fast float %1871, %1879
  %1883 = fadd fast float %1880, %1858
  %1884 = fadd fast float %1881, %1859
  %1885 = fadd fast float %1882, %1860
  %1886 = fsub fast float %1553, %1159
  %1887 = fmul fast float %1871, %1886
  %1888 = fadd fast float %1887, %1159
  %1889 = fsub fast float %1695, %1861
  %1890 = fsub fast float %1696, %1862
  %1891 = fsub fast float %1697, %1863
  %1892 = fmul fast float %1876, %1889
  %1893 = fmul fast float %1876, %1890
  %1894 = fmul fast float %1876, %1891
  %1895 = fadd fast float %1892, %1861
  %1896 = fadd fast float %1893, %1862
  %1897 = fadd fast float %1894, %1863
  %1898 = fsub fast float %1821, %1164
  %1899 = fmul fast float %1871, %1898
  %1900 = fadd fast float %1899, %1164
  br label %1946

; <label>:1901                                    ; preds = %1868
  %1902 = icmp eq i32 %1866, 1
  br i1 %1902, label %1903, label %1916

; <label>:1903                                    ; preds = %1901
  %1904 = fadd fast float %1567, -1.000000e+00
  %1905 = fadd fast float %1568, -1.000000e+00
  %1906 = fadd fast float %1569, -1.000000e+00
  %1907 = fmul fast float %1871, %1904
  %1908 = fmul fast float %1871, %1905
  %1909 = fmul fast float %1871, %1906
  %1910 = fadd fast float %1907, 1.000000e+00
  %1911 = fadd fast float %1908, 1.000000e+00
  %1912 = fadd fast float %1909, 1.000000e+00
  %1913 = fmul fast float %1910, %1858
  %1914 = fmul fast float %1911, %1859
  %1915 = fmul fast float %1912, %1860
  br label %1946

; <label>:1916                                    ; preds = %1901
  %1917 = icmp eq i32 %1866, 2
  br i1 %1917, label %1918, label %1946

; <label>:1918                                    ; preds = %1916
  %1919 = call float @dx.op.unary.f32(i32 24, float %1567)  ; Sqrt(value)
  %1920 = call float @dx.op.unary.f32(i32 24, float %1568)  ; Sqrt(value)
  %1921 = call float @dx.op.unary.f32(i32 24, float %1569)  ; Sqrt(value)
  %1922 = fadd fast float %1919, -5.000000e-01
  %1923 = fadd fast float %1920, -5.000000e-01
  %1924 = fadd fast float %1921, -5.000000e-01
  %1925 = fmul fast float %1922, %1871
  %1926 = fmul fast float %1923, %1871
  %1927 = fmul fast float %1924, %1871
  %1928 = fadd fast float %1925, 5.000000e-01
  %1929 = fadd fast float %1926, 5.000000e-01
  %1930 = fadd fast float %1927, 5.000000e-01
  %1931 = fmul fast float %1928, 2.000000e+00
  %1932 = fsub fast float 1.000000e+00, %1931
  %1933 = fmul fast float %1932, %1858
  %1934 = fadd fast float %1933, %1931
  %1935 = fmul fast float %1934, %1858
  %1936 = fmul fast float %1929, 2.000000e+00
  %1937 = fsub fast float 1.000000e+00, %1936
  %1938 = fmul fast float %1937, %1859
  %1939 = fadd fast float %1938, %1936
  %1940 = fmul fast float %1939, %1859
  %1941 = fmul fast float %1930, 2.000000e+00
  %1942 = fsub fast float 1.000000e+00, %1941
  %1943 = fmul fast float %1942, %1860
  %1944 = fadd fast float %1943, %1941
  %1945 = fmul fast float %1944, %1860
  br label %1946

; <label>:1946                                    ; preds = %1918, %1916, %1903, %1873, %1857
  %1947 = phi float [ %1858, %1857 ], [ %1935, %1918 ], [ %1858, %1916 ], [ %1913, %1903 ], [ %1883, %1873 ]
  %1948 = phi float [ %1859, %1857 ], [ %1940, %1918 ], [ %1859, %1916 ], [ %1914, %1903 ], [ %1884, %1873 ]
  %1949 = phi float [ %1860, %1857 ], [ %1945, %1918 ], [ %1860, %1916 ], [ %1915, %1903 ], [ %1885, %1873 ]
  %1950 = phi float [ %1861, %1857 ], [ %1861, %1918 ], [ %1861, %1916 ], [ %1861, %1903 ], [ %1895, %1873 ]
  %1951 = phi float [ %1862, %1857 ], [ %1862, %1918 ], [ %1862, %1916 ], [ %1862, %1903 ], [ %1896, %1873 ]
  %1952 = phi float [ %1863, %1857 ], [ %1863, %1918 ], [ %1863, %1916 ], [ %1863, %1903 ], [ %1897, %1873 ]
  %1953 = phi float [ %1159, %1857 ], [ %1159, %1918 ], [ %1159, %1916 ], [ %1159, %1903 ], [ %1888, %1873 ]
  %1954 = phi float [ %1164, %1857 ], [ %1164, %1918 ], [ %1164, %1916 ], [ %1164, %1903 ], [ %1900, %1873 ]
  %1955 = and i32 %1865, 12
  %1956 = icmp eq i32 %1955, 12
  br i1 %1956, label %2087, label %1957

; <label>:1957                                    ; preds = %1946
  %1958 = and i32 %1865, 2097184
  %1959 = icmp eq i32 %1958, 2097184
  %1960 = select i1 %1959, float %1347, float 0.000000e+00
  %1961 = and i32 %1865, 4194336
  %1962 = icmp eq i32 %1961, 4194336
  %1963 = select i1 %1962, float %1347, float 0.000000e+00
  %1964 = and i32 %1865, 8388640
  %1965 = icmp eq i32 %1964, 8388640
  %1966 = select i1 %1965, float %1347, float 0.000000e+00
  %1967 = and i32 %1865, 1024
  %1968 = icmp ne i32 %1967, 0
  %1969 = select i1 %1968, float %1347, float 0.000000e+00
  %1970 = and i32 %1865, 2048
  %1971 = icmp ne i32 %1970, 0
  %1972 = select i1 %1971, float %1347, float 0.000000e+00
  %1973 = and i32 %1865, 8192
  %1974 = icmp ne i32 %1973, 0
  %1975 = select i1 %1974, float %1347, float 0.000000e+00
  %1976 = icmp eq i32 %1955, 0
  br i1 %1976, label %1977, label %2011

; <label>:1977                                    ; preds = %1957
  %1978 = fsub fast float %1648, %1145
  %1979 = fsub fast float %1649, %1146
  %1980 = fmul fast float %1960, %1978
  %1981 = fmul fast float %1960, %1979
  %1982 = fadd fast float %1980, %1145
  %1983 = fadd fast float %1981, %1146
  %1984 = fsub fast float %1650, %1162
  %1985 = fmul fast float %1963, %1984
  %1986 = fadd fast float %1985, %1162
  %1987 = fsub fast float %1647, %1161
  %1988 = fmul fast float %1966, %1987
  %1989 = fadd fast float %1988, %1161
  %1990 = fsub fast float %1753, %1156
  %1991 = fsub fast float %1754, %1157
  %1992 = fsub fast float %1755, %1158
  %1993 = fmul fast float %1969, %1990
  %1994 = fmul fast float %1969, %1991
  %1995 = fmul fast float %1969, %1992
  %1996 = fadd fast float %1993, %1156
  %1997 = fadd fast float %1994, %1157
  %1998 = fadd fast float %1995, %1158
  %1999 = fsub fast float %1808, %1163
  %2000 = fmul fast float %1972, %1999
  %2001 = fadd fast float %2000, %1163
  %2002 = fsub fast float %1805, %1153
  %2003 = fsub fast float %1806, %1154
  %2004 = fsub fast float %1807, %1155
  %2005 = fmul fast float %1975, %2002
  %2006 = fmul fast float %1975, %2003
  %2007 = fmul fast float %1975, %2004
  %2008 = fadd fast float %2005, %1153
  %2009 = fadd fast float %2006, %1154
  %2010 = fadd fast float %2007, %1155
  br label %2087

; <label>:2011                                    ; preds = %1957
  %2012 = icmp eq i32 %1955, 4
  br i1 %2012, label %2013, label %2059

; <label>:2013                                    ; preds = %2011
  %2014 = fmul fast float %1960, %1648
  %2015 = fmul fast float %1960, %1649
  %2016 = fadd fast float %2014, %1145
  %2017 = fadd fast float %2015, %1146
  %2018 = call float @dx.op.binary.f32(i32 36, float %1162, float %1650)  ; FMin(a,b)
  %2019 = fsub fast float %2018, %1162
  %2020 = fmul fast float %2019, %1963
  %2021 = fadd fast float %2020, %1162
  %2022 = fadd fast float %1647, %1161
  %2023 = fmul fast float %2022, 0x3FF337FAE0000000
  %2024 = fmul fast float %1161, %1161
  %2025 = fmul fast float %1647, %1647
  %2026 = fadd fast float %2025, %2024
  %2027 = fmul fast float %2026, 0x3FE5152B00000000
  %2028 = fmul fast float %1161, 0xBFCC1F85E0000000
  %2029 = fmul fast float %2028, %1647
  %2030 = fadd fast float %2029, 0xBFE1363700000000
  %2031 = fadd fast float %2030, %2023
  %2032 = fsub fast float %2031, %2027
  %2033 = fmul fast float %2022, 0x3FBA6F0D00000000
  %2034 = fmul fast float %2026, 0x3FD0432880000000
  %2035 = fmul fast float %1161, 0xBFEF110800000000
  %2036 = fmul fast float %2035, %1647
  %2037 = fadd fast float %2036, 1.000000e+00
  %2038 = fsub fast float %2037, %2033
  %2039 = fadd fast float %2038, %2034
  %2040 = fdiv fast float %2032, %2039
  %2041 = call float @dx.op.unary.f32(i32 7, float %2040)  ; Saturate(value)
  %2042 = fsub fast float %2041, %1161
  %2043 = fmul fast float %2042, %1966
  %2044 = fadd fast float %2043, %1161
  %2045 = fmul fast float %1969, %1753
  %2046 = fmul fast float %1969, %1754
  %2047 = fmul fast float %1969, %1755
  %2048 = fadd fast float %2045, %1156
  %2049 = fadd fast float %2046, %1157
  %2050 = fadd fast float %2047, %1158
  %2051 = fmul fast float %1972, %1808
  %2052 = fadd fast float %2051, %1163
  %2053 = fmul fast float %1975, %1805
  %2054 = fmul fast float %1975, %1806
  %2055 = fmul fast float %1975, %1807
  %2056 = fadd fast float %2053, %1153
  %2057 = fadd fast float %2054, %1154
  %2058 = fadd fast float %2055, %1155
  br label %2087

; <label>:2059                                    ; preds = %2011
  %2060 = icmp eq i32 %1955, 8
  br i1 %2060, label %2061, label %2087

; <label>:2061                                    ; preds = %2059
  %2062 = fmul fast float %1960, %1648
  %2063 = fmul fast float %1960, %1649
  %2064 = fadd fast float %2062, %1145
  %2065 = fadd fast float %2063, %1146
  %2066 = call float @dx.op.binary.f32(i32 36, float %1162, float %1650)  ; FMin(a,b)
  %2067 = fsub fast float %2066, %1162
  %2068 = fmul fast float %2067, %1963
  %2069 = fadd fast float %2068, %1162
  %2070 = fsub fast float %1647, %1161
  %2071 = fmul fast float %1966, %2070
  %2072 = fadd fast float %2071, %1161
  %2073 = fmul fast float %1969, %1753
  %2074 = fmul fast float %1969, %1754
  %2075 = fmul fast float %1969, %1755
  %2076 = fadd fast float %2073, %1156
  %2077 = fadd fast float %2074, %1157
  %2078 = fadd fast float %2075, %1158
  %2079 = fmul fast float %1972, %1808
  %2080 = fadd fast float %2079, %1163
  %2081 = fmul fast float %1975, %1805
  %2082 = fmul fast float %1975, %1806
  %2083 = fmul fast float %1975, %1807
  %2084 = fadd fast float %2081, %1153
  %2085 = fadd fast float %2082, %1154
  %2086 = fadd fast float %2083, %1155
  br label %2087

; <label>:2087                                    ; preds = %2061, %2059, %2013, %1977, %1946, %1346, %1165, %1144
  %2088 = phi float [ %1145, %1946 ], [ %1145, %1346 ], [ %1145, %1144 ], [ %2064, %2061 ], [ %1145, %2059 ], [ %2016, %2013 ], [ %1982, %1977 ], [ %1145, %1165 ]
  %2089 = phi float [ %1146, %1946 ], [ %1146, %1346 ], [ %1146, %1144 ], [ %2065, %2061 ], [ %1146, %2059 ], [ %2017, %2013 ], [ %1983, %1977 ], [ %1146, %1165 ]
  %2090 = phi float [ %1947, %1946 ], [ %1147, %1346 ], [ %1147, %1144 ], [ %1947, %2061 ], [ %1947, %2059 ], [ %1947, %2013 ], [ %1947, %1977 ], [ %1147, %1165 ]
  %2091 = phi float [ %1948, %1946 ], [ %1148, %1346 ], [ %1148, %1144 ], [ %1948, %2061 ], [ %1948, %2059 ], [ %1948, %2013 ], [ %1948, %1977 ], [ %1148, %1165 ]
  %2092 = phi float [ %1949, %1946 ], [ %1149, %1346 ], [ %1149, %1144 ], [ %1949, %2061 ], [ %1949, %2059 ], [ %1949, %2013 ], [ %1949, %1977 ], [ %1149, %1165 ]
  %2093 = phi float [ %1950, %1946 ], [ %1150, %1346 ], [ %1150, %1144 ], [ %1950, %2061 ], [ %1950, %2059 ], [ %1950, %2013 ], [ %1950, %1977 ], [ %1150, %1165 ]
  %2094 = phi float [ %1951, %1946 ], [ %1151, %1346 ], [ %1151, %1144 ], [ %1951, %2061 ], [ %1951, %2059 ], [ %1951, %2013 ], [ %1951, %1977 ], [ %1151, %1165 ]
  %2095 = phi float [ %1952, %1946 ], [ %1152, %1346 ], [ %1152, %1144 ], [ %1952, %2061 ], [ %1952, %2059 ], [ %1952, %2013 ], [ %1952, %1977 ], [ %1152, %1165 ]
  %2096 = phi float [ %1153, %1946 ], [ %1153, %1346 ], [ %1153, %1144 ], [ %2084, %2061 ], [ %1153, %2059 ], [ %2056, %2013 ], [ %2008, %1977 ], [ %1153, %1165 ]
  %2097 = phi float [ %1154, %1946 ], [ %1154, %1346 ], [ %1154, %1144 ], [ %2085, %2061 ], [ %1154, %2059 ], [ %2057, %2013 ], [ %2009, %1977 ], [ %1154, %1165 ]
  %2098 = phi float [ %1155, %1946 ], [ %1155, %1346 ], [ %1155, %1144 ], [ %2086, %2061 ], [ %1155, %2059 ], [ %2058, %2013 ], [ %2010, %1977 ], [ %1155, %1165 ]
  %2099 = phi float [ %1156, %1946 ], [ %1156, %1346 ], [ %1156, %1144 ], [ %2076, %2061 ], [ %1156, %2059 ], [ %2048, %2013 ], [ %1996, %1977 ], [ %1156, %1165 ]
  %2100 = phi float [ %1157, %1946 ], [ %1157, %1346 ], [ %1157, %1144 ], [ %2077, %2061 ], [ %1157, %2059 ], [ %2049, %2013 ], [ %1997, %1977 ], [ %1157, %1165 ]
  %2101 = phi float [ %1158, %1946 ], [ %1158, %1346 ], [ %1158, %1144 ], [ %2078, %2061 ], [ %1158, %2059 ], [ %2050, %2013 ], [ %1998, %1977 ], [ %1158, %1165 ]
  %2102 = phi float [ %1953, %1946 ], [ %1159, %1346 ], [ %1159, %1144 ], [ %1953, %2061 ], [ %1953, %2059 ], [ %1953, %2013 ], [ %1953, %1977 ], [ %1159, %1165 ]
  %2103 = phi float [ %1161, %1946 ], [ %1161, %1346 ], [ %1161, %1144 ], [ %2072, %2061 ], [ %1161, %2059 ], [ %2044, %2013 ], [ %1989, %1977 ], [ %1161, %1165 ]
  %2104 = phi float [ %1162, %1946 ], [ %1162, %1346 ], [ %1162, %1144 ], [ %2069, %2061 ], [ %1162, %2059 ], [ %2021, %2013 ], [ %1986, %1977 ], [ %1162, %1165 ]
  %2105 = phi float [ %1163, %1946 ], [ %1163, %1346 ], [ %1163, %1144 ], [ %2080, %2061 ], [ %1163, %2059 ], [ %2052, %2013 ], [ %2001, %1977 ], [ %1163, %1165 ]
  %2106 = phi float [ %1954, %1946 ], [ %1164, %1346 ], [ %1164, %1144 ], [ %1954, %2061 ], [ %1954, %2059 ], [ %1954, %2013 ], [ %1954, %1977 ], [ %1164, %1165 ]
  br i1 %434, label %3029, label %2107

; <label>:2107                                    ; preds = %2087
  %2108 = icmp ult i32 %490, 3
  %2109 = add i32 %49, 56
  %2110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2109, i32 undef)  ; BufferLoad(srv,index,wot)
  %2111 = extractvalue %dx.types.ResRet.i32 %2110, 0
  %2112 = add i32 %49, 60
  %2113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2112, i32 undef)  ; BufferLoad(srv,index,wot)
  %2114 = extractvalue %dx.types.ResRet.i32 %2113, 0
  %2115 = or i32 %2114, %2111
  %2116 = icmp eq i32 %2115, 0
  br i1 %2116, label %3029, label %2117

; <label>:2117                                    ; preds = %2107
  %2118 = and i32 %2111, 262144
  %2119 = icmp ne i32 %2118, 0
  %2120 = select i1 %2119, float %54, float 1.000000e+00
  %2121 = select i1 %2119, float %55, float 0.000000e+00
  %2122 = select i1 %2119, float %56, float 0.000000e+00
  %2123 = select i1 %2119, float %57, float 1.000000e+00
  %2124 = select i1 %2119, float %58, float %86
  %2125 = select i1 %2119, float %59, float %87
  %2126 = add i32 %49, 316
  %2127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2126, i32 undef)  ; BufferLoad(srv,index,wot)
  %2128 = extractvalue %dx.types.ResRet.i32 %2127, 0
  %2129 = lshr i32 %2128, 16
  %2130 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2129)  ; LegacyF16ToF32(value)
  %2131 = fmul fast float %2130, 0x3F50624DE0000000
  %2132 = add i32 %49, 120
  %2133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2132, i32 undef)  ; BufferLoad(srv,index,wot)
  %2134 = extractvalue %dx.types.ResRet.i32 %2133, 0
  %2135 = lshr i32 %2134, 16
  %2136 = and i32 %2135, 255
  %2137 = lshr i32 %2134, 24
  %2138 = add i32 %49, 324
  %2139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2138, i32 undef)  ; BufferLoad(srv,index,wot)
  %2140 = extractvalue %dx.types.ResRet.i32 %2139, 0
  %2141 = and i32 %2140, 65535
  %2142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2141)  ; LegacyF16ToF32(value)
  %2143 = lshr i32 %2140, 16
  %2144 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2143)  ; LegacyF16ToF32(value)
  %2145 = add i32 %49, 64
  %2146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2145, i32 undef)  ; BufferLoad(srv,index,wot)
  %2147 = extractvalue %dx.types.ResRet.i32 %2146, 0
  %2148 = lshr i32 %2147, 22
  %2149 = shl nuw nsw i32 %2148, 5
  %2150 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2149)  ; LegacyF16ToF32(value)
  %2151 = shl i32 %2147, 4
  %2152 = and i32 %2151, 32752
  %2153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2152)  ; LegacyF16ToF32(value)
  %2154 = lshr i32 %2147, 7
  %2155 = and i32 %2154, 32752
  %2156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2155)  ; LegacyF16ToF32(value)
  %2157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2158 = extractvalue %dx.types.CBufRet.f32 %2157, 3
  %2159 = fmul fast float %2158, 1.000000e+03
  %2160 = fmul fast float %384, %2159
  %2161 = call float @dx.op.unary.f32(i32 22, float %2160)  ; Frc(value)
  %2162 = fadd fast float %2161, %374
  %2163 = fmul fast float %385, %2159
  %2164 = call float @dx.op.unary.f32(i32 22, float %2163)  ; Frc(value)
  %2165 = fadd fast float %2164, %376
  %2166 = fmul fast float %2131, %2159
  %2167 = call float @dx.op.unary.f32(i32 22, float %2166)  ; Frc(value)
  %2168 = fmul fast float %2167, 0x401921FB60000000
  %2169 = fadd fast float %2168, %2150
  %2170 = call float @dx.op.unary.f32(i32 13, float %2169)  ; Sin(value)
  %2171 = call float @dx.op.unary.f32(i32 12, float %2169)  ; Cos(value)
  %2172 = fsub fast float -0.000000e+00, %2170
  %2173 = fadd fast float %2124, -5.000000e-01
  %2174 = fadd fast float %2125, -5.000000e-01
  %2175 = fmul fast float %2142, %2173
  %2176 = fmul fast float %2144, %2174
  %2177 = fadd fast float %2175, 5.000000e-01
  %2178 = fadd fast float %2176, 5.000000e-01
  %2179 = fmul fast float %2153, %2177
  %2180 = fmul fast float %2156, %2178
  %2181 = fmul fast float %2171, %2179
  %2182 = call float @dx.op.tertiary.f32(i32 46, float %2172, float %2180, float %2181)  ; FMad(a,b,c)
  %2183 = fmul fast float %2170, %2179
  %2184 = call float @dx.op.tertiary.f32(i32 46, float %2171, float %2180, float %2183)  ; FMad(a,b,c)
  %2185 = fadd fast float %2162, %2182
  %2186 = fadd fast float %2165, %2184
  %2187 = icmp ugt i32 %2136, 1
  %2188 = icmp ugt i32 %2134, 33554431
  %2189 = or i1 %2188, %2187
  br i1 %2189, label %2190, label %2215

; <label>:2190                                    ; preds = %2117
  %2191 = add i32 %49, 260
  %2192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2191, i32 undef)  ; BufferLoad(srv,index,wot)
  %2193 = extractvalue %dx.types.ResRet.i32 %2192, 0
  %2194 = lshr i32 %2193, 16
  %2195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2194)  ; LegacyF16ToF32(value)
  %2196 = fmul fast float %2158, %2195
  %2197 = call float @dx.op.unary.f32(i32 22, float %2196)  ; Frc(value)
  %2198 = mul nuw nsw i32 %2136, %2137
  %2199 = uitofp i32 %2198 to float
  %2200 = fmul fast float %2197, %2199
  %2201 = call float @dx.op.unary.f32(i32 27, float %2200)  ; Round_ni(value)
  %2202 = fptoui float %2201 to i32
  %2203 = urem i32 %2202, %2136
  %2204 = udiv i32 %2202, %2137
  %2205 = call float @dx.op.unary.f32(i32 22, float %2185)  ; Frc(value)
  %2206 = call float @dx.op.unary.f32(i32 22, float %2186)  ; Frc(value)
  %2207 = uitofp i32 %2203 to float
  %2208 = uitofp i32 %2204 to float
  %2209 = fadd fast float %2205, %2207
  %2210 = fadd fast float %2206, %2208
  %2211 = uitofp i32 %2136 to float
  %2212 = uitofp i32 %2137 to float
  %2213 = fdiv fast float %2209, %2211
  %2214 = fdiv fast float %2210, %2212
  br label %2215

; <label>:2215                                    ; preds = %2190, %2117
  %2216 = phi float [ %2213, %2190 ], [ %2185, %2117 ]
  %2217 = phi float [ %2214, %2190 ], [ %2186, %2117 ]
  %2218 = and i32 %2111, 256
  %2219 = icmp eq i32 %2218, 0
  br i1 %2219, label %2266, label %2220

; <label>:2220                                    ; preds = %2215
  %2221 = add i32 %49, 448
  %2222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2221, i32 undef)  ; BufferLoad(srv,index,wot)
  %2223 = extractvalue %dx.types.ResRet.i32 %2222, 0
  %2224 = add i32 %2223, 0
  %2225 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2224, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2226 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2225, %dx.types.Handle %105, float %2216, float %2217, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2227 = extractvalue %dx.types.ResRet.f32 %2226, 0
  %2228 = add i32 %49, 132
  %2229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2228, i32 undef)  ; BufferLoad(srv,index,wot)
  %2230 = extractvalue %dx.types.ResRet.i32 %2229, 0
  %2231 = shl i32 %2230, 4
  %2232 = and i32 %2231, 32752
  %2233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2232)  ; LegacyF16ToF32(value)
  %2234 = lshr i32 %2230, 7
  %2235 = and i32 %2234, 32752
  %2236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2235)  ; LegacyF16ToF32(value)
  %2237 = fsub fast float 1.000000e+00, %486
  %2238 = call float @dx.op.binary.f32(i32 35, float %2237, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2239 = bitcast float %486 to i32
  %2240 = sitofp i32 %2239 to float
  %2241 = fadd fast float %2240, 0xC1CFBF8940000000
  %2242 = fmul fast float %2236, %2241
  %2243 = fadd fast float %2242, 0x41CFBF8940000000
  %2244 = fptosi float %2243 to i32
  %2245 = bitcast i32 %2244 to float
  %2246 = bitcast float %2238 to i32
  %2247 = sitofp i32 %2246 to float
  %2248 = fadd fast float %2247, 0xC1CFBF8940000000
  %2249 = fmul fast float %2248, %2236
  %2250 = fadd fast float %2249, 0x41CFBF8940000000
  %2251 = fptosi float %2250 to i32
  %2252 = bitcast i32 %2251 to float
  %2253 = fmul fast float %2245, %2233
  %2254 = fmul fast float %2252, %2233
  %2255 = fsub fast float %2238, %2253
  %2256 = fadd fast float %2254, %2238
  %2257 = call float @dx.op.unary.f32(i32 7, float %2255)  ; Saturate(value)
  %2258 = call float @dx.op.unary.f32(i32 7, float %2256)  ; Saturate(value)
  %2259 = fsub fast float %2227, %2257
  %2260 = fsub fast float %2258, %2257
  %2261 = bitcast float %2260 to i32
  %2262 = sub nsw i32 2129859010, %2261
  %2263 = bitcast i32 %2262 to float
  %2264 = fmul fast float %2263, %2259
  %2265 = call float @dx.op.unary.f32(i32 7, float %2264)  ; Saturate(value)
  br label %2266

; <label>:2266                                    ; preds = %2220, %2215
  %2267 = phi float [ %2265, %2220 ], [ %486, %2215 ]
  %2268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2109, i32 undef)  ; BufferLoad(srv,index,wot)
  %2269 = extractvalue %dx.types.ResRet.i32 %2268, 0
  %2270 = and i32 %2269, 128
  %2271 = icmp eq i32 %2270, 0
  br i1 %2271, label %2288, label %2272

; <label>:2272                                    ; preds = %2266
  %2273 = add i32 %49, 432
  %2274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2273, i32 undef)  ; BufferLoad(srv,index,wot)
  %2275 = extractvalue %dx.types.ResRet.i32 %2274, 0
  %2276 = add i32 %2275, 0
  %2277 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2276, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2278 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2277, %dx.types.Handle %105, float %2216, float %2217, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2279 = extractvalue %dx.types.ResRet.f32 %2278, 0
  %2280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2109, i32 undef)  ; BufferLoad(srv,index,wot)
  %2281 = extractvalue %dx.types.ResRet.i32 %2280, 0
  %2282 = and i32 %2281, 524288
  %2283 = icmp ne i32 %2282, 0
  %2284 = fcmp fast ogt float %2279, 0x3FE0101020000000
  %2285 = select i1 %2284, float 1.000000e+00, float 0.000000e+00
  %2286 = select i1 %2283, float %2285, float %2279
  %2287 = fmul fast float %2286, %2267
  br label %2288

; <label>:2288                                    ; preds = %2272, %2266
  %2289 = phi float [ %2287, %2272 ], [ %2267, %2266 ]
  %2290 = fcmp fast ult float %2289, 0x3F70101020000000
  br i1 %2290, label %3029, label %2291

; <label>:2291                                    ; preds = %2288
  %2292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2109, i32 undef)  ; BufferLoad(srv,index,wot)
  %2293 = extractvalue %dx.types.ResRet.i32 %2292, 0
  %2294 = and i32 %2293, 16
  %2295 = icmp eq i32 %2294, 0
  br i1 %2295, label %2494, label %2296

; <label>:2296                                    ; preds = %2291
  %2297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2132, i32 undef)  ; BufferLoad(srv,index,wot)
  %2298 = extractvalue %dx.types.ResRet.i32 %2297, 0
  %2299 = add i32 %49, 384
  %2300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2299, i32 undef)  ; BufferLoad(srv,index,wot)
  %2301 = extractvalue %dx.types.ResRet.i32 %2300, 0
  %2302 = add i32 %2301, 0
  %2303 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2302, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2304 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2303, %dx.types.Handle %104, float %2216, float %2217, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2305 = extractvalue %dx.types.ResRet.f32 %2304, 0
  %2306 = extractvalue %dx.types.ResRet.f32 %2304, 1
  %2307 = extractvalue %dx.types.ResRet.f32 %2304, 2
  %2308 = extractvalue %dx.types.ResRet.f32 %2304, 3
  %2309 = and i32 %2298, 255
  %2310 = uitofp i32 %2309 to float
  %2311 = lshr i32 %2298, 8
  %2312 = and i32 %2311, 255
  %2313 = uitofp i32 %2312 to float
  %2314 = fmul fast float %2308, %2310
  %2315 = fadd fast float %2314, %2313
  %2316 = fmul fast float %2315, 0x3F70101000000000
  %2317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2109, i32 undef)  ; BufferLoad(srv,index,wot)
  %2318 = extractvalue %dx.types.ResRet.i32 %2317, 0
  %2319 = and i32 %2318, 512
  %2320 = icmp eq i32 %2319, 0
  br i1 %2320, label %2329, label %2321

; <label>:2321                                    ; preds = %2296
  %2322 = add i32 %49, 464
  %2323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2322, i32 undef)  ; BufferLoad(srv,index,wot)
  %2324 = extractvalue %dx.types.ResRet.i32 %2323, 0
  %2325 = add i32 %2324, 0
  %2326 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2325, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2327 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2326, %dx.types.Handle %105, float %2216, float %2217, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2328 = extractvalue %dx.types.ResRet.f32 %2327, 0
  br label %2329

; <label>:2329                                    ; preds = %2321, %2296
  %2330 = phi float [ %2328, %2321 ], [ 1.000000e+00, %2296 ]
  %2331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2109, i32 undef)  ; BufferLoad(srv,index,wot)
  %2332 = extractvalue %dx.types.ResRet.i32 %2331, 0
  %2333 = and i32 %2332, 33554432
  %2334 = icmp eq i32 %2333, 0
  br i1 %2334, label %2441, label %2335

; <label>:2335                                    ; preds = %2329
  %2336 = add i32 %49, 256
  %2337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2336, i32 undef)  ; BufferLoad(srv,index,wot)
  %2338 = extractvalue %dx.types.ResRet.i32 %2337, 0
  %2339 = and i32 %2338, 65535
  %2340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2339)  ; LegacyF16ToF32(value)
  %2341 = lshr i32 %2338, 16
  %2342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2341)  ; LegacyF16ToF32(value)
  %2343 = add i32 %49, 260
  %2344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2343, i32 undef)  ; BufferLoad(srv,index,wot)
  %2345 = extractvalue %dx.types.ResRet.i32 %2344, 0
  %2346 = and i32 %2345, 65535
  %2347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2346)  ; LegacyF16ToF32(value)
  %2348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %356, i32 undef)  ; BufferLoad(srv,index,wot)
  %2349 = extractvalue %dx.types.ResRet.i32 %2348, 0
  %2350 = lshr i32 %2349, 24
  %2351 = uitofp i32 %2350 to float
  %2352 = fmul fast float %2351, 0x3F70101020000000
  %2353 = and i32 %2349, 255
  %2354 = uitofp i32 %2353 to float
  %2355 = fmul fast float %2354, 0x3F70101020000000
  %2356 = lshr i32 %2349, 8
  %2357 = and i32 %2356, 255
  %2358 = uitofp i32 %2357 to float
  %2359 = fmul fast float %2358, 0x3F70101020000000
  %2360 = lshr i32 %2349, 16
  %2361 = and i32 %2360, 255
  %2362 = uitofp i32 %2361 to float
  %2363 = fmul fast float %2362, 0x3F70101020000000
  %2364 = add i32 %49, 252
  %2365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2364, i32 undef)  ; BufferLoad(srv,index,wot)
  %2366 = extractvalue %dx.types.ResRet.i32 %2365, 0
  %2367 = lshr i32 %2366, 24
  %2368 = uitofp i32 %2367 to float
  %2369 = fmul fast float %2368, 0x3F70101020000000
  %2370 = and i32 %2366, 255
  %2371 = uitofp i32 %2370 to float
  %2372 = fmul fast float %2371, 0x3F70101020000000
  %2373 = lshr i32 %2366, 8
  %2374 = and i32 %2373, 255
  %2375 = uitofp i32 %2374 to float
  %2376 = fmul fast float %2375, 0x3F70101020000000
  %2377 = lshr i32 %2366, 16
  %2378 = and i32 %2377, 255
  %2379 = uitofp i32 %2378 to float
  %2380 = fmul fast float %2379, 0x3F70101020000000
  %2381 = bitcast float %2305 to i32
  %2382 = ashr i32 %2381, 1
  %2383 = sub nsw i32 1597463174, %2382
  %2384 = bitcast i32 %2383 to float
  %2385 = fmul fast float %2305, 5.000000e-01
  %2386 = fmul fast float %2384, %2384
  %2387 = fmul fast float %2386, %2385
  %2388 = fsub fast float 1.500000e+00, %2387
  %2389 = fmul fast float %2384, %2305
  %2390 = fmul fast float %2389, %2388
  %2391 = bitcast float %2306 to i32
  %2392 = ashr i32 %2391, 1
  %2393 = sub nsw i32 1597463174, %2392
  %2394 = bitcast i32 %2393 to float
  %2395 = fmul fast float %2306, 5.000000e-01
  %2396 = fmul fast float %2394, %2394
  %2397 = fmul fast float %2396, %2395
  %2398 = fsub fast float 1.500000e+00, %2397
  %2399 = fmul fast float %2394, %2306
  %2400 = fmul fast float %2399, %2398
  %2401 = bitcast float %2307 to i32
  %2402 = ashr i32 %2401, 1
  %2403 = sub nsw i32 1597463174, %2402
  %2404 = bitcast i32 %2403 to float
  %2405 = fmul fast float %2307, 5.000000e-01
  %2406 = fmul fast float %2404, %2404
  %2407 = fmul fast float %2406, %2405
  %2408 = fsub fast float 1.500000e+00, %2407
  %2409 = fmul fast float %2404, %2307
  %2410 = fmul fast float %2409, %2408
  %2411 = fsub fast float %2390, %2372
  %2412 = fsub fast float %2400, %2376
  %2413 = fsub fast float %2410, %2380
  %2414 = fmul fast float %2411, %2340
  %2415 = fmul fast float %2412, %2342
  %2416 = fmul fast float %2413, %2347
  %2417 = fadd fast float %2414, %2355
  %2418 = fadd fast float %2415, %2359
  %2419 = fadd fast float %2416, %2363
  %2420 = call float @dx.op.unary.f32(i32 7, float %2417)  ; Saturate(value)
  %2421 = call float @dx.op.unary.f32(i32 7, float %2418)  ; Saturate(value)
  %2422 = call float @dx.op.unary.f32(i32 7, float %2419)  ; Saturate(value)
  %2423 = fmul fast float %2420, %2420
  %2424 = fmul fast float %2421, %2421
  %2425 = fmul fast float %2422, %2422
  %2426 = fsub fast float %2423, %2305
  %2427 = fsub fast float %2424, %2306
  %2428 = fsub fast float %2425, %2307
  %2429 = fmul fast float %2426, %2330
  %2430 = fmul fast float %2427, %2330
  %2431 = fmul fast float %2428, %2330
  %2432 = fadd fast float %2429, %2305
  %2433 = fadd fast float %2430, %2306
  %2434 = fadd fast float %2431, %2307
  %2435 = fadd fast float %2352, %2316
  %2436 = fsub fast float %2435, %2369
  %2437 = call float @dx.op.unary.f32(i32 7, float %2436)  ; Saturate(value)
  %2438 = fsub fast float %2437, %2316
  %2439 = fmul fast float %2438, %2330
  %2440 = fadd fast float %2439, %2316
  br label %2494

; <label>:2441                                    ; preds = %2329
  %2442 = and i32 %2332, 134217728
  %2443 = icmp eq i32 %2442, 0
  br i1 %2443, label %2478, label %2444

; <label>:2444                                    ; preds = %2441
  %2445 = call float @dx.op.unary.f32(i32 24, float %361)  ; Sqrt(value)
  %2446 = call float @dx.op.unary.f32(i32 24, float %365)  ; Sqrt(value)
  %2447 = call float @dx.op.unary.f32(i32 24, float %369)  ; Sqrt(value)
  %2448 = fadd fast float %2445, -5.000000e-01
  %2449 = fadd fast float %2446, -5.000000e-01
  %2450 = fadd fast float %2447, -5.000000e-01
  %2451 = fmul fast float %2448, %2330
  %2452 = fmul fast float %2449, %2330
  %2453 = fmul fast float %2450, %2330
  %2454 = fadd fast float %2451, 5.000000e-01
  %2455 = fadd fast float %2452, 5.000000e-01
  %2456 = fadd fast float %2453, 5.000000e-01
  %2457 = call float @dx.op.unary.f32(i32 24, float %2305)  ; Sqrt(value)
  %2458 = call float @dx.op.unary.f32(i32 24, float %2306)  ; Sqrt(value)
  %2459 = call float @dx.op.unary.f32(i32 24, float %2307)  ; Sqrt(value)
  %2460 = fmul fast float %2454, 2.000000e+00
  %2461 = fsub fast float 1.000000e+00, %2460
  %2462 = fmul fast float %2461, %2457
  %2463 = fadd fast float %2462, %2460
  %2464 = fmul fast float %2463, %2457
  %2465 = fmul fast float %2455, 2.000000e+00
  %2466 = fsub fast float 1.000000e+00, %2465
  %2467 = fmul fast float %2466, %2458
  %2468 = fadd fast float %2467, %2465
  %2469 = fmul fast float %2468, %2458
  %2470 = fmul fast float %2456, 2.000000e+00
  %2471 = fsub fast float 1.000000e+00, %2470
  %2472 = fmul fast float %2471, %2459
  %2473 = fadd fast float %2472, %2470
  %2474 = fmul fast float %2473, %2459
  %2475 = fmul fast float %2464, %2464
  %2476 = fmul fast float %2469, %2469
  %2477 = fmul fast float %2474, %2474
  br label %2494

; <label>:2478                                    ; preds = %2441
  %2479 = fmul fast float %361, %361
  %2480 = fmul fast float %365, %365
  %2481 = fmul fast float %369, %369
  %2482 = fadd fast float %2479, -1.000000e+00
  %2483 = fadd fast float %2480, -1.000000e+00
  %2484 = fadd fast float %2481, -1.000000e+00
  %2485 = fmul fast float %2330, %2482
  %2486 = fmul fast float %2330, %2483
  %2487 = fmul fast float %2330, %2484
  %2488 = fadd fast float %2485, 1.000000e+00
  %2489 = fadd fast float %2486, 1.000000e+00
  %2490 = fadd fast float %2487, 1.000000e+00
  %2491 = fmul fast float %2488, %2305
  %2492 = fmul fast float %2489, %2306
  %2493 = fmul fast float %2490, %2307
  br label %2494

; <label>:2494                                    ; preds = %2478, %2444, %2335, %2291
  %2495 = phi float [ %2440, %2335 ], [ %2316, %2444 ], [ %2316, %2478 ], [ 0x3FA23C0BE0000000, %2291 ]
  %2496 = phi float [ %2432, %2335 ], [ %2475, %2444 ], [ %2491, %2478 ], [ 1.000000e+00, %2291 ]
  %2497 = phi float [ %2433, %2335 ], [ %2476, %2444 ], [ %2492, %2478 ], [ 1.000000e+00, %2291 ]
  %2498 = phi float [ %2434, %2335 ], [ %2477, %2444 ], [ %2493, %2478 ], [ 1.000000e+00, %2291 ]
  %2499 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2500 = extractvalue %dx.types.CBufRet.i32 %2499, 1
  %2501 = and i32 %2500, 1
  %2502 = icmp ne i32 %2501, 0
  %2503 = add i32 %49, 356
  %2504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2503, i32 undef)  ; BufferLoad(srv,index,wot)
  %2505 = extractvalue %dx.types.ResRet.i32 %2504, 0
  %2506 = and i32 %2505, 32
  %2507 = icmp ne i32 %2506, 0
  %2508 = and i1 %2502, %2507
  %2509 = select i1 %2508, float 1.000000e+00, float %2496
  %2510 = select i1 %2508, float 0x3FD3333340000000, float %2497
  %2511 = select i1 %2508, float 0x3FD3333340000000, float %2498
  %2512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2109, i32 undef)  ; BufferLoad(srv,index,wot)
  %2513 = extractvalue %dx.types.ResRet.i32 %2512, 0
  %2514 = and i32 %2513, 32
  %2515 = icmp eq i32 %2514, 0
  br i1 %2515, label %2588, label %2516

; <label>:2516                                    ; preds = %2494
  %2517 = add i32 %49, 124
  %2518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2517, i32 undef)  ; BufferLoad(srv,index,wot)
  %2519 = extractvalue %dx.types.ResRet.i32 %2518, 0
  %2520 = add i32 %49, 400
  %2521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2520, i32 undef)  ; BufferLoad(srv,index,wot)
  %2522 = extractvalue %dx.types.ResRet.i32 %2521, 0
  %2523 = add i32 %2522, 0
  %2524 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2523, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2525 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2524, %dx.types.Handle %104, float %2216, float %2217, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2526 = extractvalue %dx.types.ResRet.f32 %2525, 0
  %2527 = extractvalue %dx.types.ResRet.f32 %2525, 1
  %2528 = extractvalue %dx.types.ResRet.f32 %2525, 2
  %2529 = extractvalue %dx.types.ResRet.f32 %2525, 3
  %2530 = and i32 %2519, 255
  %2531 = uitofp i32 %2530 to float
  %2532 = lshr i32 %2519, 8
  %2533 = and i32 %2532, 255
  %2534 = uitofp i32 %2533 to float
  %2535 = lshr i32 %2519, 16
  %2536 = and i32 %2535, 255
  %2537 = uitofp i32 %2536 to float
  %2538 = fmul fast float %2537, 0x3F70101000000000
  %2539 = fmul fast float %2526, %2531
  %2540 = fadd fast float %2539, %2534
  %2541 = fmul fast float %2540, 0x3F70101000000000
  %2542 = fadd fast float %2527, -5.000000e-01
  %2543 = fadd fast float %2529, -5.000000e-01
  %2544 = fmul fast float %2542, %2538
  %2545 = fmul fast float %2543, %2538
  %2546 = fadd fast float %2544, 5.000000e-01
  %2547 = fadd fast float %2545, 5.000000e-01
  %2548 = fmul fast float %2546, 2.000000e+00
  %2549 = fadd fast float %2548, -1.000000e+00
  %2550 = fmul fast float %2547, 2.000000e+00
  %2551 = fadd fast float %2550, -1.000000e+00
  %2552 = fadd fast float %2549, %2551
  %2553 = fmul fast float %2552, 5.000000e-01
  %2554 = fsub fast float %2549, %2551
  %2555 = fmul fast float %2554, 5.000000e-01
  %2556 = call float @dx.op.unary.f32(i32 6, float %2553)  ; FAbs(value)
  %2557 = fsub fast float 1.000000e+00, %2556
  %2558 = call float @dx.op.unary.f32(i32 6, float %2555)  ; FAbs(value)
  %2559 = fsub fast float %2557, %2558
  %2560 = call float @dx.op.dot3.f32(i32 55, float %2553, float %2555, float %2559, float %2553, float %2555, float %2559)  ; Dot3(ax,ay,az,bx,by,bz)
  %2561 = call float @dx.op.unary.f32(i32 25, float %2560)  ; Rsqrt(value)
  %2562 = fmul fast float %2553, %2561
  %2563 = fmul fast float %2555, %2561
  %2564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2109, i32 undef)  ; BufferLoad(srv,index,wot)
  %2565 = extractvalue %dx.types.ResRet.i32 %2564, 0
  %2566 = and i32 %2565, 67108864
  %2567 = icmp eq i32 %2566, 0
  br i1 %2567, label %2584, label %2568

; <label>:2568                                    ; preds = %2516
  %2569 = add i32 %49, 312
  %2570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2569, i32 undef)  ; BufferLoad(srv,index,wot)
  %2571 = extractvalue %dx.types.ResRet.i32 %2570, 0
  %2572 = and i32 %2571, 65535
  %2573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2572)  ; LegacyF16ToF32(value)
  %2574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2126, i32 undef)  ; BufferLoad(srv,index,wot)
  %2575 = extractvalue %dx.types.ResRet.i32 %2574, 0
  %2576 = and i32 %2575, 65535
  %2577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2576)  ; LegacyF16ToF32(value)
  %2578 = lshr i32 %2571, 16
  %2579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2578)  ; LegacyF16ToF32(value)
  %2580 = fsub fast float %2541, %2579
  %2581 = fmul fast float %2580, %2573
  %2582 = fadd fast float %2581, %2577
  %2583 = call float @dx.op.unary.f32(i32 7, float %2582)  ; Saturate(value)
  br label %2584

; <label>:2584                                    ; preds = %2568, %2516
  %2585 = phi float [ %2583, %2568 ], [ %2541, %2516 ]
  %2586 = call float @dx.op.dot2.f32(i32 54, float %2562, float %2563, float %2120, float %2121)  ; Dot2(ax,ay,bx,by)
  %2587 = call float @dx.op.dot2.f32(i32 54, float %2562, float %2563, float %2122, float %2123)  ; Dot2(ax,ay,bx,by)
  br label %2588

; <label>:2588                                    ; preds = %2584, %2494
  %2589 = phi float [ %2585, %2584 ], [ 0x3FD6666660000000, %2494 ]
  %2590 = phi float [ %2586, %2584 ], [ 0.000000e+00, %2494 ]
  %2591 = phi float [ %2587, %2584 ], [ 0.000000e+00, %2494 ]
  %2592 = phi float [ %2528, %2584 ], [ 1.000000e+00, %2494 ]
  %2593 = add i32 %49, 192
  %2594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2593, i32 undef)  ; BufferLoad(srv,index,wot)
  %2595 = extractvalue %dx.types.ResRet.i32 %2594, 0
  %2596 = lshr i32 %2595, 22
  %2597 = shl nuw nsw i32 %2596, 5
  %2598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2597)  ; LegacyF16ToF32(value)
  %2599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2109, i32 undef)  ; BufferLoad(srv,index,wot)
  %2600 = extractvalue %dx.types.ResRet.i32 %2599, 0
  %2601 = and i32 %2600, 64
  %2602 = icmp eq i32 %2601, 0
  br i1 %2602, label %2636, label %2603

; <label>:2603                                    ; preds = %2588
  %2604 = add i32 %49, 416
  %2605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2604, i32 undef)  ; BufferLoad(srv,index,wot)
  %2606 = extractvalue %dx.types.ResRet.i32 %2605, 0
  %2607 = add i32 %2606, 0
  %2608 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2607, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2109, i32 undef)  ; BufferLoad(srv,index,wot)
  %2610 = extractvalue %dx.types.ResRet.i32 %2609, 0
  %2611 = and i32 %2610, 131072
  %2612 = icmp eq i32 %2611, 0
  %2613 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2608, %dx.types.Handle %104, float %2216, float %2217, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2614 = extractvalue %dx.types.ResRet.f32 %2613, 0
  %2615 = extractvalue %dx.types.ResRet.f32 %2613, 1
  %2616 = extractvalue %dx.types.ResRet.f32 %2613, 2
  %2617 = fmul fast float %2614, %349
  %2618 = fmul fast float %2615, %352
  %2619 = fmul fast float %2616, %355
  br i1 %2612, label %2626, label %2620

; <label>:2620                                    ; preds = %2603
  %2621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2622 = extractvalue %dx.types.CBufRet.f32 %2621, 0
  %2623 = fmul fast float %2622, %2617
  %2624 = fmul fast float %2622, %2618
  %2625 = fmul fast float %2622, %2619
  br label %2626

; <label>:2626                                    ; preds = %2620, %2603
  %2627 = phi float [ %2623, %2620 ], [ %2617, %2603 ]
  %2628 = phi float [ %2624, %2620 ], [ %2618, %2603 ]
  %2629 = phi float [ %2625, %2620 ], [ %2619, %2603 ]
  %2630 = fmul fast float %2627, %2598
  %2631 = select i1 %248, float %2630, float %2627
  %2632 = call float @dx.op.dot3.f32(i32 55, float %2631, float %2628, float %2629, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2633 = select i1 %248, float 0.000000e+00, float %2627
  %2634 = select i1 %248, float %2632, float %2628
  %2635 = select i1 %248, float 0.000000e+00, float %2629
  br label %2636

; <label>:2636                                    ; preds = %2626, %2588
  %2637 = phi float [ %2633, %2626 ], [ 0.000000e+00, %2588 ]
  %2638 = phi float [ %2634, %2626 ], [ 0.000000e+00, %2588 ]
  %2639 = phi float [ %2635, %2626 ], [ 0.000000e+00, %2588 ]
  %2640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2109, i32 undef)  ; BufferLoad(srv,index,wot)
  %2641 = extractvalue %dx.types.ResRet.i32 %2640, 0
  %2642 = and i32 %2641, 1024
  %2643 = icmp eq i32 %2642, 0
  br i1 %2643, label %2674, label %2644

; <label>:2644                                    ; preds = %2636
  %2645 = add i32 %49, 184
  %2646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2645, i32 undef)  ; BufferLoad(srv,index,wot)
  %2647 = extractvalue %dx.types.ResRet.i32 %2646, 0
  %2648 = and i32 %2647, 255
  %2649 = uitofp i32 %2648 to float
  %2650 = fmul fast float %2649, 0x3F70101020000000
  %2651 = lshr i32 %2647, 8
  %2652 = and i32 %2651, 255
  %2653 = uitofp i32 %2652 to float
  %2654 = fmul fast float %2653, 0x3F70101020000000
  %2655 = lshr i32 %2647, 16
  %2656 = and i32 %2655, 255
  %2657 = uitofp i32 %2656 to float
  %2658 = fmul fast float %2657, 0x3F70101020000000
  %2659 = fmul fast float %2650, %2650
  %2660 = fmul fast float %2654, %2654
  %2661 = fmul fast float %2658, %2658
  %2662 = add i32 %49, 480
  %2663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2662, i32 undef)  ; BufferLoad(srv,index,wot)
  %2664 = extractvalue %dx.types.ResRet.i32 %2663, 0
  %2665 = add i32 %2664, 0
  %2666 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2665, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2667 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2666, %dx.types.Handle %105, float %2216, float %2217, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2668 = extractvalue %dx.types.ResRet.f32 %2667, 0
  %2669 = extractvalue %dx.types.ResRet.f32 %2667, 1
  %2670 = extractvalue %dx.types.ResRet.f32 %2667, 2
  %2671 = fmul fast float %2659, %2668
  %2672 = fmul fast float %2660, %2669
  %2673 = fmul fast float %2661, %2670
  br label %2674

; <label>:2674                                    ; preds = %2644, %2636
  %2675 = phi float [ %2671, %2644 ], [ 0.000000e+00, %2636 ]
  %2676 = phi float [ %2672, %2644 ], [ 0.000000e+00, %2636 ]
  %2677 = phi float [ %2673, %2644 ], [ 0.000000e+00, %2636 ]
  %2678 = fcmp fast ogt float %2675, 0.000000e+00
  %2679 = fcmp fast ogt float %2676, 0.000000e+00
  %2680 = fcmp fast ogt float %2677, 0.000000e+00
  %2681 = call float @dx.op.unary.f32(i32 23, float %2675)  ; Log(value)
  %2682 = call float @dx.op.unary.f32(i32 23, float %2676)  ; Log(value)
  %2683 = call float @dx.op.unary.f32(i32 23, float %2677)  ; Log(value)
  %2684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2593, i32 undef)  ; BufferLoad(srv,index,wot)
  %2685 = extractvalue %dx.types.ResRet.i32 %2684, 0
  %2686 = lshr i32 %2685, 7
  %2687 = and i32 %2686, 32752
  %2688 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2687)  ; LegacyF16ToF32(value)
  %2689 = fmul fast float %2681, 0xBFE62E4300000000
  %2690 = fmul fast float %2689, %2688
  %2691 = fmul fast float %2682, 0xBFE62E4300000000
  %2692 = fmul fast float %2691, %2688
  %2693 = fmul fast float %2683, 0xBFE62E4300000000
  %2694 = fmul fast float %2693, %2688
  %2695 = select i1 %2678, float %2690, float 1.270000e+02
  %2696 = select i1 %2679, float %2692, float 1.270000e+02
  %2697 = select i1 %2680, float %2694, float 1.270000e+02
  %2698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2109, i32 undef)  ; BufferLoad(srv,index,wot)
  %2699 = extractvalue %dx.types.ResRet.i32 %2698, 0
  %2700 = and i32 %2699, 10240
  %2701 = icmp eq i32 %2700, 0
  br i1 %2701, label %2746, label %2702

; <label>:2702                                    ; preds = %2674
  %2703 = add i32 %49, 496
  %2704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2703, i32 undef)  ; BufferLoad(srv,index,wot)
  %2705 = extractvalue %dx.types.ResRet.i32 %2704, 0
  %2706 = add i32 %2705, 0
  %2707 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2706, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2708 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2707, %dx.types.Handle %105, float %2216, float %2217, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2709 = extractvalue %dx.types.ResRet.f32 %2708, 1
  %2710 = extractvalue %dx.types.ResRet.f32 %2708, 3
  %2711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2109, i32 undef)  ; BufferLoad(srv,index,wot)
  %2712 = extractvalue %dx.types.ResRet.i32 %2711, 0
  %2713 = and i32 %2712, 1048576
  %2714 = icmp ne i32 %2713, 0
  %2715 = and i32 %2712, 8192
  %2716 = icmp eq i32 %2715, 0
  br i1 %2716, label %2732, label %2717

; <label>:2717                                    ; preds = %2702
  %2718 = extractvalue %dx.types.ResRet.f32 %2708, 2
  %2719 = select i1 %2714, float %2718, float %2709
  %2720 = extractvalue %dx.types.ResRet.f32 %2708, 0
  %2721 = select i1 %2714, float %2720, float %2709
  %2722 = add i32 %49, 128
  %2723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2722, i32 undef)  ; BufferLoad(srv,index,wot)
  %2724 = extractvalue %dx.types.ResRet.i32 %2723, 0
  %2725 = lshr i32 %2724, 16
  %2726 = and i32 %2725, 255
  %2727 = uitofp i32 %2726 to float
  %2728 = fmul fast float %2727, 0x3F80101020000000
  %2729 = fmul fast float %2728, %2721
  %2730 = fmul fast float %2728, %2709
  %2731 = fmul fast float %2728, %2719
  br label %2732

; <label>:2732                                    ; preds = %2717, %2702
  %2733 = phi float [ %2729, %2717 ], [ 0.000000e+00, %2702 ]
  %2734 = phi float [ %2730, %2717 ], [ 0.000000e+00, %2702 ]
  %2735 = phi float [ %2731, %2717 ], [ 0.000000e+00, %2702 ]
  %2736 = and i32 %2712, 2048
  %2737 = icmp eq i32 %2736, 0
  br i1 %2737, label %2746, label %2738

; <label>:2738                                    ; preds = %2732
  %2739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2593, i32 undef)  ; BufferLoad(srv,index,wot)
  %2740 = extractvalue %dx.types.ResRet.i32 %2739, 0
  %2741 = shl i32 %2740, 4
  %2742 = and i32 %2741, 32752
  %2743 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2742)  ; LegacyF16ToF32(value)
  %2744 = fmul fast float %2743, %2710
  %2745 = call float @dx.op.binary.f32(i32 35, float %2744, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2746

; <label>:2746                                    ; preds = %2738, %2732, %2674
  %2747 = phi float [ %2733, %2738 ], [ %2733, %2732 ], [ 0.000000e+00, %2674 ]
  %2748 = phi float [ %2734, %2738 ], [ %2734, %2732 ], [ 0.000000e+00, %2674 ]
  %2749 = phi float [ %2735, %2738 ], [ %2735, %2732 ], [ 0.000000e+00, %2674 ]
  %2750 = phi float [ %2745, %2738 ], [ 0x3F70101020000000, %2732 ], [ 0x3F70101020000000, %2674 ]
  %2751 = add i32 %49, 128
  %2752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2751, i32 undef)  ; BufferLoad(srv,index,wot)
  %2753 = extractvalue %dx.types.ResRet.i32 %2752, 0
  %2754 = and i32 %2753, 255
  %2755 = uitofp i32 %2754 to float
  %2756 = lshr i32 %2753, 8
  %2757 = and i32 %2756, 255
  %2758 = uitofp i32 %2757 to float
  %2759 = call float @dx.op.dot3.f32(i32 55, float %2509, float %2510, float %2511, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2760 = fmul fast float %2758, %2759
  %2761 = fadd fast float %2760, %2755
  %2762 = fmul fast float %2761, 0x3F70101020000000
  %2763 = call float @dx.op.unary.f32(i32 7, float %2762)  ; Saturate(value)
  br i1 %2108, label %2764, label %2799

; <label>:2764                                    ; preds = %2746
  %2765 = fmul fast float %2750, 2.000000e+00
  %2766 = fcmp fast olt float %2695, 1.270000e+02
  %2767 = fcmp fast olt float %2696, 1.270000e+02
  %2768 = fcmp fast olt float %2697, 1.270000e+02
  %2769 = fmul fast float %2695, 0xBFF7154760000000
  %2770 = fmul fast float %2769, %2765
  %2771 = fmul fast float %2696, 0xBFF7154760000000
  %2772 = fmul fast float %2771, %2765
  %2773 = fmul fast float %2697, 0xBFF7154760000000
  %2774 = fmul fast float %2773, %2765
  %2775 = call float @dx.op.unary.f32(i32 21, float %2770)  ; Exp(value)
  %2776 = call float @dx.op.unary.f32(i32 21, float %2772)  ; Exp(value)
  %2777 = call float @dx.op.unary.f32(i32 21, float %2774)  ; Exp(value)
  %2778 = call float @dx.op.unary.f32(i32 7, float %2775)  ; Saturate(value)
  %2779 = call float @dx.op.unary.f32(i32 7, float %2776)  ; Saturate(value)
  %2780 = call float @dx.op.unary.f32(i32 7, float %2777)  ; Saturate(value)
  %2781 = fadd fast float %2778, -1.000000e+00
  %2782 = select i1 %2766, float %2781, float -1.000000e+00
  %2783 = fadd fast float %2779, -1.000000e+00
  %2784 = select i1 %2767, float %2783, float -1.000000e+00
  %2785 = fadd fast float %2780, -1.000000e+00
  %2786 = select i1 %2768, float %2785, float -1.000000e+00
  %2787 = fmul fast float %2782, %2289
  %2788 = fmul fast float %2784, %2289
  %2789 = fmul fast float %2786, %2289
  %2790 = fadd fast float %2787, 1.000000e+00
  %2791 = fadd fast float %2788, 1.000000e+00
  %2792 = fadd fast float %2789, 1.000000e+00
  %2793 = fmul fast float %2790, %2090
  %2794 = fmul fast float %2791, %2091
  %2795 = fmul fast float %2792, %2092
  %2796 = fmul fast float %2790, %2093
  %2797 = fmul fast float %2791, %2094
  %2798 = fmul fast float %2792, %2095
  br label %2799

; <label>:2799                                    ; preds = %2764, %2746
  %2800 = phi float [ %2793, %2764 ], [ %2090, %2746 ]
  %2801 = phi float [ %2794, %2764 ], [ %2091, %2746 ]
  %2802 = phi float [ %2795, %2764 ], [ %2092, %2746 ]
  %2803 = phi float [ %2796, %2764 ], [ %2093, %2746 ]
  %2804 = phi float [ %2797, %2764 ], [ %2094, %2746 ]
  %2805 = phi float [ %2798, %2764 ], [ %2095, %2746 ]
  %2806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2109, i32 undef)  ; BufferLoad(srv,index,wot)
  %2807 = extractvalue %dx.types.ResRet.i32 %2806, 0
  %2808 = and i32 %2807, 3
  %2809 = icmp eq i32 %2808, 3
  br i1 %2809, label %2888, label %2810

; <label>:2810                                    ; preds = %2799
  %2811 = and i32 %2807, 16
  %2812 = icmp ne i32 %2811, 0
  %2813 = select i1 %2812, float %2289, float 0.000000e+00
  %2814 = icmp eq i32 %2808, 0
  br i1 %2814, label %2815, label %2843

; <label>:2815                                    ; preds = %2810
  %2816 = and i32 %2807, 64
  %2817 = icmp ne i32 %2816, 0
  %2818 = select i1 %2817, float %2289, float 0.000000e+00
  %2819 = fsub fast float %2509, %2800
  %2820 = fsub fast float %2510, %2801
  %2821 = fsub fast float %2511, %2802
  %2822 = fmul fast float %2813, %2819
  %2823 = fmul fast float %2813, %2820
  %2824 = fmul fast float %2813, %2821
  %2825 = fadd fast float %2822, %2800
  %2826 = fadd fast float %2823, %2801
  %2827 = fadd fast float %2824, %2802
  %2828 = fsub fast float %2495, %2102
  %2829 = fmul fast float %2813, %2828
  %2830 = fadd fast float %2829, %2102
  %2831 = fsub fast float %2637, %2803
  %2832 = fsub fast float %2638, %2804
  %2833 = fsub fast float %2639, %2805
  %2834 = fmul fast float %2818, %2831
  %2835 = fmul fast float %2818, %2832
  %2836 = fmul fast float %2818, %2833
  %2837 = fadd fast float %2834, %2803
  %2838 = fadd fast float %2835, %2804
  %2839 = fadd fast float %2836, %2805
  %2840 = fsub fast float %2763, %2106
  %2841 = fmul fast float %2813, %2840
  %2842 = fadd fast float %2841, %2106
  br label %2888

; <label>:2843                                    ; preds = %2810
  %2844 = icmp eq i32 %2808, 1
  br i1 %2844, label %2845, label %2858

; <label>:2845                                    ; preds = %2843
  %2846 = fadd fast float %2509, -1.000000e+00
  %2847 = fadd fast float %2510, -1.000000e+00
  %2848 = fadd fast float %2511, -1.000000e+00
  %2849 = fmul fast float %2813, %2846
  %2850 = fmul fast float %2813, %2847
  %2851 = fmul fast float %2813, %2848
  %2852 = fadd fast float %2849, 1.000000e+00
  %2853 = fadd fast float %2850, 1.000000e+00
  %2854 = fadd fast float %2851, 1.000000e+00
  %2855 = fmul fast float %2852, %2800
  %2856 = fmul fast float %2853, %2801
  %2857 = fmul fast float %2854, %2802
  br label %2888

; <label>:2858                                    ; preds = %2843
  %2859 = icmp eq i32 %2808, 2
  br i1 %2859, label %2860, label %2888

; <label>:2860                                    ; preds = %2858
  %2861 = call float @dx.op.unary.f32(i32 24, float %2509)  ; Sqrt(value)
  %2862 = call float @dx.op.unary.f32(i32 24, float %2510)  ; Sqrt(value)
  %2863 = call float @dx.op.unary.f32(i32 24, float %2511)  ; Sqrt(value)
  %2864 = fadd fast float %2861, -5.000000e-01
  %2865 = fadd fast float %2862, -5.000000e-01
  %2866 = fadd fast float %2863, -5.000000e-01
  %2867 = fmul fast float %2864, %2813
  %2868 = fmul fast float %2865, %2813
  %2869 = fmul fast float %2866, %2813
  %2870 = fadd fast float %2867, 5.000000e-01
  %2871 = fadd fast float %2868, 5.000000e-01
  %2872 = fadd fast float %2869, 5.000000e-01
  %2873 = fmul fast float %2870, 2.000000e+00
  %2874 = fsub fast float 1.000000e+00, %2873
  %2875 = fmul fast float %2874, %2800
  %2876 = fadd fast float %2875, %2873
  %2877 = fmul fast float %2876, %2800
  %2878 = fmul fast float %2871, 2.000000e+00
  %2879 = fsub fast float 1.000000e+00, %2878
  %2880 = fmul fast float %2879, %2801
  %2881 = fadd fast float %2880, %2878
  %2882 = fmul fast float %2881, %2801
  %2883 = fmul fast float %2872, 2.000000e+00
  %2884 = fsub fast float 1.000000e+00, %2883
  %2885 = fmul fast float %2884, %2802
  %2886 = fadd fast float %2885, %2883
  %2887 = fmul fast float %2886, %2802
  br label %2888

; <label>:2888                                    ; preds = %2860, %2858, %2845, %2815, %2799
  %2889 = phi float [ %2800, %2799 ], [ %2877, %2860 ], [ %2800, %2858 ], [ %2855, %2845 ], [ %2825, %2815 ]
  %2890 = phi float [ %2801, %2799 ], [ %2882, %2860 ], [ %2801, %2858 ], [ %2856, %2845 ], [ %2826, %2815 ]
  %2891 = phi float [ %2802, %2799 ], [ %2887, %2860 ], [ %2802, %2858 ], [ %2857, %2845 ], [ %2827, %2815 ]
  %2892 = phi float [ %2803, %2799 ], [ %2803, %2860 ], [ %2803, %2858 ], [ %2803, %2845 ], [ %2837, %2815 ]
  %2893 = phi float [ %2804, %2799 ], [ %2804, %2860 ], [ %2804, %2858 ], [ %2804, %2845 ], [ %2838, %2815 ]
  %2894 = phi float [ %2805, %2799 ], [ %2805, %2860 ], [ %2805, %2858 ], [ %2805, %2845 ], [ %2839, %2815 ]
  %2895 = phi float [ %2102, %2799 ], [ %2102, %2860 ], [ %2102, %2858 ], [ %2102, %2845 ], [ %2830, %2815 ]
  %2896 = phi float [ %2106, %2799 ], [ %2106, %2860 ], [ %2106, %2858 ], [ %2106, %2845 ], [ %2842, %2815 ]
  %2897 = and i32 %2807, 12
  %2898 = icmp eq i32 %2897, 12
  br i1 %2898, label %3029, label %2899

; <label>:2899                                    ; preds = %2888
  %2900 = and i32 %2807, 2097184
  %2901 = icmp eq i32 %2900, 2097184
  %2902 = select i1 %2901, float %2289, float 0.000000e+00
  %2903 = and i32 %2807, 4194336
  %2904 = icmp eq i32 %2903, 4194336
  %2905 = select i1 %2904, float %2289, float 0.000000e+00
  %2906 = and i32 %2807, 8388640
  %2907 = icmp eq i32 %2906, 8388640
  %2908 = select i1 %2907, float %2289, float 0.000000e+00
  %2909 = and i32 %2807, 1024
  %2910 = icmp ne i32 %2909, 0
  %2911 = select i1 %2910, float %2289, float 0.000000e+00
  %2912 = and i32 %2807, 2048
  %2913 = icmp ne i32 %2912, 0
  %2914 = select i1 %2913, float %2289, float 0.000000e+00
  %2915 = and i32 %2807, 8192
  %2916 = icmp ne i32 %2915, 0
  %2917 = select i1 %2916, float %2289, float 0.000000e+00
  %2918 = icmp eq i32 %2897, 0
  br i1 %2918, label %2919, label %2953

; <label>:2919                                    ; preds = %2899
  %2920 = fsub fast float %2590, %2088
  %2921 = fsub fast float %2591, %2089
  %2922 = fmul fast float %2902, %2920
  %2923 = fmul fast float %2902, %2921
  %2924 = fadd fast float %2922, %2088
  %2925 = fadd fast float %2923, %2089
  %2926 = fsub fast float %2592, %2104
  %2927 = fmul fast float %2905, %2926
  %2928 = fadd fast float %2927, %2104
  %2929 = fsub fast float %2589, %2103
  %2930 = fmul fast float %2908, %2929
  %2931 = fadd fast float %2930, %2103
  %2932 = fsub fast float %2695, %2099
  %2933 = fsub fast float %2696, %2100
  %2934 = fsub fast float %2697, %2101
  %2935 = fmul fast float %2911, %2932
  %2936 = fmul fast float %2911, %2933
  %2937 = fmul fast float %2911, %2934
  %2938 = fadd fast float %2935, %2099
  %2939 = fadd fast float %2936, %2100
  %2940 = fadd fast float %2937, %2101
  %2941 = fsub fast float %2750, %2105
  %2942 = fmul fast float %2914, %2941
  %2943 = fadd fast float %2942, %2105
  %2944 = fsub fast float %2747, %2096
  %2945 = fsub fast float %2748, %2097
  %2946 = fsub fast float %2749, %2098
  %2947 = fmul fast float %2917, %2944
  %2948 = fmul fast float %2917, %2945
  %2949 = fmul fast float %2917, %2946
  %2950 = fadd fast float %2947, %2096
  %2951 = fadd fast float %2948, %2097
  %2952 = fadd fast float %2949, %2098
  br label %3029

; <label>:2953                                    ; preds = %2899
  %2954 = icmp eq i32 %2897, 4
  br i1 %2954, label %2955, label %3001

; <label>:2955                                    ; preds = %2953
  %2956 = fmul fast float %2902, %2590
  %2957 = fmul fast float %2902, %2591
  %2958 = fadd fast float %2956, %2088
  %2959 = fadd fast float %2957, %2089
  %2960 = call float @dx.op.binary.f32(i32 36, float %2104, float %2592)  ; FMin(a,b)
  %2961 = fsub fast float %2960, %2104
  %2962 = fmul fast float %2961, %2905
  %2963 = fadd fast float %2962, %2104
  %2964 = fadd fast float %2589, %2103
  %2965 = fmul fast float %2964, 0x3FF337FAE0000000
  %2966 = fmul fast float %2103, %2103
  %2967 = fmul fast float %2589, %2589
  %2968 = fadd fast float %2967, %2966
  %2969 = fmul fast float %2968, 0x3FE5152B00000000
  %2970 = fmul fast float %2103, 0xBFCC1F85E0000000
  %2971 = fmul fast float %2970, %2589
  %2972 = fadd fast float %2971, 0xBFE1363700000000
  %2973 = fadd fast float %2972, %2965
  %2974 = fsub fast float %2973, %2969
  %2975 = fmul fast float %2964, 0x3FBA6F0D00000000
  %2976 = fmul fast float %2968, 0x3FD0432880000000
  %2977 = fmul fast float %2103, 0xBFEF110800000000
  %2978 = fmul fast float %2977, %2589
  %2979 = fadd fast float %2978, 1.000000e+00
  %2980 = fsub fast float %2979, %2975
  %2981 = fadd fast float %2980, %2976
  %2982 = fdiv fast float %2974, %2981
  %2983 = call float @dx.op.unary.f32(i32 7, float %2982)  ; Saturate(value)
  %2984 = fsub fast float %2983, %2103
  %2985 = fmul fast float %2984, %2908
  %2986 = fadd fast float %2985, %2103
  %2987 = fmul fast float %2911, %2695
  %2988 = fmul fast float %2911, %2696
  %2989 = fmul fast float %2911, %2697
  %2990 = fadd fast float %2987, %2099
  %2991 = fadd fast float %2988, %2100
  %2992 = fadd fast float %2989, %2101
  %2993 = fmul fast float %2914, %2750
  %2994 = fadd fast float %2993, %2105
  %2995 = fmul fast float %2917, %2747
  %2996 = fmul fast float %2917, %2748
  %2997 = fmul fast float %2917, %2749
  %2998 = fadd fast float %2995, %2096
  %2999 = fadd fast float %2996, %2097
  %3000 = fadd fast float %2997, %2098
  br label %3029

; <label>:3001                                    ; preds = %2953
  %3002 = icmp eq i32 %2897, 8
  br i1 %3002, label %3003, label %3029

; <label>:3003                                    ; preds = %3001
  %3004 = fmul fast float %2902, %2590
  %3005 = fmul fast float %2902, %2591
  %3006 = fadd fast float %3004, %2088
  %3007 = fadd fast float %3005, %2089
  %3008 = call float @dx.op.binary.f32(i32 36, float %2104, float %2592)  ; FMin(a,b)
  %3009 = fsub fast float %3008, %2104
  %3010 = fmul fast float %3009, %2905
  %3011 = fadd fast float %3010, %2104
  %3012 = fsub fast float %2589, %2103
  %3013 = fmul fast float %2908, %3012
  %3014 = fadd fast float %3013, %2103
  %3015 = fmul fast float %2911, %2695
  %3016 = fmul fast float %2911, %2696
  %3017 = fmul fast float %2911, %2697
  %3018 = fadd fast float %3015, %2099
  %3019 = fadd fast float %3016, %2100
  %3020 = fadd fast float %3017, %2101
  %3021 = fmul fast float %2914, %2750
  %3022 = fadd fast float %3021, %2105
  %3023 = fmul fast float %2917, %2747
  %3024 = fmul fast float %2917, %2748
  %3025 = fmul fast float %2917, %2749
  %3026 = fadd fast float %3023, %2096
  %3027 = fadd fast float %3024, %2097
  %3028 = fadd fast float %3025, %2098
  br label %3029

; <label>:3029                                    ; preds = %3003, %3001, %2955, %2919, %2888, %2288, %2107, %2087
  %3030 = phi float [ %2088, %2888 ], [ %2088, %2288 ], [ %2088, %2087 ], [ %3006, %3003 ], [ %2088, %3001 ], [ %2958, %2955 ], [ %2924, %2919 ], [ %2088, %2107 ]
  %3031 = phi float [ %2089, %2888 ], [ %2089, %2288 ], [ %2089, %2087 ], [ %3007, %3003 ], [ %2089, %3001 ], [ %2959, %2955 ], [ %2925, %2919 ], [ %2089, %2107 ]
  %3032 = phi float [ %2889, %2888 ], [ %2090, %2288 ], [ %2090, %2087 ], [ %2889, %3003 ], [ %2889, %3001 ], [ %2889, %2955 ], [ %2889, %2919 ], [ %2090, %2107 ]
  %3033 = phi float [ %2890, %2888 ], [ %2091, %2288 ], [ %2091, %2087 ], [ %2890, %3003 ], [ %2890, %3001 ], [ %2890, %2955 ], [ %2890, %2919 ], [ %2091, %2107 ]
  %3034 = phi float [ %2891, %2888 ], [ %2092, %2288 ], [ %2092, %2087 ], [ %2891, %3003 ], [ %2891, %3001 ], [ %2891, %2955 ], [ %2891, %2919 ], [ %2092, %2107 ]
  %3035 = phi float [ %2892, %2888 ], [ %2093, %2288 ], [ %2093, %2087 ], [ %2892, %3003 ], [ %2892, %3001 ], [ %2892, %2955 ], [ %2892, %2919 ], [ %2093, %2107 ]
  %3036 = phi float [ %2893, %2888 ], [ %2094, %2288 ], [ %2094, %2087 ], [ %2893, %3003 ], [ %2893, %3001 ], [ %2893, %2955 ], [ %2893, %2919 ], [ %2094, %2107 ]
  %3037 = phi float [ %2894, %2888 ], [ %2095, %2288 ], [ %2095, %2087 ], [ %2894, %3003 ], [ %2894, %3001 ], [ %2894, %2955 ], [ %2894, %2919 ], [ %2095, %2107 ]
  %3038 = phi float [ %2096, %2888 ], [ %2096, %2288 ], [ %2096, %2087 ], [ %3026, %3003 ], [ %2096, %3001 ], [ %2998, %2955 ], [ %2950, %2919 ], [ %2096, %2107 ]
  %3039 = phi float [ %2097, %2888 ], [ %2097, %2288 ], [ %2097, %2087 ], [ %3027, %3003 ], [ %2097, %3001 ], [ %2999, %2955 ], [ %2951, %2919 ], [ %2097, %2107 ]
  %3040 = phi float [ %2098, %2888 ], [ %2098, %2288 ], [ %2098, %2087 ], [ %3028, %3003 ], [ %2098, %3001 ], [ %3000, %2955 ], [ %2952, %2919 ], [ %2098, %2107 ]
  %3041 = phi float [ %2099, %2888 ], [ %2099, %2288 ], [ %2099, %2087 ], [ %3018, %3003 ], [ %2099, %3001 ], [ %2990, %2955 ], [ %2938, %2919 ], [ %2099, %2107 ]
  %3042 = phi float [ %2100, %2888 ], [ %2100, %2288 ], [ %2100, %2087 ], [ %3019, %3003 ], [ %2100, %3001 ], [ %2991, %2955 ], [ %2939, %2919 ], [ %2100, %2107 ]
  %3043 = phi float [ %2101, %2888 ], [ %2101, %2288 ], [ %2101, %2087 ], [ %3020, %3003 ], [ %2101, %3001 ], [ %2992, %2955 ], [ %2940, %2919 ], [ %2101, %2107 ]
  %3044 = phi float [ %2895, %2888 ], [ %2102, %2288 ], [ %2102, %2087 ], [ %2895, %3003 ], [ %2895, %3001 ], [ %2895, %2955 ], [ %2895, %2919 ], [ %2102, %2107 ]
  %3045 = phi float [ %2103, %2888 ], [ %2103, %2288 ], [ %2103, %2087 ], [ %3014, %3003 ], [ %2103, %3001 ], [ %2986, %2955 ], [ %2931, %2919 ], [ %2103, %2107 ]
  %3046 = phi float [ %2104, %2888 ], [ %2104, %2288 ], [ %2104, %2087 ], [ %3011, %3003 ], [ %2104, %3001 ], [ %2963, %2955 ], [ %2928, %2919 ], [ %2104, %2107 ]
  %3047 = phi float [ %2105, %2888 ], [ %2105, %2288 ], [ %2105, %2087 ], [ %3022, %3003 ], [ %2105, %3001 ], [ %2994, %2955 ], [ %2943, %2919 ], [ %2105, %2107 ]
  %3048 = phi float [ %2896, %2888 ], [ %2106, %2288 ], [ %2106, %2087 ], [ %2896, %3003 ], [ %2896, %3001 ], [ %2896, %2955 ], [ %2896, %2919 ], [ %2106, %2107 ]
  br i1 %436, label %3971, label %3049

; <label>:3049                                    ; preds = %3029
  %3050 = icmp ult i32 %490, 4
  %3051 = add i32 %49, 72
  %3052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3051, i32 undef)  ; BufferLoad(srv,index,wot)
  %3053 = extractvalue %dx.types.ResRet.i32 %3052, 0
  %3054 = add i32 %49, 76
  %3055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3054, i32 undef)  ; BufferLoad(srv,index,wot)
  %3056 = extractvalue %dx.types.ResRet.i32 %3055, 0
  %3057 = or i32 %3056, %3053
  %3058 = icmp eq i32 %3057, 0
  br i1 %3058, label %3971, label %3059

; <label>:3059                                    ; preds = %3049
  %3060 = and i32 %3053, 262144
  %3061 = icmp ne i32 %3060, 0
  %3062 = select i1 %3061, float %54, float 1.000000e+00
  %3063 = select i1 %3061, float %55, float 0.000000e+00
  %3064 = select i1 %3061, float %56, float 0.000000e+00
  %3065 = select i1 %3061, float %57, float 1.000000e+00
  %3066 = select i1 %3061, float %58, float %86
  %3067 = select i1 %3061, float %59, float %87
  %3068 = add i32 %49, 332
  %3069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3068, i32 undef)  ; BufferLoad(srv,index,wot)
  %3070 = extractvalue %dx.types.ResRet.i32 %3069, 0
  %3071 = lshr i32 %3070, 16
  %3072 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3071)  ; LegacyF16ToF32(value)
  %3073 = fmul fast float %3072, 0x3F50624DE0000000
  %3074 = add i32 %49, 136
  %3075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3074, i32 undef)  ; BufferLoad(srv,index,wot)
  %3076 = extractvalue %dx.types.ResRet.i32 %3075, 0
  %3077 = lshr i32 %3076, 16
  %3078 = and i32 %3077, 255
  %3079 = lshr i32 %3076, 24
  %3080 = add i32 %49, 340
  %3081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3080, i32 undef)  ; BufferLoad(srv,index,wot)
  %3082 = extractvalue %dx.types.ResRet.i32 %3081, 0
  %3083 = and i32 %3082, 65535
  %3084 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3083)  ; LegacyF16ToF32(value)
  %3085 = lshr i32 %3082, 16
  %3086 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3085)  ; LegacyF16ToF32(value)
  %3087 = add i32 %49, 80
  %3088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3087, i32 undef)  ; BufferLoad(srv,index,wot)
  %3089 = extractvalue %dx.types.ResRet.i32 %3088, 0
  %3090 = lshr i32 %3089, 22
  %3091 = shl nuw nsw i32 %3090, 5
  %3092 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3091)  ; LegacyF16ToF32(value)
  %3093 = shl i32 %3089, 4
  %3094 = and i32 %3093, 32752
  %3095 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3094)  ; LegacyF16ToF32(value)
  %3096 = lshr i32 %3089, 7
  %3097 = and i32 %3096, 32752
  %3098 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3097)  ; LegacyF16ToF32(value)
  %3099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3100 = extractvalue %dx.types.CBufRet.f32 %3099, 3
  %3101 = fmul fast float %3100, 1.000000e+03
  %3102 = fmul fast float %426, %3101
  %3103 = call float @dx.op.unary.f32(i32 22, float %3102)  ; Frc(value)
  %3104 = fadd fast float %3103, %416
  %3105 = fmul fast float %427, %3101
  %3106 = call float @dx.op.unary.f32(i32 22, float %3105)  ; Frc(value)
  %3107 = fadd fast float %3106, %418
  %3108 = fmul fast float %3073, %3101
  %3109 = call float @dx.op.unary.f32(i32 22, float %3108)  ; Frc(value)
  %3110 = fmul fast float %3109, 0x401921FB60000000
  %3111 = fadd fast float %3110, %3092
  %3112 = call float @dx.op.unary.f32(i32 13, float %3111)  ; Sin(value)
  %3113 = call float @dx.op.unary.f32(i32 12, float %3111)  ; Cos(value)
  %3114 = fsub fast float -0.000000e+00, %3112
  %3115 = fadd fast float %3066, -5.000000e-01
  %3116 = fadd fast float %3067, -5.000000e-01
  %3117 = fmul fast float %3084, %3115
  %3118 = fmul fast float %3086, %3116
  %3119 = fadd fast float %3117, 5.000000e-01
  %3120 = fadd fast float %3118, 5.000000e-01
  %3121 = fmul fast float %3095, %3119
  %3122 = fmul fast float %3098, %3120
  %3123 = fmul fast float %3113, %3121
  %3124 = call float @dx.op.tertiary.f32(i32 46, float %3114, float %3122, float %3123)  ; FMad(a,b,c)
  %3125 = fmul fast float %3112, %3121
  %3126 = call float @dx.op.tertiary.f32(i32 46, float %3113, float %3122, float %3125)  ; FMad(a,b,c)
  %3127 = fadd fast float %3104, %3124
  %3128 = fadd fast float %3107, %3126
  %3129 = icmp ugt i32 %3078, 1
  %3130 = icmp ugt i32 %3076, 33554431
  %3131 = or i1 %3130, %3129
  br i1 %3131, label %3132, label %3157

; <label>:3132                                    ; preds = %3059
  %3133 = add i32 %49, 276
  %3134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3133, i32 undef)  ; BufferLoad(srv,index,wot)
  %3135 = extractvalue %dx.types.ResRet.i32 %3134, 0
  %3136 = lshr i32 %3135, 16
  %3137 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3136)  ; LegacyF16ToF32(value)
  %3138 = fmul fast float %3100, %3137
  %3139 = call float @dx.op.unary.f32(i32 22, float %3138)  ; Frc(value)
  %3140 = mul nuw nsw i32 %3078, %3079
  %3141 = uitofp i32 %3140 to float
  %3142 = fmul fast float %3139, %3141
  %3143 = call float @dx.op.unary.f32(i32 27, float %3142)  ; Round_ni(value)
  %3144 = fptoui float %3143 to i32
  %3145 = urem i32 %3144, %3078
  %3146 = udiv i32 %3144, %3079
  %3147 = call float @dx.op.unary.f32(i32 22, float %3127)  ; Frc(value)
  %3148 = call float @dx.op.unary.f32(i32 22, float %3128)  ; Frc(value)
  %3149 = uitofp i32 %3145 to float
  %3150 = uitofp i32 %3146 to float
  %3151 = fadd fast float %3147, %3149
  %3152 = fadd fast float %3148, %3150
  %3153 = uitofp i32 %3078 to float
  %3154 = uitofp i32 %3079 to float
  %3155 = fdiv fast float %3151, %3153
  %3156 = fdiv fast float %3152, %3154
  br label %3157

; <label>:3157                                    ; preds = %3132, %3059
  %3158 = phi float [ %3155, %3132 ], [ %3127, %3059 ]
  %3159 = phi float [ %3156, %3132 ], [ %3128, %3059 ]
  %3160 = and i32 %3053, 256
  %3161 = icmp eq i32 %3160, 0
  br i1 %3161, label %3208, label %3162

; <label>:3162                                    ; preds = %3157
  %3163 = add i32 %49, 452
  %3164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3163, i32 undef)  ; BufferLoad(srv,index,wot)
  %3165 = extractvalue %dx.types.ResRet.i32 %3164, 0
  %3166 = add i32 %3165, 0
  %3167 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3166, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3168 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3167, %dx.types.Handle %105, float %3158, float %3159, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3169 = extractvalue %dx.types.ResRet.f32 %3168, 0
  %3170 = add i32 %49, 148
  %3171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3170, i32 undef)  ; BufferLoad(srv,index,wot)
  %3172 = extractvalue %dx.types.ResRet.i32 %3171, 0
  %3173 = shl i32 %3172, 4
  %3174 = and i32 %3173, 32752
  %3175 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3174)  ; LegacyF16ToF32(value)
  %3176 = lshr i32 %3172, 7
  %3177 = and i32 %3176, 32752
  %3178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3177)  ; LegacyF16ToF32(value)
  %3179 = fsub fast float 1.000000e+00, %485
  %3180 = call float @dx.op.binary.f32(i32 35, float %3179, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3181 = bitcast float %485 to i32
  %3182 = sitofp i32 %3181 to float
  %3183 = fadd fast float %3182, 0xC1CFBF8940000000
  %3184 = fmul fast float %3178, %3183
  %3185 = fadd fast float %3184, 0x41CFBF8940000000
  %3186 = fptosi float %3185 to i32
  %3187 = bitcast i32 %3186 to float
  %3188 = bitcast float %3180 to i32
  %3189 = sitofp i32 %3188 to float
  %3190 = fadd fast float %3189, 0xC1CFBF8940000000
  %3191 = fmul fast float %3190, %3178
  %3192 = fadd fast float %3191, 0x41CFBF8940000000
  %3193 = fptosi float %3192 to i32
  %3194 = bitcast i32 %3193 to float
  %3195 = fmul fast float %3187, %3175
  %3196 = fmul fast float %3194, %3175
  %3197 = fsub fast float %3180, %3195
  %3198 = fadd fast float %3196, %3180
  %3199 = call float @dx.op.unary.f32(i32 7, float %3197)  ; Saturate(value)
  %3200 = call float @dx.op.unary.f32(i32 7, float %3198)  ; Saturate(value)
  %3201 = fsub fast float %3169, %3199
  %3202 = fsub fast float %3200, %3199
  %3203 = bitcast float %3202 to i32
  %3204 = sub nsw i32 2129859010, %3203
  %3205 = bitcast i32 %3204 to float
  %3206 = fmul fast float %3205, %3201
  %3207 = call float @dx.op.unary.f32(i32 7, float %3206)  ; Saturate(value)
  br label %3208

; <label>:3208                                    ; preds = %3162, %3157
  %3209 = phi float [ %3207, %3162 ], [ %485, %3157 ]
  %3210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3051, i32 undef)  ; BufferLoad(srv,index,wot)
  %3211 = extractvalue %dx.types.ResRet.i32 %3210, 0
  %3212 = and i32 %3211, 128
  %3213 = icmp eq i32 %3212, 0
  br i1 %3213, label %3230, label %3214

; <label>:3214                                    ; preds = %3208
  %3215 = add i32 %49, 436
  %3216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3215, i32 undef)  ; BufferLoad(srv,index,wot)
  %3217 = extractvalue %dx.types.ResRet.i32 %3216, 0
  %3218 = add i32 %3217, 0
  %3219 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3218, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3220 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3219, %dx.types.Handle %105, float %3158, float %3159, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3221 = extractvalue %dx.types.ResRet.f32 %3220, 0
  %3222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3051, i32 undef)  ; BufferLoad(srv,index,wot)
  %3223 = extractvalue %dx.types.ResRet.i32 %3222, 0
  %3224 = and i32 %3223, 524288
  %3225 = icmp ne i32 %3224, 0
  %3226 = fcmp fast ogt float %3221, 0x3FE0101020000000
  %3227 = select i1 %3226, float 1.000000e+00, float 0.000000e+00
  %3228 = select i1 %3225, float %3227, float %3221
  %3229 = fmul fast float %3228, %3209
  br label %3230

; <label>:3230                                    ; preds = %3214, %3208
  %3231 = phi float [ %3229, %3214 ], [ %3209, %3208 ]
  %3232 = fcmp fast ult float %3231, 0x3F70101020000000
  br i1 %3232, label %3971, label %3233

; <label>:3233                                    ; preds = %3230
  %3234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3051, i32 undef)  ; BufferLoad(srv,index,wot)
  %3235 = extractvalue %dx.types.ResRet.i32 %3234, 0
  %3236 = and i32 %3235, 16
  %3237 = icmp eq i32 %3236, 0
  br i1 %3237, label %3436, label %3238

; <label>:3238                                    ; preds = %3233
  %3239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3074, i32 undef)  ; BufferLoad(srv,index,wot)
  %3240 = extractvalue %dx.types.ResRet.i32 %3239, 0
  %3241 = add i32 %49, 388
  %3242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3241, i32 undef)  ; BufferLoad(srv,index,wot)
  %3243 = extractvalue %dx.types.ResRet.i32 %3242, 0
  %3244 = add i32 %3243, 0
  %3245 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3244, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3246 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3245, %dx.types.Handle %104, float %3158, float %3159, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3247 = extractvalue %dx.types.ResRet.f32 %3246, 0
  %3248 = extractvalue %dx.types.ResRet.f32 %3246, 1
  %3249 = extractvalue %dx.types.ResRet.f32 %3246, 2
  %3250 = extractvalue %dx.types.ResRet.f32 %3246, 3
  %3251 = and i32 %3240, 255
  %3252 = uitofp i32 %3251 to float
  %3253 = lshr i32 %3240, 8
  %3254 = and i32 %3253, 255
  %3255 = uitofp i32 %3254 to float
  %3256 = fmul fast float %3250, %3252
  %3257 = fadd fast float %3256, %3255
  %3258 = fmul fast float %3257, 0x3F70101000000000
  %3259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3051, i32 undef)  ; BufferLoad(srv,index,wot)
  %3260 = extractvalue %dx.types.ResRet.i32 %3259, 0
  %3261 = and i32 %3260, 512
  %3262 = icmp eq i32 %3261, 0
  br i1 %3262, label %3271, label %3263

; <label>:3263                                    ; preds = %3238
  %3264 = add i32 %49, 468
  %3265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3264, i32 undef)  ; BufferLoad(srv,index,wot)
  %3266 = extractvalue %dx.types.ResRet.i32 %3265, 0
  %3267 = add i32 %3266, 0
  %3268 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3267, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3269 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3268, %dx.types.Handle %105, float %3158, float %3159, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3270 = extractvalue %dx.types.ResRet.f32 %3269, 0
  br label %3271

; <label>:3271                                    ; preds = %3263, %3238
  %3272 = phi float [ %3270, %3263 ], [ 1.000000e+00, %3238 ]
  %3273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3051, i32 undef)  ; BufferLoad(srv,index,wot)
  %3274 = extractvalue %dx.types.ResRet.i32 %3273, 0
  %3275 = and i32 %3274, 33554432
  %3276 = icmp eq i32 %3275, 0
  br i1 %3276, label %3383, label %3277

; <label>:3277                                    ; preds = %3271
  %3278 = add i32 %49, 272
  %3279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3278, i32 undef)  ; BufferLoad(srv,index,wot)
  %3280 = extractvalue %dx.types.ResRet.i32 %3279, 0
  %3281 = and i32 %3280, 65535
  %3282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3281)  ; LegacyF16ToF32(value)
  %3283 = lshr i32 %3280, 16
  %3284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3283)  ; LegacyF16ToF32(value)
  %3285 = add i32 %49, 276
  %3286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3285, i32 undef)  ; BufferLoad(srv,index,wot)
  %3287 = extractvalue %dx.types.ResRet.i32 %3286, 0
  %3288 = and i32 %3287, 65535
  %3289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3288)  ; LegacyF16ToF32(value)
  %3290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %3291 = extractvalue %dx.types.ResRet.i32 %3290, 0
  %3292 = lshr i32 %3291, 24
  %3293 = uitofp i32 %3292 to float
  %3294 = fmul fast float %3293, 0x3F70101020000000
  %3295 = and i32 %3291, 255
  %3296 = uitofp i32 %3295 to float
  %3297 = fmul fast float %3296, 0x3F70101020000000
  %3298 = lshr i32 %3291, 8
  %3299 = and i32 %3298, 255
  %3300 = uitofp i32 %3299 to float
  %3301 = fmul fast float %3300, 0x3F70101020000000
  %3302 = lshr i32 %3291, 16
  %3303 = and i32 %3302, 255
  %3304 = uitofp i32 %3303 to float
  %3305 = fmul fast float %3304, 0x3F70101020000000
  %3306 = add i32 %49, 268
  %3307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3306, i32 undef)  ; BufferLoad(srv,index,wot)
  %3308 = extractvalue %dx.types.ResRet.i32 %3307, 0
  %3309 = lshr i32 %3308, 24
  %3310 = uitofp i32 %3309 to float
  %3311 = fmul fast float %3310, 0x3F70101020000000
  %3312 = and i32 %3308, 255
  %3313 = uitofp i32 %3312 to float
  %3314 = fmul fast float %3313, 0x3F70101020000000
  %3315 = lshr i32 %3308, 8
  %3316 = and i32 %3315, 255
  %3317 = uitofp i32 %3316 to float
  %3318 = fmul fast float %3317, 0x3F70101020000000
  %3319 = lshr i32 %3308, 16
  %3320 = and i32 %3319, 255
  %3321 = uitofp i32 %3320 to float
  %3322 = fmul fast float %3321, 0x3F70101020000000
  %3323 = bitcast float %3247 to i32
  %3324 = ashr i32 %3323, 1
  %3325 = sub nsw i32 1597463174, %3324
  %3326 = bitcast i32 %3325 to float
  %3327 = fmul fast float %3247, 5.000000e-01
  %3328 = fmul fast float %3326, %3326
  %3329 = fmul fast float %3328, %3327
  %3330 = fsub fast float 1.500000e+00, %3329
  %3331 = fmul fast float %3326, %3247
  %3332 = fmul fast float %3331, %3330
  %3333 = bitcast float %3248 to i32
  %3334 = ashr i32 %3333, 1
  %3335 = sub nsw i32 1597463174, %3334
  %3336 = bitcast i32 %3335 to float
  %3337 = fmul fast float %3248, 5.000000e-01
  %3338 = fmul fast float %3336, %3336
  %3339 = fmul fast float %3338, %3337
  %3340 = fsub fast float 1.500000e+00, %3339
  %3341 = fmul fast float %3336, %3248
  %3342 = fmul fast float %3341, %3340
  %3343 = bitcast float %3249 to i32
  %3344 = ashr i32 %3343, 1
  %3345 = sub nsw i32 1597463174, %3344
  %3346 = bitcast i32 %3345 to float
  %3347 = fmul fast float %3249, 5.000000e-01
  %3348 = fmul fast float %3346, %3346
  %3349 = fmul fast float %3348, %3347
  %3350 = fsub fast float 1.500000e+00, %3349
  %3351 = fmul fast float %3346, %3249
  %3352 = fmul fast float %3351, %3350
  %3353 = fsub fast float %3332, %3314
  %3354 = fsub fast float %3342, %3318
  %3355 = fsub fast float %3352, %3322
  %3356 = fmul fast float %3353, %3282
  %3357 = fmul fast float %3354, %3284
  %3358 = fmul fast float %3355, %3289
  %3359 = fadd fast float %3356, %3297
  %3360 = fadd fast float %3357, %3301
  %3361 = fadd fast float %3358, %3305
  %3362 = call float @dx.op.unary.f32(i32 7, float %3359)  ; Saturate(value)
  %3363 = call float @dx.op.unary.f32(i32 7, float %3360)  ; Saturate(value)
  %3364 = call float @dx.op.unary.f32(i32 7, float %3361)  ; Saturate(value)
  %3365 = fmul fast float %3362, %3362
  %3366 = fmul fast float %3363, %3363
  %3367 = fmul fast float %3364, %3364
  %3368 = fsub fast float %3365, %3247
  %3369 = fsub fast float %3366, %3248
  %3370 = fsub fast float %3367, %3249
  %3371 = fmul fast float %3368, %3272
  %3372 = fmul fast float %3369, %3272
  %3373 = fmul fast float %3370, %3272
  %3374 = fadd fast float %3371, %3247
  %3375 = fadd fast float %3372, %3248
  %3376 = fadd fast float %3373, %3249
  %3377 = fadd fast float %3294, %3258
  %3378 = fsub fast float %3377, %3311
  %3379 = call float @dx.op.unary.f32(i32 7, float %3378)  ; Saturate(value)
  %3380 = fsub fast float %3379, %3258
  %3381 = fmul fast float %3380, %3272
  %3382 = fadd fast float %3381, %3258
  br label %3436

; <label>:3383                                    ; preds = %3271
  %3384 = and i32 %3274, 134217728
  %3385 = icmp eq i32 %3384, 0
  br i1 %3385, label %3420, label %3386

; <label>:3386                                    ; preds = %3383
  %3387 = call float @dx.op.unary.f32(i32 24, float %403)  ; Sqrt(value)
  %3388 = call float @dx.op.unary.f32(i32 24, float %407)  ; Sqrt(value)
  %3389 = call float @dx.op.unary.f32(i32 24, float %411)  ; Sqrt(value)
  %3390 = fadd fast float %3387, -5.000000e-01
  %3391 = fadd fast float %3388, -5.000000e-01
  %3392 = fadd fast float %3389, -5.000000e-01
  %3393 = fmul fast float %3390, %3272
  %3394 = fmul fast float %3391, %3272
  %3395 = fmul fast float %3392, %3272
  %3396 = fadd fast float %3393, 5.000000e-01
  %3397 = fadd fast float %3394, 5.000000e-01
  %3398 = fadd fast float %3395, 5.000000e-01
  %3399 = call float @dx.op.unary.f32(i32 24, float %3247)  ; Sqrt(value)
  %3400 = call float @dx.op.unary.f32(i32 24, float %3248)  ; Sqrt(value)
  %3401 = call float @dx.op.unary.f32(i32 24, float %3249)  ; Sqrt(value)
  %3402 = fmul fast float %3396, 2.000000e+00
  %3403 = fsub fast float 1.000000e+00, %3402
  %3404 = fmul fast float %3403, %3399
  %3405 = fadd fast float %3404, %3402
  %3406 = fmul fast float %3405, %3399
  %3407 = fmul fast float %3397, 2.000000e+00
  %3408 = fsub fast float 1.000000e+00, %3407
  %3409 = fmul fast float %3408, %3400
  %3410 = fadd fast float %3409, %3407
  %3411 = fmul fast float %3410, %3400
  %3412 = fmul fast float %3398, 2.000000e+00
  %3413 = fsub fast float 1.000000e+00, %3412
  %3414 = fmul fast float %3413, %3401
  %3415 = fadd fast float %3414, %3412
  %3416 = fmul fast float %3415, %3401
  %3417 = fmul fast float %3406, %3406
  %3418 = fmul fast float %3411, %3411
  %3419 = fmul fast float %3416, %3416
  br label %3436

; <label>:3420                                    ; preds = %3383
  %3421 = fmul fast float %403, %403
  %3422 = fmul fast float %407, %407
  %3423 = fmul fast float %411, %411
  %3424 = fadd fast float %3421, -1.000000e+00
  %3425 = fadd fast float %3422, -1.000000e+00
  %3426 = fadd fast float %3423, -1.000000e+00
  %3427 = fmul fast float %3272, %3424
  %3428 = fmul fast float %3272, %3425
  %3429 = fmul fast float %3272, %3426
  %3430 = fadd fast float %3427, 1.000000e+00
  %3431 = fadd fast float %3428, 1.000000e+00
  %3432 = fadd fast float %3429, 1.000000e+00
  %3433 = fmul fast float %3430, %3247
  %3434 = fmul fast float %3431, %3248
  %3435 = fmul fast float %3432, %3249
  br label %3436

; <label>:3436                                    ; preds = %3420, %3386, %3277, %3233
  %3437 = phi float [ %3382, %3277 ], [ %3258, %3386 ], [ %3258, %3420 ], [ 0x3FA23C0BE0000000, %3233 ]
  %3438 = phi float [ %3374, %3277 ], [ %3417, %3386 ], [ %3433, %3420 ], [ 1.000000e+00, %3233 ]
  %3439 = phi float [ %3375, %3277 ], [ %3418, %3386 ], [ %3434, %3420 ], [ 1.000000e+00, %3233 ]
  %3440 = phi float [ %3376, %3277 ], [ %3419, %3386 ], [ %3435, %3420 ], [ 1.000000e+00, %3233 ]
  %3441 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3442 = extractvalue %dx.types.CBufRet.i32 %3441, 1
  %3443 = and i32 %3442, 1
  %3444 = icmp ne i32 %3443, 0
  %3445 = add i32 %49, 356
  %3446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3445, i32 undef)  ; BufferLoad(srv,index,wot)
  %3447 = extractvalue %dx.types.ResRet.i32 %3446, 0
  %3448 = and i32 %3447, 32
  %3449 = icmp ne i32 %3448, 0
  %3450 = and i1 %3444, %3449
  %3451 = select i1 %3450, float 1.000000e+00, float %3438
  %3452 = select i1 %3450, float 0x3FD3333340000000, float %3439
  %3453 = select i1 %3450, float 0x3FD3333340000000, float %3440
  %3454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3051, i32 undef)  ; BufferLoad(srv,index,wot)
  %3455 = extractvalue %dx.types.ResRet.i32 %3454, 0
  %3456 = and i32 %3455, 32
  %3457 = icmp eq i32 %3456, 0
  br i1 %3457, label %3530, label %3458

; <label>:3458                                    ; preds = %3436
  %3459 = add i32 %49, 140
  %3460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3459, i32 undef)  ; BufferLoad(srv,index,wot)
  %3461 = extractvalue %dx.types.ResRet.i32 %3460, 0
  %3462 = add i32 %49, 404
  %3463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3462, i32 undef)  ; BufferLoad(srv,index,wot)
  %3464 = extractvalue %dx.types.ResRet.i32 %3463, 0
  %3465 = add i32 %3464, 0
  %3466 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3465, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3467 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3466, %dx.types.Handle %104, float %3158, float %3159, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3468 = extractvalue %dx.types.ResRet.f32 %3467, 0
  %3469 = extractvalue %dx.types.ResRet.f32 %3467, 1
  %3470 = extractvalue %dx.types.ResRet.f32 %3467, 2
  %3471 = extractvalue %dx.types.ResRet.f32 %3467, 3
  %3472 = and i32 %3461, 255
  %3473 = uitofp i32 %3472 to float
  %3474 = lshr i32 %3461, 8
  %3475 = and i32 %3474, 255
  %3476 = uitofp i32 %3475 to float
  %3477 = lshr i32 %3461, 16
  %3478 = and i32 %3477, 255
  %3479 = uitofp i32 %3478 to float
  %3480 = fmul fast float %3479, 0x3F70101000000000
  %3481 = fmul fast float %3468, %3473
  %3482 = fadd fast float %3481, %3476
  %3483 = fmul fast float %3482, 0x3F70101000000000
  %3484 = fadd fast float %3469, -5.000000e-01
  %3485 = fadd fast float %3471, -5.000000e-01
  %3486 = fmul fast float %3484, %3480
  %3487 = fmul fast float %3485, %3480
  %3488 = fadd fast float %3486, 5.000000e-01
  %3489 = fadd fast float %3487, 5.000000e-01
  %3490 = fmul fast float %3488, 2.000000e+00
  %3491 = fadd fast float %3490, -1.000000e+00
  %3492 = fmul fast float %3489, 2.000000e+00
  %3493 = fadd fast float %3492, -1.000000e+00
  %3494 = fadd fast float %3491, %3493
  %3495 = fmul fast float %3494, 5.000000e-01
  %3496 = fsub fast float %3491, %3493
  %3497 = fmul fast float %3496, 5.000000e-01
  %3498 = call float @dx.op.unary.f32(i32 6, float %3495)  ; FAbs(value)
  %3499 = fsub fast float 1.000000e+00, %3498
  %3500 = call float @dx.op.unary.f32(i32 6, float %3497)  ; FAbs(value)
  %3501 = fsub fast float %3499, %3500
  %3502 = call float @dx.op.dot3.f32(i32 55, float %3495, float %3497, float %3501, float %3495, float %3497, float %3501)  ; Dot3(ax,ay,az,bx,by,bz)
  %3503 = call float @dx.op.unary.f32(i32 25, float %3502)  ; Rsqrt(value)
  %3504 = fmul fast float %3495, %3503
  %3505 = fmul fast float %3497, %3503
  %3506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3051, i32 undef)  ; BufferLoad(srv,index,wot)
  %3507 = extractvalue %dx.types.ResRet.i32 %3506, 0
  %3508 = and i32 %3507, 67108864
  %3509 = icmp eq i32 %3508, 0
  br i1 %3509, label %3526, label %3510

; <label>:3510                                    ; preds = %3458
  %3511 = add i32 %49, 328
  %3512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3511, i32 undef)  ; BufferLoad(srv,index,wot)
  %3513 = extractvalue %dx.types.ResRet.i32 %3512, 0
  %3514 = and i32 %3513, 65535
  %3515 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3514)  ; LegacyF16ToF32(value)
  %3516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3068, i32 undef)  ; BufferLoad(srv,index,wot)
  %3517 = extractvalue %dx.types.ResRet.i32 %3516, 0
  %3518 = and i32 %3517, 65535
  %3519 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3518)  ; LegacyF16ToF32(value)
  %3520 = lshr i32 %3513, 16
  %3521 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3520)  ; LegacyF16ToF32(value)
  %3522 = fsub fast float %3483, %3521
  %3523 = fmul fast float %3522, %3515
  %3524 = fadd fast float %3523, %3519
  %3525 = call float @dx.op.unary.f32(i32 7, float %3524)  ; Saturate(value)
  br label %3526

; <label>:3526                                    ; preds = %3510, %3458
  %3527 = phi float [ %3525, %3510 ], [ %3483, %3458 ]
  %3528 = call float @dx.op.dot2.f32(i32 54, float %3504, float %3505, float %3062, float %3063)  ; Dot2(ax,ay,bx,by)
  %3529 = call float @dx.op.dot2.f32(i32 54, float %3504, float %3505, float %3064, float %3065)  ; Dot2(ax,ay,bx,by)
  br label %3530

; <label>:3530                                    ; preds = %3526, %3436
  %3531 = phi float [ %3527, %3526 ], [ 0x3FD6666660000000, %3436 ]
  %3532 = phi float [ %3528, %3526 ], [ 0.000000e+00, %3436 ]
  %3533 = phi float [ %3529, %3526 ], [ 0.000000e+00, %3436 ]
  %3534 = phi float [ %3470, %3526 ], [ 1.000000e+00, %3436 ]
  %3535 = add i32 %49, 208
  %3536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3535, i32 undef)  ; BufferLoad(srv,index,wot)
  %3537 = extractvalue %dx.types.ResRet.i32 %3536, 0
  %3538 = lshr i32 %3537, 22
  %3539 = shl nuw nsw i32 %3538, 5
  %3540 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3539)  ; LegacyF16ToF32(value)
  %3541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3051, i32 undef)  ; BufferLoad(srv,index,wot)
  %3542 = extractvalue %dx.types.ResRet.i32 %3541, 0
  %3543 = and i32 %3542, 64
  %3544 = icmp eq i32 %3543, 0
  br i1 %3544, label %3578, label %3545

; <label>:3545                                    ; preds = %3530
  %3546 = add i32 %49, 420
  %3547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3546, i32 undef)  ; BufferLoad(srv,index,wot)
  %3548 = extractvalue %dx.types.ResRet.i32 %3547, 0
  %3549 = add i32 %3548, 0
  %3550 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3549, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3051, i32 undef)  ; BufferLoad(srv,index,wot)
  %3552 = extractvalue %dx.types.ResRet.i32 %3551, 0
  %3553 = and i32 %3552, 131072
  %3554 = icmp eq i32 %3553, 0
  %3555 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3550, %dx.types.Handle %104, float %3158, float %3159, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3556 = extractvalue %dx.types.ResRet.f32 %3555, 0
  %3557 = extractvalue %dx.types.ResRet.f32 %3555, 1
  %3558 = extractvalue %dx.types.ResRet.f32 %3555, 2
  %3559 = fmul fast float %3556, %391
  %3560 = fmul fast float %3557, %394
  %3561 = fmul fast float %3558, %397
  br i1 %3554, label %3568, label %3562

; <label>:3562                                    ; preds = %3545
  %3563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3564 = extractvalue %dx.types.CBufRet.f32 %3563, 0
  %3565 = fmul fast float %3564, %3559
  %3566 = fmul fast float %3564, %3560
  %3567 = fmul fast float %3564, %3561
  br label %3568

; <label>:3568                                    ; preds = %3562, %3545
  %3569 = phi float [ %3565, %3562 ], [ %3559, %3545 ]
  %3570 = phi float [ %3566, %3562 ], [ %3560, %3545 ]
  %3571 = phi float [ %3567, %3562 ], [ %3561, %3545 ]
  %3572 = fmul fast float %3569, %3540
  %3573 = select i1 %248, float %3572, float %3569
  %3574 = call float @dx.op.dot3.f32(i32 55, float %3573, float %3570, float %3571, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3575 = select i1 %248, float 0.000000e+00, float %3569
  %3576 = select i1 %248, float %3574, float %3570
  %3577 = select i1 %248, float 0.000000e+00, float %3571
  br label %3578

; <label>:3578                                    ; preds = %3568, %3530
  %3579 = phi float [ %3575, %3568 ], [ 0.000000e+00, %3530 ]
  %3580 = phi float [ %3576, %3568 ], [ 0.000000e+00, %3530 ]
  %3581 = phi float [ %3577, %3568 ], [ 0.000000e+00, %3530 ]
  %3582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3051, i32 undef)  ; BufferLoad(srv,index,wot)
  %3583 = extractvalue %dx.types.ResRet.i32 %3582, 0
  %3584 = and i32 %3583, 1024
  %3585 = icmp eq i32 %3584, 0
  br i1 %3585, label %3616, label %3586

; <label>:3586                                    ; preds = %3578
  %3587 = add i32 %49, 200
  %3588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3587, i32 undef)  ; BufferLoad(srv,index,wot)
  %3589 = extractvalue %dx.types.ResRet.i32 %3588, 0
  %3590 = and i32 %3589, 255
  %3591 = uitofp i32 %3590 to float
  %3592 = fmul fast float %3591, 0x3F70101020000000
  %3593 = lshr i32 %3589, 8
  %3594 = and i32 %3593, 255
  %3595 = uitofp i32 %3594 to float
  %3596 = fmul fast float %3595, 0x3F70101020000000
  %3597 = lshr i32 %3589, 16
  %3598 = and i32 %3597, 255
  %3599 = uitofp i32 %3598 to float
  %3600 = fmul fast float %3599, 0x3F70101020000000
  %3601 = fmul fast float %3592, %3592
  %3602 = fmul fast float %3596, %3596
  %3603 = fmul fast float %3600, %3600
  %3604 = add i32 %49, 484
  %3605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3604, i32 undef)  ; BufferLoad(srv,index,wot)
  %3606 = extractvalue %dx.types.ResRet.i32 %3605, 0
  %3607 = add i32 %3606, 0
  %3608 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3607, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3609 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3608, %dx.types.Handle %105, float %3158, float %3159, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3610 = extractvalue %dx.types.ResRet.f32 %3609, 0
  %3611 = extractvalue %dx.types.ResRet.f32 %3609, 1
  %3612 = extractvalue %dx.types.ResRet.f32 %3609, 2
  %3613 = fmul fast float %3601, %3610
  %3614 = fmul fast float %3602, %3611
  %3615 = fmul fast float %3603, %3612
  br label %3616

; <label>:3616                                    ; preds = %3586, %3578
  %3617 = phi float [ %3613, %3586 ], [ 0.000000e+00, %3578 ]
  %3618 = phi float [ %3614, %3586 ], [ 0.000000e+00, %3578 ]
  %3619 = phi float [ %3615, %3586 ], [ 0.000000e+00, %3578 ]
  %3620 = fcmp fast ogt float %3617, 0.000000e+00
  %3621 = fcmp fast ogt float %3618, 0.000000e+00
  %3622 = fcmp fast ogt float %3619, 0.000000e+00
  %3623 = call float @dx.op.unary.f32(i32 23, float %3617)  ; Log(value)
  %3624 = call float @dx.op.unary.f32(i32 23, float %3618)  ; Log(value)
  %3625 = call float @dx.op.unary.f32(i32 23, float %3619)  ; Log(value)
  %3626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3535, i32 undef)  ; BufferLoad(srv,index,wot)
  %3627 = extractvalue %dx.types.ResRet.i32 %3626, 0
  %3628 = lshr i32 %3627, 7
  %3629 = and i32 %3628, 32752
  %3630 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3629)  ; LegacyF16ToF32(value)
  %3631 = fmul fast float %3623, 0xBFE62E4300000000
  %3632 = fmul fast float %3631, %3630
  %3633 = fmul fast float %3624, 0xBFE62E4300000000
  %3634 = fmul fast float %3633, %3630
  %3635 = fmul fast float %3625, 0xBFE62E4300000000
  %3636 = fmul fast float %3635, %3630
  %3637 = select i1 %3620, float %3632, float 1.270000e+02
  %3638 = select i1 %3621, float %3634, float 1.270000e+02
  %3639 = select i1 %3622, float %3636, float 1.270000e+02
  %3640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3051, i32 undef)  ; BufferLoad(srv,index,wot)
  %3641 = extractvalue %dx.types.ResRet.i32 %3640, 0
  %3642 = and i32 %3641, 10240
  %3643 = icmp eq i32 %3642, 0
  br i1 %3643, label %3688, label %3644

; <label>:3644                                    ; preds = %3616
  %3645 = add i32 %49, 500
  %3646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3645, i32 undef)  ; BufferLoad(srv,index,wot)
  %3647 = extractvalue %dx.types.ResRet.i32 %3646, 0
  %3648 = add i32 %3647, 0
  %3649 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3648, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3650 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3649, %dx.types.Handle %105, float %3158, float %3159, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3651 = extractvalue %dx.types.ResRet.f32 %3650, 1
  %3652 = extractvalue %dx.types.ResRet.f32 %3650, 3
  %3653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3051, i32 undef)  ; BufferLoad(srv,index,wot)
  %3654 = extractvalue %dx.types.ResRet.i32 %3653, 0
  %3655 = and i32 %3654, 1048576
  %3656 = icmp ne i32 %3655, 0
  %3657 = and i32 %3654, 8192
  %3658 = icmp eq i32 %3657, 0
  br i1 %3658, label %3674, label %3659

; <label>:3659                                    ; preds = %3644
  %3660 = extractvalue %dx.types.ResRet.f32 %3650, 2
  %3661 = select i1 %3656, float %3660, float %3651
  %3662 = extractvalue %dx.types.ResRet.f32 %3650, 0
  %3663 = select i1 %3656, float %3662, float %3651
  %3664 = add i32 %49, 144
  %3665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3664, i32 undef)  ; BufferLoad(srv,index,wot)
  %3666 = extractvalue %dx.types.ResRet.i32 %3665, 0
  %3667 = lshr i32 %3666, 16
  %3668 = and i32 %3667, 255
  %3669 = uitofp i32 %3668 to float
  %3670 = fmul fast float %3669, 0x3F80101020000000
  %3671 = fmul fast float %3670, %3663
  %3672 = fmul fast float %3670, %3651
  %3673 = fmul fast float %3670, %3661
  br label %3674

; <label>:3674                                    ; preds = %3659, %3644
  %3675 = phi float [ %3671, %3659 ], [ 0.000000e+00, %3644 ]
  %3676 = phi float [ %3672, %3659 ], [ 0.000000e+00, %3644 ]
  %3677 = phi float [ %3673, %3659 ], [ 0.000000e+00, %3644 ]
  %3678 = and i32 %3654, 2048
  %3679 = icmp eq i32 %3678, 0
  br i1 %3679, label %3688, label %3680

; <label>:3680                                    ; preds = %3674
  %3681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3535, i32 undef)  ; BufferLoad(srv,index,wot)
  %3682 = extractvalue %dx.types.ResRet.i32 %3681, 0
  %3683 = shl i32 %3682, 4
  %3684 = and i32 %3683, 32752
  %3685 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3684)  ; LegacyF16ToF32(value)
  %3686 = fmul fast float %3685, %3652
  %3687 = call float @dx.op.binary.f32(i32 35, float %3686, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3688

; <label>:3688                                    ; preds = %3680, %3674, %3616
  %3689 = phi float [ %3675, %3680 ], [ %3675, %3674 ], [ 0.000000e+00, %3616 ]
  %3690 = phi float [ %3676, %3680 ], [ %3676, %3674 ], [ 0.000000e+00, %3616 ]
  %3691 = phi float [ %3677, %3680 ], [ %3677, %3674 ], [ 0.000000e+00, %3616 ]
  %3692 = phi float [ %3687, %3680 ], [ 0x3F70101020000000, %3674 ], [ 0x3F70101020000000, %3616 ]
  %3693 = add i32 %49, 144
  %3694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3693, i32 undef)  ; BufferLoad(srv,index,wot)
  %3695 = extractvalue %dx.types.ResRet.i32 %3694, 0
  %3696 = and i32 %3695, 255
  %3697 = uitofp i32 %3696 to float
  %3698 = lshr i32 %3695, 8
  %3699 = and i32 %3698, 255
  %3700 = uitofp i32 %3699 to float
  %3701 = call float @dx.op.dot3.f32(i32 55, float %3451, float %3452, float %3453, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3702 = fmul fast float %3700, %3701
  %3703 = fadd fast float %3702, %3697
  %3704 = fmul fast float %3703, 0x3F70101020000000
  %3705 = call float @dx.op.unary.f32(i32 7, float %3704)  ; Saturate(value)
  br i1 %3050, label %3706, label %3741

; <label>:3706                                    ; preds = %3688
  %3707 = fmul fast float %3692, 2.000000e+00
  %3708 = fcmp fast olt float %3637, 1.270000e+02
  %3709 = fcmp fast olt float %3638, 1.270000e+02
  %3710 = fcmp fast olt float %3639, 1.270000e+02
  %3711 = fmul fast float %3637, 0xBFF7154760000000
  %3712 = fmul fast float %3711, %3707
  %3713 = fmul fast float %3638, 0xBFF7154760000000
  %3714 = fmul fast float %3713, %3707
  %3715 = fmul fast float %3639, 0xBFF7154760000000
  %3716 = fmul fast float %3715, %3707
  %3717 = call float @dx.op.unary.f32(i32 21, float %3712)  ; Exp(value)
  %3718 = call float @dx.op.unary.f32(i32 21, float %3714)  ; Exp(value)
  %3719 = call float @dx.op.unary.f32(i32 21, float %3716)  ; Exp(value)
  %3720 = call float @dx.op.unary.f32(i32 7, float %3717)  ; Saturate(value)
  %3721 = call float @dx.op.unary.f32(i32 7, float %3718)  ; Saturate(value)
  %3722 = call float @dx.op.unary.f32(i32 7, float %3719)  ; Saturate(value)
  %3723 = fadd fast float %3720, -1.000000e+00
  %3724 = select i1 %3708, float %3723, float -1.000000e+00
  %3725 = fadd fast float %3721, -1.000000e+00
  %3726 = select i1 %3709, float %3725, float -1.000000e+00
  %3727 = fadd fast float %3722, -1.000000e+00
  %3728 = select i1 %3710, float %3727, float -1.000000e+00
  %3729 = fmul fast float %3724, %3231
  %3730 = fmul fast float %3726, %3231
  %3731 = fmul fast float %3728, %3231
  %3732 = fadd fast float %3729, 1.000000e+00
  %3733 = fadd fast float %3730, 1.000000e+00
  %3734 = fadd fast float %3731, 1.000000e+00
  %3735 = fmul fast float %3732, %3032
  %3736 = fmul fast float %3733, %3033
  %3737 = fmul fast float %3734, %3034
  %3738 = fmul fast float %3732, %3035
  %3739 = fmul fast float %3733, %3036
  %3740 = fmul fast float %3734, %3037
  br label %3741

; <label>:3741                                    ; preds = %3706, %3688
  %3742 = phi float [ %3735, %3706 ], [ %3032, %3688 ]
  %3743 = phi float [ %3736, %3706 ], [ %3033, %3688 ]
  %3744 = phi float [ %3737, %3706 ], [ %3034, %3688 ]
  %3745 = phi float [ %3738, %3706 ], [ %3035, %3688 ]
  %3746 = phi float [ %3739, %3706 ], [ %3036, %3688 ]
  %3747 = phi float [ %3740, %3706 ], [ %3037, %3688 ]
  %3748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3051, i32 undef)  ; BufferLoad(srv,index,wot)
  %3749 = extractvalue %dx.types.ResRet.i32 %3748, 0
  %3750 = and i32 %3749, 3
  %3751 = icmp eq i32 %3750, 3
  br i1 %3751, label %3830, label %3752

; <label>:3752                                    ; preds = %3741
  %3753 = and i32 %3749, 16
  %3754 = icmp ne i32 %3753, 0
  %3755 = select i1 %3754, float %3231, float 0.000000e+00
  %3756 = icmp eq i32 %3750, 0
  br i1 %3756, label %3757, label %3785

; <label>:3757                                    ; preds = %3752
  %3758 = and i32 %3749, 64
  %3759 = icmp ne i32 %3758, 0
  %3760 = select i1 %3759, float %3231, float 0.000000e+00
  %3761 = fsub fast float %3451, %3742
  %3762 = fsub fast float %3452, %3743
  %3763 = fsub fast float %3453, %3744
  %3764 = fmul fast float %3755, %3761
  %3765 = fmul fast float %3755, %3762
  %3766 = fmul fast float %3755, %3763
  %3767 = fadd fast float %3764, %3742
  %3768 = fadd fast float %3765, %3743
  %3769 = fadd fast float %3766, %3744
  %3770 = fsub fast float %3437, %3044
  %3771 = fmul fast float %3755, %3770
  %3772 = fadd fast float %3771, %3044
  %3773 = fsub fast float %3579, %3745
  %3774 = fsub fast float %3580, %3746
  %3775 = fsub fast float %3581, %3747
  %3776 = fmul fast float %3760, %3773
  %3777 = fmul fast float %3760, %3774
  %3778 = fmul fast float %3760, %3775
  %3779 = fadd fast float %3776, %3745
  %3780 = fadd fast float %3777, %3746
  %3781 = fadd fast float %3778, %3747
  %3782 = fsub fast float %3705, %3048
  %3783 = fmul fast float %3755, %3782
  %3784 = fadd fast float %3783, %3048
  br label %3830

; <label>:3785                                    ; preds = %3752
  %3786 = icmp eq i32 %3750, 1
  br i1 %3786, label %3787, label %3800

; <label>:3787                                    ; preds = %3785
  %3788 = fadd fast float %3451, -1.000000e+00
  %3789 = fadd fast float %3452, -1.000000e+00
  %3790 = fadd fast float %3453, -1.000000e+00
  %3791 = fmul fast float %3755, %3788
  %3792 = fmul fast float %3755, %3789
  %3793 = fmul fast float %3755, %3790
  %3794 = fadd fast float %3791, 1.000000e+00
  %3795 = fadd fast float %3792, 1.000000e+00
  %3796 = fadd fast float %3793, 1.000000e+00
  %3797 = fmul fast float %3794, %3742
  %3798 = fmul fast float %3795, %3743
  %3799 = fmul fast float %3796, %3744
  br label %3830

; <label>:3800                                    ; preds = %3785
  %3801 = icmp eq i32 %3750, 2
  br i1 %3801, label %3802, label %3830

; <label>:3802                                    ; preds = %3800
  %3803 = call float @dx.op.unary.f32(i32 24, float %3451)  ; Sqrt(value)
  %3804 = call float @dx.op.unary.f32(i32 24, float %3452)  ; Sqrt(value)
  %3805 = call float @dx.op.unary.f32(i32 24, float %3453)  ; Sqrt(value)
  %3806 = fadd fast float %3803, -5.000000e-01
  %3807 = fadd fast float %3804, -5.000000e-01
  %3808 = fadd fast float %3805, -5.000000e-01
  %3809 = fmul fast float %3806, %3755
  %3810 = fmul fast float %3807, %3755
  %3811 = fmul fast float %3808, %3755
  %3812 = fadd fast float %3809, 5.000000e-01
  %3813 = fadd fast float %3810, 5.000000e-01
  %3814 = fadd fast float %3811, 5.000000e-01
  %3815 = fmul fast float %3812, 2.000000e+00
  %3816 = fsub fast float 1.000000e+00, %3815
  %3817 = fmul fast float %3816, %3742
  %3818 = fadd fast float %3817, %3815
  %3819 = fmul fast float %3818, %3742
  %3820 = fmul fast float %3813, 2.000000e+00
  %3821 = fsub fast float 1.000000e+00, %3820
  %3822 = fmul fast float %3821, %3743
  %3823 = fadd fast float %3822, %3820
  %3824 = fmul fast float %3823, %3743
  %3825 = fmul fast float %3814, 2.000000e+00
  %3826 = fsub fast float 1.000000e+00, %3825
  %3827 = fmul fast float %3826, %3744
  %3828 = fadd fast float %3827, %3825
  %3829 = fmul fast float %3828, %3744
  br label %3830

; <label>:3830                                    ; preds = %3802, %3800, %3787, %3757, %3741
  %3831 = phi float [ %3742, %3741 ], [ %3819, %3802 ], [ %3742, %3800 ], [ %3797, %3787 ], [ %3767, %3757 ]
  %3832 = phi float [ %3743, %3741 ], [ %3824, %3802 ], [ %3743, %3800 ], [ %3798, %3787 ], [ %3768, %3757 ]
  %3833 = phi float [ %3744, %3741 ], [ %3829, %3802 ], [ %3744, %3800 ], [ %3799, %3787 ], [ %3769, %3757 ]
  %3834 = phi float [ %3745, %3741 ], [ %3745, %3802 ], [ %3745, %3800 ], [ %3745, %3787 ], [ %3779, %3757 ]
  %3835 = phi float [ %3746, %3741 ], [ %3746, %3802 ], [ %3746, %3800 ], [ %3746, %3787 ], [ %3780, %3757 ]
  %3836 = phi float [ %3747, %3741 ], [ %3747, %3802 ], [ %3747, %3800 ], [ %3747, %3787 ], [ %3781, %3757 ]
  %3837 = phi float [ %3044, %3741 ], [ %3044, %3802 ], [ %3044, %3800 ], [ %3044, %3787 ], [ %3772, %3757 ]
  %3838 = phi float [ %3048, %3741 ], [ %3048, %3802 ], [ %3048, %3800 ], [ %3048, %3787 ], [ %3784, %3757 ]
  %3839 = and i32 %3749, 12
  %3840 = icmp eq i32 %3839, 12
  br i1 %3840, label %3971, label %3841

; <label>:3841                                    ; preds = %3830
  %3842 = and i32 %3749, 2097184
  %3843 = icmp eq i32 %3842, 2097184
  %3844 = select i1 %3843, float %3231, float 0.000000e+00
  %3845 = and i32 %3749, 4194336
  %3846 = icmp eq i32 %3845, 4194336
  %3847 = select i1 %3846, float %3231, float 0.000000e+00
  %3848 = and i32 %3749, 8388640
  %3849 = icmp eq i32 %3848, 8388640
  %3850 = select i1 %3849, float %3231, float 0.000000e+00
  %3851 = and i32 %3749, 1024
  %3852 = icmp ne i32 %3851, 0
  %3853 = select i1 %3852, float %3231, float 0.000000e+00
  %3854 = and i32 %3749, 2048
  %3855 = icmp ne i32 %3854, 0
  %3856 = select i1 %3855, float %3231, float 0.000000e+00
  %3857 = and i32 %3749, 8192
  %3858 = icmp ne i32 %3857, 0
  %3859 = select i1 %3858, float %3231, float 0.000000e+00
  %3860 = icmp eq i32 %3839, 0
  br i1 %3860, label %3861, label %3895

; <label>:3861                                    ; preds = %3841
  %3862 = fsub fast float %3532, %3030
  %3863 = fsub fast float %3533, %3031
  %3864 = fmul fast float %3844, %3862
  %3865 = fmul fast float %3844, %3863
  %3866 = fadd fast float %3864, %3030
  %3867 = fadd fast float %3865, %3031
  %3868 = fsub fast float %3534, %3046
  %3869 = fmul fast float %3847, %3868
  %3870 = fadd fast float %3869, %3046
  %3871 = fsub fast float %3531, %3045
  %3872 = fmul fast float %3850, %3871
  %3873 = fadd fast float %3872, %3045
  %3874 = fsub fast float %3637, %3041
  %3875 = fsub fast float %3638, %3042
  %3876 = fsub fast float %3639, %3043
  %3877 = fmul fast float %3853, %3874
  %3878 = fmul fast float %3853, %3875
  %3879 = fmul fast float %3853, %3876
  %3880 = fadd fast float %3877, %3041
  %3881 = fadd fast float %3878, %3042
  %3882 = fadd fast float %3879, %3043
  %3883 = fsub fast float %3692, %3047
  %3884 = fmul fast float %3856, %3883
  %3885 = fadd fast float %3884, %3047
  %3886 = fsub fast float %3689, %3038
  %3887 = fsub fast float %3690, %3039
  %3888 = fsub fast float %3691, %3040
  %3889 = fmul fast float %3859, %3886
  %3890 = fmul fast float %3859, %3887
  %3891 = fmul fast float %3859, %3888
  %3892 = fadd fast float %3889, %3038
  %3893 = fadd fast float %3890, %3039
  %3894 = fadd fast float %3891, %3040
  br label %3971

; <label>:3895                                    ; preds = %3841
  %3896 = icmp eq i32 %3839, 4
  br i1 %3896, label %3897, label %3943

; <label>:3897                                    ; preds = %3895
  %3898 = fmul fast float %3844, %3532
  %3899 = fmul fast float %3844, %3533
  %3900 = fadd fast float %3898, %3030
  %3901 = fadd fast float %3899, %3031
  %3902 = call float @dx.op.binary.f32(i32 36, float %3046, float %3534)  ; FMin(a,b)
  %3903 = fsub fast float %3902, %3046
  %3904 = fmul fast float %3903, %3847
  %3905 = fadd fast float %3904, %3046
  %3906 = fadd fast float %3531, %3045
  %3907 = fmul fast float %3906, 0x3FF337FAE0000000
  %3908 = fmul fast float %3045, %3045
  %3909 = fmul fast float %3531, %3531
  %3910 = fadd fast float %3909, %3908
  %3911 = fmul fast float %3910, 0x3FE5152B00000000
  %3912 = fmul fast float %3045, 0xBFCC1F85E0000000
  %3913 = fmul fast float %3912, %3531
  %3914 = fadd fast float %3913, 0xBFE1363700000000
  %3915 = fadd fast float %3914, %3907
  %3916 = fsub fast float %3915, %3911
  %3917 = fmul fast float %3906, 0x3FBA6F0D00000000
  %3918 = fmul fast float %3910, 0x3FD0432880000000
  %3919 = fmul fast float %3045, 0xBFEF110800000000
  %3920 = fmul fast float %3919, %3531
  %3921 = fadd fast float %3920, 1.000000e+00
  %3922 = fsub fast float %3921, %3917
  %3923 = fadd fast float %3922, %3918
  %3924 = fdiv fast float %3916, %3923
  %3925 = call float @dx.op.unary.f32(i32 7, float %3924)  ; Saturate(value)
  %3926 = fsub fast float %3925, %3045
  %3927 = fmul fast float %3926, %3850
  %3928 = fadd fast float %3927, %3045
  %3929 = fmul fast float %3853, %3637
  %3930 = fmul fast float %3853, %3638
  %3931 = fmul fast float %3853, %3639
  %3932 = fadd fast float %3929, %3041
  %3933 = fadd fast float %3930, %3042
  %3934 = fadd fast float %3931, %3043
  %3935 = fmul fast float %3856, %3692
  %3936 = fadd fast float %3935, %3047
  %3937 = fmul fast float %3859, %3689
  %3938 = fmul fast float %3859, %3690
  %3939 = fmul fast float %3859, %3691
  %3940 = fadd fast float %3937, %3038
  %3941 = fadd fast float %3938, %3039
  %3942 = fadd fast float %3939, %3040
  br label %3971

; <label>:3943                                    ; preds = %3895
  %3944 = icmp eq i32 %3839, 8
  br i1 %3944, label %3945, label %3971

; <label>:3945                                    ; preds = %3943
  %3946 = fmul fast float %3844, %3532
  %3947 = fmul fast float %3844, %3533
  %3948 = fadd fast float %3946, %3030
  %3949 = fadd fast float %3947, %3031
  %3950 = call float @dx.op.binary.f32(i32 36, float %3046, float %3534)  ; FMin(a,b)
  %3951 = fsub fast float %3950, %3046
  %3952 = fmul fast float %3951, %3847
  %3953 = fadd fast float %3952, %3046
  %3954 = fsub fast float %3531, %3045
  %3955 = fmul fast float %3850, %3954
  %3956 = fadd fast float %3955, %3045
  %3957 = fmul fast float %3853, %3637
  %3958 = fmul fast float %3853, %3638
  %3959 = fmul fast float %3853, %3639
  %3960 = fadd fast float %3957, %3041
  %3961 = fadd fast float %3958, %3042
  %3962 = fadd fast float %3959, %3043
  %3963 = fmul fast float %3856, %3692
  %3964 = fadd fast float %3963, %3047
  %3965 = fmul fast float %3859, %3689
  %3966 = fmul fast float %3859, %3690
  %3967 = fmul fast float %3859, %3691
  %3968 = fadd fast float %3965, %3038
  %3969 = fadd fast float %3966, %3039
  %3970 = fadd fast float %3967, %3040
  br label %3971

; <label>:3971                                    ; preds = %3945, %3943, %3897, %3861, %3830, %3230, %3049, %3029
  %3972 = phi float [ %3030, %3830 ], [ %3030, %3230 ], [ %3030, %3029 ], [ %3030, %3049 ], [ %3866, %3861 ], [ %3900, %3897 ], [ %3030, %3943 ], [ %3948, %3945 ]
  %3973 = phi float [ %3031, %3830 ], [ %3031, %3230 ], [ %3031, %3029 ], [ %3031, %3049 ], [ %3867, %3861 ], [ %3901, %3897 ], [ %3031, %3943 ], [ %3949, %3945 ]
  %3974 = phi float [ %3831, %3830 ], [ %3032, %3230 ], [ %3032, %3029 ], [ %3032, %3049 ], [ %3831, %3861 ], [ %3831, %3897 ], [ %3831, %3943 ], [ %3831, %3945 ]
  %3975 = phi float [ %3832, %3830 ], [ %3033, %3230 ], [ %3033, %3029 ], [ %3033, %3049 ], [ %3832, %3861 ], [ %3832, %3897 ], [ %3832, %3943 ], [ %3832, %3945 ]
  %3976 = phi float [ %3833, %3830 ], [ %3034, %3230 ], [ %3034, %3029 ], [ %3034, %3049 ], [ %3833, %3861 ], [ %3833, %3897 ], [ %3833, %3943 ], [ %3833, %3945 ]
  %3977 = phi float [ %3834, %3830 ], [ %3035, %3230 ], [ %3035, %3029 ], [ %3035, %3049 ], [ %3834, %3861 ], [ %3834, %3897 ], [ %3834, %3943 ], [ %3834, %3945 ]
  %3978 = phi float [ %3835, %3830 ], [ %3036, %3230 ], [ %3036, %3029 ], [ %3036, %3049 ], [ %3835, %3861 ], [ %3835, %3897 ], [ %3835, %3943 ], [ %3835, %3945 ]
  %3979 = phi float [ %3836, %3830 ], [ %3037, %3230 ], [ %3037, %3029 ], [ %3037, %3049 ], [ %3836, %3861 ], [ %3836, %3897 ], [ %3836, %3943 ], [ %3836, %3945 ]
  %3980 = phi float [ %3038, %3830 ], [ %3038, %3230 ], [ %3038, %3029 ], [ %3038, %3049 ], [ %3892, %3861 ], [ %3940, %3897 ], [ %3038, %3943 ], [ %3968, %3945 ]
  %3981 = phi float [ %3039, %3830 ], [ %3039, %3230 ], [ %3039, %3029 ], [ %3039, %3049 ], [ %3893, %3861 ], [ %3941, %3897 ], [ %3039, %3943 ], [ %3969, %3945 ]
  %3982 = phi float [ %3040, %3830 ], [ %3040, %3230 ], [ %3040, %3029 ], [ %3040, %3049 ], [ %3894, %3861 ], [ %3942, %3897 ], [ %3040, %3943 ], [ %3970, %3945 ]
  %3983 = phi float [ %3041, %3830 ], [ %3041, %3230 ], [ %3041, %3029 ], [ %3041, %3049 ], [ %3880, %3861 ], [ %3932, %3897 ], [ %3041, %3943 ], [ %3960, %3945 ]
  %3984 = phi float [ %3042, %3830 ], [ %3042, %3230 ], [ %3042, %3029 ], [ %3042, %3049 ], [ %3881, %3861 ], [ %3933, %3897 ], [ %3042, %3943 ], [ %3961, %3945 ]
  %3985 = phi float [ %3043, %3830 ], [ %3043, %3230 ], [ %3043, %3029 ], [ %3043, %3049 ], [ %3882, %3861 ], [ %3934, %3897 ], [ %3043, %3943 ], [ %3962, %3945 ]
  %3986 = phi float [ %3837, %3830 ], [ %3044, %3230 ], [ %3044, %3029 ], [ %3044, %3049 ], [ %3837, %3861 ], [ %3837, %3897 ], [ %3837, %3943 ], [ %3837, %3945 ]
  %3987 = phi float [ %3045, %3830 ], [ %3045, %3230 ], [ %3045, %3029 ], [ %3045, %3049 ], [ %3873, %3861 ], [ %3928, %3897 ], [ %3045, %3943 ], [ %3956, %3945 ]
  %3988 = phi float [ %3046, %3830 ], [ %3046, %3230 ], [ %3046, %3029 ], [ %3046, %3049 ], [ %3870, %3861 ], [ %3905, %3897 ], [ %3046, %3943 ], [ %3953, %3945 ]
  %3989 = phi float [ %3047, %3830 ], [ %3047, %3230 ], [ %3047, %3029 ], [ %3047, %3049 ], [ %3885, %3861 ], [ %3936, %3897 ], [ %3047, %3943 ], [ %3964, %3945 ]
  %3990 = phi float [ %3838, %3830 ], [ %3048, %3230 ], [ %3048, %3029 ], [ %3048, %3049 ], [ %3838, %3861 ], [ %3838, %3897 ], [ %3838, %3943 ], [ %3838, %3945 ]
  %3991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3992 = extractvalue %dx.types.CBufRet.f32 %3991, 0
  %3993 = call float @dx.op.dot2.f32(i32 54, float %3972, float %3973, float %3972, float %3973)  ; Dot2(ax,ay,bx,by)
  %3994 = fmul fast float %3993, 0x3FE3333340000000
  %3995 = fsub fast float 1.000000e+00, %3994
  %3996 = call float @dx.op.dot3.f32(i32 55, float %3972, float %3973, float %3995, float %3972, float %3973, float %3995)  ; Dot3(ax,ay,az,bx,by,bz)
  %3997 = call float @dx.op.unary.f32(i32 25, float %3996)  ; Rsqrt(value)
  %3998 = fmul fast float %3997, %3972
  %3999 = fmul fast float %3997, %3973
  %4000 = fmul fast float %3995, %3997
  %4001 = fmul fast float %4000, %115
  %4002 = fmul fast float %4000, %116
  %4003 = fmul fast float %4000, %117
  %4004 = fmul fast float %3998, %79
  %4005 = fmul fast float %3998, %80
  %4006 = fmul fast float %3998, %81
  %4007 = fadd fast float %4001, %4004
  %4008 = fadd fast float %4002, %4005
  %4009 = fadd fast float %4003, %4006
  %4010 = fmul fast float %3999, %127
  %4011 = fmul fast float %3999, %128
  %4012 = fmul fast float %3999, %129
  %4013 = fadd fast float %4007, %4010
  %4014 = fadd fast float %4008, %4011
  %4015 = fadd fast float %4009, %4012
  %4016 = call float @dx.op.dot3.f32(i32 55, float %4013, float %4014, float %4015, float %4013, float %4014, float %4015)  ; Dot3(ax,ay,az,bx,by,bz)
  %4017 = call float @dx.op.unary.f32(i32 25, float %4016)  ; Rsqrt(value)
  %4018 = fmul fast float %4013, %4017
  %4019 = fmul fast float %4014, %4017
  %4020 = fmul fast float %4015, %4017
  %4021 = icmp eq i32 %50, 65535
  br i1 %4021, label %4620, label %4022

; <label>:4022                                    ; preds = %3971
  %4023 = call float @dx.op.unary.f32(i32 83, float %51)  ; DerivCoarseX(value)
  %4024 = call float @dx.op.unary.f32(i32 83, float %52)  ; DerivCoarseX(value)
  %4025 = call float @dx.op.unary.f32(i32 83, float %53)  ; DerivCoarseX(value)
  %4026 = call float @dx.op.unary.f32(i32 84, float %51)  ; DerivCoarseY(value)
  %4027 = call float @dx.op.unary.f32(i32 84, float %52)  ; DerivCoarseY(value)
  %4028 = call float @dx.op.unary.f32(i32 84, float %53)  ; DerivCoarseY(value)
  %4029 = fadd fast float %4023, %51
  %4030 = fadd fast float %4024, %52
  %4031 = fadd fast float %4025, %53
  %4032 = fadd fast float %4026, %51
  %4033 = fadd fast float %4027, %52
  %4034 = fadd fast float %4028, %53
  %4035 = mul i32 %50, 48
  %4036 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4035, i32 undef)  ; BufferLoad(srv,index,wot)
  %4037 = extractvalue %dx.types.ResRet.f32 %4036, 0
  %4038 = extractvalue %dx.types.ResRet.f32 %4036, 1
  %4039 = extractvalue %dx.types.ResRet.f32 %4036, 2
  %4040 = add i32 %4035, 16
  %4041 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4040, i32 undef)  ; BufferLoad(srv,index,wot)
  %4042 = extractvalue %dx.types.ResRet.f32 %4041, 0
  %4043 = extractvalue %dx.types.ResRet.f32 %4041, 1
  %4044 = extractvalue %dx.types.ResRet.f32 %4041, 2
  %4045 = add i32 %4035, 32
  %4046 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4045, i32 undef)  ; BufferLoad(srv,index,wot)
  %4047 = extractvalue %dx.types.ResRet.f32 %4046, 0
  %4048 = extractvalue %dx.types.ResRet.f32 %4046, 1
  %4049 = extractvalue %dx.types.ResRet.f32 %4046, 2
  %4050 = extractvalue %dx.types.ResRet.f32 %4046, 3
  %4051 = bitcast float %4050 to i32
  %4052 = fmul fast float %4037, %51
  %4053 = fmul fast float %4038, %52
  %4054 = fmul fast float %4039, %53
  %4055 = fsub fast float %4052, %4042
  %4056 = fsub fast float %4053, %4043
  %4057 = fsub fast float %4054, %4044
  %4058 = call float @dx.op.unary.f32(i32 7, float %4055)  ; Saturate(value)
  %4059 = call float @dx.op.unary.f32(i32 7, float %4056)  ; Saturate(value)
  %4060 = call float @dx.op.unary.f32(i32 7, float %4057)  ; Saturate(value)
  %4061 = fmul fast float %4058, %4047
  %4062 = fmul fast float %4059, %4048
  %4063 = fmul fast float %4060, %4049
  %4064 = fadd fast float %4047, -1.000000e+00
  %4065 = fadd fast float %4048, -1.000000e+00
  %4066 = fadd fast float %4049, -1.000000e+00
  %4067 = call float @dx.op.unary.f32(i32 27, float %4061)  ; Round_ni(value)
  %4068 = call float @dx.op.unary.f32(i32 27, float %4062)  ; Round_ni(value)
  %4069 = call float @dx.op.unary.f32(i32 27, float %4063)  ; Round_ni(value)
  %4070 = call float @dx.op.binary.f32(i32 36, float %4067, float %4064)  ; FMin(a,b)
  %4071 = call float @dx.op.binary.f32(i32 36, float %4068, float %4065)  ; FMin(a,b)
  %4072 = call float @dx.op.binary.f32(i32 36, float %4069, float %4066)  ; FMin(a,b)
  %4073 = fmul fast float %4072, %4048
  %4074 = fadd fast float %4073, %4071
  %4075 = fmul fast float %4074, %4047
  %4076 = fadd fast float %4075, %4070
  %4077 = fptosi float %4076 to i32
  %4078 = add nsw i32 %4077, %4051
  %4079 = shl nsw i32 %4078, 2
  %4080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4079, i32 undef)  ; BufferLoad(srv,index,wot)
  %4081 = extractvalue %dx.types.ResRet.i32 %4080, 0
  %4082 = lshr i32 %4081, 16
  %4083 = icmp eq i32 %4082, 0
  br i1 %4083, label %4583, label %4084

; <label>:4084                                    ; preds = %4022
  br label %4085

; <label>:4085                                    ; preds = %4212, %4084
  %4086 = phi i32 [ %4114, %4212 ], [ %4082, %4084 ]
  %4087 = phi float [ %4213, %4212 ], [ 0.000000e+00, %4084 ]
  %4088 = phi float [ %4214, %4212 ], [ %3992, %4084 ]
  %4089 = phi float [ %4215, %4212 ], [ %3990, %4084 ]
  %4090 = phi float [ %4216, %4212 ], [ %3983, %4084 ]
  %4091 = phi float [ %4217, %4212 ], [ %3984, %4084 ]
  %4092 = phi float [ %4218, %4212 ], [ %3985, %4084 ]
  %4093 = phi float [ %4219, %4212 ], [ 0.000000e+00, %4084 ]
  %4094 = phi float [ %4220, %4212 ], [ 0.000000e+00, %4084 ]
  %4095 = phi float [ %4221, %4212 ], [ %3980, %4084 ]
  %4096 = phi float [ %4222, %4212 ], [ %3981, %4084 ]
  %4097 = phi float [ %4223, %4212 ], [ %3982, %4084 ]
  %4098 = phi float [ %4224, %4212 ], [ %3977, %4084 ]
  %4099 = phi float [ %4225, %4212 ], [ %3978, %4084 ]
  %4100 = phi float [ %4226, %4212 ], [ %3979, %4084 ]
  %4101 = phi float [ %4227, %4212 ], [ %4018, %4084 ]
  %4102 = phi float [ %4228, %4212 ], [ %4019, %4084 ]
  %4103 = phi float [ %4229, %4212 ], [ %4020, %4084 ]
  %4104 = phi float [ %4230, %4212 ], [ %3988, %4084 ]
  %4105 = phi float [ %4231, %4212 ], [ %3987, %4084 ]
  %4106 = phi float [ %4232, %4212 ], [ 0.000000e+00, %4084 ]
  %4107 = phi float [ %4233, %4212 ], [ %3986, %4084 ]
  %4108 = phi float [ %4234, %4212 ], [ %3974, %4084 ]
  %4109 = phi float [ %4235, %4212 ], [ %3975, %4084 ]
  %4110 = phi float [ %4236, %4212 ], [ %3976, %4084 ]
  %4111 = shl nuw nsw i32 %4086, 2
  %4112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4111, i32 undef)  ; BufferLoad(srv,index,wot)
  %4113 = extractvalue %dx.types.ResRet.i32 %4112, 0
  %4114 = lshr i32 %4113, 16
  %4115 = shl i32 %4113, 8
  %4116 = and i32 %4115, 16776960
  %4117 = or i32 %4116, 48
  %4118 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4117, i32 undef)  ; BufferLoad(srv,index,wot)
  %4119 = extractvalue %dx.types.ResRet.f32 %4118, 0
  %4120 = extractvalue %dx.types.ResRet.f32 %4118, 1
  %4121 = extractvalue %dx.types.ResRet.f32 %4118, 2
  %4122 = or i32 %4116, 64
  %4123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4122, i32 undef)  ; BufferLoad(srv,index,wot)
  %4124 = extractvalue %dx.types.ResRet.i32 %4123, 0
  %4125 = extractvalue %dx.types.ResRet.i32 %4123, 1
  %4126 = or i32 %4116, 80
  %4127 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4126, i32 undef)  ; BufferLoad(srv,index,wot)
  %4128 = extractvalue %dx.types.ResRet.f32 %4127, 2
  %4129 = extractvalue %dx.types.ResRet.f32 %4127, 3
  %4130 = or i32 %4116, 96
  %4131 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4130, i32 undef)  ; BufferLoad(srv,index,wot)
  %4132 = extractvalue %dx.types.ResRet.f32 %4131, 0
  %4133 = extractvalue %dx.types.ResRet.f32 %4131, 1
  %4134 = extractvalue %dx.types.ResRet.f32 %4131, 2
  %4135 = extractvalue %dx.types.ResRet.f32 %4131, 3
  %4136 = or i32 %4116, 112
  %4137 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4136, i32 undef)  ; BufferLoad(srv,index,wot)
  %4138 = extractvalue %dx.types.ResRet.f32 %4137, 2
  %4139 = or i32 %4116, 128
  %4140 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4139, i32 undef)  ; BufferLoad(srv,index,wot)
  %4141 = extractvalue %dx.types.ResRet.f32 %4140, 0
  %4142 = extractvalue %dx.types.ResRet.f32 %4140, 1
  %4143 = extractvalue %dx.types.ResRet.f32 %4140, 2
  %4144 = extractvalue %dx.types.ResRet.f32 %4140, 3
  %4145 = or i32 %4116, 144
  %4146 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4145, i32 undef)  ; BufferLoad(srv,index,wot)
  %4147 = extractvalue %dx.types.ResRet.f32 %4146, 0
  %4148 = extractvalue %dx.types.ResRet.f32 %4146, 1
  %4149 = extractvalue %dx.types.ResRet.f32 %4146, 2
  %4150 = extractvalue %dx.types.ResRet.f32 %4146, 3
  %4151 = or i32 %4116, 160
  %4152 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4151, i32 undef)  ; BufferLoad(srv,index,wot)
  %4153 = extractvalue %dx.types.ResRet.f32 %4152, 0
  %4154 = extractvalue %dx.types.ResRet.f32 %4152, 1
  %4155 = extractvalue %dx.types.ResRet.f32 %4152, 2
  %4156 = extractvalue %dx.types.ResRet.f32 %4152, 3
  %4157 = or i32 %4116, 192
  %4158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4157, i32 undef)  ; BufferLoad(srv,index,wot)
  %4159 = extractvalue %dx.types.ResRet.i32 %4158, 0
  %4160 = or i32 %4116, 208
  %4161 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4160, i32 undef)  ; BufferLoad(srv,index,wot)
  %4162 = extractvalue %dx.types.ResRet.f32 %4161, 0
  %4163 = or i32 %4116, 248
  %4164 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4163, i32 undef)  ; BufferLoad(srv,index,wot)
  %4165 = extractvalue %dx.types.ResRet.f32 %4164, 0
  %4166 = extractvalue %dx.types.ResRet.f32 %4164, 1
  %4167 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4116, i32 undef)  ; BufferLoad(srv,index,wot)
  %4168 = extractvalue %dx.types.ResRet.f32 %4167, 0
  %4169 = extractvalue %dx.types.ResRet.f32 %4167, 1
  %4170 = extractvalue %dx.types.ResRet.f32 %4167, 2
  %4171 = extractvalue %dx.types.ResRet.f32 %4167, 3
  %4172 = call float @dx.op.dot4.f32(i32 56, float %4168, float %4169, float %4170, float %4171, float %51, float %52, float %53, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4173 = or i32 %4116, 16
  %4174 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4173, i32 undef)  ; BufferLoad(srv,index,wot)
  %4175 = extractvalue %dx.types.ResRet.f32 %4174, 0
  %4176 = extractvalue %dx.types.ResRet.f32 %4174, 1
  %4177 = extractvalue %dx.types.ResRet.f32 %4174, 2
  %4178 = extractvalue %dx.types.ResRet.f32 %4174, 3
  %4179 = call float @dx.op.dot4.f32(i32 56, float %4175, float %4176, float %4177, float %4178, float %51, float %52, float %53, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4180 = or i32 %4116, 32
  %4181 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4180, i32 undef)  ; BufferLoad(srv,index,wot)
  %4182 = extractvalue %dx.types.ResRet.f32 %4181, 0
  %4183 = extractvalue %dx.types.ResRet.f32 %4181, 1
  %4184 = extractvalue %dx.types.ResRet.f32 %4181, 2
  %4185 = extractvalue %dx.types.ResRet.f32 %4181, 3
  %4186 = call float @dx.op.dot4.f32(i32 56, float %4182, float %4183, float %4184, float %4185, float %51, float %52, float %53, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4187 = call float @dx.op.unary.f32(i32 27, float %4172)  ; Round_ni(value)
  %4188 = call float @dx.op.unary.f32(i32 6, float %4187)  ; FAbs(value)
  %4189 = call float @dx.op.unary.f32(i32 27, float %4179)  ; Round_ni(value)
  %4190 = call float @dx.op.unary.f32(i32 6, float %4189)  ; FAbs(value)
  %4191 = call float @dx.op.unary.f32(i32 6, float %4186)  ; FAbs(value)
  %4192 = call float @dx.op.unary.f32(i32 27, float %4191)  ; Round_ni(value)
  %4193 = fadd fast float %4190, %4188
  %4194 = fadd fast float %4193, %4192
  %4195 = fcmp fast oeq float %4194, 0.000000e+00
  %4196 = call float @dx.op.dot4.f32(i32 56, float %4168, float %4169, float %4170, float %4171, float %4029, float %4030, float %4031, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4197 = call float @dx.op.dot4.f32(i32 56, float %4175, float %4176, float %4177, float %4178, float %4029, float %4030, float %4031, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4198 = call float @dx.op.dot4.f32(i32 56, float %4168, float %4169, float %4170, float %4171, float %4032, float %4033, float %4034, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4199 = call float @dx.op.dot4.f32(i32 56, float %4175, float %4176, float %4177, float %4178, float %4032, float %4033, float %4034, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4200 = fsub fast float %4196, %4172
  %4201 = fsub fast float %4198, %4172
  %4202 = fsub fast float %4197, %4179
  %4203 = fsub fast float %4199, %4179
  %4204 = call float @dx.op.dot3.f32(i32 55, float %4119, float %4120, float %4121, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %4205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4206 = extractvalue %dx.types.CBufRet.f32 %4205, 2
  %4207 = fadd fast float %4206, %4204
  %4208 = call float @dx.op.unary.f32(i32 7, float %4207)  ; Saturate(value)
  %4209 = extractvalue %dx.types.CBufRet.f32 %4205, 0
  %4210 = fcmp fast ogt float %4208, %4209
  %4211 = and i1 %4195, %4210
  br i1 %4211, label %4238, label %4212

; <label>:4212                                    ; preds = %4569, %4321, %4238, %4085
  %4213 = phi float [ %4087, %4238 ], [ %4324, %4321 ], [ %4324, %4569 ], [ %4087, %4085 ]
  %4214 = phi float [ %4088, %4238 ], [ %4088, %4321 ], [ %4545, %4569 ], [ %4088, %4085 ]
  %4215 = phi float [ %4089, %4238 ], [ %4089, %4321 ], [ %4543, %4569 ], [ %4089, %4085 ]
  %4216 = phi float [ %4090, %4238 ], [ %4090, %4321 ], [ %4521, %4569 ], [ %4090, %4085 ]
  %4217 = phi float [ %4091, %4238 ], [ %4091, %4321 ], [ %4522, %4569 ], [ %4091, %4085 ]
  %4218 = phi float [ %4092, %4238 ], [ %4092, %4321 ], [ %4523, %4569 ], [ %4092, %4085 ]
  %4219 = phi float [ %4093, %4238 ], [ %4093, %4321 ], [ %4448, %4569 ], [ %4093, %4085 ]
  %4220 = phi float [ %4094, %4238 ], [ %4094, %4321 ], [ %4446, %4569 ], [ %4094, %4085 ]
  %4221 = phi float [ %4095, %4238 ], [ %4095, %4321 ], [ %4491, %4569 ], [ %4095, %4085 ]
  %4222 = phi float [ %4096, %4238 ], [ %4096, %4321 ], [ %4492, %4569 ], [ %4096, %4085 ]
  %4223 = phi float [ %4097, %4238 ], [ %4097, %4321 ], [ %4493, %4569 ], [ %4097, %4085 ]
  %4224 = phi float [ %4098, %4238 ], [ %4098, %4321 ], [ %4579, %4569 ], [ %4098, %4085 ]
  %4225 = phi float [ %4099, %4238 ], [ %4099, %4321 ], [ %4580, %4569 ], [ %4099, %4085 ]
  %4226 = phi float [ %4100, %4238 ], [ %4100, %4321 ], [ %4581, %4569 ], [ %4100, %4085 ]
  %4227 = phi float [ %4101, %4238 ], [ %4101, %4321 ], [ %4427, %4569 ], [ %4101, %4085 ]
  %4228 = phi float [ %4102, %4238 ], [ %4102, %4321 ], [ %4428, %4569 ], [ %4102, %4085 ]
  %4229 = phi float [ %4103, %4238 ], [ %4103, %4321 ], [ %4429, %4569 ], [ %4103, %4085 ]
  %4230 = phi float [ %4104, %4238 ], [ %4104, %4321 ], [ %4501, %4569 ], [ %4104, %4085 ]
  %4231 = phi float [ %4105, %4238 ], [ %4105, %4321 ], [ %4498, %4569 ], [ %4105, %4085 ]
  %4232 = phi float [ %4106, %4238 ], [ %4106, %4321 ], [ %4495, %4569 ], [ %4106, %4085 ]
  %4233 = phi float [ %4107, %4238 ], [ %4107, %4321 ], [ %4444, %4569 ], [ %4107, %4085 ]
  %4234 = phi float [ %4108, %4238 ], [ %4108, %4321 ], [ %4439, %4569 ], [ %4108, %4085 ]
  %4235 = phi float [ %4109, %4238 ], [ %4109, %4321 ], [ %4440, %4569 ], [ %4109, %4085 ]
  %4236 = phi float [ %4110, %4238 ], [ %4110, %4321 ], [ %4441, %4569 ], [ %4110, %4085 ]
  %4237 = icmp eq i32 %4114, 0
  br i1 %4237, label %4582, label %4085

; <label>:4238                                    ; preds = %4085
  %4239 = extractvalue %dx.types.ResRet.f32 %4118, 3
  %4240 = extractvalue %dx.types.ResRet.f32 %4137, 3
  %4241 = extractvalue %dx.types.ResRet.f32 %4137, 1
  %4242 = extractvalue %dx.types.ResRet.f32 %4137, 0
  %4243 = extractvalue %dx.types.ResRet.f32 %4127, 1
  %4244 = extractvalue %dx.types.ResRet.f32 %4127, 0
  %4245 = extractvalue %dx.types.ResRet.i32 %4123, 3
  %4246 = extractvalue %dx.types.ResRet.i32 %4123, 2
  %4247 = bitcast float %4239 to i32
  %4248 = add i32 %4245, 0
  %4249 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4248, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4250 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4251 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4249, %dx.types.Handle %4250, float %4172, float %4179, float undef, float undef, i32 0, i32 0, i32 undef, float %4200, float %4202, float undef, float %4201, float %4203, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4252 = extractvalue %dx.types.ResRet.f32 %4251, 0
  %4253 = fmul fast float %4252, %4244
  %4254 = fadd fast float %4253, %4243
  %4255 = call float @dx.op.unary.f32(i32 7, float %4254)  ; Saturate(value)
  %4256 = fmul fast float %4172, %4132
  %4257 = call float @dx.op.tertiary.f32(i32 46, float %4133, float %4179, float %4256)  ; FMad(a,b,c)
  %4258 = fadd fast float %4257, %4242
  %4259 = fmul fast float %4172, %4134
  %4260 = call float @dx.op.tertiary.f32(i32 46, float %4135, float %4179, float %4259)  ; FMad(a,b,c)
  %4261 = fadd fast float %4260, %4241
  %4262 = fmul fast float %4200, %4132
  %4263 = call float @dx.op.tertiary.f32(i32 46, float %4133, float %4202, float %4262)  ; FMad(a,b,c)
  %4264 = fmul fast float %4200, %4134
  %4265 = call float @dx.op.tertiary.f32(i32 46, float %4135, float %4202, float %4264)  ; FMad(a,b,c)
  %4266 = fmul fast float %4201, %4132
  %4267 = call float @dx.op.tertiary.f32(i32 46, float %4133, float %4203, float %4266)  ; FMad(a,b,c)
  %4268 = fmul fast float %4201, %4134
  %4269 = call float @dx.op.tertiary.f32(i32 46, float %4135, float %4203, float %4268)  ; FMad(a,b,c)
  %4270 = add i32 %4246, 0
  %4271 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4270, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4272 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4271, %dx.types.Handle %4250, float %4258, float %4261, float undef, float undef, i32 0, i32 0, i32 undef, float %4263, float %4265, float undef, float %4267, float %4269, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4273 = extractvalue %dx.types.ResRet.f32 %4272, 0
  %4274 = and i32 %4247, 1024
  %4275 = icmp ne i32 %4274, 0
  %4276 = fcmp fast ogt float %4273, 0x3FE0101020000000
  %4277 = uitofp i1 %4276 to float
  %4278 = select i1 %4275, float %4277, float %4273
  %4279 = and i32 %4247, 8192
  %4280 = icmp ne i32 %4279, 0
  %4281 = select i1 %4280, float %4240, float 1.000000e+00
  %4282 = fmul fast float %4172, 2.000000e+00
  %4283 = fadd fast float %4282, -1.000000e+00
  %4284 = call float @dx.op.unary.f32(i32 6, float %4283)  ; FAbs(value)
  %4285 = fmul fast float %4284, %4165
  %4286 = fsub fast float %4285, %4165
  %4287 = call float @dx.op.unary.f32(i32 7, float %4286)  ; Saturate(value)
  %4288 = fmul fast float %4179, 2.000000e+00
  %4289 = fadd fast float %4288, -1.000000e+00
  %4290 = call float @dx.op.unary.f32(i32 6, float %4289)  ; FAbs(value)
  %4291 = fmul fast float %4290, %4166
  %4292 = fsub fast float %4291, %4166
  %4293 = call float @dx.op.unary.f32(i32 7, float %4292)  ; Saturate(value)
  %4294 = fmul fast float %4191, %4128
  %4295 = fsub fast float %4294, %4128
  %4296 = call float @dx.op.unary.f32(i32 7, float %4295)  ; Saturate(value)
  %4297 = fmul fast float %4255, %4281
  %4298 = fmul fast float %4297, %4252
  %4299 = fmul fast float %4298, %4287
  %4300 = fmul fast float %4299, %4278
  %4301 = fmul fast float %4300, %4293
  %4302 = fmul fast float %4301, %4296
  %4303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4304 = extractvalue %dx.types.CBufRet.f32 %4303, 1
  %4305 = extractvalue %dx.types.CBufRet.f32 %4303, 0
  %4306 = fsub fast float %4208, %4305
  %4307 = fmul fast float %4306, %4304
  %4308 = call float @dx.op.unary.f32(i32 7, float %4307)  ; Saturate(value)
  %4309 = fmul fast float %4302, %4129
  %4310 = fadd fast float %4302, %4129
  %4311 = fmul fast float %4310, %4138
  %4312 = fsub fast float %4311, %4138
  %4313 = call float @dx.op.unary.f32(i32 7, float %4312)  ; Saturate(value)
  %4314 = and i32 %4247, 128
  %4315 = icmp ne i32 %4314, 0
  %4316 = select i1 %4315, float %4313, float %4309
  %4317 = fmul fast float %4316, %4308
  %4318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4319 = extractvalue %dx.types.CBufRet.f32 %4318, 0
  %4320 = fcmp fast ugt float %4317, %4319
  br i1 %4320, label %4321, label %4212

; <label>:4321                                    ; preds = %4238
  %4322 = select i1 %4280, float %4317, float 0.000000e+00
  %4323 = fadd fast float %4322, %4087
  %4324 = call float @dx.op.unary.f32(i32 7, float %4323)  ; Saturate(value)
  br i1 %4280, label %4212, label %4325

; <label>:4325                                    ; preds = %4321
  %4326 = and i32 %4247, 4
  %4327 = and i32 %4247, 8
  %4328 = add i32 %4124, 0
  %4329 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4328, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4330 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4331 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4329, %dx.types.Handle %4330, float %4258, float %4261, float undef, float undef, i32 0, i32 0, i32 undef, float %4263, float %4265, float undef, float %4267, float %4269, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4332 = extractvalue %dx.types.ResRet.f32 %4331, 0
  %4333 = extractvalue %dx.types.ResRet.f32 %4331, 1
  %4334 = extractvalue %dx.types.ResRet.f32 %4331, 2
  %4335 = extractvalue %dx.types.ResRet.f32 %4331, 3
  %4336 = bitcast float %4150 to i32
  %4337 = and i32 %4336, 255
  %4338 = uitofp i32 %4337 to float
  %4339 = lshr i32 %4336, 8
  %4340 = and i32 %4339, 255
  %4341 = uitofp i32 %4340 to float
  %4342 = fmul fast float %4335, %4338
  %4343 = fadd fast float %4342, %4341
  %4344 = fmul fast float %4343, 0x3F70101000000000
  %4345 = add i32 %4125, 0
  %4346 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4345, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4347 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4346, %dx.types.Handle %4330, float %4258, float %4261, float undef, float undef, i32 0, i32 0, i32 undef, float %4263, float %4265, float undef, float %4267, float %4269, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4348 = extractvalue %dx.types.ResRet.f32 %4347, 0
  %4349 = extractvalue %dx.types.ResRet.f32 %4347, 1
  %4350 = extractvalue %dx.types.ResRet.f32 %4347, 2
  %4351 = extractvalue %dx.types.ResRet.f32 %4347, 3
  %4352 = bitcast float %4144 to i32
  %4353 = and i32 %4352, 255
  %4354 = uitofp i32 %4353 to float
  %4355 = lshr i32 %4352, 8
  %4356 = and i32 %4355, 255
  %4357 = uitofp i32 %4356 to float
  %4358 = lshr i32 %4352, 16
  %4359 = and i32 %4358, 255
  %4360 = uitofp i32 %4359 to float
  %4361 = fmul fast float %4360, 0x3F70101000000000
  %4362 = fmul fast float %4348, %4354
  %4363 = fadd fast float %4362, %4357
  %4364 = fmul fast float %4363, 0x3F70101000000000
  %4365 = fadd fast float %4349, -5.000000e-01
  %4366 = fadd fast float %4351, -5.000000e-01
  %4367 = fmul fast float %4365, %4361
  %4368 = fmul fast float %4366, %4361
  %4369 = fadd fast float %4367, 5.000000e-01
  %4370 = fadd fast float %4368, 5.000000e-01
  %4371 = fmul fast float %4332, %4153
  %4372 = fmul fast float %4333, %4154
  %4373 = fmul fast float %4334, %4155
  %4374 = fmul fast float %4369, 2.000000e+00
  %4375 = fadd fast float %4374, -1.000000e+00
  %4376 = fmul fast float %4370, 2.000000e+00
  %4377 = fadd fast float %4376, -1.000000e+00
  %4378 = fadd fast float %4375, %4377
  %4379 = fmul fast float %4378, 5.000000e-01
  %4380 = fsub fast float %4375, %4377
  %4381 = fmul fast float %4380, 5.000000e-01
  %4382 = call float @dx.op.unary.f32(i32 6, float %4379)  ; FAbs(value)
  %4383 = fsub fast float 1.000000e+00, %4382
  %4384 = call float @dx.op.unary.f32(i32 6, float %4381)  ; FAbs(value)
  %4385 = fsub fast float %4383, %4384
  %4386 = call float @dx.op.dot3.f32(i32 55, float %4379, float %4381, float %4385, float %4379, float %4381, float %4385)  ; Dot3(ax,ay,az,bx,by,bz)
  %4387 = call float @dx.op.unary.f32(i32 25, float %4386)  ; Rsqrt(value)
  %4388 = fmul fast float %4379, %4387
  %4389 = fmul fast float %4381, %4387
  %4390 = fmul fast float %4387, %4385
  %4391 = fmul fast float %4390, %4119
  %4392 = fmul fast float %4390, %4120
  %4393 = fmul fast float %4390, %4121
  %4394 = fmul fast float %4388, %4141
  %4395 = fmul fast float %4388, %4142
  %4396 = fmul fast float %4388, %4143
  %4397 = fadd fast float %4394, %4391
  %4398 = fadd fast float %4395, %4392
  %4399 = fadd fast float %4396, %4393
  %4400 = fmul fast float %4389, %4147
  %4401 = fmul fast float %4389, %4148
  %4402 = fmul fast float %4389, %4149
  %4403 = fadd fast float %4397, %4400
  %4404 = fadd fast float %4398, %4401
  %4405 = fadd fast float %4399, %4402
  %4406 = call float @dx.op.dot3.f32(i32 55, float %4403, float %4404, float %4405, float %4403, float %4404, float %4405)  ; Dot3(ax,ay,az,bx,by,bz)
  %4407 = call float @dx.op.unary.f32(i32 25, float %4406)  ; Rsqrt(value)
  %4408 = fmul fast float %4403, %4407
  %4409 = fmul fast float %4404, %4407
  %4410 = fmul fast float %4405, %4407
  %4411 = icmp ne i32 %4327, 0
  %4412 = select i1 %4411, float 1.000000e+00, float 0.000000e+00
  %4413 = fmul fast float %4317, %4412
  %4414 = and i32 %4247, 1
  %4415 = icmp eq i32 %4414, 0
  br i1 %4415, label %4416, label %4420

; <label>:4416                                    ; preds = %4325
  %4417 = fsub fast float %4408, %4101
  %4418 = fsub fast float %4409, %4102
  %4419 = fsub fast float %4410, %4103
  br label %4420

; <label>:4420                                    ; preds = %4416, %4325
  %4421 = phi float [ %4417, %4416 ], [ %4408, %4325 ]
  %4422 = phi float [ %4418, %4416 ], [ %4409, %4325 ]
  %4423 = phi float [ %4419, %4416 ], [ %4410, %4325 ]
  %4424 = fmul float %4423, %4413
  %4425 = fmul float %4422, %4413
  %4426 = fmul float %4421, %4413
  %4427 = fadd fast float %4426, %4101
  %4428 = fadd fast float %4425, %4102
  %4429 = fadd fast float %4424, %4103
  %4430 = icmp ne i32 %4326, 0
  %4431 = select i1 %4430, float 1.000000e+00, float 0.000000e+00
  %4432 = fmul fast float %4317, %4431
  %4433 = fsub fast float %4371, %4108
  %4434 = fsub fast float %4372, %4109
  %4435 = fsub fast float %4373, %4110
  %4436 = fmul fast float %4433, %4432
  %4437 = fmul fast float %4434, %4432
  %4438 = fmul fast float %4435, %4432
  %4439 = fadd fast float %4436, %4108
  %4440 = fadd fast float %4437, %4109
  %4441 = fadd fast float %4438, %4110
  %4442 = fsub fast float %4344, %4107
  %4443 = fmul fast float %4442, %4432
  %4444 = fadd fast float %4443, %4107
  %4445 = fmul fast float %4432, %4094
  %4446 = fsub fast float %4094, %4445
  %4447 = fmul fast float %4432, %4093
  %4448 = fsub fast float %4093, %4447
  %4449 = bitcast float %4162 to i32
  %4450 = lshr i32 %4449, 16
  %4451 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4450)  ; LegacyF16ToF32(value)
  %4452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %4453 = extractvalue %dx.types.ResRet.i32 %4452, 0
  %4454 = and i32 %4453, 1
  %4455 = icmp eq i32 %4454, 0
  br i1 %4455, label %4456, label %4481

; <label>:4456                                    ; preds = %4420
  %4457 = fadd fast float %4344, 0xBFB99999A0000000
  %4458 = call float @dx.op.unary.f32(i32 7, float %4457)  ; Saturate(value)
  %4459 = fmul fast float %4458, 0x3FF1C71C80000000
  %4460 = fsub fast float 1.000000e+00, %4459
  %4461 = call float @dx.op.unary.f32(i32 7, float %4460)  ; Saturate(value)
  %4462 = fmul fast float %4461, %4371
  %4463 = fmul fast float %4461, %4372
  %4464 = fmul fast float %4461, %4373
  %4465 = call float @dx.op.unary.f32(i32 7, float %4462)  ; Saturate(value)
  %4466 = call float @dx.op.unary.f32(i32 7, float %4463)  ; Saturate(value)
  %4467 = call float @dx.op.unary.f32(i32 7, float %4464)  ; Saturate(value)
  %4468 = call float @dx.op.binary.f32(i32 35, float %4466, float %4467)  ; FMax(a,b)
  %4469 = call float @dx.op.binary.f32(i32 35, float %4465, float %4468)  ; FMax(a,b)
  %4470 = fcmp fast ogt float %4469, 0.000000e+00
  %4471 = bitcast float %4469 to i32
  %4472 = sub nsw i32 2129859010, %4471
  %4473 = bitcast i32 %4472 to float
  %4474 = select i1 %4470, float %4473, float 0.000000e+00
  %4475 = fmul fast float %4465, %4451
  %4476 = fmul fast float %4466, %4451
  %4477 = fmul fast float %4467, %4451
  %4478 = fmul fast float %4475, %4474
  %4479 = fmul fast float %4476, %4474
  %4480 = fmul fast float %4477, %4474
  br label %4481

; <label>:4481                                    ; preds = %4456, %4420
  %4482 = phi float [ %4451, %4420 ], [ %4478, %4456 ]
  %4483 = phi float [ %4451, %4420 ], [ %4479, %4456 ]
  %4484 = phi float [ %4451, %4420 ], [ %4480, %4456 ]
  %4485 = fsub fast float %4482, %4095
  %4486 = fsub fast float %4483, %4096
  %4487 = fsub fast float %4484, %4097
  %4488 = fmul fast float %4485, %4432
  %4489 = fmul fast float %4486, %4432
  %4490 = fmul fast float %4487, %4432
  %4491 = fadd fast float %4488, %4095
  %4492 = fadd fast float %4489, %4096
  %4493 = fadd fast float %4490, %4097
  %4494 = fadd fast float %4317, %4106
  %4495 = call float @dx.op.unary.f32(i32 7, float %4494)  ; Saturate(value)
  %4496 = fsub fast float %4364, %4105
  %4497 = fmul fast float %4496, %4413
  %4498 = fadd fast float %4497, %4105
  %4499 = fsub fast float %4350, %4104
  %4500 = fmul fast float %4499, %4413
  %4501 = fadd fast float %4500, %4104
  br i1 %4415, label %4510, label %4502

; <label>:4502                                    ; preds = %4481
  %4503 = and i32 %4247, 32768
  %4504 = icmp eq i32 %4503, 0
  br i1 %4504, label %4520, label %4505

; <label>:4505                                    ; preds = %4502
  %4506 = fmul fast float %4413, 1.270000e+02
  %4507 = fadd fast float %4506, %4090
  %4508 = fadd fast float %4506, %4091
  %4509 = fadd fast float %4506, %4092
  br label %4520

; <label>:4510                                    ; preds = %4481
  %4511 = fsub fast float 1.270000e+02, %4090
  %4512 = fsub fast float 1.270000e+02, %4091
  %4513 = fsub fast float 1.270000e+02, %4092
  %4514 = fmul fast float %4413, %4511
  %4515 = fmul fast float %4413, %4512
  %4516 = fmul fast float %4413, %4513
  %4517 = fadd fast float %4514, %4090
  %4518 = fadd fast float %4515, %4091
  %4519 = fadd fast float %4516, %4092
  br label %4520

; <label>:4520                                    ; preds = %4510, %4505, %4502
  %4521 = phi float [ %4507, %4505 ], [ %4090, %4502 ], [ %4517, %4510 ]
  %4522 = phi float [ %4508, %4505 ], [ %4091, %4502 ], [ %4518, %4510 ]
  %4523 = phi float [ %4509, %4505 ], [ %4092, %4502 ], [ %4519, %4510 ]
  %4524 = call float @dx.op.dot3.f32(i32 55, float %4371, float %4372, float %4373, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4526 = extractvalue %dx.types.CBufRet.f32 %4525, 0
  %4527 = extractvalue %dx.types.CBufRet.f32 %4525, 1
  %4528 = fmul fast float %4527, %4524
  %4529 = fadd fast float %4528, %4526
  %4530 = call float @dx.op.unary.f32(i32 7, float %4529)  ; Saturate(value)
  %4531 = bitcast float %4156 to i32
  %4532 = and i32 %4531, 65535
  %4533 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4532)  ; LegacyF16ToF32(value)
  %4534 = lshr i32 %4531, 16
  %4535 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4534)  ; LegacyF16ToF32(value)
  %4536 = fcmp fast oge float %4533, 0.000000e+00
  %4537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4538 = extractvalue %dx.types.CBufRet.f32 %4537, 0
  %4539 = select i1 %4536, float %4533, float %4538
  %4540 = fadd fast float %4539, %4535
  %4541 = fsub fast float %4530, %4089
  %4542 = fmul fast float %4541, %4317
  %4543 = fadd fast float %4542, %4089
  %4544 = fmul fast float %4540, %4317
  %4545 = call float @dx.op.binary.f32(i32 35, float %4088, float %4544)  ; FMax(a,b)
  %4546 = and i32 %4247, 16
  %4547 = icmp eq i32 %4546, 0
  br i1 %4547, label %4569, label %4548

; <label>:4548                                    ; preds = %4520
  %4549 = add i32 %4159, 0
  %4550 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4549, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4551 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4550, %dx.types.Handle %4330, float %4258, float %4261, float undef, float undef, i32 0, i32 0, i32 undef, float %4263, float %4265, float undef, float %4267, float %4269, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4552 = extractvalue %dx.types.ResRet.f32 %4551, 0
  %4553 = extractvalue %dx.types.ResRet.f32 %4551, 1
  %4554 = extractvalue %dx.types.ResRet.f32 %4551, 2
  %4555 = and i32 %4449, 65535
  %4556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4555)  ; LegacyF16ToF32(value)
  %4557 = fmul fast float %4552, %4153
  %4558 = fmul fast float %4553, %4154
  %4559 = fmul fast float %4554, %4155
  %4560 = and i32 %4247, 16384
  %4561 = icmp ne i32 %4560, 0
  %4562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4563 = extractvalue %dx.types.CBufRet.f32 %4562, 0
  %4564 = select i1 %4561, float %4563, float 1.000000e+00
  %4565 = fmul fast float %4564, %4556
  %4566 = fmul fast float %4557, %4565
  %4567 = fmul fast float %4558, %4565
  %4568 = fmul fast float %4559, %4565
  br label %4569

; <label>:4569                                    ; preds = %4548, %4520
  %4570 = phi float [ %4566, %4548 ], [ 0.000000e+00, %4520 ]
  %4571 = phi float [ %4567, %4548 ], [ 0.000000e+00, %4520 ]
  %4572 = phi float [ %4568, %4548 ], [ 0.000000e+00, %4520 ]
  %4573 = fsub fast float %4570, %4098
  %4574 = fsub fast float %4571, %4099
  %4575 = fsub fast float %4572, %4100
  %4576 = fmul fast float %4573, %4317
  %4577 = fmul fast float %4574, %4317
  %4578 = fmul fast float %4575, %4317
  %4579 = fadd fast float %4576, %4098
  %4580 = fadd fast float %4577, %4099
  %4581 = fadd fast float %4578, %4100
  br label %4212

; <label>:4582                                    ; preds = %4212
  br label %4583

; <label>:4583                                    ; preds = %4582, %4022
  %4584 = phi float [ 0.000000e+00, %4022 ], [ %4213, %4582 ]
  %4585 = phi float [ %3992, %4022 ], [ %4214, %4582 ]
  %4586 = phi float [ %3990, %4022 ], [ %4215, %4582 ]
  %4587 = phi float [ %3983, %4022 ], [ %4216, %4582 ]
  %4588 = phi float [ %3984, %4022 ], [ %4217, %4582 ]
  %4589 = phi float [ %3985, %4022 ], [ %4218, %4582 ]
  %4590 = phi float [ 0.000000e+00, %4022 ], [ %4219, %4582 ]
  %4591 = phi float [ 0.000000e+00, %4022 ], [ %4220, %4582 ]
  %4592 = phi float [ %3980, %4022 ], [ %4221, %4582 ]
  %4593 = phi float [ %3981, %4022 ], [ %4222, %4582 ]
  %4594 = phi float [ %3982, %4022 ], [ %4223, %4582 ]
  %4595 = phi float [ %3977, %4022 ], [ %4224, %4582 ]
  %4596 = phi float [ %3978, %4022 ], [ %4225, %4582 ]
  %4597 = phi float [ %3979, %4022 ], [ %4226, %4582 ]
  %4598 = phi float [ %4018, %4022 ], [ %4227, %4582 ]
  %4599 = phi float [ %4019, %4022 ], [ %4228, %4582 ]
  %4600 = phi float [ %4020, %4022 ], [ %4229, %4582 ]
  %4601 = phi float [ %3988, %4022 ], [ %4230, %4582 ]
  %4602 = phi float [ %3987, %4022 ], [ %4231, %4582 ]
  %4603 = phi float [ 0.000000e+00, %4022 ], [ %4232, %4582 ]
  %4604 = phi float [ %3986, %4022 ], [ %4233, %4582 ]
  %4605 = phi float [ %3974, %4022 ], [ %4234, %4582 ]
  %4606 = phi float [ %3975, %4022 ], [ %4235, %4582 ]
  %4607 = phi float [ %3976, %4022 ], [ %4236, %4582 ]
  %4608 = call float @dx.op.dot3.f32(i32 55, float %4598, float %4599, float %4600, float %4598, float %4599, float %4600)  ; Dot3(ax,ay,az,bx,by,bz)
  %4609 = call float @dx.op.unary.f32(i32 25, float %4608)  ; Rsqrt(value)
  %4610 = fmul fast float %4609, %4598
  %4611 = fmul fast float %4609, %4599
  %4612 = fmul fast float %4609, %4600
  %4613 = fadd fast float %4603, %1160
  %4614 = call float @dx.op.unary.f32(i32 7, float %4613)  ; Saturate(value)
  %4615 = call float @dx.op.dot3.f32(i32 55, float %4610, float %4611, float %4612, float %4610, float %4611, float %4612)  ; Dot3(ax,ay,az,bx,by,bz)
  %4616 = call float @dx.op.unary.f32(i32 25, float %4615)  ; Rsqrt(value)
  %4617 = fmul fast float %4616, %4610
  %4618 = fmul fast float %4616, %4611
  %4619 = fmul fast float %4616, %4612
  br label %4620

; <label>:4620                                    ; preds = %4583, %3971
  %4621 = phi float [ %4617, %4583 ], [ %4018, %3971 ]
  %4622 = phi float [ %4618, %4583 ], [ %4019, %3971 ]
  %4623 = phi float [ %4619, %4583 ], [ %4020, %3971 ]
  %4624 = phi float [ %4605, %4583 ], [ %3974, %3971 ]
  %4625 = phi float [ %4606, %4583 ], [ %3975, %3971 ]
  %4626 = phi float [ %4607, %4583 ], [ %3976, %3971 ]
  %4627 = phi float [ %4592, %4583 ], [ %3980, %3971 ]
  %4628 = phi float [ %4593, %4583 ], [ %3981, %3971 ]
  %4629 = phi float [ %4594, %4583 ], [ %3982, %3971 ]
  %4630 = phi float [ %4587, %4583 ], [ %3983, %3971 ]
  %4631 = phi float [ %4588, %4583 ], [ %3984, %3971 ]
  %4632 = phi float [ %4589, %4583 ], [ %3985, %3971 ]
  %4633 = phi float [ %4595, %4583 ], [ %3977, %3971 ]
  %4634 = phi float [ %4596, %4583 ], [ %3978, %3971 ]
  %4635 = phi float [ %4597, %4583 ], [ %3979, %3971 ]
  %4636 = phi float [ %4604, %4583 ], [ %3986, %3971 ]
  %4637 = phi float [ %4614, %4583 ], [ %1160, %3971 ]
  %4638 = phi float [ %4602, %4583 ], [ %3987, %3971 ]
  %4639 = phi float [ %4601, %4583 ], [ %3988, %3971 ]
  %4640 = phi float [ %4591, %4583 ], [ 0.000000e+00, %3971 ]
  %4641 = phi float [ %4590, %4583 ], [ 0.000000e+00, %3971 ]
  %4642 = phi float [ %4584, %4583 ], [ 0.000000e+00, %3971 ]
  %4643 = phi float [ %4585, %4583 ], [ %3992, %3971 ]
  %4644 = phi float [ %4586, %4583 ], [ %3990, %3971 ]
  %4645 = fadd fast float %4636, 0xBFB99999A0000000
  %4646 = call float @dx.op.unary.f32(i32 7, float %4645)  ; Saturate(value)
  %4647 = fmul fast float %4646, 0x3FF1C71C80000000
  %4648 = call float @dx.op.binary.f32(i32 36, float %4636, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4649 = fsub fast float 1.000000e+00, %4647
  %4650 = call float @dx.op.unary.f32(i32 7, float %4649)  ; Saturate(value)
  %4651 = fmul fast float %4650, %4624
  %4652 = fmul fast float %4650, %4625
  %4653 = fmul fast float %4650, %4626
  %4654 = call float @dx.op.unary.f32(i32 7, float %4651)  ; Saturate(value)
  %4655 = call float @dx.op.unary.f32(i32 7, float %4652)  ; Saturate(value)
  %4656 = call float @dx.op.unary.f32(i32 7, float %4653)  ; Saturate(value)
  %4657 = fmul fast float %4647, %4624
  %4658 = fmul fast float %4647, %4625
  %4659 = fmul fast float %4647, %4626
  %4660 = fadd fast float %4657, %4648
  %4661 = fadd fast float %4658, %4648
  %4662 = fadd fast float %4659, %4648
  %4663 = call float @dx.op.unary.f32(i32 7, float %4660)  ; Saturate(value)
  %4664 = call float @dx.op.unary.f32(i32 7, float %4661)  ; Saturate(value)
  %4665 = call float @dx.op.unary.f32(i32 7, float %4662)  ; Saturate(value)
  %4666 = call float @dx.op.unary.f32(i32 7, float %4638)  ; Saturate(value)
  %4667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %4668 = extractvalue %dx.types.ResRet.i32 %4667, 0
  %4669 = and i32 %4668, 1
  %4670 = icmp eq i32 %4669, 0
  br i1 %4670, label %4685, label %4671

; <label>:4671                                    ; preds = %4620
  %4672 = call float @dx.op.binary.f32(i32 35, float %4655, float %4656)  ; FMax(a,b)
  %4673 = call float @dx.op.binary.f32(i32 35, float %4654, float %4672)  ; FMax(a,b)
  %4674 = fcmp fast ogt float %4673, 0.000000e+00
  %4675 = bitcast float %4673 to i32
  %4676 = sub nsw i32 2129859010, %4675
  %4677 = bitcast i32 %4676 to float
  %4678 = select i1 %4674, float %4677, float 0.000000e+00
  %4679 = fmul fast float %4654, %4627
  %4680 = fmul fast float %4655, %4628
  %4681 = fmul fast float %4656, %4629
  %4682 = fmul fast float %4679, %4678
  %4683 = fmul fast float %4680, %4678
  %4684 = fmul fast float %4681, %4678
  br label %4685

; <label>:4685                                    ; preds = %4671, %4620
  %4686 = phi float [ %4682, %4671 ], [ %4627, %4620 ]
  %4687 = phi float [ %4683, %4671 ], [ %4628, %4620 ]
  %4688 = phi float [ %4684, %4671 ], [ %4629, %4620 ]
  %4689 = call float @dx.op.binary.f32(i32 36, float %4630, float 1.270000e+02)  ; FMin(a,b)
  %4690 = call float @dx.op.binary.f32(i32 36, float %4631, float 1.270000e+02)  ; FMin(a,b)
  %4691 = call float @dx.op.binary.f32(i32 36, float %4632, float 1.270000e+02)  ; FMin(a,b)
  %4692 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4693 = extractvalue %dx.types.CBufRet.i32 %4692, 3
  %4694 = and i32 %4693, 8
  %4695 = icmp ne i32 %4694, 0
  %4696 = call float @dx.op.binary.f32(i32 35, float %4654, float %4624)  ; FMax(a,b)
  %4697 = call float @dx.op.binary.f32(i32 35, float %4655, float %4624)  ; FMax(a,b)
  %4698 = call float @dx.op.binary.f32(i32 35, float %4656, float %4624)  ; FMax(a,b)
  %4699 = call float @dx.op.dot3.f32(i32 55, float %4654, float %4655, float %4656, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4700 = select i1 %248, float %4624, float %4654
  %4701 = select i1 %248, float %4699, float %4655
  %4702 = select i1 %248, float 1.000000e+00, float %4656
  %4703 = select i1 %4695, float %4696, float %4700
  %4704 = select i1 %4695, float %4697, float %4701
  %4705 = select i1 %4695, float %4698, float %4702
  %4706 = call float @dx.op.dot3.f32(i32 55, float %4686, float %4687, float %4688, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4707 = select i1 %248, float %4706, float %4686
  %4708 = select i1 %248, float %4706, float %4687
  %4709 = select i1 %248, float %4706, float %4688
  %4710 = add i32 %49, 508
  %4711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4710, i32 undef)  ; BufferLoad(srv,index,wot)
  %4712 = extractvalue %dx.types.ResRet.i32 %4711, 0
  %4713 = add i32 %4712, 0
  %4714 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4713, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4715 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4714, %dx.types.Handle %105, float %86, float %87, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4716 = extractvalue %dx.types.ResRet.f32 %4715, 0
  %4717 = extractvalue %dx.types.ResRet.f32 %4715, 1
  %4718 = extractvalue %dx.types.ResRet.f32 %4715, 2
  %4719 = extractvalue %dx.types.ResRet.f32 %4715, 3
  %4720 = fmul fast float %4716, 2.000000e+00
  %4721 = fadd fast float %4720, -1.000000e+00
  %4722 = fmul fast float %4717, 2.000000e+00
  %4723 = fadd fast float %4722, -1.000000e+00
  %4724 = fmul fast float %4721, %79
  %4725 = fmul fast float %4721, %80
  %4726 = fmul fast float %4721, %81
  %4727 = fmul fast float %4723, %127
  %4728 = fmul fast float %4723, %128
  %4729 = fmul fast float %4723, %129
  %4730 = fadd fast float %4724, %4727
  %4731 = fadd fast float %4725, %4728
  %4732 = fadd fast float %4726, %4729
  %4733 = call float @dx.op.dot3.f32(i32 55, float %4730, float %4731, float %4732, float %4730, float %4731, float %4732)  ; Dot3(ax,ay,az,bx,by,bz)
  %4734 = call float @dx.op.unary.f32(i32 25, float %4733)  ; Rsqrt(value)
  %4735 = fmul fast float %4730, %4734
  %4736 = fmul fast float %4731, %4734
  %4737 = fmul fast float %4732, %4734
  %4738 = add i32 %49, 360
  %4739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4738, i32 undef)  ; BufferLoad(srv,index,wot)
  %4740 = extractvalue %dx.types.ResRet.i32 %4739, 0
  %4741 = bitcast i32 %4740 to float
  %4742 = fmul fast float %4741, %4718
  %4743 = call float @dx.op.unary.f32(i32 7, float %4742)  ; Saturate(value)
  %4744 = extractvalue %dx.types.ResRet.i32 %4739, 1
  %4745 = bitcast i32 %4744 to float
  %4746 = fmul fast float %4745, %4719
  %4747 = fmul fast float %4746, %4621
  %4748 = fmul fast float %4746, %4622
  %4749 = fmul fast float %4746, %4623
  %4750 = fadd fast float %4747, %4735
  %4751 = fadd fast float %4748, %4736
  %4752 = fadd fast float %4749, %4737
  %4753 = call float @dx.op.dot3.f32(i32 55, float %4750, float %4751, float %4752, float %4750, float %4751, float %4752)  ; Dot3(ax,ay,az,bx,by,bz)
  %4754 = call float @dx.op.unary.f32(i32 25, float %4753)  ; Rsqrt(value)
  %4755 = fmul fast float %4750, %4754
  %4756 = fmul fast float %4751, %4754
  %4757 = fmul fast float %4752, %4754
  %4758 = and i32 %224, 3
  %4759 = select i1 %218, i32 %4758, i32 0
  %4760 = icmp eq i32 %4759, 1
  br i1 %4760, label %4761, label %4837

; <label>:4761                                    ; preds = %4685
  %4762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4763 = extractvalue %dx.types.CBufRet.f32 %4762, 0
  %4764 = extractvalue %dx.types.CBufRet.f32 %4762, 1
  %4765 = fadd fast float %4763, %187
  %4766 = fadd fast float %4764, %188
  %4767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4768 = extractvalue %dx.types.CBufRet.f32 %4767, 0
  %4769 = extractvalue %dx.types.CBufRet.f32 %4767, 1
  %4770 = fsub fast float %4765, %4768
  %4771 = fsub fast float %4766, %4769
  %4772 = fmul fast float %4770, %4770
  %4773 = fmul fast float %4771, %4771
  %4774 = fadd fast float %4772, %4773
  %4775 = call float @dx.op.unary.f32(i32 24, float %4774)  ; Sqrt(value)
  %4776 = extractvalue %dx.types.CBufRet.f32 %4767, 2
  %4777 = fcmp fast olt float %4775, %4776
  br i1 %4777, label %4778, label %4831

; <label>:4778                                    ; preds = %4761
  %4779 = extractvalue %dx.types.CBufRet.f32 %4762, 2
  %4780 = fadd fast float %4779, %189
  %4781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4782 = extractvalue %dx.types.CBufRet.f32 %4781, 0
  %4783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4784 = extractvalue %dx.types.CBufRet.f32 %4783, 0
  %4785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4786 = extractvalue %dx.types.CBufRet.f32 %4785, 0
  %4787 = extractvalue %dx.types.CBufRet.f32 %4781, 1
  %4788 = extractvalue %dx.types.CBufRet.f32 %4783, 1
  %4789 = extractvalue %dx.types.CBufRet.f32 %4785, 1
  %4790 = extractvalue %dx.types.CBufRet.f32 %4781, 3
  %4791 = extractvalue %dx.types.CBufRet.f32 %4783, 3
  %4792 = extractvalue %dx.types.CBufRet.f32 %4785, 3
  %4793 = fadd fast float %4790, %4765
  %4794 = fadd fast float %4791, %4766
  %4795 = fadd fast float %4780, %4792
  %4796 = fmul fast float %4793, %4782
  %4797 = call float @dx.op.tertiary.f32(i32 46, float %4794, float %4784, float %4796)  ; FMad(a,b,c)
  %4798 = call float @dx.op.tertiary.f32(i32 46, float %4795, float %4786, float %4797)  ; FMad(a,b,c)
  %4799 = fmul fast float %4793, %4787
  %4800 = call float @dx.op.tertiary.f32(i32 46, float %4794, float %4788, float %4799)  ; FMad(a,b,c)
  %4801 = call float @dx.op.tertiary.f32(i32 46, float %4795, float %4789, float %4800)  ; FMad(a,b,c)
  %4802 = fsub fast float %4798, %4790
  %4803 = fsub fast float %4801, %4791
  %4804 = fsub fast float %4802, %4768
  %4805 = fadd fast float %4804, %4776
  %4806 = fsub fast float %4803, %4769
  %4807 = fadd fast float %4806, %4776
  %4808 = extractvalue %dx.types.CBufRet.f32 %4767, 3
  %4809 = fmul fast float %4805, %4808
  %4810 = fmul fast float %4807, %4808
  %4811 = call float @dx.op.unary.f32(i32 7, float %4809)  ; Saturate(value)
  %4812 = call float @dx.op.unary.f32(i32 7, float %4810)  ; Saturate(value)
  %4813 = fsub fast float 1.000000e+00, %4811
  %4814 = fsub fast float 1.000000e+00, %4812
  %4815 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %43, float %4813, float %4814, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4816 = extractvalue %dx.types.ResRet.f32 %4815, 0
  %4817 = fcmp fast ugt float %4816, 0.000000e+00
  br i1 %4817, label %4818, label %4831

; <label>:4818                                    ; preds = %4778
  %4819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4820 = extractvalue %dx.types.CBufRet.f32 %4819, 2
  %4821 = fmul fast float %4820, %4816
  %4822 = extractvalue %dx.types.CBufRet.f32 %4819, 3
  %4823 = fadd fast float %4822, %4821
  %4824 = extractvalue %dx.types.CBufRet.f32 %4785, 2
  %4825 = fadd fast float %4823, %4792
  %4826 = fmul fast float %4798, %4786
  %4827 = call float @dx.op.tertiary.f32(i32 46, float %4801, float %4789, float %4826)  ; FMad(a,b,c)
  %4828 = call float @dx.op.tertiary.f32(i32 46, float %4825, float %4824, float %4827)  ; FMad(a,b,c)
  %4829 = fsub fast float %4828, %4792
  %4830 = fsub fast float %4829, %4779
  br label %4831

; <label>:4831                                    ; preds = %4818, %4778, %4761
  %4832 = phi i1 [ true, %4818 ], [ false, %4778 ], [ false, %4761 ]
  %4833 = phi float [ %4830, %4818 ], [ -1.310720e+05, %4778 ], [ -1.310720e+05, %4761 ]
  %4834 = fsub fast float %4833, %189
  %4835 = call float @dx.op.unary.f32(i32 7, float %4834)  ; Saturate(value)
  %4836 = select i1 %4832, float %4835, float 1.000000e+00
  br label %4837

; <label>:4837                                    ; preds = %4831, %4685
  %4838 = phi float [ %4836, %4831 ], [ 0.000000e+00, %4685 ]
  %4839 = icmp eq i32 %4759, 3
  %4840 = select i1 %4839, float 1.000000e+00, float %4838
  %4841 = call float @dx.op.binary.f32(i32 35, float %4642, float %4840)  ; FMax(a,b)
  %4842 = fcmp fast olt float %4840, 1.000000e+00
  %4843 = fcmp uge float %64, 0.000000e+00
  %4844 = and i1 %4843, %4842
  br i1 %4844, label %4845, label %4855

; <label>:4845                                    ; preds = %4837
  %4846 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %41, float %64, float %65, float %66, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4847 = extractvalue %dx.types.ResRet.f32 %4846, 0
  %4848 = extractvalue %dx.types.ResRet.f32 %4846, 1
  %4849 = extractvalue %dx.types.ResRet.f32 %4846, 2
  %4850 = fadd fast float %4847, %4841
  %4851 = fcmp ule float %63, 0.000000e+00
  %4852 = call float @dx.op.dot3.f32(i32 55, float %60, float %61, float %62, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4853 = select i1 %4851, float %4852, float 1.000000e+00
  %4854 = fmul fast float %4853, %4849
  br label %4855

; <label>:4855                                    ; preds = %4845, %4837
  %4856 = phi float [ %4850, %4845 ], [ %4841, %4837 ]
  %4857 = phi float [ %4848, %4845 ], [ 0.000000e+00, %4837 ]
  %4858 = phi float [ %4854, %4845 ], [ 0.000000e+00, %4837 ]
  %4859 = call float @dx.op.unary.f32(i32 7, float %4856)  ; Saturate(value)
  %4860 = call float @dx.op.unary.f32(i32 7, float %4857)  ; Saturate(value)
  %4861 = call float @dx.op.unary.f32(i32 7, float %4858)  ; Saturate(value)
  %4862 = fcmp fast une float %4860, 0.000000e+00
  %4863 = fcmp fast une float %4861, 0.000000e+00
  %4864 = or i1 %4862, %4863
  br i1 %4864, label %4865, label %5440

; <label>:4865                                    ; preds = %4855
  br i1 %4862, label %4866, label %5139

; <label>:4866                                    ; preds = %4865
  %4867 = call float @dx.op.unary.f32(i32 23, float %4639)  ; Log(value)
  %4868 = fmul fast float %4867, 4.000000e+00
  %4869 = call float @dx.op.unary.f32(i32 21, float %4868)  ; Exp(value)
  %4870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4871 = extractvalue %dx.types.CBufRet.f32 %4870, 0
  %4872 = fmul fast float %4871, %51
  %4873 = fmul fast float %4871, %52
  %4874 = fmul fast float %4871, %53
  %4875 = call float @dx.op.unary.f32(i32 6, float %60)  ; FAbs(value)
  %4876 = call float @dx.op.unary.f32(i32 6, float %61)  ; FAbs(value)
  %4877 = call float @dx.op.unary.f32(i32 6, float %62)  ; FAbs(value)
  %4878 = call float @dx.op.unary.f32(i32 23, float %4875)  ; Log(value)
  %4879 = call float @dx.op.unary.f32(i32 23, float %4876)  ; Log(value)
  %4880 = call float @dx.op.unary.f32(i32 23, float %4877)  ; Log(value)
  %4881 = fmul fast float %4878, 4.000000e+00
  %4882 = fmul fast float %4879, 4.000000e+00
  %4883 = fmul fast float %4880, 4.000000e+00
  %4884 = call float @dx.op.unary.f32(i32 21, float %4881)  ; Exp(value)
  %4885 = call float @dx.op.unary.f32(i32 21, float %4882)  ; Exp(value)
  %4886 = call float @dx.op.unary.f32(i32 21, float %4883)  ; Exp(value)
  %4887 = fadd fast float %4885, %4884
  %4888 = fadd fast float %4887, %4886
  %4889 = fdiv fast float 1.000000e+00, %4888
  %4890 = fmul fast float %4889, %4884
  %4891 = fcmp fast ogt float %60, 0.000000e+00
  %4892 = fcmp fast ogt float %61, 0.000000e+00
  %4893 = fcmp fast ogt float %62, 0.000000e+00
  %4894 = fcmp fast olt float %60, 0.000000e+00
  %4895 = fcmp fast olt float %61, 0.000000e+00
  %4896 = fcmp fast olt float %62, 0.000000e+00
  %4897 = zext i1 %4891 to i32
  %4898 = zext i1 %4892 to i32
  %4899 = zext i1 %4893 to i32
  %4900 = zext i1 %4894 to i32
  %4901 = zext i1 %4895 to i32
  %4902 = zext i1 %4896 to i32
  %4903 = sub nsw i32 %4897, %4900
  %4904 = sub nsw i32 %4898, %4901
  %4905 = sub nsw i32 %4899, %4902
  %4906 = call float @dx.op.unary.f32(i32 83, float %4872)  ; DerivCoarseX(value)
  %4907 = call float @dx.op.unary.f32(i32 83, float %4873)  ; DerivCoarseX(value)
  %4908 = call float @dx.op.unary.f32(i32 83, float %4874)  ; DerivCoarseX(value)
  %4909 = call float @dx.op.unary.f32(i32 84, float %4872)  ; DerivCoarseY(value)
  %4910 = call float @dx.op.unary.f32(i32 84, float %4873)  ; DerivCoarseY(value)
  %4911 = call float @dx.op.unary.f32(i32 84, float %4874)  ; DerivCoarseY(value)
  %4912 = fcmp fast ole float %259, %4890
  %4913 = fmul fast float %4889, %4887
  %4914 = fcmp fast ole float %259, %4913
  %4915 = select i1 %4914, float %4874, float %4872
  %4916 = select i1 %4914, float %4872, float %4873
  %4917 = select i1 %4912, float %4873, float %4915
  %4918 = select i1 %4912, float %4874, float %4916
  %4919 = select i1 %4914, float %4908, float %4906
  %4920 = select i1 %4914, float %4906, float %4907
  %4921 = select i1 %4912, float %4907, float %4919
  %4922 = select i1 %4912, float %4908, float %4920
  %4923 = select i1 %4914, float %4911, float %4909
  %4924 = select i1 %4914, float %4909, float %4910
  %4925 = select i1 %4912, float %4910, float %4923
  %4926 = select i1 %4912, float %4911, float %4924
  %4927 = call float @dx.op.unary.f32(i32 27, float %4917)  ; Round_ni(value)
  %4928 = call float @dx.op.unary.f32(i32 27, float %4918)  ; Round_ni(value)
  %4929 = fptosi float %4927 to i32
  %4930 = fptosi float %4928 to i32
  %4931 = xor i32 %4930, %4929
  %4932 = sitofp i32 %4931 to float
  %4933 = fptosi float %4932 to i32
  %4934 = sitofp i32 %4933 to float
  %4935 = fmul fast float %4934, 0x3FE3C6EF40000000
  %4936 = frem fast float %4927, 2.560000e+02
  %4937 = frem fast float %4928, 2.560000e+02
  %4938 = fptoui float %4936 to i32
  %4939 = fptoui float %4937 to i32
  %4940 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %27, i32 0, i32 %4938, i32 %4939, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4941 = extractvalue %dx.types.ResRet.f32 %4940, 0
  %4942 = extractvalue %dx.types.ResRet.f32 %4940, 1
  %4943 = extractvalue %dx.types.ResRet.f32 %4940, 2
  %4944 = fadd fast float %4941, %4935
  %4945 = fadd fast float %4942, %4935
  %4946 = fadd fast float %4943, %4935
  %4947 = call float @dx.op.unary.f32(i32 22, float %4944)  ; Frc(value)
  %4948 = call float @dx.op.unary.f32(i32 22, float %4945)  ; Frc(value)
  %4949 = call float @dx.op.unary.f32(i32 22, float %4946)  ; Frc(value)
  %4950 = fmul fast float %4949, 0x401921FB60000000
  %4951 = call float @dx.op.unary.f32(i32 13, float %4950)  ; Sin(value)
  %4952 = call float @dx.op.unary.f32(i32 12, float %4950)  ; Cos(value)
  %4953 = fsub fast float -0.000000e+00, %4952
  %4954 = fmul fast float %4952, %4917
  %4955 = call float @dx.op.tertiary.f32(i32 46, float %4951, float %4918, float %4954)  ; FMad(a,b,c)
  %4956 = fmul fast float %4951, %4917
  %4957 = call float @dx.op.tertiary.f32(i32 46, float %4953, float %4918, float %4956)  ; FMad(a,b,c)
  %4958 = fadd fast float %4955, %4947
  %4959 = fadd fast float %4957, %4948
  %4960 = extractvalue %dx.types.CBufRet.f32 %4870, 3
  %4961 = bitcast float %4960 to i32
  %4962 = icmp eq i32 %4961, 0
  br i1 %4962, label %5001, label %4963

; <label>:4963                                    ; preds = %4866
  %4964 = add i32 %4961, 0
  %4965 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4964, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4966 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4965, %dx.types.Handle %105, float %4958, float %4959, float undef, float undef, i32 0, i32 0, i32 undef, float %4921, float %4922, float undef, float %4925, float %4926, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4967 = extractvalue %dx.types.ResRet.f32 %4966, 0
  %4968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4969 = extractvalue %dx.types.CBufRet.f32 %4968, 1
  %4970 = extractvalue %dx.types.CBufRet.f32 %4968, 2
  %4971 = fsub fast float 1.000000e+00, %4860
  %4972 = call float @dx.op.binary.f32(i32 35, float %4971, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4973 = bitcast float %4860 to i32
  %4974 = sitofp i32 %4973 to float
  %4975 = fadd fast float %4974, 0xC1CFBF8940000000
  %4976 = fmul fast float %4970, %4975
  %4977 = fadd fast float %4976, 0x41CFBF8940000000
  %4978 = fptosi float %4977 to i32
  %4979 = bitcast i32 %4978 to float
  %4980 = bitcast float %4972 to i32
  %4981 = sitofp i32 %4980 to float
  %4982 = fadd fast float %4981, 0xC1CFBF8940000000
  %4983 = fmul fast float %4982, %4970
  %4984 = fadd fast float %4983, 0x41CFBF8940000000
  %4985 = fptosi float %4984 to i32
  %4986 = bitcast i32 %4985 to float
  %4987 = fmul fast float %4979, %4969
  %4988 = fmul fast float %4986, %4969
  %4989 = fsub fast float %4972, %4987
  %4990 = fadd fast float %4988, %4972
  %4991 = call float @dx.op.unary.f32(i32 7, float %4989)  ; Saturate(value)
  %4992 = call float @dx.op.unary.f32(i32 7, float %4990)  ; Saturate(value)
  %4993 = fsub fast float %4967, %4991
  %4994 = fsub fast float %4992, %4991
  %4995 = bitcast float %4994 to i32
  %4996 = sub nsw i32 2129859010, %4995
  %4997 = bitcast i32 %4996 to float
  %4998 = fmul fast float %4997, %4993
  %4999 = call float @dx.op.unary.f32(i32 7, float %4998)  ; Saturate(value)
  %5000 = fcmp fast olt float %4999, 0x3F70101020000000
  br i1 %5000, label %5139, label %5001

; <label>:5001                                    ; preds = %4963, %4866
  %5002 = phi float [ %4999, %4963 ], [ %4860, %4866 ]
  %5003 = fmul fast float %5002, %4869
  %5004 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5005 = extractvalue %dx.types.CBufRet.i32 %5004, 1
  %5006 = extractvalue %dx.types.CBufRet.i32 %5004, 0
  %5007 = add i32 %5006, 0
  %5008 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5007, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5009 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5008, %dx.types.Handle %104, float %4958, float %4959, float undef, float undef, i32 0, i32 0, i32 undef, float %4921, float %4922, float undef, float %4925, float %4926, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5010 = extractvalue %dx.types.ResRet.f32 %5009, 0
  %5011 = extractvalue %dx.types.ResRet.f32 %5009, 1
  %5012 = extractvalue %dx.types.ResRet.f32 %5009, 2
  %5013 = extractvalue %dx.types.ResRet.f32 %5009, 3
  %5014 = and i32 %5005, 255
  %5015 = uitofp i32 %5014 to float
  %5016 = lshr i32 %5005, 8
  %5017 = and i32 %5016, 255
  %5018 = uitofp i32 %5017 to float
  %5019 = fmul fast float %5013, %5015
  %5020 = fadd fast float %5019, %5018
  %5021 = fmul fast float %5020, 0x3F70101000000000
  %5022 = fadd fast float %5021, 0xBFB99999A0000000
  %5023 = call float @dx.op.unary.f32(i32 7, float %5022)  ; Saturate(value)
  %5024 = fmul fast float %5023, 0x3FF1C71C80000000
  %5025 = call float @dx.op.binary.f32(i32 36, float %5021, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5026 = fsub fast float 1.000000e+00, %5024
  %5027 = call float @dx.op.unary.f32(i32 7, float %5026)  ; Saturate(value)
  %5028 = fmul fast float %5027, %5010
  %5029 = fmul fast float %5027, %5011
  %5030 = fmul fast float %5027, %5012
  %5031 = call float @dx.op.unary.f32(i32 7, float %5028)  ; Saturate(value)
  %5032 = call float @dx.op.unary.f32(i32 7, float %5029)  ; Saturate(value)
  %5033 = call float @dx.op.unary.f32(i32 7, float %5030)  ; Saturate(value)
  %5034 = fmul fast float %5024, %5010
  %5035 = fmul fast float %5024, %5011
  %5036 = fmul fast float %5024, %5012
  %5037 = fadd fast float %5034, %5025
  %5038 = fadd fast float %5035, %5025
  %5039 = fadd fast float %5036, %5025
  %5040 = call float @dx.op.unary.f32(i32 7, float %5037)  ; Saturate(value)
  %5041 = call float @dx.op.unary.f32(i32 7, float %5038)  ; Saturate(value)
  %5042 = call float @dx.op.unary.f32(i32 7, float %5039)  ; Saturate(value)
  %5043 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5044 = extractvalue %dx.types.CBufRet.i32 %5043, 3
  %5045 = extractvalue %dx.types.CBufRet.i32 %5043, 2
  %5046 = add i32 %5045, 0
  %5047 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5046, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5048 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5047, %dx.types.Handle %104, float %4958, float %4959, float undef, float undef, i32 0, i32 0, i32 undef, float %4921, float %4922, float undef, float %4925, float %4926, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5049 = extractvalue %dx.types.ResRet.f32 %5048, 0
  %5050 = extractvalue %dx.types.ResRet.f32 %5048, 1
  %5051 = extractvalue %dx.types.ResRet.f32 %5048, 2
  %5052 = extractvalue %dx.types.ResRet.f32 %5048, 3
  %5053 = and i32 %5044, 255
  %5054 = uitofp i32 %5053 to float
  %5055 = lshr i32 %5044, 8
  %5056 = and i32 %5055, 255
  %5057 = uitofp i32 %5056 to float
  %5058 = lshr i32 %5044, 16
  %5059 = and i32 %5058, 255
  %5060 = uitofp i32 %5059 to float
  %5061 = fmul fast float %5060, 0x3F70101000000000
  %5062 = fmul fast float %5049, %5054
  %5063 = fadd fast float %5062, %5057
  %5064 = fmul fast float %5063, 0x3F70101000000000
  %5065 = fadd fast float %5050, -5.000000e-01
  %5066 = fadd fast float %5052, -5.000000e-01
  %5067 = fmul fast float %5065, %5061
  %5068 = fmul fast float %5066, %5061
  %5069 = fadd fast float %5067, 5.000000e-01
  %5070 = fadd fast float %5068, 5.000000e-01
  %5071 = fmul fast float %5069, 2.000000e+00
  %5072 = fadd fast float %5071, -1.000000e+00
  %5073 = fmul fast float %5070, 2.000000e+00
  %5074 = fadd fast float %5073, -1.000000e+00
  %5075 = fadd fast float %5072, %5074
  %5076 = fmul fast float %5075, 5.000000e-01
  %5077 = fsub fast float %5072, %5074
  %5078 = fmul fast float %5077, 5.000000e-01
  %5079 = call float @dx.op.unary.f32(i32 6, float %5076)  ; FAbs(value)
  %5080 = fsub fast float 1.000000e+00, %5079
  %5081 = call float @dx.op.unary.f32(i32 6, float %5078)  ; FAbs(value)
  %5082 = fsub fast float %5080, %5081
  %5083 = call float @dx.op.dot3.f32(i32 55, float %5076, float %5078, float %5082, float %5076, float %5078, float %5082)  ; Dot3(ax,ay,az,bx,by,bz)
  %5084 = call float @dx.op.unary.f32(i32 25, float %5083)  ; Rsqrt(value)
  %5085 = fmul fast float %5076, %5084
  %5086 = fmul fast float %5078, %5084
  %5087 = select i1 %4914, i32 %4904, i32 %4905
  %5088 = select i1 %4912, i32 %4903, i32 %5087
  %5089 = sitofp i32 %5088 to float
  %5090 = fmul fast float %5082, %5089
  %5091 = fmul fast float %5090, %5084
  %5092 = select i1 %4914, float %5091, float %5086
  %5093 = select i1 %4914, float %5086, float %5091
  %5094 = select i1 %4912, float %5091, float %5085
  %5095 = select i1 %4912, float %5086, float %5092
  %5096 = select i1 %4912, float %5085, float %5093
  %5097 = fsub fast float %5031, %4703
  %5098 = fsub fast float %5032, %4704
  %5099 = fsub fast float %5033, %4705
  %5100 = fmul fast float %5097, %5003
  %5101 = fmul fast float %5098, %5003
  %5102 = fmul fast float %5099, %5003
  %5103 = fadd fast float %5100, %4703
  %5104 = fadd fast float %5101, %4704
  %5105 = fadd fast float %5102, %4705
  %5106 = fsub fast float %5040, %4663
  %5107 = fsub fast float %5041, %4664
  %5108 = fsub fast float %5042, %4665
  %5109 = fmul fast float %5106, %5003
  %5110 = fmul fast float %5107, %5003
  %5111 = fmul fast float %5108, %5003
  %5112 = fadd fast float %5109, %4663
  %5113 = fadd fast float %5110, %4664
  %5114 = fadd fast float %5111, %4665
  %5115 = fadd fast float %5094, %4621
  %5116 = fadd fast float %5095, %4622
  %5117 = fadd fast float %5096, %4623
  %5118 = call float @dx.op.dot3.f32(i32 55, float %5115, float %5116, float %5117, float %5115, float %5116, float %5117)  ; Dot3(ax,ay,az,bx,by,bz)
  %5119 = call float @dx.op.unary.f32(i32 25, float %5118)  ; Rsqrt(value)
  %5120 = fmul fast float %5115, %5119
  %5121 = fmul fast float %5116, %5119
  %5122 = fmul fast float %5117, %5119
  %5123 = fsub fast float %5120, %4621
  %5124 = fsub fast float %5121, %4622
  %5125 = fsub fast float %5122, %4623
  %5126 = fmul fast float %5123, %5003
  %5127 = fmul fast float %5124, %5003
  %5128 = fmul fast float %5125, %5003
  %5129 = fadd fast float %5126, %4621
  %5130 = fadd fast float %5127, %4622
  %5131 = fadd fast float %5128, %4623
  %5132 = call float @dx.op.binary.f32(i32 36, float %4639, float %5051)  ; FMin(a,b)
  %5133 = fsub fast float %5132, %4639
  %5134 = fmul fast float %5133, %5003
  %5135 = fadd fast float %5134, %4639
  %5136 = fsub fast float %5064, %4666
  %5137 = fmul fast float %5136, %5003
  %5138 = fadd fast float %5137, %4666
  br label %5139

; <label>:5139                                    ; preds = %5001, %4963, %4865
  %5140 = phi float [ %5103, %5001 ], [ %4703, %4963 ], [ %4703, %4865 ]
  %5141 = phi float [ %5104, %5001 ], [ %4704, %4963 ], [ %4704, %4865 ]
  %5142 = phi float [ %5105, %5001 ], [ %4705, %4963 ], [ %4705, %4865 ]
  %5143 = phi float [ %5112, %5001 ], [ %4663, %4963 ], [ %4663, %4865 ]
  %5144 = phi float [ %5113, %5001 ], [ %4664, %4963 ], [ %4664, %4865 ]
  %5145 = phi float [ %5114, %5001 ], [ %4665, %4963 ], [ %4665, %4865 ]
  %5146 = phi float [ %5129, %5001 ], [ %4621, %4963 ], [ %4621, %4865 ]
  %5147 = phi float [ %5130, %5001 ], [ %4622, %4963 ], [ %4622, %4865 ]
  %5148 = phi float [ %5131, %5001 ], [ %4623, %4963 ], [ %4623, %4865 ]
  %5149 = phi float [ %5138, %5001 ], [ %4666, %4963 ], [ %4666, %4865 ]
  %5150 = phi float [ %5135, %5001 ], [ %4639, %4963 ], [ %4639, %4865 ]
  br i1 %4863, label %5151, label %5440

; <label>:5151                                    ; preds = %5139
  %5152 = call float @dx.op.unary.f32(i32 23, float %5150)  ; Log(value)
  %5153 = fmul fast float %5152, 4.000000e+00
  %5154 = call float @dx.op.unary.f32(i32 21, float %5153)  ; Exp(value)
  %5155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5156 = extractvalue %dx.types.CBufRet.f32 %5155, 0
  %5157 = fmul fast float %5156, %51
  %5158 = fmul fast float %5156, %52
  %5159 = fmul fast float %5156, %53
  %5160 = call float @dx.op.unary.f32(i32 6, float %60)  ; FAbs(value)
  %5161 = call float @dx.op.unary.f32(i32 6, float %61)  ; FAbs(value)
  %5162 = call float @dx.op.unary.f32(i32 6, float %62)  ; FAbs(value)
  %5163 = call float @dx.op.unary.f32(i32 23, float %5160)  ; Log(value)
  %5164 = call float @dx.op.unary.f32(i32 23, float %5161)  ; Log(value)
  %5165 = call float @dx.op.unary.f32(i32 23, float %5162)  ; Log(value)
  %5166 = fmul fast float %5163, 4.000000e+00
  %5167 = fmul fast float %5164, 4.000000e+00
  %5168 = fmul fast float %5165, 4.000000e+00
  %5169 = call float @dx.op.unary.f32(i32 21, float %5166)  ; Exp(value)
  %5170 = call float @dx.op.unary.f32(i32 21, float %5167)  ; Exp(value)
  %5171 = call float @dx.op.unary.f32(i32 21, float %5168)  ; Exp(value)
  %5172 = fadd fast float %5170, %5169
  %5173 = fadd fast float %5172, %5171
  %5174 = fdiv fast float 1.000000e+00, %5173
  %5175 = fmul fast float %5174, %5169
  %5176 = fcmp fast ogt float %60, 0.000000e+00
  %5177 = fcmp fast ogt float %61, 0.000000e+00
  %5178 = fcmp fast ogt float %62, 0.000000e+00
  %5179 = fcmp fast olt float %60, 0.000000e+00
  %5180 = fcmp fast olt float %61, 0.000000e+00
  %5181 = fcmp fast olt float %62, 0.000000e+00
  %5182 = zext i1 %5176 to i32
  %5183 = zext i1 %5177 to i32
  %5184 = zext i1 %5178 to i32
  %5185 = zext i1 %5179 to i32
  %5186 = zext i1 %5180 to i32
  %5187 = zext i1 %5181 to i32
  %5188 = sub nsw i32 %5182, %5185
  %5189 = sub nsw i32 %5183, %5186
  %5190 = sub nsw i32 %5184, %5187
  %5191 = call float @dx.op.unary.f32(i32 83, float %5157)  ; DerivCoarseX(value)
  %5192 = call float @dx.op.unary.f32(i32 83, float %5158)  ; DerivCoarseX(value)
  %5193 = call float @dx.op.unary.f32(i32 83, float %5159)  ; DerivCoarseX(value)
  %5194 = call float @dx.op.unary.f32(i32 84, float %5157)  ; DerivCoarseY(value)
  %5195 = call float @dx.op.unary.f32(i32 84, float %5158)  ; DerivCoarseY(value)
  %5196 = call float @dx.op.unary.f32(i32 84, float %5159)  ; DerivCoarseY(value)
  %5197 = fcmp fast ole float %259, %5175
  %5198 = fmul fast float %5174, %5172
  %5199 = fcmp fast ole float %259, %5198
  %5200 = select i1 %5199, float %5159, float %5157
  %5201 = select i1 %5199, float %5157, float %5158
  %5202 = select i1 %5197, float %5158, float %5200
  %5203 = select i1 %5197, float %5159, float %5201
  %5204 = select i1 %5199, float %5193, float %5191
  %5205 = select i1 %5199, float %5191, float %5192
  %5206 = select i1 %5197, float %5192, float %5204
  %5207 = select i1 %5197, float %5193, float %5205
  %5208 = select i1 %5199, float %5196, float %5194
  %5209 = select i1 %5199, float %5194, float %5195
  %5210 = select i1 %5197, float %5195, float %5208
  %5211 = select i1 %5197, float %5196, float %5209
  %5212 = call float @dx.op.unary.f32(i32 27, float %5202)  ; Round_ni(value)
  %5213 = call float @dx.op.unary.f32(i32 27, float %5203)  ; Round_ni(value)
  %5214 = fptosi float %5212 to i32
  %5215 = fptosi float %5213 to i32
  %5216 = xor i32 %5215, %5214
  %5217 = sitofp i32 %5216 to float
  %5218 = fptosi float %5217 to i32
  %5219 = sitofp i32 %5218 to float
  %5220 = fmul fast float %5219, 0x3FE3C6EF40000000
  %5221 = frem fast float %5212, 2.560000e+02
  %5222 = frem fast float %5213, 2.560000e+02
  %5223 = fptoui float %5221 to i32
  %5224 = fptoui float %5222 to i32
  %5225 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %27, i32 0, i32 %5223, i32 %5224, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5226 = extractvalue %dx.types.ResRet.f32 %5225, 0
  %5227 = extractvalue %dx.types.ResRet.f32 %5225, 1
  %5228 = extractvalue %dx.types.ResRet.f32 %5225, 2
  %5229 = fadd fast float %5226, %5220
  %5230 = fadd fast float %5227, %5220
  %5231 = fadd fast float %5228, %5220
  %5232 = call float @dx.op.unary.f32(i32 22, float %5229)  ; Frc(value)
  %5233 = call float @dx.op.unary.f32(i32 22, float %5230)  ; Frc(value)
  %5234 = call float @dx.op.unary.f32(i32 22, float %5231)  ; Frc(value)
  %5235 = fmul fast float %5234, 0x401921FB60000000
  %5236 = call float @dx.op.unary.f32(i32 13, float %5235)  ; Sin(value)
  %5237 = call float @dx.op.unary.f32(i32 12, float %5235)  ; Cos(value)
  %5238 = fsub fast float -0.000000e+00, %5237
  %5239 = fmul fast float %5237, %5202
  %5240 = call float @dx.op.tertiary.f32(i32 46, float %5236, float %5203, float %5239)  ; FMad(a,b,c)
  %5241 = fmul fast float %5236, %5202
  %5242 = call float @dx.op.tertiary.f32(i32 46, float %5238, float %5203, float %5241)  ; FMad(a,b,c)
  %5243 = fadd fast float %5240, %5232
  %5244 = fadd fast float %5242, %5233
  %5245 = extractvalue %dx.types.CBufRet.f32 %5155, 3
  %5246 = bitcast float %5245 to i32
  %5247 = icmp eq i32 %5246, 0
  br i1 %5247, label %5286, label %5248

; <label>:5248                                    ; preds = %5151
  %5249 = add i32 %5246, 0
  %5250 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5249, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5251 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5250, %dx.types.Handle %105, float %5243, float %5244, float undef, float undef, i32 0, i32 0, i32 undef, float %5206, float %5207, float undef, float %5210, float %5211, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5252 = extractvalue %dx.types.ResRet.f32 %5251, 0
  %5253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5254 = extractvalue %dx.types.CBufRet.f32 %5253, 1
  %5255 = extractvalue %dx.types.CBufRet.f32 %5253, 2
  %5256 = fsub fast float 1.000000e+00, %4861
  %5257 = call float @dx.op.binary.f32(i32 35, float %5256, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5258 = bitcast float %4861 to i32
  %5259 = sitofp i32 %5258 to float
  %5260 = fadd fast float %5259, 0xC1CFBF8940000000
  %5261 = fmul fast float %5255, %5260
  %5262 = fadd fast float %5261, 0x41CFBF8940000000
  %5263 = fptosi float %5262 to i32
  %5264 = bitcast i32 %5263 to float
  %5265 = bitcast float %5257 to i32
  %5266 = sitofp i32 %5265 to float
  %5267 = fadd fast float %5266, 0xC1CFBF8940000000
  %5268 = fmul fast float %5267, %5255
  %5269 = fadd fast float %5268, 0x41CFBF8940000000
  %5270 = fptosi float %5269 to i32
  %5271 = bitcast i32 %5270 to float
  %5272 = fmul fast float %5264, %5254
  %5273 = fmul fast float %5271, %5254
  %5274 = fsub fast float %5257, %5272
  %5275 = fadd fast float %5273, %5257
  %5276 = call float @dx.op.unary.f32(i32 7, float %5274)  ; Saturate(value)
  %5277 = call float @dx.op.unary.f32(i32 7, float %5275)  ; Saturate(value)
  %5278 = fsub fast float %5252, %5276
  %5279 = fsub fast float %5277, %5276
  %5280 = bitcast float %5279 to i32
  %5281 = sub nsw i32 2129859010, %5280
  %5282 = bitcast i32 %5281 to float
  %5283 = fmul fast float %5282, %5278
  %5284 = call float @dx.op.unary.f32(i32 7, float %5283)  ; Saturate(value)
  %5285 = fcmp fast olt float %5284, 0x3F70101020000000
  br i1 %5285, label %5440, label %5286

; <label>:5286                                    ; preds = %5248, %5151
  %5287 = phi float [ %5284, %5248 ], [ %4861, %5151 ]
  %5288 = fmul fast float %5287, %5154
  %5289 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5290 = extractvalue %dx.types.CBufRet.i32 %5289, 1
  %5291 = extractvalue %dx.types.CBufRet.i32 %5289, 0
  %5292 = add i32 %5291, 0
  %5293 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5292, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5294 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5293, %dx.types.Handle %104, float %5243, float %5244, float undef, float undef, i32 0, i32 0, i32 undef, float %5206, float %5207, float undef, float %5210, float %5211, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5295 = extractvalue %dx.types.ResRet.f32 %5294, 0
  %5296 = extractvalue %dx.types.ResRet.f32 %5294, 1
  %5297 = extractvalue %dx.types.ResRet.f32 %5294, 2
  %5298 = extractvalue %dx.types.ResRet.f32 %5294, 3
  %5299 = and i32 %5290, 255
  %5300 = uitofp i32 %5299 to float
  %5301 = lshr i32 %5290, 8
  %5302 = and i32 %5301, 255
  %5303 = uitofp i32 %5302 to float
  %5304 = fmul fast float %5298, %5300
  %5305 = fadd fast float %5304, %5303
  %5306 = fmul fast float %5305, 0x3F70101000000000
  %5307 = fadd fast float %5306, 0xBFB99999A0000000
  %5308 = call float @dx.op.unary.f32(i32 7, float %5307)  ; Saturate(value)
  %5309 = fmul fast float %5308, 0x3FF1C71C80000000
  %5310 = call float @dx.op.binary.f32(i32 36, float %5306, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5311 = fsub fast float 1.000000e+00, %5309
  %5312 = call float @dx.op.unary.f32(i32 7, float %5311)  ; Saturate(value)
  %5313 = fmul fast float %5312, %5295
  %5314 = fmul fast float %5312, %5296
  %5315 = fmul fast float %5312, %5297
  %5316 = call float @dx.op.unary.f32(i32 7, float %5313)  ; Saturate(value)
  %5317 = call float @dx.op.unary.f32(i32 7, float %5314)  ; Saturate(value)
  %5318 = call float @dx.op.unary.f32(i32 7, float %5315)  ; Saturate(value)
  %5319 = fmul fast float %5309, %5295
  %5320 = fmul fast float %5309, %5296
  %5321 = fmul fast float %5309, %5297
  %5322 = fadd fast float %5319, %5310
  %5323 = fadd fast float %5320, %5310
  %5324 = fadd fast float %5321, %5310
  %5325 = call float @dx.op.unary.f32(i32 7, float %5322)  ; Saturate(value)
  %5326 = call float @dx.op.unary.f32(i32 7, float %5323)  ; Saturate(value)
  %5327 = call float @dx.op.unary.f32(i32 7, float %5324)  ; Saturate(value)
  %5328 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5329 = extractvalue %dx.types.CBufRet.i32 %5328, 3
  %5330 = extractvalue %dx.types.CBufRet.i32 %5328, 2
  %5331 = add i32 %5330, 0
  %5332 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5331, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5333 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5332, %dx.types.Handle %104, float %5243, float %5244, float undef, float undef, i32 0, i32 0, i32 undef, float %5206, float %5207, float undef, float %5210, float %5211, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5334 = extractvalue %dx.types.ResRet.f32 %5333, 0
  %5335 = extractvalue %dx.types.ResRet.f32 %5333, 1
  %5336 = extractvalue %dx.types.ResRet.f32 %5333, 2
  %5337 = extractvalue %dx.types.ResRet.f32 %5333, 3
  %5338 = and i32 %5329, 255
  %5339 = uitofp i32 %5338 to float
  %5340 = lshr i32 %5329, 8
  %5341 = and i32 %5340, 255
  %5342 = uitofp i32 %5341 to float
  %5343 = lshr i32 %5329, 16
  %5344 = and i32 %5343, 255
  %5345 = uitofp i32 %5344 to float
  %5346 = fmul fast float %5345, 0x3F70101000000000
  %5347 = fmul fast float %5334, %5339
  %5348 = fadd fast float %5347, %5342
  %5349 = fmul fast float %5348, 0x3F70101000000000
  %5350 = fadd fast float %5335, -5.000000e-01
  %5351 = fadd fast float %5337, -5.000000e-01
  %5352 = fmul fast float %5350, %5346
  %5353 = fmul fast float %5351, %5346
  %5354 = fadd fast float %5352, 5.000000e-01
  %5355 = fadd fast float %5353, 5.000000e-01
  %5356 = fmul fast float %5354, 2.000000e+00
  %5357 = fadd fast float %5356, -1.000000e+00
  %5358 = fmul fast float %5355, 2.000000e+00
  %5359 = fadd fast float %5358, -1.000000e+00
  %5360 = fadd fast float %5357, %5359
  %5361 = fmul fast float %5360, 5.000000e-01
  %5362 = fsub fast float %5357, %5359
  %5363 = fmul fast float %5362, 5.000000e-01
  %5364 = call float @dx.op.unary.f32(i32 6, float %5361)  ; FAbs(value)
  %5365 = fsub fast float 1.000000e+00, %5364
  %5366 = call float @dx.op.unary.f32(i32 6, float %5363)  ; FAbs(value)
  %5367 = fsub fast float %5365, %5366
  %5368 = call float @dx.op.dot3.f32(i32 55, float %5361, float %5363, float %5367, float %5361, float %5363, float %5367)  ; Dot3(ax,ay,az,bx,by,bz)
  %5369 = call float @dx.op.unary.f32(i32 25, float %5368)  ; Rsqrt(value)
  %5370 = fmul fast float %5361, %5369
  %5371 = fmul fast float %5363, %5369
  %5372 = select i1 %5199, i32 %5189, i32 %5190
  %5373 = select i1 %5197, i32 %5188, i32 %5372
  %5374 = sitofp i32 %5373 to float
  %5375 = fmul fast float %5367, %5374
  %5376 = fmul fast float %5375, %5369
  %5377 = select i1 %5199, float %5376, float %5371
  %5378 = select i1 %5199, float %5371, float %5376
  %5379 = select i1 %5197, float %5376, float %5370
  %5380 = select i1 %5197, float %5371, float %5377
  %5381 = select i1 %5197, float %5370, float %5378
  %5382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 375)  ; CBufferLoadLegacy(handle,regIndex)
  %5383 = extractvalue %dx.types.CBufRet.f32 %5382, 0
  %5384 = fptoui float %5383 to i32
  %5385 = add i32 %5384, 0
  %5386 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5385, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5387 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5386, %dx.types.Handle %104, float %5243, float %5244, float undef, float undef, i32 0, i32 0, i32 undef, float %5206, float %5207, float undef, float %5210, float %5211, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5388 = extractvalue %dx.types.ResRet.f32 %5387, 0
  %5389 = fsub fast float %5316, %5140
  %5390 = fsub fast float %5317, %5141
  %5391 = fsub fast float %5318, %5142
  %5392 = fmul fast float %5389, %5288
  %5393 = fmul fast float %5390, %5288
  %5394 = fmul fast float %5391, %5288
  %5395 = fadd fast float %5392, %5140
  %5396 = fadd fast float %5393, %5141
  %5397 = fadd fast float %5394, %5142
  %5398 = fsub fast float %5325, %5143
  %5399 = fsub fast float %5326, %5144
  %5400 = fsub fast float %5327, %5145
  %5401 = fmul fast float %5398, %5288
  %5402 = fmul fast float %5399, %5288
  %5403 = fmul fast float %5400, %5288
  %5404 = fadd fast float %5401, %5143
  %5405 = fadd fast float %5402, %5144
  %5406 = fadd fast float %5403, %5145
  %5407 = fadd fast float %5379, %5146
  %5408 = fadd fast float %5380, %5147
  %5409 = fadd fast float %5381, %5148
  %5410 = call float @dx.op.dot3.f32(i32 55, float %5407, float %5408, float %5409, float %5407, float %5408, float %5409)  ; Dot3(ax,ay,az,bx,by,bz)
  %5411 = call float @dx.op.unary.f32(i32 25, float %5410)  ; Rsqrt(value)
  %5412 = fmul fast float %5411, %5407
  %5413 = fmul fast float %5411, %5408
  %5414 = fmul fast float %5411, %5409
  %5415 = fsub fast float %5412, %5146
  %5416 = fsub fast float %5413, %5147
  %5417 = fsub fast float %5414, %5148
  %5418 = fmul fast float %5415, %5288
  %5419 = fmul fast float %5416, %5288
  %5420 = fmul fast float %5417, %5288
  %5421 = fadd fast float %5418, %5146
  %5422 = fadd fast float %5419, %5147
  %5423 = fadd fast float %5420, %5148
  %5424 = call float @dx.op.binary.f32(i32 36, float %5150, float %5336)  ; FMin(a,b)
  %5425 = fsub fast float %5424, %5150
  %5426 = fmul fast float %5425, %5288
  %5427 = fadd fast float %5426, %5150
  %5428 = fsub fast float %5349, %5149
  %5429 = fmul fast float %5428, %5288
  %5430 = fadd fast float %5429, %5149
  %5431 = fsub fast float %5388, %4707
  %5432 = fsub fast float %5388, %4708
  %5433 = fsub fast float %5388, %4709
  %5434 = fmul fast float %5431, %5288
  %5435 = fmul fast float %5432, %5288
  %5436 = fmul fast float %5433, %5288
  %5437 = fadd fast float %5434, %4707
  %5438 = fadd fast float %5435, %4708
  %5439 = fadd fast float %5436, %4709
  br label %5440

; <label>:5440                                    ; preds = %5286, %5248, %5139, %4855
  %5441 = phi float [ %5395, %5286 ], [ %5140, %5248 ], [ %5140, %5139 ], [ %4703, %4855 ]
  %5442 = phi float [ %5396, %5286 ], [ %5141, %5248 ], [ %5141, %5139 ], [ %4704, %4855 ]
  %5443 = phi float [ %5397, %5286 ], [ %5142, %5248 ], [ %5142, %5139 ], [ %4705, %4855 ]
  %5444 = phi float [ %5404, %5286 ], [ %5143, %5248 ], [ %5143, %5139 ], [ %4663, %4855 ]
  %5445 = phi float [ %5405, %5286 ], [ %5144, %5248 ], [ %5144, %5139 ], [ %4664, %4855 ]
  %5446 = phi float [ %5406, %5286 ], [ %5145, %5248 ], [ %5145, %5139 ], [ %4665, %4855 ]
  %5447 = phi float [ %5421, %5286 ], [ %5146, %5248 ], [ %5146, %5139 ], [ %4621, %4855 ]
  %5448 = phi float [ %5422, %5286 ], [ %5147, %5248 ], [ %5147, %5139 ], [ %4622, %4855 ]
  %5449 = phi float [ %5423, %5286 ], [ %5148, %5248 ], [ %5148, %5139 ], [ %4623, %4855 ]
  %5450 = phi float [ %5437, %5286 ], [ %4707, %5248 ], [ %4707, %5139 ], [ %4707, %4855 ]
  %5451 = phi float [ %5438, %5286 ], [ %4708, %5248 ], [ %4708, %5139 ], [ %4708, %4855 ]
  %5452 = phi float [ %5439, %5286 ], [ %4709, %5248 ], [ %4709, %5139 ], [ %4709, %4855 ]
  %5453 = phi float [ %5430, %5286 ], [ %5149, %5248 ], [ %5149, %5139 ], [ %4666, %4855 ]
  %5454 = phi float [ %5427, %5286 ], [ %5150, %5248 ], [ %5150, %5139 ], [ %4639, %4855 ]
  %5455 = fcmp fast une float %4859, 0.000000e+00
  %5456 = call float @dx.op.dot3.f32(i32 55, float %187, float %188, float %189, float %187, float %188, float %189)  ; Dot3(ax,ay,az,bx,by,bz)
  %5457 = call float @dx.op.unary.f32(i32 25, float %5456)  ; Rsqrt(value)
  br i1 %5455, label %5465, label %5458

; <label>:5458                                    ; preds = %5440
  %5459 = fmul fast float %5457, %187
  %5460 = fmul fast float %5457, %188
  %5461 = fmul fast float %5457, %189
  %5462 = fsub fast float -0.000000e+00, %5459
  %5463 = fsub fast float -0.000000e+00, %5460
  %5464 = fsub fast float -0.000000e+00, %5461
  br label %5632

; <label>:5465                                    ; preds = %5440
  %5466 = fmul fast float %187, %5457
  %5467 = fsub fast float -0.000000e+00, %5466
  %5468 = fmul fast float %188, %5457
  %5469 = fsub fast float -0.000000e+00, %5468
  %5470 = fmul fast float %189, %5457
  %5471 = fsub fast float -0.000000e+00, %5470
  %5472 = call float @dx.op.dot3.f32(i32 55, float %5467, float %5469, float %5471, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %5473 = fmul fast float %4859, 2.500000e+00
  %5474 = call float @dx.op.unary.f32(i32 7, float %5473)  ; Saturate(value)
  %5475 = fmul fast float %4859, 0x4013FFFFE0000000
  %5476 = fadd fast float %5475, 0xBFFFFFFFE0000000
  %5477 = call float @dx.op.unary.f32(i32 7, float %5476)  ; Saturate(value)
  %5478 = fmul fast float %4859, 0x4004000020000000
  %5479 = fadd fast float %5478, 0xBFF8000040000000
  %5480 = call float @dx.op.unary.f32(i32 7, float %5479)  ; Saturate(value)
  %5481 = fmul fast float %4645, 1.000000e+01
  %5482 = call float @dx.op.unary.f32(i32 7, float %5481)  ; Saturate(value)
  %5483 = fmul fast float %5482, 2.000000e+00
  %5484 = fsub fast float 3.000000e+00, %5483
  %5485 = fmul fast float %5482, %5482
  %5486 = fmul fast float %5485, %5484
  %5487 = fsub fast float 1.000000e+00, %5486
  %5488 = fsub fast float 0x3FE3333340000000, %5453
  %5489 = fmul fast float %5488, 0x400AAAAAA0000000
  %5490 = call float @dx.op.unary.f32(i32 7, float %5489)  ; Saturate(value)
  %5491 = fmul fast float %5487, %5490
  %5492 = fmul fast float %5441, 0x3FEA2B8620000000
  %5493 = fmul fast float %5442, 0x3FEA2B8620000000
  %5494 = fmul fast float %5443, 0x3FEA2B8620000000
  %5495 = fadd fast float %5492, 0x3FC81DFBA0000000
  %5496 = fmul fast float %5495, %5441
  %5497 = fadd fast float %5496, 0x3F910E6020000000
  %5498 = fadd fast float %5493, 0x3FC81DFBA0000000
  %5499 = fmul fast float %5498, %5442
  %5500 = fadd fast float %5499, 0x3F910E6020000000
  %5501 = fadd fast float %5494, 0x3FC81DFBA0000000
  %5502 = fmul fast float %5501, %5443
  %5503 = fadd fast float %5502, 0x3F910E6020000000
  %5504 = call float @dx.op.unary.f32(i32 7, float %5497)  ; Saturate(value)
  %5505 = call float @dx.op.unary.f32(i32 7, float %5500)  ; Saturate(value)
  %5506 = call float @dx.op.unary.f32(i32 7, float %5503)  ; Saturate(value)
  %5507 = fsub fast float %5504, %5441
  %5508 = fsub fast float %5505, %5442
  %5509 = fsub fast float %5506, %5443
  %5510 = fmul fast float %5507, %5474
  %5511 = fmul fast float %5510, %5491
  %5512 = fmul fast float %5508, %5474
  %5513 = fmul fast float %5512, %5491
  %5514 = fmul fast float %5509, %5474
  %5515 = fmul fast float %5514, %5491
  %5516 = fadd fast float %5511, %5441
  %5517 = fadd fast float %5513, %5442
  %5518 = fadd fast float %5515, %5443
  %5519 = fmul fast float %5454, %5454
  %5520 = fmul fast float %5519, %5519
  %5521 = fadd fast float %5477, 1.000000e+00
  %5522 = fsub fast float %5521, %5491
  %5523 = call float @dx.op.unary.f32(i32 7, float %5522)  ; Saturate(value)
  %5524 = call float @dx.op.dot3.f32(i32 55, float %115, float %116, float %117, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5525 = call float @dx.op.unary.f32(i32 7, float %5524)  ; Saturate(value)
  %5526 = fsub fast float 1.000000e+00, %5520
  %5527 = call float @dx.op.binary.f32(i32 36, float %5523, float %5526)  ; FMin(a,b)
  %5528 = call float @dx.op.unary.f32(i32 7, float %5480)  ; Saturate(value)
  %5529 = call float @dx.op.binary.f32(i32 35, float %5527, float %5528)  ; FMax(a,b)
  %5530 = fadd fast float %5525, 0xBFE4CCCCC0000000
  %5531 = fmul fast float %5530, 0x4006DB6DA0000000
  %5532 = call float @dx.op.unary.f32(i32 7, float %5531)  ; Saturate(value)
  %5533 = fmul fast float %5532, 2.000000e+00
  %5534 = fsub fast float 3.000000e+00, %5533
  %5535 = bitcast float %5444 to i32
  %5536 = ashr i32 %5535, 1
  %5537 = add nsw i32 %5536, 532487669
  %5538 = bitcast i32 %5537 to float
  %5539 = fsub fast float 1.000000e+00, %5538
  %5540 = bitcast float %5539 to i32
  %5541 = sub nsw i32 2129859010, %5540
  %5542 = bitcast i32 %5541 to float
  %5543 = fmul fast float %5542, 2.000000e+00
  %5544 = bitcast float %5445 to i32
  %5545 = ashr i32 %5544, 1
  %5546 = add nsw i32 %5545, 532487669
  %5547 = bitcast i32 %5546 to float
  %5548 = fsub fast float 1.000000e+00, %5547
  %5549 = bitcast float %5548 to i32
  %5550 = sub nsw i32 2129859010, %5549
  %5551 = bitcast i32 %5550 to float
  %5552 = fmul fast float %5551, 2.000000e+00
  %5553 = bitcast float %5446 to i32
  %5554 = ashr i32 %5553, 1
  %5555 = add nsw i32 %5554, 532487669
  %5556 = bitcast i32 %5555 to float
  %5557 = fsub fast float 1.000000e+00, %5556
  %5558 = bitcast float %5557 to i32
  %5559 = sub nsw i32 2129859010, %5558
  %5560 = bitcast i32 %5559 to float
  %5561 = fmul fast float %5560, 2.000000e+00
  %5562 = fsub fast float 0x4002A9FBE0000000, %5543
  %5563 = fadd fast float %5543, 0x3FD54FDF00000000
  %5564 = bitcast float %5563 to i32
  %5565 = sub nsw i32 2129859010, %5564
  %5566 = bitcast i32 %5565 to float
  %5567 = fmul fast float %5566, %5562
  %5568 = fmul fast float %5567, %5567
  %5569 = fsub fast float 0x4002A9FBE0000000, %5552
  %5570 = fadd fast float %5552, 0x3FD54FDF00000000
  %5571 = bitcast float %5570 to i32
  %5572 = sub nsw i32 2129859010, %5571
  %5573 = bitcast i32 %5572 to float
  %5574 = fmul fast float %5573, %5569
  %5575 = fmul fast float %5574, %5574
  %5576 = fsub fast float 0x4002A9FBE0000000, %5561
  %5577 = fadd fast float %5561, 0x3FD54FDF00000000
  %5578 = bitcast float %5577 to i32
  %5579 = sub nsw i32 2129859010, %5578
  %5580 = bitcast i32 %5579 to float
  %5581 = fmul fast float %5580, %5576
  %5582 = fmul fast float %5581, %5581
  %5583 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5568)  ; FMax(a,b)
  %5584 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5575)  ; FMax(a,b)
  %5585 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5582)  ; FMax(a,b)
  %5586 = fsub fast float 1.000000e+00, %5472
  %5587 = fadd fast float %5586, %5487
  %5588 = call float @dx.op.unary.f32(i32 7, float %5587)  ; Saturate(value)
  %5589 = fsub fast float 1.000000e+00, %4840
  %5590 = fmul fast float %5529, %5589
  %5591 = fmul fast float %5532, %5532
  %5592 = fmul fast float %5591, %5590
  %5593 = fmul fast float %5592, %5534
  %5594 = fmul fast float %5589, 0xBFE99999A0000000
  %5595 = fmul fast float %5594, %5474
  %5596 = fmul fast float %5595, %5491
  %5597 = fadd fast float %5596, 1.000000e+00
  %5598 = fadd fast float %5453, -1.000000e+00
  %5599 = fmul fast float %5597, %5598
  %5600 = fadd fast float %5599, 1.000000e+00
  %5601 = fsub fast float %5583, %5444
  %5602 = fsub fast float %5584, %5445
  %5603 = fsub fast float %5585, %5446
  %5604 = fmul fast float %5593, %5601
  %5605 = fmul fast float %5593, %5602
  %5606 = fmul fast float %5593, %5603
  %5607 = fadd fast float %5604, %5444
  %5608 = fadd fast float %5605, %5445
  %5609 = fadd fast float %5606, %5446
  %5610 = fsub fast float %115, %5447
  %5611 = fsub fast float %116, %5448
  %5612 = fsub fast float %117, %5449
  %5613 = fmul fast float %5593, %5610
  %5614 = fmul fast float %5593, %5611
  %5615 = fmul fast float %5593, %5612
  %5616 = fadd fast float %5613, %5447
  %5617 = fadd fast float %5614, %5448
  %5618 = fadd fast float %5615, %5449
  %5619 = fmul fast float %5593, %5588
  %5620 = call float @dx.op.unary.f32(i32 7, float %5600)  ; Saturate(value)
  %5621 = fsub fast float 1.000000e+00, %5620
  %5622 = fmul fast float %5619, %5621
  %5623 = fadd fast float %5622, %5620
  %5624 = fsub fast float 1.000000e+00, %5454
  %5625 = fmul fast float %5593, %5624
  %5626 = fadd fast float %5625, %5454
  %5627 = call float @dx.op.dot3.f32(i32 55, float %5616, float %5617, float %5618, float %5616, float %5617, float %5618)  ; Dot3(ax,ay,az,bx,by,bz)
  %5628 = call float @dx.op.unary.f32(i32 25, float %5627)  ; Rsqrt(value)
  %5629 = fmul fast float %5616, %5628
  %5630 = fmul fast float %5617, %5628
  %5631 = fmul fast float %5618, %5628
  br label %5632

; <label>:5632                                    ; preds = %5465, %5458
  %5633 = phi float [ %5464, %5458 ], [ %5471, %5465 ]
  %5634 = phi float [ %5463, %5458 ], [ %5469, %5465 ]
  %5635 = phi float [ %5462, %5458 ], [ %5467, %5465 ]
  %5636 = phi float [ %5461, %5458 ], [ %5470, %5465 ]
  %5637 = phi float [ %5460, %5458 ], [ %5468, %5465 ]
  %5638 = phi float [ %5459, %5458 ], [ %5466, %5465 ]
  %5639 = phi float [ %5441, %5458 ], [ %5516, %5465 ]
  %5640 = phi float [ %5442, %5458 ], [ %5517, %5465 ]
  %5641 = phi float [ %5443, %5458 ], [ %5518, %5465 ]
  %5642 = phi float [ %5444, %5458 ], [ %5607, %5465 ]
  %5643 = phi float [ %5445, %5458 ], [ %5608, %5465 ]
  %5644 = phi float [ %5446, %5458 ], [ %5609, %5465 ]
  %5645 = phi float [ %5447, %5458 ], [ %5629, %5465 ]
  %5646 = phi float [ %5448, %5458 ], [ %5630, %5465 ]
  %5647 = phi float [ %5449, %5458 ], [ %5631, %5465 ]
  %5648 = phi float [ %5453, %5458 ], [ %5623, %5465 ]
  %5649 = phi float [ %5454, %5458 ], [ %5626, %5465 ]
  %5650 = fsub fast float -0.000000e+00, %5647
  %5651 = fsub fast float -0.000000e+00, %5646
  %5652 = fsub fast float -0.000000e+00, %5645
  %5653 = select i1 %248, float 0.000000e+00, float %5644
  %5654 = call float @dx.op.dot3.f32(i32 55, float %5645, float %5646, float %5647, float %5635, float %5634, float %5633)  ; Dot3(ax,ay,az,bx,by,bz)
  %5655 = call float @dx.op.unary.f32(i32 7, float %5654)  ; Saturate(value)
  %5656 = call float @dx.op.dot3.f32(i32 55, float %5638, float %5637, float %5636, float %5645, float %5646, float %5647)  ; Dot3(ax,ay,az,bx,by,bz)
  %5657 = fmul fast float %5656, 2.000000e+00
  %5658 = fmul fast float %5657, %5645
  %5659 = fmul fast float %5657, %5646
  %5660 = fmul fast float %5657, %5647
  %5661 = fsub fast float %5638, %5658
  %5662 = fsub fast float %5637, %5659
  %5663 = fsub fast float %5636, %5660
  %5664 = fmul fast float %5637, %4757
  %5665 = fmul fast float %5636, %4756
  %5666 = fsub fast float %5664, %5665
  %5667 = fmul fast float %5636, %4755
  %5668 = fmul fast float %5638, %4757
  %5669 = fsub fast float %5667, %5668
  %5670 = fmul fast float %5638, %4756
  %5671 = fmul fast float %5637, %4755
  %5672 = fsub fast float %5670, %5671
  %5673 = fmul fast float %5669, %4757
  %5674 = fmul fast float %5672, %4756
  %5675 = fmul fast float %5672, %4755
  %5676 = fmul fast float %5666, %4757
  %5677 = fmul fast float %5666, %4756
  %5678 = fmul fast float %5669, %4755
  %5679 = fsub fast float %5652, %5674
  %5680 = fadd fast float %5679, %5673
  %5681 = fsub fast float %5651, %5676
  %5682 = fadd fast float %5681, %5675
  %5683 = fsub fast float %5650, %5678
  %5684 = fadd fast float %5683, %5677
  %5685 = fmul fast float %5680, %4743
  %5686 = fmul fast float %5682, %4743
  %5687 = fmul fast float %5684, %4743
  %5688 = fadd fast float %5685, %5645
  %5689 = fadd fast float %5686, %5646
  %5690 = fadd fast float %5687, %5647
  %5691 = call float @dx.op.dot3.f32(i32 55, float %5688, float %5689, float %5690, float %5688, float %5689, float %5690)  ; Dot3(ax,ay,az,bx,by,bz)
  %5692 = call float @dx.op.unary.f32(i32 25, float %5691)  ; Rsqrt(value)
  %5693 = fmul fast float %5688, %5692
  %5694 = fmul fast float %5689, %5692
  %5695 = fmul fast float %5690, %5692
  %5696 = call float @dx.op.dot3.f32(i32 55, float %5638, float %5637, float %5636, float %5693, float %5694, float %5695)  ; Dot3(ax,ay,az,bx,by,bz)
  %5697 = fmul fast float %5696, 2.000000e+00
  %5698 = fmul fast float %5693, %5697
  %5699 = fmul fast float %5694, %5697
  %5700 = fmul fast float %5695, %5697
  %5701 = fsub fast float %5638, %5698
  %5702 = fsub fast float %5637, %5699
  %5703 = fsub fast float %5636, %5700
  %5704 = call float @dx.op.binary.f32(i32 36, float %5649, float 1.000000e+00)  ; FMin(a,b)
  %5705 = fsub fast float 1.000000e+00, %5704
  %5706 = bitcast float %5705 to i32
  %5707 = ashr i32 %5706, 1
  %5708 = add nsw i32 %5707, 532487669
  %5709 = bitcast i32 %5708 to float
  %5710 = fsub fast float 1.000000e+00, %5648
  %5711 = call float @dx.op.binary.f32(i32 35, float %5710, float 0x3F847AE140000000)  ; FMax(a,b)
  %5712 = fmul fast float %5711, %5711
  %5713 = fmul fast float %5712, %5712
  %5714 = call float @dx.op.unary.f32(i32 7, float %5655)  ; Saturate(value)
  %5715 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %43, float %5709, float %5713, float %5714, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5716 = extractvalue %dx.types.ResRet.f32 %5715, 0
  %5717 = fsub fast float 1.000000e+00, %5649
  %5718 = bitcast float %5717 to i32
  %5719 = sub nsw i32 2129859010, %5718
  %5720 = call float @dx.op.dot3.f32(i32 55, float %75, float %71, float %67, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5721 = fmul fast float %5720, 0x3FD20DD760000000
  %5722 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %75)  ; FMax(a,b)
  %5723 = call float @dx.op.dot3.f32(i32 55, float %76, float %77, float %78, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %5724 = fcmp fast oeq float %5723, 0.000000e+00
  %5725 = fcmp fast oeq float %5722, 0.000000e+00
  %5726 = or i1 %5725, %5724
  br i1 %5726, label %5756, label %5727

; <label>:5727                                    ; preds = %5632
  %5728 = fsub fast float -0.000000e+00, %78
  %5729 = fsub fast float -0.000000e+00, %76
  %5730 = call float @dx.op.unary.f32(i32 24, float %5723)  ; Sqrt(value)
  %5731 = fdiv fast float %5730, %5722
  %5732 = fcmp fast ogt float %5731, 0x3FFB6F8900000000
  %5733 = select i1 %5732, float 0x3FFB6F8900000000, float %5731
  %5734 = fmul fast float %5733, 0x3FE8A23460000000
  %5735 = call float @dx.op.unary.f32(i32 7, float %5734)  ; Saturate(value)
  %5736 = call float @dx.op.binary.f32(i32 35, float %5733, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5737 = fmul fast float %5735, %5722
  %5738 = fmul fast float %5736, 0x3FF279A740000000
  %5739 = fadd fast float %5738, -1.000000e+00
  %5740 = call float @dx.op.dot3.f32(i32 55, float %5728, float %5729, float %77, float %5728, float %5729, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %5741 = call float @dx.op.unary.f32(i32 25, float %5740)  ; Rsqrt(value)
  %5742 = fmul fast float %5741, %5728
  %5743 = fmul fast float %5741, %5729
  %5744 = fmul fast float %5741, %77
  %5745 = fmul fast float %5739, %5739
  %5746 = fsub fast float 1.000000e+00, %5745
  %5747 = fmul fast float %5736, 0x40005F8BE0000000
  %5748 = fsub fast float 0x400C5BF8A0000000, %5747
  %5749 = fdiv fast float %5737, %5748
  %5750 = fmul fast float %5749, 0x3FEE31C3C0000000
  %5751 = fmul fast float %5750, %5746
  %5752 = fmul fast float %5736, 0x3FDACB7480000000
  %5753 = fadd fast float %5752, 0xBFD7347680000000
  %5754 = fmul fast float %5753, %5749
  %5755 = fmul fast float %5754, %5746
  br label %5756

; <label>:5756                                    ; preds = %5727, %5632
  %5757 = phi float [ %5742, %5727 ], [ 0.000000e+00, %5632 ]
  %5758 = phi float [ %5743, %5727 ], [ 0.000000e+00, %5632 ]
  %5759 = phi float [ %5744, %5727 ], [ 0.000000e+00, %5632 ]
  %5760 = phi float [ %5751, %5727 ], [ 0.000000e+00, %5632 ]
  %5761 = phi float [ %5755, %5727 ], [ 0.000000e+00, %5632 ]
  %5762 = call float @dx.op.dot3.f32(i32 55, float %5757, float %5758, float %5759, float %5645, float %5646, float %5647)  ; Dot3(ax,ay,az,bx,by,bz)
  %5763 = fmul fast float %5762, 0x3FDF454380000000
  %5764 = fmul fast float %5762, %5762
  %5765 = fmul fast float %5764, 0x3FEE471020000000
  %5766 = fadd fast float %5765, 0xBFD42F6020000000
  %5767 = fmul fast float %5722, 0x3FD20DD760000000
  %5768 = fmul fast float %5766, %5761
  %5769 = fadd fast float %5768, %5767
  %5770 = fmul fast float %5763, %5760
  %5771 = fadd fast float %5769, %5770
  %5772 = fsub fast float %5769, %5770
  %5773 = call float @dx.op.dot3.f32(i32 55, float %5757, float %5758, float %5759, float %5701, float %5702, float %5703)  ; Dot3(ax,ay,az,bx,by,bz)
  %5774 = fmul fast float %5773, 0x3FDF454380000000
  %5775 = fmul fast float %5773, %5773
  %5776 = fmul fast float %5775, 0x3FEE471020000000
  %5777 = fadd fast float %5776, 0xBFD42F6020000000
  %5778 = call float @dx.op.dot3.f32(i32 55, float %5722, float %5760, float %5761, float 0x3FD20DD760000000, float %5774, float %5777)  ; Dot3(ax,ay,az,bx,by,bz)
  %5779 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %71)  ; FMax(a,b)
  %5780 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %5781 = fcmp fast oeq float %5780, 0.000000e+00
  %5782 = fcmp fast oeq float %5779, 0.000000e+00
  %5783 = or i1 %5782, %5781
  br i1 %5783, label %5813, label %5784

; <label>:5784                                    ; preds = %5756
  %5785 = fsub fast float -0.000000e+00, %74
  %5786 = fsub fast float -0.000000e+00, %72
  %5787 = call float @dx.op.unary.f32(i32 24, float %5780)  ; Sqrt(value)
  %5788 = fdiv fast float %5787, %5779
  %5789 = fcmp fast ogt float %5788, 0x3FFB6F8900000000
  %5790 = select i1 %5789, float 0x3FFB6F8900000000, float %5788
  %5791 = fmul fast float %5790, 0x3FE8A23460000000
  %5792 = call float @dx.op.unary.f32(i32 7, float %5791)  ; Saturate(value)
  %5793 = call float @dx.op.binary.f32(i32 35, float %5790, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5794 = fmul fast float %5792, %5779
  %5795 = fmul fast float %5793, 0x3FF279A740000000
  %5796 = fadd fast float %5795, -1.000000e+00
  %5797 = call float @dx.op.dot3.f32(i32 55, float %5785, float %5786, float %73, float %5785, float %5786, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %5798 = call float @dx.op.unary.f32(i32 25, float %5797)  ; Rsqrt(value)
  %5799 = fmul fast float %5798, %5785
  %5800 = fmul fast float %5798, %5786
  %5801 = fmul fast float %5798, %73
  %5802 = fmul fast float %5796, %5796
  %5803 = fsub fast float 1.000000e+00, %5802
  %5804 = fmul fast float %5793, 0x40005F8BE0000000
  %5805 = fsub fast float 0x400C5BF8A0000000, %5804
  %5806 = fdiv fast float %5794, %5805
  %5807 = fmul fast float %5806, 0x3FEE31C3C0000000
  %5808 = fmul fast float %5807, %5803
  %5809 = fmul fast float %5793, 0x3FDACB7480000000
  %5810 = fadd fast float %5809, 0xBFD7347680000000
  %5811 = fmul fast float %5810, %5806
  %5812 = fmul fast float %5811, %5803
  br label %5813

; <label>:5813                                    ; preds = %5784, %5756
  %5814 = phi float [ %5799, %5784 ], [ 0.000000e+00, %5756 ]
  %5815 = phi float [ %5800, %5784 ], [ 0.000000e+00, %5756 ]
  %5816 = phi float [ %5801, %5784 ], [ 0.000000e+00, %5756 ]
  %5817 = phi float [ %5808, %5784 ], [ 0.000000e+00, %5756 ]
  %5818 = phi float [ %5812, %5784 ], [ 0.000000e+00, %5756 ]
  %5819 = call float @dx.op.dot3.f32(i32 55, float %5814, float %5815, float %5816, float %5645, float %5646, float %5647)  ; Dot3(ax,ay,az,bx,by,bz)
  %5820 = fmul fast float %5819, 0x3FDF454380000000
  %5821 = fmul fast float %5819, %5819
  %5822 = fmul fast float %5821, 0x3FEE471020000000
  %5823 = fadd fast float %5822, 0xBFD42F6020000000
  %5824 = fmul fast float %5779, 0x3FD20DD760000000
  %5825 = fmul fast float %5823, %5818
  %5826 = fadd fast float %5825, %5824
  %5827 = fmul fast float %5820, %5817
  %5828 = fadd fast float %5826, %5827
  %5829 = fsub fast float %5826, %5827
  %5830 = call float @dx.op.dot3.f32(i32 55, float %5814, float %5815, float %5816, float %5701, float %5702, float %5703)  ; Dot3(ax,ay,az,bx,by,bz)
  %5831 = fmul fast float %5830, 0x3FDF454380000000
  %5832 = fmul fast float %5830, %5830
  %5833 = fmul fast float %5832, 0x3FEE471020000000
  %5834 = fadd fast float %5833, 0xBFD42F6020000000
  %5835 = call float @dx.op.dot3.f32(i32 55, float %5779, float %5817, float %5818, float 0x3FD20DD760000000, float %5831, float %5834)  ; Dot3(ax,ay,az,bx,by,bz)
  %5836 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %67)  ; FMax(a,b)
  %5837 = call float @dx.op.dot3.f32(i32 55, float %68, float %69, float %70, float %68, float %69, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %5838 = fcmp fast oeq float %5837, 0.000000e+00
  %5839 = fcmp fast oeq float %5836, 0.000000e+00
  %5840 = or i1 %5839, %5838
  br i1 %5840, label %5870, label %5841

; <label>:5841                                    ; preds = %5813
  %5842 = fsub fast float -0.000000e+00, %70
  %5843 = fsub fast float -0.000000e+00, %68
  %5844 = call float @dx.op.unary.f32(i32 24, float %5837)  ; Sqrt(value)
  %5845 = fdiv fast float %5844, %5836
  %5846 = fcmp fast ogt float %5845, 0x3FFB6F8900000000
  %5847 = select i1 %5846, float 0x3FFB6F8900000000, float %5845
  %5848 = fmul fast float %5847, 0x3FE8A23460000000
  %5849 = call float @dx.op.unary.f32(i32 7, float %5848)  ; Saturate(value)
  %5850 = call float @dx.op.binary.f32(i32 35, float %5847, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5851 = fmul fast float %5849, %5836
  %5852 = fmul fast float %5850, 0x3FF279A740000000
  %5853 = fadd fast float %5852, -1.000000e+00
  %5854 = call float @dx.op.dot3.f32(i32 55, float %5842, float %5843, float %69, float %5842, float %5843, float %69)  ; Dot3(ax,ay,az,bx,by,bz)
  %5855 = call float @dx.op.unary.f32(i32 25, float %5854)  ; Rsqrt(value)
  %5856 = fmul fast float %5855, %5842
  %5857 = fmul fast float %5855, %5843
  %5858 = fmul fast float %5855, %69
  %5859 = fmul fast float %5853, %5853
  %5860 = fsub fast float 1.000000e+00, %5859
  %5861 = fmul fast float %5850, 0x40005F8BE0000000
  %5862 = fsub fast float 0x400C5BF8A0000000, %5861
  %5863 = fdiv fast float %5851, %5862
  %5864 = fmul fast float %5863, 0x3FEE31C3C0000000
  %5865 = fmul fast float %5864, %5860
  %5866 = fmul fast float %5850, 0x3FDACB7480000000
  %5867 = fadd fast float %5866, 0xBFD7347680000000
  %5868 = fmul fast float %5867, %5863
  %5869 = fmul fast float %5868, %5860
  br label %5870

; <label>:5870                                    ; preds = %5841, %5813
  %5871 = phi float [ %5856, %5841 ], [ 0.000000e+00, %5813 ]
  %5872 = phi float [ %5857, %5841 ], [ 0.000000e+00, %5813 ]
  %5873 = phi float [ %5858, %5841 ], [ 0.000000e+00, %5813 ]
  %5874 = phi float [ %5865, %5841 ], [ 0.000000e+00, %5813 ]
  %5875 = phi float [ %5869, %5841 ], [ 0.000000e+00, %5813 ]
  %5876 = call float @dx.op.dot3.f32(i32 55, float %5871, float %5872, float %5873, float %5645, float %5646, float %5647)  ; Dot3(ax,ay,az,bx,by,bz)
  %5877 = fmul fast float %5876, 0x3FDF454380000000
  %5878 = fmul fast float %5876, %5876
  %5879 = fmul fast float %5878, 0x3FEE471020000000
  %5880 = fadd fast float %5879, 0xBFD42F6020000000
  %5881 = fmul fast float %5836, 0x3FD20DD760000000
  %5882 = fmul fast float %5880, %5875
  %5883 = fadd fast float %5882, %5881
  %5884 = fmul fast float %5877, %5874
  %5885 = fadd fast float %5883, %5884
  %5886 = fsub fast float %5883, %5884
  %5887 = call float @dx.op.dot3.f32(i32 55, float %5871, float %5872, float %5873, float %5701, float %5702, float %5703)  ; Dot3(ax,ay,az,bx,by,bz)
  %5888 = fmul fast float %5887, 0x3FDF454380000000
  %5889 = fmul fast float %5887, %5887
  %5890 = fmul fast float %5889, 0x3FEE471020000000
  %5891 = fadd fast float %5890, 0xBFD42F6020000000
  %5892 = call float @dx.op.dot3.f32(i32 55, float %5836, float %5874, float %5875, float 0x3FD20DD760000000, float %5888, float %5891)  ; Dot3(ax,ay,az,bx,by,bz)
  %5893 = call float @dx.op.binary.f32(i32 35, float %5771, float 0.000000e+00)  ; FMax(a,b)
  %5894 = call float @dx.op.binary.f32(i32 35, float %5828, float 0.000000e+00)  ; FMax(a,b)
  %5895 = call float @dx.op.binary.f32(i32 35, float %5885, float 0.000000e+00)  ; FMax(a,b)
  %5896 = call float @dx.op.binary.f32(i32 35, float %5772, float 0.000000e+00)  ; FMax(a,b)
  %5897 = call float @dx.op.binary.f32(i32 35, float %5829, float 0.000000e+00)  ; FMax(a,b)
  %5898 = call float @dx.op.binary.f32(i32 35, float %5886, float 0.000000e+00)  ; FMax(a,b)
  %5899 = call float @dx.op.binary.f32(i32 35, float %5778, float 0.000000e+00)  ; FMax(a,b)
  %5900 = call float @dx.op.binary.f32(i32 35, float %5835, float 0.000000e+00)  ; FMax(a,b)
  %5901 = call float @dx.op.binary.f32(i32 35, float %5892, float 0.000000e+00)  ; FMax(a,b)
  %5902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5903 = extractvalue %dx.types.CBufRet.f32 %5902, 0
  %5904 = call float @dx.op.binary.f32(i32 36, float %5639, float %5903)  ; FMin(a,b)
  %5905 = fmul fast float %5904, %5705
  %5906 = fsub fast float 1.000000e+00, %5905
  %5907 = bitcast float %5906 to i32
  %5908 = sub nsw i32 2129859010, %5907
  %5909 = bitcast i32 %5908 to float
  %5910 = call float @dx.op.binary.f32(i32 36, float %5640, float %5903)  ; FMin(a,b)
  %5911 = fmul fast float %5910, %5705
  %5912 = fsub fast float 1.000000e+00, %5911
  %5913 = bitcast float %5912 to i32
  %5914 = sub nsw i32 2129859010, %5913
  %5915 = bitcast i32 %5914 to float
  %5916 = call float @dx.op.binary.f32(i32 36, float %5641, float %5903)  ; FMin(a,b)
  %5917 = fmul fast float %5916, %5705
  %5918 = fsub fast float 1.000000e+00, %5917
  %5919 = bitcast float %5918 to i32
  %5920 = sub nsw i32 2129859010, %5919
  %5921 = bitcast i32 %5920 to float
  %5922 = fmul fast float %5893, %5704
  %5923 = fmul fast float %5922, %5909
  %5924 = fmul fast float %5894, %5704
  %5925 = fmul fast float %5924, %5915
  %5926 = fmul fast float %5895, %5704
  %5927 = fmul fast float %5926, %5921
  %5928 = call float @dx.op.binary.f32(i32 36, float %5642, float %5903)  ; FMin(a,b)
  %5929 = fmul fast float %5928, %5705
  %5930 = fsub fast float 1.000000e+00, %5929
  %5931 = bitcast float %5930 to i32
  %5932 = sub nsw i32 2129859010, %5931
  %5933 = bitcast i32 %5932 to float
  %5934 = call float @dx.op.binary.f32(i32 36, float %5643, float %5903)  ; FMin(a,b)
  %5935 = fmul fast float %5934, %5705
  %5936 = fsub fast float 1.000000e+00, %5935
  %5937 = bitcast float %5936 to i32
  %5938 = sub nsw i32 2129859010, %5937
  %5939 = bitcast i32 %5938 to float
  %5940 = call float @dx.op.binary.f32(i32 36, float %5653, float %5903)  ; FMin(a,b)
  %5941 = fmul fast float %5940, %5705
  %5942 = fsub fast float 1.000000e+00, %5941
  %5943 = bitcast float %5942 to i32
  %5944 = sub nsw i32 2129859010, %5943
  %5945 = bitcast i32 %5944 to float
  %5946 = fmul fast float %5899, %5704
  %5947 = fmul fast float %5946, %5933
  %5948 = fmul fast float %5900, %5704
  %5949 = fmul fast float %5948, %5939
  %5950 = fmul fast float %5901, %5704
  %5951 = fmul fast float %5950, %5945
  %5952 = call float @dx.op.dot3.f32(i32 55, float %5923, float %5925, float %5927, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5953 = select i1 %248, float 0.000000e+00, float %5923
  %5954 = select i1 %248, float %5952, float %5925
  %5955 = select i1 %248, float 0.000000e+00, float %5927
  %5956 = call float @dx.op.dot3.f32(i32 55, float %5896, float %5897, float %5898, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5957 = select i1 %248, float 0.000000e+00, float %5896
  %5958 = select i1 %248, float %5956, float %5897
  %5959 = select i1 %248, float 0.000000e+00, float %5898
  %5960 = call float @dx.op.dot3.f32(i32 55, float %5947, float %5949, float %5951, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5961 = select i1 %248, float 0.000000e+00, float %5947
  %5962 = select i1 %248, float %5960, float %5949
  %5963 = select i1 %248, float 0.000000e+00, float %5951
  %5964 = fmul fast float %3989, %3989
  %5965 = call float @dx.op.unary.f32(i32 7, float %5964)  ; Saturate(value)
  %5966 = fmul fast float %5655, 9.843750e-01
  %5967 = fmul fast float %5648, 9.843750e-01
  %5968 = fadd fast float %5966, 7.812500e-03
  %5969 = fadd fast float %5967, 7.812500e-03
  %5970 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %43, float %5968, float %5969, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5971 = extractvalue %dx.types.ResRet.f32 %5970, 0
  %5972 = extractvalue %dx.types.ResRet.f32 %5970, 1
  %5973 = extractvalue %dx.types.ResRet.f32 %5970, 2
  %5974 = extractvalue %dx.types.ResRet.f32 %5970, 3
  %5975 = fsub fast float 1.000000e+00, %5965
  %5976 = fsub fast float %5973, %5971
  %5977 = fsub fast float %5974, %5972
  %5978 = fmul fast float %5976, %5975
  %5979 = fmul fast float %5977, %5975
  %5980 = fadd fast float %5978, %5971
  %5981 = fadd fast float %5979, %5972
  %5982 = fmul fast float %5980, %5642
  %5983 = fmul fast float %5980, %5643
  %5984 = fmul fast float %5980, %5653
  %5985 = fadd fast float %5982, %5981
  %5986 = fadd fast float %5983, %5981
  %5987 = fadd fast float %5984, %5981
  %5988 = fcmp fast ogt float %4640, 0.000000e+00
  br i1 %5988, label %5989, label %6015

; <label>:5989                                    ; preds = %5870
  %5990 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %43, float %4640, float %5655, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5991 = extractvalue %dx.types.ResRet.f32 %5990, 0
  %5992 = extractvalue %dx.types.ResRet.f32 %5990, 1
  %5993 = extractvalue %dx.types.ResRet.f32 %5990, 2
  %5994 = fadd fast float %5991, -5.000000e-01
  %5995 = fadd fast float %5992, -5.000000e-01
  %5996 = fadd fast float %5993, -5.000000e-01
  %5997 = fsub fast float 1.000000e+00, %5642
  %5998 = fsub fast float 1.000000e+00, %5643
  %5999 = fsub fast float 1.000000e+00, %5653
  %6000 = fmul fast float %5642, 4.000000e+00
  %6001 = fmul fast float %6000, %5997
  %6002 = fmul fast float %6001, %5994
  %6003 = fmul fast float %5643, 4.000000e+00
  %6004 = fmul fast float %6003, %5998
  %6005 = fmul fast float %6004, %5995
  %6006 = fmul fast float %5653, 4.000000e+00
  %6007 = fmul fast float %6006, %5999
  %6008 = fmul fast float %6007, %5996
  %6009 = fadd fast float %6002, %5985
  %6010 = fadd fast float %6005, %5986
  %6011 = fadd fast float %6008, %5987
  %6012 = call float @dx.op.unary.f32(i32 7, float %6009)  ; Saturate(value)
  %6013 = call float @dx.op.unary.f32(i32 7, float %6010)  ; Saturate(value)
  %6014 = call float @dx.op.unary.f32(i32 7, float %6011)  ; Saturate(value)
  br label %6015

; <label>:6015                                    ; preds = %5989, %5870
  %6016 = phi float [ %6012, %5989 ], [ %5985, %5870 ]
  %6017 = phi float [ %6013, %5989 ], [ %5986, %5870 ]
  %6018 = phi float [ %6014, %5989 ], [ %5987, %5870 ]
  %6019 = call float @dx.op.binary.f32(i32 35, float %6017, float %6018)  ; FMax(a,b)
  %6020 = call float @dx.op.binary.f32(i32 35, float %6016, float %6019)  ; FMax(a,b)
  %6021 = fsub fast float 1.000000e+00, %6020
  %6022 = fmul fast float %6020, %5648
  %6023 = fadd fast float %6022, %5648
  %6024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %6025 = extractvalue %dx.types.CBufRet.f32 %6024, 2
  %6026 = extractvalue %dx.types.CBufRet.f32 %6024, 3
  %6027 = fmul fast float %6023, %6025
  %6028 = fadd fast float %6027, %6026
  %6029 = call float @dx.op.unary.f32(i32 7, float %6028)  ; Saturate(value)
  %6030 = fsub fast float 1.000000e+00, %5716
  %6031 = fadd fast float %6030, %6029
  %6032 = call float @dx.op.unary.f32(i32 7, float %6031)  ; Saturate(value)
  %6033 = fcmp fast olt float %6032, 1.000000e+00
  br i1 %6033, label %6034, label %6588

; <label>:6034                                    ; preds = %6015
  %6035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6036 = extractvalue %dx.types.CBufRet.f32 %6035, 2
  %6037 = extractvalue %dx.types.CBufRet.f32 %6035, 3
  %6038 = fmul fast float %6036, %108
  %6039 = fmul fast float %6037, %109
  %6040 = fptoui float %6038 to i32
  %6041 = fptoui float %6039 to i32
  %6042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6043 = extractvalue %dx.types.CBufRet.f32 %6042, 0
  %6044 = extractvalue %dx.types.CBufRet.f32 %6042, 2
  %6045 = extractvalue %dx.types.CBufRet.f32 %6042, 3
  %6046 = fadd fast float %95, -4.000000e+00
  %6047 = call float @dx.op.binary.f32(i32 35, float %6046, float 0.000000e+00)  ; FMax(a,b)
  %6048 = fadd fast float %6047, %6043
  %6049 = fmul fast float %6048, %6044
  %6050 = call float @dx.op.unary.f32(i32 23, float %6049)  ; Log(value)
  %6051 = fmul fast float %6050, %6045
  %6052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6053 = extractvalue %dx.types.CBufRet.f32 %6052, 2
  %6054 = fmul fast float %6051, %6053
  %6055 = call float @dx.op.unary.f32(i32 7, float %6054)  ; Saturate(value)
  %6056 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6057 = extractvalue %dx.types.CBufRet.i32 %6056, 1
  %6058 = add i32 %6057, -1
  %6059 = uitofp i32 %6057 to float
  %6060 = fmul fast float %6059, %6055
  %6061 = fptoui float %6060 to i32
  %6062 = call i32 @dx.op.binary.i32(i32 40, i32 %6061, i32 %6058)  ; UMin(a,b)
  %6063 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6064 = extractvalue %dx.types.CBufRet.i32 %6063, 2
  %6065 = extractvalue %dx.types.CBufRet.i32 %6063, 3
  %6066 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6041, i32 %6064, i32 %6040)  ; UMad(a,b,c)
  %6067 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6062, i32 %6065, i32 %6066)  ; UMad(a,b,c)
  %6068 = call float @dx.op.binary.f32(i32 35, float %95, float 0.000000e+00)  ; FMax(a,b)
  %6069 = fptoui float %6068 to i32
  %6070 = lshr i32 %6069, 5
  %6071 = call i32 @dx.op.binary.i32(i32 40, i32 %6070, i32 8191)  ; UMin(a,b)
  br i1 false, label %6072, label %6079

; <label>:6072                                    ; preds = %6034
  %6073 = fadd fast float 0.000000e+00, %5703
  %6074 = call float @dx.op.dot3.f32(i32 55, float %5701, float %5702, float %6073, float %5701, float %5702, float %6073)  ; Dot3(ax,ay,az,bx,by,bz)
  %6075 = call float @dx.op.unary.f32(i32 25, float %6074)  ; Rsqrt(value)
  %6076 = fmul fast float %6075, %5701
  %6077 = fmul fast float %6075, %5702
  %6078 = fmul fast float %6073, %6075
  br label %6079

; <label>:6079                                    ; preds = %6072, %6034
  %6080 = phi float [ %6076, %6072 ], [ %5701, %6034 ]
  %6081 = phi float [ %6077, %6072 ], [ %5702, %6034 ]
  %6082 = phi float [ %6078, %6072 ], [ %5703, %6034 ]
  %6083 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6084 = extractvalue %dx.types.CBufRet.i32 %6083, 2
  %6085 = add nsw i32 %6084, -1
  %6086 = call i32 @dx.op.binary.i32(i32 37, i32 %6085, i32 0)  ; IMax(a,b)
  %6087 = shl i32 %6071, 2
  %6088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %6087, i32 undef)  ; BufferLoad(srv,index,wot)
  %6089 = extractvalue %dx.types.ResRet.i32 %6088, 0
  %6090 = lshr i32 %6089, 16
  %6091 = and i32 %6089, 65535
  %6092 = lshr i32 %6089, 21
  %6093 = lshr i32 %6091, 5
  %6094 = call i32 @dx.op.binary.i32(i32 40, i32 %6093, i32 %6086)  ; UMin(a,b)
  %6095 = icmp ugt i32 %6092, %6094
  br i1 %6095, label %6476, label %6096

; <label>:6096                                    ; preds = %6079
  br label %6097

; <label>:6097                                    ; preds = %6465, %6096
  %6098 = phi float [ %6466, %6465 ], [ 0.000000e+00, %6096 ]
  %6099 = phi float [ %6467, %6465 ], [ 0.000000e+00, %6096 ]
  %6100 = phi float [ %6468, %6465 ], [ 0.000000e+00, %6096 ]
  %6101 = phi float [ %6469, %6465 ], [ 1.000000e+00, %6096 ]
  %6102 = phi i32 [ %6473, %6465 ], [ %6092, %6096 ]
  %6103 = phi float [ %6470, %6465 ], [ 0.000000e+00, %6096 ]
  %6104 = phi float [ %6471, %6465 ], [ 0.000000e+00, %6096 ]
  %6105 = phi float [ %6472, %6465 ], [ 0.000000e+00, %6096 ]
  %6106 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6107 = extractvalue %dx.types.CBufRet.i32 %6106, 2
  %6108 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6067, i32 %6107, i32 %6102)  ; UMad(a,b,c)
  %6109 = shl i32 %6108, 2
  %6110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %6109, i32 undef)  ; BufferLoad(srv,index,wot)
  %6111 = extractvalue %dx.types.ResRet.i32 %6110, 0
  %6112 = shl i32 %6102, 5
  %6113 = sub nsw i32 %6090, %6112
  %6114 = call i32 @dx.op.binary.i32(i32 37, i32 %6113, i32 0)  ; IMax(a,b)
  %6115 = call i32 @dx.op.binary.i32(i32 38, i32 %6114, i32 31)  ; IMin(a,b)
  %6116 = sub nsw i32 1, %6090
  %6117 = add nsw i32 %6116, %6091
  %6118 = call i32 @dx.op.binary.i32(i32 37, i32 %6117, i32 0)  ; IMax(a,b)
  %6119 = call i32 @dx.op.binary.i32(i32 38, i32 %6118, i32 32)  ; IMin(a,b)
  %6120 = and i32 %6119, 31
  %6121 = shl i32 -1, %6120
  %6122 = xor i32 %6121, -1
  %6123 = and i32 %6115, 31
  %6124 = shl i32 %6122, %6123
  %6125 = icmp eq i32 %6119, 32
  %6126 = select i1 %6125, i32 -1, i32 %6124
  %6127 = and i32 %6126, %6111
  %6128 = icmp eq i32 %6127, 0
  br i1 %6128, label %6465, label %6129

; <label>:6129                                    ; preds = %6097
  br label %6130

; <label>:6130                                    ; preds = %6239, %6129
  %6131 = phi float [ %6240, %6239 ], [ %6098, %6129 ]
  %6132 = phi float [ %6241, %6239 ], [ %6099, %6129 ]
  %6133 = phi float [ %6242, %6239 ], [ %6100, %6129 ]
  %6134 = phi float [ %6243, %6239 ], [ %6101, %6129 ]
  %6135 = phi i32 [ %6143, %6239 ], [ %6127, %6129 ]
  %6136 = phi float [ %6244, %6239 ], [ %6103, %6129 ]
  %6137 = phi float [ %6245, %6239 ], [ %6104, %6129 ]
  %6138 = phi float [ %6246, %6239 ], [ %6105, %6129 ]
  %6139 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6135)  ; FirstbitLo(value)
  %6140 = add i32 %6139, %6112
  %6141 = and i32 %6139, 31
  %6142 = shl i32 1, %6141
  %6143 = xor i32 %6142, %6135
  %6144 = mul i32 %6140, 72
  %6145 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6144, i32 undef)  ; BufferLoad(srv,index,wot)
  %6146 = extractvalue %dx.types.ResRet.f32 %6145, 0
  %6147 = extractvalue %dx.types.ResRet.f32 %6145, 1
  %6148 = extractvalue %dx.types.ResRet.f32 %6145, 2
  %6149 = add i32 %6144, 12
  %6150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %6149, i32 undef)  ; BufferLoad(srv,index,wot)
  %6151 = extractvalue %dx.types.ResRet.i32 %6150, 0
  %6152 = add i32 %6144, 16
  %6153 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6152, i32 undef)  ; BufferLoad(srv,index,wot)
  %6154 = extractvalue %dx.types.ResRet.f32 %6153, 0
  %6155 = extractvalue %dx.types.ResRet.f32 %6153, 1
  %6156 = extractvalue %dx.types.ResRet.f32 %6153, 2
  %6157 = add i32 %6144, 28
  %6158 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6157, i32 undef)  ; BufferLoad(srv,index,wot)
  %6159 = extractvalue %dx.types.ResRet.f32 %6158, 0
  %6160 = add i32 %6144, 32
  %6161 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6160, i32 undef)  ; BufferLoad(srv,index,wot)
  %6162 = extractvalue %dx.types.ResRet.f32 %6161, 0
  %6163 = extractvalue %dx.types.ResRet.f32 %6161, 1
  %6164 = extractvalue %dx.types.ResRet.f32 %6161, 2
  %6165 = extractvalue %dx.types.ResRet.f32 %6161, 3
  %6166 = add i32 %6144, 48
  %6167 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6166, i32 undef)  ; BufferLoad(srv,index,wot)
  %6168 = extractvalue %dx.types.ResRet.f32 %6167, 0
  %6169 = extractvalue %dx.types.ResRet.f32 %6167, 1
  %6170 = add i32 %6144, 56
  %6171 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6170, i32 undef)  ; BufferLoad(srv,index,wot)
  %6172 = extractvalue %dx.types.ResRet.f32 %6171, 0
  %6173 = extractvalue %dx.types.ResRet.f32 %6171, 1
  %6174 = add i32 %6144, 64
  %6175 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6174, i32 undef)  ; BufferLoad(srv,index,wot)
  %6176 = extractvalue %dx.types.ResRet.f32 %6175, 0
  %6177 = extractvalue %dx.types.ResRet.f32 %6175, 1
  %6178 = mul i32 %6140, 60
  %6179 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6178, i32 undef)  ; BufferLoad(srv,index,wot)
  %6180 = extractvalue %dx.types.ResRet.f32 %6179, 0
  %6181 = extractvalue %dx.types.ResRet.f32 %6179, 1
  %6182 = extractvalue %dx.types.ResRet.f32 %6179, 2
  %6183 = add i32 %6178, 12
  %6184 = add i32 %6178, 48
  %6185 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6184, i32 undef)  ; BufferLoad(srv,index,wot)
  %6186 = extractvalue %dx.types.ResRet.f32 %6185, 0
  %6187 = extractvalue %dx.types.ResRet.f32 %6185, 1
  %6188 = extractvalue %dx.types.ResRet.f32 %6185, 2
  %6189 = and i32 %6151, 32767
  %6190 = bitcast float %6146 to i32
  %6191 = icmp eq i32 %6190, -1
  %6192 = bitcast float %6147 to i32
  %6193 = and i32 %6151, 32768
  %6194 = icmp ne i32 %6193, 0
  %6195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6196 = extractvalue %dx.types.CBufRet.f32 %6195, 0
  %6197 = extractvalue %dx.types.CBufRet.f32 %6195, 1
  %6198 = extractvalue %dx.types.CBufRet.f32 %6195, 2
  %6199 = fsub fast float %6180, %6196
  %6200 = fsub fast float %6181, %6197
  %6201 = fsub fast float %6182, %6198
  %6202 = fsub fast float %187, %6199
  %6203 = fsub fast float %188, %6200
  %6204 = fsub fast float %189, %6201
  %6205 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6183, i32 undef)  ; BufferLoad(srv,index,wot)
  %6206 = extractvalue %dx.types.ResRet.f32 %6205, 0
  %6207 = extractvalue %dx.types.ResRet.f32 %6205, 1
  %6208 = extractvalue %dx.types.ResRet.f32 %6205, 2
  %6209 = call float @dx.op.dot3.f32(i32 55, float %6202, float %6203, float %6204, float %6206, float %6207, float %6208)  ; Dot3(ax,ay,az,bx,by,bz)
  %6210 = add i32 %6178, 24
  %6211 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6210, i32 undef)  ; BufferLoad(srv,index,wot)
  %6212 = extractvalue %dx.types.ResRet.f32 %6211, 0
  %6213 = extractvalue %dx.types.ResRet.f32 %6211, 1
  %6214 = extractvalue %dx.types.ResRet.f32 %6211, 2
  %6215 = call float @dx.op.dot3.f32(i32 55, float %6202, float %6203, float %6204, float %6212, float %6213, float %6214)  ; Dot3(ax,ay,az,bx,by,bz)
  %6216 = add i32 %6178, 36
  %6217 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6216, i32 undef)  ; BufferLoad(srv,index,wot)
  %6218 = extractvalue %dx.types.ResRet.f32 %6217, 0
  %6219 = extractvalue %dx.types.ResRet.f32 %6217, 1
  %6220 = extractvalue %dx.types.ResRet.f32 %6217, 2
  %6221 = call float @dx.op.dot3.f32(i32 55, float %6202, float %6203, float %6204, float %6218, float %6219, float %6220)  ; Dot3(ax,ay,az,bx,by,bz)
  %6222 = call float @dx.op.unary.f32(i32 6, float %6209)  ; FAbs(value)
  %6223 = call float @dx.op.unary.f32(i32 6, float %6215)  ; FAbs(value)
  %6224 = call float @dx.op.unary.f32(i32 6, float %6221)  ; FAbs(value)
  %6225 = fsub fast float %6186, %6222
  %6226 = fsub fast float %6187, %6223
  %6227 = fsub fast float %6188, %6224
  %6228 = fmul fast float %6225, %6154
  %6229 = fmul fast float %6226, %6155
  %6230 = fmul fast float %6227, %6156
  %6231 = call float @dx.op.binary.f32(i32 36, float %6229, float %6230)  ; FMin(a,b)
  %6232 = call float @dx.op.binary.f32(i32 36, float %6228, float %6231)  ; FMin(a,b)
  %6233 = call float @dx.op.unary.f32(i32 7, float %6232)  ; Saturate(value)
  %6234 = call float @dx.op.binary.f32(i32 36, float %6134, float %6233)  ; FMin(a,b)
  %6235 = uitofp i1 %6194 to float
  %6236 = fsub fast float 1.000000e+00, %6235
  %6237 = fmul fast float %6234, %6236
  %6238 = fcmp fast ogt float %6237, 0.000000e+00
  br i1 %6238, label %6248, label %6239

; <label>:6239                                    ; preds = %6390, %6130
  %6240 = phi float [ %6454, %6390 ], [ %6131, %6130 ]
  %6241 = phi float [ %6455, %6390 ], [ %6132, %6130 ]
  %6242 = phi float [ %6456, %6390 ], [ %6133, %6130 ]
  %6243 = phi float [ %6463, %6390 ], [ %6134, %6130 ]
  %6244 = phi float [ %6460, %6390 ], [ %6136, %6130 ]
  %6245 = phi float [ %6461, %6390 ], [ %6137, %6130 ]
  %6246 = phi float [ %6462, %6390 ], [ %6138, %6130 ]
  %6247 = icmp eq i32 %6135, %6142
  br i1 %6247, label %6464, label %6130

; <label>:6248                                    ; preds = %6130
  br i1 %6191, label %6306, label %6249

; <label>:6249                                    ; preds = %6248
  %6250 = fsub fast float -0.000000e+00, %6206
  %6251 = fsub fast float -0.000000e+00, %6207
  %6252 = fsub fast float -0.000000e+00, %6208
  %6253 = call float @dx.op.dot3.f32(i32 55, float %6080, float %6081, float %6082, float %6250, float %6251, float %6252)  ; Dot3(ax,ay,az,bx,by,bz)
  %6254 = fsub fast float -0.000000e+00, %6253
  %6255 = call float @dx.op.dot3.f32(i32 55, float %6202, float %6203, float %6204, float %6250, float %6251, float %6252)  ; Dot3(ax,ay,az,bx,by,bz)
  %6256 = fadd fast float %6255, %6169
  %6257 = fadd fast float %6168, %6255
  %6258 = fsub fast float -0.000000e+00, %6257
  %6259 = fcmp ogt float %6253, -0.000000e+00
  %6260 = select i1 %6259, float %6258, float %6256
  %6261 = call float @dx.op.unary.f32(i32 6, float %6254)  ; FAbs(value)
  %6262 = fdiv fast float 1.000000e+00, %6261
  %6263 = fmul fast float %6260, %6262
  %6264 = call float @dx.op.binary.f32(i32 35, float %6263, float 0.000000e+00)  ; FMax(a,b)
  %6265 = fsub fast float -0.000000e+00, %6212
  %6266 = fsub fast float -0.000000e+00, %6213
  %6267 = fsub fast float -0.000000e+00, %6214
  %6268 = call float @dx.op.dot3.f32(i32 55, float %6080, float %6081, float %6082, float %6265, float %6266, float %6267)  ; Dot3(ax,ay,az,bx,by,bz)
  %6269 = fsub fast float -0.000000e+00, %6268
  %6270 = call float @dx.op.dot3.f32(i32 55, float %6202, float %6203, float %6204, float %6265, float %6266, float %6267)  ; Dot3(ax,ay,az,bx,by,bz)
  %6271 = fadd fast float %6270, %6173
  %6272 = fadd fast float %6172, %6270
  %6273 = fsub fast float -0.000000e+00, %6272
  %6274 = fcmp ogt float %6268, -0.000000e+00
  %6275 = select i1 %6274, float %6273, float %6271
  %6276 = call float @dx.op.unary.f32(i32 6, float %6269)  ; FAbs(value)
  %6277 = fdiv fast float 1.000000e+00, %6276
  %6278 = fmul fast float %6275, %6277
  %6279 = call float @dx.op.binary.f32(i32 35, float %6278, float 0.000000e+00)  ; FMax(a,b)
  %6280 = fsub fast float -0.000000e+00, %6218
  %6281 = fsub fast float -0.000000e+00, %6219
  %6282 = fsub fast float -0.000000e+00, %6220
  %6283 = call float @dx.op.dot3.f32(i32 55, float %6080, float %6081, float %6082, float %6280, float %6281, float %6282)  ; Dot3(ax,ay,az,bx,by,bz)
  %6284 = fsub fast float -0.000000e+00, %6283
  %6285 = call float @dx.op.dot3.f32(i32 55, float %6202, float %6203, float %6204, float %6280, float %6281, float %6282)  ; Dot3(ax,ay,az,bx,by,bz)
  %6286 = fadd fast float %6285, %6177
  %6287 = fadd fast float %6176, %6285
  %6288 = fsub fast float -0.000000e+00, %6287
  %6289 = fcmp ogt float %6283, -0.000000e+00
  %6290 = select i1 %6289, float %6288, float %6286
  %6291 = call float @dx.op.unary.f32(i32 6, float %6284)  ; FAbs(value)
  %6292 = fdiv fast float 1.000000e+00, %6291
  %6293 = fmul fast float %6290, %6292
  %6294 = call float @dx.op.binary.f32(i32 35, float %6293, float 0.000000e+00)  ; FMax(a,b)
  %6295 = call float @dx.op.binary.f32(i32 36, float %6279, float %6294)  ; FMin(a,b)
  %6296 = call float @dx.op.binary.f32(i32 36, float %6264, float %6295)  ; FMin(a,b)
  %6297 = fmul fast float %6296, %6080
  %6298 = fmul fast float %6296, %6081
  %6299 = fmul fast float %6296, %6082
  %6300 = fadd fast float %6297, %187
  %6301 = fadd fast float %6298, %188
  %6302 = fadd fast float %6299, %189
  %6303 = fsub fast float %6300, %6146
  %6304 = fsub fast float %6301, %6147
  %6305 = fsub fast float %6302, %6148
  br label %6313

; <label>:6306                                    ; preds = %6248
  %6307 = fmul fast float %6080, 8.096000e+03
  %6308 = fmul fast float %6081, 8.096000e+03
  %6309 = fmul fast float %6082, 8.096000e+03
  %6310 = fadd fast float %6307, %187
  %6311 = fadd fast float %6308, %188
  %6312 = fadd fast float %6309, %189
  br label %6313

; <label>:6313                                    ; preds = %6306, %6249
  %6314 = phi float [ %6080, %6306 ], [ %6303, %6249 ]
  %6315 = phi float [ %6081, %6306 ], [ %6304, %6249 ]
  %6316 = phi float [ %6082, %6306 ], [ %6305, %6249 ]
  %6317 = phi float [ %6310, %6306 ], [ %6300, %6249 ]
  %6318 = phi float [ %6311, %6306 ], [ %6301, %6249 ]
  %6319 = phi float [ %6312, %6306 ], [ %6302, %6249 ]
  %6320 = fcmp fast olt float %6165, 1.000000e+00
  br i1 %6320, label %6321, label %6352, !dx.controlflow.hints !91

; <label>:6321                                    ; preds = %6313
  %6322 = fmul fast float %6316, %6163
  %6323 = fmul fast float %6315, %6164
  %6324 = fsub fast float %6322, %6323
  %6325 = fmul fast float %6314, %6164
  %6326 = fmul fast float %6316, %6162
  %6327 = fsub fast float %6325, %6326
  %6328 = fmul fast float %6315, %6162
  %6329 = fmul fast float %6314, %6163
  %6330 = fsub fast float %6328, %6329
  %6331 = fmul fast float %6324, 2.000000e+00
  %6332 = fmul fast float %6327, 2.000000e+00
  %6333 = fmul fast float %6330, 2.000000e+00
  %6334 = fmul fast float %6331, %6165
  %6335 = fmul fast float %6332, %6165
  %6336 = fmul fast float %6333, %6165
  %6337 = fmul fast float %6333, %6163
  %6338 = fmul fast float %6332, %6164
  %6339 = fmul fast float %6331, %6164
  %6340 = fmul fast float %6333, %6162
  %6341 = fmul fast float %6332, %6162
  %6342 = fmul fast float %6331, %6163
  %6343 = fadd fast float %6337, %6314
  %6344 = fadd fast float %6343, %6334
  %6345 = fsub fast float %6344, %6338
  %6346 = fsub fast float %6315, %6340
  %6347 = fadd fast float %6346, %6335
  %6348 = fadd fast float %6347, %6339
  %6349 = fadd fast float %6336, %6316
  %6350 = fsub fast float %6349, %6342
  %6351 = fadd fast float %6350, %6341
  br label %6352

; <label>:6352                                    ; preds = %6321, %6313
  %6353 = phi float [ %6345, %6321 ], [ %6314, %6313 ]
  %6354 = phi float [ %6348, %6321 ], [ %6315, %6313 ]
  %6355 = phi float [ %6351, %6321 ], [ %6316, %6313 ]
  br i1 %6191, label %6387, label %6356

; <label>:6356                                    ; preds = %6352
  %6357 = fmul fast float %5648, 0x400187C840000000
  %6358 = fadd fast float %6357, 0xC00EFC2120000000
  %6359 = fmul fast float %6358, %5648
  %6360 = fadd fast float %6359, 0x3FE5D16340000000
  %6361 = fmul fast float %6360, %5648
  %6362 = fadd fast float %6361, 1.000000e+00
  %6363 = call float @dx.op.unary.f32(i32 7, float %6362)  ; Saturate(value)
  %6364 = fsub fast float %6317, %187
  %6365 = fsub fast float %6318, %188
  %6366 = fsub fast float %6319, %189
  %6367 = fsub fast float %6317, %6146
  %6368 = fsub fast float %6318, %6147
  %6369 = fsub fast float %6319, %6148
  %6370 = call float @dx.op.dot3.f32(i32 55, float %6364, float %6365, float %6366, float %6364, float %6365, float %6366)  ; Dot3(ax,ay,az,bx,by,bz)
  %6371 = call float @dx.op.dot3.f32(i32 55, float %6367, float %6368, float %6369, float %6367, float %6368, float %6369)  ; Dot3(ax,ay,az,bx,by,bz)
  %6372 = fadd fast float %6371, 0x3EE4F8B580000000
  %6373 = fdiv fast float %6370, %6372
  %6374 = bitcast float %6373 to i32
  %6375 = ashr i32 %6374, 1
  %6376 = add nsw i32 %6375, 532487669
  %6377 = bitcast i32 %6376 to float
  %6378 = fmul fast float %6377, %6363
  %6379 = call float @dx.op.unary.f32(i32 7, float %6378)  ; Saturate(value)
  %6380 = fmul fast float %6379, 0x4009981AE0000000
  %6381 = fsub fast float 0x40111BBD80000000, %6380
  %6382 = fmul fast float %6381, %6379
  %6383 = fadd fast float %6382, 0xC0009F6020000000
  %6384 = fmul fast float %6383, %6379
  %6385 = fadd fast float %6384, 1.000000e+00
  %6386 = call float @dx.op.unary.f32(i32 7, float %6385)  ; Saturate(value)
  br label %6390

; <label>:6387                                    ; preds = %6352
  %6388 = icmp ne i32 %6192, -1
  %6389 = zext i1 %6388 to i32
  br label %6390

; <label>:6390                                    ; preds = %6387, %6356
  %6391 = phi float [ %5648, %6387 ], [ %6386, %6356 ]
  %6392 = phi i32 [ %6389, %6387 ], [ 0, %6356 ]
  %6393 = fmul float %6391, 5.000000e+00
  %6394 = fsub float 5.000000e+00, %6393
  %6395 = icmp ne i32 %6392, 0
  %6396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6397 = extractvalue %dx.types.CBufRet.f32 %6396, 3
  %6398 = fadd fast float %6397, %6394
  %6399 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6398)  ; FMax(a,b)
  %6400 = call float @dx.op.unary.f32(i32 6, float %6353)  ; FAbs(value)
  %6401 = call float @dx.op.unary.f32(i32 6, float %6354)  ; FAbs(value)
  %6402 = fadd fast float %6401, %6400
  %6403 = call float @dx.op.unary.f32(i32 6, float %6355)  ; FAbs(value)
  %6404 = fadd fast float %6402, %6403
  %6405 = fcmp fast oeq float %6404, 0.000000e+00
  %6406 = fdiv fast float 1.000000e+00, %6404
  %6407 = select i1 %6405, float 1.000000e+00, float %6406
  %6408 = fmul fast float %6407, %6353
  %6409 = fmul fast float %6407, %6354
  %6410 = call float @dx.op.unary.f32(i32 6, float %6409)  ; FAbs(value)
  %6411 = call float @dx.op.unary.f32(i32 6, float %6408)  ; FAbs(value)
  %6412 = fsub fast float 1.000000e+00, %6410
  %6413 = fsub fast float 1.000000e+00, %6411
  %6414 = fcmp fast oge float %6408, 0.000000e+00
  %6415 = fcmp fast oge float %6409, 0.000000e+00
  %6416 = select i1 %6414, float 1.000000e+00, float -1.000000e+00
  %6417 = select i1 %6415, float 1.000000e+00, float -1.000000e+00
  %6418 = fcmp fast ole float %6355, 0.000000e+00
  %6419 = fmul fast float %6416, %6412
  %6420 = fmul fast float %6417, %6413
  %6421 = select i1 %6418, float %6419, float %6408
  %6422 = select i1 %6418, float %6420, float %6409
  %6423 = fmul fast float %6421, 5.000000e-01
  %6424 = fmul fast float %6422, 5.000000e-01
  %6425 = fadd fast float %6423, 5.000000e-01
  %6426 = fadd fast float %6424, 5.000000e-01
  %6427 = uitofp i32 %6189 to float
  %6428 = call float @dx.op.binary.f32(i32 36, float %6399, float 3.000000e+00)  ; FMin(a,b)
  %6429 = fadd fast float %6428, 2.000000e+00
  %6430 = call float @dx.op.unary.f32(i32 21, float %6429)  ; Exp(value)
  %6431 = extractvalue %dx.types.CBufRet.f32 %6396, 1
  %6432 = fmul fast float %6431, %6430
  %6433 = fmul fast float %6432, 2.000000e+00
  %6434 = fsub fast float 1.000000e+00, %6433
  %6435 = fmul fast float %6425, %6434
  %6436 = fmul fast float %6426, %6434
  %6437 = fadd fast float %6435, %6432
  %6438 = fadd fast float %6436, %6432
  %6439 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %41, float %6437, float %6438, float %6427, float undef, i32 0, i32 0, i32 undef, float %6399)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6440 = extractvalue %dx.types.ResRet.f32 %6439, 0
  %6441 = extractvalue %dx.types.ResRet.f32 %6439, 1
  %6442 = extractvalue %dx.types.ResRet.f32 %6439, 2
  %6443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6444 = extractvalue %dx.types.CBufRet.f32 %6443, 3
  %6445 = fmul fast float %6444, %6159
  %6446 = call float @dx.op.binary.f32(i32 36, float %5721, float %6445)  ; FMin(a,b)
  %6447 = select i1 %6395, float %6446, float %6445
  %6448 = fmul fast float %6440, %6237
  %6449 = fmul fast float %6448, %6447
  %6450 = fmul fast float %6441, %6237
  %6451 = fmul fast float %6450, %6447
  %6452 = fmul fast float %6442, %6237
  %6453 = fmul fast float %6452, %6447
  %6454 = fadd fast float %6449, %6131
  %6455 = fadd fast float %6451, %6132
  %6456 = fadd fast float %6453, %6133
  %6457 = fmul fast float %6317, %6237
  %6458 = fmul fast float %6318, %6237
  %6459 = fmul fast float %6319, %6237
  %6460 = fadd fast float %6457, %6136
  %6461 = fadd fast float %6458, %6137
  %6462 = fadd fast float %6459, %6138
  %6463 = fsub fast float %6134, %6237
  br label %6239

; <label>:6464                                    ; preds = %6239
  br label %6465

; <label>:6465                                    ; preds = %6464, %6097
  %6466 = phi float [ %6098, %6097 ], [ %6240, %6464 ]
  %6467 = phi float [ %6099, %6097 ], [ %6241, %6464 ]
  %6468 = phi float [ %6100, %6097 ], [ %6242, %6464 ]
  %6469 = phi float [ %6101, %6097 ], [ %6243, %6464 ]
  %6470 = phi float [ %6103, %6097 ], [ %6244, %6464 ]
  %6471 = phi float [ %6104, %6097 ], [ %6245, %6464 ]
  %6472 = phi float [ %6105, %6097 ], [ %6246, %6464 ]
  %6473 = add i32 %6102, 1
  %6474 = icmp ugt i32 %6473, %6094
  br i1 %6474, label %6475, label %6097, !llvm.loop !92

; <label>:6475                                    ; preds = %6465
  br label %6476

; <label>:6476                                    ; preds = %6475, %6079
  %6477 = phi float [ 0.000000e+00, %6079 ], [ %6466, %6475 ]
  %6478 = phi float [ 0.000000e+00, %6079 ], [ %6467, %6475 ]
  %6479 = phi float [ 0.000000e+00, %6079 ], [ %6468, %6475 ]
  %6480 = phi float [ 0.000000e+00, %6079 ], [ %6470, %6475 ]
  %6481 = phi float [ 0.000000e+00, %6079 ], [ %6471, %6475 ]
  %6482 = phi float [ 0.000000e+00, %6079 ], [ %6472, %6475 ]
  %6483 = call float @dx.op.dot3.f32(i32 55, float %6477, float %6478, float %6479, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6484 = select i1 %248, float 0.000000e+00, float %6477
  %6485 = select i1 %248, float %6483, float %6478
  %6486 = select i1 %248, float 0.000000e+00, float %6479
  %6487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %6488 = extractvalue %dx.types.CBufRet.f32 %6487, 0
  %6489 = extractvalue %dx.types.CBufRet.f32 %6487, 1
  %6490 = extractvalue %dx.types.CBufRet.f32 %6487, 2
  %6491 = extractvalue %dx.types.CBufRet.f32 %6487, 3
  %6492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %6493 = extractvalue %dx.types.CBufRet.f32 %6492, 0
  %6494 = extractvalue %dx.types.CBufRet.f32 %6492, 1
  %6495 = extractvalue %dx.types.CBufRet.f32 %6492, 2
  %6496 = extractvalue %dx.types.CBufRet.f32 %6492, 3
  %6497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %6498 = extractvalue %dx.types.CBufRet.f32 %6497, 0
  %6499 = extractvalue %dx.types.CBufRet.f32 %6497, 1
  %6500 = extractvalue %dx.types.CBufRet.f32 %6497, 2
  %6501 = extractvalue %dx.types.CBufRet.f32 %6497, 3
  %6502 = call float @dx.op.dot3.f32(i32 55, float %6498, float %6499, float %6500, float %5661, float %5662, float %5663)  ; Dot3(ax,ay,az,bx,by,bz)
  %6503 = call float @dx.op.dot3.f32(i32 55, float %6480, float %6481, float %6482, float %6498, float %6499, float %6500)  ; Dot3(ax,ay,az,bx,by,bz)
  %6504 = call float @dx.op.dot3.f32(i32 55, float %187, float %188, float %189, float %6498, float %6499, float %6500)  ; Dot3(ax,ay,az,bx,by,bz)
  %6505 = fadd fast float %5648, -1.000000e+00
  %6506 = fsub fast float %6503, %6504
  %6507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %6508 = extractvalue %dx.types.CBufRet.f32 %6507, 2
  %6509 = fmul fast float %6508, %6503
  %6510 = fdiv fast float 1.600000e+02, %6509
  %6511 = fmul fast float %6505, %6505
  %6512 = fmul fast float %6511, 0xBFB5B17960000000
  %6513 = fmul fast float %6512, %6506
  %6514 = fmul fast float %6513, %6510
  %6515 = call float @dx.op.unary.f32(i32 21, float %6514)  ; Exp(value)
  %6516 = fmul fast float %6515, 0x3FF04B2960000000
  %6517 = fsub fast float 0x3FF04B2960000000, %6516
  %6518 = call float @dx.op.unary.f32(i32 7, float %6517)  ; Saturate(value)
  %6519 = fmul fast float %6518, 4.000000e+00
  %6520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %6521 = extractvalue %dx.types.CBufRet.f32 %6520, 0
  %6522 = extractvalue %dx.types.CBufRet.f32 %6520, 1
  %6523 = extractvalue %dx.types.CBufRet.f32 %6520, 2
  %6524 = fadd fast float %6521, %6480
  %6525 = fadd fast float %6522, %6481
  %6526 = fadd fast float %6523, %6482
  %6527 = fmul fast float %6524, %6488
  %6528 = call float @dx.op.tertiary.f32(i32 46, float %6525, float %6489, float %6527)  ; FMad(a,b,c)
  %6529 = call float @dx.op.tertiary.f32(i32 46, float %6526, float %6490, float %6528)  ; FMad(a,b,c)
  %6530 = fadd fast float %6529, %6491
  %6531 = fmul fast float %6524, %6493
  %6532 = call float @dx.op.tertiary.f32(i32 46, float %6525, float %6494, float %6531)  ; FMad(a,b,c)
  %6533 = call float @dx.op.tertiary.f32(i32 46, float %6526, float %6495, float %6532)  ; FMad(a,b,c)
  %6534 = fadd fast float %6533, %6496
  %6535 = fmul fast float %6524, %6498
  %6536 = call float @dx.op.tertiary.f32(i32 46, float %6525, float %6499, float %6535)  ; FMad(a,b,c)
  %6537 = call float @dx.op.tertiary.f32(i32 46, float %6526, float %6500, float %6536)  ; FMad(a,b,c)
  %6538 = fadd fast float %6537, %6501
  %6539 = fdiv fast float %6530, %6538
  %6540 = fdiv fast float %6534, %6538
  %6541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6542 = extractvalue %dx.types.CBufRet.f32 %6541, 0
  %6543 = extractvalue %dx.types.CBufRet.f32 %6541, 1
  %6544 = fmul fast float %6542, %6539
  %6545 = fmul fast float %6543, %6540
  %6546 = extractvalue %dx.types.CBufRet.f32 %6541, 2
  %6547 = extractvalue %dx.types.CBufRet.f32 %6541, 3
  %6548 = fadd fast float %6544, %6546
  %6549 = fadd fast float %6545, %6547
  %6550 = fmul fast float %6502, 8.000000e+00
  %6551 = call float @dx.op.unary.f32(i32 7, float %6550)  ; Saturate(value)
  %6552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %6553 = extractvalue %dx.types.CBufRet.f32 %6552, 0
  %6554 = fmul fast float %6548, 2.000000e+00
  %6555 = fmul fast float %6549, 2.000000e+00
  %6556 = fadd fast float %6554, -1.000000e+00
  %6557 = fadd fast float %6555, -1.000000e+00
  %6558 = fmul fast float %6556, %6556
  %6559 = fsub fast float 1.000000e+00, %6558
  %6560 = call float @dx.op.unary.f32(i32 7, float %6559)  ; Saturate(value)
  %6561 = fmul fast float %6557, %6557
  %6562 = fsub fast float 1.000000e+00, %6561
  %6563 = call float @dx.op.unary.f32(i32 7, float %6562)  ; Saturate(value)
  %6564 = fmul fast float %6553, %6560
  %6565 = fmul fast float %6564, %6563
  %6566 = call float @dx.op.unary.f32(i32 7, float %6565)  ; Saturate(value)
  %6567 = fmul fast float %6566, %6551
  %6568 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %41, float %6548, float %6549, float undef, float undef, i32 0, i32 0, i32 undef, float %6519)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6569 = extractvalue %dx.types.ResRet.f32 %6568, 0
  %6570 = extractvalue %dx.types.ResRet.f32 %6568, 1
  %6571 = extractvalue %dx.types.ResRet.f32 %6568, 2
  %6572 = select i1 %248, float 0.000000e+00, float %6570
  %6573 = select i1 %248, float 0.000000e+00, float %6571
  %6574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6575 = extractvalue %dx.types.CBufRet.f32 %6574, 2
  %6576 = fmul fast float %6575, %6569
  %6577 = fmul fast float %6572, %6575
  %6578 = fmul fast float %6573, %6575
  %6579 = fsub fast float %6576, %6484
  %6580 = fsub fast float %6577, %6485
  %6581 = fsub fast float %6578, %6486
  %6582 = fmul fast float %6579, %6567
  %6583 = fmul fast float %6580, %6567
  %6584 = fmul fast float %6581, %6567
  %6585 = fadd fast float %6582, %6484
  %6586 = fadd fast float %6583, %6485
  %6587 = fadd fast float %6584, %6486
  br label %6588

; <label>:6588                                    ; preds = %6476, %6015
  %6589 = phi float [ %5961, %6015 ], [ %6585, %6476 ]
  %6590 = phi float [ %5962, %6015 ], [ %6586, %6476 ]
  %6591 = phi float [ %5963, %6015 ], [ %6587, %6476 ]
  %6592 = call float @dx.op.dot3.f32(i32 55, float %5639, float %5640, float %5641, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6593 = fcmp fast ogt float %6592, 0x3E7FF19E20000000
  %6594 = fdiv fast float 1.000000e+00, %6592
  %6595 = select i1 %6593, float %6594, float 0.000000e+00
  %6596 = fmul fast float %6595, %5639
  %6597 = fmul fast float %6595, %5640
  %6598 = fmul fast float %6595, %5641
  %6599 = fadd fast float %6596, -1.000000e+00
  %6600 = fadd fast float %6597, -1.000000e+00
  %6601 = fadd fast float %6598, -1.000000e+00
  %6602 = fmul fast float %6599, 5.000000e-01
  %6603 = fmul fast float %6600, 5.000000e-01
  %6604 = fmul fast float %6601, 5.000000e-01
  %6605 = fadd fast float %6602, 1.000000e+00
  %6606 = fadd fast float %6603, 1.000000e+00
  %6607 = fadd fast float %6604, 1.000000e+00
  %6608 = call float @dx.op.binary.f32(i32 35, float %5655, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6609 = fdiv fast float %3989, %6608
  %6610 = fcmp fast olt float %4689, 1.270000e+02
  %6611 = fcmp fast olt float %4690, 1.270000e+02
  %6612 = fcmp fast olt float %4691, 1.270000e+02
  %6613 = fmul fast float %4689, 0xBFF7154760000000
  %6614 = fmul fast float %6613, %6609
  %6615 = fmul fast float %4690, 0xBFF7154760000000
  %6616 = fmul fast float %6615, %6609
  %6617 = fmul fast float %4691, 0xBFF7154760000000
  %6618 = fmul fast float %6617, %6609
  %6619 = call float @dx.op.unary.f32(i32 21, float %6614)  ; Exp(value)
  %6620 = call float @dx.op.unary.f32(i32 21, float %6616)  ; Exp(value)
  %6621 = call float @dx.op.unary.f32(i32 21, float %6618)  ; Exp(value)
  %6622 = call float @dx.op.unary.f32(i32 7, float %6619)  ; Saturate(value)
  %6623 = call float @dx.op.unary.f32(i32 7, float %6620)  ; Saturate(value)
  %6624 = call float @dx.op.unary.f32(i32 7, float %6621)  ; Saturate(value)
  %6625 = select i1 %6610, float %6622, float 0.000000e+00
  %6626 = select i1 %6611, float %6623, float 0.000000e+00
  %6627 = select i1 %6612, float %6624, float 0.000000e+00
  %6628 = fmul fast float %6625, %6021
  %6629 = fmul fast float %6626, %6021
  %6630 = fmul fast float %6627, %6021
  %6631 = fadd fast float %6628, -1.000000e+00
  %6632 = fadd fast float %6629, -1.000000e+00
  %6633 = fadd fast float %6630, -1.000000e+00
  %6634 = fmul fast float %6631, %4637
  %6635 = fmul fast float %6632, %4637
  %6636 = fmul fast float %6633, %4637
  %6637 = fmul fast float %6589, %6016
  %6638 = fmul fast float %6590, %6017
  %6639 = fmul fast float %6591, %6018
  %6640 = fsub fast float 1.000000e+00, %5655
  %6641 = bitcast float %6640 to i32
  %6642 = sitofp i32 %6641 to float
  %6643 = fmul fast float %6642, 5.000000e+00
  %6644 = fadd fast float %6643, 0xC1EFBF8940000000
  %6645 = fptosi float %6644 to i32
  %6646 = bitcast i32 %6645 to float
  %6647 = fmul fast float %6646, %4641
  %6648 = fmul fast float %5953, %6647
  %6649 = fmul fast float %6648, %6021
  %6650 = fmul fast float %6649, %6605
  %6651 = fmul fast float %5954, %6647
  %6652 = fmul fast float %6651, %6021
  %6653 = fmul fast float %6652, %6606
  %6654 = fmul fast float %5955, %6647
  %6655 = fmul fast float %6654, %6021
  %6656 = fmul fast float %6655, %6607
  %6657 = fadd fast float %6637, %4633
  %6658 = fadd fast float %6657, %6650
  %6659 = fmul fast float %6658, %4637
  %6660 = fadd fast float %6638, %4634
  %6661 = fadd fast float %6660, %6653
  %6662 = fmul fast float %6661, %4637
  %6663 = fadd fast float %6639, %4635
  %6664 = fadd fast float %6663, %6656
  %6665 = fmul fast float %6664, %4637
  %6666 = fmul fast float %5643, 0x4012D0A400000000
  %6667 = fadd fast float %6636, 1.000000e+00
  %6668 = fadd fast float %6635, 1.000000e+00
  %6669 = fadd fast float %6634, 1.000000e+00
  %6670 = fmul fast float %6021, %5955
  %6671 = fmul fast float %6021, %5954
  %6672 = fmul fast float %6021, %5953
  %6673 = fmul fast float %5710, %4637
  %6674 = fsub fast float 1.000000e+00, %6673
  %6675 = call float @dx.op.unary.f32(i32 7, float %6674)  ; Saturate(value)
  %6676 = fsub fast float 1.000000e+00, %6675
  %6677 = fadd fast float %6666, 0x3FDB6377A0000000
  %6678 = fmul fast float %6676, %6677
  %6679 = call float @dx.op.dot3.f32(i32 55, float %5450, float %5451, float %5452, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6680 = fadd fast float %6678, %6679
  %6681 = call float @dx.op.unary.f32(i32 7, float %6680)  ; Saturate(value)
  %6682 = call float @dx.op.binary.f32(i32 35, float %6681, float 0x3F847AE140000000)  ; FMax(a,b)
  %6683 = fmul fast float %6682, %6682
  %6684 = fmul fast float %6683, %6683
  %6685 = fmul fast float %6684, 0xC00A935000000000
  %6686 = call float @dx.op.unary.f32(i32 21, float %6685)  ; Exp(value)
  %6687 = fsub fast float 1.000000e+00, %6686
  %6688 = fmul fast float %6669, %5957
  %6689 = fmul fast float %6688, %6687
  %6690 = fmul fast float %6668, %5958
  %6691 = fmul fast float %6690, %6687
  %6692 = fmul fast float %6667, %5959
  %6693 = fmul fast float %6692, %6687
  %6694 = fadd fast float %6689, %6672
  %6695 = fmul fast float %6694, %4637
  %6696 = fadd fast float %6691, %6671
  %6697 = fmul fast float %6696, %4637
  %6698 = fadd fast float %6693, %6670
  %6699 = fmul fast float %6698, %4637
  %6700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6701 = extractvalue %dx.types.CBufRet.f32 %6700, 3
  %6702 = fcmp fast oeq float %6701, 0.000000e+00
  br i1 %6702, label %8482, label %6703

; <label>:6703                                    ; preds = %6588
  %6704 = extractvalue %dx.types.CBufRet.f32 %6700, 0
  %6705 = extractvalue %dx.types.CBufRet.f32 %6700, 1
  %6706 = extractvalue %dx.types.CBufRet.f32 %6700, 2
  %6707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6708 = extractvalue %dx.types.CBufRet.f32 %6707, 0
  %6709 = extractvalue %dx.types.CBufRet.f32 %6707, 1
  %6710 = extractvalue %dx.types.CBufRet.f32 %6707, 2
  %6711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6712 = extractvalue %dx.types.CBufRet.f32 %6711, 0
  %6713 = extractvalue %dx.types.CBufRet.f32 %6711, 1
  %6714 = call float @dx.op.dot3.f32(i32 55, float %6708, float %6709, float %6710, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6715 = select i1 %248, float %6712, float %6708
  %6716 = select i1 %248, float %6714, float %6709
  %6717 = select i1 %248, float %6713, float %6710
  %6718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6719 = extractvalue %dx.types.CBufRet.f32 %6718, 2
  %6720 = fmul fast float %6719, %115
  %6721 = fmul fast float %6719, %116
  %6722 = fmul fast float %6719, %117
  %6723 = fadd fast float %6720, %187
  %6724 = fadd fast float %6721, %188
  %6725 = fadd fast float %6722, %189
  %6726 = fcmp fast olt float %6701, 0.000000e+00
  br i1 %6726, label %7984, label %6727

; <label>:6727                                    ; preds = %6703
  %6728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6729 = extractvalue %dx.types.CBufRet.f32 %6728, 0
  %6730 = extractvalue %dx.types.CBufRet.f32 %6728, 1
  %6731 = extractvalue %dx.types.CBufRet.f32 %6728, 2
  %6732 = extractvalue %dx.types.CBufRet.f32 %6728, 3
  %6733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6734 = extractvalue %dx.types.CBufRet.f32 %6733, 0
  %6735 = extractvalue %dx.types.CBufRet.f32 %6733, 1
  %6736 = extractvalue %dx.types.CBufRet.f32 %6733, 2
  %6737 = extractvalue %dx.types.CBufRet.f32 %6733, 3
  %6738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6739 = extractvalue %dx.types.CBufRet.f32 %6738, 0
  %6740 = extractvalue %dx.types.CBufRet.f32 %6738, 1
  %6741 = extractvalue %dx.types.CBufRet.f32 %6738, 2
  %6742 = extractvalue %dx.types.CBufRet.f32 %6738, 3
  %6743 = fmul fast float %6729, %6723
  %6744 = call float @dx.op.tertiary.f32(i32 46, float %6724, float %6730, float %6743)  ; FMad(a,b,c)
  %6745 = call float @dx.op.tertiary.f32(i32 46, float %6725, float %6731, float %6744)  ; FMad(a,b,c)
  %6746 = fadd fast float %6745, %6732
  %6747 = fmul fast float %6734, %6723
  %6748 = call float @dx.op.tertiary.f32(i32 46, float %6724, float %6735, float %6747)  ; FMad(a,b,c)
  %6749 = call float @dx.op.tertiary.f32(i32 46, float %6725, float %6736, float %6748)  ; FMad(a,b,c)
  %6750 = fadd fast float %6749, %6737
  %6751 = fmul fast float %6739, %6723
  %6752 = call float @dx.op.tertiary.f32(i32 46, float %6724, float %6740, float %6751)  ; FMad(a,b,c)
  %6753 = call float @dx.op.tertiary.f32(i32 46, float %6725, float %6741, float %6752)  ; FMad(a,b,c)
  %6754 = fadd fast float %6753, %6742
  %6755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6756 = extractvalue %dx.types.CBufRet.f32 %6755, 0
  %6757 = fcmp fast une float %6756, 0.000000e+00
  %6758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6759 = extractvalue %dx.types.CBufRet.f32 %6758, 0
  %6760 = extractvalue %dx.types.CBufRet.f32 %6758, 1
  %6761 = extractvalue %dx.types.CBufRet.f32 %6758, 3
  %6762 = fmul fast float %6761, %6746
  %6763 = fmul fast float %6761, %6750
  %6764 = fadd fast float %6762, %6759
  %6765 = fadd fast float %6763, %6760
  %6766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6767 = extractvalue %dx.types.CBufRet.f32 %6766, 0
  %6768 = extractvalue %dx.types.CBufRet.f32 %6766, 1
  %6769 = extractvalue %dx.types.CBufRet.f32 %6766, 3
  %6770 = fmul fast float %6769, %6746
  %6771 = fmul fast float %6769, %6750
  %6772 = fadd fast float %6770, %6767
  %6773 = fadd fast float %6771, %6768
  %6774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6775 = extractvalue %dx.types.CBufRet.f32 %6774, 1
  %6776 = fsub fast float %6775, %6754
  %6777 = extractvalue %dx.types.CBufRet.f32 %6774, 2
  %6778 = fmul fast float %6776, %6777
  %6779 = fsub fast float 1.000000e+00, %6778
  %6780 = call float @dx.op.unary.f32(i32 7, float %6779)  ; Saturate(value)
  br i1 %6757, label %6841, label %6781

; <label>:6781                                    ; preds = %6727
  %6782 = extractvalue %dx.types.CBufRet.f32 %6766, 2
  %6783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6784 = extractvalue %dx.types.CBufRet.f32 %6783, 2
  %6785 = fadd fast float %6784, %6782
  %6786 = fcmp fast ogt float %6785, 0.000000e+00
  br i1 %6786, label %6787, label %6811

; <label>:6787                                    ; preds = %6781
  %6788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6789 = extractvalue %dx.types.CBufRet.f32 %6788, 0
  %6790 = extractvalue %dx.types.CBufRet.f32 %6788, 1
  %6791 = fsub fast float %6772, %6789
  %6792 = fsub fast float %6773, %6790
  %6793 = fcmp fast olt float %6791, 0.000000e+00
  %6794 = fcmp fast olt float %6792, 0.000000e+00
  %6795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6796 = extractvalue %dx.types.CBufRet.f32 %6795, 0
  %6797 = extractvalue %dx.types.CBufRet.f32 %6795, 1
  %6798 = extractvalue %dx.types.CBufRet.f32 %6795, 2
  %6799 = extractvalue %dx.types.CBufRet.f32 %6795, 3
  %6800 = select i1 %6793, float %6796, float %6798
  %6801 = select i1 %6794, float %6797, float %6799
  %6802 = fmul fast float %6800, %6791
  %6803 = fmul fast float %6801, %6792
  %6804 = call float @dx.op.unary.f32(i32 6, float %6802)  ; FAbs(value)
  %6805 = call float @dx.op.unary.f32(i32 6, float %6803)  ; FAbs(value)
  %6806 = extractvalue %dx.types.CBufRet.f32 %6718, 0
  %6807 = call float @dx.op.binary.f32(i32 35, float %6804, float %6805)  ; FMax(a,b)
  %6808 = fsub fast float %6806, %6807
  %6809 = call float @dx.op.unary.f32(i32 7, float %6808)  ; Saturate(value)
  %6810 = fmul fast float %6809, %6780
  br label %6811

; <label>:6811                                    ; preds = %6787, %6781
  %6812 = phi float [ %6810, %6787 ], [ 0.000000e+00, %6781 ]
  %6813 = extractvalue %dx.types.CBufRet.f32 %6758, 2
  %6814 = extractvalue %dx.types.CBufRet.f32 %6783, 1
  %6815 = fadd fast float %6814, %6813
  %6816 = fcmp fast ogt float %6815, 0.000000e+00
  br i1 %6816, label %6817, label %6841

; <label>:6817                                    ; preds = %6811
  %6818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6819 = extractvalue %dx.types.CBufRet.f32 %6818, 0
  %6820 = extractvalue %dx.types.CBufRet.f32 %6818, 1
  %6821 = fsub fast float %6764, %6819
  %6822 = fsub fast float %6765, %6820
  %6823 = fcmp fast olt float %6821, 0.000000e+00
  %6824 = fcmp fast olt float %6822, 0.000000e+00
  %6825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6826 = extractvalue %dx.types.CBufRet.f32 %6825, 0
  %6827 = extractvalue %dx.types.CBufRet.f32 %6825, 1
  %6828 = extractvalue %dx.types.CBufRet.f32 %6825, 2
  %6829 = extractvalue %dx.types.CBufRet.f32 %6825, 3
  %6830 = select i1 %6823, float %6826, float %6828
  %6831 = select i1 %6824, float %6827, float %6829
  %6832 = fmul fast float %6830, %6821
  %6833 = fmul fast float %6831, %6822
  %6834 = call float @dx.op.unary.f32(i32 6, float %6832)  ; FAbs(value)
  %6835 = call float @dx.op.unary.f32(i32 6, float %6833)  ; FAbs(value)
  %6836 = extractvalue %dx.types.CBufRet.f32 %6718, 0
  %6837 = call float @dx.op.binary.f32(i32 35, float %6834, float %6835)  ; FMax(a,b)
  %6838 = fsub fast float %6836, %6837
  %6839 = call float @dx.op.unary.f32(i32 7, float %6838)  ; Saturate(value)
  %6840 = fmul fast float %6839, %6780
  br label %6841

; <label>:6841                                    ; preds = %6817, %6811, %6727
  %6842 = phi float [ 0.000000e+00, %6727 ], [ %6840, %6817 ], [ 0.000000e+00, %6811 ]
  %6843 = phi float [ 0.000000e+00, %6727 ], [ %6812, %6817 ], [ %6812, %6811 ]
  %6844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6845 = extractvalue %dx.types.CBufRet.f32 %6844, 1
  %6846 = call float @dx.op.unary.f32(i32 7, float %6845)  ; Saturate(value)
  %6847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6848 = extractvalue %dx.types.CBufRet.f32 %6847, 0
  %6849 = extractvalue %dx.types.CBufRet.f32 %6847, 1
  %6850 = fsub fast float %6746, %6848
  %6851 = fsub fast float %6750, %6849
  %6852 = fcmp fast olt float %6850, 0.000000e+00
  %6853 = fcmp fast olt float %6851, 0.000000e+00
  %6854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6855 = extractvalue %dx.types.CBufRet.f32 %6854, 0
  %6856 = extractvalue %dx.types.CBufRet.f32 %6854, 1
  %6857 = extractvalue %dx.types.CBufRet.f32 %6854, 2
  %6858 = extractvalue %dx.types.CBufRet.f32 %6854, 3
  %6859 = select i1 %6852, float %6855, float %6857
  %6860 = select i1 %6853, float %6856, float %6858
  %6861 = fmul fast float %6859, %6850
  %6862 = fmul fast float %6860, %6851
  %6863 = call float @dx.op.unary.f32(i32 6, float %6861)  ; FAbs(value)
  %6864 = call float @dx.op.unary.f32(i32 6, float %6862)  ; FAbs(value)
  %6865 = extractvalue %dx.types.CBufRet.f32 %6718, 0
  %6866 = call float @dx.op.binary.f32(i32 35, float %6863, float %6864)  ; FMax(a,b)
  %6867 = fsub fast float %6865, %6866
  %6868 = call float @dx.op.unary.f32(i32 7, float %6867)  ; Saturate(value)
  %6869 = call float @dx.op.binary.f32(i32 36, float %6868, float %6846)  ; FMin(a,b)
  %6870 = fmul fast float %6869, %6780
  %6871 = fsub fast float %6842, %6870
  %6872 = fsub fast float %6843, %6842
  %6873 = fsub fast float %6872, %6870
  %6874 = call float @dx.op.binary.f32(i32 35, float %6842, float %6843)  ; FMax(a,b)
  %6875 = call float @dx.op.binary.f32(i32 35, float %6870, float %6874)  ; FMax(a,b)
  %6876 = fcmp fast olt float %6875, 1.000000e+00
  br i1 %6876, label %6877, label %7275, !dx.controlflow.hints !94

; <label>:6877                                    ; preds = %6841
  %6878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6879 = extractvalue %dx.types.CBufRet.f32 %6878, 0
  %6880 = fcmp fast une float %6879, 0.000000e+00
  br i1 %6880, label %6881, label %7275, !dx.controlflow.hints !95

; <label>:6881                                    ; preds = %6877
  %6882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6883 = extractvalue %dx.types.CBufRet.f32 %6882, 0
  %6884 = extractvalue %dx.types.CBufRet.f32 %6882, 1
  %6885 = extractvalue %dx.types.CBufRet.f32 %6882, 2
  %6886 = extractvalue %dx.types.CBufRet.f32 %6882, 3
  %6887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6888 = extractvalue %dx.types.CBufRet.f32 %6887, 0
  %6889 = extractvalue %dx.types.CBufRet.f32 %6887, 1
  %6890 = extractvalue %dx.types.CBufRet.f32 %6887, 2
  %6891 = extractvalue %dx.types.CBufRet.f32 %6887, 3
  %6892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6893 = extractvalue %dx.types.CBufRet.f32 %6892, 0
  %6894 = extractvalue %dx.types.CBufRet.f32 %6892, 1
  %6895 = extractvalue %dx.types.CBufRet.f32 %6892, 2
  %6896 = extractvalue %dx.types.CBufRet.f32 %6892, 3
  %6897 = fmul fast float %6883, %6723
  %6898 = call float @dx.op.tertiary.f32(i32 46, float %6724, float %6884, float %6897)  ; FMad(a,b,c)
  %6899 = call float @dx.op.tertiary.f32(i32 46, float %6725, float %6885, float %6898)  ; FMad(a,b,c)
  %6900 = fadd fast float %6899, %6886
  %6901 = fmul fast float %6888, %6723
  %6902 = call float @dx.op.tertiary.f32(i32 46, float %6724, float %6889, float %6901)  ; FMad(a,b,c)
  %6903 = call float @dx.op.tertiary.f32(i32 46, float %6725, float %6890, float %6902)  ; FMad(a,b,c)
  %6904 = fadd fast float %6903, %6891
  %6905 = fmul fast float %6893, %6723
  %6906 = call float @dx.op.tertiary.f32(i32 46, float %6724, float %6894, float %6905)  ; FMad(a,b,c)
  %6907 = call float @dx.op.tertiary.f32(i32 46, float %6725, float %6895, float %6906)  ; FMad(a,b,c)
  %6908 = fadd fast float %6907, %6896
  %6909 = fcmp fast oge float %6900, 1.000000e+00
  %6910 = fcmp fast oge float %6904, 1.000000e+00
  %6911 = or i1 %6909, %6910
  %6912 = fcmp fast olt float %6900, 0.000000e+00
  %6913 = fcmp fast olt float %6904, 0.000000e+00
  %6914 = or i1 %6912, %6913
  %6915 = or i1 %6911, %6914
  br i1 %6915, label %7275, label %6916, !dx.controlflow.hints !96

; <label>:6916                                    ; preds = %6881
  %6917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6918 = extractvalue %dx.types.CBufRet.f32 %6917, 0
  %6919 = extractvalue %dx.types.CBufRet.f32 %6917, 1
  %6920 = extractvalue %dx.types.CBufRet.f32 %6917, 2
  %6921 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6922 = extractvalue %dx.types.CBufRet.i32 %6921, 2
  %6923 = uitofp i32 %6922 to float
  %6924 = extractvalue %dx.types.CBufRet.i32 %6921, 3
  %6925 = uitofp i32 %6924 to float
  %6926 = extractvalue %dx.types.CBufRet.f32 %6917, 3
  %6927 = fmul fast float %6926, 2.000000e+00
  %6928 = fsub fast float %6900, %6918
  %6929 = fsub fast float %6904, %6919
  %6930 = fmul fast float %6927, %6928
  %6931 = fmul fast float %6927, %6929
  %6932 = fdiv fast float 1.000000e+00, %6706
  %6933 = fmul fast float %6931, %6932
  %6934 = call float @dx.op.unary.f32(i32 6, float %6933)  ; FAbs(value)
  %6935 = fmul fast float %6920, %6725
  %6936 = fmul fast float %6935, %6927
  %6937 = call float @dx.op.unary.f32(i32 6, float %6936)  ; FAbs(value)
  %6938 = call float @dx.op.unary.f32(i32 6, float %6930)  ; FAbs(value)
  %6939 = call float @dx.op.binary.f32(i32 35, float %6937, float %6934)  ; FMax(a,b)
  %6940 = call float @dx.op.binary.f32(i32 35, float %6938, float %6939)  ; FMax(a,b)
  %6941 = fmul fast float %6940, 2.000000e+00
  %6942 = call float @dx.op.unary.f32(i32 23, float %6941)  ; Log(value)
  %6943 = call float @dx.op.binary.f32(i32 35, float %6942, float %6923)  ; FMax(a,b)
  %6944 = call float @dx.op.unary.f32(i32 22, float %6943)  ; Frc(value)
  %6945 = fadd fast float %6944, 0xBFEA666660000000
  %6946 = fmul fast float %6945, 8.000000e+00
  %6947 = call float @dx.op.unary.f32(i32 7, float %6946)  ; Saturate(value)
  %6948 = call float @dx.op.unary.f32(i32 27, float %6943)  ; Round_ni(value)
  %6949 = fadd fast float %6948, %6947
  %6950 = call float @dx.op.binary.f32(i32 36, float %6949, float %6925)  ; FMin(a,b)
  %6951 = call float @dx.op.unary.f32(i32 27, float %6950)  ; Round_ni(value)
  %6952 = fsub fast float -0.000000e+00, %6951
  %6953 = call float @dx.op.unary.f32(i32 21, float %6952)  ; Exp(value)
  %6954 = fmul fast float %6953, %6927
  %6955 = fmul fast float %6954, %6900
  %6956 = fmul fast float %6954, %6904
  %6957 = fmul fast float %6955, 2.500000e-01
  %6958 = fmul fast float %6956, 2.500000e-01
  %6959 = fadd fast float %6957, 5.000000e-01
  %6960 = fadd fast float %6958, 5.000000e-01
  %6961 = fsub fast float %6925, %6923
  %6962 = fptoui float %6961 to i32
  %6963 = add i32 %6962, 320
  %6964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 %6963)  ; CBufferLoadLegacy(handle,regIndex)
  %6965 = extractvalue %dx.types.CBufRet.f32 %6964, 0
  %6966 = extractvalue %dx.types.CBufRet.f32 %6964, 1
  %6967 = fcmp fast une float %6950, %6925
  %6968 = fsub fast float %6900, %6965
  %6969 = fsub fast float %6904, %6966
  %6970 = call float @dx.op.unary.f32(i32 6, float %6968)  ; FAbs(value)
  %6971 = call float @dx.op.unary.f32(i32 6, float %6969)  ; FAbs(value)
  %6972 = fmul fast float %6970, %6954
  %6973 = fmul fast float %6971, %6954
  %6974 = fcmp fast olt float %6972, 1.000000e+00
  %6975 = fcmp fast olt float %6973, 1.000000e+00
  %6976 = and i1 %6974, %6975
  %6977 = or i1 %6967, %6976
  br i1 %6977, label %6978, label %7275, !dx.controlflow.hints !97

; <label>:6978                                    ; preds = %6916
  %6979 = fmul fast float %6956, 5.000000e-01
  %6980 = fmul fast float %6955, 5.000000e-01
  %6981 = fadd fast float %6979, 5.000000e-01
  %6982 = fadd fast float %6980, 5.000000e-01
  %6983 = sitofp i32 %6922 to float
  %6984 = fsub fast float %6950, %6983
  %6985 = call float @dx.op.unary.f32(i32 27, float %6984)  ; Round_ni(value)
  %6986 = call float @dx.op.unary.f32(i32 22, float %6950)  ; Frc(value)
  %6987 = call float @dx.op.unary.f32(i32 22, float %6982)  ; Frc(value)
  %6988 = call float @dx.op.unary.f32(i32 22, float %6981)  ; Frc(value)
  %6989 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %42, float %6987, float %6988, float %6985, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6990 = extractvalue %dx.types.ResRet.f32 %6989, 0
  %6991 = extractvalue %dx.types.ResRet.f32 %6989, 1
  %6992 = extractvalue %dx.types.ResRet.f32 %6989, 2
  %6993 = extractvalue %dx.types.ResRet.f32 %6989, 3
  %6994 = fcmp fast ogt float %6986, 0.000000e+00
  br i1 %6994, label %6995, label %7016, !dx.controlflow.hints !98

; <label>:6995                                    ; preds = %6978
  %6996 = fadd fast float %6985, 1.000000e+00
  %6997 = call float @dx.op.unary.f32(i32 22, float %6959)  ; Frc(value)
  %6998 = call float @dx.op.unary.f32(i32 22, float %6960)  ; Frc(value)
  %6999 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %42, float %6997, float %6998, float %6996, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7000 = extractvalue %dx.types.ResRet.f32 %6999, 0
  %7001 = extractvalue %dx.types.ResRet.f32 %6999, 1
  %7002 = extractvalue %dx.types.ResRet.f32 %6999, 2
  %7003 = extractvalue %dx.types.ResRet.f32 %6999, 3
  %7004 = fsub fast float %7000, %6990
  %7005 = fsub fast float %7001, %6991
  %7006 = fsub fast float %7002, %6992
  %7007 = fsub fast float %7003, %6993
  %7008 = fmul fast float %7004, %6986
  %7009 = fmul fast float %7005, %6986
  %7010 = fmul fast float %7006, %6986
  %7011 = fmul fast float %7007, %6986
  %7012 = fadd fast float %7008, %6990
  %7013 = fadd fast float %7009, %6991
  %7014 = fadd fast float %7010, %6992
  %7015 = fadd fast float %7011, %6993
  br label %7016

; <label>:7016                                    ; preds = %6995, %6978
  %7017 = phi float [ %7012, %6995 ], [ %6990, %6978 ]
  %7018 = phi float [ %7013, %6995 ], [ %6991, %6978 ]
  %7019 = phi float [ %7014, %6995 ], [ %6992, %6978 ]
  %7020 = phi float [ %7015, %6995 ], [ %6993, %6978 ]
  %7021 = fadd fast float %7017, -5.000000e-01
  %7022 = fadd fast float %7019, -5.000000e-01
  %7023 = fmul fast float %7021, 0xBFD5555560000000
  %7024 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7022, float %7023)  ; FMad(a,b,c)
  %7025 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7018, float 0.000000e+00)  ; FMad(a,b,c)
  %7026 = fadd fast float %7025, %7020
  %7027 = fmul fast float %7021, -7.500000e-01
  %7028 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7022, float %7027)  ; FMad(a,b,c)
  %7029 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7018, float 0.000000e+00)  ; FMad(a,b,c)
  %7030 = fadd fast float %7029, %7020
  %7031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %7032 = extractvalue %dx.types.CBufRet.f32 %7031, 0
  %7033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %7034 = extractvalue %dx.types.CBufRet.f32 %7033, 0
  %7035 = extractvalue %dx.types.CBufRet.f32 %7033, 1
  %7036 = extractvalue %dx.types.CBufRet.f32 %7033, 2
  %7037 = extractvalue %dx.types.CBufRet.f32 %7033, 3
  %7038 = fsub fast float %7034, %7024
  %7039 = fsub fast float %7035, %7026
  %7040 = fsub fast float %7036, %7028
  %7041 = fsub fast float %7037, %7030
  %7042 = fmul fast float %7038, %7032
  %7043 = fmul fast float %7039, %7032
  %7044 = fmul fast float %7040, %7032
  %7045 = fmul fast float %7041, %7032
  %7046 = fadd fast float %7042, %7024
  %7047 = fadd fast float %7043, %7026
  %7048 = fadd fast float %7044, %7028
  %7049 = fadd fast float %7045, %7030
  %7050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %7051 = extractvalue %dx.types.ResRet.i32 %7050, 0
  %7052 = and i32 %7051, 536870911
  %7053 = uitofp i32 %7052 to float
  %7054 = fmul fast float %7053, %6900
  %7055 = fmul fast float %7053, %6904
  %7056 = fptoui float %7054 to i32
  %7057 = fptoui float %7055 to i32
  %7058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7059 = extractvalue %dx.types.ResRet.i32 %7058, 0
  %7060 = and i32 %7059, 31
  %7061 = lshr i32 %7056, %7060
  %7062 = lshr i32 %7057, %7060
  %7063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7064 = extractvalue %dx.types.ResRet.i32 %7063, 0
  %7065 = and i32 %7064, 31
  %7066 = shl i32 1, %7065
  %7067 = call i32 @dx.op.binary.i32(i32 40, i32 %7066, i32 4)  ; UMin(a,b)
  %7068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %7069 = extractvalue %dx.types.ResRet.i32 %7068, 0
  %7070 = extractvalue %dx.types.ResRet.i32 %7068, 1
  %7071 = icmp eq i32 %7067, 0
  br i1 %7071, label %7113, label %7072

; <label>:7072                                    ; preds = %7016
  br label %7073

; <label>:7073                                    ; preds = %7101, %7072
  %7074 = phi i32 [ %7104, %7101 ], [ 0, %7072 ]
  %7075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7076 = extractvalue %dx.types.ResRet.i32 %7075, 0
  %7077 = lshr i32 %7076, 16
  %7078 = and i32 %7077, 31
  %7079 = shl i32 %7062, %7078
  %7080 = add i32 %7079, %7061
  %7081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7082 = extractvalue %dx.types.ResRet.i32 %7081, 0
  %7083 = and i32 %7082, 31
  %7084 = shl i32 %7080, %7083
  %7085 = add i32 %7084, %7074
  %7086 = shl i32 %7085, 2
  %7087 = add i32 %7086, 32
  %7088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %7087, i32 undef)  ; BufferLoad(srv,index,wot)
  %7089 = extractvalue %dx.types.ResRet.i32 %7088, 0
  %7090 = icmp slt i32 %7089, 0
  %7091 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %7074
  %7092 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %7074
  %7093 = bitcast float* %7091 to i32*
  %7094 = bitcast float* %7092 to i32*
  br i1 %7090, label %7095, label %7101

; <label>:7095                                    ; preds = %7073
  %7096 = and i32 %7089, 1073741823
  %7097 = add nuw nsw i32 %7096, 20
  %7098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %7097, i32 undef)  ; BufferLoad(srv,index,wot)
  %7099 = extractvalue %dx.types.ResRet.i32 %7098, 0
  %7100 = extractvalue %dx.types.ResRet.i32 %7098, 1
  br label %7101

; <label>:7101                                    ; preds = %7095, %7073
  %7102 = phi i32 [ %7099, %7095 ], [ %7069, %7073 ]
  %7103 = phi i32 [ %7100, %7095 ], [ %7070, %7073 ]
  store i32 %7102, i32* %7093, align 4
  store i32 %7103, i32* %7094, align 4
  %7104 = add nuw i32 %7074, 1
  %7105 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %7106 = extractvalue %dx.types.CBufRet.i32 %7105, 2
  %7107 = icmp eq i32 %7106, 0
  %7108 = icmp ugt i32 %7089, -1073741825
  %7109 = and i1 %7108, %7107
  %7110 = icmp ult i32 %7104, %7067
  %7111 = and i1 %7109, %7110
  br i1 %7111, label %7073, label %7112

; <label>:7112                                    ; preds = %7101
  br label %7113

; <label>:7113                                    ; preds = %7112, %7016
  %7114 = phi i32 [ 0, %7016 ], [ %7104, %7112 ]
  %7115 = extractvalue %dx.types.CBufRet.f32 %6878, 2
  %7116 = fptoui float %7115 to i32
  %7117 = icmp eq i32 %7116, 0
  br i1 %7117, label %7169, label %7118

; <label>:7118                                    ; preds = %7113
  br label %7119

; <label>:7119                                    ; preds = %7164, %7118
  %7120 = phi i32 [ %7165, %7164 ], [ %7114, %7118 ]
  %7121 = phi i32 [ %7166, %7164 ], [ 0, %7118 ]
  %7122 = lshr i32 %7121, 2
  %7123 = and i32 %7121, 3
  %7124 = add nuw nsw i32 %7122, 83
  %7125 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 %7124)  ; CBufferLoadLegacy(handle,regIndex)
  %7126 = extractvalue %dx.types.CBufRet.i32 %7125, 0
  %7127 = extractvalue %dx.types.CBufRet.i32 %7125, 1
  %7128 = extractvalue %dx.types.CBufRet.i32 %7125, 2
  %7129 = extractvalue %dx.types.CBufRet.i32 %7125, 3
  %7130 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 0
  store i32 %7126, i32* %7130, align 4
  %7131 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 1
  store i32 %7127, i32* %7131, align 4
  %7132 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 2
  store i32 %7128, i32* %7132, align 4
  %7133 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 3
  store i32 %7129, i32* %7133, align 4
  %7134 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 %7123
  %7135 = load i32, i32* %7134, align 4, !tbaa !99, !noalias !103
  %7136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7137 = extractvalue %dx.types.ResRet.i32 %7136, 0
  %7138 = lshr i32 %7137, 16
  %7139 = and i32 %7138, 31
  %7140 = shl i32 %7062, %7139
  %7141 = add i32 %7140, %7061
  %7142 = shl i32 %7141, 2
  %7143 = add i32 %7142, %7135
  %7144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %7143, i32 undef)  ; BufferLoad(srv,index,wot)
  %7145 = extractvalue %dx.types.ResRet.i32 %7144, 0
  %7146 = icmp eq i32 %7145, 0
  br i1 %7146, label %7164, label %7147

; <label>:7147                                    ; preds = %7119
  %7148 = icmp slt i32 %7145, 0
  %7149 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %7120
  %7150 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %7120
  %7151 = bitcast float* %7149 to i32*
  %7152 = bitcast float* %7150 to i32*
  br i1 %7148, label %7153, label %7160

; <label>:7153                                    ; preds = %7147
  %7154 = and i32 %7145, 1073741823
  %7155 = add i32 %7135, 20
  %7156 = add i32 %7155, %7154
  %7157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %7156, i32 undef)  ; BufferLoad(srv,index,wot)
  %7158 = extractvalue %dx.types.ResRet.i32 %7157, 0
  %7159 = extractvalue %dx.types.ResRet.i32 %7157, 1
  br label %7160

; <label>:7160                                    ; preds = %7153, %7147
  %7161 = phi i32 [ %7158, %7153 ], [ %7069, %7147 ]
  %7162 = phi i32 [ %7159, %7153 ], [ %7070, %7147 ]
  store i32 %7161, i32* %7151, align 4
  store i32 %7162, i32* %7152, align 4
  %7163 = add i32 %7120, 1
  br label %7164

; <label>:7164                                    ; preds = %7160, %7119
  %7165 = phi i32 [ %7120, %7119 ], [ %7163, %7160 ]
  %7166 = add nuw i32 %7121, 1
  %7167 = icmp eq i32 %7166, %7116
  br i1 %7167, label %7168, label %7119

; <label>:7168                                    ; preds = %7164
  br label %7169

; <label>:7169                                    ; preds = %7168, %7113
  %7170 = phi i32 [ %7114, %7113 ], [ %7165, %7168 ]
  %7171 = icmp eq i32 %7170, 1
  %7172 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 0
  %7173 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 0
  br i1 %7171, label %7174, label %7177

; <label>:7174                                    ; preds = %7169
  %7175 = load float, float* %7172, align 4
  %7176 = load float, float* %7173, align 4
  br label %7204

; <label>:7177                                    ; preds = %7169
  %7178 = load float, float* %7172, align 4
  %7179 = load float, float* %7173, align 4
  %7180 = fdiv fast float 1.000000e+00, %7179
  %7181 = fsub fast float %7178, %7180
  %7182 = icmp ugt i32 %7170, 1
  br i1 %7182, label %7183, label %7199

; <label>:7183                                    ; preds = %7177
  br label %7184

; <label>:7184                                    ; preds = %7184, %7183
  %7185 = phi float [ %7194, %7184 ], [ %7181, %7183 ]
  %7186 = phi float [ %7195, %7184 ], [ %7178, %7183 ]
  %7187 = phi i32 [ %7196, %7184 ], [ 1, %7183 ]
  %7188 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %7187
  %7189 = load float, float* %7188, align 4
  %7190 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %7187
  %7191 = load float, float* %7190, align 4
  %7192 = fdiv fast float 1.000000e+00, %7191
  %7193 = fsub fast float %7189, %7192
  %7194 = call float @dx.op.binary.f32(i32 36, float %7185, float %7193)  ; FMin(a,b)
  %7195 = call float @dx.op.binary.f32(i32 35, float %7186, float %7189)  ; FMax(a,b)
  %7196 = add nuw i32 %7187, 1
  %7197 = icmp eq i32 %7196, %7170
  br i1 %7197, label %7198, label %7184

; <label>:7198                                    ; preds = %7184
  br label %7199

; <label>:7199                                    ; preds = %7198, %7177
  %7200 = phi float [ %7181, %7177 ], [ %7194, %7198 ]
  %7201 = phi float [ %7178, %7177 ], [ %7195, %7198 ]
  %7202 = fsub fast float %7201, %7200
  %7203 = fdiv fast float 1.000000e+00, %7202
  br label %7204

; <label>:7204                                    ; preds = %7199, %7174
  %7205 = phi float [ %7175, %7174 ], [ %7201, %7199 ]
  %7206 = phi float [ %7176, %7174 ], [ %7203, %7199 ]
  %7207 = fadd fast float %6908, %7205
  %7208 = fmul fast float %7207, %7206
  %7209 = call float @dx.op.unary.f32(i32 7, float %7208)  ; Saturate(value)
  %7210 = fmul fast float %7209, 2.000000e+00
  %7211 = fsub fast float 1.000000e+00, %7210
  %7212 = fmul fast float %7046, %7046
  %7213 = fsub fast float %7047, %7212
  %7214 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7213)  ; FMax(a,b)
  %7215 = fdiv fast float 1.000000e+00, %7214
  %7216 = fmul fast float %7047, %7046
  %7217 = fsub fast float %7048, %7216
  %7218 = fsub fast float %7211, %7046
  %7219 = fmul fast float %7211, %7211
  %7220 = fsub fast float %7219, %7047
  %7221 = fmul fast float %7215, %7217
  %7222 = fmul fast float %7221, %7218
  %7223 = fsub fast float %7220, %7222
  %7224 = fmul fast float %7047, %7047
  %7225 = fsub fast float %7049, %7224
  %7226 = fmul fast float %7217, %7217
  %7227 = fmul fast float %7226, %7215
  %7228 = fsub fast float %7225, %7227
  %7229 = fdiv fast float %7223, %7228
  %7230 = fmul fast float %7229, %7217
  %7231 = fsub fast float %7218, %7230
  %7232 = fmul fast float %7231, %7215
  %7233 = fmul fast float %7232, %7046
  %7234 = fsub fast float 1.000000e+00, %7233
  %7235 = fmul fast float %7229, %7047
  %7236 = fsub fast float %7234, %7235
  %7237 = fmul fast float %7232, %7232
  %7238 = fmul fast float %7229, 4.000000e+00
  %7239 = fmul fast float %7238, %7236
  %7240 = fsub fast float %7237, %7239
  %7241 = call float @dx.op.unary.f32(i32 24, float %7240)  ; Sqrt(value)
  %7242 = fcmp fast oge float %7232, 0.000000e+00
  %7243 = fsub fast float -0.000000e+00, %7241
  %7244 = select i1 %7242, float %7243, float %7241
  %7245 = fsub fast float %7244, %7232
  %7246 = fdiv fast float %7245, %7229
  %7247 = fdiv fast float %7236, %7245
  %7248 = fmul fast float %7246, 5.000000e-01
  %7249 = fmul fast float %7247, 2.000000e+00
  %7250 = select i1 %7242, float %7248, float %7249
  %7251 = select i1 %7242, float %7249, float %7248
  %7252 = call float @dx.op.binary.f32(i32 35, float %7250, float %7251)  ; FMax(a,b)
  %7253 = call float @dx.op.binary.f32(i32 36, float %7250, float %7251)  ; FMin(a,b)
  %7254 = fcmp fast ogt float %7211, %7252
  %7255 = fsub fast float %7211, %7253
  %7256 = fsub fast float %7211, %7252
  %7257 = fsub fast float %7252, %7253
  %7258 = select i1 %7254, float %7256, float %7257
  %7259 = fmul float %7255, %7258
  %7260 = select i1 %7254, float %7253, float %7211
  %7261 = fcmp fast ogt float %7211, %7253
  %7262 = fmul fast float %7260, %7252
  %7263 = fadd fast float %7260, %7252
  %7264 = fmul fast float %7263, %7046
  %7265 = fadd fast float %7262, %7047
  %7266 = fsub fast float %7265, %7264
  %7267 = fdiv fast float %7266, %7259
  %7268 = select i1 %7261, float %7267, float 0.000000e+00
  %7269 = fsub fast float 1.000000e+00, %7268
  %7270 = select i1 %7254, float %7269, float %7268
  %7271 = call float @dx.op.unary.f32(i32 7, float %7270)  ; Saturate(value)
  %7272 = extractvalue %dx.types.CBufRet.f32 %7031, 3
  %7273 = fmul fast float %7272, %7271
  %7274 = fsub fast float 1.000000e+00, %7273
  br label %7275

; <label>:7275                                    ; preds = %7204, %6916, %6881, %6877, %6841
  %7276 = phi float [ 1.000000e+00, %6841 ], [ %7274, %7204 ], [ 1.000000e+00, %6881 ], [ 1.000000e+00, %6916 ], [ 1.000000e+00, %6877 ]
  %7277 = fcmp fast ogt float %6873, 0.000000e+00
  br i1 %7277, label %7278, label %7442, !dx.controlflow.hints !112

; <label>:7278                                    ; preds = %7275
  %7279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7280 = extractvalue %dx.types.CBufRet.f32 %7279, 2
  %7281 = fadd fast float %7280, %6754
  %7282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7283 = extractvalue %dx.types.CBufRet.f32 %7282, 2
  %7284 = extractvalue %dx.types.CBufRet.f32 %7282, 3
  %7285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7286 = extractvalue %dx.types.CBufRet.f32 %7285, 2
  %7287 = call float @dx.op.binary.f32(i32 35, float %7281, float 0.000000e+00)  ; FMax(a,b)
  %7288 = fadd fast float %7287, 0x3F10000000000000
  %7289 = fcmp fast oeq float %7286, 0.000000e+00
  br i1 %7289, label %7290, label %7357

; <label>:7290                                    ; preds = %7278
  %7291 = extractvalue %dx.types.CBufRet.f32 %7282, 1
  %7292 = extractvalue %dx.types.CBufRet.f32 %7282, 0
  %7293 = fmul fast float %7292, %6772
  %7294 = fmul fast float %7291, %6773
  %7295 = fadd fast float %7293, 5.000000e-01
  %7296 = call float @dx.op.unary.f32(i32 27, float %7295)  ; Round_ni(value)
  %7297 = fadd fast float %7294, 5.000000e-01
  %7298 = call float @dx.op.unary.f32(i32 27, float %7297)  ; Round_ni(value)
  %7299 = fsub fast float %7295, %7296
  %7300 = fsub fast float %7297, %7298
  %7301 = fadd fast float %7296, -5.000000e-01
  %7302 = fadd fast float %7298, -5.000000e-01
  %7303 = fmul fast float %7299, 2.000000e+00
  %7304 = fsub fast float 3.000000e+00, %7303
  %7305 = fadd fast float %7303, 1.000000e+00
  %7306 = fsub fast float 2.000000e+00, %7299
  %7307 = bitcast float %7304 to i32
  %7308 = sub nsw i32 2129859010, %7307
  %7309 = bitcast i32 %7308 to float
  %7310 = fmul fast float %7309, %7306
  %7311 = fadd fast float %7310, -1.000000e+00
  %7312 = bitcast float %7305 to i32
  %7313 = sub nsw i32 2129859010, %7312
  %7314 = bitcast i32 %7313 to float
  %7315 = fmul fast float %7314, %7299
  %7316 = fadd fast float %7315, 1.000000e+00
  %7317 = fmul fast float %7300, 2.000000e+00
  %7318 = fsub fast float 3.000000e+00, %7317
  %7319 = fadd fast float %7317, 1.000000e+00
  %7320 = fsub fast float 2.000000e+00, %7300
  %7321 = bitcast float %7318 to i32
  %7322 = sub nsw i32 2129859010, %7321
  %7323 = bitcast i32 %7322 to float
  %7324 = fmul fast float %7323, %7320
  %7325 = fadd fast float %7324, -1.000000e+00
  %7326 = bitcast float %7319 to i32
  %7327 = sub nsw i32 2129859010, %7326
  %7328 = bitcast i32 %7327 to float
  %7329 = fmul fast float %7328, %7300
  %7330 = fadd fast float %7329, 1.000000e+00
  %7331 = fadd fast float %7311, %7301
  %7332 = fmul fast float %7331, %7283
  %7333 = fadd fast float %7325, %7302
  %7334 = fmul fast float %7333, %7284
  %7335 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %7332, float %7334, float undef, float undef, i32 0, i32 0, i32 undef, float %7288)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7336 = extractvalue %dx.types.ResRet.f32 %7335, 0
  %7337 = fmul fast float %7336, %7304
  %7338 = fadd fast float %7316, %7301
  %7339 = fmul fast float %7338, %7283
  %7340 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %7339, float %7334, float undef, float undef, i32 0, i32 0, i32 undef, float %7288)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7341 = extractvalue %dx.types.ResRet.f32 %7340, 0
  %7342 = fmul fast float %7341, %7305
  %7343 = fadd fast float %7330, %7302
  %7344 = fmul fast float %7343, %7284
  %7345 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %7332, float %7344, float undef, float undef, i32 0, i32 0, i32 undef, float %7288)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7346 = extractvalue %dx.types.ResRet.f32 %7345, 0
  %7347 = fmul fast float %7346, %7304
  %7348 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %7339, float %7344, float undef, float undef, i32 0, i32 0, i32 undef, float %7288)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7349 = extractvalue %dx.types.ResRet.f32 %7348, 0
  %7350 = fmul fast float %7349, %7305
  %7351 = fadd fast float %7350, %7347
  %7352 = fmul fast float %7351, %7319
  %7353 = fadd fast float %7342, %7337
  %7354 = fmul fast float %7353, %7318
  %7355 = fadd fast float %7354, %7352
  %7356 = fmul fast float %7355, 6.250000e-02
  br label %7442

; <label>:7357                                    ; preds = %7278
  %7358 = fmul fast float %259, 0x401921FB60000000
  %7359 = call float @dx.op.unary.f32(i32 13, float %7358)  ; Sin(value)
  %7360 = call float @dx.op.unary.f32(i32 12, float %7358)  ; Cos(value)
  %7361 = fsub fast float -0.000000e+00, %7359
  br label %7362

; <label>:7362                                    ; preds = %7411, %7357
  %7363 = phi float [ 0.000000e+00, %7357 ], [ %7406, %7411 ]
  %7364 = phi float [ 0.000000e+00, %7357 ], [ %7408, %7411 ]
  %7365 = phi i32 [ 0, %7357 ], [ %7412, %7411 ]
  %7366 = mul i32 %7365, 2
  %7367 = add i32 0, %7366
  %7368 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7367
  %7369 = load float, float* %7368, align 4
  %7370 = mul i32 %7365, 2
  %7371 = add i32 1, %7370
  %7372 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7371
  %7373 = load float, float* %7372, align 4
  %7374 = fmul fast float %7369, %7360
  %7375 = call float @dx.op.tertiary.f32(i32 46, float %7373, float %7361, float %7374)  ; FMad(a,b,c)
  %7376 = fmul fast float %7369, %7359
  %7377 = call float @dx.op.tertiary.f32(i32 46, float %7373, float %7360, float %7376)  ; FMad(a,b,c)
  %7378 = fmul fast float %7375, %7286
  %7379 = fmul fast float %7377, %7286
  %7380 = fadd fast float %7378, %6772
  %7381 = fadd fast float %7379, %6773
  %7382 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %44, float %7380, float %7381, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7383 = extractvalue %dx.types.ResRet.f32 %7382, 0
  %7384 = extractvalue %dx.types.ResRet.f32 %7382, 1
  %7385 = extractvalue %dx.types.ResRet.f32 %7382, 2
  %7386 = extractvalue %dx.types.ResRet.f32 %7382, 3
  %7387 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 0
  store float %7383, float* %7387, align 4
  %7388 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 1
  store float %7384, float* %7388, align 4
  %7389 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 2
  store float %7385, float* %7389, align 4
  %7390 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 3
  store float %7386, float* %7390, align 4
  %7391 = fsub fast float %7383, %7288
  %7392 = fcmp fast olt float %7391, 0.000000e+00
  %7393 = select i1 %7392, float 0.000000e+00, float 1.000000e+00
  %7394 = fadd fast float %7393, %7363
  %7395 = fmul fast float %7393, %7391
  %7396 = fadd fast float %7395, %7364
  br label %7397

; <label>:7397                                    ; preds = %7397, %7362
  %7398 = phi i32 [ 1, %7362 ], [ %7409, %7397 ]
  %7399 = phi float [ %7396, %7362 ], [ %7408, %7397 ]
  %7400 = phi float [ %7394, %7362 ], [ %7406, %7397 ]
  %7401 = getelementptr [4 x float], [4 x float]* %101, i32 0, i32 %7398
  %7402 = load float, float* %7401, align 4, !tbaa !113, !noalias !103
  %7403 = fsub fast float %7402, %7288
  %7404 = fcmp fast olt float %7403, 0.000000e+00
  %7405 = select i1 %7404, float 0.000000e+00, float 1.000000e+00
  %7406 = fadd fast float %7405, %7400
  %7407 = fmul fast float %7405, %7403
  %7408 = fadd fast float %7407, %7399
  %7409 = add nuw nsw i32 %7398, 1
  %7410 = icmp eq i32 %7409, 4
  br i1 %7410, label %7411, label %7397, !llvm.loop !115

; <label>:7411                                    ; preds = %7397
  %7412 = add nuw nsw i32 %7365, 1
  %7413 = icmp eq i32 %7412, 8
  br i1 %7413, label %7414, label %7362, !llvm.loop !116

; <label>:7414                                    ; preds = %7411
  %7415 = fdiv fast float 1.000000e+00, %7406
  %7416 = fmul fast float %7415, %7408
  %7417 = fdiv fast float 1.000000e+00, %7288
  %7418 = fmul fast float %7416, %7417
  %7419 = call float @dx.op.unary.f32(i32 7, float %7418)  ; Saturate(value)
  %7420 = call float @dx.op.binary.f32(i32 35, float %7419, float 0.000000e+00)  ; FMax(a,b)
  %7421 = fmul fast float %7406, 3.125000e-02
  %7422 = call float @dx.op.unary.f32(i32 7, float %7421)  ; Saturate(value)
  %7423 = fmul fast float %7422, 2.000000e+00
  %7424 = fadd fast float %7423, -1.000000e+00
  %7425 = fcmp fast ogt float %7424, 0.000000e+00
  %7426 = fcmp fast olt float %7424, 0.000000e+00
  %7427 = zext i1 %7425 to i32
  %7428 = zext i1 %7426 to i32
  %7429 = sub nsw i32 %7427, %7428
  %7430 = sitofp i32 %7429 to float
  %7431 = fmul fast float %7430, %7424
  %7432 = fsub fast float 1.000000e+00, %7431
  %7433 = fmul fast float %7432, %7432
  %7434 = fmul fast float %7433, %7432
  %7435 = fsub fast float %7432, %7434
  %7436 = fmul fast float %7435, %7420
  %7437 = fsub fast float 1.000000e+00, %7434
  %7438 = fsub fast float %7437, %7436
  %7439 = fmul fast float %7430, 5.000000e-01
  %7440 = fmul fast float %7439, %7438
  %7441 = fsub fast float 5.000000e-01, %7440
  br label %7442

; <label>:7442                                    ; preds = %7414, %7290, %7275
  %7443 = phi float [ 1.000000e+00, %7275 ], [ %7356, %7290 ], [ %7441, %7414 ]
  %7444 = fcmp fast ogt float %6871, 0.000000e+00
  br i1 %7444, label %7445, label %7609, !dx.controlflow.hints !117

; <label>:7445                                    ; preds = %7442
  %7446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7447 = extractvalue %dx.types.CBufRet.f32 %7446, 1
  %7448 = fadd fast float %7447, %6754
  %7449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7450 = extractvalue %dx.types.CBufRet.f32 %7449, 2
  %7451 = extractvalue %dx.types.CBufRet.f32 %7449, 3
  %7452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7453 = extractvalue %dx.types.CBufRet.f32 %7452, 1
  %7454 = call float @dx.op.binary.f32(i32 35, float %7448, float 0.000000e+00)  ; FMax(a,b)
  %7455 = fadd fast float %7454, 0x3F10000000000000
  %7456 = fcmp fast oeq float %7453, 0.000000e+00
  br i1 %7456, label %7457, label %7524

; <label>:7457                                    ; preds = %7445
  %7458 = extractvalue %dx.types.CBufRet.f32 %7449, 1
  %7459 = extractvalue %dx.types.CBufRet.f32 %7449, 0
  %7460 = fmul fast float %7459, %6764
  %7461 = fmul fast float %7458, %6765
  %7462 = fadd fast float %7460, 5.000000e-01
  %7463 = call float @dx.op.unary.f32(i32 27, float %7462)  ; Round_ni(value)
  %7464 = fadd fast float %7461, 5.000000e-01
  %7465 = call float @dx.op.unary.f32(i32 27, float %7464)  ; Round_ni(value)
  %7466 = fsub fast float %7462, %7463
  %7467 = fsub fast float %7464, %7465
  %7468 = fadd fast float %7463, -5.000000e-01
  %7469 = fadd fast float %7465, -5.000000e-01
  %7470 = fmul fast float %7466, 2.000000e+00
  %7471 = fsub fast float 3.000000e+00, %7470
  %7472 = fadd fast float %7470, 1.000000e+00
  %7473 = fsub fast float 2.000000e+00, %7466
  %7474 = bitcast float %7471 to i32
  %7475 = sub nsw i32 2129859010, %7474
  %7476 = bitcast i32 %7475 to float
  %7477 = fmul fast float %7476, %7473
  %7478 = fadd fast float %7477, -1.000000e+00
  %7479 = bitcast float %7472 to i32
  %7480 = sub nsw i32 2129859010, %7479
  %7481 = bitcast i32 %7480 to float
  %7482 = fmul fast float %7481, %7466
  %7483 = fadd fast float %7482, 1.000000e+00
  %7484 = fmul fast float %7467, 2.000000e+00
  %7485 = fsub fast float 3.000000e+00, %7484
  %7486 = fadd fast float %7484, 1.000000e+00
  %7487 = fsub fast float 2.000000e+00, %7467
  %7488 = bitcast float %7485 to i32
  %7489 = sub nsw i32 2129859010, %7488
  %7490 = bitcast i32 %7489 to float
  %7491 = fmul fast float %7490, %7487
  %7492 = fadd fast float %7491, -1.000000e+00
  %7493 = bitcast float %7486 to i32
  %7494 = sub nsw i32 2129859010, %7493
  %7495 = bitcast i32 %7494 to float
  %7496 = fmul fast float %7495, %7467
  %7497 = fadd fast float %7496, 1.000000e+00
  %7498 = fadd fast float %7478, %7468
  %7499 = fmul fast float %7498, %7450
  %7500 = fadd fast float %7492, %7469
  %7501 = fmul fast float %7500, %7451
  %7502 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %7499, float %7501, float undef, float undef, i32 0, i32 0, i32 undef, float %7455)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7503 = extractvalue %dx.types.ResRet.f32 %7502, 0
  %7504 = fmul fast float %7503, %7471
  %7505 = fadd fast float %7483, %7468
  %7506 = fmul fast float %7505, %7450
  %7507 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %7506, float %7501, float undef, float undef, i32 0, i32 0, i32 undef, float %7455)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7508 = extractvalue %dx.types.ResRet.f32 %7507, 0
  %7509 = fmul fast float %7508, %7472
  %7510 = fadd fast float %7497, %7469
  %7511 = fmul fast float %7510, %7451
  %7512 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %7499, float %7511, float undef, float undef, i32 0, i32 0, i32 undef, float %7455)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7513 = extractvalue %dx.types.ResRet.f32 %7512, 0
  %7514 = fmul fast float %7513, %7471
  %7515 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %7506, float %7511, float undef, float undef, i32 0, i32 0, i32 undef, float %7455)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7516 = extractvalue %dx.types.ResRet.f32 %7515, 0
  %7517 = fmul fast float %7516, %7472
  %7518 = fadd fast float %7517, %7514
  %7519 = fmul fast float %7518, %7486
  %7520 = fadd fast float %7509, %7504
  %7521 = fmul fast float %7520, %7485
  %7522 = fadd fast float %7521, %7519
  %7523 = fmul fast float %7522, 6.250000e-02
  br label %7609

; <label>:7524                                    ; preds = %7445
  %7525 = fmul fast float %259, 0x401921FB60000000
  %7526 = call float @dx.op.unary.f32(i32 13, float %7525)  ; Sin(value)
  %7527 = call float @dx.op.unary.f32(i32 12, float %7525)  ; Cos(value)
  %7528 = fsub fast float -0.000000e+00, %7526
  br label %7529

; <label>:7529                                    ; preds = %7578, %7524
  %7530 = phi float [ 0.000000e+00, %7524 ], [ %7573, %7578 ]
  %7531 = phi float [ 0.000000e+00, %7524 ], [ %7575, %7578 ]
  %7532 = phi i32 [ 0, %7524 ], [ %7579, %7578 ]
  %7533 = mul i32 %7532, 2
  %7534 = add i32 0, %7533
  %7535 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7534
  %7536 = load float, float* %7535, align 4
  %7537 = mul i32 %7532, 2
  %7538 = add i32 1, %7537
  %7539 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7538
  %7540 = load float, float* %7539, align 4
  %7541 = fmul fast float %7536, %7527
  %7542 = call float @dx.op.tertiary.f32(i32 46, float %7540, float %7528, float %7541)  ; FMad(a,b,c)
  %7543 = fmul fast float %7536, %7526
  %7544 = call float @dx.op.tertiary.f32(i32 46, float %7540, float %7527, float %7543)  ; FMad(a,b,c)
  %7545 = fmul fast float %7542, %7453
  %7546 = fmul fast float %7544, %7453
  %7547 = fadd fast float %7545, %6764
  %7548 = fadd fast float %7546, %6765
  %7549 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %44, float %7547, float %7548, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7550 = extractvalue %dx.types.ResRet.f32 %7549, 0
  %7551 = extractvalue %dx.types.ResRet.f32 %7549, 1
  %7552 = extractvalue %dx.types.ResRet.f32 %7549, 2
  %7553 = extractvalue %dx.types.ResRet.f32 %7549, 3
  %7554 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 0
  store float %7550, float* %7554, align 4
  %7555 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 1
  store float %7551, float* %7555, align 4
  %7556 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 2
  store float %7552, float* %7556, align 4
  %7557 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 3
  store float %7553, float* %7557, align 4
  %7558 = fsub fast float %7550, %7455
  %7559 = fcmp fast olt float %7558, 0.000000e+00
  %7560 = select i1 %7559, float 0.000000e+00, float 1.000000e+00
  %7561 = fadd fast float %7560, %7530
  %7562 = fmul fast float %7560, %7558
  %7563 = fadd fast float %7562, %7531
  br label %7564

; <label>:7564                                    ; preds = %7564, %7529
  %7565 = phi i32 [ 1, %7529 ], [ %7576, %7564 ]
  %7566 = phi float [ %7563, %7529 ], [ %7575, %7564 ]
  %7567 = phi float [ %7561, %7529 ], [ %7573, %7564 ]
  %7568 = getelementptr [4 x float], [4 x float]* %100, i32 0, i32 %7565
  %7569 = load float, float* %7568, align 4, !tbaa !113, !noalias !103
  %7570 = fsub fast float %7569, %7455
  %7571 = fcmp fast olt float %7570, 0.000000e+00
  %7572 = select i1 %7571, float 0.000000e+00, float 1.000000e+00
  %7573 = fadd fast float %7572, %7567
  %7574 = fmul fast float %7572, %7570
  %7575 = fadd fast float %7574, %7566
  %7576 = add nuw nsw i32 %7565, 1
  %7577 = icmp eq i32 %7576, 4
  br i1 %7577, label %7578, label %7564, !llvm.loop !115

; <label>:7578                                    ; preds = %7564
  %7579 = add nuw nsw i32 %7532, 1
  %7580 = icmp eq i32 %7579, 8
  br i1 %7580, label %7581, label %7529, !llvm.loop !116

; <label>:7581                                    ; preds = %7578
  %7582 = fdiv fast float 1.000000e+00, %7573
  %7583 = fmul fast float %7582, %7575
  %7584 = fdiv fast float 1.000000e+00, %7455
  %7585 = fmul fast float %7583, %7584
  %7586 = call float @dx.op.unary.f32(i32 7, float %7585)  ; Saturate(value)
  %7587 = call float @dx.op.binary.f32(i32 35, float %7586, float 0.000000e+00)  ; FMax(a,b)
  %7588 = fmul fast float %7573, 3.125000e-02
  %7589 = call float @dx.op.unary.f32(i32 7, float %7588)  ; Saturate(value)
  %7590 = fmul fast float %7589, 2.000000e+00
  %7591 = fadd fast float %7590, -1.000000e+00
  %7592 = fcmp fast ogt float %7591, 0.000000e+00
  %7593 = fcmp fast olt float %7591, 0.000000e+00
  %7594 = zext i1 %7592 to i32
  %7595 = zext i1 %7593 to i32
  %7596 = sub nsw i32 %7594, %7595
  %7597 = sitofp i32 %7596 to float
  %7598 = fmul fast float %7597, %7591
  %7599 = fsub fast float 1.000000e+00, %7598
  %7600 = fmul fast float %7599, %7599
  %7601 = fmul fast float %7600, %7599
  %7602 = fsub fast float %7599, %7601
  %7603 = fmul fast float %7602, %7587
  %7604 = fsub fast float 1.000000e+00, %7601
  %7605 = fsub fast float %7604, %7603
  %7606 = fmul fast float %7597, 5.000000e-01
  %7607 = fmul fast float %7606, %7605
  %7608 = fsub fast float 5.000000e-01, %7607
  br label %7609

; <label>:7609                                    ; preds = %7581, %7457, %7442
  %7610 = phi float [ 1.000000e+00, %7442 ], [ %7523, %7457 ], [ %7608, %7581 ]
  %7611 = fcmp fast ogt float %6870, 0.000000e+00
  br i1 %7611, label %7612, label %7930, !dx.controlflow.hints !118

; <label>:7612                                    ; preds = %7609
  %7613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7614 = extractvalue %dx.types.CBufRet.f32 %7613, 0
  %7615 = fadd fast float %7614, %6754
  %7616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7617 = extractvalue %dx.types.CBufRet.f32 %7616, 2
  %7618 = extractvalue %dx.types.CBufRet.f32 %7616, 3
  %7619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7620 = extractvalue %dx.types.CBufRet.f32 %7619, 0
  %7621 = call float @dx.op.binary.f32(i32 35, float %7615, float 0.000000e+00)  ; FMax(a,b)
  %7622 = fadd fast float %7621, 0x3F10000000000000
  %7623 = fcmp fast oeq float %7620, 0.000000e+00
  br i1 %6757, label %7624, label %7777, !dx.controlflow.hints !119

; <label>:7624                                    ; preds = %7612
  br i1 %7623, label %7625, label %7692

; <label>:7625                                    ; preds = %7624
  %7626 = extractvalue %dx.types.CBufRet.f32 %7616, 1
  %7627 = extractvalue %dx.types.CBufRet.f32 %7616, 0
  %7628 = fmul fast float %7627, %6746
  %7629 = fmul fast float %7626, %6750
  %7630 = fadd fast float %7628, 5.000000e-01
  %7631 = call float @dx.op.unary.f32(i32 27, float %7630)  ; Round_ni(value)
  %7632 = fadd fast float %7629, 5.000000e-01
  %7633 = call float @dx.op.unary.f32(i32 27, float %7632)  ; Round_ni(value)
  %7634 = fsub fast float %7630, %7631
  %7635 = fsub fast float %7632, %7633
  %7636 = fadd fast float %7631, -5.000000e-01
  %7637 = fadd fast float %7633, -5.000000e-01
  %7638 = fmul fast float %7634, 2.000000e+00
  %7639 = fsub fast float 3.000000e+00, %7638
  %7640 = fadd fast float %7638, 1.000000e+00
  %7641 = fsub fast float 2.000000e+00, %7634
  %7642 = bitcast float %7639 to i32
  %7643 = sub nsw i32 2129859010, %7642
  %7644 = bitcast i32 %7643 to float
  %7645 = fmul fast float %7644, %7641
  %7646 = fadd fast float %7645, -1.000000e+00
  %7647 = bitcast float %7640 to i32
  %7648 = sub nsw i32 2129859010, %7647
  %7649 = bitcast i32 %7648 to float
  %7650 = fmul fast float %7649, %7634
  %7651 = fadd fast float %7650, 1.000000e+00
  %7652 = fmul fast float %7635, 2.000000e+00
  %7653 = fsub fast float 3.000000e+00, %7652
  %7654 = fadd fast float %7652, 1.000000e+00
  %7655 = fsub fast float 2.000000e+00, %7635
  %7656 = bitcast float %7653 to i32
  %7657 = sub nsw i32 2129859010, %7656
  %7658 = bitcast i32 %7657 to float
  %7659 = fmul fast float %7658, %7655
  %7660 = fadd fast float %7659, -1.000000e+00
  %7661 = bitcast float %7654 to i32
  %7662 = sub nsw i32 2129859010, %7661
  %7663 = bitcast i32 %7662 to float
  %7664 = fmul fast float %7663, %7635
  %7665 = fadd fast float %7664, 1.000000e+00
  %7666 = fadd fast float %7646, %7636
  %7667 = fmul fast float %7666, %7617
  %7668 = fadd fast float %7660, %7637
  %7669 = fmul fast float %7668, %7618
  %7670 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %45, float %7667, float %7669, float undef, float undef, i32 0, i32 0, i32 undef, float %7622)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7671 = extractvalue %dx.types.ResRet.f32 %7670, 0
  %7672 = fmul fast float %7671, %7639
  %7673 = fadd fast float %7651, %7636
  %7674 = fmul fast float %7673, %7617
  %7675 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %45, float %7674, float %7669, float undef, float undef, i32 0, i32 0, i32 undef, float %7622)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7676 = extractvalue %dx.types.ResRet.f32 %7675, 0
  %7677 = fmul fast float %7676, %7640
  %7678 = fadd fast float %7665, %7637
  %7679 = fmul fast float %7678, %7618
  %7680 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %45, float %7667, float %7679, float undef, float undef, i32 0, i32 0, i32 undef, float %7622)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7681 = extractvalue %dx.types.ResRet.f32 %7680, 0
  %7682 = fmul fast float %7681, %7639
  %7683 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %45, float %7674, float %7679, float undef, float undef, i32 0, i32 0, i32 undef, float %7622)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7684 = extractvalue %dx.types.ResRet.f32 %7683, 0
  %7685 = fmul fast float %7684, %7640
  %7686 = fadd fast float %7685, %7682
  %7687 = fmul fast float %7686, %7654
  %7688 = fadd fast float %7677, %7672
  %7689 = fmul fast float %7688, %7653
  %7690 = fadd fast float %7689, %7687
  %7691 = fmul fast float %7690, 6.250000e-02
  br label %7930

; <label>:7692                                    ; preds = %7624
  %7693 = fmul fast float %259, 0x401921FB60000000
  %7694 = call float @dx.op.unary.f32(i32 13, float %7693)  ; Sin(value)
  %7695 = call float @dx.op.unary.f32(i32 12, float %7693)  ; Cos(value)
  %7696 = fsub fast float -0.000000e+00, %7694
  br label %7697

; <label>:7697                                    ; preds = %7746, %7692
  %7698 = phi float [ 0.000000e+00, %7692 ], [ %7741, %7746 ]
  %7699 = phi float [ 0.000000e+00, %7692 ], [ %7743, %7746 ]
  %7700 = phi i32 [ 0, %7692 ], [ %7747, %7746 ]
  %7701 = mul i32 %7700, 2
  %7702 = add i32 0, %7701
  %7703 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7702
  %7704 = load float, float* %7703, align 4
  %7705 = mul i32 %7700, 2
  %7706 = add i32 1, %7705
  %7707 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7706
  %7708 = load float, float* %7707, align 4
  %7709 = fmul fast float %7704, %7695
  %7710 = call float @dx.op.tertiary.f32(i32 46, float %7708, float %7696, float %7709)  ; FMad(a,b,c)
  %7711 = fmul fast float %7704, %7694
  %7712 = call float @dx.op.tertiary.f32(i32 46, float %7708, float %7695, float %7711)  ; FMad(a,b,c)
  %7713 = fmul fast float %7710, %7620
  %7714 = fmul fast float %7712, %7620
  %7715 = fadd fast float %7713, %6746
  %7716 = fadd fast float %7714, %6750
  %7717 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %44, float %7715, float %7716, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7718 = extractvalue %dx.types.ResRet.f32 %7717, 0
  %7719 = extractvalue %dx.types.ResRet.f32 %7717, 1
  %7720 = extractvalue %dx.types.ResRet.f32 %7717, 2
  %7721 = extractvalue %dx.types.ResRet.f32 %7717, 3
  %7722 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 0
  store float %7718, float* %7722, align 4
  %7723 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 1
  store float %7719, float* %7723, align 4
  %7724 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 2
  store float %7720, float* %7724, align 4
  %7725 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 3
  store float %7721, float* %7725, align 4
  %7726 = fsub fast float %7718, %7622
  %7727 = fcmp fast olt float %7726, 0.000000e+00
  %7728 = select i1 %7727, float 0.000000e+00, float 1.000000e+00
  %7729 = fadd fast float %7728, %7698
  %7730 = fmul fast float %7728, %7726
  %7731 = fadd fast float %7730, %7699
  br label %7732

; <label>:7732                                    ; preds = %7732, %7697
  %7733 = phi i32 [ 1, %7697 ], [ %7744, %7732 ]
  %7734 = phi float [ %7731, %7697 ], [ %7743, %7732 ]
  %7735 = phi float [ %7729, %7697 ], [ %7741, %7732 ]
  %7736 = getelementptr [4 x float], [4 x float]* %99, i32 0, i32 %7733
  %7737 = load float, float* %7736, align 4, !tbaa !113, !noalias !103
  %7738 = fsub fast float %7737, %7622
  %7739 = fcmp fast olt float %7738, 0.000000e+00
  %7740 = select i1 %7739, float 0.000000e+00, float 1.000000e+00
  %7741 = fadd fast float %7740, %7735
  %7742 = fmul fast float %7740, %7738
  %7743 = fadd fast float %7742, %7734
  %7744 = add nuw nsw i32 %7733, 1
  %7745 = icmp eq i32 %7744, 4
  br i1 %7745, label %7746, label %7732, !llvm.loop !115

; <label>:7746                                    ; preds = %7732
  %7747 = add nuw nsw i32 %7700, 1
  %7748 = icmp eq i32 %7747, 8
  br i1 %7748, label %7749, label %7697, !llvm.loop !116

; <label>:7749                                    ; preds = %7746
  %7750 = fdiv fast float 1.000000e+00, %7741
  %7751 = fmul fast float %7750, %7743
  %7752 = fdiv fast float 1.000000e+00, %7622
  %7753 = fmul fast float %7751, %7752
  %7754 = call float @dx.op.unary.f32(i32 7, float %7753)  ; Saturate(value)
  %7755 = call float @dx.op.binary.f32(i32 35, float %7754, float 0.000000e+00)  ; FMax(a,b)
  %7756 = fmul fast float %7741, 3.125000e-02
  %7757 = call float @dx.op.unary.f32(i32 7, float %7756)  ; Saturate(value)
  %7758 = fmul fast float %7757, 2.000000e+00
  %7759 = fadd fast float %7758, -1.000000e+00
  %7760 = fcmp fast ogt float %7759, 0.000000e+00
  %7761 = fcmp fast olt float %7759, 0.000000e+00
  %7762 = zext i1 %7760 to i32
  %7763 = zext i1 %7761 to i32
  %7764 = sub nsw i32 %7762, %7763
  %7765 = sitofp i32 %7764 to float
  %7766 = fmul fast float %7765, %7759
  %7767 = fsub fast float 1.000000e+00, %7766
  %7768 = fmul fast float %7767, %7767
  %7769 = fmul fast float %7768, %7767
  %7770 = fsub fast float %7767, %7769
  %7771 = fmul fast float %7770, %7755
  %7772 = fsub fast float 1.000000e+00, %7769
  %7773 = fsub fast float %7772, %7771
  %7774 = fmul fast float %7765, 5.000000e-01
  %7775 = fmul fast float %7774, %7773
  %7776 = fsub fast float 5.000000e-01, %7775
  br label %7930

; <label>:7777                                    ; preds = %7612
  br i1 %7623, label %7778, label %7845

; <label>:7778                                    ; preds = %7777
  %7779 = extractvalue %dx.types.CBufRet.f32 %7616, 1
  %7780 = extractvalue %dx.types.CBufRet.f32 %7616, 0
  %7781 = fmul fast float %7780, %6746
  %7782 = fmul fast float %7779, %6750
  %7783 = fadd fast float %7781, 5.000000e-01
  %7784 = call float @dx.op.unary.f32(i32 27, float %7783)  ; Round_ni(value)
  %7785 = fadd fast float %7782, 5.000000e-01
  %7786 = call float @dx.op.unary.f32(i32 27, float %7785)  ; Round_ni(value)
  %7787 = fsub fast float %7783, %7784
  %7788 = fsub fast float %7785, %7786
  %7789 = fadd fast float %7784, -5.000000e-01
  %7790 = fadd fast float %7786, -5.000000e-01
  %7791 = fmul fast float %7787, 2.000000e+00
  %7792 = fsub fast float 3.000000e+00, %7791
  %7793 = fadd fast float %7791, 1.000000e+00
  %7794 = fsub fast float 2.000000e+00, %7787
  %7795 = bitcast float %7792 to i32
  %7796 = sub nsw i32 2129859010, %7795
  %7797 = bitcast i32 %7796 to float
  %7798 = fmul fast float %7797, %7794
  %7799 = fadd fast float %7798, -1.000000e+00
  %7800 = bitcast float %7793 to i32
  %7801 = sub nsw i32 2129859010, %7800
  %7802 = bitcast i32 %7801 to float
  %7803 = fmul fast float %7802, %7787
  %7804 = fadd fast float %7803, 1.000000e+00
  %7805 = fmul fast float %7788, 2.000000e+00
  %7806 = fsub fast float 3.000000e+00, %7805
  %7807 = fadd fast float %7805, 1.000000e+00
  %7808 = fsub fast float 2.000000e+00, %7788
  %7809 = bitcast float %7806 to i32
  %7810 = sub nsw i32 2129859010, %7809
  %7811 = bitcast i32 %7810 to float
  %7812 = fmul fast float %7811, %7808
  %7813 = fadd fast float %7812, -1.000000e+00
  %7814 = bitcast float %7807 to i32
  %7815 = sub nsw i32 2129859010, %7814
  %7816 = bitcast i32 %7815 to float
  %7817 = fmul fast float %7816, %7788
  %7818 = fadd fast float %7817, 1.000000e+00
  %7819 = fadd fast float %7799, %7789
  %7820 = fmul fast float %7819, %7617
  %7821 = fadd fast float %7813, %7790
  %7822 = fmul fast float %7821, %7618
  %7823 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7820, float %7822, float undef, float undef, i32 0, i32 0, i32 undef, float %7622)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7824 = extractvalue %dx.types.ResRet.f32 %7823, 0
  %7825 = fmul fast float %7824, %7792
  %7826 = fadd fast float %7804, %7789
  %7827 = fmul fast float %7826, %7617
  %7828 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7827, float %7822, float undef, float undef, i32 0, i32 0, i32 undef, float %7622)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7829 = extractvalue %dx.types.ResRet.f32 %7828, 0
  %7830 = fmul fast float %7829, %7793
  %7831 = fadd fast float %7818, %7790
  %7832 = fmul fast float %7831, %7618
  %7833 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7820, float %7832, float undef, float undef, i32 0, i32 0, i32 undef, float %7622)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7834 = extractvalue %dx.types.ResRet.f32 %7833, 0
  %7835 = fmul fast float %7834, %7792
  %7836 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7827, float %7832, float undef, float undef, i32 0, i32 0, i32 undef, float %7622)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7837 = extractvalue %dx.types.ResRet.f32 %7836, 0
  %7838 = fmul fast float %7837, %7793
  %7839 = fadd fast float %7838, %7835
  %7840 = fmul fast float %7839, %7807
  %7841 = fadd fast float %7830, %7825
  %7842 = fmul fast float %7841, %7806
  %7843 = fadd fast float %7842, %7840
  %7844 = fmul fast float %7843, 6.250000e-02
  br label %7930

; <label>:7845                                    ; preds = %7777
  %7846 = fmul fast float %259, 0x401921FB60000000
  %7847 = call float @dx.op.unary.f32(i32 13, float %7846)  ; Sin(value)
  %7848 = call float @dx.op.unary.f32(i32 12, float %7846)  ; Cos(value)
  %7849 = fsub fast float -0.000000e+00, %7847
  br label %7850

; <label>:7850                                    ; preds = %7899, %7845
  %7851 = phi float [ 0.000000e+00, %7845 ], [ %7894, %7899 ]
  %7852 = phi float [ 0.000000e+00, %7845 ], [ %7896, %7899 ]
  %7853 = phi i32 [ 0, %7845 ], [ %7900, %7899 ]
  %7854 = mul i32 %7853, 2
  %7855 = add i32 0, %7854
  %7856 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7855
  %7857 = load float, float* %7856, align 4
  %7858 = mul i32 %7853, 2
  %7859 = add i32 1, %7858
  %7860 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7859
  %7861 = load float, float* %7860, align 4
  %7862 = fmul fast float %7857, %7848
  %7863 = call float @dx.op.tertiary.f32(i32 46, float %7861, float %7849, float %7862)  ; FMad(a,b,c)
  %7864 = fmul fast float %7857, %7847
  %7865 = call float @dx.op.tertiary.f32(i32 46, float %7861, float %7848, float %7864)  ; FMad(a,b,c)
  %7866 = fmul fast float %7863, %7620
  %7867 = fmul fast float %7865, %7620
  %7868 = fadd fast float %7866, %6746
  %7869 = fadd fast float %7867, %6750
  %7870 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %44, float %7868, float %7869, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7871 = extractvalue %dx.types.ResRet.f32 %7870, 0
  %7872 = extractvalue %dx.types.ResRet.f32 %7870, 1
  %7873 = extractvalue %dx.types.ResRet.f32 %7870, 2
  %7874 = extractvalue %dx.types.ResRet.f32 %7870, 3
  %7875 = getelementptr inbounds [4 x float], [4 x float]* %98, i32 0, i32 0
  store float %7871, float* %7875, align 4
  %7876 = getelementptr inbounds [4 x float], [4 x float]* %98, i32 0, i32 1
  store float %7872, float* %7876, align 4
  %7877 = getelementptr inbounds [4 x float], [4 x float]* %98, i32 0, i32 2
  store float %7873, float* %7877, align 4
  %7878 = getelementptr inbounds [4 x float], [4 x float]* %98, i32 0, i32 3
  store float %7874, float* %7878, align 4
  %7879 = fsub fast float %7871, %7622
  %7880 = fcmp fast olt float %7879, 0.000000e+00
  %7881 = select i1 %7880, float 0.000000e+00, float 1.000000e+00
  %7882 = fadd fast float %7881, %7851
  %7883 = fmul fast float %7881, %7879
  %7884 = fadd fast float %7883, %7852
  br label %7885

; <label>:7885                                    ; preds = %7885, %7850
  %7886 = phi i32 [ 1, %7850 ], [ %7897, %7885 ]
  %7887 = phi float [ %7884, %7850 ], [ %7896, %7885 ]
  %7888 = phi float [ %7882, %7850 ], [ %7894, %7885 ]
  %7889 = getelementptr [4 x float], [4 x float]* %98, i32 0, i32 %7886
  %7890 = load float, float* %7889, align 4, !tbaa !113, !noalias !103
  %7891 = fsub fast float %7890, %7622
  %7892 = fcmp fast olt float %7891, 0.000000e+00
  %7893 = select i1 %7892, float 0.000000e+00, float 1.000000e+00
  %7894 = fadd fast float %7893, %7888
  %7895 = fmul fast float %7893, %7891
  %7896 = fadd fast float %7895, %7887
  %7897 = add nuw nsw i32 %7886, 1
  %7898 = icmp eq i32 %7897, 4
  br i1 %7898, label %7899, label %7885, !llvm.loop !115

; <label>:7899                                    ; preds = %7885
  %7900 = add nuw nsw i32 %7853, 1
  %7901 = icmp eq i32 %7900, 8
  br i1 %7901, label %7902, label %7850, !llvm.loop !116

; <label>:7902                                    ; preds = %7899
  %7903 = fdiv fast float 1.000000e+00, %7894
  %7904 = fmul fast float %7903, %7896
  %7905 = fdiv fast float 1.000000e+00, %7622
  %7906 = fmul fast float %7904, %7905
  %7907 = call float @dx.op.unary.f32(i32 7, float %7906)  ; Saturate(value)
  %7908 = call float @dx.op.binary.f32(i32 35, float %7907, float 0.000000e+00)  ; FMax(a,b)
  %7909 = fmul fast float %7894, 3.125000e-02
  %7910 = call float @dx.op.unary.f32(i32 7, float %7909)  ; Saturate(value)
  %7911 = fmul fast float %7910, 2.000000e+00
  %7912 = fadd fast float %7911, -1.000000e+00
  %7913 = fcmp fast ogt float %7912, 0.000000e+00
  %7914 = fcmp fast olt float %7912, 0.000000e+00
  %7915 = zext i1 %7913 to i32
  %7916 = zext i1 %7914 to i32
  %7917 = sub nsw i32 %7915, %7916
  %7918 = sitofp i32 %7917 to float
  %7919 = fmul fast float %7918, %7912
  %7920 = fsub fast float 1.000000e+00, %7919
  %7921 = fmul fast float %7920, %7920
  %7922 = fmul fast float %7921, %7920
  %7923 = fsub fast float %7920, %7922
  %7924 = fmul fast float %7923, %7908
  %7925 = fsub fast float 1.000000e+00, %7922
  %7926 = fsub fast float %7925, %7924
  %7927 = fmul fast float %7918, 5.000000e-01
  %7928 = fmul fast float %7927, %7926
  %7929 = fsub fast float 5.000000e-01, %7928
  br label %7930

; <label>:7930                                    ; preds = %7902, %7778, %7749, %7625, %7609
  %7931 = phi float [ 1.000000e+00, %7609 ], [ %7691, %7625 ], [ %7776, %7749 ], [ %7844, %7778 ], [ %7929, %7902 ]
  %7932 = fsub fast float %7443, %7276
  %7933 = fmul fast float %7932, %6843
  %7934 = fadd fast float %7933, %7276
  %7935 = fsub fast float %7610, %7934
  %7936 = fmul fast float %7935, %6842
  %7937 = fadd fast float %7936, %7934
  %7938 = fsub fast float %7931, %7937
  %7939 = fmul fast float %7938, %6870
  %7940 = fadd fast float %7939, %7937
  %7941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7942 = extractvalue %dx.types.CBufRet.f32 %7941, 2
  %7943 = fcmp fast ogt float %7942, 0.000000e+00
  br i1 %7943, label %7944, label %7984, !dx.controlflow.hints !120

; <label>:7944                                    ; preds = %7930
  %7945 = fcmp fast ugt float %7942, 0.000000e+00
  br i1 %7945, label %7946, label %7981

; <label>:7946                                    ; preds = %7944
  %7947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7948 = extractvalue %dx.types.CBufRet.f32 %7947, 0
  %7949 = extractvalue %dx.types.CBufRet.f32 %7947, 1
  %7950 = extractvalue %dx.types.CBufRet.f32 %7947, 2
  %7951 = extractvalue %dx.types.CBufRet.f32 %7947, 3
  %7952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7953 = extractvalue %dx.types.CBufRet.f32 %7952, 0
  %7954 = extractvalue %dx.types.CBufRet.f32 %7952, 1
  %7955 = extractvalue %dx.types.CBufRet.f32 %7952, 2
  %7956 = extractvalue %dx.types.CBufRet.f32 %7952, 3
  %7957 = extractvalue %dx.types.CBufRet.f32 %7941, 0
  %7958 = extractvalue %dx.types.CBufRet.f32 %7941, 1
  %7959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7960 = extractvalue %dx.types.CBufRet.f32 %7959, 0
  %7961 = extractvalue %dx.types.CBufRet.f32 %7959, 1
  %7962 = extractvalue %dx.types.CBufRet.f32 %7959, 2
  %7963 = fadd fast float %7960, %6723
  %7964 = fadd fast float %7961, %6724
  %7965 = fadd fast float %7962, %6725
  %7966 = fmul fast float %7963, %7948
  %7967 = call float @dx.op.tertiary.f32(i32 46, float %7949, float %7964, float %7966)  ; FMad(a,b,c)
  %7968 = call float @dx.op.tertiary.f32(i32 46, float %7950, float %7965, float %7967)  ; FMad(a,b,c)
  %7969 = fadd fast float %7968, %7951
  %7970 = fmul fast float %7963, %7953
  %7971 = call float @dx.op.tertiary.f32(i32 46, float %7954, float %7964, float %7970)  ; FMad(a,b,c)
  %7972 = call float @dx.op.tertiary.f32(i32 46, float %7955, float %7965, float %7971)  ; FMad(a,b,c)
  %7973 = fadd fast float %7972, %7956
  %7974 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %40, float %7969, float %7973, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7975 = extractvalue %dx.types.ResRet.f32 %7974, 0
  %7976 = fmul fast float %7975, %7958
  %7977 = fadd fast float %7976, %7957
  %7978 = call float @dx.op.unary.f32(i32 7, float %7977)  ; Saturate(value)
  %7979 = fmul fast float %7978, %7942
  %7980 = fsub fast float 1.000000e+00, %7979
  br label %7981

; <label>:7981                                    ; preds = %7946, %7944
  %7982 = phi float [ %7980, %7946 ], [ 1.000000e+00, %7944 ]
  %7983 = fmul fast float %7982, %7940
  br label %7984

; <label>:7984                                    ; preds = %7981, %7930, %6703
  %7985 = phi float [ 1.000000e+00, %6703 ], [ %7983, %7981 ], [ %7940, %7930 ]
  %7986 = call float @dx.op.binary.f32(i32 36, float %7985, float %7985)  ; FMin(a,b)
  %7987 = call float @dx.op.binary.f32(i32 36, float %7985, float %7986)  ; FMin(a,b)
  %7988 = fcmp fast ogt float %7987, 0.000000e+00
  br i1 %7988, label %7989, label %8155, !dx.controlflow.hints !121

; <label>:7989                                    ; preds = %7984
  %7990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7991 = extractvalue %dx.types.CBufRet.f32 %7990, 0
  %7992 = extractvalue %dx.types.CBufRet.f32 %7990, 1
  %7993 = extractvalue %dx.types.CBufRet.f32 %7990, 2
  %7994 = extractvalue %dx.types.CBufRet.f32 %7990, 3
  %7995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7996 = extractvalue %dx.types.CBufRet.f32 %7995, 0
  %7997 = extractvalue %dx.types.CBufRet.f32 %7995, 1
  %7998 = extractvalue %dx.types.CBufRet.f32 %7995, 2
  %7999 = extractvalue %dx.types.CBufRet.f32 %7995, 3
  %8000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %8001 = extractvalue %dx.types.CBufRet.f32 %8000, 0
  %8002 = extractvalue %dx.types.CBufRet.f32 %8000, 1
  %8003 = extractvalue %dx.types.CBufRet.f32 %8000, 2
  %8004 = extractvalue %dx.types.CBufRet.f32 %8000, 3
  %8005 = fmul fast float %7991, %6723
  %8006 = call float @dx.op.tertiary.f32(i32 46, float %6724, float %7992, float %8005)  ; FMad(a,b,c)
  %8007 = call float @dx.op.tertiary.f32(i32 46, float %6725, float %7993, float %8006)  ; FMad(a,b,c)
  %8008 = fadd fast float %8007, %7994
  %8009 = fmul fast float %7996, %6723
  %8010 = call float @dx.op.tertiary.f32(i32 46, float %6724, float %7997, float %8009)  ; FMad(a,b,c)
  %8011 = call float @dx.op.tertiary.f32(i32 46, float %6725, float %7998, float %8010)  ; FMad(a,b,c)
  %8012 = fadd fast float %8011, %7999
  %8013 = fmul fast float %8001, %6723
  %8014 = call float @dx.op.tertiary.f32(i32 46, float %6724, float %8002, float %8013)  ; FMad(a,b,c)
  %8015 = call float @dx.op.tertiary.f32(i32 46, float %6725, float %8003, float %8014)  ; FMad(a,b,c)
  %8016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %8017 = extractvalue %dx.types.CBufRet.f32 %8016, 0
  %8018 = extractvalue %dx.types.CBufRet.f32 %8016, 1
  %8019 = extractvalue %dx.types.CBufRet.f32 %8016, 3
  %8020 = fmul fast float %8019, %8008
  %8021 = fmul fast float %8019, %8012
  %8022 = fadd fast float %8020, %8017
  %8023 = fadd fast float %8021, %8018
  %8024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %8025 = extractvalue %dx.types.CBufRet.f32 %8024, 0
  %8026 = extractvalue %dx.types.CBufRet.f32 %8024, 1
  %8027 = fsub fast float %8022, %8025
  %8028 = fsub fast float %8023, %8026
  %8029 = fcmp fast olt float %8027, 0.000000e+00
  %8030 = fcmp fast olt float %8028, 0.000000e+00
  %8031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %8032 = extractvalue %dx.types.CBufRet.f32 %8031, 0
  %8033 = extractvalue %dx.types.CBufRet.f32 %8031, 1
  %8034 = extractvalue %dx.types.CBufRet.f32 %8031, 2
  %8035 = extractvalue %dx.types.CBufRet.f32 %8031, 3
  %8036 = select i1 %8029, float %8032, float %8034
  %8037 = select i1 %8030, float %8033, float %8035
  %8038 = fmul fast float %8036, %8027
  %8039 = fmul fast float %8037, %8028
  %8040 = call float @dx.op.unary.f32(i32 6, float %8038)  ; FAbs(value)
  %8041 = call float @dx.op.unary.f32(i32 6, float %8039)  ; FAbs(value)
  %8042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %8043 = extractvalue %dx.types.CBufRet.f32 %8042, 0
  %8044 = call float @dx.op.binary.f32(i32 35, float %8040, float %8041)  ; FMax(a,b)
  %8045 = fsub fast float %8043, %8044
  %8046 = call float @dx.op.unary.f32(i32 7, float %8045)  ; Saturate(value)
  %8047 = fcmp fast ogt float %8046, 0.000000e+00
  br i1 %8047, label %8048, label %8089, !dx.controlflow.hints !122

; <label>:8048                                    ; preds = %7989
  %8049 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %43, float %8022, float %8023, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8050 = extractvalue %dx.types.ResRet.f32 %8049, 1
  %8051 = fcmp fast ogt float %8050, 0.000000e+00
  br i1 %8051, label %8052, label %8084

; <label>:8052                                    ; preds = %8048
  %8053 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %43, float %8022, float %8023, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8054 = extractvalue %dx.types.ResRet.f32 %8053, 0
  %8055 = extractvalue %dx.types.ResRet.f32 %8053, 1
  %8056 = extractvalue %dx.types.ResRet.f32 %8053, 2
  %8057 = extractvalue %dx.types.ResRet.f32 %8053, 3
  %8058 = fsub fast float 1.000000e+00, %8004
  %8059 = fsub fast float %8058, %8015
  %8060 = fmul fast float %8059, 0x400921FB60000000
  %8061 = fadd fast float %8060, 0x3FF921FB60000000
  %8062 = call float @dx.op.unary.f32(i32 13, float %8061)  ; Sin(value)
  %8063 = fadd fast float %8062, -1.000000e+00
  %8064 = fmul fast float %8063, 0x3FD45F3060000000
  %8065 = fmul fast float %8059, 0x401921FB60000000
  %8066 = fadd fast float %8065, 0x400921FB60000000
  %8067 = call float @dx.op.unary.f32(i32 13, float %8066)  ; Sin(value)
  %8068 = fadd fast float %8067, 0x3E7777A5C0000000
  %8069 = fmul fast float %8068, 0x3FC45F3060000000
  %8070 = fmul fast float %8059, 0x4022D97C80000000
  %8071 = fadd fast float %8070, 0x4012D97C80000000
  %8072 = call float @dx.op.unary.f32(i32 13, float %8071)  ; Sin(value)
  %8073 = fadd fast float %8072, 1.000000e+00
  %8074 = fmul fast float %8073, 0x3FBB2995E0000000
  %8075 = fmul fast float %8059, 0x402921FB60000000
  %8076 = fadd fast float %8075, 0x401921FB60000000
  %8077 = call float @dx.op.unary.f32(i32 13, float %8076)  ; Sin(value)
  %8078 = fadd fast float %8077, 0xBE8777A5C0000000
  %8079 = fmul fast float %8078, 0x3FB45F3060000000
  %8080 = call float @dx.op.dot4.f32(i32 56, float %8054, float %8055, float %8056, float %8057, float %8064, float %8069, float %8074, float %8079)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %8081 = fmul fast float %8080, 0xBFF7154760000000
  %8082 = call float @dx.op.unary.f32(i32 21, float %8081)  ; Exp(value)
  %8083 = call float @dx.op.unary.f32(i32 7, float %8082)  ; Saturate(value)
  br label %8084

; <label>:8084                                    ; preds = %8052, %8048
  %8085 = phi float [ %8083, %8052 ], [ 1.000000e+00, %8048 ]
  %8086 = fadd fast float %8085, -1.000000e+00
  %8087 = fmul fast float %8086, %8046
  %8088 = fadd fast float %8087, 1.000000e+00
  br label %8089

; <label>:8089                                    ; preds = %8084, %7989
  %8090 = phi float [ %8088, %8084 ], [ 1.000000e+00, %7989 ]
  %8091 = fmul fast float %8090, %7985
  %8092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8093 = extractvalue %dx.types.CBufRet.f32 %8092, 0
  %8094 = extractvalue %dx.types.CBufRet.f32 %8092, 1
  %8095 = extractvalue %dx.types.CBufRet.f32 %8092, 2
  %8096 = fadd fast float %8093, %187
  %8097 = fadd fast float %8094, %188
  %8098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %8099 = extractvalue %dx.types.CBufRet.f32 %8098, 1
  %8100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %8101 = extractvalue %dx.types.CBufRet.f32 %8100, 0
  %8102 = extractvalue %dx.types.CBufRet.f32 %8100, 1
  %8103 = extractvalue %dx.types.CBufRet.f32 %8100, 2
  %8104 = fsub fast float -0.000000e+00, %8096
  %8105 = fsub fast float -0.000000e+00, %8097
  %8106 = fsub fast float -0.000000e+00, %189
  %8107 = fsub fast float %8106, %8095
  %8108 = fadd fast float %8107, %8099
  %8109 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8104, float %8105, float %8108)  ; Dot3(ax,ay,az,bx,by,bz)
  %8110 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8101, float %8102, float %8103)  ; Dot3(ax,ay,az,bx,by,bz)
  %8111 = fdiv fast float 1.000000e+00, %8110
  %8112 = fmul fast float %8111, %8109
  %8113 = fmul fast float %8101, %8112
  %8114 = fmul fast float %8102, %8112
  %8115 = fadd fast float %8113, %8096
  %8116 = fadd fast float %8114, %8097
  %8117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %8118 = extractvalue %dx.types.CBufRet.f32 %8117, 0
  %8119 = extractvalue %dx.types.CBufRet.f32 %8117, 1
  %8120 = fsub fast float %8115, %8118
  %8121 = fsub fast float %8116, %8119
  %8122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %8123 = extractvalue %dx.types.CBufRet.f32 %8122, 2
  %8124 = extractvalue %dx.types.CBufRet.f32 %8122, 3
  %8125 = fmul fast float %8120, %8123
  %8126 = fmul fast float %8121, %8124
  %8127 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %8128 = extractvalue %dx.types.CBufRet.i32 %8127, 3
  %8129 = icmp eq i32 %8128, 0
  br i1 %8129, label %8135, label %8130

; <label>:8130                                    ; preds = %8089
  %8131 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %8125, float %8126, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8132 = extractvalue %dx.types.ResRet.f32 %8131, 0
  %8133 = extractvalue %dx.types.ResRet.f32 %8131, 1
  %8134 = extractvalue %dx.types.ResRet.f32 %8131, 2
  br label %8140

; <label>:8135                                    ; preds = %8089
  %8136 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %8125, float %8126, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8137 = extractvalue %dx.types.ResRet.f32 %8136, 0
  %8138 = extractvalue %dx.types.ResRet.f32 %8136, 1
  %8139 = extractvalue %dx.types.ResRet.f32 %8136, 2
  br label %8140

; <label>:8140                                    ; preds = %8135, %8130
  %8141 = phi float [ %8132, %8130 ], [ %8137, %8135 ]
  %8142 = phi float [ %8133, %8130 ], [ %8138, %8135 ]
  %8143 = phi float [ %8134, %8130 ], [ %8139, %8135 ]
  %8144 = extractvalue %dx.types.CBufRet.f32 %8098, 2
  %8145 = fmul fast float %8144, %8141
  %8146 = extractvalue %dx.types.CBufRet.f32 %8098, 0
  %8147 = fsub fast float %8112, %8146
  %8148 = fsub fast float %8147, %8145
  %8149 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8148)  ; FMax(a,b)
  %8150 = fmul fast float %8149, %8142
  %8151 = call float @dx.op.binary.f32(i32 36, float %8143, float %8150)  ; FMin(a,b)
  %8152 = fmul fast float %8151, 0xBFF7154760000000
  %8153 = call float @dx.op.unary.f32(i32 21, float %8152)  ; Exp(value)
  %8154 = fmul fast float %8091, %8153
  br label %8155

; <label>:8155                                    ; preds = %8140, %7984
  %8156 = phi float [ %8154, %8140 ], [ %7985, %7984 ]
  %8157 = call float @dx.op.binary.f32(i32 36, float %8156, float %8156)  ; FMin(a,b)
  %8158 = call float @dx.op.binary.f32(i32 36, float %8156, float %8157)  ; FMin(a,b)
  %8159 = fcmp fast ogt float %8158, 0.000000e+00
  br i1 %8159, label %8160, label %8482, !dx.controlflow.hints !123

; <label>:8160                                    ; preds = %8155
  %8161 = bitcast i32 %5719 to float
  %8162 = fmul fast float %8156, %6715
  %8163 = fmul fast float %8156, %6716
  %8164 = fmul fast float %8156, %6717
  %8165 = fsub fast float %6704, %5638
  %8166 = fsub fast float %6705, %5637
  %8167 = fsub fast float %6706, %5636
  %8168 = call float @dx.op.dot3.f32(i32 55, float %8165, float %8166, float %8167, float %8165, float %8166, float %8167)  ; Dot3(ax,ay,az,bx,by,bz)
  %8169 = call float @dx.op.unary.f32(i32 25, float %8168)  ; Rsqrt(value)
  %8170 = fmul fast float %8169, %8165
  %8171 = fmul fast float %8169, %8166
  %8172 = fmul fast float %8169, %8167
  %8173 = call float @dx.op.dot3.f32(i32 55, float %6704, float %6705, float %6706, float %5645, float %5646, float %5647)  ; Dot3(ax,ay,az,bx,by,bz)
  %8174 = call float @dx.op.dot3.f32(i32 55, float %5635, float %5634, float %5633, float %8170, float %8171, float %8172)  ; Dot3(ax,ay,az,bx,by,bz)
  %8175 = call float @dx.op.unary.f32(i32 7, float %8173)  ; Saturate(value)
  %8176 = fmul fast float %8175, %8175
  %8177 = fmul fast float %8176, %8161
  %8178 = call float @dx.op.unary.f32(i32 7, float %8177)  ; Saturate(value)
  %8179 = fmul fast float %8178, %8175
  %8180 = call float @dx.op.dot3.f32(i32 55, float %5645, float %5646, float %5647, float %8170, float %8171, float %8172)  ; Dot3(ax,ay,az,bx,by,bz)
  %8181 = fmul fast float %8180, %8180
  %8182 = call float @dx.op.unary.f32(i32 6, float %8173)  ; FAbs(value)
  %8183 = fsub fast float 1.000000e+00, %5713
  %8184 = fmul fast float %5655, %5655
  %8185 = fmul fast float %8184, %8183
  %8186 = fadd fast float %8185, %5713
  %8187 = bitcast float %8186 to i32
  %8188 = ashr i32 %8187, 1
  %8189 = add nsw i32 %8188, 532487669
  %8190 = bitcast i32 %8189 to float
  %8191 = fadd fast float %8190, %5655
  %8192 = call float @dx.op.dot3.f32(i32 55, float %4755, float %4756, float %4757, float %8170, float %8171, float %8172)  ; Dot3(ax,ay,az,bx,by,bz)
  %8193 = fsub fast float 1.000000e+00, %4743
  %8194 = call float @dx.op.binary.f32(i32 35, float %8193, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8195 = fmul fast float %8194, %8194
  %8196 = fmul fast float %8195, %5713
  %8197 = fmul fast float %8192, %8192
  %8198 = fsub fast float 1.000000e+00, %8181
  %8199 = fsub fast float %8198, %8197
  %8200 = fdiv fast float %8197, %8196
  %8201 = fadd fast float %8200, %8181
  %8202 = fdiv fast float %8199, %5713
  %8203 = fadd fast float %8201, %8202
  %8204 = fmul fast float %8182, %8182
  %8205 = fmul fast float %8204, %8183
  %8206 = fadd fast float %8205, %5713
  %8207 = bitcast float %8206 to i32
  %8208 = ashr i32 %8207, 1
  %8209 = add nsw i32 %8208, 532487669
  %8210 = bitcast i32 %8209 to float
  %8211 = fadd fast float %8210, %8182
  %8212 = fmul fast float %5713, %8194
  %8213 = fmul fast float %8203, %8203
  %8214 = fmul fast float %8213, %8212
  %8215 = fmul fast float %8214, %8191
  %8216 = fmul fast float %8215, %8211
  %8217 = fdiv fast float 0x3FF0A00000000000, %8216
  %8218 = fmul fast float %5965, 0x3FF9999980000000
  %8219 = fsub fast float 5.000000e+00, %8218
  %8220 = call float @dx.op.unary.f32(i32 6, float %8174)  ; FAbs(value)
  %8221 = fsub fast float 1.000000e+00, %8220
  %8222 = fmul fast float %5965, 0x41D9660740000000
  %8223 = fadd fast float %8222, 0xC1EFBF8940000000
  %8224 = bitcast float %8221 to i32
  %8225 = sitofp i32 %8224 to float
  %8226 = fmul fast float %8225, %8219
  %8227 = fadd fast float %8223, %8226
  %8228 = fptosi float %8227 to i32
  %8229 = bitcast i32 %8228 to float
  %8230 = fsub fast float 1.000000e+00, %5642
  %8231 = fsub fast float 1.000000e+00, %5643
  %8232 = fsub fast float 1.000000e+00, %5653
  %8233 = fmul fast float %8229, %8230
  %8234 = fmul fast float %8229, %8231
  %8235 = fmul fast float %8229, %8232
  %8236 = fadd fast float %8233, %5642
  %8237 = fadd fast float %8234, %5643
  %8238 = fadd fast float %8235, %5653
  br i1 %5988, label %8239, label %8262

; <label>:8239                                    ; preds = %8160
  %8240 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %43, float %4640, float %8220, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8241 = extractvalue %dx.types.ResRet.f32 %8240, 0
  %8242 = extractvalue %dx.types.ResRet.f32 %8240, 1
  %8243 = extractvalue %dx.types.ResRet.f32 %8240, 2
  %8244 = fadd fast float %8241, -5.000000e-01
  %8245 = fadd fast float %8242, -5.000000e-01
  %8246 = fadd fast float %8243, -5.000000e-01
  %8247 = fmul fast float %5642, 4.000000e+00
  %8248 = fmul fast float %8247, %8230
  %8249 = fmul fast float %8248, %8244
  %8250 = fmul fast float %5643, 4.000000e+00
  %8251 = fmul fast float %8250, %8231
  %8252 = fmul fast float %8251, %8245
  %8253 = fmul fast float %5653, 4.000000e+00
  %8254 = fmul fast float %8253, %8232
  %8255 = fmul fast float %8254, %8246
  %8256 = fadd fast float %8249, %8236
  %8257 = fadd fast float %8252, %8237
  %8258 = fadd fast float %8255, %8238
  %8259 = call float @dx.op.unary.f32(i32 7, float %8256)  ; Saturate(value)
  %8260 = call float @dx.op.unary.f32(i32 7, float %8257)  ; Saturate(value)
  %8261 = call float @dx.op.unary.f32(i32 7, float %8258)  ; Saturate(value)
  br label %8262

; <label>:8262                                    ; preds = %8239, %8160
  %8263 = phi float [ %8259, %8239 ], [ %8236, %8160 ]
  %8264 = phi float [ %8260, %8239 ], [ %8237, %8160 ]
  %8265 = phi float [ %8261, %8239 ], [ %8238, %8160 ]
  %8266 = fmul fast float %8173, 9.843750e-01
  %8267 = fadd fast float %8266, 7.812500e-03
  %8268 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %43, float %8267, float %5969, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8269 = extractvalue %dx.types.ResRet.f32 %8268, 0
  %8270 = extractvalue %dx.types.ResRet.f32 %8268, 1
  %8271 = extractvalue %dx.types.ResRet.f32 %8268, 2
  %8272 = extractvalue %dx.types.ResRet.f32 %8268, 3
  %8273 = fsub fast float %8271, %8269
  %8274 = fsub fast float %8272, %8270
  %8275 = fmul fast float %8273, %5975
  %8276 = fmul fast float %8274, %5975
  %8277 = fadd fast float %8275, %8269
  %8278 = fadd fast float %8276, %8270
  %8279 = fmul fast float %8277, %5642
  %8280 = fmul fast float %8277, %5643
  %8281 = fmul fast float %8277, %5653
  %8282 = fadd fast float %8279, %8278
  %8283 = fadd fast float %8280, %8278
  %8284 = fadd fast float %8281, %8278
  br i1 %5988, label %8285, label %8308

; <label>:8285                                    ; preds = %8262
  %8286 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %43, float %4640, float %8173, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8287 = extractvalue %dx.types.ResRet.f32 %8286, 0
  %8288 = extractvalue %dx.types.ResRet.f32 %8286, 1
  %8289 = extractvalue %dx.types.ResRet.f32 %8286, 2
  %8290 = fadd fast float %8287, -5.000000e-01
  %8291 = fadd fast float %8288, -5.000000e-01
  %8292 = fadd fast float %8289, -5.000000e-01
  %8293 = fmul fast float %5642, 4.000000e+00
  %8294 = fmul fast float %8293, %8230
  %8295 = fmul fast float %8294, %8290
  %8296 = fmul fast float %5643, 4.000000e+00
  %8297 = fmul fast float %8296, %8231
  %8298 = fmul fast float %8297, %8291
  %8299 = fmul fast float %5653, 4.000000e+00
  %8300 = fmul fast float %8299, %8232
  %8301 = fmul fast float %8300, %8292
  %8302 = fadd fast float %8295, %8282
  %8303 = fadd fast float %8298, %8283
  %8304 = fadd fast float %8301, %8284
  %8305 = call float @dx.op.unary.f32(i32 7, float %8302)  ; Saturate(value)
  %8306 = call float @dx.op.unary.f32(i32 7, float %8303)  ; Saturate(value)
  %8307 = call float @dx.op.unary.f32(i32 7, float %8304)  ; Saturate(value)
  br label %8308

; <label>:8308                                    ; preds = %8285, %8262
  %8309 = phi float [ %8305, %8285 ], [ %8282, %8262 ]
  %8310 = phi float [ %8306, %8285 ], [ %8283, %8262 ]
  %8311 = phi float [ %8307, %8285 ], [ %8284, %8262 ]
  %8312 = call float @dx.op.binary.f32(i32 35, float %8310, float %8311)  ; FMax(a,b)
  %8313 = call float @dx.op.binary.f32(i32 35, float %8309, float %8312)  ; FMax(a,b)
  %8314 = fsub fast float 1.000000e+00, %8313
  %8315 = call float @dx.op.binary.f32(i32 35, float %8182, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8316 = fdiv fast float %3989, %8315
  %8317 = fmul fast float %6613, %8316
  %8318 = fmul fast float %6615, %8316
  %8319 = fmul fast float %6617, %8316
  %8320 = call float @dx.op.unary.f32(i32 21, float %8317)  ; Exp(value)
  %8321 = call float @dx.op.unary.f32(i32 21, float %8318)  ; Exp(value)
  %8322 = call float @dx.op.unary.f32(i32 21, float %8319)  ; Exp(value)
  %8323 = call float @dx.op.unary.f32(i32 7, float %8320)  ; Saturate(value)
  %8324 = call float @dx.op.unary.f32(i32 7, float %8321)  ; Saturate(value)
  %8325 = call float @dx.op.unary.f32(i32 7, float %8322)  ; Saturate(value)
  %8326 = select i1 %6610, float %8323, float 0.000000e+00
  %8327 = select i1 %6611, float %8324, float 0.000000e+00
  %8328 = select i1 %6612, float %8325, float 0.000000e+00
  %8329 = call float @dx.op.dot3.f32(i32 55, float %6704, float %6705, float %6706, float %5652, float %5651, float %5650)  ; Dot3(ax,ay,az,bx,by,bz)
  %8330 = call float @dx.op.unary.f32(i32 7, float %8329)  ; Saturate(value)
  %8331 = fmul fast float %8330, 9.843750e-01
  %8332 = fadd fast float %8331, 7.812500e-03
  %8333 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %43, float %8332, float %5969, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8334 = extractvalue %dx.types.ResRet.f32 %8333, 0
  %8335 = extractvalue %dx.types.ResRet.f32 %8333, 1
  %8336 = extractvalue %dx.types.ResRet.f32 %8333, 2
  %8337 = extractvalue %dx.types.ResRet.f32 %8333, 3
  %8338 = fsub fast float %8336, %8334
  %8339 = fsub fast float %8337, %8335
  %8340 = fmul fast float %8338, %5975
  %8341 = fmul fast float %8339, %5975
  %8342 = fadd fast float %8340, %8334
  %8343 = fadd fast float %8341, %8335
  %8344 = fmul fast float %8342, %5642
  %8345 = fmul fast float %8342, %5643
  %8346 = fmul fast float %8342, %5653
  %8347 = fadd fast float %8344, %8343
  %8348 = fadd fast float %8345, %8343
  %8349 = fadd fast float %8346, %8343
  br i1 %5988, label %8350, label %8373

; <label>:8350                                    ; preds = %8308
  %8351 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %43, float %4640, float %8330, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8352 = extractvalue %dx.types.ResRet.f32 %8351, 0
  %8353 = extractvalue %dx.types.ResRet.f32 %8351, 1
  %8354 = extractvalue %dx.types.ResRet.f32 %8351, 2
  %8355 = fadd fast float %8352, -5.000000e-01
  %8356 = fadd fast float %8353, -5.000000e-01
  %8357 = fadd fast float %8354, -5.000000e-01
  %8358 = fmul fast float %5642, 4.000000e+00
  %8359 = fmul fast float %8358, %8230
  %8360 = fmul fast float %8359, %8355
  %8361 = fmul fast float %5643, 4.000000e+00
  %8362 = fmul fast float %8361, %8231
  %8363 = fmul fast float %8362, %8356
  %8364 = fmul fast float %5653, 4.000000e+00
  %8365 = fmul fast float %8364, %8232
  %8366 = fmul fast float %8365, %8357
  %8367 = fadd fast float %8360, %8347
  %8368 = fadd fast float %8363, %8348
  %8369 = fadd fast float %8366, %8349
  %8370 = call float @dx.op.unary.f32(i32 7, float %8367)  ; Saturate(value)
  %8371 = call float @dx.op.unary.f32(i32 7, float %8368)  ; Saturate(value)
  %8372 = call float @dx.op.unary.f32(i32 7, float %8369)  ; Saturate(value)
  br label %8373

; <label>:8373                                    ; preds = %8350, %8308
  %8374 = phi float [ %8370, %8350 ], [ %8347, %8308 ]
  %8375 = phi float [ %8371, %8350 ], [ %8348, %8308 ]
  %8376 = phi float [ %8372, %8350 ], [ %8349, %8308 ]
  %8377 = call float @dx.op.binary.f32(i32 35, float %8375, float %8376)  ; FMax(a,b)
  %8378 = call float @dx.op.binary.f32(i32 35, float %8374, float %8377)  ; FMax(a,b)
  %8379 = fsub fast float 1.000000e+00, %8378
  %8380 = fmul fast float %5710, %6677
  %8381 = fadd fast float %6679, %8380
  %8382 = call float @dx.op.unary.f32(i32 7, float %8381)  ; Saturate(value)
  %8383 = fsub fast float %6704, %5661
  %8384 = fsub fast float %6705, %5662
  %8385 = fsub fast float %6706, %5663
  %8386 = call float @dx.op.dot3.f32(i32 55, float %8383, float %8384, float %8385, float %8383, float %8384, float %8385)  ; Dot3(ax,ay,az,bx,by,bz)
  %8387 = call float @dx.op.unary.f32(i32 25, float %8386)  ; Rsqrt(value)
  %8388 = fmul fast float %8387, %8383
  %8389 = fmul fast float %8387, %8384
  %8390 = fmul fast float %8387, %8385
  %8391 = call float @dx.op.dot3.f32(i32 55, float %5652, float %5651, float %5650, float %8388, float %8389, float %8390)  ; Dot3(ax,ay,az,bx,by,bz)
  %8392 = fmul fast float %8391, %8391
  %8393 = call float @dx.op.unary.f32(i32 6, float %8330)  ; FAbs(value)
  %8394 = call float @dx.op.binary.f32(i32 35, float %8382, float 0x3F847AE140000000)  ; FMax(a,b)
  %8395 = fmul fast float %8394, %8394
  %8396 = fmul fast float %8395, %8395
  %8397 = fsub fast float 1.000000e+00, %8396
  %8398 = fmul fast float %8184, %8397
  %8399 = fadd fast float %8398, %8396
  %8400 = bitcast float %8399 to i32
  %8401 = ashr i32 %8400, 1
  %8402 = add nsw i32 %8401, 532487669
  %8403 = bitcast i32 %8402 to float
  %8404 = fadd fast float %8403, %5655
  %8405 = call float @dx.op.dot3.f32(i32 55, float %4755, float %4756, float %4757, float %8388, float %8389, float %8390)  ; Dot3(ax,ay,az,bx,by,bz)
  %8406 = fmul fast float %8195, %8396
  %8407 = fmul fast float %8405, %8405
  %8408 = fsub fast float 1.000000e+00, %8392
  %8409 = fsub fast float %8408, %8407
  %8410 = fdiv fast float %8407, %8406
  %8411 = fadd fast float %8410, %8392
  %8412 = fdiv fast float %8409, %8396
  %8413 = fadd fast float %8411, %8412
  %8414 = fmul fast float %8393, %8393
  %8415 = fmul fast float %8414, %8397
  %8416 = fadd fast float %8415, %8396
  %8417 = bitcast float %8416 to i32
  %8418 = ashr i32 %8417, 1
  %8419 = add nsw i32 %8418, 532487669
  %8420 = bitcast i32 %8419 to float
  %8421 = fadd fast float %8420, %8393
  %8422 = fmul fast float %8396, %8194
  %8423 = fmul fast float %8413, %8413
  %8424 = fmul fast float %8423, %8422
  %8425 = fmul fast float %8424, %8404
  %8426 = fmul fast float %8425, %8421
  %8427 = fdiv fast float 0x3FF0A00000000000, %8426
  %8428 = fmul fast float %8330, %8326
  %8429 = fmul fast float %8330, %8327
  %8430 = fmul fast float %8330, %8328
  %8431 = fmul fast float %8428, %8379
  %8432 = fmul fast float %8431, %8427
  %8433 = fmul fast float %8429, %8379
  %8434 = fmul fast float %8433, %8427
  %8435 = fmul fast float %8430, %8379
  %8436 = fmul fast float %8435, %8427
  %8437 = fmul fast float %8263, %8217
  %8438 = fmul fast float %8264, %8217
  %8439 = fmul fast float %8265, %8217
  %8440 = fsub fast float 1.000000e+00, %8174
  %8441 = bitcast float %8440 to i32
  %8442 = sitofp i32 %8441 to float
  %8443 = fmul fast float %8442, 5.000000e+00
  %8444 = fadd fast float %8443, 0xC1EFBF8940000000
  %8445 = fptosi float %8444 to i32
  %8446 = bitcast i32 %8445 to float
  %8447 = fmul fast float %8446, %4641
  %8448 = fmul fast float %8314, %8447
  %8449 = fmul fast float %8448, %6605
  %8450 = fmul fast float %8448, %6606
  %8451 = fmul fast float %8448, %6607
  %8452 = fadd fast float %8449, %8437
  %8453 = fadd fast float %8450, %8438
  %8454 = fadd fast float %8451, %8439
  %8455 = fmul fast float %8452, %8179
  %8456 = fmul fast float %8453, %8179
  %8457 = fmul fast float %8454, %8179
  %8458 = fmul fast float %8179, %8162
  %8459 = fmul fast float %8458, %8314
  %8460 = fmul fast float %8179, %8163
  %8461 = fmul fast float %8460, %8314
  %8462 = fmul fast float %8179, %8164
  %8463 = fmul fast float %8462, %8314
  %8464 = fadd fast float %8455, %8432
  %8465 = fadd fast float %8456, %8434
  %8466 = fadd fast float %8457, %8436
  %8467 = fmul fast float %8464, %8162
  %8468 = fmul fast float %8465, %8163
  %8469 = fmul fast float %8466, %8164
  %8470 = fadd fast float %8459, %6694
  %8471 = fmul fast float %8470, %4637
  %8472 = fadd fast float %8461, %6696
  %8473 = fmul fast float %8472, %4637
  %8474 = fadd fast float %8463, %6698
  %8475 = fmul fast float %8474, %4637
  %8476 = fadd fast float %8467, %6658
  %8477 = fmul fast float %8476, %4637
  %8478 = fadd fast float %8468, %6661
  %8479 = fmul fast float %8478, %4637
  %8480 = fadd fast float %8469, %6664
  %8481 = fmul fast float %8480, %4637
  br label %8482

; <label>:8482                                    ; preds = %8373, %8155, %6588
  %8483 = phi float [ %6659, %6588 ], [ %6659, %8155 ], [ %8477, %8373 ]
  %8484 = phi float [ %6662, %6588 ], [ %6662, %8155 ], [ %8479, %8373 ]
  %8485 = phi float [ %6665, %6588 ], [ %6665, %8155 ], [ %8481, %8373 ]
  %8486 = phi float [ %6695, %6588 ], [ %6695, %8155 ], [ %8471, %8373 ]
  %8487 = phi float [ %6697, %6588 ], [ %6697, %8155 ], [ %8473, %8373 ]
  %8488 = phi float [ %6699, %6588 ], [ %6699, %8155 ], [ %8475, %8373 ]
  %8489 = fmul fast float %4637, %6634
  %8490 = fsub fast float -0.000000e+00, %8489
  %8491 = fmul fast float %4637, %6635
  %8492 = fsub fast float -0.000000e+00, %8491
  %8493 = fmul fast float %4637, %6636
  %8494 = fsub fast float -0.000000e+00, %8493
  %8495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8496 = extractvalue %dx.types.CBufRet.f32 %8495, 0
  %8497 = fmul fast float %8496, %6640
  %8498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8499 = extractvalue %dx.types.CBufRet.f32 %8498, 3
  %8500 = fsub fast float 1.000000e+00, %4644
  %8501 = call float @dx.op.unary.f32(i32 7, float %8500)  ; Saturate(value)
  %8502 = fadd fast float %8488, %4643
  %8503 = fmul fast float %8502, %4644
  %8504 = fmul fast float %8501, %8499
  %8505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8506 = extractvalue %dx.types.CBufRet.f32 %8505, 3
  %8507 = fmul fast float %8486, %5639
  %8508 = fmul fast float %8487, %5640
  %8509 = fmul fast float %8488, %5641
  %8510 = fcmp fast ogt float %95, %209
  %8511 = and i1 %8510, %4760
  %8512 = or i1 %4839, %8511
  %8513 = icmp eq i32 %4759, 2
  %8514 = fcmp fast ole float %95, %209
  %8515 = and i1 %8514, %8513
  %8516 = or i1 %8515, %8512
  br i1 %8511, label %8517, label %8774

; <label>:8517                                    ; preds = %8482
  %8518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8519 = extractvalue %dx.types.CBufRet.f32 %8518, 2
  %8520 = extractvalue %dx.types.CBufRet.f32 %8518, 3
  %8521 = fmul fast float %8519, %108
  %8522 = fmul fast float %8520, %109
  %8523 = call float @dx.op.unary.f32(i32 7, float %8521)  ; Saturate(value)
  %8524 = call float @dx.op.unary.f32(i32 7, float %8522)  ; Saturate(value)
  %8525 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %8523, float %8524, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8526 = extractvalue %dx.types.ResRet.f32 %8525, 0
  %8527 = extractvalue %dx.types.ResRet.f32 %8525, 1
  %8528 = extractvalue %dx.types.ResRet.f32 %8525, 2
  %8529 = extractvalue %dx.types.ResRet.f32 %8525, 3
  %8530 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %8523, float %8524, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8531 = extractvalue %dx.types.ResRet.f32 %8530, 0
  %8532 = extractvalue %dx.types.ResRet.f32 %8530, 1
  %8533 = extractvalue %dx.types.ResRet.f32 %8530, 2
  %8534 = extractvalue %dx.types.ResRet.f32 %8530, 3
  %8535 = call float @dx.op.binary.f32(i32 35, float %8527, float %8528)  ; FMax(a,b)
  %8536 = call float @dx.op.binary.f32(i32 35, float %8526, float %8535)  ; FMax(a,b)
  %8537 = call float @dx.op.binary.f32(i32 35, float %8536, float %8529)  ; FMax(a,b)
  %8538 = call float @dx.op.binary.f32(i32 36, float %8532, float %8533)  ; FMin(a,b)
  %8539 = call float @dx.op.binary.f32(i32 36, float %8531, float %8538)  ; FMin(a,b)
  %8540 = call float @dx.op.binary.f32(i32 36, float %8539, float %8534)  ; FMin(a,b)
  %8541 = fmul fast float %8537, 2.550000e+02
  %8542 = fadd fast float %8541, 0x3F70101020000000
  %8543 = fptoui float %8542 to i32
  %8544 = fmul fast float %8540, 2.550000e+02
  %8545 = fadd fast float %8544, 0x3F70101020000000
  %8546 = fptoui float %8545 to i32
  %8547 = icmp ult i32 %8543, %8546
  br i1 %8547, label %8548, label %8716

; <label>:8548                                    ; preds = %8517
  %8549 = fcmp fast ogt float %94, 9.843750e-01
  %8550 = fadd fast float %95, -4.000000e+00
  %8551 = select i1 %8549, float -4.000000e+00, float %8550
  %8552 = call float @dx.op.binary.f32(i32 35, float %8551, float 0.000000e+00)  ; FMax(a,b)
  %8553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8554 = extractvalue %dx.types.CBufRet.f32 %8553, 0
  %8555 = fadd fast float %8554, %8552
  %8556 = extractvalue %dx.types.CBufRet.f32 %8553, 2
  %8557 = fmul fast float %8555, %8556
  %8558 = call float @dx.op.unary.f32(i32 23, float %8557)  ; Log(value)
  %8559 = extractvalue %dx.types.CBufRet.f32 %8553, 3
  %8560 = fmul fast float %8559, %8558
  %8561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8562 = extractvalue %dx.types.CBufRet.f32 %8561, 2
  %8563 = fmul fast float %8560, %8562
  %8564 = call float @dx.op.unary.f32(i32 7, float %8563)  ; Saturate(value)
  %8565 = uitofp i32 %8543 to float
  %8566 = uitofp i32 %8546 to float
  %8567 = fadd fast float %8565, 5.000000e-01
  %8568 = fadd fast float %8566, 5.000000e-01
  %8569 = fmul fast float %8562, %8567
  %8570 = fmul fast float %8562, %8568
  %8571 = fadd fast float %8569, 0x3F0FFB4800000000
  %8572 = fadd fast float %8570, 0xBF0FFB4800000000
  %8573 = call float @dx.op.binary.f32(i32 35, float %8564, float %8571)  ; FMax(a,b)
  %8574 = call float @dx.op.binary.f32(i32 36, float %8573, float %8572)  ; FMin(a,b)
  %8575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8576 = extractvalue %dx.types.CBufRet.f32 %8575, 1
  %8577 = extractvalue %dx.types.CBufRet.f32 %8575, 2
  %8578 = extractvalue %dx.types.CBufRet.f32 %8575, 0
  %8579 = fmul fast float %8576, %8574
  %8580 = fadd fast float %8578, %8579
  %8581 = fadd fast float %8578, %8577
  %8582 = fsub fast float %8576, %8577
  %8583 = fadd fast float %8582, %8578
  %8584 = call float @dx.op.binary.f32(i32 35, float %8580, float %8581)  ; FMax(a,b)
  %8585 = call float @dx.op.binary.f32(i32 36, float %8584, float %8583)  ; FMin(a,b)
  %8586 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %41, float %8523, float %8524, float %8585, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8587 = extractvalue %dx.types.ResRet.f32 %8586, 0
  %8588 = extractvalue %dx.types.ResRet.f32 %8586, 1
  %8589 = extractvalue %dx.types.ResRet.f32 %8586, 2
  %8590 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8591 = extractvalue %dx.types.CBufRet.i32 %8590, 0
  %8592 = extractvalue %dx.types.CBufRet.i32 %8590, 1
  %8593 = uitofp i32 %8591 to float
  %8594 = uitofp i32 %8592 to float
  %8595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8596 = extractvalue %dx.types.CBufRet.f32 %8595, 0
  %8597 = extractvalue %dx.types.CBufRet.f32 %8595, 1
  %8598 = fmul fast float %8593, %8523
  %8599 = fmul fast float %8594, %8524
  %8600 = fadd fast float %8598, -5.000000e-01
  %8601 = fadd fast float %8599, -5.000000e-01
  %8602 = call float @dx.op.unary.f32(i32 22, float %8600)  ; Frc(value)
  %8603 = call float @dx.op.unary.f32(i32 22, float %8601)  ; Frc(value)
  %8604 = fmul fast float %8602, %8602
  %8605 = fmul fast float %8604, %8602
  %8606 = fsub fast float 3.000000e+00, %8602
  %8607 = fmul fast float %8604, %8606
  %8608 = fmul fast float %8602, 3.000000e+00
  %8609 = fmul fast float %8605, 3.000000e+00
  %8610 = fmul fast float %8604, 6.000000e+00
  %8611 = fsub fast float %8609, %8610
  %8612 = fadd fast float %8611, 4.000000e+00
  %8613 = fmul fast float %8612, 0x3FC5555560000000
  %8614 = fmul fast float %8605, -3.000000e+00
  %8615 = fadd fast float %8604, %8602
  %8616 = fmul fast float %8615, 3.000000e+00
  %8617 = fadd fast float %8614, 1.000000e+00
  %8618 = fadd fast float %8617, %8616
  %8619 = fmul fast float %8605, 0x3FC5555560000000
  %8620 = fmul fast float %8603, %8603
  %8621 = fmul fast float %8620, %8603
  %8622 = fsub fast float 3.000000e+00, %8603
  %8623 = fmul fast float %8620, %8622
  %8624 = fmul fast float %8603, 3.000000e+00
  %8625 = fmul fast float %8621, 3.000000e+00
  %8626 = fmul fast float %8620, 6.000000e+00
  %8627 = fsub fast float %8625, %8626
  %8628 = fadd fast float %8627, 4.000000e+00
  %8629 = fmul fast float %8628, 0x3FC5555560000000
  %8630 = fmul fast float %8621, -3.000000e+00
  %8631 = fadd fast float %8620, %8603
  %8632 = fmul fast float %8631, 3.000000e+00
  %8633 = fadd fast float %8630, 1.000000e+00
  %8634 = fadd fast float %8633, %8632
  %8635 = fmul fast float %8621, 0x3FC5555560000000
  %8636 = fadd fast float %8602, 1.000000e+00
  %8637 = fsub fast float 1.000000e+00, %8608
  %8638 = fadd fast float %8637, %8607
  %8639 = fadd fast float %8638, %8612
  %8640 = fmul fast float %8639, 0x3FC5555560000000
  %8641 = fdiv fast float %8613, %8640
  %8642 = fsub fast float %8636, %8641
  %8643 = fsub fast float 1.000000e+00, %8602
  %8644 = fadd fast float %8618, %8605
  %8645 = fmul fast float %8644, 0x3FC5555560000000
  %8646 = fdiv fast float %8619, %8645
  %8647 = fadd fast float %8643, %8646
  %8648 = fadd fast float %8603, 1.000000e+00
  %8649 = fsub fast float 1.000000e+00, %8624
  %8650 = fadd fast float %8649, %8623
  %8651 = fadd fast float %8650, %8628
  %8652 = fmul fast float %8651, 0x3FC5555560000000
  %8653 = fdiv fast float %8629, %8652
  %8654 = fsub fast float %8648, %8653
  %8655 = fsub fast float 1.000000e+00, %8603
  %8656 = fadd fast float %8634, %8621
  %8657 = fmul fast float %8656, 0x3FC5555560000000
  %8658 = fdiv fast float %8635, %8657
  %8659 = fadd fast float %8658, %8655
  %8660 = fmul fast float %8642, %8596
  %8661 = fsub fast float %8523, %8660
  %8662 = fmul fast float %8647, %8596
  %8663 = fadd fast float %8662, %8523
  %8664 = fmul fast float %8659, %8597
  %8665 = fadd fast float %8664, %8524
  %8666 = fmul fast float %8654, %8597
  %8667 = fsub fast float %8524, %8666
  %8668 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8661, float %8667, float %8585, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8669 = extractvalue %dx.types.ResRet.f32 %8668, 0
  %8670 = extractvalue %dx.types.ResRet.f32 %8668, 1
  %8671 = extractvalue %dx.types.ResRet.f32 %8668, 2
  %8672 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8663, float %8667, float %8585, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8673 = extractvalue %dx.types.ResRet.f32 %8672, 0
  %8674 = extractvalue %dx.types.ResRet.f32 %8672, 1
  %8675 = extractvalue %dx.types.ResRet.f32 %8672, 2
  %8676 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8661, float %8665, float %8585, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8677 = extractvalue %dx.types.ResRet.f32 %8676, 0
  %8678 = extractvalue %dx.types.ResRet.f32 %8676, 1
  %8679 = extractvalue %dx.types.ResRet.f32 %8676, 2
  %8680 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8663, float %8665, float %8585, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8681 = extractvalue %dx.types.ResRet.f32 %8680, 0
  %8682 = extractvalue %dx.types.ResRet.f32 %8680, 1
  %8683 = extractvalue %dx.types.ResRet.f32 %8680, 2
  %8684 = fsub fast float %8677, %8669
  %8685 = fsub fast float %8678, %8670
  %8686 = fsub fast float %8679, %8671
  %8687 = fmul fast float %8684, %8657
  %8688 = fmul fast float %8685, %8657
  %8689 = fmul fast float %8686, %8657
  %8690 = fadd fast float %8687, %8669
  %8691 = fadd fast float %8688, %8670
  %8692 = fadd fast float %8689, %8671
  %8693 = fsub fast float %8681, %8673
  %8694 = fsub fast float %8682, %8674
  %8695 = fsub fast float %8683, %8675
  %8696 = fmul fast float %8693, %8657
  %8697 = fmul fast float %8694, %8657
  %8698 = fmul fast float %8695, %8657
  %8699 = fsub fast float %8673, %8690
  %8700 = fadd fast float %8699, %8696
  %8701 = fsub fast float %8674, %8691
  %8702 = fadd fast float %8701, %8697
  %8703 = fsub fast float %8675, %8692
  %8704 = fadd fast float %8703, %8698
  %8705 = fmul fast float %8700, %8645
  %8706 = fmul fast float %8702, %8645
  %8707 = fmul fast float %8704, %8645
  %8708 = fadd fast float %8705, %8690
  %8709 = fadd fast float %8706, %8691
  %8710 = fadd fast float %8707, %8692
  %8711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8712 = extractvalue %dx.types.CBufRet.f32 %8711, 1
  %8713 = fmul fast float %8708, %8712
  %8714 = fmul fast float %8709, %8712
  %8715 = fmul fast float %8710, %8712
  br label %8716

; <label>:8716                                    ; preds = %8548, %8517
  %8717 = phi float [ %8587, %8548 ], [ 1.000000e+00, %8517 ]
  %8718 = phi float [ %8588, %8548 ], [ 1.000000e+00, %8517 ]
  %8719 = phi float [ %8589, %8548 ], [ 1.000000e+00, %8517 ]
  %8720 = phi float [ %8713, %8548 ], [ 0.000000e+00, %8517 ]
  %8721 = phi float [ %8714, %8548 ], [ 0.000000e+00, %8517 ]
  %8722 = phi float [ %8715, %8548 ], [ 0.000000e+00, %8517 ]
  %8723 = fmul fast float %8720, %8490
  %8724 = fmul fast float %8721, %8492
  %8725 = fmul fast float %8722, %8494
  %8726 = call float @dx.op.dot3.f32(i32 55, float %8717, float %8718, float %8719, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8727 = call float @dx.op.dot3.f32(i32 55, float %8723, float %8724, float %8725, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8728 = select i1 %248, float %8726, float %8717
  %8729 = select i1 %248, float %8726, float %8718
  %8730 = select i1 %248, float 1.000000e+00, float %8719
  %8731 = select i1 %248, float %8727, float %8723
  %8732 = select i1 %248, float 0.000000e+00, float %8724
  %8733 = select i1 %248, float 0.000000e+00, float %8725
  %8734 = fmul fast float %8728, %8507
  %8735 = fmul fast float %8729, %8508
  %8736 = fmul fast float %8730, %8509
  %8737 = fadd fast float %8734, %8731
  %8738 = fadd fast float %8735, %8732
  %8739 = fadd fast float %8733, %8736
  %8740 = fmul fast float %8728, %8483
  %8741 = fmul fast float %8729, %8484
  %8742 = fmul fast float %8730, %8485
  %8743 = fmul fast float %136, %8519
  %8744 = fmul fast float %138, %8520
  %8745 = fsub fast float 1.000000e+00, %8743
  %8746 = fsub fast float 1.000000e+00, %8744
  %8747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8748 = extractvalue %dx.types.CBufRet.f32 %8747, 0
  %8749 = extractvalue %dx.types.CBufRet.f32 %8747, 1
  %8750 = extractvalue %dx.types.CBufRet.f32 %8747, 2
  %8751 = fmul fast float %8745, %8748
  %8752 = fmul fast float %8745, %8749
  %8753 = fmul fast float %8745, %8750
  %8754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8755 = extractvalue %dx.types.CBufRet.f32 %8754, 0
  %8756 = extractvalue %dx.types.CBufRet.f32 %8754, 1
  %8757 = extractvalue %dx.types.CBufRet.f32 %8754, 2
  %8758 = fmul fast float %8746, %8755
  %8759 = fmul fast float %8746, %8756
  %8760 = fmul fast float %8746, %8757
  %8761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8762 = extractvalue %dx.types.CBufRet.f32 %8761, 0
  %8763 = extractvalue %dx.types.CBufRet.f32 %8761, 1
  %8764 = extractvalue %dx.types.CBufRet.f32 %8761, 2
  %8765 = fadd fast float %8758, %8762
  %8766 = fadd fast float %8765, %8751
  %8767 = fadd fast float %8759, %8763
  %8768 = fadd fast float %8767, %8752
  %8769 = fadd fast float %8760, %8764
  %8770 = fadd fast float %8769, %8753
  %8771 = fmul fast float %8766, %209
  %8772 = fmul fast float %8768, %209
  %8773 = fmul fast float %8770, %209
  br label %8774

; <label>:8774                                    ; preds = %8716, %8482
  %8775 = phi float [ %8771, %8716 ], [ %187, %8482 ]
  %8776 = phi float [ %8772, %8716 ], [ %188, %8482 ]
  %8777 = phi float [ %8773, %8716 ], [ %189, %8482 ]
  %8778 = phi float [ %209, %8716 ], [ %95, %8482 ]
  %8779 = phi float [ %8737, %8716 ], [ %8507, %8482 ]
  %8780 = phi float [ %8738, %8716 ], [ %8508, %8482 ]
  %8781 = phi float [ %8739, %8716 ], [ %8509, %8482 ]
  %8782 = phi float [ %8740, %8716 ], [ %8483, %8482 ]
  %8783 = phi float [ %8741, %8716 ], [ %8484, %8482 ]
  %8784 = phi float [ %8742, %8716 ], [ %8485, %8482 ]
  %8785 = phi float [ %8717, %8716 ], [ 1.000000e+00, %8482 ]
  br i1 %8516, label %9940, label %8786

; <label>:8786                                    ; preds = %8774
  %8787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8788 = extractvalue %dx.types.CBufRet.f32 %8787, 0
  %8789 = extractvalue %dx.types.CBufRet.f32 %8787, 1
  %8790 = extractvalue %dx.types.CBufRet.f32 %8787, 2
  %8791 = extractvalue %dx.types.CBufRet.f32 %8787, 3
  %8792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8793 = extractvalue %dx.types.CBufRet.f32 %8792, 0
  %8794 = extractvalue %dx.types.CBufRet.f32 %8792, 1
  %8795 = extractvalue %dx.types.CBufRet.f32 %8792, 2
  %8796 = extractvalue %dx.types.CBufRet.f32 %8792, 3
  %8797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8798 = extractvalue %dx.types.CBufRet.f32 %8797, 0
  %8799 = extractvalue %dx.types.CBufRet.f32 %8797, 1
  %8800 = extractvalue %dx.types.CBufRet.f32 %8797, 2
  %8801 = extractvalue %dx.types.CBufRet.f32 %8797, 3
  %8802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8803 = extractvalue %dx.types.CBufRet.f32 %8802, 0
  %8804 = extractvalue %dx.types.CBufRet.f32 %8802, 1
  %8805 = extractvalue %dx.types.CBufRet.f32 %8802, 2
  %8806 = extractvalue %dx.types.CBufRet.f32 %8802, 3
  %8807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8808 = extractvalue %dx.types.CBufRet.f32 %8807, 3
  %8809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8810 = extractvalue %dx.types.CBufRet.f32 %8809, 3
  %8811 = extractvalue %dx.types.CBufRet.f32 %8809, 0
  %8812 = extractvalue %dx.types.CBufRet.f32 %8809, 1
  %8813 = extractvalue %dx.types.CBufRet.f32 %8809, 2
  %8814 = fcmp fast olt float %8813, -5.000000e-01
  %8815 = call float @dx.op.dot3.f32(i32 55, float %8775, float %8776, float %8777, float %8775, float %8776, float %8777)  ; Dot3(ax,ay,az,bx,by,bz)
  %8816 = call float @dx.op.unary.f32(i32 25, float %8815)  ; Rsqrt(value)
  %8817 = fmul fast float %8816, %8815
  %8818 = fmul fast float %8816, %8775
  %8819 = fmul fast float %8816, %8776
  %8820 = fmul fast float %8816, %8777
  %8821 = fadd fast float %8817, %8791
  %8822 = call float @dx.op.dot3.f32(i32 55, float %8818, float %8819, float %8820, float %8788, float %8789, float %8790)  ; Dot3(ax,ay,az,bx,by,bz)
  %8823 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8824 = extractvalue %dx.types.CBufRet.i32 %8823, 1
  %8825 = and i32 %8824, 1
  %8826 = icmp ne i32 %8825, 0
  %8827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8828 = extractvalue %dx.types.CBufRet.f32 %8827, 2
  %8829 = fcmp fast ogt float %8828, 0.000000e+00
  %8830 = and i1 %8826, %8829
  br i1 %8830, label %8831, label %9237, !dx.controlflow.hints !124

; <label>:8831                                    ; preds = %8786
  %8832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8833 = extractvalue %dx.types.CBufRet.f32 %8832, 3
  %8834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8835 = extractvalue %dx.types.CBufRet.f32 %8834, 2
  %8836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8837 = extractvalue %dx.types.CBufRet.f32 %8836, 2
  %8838 = fsub fast float %8835, %8837
  %8839 = and i32 %8824, 2
  %8840 = extractvalue %dx.types.CBufRet.i32 %8823, 0
  %8841 = call i32 @dx.op.binary.i32(i32 40, i32 %8840, i32 3)  ; UMin(a,b)
  %8842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8843 = extractvalue %dx.types.CBufRet.f32 %8842, 0
  %8844 = extractvalue %dx.types.CBufRet.f32 %8842, 1
  %8845 = extractvalue %dx.types.CBufRet.f32 %8836, 0
  %8846 = extractvalue %dx.types.CBufRet.f32 %8836, 1
  %8847 = fsub fast float %8843, %8845
  %8848 = fsub fast float %8844, %8846
  %8849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8850 = extractvalue %dx.types.CBufRet.f32 %8849, 0
  %8851 = fcmp fast ogt float %8850, 0.000000e+00
  %8852 = fsub fast float -0.000000e+00, %8847
  %8853 = fsub fast float -0.000000e+00, %8848
  %8854 = call float @dx.op.dot2.f32(i32 54, float %8818, float %8819, float %8818, float %8819)  ; Dot2(ax,ay,bx,by)
  %8855 = call float @dx.op.dot2.f32(i32 54, float %8818, float %8819, float %8852, float %8853)  ; Dot2(ax,ay,bx,by)
  %8856 = fmul fast float %8855, 2.000000e+00
  %8857 = call float @dx.op.dot2.f32(i32 54, float %8852, float %8853, float %8852, float %8853)  ; Dot2(ax,ay,bx,by)
  %8858 = fmul fast float %8850, %8850
  %8859 = fsub fast float %8857, %8858
  %8860 = fmul fast float %8856, %8856
  %8861 = fmul fast float %8854, 4.000000e+00
  %8862 = fmul fast float %8861, %8859
  %8863 = fsub fast float %8860, %8862
  %8864 = fcmp fast ogt float %8863, 0.000000e+00
  br i1 %8864, label %8865, label %8880

; <label>:8865                                    ; preds = %8831
  %8866 = fcmp fast ogt float %8856, 0.000000e+00
  %8867 = call float @dx.op.unary.f32(i32 24, float %8863)  ; Sqrt(value)
  %8868 = fsub fast float -0.000000e+00, %8867
  %8869 = select i1 %8866, float %8867, float %8868
  %8870 = fadd fast float %8869, %8856
  %8871 = fmul float %8870, -5.000000e-01
  %8872 = fdiv fast float %8871, %8854
  %8873 = call float @dx.op.binary.f32(i32 35, float %8872, float 0.000000e+00)  ; FMax(a,b)
  %8874 = call float @dx.op.binary.f32(i32 36, float %8817, float %8873)  ; FMin(a,b)
  %8875 = fdiv fast float %8859, %8871
  %8876 = call float @dx.op.binary.f32(i32 35, float %8875, float 0.000000e+00)  ; FMax(a,b)
  %8877 = call float @dx.op.binary.f32(i32 36, float %8817, float %8876)  ; FMin(a,b)
  %8878 = call float @dx.op.binary.f32(i32 36, float %8874, float %8877)  ; FMin(a,b)
  %8879 = call float @dx.op.binary.f32(i32 35, float %8874, float %8877)  ; FMax(a,b)
  br label %8880

; <label>:8880                                    ; preds = %8865, %8831
  %8881 = phi float [ %8879, %8865 ], [ -1.000000e+00, %8831 ]
  %8882 = phi float [ %8878, %8865 ], [ -1.000000e+00, %8831 ]
  %8883 = phi i1 [ true, %8865 ], [ false, %8831 ]
  %8884 = and i1 %8851, %8883
  br i1 %8884, label %8885, label %8887

; <label>:8885                                    ; preds = %8880
  %8886 = fcmp fast oeq float %8882, %8881
  br i1 %8886, label %9190, label %8888

; <label>:8887                                    ; preds = %8880
  br i1 %8851, label %9190, label %8888

; <label>:8888                                    ; preds = %8887, %8885
  %8889 = phi float [ %8817, %8887 ], [ %8881, %8885 ]
  %8890 = phi float [ 0.000000e+00, %8887 ], [ %8882, %8885 ]
  %8891 = icmp ne i32 %8839, 0
  %8892 = fmul fast float %8889, %8820
  %8893 = fadd fast float %8892, %8833
  %8894 = fmul fast float %8893, %8889
  %8895 = select i1 %8891, float 0.000000e+00, float %8894
  %8896 = fcmp fast oeq float %8820, 0.000000e+00
  %8897 = fdiv fast float %8838, %8820
  %8898 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8897)  ; FMax(a,b)
  %8899 = select i1 %8896, float %8889, float %8898
  %8900 = call float @dx.op.binary.f32(i32 36, float %8889, float %8899)  ; FMin(a,b)
  %8901 = fcmp fast ogt float %8820, 0.000000e+00
  %8902 = fcmp fast olt float %8838, 0.000000e+00
  br i1 %8901, label %8903, label %8960

; <label>:8903                                    ; preds = %8888
  %8904 = icmp eq i32 %8839, 0
  br i1 %8902, label %8905, label %8949

; <label>:8905                                    ; preds = %8903
  %8906 = select i1 %8904, float %8889, float 0.000000e+00
  %8907 = fsub fast float -0.000000e+00, %8906
  %8908 = call float @dx.op.unary.f32(i32 6, float %8907)  ; FAbs(value)
  %8909 = fmul fast float %8906, %8820
  %8910 = fadd fast float %8909, %8833
  %8911 = fmul fast float %8908, %8910
  %8912 = fsub fast float %8895, %8911
  %8913 = fsub fast float %8889, %8908
  %8914 = select i1 %8904, float %8913, float 0.000000e+00
  %8915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8916 = extractvalue %dx.types.CBufRet.f32 %8915, 0
  %8917 = extractvalue %dx.types.CBufRet.f32 %8915, 1
  %8918 = extractvalue %dx.types.CBufRet.f32 %8915, 2
  %8919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8920 = extractvalue %dx.types.CBufRet.f32 %8919, 0
  %8921 = extractvalue %dx.types.CBufRet.f32 %8919, 1
  %8922 = extractvalue %dx.types.CBufRet.f32 %8919, 2
  %8923 = extractvalue %dx.types.CBufRet.f32 %8919, 3
  %8924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8925 = extractvalue %dx.types.CBufRet.f32 %8924, 3
  %8926 = call float @dx.op.binary.f32(i32 36, float %8912, float %8925)  ; FMin(a,b)
  %8927 = fmul fast float %8923, %8914
  %8928 = call float @dx.op.unary.f32(i32 7, float %8927)  ; Saturate(value)
  %8929 = fsub fast float %8920, %8916
  %8930 = fsub fast float %8921, %8917
  %8931 = fsub fast float %8922, %8918
  %8932 = fmul fast float %8928, %8929
  %8933 = fmul fast float %8928, %8930
  %8934 = fmul fast float %8928, %8931
  %8935 = fadd fast float %8932, %8916
  %8936 = fadd fast float %8933, %8917
  %8937 = fadd fast float %8934, %8918
  %8938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8939 = extractvalue %dx.types.CBufRet.f32 %8938, 0
  %8940 = extractvalue %dx.types.CBufRet.f32 %8938, 1
  %8941 = fadd fast float %8940, %8939
  %8942 = call float @dx.op.unary.f32(i32 7, float %8941)  ; Saturate(value)
  %8943 = extractvalue %dx.types.CBufRet.f32 %8938, 2
  %8944 = extractvalue %dx.types.CBufRet.f32 %8938, 3
  %8945 = fadd fast float %8944, %8943
  %8946 = call float @dx.op.unary.f32(i32 7, float %8945)  ; Saturate(value)
  %8947 = fmul fast float %8942, %8926
  %8948 = fmul fast float %8947, %8946
  br label %9190

; <label>:8949                                    ; preds = %8903
  br i1 %8904, label %8950, label %8971

; <label>:8950                                    ; preds = %8949
  %8951 = call float @dx.op.binary.f32(i32 36, float %8900, float %8890)  ; FMin(a,b)
  %8952 = fsub fast float %8900, %8951
  %8953 = fsub fast float %8952, %8889
  %8954 = call float @dx.op.unary.f32(i32 6, float %8953)  ; FAbs(value)
  %8955 = fadd fast float %8952, %8889
  %8956 = fmul fast float %8955, %8820
  %8957 = fadd fast float %8956, %8833
  %8958 = fmul fast float %8957, %8954
  %8959 = fsub fast float %8895, %8958
  br label %8971

; <label>:8960                                    ; preds = %8888
  br i1 %8902, label %8961, label %8971

; <label>:8961                                    ; preds = %8960
  %8962 = call float @dx.op.binary.f32(i32 35, float %8890, float %8900)  ; FMax(a,b)
  %8963 = icmp eq i32 %8839, 0
  %8964 = select i1 %8963, float %8900, float 0.000000e+00
  %8965 = fsub fast float -0.000000e+00, %8964
  %8966 = call float @dx.op.unary.f32(i32 6, float %8965)  ; FAbs(value)
  %8967 = fmul fast float %8964, %8820
  %8968 = fadd fast float %8967, %8833
  %8969 = fmul fast float %8966, %8968
  %8970 = fsub fast float %8895, %8969
  br label %8971

; <label>:8971                                    ; preds = %8961, %8960, %8950, %8949
  %8972 = phi float [ %8890, %8949 ], [ %8890, %8950 ], [ %8962, %8961 ], [ %8890, %8960 ]
  %8973 = phi float [ 0.000000e+00, %8949 ], [ %8954, %8950 ], [ %8966, %8961 ], [ 0.000000e+00, %8960 ]
  %8974 = phi float [ %8895, %8949 ], [ %8959, %8950 ], [ %8970, %8961 ], [ %8895, %8960 ]
  %8975 = phi float [ %8900, %8949 ], [ %8900, %8950 ], [ %8889, %8961 ], [ %8889, %8960 ]
  %8976 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 0
  store float -1.000000e+00, float* %8976, align 4, !tbaa !113, !noalias !125
  %8977 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 1
  store float -1.000000e+00, float* %8977, align 4, !tbaa !113, !noalias !125
  %8978 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 2
  store float -1.000000e+00, float* %8978, align 4, !tbaa !113, !noalias !125
  %8979 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 0
  store float -1.000000e+00, float* %8979, align 4, !tbaa !113, !noalias !125
  %8980 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 1
  store float -1.000000e+00, float* %8980, align 4, !tbaa !113, !noalias !125
  %8981 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 2
  store float -1.000000e+00, float* %8981, align 4, !tbaa !113, !noalias !125
  %8982 = icmp sgt i32 %8841, 0
  br i1 %8982, label %8983, label %9044

; <label>:8983                                    ; preds = %8971
  br label %8984

; <label>:8984                                    ; preds = %9033, %8983
  %8985 = phi i32 [ %9034, %9033 ], [ 0, %8983 ]
  %8986 = phi i32 [ %9035, %9033 ], [ 0, %8983 ]
  %8987 = add nuw i32 %8986, 171
  %8988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 %8987)  ; CBufferLoadLegacy(handle,regIndex)
  %8989 = extractvalue %dx.types.CBufRet.f32 %8988, 0
  %8990 = extractvalue %dx.types.CBufRet.f32 %8988, 1
  %8991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8992 = extractvalue %dx.types.CBufRet.f32 %8991, 0
  %8993 = extractvalue %dx.types.CBufRet.f32 %8991, 1
  %8994 = fsub fast float %8989, %8992
  %8995 = fsub fast float %8990, %8993
  %8996 = extractvalue %dx.types.CBufRet.f32 %8988, 2
  %8997 = fsub fast float -0.000000e+00, %8994
  %8998 = fsub fast float -0.000000e+00, %8995
  %8999 = call float @dx.op.dot2.f32(i32 54, float %8818, float %8819, float %8997, float %8998)  ; Dot2(ax,ay,bx,by)
  %9000 = fmul fast float %8999, 2.000000e+00
  %9001 = call float @dx.op.dot2.f32(i32 54, float %8997, float %8998, float %8997, float %8998)  ; Dot2(ax,ay,bx,by)
  %9002 = fmul fast float %8996, %8996
  %9003 = fsub fast float %9001, %9002
  %9004 = fmul fast float %9000, %9000
  %9005 = fmul fast float %8861, %9003
  %9006 = fsub fast float %9004, %9005
  %9007 = fcmp fast ogt float %9006, 0.000000e+00
  br i1 %9007, label %9008, label %9023

; <label>:9008                                    ; preds = %8984
  %9009 = fcmp fast ogt float %9000, 0.000000e+00
  %9010 = call float @dx.op.unary.f32(i32 24, float %9006)  ; Sqrt(value)
  %9011 = fsub fast float -0.000000e+00, %9010
  %9012 = select i1 %9009, float %9010, float %9011
  %9013 = fadd fast float %9012, %9000
  %9014 = fmul float %9013, -5.000000e-01
  %9015 = fdiv fast float %9014, %8854
  %9016 = call float @dx.op.binary.f32(i32 35, float %9015, float 0.000000e+00)  ; FMax(a,b)
  %9017 = call float @dx.op.binary.f32(i32 36, float %8889, float %9016)  ; FMin(a,b)
  %9018 = fdiv fast float %9003, %9014
  %9019 = call float @dx.op.binary.f32(i32 35, float %9018, float 0.000000e+00)  ; FMax(a,b)
  %9020 = call float @dx.op.binary.f32(i32 36, float %8889, float %9019)  ; FMin(a,b)
  %9021 = call float @dx.op.binary.f32(i32 36, float %9017, float %9020)  ; FMin(a,b)
  %9022 = call float @dx.op.binary.f32(i32 35, float %9017, float %9020)  ; FMax(a,b)
  br label %9023

; <label>:9023                                    ; preds = %9008, %8984
  %9024 = phi float [ %9022, %9008 ], [ -1.000000e+00, %8984 ]
  %9025 = phi float [ %9021, %9008 ], [ -1.000000e+00, %8984 ]
  %9026 = phi i1 [ true, %9008 ], [ false, %8984 ]
  br i1 %9026, label %9027, label %9033

; <label>:9027                                    ; preds = %9023
  %9028 = call float @dx.op.binary.f32(i32 35, float %8972, float %9025)  ; FMax(a,b)
  %9029 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 %8986
  store float %9028, float* %9029, align 4, !tbaa !113, !noalias !125
  %9030 = call float @dx.op.binary.f32(i32 35, float %8972, float %9024)  ; FMax(a,b)
  %9031 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %8986
  store float %9030, float* %9031, align 4, !tbaa !113, !noalias !125
  %9032 = add nsw i32 %8985, 1
  br label %9033

; <label>:9033                                    ; preds = %9027, %9023
  %9034 = phi i32 [ %9032, %9027 ], [ %8985, %9023 ]
  %9035 = add nuw nsw i32 %8986, 1
  %9036 = icmp eq i32 %9035, %8841
  br i1 %9036, label %9037, label %8984

; <label>:9037                                    ; preds = %9033
  %9038 = load float, float* %8978, align 4, !tbaa !113, !alias.scope !141, !noalias !144
  %9039 = load float, float* %8977, align 4, !tbaa !113, !alias.scope !147, !noalias !148
  %9040 = load float, float* %8976, align 4, !tbaa !113, !alias.scope !149, !noalias !150
  %9041 = load float, float* %8981, align 4, !tbaa !113, !alias.scope !151, !noalias !154
  %9042 = load float, float* %8980, align 4, !tbaa !113, !alias.scope !157, !noalias !158
  %9043 = load float, float* %8979, align 4, !tbaa !113, !alias.scope !159, !noalias !160
  br label %9044

; <label>:9044                                    ; preds = %9037, %8971
  %9045 = phi float [ -1.000000e+00, %8971 ], [ %9043, %9037 ]
  %9046 = phi float [ -1.000000e+00, %8971 ], [ %9042, %9037 ]
  %9047 = phi float [ -1.000000e+00, %8971 ], [ %9041, %9037 ]
  %9048 = phi float [ -1.000000e+00, %8971 ], [ %9040, %9037 ]
  %9049 = phi float [ -1.000000e+00, %8971 ], [ %9039, %9037 ]
  %9050 = phi float [ -1.000000e+00, %8971 ], [ %9038, %9037 ]
  %9051 = phi i32 [ 0, %8971 ], [ %9034, %9037 ]
  %9052 = call float @dx.op.binary.f32(i32 36, float %9049, float %9050)  ; FMin(a,b)
  %9053 = call float @dx.op.binary.f32(i32 36, float %9048, float %9052)  ; FMin(a,b)
  %9054 = call float @dx.op.binary.f32(i32 35, float %9048, float %9049)  ; FMax(a,b)
  %9055 = call float @dx.op.binary.f32(i32 36, float %9054, float %9050)  ; FMin(a,b)
  %9056 = call float @dx.op.binary.f32(i32 36, float %9048, float %9049)  ; FMin(a,b)
  %9057 = call float @dx.op.binary.f32(i32 35, float %9056, float %9055)  ; FMax(a,b)
  %9058 = call float @dx.op.binary.f32(i32 35, float %9049, float %9050)  ; FMax(a,b)
  %9059 = call float @dx.op.binary.f32(i32 35, float %9048, float %9058)  ; FMax(a,b)
  store float %9053, float* %8976, align 4, !tbaa !113, !alias.scope !149, !noalias !150
  store float %9057, float* %8977, align 4, !tbaa !113, !alias.scope !147, !noalias !148
  store float %9059, float* %8978, align 4, !tbaa !113, !alias.scope !141, !noalias !144
  %9060 = call float @dx.op.binary.f32(i32 36, float %9046, float %9047)  ; FMin(a,b)
  %9061 = call float @dx.op.binary.f32(i32 36, float %9045, float %9060)  ; FMin(a,b)
  %9062 = call float @dx.op.binary.f32(i32 35, float %9045, float %9046)  ; FMax(a,b)
  %9063 = call float @dx.op.binary.f32(i32 36, float %9062, float %9047)  ; FMin(a,b)
  %9064 = call float @dx.op.binary.f32(i32 36, float %9045, float %9046)  ; FMin(a,b)
  %9065 = call float @dx.op.binary.f32(i32 35, float %9064, float %9063)  ; FMax(a,b)
  %9066 = call float @dx.op.binary.f32(i32 35, float %9046, float %9047)  ; FMax(a,b)
  %9067 = call float @dx.op.binary.f32(i32 35, float %9045, float %9066)  ; FMax(a,b)
  store float %9061, float* %8979, align 4, !tbaa !113, !alias.scope !159, !noalias !160
  store float %9065, float* %8980, align 4, !tbaa !113, !alias.scope !157, !noalias !158
  store float %9067, float* %8981, align 4, !tbaa !113, !alias.scope !151, !noalias !154
  %9068 = sub nsw i32 3, %9051
  %9069 = icmp sgt i32 %9068, 2
  br i1 %9069, label %9070, label %9108

; <label>:9070                                    ; preds = %9044
  %9071 = icmp eq i32 %8839, 0
  %9072 = fsub fast float %8889, %8973
  %9073 = select i1 %9071, float %9072, float %8973
  %9074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9075 = extractvalue %dx.types.CBufRet.f32 %9074, 0
  %9076 = extractvalue %dx.types.CBufRet.f32 %9074, 1
  %9077 = extractvalue %dx.types.CBufRet.f32 %9074, 2
  %9078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9079 = extractvalue %dx.types.CBufRet.f32 %9078, 0
  %9080 = extractvalue %dx.types.CBufRet.f32 %9078, 1
  %9081 = extractvalue %dx.types.CBufRet.f32 %9078, 2
  %9082 = extractvalue %dx.types.CBufRet.f32 %9078, 3
  %9083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9084 = extractvalue %dx.types.CBufRet.f32 %9083, 3
  %9085 = call float @dx.op.binary.f32(i32 36, float %8974, float %9084)  ; FMin(a,b)
  %9086 = fmul fast float %9082, %9073
  %9087 = call float @dx.op.unary.f32(i32 7, float %9086)  ; Saturate(value)
  %9088 = fsub fast float %9079, %9075
  %9089 = fsub fast float %9080, %9076
  %9090 = fsub fast float %9081, %9077
  %9091 = fmul fast float %9087, %9088
  %9092 = fmul fast float %9087, %9089
  %9093 = fmul fast float %9087, %9090
  %9094 = fadd fast float %9091, %9075
  %9095 = fadd fast float %9092, %9076
  %9096 = fadd fast float %9093, %9077
  %9097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9098 = extractvalue %dx.types.CBufRet.f32 %9097, 0
  %9099 = extractvalue %dx.types.CBufRet.f32 %9097, 1
  %9100 = fadd fast float %9099, %9098
  %9101 = call float @dx.op.unary.f32(i32 7, float %9100)  ; Saturate(value)
  %9102 = extractvalue %dx.types.CBufRet.f32 %9097, 2
  %9103 = extractvalue %dx.types.CBufRet.f32 %9097, 3
  %9104 = fadd fast float %9103, %9102
  %9105 = call float @dx.op.unary.f32(i32 7, float %9104)  ; Saturate(value)
  %9106 = fmul fast float %9101, %9085
  %9107 = fmul fast float %9106, %9105
  br label %9190

; <label>:9108                                    ; preds = %9044
  %9109 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 %9068
  %9110 = load float, float* %9109, align 4, !tbaa !113, !noalias !125
  %9111 = fcmp fast olt float %9110, %8975
  %9112 = icmp sgt i32 %9051, 0
  %9113 = and i1 %9112, %9111
  br i1 %9113, label %9114, label %9151

; <label>:9114                                    ; preds = %9108
  br label %9115

; <label>:9115                                    ; preds = %9144, %9114
  %9116 = phi float [ %9145, %9144 ], [ %8973, %9114 ]
  %9117 = phi float [ %9146, %9144 ], [ %8974, %9114 ]
  %9118 = phi float [ %9126, %9144 ], [ %9110, %9114 ]
  %9119 = phi i32 [ %9123, %9144 ], [ %9068, %9114 ]
  %9120 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %9119
  %9121 = load float, float* %9120, align 4, !tbaa !113, !noalias !125
  %9122 = icmp slt i32 %9119, 2
  %9123 = add nsw i32 %9119, 1
  %9124 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 %9123
  %9125 = load float, float* %9124, align 4, !tbaa !113, !noalias !125
  %9126 = select i1 %9122, float %9125, float %8889
  %9127 = call float @dx.op.binary.f32(i32 36, float %9126, float %9121)  ; FMin(a,b)
  %9128 = call float @dx.op.binary.f32(i32 36, float %8975, float %9127)  ; FMin(a,b)
  %9129 = icmp eq i32 %8839, 0
  %9130 = fadd fast float %9128, %9118
  %9131 = fmul fast float %9130, %8820
  %9132 = fadd fast float %9131, %8833
  br i1 %9129, label %9138, label %9133

; <label>:9133                                    ; preds = %9115
  %9134 = fsub fast float %9128, %9118
  %9135 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9134)  ; FMax(a,b)
  %9136 = fmul fast float %9135, %9132
  %9137 = fadd fast float %9136, %9117
  br label %9144

; <label>:9138                                    ; preds = %9115
  %9139 = fsub fast float %9118, %9128
  %9140 = call float @dx.op.unary.f32(i32 6, float %9139)  ; FAbs(value)
  %9141 = fadd fast float %9140, %9116
  %9142 = fmul fast float %9140, %9132
  %9143 = fsub fast float %9117, %9142
  br label %9144

; <label>:9144                                    ; preds = %9138, %9133
  %9145 = phi float [ %9135, %9133 ], [ %9141, %9138 ]
  %9146 = phi float [ %9137, %9133 ], [ %9143, %9138 ]
  %9147 = fcmp fast olt float %9126, %8975
  %9148 = icmp slt i32 %9123, 3
  %9149 = and i1 %9148, %9147
  br i1 %9149, label %9115, label %9150

; <label>:9150                                    ; preds = %9144
  br label %9151

; <label>:9151                                    ; preds = %9150, %9108
  %9152 = phi float [ %8973, %9108 ], [ %9145, %9150 ]
  %9153 = phi float [ %8974, %9108 ], [ %9146, %9150 ]
  %9154 = fsub fast float %8889, %9152
  %9155 = select i1 %8891, float %9152, float %9154
  %9156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9157 = extractvalue %dx.types.CBufRet.f32 %9156, 0
  %9158 = extractvalue %dx.types.CBufRet.f32 %9156, 1
  %9159 = extractvalue %dx.types.CBufRet.f32 %9156, 2
  %9160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9161 = extractvalue %dx.types.CBufRet.f32 %9160, 0
  %9162 = extractvalue %dx.types.CBufRet.f32 %9160, 1
  %9163 = extractvalue %dx.types.CBufRet.f32 %9160, 2
  %9164 = extractvalue %dx.types.CBufRet.f32 %9160, 3
  %9165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9166 = extractvalue %dx.types.CBufRet.f32 %9165, 3
  %9167 = call float @dx.op.binary.f32(i32 36, float %9153, float %9166)  ; FMin(a,b)
  %9168 = fmul fast float %9164, %9155
  %9169 = call float @dx.op.unary.f32(i32 7, float %9168)  ; Saturate(value)
  %9170 = fsub fast float %9161, %9157
  %9171 = fsub fast float %9162, %9158
  %9172 = fsub fast float %9163, %9159
  %9173 = fmul fast float %9169, %9170
  %9174 = fmul fast float %9169, %9171
  %9175 = fmul fast float %9169, %9172
  %9176 = fadd fast float %9173, %9157
  %9177 = fadd fast float %9174, %9158
  %9178 = fadd fast float %9175, %9159
  %9179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9180 = extractvalue %dx.types.CBufRet.f32 %9179, 0
  %9181 = extractvalue %dx.types.CBufRet.f32 %9179, 1
  %9182 = fadd fast float %9181, %9180
  %9183 = call float @dx.op.unary.f32(i32 7, float %9182)  ; Saturate(value)
  %9184 = extractvalue %dx.types.CBufRet.f32 %9179, 2
  %9185 = extractvalue %dx.types.CBufRet.f32 %9179, 3
  %9186 = fadd fast float %9185, %9184
  %9187 = call float @dx.op.unary.f32(i32 7, float %9186)  ; Saturate(value)
  %9188 = fmul fast float %9183, %9167
  %9189 = fmul fast float %9188, %9187
  br label %9190

; <label>:9190                                    ; preds = %9151, %9070, %8905, %8887, %8885
  %9191 = phi float [ %8914, %8905 ], [ %9073, %9070 ], [ %9155, %9151 ], [ 0.000000e+00, %8885 ], [ 0.000000e+00, %8887 ]
  %9192 = phi float [ %8948, %8905 ], [ %9107, %9070 ], [ %9189, %9151 ], [ 0.000000e+00, %8885 ], [ 0.000000e+00, %8887 ]
  %9193 = phi float [ %8935, %8905 ], [ %9094, %9070 ], [ %9176, %9151 ], [ 0.000000e+00, %8885 ], [ 0.000000e+00, %8887 ]
  %9194 = phi float [ %8936, %8905 ], [ %9095, %9070 ], [ %9177, %9151 ], [ 0.000000e+00, %8885 ], [ 0.000000e+00, %8887 ]
  %9195 = phi float [ %8937, %8905 ], [ %9096, %9070 ], [ %9178, %9151 ], [ 0.000000e+00, %8885 ], [ 0.000000e+00, %8887 ]
  %9196 = fmul fast float %8828, %9192
  %9197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9198 = extractvalue %dx.types.CBufRet.f32 %9197, 2
  %9199 = fsub fast float %8835, %9198
  %9200 = fcmp fast olt float %9196, -2.000000e+01
  %9201 = call float @dx.op.unary.f32(i32 21, float %9196)  ; Exp(value)
  %9202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9203 = extractvalue %dx.types.CBufRet.f32 %9202, 2
  %9204 = extractvalue %dx.types.CBufRet.f32 %9202, 3
  %9205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9206 = extractvalue %dx.types.CBufRet.f32 %9205, 2
  %9207 = fmul fast float %9204, %9199
  %9208 = call float @dx.op.unary.f32(i32 7, float %9207)  ; Saturate(value)
  %9209 = fsub fast float 1.000000e+00, %9208
  %9210 = fmul fast float %8820, 5.000000e-01
  %9211 = fadd fast float %9210, 5.000000e-01
  %9212 = call float @dx.op.unary.f32(i32 7, float %9211)  ; Saturate(value)
  %9213 = fsub fast float 1.000000e+00, %9212
  %9214 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9209)  ; FMax(a,b)
  %9215 = fdiv fast float %9213, %9214
  %9216 = fsub fast float %9199, %8777
  %9217 = call float @dx.op.unary.f32(i32 6, float %9216)  ; FAbs(value)
  %9218 = fmul fast float %9217, %9203
  %9219 = call float @dx.op.unary.f32(i32 7, float %9215)  ; Saturate(value)
  %9220 = fsub fast float 1.000000e+00, %9218
  %9221 = fmul fast float %9220, %9219
  %9222 = fadd fast float %9221, %9218
  %9223 = fmul fast float %9206, %9199
  %9224 = call float @dx.op.unary.f32(i32 7, float %9223)  ; Saturate(value)
  %9225 = fsub fast float 1.000000e+00, %9222
  %9226 = fmul fast float %9225, %9224
  %9227 = fadd fast float %9226, %9222
  %9228 = call float @dx.op.unary.f32(i32 7, float %9227)  ; Saturate(value)
  %9229 = fadd fast float %9201, -1.000000e+00
  %9230 = select i1 %9200, float -1.000000e+00, float %9229
  %9231 = fmul fast float %9228, %9230
  %9232 = fadd fast float %9231, 1.000000e+00
  %9233 = fsub fast float -0.000000e+00, %9231
  %9234 = fmul fast float %9193, %9233
  %9235 = fmul fast float %9194, %9233
  %9236 = fmul fast float %9195, %9233
  br label %9237

; <label>:9237                                    ; preds = %9190, %8786
  %9238 = phi float [ %9191, %9190 ], [ 0.000000e+00, %8786 ]
  %9239 = phi float [ %9232, %9190 ], [ 1.000000e+00, %8786 ]
  %9240 = phi float [ %9234, %9190 ], [ 0.000000e+00, %8786 ]
  %9241 = phi float [ %9235, %9190 ], [ 0.000000e+00, %8786 ]
  %9242 = phi float [ %9236, %9190 ], [ 0.000000e+00, %8786 ]
  %9243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9244 = extractvalue %dx.types.CBufRet.f32 %9243, 1
  %9245 = fsub fast float 1.000000e+00, %9239
  %9246 = fmul fast float %9245, %8821
  %9247 = fmul fast float %9246, %9244
  %9248 = fsub fast float %8821, %9247
  br i1 %8814, label %9249, label %9278, !dx.controlflow.hints !161

; <label>:9249                                    ; preds = %9237
  %9250 = fmul fast float %8822, %8811
  %9251 = fadd fast float %9250, %8812
  %9252 = call float @dx.op.unary.f32(i32 7, float %9251)  ; Saturate(value)
  %9253 = fmul fast float %8793, %9248
  %9254 = fsub fast float -0.000000e+00, %9253
  %9255 = fmul fast float %8794, %9248
  %9256 = fsub fast float -0.000000e+00, %9255
  %9257 = call float @dx.op.unary.f32(i32 21, float %9254)  ; Exp(value)
  %9258 = call float @dx.op.unary.f32(i32 21, float %9256)  ; Exp(value)
  %9259 = call float @dx.op.binary.f32(i32 35, float %8801, float %9257)  ; FMax(a,b)
  %9260 = call float @dx.op.binary.f32(i32 35, float %8801, float %9258)  ; FMax(a,b)
  %9261 = fsub fast float %9260, %9259
  %9262 = fmul fast float %9261, %9252
  %9263 = fadd fast float %9262, %9259
  %9264 = call float @dx.op.unary.f32(i32 7, float %9263)  ; Saturate(value)
  %9265 = fsub fast float %8798, %8803
  %9266 = fsub fast float %8799, %8804
  %9267 = fsub fast float %8800, %8805
  %9268 = fmul fast float %9252, %9265
  %9269 = fmul fast float %9252, %9266
  %9270 = fmul fast float %9252, %9267
  %9271 = fadd fast float %9268, %8803
  %9272 = fadd fast float %9269, %8804
  %9273 = fadd fast float %9270, %8805
  %9274 = fsub fast float 1.000000e+00, %9264
  %9275 = fmul fast float %9274, %9271
  %9276 = fmul fast float %9274, %9272
  %9277 = fmul fast float %9274, %9273
  br label %9337

; <label>:9278                                    ; preds = %9237
  %9279 = fmul fast float %9248, %8810
  %9280 = call float @dx.op.unary.f32(i32 7, float %9279)  ; Saturate(value)
  %9281 = fsub fast float 2.000000e+00, %9280
  %9282 = fmul fast float %9280, 9.921875e-01
  %9283 = fmul fast float %9282, %9281
  %9284 = fadd fast float %9283, 3.906250e-03
  %9285 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %43, float %9284, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9286 = extractvalue %dx.types.ResRet.f32 %9285, 0
  %9287 = fsub fast float %9280, %9286
  %9288 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9287)  ; FMax(a,b)
  %9289 = fmul fast float %8796, %8777
  %9290 = call float @dx.op.unary.f32(i32 6, float %9289)  ; FAbs(value)
  %9291 = fcmp fast ogt float %9290, 0x3EB0C6F7A0000000
  br i1 %9291, label %9292, label %9298, !dx.controlflow.hints !162

; <label>:9292                                    ; preds = %9278
  %9293 = fmul fast float %9289, 0xBFF7154760000000
  %9294 = call float @dx.op.unary.f32(i32 21, float %9293)  ; Exp(value)
  %9295 = fsub fast float 1.000000e+00, %9294
  %9296 = fdiv fast float %9295, %9289
  %9297 = fmul fast float %9296, %8806
  br label %9298

; <label>:9298                                    ; preds = %9292, %9278
  %9299 = phi float [ %9297, %9292 ], [ %8806, %9278 ]
  %9300 = fadd fast float %9299, %8808
  %9301 = fmul fast float %9300, %9288
  %9302 = fmul fast float %8793, %9301
  %9303 = fsub fast float -0.000000e+00, %9302
  %9304 = fmul fast float %8794, %9301
  %9305 = fsub fast float -0.000000e+00, %9304
  %9306 = fmul fast float %8795, %9301
  %9307 = fsub fast float -0.000000e+00, %9306
  %9308 = call float @dx.op.unary.f32(i32 21, float %9303)  ; Exp(value)
  %9309 = call float @dx.op.unary.f32(i32 21, float %9305)  ; Exp(value)
  %9310 = call float @dx.op.unary.f32(i32 21, float %9307)  ; Exp(value)
  %9311 = fmul fast float %8822, %8822
  %9312 = fadd fast float %9311, 1.000000e+00
  %9313 = fmul fast float %9312, 0x3FAE8EC8A0000000
  %9314 = fmul fast float %9313, %8803
  %9315 = fmul fast float %9313, %8804
  %9316 = fmul fast float %9313, %8805
  %9317 = fmul fast float %8822, %8801
  %9318 = fsub fast float 1.000000e+00, %9317
  %9319 = fmul fast float %8801, %8801
  %9320 = fsub fast float 1.000000e+00, %9319
  %9321 = fmul fast float %9320, 0x3FB45F3060000000
  %9322 = fmul fast float %9318, %9318
  %9323 = fdiv fast float 1.000000e+00, %9322
  %9324 = fmul fast float %9321, %9323
  %9325 = fmul fast float %9324, %8798
  %9326 = fmul fast float %9324, %8799
  %9327 = fmul fast float %9324, %8800
  %9328 = fadd fast float %9325, %9314
  %9329 = fadd fast float %9326, %9315
  %9330 = fadd fast float %9327, %9316
  %9331 = fsub fast float 1.000000e+00, %9308
  %9332 = fsub fast float 1.000000e+00, %9309
  %9333 = fsub fast float 1.000000e+00, %9310
  %9334 = fmul fast float %9328, %9331
  %9335 = fmul fast float %9329, %9332
  %9336 = fmul fast float %9330, %9333
  br label %9337

; <label>:9337                                    ; preds = %9298, %9249
  %9338 = phi float [ %9275, %9249 ], [ %9334, %9298 ]
  %9339 = phi float [ %9276, %9249 ], [ %9335, %9298 ]
  %9340 = phi float [ %9277, %9249 ], [ %9336, %9298 ]
  %9341 = phi float [ %9264, %9249 ], [ %9308, %9298 ]
  %9342 = phi float [ %9264, %9249 ], [ %9309, %9298 ]
  %9343 = phi float [ %9264, %9249 ], [ %9310, %9298 ]
  br i1 %8830, label %9344, label %9542, !dx.controlflow.hints !163

; <label>:9344                                    ; preds = %9337
  %9345 = extractvalue %dx.types.CBufRet.f32 %9243, 0
  %9346 = fmul fast float %9345, %9245
  %9347 = fsub fast float %9240, %9338
  %9348 = fsub fast float %9241, %9339
  %9349 = fsub fast float %9242, %9340
  %9350 = fmul fast float %9346, %9347
  %9351 = fmul fast float %9346, %9348
  %9352 = fmul fast float %9346, %9349
  %9353 = fadd fast float %9350, %9338
  %9354 = fadd fast float %9351, %9339
  %9355 = fadd fast float %9352, %9340
  %9356 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9341)  ; FMax(a,b)
  %9357 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9342)  ; FMax(a,b)
  %9358 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9343)  ; FMax(a,b)
  %9359 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9239)  ; FMax(a,b)
  %9360 = call float @dx.op.binary.f32(i32 35, float %9238, float %9248)  ; FMax(a,b)
  %9361 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9360)  ; FMax(a,b)
  %9362 = fdiv fast float %9238, %9361
  %9363 = call float @dx.op.unary.f32(i32 7, float %9362)  ; Saturate(value)
  %9364 = fdiv fast float %9248, %9361
  %9365 = call float @dx.op.unary.f32(i32 7, float %9364)  ; Saturate(value)
  %9366 = fcmp fast une float %9359, 1.000000e+00
  br i1 %9366, label %9367, label %9380, !dx.controlflow.hints !164

; <label>:9367                                    ; preds = %9344
  %9368 = call float @dx.op.unary.f32(i32 23, float %9359)  ; Log(value)
  %9369 = fmul fast float %9368, 0x3FE62E4300000000
  %9370 = fmul fast float %9240, %9369
  %9371 = fsub fast float -0.000000e+00, %9370
  %9372 = fmul fast float %9241, %9369
  %9373 = fsub fast float -0.000000e+00, %9372
  %9374 = fmul fast float %9242, %9369
  %9375 = fsub fast float -0.000000e+00, %9374
  %9376 = fsub fast float 1.000000e+00, %9359
  %9377 = fdiv fast float %9371, %9376
  %9378 = fdiv fast float %9373, %9376
  %9379 = fdiv fast float %9375, %9376
  br label %9380

; <label>:9380                                    ; preds = %9367, %9344
  %9381 = phi float [ %9377, %9367 ], [ %9240, %9344 ]
  %9382 = phi float [ %9378, %9367 ], [ %9241, %9344 ]
  %9383 = phi float [ %9379, %9367 ], [ %9242, %9344 ]
  %9384 = phi float [ %9369, %9367 ], [ 0.000000e+00, %9344 ]
  %9385 = fcmp fast une float %9356, 1.000000e+00
  br i1 %9385, label %9386, label %9393, !dx.controlflow.hints !165

; <label>:9386                                    ; preds = %9380
  %9387 = call float @dx.op.unary.f32(i32 23, float %9356)  ; Log(value)
  %9388 = fmul fast float %9387, 0x3FE62E4300000000
  %9389 = fmul fast float %9353, %9388
  %9390 = fsub fast float -0.000000e+00, %9389
  %9391 = fsub fast float 1.000000e+00, %9356
  %9392 = fdiv fast float %9390, %9391
  br label %9393

; <label>:9393                                    ; preds = %9386, %9380
  %9394 = phi float [ %9392, %9386 ], [ %9353, %9380 ]
  %9395 = phi float [ %9388, %9386 ], [ 0.000000e+00, %9380 ]
  %9396 = fcmp fast une float %9357, 1.000000e+00
  br i1 %9396, label %9397, label %9404, !dx.controlflow.hints !165

; <label>:9397                                    ; preds = %9393
  %9398 = call float @dx.op.unary.f32(i32 23, float %9357)  ; Log(value)
  %9399 = fmul fast float %9398, 0x3FE62E4300000000
  %9400 = fmul fast float %9354, %9399
  %9401 = fsub fast float -0.000000e+00, %9400
  %9402 = fsub fast float 1.000000e+00, %9357
  %9403 = fdiv fast float %9401, %9402
  br label %9404

; <label>:9404                                    ; preds = %9397, %9393
  %9405 = phi float [ %9403, %9397 ], [ %9354, %9393 ]
  %9406 = phi float [ %9399, %9397 ], [ 0.000000e+00, %9393 ]
  %9407 = fcmp fast une float %9358, 1.000000e+00
  br i1 %9407, label %9408, label %9415, !dx.controlflow.hints !165

; <label>:9408                                    ; preds = %9404
  %9409 = call float @dx.op.unary.f32(i32 23, float %9358)  ; Log(value)
  %9410 = fmul fast float %9409, 0x3FE62E4300000000
  %9411 = fmul fast float %9355, %9410
  %9412 = fsub fast float -0.000000e+00, %9411
  %9413 = fsub fast float 1.000000e+00, %9358
  %9414 = fdiv fast float %9412, %9413
  br label %9415

; <label>:9415                                    ; preds = %9408, %9404
  %9416 = phi float [ %9414, %9408 ], [ %9355, %9404 ]
  %9417 = phi float [ %9410, %9408 ], [ 0.000000e+00, %9404 ]
  %9418 = fmul fast float %9381, %9365
  %9419 = fmul fast float %9382, %9365
  %9420 = fmul fast float %9383, %9365
  %9421 = fmul fast float %9384, %9365
  %9422 = fmul fast float %9394, %9363
  %9423 = fmul fast float %9405, %9363
  %9424 = fmul fast float %9416, %9363
  %9425 = fmul fast float %9395, %9363
  %9426 = fmul fast float %9406, %9363
  %9427 = fmul fast float %9417, %9363
  %9428 = fadd fast float %9422, %9418
  %9429 = fadd fast float %9423, %9419
  %9430 = fadd fast float %9424, %9420
  %9431 = fadd fast float %9425, %9421
  %9432 = fadd fast float %9426, %9421
  %9433 = fadd fast float %9427, %9421
  %9434 = fcmp fast une float %9431, 0.000000e+00
  br i1 %9434, label %9435, label %9442, !dx.controlflow.hints !166

; <label>:9435                                    ; preds = %9415
  %9436 = fmul fast float %9431, 0x3FF7154760000000
  %9437 = call float @dx.op.unary.f32(i32 21, float %9436)  ; Exp(value)
  %9438 = fsub fast float 1.000000e+00, %9437
  %9439 = fmul fast float %9428, %9438
  %9440 = fsub fast float -0.000000e+00, %9439
  %9441 = fdiv fast float %9440, %9431
  br label %9442

; <label>:9442                                    ; preds = %9435, %9415
  %9443 = phi float [ %9437, %9435 ], [ 1.000000e+00, %9415 ]
  %9444 = phi float [ %9441, %9435 ], [ %9428, %9415 ]
  %9445 = fcmp fast une float %9432, 0.000000e+00
  br i1 %9445, label %9446, label %9453, !dx.controlflow.hints !166

; <label>:9446                                    ; preds = %9442
  %9447 = fmul fast float %9432, 0x3FF7154760000000
  %9448 = call float @dx.op.unary.f32(i32 21, float %9447)  ; Exp(value)
  %9449 = fsub fast float 1.000000e+00, %9448
  %9450 = fmul fast float %9429, %9449
  %9451 = fsub fast float -0.000000e+00, %9450
  %9452 = fdiv fast float %9451, %9432
  br label %9453

; <label>:9453                                    ; preds = %9446, %9442
  %9454 = phi float [ %9448, %9446 ], [ 1.000000e+00, %9442 ]
  %9455 = phi float [ %9452, %9446 ], [ %9429, %9442 ]
  %9456 = fcmp fast une float %9433, 0.000000e+00
  br i1 %9456, label %9457, label %9464, !dx.controlflow.hints !166

; <label>:9457                                    ; preds = %9453
  %9458 = fmul fast float %9433, 0x3FF7154760000000
  %9459 = call float @dx.op.unary.f32(i32 21, float %9458)  ; Exp(value)
  %9460 = fsub fast float 1.000000e+00, %9459
  %9461 = fmul fast float %9430, %9460
  %9462 = fsub fast float -0.000000e+00, %9461
  %9463 = fdiv fast float %9462, %9433
  br label %9464

; <label>:9464                                    ; preds = %9457, %9453
  %9465 = phi float [ %9459, %9457 ], [ 1.000000e+00, %9453 ]
  %9466 = phi float [ %9463, %9457 ], [ %9430, %9453 ]
  %9467 = fcmp fast ogt float %9363, %9365
  br i1 %9467, label %9468, label %9488

; <label>:9468                                    ; preds = %9464
  %9469 = fsub fast float 1.000000e+00, %9365
  %9470 = fmul fast float %9381, %9469
  %9471 = fmul fast float %9382, %9469
  %9472 = fmul fast float %9383, %9469
  %9473 = fmul fast float %9384, %9469
  %9474 = fcmp fast une float %9473, 0.000000e+00
  br i1 %9474, label %9475, label %9526, !dx.controlflow.hints !167

; <label>:9475                                    ; preds = %9468
  %9476 = fmul fast float %9473, 0x3FF7154760000000
  %9477 = call float @dx.op.unary.f32(i32 21, float %9476)  ; Exp(value)
  %9478 = fsub fast float 1.000000e+00, %9477
  %9479 = fmul fast float %9470, %9478
  %9480 = fsub fast float -0.000000e+00, %9479
  %9481 = fmul fast float %9471, %9478
  %9482 = fsub fast float -0.000000e+00, %9481
  %9483 = fmul fast float %9472, %9478
  %9484 = fsub fast float -0.000000e+00, %9483
  %9485 = fdiv fast float %9480, %9473
  %9486 = fdiv fast float %9482, %9473
  %9487 = fdiv fast float %9484, %9473
  br label %9526

; <label>:9488                                    ; preds = %9464
  %9489 = fsub fast float 1.000000e+00, %9363
  %9490 = fmul fast float %9394, %9489
  %9491 = fmul fast float %9405, %9489
  %9492 = fmul fast float %9416, %9489
  %9493 = fmul fast float %9395, %9489
  %9494 = fmul fast float %9406, %9489
  %9495 = fmul fast float %9417, %9489
  %9496 = fcmp fast une float %9493, 0.000000e+00
  br i1 %9496, label %9497, label %9504, !dx.controlflow.hints !166

; <label>:9497                                    ; preds = %9488
  %9498 = fmul fast float %9493, 0x3FF7154760000000
  %9499 = call float @dx.op.unary.f32(i32 21, float %9498)  ; Exp(value)
  %9500 = fsub fast float 1.000000e+00, %9499
  %9501 = fmul fast float %9490, %9500
  %9502 = fsub fast float -0.000000e+00, %9501
  %9503 = fdiv fast float %9502, %9493
  br label %9504

; <label>:9504                                    ; preds = %9497, %9488
  %9505 = phi float [ %9503, %9497 ], [ %9490, %9488 ]
  %9506 = phi float [ %9499, %9497 ], [ 1.000000e+00, %9488 ]
  %9507 = fcmp fast une float %9494, 0.000000e+00
  br i1 %9507, label %9508, label %9515, !dx.controlflow.hints !166

; <label>:9508                                    ; preds = %9504
  %9509 = fmul fast float %9494, 0x3FF7154760000000
  %9510 = call float @dx.op.unary.f32(i32 21, float %9509)  ; Exp(value)
  %9511 = fsub fast float 1.000000e+00, %9510
  %9512 = fmul fast float %9491, %9511
  %9513 = fsub fast float -0.000000e+00, %9512
  %9514 = fdiv fast float %9513, %9494
  br label %9515

; <label>:9515                                    ; preds = %9508, %9504
  %9516 = phi float [ %9514, %9508 ], [ %9491, %9504 ]
  %9517 = phi float [ %9510, %9508 ], [ 1.000000e+00, %9504 ]
  %9518 = fcmp fast une float %9495, 0.000000e+00
  br i1 %9518, label %9519, label %9526, !dx.controlflow.hints !166

; <label>:9519                                    ; preds = %9515
  %9520 = fmul fast float %9495, 0x3FF7154760000000
  %9521 = call float @dx.op.unary.f32(i32 21, float %9520)  ; Exp(value)
  %9522 = fsub fast float 1.000000e+00, %9521
  %9523 = fmul fast float %9492, %9522
  %9524 = fsub fast float -0.000000e+00, %9523
  %9525 = fdiv fast float %9524, %9495
  br label %9526

; <label>:9526                                    ; preds = %9519, %9515, %9475, %9468
  %9527 = phi float [ %9525, %9519 ], [ %9487, %9475 ], [ %9472, %9468 ], [ %9492, %9515 ]
  %9528 = phi float [ %9516, %9519 ], [ %9486, %9475 ], [ %9471, %9468 ], [ %9516, %9515 ]
  %9529 = phi float [ %9505, %9519 ], [ %9485, %9475 ], [ %9470, %9468 ], [ %9505, %9515 ]
  %9530 = phi float [ %9521, %9519 ], [ %9477, %9475 ], [ 1.000000e+00, %9468 ], [ 1.000000e+00, %9515 ]
  %9531 = phi float [ %9517, %9519 ], [ %9477, %9475 ], [ 1.000000e+00, %9468 ], [ %9517, %9515 ]
  %9532 = phi float [ %9506, %9519 ], [ %9477, %9475 ], [ 1.000000e+00, %9468 ], [ %9506, %9515 ]
  %9533 = fmul fast float %9532, %9444
  %9534 = fmul fast float %9531, %9455
  %9535 = fmul fast float %9530, %9466
  %9536 = fadd fast float %9533, %9529
  %9537 = fadd fast float %9534, %9528
  %9538 = fadd fast float %9535, %9527
  %9539 = fmul fast float %9532, %9443
  %9540 = fmul fast float %9531, %9454
  %9541 = fmul fast float %9530, %9465
  br label %9542

; <label>:9542                                    ; preds = %9526, %9337
  %9543 = phi float [ %9541, %9526 ], [ %9343, %9337 ]
  %9544 = phi float [ %9540, %9526 ], [ %9342, %9337 ]
  %9545 = phi float [ %9539, %9526 ], [ %9341, %9337 ]
  %9546 = phi float [ %9538, %9526 ], [ %9340, %9337 ]
  %9547 = phi float [ %9537, %9526 ], [ %9339, %9337 ]
  %9548 = phi float [ %9536, %9526 ], [ %9338, %9337 ]
  %9549 = fmul fast float %9548, %8490
  %9550 = fmul fast float %9547, %8492
  %9551 = fmul fast float %9546, %8494
  %9552 = fmul fast float %9545, %8785
  %9553 = call float @dx.op.dot3.f32(i32 55, float %9545, float %9544, float %9543, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9554 = call float @dx.op.dot3.f32(i32 55, float %9549, float %9550, float %9551, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9555 = select i1 %248, float %9553, float %9545
  %9556 = select i1 %248, float %9553, float %9544
  %9557 = select i1 %248, float 1.000000e+00, float %9543
  %9558 = select i1 %248, float %9554, float %9549
  %9559 = select i1 %248, float 0.000000e+00, float %9550
  %9560 = select i1 %248, float 0.000000e+00, float %9551
  %9561 = fmul fast float %9555, %8779
  %9562 = fmul fast float %9556, %8780
  %9563 = fmul fast float %9557, %8781
  %9564 = fadd fast float %9561, %9558
  %9565 = fadd fast float %9562, %9559
  %9566 = fadd fast float %9560, %9563
  %9567 = fmul fast float %9555, %8782
  %9568 = fmul fast float %9556, %8783
  %9569 = fmul fast float %9557, %8784
  %9570 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9571 = extractvalue %dx.types.CBufRet.i32 %9570, 0
  %9572 = icmp eq i32 %9571, 0
  br i1 %9572, label %9940, label %9573, !dx.controlflow.hints !168

; <label>:9573                                    ; preds = %9542
  %9574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9575 = extractvalue %dx.types.CBufRet.f32 %9574, 2
  %9576 = extractvalue %dx.types.CBufRet.f32 %9574, 3
  %9577 = fmul fast float %9575, %108
  %9578 = fmul fast float %9576, %109
  %9579 = fmul fast float %9577, 2.000000e+00
  %9580 = fmul fast float %9578, 2.000000e+00
  %9581 = fsub fast float 1.000000e+00, %9579
  %9582 = fsub fast float 1.000000e+00, %9580
  %9583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9584 = extractvalue %dx.types.CBufRet.f32 %9583, 0
  %9585 = extractvalue %dx.types.CBufRet.f32 %9583, 1
  %9586 = extractvalue %dx.types.CBufRet.f32 %9583, 2
  %9587 = fmul fast float %9581, %9584
  %9588 = fmul fast float %9581, %9585
  %9589 = fmul fast float %9581, %9586
  %9590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9591 = extractvalue %dx.types.CBufRet.f32 %9590, 0
  %9592 = extractvalue %dx.types.CBufRet.f32 %9590, 1
  %9593 = extractvalue %dx.types.CBufRet.f32 %9590, 2
  %9594 = fmul fast float %9582, %9591
  %9595 = fmul fast float %9582, %9592
  %9596 = fmul fast float %9582, %9593
  %9597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9598 = extractvalue %dx.types.CBufRet.f32 %9597, 0
  %9599 = extractvalue %dx.types.CBufRet.f32 %9597, 1
  %9600 = extractvalue %dx.types.CBufRet.f32 %9597, 2
  %9601 = fadd fast float %9594, %9598
  %9602 = fadd fast float %9601, %9587
  %9603 = fadd fast float %9595, %9599
  %9604 = fadd fast float %9603, %9588
  %9605 = fadd fast float %9596, %9600
  %9606 = fadd fast float %9605, %9589
  %9607 = fmul fast float %9602, %8778
  %9608 = fmul fast float %9604, %8778
  %9609 = fmul fast float %9606, %8778
  %9610 = fmul fast float %9607, %9607
  %9611 = fmul fast float %9608, %9608
  %9612 = fadd fast float %9610, %9611
  %9613 = fmul fast float %9609, %9609
  %9614 = fadd fast float %9612, %9613
  %9615 = call float @dx.op.unary.f32(i32 24, float %9614)  ; Sqrt(value)
  %9616 = extractvalue %dx.types.CBufRet.f32 %8505, 0
  %9617 = fsub fast float %9615, %9616
  %9618 = extractvalue %dx.types.CBufRet.f32 %8505, 2
  %9619 = fmul fast float %9617, %9618
  %9620 = call float @dx.op.unary.f32(i32 7, float %9619)  ; Saturate(value)
  %9621 = fadd fast float %9620, -5.000000e-01
  %9622 = fmul fast float %9621, 2.000000e+00
  %9623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9624 = extractvalue %dx.types.CBufRet.f32 %9623, 2
  %9625 = call float @dx.op.binary.f32(i32 36, float %9624, float %9622)  ; FMin(a,b)
  %9626 = fsub fast float -0.000000e+00, %9624
  %9627 = fcmp fast ogt float %9625, %9626
  br i1 %9627, label %9628, label %9940, !dx.controlflow.hints !169

; <label>:9628                                    ; preds = %9573
  %9629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9630 = extractvalue %dx.types.CBufRet.f32 %9629, 3
  %9631 = fcmp fast ogt float %9630, 0.000000e+00
  br i1 %9631, label %9632, label %9707, !dx.controlflow.hints !170

; <label>:9632                                    ; preds = %9628
  %9633 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %9634 = extractvalue %dx.types.Dimensions %9633, 0
  %9635 = sitofp i32 %9634 to float
  %9636 = extractvalue %dx.types.Dimensions %9633, 1
  %9637 = sitofp i32 %9636 to float
  %9638 = fmul fast float %9577, %9635
  %9639 = fmul fast float %9578, %9637
  %9640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %9641 = extractvalue %dx.types.CBufRet.f32 %9640, 1
  %9642 = fsub fast float -0.000000e+00, %9641
  %9643 = fptoui float %9642 to i32
  %9644 = fptoui float %9638 to i32
  %9645 = fptoui float %9639 to i32
  %9646 = and i32 %9643, 31
  %9647 = lshr i32 %9644, %9646
  %9648 = lshr i32 %9645, %9646
  %9649 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 %9643, i32 %9647, i32 %9648, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9650 = extractvalue %dx.types.ResRet.f32 %9649, 0
  %9651 = fcmp fast olt float %9650, -1.000000e+00
  %9652 = fcmp fast ogt float %9650, -1.000000e+00
  %9653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9654 = extractvalue %dx.types.CBufRet.f32 %9653, 1
  %9655 = select i1 %9652, float %9654, float 1.000000e+00
  %9656 = fadd fast float %9650, 1.000000e+00
  %9657 = fmul fast float %9655, %9656
  %9658 = call float @dx.op.unary.f32(i32 6, float %9657)  ; FAbs(value)
  %9659 = extractvalue %dx.types.CBufRet.f32 %9653, 3
  %9660 = fcmp fast oge float %9658, %9659
  %9661 = select i1 %9660, float 0x4197782600000000, float %9658
  %9662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9663 = extractvalue %dx.types.CBufRet.f32 %9662, 0
  %9664 = extractvalue %dx.types.CBufRet.f32 %9662, 1
  %9665 = extractvalue %dx.types.CBufRet.f32 %9662, 2
  %9666 = select i1 %9651, float %9663, float %9584
  %9667 = select i1 %9651, float %9664, float %9585
  %9668 = select i1 %9651, float %9665, float %9586
  %9669 = fmul fast float %9666, %9581
  %9670 = fmul fast float %9667, %9581
  %9671 = fmul fast float %9668, %9581
  %9672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9673 = extractvalue %dx.types.CBufRet.f32 %9672, 0
  %9674 = extractvalue %dx.types.CBufRet.f32 %9672, 1
  %9675 = extractvalue %dx.types.CBufRet.f32 %9672, 2
  %9676 = select i1 %9651, float %9673, float %9591
  %9677 = select i1 %9651, float %9674, float %9592
  %9678 = select i1 %9651, float %9675, float %9593
  %9679 = fmul fast float %9676, %9582
  %9680 = fmul fast float %9677, %9582
  %9681 = fmul fast float %9678, %9582
  %9682 = fadd fast float %9679, %9669
  %9683 = fadd fast float %9680, %9670
  %9684 = fadd fast float %9681, %9671
  %9685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9686 = extractvalue %dx.types.CBufRet.f32 %9685, 0
  %9687 = extractvalue %dx.types.CBufRet.f32 %9685, 1
  %9688 = extractvalue %dx.types.CBufRet.f32 %9685, 2
  %9689 = select i1 %9651, float %9686, float %9598
  %9690 = select i1 %9651, float %9687, float %9599
  %9691 = select i1 %9651, float %9688, float %9600
  %9692 = fadd fast float %9682, %9689
  %9693 = fadd fast float %9683, %9690
  %9694 = fadd fast float %9684, %9691
  %9695 = fmul fast float %9692, %9661
  %9696 = fmul fast float %9693, %9661
  %9697 = fmul fast float %9694, %9661
  %9698 = fmul fast float %9695, %9695
  %9699 = fmul fast float %9696, %9696
  %9700 = fadd fast float %9698, %9699
  %9701 = fmul fast float %9697, %9697
  %9702 = fadd fast float %9700, %9701
  %9703 = call float @dx.op.unary.f32(i32 24, float %9702)  ; Sqrt(value)
  %9704 = fsub fast float %9703, %9616
  %9705 = fmul fast float %9704, %9618
  %9706 = call float @dx.op.unary.f32(i32 7, float %9705)  ; Saturate(value)
  br label %9707

; <label>:9707                                    ; preds = %9632, %9628
  %9708 = phi float [ %9706, %9632 ], [ 1.000000e+00, %9628 ]
  %9709 = fmul fast float %9625, 5.000000e-01
  %9710 = fadd fast float %9709, 5.000000e-01
  %9711 = call float @dx.op.unary.f32(i32 22, float %9710)  ; Frc(value)
  %9712 = call float @dx.op.unary.f32(i32 27, float %9711)  ; Round_ni(value)
  %9713 = call float @dx.op.unary.f32(i32 22, float %9711)  ; Frc(value)
  %9714 = fmul fast float %9713, 2.000000e+00
  %9715 = fadd fast float %9714, -1.000000e+00
  %9716 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %43, float %9577, float %9578, float %9712, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9717 = extractvalue %dx.types.ResRet.f32 %9716, 0
  %9718 = extractvalue %dx.types.ResRet.f32 %9716, 1
  %9719 = extractvalue %dx.types.ResRet.f32 %9716, 2
  %9720 = extractvalue %dx.types.ResRet.f32 %9716, 3
  %9721 = fadd fast float %9717, -5.000000e-01
  %9722 = fadd fast float %9719, -5.000000e-01
  %9723 = fmul fast float %9721, 0xBFD5555560000000
  %9724 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9722, float %9723)  ; FMad(a,b,c)
  %9725 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9718, float 0.000000e+00)  ; FMad(a,b,c)
  %9726 = fadd fast float %9725, %9720
  %9727 = fmul fast float %9721, -7.500000e-01
  %9728 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9722, float %9727)  ; FMad(a,b,c)
  %9729 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9718, float 0.000000e+00)  ; FMad(a,b,c)
  %9730 = fadd fast float %9729, %9720
  %9731 = call float @dx.op.binary.f32(i32 35, float %9724, float -1.000000e+00)  ; FMax(a,b)
  %9732 = call float @dx.op.binary.f32(i32 35, float %9726, float -1.000000e+00)  ; FMax(a,b)
  %9733 = call float @dx.op.binary.f32(i32 35, float %9728, float -1.000000e+00)  ; FMax(a,b)
  %9734 = call float @dx.op.binary.f32(i32 35, float %9730, float -1.000000e+00)  ; FMax(a,b)
  %9735 = call float @dx.op.binary.f32(i32 36, float %9731, float 1.000000e+00)  ; FMin(a,b)
  %9736 = call float @dx.op.binary.f32(i32 36, float %9732, float 1.000000e+00)  ; FMin(a,b)
  %9737 = call float @dx.op.binary.f32(i32 36, float %9733, float 1.000000e+00)  ; FMin(a,b)
  %9738 = call float @dx.op.binary.f32(i32 36, float %9734, float 1.000000e+00)  ; FMin(a,b)
  %9739 = fcmp fast olt float %9735, 0x3FEFFF8020000000
  br i1 %9739, label %9740, label %9855, !dx.controlflow.hints !171

; <label>:9740                                    ; preds = %9707
  %9741 = extractvalue %dx.types.CBufRet.f32 %9623, 3
  %9742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9743 = extractvalue %dx.types.CBufRet.f32 %9742, 0
  %9744 = extractvalue %dx.types.CBufRet.f32 %9742, 1
  %9745 = extractvalue %dx.types.CBufRet.f32 %9742, 2
  %9746 = extractvalue %dx.types.CBufRet.f32 %9742, 3
  %9747 = fsub fast float %9743, %9735
  %9748 = fsub fast float %9744, %9736
  %9749 = fsub fast float %9745, %9737
  %9750 = fsub fast float %9746, %9738
  %9751 = fmul fast float %9747, %9741
  %9752 = fmul fast float %9748, %9741
  %9753 = fmul fast float %9749, %9741
  %9754 = fmul fast float %9750, %9741
  %9755 = fadd fast float %9751, %9735
  %9756 = fadd fast float %9752, %9736
  %9757 = fsub fast float -0.000000e+00, %9756
  %9758 = fadd fast float %9753, %9737
  %9759 = fadd fast float %9754, %9738
  %9760 = fmul fast float %9755, %9755
  %9761 = fsub fast float %9756, %9760
  %9762 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9761)  ; FMax(a,b)
  %9763 = fdiv fast float 1.000000e+00, %9762
  %9764 = fmul fast float %9756, %9755
  %9765 = fsub fast float %9758, %9764
  %9766 = fsub fast float %9715, %9755
  %9767 = fmul fast float %9715, %9715
  %9768 = fsub fast float %9767, %9756
  %9769 = fmul fast float %9766, %9763
  %9770 = fmul fast float %9769, %9765
  %9771 = fsub fast float %9768, %9770
  %9772 = fmul fast float %9756, %9756
  %9773 = fsub fast float %9759, %9772
  %9774 = fmul fast float %9765, %9765
  %9775 = fmul fast float %9774, %9763
  %9776 = fsub fast float %9773, %9775
  %9777 = fdiv fast float %9771, %9776
  %9778 = fmul fast float %9765, %9777
  %9779 = fsub fast float %9766, %9778
  %9780 = fmul fast float %9779, %9763
  %9781 = fmul fast float %9780, %9755
  %9782 = fsub fast float 1.000000e+00, %9781
  %9783 = fmul fast float %9756, %9777
  %9784 = fsub fast float %9782, %9783
  %9785 = fmul fast float %9780, %9780
  %9786 = fmul fast float %9777, 4.000000e+00
  %9787 = fmul fast float %9786, %9784
  %9788 = fsub fast float %9785, %9787
  %9789 = call float @dx.op.unary.f32(i32 24, float %9788)  ; Sqrt(value)
  %9790 = fcmp fast oge float %9780, 0.000000e+00
  %9791 = fsub fast float -0.000000e+00, %9789
  %9792 = select i1 %9790, float %9791, float %9789
  %9793 = fsub fast float %9792, %9780
  %9794 = fdiv fast float %9793, %9777
  %9795 = fdiv fast float %9784, %9793
  %9796 = fmul fast float %9794, 5.000000e-01
  %9797 = fmul fast float %9795, 2.000000e+00
  %9798 = select i1 %9790, float %9796, float %9797
  %9799 = select i1 %9790, float %9797, float %9796
  %9800 = call float @dx.op.binary.f32(i32 35, float %9798, float %9799)  ; FMax(a,b)
  %9801 = call float @dx.op.binary.f32(i32 36, float %9798, float %9799)  ; FMin(a,b)
  %9802 = fcmp fast ogt float %9715, %9801
  br i1 %9802, label %9803, label %9813

; <label>:9803                                    ; preds = %9740
  %9804 = fsub fast float %9715, %9801
  %9805 = fsub fast float %9800, %9801
  %9806 = fmul fast float %9804, %9805
  %9807 = fmul fast float %9800, %9715
  %9808 = fadd fast float %9800, %9715
  %9809 = fmul fast float %9808, %9755
  %9810 = fadd fast float %9807, %9756
  %9811 = fsub fast float %9810, %9809
  %9812 = fdiv fast float %9811, %9806
  br label %9813

; <label>:9813                                    ; preds = %9803, %9740
  %9814 = phi float [ %9812, %9803 ], [ 0.000000e+00, %9740 ]
  %9815 = fcmp fast ogt float %9715, %9800
  %9816 = fsub fast float %9715, %9800
  br i1 %9815, label %9817, label %9827

; <label>:9817                                    ; preds = %9813
  %9818 = fsub fast float %9800, %9801
  %9819 = fmul fast float %9818, %9816
  %9820 = fmul fast float %9801, %9715
  %9821 = fadd fast float %9801, %9715
  %9822 = fmul fast float %9821, %9755
  %9823 = fsub fast float %9757, %9820
  %9824 = fadd fast float %9823, %9822
  %9825 = fdiv fast float %9824, %9819
  %9826 = fadd fast float %9825, %9814
  br label %9827

; <label>:9827                                    ; preds = %9817, %9813
  %9828 = phi float [ %9826, %9817 ], [ %9814, %9813 ]
  %9829 = fsub fast float %9715, %9801
  %9830 = fmul fast float %9829, %9816
  %9831 = fmul fast float %9801, %9800
  %9832 = fadd fast float %9801, %9800
  %9833 = fmul fast float %9832, %9755
  %9834 = fadd fast float %9831, %9756
  %9835 = fsub fast float %9834, %9833
  %9836 = fdiv fast float %9835, %9830
  %9837 = call float @dx.op.unary.f32(i32 7, float %9828)  ; Saturate(value)
  %9838 = fcmp fast oeq float %8506, 0.000000e+00
  %9839 = extractvalue %dx.types.CBufRet.f32 %9623, 0
  %9840 = fcmp fast oeq float %9839, 0.000000e+00
  %9841 = or i1 %9838, %9840
  %9842 = fmul fast float %9839, 2.000000e+00
  %9843 = fadd fast float %9624, %9625
  %9844 = fdiv fast float %9843, %9842
  %9845 = call float @dx.op.unary.f32(i32 7, float %9844)  ; Saturate(value)
  %9846 = fmul fast float %9845, 2.000000e+00
  %9847 = fsub fast float 3.000000e+00, %9846
  %9848 = fmul fast float %9845, %9845
  %9849 = fmul fast float %9848, %9847
  %9850 = select i1 %9841, float 1.000000e+00, float %9849
  %9851 = fmul fast float %9836, %8506
  %9852 = fadd fast float %9837, %9851
  %9853 = call float @dx.op.unary.f32(i32 7, float %9852)  ; Saturate(value)
  %9854 = fmul fast float %9850, %9853
  br label %9855

; <label>:9855                                    ; preds = %9827, %9707
  %9856 = phi float [ %9854, %9827 ], [ 0.000000e+00, %9707 ]
  %9857 = fsub fast float 1.000000e+00, %9856
  %9858 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %43, float %9577, float %9578, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9859 = extractvalue %dx.types.ResRet.f32 %9858, 0
  %9860 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9861 = extractvalue %dx.types.CBufRet.i32 %9860, 2
  %9862 = icmp eq i32 %9861, 0
  br i1 %9862, label %9868, label %9863

; <label>:9863                                    ; preds = %9855
  %9864 = call float @dx.op.unary.f32(i32 7, float %9856)  ; Saturate(value)
  %9865 = fadd fast float %9859, -1.000000e+00
  %9866 = fmul fast float %9864, %9865
  %9867 = fadd fast float %9866, 1.000000e+00
  br label %9868

; <label>:9868                                    ; preds = %9863, %9855
  %9869 = phi float [ %9867, %9863 ], [ %9857, %9855 ]
  br i1 %9631, label %9870, label %9888

; <label>:9870                                    ; preds = %9868
  %9871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9872 = extractvalue %dx.types.CBufRet.f32 %9871, 1
  %9873 = fsub fast float %9708, %9872
  %9874 = call float @dx.op.unary.f32(i32 7, float %9873)  ; Saturate(value)
  %9875 = fsub fast float %9708, %9630
  %9876 = call float @dx.op.unary.f32(i32 7, float %9875)  ; Saturate(value)
  %9877 = fsub fast float %9874, %9876
  %9878 = fsub fast float %9710, %9876
  %9879 = fdiv fast float %9878, %9877
  %9880 = call float @dx.op.unary.f32(i32 7, float %9879)  ; Saturate(value)
  %9881 = fmul fast float %9880, 2.000000e+00
  %9882 = fsub fast float 3.000000e+00, %9881
  %9883 = fsub fast float %9859, %9869
  %9884 = fmul fast float %9880, %9880
  %9885 = fmul fast float %9884, %9883
  %9886 = fmul fast float %9885, %9882
  %9887 = fadd fast float %9886, %9869
  br label %9888

; <label>:9888                                    ; preds = %9870, %9868
  %9889 = phi float [ %9887, %9870 ], [ %9869, %9868 ]
  %9890 = call float @dx.op.binary.f32(i32 35, float %9859, float %9889)  ; FMax(a,b)
  %9891 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9892 = extractvalue %dx.types.CBufRet.i32 %9891, 2
  %9893 = and i32 %9892, 1
  %9894 = icmp eq i32 %9893, 0
  %9895 = fcmp fast une float %9890, 1.000000e+00
  %9896 = and i1 %9895, %9894
  br i1 %9896, label %9897, label %9916

; <label>:9897                                    ; preds = %9888
  %9898 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %43, float %9577, float %9578, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9899 = extractvalue %dx.types.ResRet.f32 %9898, 0
  %9900 = extractvalue %dx.types.ResRet.f32 %9898, 1
  %9901 = extractvalue %dx.types.ResRet.f32 %9898, 2
  %9902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9903 = extractvalue %dx.types.CBufRet.f32 %9902, 1
  %9904 = fmul fast float %9903, %9899
  %9905 = fmul fast float %9903, %9900
  %9906 = fmul fast float %9903, %9901
  %9907 = fcmp fast ogt float %9859, 0x3FEFFF2E40000000
  %9908 = fsub fast float 1.000000e+00, %9890
  %9909 = fsub fast float 1.000000e+00, %9859
  %9910 = fdiv fast float %9908, %9909
  %9911 = call float @dx.op.unary.f32(i32 7, float %9910)  ; Saturate(value)
  %9912 = select i1 %9907, float 0.000000e+00, float %9911
  %9913 = fmul fast float %9904, %9912
  %9914 = fmul fast float %9905, %9912
  %9915 = fmul fast float %9906, %9912
  br label %9916

; <label>:9916                                    ; preds = %9897, %9888
  %9917 = phi float [ 0.000000e+00, %9888 ], [ %9913, %9897 ]
  %9918 = phi float [ 0.000000e+00, %9888 ], [ %9914, %9897 ]
  %9919 = phi float [ 0.000000e+00, %9888 ], [ %9915, %9897 ]
  %9920 = fmul fast float %9917, %8490
  %9921 = fmul fast float %9918, %8492
  %9922 = fmul fast float %9919, %8494
  %9923 = fmul fast float %9890, %9552
  %9924 = call float @dx.op.dot3.f32(i32 55, float %9890, float %9890, float %9890, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9925 = call float @dx.op.dot3.f32(i32 55, float %9920, float %9921, float %9922, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9926 = select i1 %248, float %9924, float %9890
  %9927 = select i1 %248, float 1.000000e+00, float %9890
  %9928 = select i1 %248, float %9925, float %9920
  %9929 = select i1 %248, float 0.000000e+00, float %9921
  %9930 = select i1 %248, float 0.000000e+00, float %9922
  %9931 = fmul fast float %9926, %9564
  %9932 = fmul fast float %9926, %9565
  %9933 = fmul fast float %9927, %9566
  %9934 = fadd fast float %9931, %9928
  %9935 = fadd fast float %9932, %9929
  %9936 = fadd fast float %9930, %9933
  %9937 = fmul fast float %9926, %9567
  %9938 = fmul fast float %9926, %9568
  %9939 = fmul fast float %9927, %9569
  br label %9940

; <label>:9940                                    ; preds = %9916, %9573, %9542, %8774
  %9941 = phi float [ %8779, %8774 ], [ %9564, %9542 ], [ %9934, %9916 ], [ %9564, %9573 ]
  %9942 = phi float [ %8780, %8774 ], [ %9565, %9542 ], [ %9935, %9916 ], [ %9565, %9573 ]
  %9943 = phi float [ %8781, %8774 ], [ %9566, %9542 ], [ %9936, %9916 ], [ %9566, %9573 ]
  %9944 = phi float [ %8782, %8774 ], [ %9567, %9542 ], [ %9937, %9916 ], [ %9567, %9573 ]
  %9945 = phi float [ %8783, %8774 ], [ %9568, %9542 ], [ %9938, %9916 ], [ %9568, %9573 ]
  %9946 = phi float [ %8784, %8774 ], [ %9569, %9542 ], [ %9939, %9916 ], [ %9569, %9573 ]
  %9947 = phi float [ %8785, %8774 ], [ %9552, %9542 ], [ %9923, %9916 ], [ %9552, %9573 ]
  %9948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9949 = extractvalue %dx.types.CBufRet.f32 %9948, 2
  %9950 = extractvalue %dx.types.CBufRet.f32 %9948, 3
  %9951 = fmul fast float %9949, %108
  %9952 = fmul fast float %9950, %109
  %9953 = call float @dx.op.unary.f32(i32 7, float %9951)  ; Saturate(value)
  %9954 = call float @dx.op.unary.f32(i32 7, float %9952)  ; Saturate(value)
  %9955 = select i1 %8516, i32 2, i32 0
  %9956 = or i32 %9955, 1
  %9957 = uitofp i32 %9956 to float
  %9958 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %9953, float %9954, float %9957, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9959 = extractvalue %dx.types.ResRet.f32 %9958, 0
  %9960 = extractvalue %dx.types.ResRet.f32 %9958, 1
  %9961 = extractvalue %dx.types.ResRet.f32 %9958, 2
  %9962 = extractvalue %dx.types.ResRet.f32 %9958, 3
  %9963 = add nuw nsw i32 %9955, 2
  %9964 = uitofp i32 %9963 to float
  %9965 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %9953, float %9954, float %9964, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9966 = extractvalue %dx.types.ResRet.f32 %9965, 0
  %9967 = extractvalue %dx.types.ResRet.f32 %9965, 1
  %9968 = extractvalue %dx.types.ResRet.f32 %9965, 2
  %9969 = extractvalue %dx.types.ResRet.f32 %9965, 3
  %9970 = call float @dx.op.binary.f32(i32 35, float %9960, float %9961)  ; FMax(a,b)
  %9971 = call float @dx.op.binary.f32(i32 35, float %9959, float %9970)  ; FMax(a,b)
  %9972 = call float @dx.op.binary.f32(i32 35, float %9971, float %9962)  ; FMax(a,b)
  %9973 = call float @dx.op.binary.f32(i32 36, float %9967, float %9968)  ; FMin(a,b)
  %9974 = call float @dx.op.binary.f32(i32 36, float %9966, float %9973)  ; FMin(a,b)
  %9975 = call float @dx.op.binary.f32(i32 36, float %9974, float %9969)  ; FMin(a,b)
  %9976 = fmul fast float %9972, 2.550000e+02
  %9977 = fadd fast float %9976, 0x3F70101020000000
  %9978 = fptoui float %9977 to i32
  %9979 = fmul fast float %9975, 2.550000e+02
  %9980 = fadd fast float %9979, 0x3F70101020000000
  %9981 = fptoui float %9980 to i32
  %9982 = icmp ult i32 %9978, %9981
  br i1 %9982, label %9983, label %10152

; <label>:9983                                    ; preds = %9940
  %9984 = fcmp fast ogt float %94, 9.843750e-01
  %9985 = fadd fast float %8778, -4.000000e+00
  %9986 = select i1 %9984, float -4.000000e+00, float %9985
  %9987 = call float @dx.op.binary.f32(i32 35, float %9986, float 0.000000e+00)  ; FMax(a,b)
  %9988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9989 = extractvalue %dx.types.CBufRet.f32 %9988, 0
  %9990 = fadd fast float %9989, %9987
  %9991 = extractvalue %dx.types.CBufRet.f32 %9988, 2
  %9992 = fmul fast float %9990, %9991
  %9993 = call float @dx.op.unary.f32(i32 23, float %9992)  ; Log(value)
  %9994 = extractvalue %dx.types.CBufRet.f32 %9988, 3
  %9995 = fmul fast float %9994, %9993
  %9996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9997 = extractvalue %dx.types.CBufRet.f32 %9996, 2
  %9998 = fmul fast float %9995, %9997
  %9999 = call float @dx.op.unary.f32(i32 7, float %9998)  ; Saturate(value)
  %10000 = uitofp i32 %9978 to float
  %10001 = uitofp i32 %9981 to float
  %10002 = fadd fast float %10000, 5.000000e-01
  %10003 = fadd fast float %10001, 5.000000e-01
  %10004 = fmul fast float %9997, %10002
  %10005 = fmul fast float %9997, %10003
  %10006 = fadd fast float %10004, 0x3F0FFB4800000000
  %10007 = fadd fast float %10005, 0xBF0FFB4800000000
  %10008 = call float @dx.op.binary.f32(i32 35, float %9999, float %10006)  ; FMax(a,b)
  %10009 = call float @dx.op.binary.f32(i32 36, float %10008, float %10007)  ; FMin(a,b)
  %10010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10011 = extractvalue %dx.types.CBufRet.f32 %10010, 1
  %10012 = extractvalue %dx.types.CBufRet.f32 %10010, 2
  %10013 = extractvalue %dx.types.CBufRet.f32 %10010, 0
  %10014 = select i1 %8516, float %10013, float 0.000000e+00
  %10015 = fmul fast float %10011, %10009
  %10016 = fadd fast float %10014, %10015
  %10017 = fadd fast float %10014, %10012
  %10018 = fsub fast float %10011, %10012
  %10019 = fadd fast float %10018, %10014
  %10020 = call float @dx.op.binary.f32(i32 35, float %10016, float %10017)  ; FMax(a,b)
  %10021 = call float @dx.op.binary.f32(i32 36, float %10020, float %10019)  ; FMin(a,b)
  %10022 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %41, float %9953, float %9954, float %10021, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10023 = extractvalue %dx.types.ResRet.f32 %10022, 0
  %10024 = extractvalue %dx.types.ResRet.f32 %10022, 1
  %10025 = extractvalue %dx.types.ResRet.f32 %10022, 2
  %10026 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10027 = extractvalue %dx.types.CBufRet.i32 %10026, 0
  %10028 = extractvalue %dx.types.CBufRet.i32 %10026, 1
  %10029 = uitofp i32 %10027 to float
  %10030 = uitofp i32 %10028 to float
  %10031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10032 = extractvalue %dx.types.CBufRet.f32 %10031, 0
  %10033 = extractvalue %dx.types.CBufRet.f32 %10031, 1
  %10034 = fmul fast float %10029, %9953
  %10035 = fmul fast float %10030, %9954
  %10036 = fadd fast float %10034, -5.000000e-01
  %10037 = fadd fast float %10035, -5.000000e-01
  %10038 = call float @dx.op.unary.f32(i32 22, float %10036)  ; Frc(value)
  %10039 = call float @dx.op.unary.f32(i32 22, float %10037)  ; Frc(value)
  %10040 = fmul fast float %10038, %10038
  %10041 = fmul fast float %10040, %10038
  %10042 = fsub fast float 3.000000e+00, %10038
  %10043 = fmul fast float %10040, %10042
  %10044 = fmul fast float %10038, 3.000000e+00
  %10045 = fmul fast float %10041, 3.000000e+00
  %10046 = fmul fast float %10040, 6.000000e+00
  %10047 = fsub fast float %10045, %10046
  %10048 = fadd fast float %10047, 4.000000e+00
  %10049 = fmul fast float %10048, 0x3FC5555560000000
  %10050 = fmul fast float %10041, -3.000000e+00
  %10051 = fadd fast float %10040, %10038
  %10052 = fmul fast float %10051, 3.000000e+00
  %10053 = fadd fast float %10050, 1.000000e+00
  %10054 = fadd fast float %10053, %10052
  %10055 = fmul fast float %10041, 0x3FC5555560000000
  %10056 = fmul fast float %10039, %10039
  %10057 = fmul fast float %10056, %10039
  %10058 = fsub fast float 3.000000e+00, %10039
  %10059 = fmul fast float %10056, %10058
  %10060 = fmul fast float %10039, 3.000000e+00
  %10061 = fmul fast float %10057, 3.000000e+00
  %10062 = fmul fast float %10056, 6.000000e+00
  %10063 = fsub fast float %10061, %10062
  %10064 = fadd fast float %10063, 4.000000e+00
  %10065 = fmul fast float %10064, 0x3FC5555560000000
  %10066 = fmul fast float %10057, -3.000000e+00
  %10067 = fadd fast float %10056, %10039
  %10068 = fmul fast float %10067, 3.000000e+00
  %10069 = fadd fast float %10066, 1.000000e+00
  %10070 = fadd fast float %10069, %10068
  %10071 = fmul fast float %10057, 0x3FC5555560000000
  %10072 = fadd fast float %10038, 1.000000e+00
  %10073 = fsub fast float 1.000000e+00, %10044
  %10074 = fadd fast float %10073, %10043
  %10075 = fadd fast float %10074, %10048
  %10076 = fmul fast float %10075, 0x3FC5555560000000
  %10077 = fdiv fast float %10049, %10076
  %10078 = fsub fast float %10072, %10077
  %10079 = fsub fast float 1.000000e+00, %10038
  %10080 = fadd fast float %10054, %10041
  %10081 = fmul fast float %10080, 0x3FC5555560000000
  %10082 = fdiv fast float %10055, %10081
  %10083 = fadd fast float %10079, %10082
  %10084 = fadd fast float %10039, 1.000000e+00
  %10085 = fsub fast float 1.000000e+00, %10060
  %10086 = fadd fast float %10085, %10059
  %10087 = fadd fast float %10086, %10064
  %10088 = fmul fast float %10087, 0x3FC5555560000000
  %10089 = fdiv fast float %10065, %10088
  %10090 = fsub fast float %10084, %10089
  %10091 = fsub fast float 1.000000e+00, %10039
  %10092 = fadd fast float %10070, %10057
  %10093 = fmul fast float %10092, 0x3FC5555560000000
  %10094 = fdiv fast float %10071, %10093
  %10095 = fadd fast float %10094, %10091
  %10096 = fmul fast float %10078, %10032
  %10097 = fsub fast float %9953, %10096
  %10098 = fmul fast float %10083, %10032
  %10099 = fadd fast float %10098, %9953
  %10100 = fmul fast float %10095, %10033
  %10101 = fadd fast float %10100, %9954
  %10102 = fmul fast float %10090, %10033
  %10103 = fsub fast float %9954, %10102
  %10104 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %10097, float %10103, float %10021, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10105 = extractvalue %dx.types.ResRet.f32 %10104, 0
  %10106 = extractvalue %dx.types.ResRet.f32 %10104, 1
  %10107 = extractvalue %dx.types.ResRet.f32 %10104, 2
  %10108 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %10099, float %10103, float %10021, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10109 = extractvalue %dx.types.ResRet.f32 %10108, 0
  %10110 = extractvalue %dx.types.ResRet.f32 %10108, 1
  %10111 = extractvalue %dx.types.ResRet.f32 %10108, 2
  %10112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %10097, float %10101, float %10021, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10113 = extractvalue %dx.types.ResRet.f32 %10112, 0
  %10114 = extractvalue %dx.types.ResRet.f32 %10112, 1
  %10115 = extractvalue %dx.types.ResRet.f32 %10112, 2
  %10116 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %10099, float %10101, float %10021, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10117 = extractvalue %dx.types.ResRet.f32 %10116, 0
  %10118 = extractvalue %dx.types.ResRet.f32 %10116, 1
  %10119 = extractvalue %dx.types.ResRet.f32 %10116, 2
  %10120 = fsub fast float %10113, %10105
  %10121 = fsub fast float %10114, %10106
  %10122 = fsub fast float %10115, %10107
  %10123 = fmul fast float %10120, %10093
  %10124 = fmul fast float %10121, %10093
  %10125 = fmul fast float %10122, %10093
  %10126 = fadd fast float %10123, %10105
  %10127 = fadd fast float %10124, %10106
  %10128 = fadd fast float %10125, %10107
  %10129 = fsub fast float %10117, %10109
  %10130 = fsub fast float %10118, %10110
  %10131 = fsub fast float %10119, %10111
  %10132 = fmul fast float %10129, %10093
  %10133 = fmul fast float %10130, %10093
  %10134 = fmul fast float %10131, %10093
  %10135 = fsub fast float %10109, %10126
  %10136 = fadd fast float %10135, %10132
  %10137 = fsub fast float %10110, %10127
  %10138 = fadd fast float %10137, %10133
  %10139 = fsub fast float %10111, %10128
  %10140 = fadd fast float %10139, %10134
  %10141 = fmul fast float %10136, %10081
  %10142 = fmul fast float %10138, %10081
  %10143 = fmul fast float %10140, %10081
  %10144 = fadd fast float %10141, %10126
  %10145 = fadd fast float %10142, %10127
  %10146 = fadd fast float %10143, %10128
  %10147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10148 = extractvalue %dx.types.CBufRet.f32 %10147, 1
  %10149 = fmul fast float %10144, %10148
  %10150 = fmul fast float %10145, %10148
  %10151 = fmul fast float %10146, %10148
  br label %10152

; <label>:10152                                   ; preds = %9983, %9940
  %10153 = phi float [ %10023, %9983 ], [ 1.000000e+00, %9940 ]
  %10154 = phi float [ %10024, %9983 ], [ 1.000000e+00, %9940 ]
  %10155 = phi float [ %10025, %9983 ], [ 1.000000e+00, %9940 ]
  %10156 = phi float [ %10149, %9983 ], [ 0.000000e+00, %9940 ]
  %10157 = phi float [ %10150, %9983 ], [ 0.000000e+00, %9940 ]
  %10158 = phi float [ %10151, %9983 ], [ 0.000000e+00, %9940 ]
  %10159 = fmul fast float %10156, %8490
  %10160 = fmul fast float %10157, %8492
  %10161 = fmul fast float %10158, %8494
  %10162 = fmul fast float %10153, %9947
  %10163 = call float @dx.op.dot3.f32(i32 55, float %10153, float %10154, float %10155, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10164 = call float @dx.op.dot3.f32(i32 55, float %10159, float %10160, float %10161, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10165 = select i1 %248, float %10163, float %10153
  %10166 = select i1 %248, float %10163, float %10154
  %10167 = select i1 %248, float 1.000000e+00, float %10155
  %10168 = select i1 %248, float %10164, float %10159
  %10169 = select i1 %248, float 0.000000e+00, float %10160
  %10170 = select i1 %248, float 0.000000e+00, float %10161
  %10171 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10172 = extractvalue %dx.types.CBufRet.i32 %10171, 3
  %10173 = and i32 %10172, 3
  %10174 = icmp ne i32 %10173, 0
  %10175 = and i32 %10172, 4
  %10176 = icmp ne i32 %10175, 0
  %10177 = and i1 %10174, %10176
  %10178 = and i1 %248, %10177
  br i1 %10178, label %10179, label %10185

; <label>:10179                                   ; preds = %10152
  %10180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10181 = extractvalue %dx.types.CBufRet.f32 %10180, 1
  %10182 = fadd fast float %10162, -1.000000e+00
  %10183 = fmul fast float %10181, %10182
  %10184 = fadd fast float %10183, 1.000000e+00
  br label %10185

; <label>:10185                                   ; preds = %10179, %10152
  %10186 = phi float [ %10184, %10179 ], [ %10162, %10152 ]
  %10187 = fadd fast float %9944, %9941
  %10188 = fmul fast float %10165, %10187
  %10189 = fadd fast float %10188, %10168
  %10190 = fadd fast float %9945, %9942
  %10191 = fmul fast float %10166, %10190
  %10192 = fadd fast float %10191, %10169
  %10193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10194 = extractvalue %dx.types.CBufRet.f32 %10193, 0
  br i1 %248, label %10195, label %10210

; <label>:10195                                   ; preds = %10185
  %10196 = fadd fast float %10189, %10192
  %10197 = fmul fast float %10194, %10196
  %10198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10199 = extractvalue %dx.types.CBufRet.f32 %10198, 3
  %10200 = extractvalue %dx.types.CBufRet.f32 %8498, 1
  %10201 = fsub fast float %8503, %8497
  %10202 = fadd fast float %10201, %8504
  %10203 = fsub fast float %10202, %10200
  %10204 = extractvalue %dx.types.CBufRet.f32 %8498, 2
  %10205 = fmul fast float %10203, %10204
  %10206 = call float @dx.op.unary.f32(i32 7, float %10205)  ; Saturate(value)
  %10207 = fsub fast float %10206, %10199
  %10208 = fmul fast float %10207, %10186
  %10209 = fadd fast float %10208, %10199
  br label %10236

; <label>:10210                                   ; preds = %10185
  %10211 = fadd fast float %9946, %9943
  %10212 = fmul fast float %10167, %10211
  %10213 = fadd fast float %10212, %10170
  %10214 = fmul fast float %10194, %10189
  %10215 = fmul fast float %10194, %10192
  %10216 = fmul fast float %10194, %10213
  %10217 = call float @dx.op.binary.f32(i32 35, float %10215, float %10216)  ; FMax(a,b)
  %10218 = call float @dx.op.binary.f32(i32 35, float %10214, float %10217)  ; FMax(a,b)
  %10219 = call float @dx.op.binary.f32(i32 35, float %8492, float %8494)  ; FMax(a,b)
  %10220 = call float @dx.op.binary.f32(i32 35, float %8490, float %10219)  ; FMax(a,b)
  %10221 = call float @dx.op.binary.f32(i32 35, float %10218, float %10220)  ; FMax(a,b)
  %10222 = fcmp fast ugt float %10221, 0x3F10000000000000
  br i1 %10222, label %10224, label %10223

; <label>:10223                                   ; preds = %10210
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10224

; <label>:10224                                   ; preds = %10223, %10210
  %10225 = add i32 %49, 356
  %10226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %10225, i32 undef)  ; BufferLoad(srv,index,wot)
  %10227 = extractvalue %dx.types.ResRet.i32 %10226, 0
  %10228 = and i32 %10227, 32
  %10229 = icmp eq i32 %10228, 0
  br i1 %10229, label %10236, label %10230

; <label>:10230                                   ; preds = %10224
  %10231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10232 = extractvalue %dx.types.CBufRet.f32 %10231, 0
  %10233 = fmul fast float %10232, 0x3FE99999A0000000
  %10234 = fadd fast float %10232, %10214
  %10235 = fadd fast float %10233, %10216
  br label %10236

; <label>:10236                                   ; preds = %10230, %10224, %10195
  %10237 = phi float [ 1.000000e+00, %10195 ], [ %8492, %10230 ], [ %8492, %10224 ]
  %10238 = phi float [ 1.000000e+00, %10195 ], [ %8494, %10230 ], [ %8494, %10224 ]
  %10239 = phi float [ %10197, %10195 ], [ %10234, %10230 ], [ %10214, %10224 ]
  %10240 = phi float [ %10209, %10195 ], [ %10215, %10230 ], [ %10215, %10224 ]
  %10241 = phi float [ 1.000000e+00, %10195 ], [ %10235, %10230 ], [ %10216, %10224 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10242 = call float @dx.op.binary.f32(i32 36, float %10239, float 3.225500e+04)  ; FMin(a,b)
  %10243 = call float @dx.op.binary.f32(i32 36, float %10240, float 3.225500e+04)  ; FMin(a,b)
  %10244 = call float @dx.op.binary.f32(i32 36, float %10241, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10242)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10243)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10244)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10245 = call float @dx.op.binary.f32(i32 36, float %8490, float 3.225500e+04)  ; FMin(a,b)
  %10246 = call float @dx.op.binary.f32(i32 36, float %10237, float 3.225500e+04)  ; FMin(a,b)
  %10247 = call float @dx.op.binary.f32(i32 36, float %10238, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %10245)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %10246)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %10247)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!23 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
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
!52 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!53 = !{!54, !55, !56, !57, !58, !59, !60}
!54 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!55 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!56 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!57 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!58 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!59 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!60 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!61 = !{[62 x i32] [i32 60, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 119, i32 0, i32 0, i32 0, i32 119, i32 0, i32 0, i32 0]}
!62 = !{void ()* @ps_main, !"ps_main", !63, !4, !90}
!63 = !{!64, !86, null}
!64 = !{!65, !68, !69, !71, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !84, !85}
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
!84 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !66, i8 1, i32 1, i8 4, i32 14, i8 0, !83}
!85 = !{i32 15, !"SV_SampleIndex", i8 5, i8 12, !66, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!86 = !{!87, !88}
!87 = !{i32 0, !"SV_Target", i8 9, i8 16, !66, i8 0, i32 1, i8 4, i32 0, i8 0, !67}
!88 = !{i32 1, !"SV_Target", i8 9, i8 16, !89, i8 0, i32 1, i8 4, i32 1, i8 0, !67}
!89 = !{i32 1}
!90 = !{i32 0, i64 16}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !93}
!93 = !{!"llvm.loop.unroll.disable"}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = !{!100, !100, i64 0}
!100 = !{!"int", !101, i64 0}
!101 = !{!"omnipotent char", !102, i64 0}
!102 = !{!"Simple C/C++ TBAA"}
!103 = !{!104, !106, !108, !110}
!104 = distinct !{!104, !105, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!105 = distinct !{!105, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!106 = distinct !{!106, !107, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!107 = distinct !{!107, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!108 = distinct !{!108, !109, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!109 = distinct !{!109, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!110 = distinct !{!110, !111, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!111 = distinct !{!111, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = !{!114, !114, i64 0}
!114 = !{!"float", !101, i64 0}
!115 = distinct !{!115, !93}
!116 = distinct !{!116, !93}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = !{!126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!126 = distinct !{!126, !127, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!127 = distinct !{!127, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!128 = distinct !{!128, !129, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!129 = distinct !{!129, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!130 = distinct !{!130, !129, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!131 = distinct !{!131, !132, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!132 = distinct !{!132, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!133 = distinct !{!133, !132, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!134 = distinct !{!134, !132, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!135 = distinct !{!135, !136, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!136 = distinct !{!136, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!137 = distinct !{!137, !136, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!138 = distinct !{!138, !136, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!139 = distinct !{!139, !140, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!140 = distinct !{!140, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"\01?sort@@YAXAIAM00@Z: %c"}
!143 = distinct !{!143, !"\01?sort@@YAXAIAM00@Z"}
!144 = !{!145, !146, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!145 = distinct !{!145, !143, !"\01?sort@@YAXAIAM00@Z: %a"}
!146 = distinct !{!146, !143, !"\01?sort@@YAXAIAM00@Z: %b"}
!147 = !{!146}
!148 = !{!145, !142, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!149 = !{!145}
!150 = !{!146, !142, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!151 = !{!152}
!152 = distinct !{!152, !153, !"\01?sort@@YAXAIAM00@Z: %c"}
!153 = distinct !{!153, !"\01?sort@@YAXAIAM00@Z"}
!154 = !{!155, !156, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!155 = distinct !{!155, !153, !"\01?sort@@YAXAIAM00@Z: %a"}
!156 = distinct !{!156, !153, !"\01?sort@@YAXAIAM00@Z: %b"}
!157 = !{!156}
!158 = !{!155, !152, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!159 = !{!155}
!160 = !{!156, !152, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 1}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 2}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}

