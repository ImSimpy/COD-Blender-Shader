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
; shader hash: 17cdf4801d8b743593959035a94fb667
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
;                                   sampler      NA          NA      S7             s6     1
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
;                                   texture     f32          2d     T17             t1     1
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
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
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
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 7, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
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
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 0
  %135 = fcmp fast une float %134, 0.000000e+00
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
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
  %195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %194, i32 undef)  ; BufferLoad(srv,index,wot)
  %196 = extractvalue %dx.types.ResRet.i32 %195, 0
  %197 = extractvalue %dx.types.ResRet.i32 %195, 1
  %198 = extractvalue %dx.types.ResRet.i32 %195, 2
  %199 = extractvalue %dx.types.ResRet.i32 %195, 3
  %200 = add i32 %193, 4194320
  %201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %200, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
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
  %237 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %46, float %235, float %236, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %238 = extractvalue %dx.types.ResRet.f32 %237, 0
  %239 = fmul fast float %238, 2.550000e+02
  %240 = fptoui float %239 to i32
  %241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
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
  %254 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %45, float %253, float %251, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  %272 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %27, i32 0, i32 %270, i32 %271, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %273 = extractvalue %dx.types.ResRet.f32 %272, 0
  %274 = extractvalue %dx.types.ResRet.f32 %272, 1
  %275 = fadd fast float %273, %267
  %276 = fadd fast float %274, %267
  %277 = call float @dx.op.unary.f32(i32 22, float %275)  ; Frc(value)
  %278 = call float @dx.op.unary.f32(i32 22, float %276)  ; Frc(value)
  %279 = add i32 %51, 156
  %280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %279, i32 undef)  ; BufferLoad(srv,index,wot)
  %281 = extractvalue %dx.types.ResRet.i32 %280, 0
  %282 = shl i32 %281, 4
  %283 = and i32 %282, 32752
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283)  ; LegacyF16ToF32(value)
  %285 = lshr i32 %281, 7
  %286 = and i32 %285, 32752
  %287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %286)  ; LegacyF16ToF32(value)
  %288 = lshr i32 %281, 22
  %289 = shl nuw nsw i32 %288, 5
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = add i32 %51, 216
  %292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.i32 %292, 0
  %294 = and i32 %293, 255
  %295 = uitofp i32 %294 to float
  %296 = fmul fast float %295, 0x3F70101020000000
  %297 = lshr i32 %293, 8
  %298 = and i32 %297, 255
  %299 = uitofp i32 %298 to float
  %300 = fmul fast float %299, 0x3F70101020000000
  %301 = lshr i32 %293, 16
  %302 = and i32 %301, 255
  %303 = uitofp i32 %302 to float
  %304 = fmul fast float %303, 0x3F70101020000000
  %305 = add i32 %51, 36
  %306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %305, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.i32 %306, 0
  %308 = and i32 %307, 65535
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = lshr i32 %307, 16
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = add i32 %51, 288
  %313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %312, i32 undef)  ; BufferLoad(srv,index,wot)
  %314 = extractvalue %dx.types.ResRet.i32 %313, 0
  %315 = and i32 %314, 65535
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = lshr i32 %314, 16
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = fmul fast float %316, 0x3F50624DE0000000
  %320 = fmul fast float %318, 0x3F50624DE0000000
  %321 = add i32 %51, 172
  %322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %321, i32 undef)  ; BufferLoad(srv,index,wot)
  %323 = extractvalue %dx.types.ResRet.i32 %322, 0
  %324 = shl i32 %323, 4
  %325 = and i32 %324, 32752
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = lshr i32 %323, 7
  %328 = and i32 %327, 32752
  %329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %328)  ; LegacyF16ToF32(value)
  %330 = lshr i32 %323, 22
  %331 = shl nuw nsw i32 %330, 5
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = add i32 %51, 232
  %334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %335 = extractvalue %dx.types.ResRet.i32 %334, 0
  %336 = and i32 %335, 255
  %337 = uitofp i32 %336 to float
  %338 = fmul fast float %337, 0x3F70101020000000
  %339 = lshr i32 %335, 8
  %340 = and i32 %339, 255
  %341 = uitofp i32 %340 to float
  %342 = fmul fast float %341, 0x3F70101020000000
  %343 = lshr i32 %335, 16
  %344 = and i32 %343, 255
  %345 = uitofp i32 %344 to float
  %346 = fmul fast float %345, 0x3F70101020000000
  %347 = add i32 %51, 52
  %348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.i32 %348, 0
  %350 = and i32 %349, 65535
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = lshr i32 %349, 16
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = add i32 %51, 304
  %355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.i32 %355, 0
  %357 = and i32 %356, 65535
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = lshr i32 %356, 16
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = fmul fast float %358, 0x3F50624DE0000000
  %362 = fmul fast float %360, 0x3F50624DE0000000
  %363 = add i32 %51, 188
  %364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %363, i32 undef)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.i32 %364, 0
  %366 = shl i32 %365, 4
  %367 = and i32 %366, 32752
  %368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %367)  ; LegacyF16ToF32(value)
  %369 = lshr i32 %365, 7
  %370 = and i32 %369, 32752
  %371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %370)  ; LegacyF16ToF32(value)
  %372 = lshr i32 %365, 22
  %373 = shl nuw nsw i32 %372, 5
  %374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %373)  ; LegacyF16ToF32(value)
  %375 = add i32 %51, 248
  %376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.i32 %376, 0
  %378 = and i32 %377, 255
  %379 = uitofp i32 %378 to float
  %380 = fmul fast float %379, 0x3F70101020000000
  %381 = lshr i32 %377, 8
  %382 = and i32 %381, 255
  %383 = uitofp i32 %382 to float
  %384 = fmul fast float %383, 0x3F70101020000000
  %385 = lshr i32 %377, 16
  %386 = and i32 %385, 255
  %387 = uitofp i32 %386 to float
  %388 = fmul fast float %387, 0x3F70101020000000
  %389 = add i32 %51, 68
  %390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %391 = extractvalue %dx.types.ResRet.i32 %390, 0
  %392 = and i32 %391, 65535
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = lshr i32 %391, 16
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = add i32 %51, 320
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  %399 = and i32 %398, 65535
  %400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %399)  ; LegacyF16ToF32(value)
  %401 = lshr i32 %398, 16
  %402 = call float @dx.op.legacyF16ToF32(i32 131, i32 %401)  ; LegacyF16ToF32(value)
  %403 = fmul fast float %400, 0x3F50624DE0000000
  %404 = fmul fast float %402, 0x3F50624DE0000000
  %405 = add i32 %51, 204
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = shl i32 %407, 4
  %409 = and i32 %408, 32752
  %410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %409)  ; LegacyF16ToF32(value)
  %411 = lshr i32 %407, 7
  %412 = and i32 %411, 32752
  %413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %412)  ; LegacyF16ToF32(value)
  %414 = lshr i32 %407, 22
  %415 = shl nuw nsw i32 %414, 5
  %416 = call float @dx.op.legacyF16ToF32(i32 131, i32 %415)  ; LegacyF16ToF32(value)
  %417 = add i32 %51, 264
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = and i32 %419, 255
  %421 = uitofp i32 %420 to float
  %422 = fmul fast float %421, 0x3F70101020000000
  %423 = lshr i32 %419, 8
  %424 = and i32 %423, 255
  %425 = uitofp i32 %424 to float
  %426 = fmul fast float %425, 0x3F70101020000000
  %427 = lshr i32 %419, 16
  %428 = and i32 %427, 255
  %429 = uitofp i32 %428 to float
  %430 = fmul fast float %429, 0x3F70101020000000
  %431 = add i32 %51, 84
  %432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %431, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.i32 %432, 0
  %434 = and i32 %433, 65535
  %435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %434)  ; LegacyF16ToF32(value)
  %436 = lshr i32 %433, 16
  %437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %436)  ; LegacyF16ToF32(value)
  %438 = add i32 %51, 336
  %439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.i32 %439, 0
  %441 = and i32 %440, 65535
  %442 = call float @dx.op.legacyF16ToF32(i32 131, i32 %441)  ; LegacyF16ToF32(value)
  %443 = lshr i32 %440, 16
  %444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %443)  ; LegacyF16ToF32(value)
  %445 = fmul fast float %442, 0x3F50624DE0000000
  %446 = fmul fast float %444, 0x3F50624DE0000000
  %447 = add i32 %51, 348
  %448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.i32 %448, 0
  %450 = and i32 %449, 32
  %451 = icmp eq i32 %450, 0
  %452 = and i32 %449, 64
  %453 = icmp eq i32 %452, 0
  %454 = and i32 %449, 128
  %455 = icmp eq i32 %454, 0
  %456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.i32 %456, 0
  %458 = and i32 %457, 2
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %475, label %460

; <label>:460                                     ; preds = %263
  %461 = add i32 %51, 508
  %462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.i32 %462, 0
  %464 = add i32 %463, 0
  %465 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %464, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %466 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %465, %dx.types.Handle %108, float %89, float %90, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %467 = extractvalue %dx.types.ResRet.f32 %466, 0
  %468 = extractvalue %dx.types.ResRet.f32 %466, 1
  %469 = extractvalue %dx.types.ResRet.f32 %466, 2
  %470 = extractvalue %dx.types.ResRet.f32 %466, 3
  %471 = fmul fast float %470, %91
  %472 = fmul fast float %467, %92
  %473 = fmul fast float %468, %93
  %474 = fmul fast float %469, %94
  br label %475

; <label>:475                                     ; preds = %460, %263
  %476 = phi float [ %94, %263 ], [ %474, %460 ]
  %477 = phi float [ %93, %263 ], [ %473, %460 ]
  %478 = phi float [ %92, %263 ], [ %472, %460 ]
  %479 = phi float [ %91, %263 ], [ %471, %460 ]
  %480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %481 = extractvalue %dx.types.ResRet.i32 %480, 0
  %482 = and i32 %481, 2
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %503, label %484

; <label>:484                                     ; preds = %475
  %485 = add i32 %51, 44
  %486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %485, i32 undef)  ; BufferLoad(srv,index,wot)
  %487 = extractvalue %dx.types.ResRet.i32 %486, 0
  %488 = and i32 %487, 1
  %489 = icmp ne i32 %488, 0
  %490 = select i1 %489, float %478, float 1.000000e+00
  %491 = add i32 %51, 60
  %492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.i32 %492, 0
  %494 = and i32 %493, 1
  %495 = icmp ne i32 %494, 0
  %496 = select i1 %495, float %477, float 1.000000e+00
  %497 = add i32 %51, 76
  %498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.i32 %498, 0
  %500 = and i32 %499, 1
  %501 = icmp ne i32 %500, 0
  %502 = select i1 %501, float %476, float 1.000000e+00
  br label %503

; <label>:503                                     ; preds = %484, %475
  %504 = phi float [ %476, %475 ], [ %502, %484 ]
  %505 = phi float [ %477, %475 ], [ %496, %484 ]
  %506 = phi float [ %478, %475 ], [ %490, %484 ]
  %507 = lshr i32 %481, 20
  %508 = and i32 %507, 3
  %509 = add nuw nsw i32 %508, 1
  %510 = add i32 %51, 24
  %511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %512 = extractvalue %dx.types.ResRet.i32 %511, 0
  %513 = add i32 %51, 28
  %514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %513, i32 undef)  ; BufferLoad(srv,index,wot)
  %515 = extractvalue %dx.types.ResRet.i32 %514, 0
  %516 = or i32 %515, %512
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %1163, label %518

; <label>:518                                     ; preds = %503
  %519 = and i32 %512, 262144
  %520 = icmp ne i32 %519, 0
  %521 = select i1 %520, float %57, float 1.000000e+00
  %522 = select i1 %520, float %58, float 0.000000e+00
  %523 = select i1 %520, float %59, float 0.000000e+00
  %524 = select i1 %520, float %60, float 1.000000e+00
  %525 = select i1 %520, float %61, float %89
  %526 = select i1 %520, float %62, float %90
  %527 = add i32 %51, 284
  %528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.i32 %528, 0
  %530 = lshr i32 %529, 16
  %531 = call float @dx.op.legacyF16ToF32(i32 131, i32 %530)  ; LegacyF16ToF32(value)
  %532 = fmul fast float %531, 0x3F50624DE0000000
  %533 = add i32 %51, 88
  %534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %533, i32 undef)  ; BufferLoad(srv,index,wot)
  %535 = extractvalue %dx.types.ResRet.i32 %534, 0
  %536 = lshr i32 %535, 16
  %537 = and i32 %536, 255
  %538 = lshr i32 %535, 24
  %539 = add i32 %51, 292
  %540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.i32 %540, 0
  %542 = and i32 %541, 65535
  %543 = call float @dx.op.legacyF16ToF32(i32 131, i32 %542)  ; LegacyF16ToF32(value)
  %544 = lshr i32 %541, 16
  %545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %544)  ; LegacyF16ToF32(value)
  %546 = add i32 %51, 32
  %547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %546, i32 undef)  ; BufferLoad(srv,index,wot)
  %548 = extractvalue %dx.types.ResRet.i32 %547, 0
  %549 = lshr i32 %548, 22
  %550 = shl nuw nsw i32 %549, 5
  %551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %550)  ; LegacyF16ToF32(value)
  %552 = shl i32 %548, 4
  %553 = and i32 %552, 32752
  %554 = call float @dx.op.legacyF16ToF32(i32 131, i32 %553)  ; LegacyF16ToF32(value)
  %555 = lshr i32 %548, 7
  %556 = and i32 %555, 32752
  %557 = call float @dx.op.legacyF16ToF32(i32 131, i32 %556)  ; LegacyF16ToF32(value)
  %558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %559 = extractvalue %dx.types.CBufRet.f32 %558, 3
  %560 = fmul fast float %559, 1.000000e+03
  %561 = fmul fast float %319, %560
  %562 = call float @dx.op.unary.f32(i32 22, float %561)  ; Frc(value)
  %563 = fadd fast float %562, %309
  %564 = fmul fast float %320, %560
  %565 = call float @dx.op.unary.f32(i32 22, float %564)  ; Frc(value)
  %566 = fadd fast float %565, %311
  %567 = fmul fast float %532, %560
  %568 = call float @dx.op.unary.f32(i32 22, float %567)  ; Frc(value)
  %569 = fmul fast float %568, 0x401921FB60000000
  %570 = fadd fast float %569, %551
  %571 = call float @dx.op.unary.f32(i32 13, float %570)  ; Sin(value)
  %572 = call float @dx.op.unary.f32(i32 12, float %570)  ; Cos(value)
  %573 = fsub fast float -0.000000e+00, %571
  %574 = fadd fast float %525, -5.000000e-01
  %575 = fadd fast float %526, -5.000000e-01
  %576 = fmul fast float %543, %574
  %577 = fmul fast float %545, %575
  %578 = fadd fast float %576, 5.000000e-01
  %579 = fadd fast float %577, 5.000000e-01
  %580 = fmul fast float %554, %578
  %581 = fmul fast float %557, %579
  %582 = fmul fast float %572, %580
  %583 = call float @dx.op.tertiary.f32(i32 46, float %573, float %581, float %582)  ; FMad(a,b,c)
  %584 = fmul fast float %571, %580
  %585 = call float @dx.op.tertiary.f32(i32 46, float %572, float %581, float %584)  ; FMad(a,b,c)
  %586 = fadd fast float %563, %583
  %587 = fadd fast float %566, %585
  %588 = icmp ugt i32 %537, 1
  %589 = icmp ugt i32 %535, 33554431
  %590 = or i1 %589, %588
  br i1 %590, label %591, label %616

; <label>:591                                     ; preds = %518
  %592 = add i32 %51, 228
  %593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %594 = extractvalue %dx.types.ResRet.i32 %593, 0
  %595 = lshr i32 %594, 16
  %596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %595)  ; LegacyF16ToF32(value)
  %597 = fmul fast float %559, %596
  %598 = call float @dx.op.unary.f32(i32 22, float %597)  ; Frc(value)
  %599 = mul nuw nsw i32 %537, %538
  %600 = uitofp i32 %599 to float
  %601 = fmul fast float %598, %600
  %602 = call float @dx.op.unary.f32(i32 27, float %601)  ; Round_ni(value)
  %603 = fptoui float %602 to i32
  %604 = urem i32 %603, %537
  %605 = udiv i32 %603, %538
  %606 = call float @dx.op.unary.f32(i32 22, float %586)  ; Frc(value)
  %607 = call float @dx.op.unary.f32(i32 22, float %587)  ; Frc(value)
  %608 = uitofp i32 %604 to float
  %609 = uitofp i32 %605 to float
  %610 = fadd fast float %606, %608
  %611 = fadd fast float %607, %609
  %612 = uitofp i32 %537 to float
  %613 = uitofp i32 %538 to float
  %614 = fdiv fast float %610, %612
  %615 = fdiv fast float %611, %613
  br label %616

; <label>:616                                     ; preds = %591, %518
  %617 = phi float [ %614, %591 ], [ %586, %518 ]
  %618 = phi float [ %615, %591 ], [ %587, %518 ]
  %619 = and i32 %512, 256
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %667, label %621

; <label>:621                                     ; preds = %616
  %622 = add i32 %51, 440
  %623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %622, i32 undef)  ; BufferLoad(srv,index,wot)
  %624 = extractvalue %dx.types.ResRet.i32 %623, 0
  %625 = add i32 %624, 0
  %626 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %625, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %627 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %626, %dx.types.Handle %108, float %617, float %618, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %628 = extractvalue %dx.types.ResRet.f32 %627, 0
  %629 = add i32 %51, 100
  %630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %629, i32 undef)  ; BufferLoad(srv,index,wot)
  %631 = extractvalue %dx.types.ResRet.i32 %630, 0
  %632 = shl i32 %631, 4
  %633 = and i32 %632, 32752
  %634 = call float @dx.op.legacyF16ToF32(i32 131, i32 %633)  ; LegacyF16ToF32(value)
  %635 = lshr i32 %631, 7
  %636 = and i32 %635, 32752
  %637 = call float @dx.op.legacyF16ToF32(i32 131, i32 %636)  ; LegacyF16ToF32(value)
  %638 = fsub fast float 1.000000e+00, %479
  %639 = call float @dx.op.binary.f32(i32 35, float %638, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %640 = bitcast float %479 to i32
  %641 = sitofp i32 %640 to float
  %642 = fadd fast float %641, 0xC1CFBF8940000000
  %643 = fmul fast float %637, %642
  %644 = fadd fast float %643, 0x41CFBF8940000000
  %645 = fptosi float %644 to i32
  %646 = bitcast i32 %645 to float
  %647 = bitcast float %639 to i32
  %648 = sitofp i32 %647 to float
  %649 = fadd fast float %648, 0xC1CFBF8940000000
  %650 = fmul fast float %649, %637
  %651 = fadd fast float %650, 0x41CFBF8940000000
  %652 = fptosi float %651 to i32
  %653 = bitcast i32 %652 to float
  %654 = fmul fast float %646, %634
  %655 = fmul fast float %653, %634
  %656 = fsub fast float %639, %654
  %657 = fadd fast float %655, %639
  %658 = call float @dx.op.unary.f32(i32 7, float %656)  ; Saturate(value)
  %659 = call float @dx.op.unary.f32(i32 7, float %657)  ; Saturate(value)
  %660 = fsub fast float %628, %658
  %661 = fsub fast float %659, %658
  %662 = bitcast float %661 to i32
  %663 = sub nsw i32 2129859010, %662
  %664 = bitcast i32 %663 to float
  %665 = fmul fast float %664, %660
  %666 = call float @dx.op.unary.f32(i32 7, float %665)  ; Saturate(value)
  br label %667

; <label>:667                                     ; preds = %621, %616
  %668 = phi float [ %666, %621 ], [ %479, %616 ]
  %669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %670 = extractvalue %dx.types.ResRet.i32 %669, 0
  %671 = and i32 %670, 128
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %689, label %673

; <label>:673                                     ; preds = %667
  %674 = add i32 %51, 424
  %675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %674, i32 undef)  ; BufferLoad(srv,index,wot)
  %676 = extractvalue %dx.types.ResRet.i32 %675, 0
  %677 = add i32 %676, 0
  %678 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %677, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %679 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %678, %dx.types.Handle %108, float %617, float %618, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %680 = extractvalue %dx.types.ResRet.f32 %679, 0
  %681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %682 = extractvalue %dx.types.ResRet.i32 %681, 0
  %683 = and i32 %682, 524288
  %684 = icmp ne i32 %683, 0
  %685 = fcmp fast ogt float %680, 0x3FE0101020000000
  %686 = select i1 %685, float 1.000000e+00, float 0.000000e+00
  %687 = select i1 %684, float %686, float %680
  %688 = fmul fast float %687, %668
  br label %689

; <label>:689                                     ; preds = %673, %667
  %690 = phi float [ %688, %673 ], [ %668, %667 ]
  %691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %692 = extractvalue %dx.types.ResRet.i32 %691, 0
  %693 = and i32 %692, 16
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %893, label %695

; <label>:695                                     ; preds = %689
  %696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %533, i32 undef)  ; BufferLoad(srv,index,wot)
  %697 = extractvalue %dx.types.ResRet.i32 %696, 0
  %698 = add i32 %51, 376
  %699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %698, i32 undef)  ; BufferLoad(srv,index,wot)
  %700 = extractvalue %dx.types.ResRet.i32 %699, 0
  %701 = add i32 %700, 0
  %702 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %701, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %703 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %702, %dx.types.Handle %107, float %617, float %618, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %704 = extractvalue %dx.types.ResRet.f32 %703, 0
  %705 = extractvalue %dx.types.ResRet.f32 %703, 1
  %706 = extractvalue %dx.types.ResRet.f32 %703, 2
  %707 = extractvalue %dx.types.ResRet.f32 %703, 3
  %708 = and i32 %697, 255
  %709 = uitofp i32 %708 to float
  %710 = lshr i32 %697, 8
  %711 = and i32 %710, 255
  %712 = uitofp i32 %711 to float
  %713 = fmul fast float %707, %709
  %714 = fadd fast float %713, %712
  %715 = fmul fast float %714, 0x3F70101000000000
  %716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %717 = extractvalue %dx.types.ResRet.i32 %716, 0
  %718 = and i32 %717, 512
  %719 = icmp eq i32 %718, 0
  br i1 %719, label %728, label %720

; <label>:720                                     ; preds = %695
  %721 = add i32 %51, 460
  %722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %721, i32 undef)  ; BufferLoad(srv,index,wot)
  %723 = extractvalue %dx.types.ResRet.i32 %722, 0
  %724 = add i32 %723, 0
  %725 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %724, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %726 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %725, %dx.types.Handle %108, float %617, float %618, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %727 = extractvalue %dx.types.ResRet.f32 %726, 0
  br label %728

; <label>:728                                     ; preds = %720, %695
  %729 = phi float [ %727, %720 ], [ 1.000000e+00, %695 ]
  %730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %731 = extractvalue %dx.types.ResRet.i32 %730, 0
  %732 = and i32 %731, 33554432
  %733 = icmp eq i32 %732, 0
  br i1 %733, label %840, label %734

; <label>:734                                     ; preds = %728
  %735 = add i32 %51, 224
  %736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %735, i32 undef)  ; BufferLoad(srv,index,wot)
  %737 = extractvalue %dx.types.ResRet.i32 %736, 0
  %738 = and i32 %737, 65535
  %739 = call float @dx.op.legacyF16ToF32(i32 131, i32 %738)  ; LegacyF16ToF32(value)
  %740 = lshr i32 %737, 16
  %741 = call float @dx.op.legacyF16ToF32(i32 131, i32 %740)  ; LegacyF16ToF32(value)
  %742 = add i32 %51, 228
  %743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %742, i32 undef)  ; BufferLoad(srv,index,wot)
  %744 = extractvalue %dx.types.ResRet.i32 %743, 0
  %745 = and i32 %744, 65535
  %746 = call float @dx.op.legacyF16ToF32(i32 131, i32 %745)  ; LegacyF16ToF32(value)
  %747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
  %748 = extractvalue %dx.types.ResRet.i32 %747, 0
  %749 = lshr i32 %748, 24
  %750 = uitofp i32 %749 to float
  %751 = fmul fast float %750, 0x3F70101020000000
  %752 = and i32 %748, 255
  %753 = uitofp i32 %752 to float
  %754 = fmul fast float %753, 0x3F70101020000000
  %755 = lshr i32 %748, 8
  %756 = and i32 %755, 255
  %757 = uitofp i32 %756 to float
  %758 = fmul fast float %757, 0x3F70101020000000
  %759 = lshr i32 %748, 16
  %760 = and i32 %759, 255
  %761 = uitofp i32 %760 to float
  %762 = fmul fast float %761, 0x3F70101020000000
  %763 = add i32 %51, 220
  %764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %763, i32 undef)  ; BufferLoad(srv,index,wot)
  %765 = extractvalue %dx.types.ResRet.i32 %764, 0
  %766 = lshr i32 %765, 24
  %767 = uitofp i32 %766 to float
  %768 = fmul fast float %767, 0x3F70101020000000
  %769 = and i32 %765, 255
  %770 = uitofp i32 %769 to float
  %771 = fmul fast float %770, 0x3F70101020000000
  %772 = lshr i32 %765, 8
  %773 = and i32 %772, 255
  %774 = uitofp i32 %773 to float
  %775 = fmul fast float %774, 0x3F70101020000000
  %776 = lshr i32 %765, 16
  %777 = and i32 %776, 255
  %778 = uitofp i32 %777 to float
  %779 = fmul fast float %778, 0x3F70101020000000
  %780 = bitcast float %704 to i32
  %781 = ashr i32 %780, 1
  %782 = sub nsw i32 1597463174, %781
  %783 = bitcast i32 %782 to float
  %784 = fmul fast float %704, 5.000000e-01
  %785 = fmul fast float %783, %783
  %786 = fmul fast float %785, %784
  %787 = fsub fast float 1.500000e+00, %786
  %788 = fmul fast float %783, %704
  %789 = fmul fast float %788, %787
  %790 = bitcast float %705 to i32
  %791 = ashr i32 %790, 1
  %792 = sub nsw i32 1597463174, %791
  %793 = bitcast i32 %792 to float
  %794 = fmul fast float %705, 5.000000e-01
  %795 = fmul fast float %793, %793
  %796 = fmul fast float %795, %794
  %797 = fsub fast float 1.500000e+00, %796
  %798 = fmul fast float %793, %705
  %799 = fmul fast float %798, %797
  %800 = bitcast float %706 to i32
  %801 = ashr i32 %800, 1
  %802 = sub nsw i32 1597463174, %801
  %803 = bitcast i32 %802 to float
  %804 = fmul fast float %706, 5.000000e-01
  %805 = fmul fast float %803, %803
  %806 = fmul fast float %805, %804
  %807 = fsub fast float 1.500000e+00, %806
  %808 = fmul fast float %803, %706
  %809 = fmul fast float %808, %807
  %810 = fsub fast float %789, %771
  %811 = fsub fast float %799, %775
  %812 = fsub fast float %809, %779
  %813 = fmul fast float %810, %739
  %814 = fmul fast float %811, %741
  %815 = fmul fast float %812, %746
  %816 = fadd fast float %813, %754
  %817 = fadd fast float %814, %758
  %818 = fadd fast float %815, %762
  %819 = call float @dx.op.unary.f32(i32 7, float %816)  ; Saturate(value)
  %820 = call float @dx.op.unary.f32(i32 7, float %817)  ; Saturate(value)
  %821 = call float @dx.op.unary.f32(i32 7, float %818)  ; Saturate(value)
  %822 = fmul fast float %819, %819
  %823 = fmul fast float %820, %820
  %824 = fmul fast float %821, %821
  %825 = fsub fast float %822, %704
  %826 = fsub fast float %823, %705
  %827 = fsub fast float %824, %706
  %828 = fmul fast float %825, %729
  %829 = fmul fast float %826, %729
  %830 = fmul fast float %827, %729
  %831 = fadd fast float %828, %704
  %832 = fadd fast float %829, %705
  %833 = fadd fast float %830, %706
  %834 = fadd fast float %751, %715
  %835 = fsub fast float %834, %768
  %836 = call float @dx.op.unary.f32(i32 7, float %835)  ; Saturate(value)
  %837 = fsub fast float %836, %715
  %838 = fmul fast float %837, %729
  %839 = fadd fast float %838, %715
  br label %893

; <label>:840                                     ; preds = %728
  %841 = and i32 %731, 134217728
  %842 = icmp eq i32 %841, 0
  br i1 %842, label %877, label %843

; <label>:843                                     ; preds = %840
  %844 = call float @dx.op.unary.f32(i32 24, float %296)  ; Sqrt(value)
  %845 = call float @dx.op.unary.f32(i32 24, float %300)  ; Sqrt(value)
  %846 = call float @dx.op.unary.f32(i32 24, float %304)  ; Sqrt(value)
  %847 = fadd fast float %844, -5.000000e-01
  %848 = fadd fast float %845, -5.000000e-01
  %849 = fadd fast float %846, -5.000000e-01
  %850 = fmul fast float %847, %729
  %851 = fmul fast float %848, %729
  %852 = fmul fast float %849, %729
  %853 = fadd fast float %850, 5.000000e-01
  %854 = fadd fast float %851, 5.000000e-01
  %855 = fadd fast float %852, 5.000000e-01
  %856 = call float @dx.op.unary.f32(i32 24, float %704)  ; Sqrt(value)
  %857 = call float @dx.op.unary.f32(i32 24, float %705)  ; Sqrt(value)
  %858 = call float @dx.op.unary.f32(i32 24, float %706)  ; Sqrt(value)
  %859 = fmul fast float %853, 2.000000e+00
  %860 = fsub fast float 1.000000e+00, %859
  %861 = fmul fast float %860, %856
  %862 = fadd fast float %861, %859
  %863 = fmul fast float %862, %856
  %864 = fmul fast float %854, 2.000000e+00
  %865 = fsub fast float 1.000000e+00, %864
  %866 = fmul fast float %865, %857
  %867 = fadd fast float %866, %864
  %868 = fmul fast float %867, %857
  %869 = fmul fast float %855, 2.000000e+00
  %870 = fsub fast float 1.000000e+00, %869
  %871 = fmul fast float %870, %858
  %872 = fadd fast float %871, %869
  %873 = fmul fast float %872, %858
  %874 = fmul fast float %863, %863
  %875 = fmul fast float %868, %868
  %876 = fmul fast float %873, %873
  br label %893

; <label>:877                                     ; preds = %840
  %878 = fmul fast float %296, %296
  %879 = fmul fast float %300, %300
  %880 = fmul fast float %304, %304
  %881 = fadd fast float %878, -1.000000e+00
  %882 = fadd fast float %879, -1.000000e+00
  %883 = fadd fast float %880, -1.000000e+00
  %884 = fmul fast float %729, %881
  %885 = fmul fast float %729, %882
  %886 = fmul fast float %729, %883
  %887 = fadd fast float %884, 1.000000e+00
  %888 = fadd fast float %885, 1.000000e+00
  %889 = fadd fast float %886, 1.000000e+00
  %890 = fmul fast float %887, %704
  %891 = fmul fast float %888, %705
  %892 = fmul fast float %889, %706
  br label %893

; <label>:893                                     ; preds = %877, %843, %734, %689
  %894 = phi float [ %839, %734 ], [ %715, %843 ], [ %715, %877 ], [ 0x3FA23C0BE0000000, %689 ]
  %895 = phi float [ %831, %734 ], [ %874, %843 ], [ %890, %877 ], [ 1.000000e+00, %689 ]
  %896 = phi float [ %832, %734 ], [ %875, %843 ], [ %891, %877 ], [ 1.000000e+00, %689 ]
  %897 = phi float [ %833, %734 ], [ %876, %843 ], [ %892, %877 ], [ 1.000000e+00, %689 ]
  %898 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %899 = extractvalue %dx.types.CBufRet.i32 %898, 1
  %900 = and i32 %899, 1
  %901 = icmp ne i32 %900, 0
  %902 = add i32 %51, 356
  %903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %902, i32 undef)  ; BufferLoad(srv,index,wot)
  %904 = extractvalue %dx.types.ResRet.i32 %903, 0
  %905 = and i32 %904, 32
  %906 = icmp ne i32 %905, 0
  %907 = and i1 %901, %906
  %908 = select i1 %907, float 1.000000e+00, float %895
  %909 = select i1 %907, float 0x3FD3333340000000, float %896
  %910 = select i1 %907, float 0x3FD3333340000000, float %897
  %911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %912 = extractvalue %dx.types.ResRet.i32 %911, 0
  %913 = and i32 %912, 32
  %914 = icmp eq i32 %913, 0
  br i1 %914, label %987, label %915

; <label>:915                                     ; preds = %893
  %916 = add i32 %51, 92
  %917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %918 = extractvalue %dx.types.ResRet.i32 %917, 0
  %919 = add i32 %51, 392
  %920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %919, i32 undef)  ; BufferLoad(srv,index,wot)
  %921 = extractvalue %dx.types.ResRet.i32 %920, 0
  %922 = add i32 %921, 0
  %923 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %922, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %924 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %923, %dx.types.Handle %107, float %617, float %618, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %925 = extractvalue %dx.types.ResRet.f32 %924, 0
  %926 = extractvalue %dx.types.ResRet.f32 %924, 1
  %927 = extractvalue %dx.types.ResRet.f32 %924, 2
  %928 = extractvalue %dx.types.ResRet.f32 %924, 3
  %929 = and i32 %918, 255
  %930 = uitofp i32 %929 to float
  %931 = lshr i32 %918, 8
  %932 = and i32 %931, 255
  %933 = uitofp i32 %932 to float
  %934 = lshr i32 %918, 16
  %935 = and i32 %934, 255
  %936 = uitofp i32 %935 to float
  %937 = fmul fast float %936, 0x3F70101000000000
  %938 = fmul fast float %925, %930
  %939 = fadd fast float %938, %933
  %940 = fmul fast float %939, 0x3F70101000000000
  %941 = fadd fast float %926, -5.000000e-01
  %942 = fadd fast float %928, -5.000000e-01
  %943 = fmul fast float %941, %937
  %944 = fmul fast float %942, %937
  %945 = fadd fast float %943, 5.000000e-01
  %946 = fadd fast float %944, 5.000000e-01
  %947 = fmul fast float %945, 2.000000e+00
  %948 = fadd fast float %947, -1.000000e+00
  %949 = fmul fast float %946, 2.000000e+00
  %950 = fadd fast float %949, -1.000000e+00
  %951 = fadd fast float %948, %950
  %952 = fmul fast float %951, 5.000000e-01
  %953 = fsub fast float %948, %950
  %954 = fmul fast float %953, 5.000000e-01
  %955 = call float @dx.op.unary.f32(i32 6, float %952)  ; FAbs(value)
  %956 = fsub fast float 1.000000e+00, %955
  %957 = call float @dx.op.unary.f32(i32 6, float %954)  ; FAbs(value)
  %958 = fsub fast float %956, %957
  %959 = call float @dx.op.dot3.f32(i32 55, float %952, float %954, float %958, float %952, float %954, float %958)  ; Dot3(ax,ay,az,bx,by,bz)
  %960 = call float @dx.op.unary.f32(i32 25, float %959)  ; Rsqrt(value)
  %961 = fmul fast float %952, %960
  %962 = fmul fast float %954, %960
  %963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %964 = extractvalue %dx.types.ResRet.i32 %963, 0
  %965 = and i32 %964, 67108864
  %966 = icmp eq i32 %965, 0
  br i1 %966, label %983, label %967

; <label>:967                                     ; preds = %915
  %968 = add i32 %51, 280
  %969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %968, i32 undef)  ; BufferLoad(srv,index,wot)
  %970 = extractvalue %dx.types.ResRet.i32 %969, 0
  %971 = and i32 %970, 65535
  %972 = call float @dx.op.legacyF16ToF32(i32 131, i32 %971)  ; LegacyF16ToF32(value)
  %973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %974 = extractvalue %dx.types.ResRet.i32 %973, 0
  %975 = and i32 %974, 65535
  %976 = call float @dx.op.legacyF16ToF32(i32 131, i32 %975)  ; LegacyF16ToF32(value)
  %977 = lshr i32 %970, 16
  %978 = call float @dx.op.legacyF16ToF32(i32 131, i32 %977)  ; LegacyF16ToF32(value)
  %979 = fsub fast float %940, %978
  %980 = fmul fast float %979, %972
  %981 = fadd fast float %980, %976
  %982 = call float @dx.op.unary.f32(i32 7, float %981)  ; Saturate(value)
  br label %983

; <label>:983                                     ; preds = %967, %915
  %984 = phi float [ %982, %967 ], [ %940, %915 ]
  %985 = call float @dx.op.dot2.f32(i32 54, float %961, float %962, float %521, float %522)  ; Dot2(ax,ay,bx,by)
  %986 = call float @dx.op.dot2.f32(i32 54, float %961, float %962, float %523, float %524)  ; Dot2(ax,ay,bx,by)
  br label %987

; <label>:987                                     ; preds = %983, %893
  %988 = phi float [ %984, %983 ], [ 0x3FD6666660000000, %893 ]
  %989 = phi float [ %985, %983 ], [ 0.000000e+00, %893 ]
  %990 = phi float [ %986, %983 ], [ 0.000000e+00, %893 ]
  %991 = phi float [ %927, %983 ], [ 1.000000e+00, %893 ]
  %992 = add i32 %51, 160
  %993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %992, i32 undef)  ; BufferLoad(srv,index,wot)
  %994 = extractvalue %dx.types.ResRet.i32 %993, 0
  %995 = lshr i32 %994, 22
  %996 = shl nuw nsw i32 %995, 5
  %997 = call float @dx.op.legacyF16ToF32(i32 131, i32 %996)  ; LegacyF16ToF32(value)
  %998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %999 = extractvalue %dx.types.ResRet.i32 %998, 0
  %1000 = and i32 %999, 64
  %1001 = icmp eq i32 %1000, 0
  br i1 %1001, label %1035, label %1002

; <label>:1002                                    ; preds = %987
  %1003 = add i32 %51, 408
  %1004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1003, i32 undef)  ; BufferLoad(srv,index,wot)
  %1005 = extractvalue %dx.types.ResRet.i32 %1004, 0
  %1006 = add i32 %1005, 0
  %1007 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1006, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %1009 = extractvalue %dx.types.ResRet.i32 %1008, 0
  %1010 = and i32 %1009, 131072
  %1011 = icmp eq i32 %1010, 0
  %1012 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1007, %dx.types.Handle %107, float %617, float %618, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1013 = extractvalue %dx.types.ResRet.f32 %1012, 0
  %1014 = extractvalue %dx.types.ResRet.f32 %1012, 1
  %1015 = extractvalue %dx.types.ResRet.f32 %1012, 2
  %1016 = fmul fast float %1013, %284
  %1017 = fmul fast float %1014, %287
  %1018 = fmul fast float %1015, %290
  br i1 %1011, label %1025, label %1019

; <label>:1019                                    ; preds = %1002
  %1020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1021 = extractvalue %dx.types.CBufRet.f32 %1020, 0
  %1022 = fmul fast float %1021, %1016
  %1023 = fmul fast float %1021, %1017
  %1024 = fmul fast float %1021, %1018
  br label %1025

; <label>:1025                                    ; preds = %1019, %1002
  %1026 = phi float [ %1022, %1019 ], [ %1016, %1002 ]
  %1027 = phi float [ %1023, %1019 ], [ %1017, %1002 ]
  %1028 = phi float [ %1024, %1019 ], [ %1018, %1002 ]
  %1029 = fmul fast float %1026, %997
  %1030 = select i1 %264, float %1029, float %1026
  %1031 = call float @dx.op.dot3.f32(i32 55, float %1030, float %1027, float %1028, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1032 = select i1 %264, float 0.000000e+00, float %1026
  %1033 = select i1 %264, float %1031, float %1027
  %1034 = select i1 %264, float 0.000000e+00, float %1028
  br label %1035

; <label>:1035                                    ; preds = %1025, %987
  %1036 = phi float [ %1032, %1025 ], [ 0.000000e+00, %987 ]
  %1037 = phi float [ %1033, %1025 ], [ 0.000000e+00, %987 ]
  %1038 = phi float [ %1034, %1025 ], [ 0.000000e+00, %987 ]
  %1039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %1040 = extractvalue %dx.types.ResRet.i32 %1039, 0
  %1041 = and i32 %1040, 1024
  %1042 = icmp eq i32 %1041, 0
  br i1 %1042, label %1073, label %1043

; <label>:1043                                    ; preds = %1035
  %1044 = add i32 %51, 152
  %1045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1044, i32 undef)  ; BufferLoad(srv,index,wot)
  %1046 = extractvalue %dx.types.ResRet.i32 %1045, 0
  %1047 = and i32 %1046, 255
  %1048 = uitofp i32 %1047 to float
  %1049 = fmul fast float %1048, 0x3F70101020000000
  %1050 = lshr i32 %1046, 8
  %1051 = and i32 %1050, 255
  %1052 = uitofp i32 %1051 to float
  %1053 = fmul fast float %1052, 0x3F70101020000000
  %1054 = lshr i32 %1046, 16
  %1055 = and i32 %1054, 255
  %1056 = uitofp i32 %1055 to float
  %1057 = fmul fast float %1056, 0x3F70101020000000
  %1058 = fmul fast float %1049, %1049
  %1059 = fmul fast float %1053, %1053
  %1060 = fmul fast float %1057, %1057
  %1061 = add i32 %51, 476
  %1062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1063 = extractvalue %dx.types.ResRet.i32 %1062, 0
  %1064 = add i32 %1063, 0
  %1065 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1064, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1066 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1065, %dx.types.Handle %108, float %617, float %618, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1067 = extractvalue %dx.types.ResRet.f32 %1066, 0
  %1068 = extractvalue %dx.types.ResRet.f32 %1066, 1
  %1069 = extractvalue %dx.types.ResRet.f32 %1066, 2
  %1070 = fmul fast float %1058, %1067
  %1071 = fmul fast float %1059, %1068
  %1072 = fmul fast float %1060, %1069
  br label %1073

; <label>:1073                                    ; preds = %1043, %1035
  %1074 = phi float [ %1070, %1043 ], [ 0.000000e+00, %1035 ]
  %1075 = phi float [ %1071, %1043 ], [ 0.000000e+00, %1035 ]
  %1076 = phi float [ %1072, %1043 ], [ 0.000000e+00, %1035 ]
  %1077 = fcmp fast ogt float %1074, 0.000000e+00
  %1078 = fcmp fast ogt float %1075, 0.000000e+00
  %1079 = fcmp fast ogt float %1076, 0.000000e+00
  %1080 = call float @dx.op.unary.f32(i32 23, float %1074)  ; Log(value)
  %1081 = call float @dx.op.unary.f32(i32 23, float %1075)  ; Log(value)
  %1082 = call float @dx.op.unary.f32(i32 23, float %1076)  ; Log(value)
  %1083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %992, i32 undef)  ; BufferLoad(srv,index,wot)
  %1084 = extractvalue %dx.types.ResRet.i32 %1083, 0
  %1085 = lshr i32 %1084, 7
  %1086 = and i32 %1085, 32752
  %1087 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1086)  ; LegacyF16ToF32(value)
  %1088 = fmul fast float %1080, 0xBFE62E4300000000
  %1089 = fmul fast float %1088, %1087
  %1090 = fmul fast float %1081, 0xBFE62E4300000000
  %1091 = fmul fast float %1090, %1087
  %1092 = fmul fast float %1082, 0xBFE62E4300000000
  %1093 = fmul fast float %1092, %1087
  %1094 = select i1 %1077, float %1089, float 1.270000e+02
  %1095 = select i1 %1078, float %1091, float 1.270000e+02
  %1096 = select i1 %1079, float %1093, float 1.270000e+02
  %1097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %1098 = extractvalue %dx.types.ResRet.i32 %1097, 0
  %1099 = and i32 %1098, 10240
  %1100 = icmp eq i32 %1099, 0
  br i1 %1100, label %1145, label %1101

; <label>:1101                                    ; preds = %1073
  %1102 = add i32 %51, 492
  %1103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1102, i32 undef)  ; BufferLoad(srv,index,wot)
  %1104 = extractvalue %dx.types.ResRet.i32 %1103, 0
  %1105 = add i32 %1104, 0
  %1106 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1105, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1107 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1106, %dx.types.Handle %108, float %617, float %618, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1108 = extractvalue %dx.types.ResRet.f32 %1107, 1
  %1109 = extractvalue %dx.types.ResRet.f32 %1107, 3
  %1110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.i32 %1110, 0
  %1112 = and i32 %1111, 1048576
  %1113 = icmp ne i32 %1112, 0
  %1114 = and i32 %1111, 8192
  %1115 = icmp eq i32 %1114, 0
  br i1 %1115, label %1131, label %1116

; <label>:1116                                    ; preds = %1101
  %1117 = extractvalue %dx.types.ResRet.f32 %1107, 2
  %1118 = select i1 %1113, float %1117, float %1108
  %1119 = extractvalue %dx.types.ResRet.f32 %1107, 0
  %1120 = select i1 %1113, float %1119, float %1108
  %1121 = add i32 %51, 96
  %1122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1121, i32 undef)  ; BufferLoad(srv,index,wot)
  %1123 = extractvalue %dx.types.ResRet.i32 %1122, 0
  %1124 = lshr i32 %1123, 16
  %1125 = and i32 %1124, 255
  %1126 = uitofp i32 %1125 to float
  %1127 = fmul fast float %1126, 0x3F80101020000000
  %1128 = fmul fast float %1127, %1120
  %1129 = fmul fast float %1127, %1108
  %1130 = fmul fast float %1127, %1118
  br label %1131

; <label>:1131                                    ; preds = %1116, %1101
  %1132 = phi float [ %1128, %1116 ], [ 0.000000e+00, %1101 ]
  %1133 = phi float [ %1129, %1116 ], [ 0.000000e+00, %1101 ]
  %1134 = phi float [ %1130, %1116 ], [ 0.000000e+00, %1101 ]
  %1135 = and i32 %1111, 2048
  %1136 = icmp eq i32 %1135, 0
  br i1 %1136, label %1145, label %1137

; <label>:1137                                    ; preds = %1131
  %1138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %992, i32 undef)  ; BufferLoad(srv,index,wot)
  %1139 = extractvalue %dx.types.ResRet.i32 %1138, 0
  %1140 = shl i32 %1139, 4
  %1141 = and i32 %1140, 32752
  %1142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1141)  ; LegacyF16ToF32(value)
  %1143 = fmul fast float %1142, %1109
  %1144 = call float @dx.op.binary.f32(i32 35, float %1143, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1145

; <label>:1145                                    ; preds = %1137, %1131, %1073
  %1146 = phi float [ %1132, %1137 ], [ %1132, %1131 ], [ 0.000000e+00, %1073 ]
  %1147 = phi float [ %1133, %1137 ], [ %1133, %1131 ], [ 0.000000e+00, %1073 ]
  %1148 = phi float [ %1134, %1137 ], [ %1134, %1131 ], [ 0.000000e+00, %1073 ]
  %1149 = phi float [ %1144, %1137 ], [ 0x3F70101020000000, %1131 ], [ 0x3F70101020000000, %1073 ]
  %1150 = add i32 %51, 96
  %1151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1150, i32 undef)  ; BufferLoad(srv,index,wot)
  %1152 = extractvalue %dx.types.ResRet.i32 %1151, 0
  %1153 = and i32 %1152, 255
  %1154 = uitofp i32 %1153 to float
  %1155 = lshr i32 %1152, 8
  %1156 = and i32 %1155, 255
  %1157 = uitofp i32 %1156 to float
  %1158 = call float @dx.op.dot3.f32(i32 55, float %908, float %909, float %910, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1159 = fmul fast float %1157, %1158
  %1160 = fadd fast float %1159, %1154
  %1161 = fmul fast float %1160, 0x3F70101020000000
  %1162 = call float @dx.op.unary.f32(i32 7, float %1161)  ; Saturate(value)
  br label %1163

; <label>:1163                                    ; preds = %1145, %503
  %1164 = phi float [ 0.000000e+00, %503 ], [ %989, %1145 ]
  %1165 = phi float [ 0.000000e+00, %503 ], [ %990, %1145 ]
  %1166 = phi float [ 0.000000e+00, %503 ], [ %908, %1145 ]
  %1167 = phi float [ 0.000000e+00, %503 ], [ %909, %1145 ]
  %1168 = phi float [ 0.000000e+00, %503 ], [ %910, %1145 ]
  %1169 = phi float [ 0.000000e+00, %503 ], [ %1036, %1145 ]
  %1170 = phi float [ 0.000000e+00, %503 ], [ %1037, %1145 ]
  %1171 = phi float [ 0.000000e+00, %503 ], [ %1038, %1145 ]
  %1172 = phi float [ 0.000000e+00, %503 ], [ %1146, %1145 ]
  %1173 = phi float [ 0.000000e+00, %503 ], [ %1147, %1145 ]
  %1174 = phi float [ 0.000000e+00, %503 ], [ %1148, %1145 ]
  %1175 = phi float [ 0.000000e+00, %503 ], [ %1094, %1145 ]
  %1176 = phi float [ 0.000000e+00, %503 ], [ %1095, %1145 ]
  %1177 = phi float [ 0.000000e+00, %503 ], [ %1096, %1145 ]
  %1178 = phi float [ 0.000000e+00, %503 ], [ %894, %1145 ]
  %1179 = phi float [ 0.000000e+00, %503 ], [ %690, %1145 ]
  %1180 = phi float [ 0.000000e+00, %503 ], [ %988, %1145 ]
  %1181 = phi float [ 0.000000e+00, %503 ], [ %991, %1145 ]
  %1182 = phi float [ 0.000000e+00, %503 ], [ %1149, %1145 ]
  %1183 = phi float [ 0.000000e+00, %503 ], [ %1162, %1145 ]
  br i1 %451, label %2106, label %1184

; <label>:1184                                    ; preds = %1163
  %1185 = icmp ult i32 %509, 2
  %1186 = add i32 %51, 40
  %1187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1188 = extractvalue %dx.types.ResRet.i32 %1187, 0
  %1189 = add i32 %51, 44
  %1190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1189, i32 undef)  ; BufferLoad(srv,index,wot)
  %1191 = extractvalue %dx.types.ResRet.i32 %1190, 0
  %1192 = or i32 %1191, %1188
  %1193 = icmp eq i32 %1192, 0
  br i1 %1193, label %2106, label %1194

; <label>:1194                                    ; preds = %1184
  %1195 = and i32 %1188, 262144
  %1196 = icmp ne i32 %1195, 0
  %1197 = select i1 %1196, float %57, float 1.000000e+00
  %1198 = select i1 %1196, float %58, float 0.000000e+00
  %1199 = select i1 %1196, float %59, float 0.000000e+00
  %1200 = select i1 %1196, float %60, float 1.000000e+00
  %1201 = select i1 %1196, float %61, float %89
  %1202 = select i1 %1196, float %62, float %90
  %1203 = add i32 %51, 300
  %1204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1203, i32 undef)  ; BufferLoad(srv,index,wot)
  %1205 = extractvalue %dx.types.ResRet.i32 %1204, 0
  %1206 = lshr i32 %1205, 16
  %1207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1206)  ; LegacyF16ToF32(value)
  %1208 = fmul fast float %1207, 0x3F50624DE0000000
  %1209 = add i32 %51, 104
  %1210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1209, i32 undef)  ; BufferLoad(srv,index,wot)
  %1211 = extractvalue %dx.types.ResRet.i32 %1210, 0
  %1212 = lshr i32 %1211, 16
  %1213 = and i32 %1212, 255
  %1214 = lshr i32 %1211, 24
  %1215 = add i32 %51, 308
  %1216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1215, i32 undef)  ; BufferLoad(srv,index,wot)
  %1217 = extractvalue %dx.types.ResRet.i32 %1216, 0
  %1218 = and i32 %1217, 65535
  %1219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1218)  ; LegacyF16ToF32(value)
  %1220 = lshr i32 %1217, 16
  %1221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1220)  ; LegacyF16ToF32(value)
  %1222 = add i32 %51, 48
  %1223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1222, i32 undef)  ; BufferLoad(srv,index,wot)
  %1224 = extractvalue %dx.types.ResRet.i32 %1223, 0
  %1225 = lshr i32 %1224, 22
  %1226 = shl nuw nsw i32 %1225, 5
  %1227 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1226)  ; LegacyF16ToF32(value)
  %1228 = shl i32 %1224, 4
  %1229 = and i32 %1228, 32752
  %1230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1229)  ; LegacyF16ToF32(value)
  %1231 = lshr i32 %1224, 7
  %1232 = and i32 %1231, 32752
  %1233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1232)  ; LegacyF16ToF32(value)
  %1234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1235 = extractvalue %dx.types.CBufRet.f32 %1234, 3
  %1236 = fmul fast float %1235, 1.000000e+03
  %1237 = fmul fast float %361, %1236
  %1238 = call float @dx.op.unary.f32(i32 22, float %1237)  ; Frc(value)
  %1239 = fadd fast float %1238, %351
  %1240 = fmul fast float %362, %1236
  %1241 = call float @dx.op.unary.f32(i32 22, float %1240)  ; Frc(value)
  %1242 = fadd fast float %1241, %353
  %1243 = fmul fast float %1208, %1236
  %1244 = call float @dx.op.unary.f32(i32 22, float %1243)  ; Frc(value)
  %1245 = fmul fast float %1244, 0x401921FB60000000
  %1246 = fadd fast float %1245, %1227
  %1247 = call float @dx.op.unary.f32(i32 13, float %1246)  ; Sin(value)
  %1248 = call float @dx.op.unary.f32(i32 12, float %1246)  ; Cos(value)
  %1249 = fsub fast float -0.000000e+00, %1247
  %1250 = fadd fast float %1201, -5.000000e-01
  %1251 = fadd fast float %1202, -5.000000e-01
  %1252 = fmul fast float %1219, %1250
  %1253 = fmul fast float %1221, %1251
  %1254 = fadd fast float %1252, 5.000000e-01
  %1255 = fadd fast float %1253, 5.000000e-01
  %1256 = fmul fast float %1230, %1254
  %1257 = fmul fast float %1233, %1255
  %1258 = fmul fast float %1248, %1256
  %1259 = call float @dx.op.tertiary.f32(i32 46, float %1249, float %1257, float %1258)  ; FMad(a,b,c)
  %1260 = fmul fast float %1247, %1256
  %1261 = call float @dx.op.tertiary.f32(i32 46, float %1248, float %1257, float %1260)  ; FMad(a,b,c)
  %1262 = fadd fast float %1239, %1259
  %1263 = fadd fast float %1242, %1261
  %1264 = icmp ugt i32 %1213, 1
  %1265 = icmp ugt i32 %1211, 33554431
  %1266 = or i1 %1265, %1264
  br i1 %1266, label %1267, label %1292

; <label>:1267                                    ; preds = %1194
  %1268 = add i32 %51, 244
  %1269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.i32 %1269, 0
  %1271 = lshr i32 %1270, 16
  %1272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1271)  ; LegacyF16ToF32(value)
  %1273 = fmul fast float %1235, %1272
  %1274 = call float @dx.op.unary.f32(i32 22, float %1273)  ; Frc(value)
  %1275 = mul nuw nsw i32 %1213, %1214
  %1276 = uitofp i32 %1275 to float
  %1277 = fmul fast float %1274, %1276
  %1278 = call float @dx.op.unary.f32(i32 27, float %1277)  ; Round_ni(value)
  %1279 = fptoui float %1278 to i32
  %1280 = urem i32 %1279, %1213
  %1281 = udiv i32 %1279, %1214
  %1282 = call float @dx.op.unary.f32(i32 22, float %1262)  ; Frc(value)
  %1283 = call float @dx.op.unary.f32(i32 22, float %1263)  ; Frc(value)
  %1284 = uitofp i32 %1280 to float
  %1285 = uitofp i32 %1281 to float
  %1286 = fadd fast float %1282, %1284
  %1287 = fadd fast float %1283, %1285
  %1288 = uitofp i32 %1213 to float
  %1289 = uitofp i32 %1214 to float
  %1290 = fdiv fast float %1286, %1288
  %1291 = fdiv fast float %1287, %1289
  br label %1292

; <label>:1292                                    ; preds = %1267, %1194
  %1293 = phi float [ %1290, %1267 ], [ %1262, %1194 ]
  %1294 = phi float [ %1291, %1267 ], [ %1263, %1194 ]
  %1295 = and i32 %1188, 256
  %1296 = icmp eq i32 %1295, 0
  br i1 %1296, label %1343, label %1297

; <label>:1297                                    ; preds = %1292
  %1298 = add i32 %51, 444
  %1299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1298, i32 undef)  ; BufferLoad(srv,index,wot)
  %1300 = extractvalue %dx.types.ResRet.i32 %1299, 0
  %1301 = add i32 %1300, 0
  %1302 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1301, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1303 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1302, %dx.types.Handle %108, float %1293, float %1294, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1304 = extractvalue %dx.types.ResRet.f32 %1303, 0
  %1305 = add i32 %51, 116
  %1306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1305, i32 undef)  ; BufferLoad(srv,index,wot)
  %1307 = extractvalue %dx.types.ResRet.i32 %1306, 0
  %1308 = shl i32 %1307, 4
  %1309 = and i32 %1308, 32752
  %1310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1309)  ; LegacyF16ToF32(value)
  %1311 = lshr i32 %1307, 7
  %1312 = and i32 %1311, 32752
  %1313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1312)  ; LegacyF16ToF32(value)
  %1314 = fsub fast float 1.000000e+00, %506
  %1315 = call float @dx.op.binary.f32(i32 35, float %1314, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1316 = bitcast float %506 to i32
  %1317 = sitofp i32 %1316 to float
  %1318 = fadd fast float %1317, 0xC1CFBF8940000000
  %1319 = fmul fast float %1313, %1318
  %1320 = fadd fast float %1319, 0x41CFBF8940000000
  %1321 = fptosi float %1320 to i32
  %1322 = bitcast i32 %1321 to float
  %1323 = bitcast float %1315 to i32
  %1324 = sitofp i32 %1323 to float
  %1325 = fadd fast float %1324, 0xC1CFBF8940000000
  %1326 = fmul fast float %1325, %1313
  %1327 = fadd fast float %1326, 0x41CFBF8940000000
  %1328 = fptosi float %1327 to i32
  %1329 = bitcast i32 %1328 to float
  %1330 = fmul fast float %1322, %1310
  %1331 = fmul fast float %1329, %1310
  %1332 = fsub fast float %1315, %1330
  %1333 = fadd fast float %1331, %1315
  %1334 = call float @dx.op.unary.f32(i32 7, float %1332)  ; Saturate(value)
  %1335 = call float @dx.op.unary.f32(i32 7, float %1333)  ; Saturate(value)
  %1336 = fsub fast float %1304, %1334
  %1337 = fsub fast float %1335, %1334
  %1338 = bitcast float %1337 to i32
  %1339 = sub nsw i32 2129859010, %1338
  %1340 = bitcast i32 %1339 to float
  %1341 = fmul fast float %1340, %1336
  %1342 = call float @dx.op.unary.f32(i32 7, float %1341)  ; Saturate(value)
  br label %1343

; <label>:1343                                    ; preds = %1297, %1292
  %1344 = phi float [ %1342, %1297 ], [ %506, %1292 ]
  %1345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1346 = extractvalue %dx.types.ResRet.i32 %1345, 0
  %1347 = and i32 %1346, 128
  %1348 = icmp eq i32 %1347, 0
  br i1 %1348, label %1365, label %1349

; <label>:1349                                    ; preds = %1343
  %1350 = add i32 %51, 428
  %1351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1350, i32 undef)  ; BufferLoad(srv,index,wot)
  %1352 = extractvalue %dx.types.ResRet.i32 %1351, 0
  %1353 = add i32 %1352, 0
  %1354 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1353, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1355 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1354, %dx.types.Handle %108, float %1293, float %1294, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1356 = extractvalue %dx.types.ResRet.f32 %1355, 0
  %1357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1358 = extractvalue %dx.types.ResRet.i32 %1357, 0
  %1359 = and i32 %1358, 524288
  %1360 = icmp ne i32 %1359, 0
  %1361 = fcmp fast ogt float %1356, 0x3FE0101020000000
  %1362 = select i1 %1361, float 1.000000e+00, float 0.000000e+00
  %1363 = select i1 %1360, float %1362, float %1356
  %1364 = fmul fast float %1363, %1344
  br label %1365

; <label>:1365                                    ; preds = %1349, %1343
  %1366 = phi float [ %1364, %1349 ], [ %1344, %1343 ]
  %1367 = fcmp fast ult float %1366, 0x3F70101020000000
  br i1 %1367, label %2106, label %1368

; <label>:1368                                    ; preds = %1365
  %1369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1370 = extractvalue %dx.types.ResRet.i32 %1369, 0
  %1371 = and i32 %1370, 16
  %1372 = icmp eq i32 %1371, 0
  br i1 %1372, label %1571, label %1373

; <label>:1373                                    ; preds = %1368
  %1374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1209, i32 undef)  ; BufferLoad(srv,index,wot)
  %1375 = extractvalue %dx.types.ResRet.i32 %1374, 0
  %1376 = add i32 %51, 380
  %1377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1376, i32 undef)  ; BufferLoad(srv,index,wot)
  %1378 = extractvalue %dx.types.ResRet.i32 %1377, 0
  %1379 = add i32 %1378, 0
  %1380 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1379, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1381 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1380, %dx.types.Handle %107, float %1293, float %1294, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1382 = extractvalue %dx.types.ResRet.f32 %1381, 0
  %1383 = extractvalue %dx.types.ResRet.f32 %1381, 1
  %1384 = extractvalue %dx.types.ResRet.f32 %1381, 2
  %1385 = extractvalue %dx.types.ResRet.f32 %1381, 3
  %1386 = and i32 %1375, 255
  %1387 = uitofp i32 %1386 to float
  %1388 = lshr i32 %1375, 8
  %1389 = and i32 %1388, 255
  %1390 = uitofp i32 %1389 to float
  %1391 = fmul fast float %1385, %1387
  %1392 = fadd fast float %1391, %1390
  %1393 = fmul fast float %1392, 0x3F70101000000000
  %1394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1395 = extractvalue %dx.types.ResRet.i32 %1394, 0
  %1396 = and i32 %1395, 512
  %1397 = icmp eq i32 %1396, 0
  br i1 %1397, label %1406, label %1398

; <label>:1398                                    ; preds = %1373
  %1399 = add i32 %51, 464
  %1400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1399, i32 undef)  ; BufferLoad(srv,index,wot)
  %1401 = extractvalue %dx.types.ResRet.i32 %1400, 0
  %1402 = add i32 %1401, 0
  %1403 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1402, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1404 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1403, %dx.types.Handle %108, float %1293, float %1294, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1405 = extractvalue %dx.types.ResRet.f32 %1404, 0
  br label %1406

; <label>:1406                                    ; preds = %1398, %1373
  %1407 = phi float [ %1405, %1398 ], [ 1.000000e+00, %1373 ]
  %1408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1409 = extractvalue %dx.types.ResRet.i32 %1408, 0
  %1410 = and i32 %1409, 33554432
  %1411 = icmp eq i32 %1410, 0
  br i1 %1411, label %1518, label %1412

; <label>:1412                                    ; preds = %1406
  %1413 = add i32 %51, 240
  %1414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1413, i32 undef)  ; BufferLoad(srv,index,wot)
  %1415 = extractvalue %dx.types.ResRet.i32 %1414, 0
  %1416 = and i32 %1415, 65535
  %1417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1416)  ; LegacyF16ToF32(value)
  %1418 = lshr i32 %1415, 16
  %1419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1418)  ; LegacyF16ToF32(value)
  %1420 = add i32 %51, 244
  %1421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1420, i32 undef)  ; BufferLoad(srv,index,wot)
  %1422 = extractvalue %dx.types.ResRet.i32 %1421, 0
  %1423 = and i32 %1422, 65535
  %1424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1423)  ; LegacyF16ToF32(value)
  %1425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %1426 = extractvalue %dx.types.ResRet.i32 %1425, 0
  %1427 = lshr i32 %1426, 24
  %1428 = uitofp i32 %1427 to float
  %1429 = fmul fast float %1428, 0x3F70101020000000
  %1430 = and i32 %1426, 255
  %1431 = uitofp i32 %1430 to float
  %1432 = fmul fast float %1431, 0x3F70101020000000
  %1433 = lshr i32 %1426, 8
  %1434 = and i32 %1433, 255
  %1435 = uitofp i32 %1434 to float
  %1436 = fmul fast float %1435, 0x3F70101020000000
  %1437 = lshr i32 %1426, 16
  %1438 = and i32 %1437, 255
  %1439 = uitofp i32 %1438 to float
  %1440 = fmul fast float %1439, 0x3F70101020000000
  %1441 = add i32 %51, 236
  %1442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1441, i32 undef)  ; BufferLoad(srv,index,wot)
  %1443 = extractvalue %dx.types.ResRet.i32 %1442, 0
  %1444 = lshr i32 %1443, 24
  %1445 = uitofp i32 %1444 to float
  %1446 = fmul fast float %1445, 0x3F70101020000000
  %1447 = and i32 %1443, 255
  %1448 = uitofp i32 %1447 to float
  %1449 = fmul fast float %1448, 0x3F70101020000000
  %1450 = lshr i32 %1443, 8
  %1451 = and i32 %1450, 255
  %1452 = uitofp i32 %1451 to float
  %1453 = fmul fast float %1452, 0x3F70101020000000
  %1454 = lshr i32 %1443, 16
  %1455 = and i32 %1454, 255
  %1456 = uitofp i32 %1455 to float
  %1457 = fmul fast float %1456, 0x3F70101020000000
  %1458 = bitcast float %1382 to i32
  %1459 = ashr i32 %1458, 1
  %1460 = sub nsw i32 1597463174, %1459
  %1461 = bitcast i32 %1460 to float
  %1462 = fmul fast float %1382, 5.000000e-01
  %1463 = fmul fast float %1461, %1461
  %1464 = fmul fast float %1463, %1462
  %1465 = fsub fast float 1.500000e+00, %1464
  %1466 = fmul fast float %1461, %1382
  %1467 = fmul fast float %1466, %1465
  %1468 = bitcast float %1383 to i32
  %1469 = ashr i32 %1468, 1
  %1470 = sub nsw i32 1597463174, %1469
  %1471 = bitcast i32 %1470 to float
  %1472 = fmul fast float %1383, 5.000000e-01
  %1473 = fmul fast float %1471, %1471
  %1474 = fmul fast float %1473, %1472
  %1475 = fsub fast float 1.500000e+00, %1474
  %1476 = fmul fast float %1471, %1383
  %1477 = fmul fast float %1476, %1475
  %1478 = bitcast float %1384 to i32
  %1479 = ashr i32 %1478, 1
  %1480 = sub nsw i32 1597463174, %1479
  %1481 = bitcast i32 %1480 to float
  %1482 = fmul fast float %1384, 5.000000e-01
  %1483 = fmul fast float %1481, %1481
  %1484 = fmul fast float %1483, %1482
  %1485 = fsub fast float 1.500000e+00, %1484
  %1486 = fmul fast float %1481, %1384
  %1487 = fmul fast float %1486, %1485
  %1488 = fsub fast float %1467, %1449
  %1489 = fsub fast float %1477, %1453
  %1490 = fsub fast float %1487, %1457
  %1491 = fmul fast float %1488, %1417
  %1492 = fmul fast float %1489, %1419
  %1493 = fmul fast float %1490, %1424
  %1494 = fadd fast float %1491, %1432
  %1495 = fadd fast float %1492, %1436
  %1496 = fadd fast float %1493, %1440
  %1497 = call float @dx.op.unary.f32(i32 7, float %1494)  ; Saturate(value)
  %1498 = call float @dx.op.unary.f32(i32 7, float %1495)  ; Saturate(value)
  %1499 = call float @dx.op.unary.f32(i32 7, float %1496)  ; Saturate(value)
  %1500 = fmul fast float %1497, %1497
  %1501 = fmul fast float %1498, %1498
  %1502 = fmul fast float %1499, %1499
  %1503 = fsub fast float %1500, %1382
  %1504 = fsub fast float %1501, %1383
  %1505 = fsub fast float %1502, %1384
  %1506 = fmul fast float %1503, %1407
  %1507 = fmul fast float %1504, %1407
  %1508 = fmul fast float %1505, %1407
  %1509 = fadd fast float %1506, %1382
  %1510 = fadd fast float %1507, %1383
  %1511 = fadd fast float %1508, %1384
  %1512 = fadd fast float %1429, %1393
  %1513 = fsub fast float %1512, %1446
  %1514 = call float @dx.op.unary.f32(i32 7, float %1513)  ; Saturate(value)
  %1515 = fsub fast float %1514, %1393
  %1516 = fmul fast float %1515, %1407
  %1517 = fadd fast float %1516, %1393
  br label %1571

; <label>:1518                                    ; preds = %1406
  %1519 = and i32 %1409, 134217728
  %1520 = icmp eq i32 %1519, 0
  br i1 %1520, label %1555, label %1521

; <label>:1521                                    ; preds = %1518
  %1522 = call float @dx.op.unary.f32(i32 24, float %338)  ; Sqrt(value)
  %1523 = call float @dx.op.unary.f32(i32 24, float %342)  ; Sqrt(value)
  %1524 = call float @dx.op.unary.f32(i32 24, float %346)  ; Sqrt(value)
  %1525 = fadd fast float %1522, -5.000000e-01
  %1526 = fadd fast float %1523, -5.000000e-01
  %1527 = fadd fast float %1524, -5.000000e-01
  %1528 = fmul fast float %1525, %1407
  %1529 = fmul fast float %1526, %1407
  %1530 = fmul fast float %1527, %1407
  %1531 = fadd fast float %1528, 5.000000e-01
  %1532 = fadd fast float %1529, 5.000000e-01
  %1533 = fadd fast float %1530, 5.000000e-01
  %1534 = call float @dx.op.unary.f32(i32 24, float %1382)  ; Sqrt(value)
  %1535 = call float @dx.op.unary.f32(i32 24, float %1383)  ; Sqrt(value)
  %1536 = call float @dx.op.unary.f32(i32 24, float %1384)  ; Sqrt(value)
  %1537 = fmul fast float %1531, 2.000000e+00
  %1538 = fsub fast float 1.000000e+00, %1537
  %1539 = fmul fast float %1538, %1534
  %1540 = fadd fast float %1539, %1537
  %1541 = fmul fast float %1540, %1534
  %1542 = fmul fast float %1532, 2.000000e+00
  %1543 = fsub fast float 1.000000e+00, %1542
  %1544 = fmul fast float %1543, %1535
  %1545 = fadd fast float %1544, %1542
  %1546 = fmul fast float %1545, %1535
  %1547 = fmul fast float %1533, 2.000000e+00
  %1548 = fsub fast float 1.000000e+00, %1547
  %1549 = fmul fast float %1548, %1536
  %1550 = fadd fast float %1549, %1547
  %1551 = fmul fast float %1550, %1536
  %1552 = fmul fast float %1541, %1541
  %1553 = fmul fast float %1546, %1546
  %1554 = fmul fast float %1551, %1551
  br label %1571

; <label>:1555                                    ; preds = %1518
  %1556 = fmul fast float %338, %338
  %1557 = fmul fast float %342, %342
  %1558 = fmul fast float %346, %346
  %1559 = fadd fast float %1556, -1.000000e+00
  %1560 = fadd fast float %1557, -1.000000e+00
  %1561 = fadd fast float %1558, -1.000000e+00
  %1562 = fmul fast float %1407, %1559
  %1563 = fmul fast float %1407, %1560
  %1564 = fmul fast float %1407, %1561
  %1565 = fadd fast float %1562, 1.000000e+00
  %1566 = fadd fast float %1563, 1.000000e+00
  %1567 = fadd fast float %1564, 1.000000e+00
  %1568 = fmul fast float %1565, %1382
  %1569 = fmul fast float %1566, %1383
  %1570 = fmul fast float %1567, %1384
  br label %1571

; <label>:1571                                    ; preds = %1555, %1521, %1412, %1368
  %1572 = phi float [ %1517, %1412 ], [ %1393, %1521 ], [ %1393, %1555 ], [ 0x3FA23C0BE0000000, %1368 ]
  %1573 = phi float [ %1509, %1412 ], [ %1552, %1521 ], [ %1568, %1555 ], [ 1.000000e+00, %1368 ]
  %1574 = phi float [ %1510, %1412 ], [ %1553, %1521 ], [ %1569, %1555 ], [ 1.000000e+00, %1368 ]
  %1575 = phi float [ %1511, %1412 ], [ %1554, %1521 ], [ %1570, %1555 ], [ 1.000000e+00, %1368 ]
  %1576 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1577 = extractvalue %dx.types.CBufRet.i32 %1576, 1
  %1578 = and i32 %1577, 1
  %1579 = icmp ne i32 %1578, 0
  %1580 = add i32 %51, 356
  %1581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1580, i32 undef)  ; BufferLoad(srv,index,wot)
  %1582 = extractvalue %dx.types.ResRet.i32 %1581, 0
  %1583 = and i32 %1582, 32
  %1584 = icmp ne i32 %1583, 0
  %1585 = and i1 %1579, %1584
  %1586 = select i1 %1585, float 1.000000e+00, float %1573
  %1587 = select i1 %1585, float 0x3FD3333340000000, float %1574
  %1588 = select i1 %1585, float 0x3FD3333340000000, float %1575
  %1589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1590 = extractvalue %dx.types.ResRet.i32 %1589, 0
  %1591 = and i32 %1590, 32
  %1592 = icmp eq i32 %1591, 0
  br i1 %1592, label %1665, label %1593

; <label>:1593                                    ; preds = %1571
  %1594 = add i32 %51, 108
  %1595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1594, i32 undef)  ; BufferLoad(srv,index,wot)
  %1596 = extractvalue %dx.types.ResRet.i32 %1595, 0
  %1597 = add i32 %51, 396
  %1598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1597, i32 undef)  ; BufferLoad(srv,index,wot)
  %1599 = extractvalue %dx.types.ResRet.i32 %1598, 0
  %1600 = add i32 %1599, 0
  %1601 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1600, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1602 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1601, %dx.types.Handle %107, float %1293, float %1294, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1603 = extractvalue %dx.types.ResRet.f32 %1602, 0
  %1604 = extractvalue %dx.types.ResRet.f32 %1602, 1
  %1605 = extractvalue %dx.types.ResRet.f32 %1602, 2
  %1606 = extractvalue %dx.types.ResRet.f32 %1602, 3
  %1607 = and i32 %1596, 255
  %1608 = uitofp i32 %1607 to float
  %1609 = lshr i32 %1596, 8
  %1610 = and i32 %1609, 255
  %1611 = uitofp i32 %1610 to float
  %1612 = lshr i32 %1596, 16
  %1613 = and i32 %1612, 255
  %1614 = uitofp i32 %1613 to float
  %1615 = fmul fast float %1614, 0x3F70101000000000
  %1616 = fmul fast float %1603, %1608
  %1617 = fadd fast float %1616, %1611
  %1618 = fmul fast float %1617, 0x3F70101000000000
  %1619 = fadd fast float %1604, -5.000000e-01
  %1620 = fadd fast float %1606, -5.000000e-01
  %1621 = fmul fast float %1619, %1615
  %1622 = fmul fast float %1620, %1615
  %1623 = fadd fast float %1621, 5.000000e-01
  %1624 = fadd fast float %1622, 5.000000e-01
  %1625 = fmul fast float %1623, 2.000000e+00
  %1626 = fadd fast float %1625, -1.000000e+00
  %1627 = fmul fast float %1624, 2.000000e+00
  %1628 = fadd fast float %1627, -1.000000e+00
  %1629 = fadd fast float %1626, %1628
  %1630 = fmul fast float %1629, 5.000000e-01
  %1631 = fsub fast float %1626, %1628
  %1632 = fmul fast float %1631, 5.000000e-01
  %1633 = call float @dx.op.unary.f32(i32 6, float %1630)  ; FAbs(value)
  %1634 = fsub fast float 1.000000e+00, %1633
  %1635 = call float @dx.op.unary.f32(i32 6, float %1632)  ; FAbs(value)
  %1636 = fsub fast float %1634, %1635
  %1637 = call float @dx.op.dot3.f32(i32 55, float %1630, float %1632, float %1636, float %1630, float %1632, float %1636)  ; Dot3(ax,ay,az,bx,by,bz)
  %1638 = call float @dx.op.unary.f32(i32 25, float %1637)  ; Rsqrt(value)
  %1639 = fmul fast float %1630, %1638
  %1640 = fmul fast float %1632, %1638
  %1641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1642 = extractvalue %dx.types.ResRet.i32 %1641, 0
  %1643 = and i32 %1642, 67108864
  %1644 = icmp eq i32 %1643, 0
  br i1 %1644, label %1661, label %1645

; <label>:1645                                    ; preds = %1593
  %1646 = add i32 %51, 296
  %1647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1646, i32 undef)  ; BufferLoad(srv,index,wot)
  %1648 = extractvalue %dx.types.ResRet.i32 %1647, 0
  %1649 = and i32 %1648, 65535
  %1650 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1649)  ; LegacyF16ToF32(value)
  %1651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1203, i32 undef)  ; BufferLoad(srv,index,wot)
  %1652 = extractvalue %dx.types.ResRet.i32 %1651, 0
  %1653 = and i32 %1652, 65535
  %1654 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1653)  ; LegacyF16ToF32(value)
  %1655 = lshr i32 %1648, 16
  %1656 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1655)  ; LegacyF16ToF32(value)
  %1657 = fsub fast float %1618, %1656
  %1658 = fmul fast float %1657, %1650
  %1659 = fadd fast float %1658, %1654
  %1660 = call float @dx.op.unary.f32(i32 7, float %1659)  ; Saturate(value)
  br label %1661

; <label>:1661                                    ; preds = %1645, %1593
  %1662 = phi float [ %1660, %1645 ], [ %1618, %1593 ]
  %1663 = call float @dx.op.dot2.f32(i32 54, float %1639, float %1640, float %1197, float %1198)  ; Dot2(ax,ay,bx,by)
  %1664 = call float @dx.op.dot2.f32(i32 54, float %1639, float %1640, float %1199, float %1200)  ; Dot2(ax,ay,bx,by)
  br label %1665

; <label>:1665                                    ; preds = %1661, %1571
  %1666 = phi float [ %1662, %1661 ], [ 0x3FD6666660000000, %1571 ]
  %1667 = phi float [ %1663, %1661 ], [ 0.000000e+00, %1571 ]
  %1668 = phi float [ %1664, %1661 ], [ 0.000000e+00, %1571 ]
  %1669 = phi float [ %1605, %1661 ], [ 1.000000e+00, %1571 ]
  %1670 = add i32 %51, 176
  %1671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1670, i32 undef)  ; BufferLoad(srv,index,wot)
  %1672 = extractvalue %dx.types.ResRet.i32 %1671, 0
  %1673 = lshr i32 %1672, 22
  %1674 = shl nuw nsw i32 %1673, 5
  %1675 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1674)  ; LegacyF16ToF32(value)
  %1676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1677 = extractvalue %dx.types.ResRet.i32 %1676, 0
  %1678 = and i32 %1677, 64
  %1679 = icmp eq i32 %1678, 0
  br i1 %1679, label %1713, label %1680

; <label>:1680                                    ; preds = %1665
  %1681 = add i32 %51, 412
  %1682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1681, i32 undef)  ; BufferLoad(srv,index,wot)
  %1683 = extractvalue %dx.types.ResRet.i32 %1682, 0
  %1684 = add i32 %1683, 0
  %1685 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1684, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1687 = extractvalue %dx.types.ResRet.i32 %1686, 0
  %1688 = and i32 %1687, 131072
  %1689 = icmp eq i32 %1688, 0
  %1690 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1685, %dx.types.Handle %107, float %1293, float %1294, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1691 = extractvalue %dx.types.ResRet.f32 %1690, 0
  %1692 = extractvalue %dx.types.ResRet.f32 %1690, 1
  %1693 = extractvalue %dx.types.ResRet.f32 %1690, 2
  %1694 = fmul fast float %1691, %326
  %1695 = fmul fast float %1692, %329
  %1696 = fmul fast float %1693, %332
  br i1 %1689, label %1703, label %1697

; <label>:1697                                    ; preds = %1680
  %1698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1699 = extractvalue %dx.types.CBufRet.f32 %1698, 0
  %1700 = fmul fast float %1699, %1694
  %1701 = fmul fast float %1699, %1695
  %1702 = fmul fast float %1699, %1696
  br label %1703

; <label>:1703                                    ; preds = %1697, %1680
  %1704 = phi float [ %1700, %1697 ], [ %1694, %1680 ]
  %1705 = phi float [ %1701, %1697 ], [ %1695, %1680 ]
  %1706 = phi float [ %1702, %1697 ], [ %1696, %1680 ]
  %1707 = fmul fast float %1704, %1675
  %1708 = select i1 %264, float %1707, float %1704
  %1709 = call float @dx.op.dot3.f32(i32 55, float %1708, float %1705, float %1706, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1710 = select i1 %264, float 0.000000e+00, float %1704
  %1711 = select i1 %264, float %1709, float %1705
  %1712 = select i1 %264, float 0.000000e+00, float %1706
  br label %1713

; <label>:1713                                    ; preds = %1703, %1665
  %1714 = phi float [ %1710, %1703 ], [ 0.000000e+00, %1665 ]
  %1715 = phi float [ %1711, %1703 ], [ 0.000000e+00, %1665 ]
  %1716 = phi float [ %1712, %1703 ], [ 0.000000e+00, %1665 ]
  %1717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1718 = extractvalue %dx.types.ResRet.i32 %1717, 0
  %1719 = and i32 %1718, 1024
  %1720 = icmp eq i32 %1719, 0
  br i1 %1720, label %1751, label %1721

; <label>:1721                                    ; preds = %1713
  %1722 = add i32 %51, 168
  %1723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1722, i32 undef)  ; BufferLoad(srv,index,wot)
  %1724 = extractvalue %dx.types.ResRet.i32 %1723, 0
  %1725 = and i32 %1724, 255
  %1726 = uitofp i32 %1725 to float
  %1727 = fmul fast float %1726, 0x3F70101020000000
  %1728 = lshr i32 %1724, 8
  %1729 = and i32 %1728, 255
  %1730 = uitofp i32 %1729 to float
  %1731 = fmul fast float %1730, 0x3F70101020000000
  %1732 = lshr i32 %1724, 16
  %1733 = and i32 %1732, 255
  %1734 = uitofp i32 %1733 to float
  %1735 = fmul fast float %1734, 0x3F70101020000000
  %1736 = fmul fast float %1727, %1727
  %1737 = fmul fast float %1731, %1731
  %1738 = fmul fast float %1735, %1735
  %1739 = add i32 %51, 480
  %1740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1739, i32 undef)  ; BufferLoad(srv,index,wot)
  %1741 = extractvalue %dx.types.ResRet.i32 %1740, 0
  %1742 = add i32 %1741, 0
  %1743 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1742, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1744 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1743, %dx.types.Handle %108, float %1293, float %1294, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1745 = extractvalue %dx.types.ResRet.f32 %1744, 0
  %1746 = extractvalue %dx.types.ResRet.f32 %1744, 1
  %1747 = extractvalue %dx.types.ResRet.f32 %1744, 2
  %1748 = fmul fast float %1736, %1745
  %1749 = fmul fast float %1737, %1746
  %1750 = fmul fast float %1738, %1747
  br label %1751

; <label>:1751                                    ; preds = %1721, %1713
  %1752 = phi float [ %1748, %1721 ], [ 0.000000e+00, %1713 ]
  %1753 = phi float [ %1749, %1721 ], [ 0.000000e+00, %1713 ]
  %1754 = phi float [ %1750, %1721 ], [ 0.000000e+00, %1713 ]
  %1755 = fcmp fast ogt float %1752, 0.000000e+00
  %1756 = fcmp fast ogt float %1753, 0.000000e+00
  %1757 = fcmp fast ogt float %1754, 0.000000e+00
  %1758 = call float @dx.op.unary.f32(i32 23, float %1752)  ; Log(value)
  %1759 = call float @dx.op.unary.f32(i32 23, float %1753)  ; Log(value)
  %1760 = call float @dx.op.unary.f32(i32 23, float %1754)  ; Log(value)
  %1761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1670, i32 undef)  ; BufferLoad(srv,index,wot)
  %1762 = extractvalue %dx.types.ResRet.i32 %1761, 0
  %1763 = lshr i32 %1762, 7
  %1764 = and i32 %1763, 32752
  %1765 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1764)  ; LegacyF16ToF32(value)
  %1766 = fmul fast float %1758, 0xBFE62E4300000000
  %1767 = fmul fast float %1766, %1765
  %1768 = fmul fast float %1759, 0xBFE62E4300000000
  %1769 = fmul fast float %1768, %1765
  %1770 = fmul fast float %1760, 0xBFE62E4300000000
  %1771 = fmul fast float %1770, %1765
  %1772 = select i1 %1755, float %1767, float 1.270000e+02
  %1773 = select i1 %1756, float %1769, float 1.270000e+02
  %1774 = select i1 %1757, float %1771, float 1.270000e+02
  %1775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1776 = extractvalue %dx.types.ResRet.i32 %1775, 0
  %1777 = and i32 %1776, 10240
  %1778 = icmp eq i32 %1777, 0
  br i1 %1778, label %1823, label %1779

; <label>:1779                                    ; preds = %1751
  %1780 = add i32 %51, 496
  %1781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1780, i32 undef)  ; BufferLoad(srv,index,wot)
  %1782 = extractvalue %dx.types.ResRet.i32 %1781, 0
  %1783 = add i32 %1782, 0
  %1784 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1783, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1785 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1784, %dx.types.Handle %108, float %1293, float %1294, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1786 = extractvalue %dx.types.ResRet.f32 %1785, 1
  %1787 = extractvalue %dx.types.ResRet.f32 %1785, 3
  %1788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1789 = extractvalue %dx.types.ResRet.i32 %1788, 0
  %1790 = and i32 %1789, 1048576
  %1791 = icmp ne i32 %1790, 0
  %1792 = and i32 %1789, 8192
  %1793 = icmp eq i32 %1792, 0
  br i1 %1793, label %1809, label %1794

; <label>:1794                                    ; preds = %1779
  %1795 = extractvalue %dx.types.ResRet.f32 %1785, 2
  %1796 = select i1 %1791, float %1795, float %1786
  %1797 = extractvalue %dx.types.ResRet.f32 %1785, 0
  %1798 = select i1 %1791, float %1797, float %1786
  %1799 = add i32 %51, 112
  %1800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1799, i32 undef)  ; BufferLoad(srv,index,wot)
  %1801 = extractvalue %dx.types.ResRet.i32 %1800, 0
  %1802 = lshr i32 %1801, 16
  %1803 = and i32 %1802, 255
  %1804 = uitofp i32 %1803 to float
  %1805 = fmul fast float %1804, 0x3F80101020000000
  %1806 = fmul fast float %1805, %1798
  %1807 = fmul fast float %1805, %1786
  %1808 = fmul fast float %1805, %1796
  br label %1809

; <label>:1809                                    ; preds = %1794, %1779
  %1810 = phi float [ %1806, %1794 ], [ 0.000000e+00, %1779 ]
  %1811 = phi float [ %1807, %1794 ], [ 0.000000e+00, %1779 ]
  %1812 = phi float [ %1808, %1794 ], [ 0.000000e+00, %1779 ]
  %1813 = and i32 %1789, 2048
  %1814 = icmp eq i32 %1813, 0
  br i1 %1814, label %1823, label %1815

; <label>:1815                                    ; preds = %1809
  %1816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1670, i32 undef)  ; BufferLoad(srv,index,wot)
  %1817 = extractvalue %dx.types.ResRet.i32 %1816, 0
  %1818 = shl i32 %1817, 4
  %1819 = and i32 %1818, 32752
  %1820 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1819)  ; LegacyF16ToF32(value)
  %1821 = fmul fast float %1820, %1787
  %1822 = call float @dx.op.binary.f32(i32 35, float %1821, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1823

; <label>:1823                                    ; preds = %1815, %1809, %1751
  %1824 = phi float [ %1810, %1815 ], [ %1810, %1809 ], [ 0.000000e+00, %1751 ]
  %1825 = phi float [ %1811, %1815 ], [ %1811, %1809 ], [ 0.000000e+00, %1751 ]
  %1826 = phi float [ %1812, %1815 ], [ %1812, %1809 ], [ 0.000000e+00, %1751 ]
  %1827 = phi float [ %1822, %1815 ], [ 0x3F70101020000000, %1809 ], [ 0x3F70101020000000, %1751 ]
  %1828 = add i32 %51, 112
  %1829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1828, i32 undef)  ; BufferLoad(srv,index,wot)
  %1830 = extractvalue %dx.types.ResRet.i32 %1829, 0
  %1831 = and i32 %1830, 255
  %1832 = uitofp i32 %1831 to float
  %1833 = lshr i32 %1830, 8
  %1834 = and i32 %1833, 255
  %1835 = uitofp i32 %1834 to float
  %1836 = call float @dx.op.dot3.f32(i32 55, float %1586, float %1587, float %1588, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1837 = fmul fast float %1835, %1836
  %1838 = fadd fast float %1837, %1832
  %1839 = fmul fast float %1838, 0x3F70101020000000
  %1840 = call float @dx.op.unary.f32(i32 7, float %1839)  ; Saturate(value)
  br i1 %1185, label %1841, label %1876

; <label>:1841                                    ; preds = %1823
  %1842 = fmul fast float %1827, 2.000000e+00
  %1843 = fcmp fast olt float %1772, 1.270000e+02
  %1844 = fcmp fast olt float %1773, 1.270000e+02
  %1845 = fcmp fast olt float %1774, 1.270000e+02
  %1846 = fmul fast float %1772, 0xBFF7154760000000
  %1847 = fmul fast float %1846, %1842
  %1848 = fmul fast float %1773, 0xBFF7154760000000
  %1849 = fmul fast float %1848, %1842
  %1850 = fmul fast float %1774, 0xBFF7154760000000
  %1851 = fmul fast float %1850, %1842
  %1852 = call float @dx.op.unary.f32(i32 21, float %1847)  ; Exp(value)
  %1853 = call float @dx.op.unary.f32(i32 21, float %1849)  ; Exp(value)
  %1854 = call float @dx.op.unary.f32(i32 21, float %1851)  ; Exp(value)
  %1855 = call float @dx.op.unary.f32(i32 7, float %1852)  ; Saturate(value)
  %1856 = call float @dx.op.unary.f32(i32 7, float %1853)  ; Saturate(value)
  %1857 = call float @dx.op.unary.f32(i32 7, float %1854)  ; Saturate(value)
  %1858 = fadd fast float %1855, -1.000000e+00
  %1859 = select i1 %1843, float %1858, float -1.000000e+00
  %1860 = fadd fast float %1856, -1.000000e+00
  %1861 = select i1 %1844, float %1860, float -1.000000e+00
  %1862 = fadd fast float %1857, -1.000000e+00
  %1863 = select i1 %1845, float %1862, float -1.000000e+00
  %1864 = fmul fast float %1859, %1366
  %1865 = fmul fast float %1861, %1366
  %1866 = fmul fast float %1863, %1366
  %1867 = fadd fast float %1864, 1.000000e+00
  %1868 = fadd fast float %1865, 1.000000e+00
  %1869 = fadd fast float %1866, 1.000000e+00
  %1870 = fmul fast float %1867, %1166
  %1871 = fmul fast float %1868, %1167
  %1872 = fmul fast float %1869, %1168
  %1873 = fmul fast float %1867, %1169
  %1874 = fmul fast float %1868, %1170
  %1875 = fmul fast float %1869, %1171
  br label %1876

; <label>:1876                                    ; preds = %1841, %1823
  %1877 = phi float [ %1870, %1841 ], [ %1166, %1823 ]
  %1878 = phi float [ %1871, %1841 ], [ %1167, %1823 ]
  %1879 = phi float [ %1872, %1841 ], [ %1168, %1823 ]
  %1880 = phi float [ %1873, %1841 ], [ %1169, %1823 ]
  %1881 = phi float [ %1874, %1841 ], [ %1170, %1823 ]
  %1882 = phi float [ %1875, %1841 ], [ %1171, %1823 ]
  %1883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1884 = extractvalue %dx.types.ResRet.i32 %1883, 0
  %1885 = and i32 %1884, 3
  %1886 = icmp eq i32 %1885, 3
  br i1 %1886, label %1965, label %1887

; <label>:1887                                    ; preds = %1876
  %1888 = and i32 %1884, 16
  %1889 = icmp ne i32 %1888, 0
  %1890 = select i1 %1889, float %1366, float 0.000000e+00
  %1891 = icmp eq i32 %1885, 0
  br i1 %1891, label %1892, label %1920

; <label>:1892                                    ; preds = %1887
  %1893 = and i32 %1884, 64
  %1894 = icmp ne i32 %1893, 0
  %1895 = select i1 %1894, float %1366, float 0.000000e+00
  %1896 = fsub fast float %1586, %1877
  %1897 = fsub fast float %1587, %1878
  %1898 = fsub fast float %1588, %1879
  %1899 = fmul fast float %1890, %1896
  %1900 = fmul fast float %1890, %1897
  %1901 = fmul fast float %1890, %1898
  %1902 = fadd fast float %1899, %1877
  %1903 = fadd fast float %1900, %1878
  %1904 = fadd fast float %1901, %1879
  %1905 = fsub fast float %1572, %1178
  %1906 = fmul fast float %1890, %1905
  %1907 = fadd fast float %1906, %1178
  %1908 = fsub fast float %1714, %1880
  %1909 = fsub fast float %1715, %1881
  %1910 = fsub fast float %1716, %1882
  %1911 = fmul fast float %1895, %1908
  %1912 = fmul fast float %1895, %1909
  %1913 = fmul fast float %1895, %1910
  %1914 = fadd fast float %1911, %1880
  %1915 = fadd fast float %1912, %1881
  %1916 = fadd fast float %1913, %1882
  %1917 = fsub fast float %1840, %1183
  %1918 = fmul fast float %1890, %1917
  %1919 = fadd fast float %1918, %1183
  br label %1965

; <label>:1920                                    ; preds = %1887
  %1921 = icmp eq i32 %1885, 1
  br i1 %1921, label %1922, label %1935

; <label>:1922                                    ; preds = %1920
  %1923 = fadd fast float %1586, -1.000000e+00
  %1924 = fadd fast float %1587, -1.000000e+00
  %1925 = fadd fast float %1588, -1.000000e+00
  %1926 = fmul fast float %1890, %1923
  %1927 = fmul fast float %1890, %1924
  %1928 = fmul fast float %1890, %1925
  %1929 = fadd fast float %1926, 1.000000e+00
  %1930 = fadd fast float %1927, 1.000000e+00
  %1931 = fadd fast float %1928, 1.000000e+00
  %1932 = fmul fast float %1929, %1877
  %1933 = fmul fast float %1930, %1878
  %1934 = fmul fast float %1931, %1879
  br label %1965

; <label>:1935                                    ; preds = %1920
  %1936 = icmp eq i32 %1885, 2
  br i1 %1936, label %1937, label %1965

; <label>:1937                                    ; preds = %1935
  %1938 = call float @dx.op.unary.f32(i32 24, float %1586)  ; Sqrt(value)
  %1939 = call float @dx.op.unary.f32(i32 24, float %1587)  ; Sqrt(value)
  %1940 = call float @dx.op.unary.f32(i32 24, float %1588)  ; Sqrt(value)
  %1941 = fadd fast float %1938, -5.000000e-01
  %1942 = fadd fast float %1939, -5.000000e-01
  %1943 = fadd fast float %1940, -5.000000e-01
  %1944 = fmul fast float %1941, %1890
  %1945 = fmul fast float %1942, %1890
  %1946 = fmul fast float %1943, %1890
  %1947 = fadd fast float %1944, 5.000000e-01
  %1948 = fadd fast float %1945, 5.000000e-01
  %1949 = fadd fast float %1946, 5.000000e-01
  %1950 = fmul fast float %1947, 2.000000e+00
  %1951 = fsub fast float 1.000000e+00, %1950
  %1952 = fmul fast float %1951, %1877
  %1953 = fadd fast float %1952, %1950
  %1954 = fmul fast float %1953, %1877
  %1955 = fmul fast float %1948, 2.000000e+00
  %1956 = fsub fast float 1.000000e+00, %1955
  %1957 = fmul fast float %1956, %1878
  %1958 = fadd fast float %1957, %1955
  %1959 = fmul fast float %1958, %1878
  %1960 = fmul fast float %1949, 2.000000e+00
  %1961 = fsub fast float 1.000000e+00, %1960
  %1962 = fmul fast float %1961, %1879
  %1963 = fadd fast float %1962, %1960
  %1964 = fmul fast float %1963, %1879
  br label %1965

; <label>:1965                                    ; preds = %1937, %1935, %1922, %1892, %1876
  %1966 = phi float [ %1877, %1876 ], [ %1954, %1937 ], [ %1877, %1935 ], [ %1932, %1922 ], [ %1902, %1892 ]
  %1967 = phi float [ %1878, %1876 ], [ %1959, %1937 ], [ %1878, %1935 ], [ %1933, %1922 ], [ %1903, %1892 ]
  %1968 = phi float [ %1879, %1876 ], [ %1964, %1937 ], [ %1879, %1935 ], [ %1934, %1922 ], [ %1904, %1892 ]
  %1969 = phi float [ %1880, %1876 ], [ %1880, %1937 ], [ %1880, %1935 ], [ %1880, %1922 ], [ %1914, %1892 ]
  %1970 = phi float [ %1881, %1876 ], [ %1881, %1937 ], [ %1881, %1935 ], [ %1881, %1922 ], [ %1915, %1892 ]
  %1971 = phi float [ %1882, %1876 ], [ %1882, %1937 ], [ %1882, %1935 ], [ %1882, %1922 ], [ %1916, %1892 ]
  %1972 = phi float [ %1178, %1876 ], [ %1178, %1937 ], [ %1178, %1935 ], [ %1178, %1922 ], [ %1907, %1892 ]
  %1973 = phi float [ %1183, %1876 ], [ %1183, %1937 ], [ %1183, %1935 ], [ %1183, %1922 ], [ %1919, %1892 ]
  %1974 = and i32 %1884, 12
  %1975 = icmp eq i32 %1974, 12
  br i1 %1975, label %2106, label %1976

; <label>:1976                                    ; preds = %1965
  %1977 = and i32 %1884, 2097184
  %1978 = icmp eq i32 %1977, 2097184
  %1979 = select i1 %1978, float %1366, float 0.000000e+00
  %1980 = and i32 %1884, 4194336
  %1981 = icmp eq i32 %1980, 4194336
  %1982 = select i1 %1981, float %1366, float 0.000000e+00
  %1983 = and i32 %1884, 8388640
  %1984 = icmp eq i32 %1983, 8388640
  %1985 = select i1 %1984, float %1366, float 0.000000e+00
  %1986 = and i32 %1884, 1024
  %1987 = icmp ne i32 %1986, 0
  %1988 = select i1 %1987, float %1366, float 0.000000e+00
  %1989 = and i32 %1884, 2048
  %1990 = icmp ne i32 %1989, 0
  %1991 = select i1 %1990, float %1366, float 0.000000e+00
  %1992 = and i32 %1884, 8192
  %1993 = icmp ne i32 %1992, 0
  %1994 = select i1 %1993, float %1366, float 0.000000e+00
  %1995 = icmp eq i32 %1974, 0
  br i1 %1995, label %1996, label %2030

; <label>:1996                                    ; preds = %1976
  %1997 = fsub fast float %1667, %1164
  %1998 = fsub fast float %1668, %1165
  %1999 = fmul fast float %1979, %1997
  %2000 = fmul fast float %1979, %1998
  %2001 = fadd fast float %1999, %1164
  %2002 = fadd fast float %2000, %1165
  %2003 = fsub fast float %1669, %1181
  %2004 = fmul fast float %1982, %2003
  %2005 = fadd fast float %2004, %1181
  %2006 = fsub fast float %1666, %1180
  %2007 = fmul fast float %1985, %2006
  %2008 = fadd fast float %2007, %1180
  %2009 = fsub fast float %1772, %1175
  %2010 = fsub fast float %1773, %1176
  %2011 = fsub fast float %1774, %1177
  %2012 = fmul fast float %1988, %2009
  %2013 = fmul fast float %1988, %2010
  %2014 = fmul fast float %1988, %2011
  %2015 = fadd fast float %2012, %1175
  %2016 = fadd fast float %2013, %1176
  %2017 = fadd fast float %2014, %1177
  %2018 = fsub fast float %1827, %1182
  %2019 = fmul fast float %1991, %2018
  %2020 = fadd fast float %2019, %1182
  %2021 = fsub fast float %1824, %1172
  %2022 = fsub fast float %1825, %1173
  %2023 = fsub fast float %1826, %1174
  %2024 = fmul fast float %1994, %2021
  %2025 = fmul fast float %1994, %2022
  %2026 = fmul fast float %1994, %2023
  %2027 = fadd fast float %2024, %1172
  %2028 = fadd fast float %2025, %1173
  %2029 = fadd fast float %2026, %1174
  br label %2106

; <label>:2030                                    ; preds = %1976
  %2031 = icmp eq i32 %1974, 4
  br i1 %2031, label %2032, label %2078

; <label>:2032                                    ; preds = %2030
  %2033 = fmul fast float %1979, %1667
  %2034 = fmul fast float %1979, %1668
  %2035 = fadd fast float %2033, %1164
  %2036 = fadd fast float %2034, %1165
  %2037 = call float @dx.op.binary.f32(i32 36, float %1181, float %1669)  ; FMin(a,b)
  %2038 = fsub fast float %2037, %1181
  %2039 = fmul fast float %2038, %1982
  %2040 = fadd fast float %2039, %1181
  %2041 = fadd fast float %1666, %1180
  %2042 = fmul fast float %2041, 0x3FF337FAE0000000
  %2043 = fmul fast float %1180, %1180
  %2044 = fmul fast float %1666, %1666
  %2045 = fadd fast float %2044, %2043
  %2046 = fmul fast float %2045, 0x3FE5152B00000000
  %2047 = fmul fast float %1180, 0xBFCC1F85E0000000
  %2048 = fmul fast float %2047, %1666
  %2049 = fadd fast float %2048, 0xBFE1363700000000
  %2050 = fadd fast float %2049, %2042
  %2051 = fsub fast float %2050, %2046
  %2052 = fmul fast float %2041, 0x3FBA6F0D00000000
  %2053 = fmul fast float %2045, 0x3FD0432880000000
  %2054 = fmul fast float %1180, 0xBFEF110800000000
  %2055 = fmul fast float %2054, %1666
  %2056 = fadd fast float %2055, 1.000000e+00
  %2057 = fsub fast float %2056, %2052
  %2058 = fadd fast float %2057, %2053
  %2059 = fdiv fast float %2051, %2058
  %2060 = call float @dx.op.unary.f32(i32 7, float %2059)  ; Saturate(value)
  %2061 = fsub fast float %2060, %1180
  %2062 = fmul fast float %2061, %1985
  %2063 = fadd fast float %2062, %1180
  %2064 = fmul fast float %1988, %1772
  %2065 = fmul fast float %1988, %1773
  %2066 = fmul fast float %1988, %1774
  %2067 = fadd fast float %2064, %1175
  %2068 = fadd fast float %2065, %1176
  %2069 = fadd fast float %2066, %1177
  %2070 = fmul fast float %1991, %1827
  %2071 = fadd fast float %2070, %1182
  %2072 = fmul fast float %1994, %1824
  %2073 = fmul fast float %1994, %1825
  %2074 = fmul fast float %1994, %1826
  %2075 = fadd fast float %2072, %1172
  %2076 = fadd fast float %2073, %1173
  %2077 = fadd fast float %2074, %1174
  br label %2106

; <label>:2078                                    ; preds = %2030
  %2079 = icmp eq i32 %1974, 8
  br i1 %2079, label %2080, label %2106

; <label>:2080                                    ; preds = %2078
  %2081 = fmul fast float %1979, %1667
  %2082 = fmul fast float %1979, %1668
  %2083 = fadd fast float %2081, %1164
  %2084 = fadd fast float %2082, %1165
  %2085 = call float @dx.op.binary.f32(i32 36, float %1181, float %1669)  ; FMin(a,b)
  %2086 = fsub fast float %2085, %1181
  %2087 = fmul fast float %2086, %1982
  %2088 = fadd fast float %2087, %1181
  %2089 = fsub fast float %1666, %1180
  %2090 = fmul fast float %1985, %2089
  %2091 = fadd fast float %2090, %1180
  %2092 = fmul fast float %1988, %1772
  %2093 = fmul fast float %1988, %1773
  %2094 = fmul fast float %1988, %1774
  %2095 = fadd fast float %2092, %1175
  %2096 = fadd fast float %2093, %1176
  %2097 = fadd fast float %2094, %1177
  %2098 = fmul fast float %1991, %1827
  %2099 = fadd fast float %2098, %1182
  %2100 = fmul fast float %1994, %1824
  %2101 = fmul fast float %1994, %1825
  %2102 = fmul fast float %1994, %1826
  %2103 = fadd fast float %2100, %1172
  %2104 = fadd fast float %2101, %1173
  %2105 = fadd fast float %2102, %1174
  br label %2106

; <label>:2106                                    ; preds = %2080, %2078, %2032, %1996, %1965, %1365, %1184, %1163
  %2107 = phi float [ %1164, %1965 ], [ %1164, %1365 ], [ %1164, %1163 ], [ %2083, %2080 ], [ %1164, %2078 ], [ %2035, %2032 ], [ %2001, %1996 ], [ %1164, %1184 ]
  %2108 = phi float [ %1165, %1965 ], [ %1165, %1365 ], [ %1165, %1163 ], [ %2084, %2080 ], [ %1165, %2078 ], [ %2036, %2032 ], [ %2002, %1996 ], [ %1165, %1184 ]
  %2109 = phi float [ %1966, %1965 ], [ %1166, %1365 ], [ %1166, %1163 ], [ %1966, %2080 ], [ %1966, %2078 ], [ %1966, %2032 ], [ %1966, %1996 ], [ %1166, %1184 ]
  %2110 = phi float [ %1967, %1965 ], [ %1167, %1365 ], [ %1167, %1163 ], [ %1967, %2080 ], [ %1967, %2078 ], [ %1967, %2032 ], [ %1967, %1996 ], [ %1167, %1184 ]
  %2111 = phi float [ %1968, %1965 ], [ %1168, %1365 ], [ %1168, %1163 ], [ %1968, %2080 ], [ %1968, %2078 ], [ %1968, %2032 ], [ %1968, %1996 ], [ %1168, %1184 ]
  %2112 = phi float [ %1969, %1965 ], [ %1169, %1365 ], [ %1169, %1163 ], [ %1969, %2080 ], [ %1969, %2078 ], [ %1969, %2032 ], [ %1969, %1996 ], [ %1169, %1184 ]
  %2113 = phi float [ %1970, %1965 ], [ %1170, %1365 ], [ %1170, %1163 ], [ %1970, %2080 ], [ %1970, %2078 ], [ %1970, %2032 ], [ %1970, %1996 ], [ %1170, %1184 ]
  %2114 = phi float [ %1971, %1965 ], [ %1171, %1365 ], [ %1171, %1163 ], [ %1971, %2080 ], [ %1971, %2078 ], [ %1971, %2032 ], [ %1971, %1996 ], [ %1171, %1184 ]
  %2115 = phi float [ %1172, %1965 ], [ %1172, %1365 ], [ %1172, %1163 ], [ %2103, %2080 ], [ %1172, %2078 ], [ %2075, %2032 ], [ %2027, %1996 ], [ %1172, %1184 ]
  %2116 = phi float [ %1173, %1965 ], [ %1173, %1365 ], [ %1173, %1163 ], [ %2104, %2080 ], [ %1173, %2078 ], [ %2076, %2032 ], [ %2028, %1996 ], [ %1173, %1184 ]
  %2117 = phi float [ %1174, %1965 ], [ %1174, %1365 ], [ %1174, %1163 ], [ %2105, %2080 ], [ %1174, %2078 ], [ %2077, %2032 ], [ %2029, %1996 ], [ %1174, %1184 ]
  %2118 = phi float [ %1175, %1965 ], [ %1175, %1365 ], [ %1175, %1163 ], [ %2095, %2080 ], [ %1175, %2078 ], [ %2067, %2032 ], [ %2015, %1996 ], [ %1175, %1184 ]
  %2119 = phi float [ %1176, %1965 ], [ %1176, %1365 ], [ %1176, %1163 ], [ %2096, %2080 ], [ %1176, %2078 ], [ %2068, %2032 ], [ %2016, %1996 ], [ %1176, %1184 ]
  %2120 = phi float [ %1177, %1965 ], [ %1177, %1365 ], [ %1177, %1163 ], [ %2097, %2080 ], [ %1177, %2078 ], [ %2069, %2032 ], [ %2017, %1996 ], [ %1177, %1184 ]
  %2121 = phi float [ %1972, %1965 ], [ %1178, %1365 ], [ %1178, %1163 ], [ %1972, %2080 ], [ %1972, %2078 ], [ %1972, %2032 ], [ %1972, %1996 ], [ %1178, %1184 ]
  %2122 = phi float [ %1180, %1965 ], [ %1180, %1365 ], [ %1180, %1163 ], [ %2091, %2080 ], [ %1180, %2078 ], [ %2063, %2032 ], [ %2008, %1996 ], [ %1180, %1184 ]
  %2123 = phi float [ %1181, %1965 ], [ %1181, %1365 ], [ %1181, %1163 ], [ %2088, %2080 ], [ %1181, %2078 ], [ %2040, %2032 ], [ %2005, %1996 ], [ %1181, %1184 ]
  %2124 = phi float [ %1182, %1965 ], [ %1182, %1365 ], [ %1182, %1163 ], [ %2099, %2080 ], [ %1182, %2078 ], [ %2071, %2032 ], [ %2020, %1996 ], [ %1182, %1184 ]
  %2125 = phi float [ %1973, %1965 ], [ %1183, %1365 ], [ %1183, %1163 ], [ %1973, %2080 ], [ %1973, %2078 ], [ %1973, %2032 ], [ %1973, %1996 ], [ %1183, %1184 ]
  br i1 %453, label %3048, label %2126

; <label>:2126                                    ; preds = %2106
  %2127 = icmp ult i32 %509, 3
  %2128 = add i32 %51, 56
  %2129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2128, i32 undef)  ; BufferLoad(srv,index,wot)
  %2130 = extractvalue %dx.types.ResRet.i32 %2129, 0
  %2131 = add i32 %51, 60
  %2132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2131, i32 undef)  ; BufferLoad(srv,index,wot)
  %2133 = extractvalue %dx.types.ResRet.i32 %2132, 0
  %2134 = or i32 %2133, %2130
  %2135 = icmp eq i32 %2134, 0
  br i1 %2135, label %3048, label %2136

; <label>:2136                                    ; preds = %2126
  %2137 = and i32 %2130, 262144
  %2138 = icmp ne i32 %2137, 0
  %2139 = select i1 %2138, float %57, float 1.000000e+00
  %2140 = select i1 %2138, float %58, float 0.000000e+00
  %2141 = select i1 %2138, float %59, float 0.000000e+00
  %2142 = select i1 %2138, float %60, float 1.000000e+00
  %2143 = select i1 %2138, float %61, float %89
  %2144 = select i1 %2138, float %62, float %90
  %2145 = add i32 %51, 316
  %2146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2145, i32 undef)  ; BufferLoad(srv,index,wot)
  %2147 = extractvalue %dx.types.ResRet.i32 %2146, 0
  %2148 = lshr i32 %2147, 16
  %2149 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2148)  ; LegacyF16ToF32(value)
  %2150 = fmul fast float %2149, 0x3F50624DE0000000
  %2151 = add i32 %51, 120
  %2152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2151, i32 undef)  ; BufferLoad(srv,index,wot)
  %2153 = extractvalue %dx.types.ResRet.i32 %2152, 0
  %2154 = lshr i32 %2153, 16
  %2155 = and i32 %2154, 255
  %2156 = lshr i32 %2153, 24
  %2157 = add i32 %51, 324
  %2158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2157, i32 undef)  ; BufferLoad(srv,index,wot)
  %2159 = extractvalue %dx.types.ResRet.i32 %2158, 0
  %2160 = and i32 %2159, 65535
  %2161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2160)  ; LegacyF16ToF32(value)
  %2162 = lshr i32 %2159, 16
  %2163 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2162)  ; LegacyF16ToF32(value)
  %2164 = add i32 %51, 64
  %2165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2164, i32 undef)  ; BufferLoad(srv,index,wot)
  %2166 = extractvalue %dx.types.ResRet.i32 %2165, 0
  %2167 = lshr i32 %2166, 22
  %2168 = shl nuw nsw i32 %2167, 5
  %2169 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2168)  ; LegacyF16ToF32(value)
  %2170 = shl i32 %2166, 4
  %2171 = and i32 %2170, 32752
  %2172 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2171)  ; LegacyF16ToF32(value)
  %2173 = lshr i32 %2166, 7
  %2174 = and i32 %2173, 32752
  %2175 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2174)  ; LegacyF16ToF32(value)
  %2176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2177 = extractvalue %dx.types.CBufRet.f32 %2176, 3
  %2178 = fmul fast float %2177, 1.000000e+03
  %2179 = fmul fast float %403, %2178
  %2180 = call float @dx.op.unary.f32(i32 22, float %2179)  ; Frc(value)
  %2181 = fadd fast float %2180, %393
  %2182 = fmul fast float %404, %2178
  %2183 = call float @dx.op.unary.f32(i32 22, float %2182)  ; Frc(value)
  %2184 = fadd fast float %2183, %395
  %2185 = fmul fast float %2150, %2178
  %2186 = call float @dx.op.unary.f32(i32 22, float %2185)  ; Frc(value)
  %2187 = fmul fast float %2186, 0x401921FB60000000
  %2188 = fadd fast float %2187, %2169
  %2189 = call float @dx.op.unary.f32(i32 13, float %2188)  ; Sin(value)
  %2190 = call float @dx.op.unary.f32(i32 12, float %2188)  ; Cos(value)
  %2191 = fsub fast float -0.000000e+00, %2189
  %2192 = fadd fast float %2143, -5.000000e-01
  %2193 = fadd fast float %2144, -5.000000e-01
  %2194 = fmul fast float %2161, %2192
  %2195 = fmul fast float %2163, %2193
  %2196 = fadd fast float %2194, 5.000000e-01
  %2197 = fadd fast float %2195, 5.000000e-01
  %2198 = fmul fast float %2172, %2196
  %2199 = fmul fast float %2175, %2197
  %2200 = fmul fast float %2190, %2198
  %2201 = call float @dx.op.tertiary.f32(i32 46, float %2191, float %2199, float %2200)  ; FMad(a,b,c)
  %2202 = fmul fast float %2189, %2198
  %2203 = call float @dx.op.tertiary.f32(i32 46, float %2190, float %2199, float %2202)  ; FMad(a,b,c)
  %2204 = fadd fast float %2181, %2201
  %2205 = fadd fast float %2184, %2203
  %2206 = icmp ugt i32 %2155, 1
  %2207 = icmp ugt i32 %2153, 33554431
  %2208 = or i1 %2207, %2206
  br i1 %2208, label %2209, label %2234

; <label>:2209                                    ; preds = %2136
  %2210 = add i32 %51, 260
  %2211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2210, i32 undef)  ; BufferLoad(srv,index,wot)
  %2212 = extractvalue %dx.types.ResRet.i32 %2211, 0
  %2213 = lshr i32 %2212, 16
  %2214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2213)  ; LegacyF16ToF32(value)
  %2215 = fmul fast float %2177, %2214
  %2216 = call float @dx.op.unary.f32(i32 22, float %2215)  ; Frc(value)
  %2217 = mul nuw nsw i32 %2155, %2156
  %2218 = uitofp i32 %2217 to float
  %2219 = fmul fast float %2216, %2218
  %2220 = call float @dx.op.unary.f32(i32 27, float %2219)  ; Round_ni(value)
  %2221 = fptoui float %2220 to i32
  %2222 = urem i32 %2221, %2155
  %2223 = udiv i32 %2221, %2156
  %2224 = call float @dx.op.unary.f32(i32 22, float %2204)  ; Frc(value)
  %2225 = call float @dx.op.unary.f32(i32 22, float %2205)  ; Frc(value)
  %2226 = uitofp i32 %2222 to float
  %2227 = uitofp i32 %2223 to float
  %2228 = fadd fast float %2224, %2226
  %2229 = fadd fast float %2225, %2227
  %2230 = uitofp i32 %2155 to float
  %2231 = uitofp i32 %2156 to float
  %2232 = fdiv fast float %2228, %2230
  %2233 = fdiv fast float %2229, %2231
  br label %2234

; <label>:2234                                    ; preds = %2209, %2136
  %2235 = phi float [ %2232, %2209 ], [ %2204, %2136 ]
  %2236 = phi float [ %2233, %2209 ], [ %2205, %2136 ]
  %2237 = and i32 %2130, 256
  %2238 = icmp eq i32 %2237, 0
  br i1 %2238, label %2285, label %2239

; <label>:2239                                    ; preds = %2234
  %2240 = add i32 %51, 448
  %2241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2240, i32 undef)  ; BufferLoad(srv,index,wot)
  %2242 = extractvalue %dx.types.ResRet.i32 %2241, 0
  %2243 = add i32 %2242, 0
  %2244 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2243, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2245 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2244, %dx.types.Handle %108, float %2235, float %2236, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2246 = extractvalue %dx.types.ResRet.f32 %2245, 0
  %2247 = add i32 %51, 132
  %2248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2247, i32 undef)  ; BufferLoad(srv,index,wot)
  %2249 = extractvalue %dx.types.ResRet.i32 %2248, 0
  %2250 = shl i32 %2249, 4
  %2251 = and i32 %2250, 32752
  %2252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2251)  ; LegacyF16ToF32(value)
  %2253 = lshr i32 %2249, 7
  %2254 = and i32 %2253, 32752
  %2255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2254)  ; LegacyF16ToF32(value)
  %2256 = fsub fast float 1.000000e+00, %505
  %2257 = call float @dx.op.binary.f32(i32 35, float %2256, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2258 = bitcast float %505 to i32
  %2259 = sitofp i32 %2258 to float
  %2260 = fadd fast float %2259, 0xC1CFBF8940000000
  %2261 = fmul fast float %2255, %2260
  %2262 = fadd fast float %2261, 0x41CFBF8940000000
  %2263 = fptosi float %2262 to i32
  %2264 = bitcast i32 %2263 to float
  %2265 = bitcast float %2257 to i32
  %2266 = sitofp i32 %2265 to float
  %2267 = fadd fast float %2266, 0xC1CFBF8940000000
  %2268 = fmul fast float %2267, %2255
  %2269 = fadd fast float %2268, 0x41CFBF8940000000
  %2270 = fptosi float %2269 to i32
  %2271 = bitcast i32 %2270 to float
  %2272 = fmul fast float %2264, %2252
  %2273 = fmul fast float %2271, %2252
  %2274 = fsub fast float %2257, %2272
  %2275 = fadd fast float %2273, %2257
  %2276 = call float @dx.op.unary.f32(i32 7, float %2274)  ; Saturate(value)
  %2277 = call float @dx.op.unary.f32(i32 7, float %2275)  ; Saturate(value)
  %2278 = fsub fast float %2246, %2276
  %2279 = fsub fast float %2277, %2276
  %2280 = bitcast float %2279 to i32
  %2281 = sub nsw i32 2129859010, %2280
  %2282 = bitcast i32 %2281 to float
  %2283 = fmul fast float %2282, %2278
  %2284 = call float @dx.op.unary.f32(i32 7, float %2283)  ; Saturate(value)
  br label %2285

; <label>:2285                                    ; preds = %2239, %2234
  %2286 = phi float [ %2284, %2239 ], [ %505, %2234 ]
  %2287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2128, i32 undef)  ; BufferLoad(srv,index,wot)
  %2288 = extractvalue %dx.types.ResRet.i32 %2287, 0
  %2289 = and i32 %2288, 128
  %2290 = icmp eq i32 %2289, 0
  br i1 %2290, label %2307, label %2291

; <label>:2291                                    ; preds = %2285
  %2292 = add i32 %51, 432
  %2293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2292, i32 undef)  ; BufferLoad(srv,index,wot)
  %2294 = extractvalue %dx.types.ResRet.i32 %2293, 0
  %2295 = add i32 %2294, 0
  %2296 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2295, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2297 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2296, %dx.types.Handle %108, float %2235, float %2236, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2298 = extractvalue %dx.types.ResRet.f32 %2297, 0
  %2299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2128, i32 undef)  ; BufferLoad(srv,index,wot)
  %2300 = extractvalue %dx.types.ResRet.i32 %2299, 0
  %2301 = and i32 %2300, 524288
  %2302 = icmp ne i32 %2301, 0
  %2303 = fcmp fast ogt float %2298, 0x3FE0101020000000
  %2304 = select i1 %2303, float 1.000000e+00, float 0.000000e+00
  %2305 = select i1 %2302, float %2304, float %2298
  %2306 = fmul fast float %2305, %2286
  br label %2307

; <label>:2307                                    ; preds = %2291, %2285
  %2308 = phi float [ %2306, %2291 ], [ %2286, %2285 ]
  %2309 = fcmp fast ult float %2308, 0x3F70101020000000
  br i1 %2309, label %3048, label %2310

; <label>:2310                                    ; preds = %2307
  %2311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2128, i32 undef)  ; BufferLoad(srv,index,wot)
  %2312 = extractvalue %dx.types.ResRet.i32 %2311, 0
  %2313 = and i32 %2312, 16
  %2314 = icmp eq i32 %2313, 0
  br i1 %2314, label %2513, label %2315

; <label>:2315                                    ; preds = %2310
  %2316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2151, i32 undef)  ; BufferLoad(srv,index,wot)
  %2317 = extractvalue %dx.types.ResRet.i32 %2316, 0
  %2318 = add i32 %51, 384
  %2319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2318, i32 undef)  ; BufferLoad(srv,index,wot)
  %2320 = extractvalue %dx.types.ResRet.i32 %2319, 0
  %2321 = add i32 %2320, 0
  %2322 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2321, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2323 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2322, %dx.types.Handle %107, float %2235, float %2236, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2324 = extractvalue %dx.types.ResRet.f32 %2323, 0
  %2325 = extractvalue %dx.types.ResRet.f32 %2323, 1
  %2326 = extractvalue %dx.types.ResRet.f32 %2323, 2
  %2327 = extractvalue %dx.types.ResRet.f32 %2323, 3
  %2328 = and i32 %2317, 255
  %2329 = uitofp i32 %2328 to float
  %2330 = lshr i32 %2317, 8
  %2331 = and i32 %2330, 255
  %2332 = uitofp i32 %2331 to float
  %2333 = fmul fast float %2327, %2329
  %2334 = fadd fast float %2333, %2332
  %2335 = fmul fast float %2334, 0x3F70101000000000
  %2336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2128, i32 undef)  ; BufferLoad(srv,index,wot)
  %2337 = extractvalue %dx.types.ResRet.i32 %2336, 0
  %2338 = and i32 %2337, 512
  %2339 = icmp eq i32 %2338, 0
  br i1 %2339, label %2348, label %2340

; <label>:2340                                    ; preds = %2315
  %2341 = add i32 %51, 468
  %2342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2341, i32 undef)  ; BufferLoad(srv,index,wot)
  %2343 = extractvalue %dx.types.ResRet.i32 %2342, 0
  %2344 = add i32 %2343, 0
  %2345 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2344, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2346 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2345, %dx.types.Handle %108, float %2235, float %2236, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2347 = extractvalue %dx.types.ResRet.f32 %2346, 0
  br label %2348

; <label>:2348                                    ; preds = %2340, %2315
  %2349 = phi float [ %2347, %2340 ], [ 1.000000e+00, %2315 ]
  %2350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2128, i32 undef)  ; BufferLoad(srv,index,wot)
  %2351 = extractvalue %dx.types.ResRet.i32 %2350, 0
  %2352 = and i32 %2351, 33554432
  %2353 = icmp eq i32 %2352, 0
  br i1 %2353, label %2460, label %2354

; <label>:2354                                    ; preds = %2348
  %2355 = add i32 %51, 256
  %2356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2355, i32 undef)  ; BufferLoad(srv,index,wot)
  %2357 = extractvalue %dx.types.ResRet.i32 %2356, 0
  %2358 = and i32 %2357, 65535
  %2359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2358)  ; LegacyF16ToF32(value)
  %2360 = lshr i32 %2357, 16
  %2361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2360)  ; LegacyF16ToF32(value)
  %2362 = add i32 %51, 260
  %2363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2362, i32 undef)  ; BufferLoad(srv,index,wot)
  %2364 = extractvalue %dx.types.ResRet.i32 %2363, 0
  %2365 = and i32 %2364, 65535
  %2366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2365)  ; LegacyF16ToF32(value)
  %2367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %2368 = extractvalue %dx.types.ResRet.i32 %2367, 0
  %2369 = lshr i32 %2368, 24
  %2370 = uitofp i32 %2369 to float
  %2371 = fmul fast float %2370, 0x3F70101020000000
  %2372 = and i32 %2368, 255
  %2373 = uitofp i32 %2372 to float
  %2374 = fmul fast float %2373, 0x3F70101020000000
  %2375 = lshr i32 %2368, 8
  %2376 = and i32 %2375, 255
  %2377 = uitofp i32 %2376 to float
  %2378 = fmul fast float %2377, 0x3F70101020000000
  %2379 = lshr i32 %2368, 16
  %2380 = and i32 %2379, 255
  %2381 = uitofp i32 %2380 to float
  %2382 = fmul fast float %2381, 0x3F70101020000000
  %2383 = add i32 %51, 252
  %2384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2383, i32 undef)  ; BufferLoad(srv,index,wot)
  %2385 = extractvalue %dx.types.ResRet.i32 %2384, 0
  %2386 = lshr i32 %2385, 24
  %2387 = uitofp i32 %2386 to float
  %2388 = fmul fast float %2387, 0x3F70101020000000
  %2389 = and i32 %2385, 255
  %2390 = uitofp i32 %2389 to float
  %2391 = fmul fast float %2390, 0x3F70101020000000
  %2392 = lshr i32 %2385, 8
  %2393 = and i32 %2392, 255
  %2394 = uitofp i32 %2393 to float
  %2395 = fmul fast float %2394, 0x3F70101020000000
  %2396 = lshr i32 %2385, 16
  %2397 = and i32 %2396, 255
  %2398 = uitofp i32 %2397 to float
  %2399 = fmul fast float %2398, 0x3F70101020000000
  %2400 = bitcast float %2324 to i32
  %2401 = ashr i32 %2400, 1
  %2402 = sub nsw i32 1597463174, %2401
  %2403 = bitcast i32 %2402 to float
  %2404 = fmul fast float %2324, 5.000000e-01
  %2405 = fmul fast float %2403, %2403
  %2406 = fmul fast float %2405, %2404
  %2407 = fsub fast float 1.500000e+00, %2406
  %2408 = fmul fast float %2403, %2324
  %2409 = fmul fast float %2408, %2407
  %2410 = bitcast float %2325 to i32
  %2411 = ashr i32 %2410, 1
  %2412 = sub nsw i32 1597463174, %2411
  %2413 = bitcast i32 %2412 to float
  %2414 = fmul fast float %2325, 5.000000e-01
  %2415 = fmul fast float %2413, %2413
  %2416 = fmul fast float %2415, %2414
  %2417 = fsub fast float 1.500000e+00, %2416
  %2418 = fmul fast float %2413, %2325
  %2419 = fmul fast float %2418, %2417
  %2420 = bitcast float %2326 to i32
  %2421 = ashr i32 %2420, 1
  %2422 = sub nsw i32 1597463174, %2421
  %2423 = bitcast i32 %2422 to float
  %2424 = fmul fast float %2326, 5.000000e-01
  %2425 = fmul fast float %2423, %2423
  %2426 = fmul fast float %2425, %2424
  %2427 = fsub fast float 1.500000e+00, %2426
  %2428 = fmul fast float %2423, %2326
  %2429 = fmul fast float %2428, %2427
  %2430 = fsub fast float %2409, %2391
  %2431 = fsub fast float %2419, %2395
  %2432 = fsub fast float %2429, %2399
  %2433 = fmul fast float %2430, %2359
  %2434 = fmul fast float %2431, %2361
  %2435 = fmul fast float %2432, %2366
  %2436 = fadd fast float %2433, %2374
  %2437 = fadd fast float %2434, %2378
  %2438 = fadd fast float %2435, %2382
  %2439 = call float @dx.op.unary.f32(i32 7, float %2436)  ; Saturate(value)
  %2440 = call float @dx.op.unary.f32(i32 7, float %2437)  ; Saturate(value)
  %2441 = call float @dx.op.unary.f32(i32 7, float %2438)  ; Saturate(value)
  %2442 = fmul fast float %2439, %2439
  %2443 = fmul fast float %2440, %2440
  %2444 = fmul fast float %2441, %2441
  %2445 = fsub fast float %2442, %2324
  %2446 = fsub fast float %2443, %2325
  %2447 = fsub fast float %2444, %2326
  %2448 = fmul fast float %2445, %2349
  %2449 = fmul fast float %2446, %2349
  %2450 = fmul fast float %2447, %2349
  %2451 = fadd fast float %2448, %2324
  %2452 = fadd fast float %2449, %2325
  %2453 = fadd fast float %2450, %2326
  %2454 = fadd fast float %2371, %2335
  %2455 = fsub fast float %2454, %2388
  %2456 = call float @dx.op.unary.f32(i32 7, float %2455)  ; Saturate(value)
  %2457 = fsub fast float %2456, %2335
  %2458 = fmul fast float %2457, %2349
  %2459 = fadd fast float %2458, %2335
  br label %2513

; <label>:2460                                    ; preds = %2348
  %2461 = and i32 %2351, 134217728
  %2462 = icmp eq i32 %2461, 0
  br i1 %2462, label %2497, label %2463

; <label>:2463                                    ; preds = %2460
  %2464 = call float @dx.op.unary.f32(i32 24, float %380)  ; Sqrt(value)
  %2465 = call float @dx.op.unary.f32(i32 24, float %384)  ; Sqrt(value)
  %2466 = call float @dx.op.unary.f32(i32 24, float %388)  ; Sqrt(value)
  %2467 = fadd fast float %2464, -5.000000e-01
  %2468 = fadd fast float %2465, -5.000000e-01
  %2469 = fadd fast float %2466, -5.000000e-01
  %2470 = fmul fast float %2467, %2349
  %2471 = fmul fast float %2468, %2349
  %2472 = fmul fast float %2469, %2349
  %2473 = fadd fast float %2470, 5.000000e-01
  %2474 = fadd fast float %2471, 5.000000e-01
  %2475 = fadd fast float %2472, 5.000000e-01
  %2476 = call float @dx.op.unary.f32(i32 24, float %2324)  ; Sqrt(value)
  %2477 = call float @dx.op.unary.f32(i32 24, float %2325)  ; Sqrt(value)
  %2478 = call float @dx.op.unary.f32(i32 24, float %2326)  ; Sqrt(value)
  %2479 = fmul fast float %2473, 2.000000e+00
  %2480 = fsub fast float 1.000000e+00, %2479
  %2481 = fmul fast float %2480, %2476
  %2482 = fadd fast float %2481, %2479
  %2483 = fmul fast float %2482, %2476
  %2484 = fmul fast float %2474, 2.000000e+00
  %2485 = fsub fast float 1.000000e+00, %2484
  %2486 = fmul fast float %2485, %2477
  %2487 = fadd fast float %2486, %2484
  %2488 = fmul fast float %2487, %2477
  %2489 = fmul fast float %2475, 2.000000e+00
  %2490 = fsub fast float 1.000000e+00, %2489
  %2491 = fmul fast float %2490, %2478
  %2492 = fadd fast float %2491, %2489
  %2493 = fmul fast float %2492, %2478
  %2494 = fmul fast float %2483, %2483
  %2495 = fmul fast float %2488, %2488
  %2496 = fmul fast float %2493, %2493
  br label %2513

; <label>:2497                                    ; preds = %2460
  %2498 = fmul fast float %380, %380
  %2499 = fmul fast float %384, %384
  %2500 = fmul fast float %388, %388
  %2501 = fadd fast float %2498, -1.000000e+00
  %2502 = fadd fast float %2499, -1.000000e+00
  %2503 = fadd fast float %2500, -1.000000e+00
  %2504 = fmul fast float %2349, %2501
  %2505 = fmul fast float %2349, %2502
  %2506 = fmul fast float %2349, %2503
  %2507 = fadd fast float %2504, 1.000000e+00
  %2508 = fadd fast float %2505, 1.000000e+00
  %2509 = fadd fast float %2506, 1.000000e+00
  %2510 = fmul fast float %2507, %2324
  %2511 = fmul fast float %2508, %2325
  %2512 = fmul fast float %2509, %2326
  br label %2513

; <label>:2513                                    ; preds = %2497, %2463, %2354, %2310
  %2514 = phi float [ %2459, %2354 ], [ %2335, %2463 ], [ %2335, %2497 ], [ 0x3FA23C0BE0000000, %2310 ]
  %2515 = phi float [ %2451, %2354 ], [ %2494, %2463 ], [ %2510, %2497 ], [ 1.000000e+00, %2310 ]
  %2516 = phi float [ %2452, %2354 ], [ %2495, %2463 ], [ %2511, %2497 ], [ 1.000000e+00, %2310 ]
  %2517 = phi float [ %2453, %2354 ], [ %2496, %2463 ], [ %2512, %2497 ], [ 1.000000e+00, %2310 ]
  %2518 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2519 = extractvalue %dx.types.CBufRet.i32 %2518, 1
  %2520 = and i32 %2519, 1
  %2521 = icmp ne i32 %2520, 0
  %2522 = add i32 %51, 356
  %2523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2522, i32 undef)  ; BufferLoad(srv,index,wot)
  %2524 = extractvalue %dx.types.ResRet.i32 %2523, 0
  %2525 = and i32 %2524, 32
  %2526 = icmp ne i32 %2525, 0
  %2527 = and i1 %2521, %2526
  %2528 = select i1 %2527, float 1.000000e+00, float %2515
  %2529 = select i1 %2527, float 0x3FD3333340000000, float %2516
  %2530 = select i1 %2527, float 0x3FD3333340000000, float %2517
  %2531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2128, i32 undef)  ; BufferLoad(srv,index,wot)
  %2532 = extractvalue %dx.types.ResRet.i32 %2531, 0
  %2533 = and i32 %2532, 32
  %2534 = icmp eq i32 %2533, 0
  br i1 %2534, label %2607, label %2535

; <label>:2535                                    ; preds = %2513
  %2536 = add i32 %51, 124
  %2537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2536, i32 undef)  ; BufferLoad(srv,index,wot)
  %2538 = extractvalue %dx.types.ResRet.i32 %2537, 0
  %2539 = add i32 %51, 400
  %2540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2539, i32 undef)  ; BufferLoad(srv,index,wot)
  %2541 = extractvalue %dx.types.ResRet.i32 %2540, 0
  %2542 = add i32 %2541, 0
  %2543 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2542, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2544 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2543, %dx.types.Handle %107, float %2235, float %2236, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2545 = extractvalue %dx.types.ResRet.f32 %2544, 0
  %2546 = extractvalue %dx.types.ResRet.f32 %2544, 1
  %2547 = extractvalue %dx.types.ResRet.f32 %2544, 2
  %2548 = extractvalue %dx.types.ResRet.f32 %2544, 3
  %2549 = and i32 %2538, 255
  %2550 = uitofp i32 %2549 to float
  %2551 = lshr i32 %2538, 8
  %2552 = and i32 %2551, 255
  %2553 = uitofp i32 %2552 to float
  %2554 = lshr i32 %2538, 16
  %2555 = and i32 %2554, 255
  %2556 = uitofp i32 %2555 to float
  %2557 = fmul fast float %2556, 0x3F70101000000000
  %2558 = fmul fast float %2545, %2550
  %2559 = fadd fast float %2558, %2553
  %2560 = fmul fast float %2559, 0x3F70101000000000
  %2561 = fadd fast float %2546, -5.000000e-01
  %2562 = fadd fast float %2548, -5.000000e-01
  %2563 = fmul fast float %2561, %2557
  %2564 = fmul fast float %2562, %2557
  %2565 = fadd fast float %2563, 5.000000e-01
  %2566 = fadd fast float %2564, 5.000000e-01
  %2567 = fmul fast float %2565, 2.000000e+00
  %2568 = fadd fast float %2567, -1.000000e+00
  %2569 = fmul fast float %2566, 2.000000e+00
  %2570 = fadd fast float %2569, -1.000000e+00
  %2571 = fadd fast float %2568, %2570
  %2572 = fmul fast float %2571, 5.000000e-01
  %2573 = fsub fast float %2568, %2570
  %2574 = fmul fast float %2573, 5.000000e-01
  %2575 = call float @dx.op.unary.f32(i32 6, float %2572)  ; FAbs(value)
  %2576 = fsub fast float 1.000000e+00, %2575
  %2577 = call float @dx.op.unary.f32(i32 6, float %2574)  ; FAbs(value)
  %2578 = fsub fast float %2576, %2577
  %2579 = call float @dx.op.dot3.f32(i32 55, float %2572, float %2574, float %2578, float %2572, float %2574, float %2578)  ; Dot3(ax,ay,az,bx,by,bz)
  %2580 = call float @dx.op.unary.f32(i32 25, float %2579)  ; Rsqrt(value)
  %2581 = fmul fast float %2572, %2580
  %2582 = fmul fast float %2574, %2580
  %2583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2128, i32 undef)  ; BufferLoad(srv,index,wot)
  %2584 = extractvalue %dx.types.ResRet.i32 %2583, 0
  %2585 = and i32 %2584, 67108864
  %2586 = icmp eq i32 %2585, 0
  br i1 %2586, label %2603, label %2587

; <label>:2587                                    ; preds = %2535
  %2588 = add i32 %51, 312
  %2589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2588, i32 undef)  ; BufferLoad(srv,index,wot)
  %2590 = extractvalue %dx.types.ResRet.i32 %2589, 0
  %2591 = and i32 %2590, 65535
  %2592 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2591)  ; LegacyF16ToF32(value)
  %2593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2145, i32 undef)  ; BufferLoad(srv,index,wot)
  %2594 = extractvalue %dx.types.ResRet.i32 %2593, 0
  %2595 = and i32 %2594, 65535
  %2596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2595)  ; LegacyF16ToF32(value)
  %2597 = lshr i32 %2590, 16
  %2598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2597)  ; LegacyF16ToF32(value)
  %2599 = fsub fast float %2560, %2598
  %2600 = fmul fast float %2599, %2592
  %2601 = fadd fast float %2600, %2596
  %2602 = call float @dx.op.unary.f32(i32 7, float %2601)  ; Saturate(value)
  br label %2603

; <label>:2603                                    ; preds = %2587, %2535
  %2604 = phi float [ %2602, %2587 ], [ %2560, %2535 ]
  %2605 = call float @dx.op.dot2.f32(i32 54, float %2581, float %2582, float %2139, float %2140)  ; Dot2(ax,ay,bx,by)
  %2606 = call float @dx.op.dot2.f32(i32 54, float %2581, float %2582, float %2141, float %2142)  ; Dot2(ax,ay,bx,by)
  br label %2607

; <label>:2607                                    ; preds = %2603, %2513
  %2608 = phi float [ %2604, %2603 ], [ 0x3FD6666660000000, %2513 ]
  %2609 = phi float [ %2605, %2603 ], [ 0.000000e+00, %2513 ]
  %2610 = phi float [ %2606, %2603 ], [ 0.000000e+00, %2513 ]
  %2611 = phi float [ %2547, %2603 ], [ 1.000000e+00, %2513 ]
  %2612 = add i32 %51, 192
  %2613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2612, i32 undef)  ; BufferLoad(srv,index,wot)
  %2614 = extractvalue %dx.types.ResRet.i32 %2613, 0
  %2615 = lshr i32 %2614, 22
  %2616 = shl nuw nsw i32 %2615, 5
  %2617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2616)  ; LegacyF16ToF32(value)
  %2618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2128, i32 undef)  ; BufferLoad(srv,index,wot)
  %2619 = extractvalue %dx.types.ResRet.i32 %2618, 0
  %2620 = and i32 %2619, 64
  %2621 = icmp eq i32 %2620, 0
  br i1 %2621, label %2655, label %2622

; <label>:2622                                    ; preds = %2607
  %2623 = add i32 %51, 416
  %2624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2623, i32 undef)  ; BufferLoad(srv,index,wot)
  %2625 = extractvalue %dx.types.ResRet.i32 %2624, 0
  %2626 = add i32 %2625, 0
  %2627 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2626, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2128, i32 undef)  ; BufferLoad(srv,index,wot)
  %2629 = extractvalue %dx.types.ResRet.i32 %2628, 0
  %2630 = and i32 %2629, 131072
  %2631 = icmp eq i32 %2630, 0
  %2632 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2627, %dx.types.Handle %107, float %2235, float %2236, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2633 = extractvalue %dx.types.ResRet.f32 %2632, 0
  %2634 = extractvalue %dx.types.ResRet.f32 %2632, 1
  %2635 = extractvalue %dx.types.ResRet.f32 %2632, 2
  %2636 = fmul fast float %2633, %368
  %2637 = fmul fast float %2634, %371
  %2638 = fmul fast float %2635, %374
  br i1 %2631, label %2645, label %2639

; <label>:2639                                    ; preds = %2622
  %2640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2641 = extractvalue %dx.types.CBufRet.f32 %2640, 0
  %2642 = fmul fast float %2641, %2636
  %2643 = fmul fast float %2641, %2637
  %2644 = fmul fast float %2641, %2638
  br label %2645

; <label>:2645                                    ; preds = %2639, %2622
  %2646 = phi float [ %2642, %2639 ], [ %2636, %2622 ]
  %2647 = phi float [ %2643, %2639 ], [ %2637, %2622 ]
  %2648 = phi float [ %2644, %2639 ], [ %2638, %2622 ]
  %2649 = fmul fast float %2646, %2617
  %2650 = select i1 %264, float %2649, float %2646
  %2651 = call float @dx.op.dot3.f32(i32 55, float %2650, float %2647, float %2648, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2652 = select i1 %264, float 0.000000e+00, float %2646
  %2653 = select i1 %264, float %2651, float %2647
  %2654 = select i1 %264, float 0.000000e+00, float %2648
  br label %2655

; <label>:2655                                    ; preds = %2645, %2607
  %2656 = phi float [ %2652, %2645 ], [ 0.000000e+00, %2607 ]
  %2657 = phi float [ %2653, %2645 ], [ 0.000000e+00, %2607 ]
  %2658 = phi float [ %2654, %2645 ], [ 0.000000e+00, %2607 ]
  %2659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2128, i32 undef)  ; BufferLoad(srv,index,wot)
  %2660 = extractvalue %dx.types.ResRet.i32 %2659, 0
  %2661 = and i32 %2660, 1024
  %2662 = icmp eq i32 %2661, 0
  br i1 %2662, label %2693, label %2663

; <label>:2663                                    ; preds = %2655
  %2664 = add i32 %51, 184
  %2665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2664, i32 undef)  ; BufferLoad(srv,index,wot)
  %2666 = extractvalue %dx.types.ResRet.i32 %2665, 0
  %2667 = and i32 %2666, 255
  %2668 = uitofp i32 %2667 to float
  %2669 = fmul fast float %2668, 0x3F70101020000000
  %2670 = lshr i32 %2666, 8
  %2671 = and i32 %2670, 255
  %2672 = uitofp i32 %2671 to float
  %2673 = fmul fast float %2672, 0x3F70101020000000
  %2674 = lshr i32 %2666, 16
  %2675 = and i32 %2674, 255
  %2676 = uitofp i32 %2675 to float
  %2677 = fmul fast float %2676, 0x3F70101020000000
  %2678 = fmul fast float %2669, %2669
  %2679 = fmul fast float %2673, %2673
  %2680 = fmul fast float %2677, %2677
  %2681 = add i32 %51, 484
  %2682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2681, i32 undef)  ; BufferLoad(srv,index,wot)
  %2683 = extractvalue %dx.types.ResRet.i32 %2682, 0
  %2684 = add i32 %2683, 0
  %2685 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2684, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2686 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2685, %dx.types.Handle %108, float %2235, float %2236, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2687 = extractvalue %dx.types.ResRet.f32 %2686, 0
  %2688 = extractvalue %dx.types.ResRet.f32 %2686, 1
  %2689 = extractvalue %dx.types.ResRet.f32 %2686, 2
  %2690 = fmul fast float %2678, %2687
  %2691 = fmul fast float %2679, %2688
  %2692 = fmul fast float %2680, %2689
  br label %2693

; <label>:2693                                    ; preds = %2663, %2655
  %2694 = phi float [ %2690, %2663 ], [ 0.000000e+00, %2655 ]
  %2695 = phi float [ %2691, %2663 ], [ 0.000000e+00, %2655 ]
  %2696 = phi float [ %2692, %2663 ], [ 0.000000e+00, %2655 ]
  %2697 = fcmp fast ogt float %2694, 0.000000e+00
  %2698 = fcmp fast ogt float %2695, 0.000000e+00
  %2699 = fcmp fast ogt float %2696, 0.000000e+00
  %2700 = call float @dx.op.unary.f32(i32 23, float %2694)  ; Log(value)
  %2701 = call float @dx.op.unary.f32(i32 23, float %2695)  ; Log(value)
  %2702 = call float @dx.op.unary.f32(i32 23, float %2696)  ; Log(value)
  %2703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2612, i32 undef)  ; BufferLoad(srv,index,wot)
  %2704 = extractvalue %dx.types.ResRet.i32 %2703, 0
  %2705 = lshr i32 %2704, 7
  %2706 = and i32 %2705, 32752
  %2707 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2706)  ; LegacyF16ToF32(value)
  %2708 = fmul fast float %2700, 0xBFE62E4300000000
  %2709 = fmul fast float %2708, %2707
  %2710 = fmul fast float %2701, 0xBFE62E4300000000
  %2711 = fmul fast float %2710, %2707
  %2712 = fmul fast float %2702, 0xBFE62E4300000000
  %2713 = fmul fast float %2712, %2707
  %2714 = select i1 %2697, float %2709, float 1.270000e+02
  %2715 = select i1 %2698, float %2711, float 1.270000e+02
  %2716 = select i1 %2699, float %2713, float 1.270000e+02
  %2717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2128, i32 undef)  ; BufferLoad(srv,index,wot)
  %2718 = extractvalue %dx.types.ResRet.i32 %2717, 0
  %2719 = and i32 %2718, 10240
  %2720 = icmp eq i32 %2719, 0
  br i1 %2720, label %2765, label %2721

; <label>:2721                                    ; preds = %2693
  %2722 = add i32 %51, 500
  %2723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2722, i32 undef)  ; BufferLoad(srv,index,wot)
  %2724 = extractvalue %dx.types.ResRet.i32 %2723, 0
  %2725 = add i32 %2724, 0
  %2726 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2725, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2727 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2726, %dx.types.Handle %108, float %2235, float %2236, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2728 = extractvalue %dx.types.ResRet.f32 %2727, 1
  %2729 = extractvalue %dx.types.ResRet.f32 %2727, 3
  %2730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2128, i32 undef)  ; BufferLoad(srv,index,wot)
  %2731 = extractvalue %dx.types.ResRet.i32 %2730, 0
  %2732 = and i32 %2731, 1048576
  %2733 = icmp ne i32 %2732, 0
  %2734 = and i32 %2731, 8192
  %2735 = icmp eq i32 %2734, 0
  br i1 %2735, label %2751, label %2736

; <label>:2736                                    ; preds = %2721
  %2737 = extractvalue %dx.types.ResRet.f32 %2727, 2
  %2738 = select i1 %2733, float %2737, float %2728
  %2739 = extractvalue %dx.types.ResRet.f32 %2727, 0
  %2740 = select i1 %2733, float %2739, float %2728
  %2741 = add i32 %51, 128
  %2742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2741, i32 undef)  ; BufferLoad(srv,index,wot)
  %2743 = extractvalue %dx.types.ResRet.i32 %2742, 0
  %2744 = lshr i32 %2743, 16
  %2745 = and i32 %2744, 255
  %2746 = uitofp i32 %2745 to float
  %2747 = fmul fast float %2746, 0x3F80101020000000
  %2748 = fmul fast float %2747, %2740
  %2749 = fmul fast float %2747, %2728
  %2750 = fmul fast float %2747, %2738
  br label %2751

; <label>:2751                                    ; preds = %2736, %2721
  %2752 = phi float [ %2748, %2736 ], [ 0.000000e+00, %2721 ]
  %2753 = phi float [ %2749, %2736 ], [ 0.000000e+00, %2721 ]
  %2754 = phi float [ %2750, %2736 ], [ 0.000000e+00, %2721 ]
  %2755 = and i32 %2731, 2048
  %2756 = icmp eq i32 %2755, 0
  br i1 %2756, label %2765, label %2757

; <label>:2757                                    ; preds = %2751
  %2758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2612, i32 undef)  ; BufferLoad(srv,index,wot)
  %2759 = extractvalue %dx.types.ResRet.i32 %2758, 0
  %2760 = shl i32 %2759, 4
  %2761 = and i32 %2760, 32752
  %2762 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2761)  ; LegacyF16ToF32(value)
  %2763 = fmul fast float %2762, %2729
  %2764 = call float @dx.op.binary.f32(i32 35, float %2763, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2765

; <label>:2765                                    ; preds = %2757, %2751, %2693
  %2766 = phi float [ %2752, %2757 ], [ %2752, %2751 ], [ 0.000000e+00, %2693 ]
  %2767 = phi float [ %2753, %2757 ], [ %2753, %2751 ], [ 0.000000e+00, %2693 ]
  %2768 = phi float [ %2754, %2757 ], [ %2754, %2751 ], [ 0.000000e+00, %2693 ]
  %2769 = phi float [ %2764, %2757 ], [ 0x3F70101020000000, %2751 ], [ 0x3F70101020000000, %2693 ]
  %2770 = add i32 %51, 128
  %2771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2770, i32 undef)  ; BufferLoad(srv,index,wot)
  %2772 = extractvalue %dx.types.ResRet.i32 %2771, 0
  %2773 = and i32 %2772, 255
  %2774 = uitofp i32 %2773 to float
  %2775 = lshr i32 %2772, 8
  %2776 = and i32 %2775, 255
  %2777 = uitofp i32 %2776 to float
  %2778 = call float @dx.op.dot3.f32(i32 55, float %2528, float %2529, float %2530, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2779 = fmul fast float %2777, %2778
  %2780 = fadd fast float %2779, %2774
  %2781 = fmul fast float %2780, 0x3F70101020000000
  %2782 = call float @dx.op.unary.f32(i32 7, float %2781)  ; Saturate(value)
  br i1 %2127, label %2783, label %2818

; <label>:2783                                    ; preds = %2765
  %2784 = fmul fast float %2769, 2.000000e+00
  %2785 = fcmp fast olt float %2714, 1.270000e+02
  %2786 = fcmp fast olt float %2715, 1.270000e+02
  %2787 = fcmp fast olt float %2716, 1.270000e+02
  %2788 = fmul fast float %2714, 0xBFF7154760000000
  %2789 = fmul fast float %2788, %2784
  %2790 = fmul fast float %2715, 0xBFF7154760000000
  %2791 = fmul fast float %2790, %2784
  %2792 = fmul fast float %2716, 0xBFF7154760000000
  %2793 = fmul fast float %2792, %2784
  %2794 = call float @dx.op.unary.f32(i32 21, float %2789)  ; Exp(value)
  %2795 = call float @dx.op.unary.f32(i32 21, float %2791)  ; Exp(value)
  %2796 = call float @dx.op.unary.f32(i32 21, float %2793)  ; Exp(value)
  %2797 = call float @dx.op.unary.f32(i32 7, float %2794)  ; Saturate(value)
  %2798 = call float @dx.op.unary.f32(i32 7, float %2795)  ; Saturate(value)
  %2799 = call float @dx.op.unary.f32(i32 7, float %2796)  ; Saturate(value)
  %2800 = fadd fast float %2797, -1.000000e+00
  %2801 = select i1 %2785, float %2800, float -1.000000e+00
  %2802 = fadd fast float %2798, -1.000000e+00
  %2803 = select i1 %2786, float %2802, float -1.000000e+00
  %2804 = fadd fast float %2799, -1.000000e+00
  %2805 = select i1 %2787, float %2804, float -1.000000e+00
  %2806 = fmul fast float %2801, %2308
  %2807 = fmul fast float %2803, %2308
  %2808 = fmul fast float %2805, %2308
  %2809 = fadd fast float %2806, 1.000000e+00
  %2810 = fadd fast float %2807, 1.000000e+00
  %2811 = fadd fast float %2808, 1.000000e+00
  %2812 = fmul fast float %2809, %2109
  %2813 = fmul fast float %2810, %2110
  %2814 = fmul fast float %2811, %2111
  %2815 = fmul fast float %2809, %2112
  %2816 = fmul fast float %2810, %2113
  %2817 = fmul fast float %2811, %2114
  br label %2818

; <label>:2818                                    ; preds = %2783, %2765
  %2819 = phi float [ %2812, %2783 ], [ %2109, %2765 ]
  %2820 = phi float [ %2813, %2783 ], [ %2110, %2765 ]
  %2821 = phi float [ %2814, %2783 ], [ %2111, %2765 ]
  %2822 = phi float [ %2815, %2783 ], [ %2112, %2765 ]
  %2823 = phi float [ %2816, %2783 ], [ %2113, %2765 ]
  %2824 = phi float [ %2817, %2783 ], [ %2114, %2765 ]
  %2825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2128, i32 undef)  ; BufferLoad(srv,index,wot)
  %2826 = extractvalue %dx.types.ResRet.i32 %2825, 0
  %2827 = and i32 %2826, 3
  %2828 = icmp eq i32 %2827, 3
  br i1 %2828, label %2907, label %2829

; <label>:2829                                    ; preds = %2818
  %2830 = and i32 %2826, 16
  %2831 = icmp ne i32 %2830, 0
  %2832 = select i1 %2831, float %2308, float 0.000000e+00
  %2833 = icmp eq i32 %2827, 0
  br i1 %2833, label %2834, label %2862

; <label>:2834                                    ; preds = %2829
  %2835 = and i32 %2826, 64
  %2836 = icmp ne i32 %2835, 0
  %2837 = select i1 %2836, float %2308, float 0.000000e+00
  %2838 = fsub fast float %2528, %2819
  %2839 = fsub fast float %2529, %2820
  %2840 = fsub fast float %2530, %2821
  %2841 = fmul fast float %2832, %2838
  %2842 = fmul fast float %2832, %2839
  %2843 = fmul fast float %2832, %2840
  %2844 = fadd fast float %2841, %2819
  %2845 = fadd fast float %2842, %2820
  %2846 = fadd fast float %2843, %2821
  %2847 = fsub fast float %2514, %2121
  %2848 = fmul fast float %2832, %2847
  %2849 = fadd fast float %2848, %2121
  %2850 = fsub fast float %2656, %2822
  %2851 = fsub fast float %2657, %2823
  %2852 = fsub fast float %2658, %2824
  %2853 = fmul fast float %2837, %2850
  %2854 = fmul fast float %2837, %2851
  %2855 = fmul fast float %2837, %2852
  %2856 = fadd fast float %2853, %2822
  %2857 = fadd fast float %2854, %2823
  %2858 = fadd fast float %2855, %2824
  %2859 = fsub fast float %2782, %2125
  %2860 = fmul fast float %2832, %2859
  %2861 = fadd fast float %2860, %2125
  br label %2907

; <label>:2862                                    ; preds = %2829
  %2863 = icmp eq i32 %2827, 1
  br i1 %2863, label %2864, label %2877

; <label>:2864                                    ; preds = %2862
  %2865 = fadd fast float %2528, -1.000000e+00
  %2866 = fadd fast float %2529, -1.000000e+00
  %2867 = fadd fast float %2530, -1.000000e+00
  %2868 = fmul fast float %2832, %2865
  %2869 = fmul fast float %2832, %2866
  %2870 = fmul fast float %2832, %2867
  %2871 = fadd fast float %2868, 1.000000e+00
  %2872 = fadd fast float %2869, 1.000000e+00
  %2873 = fadd fast float %2870, 1.000000e+00
  %2874 = fmul fast float %2871, %2819
  %2875 = fmul fast float %2872, %2820
  %2876 = fmul fast float %2873, %2821
  br label %2907

; <label>:2877                                    ; preds = %2862
  %2878 = icmp eq i32 %2827, 2
  br i1 %2878, label %2879, label %2907

; <label>:2879                                    ; preds = %2877
  %2880 = call float @dx.op.unary.f32(i32 24, float %2528)  ; Sqrt(value)
  %2881 = call float @dx.op.unary.f32(i32 24, float %2529)  ; Sqrt(value)
  %2882 = call float @dx.op.unary.f32(i32 24, float %2530)  ; Sqrt(value)
  %2883 = fadd fast float %2880, -5.000000e-01
  %2884 = fadd fast float %2881, -5.000000e-01
  %2885 = fadd fast float %2882, -5.000000e-01
  %2886 = fmul fast float %2883, %2832
  %2887 = fmul fast float %2884, %2832
  %2888 = fmul fast float %2885, %2832
  %2889 = fadd fast float %2886, 5.000000e-01
  %2890 = fadd fast float %2887, 5.000000e-01
  %2891 = fadd fast float %2888, 5.000000e-01
  %2892 = fmul fast float %2889, 2.000000e+00
  %2893 = fsub fast float 1.000000e+00, %2892
  %2894 = fmul fast float %2893, %2819
  %2895 = fadd fast float %2894, %2892
  %2896 = fmul fast float %2895, %2819
  %2897 = fmul fast float %2890, 2.000000e+00
  %2898 = fsub fast float 1.000000e+00, %2897
  %2899 = fmul fast float %2898, %2820
  %2900 = fadd fast float %2899, %2897
  %2901 = fmul fast float %2900, %2820
  %2902 = fmul fast float %2891, 2.000000e+00
  %2903 = fsub fast float 1.000000e+00, %2902
  %2904 = fmul fast float %2903, %2821
  %2905 = fadd fast float %2904, %2902
  %2906 = fmul fast float %2905, %2821
  br label %2907

; <label>:2907                                    ; preds = %2879, %2877, %2864, %2834, %2818
  %2908 = phi float [ %2819, %2818 ], [ %2896, %2879 ], [ %2819, %2877 ], [ %2874, %2864 ], [ %2844, %2834 ]
  %2909 = phi float [ %2820, %2818 ], [ %2901, %2879 ], [ %2820, %2877 ], [ %2875, %2864 ], [ %2845, %2834 ]
  %2910 = phi float [ %2821, %2818 ], [ %2906, %2879 ], [ %2821, %2877 ], [ %2876, %2864 ], [ %2846, %2834 ]
  %2911 = phi float [ %2822, %2818 ], [ %2822, %2879 ], [ %2822, %2877 ], [ %2822, %2864 ], [ %2856, %2834 ]
  %2912 = phi float [ %2823, %2818 ], [ %2823, %2879 ], [ %2823, %2877 ], [ %2823, %2864 ], [ %2857, %2834 ]
  %2913 = phi float [ %2824, %2818 ], [ %2824, %2879 ], [ %2824, %2877 ], [ %2824, %2864 ], [ %2858, %2834 ]
  %2914 = phi float [ %2121, %2818 ], [ %2121, %2879 ], [ %2121, %2877 ], [ %2121, %2864 ], [ %2849, %2834 ]
  %2915 = phi float [ %2125, %2818 ], [ %2125, %2879 ], [ %2125, %2877 ], [ %2125, %2864 ], [ %2861, %2834 ]
  %2916 = and i32 %2826, 12
  %2917 = icmp eq i32 %2916, 12
  br i1 %2917, label %3048, label %2918

; <label>:2918                                    ; preds = %2907
  %2919 = and i32 %2826, 2097184
  %2920 = icmp eq i32 %2919, 2097184
  %2921 = select i1 %2920, float %2308, float 0.000000e+00
  %2922 = and i32 %2826, 4194336
  %2923 = icmp eq i32 %2922, 4194336
  %2924 = select i1 %2923, float %2308, float 0.000000e+00
  %2925 = and i32 %2826, 8388640
  %2926 = icmp eq i32 %2925, 8388640
  %2927 = select i1 %2926, float %2308, float 0.000000e+00
  %2928 = and i32 %2826, 1024
  %2929 = icmp ne i32 %2928, 0
  %2930 = select i1 %2929, float %2308, float 0.000000e+00
  %2931 = and i32 %2826, 2048
  %2932 = icmp ne i32 %2931, 0
  %2933 = select i1 %2932, float %2308, float 0.000000e+00
  %2934 = and i32 %2826, 8192
  %2935 = icmp ne i32 %2934, 0
  %2936 = select i1 %2935, float %2308, float 0.000000e+00
  %2937 = icmp eq i32 %2916, 0
  br i1 %2937, label %2938, label %2972

; <label>:2938                                    ; preds = %2918
  %2939 = fsub fast float %2609, %2107
  %2940 = fsub fast float %2610, %2108
  %2941 = fmul fast float %2921, %2939
  %2942 = fmul fast float %2921, %2940
  %2943 = fadd fast float %2941, %2107
  %2944 = fadd fast float %2942, %2108
  %2945 = fsub fast float %2611, %2123
  %2946 = fmul fast float %2924, %2945
  %2947 = fadd fast float %2946, %2123
  %2948 = fsub fast float %2608, %2122
  %2949 = fmul fast float %2927, %2948
  %2950 = fadd fast float %2949, %2122
  %2951 = fsub fast float %2714, %2118
  %2952 = fsub fast float %2715, %2119
  %2953 = fsub fast float %2716, %2120
  %2954 = fmul fast float %2930, %2951
  %2955 = fmul fast float %2930, %2952
  %2956 = fmul fast float %2930, %2953
  %2957 = fadd fast float %2954, %2118
  %2958 = fadd fast float %2955, %2119
  %2959 = fadd fast float %2956, %2120
  %2960 = fsub fast float %2769, %2124
  %2961 = fmul fast float %2933, %2960
  %2962 = fadd fast float %2961, %2124
  %2963 = fsub fast float %2766, %2115
  %2964 = fsub fast float %2767, %2116
  %2965 = fsub fast float %2768, %2117
  %2966 = fmul fast float %2936, %2963
  %2967 = fmul fast float %2936, %2964
  %2968 = fmul fast float %2936, %2965
  %2969 = fadd fast float %2966, %2115
  %2970 = fadd fast float %2967, %2116
  %2971 = fadd fast float %2968, %2117
  br label %3048

; <label>:2972                                    ; preds = %2918
  %2973 = icmp eq i32 %2916, 4
  br i1 %2973, label %2974, label %3020

; <label>:2974                                    ; preds = %2972
  %2975 = fmul fast float %2921, %2609
  %2976 = fmul fast float %2921, %2610
  %2977 = fadd fast float %2975, %2107
  %2978 = fadd fast float %2976, %2108
  %2979 = call float @dx.op.binary.f32(i32 36, float %2123, float %2611)  ; FMin(a,b)
  %2980 = fsub fast float %2979, %2123
  %2981 = fmul fast float %2980, %2924
  %2982 = fadd fast float %2981, %2123
  %2983 = fadd fast float %2608, %2122
  %2984 = fmul fast float %2983, 0x3FF337FAE0000000
  %2985 = fmul fast float %2122, %2122
  %2986 = fmul fast float %2608, %2608
  %2987 = fadd fast float %2986, %2985
  %2988 = fmul fast float %2987, 0x3FE5152B00000000
  %2989 = fmul fast float %2122, 0xBFCC1F85E0000000
  %2990 = fmul fast float %2989, %2608
  %2991 = fadd fast float %2990, 0xBFE1363700000000
  %2992 = fadd fast float %2991, %2984
  %2993 = fsub fast float %2992, %2988
  %2994 = fmul fast float %2983, 0x3FBA6F0D00000000
  %2995 = fmul fast float %2987, 0x3FD0432880000000
  %2996 = fmul fast float %2122, 0xBFEF110800000000
  %2997 = fmul fast float %2996, %2608
  %2998 = fadd fast float %2997, 1.000000e+00
  %2999 = fsub fast float %2998, %2994
  %3000 = fadd fast float %2999, %2995
  %3001 = fdiv fast float %2993, %3000
  %3002 = call float @dx.op.unary.f32(i32 7, float %3001)  ; Saturate(value)
  %3003 = fsub fast float %3002, %2122
  %3004 = fmul fast float %3003, %2927
  %3005 = fadd fast float %3004, %2122
  %3006 = fmul fast float %2930, %2714
  %3007 = fmul fast float %2930, %2715
  %3008 = fmul fast float %2930, %2716
  %3009 = fadd fast float %3006, %2118
  %3010 = fadd fast float %3007, %2119
  %3011 = fadd fast float %3008, %2120
  %3012 = fmul fast float %2933, %2769
  %3013 = fadd fast float %3012, %2124
  %3014 = fmul fast float %2936, %2766
  %3015 = fmul fast float %2936, %2767
  %3016 = fmul fast float %2936, %2768
  %3017 = fadd fast float %3014, %2115
  %3018 = fadd fast float %3015, %2116
  %3019 = fadd fast float %3016, %2117
  br label %3048

; <label>:3020                                    ; preds = %2972
  %3021 = icmp eq i32 %2916, 8
  br i1 %3021, label %3022, label %3048

; <label>:3022                                    ; preds = %3020
  %3023 = fmul fast float %2921, %2609
  %3024 = fmul fast float %2921, %2610
  %3025 = fadd fast float %3023, %2107
  %3026 = fadd fast float %3024, %2108
  %3027 = call float @dx.op.binary.f32(i32 36, float %2123, float %2611)  ; FMin(a,b)
  %3028 = fsub fast float %3027, %2123
  %3029 = fmul fast float %3028, %2924
  %3030 = fadd fast float %3029, %2123
  %3031 = fsub fast float %2608, %2122
  %3032 = fmul fast float %2927, %3031
  %3033 = fadd fast float %3032, %2122
  %3034 = fmul fast float %2930, %2714
  %3035 = fmul fast float %2930, %2715
  %3036 = fmul fast float %2930, %2716
  %3037 = fadd fast float %3034, %2118
  %3038 = fadd fast float %3035, %2119
  %3039 = fadd fast float %3036, %2120
  %3040 = fmul fast float %2933, %2769
  %3041 = fadd fast float %3040, %2124
  %3042 = fmul fast float %2936, %2766
  %3043 = fmul fast float %2936, %2767
  %3044 = fmul fast float %2936, %2768
  %3045 = fadd fast float %3042, %2115
  %3046 = fadd fast float %3043, %2116
  %3047 = fadd fast float %3044, %2117
  br label %3048

; <label>:3048                                    ; preds = %3022, %3020, %2974, %2938, %2907, %2307, %2126, %2106
  %3049 = phi float [ %2107, %2907 ], [ %2107, %2307 ], [ %2107, %2106 ], [ %3025, %3022 ], [ %2107, %3020 ], [ %2977, %2974 ], [ %2943, %2938 ], [ %2107, %2126 ]
  %3050 = phi float [ %2108, %2907 ], [ %2108, %2307 ], [ %2108, %2106 ], [ %3026, %3022 ], [ %2108, %3020 ], [ %2978, %2974 ], [ %2944, %2938 ], [ %2108, %2126 ]
  %3051 = phi float [ %2908, %2907 ], [ %2109, %2307 ], [ %2109, %2106 ], [ %2908, %3022 ], [ %2908, %3020 ], [ %2908, %2974 ], [ %2908, %2938 ], [ %2109, %2126 ]
  %3052 = phi float [ %2909, %2907 ], [ %2110, %2307 ], [ %2110, %2106 ], [ %2909, %3022 ], [ %2909, %3020 ], [ %2909, %2974 ], [ %2909, %2938 ], [ %2110, %2126 ]
  %3053 = phi float [ %2910, %2907 ], [ %2111, %2307 ], [ %2111, %2106 ], [ %2910, %3022 ], [ %2910, %3020 ], [ %2910, %2974 ], [ %2910, %2938 ], [ %2111, %2126 ]
  %3054 = phi float [ %2911, %2907 ], [ %2112, %2307 ], [ %2112, %2106 ], [ %2911, %3022 ], [ %2911, %3020 ], [ %2911, %2974 ], [ %2911, %2938 ], [ %2112, %2126 ]
  %3055 = phi float [ %2912, %2907 ], [ %2113, %2307 ], [ %2113, %2106 ], [ %2912, %3022 ], [ %2912, %3020 ], [ %2912, %2974 ], [ %2912, %2938 ], [ %2113, %2126 ]
  %3056 = phi float [ %2913, %2907 ], [ %2114, %2307 ], [ %2114, %2106 ], [ %2913, %3022 ], [ %2913, %3020 ], [ %2913, %2974 ], [ %2913, %2938 ], [ %2114, %2126 ]
  %3057 = phi float [ %2115, %2907 ], [ %2115, %2307 ], [ %2115, %2106 ], [ %3045, %3022 ], [ %2115, %3020 ], [ %3017, %2974 ], [ %2969, %2938 ], [ %2115, %2126 ]
  %3058 = phi float [ %2116, %2907 ], [ %2116, %2307 ], [ %2116, %2106 ], [ %3046, %3022 ], [ %2116, %3020 ], [ %3018, %2974 ], [ %2970, %2938 ], [ %2116, %2126 ]
  %3059 = phi float [ %2117, %2907 ], [ %2117, %2307 ], [ %2117, %2106 ], [ %3047, %3022 ], [ %2117, %3020 ], [ %3019, %2974 ], [ %2971, %2938 ], [ %2117, %2126 ]
  %3060 = phi float [ %2118, %2907 ], [ %2118, %2307 ], [ %2118, %2106 ], [ %3037, %3022 ], [ %2118, %3020 ], [ %3009, %2974 ], [ %2957, %2938 ], [ %2118, %2126 ]
  %3061 = phi float [ %2119, %2907 ], [ %2119, %2307 ], [ %2119, %2106 ], [ %3038, %3022 ], [ %2119, %3020 ], [ %3010, %2974 ], [ %2958, %2938 ], [ %2119, %2126 ]
  %3062 = phi float [ %2120, %2907 ], [ %2120, %2307 ], [ %2120, %2106 ], [ %3039, %3022 ], [ %2120, %3020 ], [ %3011, %2974 ], [ %2959, %2938 ], [ %2120, %2126 ]
  %3063 = phi float [ %2914, %2907 ], [ %2121, %2307 ], [ %2121, %2106 ], [ %2914, %3022 ], [ %2914, %3020 ], [ %2914, %2974 ], [ %2914, %2938 ], [ %2121, %2126 ]
  %3064 = phi float [ %2122, %2907 ], [ %2122, %2307 ], [ %2122, %2106 ], [ %3033, %3022 ], [ %2122, %3020 ], [ %3005, %2974 ], [ %2950, %2938 ], [ %2122, %2126 ]
  %3065 = phi float [ %2123, %2907 ], [ %2123, %2307 ], [ %2123, %2106 ], [ %3030, %3022 ], [ %2123, %3020 ], [ %2982, %2974 ], [ %2947, %2938 ], [ %2123, %2126 ]
  %3066 = phi float [ %2124, %2907 ], [ %2124, %2307 ], [ %2124, %2106 ], [ %3041, %3022 ], [ %2124, %3020 ], [ %3013, %2974 ], [ %2962, %2938 ], [ %2124, %2126 ]
  %3067 = phi float [ %2915, %2907 ], [ %2125, %2307 ], [ %2125, %2106 ], [ %2915, %3022 ], [ %2915, %3020 ], [ %2915, %2974 ], [ %2915, %2938 ], [ %2125, %2126 ]
  br i1 %455, label %3990, label %3068

; <label>:3068                                    ; preds = %3048
  %3069 = icmp ult i32 %509, 4
  %3070 = add i32 %51, 72
  %3071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3070, i32 undef)  ; BufferLoad(srv,index,wot)
  %3072 = extractvalue %dx.types.ResRet.i32 %3071, 0
  %3073 = add i32 %51, 76
  %3074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3073, i32 undef)  ; BufferLoad(srv,index,wot)
  %3075 = extractvalue %dx.types.ResRet.i32 %3074, 0
  %3076 = or i32 %3075, %3072
  %3077 = icmp eq i32 %3076, 0
  br i1 %3077, label %3990, label %3078

; <label>:3078                                    ; preds = %3068
  %3079 = and i32 %3072, 262144
  %3080 = icmp ne i32 %3079, 0
  %3081 = select i1 %3080, float %57, float 1.000000e+00
  %3082 = select i1 %3080, float %58, float 0.000000e+00
  %3083 = select i1 %3080, float %59, float 0.000000e+00
  %3084 = select i1 %3080, float %60, float 1.000000e+00
  %3085 = select i1 %3080, float %61, float %89
  %3086 = select i1 %3080, float %62, float %90
  %3087 = add i32 %51, 332
  %3088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3087, i32 undef)  ; BufferLoad(srv,index,wot)
  %3089 = extractvalue %dx.types.ResRet.i32 %3088, 0
  %3090 = lshr i32 %3089, 16
  %3091 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3090)  ; LegacyF16ToF32(value)
  %3092 = fmul fast float %3091, 0x3F50624DE0000000
  %3093 = add i32 %51, 136
  %3094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3093, i32 undef)  ; BufferLoad(srv,index,wot)
  %3095 = extractvalue %dx.types.ResRet.i32 %3094, 0
  %3096 = lshr i32 %3095, 16
  %3097 = and i32 %3096, 255
  %3098 = lshr i32 %3095, 24
  %3099 = add i32 %51, 340
  %3100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3099, i32 undef)  ; BufferLoad(srv,index,wot)
  %3101 = extractvalue %dx.types.ResRet.i32 %3100, 0
  %3102 = and i32 %3101, 65535
  %3103 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3102)  ; LegacyF16ToF32(value)
  %3104 = lshr i32 %3101, 16
  %3105 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3104)  ; LegacyF16ToF32(value)
  %3106 = add i32 %51, 80
  %3107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3106, i32 undef)  ; BufferLoad(srv,index,wot)
  %3108 = extractvalue %dx.types.ResRet.i32 %3107, 0
  %3109 = lshr i32 %3108, 22
  %3110 = shl nuw nsw i32 %3109, 5
  %3111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3110)  ; LegacyF16ToF32(value)
  %3112 = shl i32 %3108, 4
  %3113 = and i32 %3112, 32752
  %3114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3113)  ; LegacyF16ToF32(value)
  %3115 = lshr i32 %3108, 7
  %3116 = and i32 %3115, 32752
  %3117 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3116)  ; LegacyF16ToF32(value)
  %3118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3119 = extractvalue %dx.types.CBufRet.f32 %3118, 3
  %3120 = fmul fast float %3119, 1.000000e+03
  %3121 = fmul fast float %445, %3120
  %3122 = call float @dx.op.unary.f32(i32 22, float %3121)  ; Frc(value)
  %3123 = fadd fast float %3122, %435
  %3124 = fmul fast float %446, %3120
  %3125 = call float @dx.op.unary.f32(i32 22, float %3124)  ; Frc(value)
  %3126 = fadd fast float %3125, %437
  %3127 = fmul fast float %3092, %3120
  %3128 = call float @dx.op.unary.f32(i32 22, float %3127)  ; Frc(value)
  %3129 = fmul fast float %3128, 0x401921FB60000000
  %3130 = fadd fast float %3129, %3111
  %3131 = call float @dx.op.unary.f32(i32 13, float %3130)  ; Sin(value)
  %3132 = call float @dx.op.unary.f32(i32 12, float %3130)  ; Cos(value)
  %3133 = fsub fast float -0.000000e+00, %3131
  %3134 = fadd fast float %3085, -5.000000e-01
  %3135 = fadd fast float %3086, -5.000000e-01
  %3136 = fmul fast float %3103, %3134
  %3137 = fmul fast float %3105, %3135
  %3138 = fadd fast float %3136, 5.000000e-01
  %3139 = fadd fast float %3137, 5.000000e-01
  %3140 = fmul fast float %3114, %3138
  %3141 = fmul fast float %3117, %3139
  %3142 = fmul fast float %3132, %3140
  %3143 = call float @dx.op.tertiary.f32(i32 46, float %3133, float %3141, float %3142)  ; FMad(a,b,c)
  %3144 = fmul fast float %3131, %3140
  %3145 = call float @dx.op.tertiary.f32(i32 46, float %3132, float %3141, float %3144)  ; FMad(a,b,c)
  %3146 = fadd fast float %3123, %3143
  %3147 = fadd fast float %3126, %3145
  %3148 = icmp ugt i32 %3097, 1
  %3149 = icmp ugt i32 %3095, 33554431
  %3150 = or i1 %3149, %3148
  br i1 %3150, label %3151, label %3176

; <label>:3151                                    ; preds = %3078
  %3152 = add i32 %51, 276
  %3153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3152, i32 undef)  ; BufferLoad(srv,index,wot)
  %3154 = extractvalue %dx.types.ResRet.i32 %3153, 0
  %3155 = lshr i32 %3154, 16
  %3156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3155)  ; LegacyF16ToF32(value)
  %3157 = fmul fast float %3119, %3156
  %3158 = call float @dx.op.unary.f32(i32 22, float %3157)  ; Frc(value)
  %3159 = mul nuw nsw i32 %3097, %3098
  %3160 = uitofp i32 %3159 to float
  %3161 = fmul fast float %3158, %3160
  %3162 = call float @dx.op.unary.f32(i32 27, float %3161)  ; Round_ni(value)
  %3163 = fptoui float %3162 to i32
  %3164 = urem i32 %3163, %3097
  %3165 = udiv i32 %3163, %3098
  %3166 = call float @dx.op.unary.f32(i32 22, float %3146)  ; Frc(value)
  %3167 = call float @dx.op.unary.f32(i32 22, float %3147)  ; Frc(value)
  %3168 = uitofp i32 %3164 to float
  %3169 = uitofp i32 %3165 to float
  %3170 = fadd fast float %3166, %3168
  %3171 = fadd fast float %3167, %3169
  %3172 = uitofp i32 %3097 to float
  %3173 = uitofp i32 %3098 to float
  %3174 = fdiv fast float %3170, %3172
  %3175 = fdiv fast float %3171, %3173
  br label %3176

; <label>:3176                                    ; preds = %3151, %3078
  %3177 = phi float [ %3174, %3151 ], [ %3146, %3078 ]
  %3178 = phi float [ %3175, %3151 ], [ %3147, %3078 ]
  %3179 = and i32 %3072, 256
  %3180 = icmp eq i32 %3179, 0
  br i1 %3180, label %3227, label %3181

; <label>:3181                                    ; preds = %3176
  %3182 = add i32 %51, 452
  %3183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3182, i32 undef)  ; BufferLoad(srv,index,wot)
  %3184 = extractvalue %dx.types.ResRet.i32 %3183, 0
  %3185 = add i32 %3184, 0
  %3186 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3185, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3187 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3186, %dx.types.Handle %108, float %3177, float %3178, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3188 = extractvalue %dx.types.ResRet.f32 %3187, 0
  %3189 = add i32 %51, 148
  %3190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3189, i32 undef)  ; BufferLoad(srv,index,wot)
  %3191 = extractvalue %dx.types.ResRet.i32 %3190, 0
  %3192 = shl i32 %3191, 4
  %3193 = and i32 %3192, 32752
  %3194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3193)  ; LegacyF16ToF32(value)
  %3195 = lshr i32 %3191, 7
  %3196 = and i32 %3195, 32752
  %3197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3196)  ; LegacyF16ToF32(value)
  %3198 = fsub fast float 1.000000e+00, %504
  %3199 = call float @dx.op.binary.f32(i32 35, float %3198, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3200 = bitcast float %504 to i32
  %3201 = sitofp i32 %3200 to float
  %3202 = fadd fast float %3201, 0xC1CFBF8940000000
  %3203 = fmul fast float %3197, %3202
  %3204 = fadd fast float %3203, 0x41CFBF8940000000
  %3205 = fptosi float %3204 to i32
  %3206 = bitcast i32 %3205 to float
  %3207 = bitcast float %3199 to i32
  %3208 = sitofp i32 %3207 to float
  %3209 = fadd fast float %3208, 0xC1CFBF8940000000
  %3210 = fmul fast float %3209, %3197
  %3211 = fadd fast float %3210, 0x41CFBF8940000000
  %3212 = fptosi float %3211 to i32
  %3213 = bitcast i32 %3212 to float
  %3214 = fmul fast float %3206, %3194
  %3215 = fmul fast float %3213, %3194
  %3216 = fsub fast float %3199, %3214
  %3217 = fadd fast float %3215, %3199
  %3218 = call float @dx.op.unary.f32(i32 7, float %3216)  ; Saturate(value)
  %3219 = call float @dx.op.unary.f32(i32 7, float %3217)  ; Saturate(value)
  %3220 = fsub fast float %3188, %3218
  %3221 = fsub fast float %3219, %3218
  %3222 = bitcast float %3221 to i32
  %3223 = sub nsw i32 2129859010, %3222
  %3224 = bitcast i32 %3223 to float
  %3225 = fmul fast float %3224, %3220
  %3226 = call float @dx.op.unary.f32(i32 7, float %3225)  ; Saturate(value)
  br label %3227

; <label>:3227                                    ; preds = %3181, %3176
  %3228 = phi float [ %3226, %3181 ], [ %504, %3176 ]
  %3229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3070, i32 undef)  ; BufferLoad(srv,index,wot)
  %3230 = extractvalue %dx.types.ResRet.i32 %3229, 0
  %3231 = and i32 %3230, 128
  %3232 = icmp eq i32 %3231, 0
  br i1 %3232, label %3249, label %3233

; <label>:3233                                    ; preds = %3227
  %3234 = add i32 %51, 436
  %3235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3234, i32 undef)  ; BufferLoad(srv,index,wot)
  %3236 = extractvalue %dx.types.ResRet.i32 %3235, 0
  %3237 = add i32 %3236, 0
  %3238 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3237, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3239 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3238, %dx.types.Handle %108, float %3177, float %3178, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3240 = extractvalue %dx.types.ResRet.f32 %3239, 0
  %3241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3070, i32 undef)  ; BufferLoad(srv,index,wot)
  %3242 = extractvalue %dx.types.ResRet.i32 %3241, 0
  %3243 = and i32 %3242, 524288
  %3244 = icmp ne i32 %3243, 0
  %3245 = fcmp fast ogt float %3240, 0x3FE0101020000000
  %3246 = select i1 %3245, float 1.000000e+00, float 0.000000e+00
  %3247 = select i1 %3244, float %3246, float %3240
  %3248 = fmul fast float %3247, %3228
  br label %3249

; <label>:3249                                    ; preds = %3233, %3227
  %3250 = phi float [ %3248, %3233 ], [ %3228, %3227 ]
  %3251 = fcmp fast ult float %3250, 0x3F70101020000000
  br i1 %3251, label %3990, label %3252

; <label>:3252                                    ; preds = %3249
  %3253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3070, i32 undef)  ; BufferLoad(srv,index,wot)
  %3254 = extractvalue %dx.types.ResRet.i32 %3253, 0
  %3255 = and i32 %3254, 16
  %3256 = icmp eq i32 %3255, 0
  br i1 %3256, label %3455, label %3257

; <label>:3257                                    ; preds = %3252
  %3258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3093, i32 undef)  ; BufferLoad(srv,index,wot)
  %3259 = extractvalue %dx.types.ResRet.i32 %3258, 0
  %3260 = add i32 %51, 388
  %3261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3260, i32 undef)  ; BufferLoad(srv,index,wot)
  %3262 = extractvalue %dx.types.ResRet.i32 %3261, 0
  %3263 = add i32 %3262, 0
  %3264 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3263, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3265 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3264, %dx.types.Handle %107, float %3177, float %3178, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3266 = extractvalue %dx.types.ResRet.f32 %3265, 0
  %3267 = extractvalue %dx.types.ResRet.f32 %3265, 1
  %3268 = extractvalue %dx.types.ResRet.f32 %3265, 2
  %3269 = extractvalue %dx.types.ResRet.f32 %3265, 3
  %3270 = and i32 %3259, 255
  %3271 = uitofp i32 %3270 to float
  %3272 = lshr i32 %3259, 8
  %3273 = and i32 %3272, 255
  %3274 = uitofp i32 %3273 to float
  %3275 = fmul fast float %3269, %3271
  %3276 = fadd fast float %3275, %3274
  %3277 = fmul fast float %3276, 0x3F70101000000000
  %3278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3070, i32 undef)  ; BufferLoad(srv,index,wot)
  %3279 = extractvalue %dx.types.ResRet.i32 %3278, 0
  %3280 = and i32 %3279, 512
  %3281 = icmp eq i32 %3280, 0
  br i1 %3281, label %3290, label %3282

; <label>:3282                                    ; preds = %3257
  %3283 = add i32 %51, 472
  %3284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3283, i32 undef)  ; BufferLoad(srv,index,wot)
  %3285 = extractvalue %dx.types.ResRet.i32 %3284, 0
  %3286 = add i32 %3285, 0
  %3287 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3286, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3288 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3287, %dx.types.Handle %108, float %3177, float %3178, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3289 = extractvalue %dx.types.ResRet.f32 %3288, 0
  br label %3290

; <label>:3290                                    ; preds = %3282, %3257
  %3291 = phi float [ %3289, %3282 ], [ 1.000000e+00, %3257 ]
  %3292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3070, i32 undef)  ; BufferLoad(srv,index,wot)
  %3293 = extractvalue %dx.types.ResRet.i32 %3292, 0
  %3294 = and i32 %3293, 33554432
  %3295 = icmp eq i32 %3294, 0
  br i1 %3295, label %3402, label %3296

; <label>:3296                                    ; preds = %3290
  %3297 = add i32 %51, 272
  %3298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3297, i32 undef)  ; BufferLoad(srv,index,wot)
  %3299 = extractvalue %dx.types.ResRet.i32 %3298, 0
  %3300 = and i32 %3299, 65535
  %3301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3300)  ; LegacyF16ToF32(value)
  %3302 = lshr i32 %3299, 16
  %3303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3302)  ; LegacyF16ToF32(value)
  %3304 = add i32 %51, 276
  %3305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3304, i32 undef)  ; BufferLoad(srv,index,wot)
  %3306 = extractvalue %dx.types.ResRet.i32 %3305, 0
  %3307 = and i32 %3306, 65535
  %3308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3307)  ; LegacyF16ToF32(value)
  %3309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %3310 = extractvalue %dx.types.ResRet.i32 %3309, 0
  %3311 = lshr i32 %3310, 24
  %3312 = uitofp i32 %3311 to float
  %3313 = fmul fast float %3312, 0x3F70101020000000
  %3314 = and i32 %3310, 255
  %3315 = uitofp i32 %3314 to float
  %3316 = fmul fast float %3315, 0x3F70101020000000
  %3317 = lshr i32 %3310, 8
  %3318 = and i32 %3317, 255
  %3319 = uitofp i32 %3318 to float
  %3320 = fmul fast float %3319, 0x3F70101020000000
  %3321 = lshr i32 %3310, 16
  %3322 = and i32 %3321, 255
  %3323 = uitofp i32 %3322 to float
  %3324 = fmul fast float %3323, 0x3F70101020000000
  %3325 = add i32 %51, 268
  %3326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3325, i32 undef)  ; BufferLoad(srv,index,wot)
  %3327 = extractvalue %dx.types.ResRet.i32 %3326, 0
  %3328 = lshr i32 %3327, 24
  %3329 = uitofp i32 %3328 to float
  %3330 = fmul fast float %3329, 0x3F70101020000000
  %3331 = and i32 %3327, 255
  %3332 = uitofp i32 %3331 to float
  %3333 = fmul fast float %3332, 0x3F70101020000000
  %3334 = lshr i32 %3327, 8
  %3335 = and i32 %3334, 255
  %3336 = uitofp i32 %3335 to float
  %3337 = fmul fast float %3336, 0x3F70101020000000
  %3338 = lshr i32 %3327, 16
  %3339 = and i32 %3338, 255
  %3340 = uitofp i32 %3339 to float
  %3341 = fmul fast float %3340, 0x3F70101020000000
  %3342 = bitcast float %3266 to i32
  %3343 = ashr i32 %3342, 1
  %3344 = sub nsw i32 1597463174, %3343
  %3345 = bitcast i32 %3344 to float
  %3346 = fmul fast float %3266, 5.000000e-01
  %3347 = fmul fast float %3345, %3345
  %3348 = fmul fast float %3347, %3346
  %3349 = fsub fast float 1.500000e+00, %3348
  %3350 = fmul fast float %3345, %3266
  %3351 = fmul fast float %3350, %3349
  %3352 = bitcast float %3267 to i32
  %3353 = ashr i32 %3352, 1
  %3354 = sub nsw i32 1597463174, %3353
  %3355 = bitcast i32 %3354 to float
  %3356 = fmul fast float %3267, 5.000000e-01
  %3357 = fmul fast float %3355, %3355
  %3358 = fmul fast float %3357, %3356
  %3359 = fsub fast float 1.500000e+00, %3358
  %3360 = fmul fast float %3355, %3267
  %3361 = fmul fast float %3360, %3359
  %3362 = bitcast float %3268 to i32
  %3363 = ashr i32 %3362, 1
  %3364 = sub nsw i32 1597463174, %3363
  %3365 = bitcast i32 %3364 to float
  %3366 = fmul fast float %3268, 5.000000e-01
  %3367 = fmul fast float %3365, %3365
  %3368 = fmul fast float %3367, %3366
  %3369 = fsub fast float 1.500000e+00, %3368
  %3370 = fmul fast float %3365, %3268
  %3371 = fmul fast float %3370, %3369
  %3372 = fsub fast float %3351, %3333
  %3373 = fsub fast float %3361, %3337
  %3374 = fsub fast float %3371, %3341
  %3375 = fmul fast float %3372, %3301
  %3376 = fmul fast float %3373, %3303
  %3377 = fmul fast float %3374, %3308
  %3378 = fadd fast float %3375, %3316
  %3379 = fadd fast float %3376, %3320
  %3380 = fadd fast float %3377, %3324
  %3381 = call float @dx.op.unary.f32(i32 7, float %3378)  ; Saturate(value)
  %3382 = call float @dx.op.unary.f32(i32 7, float %3379)  ; Saturate(value)
  %3383 = call float @dx.op.unary.f32(i32 7, float %3380)  ; Saturate(value)
  %3384 = fmul fast float %3381, %3381
  %3385 = fmul fast float %3382, %3382
  %3386 = fmul fast float %3383, %3383
  %3387 = fsub fast float %3384, %3266
  %3388 = fsub fast float %3385, %3267
  %3389 = fsub fast float %3386, %3268
  %3390 = fmul fast float %3387, %3291
  %3391 = fmul fast float %3388, %3291
  %3392 = fmul fast float %3389, %3291
  %3393 = fadd fast float %3390, %3266
  %3394 = fadd fast float %3391, %3267
  %3395 = fadd fast float %3392, %3268
  %3396 = fadd fast float %3313, %3277
  %3397 = fsub fast float %3396, %3330
  %3398 = call float @dx.op.unary.f32(i32 7, float %3397)  ; Saturate(value)
  %3399 = fsub fast float %3398, %3277
  %3400 = fmul fast float %3399, %3291
  %3401 = fadd fast float %3400, %3277
  br label %3455

; <label>:3402                                    ; preds = %3290
  %3403 = and i32 %3293, 134217728
  %3404 = icmp eq i32 %3403, 0
  br i1 %3404, label %3439, label %3405

; <label>:3405                                    ; preds = %3402
  %3406 = call float @dx.op.unary.f32(i32 24, float %422)  ; Sqrt(value)
  %3407 = call float @dx.op.unary.f32(i32 24, float %426)  ; Sqrt(value)
  %3408 = call float @dx.op.unary.f32(i32 24, float %430)  ; Sqrt(value)
  %3409 = fadd fast float %3406, -5.000000e-01
  %3410 = fadd fast float %3407, -5.000000e-01
  %3411 = fadd fast float %3408, -5.000000e-01
  %3412 = fmul fast float %3409, %3291
  %3413 = fmul fast float %3410, %3291
  %3414 = fmul fast float %3411, %3291
  %3415 = fadd fast float %3412, 5.000000e-01
  %3416 = fadd fast float %3413, 5.000000e-01
  %3417 = fadd fast float %3414, 5.000000e-01
  %3418 = call float @dx.op.unary.f32(i32 24, float %3266)  ; Sqrt(value)
  %3419 = call float @dx.op.unary.f32(i32 24, float %3267)  ; Sqrt(value)
  %3420 = call float @dx.op.unary.f32(i32 24, float %3268)  ; Sqrt(value)
  %3421 = fmul fast float %3415, 2.000000e+00
  %3422 = fsub fast float 1.000000e+00, %3421
  %3423 = fmul fast float %3422, %3418
  %3424 = fadd fast float %3423, %3421
  %3425 = fmul fast float %3424, %3418
  %3426 = fmul fast float %3416, 2.000000e+00
  %3427 = fsub fast float 1.000000e+00, %3426
  %3428 = fmul fast float %3427, %3419
  %3429 = fadd fast float %3428, %3426
  %3430 = fmul fast float %3429, %3419
  %3431 = fmul fast float %3417, 2.000000e+00
  %3432 = fsub fast float 1.000000e+00, %3431
  %3433 = fmul fast float %3432, %3420
  %3434 = fadd fast float %3433, %3431
  %3435 = fmul fast float %3434, %3420
  %3436 = fmul fast float %3425, %3425
  %3437 = fmul fast float %3430, %3430
  %3438 = fmul fast float %3435, %3435
  br label %3455

; <label>:3439                                    ; preds = %3402
  %3440 = fmul fast float %422, %422
  %3441 = fmul fast float %426, %426
  %3442 = fmul fast float %430, %430
  %3443 = fadd fast float %3440, -1.000000e+00
  %3444 = fadd fast float %3441, -1.000000e+00
  %3445 = fadd fast float %3442, -1.000000e+00
  %3446 = fmul fast float %3291, %3443
  %3447 = fmul fast float %3291, %3444
  %3448 = fmul fast float %3291, %3445
  %3449 = fadd fast float %3446, 1.000000e+00
  %3450 = fadd fast float %3447, 1.000000e+00
  %3451 = fadd fast float %3448, 1.000000e+00
  %3452 = fmul fast float %3449, %3266
  %3453 = fmul fast float %3450, %3267
  %3454 = fmul fast float %3451, %3268
  br label %3455

; <label>:3455                                    ; preds = %3439, %3405, %3296, %3252
  %3456 = phi float [ %3401, %3296 ], [ %3277, %3405 ], [ %3277, %3439 ], [ 0x3FA23C0BE0000000, %3252 ]
  %3457 = phi float [ %3393, %3296 ], [ %3436, %3405 ], [ %3452, %3439 ], [ 1.000000e+00, %3252 ]
  %3458 = phi float [ %3394, %3296 ], [ %3437, %3405 ], [ %3453, %3439 ], [ 1.000000e+00, %3252 ]
  %3459 = phi float [ %3395, %3296 ], [ %3438, %3405 ], [ %3454, %3439 ], [ 1.000000e+00, %3252 ]
  %3460 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3461 = extractvalue %dx.types.CBufRet.i32 %3460, 1
  %3462 = and i32 %3461, 1
  %3463 = icmp ne i32 %3462, 0
  %3464 = add i32 %51, 356
  %3465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3464, i32 undef)  ; BufferLoad(srv,index,wot)
  %3466 = extractvalue %dx.types.ResRet.i32 %3465, 0
  %3467 = and i32 %3466, 32
  %3468 = icmp ne i32 %3467, 0
  %3469 = and i1 %3463, %3468
  %3470 = select i1 %3469, float 1.000000e+00, float %3457
  %3471 = select i1 %3469, float 0x3FD3333340000000, float %3458
  %3472 = select i1 %3469, float 0x3FD3333340000000, float %3459
  %3473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3070, i32 undef)  ; BufferLoad(srv,index,wot)
  %3474 = extractvalue %dx.types.ResRet.i32 %3473, 0
  %3475 = and i32 %3474, 32
  %3476 = icmp eq i32 %3475, 0
  br i1 %3476, label %3549, label %3477

; <label>:3477                                    ; preds = %3455
  %3478 = add i32 %51, 140
  %3479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3478, i32 undef)  ; BufferLoad(srv,index,wot)
  %3480 = extractvalue %dx.types.ResRet.i32 %3479, 0
  %3481 = add i32 %51, 404
  %3482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3481, i32 undef)  ; BufferLoad(srv,index,wot)
  %3483 = extractvalue %dx.types.ResRet.i32 %3482, 0
  %3484 = add i32 %3483, 0
  %3485 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3484, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3486 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3485, %dx.types.Handle %107, float %3177, float %3178, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3487 = extractvalue %dx.types.ResRet.f32 %3486, 0
  %3488 = extractvalue %dx.types.ResRet.f32 %3486, 1
  %3489 = extractvalue %dx.types.ResRet.f32 %3486, 2
  %3490 = extractvalue %dx.types.ResRet.f32 %3486, 3
  %3491 = and i32 %3480, 255
  %3492 = uitofp i32 %3491 to float
  %3493 = lshr i32 %3480, 8
  %3494 = and i32 %3493, 255
  %3495 = uitofp i32 %3494 to float
  %3496 = lshr i32 %3480, 16
  %3497 = and i32 %3496, 255
  %3498 = uitofp i32 %3497 to float
  %3499 = fmul fast float %3498, 0x3F70101000000000
  %3500 = fmul fast float %3487, %3492
  %3501 = fadd fast float %3500, %3495
  %3502 = fmul fast float %3501, 0x3F70101000000000
  %3503 = fadd fast float %3488, -5.000000e-01
  %3504 = fadd fast float %3490, -5.000000e-01
  %3505 = fmul fast float %3503, %3499
  %3506 = fmul fast float %3504, %3499
  %3507 = fadd fast float %3505, 5.000000e-01
  %3508 = fadd fast float %3506, 5.000000e-01
  %3509 = fmul fast float %3507, 2.000000e+00
  %3510 = fadd fast float %3509, -1.000000e+00
  %3511 = fmul fast float %3508, 2.000000e+00
  %3512 = fadd fast float %3511, -1.000000e+00
  %3513 = fadd fast float %3510, %3512
  %3514 = fmul fast float %3513, 5.000000e-01
  %3515 = fsub fast float %3510, %3512
  %3516 = fmul fast float %3515, 5.000000e-01
  %3517 = call float @dx.op.unary.f32(i32 6, float %3514)  ; FAbs(value)
  %3518 = fsub fast float 1.000000e+00, %3517
  %3519 = call float @dx.op.unary.f32(i32 6, float %3516)  ; FAbs(value)
  %3520 = fsub fast float %3518, %3519
  %3521 = call float @dx.op.dot3.f32(i32 55, float %3514, float %3516, float %3520, float %3514, float %3516, float %3520)  ; Dot3(ax,ay,az,bx,by,bz)
  %3522 = call float @dx.op.unary.f32(i32 25, float %3521)  ; Rsqrt(value)
  %3523 = fmul fast float %3514, %3522
  %3524 = fmul fast float %3516, %3522
  %3525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3070, i32 undef)  ; BufferLoad(srv,index,wot)
  %3526 = extractvalue %dx.types.ResRet.i32 %3525, 0
  %3527 = and i32 %3526, 67108864
  %3528 = icmp eq i32 %3527, 0
  br i1 %3528, label %3545, label %3529

; <label>:3529                                    ; preds = %3477
  %3530 = add i32 %51, 328
  %3531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3530, i32 undef)  ; BufferLoad(srv,index,wot)
  %3532 = extractvalue %dx.types.ResRet.i32 %3531, 0
  %3533 = and i32 %3532, 65535
  %3534 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3533)  ; LegacyF16ToF32(value)
  %3535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3087, i32 undef)  ; BufferLoad(srv,index,wot)
  %3536 = extractvalue %dx.types.ResRet.i32 %3535, 0
  %3537 = and i32 %3536, 65535
  %3538 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3537)  ; LegacyF16ToF32(value)
  %3539 = lshr i32 %3532, 16
  %3540 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3539)  ; LegacyF16ToF32(value)
  %3541 = fsub fast float %3502, %3540
  %3542 = fmul fast float %3541, %3534
  %3543 = fadd fast float %3542, %3538
  %3544 = call float @dx.op.unary.f32(i32 7, float %3543)  ; Saturate(value)
  br label %3545

; <label>:3545                                    ; preds = %3529, %3477
  %3546 = phi float [ %3544, %3529 ], [ %3502, %3477 ]
  %3547 = call float @dx.op.dot2.f32(i32 54, float %3523, float %3524, float %3081, float %3082)  ; Dot2(ax,ay,bx,by)
  %3548 = call float @dx.op.dot2.f32(i32 54, float %3523, float %3524, float %3083, float %3084)  ; Dot2(ax,ay,bx,by)
  br label %3549

; <label>:3549                                    ; preds = %3545, %3455
  %3550 = phi float [ %3546, %3545 ], [ 0x3FD6666660000000, %3455 ]
  %3551 = phi float [ %3547, %3545 ], [ 0.000000e+00, %3455 ]
  %3552 = phi float [ %3548, %3545 ], [ 0.000000e+00, %3455 ]
  %3553 = phi float [ %3489, %3545 ], [ 1.000000e+00, %3455 ]
  %3554 = add i32 %51, 208
  %3555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3554, i32 undef)  ; BufferLoad(srv,index,wot)
  %3556 = extractvalue %dx.types.ResRet.i32 %3555, 0
  %3557 = lshr i32 %3556, 22
  %3558 = shl nuw nsw i32 %3557, 5
  %3559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3558)  ; LegacyF16ToF32(value)
  %3560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3070, i32 undef)  ; BufferLoad(srv,index,wot)
  %3561 = extractvalue %dx.types.ResRet.i32 %3560, 0
  %3562 = and i32 %3561, 64
  %3563 = icmp eq i32 %3562, 0
  br i1 %3563, label %3597, label %3564

; <label>:3564                                    ; preds = %3549
  %3565 = add i32 %51, 420
  %3566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3565, i32 undef)  ; BufferLoad(srv,index,wot)
  %3567 = extractvalue %dx.types.ResRet.i32 %3566, 0
  %3568 = add i32 %3567, 0
  %3569 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3568, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3070, i32 undef)  ; BufferLoad(srv,index,wot)
  %3571 = extractvalue %dx.types.ResRet.i32 %3570, 0
  %3572 = and i32 %3571, 131072
  %3573 = icmp eq i32 %3572, 0
  %3574 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3569, %dx.types.Handle %107, float %3177, float %3178, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3575 = extractvalue %dx.types.ResRet.f32 %3574, 0
  %3576 = extractvalue %dx.types.ResRet.f32 %3574, 1
  %3577 = extractvalue %dx.types.ResRet.f32 %3574, 2
  %3578 = fmul fast float %3575, %410
  %3579 = fmul fast float %3576, %413
  %3580 = fmul fast float %3577, %416
  br i1 %3573, label %3587, label %3581

; <label>:3581                                    ; preds = %3564
  %3582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3583 = extractvalue %dx.types.CBufRet.f32 %3582, 0
  %3584 = fmul fast float %3583, %3578
  %3585 = fmul fast float %3583, %3579
  %3586 = fmul fast float %3583, %3580
  br label %3587

; <label>:3587                                    ; preds = %3581, %3564
  %3588 = phi float [ %3584, %3581 ], [ %3578, %3564 ]
  %3589 = phi float [ %3585, %3581 ], [ %3579, %3564 ]
  %3590 = phi float [ %3586, %3581 ], [ %3580, %3564 ]
  %3591 = fmul fast float %3588, %3559
  %3592 = select i1 %264, float %3591, float %3588
  %3593 = call float @dx.op.dot3.f32(i32 55, float %3592, float %3589, float %3590, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3594 = select i1 %264, float 0.000000e+00, float %3588
  %3595 = select i1 %264, float %3593, float %3589
  %3596 = select i1 %264, float 0.000000e+00, float %3590
  br label %3597

; <label>:3597                                    ; preds = %3587, %3549
  %3598 = phi float [ %3594, %3587 ], [ 0.000000e+00, %3549 ]
  %3599 = phi float [ %3595, %3587 ], [ 0.000000e+00, %3549 ]
  %3600 = phi float [ %3596, %3587 ], [ 0.000000e+00, %3549 ]
  %3601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3070, i32 undef)  ; BufferLoad(srv,index,wot)
  %3602 = extractvalue %dx.types.ResRet.i32 %3601, 0
  %3603 = and i32 %3602, 1024
  %3604 = icmp eq i32 %3603, 0
  br i1 %3604, label %3635, label %3605

; <label>:3605                                    ; preds = %3597
  %3606 = add i32 %51, 200
  %3607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3606, i32 undef)  ; BufferLoad(srv,index,wot)
  %3608 = extractvalue %dx.types.ResRet.i32 %3607, 0
  %3609 = and i32 %3608, 255
  %3610 = uitofp i32 %3609 to float
  %3611 = fmul fast float %3610, 0x3F70101020000000
  %3612 = lshr i32 %3608, 8
  %3613 = and i32 %3612, 255
  %3614 = uitofp i32 %3613 to float
  %3615 = fmul fast float %3614, 0x3F70101020000000
  %3616 = lshr i32 %3608, 16
  %3617 = and i32 %3616, 255
  %3618 = uitofp i32 %3617 to float
  %3619 = fmul fast float %3618, 0x3F70101020000000
  %3620 = fmul fast float %3611, %3611
  %3621 = fmul fast float %3615, %3615
  %3622 = fmul fast float %3619, %3619
  %3623 = add i32 %51, 488
  %3624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3623, i32 undef)  ; BufferLoad(srv,index,wot)
  %3625 = extractvalue %dx.types.ResRet.i32 %3624, 0
  %3626 = add i32 %3625, 0
  %3627 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3626, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3628 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3627, %dx.types.Handle %108, float %3177, float %3178, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3629 = extractvalue %dx.types.ResRet.f32 %3628, 0
  %3630 = extractvalue %dx.types.ResRet.f32 %3628, 1
  %3631 = extractvalue %dx.types.ResRet.f32 %3628, 2
  %3632 = fmul fast float %3620, %3629
  %3633 = fmul fast float %3621, %3630
  %3634 = fmul fast float %3622, %3631
  br label %3635

; <label>:3635                                    ; preds = %3605, %3597
  %3636 = phi float [ %3632, %3605 ], [ 0.000000e+00, %3597 ]
  %3637 = phi float [ %3633, %3605 ], [ 0.000000e+00, %3597 ]
  %3638 = phi float [ %3634, %3605 ], [ 0.000000e+00, %3597 ]
  %3639 = fcmp fast ogt float %3636, 0.000000e+00
  %3640 = fcmp fast ogt float %3637, 0.000000e+00
  %3641 = fcmp fast ogt float %3638, 0.000000e+00
  %3642 = call float @dx.op.unary.f32(i32 23, float %3636)  ; Log(value)
  %3643 = call float @dx.op.unary.f32(i32 23, float %3637)  ; Log(value)
  %3644 = call float @dx.op.unary.f32(i32 23, float %3638)  ; Log(value)
  %3645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3554, i32 undef)  ; BufferLoad(srv,index,wot)
  %3646 = extractvalue %dx.types.ResRet.i32 %3645, 0
  %3647 = lshr i32 %3646, 7
  %3648 = and i32 %3647, 32752
  %3649 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3648)  ; LegacyF16ToF32(value)
  %3650 = fmul fast float %3642, 0xBFE62E4300000000
  %3651 = fmul fast float %3650, %3649
  %3652 = fmul fast float %3643, 0xBFE62E4300000000
  %3653 = fmul fast float %3652, %3649
  %3654 = fmul fast float %3644, 0xBFE62E4300000000
  %3655 = fmul fast float %3654, %3649
  %3656 = select i1 %3639, float %3651, float 1.270000e+02
  %3657 = select i1 %3640, float %3653, float 1.270000e+02
  %3658 = select i1 %3641, float %3655, float 1.270000e+02
  %3659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3070, i32 undef)  ; BufferLoad(srv,index,wot)
  %3660 = extractvalue %dx.types.ResRet.i32 %3659, 0
  %3661 = and i32 %3660, 10240
  %3662 = icmp eq i32 %3661, 0
  br i1 %3662, label %3707, label %3663

; <label>:3663                                    ; preds = %3635
  %3664 = add i32 %51, 504
  %3665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3664, i32 undef)  ; BufferLoad(srv,index,wot)
  %3666 = extractvalue %dx.types.ResRet.i32 %3665, 0
  %3667 = add i32 %3666, 0
  %3668 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3667, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3669 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3668, %dx.types.Handle %108, float %3177, float %3178, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3670 = extractvalue %dx.types.ResRet.f32 %3669, 1
  %3671 = extractvalue %dx.types.ResRet.f32 %3669, 3
  %3672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3070, i32 undef)  ; BufferLoad(srv,index,wot)
  %3673 = extractvalue %dx.types.ResRet.i32 %3672, 0
  %3674 = and i32 %3673, 1048576
  %3675 = icmp ne i32 %3674, 0
  %3676 = and i32 %3673, 8192
  %3677 = icmp eq i32 %3676, 0
  br i1 %3677, label %3693, label %3678

; <label>:3678                                    ; preds = %3663
  %3679 = extractvalue %dx.types.ResRet.f32 %3669, 2
  %3680 = select i1 %3675, float %3679, float %3670
  %3681 = extractvalue %dx.types.ResRet.f32 %3669, 0
  %3682 = select i1 %3675, float %3681, float %3670
  %3683 = add i32 %51, 144
  %3684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3683, i32 undef)  ; BufferLoad(srv,index,wot)
  %3685 = extractvalue %dx.types.ResRet.i32 %3684, 0
  %3686 = lshr i32 %3685, 16
  %3687 = and i32 %3686, 255
  %3688 = uitofp i32 %3687 to float
  %3689 = fmul fast float %3688, 0x3F80101020000000
  %3690 = fmul fast float %3689, %3682
  %3691 = fmul fast float %3689, %3670
  %3692 = fmul fast float %3689, %3680
  br label %3693

; <label>:3693                                    ; preds = %3678, %3663
  %3694 = phi float [ %3690, %3678 ], [ 0.000000e+00, %3663 ]
  %3695 = phi float [ %3691, %3678 ], [ 0.000000e+00, %3663 ]
  %3696 = phi float [ %3692, %3678 ], [ 0.000000e+00, %3663 ]
  %3697 = and i32 %3673, 2048
  %3698 = icmp eq i32 %3697, 0
  br i1 %3698, label %3707, label %3699

; <label>:3699                                    ; preds = %3693
  %3700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3554, i32 undef)  ; BufferLoad(srv,index,wot)
  %3701 = extractvalue %dx.types.ResRet.i32 %3700, 0
  %3702 = shl i32 %3701, 4
  %3703 = and i32 %3702, 32752
  %3704 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3703)  ; LegacyF16ToF32(value)
  %3705 = fmul fast float %3704, %3671
  %3706 = call float @dx.op.binary.f32(i32 35, float %3705, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3707

; <label>:3707                                    ; preds = %3699, %3693, %3635
  %3708 = phi float [ %3694, %3699 ], [ %3694, %3693 ], [ 0.000000e+00, %3635 ]
  %3709 = phi float [ %3695, %3699 ], [ %3695, %3693 ], [ 0.000000e+00, %3635 ]
  %3710 = phi float [ %3696, %3699 ], [ %3696, %3693 ], [ 0.000000e+00, %3635 ]
  %3711 = phi float [ %3706, %3699 ], [ 0x3F70101020000000, %3693 ], [ 0x3F70101020000000, %3635 ]
  %3712 = add i32 %51, 144
  %3713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3712, i32 undef)  ; BufferLoad(srv,index,wot)
  %3714 = extractvalue %dx.types.ResRet.i32 %3713, 0
  %3715 = and i32 %3714, 255
  %3716 = uitofp i32 %3715 to float
  %3717 = lshr i32 %3714, 8
  %3718 = and i32 %3717, 255
  %3719 = uitofp i32 %3718 to float
  %3720 = call float @dx.op.dot3.f32(i32 55, float %3470, float %3471, float %3472, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3721 = fmul fast float %3719, %3720
  %3722 = fadd fast float %3721, %3716
  %3723 = fmul fast float %3722, 0x3F70101020000000
  %3724 = call float @dx.op.unary.f32(i32 7, float %3723)  ; Saturate(value)
  br i1 %3069, label %3725, label %3760

; <label>:3725                                    ; preds = %3707
  %3726 = fmul fast float %3711, 2.000000e+00
  %3727 = fcmp fast olt float %3656, 1.270000e+02
  %3728 = fcmp fast olt float %3657, 1.270000e+02
  %3729 = fcmp fast olt float %3658, 1.270000e+02
  %3730 = fmul fast float %3656, 0xBFF7154760000000
  %3731 = fmul fast float %3730, %3726
  %3732 = fmul fast float %3657, 0xBFF7154760000000
  %3733 = fmul fast float %3732, %3726
  %3734 = fmul fast float %3658, 0xBFF7154760000000
  %3735 = fmul fast float %3734, %3726
  %3736 = call float @dx.op.unary.f32(i32 21, float %3731)  ; Exp(value)
  %3737 = call float @dx.op.unary.f32(i32 21, float %3733)  ; Exp(value)
  %3738 = call float @dx.op.unary.f32(i32 21, float %3735)  ; Exp(value)
  %3739 = call float @dx.op.unary.f32(i32 7, float %3736)  ; Saturate(value)
  %3740 = call float @dx.op.unary.f32(i32 7, float %3737)  ; Saturate(value)
  %3741 = call float @dx.op.unary.f32(i32 7, float %3738)  ; Saturate(value)
  %3742 = fadd fast float %3739, -1.000000e+00
  %3743 = select i1 %3727, float %3742, float -1.000000e+00
  %3744 = fadd fast float %3740, -1.000000e+00
  %3745 = select i1 %3728, float %3744, float -1.000000e+00
  %3746 = fadd fast float %3741, -1.000000e+00
  %3747 = select i1 %3729, float %3746, float -1.000000e+00
  %3748 = fmul fast float %3743, %3250
  %3749 = fmul fast float %3745, %3250
  %3750 = fmul fast float %3747, %3250
  %3751 = fadd fast float %3748, 1.000000e+00
  %3752 = fadd fast float %3749, 1.000000e+00
  %3753 = fadd fast float %3750, 1.000000e+00
  %3754 = fmul fast float %3751, %3051
  %3755 = fmul fast float %3752, %3052
  %3756 = fmul fast float %3753, %3053
  %3757 = fmul fast float %3751, %3054
  %3758 = fmul fast float %3752, %3055
  %3759 = fmul fast float %3753, %3056
  br label %3760

; <label>:3760                                    ; preds = %3725, %3707
  %3761 = phi float [ %3754, %3725 ], [ %3051, %3707 ]
  %3762 = phi float [ %3755, %3725 ], [ %3052, %3707 ]
  %3763 = phi float [ %3756, %3725 ], [ %3053, %3707 ]
  %3764 = phi float [ %3757, %3725 ], [ %3054, %3707 ]
  %3765 = phi float [ %3758, %3725 ], [ %3055, %3707 ]
  %3766 = phi float [ %3759, %3725 ], [ %3056, %3707 ]
  %3767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3070, i32 undef)  ; BufferLoad(srv,index,wot)
  %3768 = extractvalue %dx.types.ResRet.i32 %3767, 0
  %3769 = and i32 %3768, 3
  %3770 = icmp eq i32 %3769, 3
  br i1 %3770, label %3849, label %3771

; <label>:3771                                    ; preds = %3760
  %3772 = and i32 %3768, 16
  %3773 = icmp ne i32 %3772, 0
  %3774 = select i1 %3773, float %3250, float 0.000000e+00
  %3775 = icmp eq i32 %3769, 0
  br i1 %3775, label %3776, label %3804

; <label>:3776                                    ; preds = %3771
  %3777 = and i32 %3768, 64
  %3778 = icmp ne i32 %3777, 0
  %3779 = select i1 %3778, float %3250, float 0.000000e+00
  %3780 = fsub fast float %3470, %3761
  %3781 = fsub fast float %3471, %3762
  %3782 = fsub fast float %3472, %3763
  %3783 = fmul fast float %3774, %3780
  %3784 = fmul fast float %3774, %3781
  %3785 = fmul fast float %3774, %3782
  %3786 = fadd fast float %3783, %3761
  %3787 = fadd fast float %3784, %3762
  %3788 = fadd fast float %3785, %3763
  %3789 = fsub fast float %3456, %3063
  %3790 = fmul fast float %3774, %3789
  %3791 = fadd fast float %3790, %3063
  %3792 = fsub fast float %3598, %3764
  %3793 = fsub fast float %3599, %3765
  %3794 = fsub fast float %3600, %3766
  %3795 = fmul fast float %3779, %3792
  %3796 = fmul fast float %3779, %3793
  %3797 = fmul fast float %3779, %3794
  %3798 = fadd fast float %3795, %3764
  %3799 = fadd fast float %3796, %3765
  %3800 = fadd fast float %3797, %3766
  %3801 = fsub fast float %3724, %3067
  %3802 = fmul fast float %3774, %3801
  %3803 = fadd fast float %3802, %3067
  br label %3849

; <label>:3804                                    ; preds = %3771
  %3805 = icmp eq i32 %3769, 1
  br i1 %3805, label %3806, label %3819

; <label>:3806                                    ; preds = %3804
  %3807 = fadd fast float %3470, -1.000000e+00
  %3808 = fadd fast float %3471, -1.000000e+00
  %3809 = fadd fast float %3472, -1.000000e+00
  %3810 = fmul fast float %3774, %3807
  %3811 = fmul fast float %3774, %3808
  %3812 = fmul fast float %3774, %3809
  %3813 = fadd fast float %3810, 1.000000e+00
  %3814 = fadd fast float %3811, 1.000000e+00
  %3815 = fadd fast float %3812, 1.000000e+00
  %3816 = fmul fast float %3813, %3761
  %3817 = fmul fast float %3814, %3762
  %3818 = fmul fast float %3815, %3763
  br label %3849

; <label>:3819                                    ; preds = %3804
  %3820 = icmp eq i32 %3769, 2
  br i1 %3820, label %3821, label %3849

; <label>:3821                                    ; preds = %3819
  %3822 = call float @dx.op.unary.f32(i32 24, float %3470)  ; Sqrt(value)
  %3823 = call float @dx.op.unary.f32(i32 24, float %3471)  ; Sqrt(value)
  %3824 = call float @dx.op.unary.f32(i32 24, float %3472)  ; Sqrt(value)
  %3825 = fadd fast float %3822, -5.000000e-01
  %3826 = fadd fast float %3823, -5.000000e-01
  %3827 = fadd fast float %3824, -5.000000e-01
  %3828 = fmul fast float %3825, %3774
  %3829 = fmul fast float %3826, %3774
  %3830 = fmul fast float %3827, %3774
  %3831 = fadd fast float %3828, 5.000000e-01
  %3832 = fadd fast float %3829, 5.000000e-01
  %3833 = fadd fast float %3830, 5.000000e-01
  %3834 = fmul fast float %3831, 2.000000e+00
  %3835 = fsub fast float 1.000000e+00, %3834
  %3836 = fmul fast float %3835, %3761
  %3837 = fadd fast float %3836, %3834
  %3838 = fmul fast float %3837, %3761
  %3839 = fmul fast float %3832, 2.000000e+00
  %3840 = fsub fast float 1.000000e+00, %3839
  %3841 = fmul fast float %3840, %3762
  %3842 = fadd fast float %3841, %3839
  %3843 = fmul fast float %3842, %3762
  %3844 = fmul fast float %3833, 2.000000e+00
  %3845 = fsub fast float 1.000000e+00, %3844
  %3846 = fmul fast float %3845, %3763
  %3847 = fadd fast float %3846, %3844
  %3848 = fmul fast float %3847, %3763
  br label %3849

; <label>:3849                                    ; preds = %3821, %3819, %3806, %3776, %3760
  %3850 = phi float [ %3761, %3760 ], [ %3838, %3821 ], [ %3761, %3819 ], [ %3816, %3806 ], [ %3786, %3776 ]
  %3851 = phi float [ %3762, %3760 ], [ %3843, %3821 ], [ %3762, %3819 ], [ %3817, %3806 ], [ %3787, %3776 ]
  %3852 = phi float [ %3763, %3760 ], [ %3848, %3821 ], [ %3763, %3819 ], [ %3818, %3806 ], [ %3788, %3776 ]
  %3853 = phi float [ %3764, %3760 ], [ %3764, %3821 ], [ %3764, %3819 ], [ %3764, %3806 ], [ %3798, %3776 ]
  %3854 = phi float [ %3765, %3760 ], [ %3765, %3821 ], [ %3765, %3819 ], [ %3765, %3806 ], [ %3799, %3776 ]
  %3855 = phi float [ %3766, %3760 ], [ %3766, %3821 ], [ %3766, %3819 ], [ %3766, %3806 ], [ %3800, %3776 ]
  %3856 = phi float [ %3063, %3760 ], [ %3063, %3821 ], [ %3063, %3819 ], [ %3063, %3806 ], [ %3791, %3776 ]
  %3857 = phi float [ %3067, %3760 ], [ %3067, %3821 ], [ %3067, %3819 ], [ %3067, %3806 ], [ %3803, %3776 ]
  %3858 = and i32 %3768, 12
  %3859 = icmp eq i32 %3858, 12
  br i1 %3859, label %3990, label %3860

; <label>:3860                                    ; preds = %3849
  %3861 = and i32 %3768, 2097184
  %3862 = icmp eq i32 %3861, 2097184
  %3863 = select i1 %3862, float %3250, float 0.000000e+00
  %3864 = and i32 %3768, 4194336
  %3865 = icmp eq i32 %3864, 4194336
  %3866 = select i1 %3865, float %3250, float 0.000000e+00
  %3867 = and i32 %3768, 8388640
  %3868 = icmp eq i32 %3867, 8388640
  %3869 = select i1 %3868, float %3250, float 0.000000e+00
  %3870 = and i32 %3768, 1024
  %3871 = icmp ne i32 %3870, 0
  %3872 = select i1 %3871, float %3250, float 0.000000e+00
  %3873 = and i32 %3768, 2048
  %3874 = icmp ne i32 %3873, 0
  %3875 = select i1 %3874, float %3250, float 0.000000e+00
  %3876 = and i32 %3768, 8192
  %3877 = icmp ne i32 %3876, 0
  %3878 = select i1 %3877, float %3250, float 0.000000e+00
  %3879 = icmp eq i32 %3858, 0
  br i1 %3879, label %3880, label %3914

; <label>:3880                                    ; preds = %3860
  %3881 = fsub fast float %3551, %3049
  %3882 = fsub fast float %3552, %3050
  %3883 = fmul fast float %3863, %3881
  %3884 = fmul fast float %3863, %3882
  %3885 = fadd fast float %3883, %3049
  %3886 = fadd fast float %3884, %3050
  %3887 = fsub fast float %3553, %3065
  %3888 = fmul fast float %3866, %3887
  %3889 = fadd fast float %3888, %3065
  %3890 = fsub fast float %3550, %3064
  %3891 = fmul fast float %3869, %3890
  %3892 = fadd fast float %3891, %3064
  %3893 = fsub fast float %3656, %3060
  %3894 = fsub fast float %3657, %3061
  %3895 = fsub fast float %3658, %3062
  %3896 = fmul fast float %3872, %3893
  %3897 = fmul fast float %3872, %3894
  %3898 = fmul fast float %3872, %3895
  %3899 = fadd fast float %3896, %3060
  %3900 = fadd fast float %3897, %3061
  %3901 = fadd fast float %3898, %3062
  %3902 = fsub fast float %3711, %3066
  %3903 = fmul fast float %3875, %3902
  %3904 = fadd fast float %3903, %3066
  %3905 = fsub fast float %3708, %3057
  %3906 = fsub fast float %3709, %3058
  %3907 = fsub fast float %3710, %3059
  %3908 = fmul fast float %3878, %3905
  %3909 = fmul fast float %3878, %3906
  %3910 = fmul fast float %3878, %3907
  %3911 = fadd fast float %3908, %3057
  %3912 = fadd fast float %3909, %3058
  %3913 = fadd fast float %3910, %3059
  br label %3990

; <label>:3914                                    ; preds = %3860
  %3915 = icmp eq i32 %3858, 4
  br i1 %3915, label %3916, label %3962

; <label>:3916                                    ; preds = %3914
  %3917 = fmul fast float %3863, %3551
  %3918 = fmul fast float %3863, %3552
  %3919 = fadd fast float %3917, %3049
  %3920 = fadd fast float %3918, %3050
  %3921 = call float @dx.op.binary.f32(i32 36, float %3065, float %3553)  ; FMin(a,b)
  %3922 = fsub fast float %3921, %3065
  %3923 = fmul fast float %3922, %3866
  %3924 = fadd fast float %3923, %3065
  %3925 = fadd fast float %3550, %3064
  %3926 = fmul fast float %3925, 0x3FF337FAE0000000
  %3927 = fmul fast float %3064, %3064
  %3928 = fmul fast float %3550, %3550
  %3929 = fadd fast float %3928, %3927
  %3930 = fmul fast float %3929, 0x3FE5152B00000000
  %3931 = fmul fast float %3064, 0xBFCC1F85E0000000
  %3932 = fmul fast float %3931, %3550
  %3933 = fadd fast float %3932, 0xBFE1363700000000
  %3934 = fadd fast float %3933, %3926
  %3935 = fsub fast float %3934, %3930
  %3936 = fmul fast float %3925, 0x3FBA6F0D00000000
  %3937 = fmul fast float %3929, 0x3FD0432880000000
  %3938 = fmul fast float %3064, 0xBFEF110800000000
  %3939 = fmul fast float %3938, %3550
  %3940 = fadd fast float %3939, 1.000000e+00
  %3941 = fsub fast float %3940, %3936
  %3942 = fadd fast float %3941, %3937
  %3943 = fdiv fast float %3935, %3942
  %3944 = call float @dx.op.unary.f32(i32 7, float %3943)  ; Saturate(value)
  %3945 = fsub fast float %3944, %3064
  %3946 = fmul fast float %3945, %3869
  %3947 = fadd fast float %3946, %3064
  %3948 = fmul fast float %3872, %3656
  %3949 = fmul fast float %3872, %3657
  %3950 = fmul fast float %3872, %3658
  %3951 = fadd fast float %3948, %3060
  %3952 = fadd fast float %3949, %3061
  %3953 = fadd fast float %3950, %3062
  %3954 = fmul fast float %3875, %3711
  %3955 = fadd fast float %3954, %3066
  %3956 = fmul fast float %3878, %3708
  %3957 = fmul fast float %3878, %3709
  %3958 = fmul fast float %3878, %3710
  %3959 = fadd fast float %3956, %3057
  %3960 = fadd fast float %3957, %3058
  %3961 = fadd fast float %3958, %3059
  br label %3990

; <label>:3962                                    ; preds = %3914
  %3963 = icmp eq i32 %3858, 8
  br i1 %3963, label %3964, label %3990

; <label>:3964                                    ; preds = %3962
  %3965 = fmul fast float %3863, %3551
  %3966 = fmul fast float %3863, %3552
  %3967 = fadd fast float %3965, %3049
  %3968 = fadd fast float %3966, %3050
  %3969 = call float @dx.op.binary.f32(i32 36, float %3065, float %3553)  ; FMin(a,b)
  %3970 = fsub fast float %3969, %3065
  %3971 = fmul fast float %3970, %3866
  %3972 = fadd fast float %3971, %3065
  %3973 = fsub fast float %3550, %3064
  %3974 = fmul fast float %3869, %3973
  %3975 = fadd fast float %3974, %3064
  %3976 = fmul fast float %3872, %3656
  %3977 = fmul fast float %3872, %3657
  %3978 = fmul fast float %3872, %3658
  %3979 = fadd fast float %3976, %3060
  %3980 = fadd fast float %3977, %3061
  %3981 = fadd fast float %3978, %3062
  %3982 = fmul fast float %3875, %3711
  %3983 = fadd fast float %3982, %3066
  %3984 = fmul fast float %3878, %3708
  %3985 = fmul fast float %3878, %3709
  %3986 = fmul fast float %3878, %3710
  %3987 = fadd fast float %3984, %3057
  %3988 = fadd fast float %3985, %3058
  %3989 = fadd fast float %3986, %3059
  br label %3990

; <label>:3990                                    ; preds = %3964, %3962, %3916, %3880, %3849, %3249, %3068, %3048
  %3991 = phi float [ %3049, %3849 ], [ %3049, %3249 ], [ %3049, %3048 ], [ %3049, %3068 ], [ %3885, %3880 ], [ %3919, %3916 ], [ %3049, %3962 ], [ %3967, %3964 ]
  %3992 = phi float [ %3050, %3849 ], [ %3050, %3249 ], [ %3050, %3048 ], [ %3050, %3068 ], [ %3886, %3880 ], [ %3920, %3916 ], [ %3050, %3962 ], [ %3968, %3964 ]
  %3993 = phi float [ %3850, %3849 ], [ %3051, %3249 ], [ %3051, %3048 ], [ %3051, %3068 ], [ %3850, %3880 ], [ %3850, %3916 ], [ %3850, %3962 ], [ %3850, %3964 ]
  %3994 = phi float [ %3851, %3849 ], [ %3052, %3249 ], [ %3052, %3048 ], [ %3052, %3068 ], [ %3851, %3880 ], [ %3851, %3916 ], [ %3851, %3962 ], [ %3851, %3964 ]
  %3995 = phi float [ %3852, %3849 ], [ %3053, %3249 ], [ %3053, %3048 ], [ %3053, %3068 ], [ %3852, %3880 ], [ %3852, %3916 ], [ %3852, %3962 ], [ %3852, %3964 ]
  %3996 = phi float [ %3853, %3849 ], [ %3054, %3249 ], [ %3054, %3048 ], [ %3054, %3068 ], [ %3853, %3880 ], [ %3853, %3916 ], [ %3853, %3962 ], [ %3853, %3964 ]
  %3997 = phi float [ %3854, %3849 ], [ %3055, %3249 ], [ %3055, %3048 ], [ %3055, %3068 ], [ %3854, %3880 ], [ %3854, %3916 ], [ %3854, %3962 ], [ %3854, %3964 ]
  %3998 = phi float [ %3855, %3849 ], [ %3056, %3249 ], [ %3056, %3048 ], [ %3056, %3068 ], [ %3855, %3880 ], [ %3855, %3916 ], [ %3855, %3962 ], [ %3855, %3964 ]
  %3999 = phi float [ %3057, %3849 ], [ %3057, %3249 ], [ %3057, %3048 ], [ %3057, %3068 ], [ %3911, %3880 ], [ %3959, %3916 ], [ %3057, %3962 ], [ %3987, %3964 ]
  %4000 = phi float [ %3058, %3849 ], [ %3058, %3249 ], [ %3058, %3048 ], [ %3058, %3068 ], [ %3912, %3880 ], [ %3960, %3916 ], [ %3058, %3962 ], [ %3988, %3964 ]
  %4001 = phi float [ %3059, %3849 ], [ %3059, %3249 ], [ %3059, %3048 ], [ %3059, %3068 ], [ %3913, %3880 ], [ %3961, %3916 ], [ %3059, %3962 ], [ %3989, %3964 ]
  %4002 = phi float [ %3060, %3849 ], [ %3060, %3249 ], [ %3060, %3048 ], [ %3060, %3068 ], [ %3899, %3880 ], [ %3951, %3916 ], [ %3060, %3962 ], [ %3979, %3964 ]
  %4003 = phi float [ %3061, %3849 ], [ %3061, %3249 ], [ %3061, %3048 ], [ %3061, %3068 ], [ %3900, %3880 ], [ %3952, %3916 ], [ %3061, %3962 ], [ %3980, %3964 ]
  %4004 = phi float [ %3062, %3849 ], [ %3062, %3249 ], [ %3062, %3048 ], [ %3062, %3068 ], [ %3901, %3880 ], [ %3953, %3916 ], [ %3062, %3962 ], [ %3981, %3964 ]
  %4005 = phi float [ %3856, %3849 ], [ %3063, %3249 ], [ %3063, %3048 ], [ %3063, %3068 ], [ %3856, %3880 ], [ %3856, %3916 ], [ %3856, %3962 ], [ %3856, %3964 ]
  %4006 = phi float [ %3064, %3849 ], [ %3064, %3249 ], [ %3064, %3048 ], [ %3064, %3068 ], [ %3892, %3880 ], [ %3947, %3916 ], [ %3064, %3962 ], [ %3975, %3964 ]
  %4007 = phi float [ %3065, %3849 ], [ %3065, %3249 ], [ %3065, %3048 ], [ %3065, %3068 ], [ %3889, %3880 ], [ %3924, %3916 ], [ %3065, %3962 ], [ %3972, %3964 ]
  %4008 = phi float [ %3066, %3849 ], [ %3066, %3249 ], [ %3066, %3048 ], [ %3066, %3068 ], [ %3904, %3880 ], [ %3955, %3916 ], [ %3066, %3962 ], [ %3983, %3964 ]
  %4009 = phi float [ %3857, %3849 ], [ %3067, %3249 ], [ %3067, %3048 ], [ %3067, %3068 ], [ %3857, %3880 ], [ %3857, %3916 ], [ %3857, %3962 ], [ %3857, %3964 ]
  %4010 = add i32 %51, 360
  %4011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %4010, i32 undef)  ; BufferLoad(srv,index,wot)
  %4012 = extractvalue %dx.types.ResRet.i32 %4011, 0
  %4013 = extractvalue %dx.types.ResRet.i32 %4011, 1
  %4014 = bitcast i32 %4012 to float
  %4015 = bitcast i32 %4013 to float
  %4016 = fcmp fast oge float %4014, 0.000000e+00
  %4017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4018 = extractvalue %dx.types.CBufRet.f32 %4017, 0
  %4019 = select i1 %4016, float %4014, float %4018
  %4020 = fadd fast float %4019, %204
  %4021 = fmul fast float %4015, %205
  %4022 = add i32 %51, 456
  %4023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %4022, i32 undef)  ; BufferLoad(srv,index,wot)
  %4024 = extractvalue %dx.types.ResRet.i32 %4023, 0
  %4025 = add i32 %4024, 0
  %4026 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4025, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4027 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4026, %dx.types.Handle %108, float %89, float %90, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4028 = extractvalue %dx.types.ResRet.f32 %4027, 0
  %4029 = fmul fast float %4021, %4028
  %4030 = fadd fast float %4020, %4029
  %4031 = and i32 %196, 65535
  %4032 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4031)  ; LegacyF16ToF32(value)
  %4033 = lshr i32 %196, 16
  %4034 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4033)  ; LegacyF16ToF32(value)
  %4035 = and i32 %197, 65535
  %4036 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4035)  ; LegacyF16ToF32(value)
  %4037 = fmul fast float %4032, %3993
  %4038 = fmul fast float %4034, %3994
  %4039 = fmul fast float %4036, %3995
  %4040 = shl i32 %198, 4
  %4041 = and i32 %4040, 32752
  %4042 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4041)  ; LegacyF16ToF32(value)
  %4043 = lshr i32 %198, 7
  %4044 = and i32 %4043, 32752
  %4045 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4044)  ; LegacyF16ToF32(value)
  %4046 = lshr i32 %198, 22
  %4047 = shl nuw nsw i32 %4046, 5
  %4048 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4047)  ; LegacyF16ToF32(value)
  %4049 = and i32 %199, 65535
  %4050 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4049)  ; LegacyF16ToF32(value)
  %4051 = fmul fast float %4042, %3996
  %4052 = fmul fast float %4051, %4050
  %4053 = fmul fast float %4045, %3997
  %4054 = fmul fast float %4053, %4050
  %4055 = fmul fast float %4048, %3998
  %4056 = fmul fast float %4055, %4050
  %4057 = call float @dx.op.dot2.f32(i32 54, float %3991, float %3992, float %3991, float %3992)  ; Dot2(ax,ay,bx,by)
  %4058 = fmul fast float %4057, 0x3FE3333340000000
  %4059 = fsub fast float 1.000000e+00, %4058
  %4060 = call float @dx.op.dot3.f32(i32 55, float %3991, float %3992, float %4059, float %3991, float %3992, float %4059)  ; Dot3(ax,ay,az,bx,by,bz)
  %4061 = call float @dx.op.unary.f32(i32 25, float %4060)  ; Rsqrt(value)
  %4062 = fmul fast float %4061, %3991
  %4063 = fmul fast float %4061, %3992
  %4064 = fmul fast float %4059, %4061
  %4065 = fmul fast float %4064, %118
  %4066 = fmul fast float %4064, %119
  %4067 = fmul fast float %4064, %120
  %4068 = fmul fast float %4062, %82
  %4069 = fmul fast float %4062, %83
  %4070 = fmul fast float %4062, %84
  %4071 = fadd fast float %4065, %4068
  %4072 = fadd fast float %4066, %4069
  %4073 = fadd fast float %4067, %4070
  %4074 = fmul fast float %130, %4063
  %4075 = fmul fast float %131, %4063
  %4076 = fmul fast float %132, %4063
  %4077 = fadd fast float %4071, %4074
  %4078 = fadd fast float %4072, %4075
  %4079 = fadd fast float %4073, %4076
  %4080 = call float @dx.op.dot3.f32(i32 55, float %4077, float %4078, float %4079, float %4077, float %4078, float %4079)  ; Dot3(ax,ay,az,bx,by,bz)
  %4081 = call float @dx.op.unary.f32(i32 25, float %4080)  ; Rsqrt(value)
  %4082 = fmul fast float %4077, %4081
  %4083 = fmul fast float %4078, %4081
  %4084 = fmul fast float %4079, %4081
  %4085 = icmp eq i32 %53, 65535
  br i1 %4085, label %4684, label %4086

; <label>:4086                                    ; preds = %3990
  %4087 = call float @dx.op.unary.f32(i32 83, float %54)  ; DerivCoarseX(value)
  %4088 = call float @dx.op.unary.f32(i32 83, float %55)  ; DerivCoarseX(value)
  %4089 = call float @dx.op.unary.f32(i32 83, float %56)  ; DerivCoarseX(value)
  %4090 = call float @dx.op.unary.f32(i32 84, float %54)  ; DerivCoarseY(value)
  %4091 = call float @dx.op.unary.f32(i32 84, float %55)  ; DerivCoarseY(value)
  %4092 = call float @dx.op.unary.f32(i32 84, float %56)  ; DerivCoarseY(value)
  %4093 = fadd fast float %4087, %54
  %4094 = fadd fast float %4088, %55
  %4095 = fadd fast float %4089, %56
  %4096 = fadd fast float %4090, %54
  %4097 = fadd fast float %4091, %55
  %4098 = fadd fast float %4092, %56
  %4099 = mul i32 %53, 48
  %4100 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4099, i32 undef)  ; BufferLoad(srv,index,wot)
  %4101 = extractvalue %dx.types.ResRet.f32 %4100, 0
  %4102 = extractvalue %dx.types.ResRet.f32 %4100, 1
  %4103 = extractvalue %dx.types.ResRet.f32 %4100, 2
  %4104 = add i32 %4099, 16
  %4105 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4104, i32 undef)  ; BufferLoad(srv,index,wot)
  %4106 = extractvalue %dx.types.ResRet.f32 %4105, 0
  %4107 = extractvalue %dx.types.ResRet.f32 %4105, 1
  %4108 = extractvalue %dx.types.ResRet.f32 %4105, 2
  %4109 = add i32 %4099, 32
  %4110 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4109, i32 undef)  ; BufferLoad(srv,index,wot)
  %4111 = extractvalue %dx.types.ResRet.f32 %4110, 0
  %4112 = extractvalue %dx.types.ResRet.f32 %4110, 1
  %4113 = extractvalue %dx.types.ResRet.f32 %4110, 2
  %4114 = extractvalue %dx.types.ResRet.f32 %4110, 3
  %4115 = bitcast float %4114 to i32
  %4116 = fmul fast float %4101, %54
  %4117 = fmul fast float %4102, %55
  %4118 = fmul fast float %4103, %56
  %4119 = fsub fast float %4116, %4106
  %4120 = fsub fast float %4117, %4107
  %4121 = fsub fast float %4118, %4108
  %4122 = call float @dx.op.unary.f32(i32 7, float %4119)  ; Saturate(value)
  %4123 = call float @dx.op.unary.f32(i32 7, float %4120)  ; Saturate(value)
  %4124 = call float @dx.op.unary.f32(i32 7, float %4121)  ; Saturate(value)
  %4125 = fmul fast float %4122, %4111
  %4126 = fmul fast float %4123, %4112
  %4127 = fmul fast float %4124, %4113
  %4128 = fadd fast float %4111, -1.000000e+00
  %4129 = fadd fast float %4112, -1.000000e+00
  %4130 = fadd fast float %4113, -1.000000e+00
  %4131 = call float @dx.op.unary.f32(i32 27, float %4125)  ; Round_ni(value)
  %4132 = call float @dx.op.unary.f32(i32 27, float %4126)  ; Round_ni(value)
  %4133 = call float @dx.op.unary.f32(i32 27, float %4127)  ; Round_ni(value)
  %4134 = call float @dx.op.binary.f32(i32 36, float %4131, float %4128)  ; FMin(a,b)
  %4135 = call float @dx.op.binary.f32(i32 36, float %4132, float %4129)  ; FMin(a,b)
  %4136 = call float @dx.op.binary.f32(i32 36, float %4133, float %4130)  ; FMin(a,b)
  %4137 = fmul fast float %4136, %4112
  %4138 = fadd fast float %4137, %4135
  %4139 = fmul fast float %4138, %4111
  %4140 = fadd fast float %4139, %4134
  %4141 = fptosi float %4140 to i32
  %4142 = add nsw i32 %4141, %4115
  %4143 = shl nsw i32 %4142, 2
  %4144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4143, i32 undef)  ; BufferLoad(srv,index,wot)
  %4145 = extractvalue %dx.types.ResRet.i32 %4144, 0
  %4146 = lshr i32 %4145, 16
  %4147 = icmp eq i32 %4146, 0
  br i1 %4147, label %4647, label %4148

; <label>:4148                                    ; preds = %4086
  br label %4149

; <label>:4149                                    ; preds = %4276, %4148
  %4150 = phi i32 [ %4178, %4276 ], [ %4146, %4148 ]
  %4151 = phi float [ %4277, %4276 ], [ 0.000000e+00, %4148 ]
  %4152 = phi float [ %4278, %4276 ], [ %4030, %4148 ]
  %4153 = phi float [ %4279, %4276 ], [ %4009, %4148 ]
  %4154 = phi float [ %4280, %4276 ], [ %4002, %4148 ]
  %4155 = phi float [ %4281, %4276 ], [ %4003, %4148 ]
  %4156 = phi float [ %4282, %4276 ], [ %4004, %4148 ]
  %4157 = phi float [ %4283, %4276 ], [ 0.000000e+00, %4148 ]
  %4158 = phi float [ %4284, %4276 ], [ 0.000000e+00, %4148 ]
  %4159 = phi float [ %4285, %4276 ], [ %3999, %4148 ]
  %4160 = phi float [ %4286, %4276 ], [ %4000, %4148 ]
  %4161 = phi float [ %4287, %4276 ], [ %4001, %4148 ]
  %4162 = phi float [ %4288, %4276 ], [ %4052, %4148 ]
  %4163 = phi float [ %4289, %4276 ], [ %4054, %4148 ]
  %4164 = phi float [ %4290, %4276 ], [ %4056, %4148 ]
  %4165 = phi float [ %4291, %4276 ], [ %4082, %4148 ]
  %4166 = phi float [ %4292, %4276 ], [ %4083, %4148 ]
  %4167 = phi float [ %4293, %4276 ], [ %4084, %4148 ]
  %4168 = phi float [ %4294, %4276 ], [ %4007, %4148 ]
  %4169 = phi float [ %4295, %4276 ], [ %4006, %4148 ]
  %4170 = phi float [ %4296, %4276 ], [ 0.000000e+00, %4148 ]
  %4171 = phi float [ %4297, %4276 ], [ %4005, %4148 ]
  %4172 = phi float [ %4298, %4276 ], [ %4037, %4148 ]
  %4173 = phi float [ %4299, %4276 ], [ %4038, %4148 ]
  %4174 = phi float [ %4300, %4276 ], [ %4039, %4148 ]
  %4175 = shl nuw nsw i32 %4150, 2
  %4176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4175, i32 undef)  ; BufferLoad(srv,index,wot)
  %4177 = extractvalue %dx.types.ResRet.i32 %4176, 0
  %4178 = lshr i32 %4177, 16
  %4179 = shl i32 %4177, 8
  %4180 = and i32 %4179, 16776960
  %4181 = or i32 %4180, 48
  %4182 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4181, i32 undef)  ; BufferLoad(srv,index,wot)
  %4183 = extractvalue %dx.types.ResRet.f32 %4182, 0
  %4184 = extractvalue %dx.types.ResRet.f32 %4182, 1
  %4185 = extractvalue %dx.types.ResRet.f32 %4182, 2
  %4186 = or i32 %4180, 64
  %4187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4186, i32 undef)  ; BufferLoad(srv,index,wot)
  %4188 = extractvalue %dx.types.ResRet.i32 %4187, 0
  %4189 = extractvalue %dx.types.ResRet.i32 %4187, 1
  %4190 = or i32 %4180, 80
  %4191 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4190, i32 undef)  ; BufferLoad(srv,index,wot)
  %4192 = extractvalue %dx.types.ResRet.f32 %4191, 2
  %4193 = extractvalue %dx.types.ResRet.f32 %4191, 3
  %4194 = or i32 %4180, 96
  %4195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4194, i32 undef)  ; BufferLoad(srv,index,wot)
  %4196 = extractvalue %dx.types.ResRet.f32 %4195, 0
  %4197 = extractvalue %dx.types.ResRet.f32 %4195, 1
  %4198 = extractvalue %dx.types.ResRet.f32 %4195, 2
  %4199 = extractvalue %dx.types.ResRet.f32 %4195, 3
  %4200 = or i32 %4180, 112
  %4201 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4200, i32 undef)  ; BufferLoad(srv,index,wot)
  %4202 = extractvalue %dx.types.ResRet.f32 %4201, 2
  %4203 = or i32 %4180, 128
  %4204 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4203, i32 undef)  ; BufferLoad(srv,index,wot)
  %4205 = extractvalue %dx.types.ResRet.f32 %4204, 0
  %4206 = extractvalue %dx.types.ResRet.f32 %4204, 1
  %4207 = extractvalue %dx.types.ResRet.f32 %4204, 2
  %4208 = extractvalue %dx.types.ResRet.f32 %4204, 3
  %4209 = or i32 %4180, 144
  %4210 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4209, i32 undef)  ; BufferLoad(srv,index,wot)
  %4211 = extractvalue %dx.types.ResRet.f32 %4210, 0
  %4212 = extractvalue %dx.types.ResRet.f32 %4210, 1
  %4213 = extractvalue %dx.types.ResRet.f32 %4210, 2
  %4214 = extractvalue %dx.types.ResRet.f32 %4210, 3
  %4215 = or i32 %4180, 160
  %4216 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4215, i32 undef)  ; BufferLoad(srv,index,wot)
  %4217 = extractvalue %dx.types.ResRet.f32 %4216, 0
  %4218 = extractvalue %dx.types.ResRet.f32 %4216, 1
  %4219 = extractvalue %dx.types.ResRet.f32 %4216, 2
  %4220 = extractvalue %dx.types.ResRet.f32 %4216, 3
  %4221 = or i32 %4180, 192
  %4222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4221, i32 undef)  ; BufferLoad(srv,index,wot)
  %4223 = extractvalue %dx.types.ResRet.i32 %4222, 0
  %4224 = or i32 %4180, 208
  %4225 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4224, i32 undef)  ; BufferLoad(srv,index,wot)
  %4226 = extractvalue %dx.types.ResRet.f32 %4225, 0
  %4227 = or i32 %4180, 248
  %4228 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4227, i32 undef)  ; BufferLoad(srv,index,wot)
  %4229 = extractvalue %dx.types.ResRet.f32 %4228, 0
  %4230 = extractvalue %dx.types.ResRet.f32 %4228, 1
  %4231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4180, i32 undef)  ; BufferLoad(srv,index,wot)
  %4232 = extractvalue %dx.types.ResRet.f32 %4231, 0
  %4233 = extractvalue %dx.types.ResRet.f32 %4231, 1
  %4234 = extractvalue %dx.types.ResRet.f32 %4231, 2
  %4235 = extractvalue %dx.types.ResRet.f32 %4231, 3
  %4236 = call float @dx.op.dot4.f32(i32 56, float %4232, float %4233, float %4234, float %4235, float %54, float %55, float %56, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4237 = or i32 %4180, 16
  %4238 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4237, i32 undef)  ; BufferLoad(srv,index,wot)
  %4239 = extractvalue %dx.types.ResRet.f32 %4238, 0
  %4240 = extractvalue %dx.types.ResRet.f32 %4238, 1
  %4241 = extractvalue %dx.types.ResRet.f32 %4238, 2
  %4242 = extractvalue %dx.types.ResRet.f32 %4238, 3
  %4243 = call float @dx.op.dot4.f32(i32 56, float %4239, float %4240, float %4241, float %4242, float %54, float %55, float %56, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4244 = or i32 %4180, 32
  %4245 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4244, i32 undef)  ; BufferLoad(srv,index,wot)
  %4246 = extractvalue %dx.types.ResRet.f32 %4245, 0
  %4247 = extractvalue %dx.types.ResRet.f32 %4245, 1
  %4248 = extractvalue %dx.types.ResRet.f32 %4245, 2
  %4249 = extractvalue %dx.types.ResRet.f32 %4245, 3
  %4250 = call float @dx.op.dot4.f32(i32 56, float %4246, float %4247, float %4248, float %4249, float %54, float %55, float %56, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4251 = call float @dx.op.unary.f32(i32 27, float %4236)  ; Round_ni(value)
  %4252 = call float @dx.op.unary.f32(i32 6, float %4251)  ; FAbs(value)
  %4253 = call float @dx.op.unary.f32(i32 27, float %4243)  ; Round_ni(value)
  %4254 = call float @dx.op.unary.f32(i32 6, float %4253)  ; FAbs(value)
  %4255 = call float @dx.op.unary.f32(i32 6, float %4250)  ; FAbs(value)
  %4256 = call float @dx.op.unary.f32(i32 27, float %4255)  ; Round_ni(value)
  %4257 = fadd fast float %4254, %4252
  %4258 = fadd fast float %4257, %4256
  %4259 = fcmp fast oeq float %4258, 0.000000e+00
  %4260 = call float @dx.op.dot4.f32(i32 56, float %4232, float %4233, float %4234, float %4235, float %4093, float %4094, float %4095, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4261 = call float @dx.op.dot4.f32(i32 56, float %4239, float %4240, float %4241, float %4242, float %4093, float %4094, float %4095, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4262 = call float @dx.op.dot4.f32(i32 56, float %4232, float %4233, float %4234, float %4235, float %4096, float %4097, float %4098, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4263 = call float @dx.op.dot4.f32(i32 56, float %4239, float %4240, float %4241, float %4242, float %4096, float %4097, float %4098, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4264 = fsub fast float %4260, %4236
  %4265 = fsub fast float %4262, %4236
  %4266 = fsub fast float %4261, %4243
  %4267 = fsub fast float %4263, %4243
  %4268 = call float @dx.op.dot3.f32(i32 55, float %4183, float %4184, float %4185, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %4269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4270 = extractvalue %dx.types.CBufRet.f32 %4269, 2
  %4271 = fadd fast float %4270, %4268
  %4272 = call float @dx.op.unary.f32(i32 7, float %4271)  ; Saturate(value)
  %4273 = extractvalue %dx.types.CBufRet.f32 %4269, 0
  %4274 = fcmp fast ogt float %4272, %4273
  %4275 = and i1 %4259, %4274
  br i1 %4275, label %4302, label %4276

; <label>:4276                                    ; preds = %4633, %4385, %4302, %4149
  %4277 = phi float [ %4151, %4302 ], [ %4388, %4385 ], [ %4388, %4633 ], [ %4151, %4149 ]
  %4278 = phi float [ %4152, %4302 ], [ %4152, %4385 ], [ %4609, %4633 ], [ %4152, %4149 ]
  %4279 = phi float [ %4153, %4302 ], [ %4153, %4385 ], [ %4607, %4633 ], [ %4153, %4149 ]
  %4280 = phi float [ %4154, %4302 ], [ %4154, %4385 ], [ %4585, %4633 ], [ %4154, %4149 ]
  %4281 = phi float [ %4155, %4302 ], [ %4155, %4385 ], [ %4586, %4633 ], [ %4155, %4149 ]
  %4282 = phi float [ %4156, %4302 ], [ %4156, %4385 ], [ %4587, %4633 ], [ %4156, %4149 ]
  %4283 = phi float [ %4157, %4302 ], [ %4157, %4385 ], [ %4512, %4633 ], [ %4157, %4149 ]
  %4284 = phi float [ %4158, %4302 ], [ %4158, %4385 ], [ %4510, %4633 ], [ %4158, %4149 ]
  %4285 = phi float [ %4159, %4302 ], [ %4159, %4385 ], [ %4555, %4633 ], [ %4159, %4149 ]
  %4286 = phi float [ %4160, %4302 ], [ %4160, %4385 ], [ %4556, %4633 ], [ %4160, %4149 ]
  %4287 = phi float [ %4161, %4302 ], [ %4161, %4385 ], [ %4557, %4633 ], [ %4161, %4149 ]
  %4288 = phi float [ %4162, %4302 ], [ %4162, %4385 ], [ %4643, %4633 ], [ %4162, %4149 ]
  %4289 = phi float [ %4163, %4302 ], [ %4163, %4385 ], [ %4644, %4633 ], [ %4163, %4149 ]
  %4290 = phi float [ %4164, %4302 ], [ %4164, %4385 ], [ %4645, %4633 ], [ %4164, %4149 ]
  %4291 = phi float [ %4165, %4302 ], [ %4165, %4385 ], [ %4491, %4633 ], [ %4165, %4149 ]
  %4292 = phi float [ %4166, %4302 ], [ %4166, %4385 ], [ %4492, %4633 ], [ %4166, %4149 ]
  %4293 = phi float [ %4167, %4302 ], [ %4167, %4385 ], [ %4493, %4633 ], [ %4167, %4149 ]
  %4294 = phi float [ %4168, %4302 ], [ %4168, %4385 ], [ %4565, %4633 ], [ %4168, %4149 ]
  %4295 = phi float [ %4169, %4302 ], [ %4169, %4385 ], [ %4562, %4633 ], [ %4169, %4149 ]
  %4296 = phi float [ %4170, %4302 ], [ %4170, %4385 ], [ %4559, %4633 ], [ %4170, %4149 ]
  %4297 = phi float [ %4171, %4302 ], [ %4171, %4385 ], [ %4508, %4633 ], [ %4171, %4149 ]
  %4298 = phi float [ %4172, %4302 ], [ %4172, %4385 ], [ %4503, %4633 ], [ %4172, %4149 ]
  %4299 = phi float [ %4173, %4302 ], [ %4173, %4385 ], [ %4504, %4633 ], [ %4173, %4149 ]
  %4300 = phi float [ %4174, %4302 ], [ %4174, %4385 ], [ %4505, %4633 ], [ %4174, %4149 ]
  %4301 = icmp eq i32 %4178, 0
  br i1 %4301, label %4646, label %4149

; <label>:4302                                    ; preds = %4149
  %4303 = extractvalue %dx.types.ResRet.f32 %4182, 3
  %4304 = extractvalue %dx.types.ResRet.f32 %4201, 3
  %4305 = extractvalue %dx.types.ResRet.f32 %4201, 1
  %4306 = extractvalue %dx.types.ResRet.f32 %4201, 0
  %4307 = extractvalue %dx.types.ResRet.f32 %4191, 1
  %4308 = extractvalue %dx.types.ResRet.f32 %4191, 0
  %4309 = extractvalue %dx.types.ResRet.i32 %4187, 3
  %4310 = extractvalue %dx.types.ResRet.i32 %4187, 2
  %4311 = bitcast float %4303 to i32
  %4312 = add i32 %4309, 0
  %4313 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4312, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4314 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4315 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4313, %dx.types.Handle %4314, float %4236, float %4243, float undef, float undef, i32 0, i32 0, i32 undef, float %4264, float %4266, float undef, float %4265, float %4267, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4316 = extractvalue %dx.types.ResRet.f32 %4315, 0
  %4317 = fmul fast float %4316, %4308
  %4318 = fadd fast float %4317, %4307
  %4319 = call float @dx.op.unary.f32(i32 7, float %4318)  ; Saturate(value)
  %4320 = fmul fast float %4236, %4196
  %4321 = call float @dx.op.tertiary.f32(i32 46, float %4197, float %4243, float %4320)  ; FMad(a,b,c)
  %4322 = fadd fast float %4321, %4306
  %4323 = fmul fast float %4236, %4198
  %4324 = call float @dx.op.tertiary.f32(i32 46, float %4199, float %4243, float %4323)  ; FMad(a,b,c)
  %4325 = fadd fast float %4324, %4305
  %4326 = fmul fast float %4264, %4196
  %4327 = call float @dx.op.tertiary.f32(i32 46, float %4197, float %4266, float %4326)  ; FMad(a,b,c)
  %4328 = fmul fast float %4264, %4198
  %4329 = call float @dx.op.tertiary.f32(i32 46, float %4199, float %4266, float %4328)  ; FMad(a,b,c)
  %4330 = fmul fast float %4265, %4196
  %4331 = call float @dx.op.tertiary.f32(i32 46, float %4197, float %4267, float %4330)  ; FMad(a,b,c)
  %4332 = fmul fast float %4265, %4198
  %4333 = call float @dx.op.tertiary.f32(i32 46, float %4199, float %4267, float %4332)  ; FMad(a,b,c)
  %4334 = add i32 %4310, 0
  %4335 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4334, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4336 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4335, %dx.types.Handle %4314, float %4322, float %4325, float undef, float undef, i32 0, i32 0, i32 undef, float %4327, float %4329, float undef, float %4331, float %4333, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4337 = extractvalue %dx.types.ResRet.f32 %4336, 0
  %4338 = and i32 %4311, 1024
  %4339 = icmp ne i32 %4338, 0
  %4340 = fcmp fast ogt float %4337, 0x3FE0101020000000
  %4341 = uitofp i1 %4340 to float
  %4342 = select i1 %4339, float %4341, float %4337
  %4343 = and i32 %4311, 8192
  %4344 = icmp ne i32 %4343, 0
  %4345 = select i1 %4344, float %4304, float 1.000000e+00
  %4346 = fmul fast float %4236, 2.000000e+00
  %4347 = fadd fast float %4346, -1.000000e+00
  %4348 = call float @dx.op.unary.f32(i32 6, float %4347)  ; FAbs(value)
  %4349 = fmul fast float %4348, %4229
  %4350 = fsub fast float %4349, %4229
  %4351 = call float @dx.op.unary.f32(i32 7, float %4350)  ; Saturate(value)
  %4352 = fmul fast float %4243, 2.000000e+00
  %4353 = fadd fast float %4352, -1.000000e+00
  %4354 = call float @dx.op.unary.f32(i32 6, float %4353)  ; FAbs(value)
  %4355 = fmul fast float %4354, %4230
  %4356 = fsub fast float %4355, %4230
  %4357 = call float @dx.op.unary.f32(i32 7, float %4356)  ; Saturate(value)
  %4358 = fmul fast float %4255, %4192
  %4359 = fsub fast float %4358, %4192
  %4360 = call float @dx.op.unary.f32(i32 7, float %4359)  ; Saturate(value)
  %4361 = fmul fast float %4319, %4345
  %4362 = fmul fast float %4361, %4316
  %4363 = fmul fast float %4362, %4351
  %4364 = fmul fast float %4363, %4342
  %4365 = fmul fast float %4364, %4357
  %4366 = fmul fast float %4365, %4360
  %4367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4368 = extractvalue %dx.types.CBufRet.f32 %4367, 1
  %4369 = extractvalue %dx.types.CBufRet.f32 %4367, 0
  %4370 = fsub fast float %4272, %4369
  %4371 = fmul fast float %4370, %4368
  %4372 = call float @dx.op.unary.f32(i32 7, float %4371)  ; Saturate(value)
  %4373 = fmul fast float %4366, %4193
  %4374 = fadd fast float %4366, %4193
  %4375 = fmul fast float %4374, %4202
  %4376 = fsub fast float %4375, %4202
  %4377 = call float @dx.op.unary.f32(i32 7, float %4376)  ; Saturate(value)
  %4378 = and i32 %4311, 128
  %4379 = icmp ne i32 %4378, 0
  %4380 = select i1 %4379, float %4377, float %4373
  %4381 = fmul fast float %4380, %4372
  %4382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4383 = extractvalue %dx.types.CBufRet.f32 %4382, 0
  %4384 = fcmp fast ugt float %4381, %4383
  br i1 %4384, label %4385, label %4276

; <label>:4385                                    ; preds = %4302
  %4386 = select i1 %4344, float %4381, float 0.000000e+00
  %4387 = fadd fast float %4386, %4151
  %4388 = call float @dx.op.unary.f32(i32 7, float %4387)  ; Saturate(value)
  br i1 %4344, label %4276, label %4389

; <label>:4389                                    ; preds = %4385
  %4390 = and i32 %4311, 4
  %4391 = and i32 %4311, 8
  %4392 = add i32 %4188, 0
  %4393 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4392, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4394 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4395 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4393, %dx.types.Handle %4394, float %4322, float %4325, float undef, float undef, i32 0, i32 0, i32 undef, float %4327, float %4329, float undef, float %4331, float %4333, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4396 = extractvalue %dx.types.ResRet.f32 %4395, 0
  %4397 = extractvalue %dx.types.ResRet.f32 %4395, 1
  %4398 = extractvalue %dx.types.ResRet.f32 %4395, 2
  %4399 = extractvalue %dx.types.ResRet.f32 %4395, 3
  %4400 = bitcast float %4214 to i32
  %4401 = and i32 %4400, 255
  %4402 = uitofp i32 %4401 to float
  %4403 = lshr i32 %4400, 8
  %4404 = and i32 %4403, 255
  %4405 = uitofp i32 %4404 to float
  %4406 = fmul fast float %4399, %4402
  %4407 = fadd fast float %4406, %4405
  %4408 = fmul fast float %4407, 0x3F70101000000000
  %4409 = add i32 %4189, 0
  %4410 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4409, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4411 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4410, %dx.types.Handle %4394, float %4322, float %4325, float undef, float undef, i32 0, i32 0, i32 undef, float %4327, float %4329, float undef, float %4331, float %4333, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4412 = extractvalue %dx.types.ResRet.f32 %4411, 0
  %4413 = extractvalue %dx.types.ResRet.f32 %4411, 1
  %4414 = extractvalue %dx.types.ResRet.f32 %4411, 2
  %4415 = extractvalue %dx.types.ResRet.f32 %4411, 3
  %4416 = bitcast float %4208 to i32
  %4417 = and i32 %4416, 255
  %4418 = uitofp i32 %4417 to float
  %4419 = lshr i32 %4416, 8
  %4420 = and i32 %4419, 255
  %4421 = uitofp i32 %4420 to float
  %4422 = lshr i32 %4416, 16
  %4423 = and i32 %4422, 255
  %4424 = uitofp i32 %4423 to float
  %4425 = fmul fast float %4424, 0x3F70101000000000
  %4426 = fmul fast float %4412, %4418
  %4427 = fadd fast float %4426, %4421
  %4428 = fmul fast float %4427, 0x3F70101000000000
  %4429 = fadd fast float %4413, -5.000000e-01
  %4430 = fadd fast float %4415, -5.000000e-01
  %4431 = fmul fast float %4429, %4425
  %4432 = fmul fast float %4430, %4425
  %4433 = fadd fast float %4431, 5.000000e-01
  %4434 = fadd fast float %4432, 5.000000e-01
  %4435 = fmul fast float %4396, %4217
  %4436 = fmul fast float %4397, %4218
  %4437 = fmul fast float %4398, %4219
  %4438 = fmul fast float %4433, 2.000000e+00
  %4439 = fadd fast float %4438, -1.000000e+00
  %4440 = fmul fast float %4434, 2.000000e+00
  %4441 = fadd fast float %4440, -1.000000e+00
  %4442 = fadd fast float %4439, %4441
  %4443 = fmul fast float %4442, 5.000000e-01
  %4444 = fsub fast float %4439, %4441
  %4445 = fmul fast float %4444, 5.000000e-01
  %4446 = call float @dx.op.unary.f32(i32 6, float %4443)  ; FAbs(value)
  %4447 = fsub fast float 1.000000e+00, %4446
  %4448 = call float @dx.op.unary.f32(i32 6, float %4445)  ; FAbs(value)
  %4449 = fsub fast float %4447, %4448
  %4450 = call float @dx.op.dot3.f32(i32 55, float %4443, float %4445, float %4449, float %4443, float %4445, float %4449)  ; Dot3(ax,ay,az,bx,by,bz)
  %4451 = call float @dx.op.unary.f32(i32 25, float %4450)  ; Rsqrt(value)
  %4452 = fmul fast float %4443, %4451
  %4453 = fmul fast float %4445, %4451
  %4454 = fmul fast float %4451, %4449
  %4455 = fmul fast float %4454, %4183
  %4456 = fmul fast float %4454, %4184
  %4457 = fmul fast float %4454, %4185
  %4458 = fmul fast float %4452, %4205
  %4459 = fmul fast float %4452, %4206
  %4460 = fmul fast float %4452, %4207
  %4461 = fadd fast float %4458, %4455
  %4462 = fadd fast float %4459, %4456
  %4463 = fadd fast float %4460, %4457
  %4464 = fmul fast float %4453, %4211
  %4465 = fmul fast float %4453, %4212
  %4466 = fmul fast float %4453, %4213
  %4467 = fadd fast float %4461, %4464
  %4468 = fadd fast float %4462, %4465
  %4469 = fadd fast float %4463, %4466
  %4470 = call float @dx.op.dot3.f32(i32 55, float %4467, float %4468, float %4469, float %4467, float %4468, float %4469)  ; Dot3(ax,ay,az,bx,by,bz)
  %4471 = call float @dx.op.unary.f32(i32 25, float %4470)  ; Rsqrt(value)
  %4472 = fmul fast float %4467, %4471
  %4473 = fmul fast float %4468, %4471
  %4474 = fmul fast float %4469, %4471
  %4475 = icmp ne i32 %4391, 0
  %4476 = select i1 %4475, float 1.000000e+00, float 0.000000e+00
  %4477 = fmul fast float %4381, %4476
  %4478 = and i32 %4311, 1
  %4479 = icmp eq i32 %4478, 0
  br i1 %4479, label %4480, label %4484

; <label>:4480                                    ; preds = %4389
  %4481 = fsub fast float %4472, %4165
  %4482 = fsub fast float %4473, %4166
  %4483 = fsub fast float %4474, %4167
  br label %4484

; <label>:4484                                    ; preds = %4480, %4389
  %4485 = phi float [ %4481, %4480 ], [ %4472, %4389 ]
  %4486 = phi float [ %4482, %4480 ], [ %4473, %4389 ]
  %4487 = phi float [ %4483, %4480 ], [ %4474, %4389 ]
  %4488 = fmul float %4487, %4477
  %4489 = fmul float %4486, %4477
  %4490 = fmul float %4485, %4477
  %4491 = fadd fast float %4490, %4165
  %4492 = fadd fast float %4489, %4166
  %4493 = fadd fast float %4488, %4167
  %4494 = icmp ne i32 %4390, 0
  %4495 = select i1 %4494, float 1.000000e+00, float 0.000000e+00
  %4496 = fmul fast float %4381, %4495
  %4497 = fsub fast float %4435, %4172
  %4498 = fsub fast float %4436, %4173
  %4499 = fsub fast float %4437, %4174
  %4500 = fmul fast float %4497, %4496
  %4501 = fmul fast float %4498, %4496
  %4502 = fmul fast float %4499, %4496
  %4503 = fadd fast float %4500, %4172
  %4504 = fadd fast float %4501, %4173
  %4505 = fadd fast float %4502, %4174
  %4506 = fsub fast float %4408, %4171
  %4507 = fmul fast float %4506, %4496
  %4508 = fadd fast float %4507, %4171
  %4509 = fmul fast float %4496, %4158
  %4510 = fsub fast float %4158, %4509
  %4511 = fmul fast float %4496, %4157
  %4512 = fsub fast float %4157, %4511
  %4513 = bitcast float %4226 to i32
  %4514 = lshr i32 %4513, 16
  %4515 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4514)  ; LegacyF16ToF32(value)
  %4516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %4517 = extractvalue %dx.types.ResRet.i32 %4516, 0
  %4518 = and i32 %4517, 1
  %4519 = icmp eq i32 %4518, 0
  br i1 %4519, label %4520, label %4545

; <label>:4520                                    ; preds = %4484
  %4521 = fadd fast float %4408, 0xBFB99999A0000000
  %4522 = call float @dx.op.unary.f32(i32 7, float %4521)  ; Saturate(value)
  %4523 = fmul fast float %4522, 0x3FF1C71C80000000
  %4524 = fsub fast float 1.000000e+00, %4523
  %4525 = call float @dx.op.unary.f32(i32 7, float %4524)  ; Saturate(value)
  %4526 = fmul fast float %4525, %4435
  %4527 = fmul fast float %4525, %4436
  %4528 = fmul fast float %4525, %4437
  %4529 = call float @dx.op.unary.f32(i32 7, float %4526)  ; Saturate(value)
  %4530 = call float @dx.op.unary.f32(i32 7, float %4527)  ; Saturate(value)
  %4531 = call float @dx.op.unary.f32(i32 7, float %4528)  ; Saturate(value)
  %4532 = call float @dx.op.binary.f32(i32 35, float %4530, float %4531)  ; FMax(a,b)
  %4533 = call float @dx.op.binary.f32(i32 35, float %4529, float %4532)  ; FMax(a,b)
  %4534 = fcmp fast ogt float %4533, 0.000000e+00
  %4535 = bitcast float %4533 to i32
  %4536 = sub nsw i32 2129859010, %4535
  %4537 = bitcast i32 %4536 to float
  %4538 = select i1 %4534, float %4537, float 0.000000e+00
  %4539 = fmul fast float %4529, %4515
  %4540 = fmul fast float %4530, %4515
  %4541 = fmul fast float %4531, %4515
  %4542 = fmul fast float %4539, %4538
  %4543 = fmul fast float %4540, %4538
  %4544 = fmul fast float %4541, %4538
  br label %4545

; <label>:4545                                    ; preds = %4520, %4484
  %4546 = phi float [ %4515, %4484 ], [ %4542, %4520 ]
  %4547 = phi float [ %4515, %4484 ], [ %4543, %4520 ]
  %4548 = phi float [ %4515, %4484 ], [ %4544, %4520 ]
  %4549 = fsub fast float %4546, %4159
  %4550 = fsub fast float %4547, %4160
  %4551 = fsub fast float %4548, %4161
  %4552 = fmul fast float %4549, %4496
  %4553 = fmul fast float %4550, %4496
  %4554 = fmul fast float %4551, %4496
  %4555 = fadd fast float %4552, %4159
  %4556 = fadd fast float %4553, %4160
  %4557 = fadd fast float %4554, %4161
  %4558 = fadd fast float %4381, %4170
  %4559 = call float @dx.op.unary.f32(i32 7, float %4558)  ; Saturate(value)
  %4560 = fsub fast float %4428, %4169
  %4561 = fmul fast float %4560, %4477
  %4562 = fadd fast float %4561, %4169
  %4563 = fsub fast float %4414, %4168
  %4564 = fmul fast float %4563, %4477
  %4565 = fadd fast float %4564, %4168
  br i1 %4479, label %4574, label %4566

; <label>:4566                                    ; preds = %4545
  %4567 = and i32 %4311, 32768
  %4568 = icmp eq i32 %4567, 0
  br i1 %4568, label %4584, label %4569

; <label>:4569                                    ; preds = %4566
  %4570 = fmul fast float %4477, 1.270000e+02
  %4571 = fadd fast float %4570, %4154
  %4572 = fadd fast float %4570, %4155
  %4573 = fadd fast float %4570, %4156
  br label %4584

; <label>:4574                                    ; preds = %4545
  %4575 = fsub fast float 1.270000e+02, %4154
  %4576 = fsub fast float 1.270000e+02, %4155
  %4577 = fsub fast float 1.270000e+02, %4156
  %4578 = fmul fast float %4477, %4575
  %4579 = fmul fast float %4477, %4576
  %4580 = fmul fast float %4477, %4577
  %4581 = fadd fast float %4578, %4154
  %4582 = fadd fast float %4579, %4155
  %4583 = fadd fast float %4580, %4156
  br label %4584

; <label>:4584                                    ; preds = %4574, %4569, %4566
  %4585 = phi float [ %4571, %4569 ], [ %4154, %4566 ], [ %4581, %4574 ]
  %4586 = phi float [ %4572, %4569 ], [ %4155, %4566 ], [ %4582, %4574 ]
  %4587 = phi float [ %4573, %4569 ], [ %4156, %4566 ], [ %4583, %4574 ]
  %4588 = call float @dx.op.dot3.f32(i32 55, float %4435, float %4436, float %4437, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4590 = extractvalue %dx.types.CBufRet.f32 %4589, 0
  %4591 = extractvalue %dx.types.CBufRet.f32 %4589, 1
  %4592 = fmul fast float %4591, %4588
  %4593 = fadd fast float %4592, %4590
  %4594 = call float @dx.op.unary.f32(i32 7, float %4593)  ; Saturate(value)
  %4595 = bitcast float %4220 to i32
  %4596 = and i32 %4595, 65535
  %4597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4596)  ; LegacyF16ToF32(value)
  %4598 = lshr i32 %4595, 16
  %4599 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4598)  ; LegacyF16ToF32(value)
  %4600 = fcmp fast oge float %4597, 0.000000e+00
  %4601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4602 = extractvalue %dx.types.CBufRet.f32 %4601, 0
  %4603 = select i1 %4600, float %4597, float %4602
  %4604 = fadd fast float %4603, %4599
  %4605 = fsub fast float %4594, %4153
  %4606 = fmul fast float %4605, %4381
  %4607 = fadd fast float %4606, %4153
  %4608 = fmul fast float %4604, %4381
  %4609 = call float @dx.op.binary.f32(i32 35, float %4152, float %4608)  ; FMax(a,b)
  %4610 = and i32 %4311, 16
  %4611 = icmp eq i32 %4610, 0
  br i1 %4611, label %4633, label %4612

; <label>:4612                                    ; preds = %4584
  %4613 = add i32 %4223, 0
  %4614 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4613, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4615 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4614, %dx.types.Handle %4394, float %4322, float %4325, float undef, float undef, i32 0, i32 0, i32 undef, float %4327, float %4329, float undef, float %4331, float %4333, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4616 = extractvalue %dx.types.ResRet.f32 %4615, 0
  %4617 = extractvalue %dx.types.ResRet.f32 %4615, 1
  %4618 = extractvalue %dx.types.ResRet.f32 %4615, 2
  %4619 = and i32 %4513, 65535
  %4620 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4619)  ; LegacyF16ToF32(value)
  %4621 = fmul fast float %4616, %4217
  %4622 = fmul fast float %4617, %4218
  %4623 = fmul fast float %4618, %4219
  %4624 = and i32 %4311, 16384
  %4625 = icmp ne i32 %4624, 0
  %4626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4627 = extractvalue %dx.types.CBufRet.f32 %4626, 0
  %4628 = select i1 %4625, float %4627, float 1.000000e+00
  %4629 = fmul fast float %4628, %4620
  %4630 = fmul fast float %4621, %4629
  %4631 = fmul fast float %4622, %4629
  %4632 = fmul fast float %4623, %4629
  br label %4633

; <label>:4633                                    ; preds = %4612, %4584
  %4634 = phi float [ %4630, %4612 ], [ 0.000000e+00, %4584 ]
  %4635 = phi float [ %4631, %4612 ], [ 0.000000e+00, %4584 ]
  %4636 = phi float [ %4632, %4612 ], [ 0.000000e+00, %4584 ]
  %4637 = fsub fast float %4634, %4162
  %4638 = fsub fast float %4635, %4163
  %4639 = fsub fast float %4636, %4164
  %4640 = fmul fast float %4637, %4381
  %4641 = fmul fast float %4638, %4381
  %4642 = fmul fast float %4639, %4381
  %4643 = fadd fast float %4640, %4162
  %4644 = fadd fast float %4641, %4163
  %4645 = fadd fast float %4642, %4164
  br label %4276

; <label>:4646                                    ; preds = %4276
  br label %4647

; <label>:4647                                    ; preds = %4646, %4086
  %4648 = phi float [ 0.000000e+00, %4086 ], [ %4277, %4646 ]
  %4649 = phi float [ %4030, %4086 ], [ %4278, %4646 ]
  %4650 = phi float [ %4009, %4086 ], [ %4279, %4646 ]
  %4651 = phi float [ %4002, %4086 ], [ %4280, %4646 ]
  %4652 = phi float [ %4003, %4086 ], [ %4281, %4646 ]
  %4653 = phi float [ %4004, %4086 ], [ %4282, %4646 ]
  %4654 = phi float [ 0.000000e+00, %4086 ], [ %4283, %4646 ]
  %4655 = phi float [ 0.000000e+00, %4086 ], [ %4284, %4646 ]
  %4656 = phi float [ %3999, %4086 ], [ %4285, %4646 ]
  %4657 = phi float [ %4000, %4086 ], [ %4286, %4646 ]
  %4658 = phi float [ %4001, %4086 ], [ %4287, %4646 ]
  %4659 = phi float [ %4052, %4086 ], [ %4288, %4646 ]
  %4660 = phi float [ %4054, %4086 ], [ %4289, %4646 ]
  %4661 = phi float [ %4056, %4086 ], [ %4290, %4646 ]
  %4662 = phi float [ %4082, %4086 ], [ %4291, %4646 ]
  %4663 = phi float [ %4083, %4086 ], [ %4292, %4646 ]
  %4664 = phi float [ %4084, %4086 ], [ %4293, %4646 ]
  %4665 = phi float [ %4007, %4086 ], [ %4294, %4646 ]
  %4666 = phi float [ %4006, %4086 ], [ %4295, %4646 ]
  %4667 = phi float [ 0.000000e+00, %4086 ], [ %4296, %4646 ]
  %4668 = phi float [ %4005, %4086 ], [ %4297, %4646 ]
  %4669 = phi float [ %4037, %4086 ], [ %4298, %4646 ]
  %4670 = phi float [ %4038, %4086 ], [ %4299, %4646 ]
  %4671 = phi float [ %4039, %4086 ], [ %4300, %4646 ]
  %4672 = call float @dx.op.dot3.f32(i32 55, float %4662, float %4663, float %4664, float %4662, float %4663, float %4664)  ; Dot3(ax,ay,az,bx,by,bz)
  %4673 = call float @dx.op.unary.f32(i32 25, float %4672)  ; Rsqrt(value)
  %4674 = fmul fast float %4673, %4662
  %4675 = fmul fast float %4673, %4663
  %4676 = fmul fast float %4673, %4664
  %4677 = fadd fast float %4667, %1179
  %4678 = call float @dx.op.unary.f32(i32 7, float %4677)  ; Saturate(value)
  %4679 = call float @dx.op.dot3.f32(i32 55, float %4674, float %4675, float %4676, float %4674, float %4675, float %4676)  ; Dot3(ax,ay,az,bx,by,bz)
  %4680 = call float @dx.op.unary.f32(i32 25, float %4679)  ; Rsqrt(value)
  %4681 = fmul fast float %4680, %4674
  %4682 = fmul fast float %4680, %4675
  %4683 = fmul fast float %4680, %4676
  br label %4684

; <label>:4684                                    ; preds = %4647, %3990
  %4685 = phi float [ %4681, %4647 ], [ %4082, %3990 ]
  %4686 = phi float [ %4682, %4647 ], [ %4083, %3990 ]
  %4687 = phi float [ %4683, %4647 ], [ %4084, %3990 ]
  %4688 = phi float [ %4669, %4647 ], [ %4037, %3990 ]
  %4689 = phi float [ %4670, %4647 ], [ %4038, %3990 ]
  %4690 = phi float [ %4671, %4647 ], [ %4039, %3990 ]
  %4691 = phi float [ %4659, %4647 ], [ %4052, %3990 ]
  %4692 = phi float [ %4660, %4647 ], [ %4054, %3990 ]
  %4693 = phi float [ %4661, %4647 ], [ %4056, %3990 ]
  %4694 = phi float [ %4651, %4647 ], [ %4002, %3990 ]
  %4695 = phi float [ %4652, %4647 ], [ %4003, %3990 ]
  %4696 = phi float [ %4653, %4647 ], [ %4004, %3990 ]
  %4697 = phi float [ %4656, %4647 ], [ %3999, %3990 ]
  %4698 = phi float [ %4657, %4647 ], [ %4000, %3990 ]
  %4699 = phi float [ %4658, %4647 ], [ %4001, %3990 ]
  %4700 = phi float [ %4668, %4647 ], [ %4005, %3990 ]
  %4701 = phi float [ %4678, %4647 ], [ %1179, %3990 ]
  %4702 = phi float [ %4666, %4647 ], [ %4006, %3990 ]
  %4703 = phi float [ %4665, %4647 ], [ %4007, %3990 ]
  %4704 = phi float [ %4655, %4647 ], [ 0.000000e+00, %3990 ]
  %4705 = phi float [ %4654, %4647 ], [ 0.000000e+00, %3990 ]
  %4706 = phi float [ %4648, %4647 ], [ 0.000000e+00, %3990 ]
  %4707 = phi float [ %4649, %4647 ], [ %4030, %3990 ]
  %4708 = phi float [ %4650, %4647 ], [ %4009, %3990 ]
  %4709 = fadd fast float %4700, 0xBFB99999A0000000
  %4710 = call float @dx.op.unary.f32(i32 7, float %4709)  ; Saturate(value)
  %4711 = fmul fast float %4710, 0x3FF1C71C80000000
  %4712 = call float @dx.op.binary.f32(i32 36, float %4700, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4713 = fsub fast float 1.000000e+00, %4711
  %4714 = call float @dx.op.unary.f32(i32 7, float %4713)  ; Saturate(value)
  %4715 = fmul fast float %4714, %4688
  %4716 = fmul fast float %4714, %4689
  %4717 = fmul fast float %4714, %4690
  %4718 = call float @dx.op.unary.f32(i32 7, float %4715)  ; Saturate(value)
  %4719 = call float @dx.op.unary.f32(i32 7, float %4716)  ; Saturate(value)
  %4720 = call float @dx.op.unary.f32(i32 7, float %4717)  ; Saturate(value)
  %4721 = fmul fast float %4711, %4688
  %4722 = fmul fast float %4711, %4689
  %4723 = fmul fast float %4711, %4690
  %4724 = fadd fast float %4721, %4712
  %4725 = fadd fast float %4722, %4712
  %4726 = fadd fast float %4723, %4712
  %4727 = call float @dx.op.unary.f32(i32 7, float %4724)  ; Saturate(value)
  %4728 = call float @dx.op.unary.f32(i32 7, float %4725)  ; Saturate(value)
  %4729 = call float @dx.op.unary.f32(i32 7, float %4726)  ; Saturate(value)
  %4730 = call float @dx.op.unary.f32(i32 7, float %4702)  ; Saturate(value)
  %4731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %4732 = extractvalue %dx.types.ResRet.i32 %4731, 0
  %4733 = and i32 %4732, 1
  %4734 = icmp eq i32 %4733, 0
  br i1 %4734, label %4749, label %4735

; <label>:4735                                    ; preds = %4684
  %4736 = call float @dx.op.binary.f32(i32 35, float %4719, float %4720)  ; FMax(a,b)
  %4737 = call float @dx.op.binary.f32(i32 35, float %4718, float %4736)  ; FMax(a,b)
  %4738 = fcmp fast ogt float %4737, 0.000000e+00
  %4739 = bitcast float %4737 to i32
  %4740 = sub nsw i32 2129859010, %4739
  %4741 = bitcast i32 %4740 to float
  %4742 = select i1 %4738, float %4741, float 0.000000e+00
  %4743 = fmul fast float %4718, %4697
  %4744 = fmul fast float %4719, %4698
  %4745 = fmul fast float %4720, %4699
  %4746 = fmul fast float %4743, %4742
  %4747 = fmul fast float %4744, %4742
  %4748 = fmul fast float %4745, %4742
  br label %4749

; <label>:4749                                    ; preds = %4735, %4684
  %4750 = phi float [ %4746, %4735 ], [ %4697, %4684 ]
  %4751 = phi float [ %4747, %4735 ], [ %4698, %4684 ]
  %4752 = phi float [ %4748, %4735 ], [ %4699, %4684 ]
  %4753 = call float @dx.op.binary.f32(i32 36, float %4694, float 1.270000e+02)  ; FMin(a,b)
  %4754 = call float @dx.op.binary.f32(i32 36, float %4695, float 1.270000e+02)  ; FMin(a,b)
  %4755 = call float @dx.op.binary.f32(i32 36, float %4696, float 1.270000e+02)  ; FMin(a,b)
  %4756 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4757 = extractvalue %dx.types.CBufRet.i32 %4756, 3
  %4758 = and i32 %4757, 8
  %4759 = icmp ne i32 %4758, 0
  %4760 = call float @dx.op.binary.f32(i32 35, float %4718, float %4688)  ; FMax(a,b)
  %4761 = call float @dx.op.binary.f32(i32 35, float %4719, float %4688)  ; FMax(a,b)
  %4762 = call float @dx.op.binary.f32(i32 35, float %4720, float %4688)  ; FMax(a,b)
  %4763 = call float @dx.op.dot3.f32(i32 55, float %4718, float %4719, float %4720, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4764 = select i1 %264, float %4688, float %4718
  %4765 = select i1 %264, float %4763, float %4719
  %4766 = select i1 %264, float 1.000000e+00, float %4720
  %4767 = select i1 %4759, float %4760, float %4764
  %4768 = select i1 %4759, float %4761, float %4765
  %4769 = select i1 %4759, float %4762, float %4766
  %4770 = call float @dx.op.dot3.f32(i32 55, float %4750, float %4751, float %4752, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4771 = select i1 %264, float %4770, float %4750
  %4772 = select i1 %264, float %4770, float %4751
  %4773 = select i1 %264, float %4770, float %4752
  %4774 = and i32 %240, 3
  %4775 = select i1 %234, i32 %4774, i32 0
  %4776 = icmp eq i32 %4775, 1
  br i1 %4776, label %4777, label %4853

; <label>:4777                                    ; preds = %4749
  %4778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4779 = extractvalue %dx.types.CBufRet.f32 %4778, 0
  %4780 = extractvalue %dx.types.CBufRet.f32 %4778, 1
  %4781 = fadd fast float %4779, %190
  %4782 = fadd fast float %4780, %191
  %4783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4784 = extractvalue %dx.types.CBufRet.f32 %4783, 0
  %4785 = extractvalue %dx.types.CBufRet.f32 %4783, 1
  %4786 = fsub fast float %4781, %4784
  %4787 = fsub fast float %4782, %4785
  %4788 = fmul fast float %4786, %4786
  %4789 = fmul fast float %4787, %4787
  %4790 = fadd fast float %4788, %4789
  %4791 = call float @dx.op.unary.f32(i32 24, float %4790)  ; Sqrt(value)
  %4792 = extractvalue %dx.types.CBufRet.f32 %4783, 2
  %4793 = fcmp fast olt float %4791, %4792
  br i1 %4793, label %4794, label %4847

; <label>:4794                                    ; preds = %4777
  %4795 = extractvalue %dx.types.CBufRet.f32 %4778, 2
  %4796 = fadd fast float %4795, %192
  %4797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4798 = extractvalue %dx.types.CBufRet.f32 %4797, 0
  %4799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4800 = extractvalue %dx.types.CBufRet.f32 %4799, 0
  %4801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4802 = extractvalue %dx.types.CBufRet.f32 %4801, 0
  %4803 = extractvalue %dx.types.CBufRet.f32 %4797, 1
  %4804 = extractvalue %dx.types.CBufRet.f32 %4799, 1
  %4805 = extractvalue %dx.types.CBufRet.f32 %4801, 1
  %4806 = extractvalue %dx.types.CBufRet.f32 %4797, 3
  %4807 = extractvalue %dx.types.CBufRet.f32 %4799, 3
  %4808 = extractvalue %dx.types.CBufRet.f32 %4801, 3
  %4809 = fadd fast float %4806, %4781
  %4810 = fadd fast float %4807, %4782
  %4811 = fadd fast float %4796, %4808
  %4812 = fmul fast float %4809, %4798
  %4813 = call float @dx.op.tertiary.f32(i32 46, float %4810, float %4800, float %4812)  ; FMad(a,b,c)
  %4814 = call float @dx.op.tertiary.f32(i32 46, float %4811, float %4802, float %4813)  ; FMad(a,b,c)
  %4815 = fmul fast float %4809, %4803
  %4816 = call float @dx.op.tertiary.f32(i32 46, float %4810, float %4804, float %4815)  ; FMad(a,b,c)
  %4817 = call float @dx.op.tertiary.f32(i32 46, float %4811, float %4805, float %4816)  ; FMad(a,b,c)
  %4818 = fsub fast float %4814, %4806
  %4819 = fsub fast float %4817, %4807
  %4820 = fsub fast float %4818, %4784
  %4821 = fadd fast float %4820, %4792
  %4822 = fsub fast float %4819, %4785
  %4823 = fadd fast float %4822, %4792
  %4824 = extractvalue %dx.types.CBufRet.f32 %4783, 3
  %4825 = fmul fast float %4821, %4824
  %4826 = fmul fast float %4823, %4824
  %4827 = call float @dx.op.unary.f32(i32 7, float %4825)  ; Saturate(value)
  %4828 = call float @dx.op.unary.f32(i32 7, float %4826)  ; Saturate(value)
  %4829 = fsub fast float 1.000000e+00, %4827
  %4830 = fsub fast float 1.000000e+00, %4828
  %4831 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %45, float %4829, float %4830, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4832 = extractvalue %dx.types.ResRet.f32 %4831, 0
  %4833 = fcmp fast ugt float %4832, 0.000000e+00
  br i1 %4833, label %4834, label %4847

; <label>:4834                                    ; preds = %4794
  %4835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4836 = extractvalue %dx.types.CBufRet.f32 %4835, 2
  %4837 = fmul fast float %4836, %4832
  %4838 = extractvalue %dx.types.CBufRet.f32 %4835, 3
  %4839 = fadd fast float %4838, %4837
  %4840 = extractvalue %dx.types.CBufRet.f32 %4801, 2
  %4841 = fadd fast float %4839, %4808
  %4842 = fmul fast float %4814, %4802
  %4843 = call float @dx.op.tertiary.f32(i32 46, float %4817, float %4805, float %4842)  ; FMad(a,b,c)
  %4844 = call float @dx.op.tertiary.f32(i32 46, float %4841, float %4840, float %4843)  ; FMad(a,b,c)
  %4845 = fsub fast float %4844, %4808
  %4846 = fsub fast float %4845, %4795
  br label %4847

; <label>:4847                                    ; preds = %4834, %4794, %4777
  %4848 = phi i1 [ true, %4834 ], [ false, %4794 ], [ false, %4777 ]
  %4849 = phi float [ %4846, %4834 ], [ -1.310720e+05, %4794 ], [ -1.310720e+05, %4777 ]
  %4850 = fsub fast float %4849, %192
  %4851 = call float @dx.op.unary.f32(i32 7, float %4850)  ; Saturate(value)
  %4852 = select i1 %4848, float %4851, float 1.000000e+00
  br label %4853

; <label>:4853                                    ; preds = %4847, %4749
  %4854 = phi float [ %4852, %4847 ], [ 0.000000e+00, %4749 ]
  %4855 = icmp eq i32 %4775, 3
  %4856 = select i1 %4855, float 1.000000e+00, float %4854
  %4857 = call float @dx.op.binary.f32(i32 35, float %4706, float %4856)  ; FMax(a,b)
  %4858 = fcmp fast olt float %4856, 1.000000e+00
  %4859 = fcmp uge float %67, 0.000000e+00
  %4860 = and i1 %4859, %4858
  br i1 %4860, label %4861, label %4871

; <label>:4861                                    ; preds = %4853
  %4862 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %43, float %67, float %68, float %69, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4863 = extractvalue %dx.types.ResRet.f32 %4862, 0
  %4864 = extractvalue %dx.types.ResRet.f32 %4862, 1
  %4865 = extractvalue %dx.types.ResRet.f32 %4862, 2
  %4866 = fadd fast float %4863, %4857
  %4867 = fcmp ule float %66, 0.000000e+00
  %4868 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4869 = select i1 %4867, float %4868, float 1.000000e+00
  %4870 = fmul fast float %4869, %4865
  br label %4871

; <label>:4871                                    ; preds = %4861, %4853
  %4872 = phi float [ %4866, %4861 ], [ %4857, %4853 ]
  %4873 = phi float [ %4864, %4861 ], [ 0.000000e+00, %4853 ]
  %4874 = phi float [ %4870, %4861 ], [ 0.000000e+00, %4853 ]
  %4875 = call float @dx.op.unary.f32(i32 7, float %4872)  ; Saturate(value)
  %4876 = call float @dx.op.unary.f32(i32 7, float %4873)  ; Saturate(value)
  %4877 = call float @dx.op.unary.f32(i32 7, float %4874)  ; Saturate(value)
  %4878 = fcmp fast une float %4876, 0.000000e+00
  %4879 = fcmp fast une float %4877, 0.000000e+00
  %4880 = or i1 %4878, %4879
  br i1 %4880, label %4881, label %5456

; <label>:4881                                    ; preds = %4871
  br i1 %4878, label %4882, label %5155

; <label>:4882                                    ; preds = %4881
  %4883 = call float @dx.op.unary.f32(i32 23, float %4703)  ; Log(value)
  %4884 = fmul fast float %4883, 4.000000e+00
  %4885 = call float @dx.op.unary.f32(i32 21, float %4884)  ; Exp(value)
  %4886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4887 = extractvalue %dx.types.CBufRet.f32 %4886, 0
  %4888 = fmul fast float %4887, %54
  %4889 = fmul fast float %4887, %55
  %4890 = fmul fast float %4887, %56
  %4891 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %4892 = call float @dx.op.unary.f32(i32 6, float %64)  ; FAbs(value)
  %4893 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %4894 = call float @dx.op.unary.f32(i32 23, float %4891)  ; Log(value)
  %4895 = call float @dx.op.unary.f32(i32 23, float %4892)  ; Log(value)
  %4896 = call float @dx.op.unary.f32(i32 23, float %4893)  ; Log(value)
  %4897 = fmul fast float %4894, 4.000000e+00
  %4898 = fmul fast float %4895, 4.000000e+00
  %4899 = fmul fast float %4896, 4.000000e+00
  %4900 = call float @dx.op.unary.f32(i32 21, float %4897)  ; Exp(value)
  %4901 = call float @dx.op.unary.f32(i32 21, float %4898)  ; Exp(value)
  %4902 = call float @dx.op.unary.f32(i32 21, float %4899)  ; Exp(value)
  %4903 = fadd fast float %4901, %4900
  %4904 = fadd fast float %4903, %4902
  %4905 = fdiv fast float 1.000000e+00, %4904
  %4906 = fmul fast float %4905, %4900
  %4907 = fcmp fast ogt float %63, 0.000000e+00
  %4908 = fcmp fast ogt float %64, 0.000000e+00
  %4909 = fcmp fast ogt float %65, 0.000000e+00
  %4910 = fcmp fast olt float %63, 0.000000e+00
  %4911 = fcmp fast olt float %64, 0.000000e+00
  %4912 = fcmp fast olt float %65, 0.000000e+00
  %4913 = zext i1 %4907 to i32
  %4914 = zext i1 %4908 to i32
  %4915 = zext i1 %4909 to i32
  %4916 = zext i1 %4910 to i32
  %4917 = zext i1 %4911 to i32
  %4918 = zext i1 %4912 to i32
  %4919 = sub nsw i32 %4913, %4916
  %4920 = sub nsw i32 %4914, %4917
  %4921 = sub nsw i32 %4915, %4918
  %4922 = call float @dx.op.unary.f32(i32 83, float %4888)  ; DerivCoarseX(value)
  %4923 = call float @dx.op.unary.f32(i32 83, float %4889)  ; DerivCoarseX(value)
  %4924 = call float @dx.op.unary.f32(i32 83, float %4890)  ; DerivCoarseX(value)
  %4925 = call float @dx.op.unary.f32(i32 84, float %4888)  ; DerivCoarseY(value)
  %4926 = call float @dx.op.unary.f32(i32 84, float %4889)  ; DerivCoarseY(value)
  %4927 = call float @dx.op.unary.f32(i32 84, float %4890)  ; DerivCoarseY(value)
  %4928 = fcmp fast ole float %277, %4906
  %4929 = fmul fast float %4905, %4903
  %4930 = fcmp fast ole float %277, %4929
  %4931 = select i1 %4930, float %4890, float %4888
  %4932 = select i1 %4930, float %4888, float %4889
  %4933 = select i1 %4928, float %4889, float %4931
  %4934 = select i1 %4928, float %4890, float %4932
  %4935 = select i1 %4930, float %4924, float %4922
  %4936 = select i1 %4930, float %4922, float %4923
  %4937 = select i1 %4928, float %4923, float %4935
  %4938 = select i1 %4928, float %4924, float %4936
  %4939 = select i1 %4930, float %4927, float %4925
  %4940 = select i1 %4930, float %4925, float %4926
  %4941 = select i1 %4928, float %4926, float %4939
  %4942 = select i1 %4928, float %4927, float %4940
  %4943 = call float @dx.op.unary.f32(i32 27, float %4933)  ; Round_ni(value)
  %4944 = call float @dx.op.unary.f32(i32 27, float %4934)  ; Round_ni(value)
  %4945 = fptosi float %4943 to i32
  %4946 = fptosi float %4944 to i32
  %4947 = xor i32 %4946, %4945
  %4948 = sitofp i32 %4947 to float
  %4949 = fptosi float %4948 to i32
  %4950 = sitofp i32 %4949 to float
  %4951 = fmul fast float %4950, 0x3FE3C6EF40000000
  %4952 = frem fast float %4943, 2.560000e+02
  %4953 = frem fast float %4944, 2.560000e+02
  %4954 = fptoui float %4952 to i32
  %4955 = fptoui float %4953 to i32
  %4956 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %27, i32 0, i32 %4954, i32 %4955, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4957 = extractvalue %dx.types.ResRet.f32 %4956, 0
  %4958 = extractvalue %dx.types.ResRet.f32 %4956, 1
  %4959 = extractvalue %dx.types.ResRet.f32 %4956, 2
  %4960 = fadd fast float %4957, %4951
  %4961 = fadd fast float %4958, %4951
  %4962 = fadd fast float %4959, %4951
  %4963 = call float @dx.op.unary.f32(i32 22, float %4960)  ; Frc(value)
  %4964 = call float @dx.op.unary.f32(i32 22, float %4961)  ; Frc(value)
  %4965 = call float @dx.op.unary.f32(i32 22, float %4962)  ; Frc(value)
  %4966 = fmul fast float %4965, 0x401921FB60000000
  %4967 = call float @dx.op.unary.f32(i32 13, float %4966)  ; Sin(value)
  %4968 = call float @dx.op.unary.f32(i32 12, float %4966)  ; Cos(value)
  %4969 = fsub fast float -0.000000e+00, %4968
  %4970 = fmul fast float %4968, %4933
  %4971 = call float @dx.op.tertiary.f32(i32 46, float %4967, float %4934, float %4970)  ; FMad(a,b,c)
  %4972 = fmul fast float %4967, %4933
  %4973 = call float @dx.op.tertiary.f32(i32 46, float %4969, float %4934, float %4972)  ; FMad(a,b,c)
  %4974 = fadd fast float %4971, %4963
  %4975 = fadd fast float %4973, %4964
  %4976 = extractvalue %dx.types.CBufRet.f32 %4886, 3
  %4977 = bitcast float %4976 to i32
  %4978 = icmp eq i32 %4977, 0
  br i1 %4978, label %5017, label %4979

; <label>:4979                                    ; preds = %4882
  %4980 = add i32 %4977, 0
  %4981 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4980, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4982 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4981, %dx.types.Handle %108, float %4974, float %4975, float undef, float undef, i32 0, i32 0, i32 undef, float %4937, float %4938, float undef, float %4941, float %4942, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4983 = extractvalue %dx.types.ResRet.f32 %4982, 0
  %4984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4985 = extractvalue %dx.types.CBufRet.f32 %4984, 1
  %4986 = extractvalue %dx.types.CBufRet.f32 %4984, 2
  %4987 = fsub fast float 1.000000e+00, %4876
  %4988 = call float @dx.op.binary.f32(i32 35, float %4987, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4989 = bitcast float %4876 to i32
  %4990 = sitofp i32 %4989 to float
  %4991 = fadd fast float %4990, 0xC1CFBF8940000000
  %4992 = fmul fast float %4986, %4991
  %4993 = fadd fast float %4992, 0x41CFBF8940000000
  %4994 = fptosi float %4993 to i32
  %4995 = bitcast i32 %4994 to float
  %4996 = bitcast float %4988 to i32
  %4997 = sitofp i32 %4996 to float
  %4998 = fadd fast float %4997, 0xC1CFBF8940000000
  %4999 = fmul fast float %4998, %4986
  %5000 = fadd fast float %4999, 0x41CFBF8940000000
  %5001 = fptosi float %5000 to i32
  %5002 = bitcast i32 %5001 to float
  %5003 = fmul fast float %4995, %4985
  %5004 = fmul fast float %5002, %4985
  %5005 = fsub fast float %4988, %5003
  %5006 = fadd fast float %5004, %4988
  %5007 = call float @dx.op.unary.f32(i32 7, float %5005)  ; Saturate(value)
  %5008 = call float @dx.op.unary.f32(i32 7, float %5006)  ; Saturate(value)
  %5009 = fsub fast float %4983, %5007
  %5010 = fsub fast float %5008, %5007
  %5011 = bitcast float %5010 to i32
  %5012 = sub nsw i32 2129859010, %5011
  %5013 = bitcast i32 %5012 to float
  %5014 = fmul fast float %5013, %5009
  %5015 = call float @dx.op.unary.f32(i32 7, float %5014)  ; Saturate(value)
  %5016 = fcmp fast olt float %5015, 0x3F70101020000000
  br i1 %5016, label %5155, label %5017

; <label>:5017                                    ; preds = %4979, %4882
  %5018 = phi float [ %5015, %4979 ], [ %4876, %4882 ]
  %5019 = fmul fast float %5018, %4885
  %5020 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5021 = extractvalue %dx.types.CBufRet.i32 %5020, 1
  %5022 = extractvalue %dx.types.CBufRet.i32 %5020, 0
  %5023 = add i32 %5022, 0
  %5024 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5023, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5025 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5024, %dx.types.Handle %107, float %4974, float %4975, float undef, float undef, i32 0, i32 0, i32 undef, float %4937, float %4938, float undef, float %4941, float %4942, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5026 = extractvalue %dx.types.ResRet.f32 %5025, 0
  %5027 = extractvalue %dx.types.ResRet.f32 %5025, 1
  %5028 = extractvalue %dx.types.ResRet.f32 %5025, 2
  %5029 = extractvalue %dx.types.ResRet.f32 %5025, 3
  %5030 = and i32 %5021, 255
  %5031 = uitofp i32 %5030 to float
  %5032 = lshr i32 %5021, 8
  %5033 = and i32 %5032, 255
  %5034 = uitofp i32 %5033 to float
  %5035 = fmul fast float %5029, %5031
  %5036 = fadd fast float %5035, %5034
  %5037 = fmul fast float %5036, 0x3F70101000000000
  %5038 = fadd fast float %5037, 0xBFB99999A0000000
  %5039 = call float @dx.op.unary.f32(i32 7, float %5038)  ; Saturate(value)
  %5040 = fmul fast float %5039, 0x3FF1C71C80000000
  %5041 = call float @dx.op.binary.f32(i32 36, float %5037, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5042 = fsub fast float 1.000000e+00, %5040
  %5043 = call float @dx.op.unary.f32(i32 7, float %5042)  ; Saturate(value)
  %5044 = fmul fast float %5043, %5026
  %5045 = fmul fast float %5043, %5027
  %5046 = fmul fast float %5043, %5028
  %5047 = call float @dx.op.unary.f32(i32 7, float %5044)  ; Saturate(value)
  %5048 = call float @dx.op.unary.f32(i32 7, float %5045)  ; Saturate(value)
  %5049 = call float @dx.op.unary.f32(i32 7, float %5046)  ; Saturate(value)
  %5050 = fmul fast float %5040, %5026
  %5051 = fmul fast float %5040, %5027
  %5052 = fmul fast float %5040, %5028
  %5053 = fadd fast float %5050, %5041
  %5054 = fadd fast float %5051, %5041
  %5055 = fadd fast float %5052, %5041
  %5056 = call float @dx.op.unary.f32(i32 7, float %5053)  ; Saturate(value)
  %5057 = call float @dx.op.unary.f32(i32 7, float %5054)  ; Saturate(value)
  %5058 = call float @dx.op.unary.f32(i32 7, float %5055)  ; Saturate(value)
  %5059 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5060 = extractvalue %dx.types.CBufRet.i32 %5059, 3
  %5061 = extractvalue %dx.types.CBufRet.i32 %5059, 2
  %5062 = add i32 %5061, 0
  %5063 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5062, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5064 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5063, %dx.types.Handle %107, float %4974, float %4975, float undef, float undef, i32 0, i32 0, i32 undef, float %4937, float %4938, float undef, float %4941, float %4942, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5065 = extractvalue %dx.types.ResRet.f32 %5064, 0
  %5066 = extractvalue %dx.types.ResRet.f32 %5064, 1
  %5067 = extractvalue %dx.types.ResRet.f32 %5064, 2
  %5068 = extractvalue %dx.types.ResRet.f32 %5064, 3
  %5069 = and i32 %5060, 255
  %5070 = uitofp i32 %5069 to float
  %5071 = lshr i32 %5060, 8
  %5072 = and i32 %5071, 255
  %5073 = uitofp i32 %5072 to float
  %5074 = lshr i32 %5060, 16
  %5075 = and i32 %5074, 255
  %5076 = uitofp i32 %5075 to float
  %5077 = fmul fast float %5076, 0x3F70101000000000
  %5078 = fmul fast float %5065, %5070
  %5079 = fadd fast float %5078, %5073
  %5080 = fmul fast float %5079, 0x3F70101000000000
  %5081 = fadd fast float %5066, -5.000000e-01
  %5082 = fadd fast float %5068, -5.000000e-01
  %5083 = fmul fast float %5081, %5077
  %5084 = fmul fast float %5082, %5077
  %5085 = fadd fast float %5083, 5.000000e-01
  %5086 = fadd fast float %5084, 5.000000e-01
  %5087 = fmul fast float %5085, 2.000000e+00
  %5088 = fadd fast float %5087, -1.000000e+00
  %5089 = fmul fast float %5086, 2.000000e+00
  %5090 = fadd fast float %5089, -1.000000e+00
  %5091 = fadd fast float %5088, %5090
  %5092 = fmul fast float %5091, 5.000000e-01
  %5093 = fsub fast float %5088, %5090
  %5094 = fmul fast float %5093, 5.000000e-01
  %5095 = call float @dx.op.unary.f32(i32 6, float %5092)  ; FAbs(value)
  %5096 = fsub fast float 1.000000e+00, %5095
  %5097 = call float @dx.op.unary.f32(i32 6, float %5094)  ; FAbs(value)
  %5098 = fsub fast float %5096, %5097
  %5099 = call float @dx.op.dot3.f32(i32 55, float %5092, float %5094, float %5098, float %5092, float %5094, float %5098)  ; Dot3(ax,ay,az,bx,by,bz)
  %5100 = call float @dx.op.unary.f32(i32 25, float %5099)  ; Rsqrt(value)
  %5101 = fmul fast float %5092, %5100
  %5102 = fmul fast float %5094, %5100
  %5103 = select i1 %4930, i32 %4920, i32 %4921
  %5104 = select i1 %4928, i32 %4919, i32 %5103
  %5105 = sitofp i32 %5104 to float
  %5106 = fmul fast float %5098, %5105
  %5107 = fmul fast float %5106, %5100
  %5108 = select i1 %4930, float %5107, float %5102
  %5109 = select i1 %4930, float %5102, float %5107
  %5110 = select i1 %4928, float %5107, float %5101
  %5111 = select i1 %4928, float %5102, float %5108
  %5112 = select i1 %4928, float %5101, float %5109
  %5113 = fsub fast float %5047, %4767
  %5114 = fsub fast float %5048, %4768
  %5115 = fsub fast float %5049, %4769
  %5116 = fmul fast float %5113, %5019
  %5117 = fmul fast float %5114, %5019
  %5118 = fmul fast float %5115, %5019
  %5119 = fadd fast float %5116, %4767
  %5120 = fadd fast float %5117, %4768
  %5121 = fadd fast float %5118, %4769
  %5122 = fsub fast float %5056, %4727
  %5123 = fsub fast float %5057, %4728
  %5124 = fsub fast float %5058, %4729
  %5125 = fmul fast float %5122, %5019
  %5126 = fmul fast float %5123, %5019
  %5127 = fmul fast float %5124, %5019
  %5128 = fadd fast float %5125, %4727
  %5129 = fadd fast float %5126, %4728
  %5130 = fadd fast float %5127, %4729
  %5131 = fadd fast float %5110, %4685
  %5132 = fadd fast float %5111, %4686
  %5133 = fadd fast float %5112, %4687
  %5134 = call float @dx.op.dot3.f32(i32 55, float %5131, float %5132, float %5133, float %5131, float %5132, float %5133)  ; Dot3(ax,ay,az,bx,by,bz)
  %5135 = call float @dx.op.unary.f32(i32 25, float %5134)  ; Rsqrt(value)
  %5136 = fmul fast float %5131, %5135
  %5137 = fmul fast float %5132, %5135
  %5138 = fmul fast float %5133, %5135
  %5139 = fsub fast float %5136, %4685
  %5140 = fsub fast float %5137, %4686
  %5141 = fsub fast float %5138, %4687
  %5142 = fmul fast float %5139, %5019
  %5143 = fmul fast float %5140, %5019
  %5144 = fmul fast float %5141, %5019
  %5145 = fadd fast float %5142, %4685
  %5146 = fadd fast float %5143, %4686
  %5147 = fadd fast float %5144, %4687
  %5148 = call float @dx.op.binary.f32(i32 36, float %4703, float %5067)  ; FMin(a,b)
  %5149 = fsub fast float %5148, %4703
  %5150 = fmul fast float %5149, %5019
  %5151 = fadd fast float %5150, %4703
  %5152 = fsub fast float %5080, %4730
  %5153 = fmul fast float %5152, %5019
  %5154 = fadd fast float %5153, %4730
  br label %5155

; <label>:5155                                    ; preds = %5017, %4979, %4881
  %5156 = phi float [ %5128, %5017 ], [ %4727, %4979 ], [ %4727, %4881 ]
  %5157 = phi float [ %5129, %5017 ], [ %4728, %4979 ], [ %4728, %4881 ]
  %5158 = phi float [ %5130, %5017 ], [ %4729, %4979 ], [ %4729, %4881 ]
  %5159 = phi float [ %5145, %5017 ], [ %4685, %4979 ], [ %4685, %4881 ]
  %5160 = phi float [ %5146, %5017 ], [ %4686, %4979 ], [ %4686, %4881 ]
  %5161 = phi float [ %5147, %5017 ], [ %4687, %4979 ], [ %4687, %4881 ]
  %5162 = phi float [ %5119, %5017 ], [ %4767, %4979 ], [ %4767, %4881 ]
  %5163 = phi float [ %5120, %5017 ], [ %4768, %4979 ], [ %4768, %4881 ]
  %5164 = phi float [ %5121, %5017 ], [ %4769, %4979 ], [ %4769, %4881 ]
  %5165 = phi float [ %5154, %5017 ], [ %4730, %4979 ], [ %4730, %4881 ]
  %5166 = phi float [ %5151, %5017 ], [ %4703, %4979 ], [ %4703, %4881 ]
  br i1 %4879, label %5167, label %5456

; <label>:5167                                    ; preds = %5155
  %5168 = call float @dx.op.unary.f32(i32 23, float %5166)  ; Log(value)
  %5169 = fmul fast float %5168, 4.000000e+00
  %5170 = call float @dx.op.unary.f32(i32 21, float %5169)  ; Exp(value)
  %5171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5172 = extractvalue %dx.types.CBufRet.f32 %5171, 0
  %5173 = fmul fast float %5172, %54
  %5174 = fmul fast float %5172, %55
  %5175 = fmul fast float %5172, %56
  %5176 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %5177 = call float @dx.op.unary.f32(i32 6, float %64)  ; FAbs(value)
  %5178 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %5179 = call float @dx.op.unary.f32(i32 23, float %5176)  ; Log(value)
  %5180 = call float @dx.op.unary.f32(i32 23, float %5177)  ; Log(value)
  %5181 = call float @dx.op.unary.f32(i32 23, float %5178)  ; Log(value)
  %5182 = fmul fast float %5179, 4.000000e+00
  %5183 = fmul fast float %5180, 4.000000e+00
  %5184 = fmul fast float %5181, 4.000000e+00
  %5185 = call float @dx.op.unary.f32(i32 21, float %5182)  ; Exp(value)
  %5186 = call float @dx.op.unary.f32(i32 21, float %5183)  ; Exp(value)
  %5187 = call float @dx.op.unary.f32(i32 21, float %5184)  ; Exp(value)
  %5188 = fadd fast float %5186, %5185
  %5189 = fadd fast float %5188, %5187
  %5190 = fdiv fast float 1.000000e+00, %5189
  %5191 = fmul fast float %5190, %5185
  %5192 = fcmp fast ogt float %63, 0.000000e+00
  %5193 = fcmp fast ogt float %64, 0.000000e+00
  %5194 = fcmp fast ogt float %65, 0.000000e+00
  %5195 = fcmp fast olt float %63, 0.000000e+00
  %5196 = fcmp fast olt float %64, 0.000000e+00
  %5197 = fcmp fast olt float %65, 0.000000e+00
  %5198 = zext i1 %5192 to i32
  %5199 = zext i1 %5193 to i32
  %5200 = zext i1 %5194 to i32
  %5201 = zext i1 %5195 to i32
  %5202 = zext i1 %5196 to i32
  %5203 = zext i1 %5197 to i32
  %5204 = sub nsw i32 %5198, %5201
  %5205 = sub nsw i32 %5199, %5202
  %5206 = sub nsw i32 %5200, %5203
  %5207 = call float @dx.op.unary.f32(i32 83, float %5173)  ; DerivCoarseX(value)
  %5208 = call float @dx.op.unary.f32(i32 83, float %5174)  ; DerivCoarseX(value)
  %5209 = call float @dx.op.unary.f32(i32 83, float %5175)  ; DerivCoarseX(value)
  %5210 = call float @dx.op.unary.f32(i32 84, float %5173)  ; DerivCoarseY(value)
  %5211 = call float @dx.op.unary.f32(i32 84, float %5174)  ; DerivCoarseY(value)
  %5212 = call float @dx.op.unary.f32(i32 84, float %5175)  ; DerivCoarseY(value)
  %5213 = fcmp fast ole float %277, %5191
  %5214 = fmul fast float %5190, %5188
  %5215 = fcmp fast ole float %277, %5214
  %5216 = select i1 %5215, float %5175, float %5173
  %5217 = select i1 %5215, float %5173, float %5174
  %5218 = select i1 %5213, float %5174, float %5216
  %5219 = select i1 %5213, float %5175, float %5217
  %5220 = select i1 %5215, float %5209, float %5207
  %5221 = select i1 %5215, float %5207, float %5208
  %5222 = select i1 %5213, float %5208, float %5220
  %5223 = select i1 %5213, float %5209, float %5221
  %5224 = select i1 %5215, float %5212, float %5210
  %5225 = select i1 %5215, float %5210, float %5211
  %5226 = select i1 %5213, float %5211, float %5224
  %5227 = select i1 %5213, float %5212, float %5225
  %5228 = call float @dx.op.unary.f32(i32 27, float %5218)  ; Round_ni(value)
  %5229 = call float @dx.op.unary.f32(i32 27, float %5219)  ; Round_ni(value)
  %5230 = fptosi float %5228 to i32
  %5231 = fptosi float %5229 to i32
  %5232 = xor i32 %5231, %5230
  %5233 = sitofp i32 %5232 to float
  %5234 = fptosi float %5233 to i32
  %5235 = sitofp i32 %5234 to float
  %5236 = fmul fast float %5235, 0x3FE3C6EF40000000
  %5237 = frem fast float %5228, 2.560000e+02
  %5238 = frem fast float %5229, 2.560000e+02
  %5239 = fptoui float %5237 to i32
  %5240 = fptoui float %5238 to i32
  %5241 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %27, i32 0, i32 %5239, i32 %5240, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5242 = extractvalue %dx.types.ResRet.f32 %5241, 0
  %5243 = extractvalue %dx.types.ResRet.f32 %5241, 1
  %5244 = extractvalue %dx.types.ResRet.f32 %5241, 2
  %5245 = fadd fast float %5242, %5236
  %5246 = fadd fast float %5243, %5236
  %5247 = fadd fast float %5244, %5236
  %5248 = call float @dx.op.unary.f32(i32 22, float %5245)  ; Frc(value)
  %5249 = call float @dx.op.unary.f32(i32 22, float %5246)  ; Frc(value)
  %5250 = call float @dx.op.unary.f32(i32 22, float %5247)  ; Frc(value)
  %5251 = fmul fast float %5250, 0x401921FB60000000
  %5252 = call float @dx.op.unary.f32(i32 13, float %5251)  ; Sin(value)
  %5253 = call float @dx.op.unary.f32(i32 12, float %5251)  ; Cos(value)
  %5254 = fsub fast float -0.000000e+00, %5253
  %5255 = fmul fast float %5253, %5218
  %5256 = call float @dx.op.tertiary.f32(i32 46, float %5252, float %5219, float %5255)  ; FMad(a,b,c)
  %5257 = fmul fast float %5252, %5218
  %5258 = call float @dx.op.tertiary.f32(i32 46, float %5254, float %5219, float %5257)  ; FMad(a,b,c)
  %5259 = fadd fast float %5256, %5248
  %5260 = fadd fast float %5258, %5249
  %5261 = extractvalue %dx.types.CBufRet.f32 %5171, 3
  %5262 = bitcast float %5261 to i32
  %5263 = icmp eq i32 %5262, 0
  br i1 %5263, label %5302, label %5264

; <label>:5264                                    ; preds = %5167
  %5265 = add i32 %5262, 0
  %5266 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5265, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5267 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5266, %dx.types.Handle %108, float %5259, float %5260, float undef, float undef, i32 0, i32 0, i32 undef, float %5222, float %5223, float undef, float %5226, float %5227, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5268 = extractvalue %dx.types.ResRet.f32 %5267, 0
  %5269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5270 = extractvalue %dx.types.CBufRet.f32 %5269, 1
  %5271 = extractvalue %dx.types.CBufRet.f32 %5269, 2
  %5272 = fsub fast float 1.000000e+00, %4877
  %5273 = call float @dx.op.binary.f32(i32 35, float %5272, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5274 = bitcast float %4877 to i32
  %5275 = sitofp i32 %5274 to float
  %5276 = fadd fast float %5275, 0xC1CFBF8940000000
  %5277 = fmul fast float %5271, %5276
  %5278 = fadd fast float %5277, 0x41CFBF8940000000
  %5279 = fptosi float %5278 to i32
  %5280 = bitcast i32 %5279 to float
  %5281 = bitcast float %5273 to i32
  %5282 = sitofp i32 %5281 to float
  %5283 = fadd fast float %5282, 0xC1CFBF8940000000
  %5284 = fmul fast float %5283, %5271
  %5285 = fadd fast float %5284, 0x41CFBF8940000000
  %5286 = fptosi float %5285 to i32
  %5287 = bitcast i32 %5286 to float
  %5288 = fmul fast float %5280, %5270
  %5289 = fmul fast float %5287, %5270
  %5290 = fsub fast float %5273, %5288
  %5291 = fadd fast float %5289, %5273
  %5292 = call float @dx.op.unary.f32(i32 7, float %5290)  ; Saturate(value)
  %5293 = call float @dx.op.unary.f32(i32 7, float %5291)  ; Saturate(value)
  %5294 = fsub fast float %5268, %5292
  %5295 = fsub fast float %5293, %5292
  %5296 = bitcast float %5295 to i32
  %5297 = sub nsw i32 2129859010, %5296
  %5298 = bitcast i32 %5297 to float
  %5299 = fmul fast float %5298, %5294
  %5300 = call float @dx.op.unary.f32(i32 7, float %5299)  ; Saturate(value)
  %5301 = fcmp fast olt float %5300, 0x3F70101020000000
  br i1 %5301, label %5456, label %5302

; <label>:5302                                    ; preds = %5264, %5167
  %5303 = phi float [ %5300, %5264 ], [ %4877, %5167 ]
  %5304 = fmul fast float %5303, %5170
  %5305 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5306 = extractvalue %dx.types.CBufRet.i32 %5305, 1
  %5307 = extractvalue %dx.types.CBufRet.i32 %5305, 0
  %5308 = add i32 %5307, 0
  %5309 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5308, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5310 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5309, %dx.types.Handle %107, float %5259, float %5260, float undef, float undef, i32 0, i32 0, i32 undef, float %5222, float %5223, float undef, float %5226, float %5227, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5311 = extractvalue %dx.types.ResRet.f32 %5310, 0
  %5312 = extractvalue %dx.types.ResRet.f32 %5310, 1
  %5313 = extractvalue %dx.types.ResRet.f32 %5310, 2
  %5314 = extractvalue %dx.types.ResRet.f32 %5310, 3
  %5315 = and i32 %5306, 255
  %5316 = uitofp i32 %5315 to float
  %5317 = lshr i32 %5306, 8
  %5318 = and i32 %5317, 255
  %5319 = uitofp i32 %5318 to float
  %5320 = fmul fast float %5314, %5316
  %5321 = fadd fast float %5320, %5319
  %5322 = fmul fast float %5321, 0x3F70101000000000
  %5323 = fadd fast float %5322, 0xBFB99999A0000000
  %5324 = call float @dx.op.unary.f32(i32 7, float %5323)  ; Saturate(value)
  %5325 = fmul fast float %5324, 0x3FF1C71C80000000
  %5326 = call float @dx.op.binary.f32(i32 36, float %5322, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5327 = fsub fast float 1.000000e+00, %5325
  %5328 = call float @dx.op.unary.f32(i32 7, float %5327)  ; Saturate(value)
  %5329 = fmul fast float %5328, %5311
  %5330 = fmul fast float %5328, %5312
  %5331 = fmul fast float %5328, %5313
  %5332 = call float @dx.op.unary.f32(i32 7, float %5329)  ; Saturate(value)
  %5333 = call float @dx.op.unary.f32(i32 7, float %5330)  ; Saturate(value)
  %5334 = call float @dx.op.unary.f32(i32 7, float %5331)  ; Saturate(value)
  %5335 = fmul fast float %5325, %5311
  %5336 = fmul fast float %5325, %5312
  %5337 = fmul fast float %5325, %5313
  %5338 = fadd fast float %5335, %5326
  %5339 = fadd fast float %5336, %5326
  %5340 = fadd fast float %5337, %5326
  %5341 = call float @dx.op.unary.f32(i32 7, float %5338)  ; Saturate(value)
  %5342 = call float @dx.op.unary.f32(i32 7, float %5339)  ; Saturate(value)
  %5343 = call float @dx.op.unary.f32(i32 7, float %5340)  ; Saturate(value)
  %5344 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5345 = extractvalue %dx.types.CBufRet.i32 %5344, 3
  %5346 = extractvalue %dx.types.CBufRet.i32 %5344, 2
  %5347 = add i32 %5346, 0
  %5348 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5347, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5349 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5348, %dx.types.Handle %107, float %5259, float %5260, float undef, float undef, i32 0, i32 0, i32 undef, float %5222, float %5223, float undef, float %5226, float %5227, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5350 = extractvalue %dx.types.ResRet.f32 %5349, 0
  %5351 = extractvalue %dx.types.ResRet.f32 %5349, 1
  %5352 = extractvalue %dx.types.ResRet.f32 %5349, 2
  %5353 = extractvalue %dx.types.ResRet.f32 %5349, 3
  %5354 = and i32 %5345, 255
  %5355 = uitofp i32 %5354 to float
  %5356 = lshr i32 %5345, 8
  %5357 = and i32 %5356, 255
  %5358 = uitofp i32 %5357 to float
  %5359 = lshr i32 %5345, 16
  %5360 = and i32 %5359, 255
  %5361 = uitofp i32 %5360 to float
  %5362 = fmul fast float %5361, 0x3F70101000000000
  %5363 = fmul fast float %5350, %5355
  %5364 = fadd fast float %5363, %5358
  %5365 = fmul fast float %5364, 0x3F70101000000000
  %5366 = fadd fast float %5351, -5.000000e-01
  %5367 = fadd fast float %5353, -5.000000e-01
  %5368 = fmul fast float %5366, %5362
  %5369 = fmul fast float %5367, %5362
  %5370 = fadd fast float %5368, 5.000000e-01
  %5371 = fadd fast float %5369, 5.000000e-01
  %5372 = fmul fast float %5370, 2.000000e+00
  %5373 = fadd fast float %5372, -1.000000e+00
  %5374 = fmul fast float %5371, 2.000000e+00
  %5375 = fadd fast float %5374, -1.000000e+00
  %5376 = fadd fast float %5373, %5375
  %5377 = fmul fast float %5376, 5.000000e-01
  %5378 = fsub fast float %5373, %5375
  %5379 = fmul fast float %5378, 5.000000e-01
  %5380 = call float @dx.op.unary.f32(i32 6, float %5377)  ; FAbs(value)
  %5381 = fsub fast float 1.000000e+00, %5380
  %5382 = call float @dx.op.unary.f32(i32 6, float %5379)  ; FAbs(value)
  %5383 = fsub fast float %5381, %5382
  %5384 = call float @dx.op.dot3.f32(i32 55, float %5377, float %5379, float %5383, float %5377, float %5379, float %5383)  ; Dot3(ax,ay,az,bx,by,bz)
  %5385 = call float @dx.op.unary.f32(i32 25, float %5384)  ; Rsqrt(value)
  %5386 = fmul fast float %5377, %5385
  %5387 = fmul fast float %5379, %5385
  %5388 = select i1 %5215, i32 %5205, i32 %5206
  %5389 = select i1 %5213, i32 %5204, i32 %5388
  %5390 = sitofp i32 %5389 to float
  %5391 = fmul fast float %5383, %5390
  %5392 = fmul fast float %5391, %5385
  %5393 = select i1 %5215, float %5392, float %5387
  %5394 = select i1 %5215, float %5387, float %5392
  %5395 = select i1 %5213, float %5392, float %5386
  %5396 = select i1 %5213, float %5387, float %5393
  %5397 = select i1 %5213, float %5386, float %5394
  %5398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 375)  ; CBufferLoadLegacy(handle,regIndex)
  %5399 = extractvalue %dx.types.CBufRet.f32 %5398, 0
  %5400 = fptoui float %5399 to i32
  %5401 = add i32 %5400, 0
  %5402 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5401, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5403 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5402, %dx.types.Handle %107, float %5259, float %5260, float undef, float undef, i32 0, i32 0, i32 undef, float %5222, float %5223, float undef, float %5226, float %5227, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5404 = extractvalue %dx.types.ResRet.f32 %5403, 0
  %5405 = fsub fast float %5332, %5162
  %5406 = fsub fast float %5333, %5163
  %5407 = fsub fast float %5334, %5164
  %5408 = fmul fast float %5405, %5304
  %5409 = fmul fast float %5406, %5304
  %5410 = fmul fast float %5407, %5304
  %5411 = fadd fast float %5408, %5162
  %5412 = fadd fast float %5409, %5163
  %5413 = fadd fast float %5410, %5164
  %5414 = fsub fast float %5341, %5156
  %5415 = fsub fast float %5342, %5157
  %5416 = fsub fast float %5343, %5158
  %5417 = fmul fast float %5414, %5304
  %5418 = fmul fast float %5415, %5304
  %5419 = fmul fast float %5416, %5304
  %5420 = fadd fast float %5417, %5156
  %5421 = fadd fast float %5418, %5157
  %5422 = fadd fast float %5419, %5158
  %5423 = fadd fast float %5395, %5159
  %5424 = fadd fast float %5396, %5160
  %5425 = fadd fast float %5397, %5161
  %5426 = call float @dx.op.dot3.f32(i32 55, float %5423, float %5424, float %5425, float %5423, float %5424, float %5425)  ; Dot3(ax,ay,az,bx,by,bz)
  %5427 = call float @dx.op.unary.f32(i32 25, float %5426)  ; Rsqrt(value)
  %5428 = fmul fast float %5427, %5423
  %5429 = fmul fast float %5427, %5424
  %5430 = fmul fast float %5427, %5425
  %5431 = fsub fast float %5428, %5159
  %5432 = fsub fast float %5429, %5160
  %5433 = fsub fast float %5430, %5161
  %5434 = fmul fast float %5431, %5304
  %5435 = fmul fast float %5432, %5304
  %5436 = fmul fast float %5433, %5304
  %5437 = fadd fast float %5434, %5159
  %5438 = fadd fast float %5435, %5160
  %5439 = fadd fast float %5436, %5161
  %5440 = call float @dx.op.binary.f32(i32 36, float %5166, float %5352)  ; FMin(a,b)
  %5441 = fsub fast float %5440, %5166
  %5442 = fmul fast float %5441, %5304
  %5443 = fadd fast float %5442, %5166
  %5444 = fsub fast float %5365, %5165
  %5445 = fmul fast float %5444, %5304
  %5446 = fadd fast float %5445, %5165
  %5447 = fsub fast float %5404, %4771
  %5448 = fsub fast float %5404, %4772
  %5449 = fsub fast float %5404, %4773
  %5450 = fmul fast float %5447, %5304
  %5451 = fmul fast float %5448, %5304
  %5452 = fmul fast float %5449, %5304
  %5453 = fadd fast float %5450, %4771
  %5454 = fadd fast float %5451, %4772
  %5455 = fadd fast float %5452, %4773
  br label %5456

; <label>:5456                                    ; preds = %5302, %5264, %5155, %4871
  %5457 = phi float [ %5420, %5302 ], [ %5156, %5264 ], [ %5156, %5155 ], [ %4727, %4871 ]
  %5458 = phi float [ %5421, %5302 ], [ %5157, %5264 ], [ %5157, %5155 ], [ %4728, %4871 ]
  %5459 = phi float [ %5422, %5302 ], [ %5158, %5264 ], [ %5158, %5155 ], [ %4729, %4871 ]
  %5460 = phi float [ %5437, %5302 ], [ %5159, %5264 ], [ %5159, %5155 ], [ %4685, %4871 ]
  %5461 = phi float [ %5438, %5302 ], [ %5160, %5264 ], [ %5160, %5155 ], [ %4686, %4871 ]
  %5462 = phi float [ %5439, %5302 ], [ %5161, %5264 ], [ %5161, %5155 ], [ %4687, %4871 ]
  %5463 = phi float [ %5411, %5302 ], [ %5162, %5264 ], [ %5162, %5155 ], [ %4767, %4871 ]
  %5464 = phi float [ %5412, %5302 ], [ %5163, %5264 ], [ %5163, %5155 ], [ %4768, %4871 ]
  %5465 = phi float [ %5413, %5302 ], [ %5164, %5264 ], [ %5164, %5155 ], [ %4769, %4871 ]
  %5466 = phi float [ %5453, %5302 ], [ %4771, %5264 ], [ %4771, %5155 ], [ %4771, %4871 ]
  %5467 = phi float [ %5454, %5302 ], [ %4772, %5264 ], [ %4772, %5155 ], [ %4772, %4871 ]
  %5468 = phi float [ %5455, %5302 ], [ %4773, %5264 ], [ %4773, %5155 ], [ %4773, %4871 ]
  %5469 = phi float [ %5446, %5302 ], [ %5165, %5264 ], [ %5165, %5155 ], [ %4730, %4871 ]
  %5470 = phi float [ %5443, %5302 ], [ %5166, %5264 ], [ %5166, %5155 ], [ %4703, %4871 ]
  %5471 = fcmp fast une float %4875, 0.000000e+00
  %5472 = call float @dx.op.dot3.f32(i32 55, float %190, float %191, float %192, float %190, float %191, float %192)  ; Dot3(ax,ay,az,bx,by,bz)
  %5473 = call float @dx.op.unary.f32(i32 25, float %5472)  ; Rsqrt(value)
  br i1 %5471, label %5481, label %5474

; <label>:5474                                    ; preds = %5456
  %5475 = fmul fast float %5473, %190
  %5476 = fmul fast float %5473, %191
  %5477 = fmul fast float %5473, %192
  %5478 = fsub fast float -0.000000e+00, %5475
  %5479 = fsub fast float -0.000000e+00, %5476
  %5480 = fsub fast float -0.000000e+00, %5477
  br label %5648

; <label>:5481                                    ; preds = %5456
  %5482 = fmul fast float %190, %5473
  %5483 = fsub fast float -0.000000e+00, %5482
  %5484 = fmul fast float %191, %5473
  %5485 = fsub fast float -0.000000e+00, %5484
  %5486 = fmul fast float %192, %5473
  %5487 = fsub fast float -0.000000e+00, %5486
  %5488 = call float @dx.op.dot3.f32(i32 55, float %5483, float %5485, float %5487, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %5489 = fmul fast float %4875, 2.500000e+00
  %5490 = call float @dx.op.unary.f32(i32 7, float %5489)  ; Saturate(value)
  %5491 = fmul fast float %4875, 0x4013FFFFE0000000
  %5492 = fadd fast float %5491, 0xBFFFFFFFE0000000
  %5493 = call float @dx.op.unary.f32(i32 7, float %5492)  ; Saturate(value)
  %5494 = fmul fast float %4875, 0x4004000020000000
  %5495 = fadd fast float %5494, 0xBFF8000040000000
  %5496 = call float @dx.op.unary.f32(i32 7, float %5495)  ; Saturate(value)
  %5497 = fmul fast float %4709, 1.000000e+01
  %5498 = call float @dx.op.unary.f32(i32 7, float %5497)  ; Saturate(value)
  %5499 = fmul fast float %5498, 2.000000e+00
  %5500 = fsub fast float 3.000000e+00, %5499
  %5501 = fmul fast float %5498, %5498
  %5502 = fmul fast float %5501, %5500
  %5503 = fsub fast float 1.000000e+00, %5502
  %5504 = fsub fast float 0x3FE3333340000000, %5469
  %5505 = fmul fast float %5504, 0x400AAAAAA0000000
  %5506 = call float @dx.op.unary.f32(i32 7, float %5505)  ; Saturate(value)
  %5507 = fmul fast float %5503, %5506
  %5508 = fmul fast float %5463, 0x3FEA2B8620000000
  %5509 = fmul fast float %5464, 0x3FEA2B8620000000
  %5510 = fmul fast float %5465, 0x3FEA2B8620000000
  %5511 = fadd fast float %5508, 0x3FC81DFBA0000000
  %5512 = fmul fast float %5511, %5463
  %5513 = fadd fast float %5512, 0x3F910E6020000000
  %5514 = fadd fast float %5509, 0x3FC81DFBA0000000
  %5515 = fmul fast float %5514, %5464
  %5516 = fadd fast float %5515, 0x3F910E6020000000
  %5517 = fadd fast float %5510, 0x3FC81DFBA0000000
  %5518 = fmul fast float %5517, %5465
  %5519 = fadd fast float %5518, 0x3F910E6020000000
  %5520 = call float @dx.op.unary.f32(i32 7, float %5513)  ; Saturate(value)
  %5521 = call float @dx.op.unary.f32(i32 7, float %5516)  ; Saturate(value)
  %5522 = call float @dx.op.unary.f32(i32 7, float %5519)  ; Saturate(value)
  %5523 = fsub fast float %5520, %5463
  %5524 = fsub fast float %5521, %5464
  %5525 = fsub fast float %5522, %5465
  %5526 = fmul fast float %5523, %5490
  %5527 = fmul fast float %5526, %5507
  %5528 = fmul fast float %5524, %5490
  %5529 = fmul fast float %5528, %5507
  %5530 = fmul fast float %5525, %5490
  %5531 = fmul fast float %5530, %5507
  %5532 = fadd fast float %5527, %5463
  %5533 = fadd fast float %5529, %5464
  %5534 = fadd fast float %5531, %5465
  %5535 = fmul fast float %5470, %5470
  %5536 = fmul fast float %5535, %5535
  %5537 = fadd fast float %5493, 1.000000e+00
  %5538 = fsub fast float %5537, %5507
  %5539 = call float @dx.op.unary.f32(i32 7, float %5538)  ; Saturate(value)
  %5540 = call float @dx.op.dot3.f32(i32 55, float %118, float %119, float %120, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5541 = call float @dx.op.unary.f32(i32 7, float %5540)  ; Saturate(value)
  %5542 = fsub fast float 1.000000e+00, %5536
  %5543 = call float @dx.op.binary.f32(i32 36, float %5539, float %5542)  ; FMin(a,b)
  %5544 = call float @dx.op.unary.f32(i32 7, float %5496)  ; Saturate(value)
  %5545 = call float @dx.op.binary.f32(i32 35, float %5543, float %5544)  ; FMax(a,b)
  %5546 = fadd fast float %5541, 0xBFE4CCCCC0000000
  %5547 = fmul fast float %5546, 0x4006DB6DA0000000
  %5548 = call float @dx.op.unary.f32(i32 7, float %5547)  ; Saturate(value)
  %5549 = fmul fast float %5548, 2.000000e+00
  %5550 = fsub fast float 3.000000e+00, %5549
  %5551 = bitcast float %5457 to i32
  %5552 = ashr i32 %5551, 1
  %5553 = add nsw i32 %5552, 532487669
  %5554 = bitcast i32 %5553 to float
  %5555 = fsub fast float 1.000000e+00, %5554
  %5556 = bitcast float %5555 to i32
  %5557 = sub nsw i32 2129859010, %5556
  %5558 = bitcast i32 %5557 to float
  %5559 = fmul fast float %5558, 2.000000e+00
  %5560 = bitcast float %5458 to i32
  %5561 = ashr i32 %5560, 1
  %5562 = add nsw i32 %5561, 532487669
  %5563 = bitcast i32 %5562 to float
  %5564 = fsub fast float 1.000000e+00, %5563
  %5565 = bitcast float %5564 to i32
  %5566 = sub nsw i32 2129859010, %5565
  %5567 = bitcast i32 %5566 to float
  %5568 = fmul fast float %5567, 2.000000e+00
  %5569 = bitcast float %5459 to i32
  %5570 = ashr i32 %5569, 1
  %5571 = add nsw i32 %5570, 532487669
  %5572 = bitcast i32 %5571 to float
  %5573 = fsub fast float 1.000000e+00, %5572
  %5574 = bitcast float %5573 to i32
  %5575 = sub nsw i32 2129859010, %5574
  %5576 = bitcast i32 %5575 to float
  %5577 = fmul fast float %5576, 2.000000e+00
  %5578 = fsub fast float 0x4002A9FBE0000000, %5559
  %5579 = fadd fast float %5559, 0x3FD54FDF00000000
  %5580 = bitcast float %5579 to i32
  %5581 = sub nsw i32 2129859010, %5580
  %5582 = bitcast i32 %5581 to float
  %5583 = fmul fast float %5582, %5578
  %5584 = fmul fast float %5583, %5583
  %5585 = fsub fast float 0x4002A9FBE0000000, %5568
  %5586 = fadd fast float %5568, 0x3FD54FDF00000000
  %5587 = bitcast float %5586 to i32
  %5588 = sub nsw i32 2129859010, %5587
  %5589 = bitcast i32 %5588 to float
  %5590 = fmul fast float %5589, %5585
  %5591 = fmul fast float %5590, %5590
  %5592 = fsub fast float 0x4002A9FBE0000000, %5577
  %5593 = fadd fast float %5577, 0x3FD54FDF00000000
  %5594 = bitcast float %5593 to i32
  %5595 = sub nsw i32 2129859010, %5594
  %5596 = bitcast i32 %5595 to float
  %5597 = fmul fast float %5596, %5592
  %5598 = fmul fast float %5597, %5597
  %5599 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5584)  ; FMax(a,b)
  %5600 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5591)  ; FMax(a,b)
  %5601 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5598)  ; FMax(a,b)
  %5602 = fsub fast float 1.000000e+00, %5488
  %5603 = fadd fast float %5602, %5503
  %5604 = call float @dx.op.unary.f32(i32 7, float %5603)  ; Saturate(value)
  %5605 = fsub fast float 1.000000e+00, %4856
  %5606 = fmul fast float %5545, %5605
  %5607 = fmul fast float %5548, %5548
  %5608 = fmul fast float %5607, %5606
  %5609 = fmul fast float %5608, %5550
  %5610 = fmul fast float %5605, 0xBFE99999A0000000
  %5611 = fmul fast float %5610, %5490
  %5612 = fmul fast float %5611, %5507
  %5613 = fadd fast float %5612, 1.000000e+00
  %5614 = fadd fast float %5469, -1.000000e+00
  %5615 = fmul fast float %5613, %5614
  %5616 = fadd fast float %5615, 1.000000e+00
  %5617 = fsub fast float %5599, %5457
  %5618 = fsub fast float %5600, %5458
  %5619 = fsub fast float %5601, %5459
  %5620 = fmul fast float %5609, %5617
  %5621 = fmul fast float %5609, %5618
  %5622 = fmul fast float %5609, %5619
  %5623 = fadd fast float %5620, %5457
  %5624 = fadd fast float %5621, %5458
  %5625 = fadd fast float %5622, %5459
  %5626 = fsub fast float %118, %5460
  %5627 = fsub fast float %119, %5461
  %5628 = fsub fast float %120, %5462
  %5629 = fmul fast float %5609, %5626
  %5630 = fmul fast float %5609, %5627
  %5631 = fmul fast float %5609, %5628
  %5632 = fadd fast float %5629, %5460
  %5633 = fadd fast float %5630, %5461
  %5634 = fadd fast float %5631, %5462
  %5635 = fmul fast float %5609, %5604
  %5636 = call float @dx.op.unary.f32(i32 7, float %5616)  ; Saturate(value)
  %5637 = fsub fast float 1.000000e+00, %5636
  %5638 = fmul fast float %5635, %5637
  %5639 = fadd fast float %5638, %5636
  %5640 = fsub fast float 1.000000e+00, %5470
  %5641 = fmul fast float %5609, %5640
  %5642 = fadd fast float %5641, %5470
  %5643 = call float @dx.op.dot3.f32(i32 55, float %5632, float %5633, float %5634, float %5632, float %5633, float %5634)  ; Dot3(ax,ay,az,bx,by,bz)
  %5644 = call float @dx.op.unary.f32(i32 25, float %5643)  ; Rsqrt(value)
  %5645 = fmul fast float %5632, %5644
  %5646 = fmul fast float %5633, %5644
  %5647 = fmul fast float %5634, %5644
  br label %5648

; <label>:5648                                    ; preds = %5481, %5474
  %5649 = phi float [ %5480, %5474 ], [ %5487, %5481 ]
  %5650 = phi float [ %5479, %5474 ], [ %5485, %5481 ]
  %5651 = phi float [ %5478, %5474 ], [ %5483, %5481 ]
  %5652 = phi float [ %5477, %5474 ], [ %5486, %5481 ]
  %5653 = phi float [ %5476, %5474 ], [ %5484, %5481 ]
  %5654 = phi float [ %5475, %5474 ], [ %5482, %5481 ]
  %5655 = phi float [ %5457, %5474 ], [ %5623, %5481 ]
  %5656 = phi float [ %5458, %5474 ], [ %5624, %5481 ]
  %5657 = phi float [ %5459, %5474 ], [ %5625, %5481 ]
  %5658 = phi float [ %5460, %5474 ], [ %5645, %5481 ]
  %5659 = phi float [ %5461, %5474 ], [ %5646, %5481 ]
  %5660 = phi float [ %5462, %5474 ], [ %5647, %5481 ]
  %5661 = phi float [ %5463, %5474 ], [ %5532, %5481 ]
  %5662 = phi float [ %5464, %5474 ], [ %5533, %5481 ]
  %5663 = phi float [ %5465, %5474 ], [ %5534, %5481 ]
  %5664 = phi float [ %5469, %5474 ], [ %5639, %5481 ]
  %5665 = phi float [ %5470, %5474 ], [ %5642, %5481 ]
  %5666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5667 = extractvalue %dx.types.CBufRet.f32 %5666, 2
  %5668 = extractvalue %dx.types.CBufRet.f32 %5666, 3
  %5669 = fmul fast float %139, %5667
  %5670 = fmul fast float %141, %5668
  %5671 = fsub fast float 1.000000e+00, %5669
  %5672 = fsub fast float 1.000000e+00, %5670
  %5673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5674 = extractvalue %dx.types.CBufRet.f32 %5673, 0
  %5675 = extractvalue %dx.types.CBufRet.f32 %5673, 1
  %5676 = extractvalue %dx.types.CBufRet.f32 %5673, 2
  %5677 = fmul fast float %5671, %5674
  %5678 = fmul fast float %5671, %5675
  %5679 = fmul fast float %5671, %5676
  %5680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5681 = extractvalue %dx.types.CBufRet.f32 %5680, 0
  %5682 = extractvalue %dx.types.CBufRet.f32 %5680, 1
  %5683 = extractvalue %dx.types.CBufRet.f32 %5680, 2
  %5684 = fmul fast float %5672, %5681
  %5685 = fmul fast float %5672, %5682
  %5686 = fmul fast float %5672, %5683
  %5687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5688 = extractvalue %dx.types.CBufRet.f32 %5687, 0
  %5689 = extractvalue %dx.types.CBufRet.f32 %5687, 1
  %5690 = extractvalue %dx.types.CBufRet.f32 %5687, 2
  %5691 = fadd fast float %5684, %5688
  %5692 = fadd fast float %5691, %5677
  %5693 = fadd fast float %5685, %5689
  %5694 = fadd fast float %5693, %5678
  %5695 = fadd fast float %5686, %5690
  %5696 = fadd fast float %5695, %5679
  %5697 = fmul fast float %5692, %98
  %5698 = fmul fast float %5694, %98
  %5699 = fmul fast float %5696, %98
  %5700 = select i1 %264, float 0.000000e+00, float %5657
  %5701 = call float @dx.op.dot3.f32(i32 55, float %5658, float %5659, float %5660, float %5651, float %5650, float %5649)  ; Dot3(ax,ay,az,bx,by,bz)
  %5702 = call float @dx.op.unary.f32(i32 7, float %5701)  ; Saturate(value)
  %5703 = call float @dx.op.dot3.f32(i32 55, float %5654, float %5653, float %5652, float %5658, float %5659, float %5660)  ; Dot3(ax,ay,az,bx,by,bz)
  %5704 = fmul fast float %5703, 2.000000e+00
  %5705 = fmul fast float %5704, %5658
  %5706 = fmul fast float %5704, %5659
  %5707 = fmul fast float %5704, %5660
  %5708 = fsub fast float %5654, %5705
  %5709 = fsub fast float %5653, %5706
  %5710 = fsub fast float %5652, %5707
  %5711 = call float @dx.op.binary.f32(i32 36, float %5665, float 1.000000e+00)  ; FMin(a,b)
  %5712 = fsub fast float 1.000000e+00, %5711
  %5713 = bitcast float %5712 to i32
  %5714 = ashr i32 %5713, 1
  %5715 = add nsw i32 %5714, 532487669
  %5716 = bitcast i32 %5715 to float
  %5717 = fsub fast float 1.000000e+00, %5664
  %5718 = call float @dx.op.binary.f32(i32 35, float %5717, float 0x3F847AE140000000)  ; FMax(a,b)
  %5719 = fmul fast float %5718, %5718
  %5720 = fmul fast float %5719, %5719
  %5721 = call float @dx.op.unary.f32(i32 7, float %5702)  ; Saturate(value)
  %5722 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %45, float %5716, float %5720, float %5721, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5723 = extractvalue %dx.types.ResRet.f32 %5722, 0
  %5724 = fsub fast float 1.000000e+00, %5665
  %5725 = bitcast float %5724 to i32
  %5726 = sub nsw i32 2129859010, %5725
  %5727 = call float @dx.op.dot3.f32(i32 55, float %78, float %74, float %70, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5728 = fmul fast float %5727, 0x3FD20DD760000000
  %5729 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %78)  ; FMax(a,b)
  %5730 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %5731 = fcmp fast oeq float %5730, 0.000000e+00
  %5732 = fcmp fast oeq float %5729, 0.000000e+00
  %5733 = or i1 %5732, %5731
  br i1 %5733, label %5763, label %5734

; <label>:5734                                    ; preds = %5648
  %5735 = fsub fast float -0.000000e+00, %81
  %5736 = fsub fast float -0.000000e+00, %79
  %5737 = call float @dx.op.unary.f32(i32 24, float %5730)  ; Sqrt(value)
  %5738 = fdiv fast float %5737, %5729
  %5739 = fcmp fast ogt float %5738, 0x3FFB6F8900000000
  %5740 = select i1 %5739, float 0x3FFB6F8900000000, float %5738
  %5741 = fmul fast float %5740, 0x3FE8A23460000000
  %5742 = call float @dx.op.unary.f32(i32 7, float %5741)  ; Saturate(value)
  %5743 = call float @dx.op.binary.f32(i32 35, float %5740, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5744 = fmul fast float %5742, %5729
  %5745 = fmul fast float %5743, 0x3FF279A740000000
  %5746 = fadd fast float %5745, -1.000000e+00
  %5747 = call float @dx.op.dot3.f32(i32 55, float %5735, float %5736, float %80, float %5735, float %5736, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %5748 = call float @dx.op.unary.f32(i32 25, float %5747)  ; Rsqrt(value)
  %5749 = fmul fast float %5748, %5735
  %5750 = fmul fast float %5748, %5736
  %5751 = fmul fast float %5748, %80
  %5752 = fmul fast float %5746, %5746
  %5753 = fsub fast float 1.000000e+00, %5752
  %5754 = fmul fast float %5743, 0x40005F8BE0000000
  %5755 = fsub fast float 0x400C5BF8A0000000, %5754
  %5756 = fdiv fast float %5744, %5755
  %5757 = fmul fast float %5756, 0x3FEE31C3C0000000
  %5758 = fmul fast float %5757, %5753
  %5759 = fmul fast float %5743, 0x3FDACB7480000000
  %5760 = fadd fast float %5759, 0xBFD7347680000000
  %5761 = fmul fast float %5760, %5756
  %5762 = fmul fast float %5761, %5753
  br label %5763

; <label>:5763                                    ; preds = %5734, %5648
  %5764 = phi float [ %5749, %5734 ], [ 0.000000e+00, %5648 ]
  %5765 = phi float [ %5750, %5734 ], [ 0.000000e+00, %5648 ]
  %5766 = phi float [ %5751, %5734 ], [ 0.000000e+00, %5648 ]
  %5767 = phi float [ %5758, %5734 ], [ 0.000000e+00, %5648 ]
  %5768 = phi float [ %5762, %5734 ], [ 0.000000e+00, %5648 ]
  %5769 = call float @dx.op.dot3.f32(i32 55, float %5764, float %5765, float %5766, float %5658, float %5659, float %5660)  ; Dot3(ax,ay,az,bx,by,bz)
  %5770 = fmul fast float %5769, %5769
  %5771 = fmul fast float %5770, 0x3FEE471020000000
  %5772 = fadd fast float %5771, 0xBFD42F6020000000
  %5773 = fmul fast float %5729, 0x3FD20DD760000000
  %5774 = fmul fast float %5772, %5768
  %5775 = fmul fast float %5767, 0x3FDF454380000000
  %5776 = fmul fast float %5775, %5769
  %5777 = fadd fast float %5776, %5773
  %5778 = fadd fast float %5777, %5774
  %5779 = call float @dx.op.dot3.f32(i32 55, float %5764, float %5765, float %5766, float %5708, float %5709, float %5710)  ; Dot3(ax,ay,az,bx,by,bz)
  %5780 = fmul fast float %5779, 0x3FDF454380000000
  %5781 = fmul fast float %5779, %5779
  %5782 = fmul fast float %5781, 0x3FEE471020000000
  %5783 = fadd fast float %5782, 0xBFD42F6020000000
  %5784 = call float @dx.op.dot3.f32(i32 55, float %5729, float %5767, float %5768, float 0x3FD20DD760000000, float %5780, float %5783)  ; Dot3(ax,ay,az,bx,by,bz)
  %5785 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %74)  ; FMax(a,b)
  %5786 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %5787 = fcmp fast oeq float %5786, 0.000000e+00
  %5788 = fcmp fast oeq float %5785, 0.000000e+00
  %5789 = or i1 %5788, %5787
  br i1 %5789, label %5819, label %5790

; <label>:5790                                    ; preds = %5763
  %5791 = fsub fast float -0.000000e+00, %77
  %5792 = fsub fast float -0.000000e+00, %75
  %5793 = call float @dx.op.unary.f32(i32 24, float %5786)  ; Sqrt(value)
  %5794 = fdiv fast float %5793, %5785
  %5795 = fcmp fast ogt float %5794, 0x3FFB6F8900000000
  %5796 = select i1 %5795, float 0x3FFB6F8900000000, float %5794
  %5797 = fmul fast float %5796, 0x3FE8A23460000000
  %5798 = call float @dx.op.unary.f32(i32 7, float %5797)  ; Saturate(value)
  %5799 = call float @dx.op.binary.f32(i32 35, float %5796, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5800 = fmul fast float %5798, %5785
  %5801 = fmul fast float %5799, 0x3FF279A740000000
  %5802 = fadd fast float %5801, -1.000000e+00
  %5803 = call float @dx.op.dot3.f32(i32 55, float %5791, float %5792, float %76, float %5791, float %5792, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %5804 = call float @dx.op.unary.f32(i32 25, float %5803)  ; Rsqrt(value)
  %5805 = fmul fast float %5804, %5791
  %5806 = fmul fast float %5804, %5792
  %5807 = fmul fast float %5804, %76
  %5808 = fmul fast float %5802, %5802
  %5809 = fsub fast float 1.000000e+00, %5808
  %5810 = fmul fast float %5799, 0x40005F8BE0000000
  %5811 = fsub fast float 0x400C5BF8A0000000, %5810
  %5812 = fdiv fast float %5800, %5811
  %5813 = fmul fast float %5812, 0x3FEE31C3C0000000
  %5814 = fmul fast float %5813, %5809
  %5815 = fmul fast float %5799, 0x3FDACB7480000000
  %5816 = fadd fast float %5815, 0xBFD7347680000000
  %5817 = fmul fast float %5816, %5812
  %5818 = fmul fast float %5817, %5809
  br label %5819

; <label>:5819                                    ; preds = %5790, %5763
  %5820 = phi float [ %5805, %5790 ], [ 0.000000e+00, %5763 ]
  %5821 = phi float [ %5806, %5790 ], [ 0.000000e+00, %5763 ]
  %5822 = phi float [ %5807, %5790 ], [ 0.000000e+00, %5763 ]
  %5823 = phi float [ %5814, %5790 ], [ 0.000000e+00, %5763 ]
  %5824 = phi float [ %5818, %5790 ], [ 0.000000e+00, %5763 ]
  %5825 = call float @dx.op.dot3.f32(i32 55, float %5820, float %5821, float %5822, float %5658, float %5659, float %5660)  ; Dot3(ax,ay,az,bx,by,bz)
  %5826 = fmul fast float %5825, %5825
  %5827 = fmul fast float %5826, 0x3FEE471020000000
  %5828 = fadd fast float %5827, 0xBFD42F6020000000
  %5829 = fmul fast float %5785, 0x3FD20DD760000000
  %5830 = fmul fast float %5828, %5824
  %5831 = fmul fast float %5823, 0x3FDF454380000000
  %5832 = fmul fast float %5831, %5825
  %5833 = fadd fast float %5832, %5829
  %5834 = fadd fast float %5833, %5830
  %5835 = call float @dx.op.dot3.f32(i32 55, float %5820, float %5821, float %5822, float %5708, float %5709, float %5710)  ; Dot3(ax,ay,az,bx,by,bz)
  %5836 = fmul fast float %5835, 0x3FDF454380000000
  %5837 = fmul fast float %5835, %5835
  %5838 = fmul fast float %5837, 0x3FEE471020000000
  %5839 = fadd fast float %5838, 0xBFD42F6020000000
  %5840 = call float @dx.op.dot3.f32(i32 55, float %5785, float %5823, float %5824, float 0x3FD20DD760000000, float %5836, float %5839)  ; Dot3(ax,ay,az,bx,by,bz)
  %5841 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %70)  ; FMax(a,b)
  %5842 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float %71, float %72, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %5843 = fcmp fast oeq float %5842, 0.000000e+00
  %5844 = fcmp fast oeq float %5841, 0.000000e+00
  %5845 = or i1 %5844, %5843
  br i1 %5845, label %5875, label %5846

; <label>:5846                                    ; preds = %5819
  %5847 = fsub fast float -0.000000e+00, %73
  %5848 = fsub fast float -0.000000e+00, %71
  %5849 = call float @dx.op.unary.f32(i32 24, float %5842)  ; Sqrt(value)
  %5850 = fdiv fast float %5849, %5841
  %5851 = fcmp fast ogt float %5850, 0x3FFB6F8900000000
  %5852 = select i1 %5851, float 0x3FFB6F8900000000, float %5850
  %5853 = fmul fast float %5852, 0x3FE8A23460000000
  %5854 = call float @dx.op.unary.f32(i32 7, float %5853)  ; Saturate(value)
  %5855 = call float @dx.op.binary.f32(i32 35, float %5852, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5856 = fmul fast float %5854, %5841
  %5857 = fmul fast float %5855, 0x3FF279A740000000
  %5858 = fadd fast float %5857, -1.000000e+00
  %5859 = call float @dx.op.dot3.f32(i32 55, float %5847, float %5848, float %72, float %5847, float %5848, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %5860 = call float @dx.op.unary.f32(i32 25, float %5859)  ; Rsqrt(value)
  %5861 = fmul fast float %5860, %5847
  %5862 = fmul fast float %5860, %5848
  %5863 = fmul fast float %5860, %72
  %5864 = fmul fast float %5858, %5858
  %5865 = fsub fast float 1.000000e+00, %5864
  %5866 = fmul fast float %5855, 0x40005F8BE0000000
  %5867 = fsub fast float 0x400C5BF8A0000000, %5866
  %5868 = fdiv fast float %5856, %5867
  %5869 = fmul fast float %5868, 0x3FEE31C3C0000000
  %5870 = fmul fast float %5869, %5865
  %5871 = fmul fast float %5855, 0x3FDACB7480000000
  %5872 = fadd fast float %5871, 0xBFD7347680000000
  %5873 = fmul fast float %5872, %5868
  %5874 = fmul fast float %5873, %5865
  br label %5875

; <label>:5875                                    ; preds = %5846, %5819
  %5876 = phi float [ %5861, %5846 ], [ 0.000000e+00, %5819 ]
  %5877 = phi float [ %5862, %5846 ], [ 0.000000e+00, %5819 ]
  %5878 = phi float [ %5863, %5846 ], [ 0.000000e+00, %5819 ]
  %5879 = phi float [ %5870, %5846 ], [ 0.000000e+00, %5819 ]
  %5880 = phi float [ %5874, %5846 ], [ 0.000000e+00, %5819 ]
  %5881 = call float @dx.op.dot3.f32(i32 55, float %5876, float %5877, float %5878, float %5658, float %5659, float %5660)  ; Dot3(ax,ay,az,bx,by,bz)
  %5882 = fmul fast float %5881, %5881
  %5883 = fmul fast float %5882, 0x3FEE471020000000
  %5884 = fadd fast float %5883, 0xBFD42F6020000000
  %5885 = fmul fast float %5841, 0x3FD20DD760000000
  %5886 = fmul fast float %5884, %5880
  %5887 = fmul fast float %5879, 0x3FDF454380000000
  %5888 = fmul fast float %5887, %5881
  %5889 = fadd fast float %5888, %5885
  %5890 = fadd fast float %5889, %5886
  %5891 = call float @dx.op.dot3.f32(i32 55, float %5876, float %5877, float %5878, float %5708, float %5709, float %5710)  ; Dot3(ax,ay,az,bx,by,bz)
  %5892 = fmul fast float %5891, 0x3FDF454380000000
  %5893 = fmul fast float %5891, %5891
  %5894 = fmul fast float %5893, 0x3FEE471020000000
  %5895 = fadd fast float %5894, 0xBFD42F6020000000
  %5896 = call float @dx.op.dot3.f32(i32 55, float %5841, float %5879, float %5880, float 0x3FD20DD760000000, float %5892, float %5895)  ; Dot3(ax,ay,az,bx,by,bz)
  %5897 = call float @dx.op.binary.f32(i32 35, float %5778, float 0.000000e+00)  ; FMax(a,b)
  %5898 = call float @dx.op.binary.f32(i32 35, float %5834, float 0.000000e+00)  ; FMax(a,b)
  %5899 = call float @dx.op.binary.f32(i32 35, float %5890, float 0.000000e+00)  ; FMax(a,b)
  %5900 = call float @dx.op.binary.f32(i32 35, float %5784, float 0.000000e+00)  ; FMax(a,b)
  %5901 = call float @dx.op.binary.f32(i32 35, float %5840, float 0.000000e+00)  ; FMax(a,b)
  %5902 = call float @dx.op.binary.f32(i32 35, float %5896, float 0.000000e+00)  ; FMax(a,b)
  %5903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5904 = extractvalue %dx.types.CBufRet.f32 %5903, 0
  %5905 = call float @dx.op.binary.f32(i32 36, float %5661, float %5904)  ; FMin(a,b)
  %5906 = fmul fast float %5905, %5712
  %5907 = fsub fast float 1.000000e+00, %5906
  %5908 = bitcast float %5907 to i32
  %5909 = sub nsw i32 2129859010, %5908
  %5910 = bitcast i32 %5909 to float
  %5911 = call float @dx.op.binary.f32(i32 36, float %5662, float %5904)  ; FMin(a,b)
  %5912 = fmul fast float %5911, %5712
  %5913 = fsub fast float 1.000000e+00, %5912
  %5914 = bitcast float %5913 to i32
  %5915 = sub nsw i32 2129859010, %5914
  %5916 = bitcast i32 %5915 to float
  %5917 = call float @dx.op.binary.f32(i32 36, float %5663, float %5904)  ; FMin(a,b)
  %5918 = fmul fast float %5917, %5712
  %5919 = fsub fast float 1.000000e+00, %5918
  %5920 = bitcast float %5919 to i32
  %5921 = sub nsw i32 2129859010, %5920
  %5922 = bitcast i32 %5921 to float
  %5923 = fmul fast float %5897, %5711
  %5924 = fmul fast float %5923, %5910
  %5925 = fmul fast float %5898, %5711
  %5926 = fmul fast float %5925, %5916
  %5927 = fmul fast float %5899, %5711
  %5928 = fmul fast float %5927, %5922
  %5929 = call float @dx.op.binary.f32(i32 36, float %5655, float %5904)  ; FMin(a,b)
  %5930 = fmul fast float %5929, %5712
  %5931 = fsub fast float 1.000000e+00, %5930
  %5932 = bitcast float %5931 to i32
  %5933 = sub nsw i32 2129859010, %5932
  %5934 = bitcast i32 %5933 to float
  %5935 = call float @dx.op.binary.f32(i32 36, float %5656, float %5904)  ; FMin(a,b)
  %5936 = fmul fast float %5935, %5712
  %5937 = fsub fast float 1.000000e+00, %5936
  %5938 = bitcast float %5937 to i32
  %5939 = sub nsw i32 2129859010, %5938
  %5940 = bitcast i32 %5939 to float
  %5941 = call float @dx.op.binary.f32(i32 36, float %5700, float %5904)  ; FMin(a,b)
  %5942 = fmul fast float %5941, %5712
  %5943 = fsub fast float 1.000000e+00, %5942
  %5944 = bitcast float %5943 to i32
  %5945 = sub nsw i32 2129859010, %5944
  %5946 = bitcast i32 %5945 to float
  %5947 = fmul fast float %5900, %5711
  %5948 = fmul fast float %5947, %5934
  %5949 = fmul fast float %5901, %5711
  %5950 = fmul fast float %5949, %5940
  %5951 = fmul fast float %5902, %5711
  %5952 = fmul fast float %5951, %5946
  %5953 = call float @dx.op.dot3.f32(i32 55, float %5924, float %5926, float %5928, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5954 = select i1 %264, float 0.000000e+00, float %5924
  %5955 = select i1 %264, float %5953, float %5926
  %5956 = select i1 %264, float 0.000000e+00, float %5928
  %5957 = call float @dx.op.dot3.f32(i32 55, float %5948, float %5950, float %5952, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5958 = select i1 %264, float 0.000000e+00, float %5948
  %5959 = select i1 %264, float %5957, float %5950
  %5960 = select i1 %264, float 0.000000e+00, float %5952
  %5961 = fmul fast float %4008, %4008
  %5962 = call float @dx.op.unary.f32(i32 7, float %5961)  ; Saturate(value)
  %5963 = fmul fast float %5702, 9.843750e-01
  %5964 = fmul fast float %5664, 9.843750e-01
  %5965 = fadd fast float %5963, 7.812500e-03
  %5966 = fadd fast float %5964, 7.812500e-03
  %5967 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %45, float %5965, float %5966, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5968 = extractvalue %dx.types.ResRet.f32 %5967, 0
  %5969 = extractvalue %dx.types.ResRet.f32 %5967, 1
  %5970 = extractvalue %dx.types.ResRet.f32 %5967, 2
  %5971 = extractvalue %dx.types.ResRet.f32 %5967, 3
  %5972 = fsub fast float 1.000000e+00, %5962
  %5973 = fsub fast float %5970, %5968
  %5974 = fsub fast float %5971, %5969
  %5975 = fmul fast float %5973, %5972
  %5976 = fmul fast float %5974, %5972
  %5977 = fadd fast float %5975, %5968
  %5978 = fadd fast float %5976, %5969
  %5979 = fmul fast float %5977, %5655
  %5980 = fmul fast float %5977, %5656
  %5981 = fmul fast float %5977, %5700
  %5982 = fadd fast float %5979, %5978
  %5983 = fadd fast float %5980, %5978
  %5984 = fadd fast float %5981, %5978
  %5985 = fcmp fast ogt float %4704, 0.000000e+00
  br i1 %5985, label %5986, label %6012

; <label>:5986                                    ; preds = %5875
  %5987 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %45, float %4704, float %5702, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5988 = extractvalue %dx.types.ResRet.f32 %5987, 0
  %5989 = extractvalue %dx.types.ResRet.f32 %5987, 1
  %5990 = extractvalue %dx.types.ResRet.f32 %5987, 2
  %5991 = fadd fast float %5988, -5.000000e-01
  %5992 = fadd fast float %5989, -5.000000e-01
  %5993 = fadd fast float %5990, -5.000000e-01
  %5994 = fsub fast float 1.000000e+00, %5655
  %5995 = fsub fast float 1.000000e+00, %5656
  %5996 = fsub fast float 1.000000e+00, %5700
  %5997 = fmul fast float %5655, 4.000000e+00
  %5998 = fmul fast float %5997, %5994
  %5999 = fmul fast float %5998, %5991
  %6000 = fmul fast float %5656, 4.000000e+00
  %6001 = fmul fast float %6000, %5995
  %6002 = fmul fast float %6001, %5992
  %6003 = fmul fast float %5700, 4.000000e+00
  %6004 = fmul fast float %6003, %5996
  %6005 = fmul fast float %6004, %5993
  %6006 = fadd fast float %5999, %5982
  %6007 = fadd fast float %6002, %5983
  %6008 = fadd fast float %6005, %5984
  %6009 = call float @dx.op.unary.f32(i32 7, float %6006)  ; Saturate(value)
  %6010 = call float @dx.op.unary.f32(i32 7, float %6007)  ; Saturate(value)
  %6011 = call float @dx.op.unary.f32(i32 7, float %6008)  ; Saturate(value)
  br label %6012

; <label>:6012                                    ; preds = %5986, %5875
  %6013 = phi float [ %6009, %5986 ], [ %5982, %5875 ]
  %6014 = phi float [ %6010, %5986 ], [ %5983, %5875 ]
  %6015 = phi float [ %6011, %5986 ], [ %5984, %5875 ]
  %6016 = call float @dx.op.binary.f32(i32 35, float %6014, float %6015)  ; FMax(a,b)
  %6017 = call float @dx.op.binary.f32(i32 35, float %6013, float %6016)  ; FMax(a,b)
  %6018 = fsub fast float 1.000000e+00, %6017
  %6019 = fmul fast float %6017, %5664
  %6020 = fadd fast float %6019, %5664
  %6021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %6022 = extractvalue %dx.types.CBufRet.f32 %6021, 2
  %6023 = extractvalue %dx.types.CBufRet.f32 %6021, 3
  %6024 = fmul fast float %6020, %6022
  %6025 = fadd fast float %6024, %6023
  %6026 = call float @dx.op.unary.f32(i32 7, float %6025)  ; Saturate(value)
  %6027 = fsub fast float 1.000000e+00, %5723
  %6028 = fadd fast float %6027, %6026
  %6029 = call float @dx.op.unary.f32(i32 7, float %6028)  ; Saturate(value)
  %6030 = fcmp fast olt float %6029, 1.000000e+00
  br i1 %6030, label %6031, label %6479

; <label>:6031                                    ; preds = %6012
  %6032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6033 = extractvalue %dx.types.CBufRet.f32 %6032, 2
  %6034 = extractvalue %dx.types.CBufRet.f32 %6032, 3
  %6035 = fmul fast float %6033, %111
  %6036 = fmul fast float %6034, %112
  %6037 = fptoui float %6035 to i32
  %6038 = fptoui float %6036 to i32
  %6039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6040 = extractvalue %dx.types.CBufRet.f32 %6039, 0
  %6041 = extractvalue %dx.types.CBufRet.f32 %6039, 2
  %6042 = extractvalue %dx.types.CBufRet.f32 %6039, 3
  %6043 = fadd fast float %98, -4.000000e+00
  %6044 = call float @dx.op.binary.f32(i32 35, float %6043, float 0.000000e+00)  ; FMax(a,b)
  %6045 = fadd fast float %6044, %6040
  %6046 = fmul fast float %6045, %6041
  %6047 = call float @dx.op.unary.f32(i32 23, float %6046)  ; Log(value)
  %6048 = fmul fast float %6047, %6042
  %6049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6050 = extractvalue %dx.types.CBufRet.f32 %6049, 2
  %6051 = fmul fast float %6048, %6050
  %6052 = call float @dx.op.unary.f32(i32 7, float %6051)  ; Saturate(value)
  %6053 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6054 = extractvalue %dx.types.CBufRet.i32 %6053, 1
  %6055 = add i32 %6054, -1
  %6056 = uitofp i32 %6054 to float
  %6057 = fmul fast float %6056, %6052
  %6058 = fptoui float %6057 to i32
  %6059 = call i32 @dx.op.binary.i32(i32 40, i32 %6058, i32 %6055)  ; UMin(a,b)
  %6060 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6061 = extractvalue %dx.types.CBufRet.i32 %6060, 2
  %6062 = extractvalue %dx.types.CBufRet.i32 %6060, 3
  %6063 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6038, i32 %6061, i32 %6037)  ; UMad(a,b,c)
  %6064 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6059, i32 %6062, i32 %6063)  ; UMad(a,b,c)
  %6065 = call float @dx.op.binary.f32(i32 35, float %98, float 0.000000e+00)  ; FMax(a,b)
  %6066 = fptoui float %6065 to i32
  %6067 = lshr i32 %6066, 5
  %6068 = call i32 @dx.op.binary.i32(i32 40, i32 %6067, i32 8191)  ; UMin(a,b)
  br i1 false, label %6069, label %6076

; <label>:6069                                    ; preds = %6031
  %6070 = fadd fast float 0.000000e+00, %5710
  %6071 = call float @dx.op.dot3.f32(i32 55, float %5708, float %5709, float %6070, float %5708, float %5709, float %6070)  ; Dot3(ax,ay,az,bx,by,bz)
  %6072 = call float @dx.op.unary.f32(i32 25, float %6071)  ; Rsqrt(value)
  %6073 = fmul fast float %6072, %5708
  %6074 = fmul fast float %6072, %5709
  %6075 = fmul fast float %6070, %6072
  br label %6076

; <label>:6076                                    ; preds = %6069, %6031
  %6077 = phi float [ %6073, %6069 ], [ %5708, %6031 ]
  %6078 = phi float [ %6074, %6069 ], [ %5709, %6031 ]
  %6079 = phi float [ %6075, %6069 ], [ %5710, %6031 ]
  %6080 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6081 = extractvalue %dx.types.CBufRet.i32 %6080, 2
  %6082 = add nsw i32 %6081, -1
  %6083 = call i32 @dx.op.binary.i32(i32 37, i32 %6082, i32 0)  ; IMax(a,b)
  %6084 = shl i32 %6068, 2
  %6085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %6084, i32 undef)  ; BufferLoad(srv,index,wot)
  %6086 = extractvalue %dx.types.ResRet.i32 %6085, 0
  %6087 = lshr i32 %6086, 16
  %6088 = and i32 %6086, 65535
  %6089 = lshr i32 %6086, 21
  %6090 = lshr i32 %6088, 5
  %6091 = call i32 @dx.op.binary.i32(i32 40, i32 %6090, i32 %6083)  ; UMin(a,b)
  %6092 = icmp ugt i32 %6089, %6091
  br i1 %6092, label %6455, label %6093

; <label>:6093                                    ; preds = %6076
  br label %6094

; <label>:6094                                    ; preds = %6447, %6093
  %6095 = phi float [ %6448, %6447 ], [ 0.000000e+00, %6093 ]
  %6096 = phi float [ %6449, %6447 ], [ 0.000000e+00, %6093 ]
  %6097 = phi float [ %6450, %6447 ], [ 0.000000e+00, %6093 ]
  %6098 = phi float [ %6451, %6447 ], [ 1.000000e+00, %6093 ]
  %6099 = phi i32 [ %6452, %6447 ], [ %6089, %6093 ]
  %6100 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6101 = extractvalue %dx.types.CBufRet.i32 %6100, 2
  %6102 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6064, i32 %6101, i32 %6099)  ; UMad(a,b,c)
  %6103 = shl i32 %6102, 2
  %6104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %6103, i32 undef)  ; BufferLoad(srv,index,wot)
  %6105 = extractvalue %dx.types.ResRet.i32 %6104, 0
  %6106 = shl i32 %6099, 5
  %6107 = sub nsw i32 %6087, %6106
  %6108 = call i32 @dx.op.binary.i32(i32 37, i32 %6107, i32 0)  ; IMax(a,b)
  %6109 = call i32 @dx.op.binary.i32(i32 38, i32 %6108, i32 31)  ; IMin(a,b)
  %6110 = sub nsw i32 1, %6087
  %6111 = add nsw i32 %6110, %6088
  %6112 = call i32 @dx.op.binary.i32(i32 37, i32 %6111, i32 0)  ; IMax(a,b)
  %6113 = call i32 @dx.op.binary.i32(i32 38, i32 %6112, i32 32)  ; IMin(a,b)
  %6114 = and i32 %6113, 31
  %6115 = shl i32 -1, %6114
  %6116 = xor i32 %6115, -1
  %6117 = and i32 %6109, 31
  %6118 = shl i32 %6116, %6117
  %6119 = icmp eq i32 %6113, 32
  %6120 = select i1 %6119, i32 -1, i32 %6118
  %6121 = and i32 %6120, %6105
  %6122 = icmp eq i32 %6121, 0
  br i1 %6122, label %6447, label %6123

; <label>:6123                                    ; preds = %6094
  br label %6124

; <label>:6124                                    ; preds = %6230, %6123
  %6125 = phi float [ %6231, %6230 ], [ %6095, %6123 ]
  %6126 = phi float [ %6232, %6230 ], [ %6096, %6123 ]
  %6127 = phi float [ %6233, %6230 ], [ %6097, %6123 ]
  %6128 = phi float [ %6234, %6230 ], [ %6098, %6123 ]
  %6129 = phi i32 [ %6134, %6230 ], [ %6121, %6123 ]
  %6130 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6129)  ; FirstbitLo(value)
  %6131 = add i32 %6130, %6106
  %6132 = and i32 %6130, 31
  %6133 = shl i32 1, %6132
  %6134 = xor i32 %6133, %6129
  %6135 = mul i32 %6131, 72
  %6136 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6135, i32 undef)  ; BufferLoad(srv,index,wot)
  %6137 = extractvalue %dx.types.ResRet.f32 %6136, 0
  %6138 = extractvalue %dx.types.ResRet.f32 %6136, 1
  %6139 = extractvalue %dx.types.ResRet.f32 %6136, 2
  %6140 = add i32 %6135, 12
  %6141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %6140, i32 undef)  ; BufferLoad(srv,index,wot)
  %6142 = extractvalue %dx.types.ResRet.i32 %6141, 0
  %6143 = add i32 %6135, 16
  %6144 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6143, i32 undef)  ; BufferLoad(srv,index,wot)
  %6145 = extractvalue %dx.types.ResRet.f32 %6144, 0
  %6146 = extractvalue %dx.types.ResRet.f32 %6144, 1
  %6147 = extractvalue %dx.types.ResRet.f32 %6144, 2
  %6148 = add i32 %6135, 28
  %6149 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6148, i32 undef)  ; BufferLoad(srv,index,wot)
  %6150 = extractvalue %dx.types.ResRet.f32 %6149, 0
  %6151 = add i32 %6135, 32
  %6152 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6151, i32 undef)  ; BufferLoad(srv,index,wot)
  %6153 = extractvalue %dx.types.ResRet.f32 %6152, 0
  %6154 = extractvalue %dx.types.ResRet.f32 %6152, 1
  %6155 = extractvalue %dx.types.ResRet.f32 %6152, 2
  %6156 = extractvalue %dx.types.ResRet.f32 %6152, 3
  %6157 = add i32 %6135, 48
  %6158 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6157, i32 undef)  ; BufferLoad(srv,index,wot)
  %6159 = extractvalue %dx.types.ResRet.f32 %6158, 0
  %6160 = extractvalue %dx.types.ResRet.f32 %6158, 1
  %6161 = add i32 %6135, 56
  %6162 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6161, i32 undef)  ; BufferLoad(srv,index,wot)
  %6163 = extractvalue %dx.types.ResRet.f32 %6162, 0
  %6164 = extractvalue %dx.types.ResRet.f32 %6162, 1
  %6165 = add i32 %6135, 64
  %6166 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6165, i32 undef)  ; BufferLoad(srv,index,wot)
  %6167 = extractvalue %dx.types.ResRet.f32 %6166, 0
  %6168 = extractvalue %dx.types.ResRet.f32 %6166, 1
  %6169 = mul i32 %6131, 60
  %6170 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6169, i32 undef)  ; BufferLoad(srv,index,wot)
  %6171 = extractvalue %dx.types.ResRet.f32 %6170, 0
  %6172 = extractvalue %dx.types.ResRet.f32 %6170, 1
  %6173 = extractvalue %dx.types.ResRet.f32 %6170, 2
  %6174 = add i32 %6169, 12
  %6175 = add i32 %6169, 48
  %6176 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6175, i32 undef)  ; BufferLoad(srv,index,wot)
  %6177 = extractvalue %dx.types.ResRet.f32 %6176, 0
  %6178 = extractvalue %dx.types.ResRet.f32 %6176, 1
  %6179 = extractvalue %dx.types.ResRet.f32 %6176, 2
  %6180 = and i32 %6142, 32767
  %6181 = bitcast float %6137 to i32
  %6182 = icmp eq i32 %6181, -1
  %6183 = bitcast float %6138 to i32
  %6184 = and i32 %6142, 32768
  %6185 = icmp ne i32 %6184, 0
  %6186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6187 = extractvalue %dx.types.CBufRet.f32 %6186, 0
  %6188 = extractvalue %dx.types.CBufRet.f32 %6186, 1
  %6189 = extractvalue %dx.types.CBufRet.f32 %6186, 2
  %6190 = fsub fast float %6171, %6187
  %6191 = fsub fast float %6172, %6188
  %6192 = fsub fast float %6173, %6189
  %6193 = fsub fast float %190, %6190
  %6194 = fsub fast float %191, %6191
  %6195 = fsub fast float %192, %6192
  %6196 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6174, i32 undef)  ; BufferLoad(srv,index,wot)
  %6197 = extractvalue %dx.types.ResRet.f32 %6196, 0
  %6198 = extractvalue %dx.types.ResRet.f32 %6196, 1
  %6199 = extractvalue %dx.types.ResRet.f32 %6196, 2
  %6200 = call float @dx.op.dot3.f32(i32 55, float %6193, float %6194, float %6195, float %6197, float %6198, float %6199)  ; Dot3(ax,ay,az,bx,by,bz)
  %6201 = add i32 %6169, 24
  %6202 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6201, i32 undef)  ; BufferLoad(srv,index,wot)
  %6203 = extractvalue %dx.types.ResRet.f32 %6202, 0
  %6204 = extractvalue %dx.types.ResRet.f32 %6202, 1
  %6205 = extractvalue %dx.types.ResRet.f32 %6202, 2
  %6206 = call float @dx.op.dot3.f32(i32 55, float %6193, float %6194, float %6195, float %6203, float %6204, float %6205)  ; Dot3(ax,ay,az,bx,by,bz)
  %6207 = add i32 %6169, 36
  %6208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6207, i32 undef)  ; BufferLoad(srv,index,wot)
  %6209 = extractvalue %dx.types.ResRet.f32 %6208, 0
  %6210 = extractvalue %dx.types.ResRet.f32 %6208, 1
  %6211 = extractvalue %dx.types.ResRet.f32 %6208, 2
  %6212 = call float @dx.op.dot3.f32(i32 55, float %6193, float %6194, float %6195, float %6209, float %6210, float %6211)  ; Dot3(ax,ay,az,bx,by,bz)
  %6213 = call float @dx.op.unary.f32(i32 6, float %6200)  ; FAbs(value)
  %6214 = call float @dx.op.unary.f32(i32 6, float %6206)  ; FAbs(value)
  %6215 = call float @dx.op.unary.f32(i32 6, float %6212)  ; FAbs(value)
  %6216 = fsub fast float %6177, %6213
  %6217 = fsub fast float %6178, %6214
  %6218 = fsub fast float %6179, %6215
  %6219 = fmul fast float %6216, %6145
  %6220 = fmul fast float %6217, %6146
  %6221 = fmul fast float %6218, %6147
  %6222 = call float @dx.op.binary.f32(i32 36, float %6220, float %6221)  ; FMin(a,b)
  %6223 = call float @dx.op.binary.f32(i32 36, float %6219, float %6222)  ; FMin(a,b)
  %6224 = call float @dx.op.unary.f32(i32 7, float %6223)  ; Saturate(value)
  %6225 = call float @dx.op.binary.f32(i32 36, float %6128, float %6224)  ; FMin(a,b)
  %6226 = uitofp i1 %6185 to float
  %6227 = fsub fast float 1.000000e+00, %6226
  %6228 = fmul fast float %6225, %6227
  %6229 = fcmp fast ogt float %6228, 0.000000e+00
  br i1 %6229, label %6236, label %6230

; <label>:6230                                    ; preds = %6378, %6124
  %6231 = phi float [ %6442, %6378 ], [ %6125, %6124 ]
  %6232 = phi float [ %6443, %6378 ], [ %6126, %6124 ]
  %6233 = phi float [ %6444, %6378 ], [ %6127, %6124 ]
  %6234 = phi float [ %6445, %6378 ], [ %6128, %6124 ]
  %6235 = icmp eq i32 %6129, %6133
  br i1 %6235, label %6446, label %6124

; <label>:6236                                    ; preds = %6124
  br i1 %6182, label %6294, label %6237

; <label>:6237                                    ; preds = %6236
  %6238 = fsub fast float -0.000000e+00, %6197
  %6239 = fsub fast float -0.000000e+00, %6198
  %6240 = fsub fast float -0.000000e+00, %6199
  %6241 = call float @dx.op.dot3.f32(i32 55, float %6077, float %6078, float %6079, float %6238, float %6239, float %6240)  ; Dot3(ax,ay,az,bx,by,bz)
  %6242 = fsub fast float -0.000000e+00, %6241
  %6243 = call float @dx.op.dot3.f32(i32 55, float %6193, float %6194, float %6195, float %6238, float %6239, float %6240)  ; Dot3(ax,ay,az,bx,by,bz)
  %6244 = fadd fast float %6243, %6160
  %6245 = fadd fast float %6159, %6243
  %6246 = fsub fast float -0.000000e+00, %6245
  %6247 = fcmp ogt float %6241, -0.000000e+00
  %6248 = select i1 %6247, float %6246, float %6244
  %6249 = call float @dx.op.unary.f32(i32 6, float %6242)  ; FAbs(value)
  %6250 = fdiv fast float 1.000000e+00, %6249
  %6251 = fmul fast float %6248, %6250
  %6252 = call float @dx.op.binary.f32(i32 35, float %6251, float 0.000000e+00)  ; FMax(a,b)
  %6253 = fsub fast float -0.000000e+00, %6203
  %6254 = fsub fast float -0.000000e+00, %6204
  %6255 = fsub fast float -0.000000e+00, %6205
  %6256 = call float @dx.op.dot3.f32(i32 55, float %6077, float %6078, float %6079, float %6253, float %6254, float %6255)  ; Dot3(ax,ay,az,bx,by,bz)
  %6257 = fsub fast float -0.000000e+00, %6256
  %6258 = call float @dx.op.dot3.f32(i32 55, float %6193, float %6194, float %6195, float %6253, float %6254, float %6255)  ; Dot3(ax,ay,az,bx,by,bz)
  %6259 = fadd fast float %6258, %6164
  %6260 = fadd fast float %6163, %6258
  %6261 = fsub fast float -0.000000e+00, %6260
  %6262 = fcmp ogt float %6256, -0.000000e+00
  %6263 = select i1 %6262, float %6261, float %6259
  %6264 = call float @dx.op.unary.f32(i32 6, float %6257)  ; FAbs(value)
  %6265 = fdiv fast float 1.000000e+00, %6264
  %6266 = fmul fast float %6263, %6265
  %6267 = call float @dx.op.binary.f32(i32 35, float %6266, float 0.000000e+00)  ; FMax(a,b)
  %6268 = fsub fast float -0.000000e+00, %6209
  %6269 = fsub fast float -0.000000e+00, %6210
  %6270 = fsub fast float -0.000000e+00, %6211
  %6271 = call float @dx.op.dot3.f32(i32 55, float %6077, float %6078, float %6079, float %6268, float %6269, float %6270)  ; Dot3(ax,ay,az,bx,by,bz)
  %6272 = fsub fast float -0.000000e+00, %6271
  %6273 = call float @dx.op.dot3.f32(i32 55, float %6193, float %6194, float %6195, float %6268, float %6269, float %6270)  ; Dot3(ax,ay,az,bx,by,bz)
  %6274 = fadd fast float %6273, %6168
  %6275 = fadd fast float %6167, %6273
  %6276 = fsub fast float -0.000000e+00, %6275
  %6277 = fcmp ogt float %6271, -0.000000e+00
  %6278 = select i1 %6277, float %6276, float %6274
  %6279 = call float @dx.op.unary.f32(i32 6, float %6272)  ; FAbs(value)
  %6280 = fdiv fast float 1.000000e+00, %6279
  %6281 = fmul fast float %6278, %6280
  %6282 = call float @dx.op.binary.f32(i32 35, float %6281, float 0.000000e+00)  ; FMax(a,b)
  %6283 = call float @dx.op.binary.f32(i32 36, float %6267, float %6282)  ; FMin(a,b)
  %6284 = call float @dx.op.binary.f32(i32 36, float %6252, float %6283)  ; FMin(a,b)
  %6285 = fmul fast float %6284, %6077
  %6286 = fmul fast float %6284, %6078
  %6287 = fmul fast float %6284, %6079
  %6288 = fadd fast float %6285, %190
  %6289 = fadd fast float %6286, %191
  %6290 = fadd fast float %6287, %192
  %6291 = fsub fast float %6288, %6137
  %6292 = fsub fast float %6289, %6138
  %6293 = fsub fast float %6290, %6139
  br label %6301

; <label>:6294                                    ; preds = %6236
  %6295 = fmul fast float %6077, 8.096000e+03
  %6296 = fmul fast float %6078, 8.096000e+03
  %6297 = fmul fast float %6079, 8.096000e+03
  %6298 = fadd fast float %6295, %190
  %6299 = fadd fast float %6296, %191
  %6300 = fadd fast float %6297, %192
  br label %6301

; <label>:6301                                    ; preds = %6294, %6237
  %6302 = phi float [ %6077, %6294 ], [ %6291, %6237 ]
  %6303 = phi float [ %6078, %6294 ], [ %6292, %6237 ]
  %6304 = phi float [ %6079, %6294 ], [ %6293, %6237 ]
  %6305 = phi float [ %6298, %6294 ], [ %6288, %6237 ]
  %6306 = phi float [ %6299, %6294 ], [ %6289, %6237 ]
  %6307 = phi float [ %6300, %6294 ], [ %6290, %6237 ]
  %6308 = fcmp fast olt float %6156, 1.000000e+00
  br i1 %6308, label %6309, label %6340, !dx.controlflow.hints !94

; <label>:6309                                    ; preds = %6301
  %6310 = fmul fast float %6304, %6154
  %6311 = fmul fast float %6303, %6155
  %6312 = fsub fast float %6310, %6311
  %6313 = fmul fast float %6302, %6155
  %6314 = fmul fast float %6304, %6153
  %6315 = fsub fast float %6313, %6314
  %6316 = fmul fast float %6303, %6153
  %6317 = fmul fast float %6302, %6154
  %6318 = fsub fast float %6316, %6317
  %6319 = fmul fast float %6312, 2.000000e+00
  %6320 = fmul fast float %6315, 2.000000e+00
  %6321 = fmul fast float %6318, 2.000000e+00
  %6322 = fmul fast float %6319, %6156
  %6323 = fmul fast float %6320, %6156
  %6324 = fmul fast float %6321, %6156
  %6325 = fmul fast float %6321, %6154
  %6326 = fmul fast float %6320, %6155
  %6327 = fmul fast float %6319, %6155
  %6328 = fmul fast float %6321, %6153
  %6329 = fmul fast float %6320, %6153
  %6330 = fmul fast float %6319, %6154
  %6331 = fadd fast float %6325, %6302
  %6332 = fadd fast float %6331, %6322
  %6333 = fsub fast float %6332, %6326
  %6334 = fsub fast float %6303, %6328
  %6335 = fadd fast float %6334, %6323
  %6336 = fadd fast float %6335, %6327
  %6337 = fadd fast float %6324, %6304
  %6338 = fsub fast float %6337, %6330
  %6339 = fadd fast float %6338, %6329
  br label %6340

; <label>:6340                                    ; preds = %6309, %6301
  %6341 = phi float [ %6333, %6309 ], [ %6302, %6301 ]
  %6342 = phi float [ %6336, %6309 ], [ %6303, %6301 ]
  %6343 = phi float [ %6339, %6309 ], [ %6304, %6301 ]
  br i1 %6182, label %6375, label %6344

; <label>:6344                                    ; preds = %6340
  %6345 = fmul fast float %5664, 0x400187C840000000
  %6346 = fadd fast float %6345, 0xC00EFC2120000000
  %6347 = fmul fast float %6346, %5664
  %6348 = fadd fast float %6347, 0x3FE5D16340000000
  %6349 = fmul fast float %6348, %5664
  %6350 = fadd fast float %6349, 1.000000e+00
  %6351 = call float @dx.op.unary.f32(i32 7, float %6350)  ; Saturate(value)
  %6352 = fsub fast float %6305, %190
  %6353 = fsub fast float %6306, %191
  %6354 = fsub fast float %6307, %192
  %6355 = fsub fast float %6305, %6137
  %6356 = fsub fast float %6306, %6138
  %6357 = fsub fast float %6307, %6139
  %6358 = call float @dx.op.dot3.f32(i32 55, float %6352, float %6353, float %6354, float %6352, float %6353, float %6354)  ; Dot3(ax,ay,az,bx,by,bz)
  %6359 = call float @dx.op.dot3.f32(i32 55, float %6355, float %6356, float %6357, float %6355, float %6356, float %6357)  ; Dot3(ax,ay,az,bx,by,bz)
  %6360 = fadd fast float %6359, 0x3EE4F8B580000000
  %6361 = fdiv fast float %6358, %6360
  %6362 = bitcast float %6361 to i32
  %6363 = ashr i32 %6362, 1
  %6364 = add nsw i32 %6363, 532487669
  %6365 = bitcast i32 %6364 to float
  %6366 = fmul fast float %6365, %6351
  %6367 = call float @dx.op.unary.f32(i32 7, float %6366)  ; Saturate(value)
  %6368 = fmul fast float %6367, 0x4009981AE0000000
  %6369 = fsub fast float 0x40111BBD80000000, %6368
  %6370 = fmul fast float %6369, %6367
  %6371 = fadd fast float %6370, 0xC0009F6020000000
  %6372 = fmul fast float %6371, %6367
  %6373 = fadd fast float %6372, 1.000000e+00
  %6374 = call float @dx.op.unary.f32(i32 7, float %6373)  ; Saturate(value)
  br label %6378

; <label>:6375                                    ; preds = %6340
  %6376 = icmp ne i32 %6183, -1
  %6377 = zext i1 %6376 to i32
  br label %6378

; <label>:6378                                    ; preds = %6375, %6344
  %6379 = phi float [ %5664, %6375 ], [ %6374, %6344 ]
  %6380 = phi i32 [ %6377, %6375 ], [ 0, %6344 ]
  %6381 = fmul float %6379, 5.000000e+00
  %6382 = fsub float 5.000000e+00, %6381
  %6383 = icmp ne i32 %6380, 0
  %6384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6385 = extractvalue %dx.types.CBufRet.f32 %6384, 3
  %6386 = fadd fast float %6385, %6382
  %6387 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6386)  ; FMax(a,b)
  %6388 = call float @dx.op.unary.f32(i32 6, float %6341)  ; FAbs(value)
  %6389 = call float @dx.op.unary.f32(i32 6, float %6342)  ; FAbs(value)
  %6390 = fadd fast float %6389, %6388
  %6391 = call float @dx.op.unary.f32(i32 6, float %6343)  ; FAbs(value)
  %6392 = fadd fast float %6390, %6391
  %6393 = fcmp fast oeq float %6392, 0.000000e+00
  %6394 = fdiv fast float 1.000000e+00, %6392
  %6395 = select i1 %6393, float 1.000000e+00, float %6394
  %6396 = fmul fast float %6395, %6341
  %6397 = fmul fast float %6395, %6342
  %6398 = call float @dx.op.unary.f32(i32 6, float %6397)  ; FAbs(value)
  %6399 = call float @dx.op.unary.f32(i32 6, float %6396)  ; FAbs(value)
  %6400 = fsub fast float 1.000000e+00, %6398
  %6401 = fsub fast float 1.000000e+00, %6399
  %6402 = fcmp fast oge float %6396, 0.000000e+00
  %6403 = fcmp fast oge float %6397, 0.000000e+00
  %6404 = select i1 %6402, float 1.000000e+00, float -1.000000e+00
  %6405 = select i1 %6403, float 1.000000e+00, float -1.000000e+00
  %6406 = fcmp fast ole float %6343, 0.000000e+00
  %6407 = fmul fast float %6404, %6400
  %6408 = fmul fast float %6405, %6401
  %6409 = select i1 %6406, float %6407, float %6396
  %6410 = select i1 %6406, float %6408, float %6397
  %6411 = fmul fast float %6409, 5.000000e-01
  %6412 = fmul fast float %6410, 5.000000e-01
  %6413 = fadd fast float %6411, 5.000000e-01
  %6414 = fadd fast float %6412, 5.000000e-01
  %6415 = uitofp i32 %6180 to float
  %6416 = call float @dx.op.binary.f32(i32 36, float %6387, float 3.000000e+00)  ; FMin(a,b)
  %6417 = fadd fast float %6416, 2.000000e+00
  %6418 = call float @dx.op.unary.f32(i32 21, float %6417)  ; Exp(value)
  %6419 = extractvalue %dx.types.CBufRet.f32 %6384, 1
  %6420 = fmul fast float %6419, %6418
  %6421 = fmul fast float %6420, 2.000000e+00
  %6422 = fsub fast float 1.000000e+00, %6421
  %6423 = fmul fast float %6413, %6422
  %6424 = fmul fast float %6414, %6422
  %6425 = fadd fast float %6423, %6420
  %6426 = fadd fast float %6424, %6420
  %6427 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %43, float %6425, float %6426, float %6415, float undef, i32 0, i32 0, i32 undef, float %6387)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6428 = extractvalue %dx.types.ResRet.f32 %6427, 0
  %6429 = extractvalue %dx.types.ResRet.f32 %6427, 1
  %6430 = extractvalue %dx.types.ResRet.f32 %6427, 2
  %6431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6432 = extractvalue %dx.types.CBufRet.f32 %6431, 3
  %6433 = fmul fast float %6432, %6150
  %6434 = call float @dx.op.binary.f32(i32 36, float %5728, float %6433)  ; FMin(a,b)
  %6435 = select i1 %6383, float %6434, float %6433
  %6436 = fmul fast float %6428, %6228
  %6437 = fmul fast float %6436, %6435
  %6438 = fmul fast float %6429, %6228
  %6439 = fmul fast float %6438, %6435
  %6440 = fmul fast float %6430, %6228
  %6441 = fmul fast float %6440, %6435
  %6442 = fadd fast float %6437, %6125
  %6443 = fadd fast float %6439, %6126
  %6444 = fadd fast float %6441, %6127
  %6445 = fsub fast float %6128, %6228
  br label %6230

; <label>:6446                                    ; preds = %6230
  br label %6447

; <label>:6447                                    ; preds = %6446, %6094
  %6448 = phi float [ %6095, %6094 ], [ %6231, %6446 ]
  %6449 = phi float [ %6096, %6094 ], [ %6232, %6446 ]
  %6450 = phi float [ %6097, %6094 ], [ %6233, %6446 ]
  %6451 = phi float [ %6098, %6094 ], [ %6234, %6446 ]
  %6452 = add i32 %6099, 1
  %6453 = icmp ugt i32 %6452, %6091
  br i1 %6453, label %6454, label %6094, !llvm.loop !95

; <label>:6454                                    ; preds = %6447
  br label %6455

; <label>:6455                                    ; preds = %6454, %6076
  %6456 = phi float [ 0.000000e+00, %6076 ], [ %6448, %6454 ]
  %6457 = phi float [ 0.000000e+00, %6076 ], [ %6449, %6454 ]
  %6458 = phi float [ 0.000000e+00, %6076 ], [ %6450, %6454 ]
  %6459 = call float @dx.op.dot3.f32(i32 55, float %6456, float %6457, float %6458, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6460 = select i1 %264, float 0.000000e+00, float %6456
  %6461 = select i1 %264, float %6459, float %6457
  %6462 = select i1 %264, float 0.000000e+00, float %6458
  %6463 = fcmp fast olt float %6029, 0.000000e+00
  %6464 = call float @dx.op.unary.f32(i32 6, float %6029)  ; FAbs(value)
  %6465 = fmul fast float %6464, %5958
  %6466 = fmul fast float %6464, %5959
  %6467 = fmul fast float %6464, %5960
  %6468 = select i1 %6463, float %5958, float %6465
  %6469 = select i1 %6463, float %5959, float %6466
  %6470 = select i1 %6463, float %5960, float %6467
  %6471 = fsub fast float 1.000000e+00, %6464
  %6472 = call float @dx.op.unary.f32(i32 7, float %6471)  ; Saturate(value)
  %6473 = fmul fast float %6472, %6460
  %6474 = fmul fast float %6472, %6461
  %6475 = fmul fast float %6472, %6462
  %6476 = fadd fast float %6468, %6473
  %6477 = fadd fast float %6469, %6474
  %6478 = fadd fast float %6470, %6475
  br label %6479

; <label>:6479                                    ; preds = %6455, %6012
  %6480 = phi float [ %5958, %6012 ], [ %6476, %6455 ]
  %6481 = phi float [ %5959, %6012 ], [ %6477, %6455 ]
  %6482 = phi float [ %5960, %6012 ], [ %6478, %6455 ]
  %6483 = fmul fast float %6018, %5954
  %6484 = fmul fast float %6018, %5955
  %6485 = fmul fast float %6018, %5956
  %6486 = call float @dx.op.dot3.f32(i32 55, float %5661, float %5662, float %5663, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6487 = fcmp fast ogt float %6486, 0x3E7FF19E20000000
  %6488 = fdiv fast float 1.000000e+00, %6486
  %6489 = select i1 %6487, float %6488, float 0.000000e+00
  %6490 = fmul fast float %6489, %5661
  %6491 = fmul fast float %6489, %5662
  %6492 = fmul fast float %6489, %5663
  %6493 = fadd fast float %6490, -1.000000e+00
  %6494 = fadd fast float %6491, -1.000000e+00
  %6495 = fadd fast float %6492, -1.000000e+00
  %6496 = fmul fast float %6493, 5.000000e-01
  %6497 = fmul fast float %6494, 5.000000e-01
  %6498 = fmul fast float %6495, 5.000000e-01
  %6499 = fadd fast float %6496, 1.000000e+00
  %6500 = fadd fast float %6497, 1.000000e+00
  %6501 = fadd fast float %6498, 1.000000e+00
  %6502 = call float @dx.op.binary.f32(i32 35, float %5702, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6503 = fdiv fast float %4008, %6502
  %6504 = fcmp fast olt float %4753, 1.270000e+02
  %6505 = fcmp fast olt float %4754, 1.270000e+02
  %6506 = fcmp fast olt float %4755, 1.270000e+02
  %6507 = fmul fast float %4753, 0xBFF7154760000000
  %6508 = fmul fast float %6507, %6503
  %6509 = fmul fast float %4754, 0xBFF7154760000000
  %6510 = fmul fast float %6509, %6503
  %6511 = fmul fast float %4755, 0xBFF7154760000000
  %6512 = fmul fast float %6511, %6503
  %6513 = call float @dx.op.unary.f32(i32 21, float %6508)  ; Exp(value)
  %6514 = call float @dx.op.unary.f32(i32 21, float %6510)  ; Exp(value)
  %6515 = call float @dx.op.unary.f32(i32 21, float %6512)  ; Exp(value)
  %6516 = call float @dx.op.unary.f32(i32 7, float %6513)  ; Saturate(value)
  %6517 = call float @dx.op.unary.f32(i32 7, float %6514)  ; Saturate(value)
  %6518 = call float @dx.op.unary.f32(i32 7, float %6515)  ; Saturate(value)
  %6519 = select i1 %6504, float %6516, float 0.000000e+00
  %6520 = select i1 %6505, float %6517, float 0.000000e+00
  %6521 = select i1 %6506, float %6518, float 0.000000e+00
  %6522 = fmul fast float %6519, %6018
  %6523 = fmul fast float %6520, %6018
  %6524 = fmul fast float %6521, %6018
  %6525 = fadd fast float %6522, -1.000000e+00
  %6526 = fadd fast float %6523, -1.000000e+00
  %6527 = fadd fast float %6524, -1.000000e+00
  %6528 = fmul fast float %6525, %4701
  %6529 = fmul fast float %6526, %4701
  %6530 = fmul fast float %6527, %4701
  %6531 = fadd fast float %6528, 1.000000e+00
  %6532 = fadd fast float %6529, 1.000000e+00
  %6533 = fadd fast float %6530, 1.000000e+00
  %6534 = fmul fast float %5656, 0x401CF23780000000
  %6535 = fadd fast float %6534, 0x3FF32641C0000000
  %6536 = fdiv fast float 1.000000e+00, %6535
  %6537 = call float @dx.op.dot3.f32(i32 55, float %5651, float %5650, float %5649, float %5658, float %5659, float %5660)  ; Dot3(ax,ay,az,bx,by,bz)
  %6538 = fmul fast float %6536, %6536
  %6539 = fmul fast float %6537, %6537
  %6540 = fsub fast float 1.000000e+00, %6539
  %6541 = fmul fast float %6538, %6540
  %6542 = fsub fast float 1.000000e+00, %6541
  %6543 = fcmp fast oge float %6542, 0.000000e+00
  %6544 = fmul fast float %6536, %5651
  %6545 = fmul fast float %6536, %5650
  %6546 = fmul fast float %6536, %5649
  %6547 = call float @dx.op.unary.f32(i32 24, float %6542)  ; Sqrt(value)
  %6548 = fmul fast float %6537, %6536
  %6549 = fadd fast float %6548, %6547
  %6550 = fmul fast float %6549, %5658
  %6551 = fmul fast float %6549, %5659
  %6552 = fmul fast float %6549, %5660
  %6553 = fsub fast float %6544, %6550
  %6554 = fsub fast float %6545, %6551
  %6555 = fsub fast float %6546, %6552
  %6556 = select i1 %6543, float %6553, float 0.000000e+00
  %6557 = select i1 %6543, float %6554, float 0.000000e+00
  %6558 = select i1 %6543, float %6555, float 0.000000e+00
  %6559 = fmul fast float %6556, %4008
  %6560 = fmul fast float %6557, %4008
  %6561 = fmul fast float %6558, %4008
  %6562 = fadd fast float %6559, %5697
  %6563 = fadd fast float %6560, %5698
  %6564 = fadd fast float %6561, %5699
  %6565 = call float @dx.op.dot3.f32(i32 55, float %5466, float %5467, float %5468, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6566 = fmul fast float %5717, %4701
  %6567 = fsub fast float 1.000000e+00, %6566
  %6568 = call float @dx.op.unary.f32(i32 7, float %6567)  ; Saturate(value)
  %6569 = fsub fast float 1.000000e+00, %6568
  %6570 = fmul fast float %5656, 0x4012D0A400000000
  %6571 = fadd fast float %6570, 0x3FDB6377A0000000
  %6572 = fmul fast float %6569, %6571
  %6573 = fadd fast float %6572, %6565
  %6574 = call float @dx.op.unary.f32(i32 7, float %6573)  ; Saturate(value)
  %6575 = fmul fast float %6480, %6013
  %6576 = fmul fast float %6481, %6014
  %6577 = fmul fast float %6482, %6015
  %6578 = fsub fast float 1.000000e+00, %5702
  %6579 = bitcast float %6578 to i32
  %6580 = sitofp i32 %6579 to float
  %6581 = fmul fast float %6580, 5.000000e+00
  %6582 = fadd fast float %6581, 0xC1EFBF8940000000
  %6583 = fptosi float %6582 to i32
  %6584 = bitcast i32 %6583 to float
  %6585 = fmul fast float %6584, %4705
  %6586 = fmul fast float %5954, %6585
  %6587 = fmul fast float %6586, %6018
  %6588 = fmul fast float %6587, %6499
  %6589 = fmul fast float %5955, %6585
  %6590 = fmul fast float %6589, %6018
  %6591 = fmul fast float %6590, %6500
  %6592 = fmul fast float %5956, %6585
  %6593 = fmul fast float %6592, %6018
  %6594 = fmul fast float %6593, %6501
  %6595 = fmul fast float %6483, %4701
  %6596 = fmul fast float %6484, %4701
  %6597 = fmul fast float %6485, %4701
  %6598 = fsub fast float 1.000000e+00, %6574
  %6599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %6600 = extractvalue %dx.types.CBufRet.f32 %6599, 0
  %6601 = extractvalue %dx.types.CBufRet.f32 %6599, 1
  %6602 = extractvalue %dx.types.CBufRet.f32 %6599, 2
  %6603 = extractvalue %dx.types.CBufRet.f32 %6599, 3
  %6604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %6605 = extractvalue %dx.types.CBufRet.f32 %6604, 0
  %6606 = extractvalue %dx.types.CBufRet.f32 %6604, 1
  %6607 = extractvalue %dx.types.CBufRet.f32 %6604, 2
  %6608 = extractvalue %dx.types.CBufRet.f32 %6604, 3
  %6609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %6610 = extractvalue %dx.types.CBufRet.f32 %6609, 0
  %6611 = extractvalue %dx.types.CBufRet.f32 %6609, 1
  %6612 = extractvalue %dx.types.CBufRet.f32 %6609, 2
  %6613 = extractvalue %dx.types.CBufRet.f32 %6609, 3
  %6614 = fmul fast float %6562, %6600
  %6615 = call float @dx.op.tertiary.f32(i32 46, float %6563, float %6601, float %6614)  ; FMad(a,b,c)
  %6616 = call float @dx.op.tertiary.f32(i32 46, float %6564, float %6602, float %6615)  ; FMad(a,b,c)
  %6617 = fadd fast float %6616, %6603
  %6618 = fmul fast float %6562, %6605
  %6619 = call float @dx.op.tertiary.f32(i32 46, float %6563, float %6606, float %6618)  ; FMad(a,b,c)
  %6620 = call float @dx.op.tertiary.f32(i32 46, float %6564, float %6607, float %6619)  ; FMad(a,b,c)
  %6621 = fadd fast float %6620, %6608
  %6622 = fmul fast float %6562, %6610
  %6623 = call float @dx.op.tertiary.f32(i32 46, float %6563, float %6611, float %6622)  ; FMad(a,b,c)
  %6624 = call float @dx.op.tertiary.f32(i32 46, float %6564, float %6612, float %6623)  ; FMad(a,b,c)
  %6625 = fadd fast float %6624, %6613
  %6626 = fdiv fast float %6617, %6625
  %6627 = fdiv fast float %6621, %6625
  %6628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6629 = extractvalue %dx.types.CBufRet.f32 %6628, 0
  %6630 = extractvalue %dx.types.CBufRet.f32 %6628, 1
  %6631 = fmul fast float %6629, %6626
  %6632 = fmul fast float %6630, %6627
  %6633 = extractvalue %dx.types.CBufRet.f32 %6628, 2
  %6634 = extractvalue %dx.types.CBufRet.f32 %6628, 3
  %6635 = fadd fast float %6631, %6633
  %6636 = fadd fast float %6632, %6634
  %6637 = call float @dx.op.unary.f32(i32 7, float %6635)  ; Saturate(value)
  %6638 = call float @dx.op.unary.f32(i32 7, float %6636)  ; Saturate(value)
  %6639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %6640 = extractvalue %dx.types.CBufRet.f32 %6639, 0
  %6641 = extractvalue %dx.types.CBufRet.f32 %6639, 1
  %6642 = fmul fast float %6640, %6637
  %6643 = fmul fast float %6641, %6638
  %6644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %6645 = extractvalue %dx.types.CBufRet.f32 %6644, 1
  %6646 = extractvalue %dx.types.CBufRet.f32 %6644, 2
  %6647 = fsub fast float %6645, %6646
  %6648 = fmul fast float %6647, %6598
  %6649 = fadd fast float %6648, %6646
  %6650 = fmul fast float %277, 2.000000e+00
  %6651 = fmul fast float %278, 2.000000e+00
  %6652 = fadd fast float %6650, -1.000000e+00
  %6653 = fadd fast float %6651, -1.000000e+00
  %6654 = fmul fast float %6649, %6652
  %6655 = fmul fast float %6649, %6653
  %6656 = fadd fast float %6654, %6642
  %6657 = fadd fast float %6655, %6643
  %6658 = extractvalue %dx.types.CBufRet.f32 %6639, 2
  %6659 = extractvalue %dx.types.CBufRet.f32 %6639, 3
  %6660 = fmul fast float %6656, %6658
  %6661 = fmul fast float %6657, %6659
  %6662 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %46, float %6660, float %6661, float undef, float undef, i32 0, i32 0, i32 undef, float 2.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6663 = extractvalue %dx.types.ResRet.f32 %6662, 0
  %6664 = fcmp fast ogt float %6663, -1.000000e+00
  %6665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6666 = extractvalue %dx.types.CBufRet.f32 %6665, 1
  %6667 = select i1 %6664, float %6666, float 1.000000e+00
  %6668 = fadd fast float %6663, 1.000000e+00
  %6669 = fmul fast float %6667, %6668
  %6670 = call float @dx.op.unary.f32(i32 6, float %6669)  ; FAbs(value)
  %6671 = fsub fast float %6670, %6625
  %6672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %6673 = extractvalue %dx.types.CBufRet.f32 %6672, 2
  %6674 = fmul fast float %6673, %6670
  %6675 = fdiv fast float 1.600000e+02, %6674
  %6676 = fmul fast float %6574, %6574
  %6677 = fmul fast float %6676, 0xBFB5B17960000000
  %6678 = fmul fast float %6677, %6671
  %6679 = fmul fast float %6678, %6675
  %6680 = call float @dx.op.unary.f32(i32 21, float %6679)  ; Exp(value)
  %6681 = fmul fast float %6680, 0x3FF04B2960000000
  %6682 = fsub fast float 0x3FF04B2960000000, %6681
  %6683 = call float @dx.op.unary.f32(i32 7, float %6682)  ; Saturate(value)
  %6684 = fmul fast float %6683, 4.000000e+00
  %6685 = fadd fast float %277, -5.000000e-01
  %6686 = fadd fast float %278, -5.000000e-01
  %6687 = fmul fast float %6683, 0x3FBEB851E0000000
  %6688 = call float @dx.op.unary.f32(i32 7, float %6687)  ; Saturate(value)
  %6689 = fmul fast float %6688, %6685
  %6690 = fmul fast float %6688, %6686
  %6691 = fadd fast float %6689, %6635
  %6692 = fadd fast float %6690, %6636
  %6693 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 212)  ; CBufferLoadLegacy(handle,regIndex)
  %6694 = extractvalue %dx.types.CBufRet.i32 %6693, 0
  %6695 = icmp eq i32 %6694, 0
  br i1 %6695, label %6701, label %6696, !dx.controlflow.hints !97

; <label>:6696                                    ; preds = %6479
  %6697 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %41, float %6691, float %6692, float undef, float undef, i32 0, i32 0, i32 undef, float %6684)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6698 = extractvalue %dx.types.ResRet.f32 %6697, 0
  %6699 = extractvalue %dx.types.ResRet.f32 %6697, 1
  %6700 = extractvalue %dx.types.ResRet.f32 %6697, 2
  br label %6706

; <label>:6701                                    ; preds = %6479
  %6702 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %43, float %6691, float %6692, float undef, float undef, i32 0, i32 0, i32 undef, float %6684)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6703 = extractvalue %dx.types.ResRet.f32 %6702, 0
  %6704 = extractvalue %dx.types.ResRet.f32 %6702, 1
  %6705 = extractvalue %dx.types.ResRet.f32 %6702, 2
  br label %6706

; <label>:6706                                    ; preds = %6701, %6696
  %6707 = phi float [ %6698, %6696 ], [ %6703, %6701 ]
  %6708 = phi float [ %6699, %6696 ], [ %6704, %6701 ]
  %6709 = phi float [ %6700, %6696 ], [ %6705, %6701 ]
  %6710 = select i1 %264, float 0.000000e+00, float %6708
  %6711 = select i1 %264, float 0.000000e+00, float %6709
  %6712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6713 = extractvalue %dx.types.CBufRet.f32 %6712, 1
  %6714 = fmul fast float %6707, %6531
  %6715 = fmul fast float %6714, %6713
  %6716 = fmul fast float %6710, %6532
  %6717 = fmul fast float %6716, %6713
  %6718 = fmul fast float %6711, %6533
  %6719 = fmul fast float %6718, %6713
  %6720 = fadd fast float %6575, %4691
  %6721 = fadd fast float %6720, %6588
  %6722 = fadd fast float %6721, %6715
  %6723 = fmul fast float %6722, %4701
  %6724 = fadd fast float %6576, %4692
  %6725 = fadd fast float %6724, %6591
  %6726 = fadd fast float %6725, %6717
  %6727 = fmul fast float %6726, %4701
  %6728 = fadd fast float %6577, %4693
  %6729 = fadd fast float %6728, %6594
  %6730 = fadd fast float %6729, %6719
  %6731 = fmul fast float %6730, %4701
  %6732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6733 = extractvalue %dx.types.CBufRet.f32 %6732, 3
  %6734 = fcmp fast oeq float %6733, 0.000000e+00
  br i1 %6734, label %8500, label %6735

; <label>:6735                                    ; preds = %6706
  %6736 = extractvalue %dx.types.CBufRet.f32 %6732, 0
  %6737 = extractvalue %dx.types.CBufRet.f32 %6732, 1
  %6738 = extractvalue %dx.types.CBufRet.f32 %6732, 2
  %6739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6740 = extractvalue %dx.types.CBufRet.f32 %6739, 0
  %6741 = extractvalue %dx.types.CBufRet.f32 %6739, 1
  %6742 = extractvalue %dx.types.CBufRet.f32 %6739, 2
  %6743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6744 = extractvalue %dx.types.CBufRet.f32 %6743, 0
  %6745 = extractvalue %dx.types.CBufRet.f32 %6743, 1
  %6746 = call float @dx.op.dot3.f32(i32 55, float %6740, float %6741, float %6742, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6747 = select i1 %264, float %6744, float %6740
  %6748 = select i1 %264, float %6746, float %6741
  %6749 = select i1 %264, float %6745, float %6742
  %6750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6751 = extractvalue %dx.types.CBufRet.f32 %6750, 2
  %6752 = fmul fast float %6751, %118
  %6753 = fmul fast float %6751, %119
  %6754 = fmul fast float %6751, %120
  %6755 = fadd fast float %6752, %190
  %6756 = fadd fast float %6753, %191
  %6757 = fadd fast float %6754, %192
  %6758 = fcmp fast olt float %6733, 0.000000e+00
  br i1 %6758, label %8016, label %6759

; <label>:6759                                    ; preds = %6735
  %6760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6761 = extractvalue %dx.types.CBufRet.f32 %6760, 0
  %6762 = extractvalue %dx.types.CBufRet.f32 %6760, 1
  %6763 = extractvalue %dx.types.CBufRet.f32 %6760, 2
  %6764 = extractvalue %dx.types.CBufRet.f32 %6760, 3
  %6765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6766 = extractvalue %dx.types.CBufRet.f32 %6765, 0
  %6767 = extractvalue %dx.types.CBufRet.f32 %6765, 1
  %6768 = extractvalue %dx.types.CBufRet.f32 %6765, 2
  %6769 = extractvalue %dx.types.CBufRet.f32 %6765, 3
  %6770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6771 = extractvalue %dx.types.CBufRet.f32 %6770, 0
  %6772 = extractvalue %dx.types.CBufRet.f32 %6770, 1
  %6773 = extractvalue %dx.types.CBufRet.f32 %6770, 2
  %6774 = extractvalue %dx.types.CBufRet.f32 %6770, 3
  %6775 = fmul fast float %6761, %6755
  %6776 = call float @dx.op.tertiary.f32(i32 46, float %6756, float %6762, float %6775)  ; FMad(a,b,c)
  %6777 = call float @dx.op.tertiary.f32(i32 46, float %6757, float %6763, float %6776)  ; FMad(a,b,c)
  %6778 = fadd fast float %6777, %6764
  %6779 = fmul fast float %6766, %6755
  %6780 = call float @dx.op.tertiary.f32(i32 46, float %6756, float %6767, float %6779)  ; FMad(a,b,c)
  %6781 = call float @dx.op.tertiary.f32(i32 46, float %6757, float %6768, float %6780)  ; FMad(a,b,c)
  %6782 = fadd fast float %6781, %6769
  %6783 = fmul fast float %6771, %6755
  %6784 = call float @dx.op.tertiary.f32(i32 46, float %6756, float %6772, float %6783)  ; FMad(a,b,c)
  %6785 = call float @dx.op.tertiary.f32(i32 46, float %6757, float %6773, float %6784)  ; FMad(a,b,c)
  %6786 = fadd fast float %6785, %6774
  %6787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6788 = extractvalue %dx.types.CBufRet.f32 %6787, 0
  %6789 = fcmp fast une float %6788, 0.000000e+00
  %6790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6791 = extractvalue %dx.types.CBufRet.f32 %6790, 0
  %6792 = extractvalue %dx.types.CBufRet.f32 %6790, 1
  %6793 = extractvalue %dx.types.CBufRet.f32 %6790, 3
  %6794 = fmul fast float %6793, %6778
  %6795 = fmul fast float %6793, %6782
  %6796 = fadd fast float %6794, %6791
  %6797 = fadd fast float %6795, %6792
  %6798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6799 = extractvalue %dx.types.CBufRet.f32 %6798, 0
  %6800 = extractvalue %dx.types.CBufRet.f32 %6798, 1
  %6801 = extractvalue %dx.types.CBufRet.f32 %6798, 3
  %6802 = fmul fast float %6801, %6778
  %6803 = fmul fast float %6801, %6782
  %6804 = fadd fast float %6802, %6799
  %6805 = fadd fast float %6803, %6800
  %6806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6807 = extractvalue %dx.types.CBufRet.f32 %6806, 1
  %6808 = fsub fast float %6807, %6786
  %6809 = extractvalue %dx.types.CBufRet.f32 %6806, 2
  %6810 = fmul fast float %6808, %6809
  %6811 = fsub fast float 1.000000e+00, %6810
  %6812 = call float @dx.op.unary.f32(i32 7, float %6811)  ; Saturate(value)
  br i1 %6789, label %6873, label %6813

; <label>:6813                                    ; preds = %6759
  %6814 = extractvalue %dx.types.CBufRet.f32 %6798, 2
  %6815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6816 = extractvalue %dx.types.CBufRet.f32 %6815, 2
  %6817 = fadd fast float %6816, %6814
  %6818 = fcmp fast ogt float %6817, 0.000000e+00
  br i1 %6818, label %6819, label %6843

; <label>:6819                                    ; preds = %6813
  %6820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6821 = extractvalue %dx.types.CBufRet.f32 %6820, 0
  %6822 = extractvalue %dx.types.CBufRet.f32 %6820, 1
  %6823 = fsub fast float %6804, %6821
  %6824 = fsub fast float %6805, %6822
  %6825 = fcmp fast olt float %6823, 0.000000e+00
  %6826 = fcmp fast olt float %6824, 0.000000e+00
  %6827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6828 = extractvalue %dx.types.CBufRet.f32 %6827, 0
  %6829 = extractvalue %dx.types.CBufRet.f32 %6827, 1
  %6830 = extractvalue %dx.types.CBufRet.f32 %6827, 2
  %6831 = extractvalue %dx.types.CBufRet.f32 %6827, 3
  %6832 = select i1 %6825, float %6828, float %6830
  %6833 = select i1 %6826, float %6829, float %6831
  %6834 = fmul fast float %6832, %6823
  %6835 = fmul fast float %6833, %6824
  %6836 = call float @dx.op.unary.f32(i32 6, float %6834)  ; FAbs(value)
  %6837 = call float @dx.op.unary.f32(i32 6, float %6835)  ; FAbs(value)
  %6838 = extractvalue %dx.types.CBufRet.f32 %6750, 0
  %6839 = call float @dx.op.binary.f32(i32 35, float %6836, float %6837)  ; FMax(a,b)
  %6840 = fsub fast float %6838, %6839
  %6841 = call float @dx.op.unary.f32(i32 7, float %6840)  ; Saturate(value)
  %6842 = fmul fast float %6841, %6812
  br label %6843

; <label>:6843                                    ; preds = %6819, %6813
  %6844 = phi float [ %6842, %6819 ], [ 0.000000e+00, %6813 ]
  %6845 = extractvalue %dx.types.CBufRet.f32 %6790, 2
  %6846 = extractvalue %dx.types.CBufRet.f32 %6815, 1
  %6847 = fadd fast float %6846, %6845
  %6848 = fcmp fast ogt float %6847, 0.000000e+00
  br i1 %6848, label %6849, label %6873

; <label>:6849                                    ; preds = %6843
  %6850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6851 = extractvalue %dx.types.CBufRet.f32 %6850, 0
  %6852 = extractvalue %dx.types.CBufRet.f32 %6850, 1
  %6853 = fsub fast float %6796, %6851
  %6854 = fsub fast float %6797, %6852
  %6855 = fcmp fast olt float %6853, 0.000000e+00
  %6856 = fcmp fast olt float %6854, 0.000000e+00
  %6857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6858 = extractvalue %dx.types.CBufRet.f32 %6857, 0
  %6859 = extractvalue %dx.types.CBufRet.f32 %6857, 1
  %6860 = extractvalue %dx.types.CBufRet.f32 %6857, 2
  %6861 = extractvalue %dx.types.CBufRet.f32 %6857, 3
  %6862 = select i1 %6855, float %6858, float %6860
  %6863 = select i1 %6856, float %6859, float %6861
  %6864 = fmul fast float %6862, %6853
  %6865 = fmul fast float %6863, %6854
  %6866 = call float @dx.op.unary.f32(i32 6, float %6864)  ; FAbs(value)
  %6867 = call float @dx.op.unary.f32(i32 6, float %6865)  ; FAbs(value)
  %6868 = extractvalue %dx.types.CBufRet.f32 %6750, 0
  %6869 = call float @dx.op.binary.f32(i32 35, float %6866, float %6867)  ; FMax(a,b)
  %6870 = fsub fast float %6868, %6869
  %6871 = call float @dx.op.unary.f32(i32 7, float %6870)  ; Saturate(value)
  %6872 = fmul fast float %6871, %6812
  br label %6873

; <label>:6873                                    ; preds = %6849, %6843, %6759
  %6874 = phi float [ 0.000000e+00, %6759 ], [ %6872, %6849 ], [ 0.000000e+00, %6843 ]
  %6875 = phi float [ 0.000000e+00, %6759 ], [ %6844, %6849 ], [ %6844, %6843 ]
  %6876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6877 = extractvalue %dx.types.CBufRet.f32 %6876, 1
  %6878 = call float @dx.op.unary.f32(i32 7, float %6877)  ; Saturate(value)
  %6879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6880 = extractvalue %dx.types.CBufRet.f32 %6879, 0
  %6881 = extractvalue %dx.types.CBufRet.f32 %6879, 1
  %6882 = fsub fast float %6778, %6880
  %6883 = fsub fast float %6782, %6881
  %6884 = fcmp fast olt float %6882, 0.000000e+00
  %6885 = fcmp fast olt float %6883, 0.000000e+00
  %6886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6887 = extractvalue %dx.types.CBufRet.f32 %6886, 0
  %6888 = extractvalue %dx.types.CBufRet.f32 %6886, 1
  %6889 = extractvalue %dx.types.CBufRet.f32 %6886, 2
  %6890 = extractvalue %dx.types.CBufRet.f32 %6886, 3
  %6891 = select i1 %6884, float %6887, float %6889
  %6892 = select i1 %6885, float %6888, float %6890
  %6893 = fmul fast float %6891, %6882
  %6894 = fmul fast float %6892, %6883
  %6895 = call float @dx.op.unary.f32(i32 6, float %6893)  ; FAbs(value)
  %6896 = call float @dx.op.unary.f32(i32 6, float %6894)  ; FAbs(value)
  %6897 = extractvalue %dx.types.CBufRet.f32 %6750, 0
  %6898 = call float @dx.op.binary.f32(i32 35, float %6895, float %6896)  ; FMax(a,b)
  %6899 = fsub fast float %6897, %6898
  %6900 = call float @dx.op.unary.f32(i32 7, float %6899)  ; Saturate(value)
  %6901 = call float @dx.op.binary.f32(i32 36, float %6900, float %6878)  ; FMin(a,b)
  %6902 = fmul fast float %6901, %6812
  %6903 = fsub fast float %6874, %6902
  %6904 = fsub fast float %6875, %6874
  %6905 = fsub fast float %6904, %6902
  %6906 = call float @dx.op.binary.f32(i32 35, float %6874, float %6875)  ; FMax(a,b)
  %6907 = call float @dx.op.binary.f32(i32 35, float %6902, float %6906)  ; FMax(a,b)
  %6908 = fcmp fast olt float %6907, 1.000000e+00
  br i1 %6908, label %6909, label %7307, !dx.controlflow.hints !98

; <label>:6909                                    ; preds = %6873
  %6910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6911 = extractvalue %dx.types.CBufRet.f32 %6910, 0
  %6912 = fcmp fast une float %6911, 0.000000e+00
  br i1 %6912, label %6913, label %7307, !dx.controlflow.hints !99

; <label>:6913                                    ; preds = %6909
  %6914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6915 = extractvalue %dx.types.CBufRet.f32 %6914, 0
  %6916 = extractvalue %dx.types.CBufRet.f32 %6914, 1
  %6917 = extractvalue %dx.types.CBufRet.f32 %6914, 2
  %6918 = extractvalue %dx.types.CBufRet.f32 %6914, 3
  %6919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6920 = extractvalue %dx.types.CBufRet.f32 %6919, 0
  %6921 = extractvalue %dx.types.CBufRet.f32 %6919, 1
  %6922 = extractvalue %dx.types.CBufRet.f32 %6919, 2
  %6923 = extractvalue %dx.types.CBufRet.f32 %6919, 3
  %6924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6925 = extractvalue %dx.types.CBufRet.f32 %6924, 0
  %6926 = extractvalue %dx.types.CBufRet.f32 %6924, 1
  %6927 = extractvalue %dx.types.CBufRet.f32 %6924, 2
  %6928 = extractvalue %dx.types.CBufRet.f32 %6924, 3
  %6929 = fmul fast float %6915, %6755
  %6930 = call float @dx.op.tertiary.f32(i32 46, float %6756, float %6916, float %6929)  ; FMad(a,b,c)
  %6931 = call float @dx.op.tertiary.f32(i32 46, float %6757, float %6917, float %6930)  ; FMad(a,b,c)
  %6932 = fadd fast float %6931, %6918
  %6933 = fmul fast float %6920, %6755
  %6934 = call float @dx.op.tertiary.f32(i32 46, float %6756, float %6921, float %6933)  ; FMad(a,b,c)
  %6935 = call float @dx.op.tertiary.f32(i32 46, float %6757, float %6922, float %6934)  ; FMad(a,b,c)
  %6936 = fadd fast float %6935, %6923
  %6937 = fmul fast float %6925, %6755
  %6938 = call float @dx.op.tertiary.f32(i32 46, float %6756, float %6926, float %6937)  ; FMad(a,b,c)
  %6939 = call float @dx.op.tertiary.f32(i32 46, float %6757, float %6927, float %6938)  ; FMad(a,b,c)
  %6940 = fadd fast float %6939, %6928
  %6941 = fcmp fast oge float %6932, 1.000000e+00
  %6942 = fcmp fast oge float %6936, 1.000000e+00
  %6943 = or i1 %6941, %6942
  %6944 = fcmp fast olt float %6932, 0.000000e+00
  %6945 = fcmp fast olt float %6936, 0.000000e+00
  %6946 = or i1 %6944, %6945
  %6947 = or i1 %6943, %6946
  br i1 %6947, label %7307, label %6948, !dx.controlflow.hints !100

; <label>:6948                                    ; preds = %6913
  %6949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6950 = extractvalue %dx.types.CBufRet.f32 %6949, 0
  %6951 = extractvalue %dx.types.CBufRet.f32 %6949, 1
  %6952 = extractvalue %dx.types.CBufRet.f32 %6949, 2
  %6953 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6954 = extractvalue %dx.types.CBufRet.i32 %6953, 2
  %6955 = uitofp i32 %6954 to float
  %6956 = extractvalue %dx.types.CBufRet.i32 %6953, 3
  %6957 = uitofp i32 %6956 to float
  %6958 = extractvalue %dx.types.CBufRet.f32 %6949, 3
  %6959 = fmul fast float %6958, 2.000000e+00
  %6960 = fsub fast float %6932, %6950
  %6961 = fsub fast float %6936, %6951
  %6962 = fmul fast float %6959, %6960
  %6963 = fmul fast float %6959, %6961
  %6964 = fdiv fast float 1.000000e+00, %6738
  %6965 = fmul fast float %6963, %6964
  %6966 = call float @dx.op.unary.f32(i32 6, float %6965)  ; FAbs(value)
  %6967 = fmul fast float %6952, %6757
  %6968 = fmul fast float %6967, %6959
  %6969 = call float @dx.op.unary.f32(i32 6, float %6968)  ; FAbs(value)
  %6970 = call float @dx.op.unary.f32(i32 6, float %6962)  ; FAbs(value)
  %6971 = call float @dx.op.binary.f32(i32 35, float %6969, float %6966)  ; FMax(a,b)
  %6972 = call float @dx.op.binary.f32(i32 35, float %6970, float %6971)  ; FMax(a,b)
  %6973 = fmul fast float %6972, 2.000000e+00
  %6974 = call float @dx.op.unary.f32(i32 23, float %6973)  ; Log(value)
  %6975 = call float @dx.op.binary.f32(i32 35, float %6974, float %6955)  ; FMax(a,b)
  %6976 = call float @dx.op.unary.f32(i32 22, float %6975)  ; Frc(value)
  %6977 = fadd fast float %6976, 0xBFEA666660000000
  %6978 = fmul fast float %6977, 8.000000e+00
  %6979 = call float @dx.op.unary.f32(i32 7, float %6978)  ; Saturate(value)
  %6980 = call float @dx.op.unary.f32(i32 27, float %6975)  ; Round_ni(value)
  %6981 = fadd fast float %6980, %6979
  %6982 = call float @dx.op.binary.f32(i32 36, float %6981, float %6957)  ; FMin(a,b)
  %6983 = call float @dx.op.unary.f32(i32 27, float %6982)  ; Round_ni(value)
  %6984 = fsub fast float -0.000000e+00, %6983
  %6985 = call float @dx.op.unary.f32(i32 21, float %6984)  ; Exp(value)
  %6986 = fmul fast float %6985, %6959
  %6987 = fmul fast float %6986, %6932
  %6988 = fmul fast float %6986, %6936
  %6989 = fmul fast float %6987, 2.500000e-01
  %6990 = fmul fast float %6988, 2.500000e-01
  %6991 = fadd fast float %6989, 5.000000e-01
  %6992 = fadd fast float %6990, 5.000000e-01
  %6993 = fsub fast float %6957, %6955
  %6994 = fptoui float %6993 to i32
  %6995 = add i32 %6994, 320
  %6996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %6995)  ; CBufferLoadLegacy(handle,regIndex)
  %6997 = extractvalue %dx.types.CBufRet.f32 %6996, 0
  %6998 = extractvalue %dx.types.CBufRet.f32 %6996, 1
  %6999 = fcmp fast une float %6982, %6957
  %7000 = fsub fast float %6932, %6997
  %7001 = fsub fast float %6936, %6998
  %7002 = call float @dx.op.unary.f32(i32 6, float %7000)  ; FAbs(value)
  %7003 = call float @dx.op.unary.f32(i32 6, float %7001)  ; FAbs(value)
  %7004 = fmul fast float %7002, %6986
  %7005 = fmul fast float %7003, %6986
  %7006 = fcmp fast olt float %7004, 1.000000e+00
  %7007 = fcmp fast olt float %7005, 1.000000e+00
  %7008 = and i1 %7006, %7007
  %7009 = or i1 %6999, %7008
  br i1 %7009, label %7010, label %7307, !dx.controlflow.hints !101

; <label>:7010                                    ; preds = %6948
  %7011 = fmul fast float %6988, 5.000000e-01
  %7012 = fmul fast float %6987, 5.000000e-01
  %7013 = fadd fast float %7011, 5.000000e-01
  %7014 = fadd fast float %7012, 5.000000e-01
  %7015 = sitofp i32 %6954 to float
  %7016 = fsub fast float %6982, %7015
  %7017 = call float @dx.op.unary.f32(i32 27, float %7016)  ; Round_ni(value)
  %7018 = call float @dx.op.unary.f32(i32 22, float %6982)  ; Frc(value)
  %7019 = call float @dx.op.unary.f32(i32 22, float %7014)  ; Frc(value)
  %7020 = call float @dx.op.unary.f32(i32 22, float %7013)  ; Frc(value)
  %7021 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %44, float %7019, float %7020, float %7017, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7022 = extractvalue %dx.types.ResRet.f32 %7021, 0
  %7023 = extractvalue %dx.types.ResRet.f32 %7021, 1
  %7024 = extractvalue %dx.types.ResRet.f32 %7021, 2
  %7025 = extractvalue %dx.types.ResRet.f32 %7021, 3
  %7026 = fcmp fast ogt float %7018, 0.000000e+00
  br i1 %7026, label %7027, label %7048, !dx.controlflow.hints !102

; <label>:7027                                    ; preds = %7010
  %7028 = fadd fast float %7017, 1.000000e+00
  %7029 = call float @dx.op.unary.f32(i32 22, float %6991)  ; Frc(value)
  %7030 = call float @dx.op.unary.f32(i32 22, float %6992)  ; Frc(value)
  %7031 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %44, float %7029, float %7030, float %7028, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7032 = extractvalue %dx.types.ResRet.f32 %7031, 0
  %7033 = extractvalue %dx.types.ResRet.f32 %7031, 1
  %7034 = extractvalue %dx.types.ResRet.f32 %7031, 2
  %7035 = extractvalue %dx.types.ResRet.f32 %7031, 3
  %7036 = fsub fast float %7032, %7022
  %7037 = fsub fast float %7033, %7023
  %7038 = fsub fast float %7034, %7024
  %7039 = fsub fast float %7035, %7025
  %7040 = fmul fast float %7036, %7018
  %7041 = fmul fast float %7037, %7018
  %7042 = fmul fast float %7038, %7018
  %7043 = fmul fast float %7039, %7018
  %7044 = fadd fast float %7040, %7022
  %7045 = fadd fast float %7041, %7023
  %7046 = fadd fast float %7042, %7024
  %7047 = fadd fast float %7043, %7025
  br label %7048

; <label>:7048                                    ; preds = %7027, %7010
  %7049 = phi float [ %7044, %7027 ], [ %7022, %7010 ]
  %7050 = phi float [ %7045, %7027 ], [ %7023, %7010 ]
  %7051 = phi float [ %7046, %7027 ], [ %7024, %7010 ]
  %7052 = phi float [ %7047, %7027 ], [ %7025, %7010 ]
  %7053 = fadd fast float %7049, -5.000000e-01
  %7054 = fadd fast float %7051, -5.000000e-01
  %7055 = fmul fast float %7053, 0xBFD5555560000000
  %7056 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7054, float %7055)  ; FMad(a,b,c)
  %7057 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7050, float 0.000000e+00)  ; FMad(a,b,c)
  %7058 = fadd fast float %7057, %7052
  %7059 = fmul fast float %7053, -7.500000e-01
  %7060 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7054, float %7059)  ; FMad(a,b,c)
  %7061 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7050, float 0.000000e+00)  ; FMad(a,b,c)
  %7062 = fadd fast float %7061, %7052
  %7063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %7064 = extractvalue %dx.types.CBufRet.f32 %7063, 0
  %7065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %7066 = extractvalue %dx.types.CBufRet.f32 %7065, 0
  %7067 = extractvalue %dx.types.CBufRet.f32 %7065, 1
  %7068 = extractvalue %dx.types.CBufRet.f32 %7065, 2
  %7069 = extractvalue %dx.types.CBufRet.f32 %7065, 3
  %7070 = fsub fast float %7066, %7056
  %7071 = fsub fast float %7067, %7058
  %7072 = fsub fast float %7068, %7060
  %7073 = fsub fast float %7069, %7062
  %7074 = fmul fast float %7070, %7064
  %7075 = fmul fast float %7071, %7064
  %7076 = fmul fast float %7072, %7064
  %7077 = fmul fast float %7073, %7064
  %7078 = fadd fast float %7074, %7056
  %7079 = fadd fast float %7075, %7058
  %7080 = fadd fast float %7076, %7060
  %7081 = fadd fast float %7077, %7062
  %7082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %7083 = extractvalue %dx.types.ResRet.i32 %7082, 0
  %7084 = and i32 %7083, 536870911
  %7085 = uitofp i32 %7084 to float
  %7086 = fmul fast float %7085, %6932
  %7087 = fmul fast float %7085, %6936
  %7088 = fptoui float %7086 to i32
  %7089 = fptoui float %7087 to i32
  %7090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7091 = extractvalue %dx.types.ResRet.i32 %7090, 0
  %7092 = and i32 %7091, 31
  %7093 = lshr i32 %7088, %7092
  %7094 = lshr i32 %7089, %7092
  %7095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7096 = extractvalue %dx.types.ResRet.i32 %7095, 0
  %7097 = and i32 %7096, 31
  %7098 = shl i32 1, %7097
  %7099 = call i32 @dx.op.binary.i32(i32 40, i32 %7098, i32 4)  ; UMin(a,b)
  %7100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %7101 = extractvalue %dx.types.ResRet.i32 %7100, 0
  %7102 = extractvalue %dx.types.ResRet.i32 %7100, 1
  %7103 = icmp eq i32 %7099, 0
  br i1 %7103, label %7145, label %7104

; <label>:7104                                    ; preds = %7048
  br label %7105

; <label>:7105                                    ; preds = %7133, %7104
  %7106 = phi i32 [ %7136, %7133 ], [ 0, %7104 ]
  %7107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7108 = extractvalue %dx.types.ResRet.i32 %7107, 0
  %7109 = lshr i32 %7108, 16
  %7110 = and i32 %7109, 31
  %7111 = shl i32 %7094, %7110
  %7112 = add i32 %7111, %7093
  %7113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7114 = extractvalue %dx.types.ResRet.i32 %7113, 0
  %7115 = and i32 %7114, 31
  %7116 = shl i32 %7112, %7115
  %7117 = add i32 %7116, %7106
  %7118 = shl i32 %7117, 2
  %7119 = add i32 %7118, 32
  %7120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %7119, i32 undef)  ; BufferLoad(srv,index,wot)
  %7121 = extractvalue %dx.types.ResRet.i32 %7120, 0
  %7122 = icmp slt i32 %7121, 0
  %7123 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7106
  %7124 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7106
  %7125 = bitcast float* %7123 to i32*
  %7126 = bitcast float* %7124 to i32*
  br i1 %7122, label %7127, label %7133

; <label>:7127                                    ; preds = %7105
  %7128 = and i32 %7121, 1073741823
  %7129 = add nuw nsw i32 %7128, 20
  %7130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %7129, i32 undef)  ; BufferLoad(srv,index,wot)
  %7131 = extractvalue %dx.types.ResRet.i32 %7130, 0
  %7132 = extractvalue %dx.types.ResRet.i32 %7130, 1
  br label %7133

; <label>:7133                                    ; preds = %7127, %7105
  %7134 = phi i32 [ %7131, %7127 ], [ %7101, %7105 ]
  %7135 = phi i32 [ %7132, %7127 ], [ %7102, %7105 ]
  store i32 %7134, i32* %7125, align 4
  store i32 %7135, i32* %7126, align 4
  %7136 = add nuw i32 %7106, 1
  %7137 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %7138 = extractvalue %dx.types.CBufRet.i32 %7137, 2
  %7139 = icmp eq i32 %7138, 0
  %7140 = icmp ugt i32 %7121, -1073741825
  %7141 = and i1 %7140, %7139
  %7142 = icmp ult i32 %7136, %7099
  %7143 = and i1 %7141, %7142
  br i1 %7143, label %7105, label %7144

; <label>:7144                                    ; preds = %7133
  br label %7145

; <label>:7145                                    ; preds = %7144, %7048
  %7146 = phi i32 [ 0, %7048 ], [ %7136, %7144 ]
  %7147 = extractvalue %dx.types.CBufRet.f32 %6910, 2
  %7148 = fptoui float %7147 to i32
  %7149 = icmp eq i32 %7148, 0
  br i1 %7149, label %7201, label %7150

; <label>:7150                                    ; preds = %7145
  br label %7151

; <label>:7151                                    ; preds = %7196, %7150
  %7152 = phi i32 [ %7197, %7196 ], [ %7146, %7150 ]
  %7153 = phi i32 [ %7198, %7196 ], [ 0, %7150 ]
  %7154 = lshr i32 %7153, 2
  %7155 = and i32 %7153, 3
  %7156 = add nuw nsw i32 %7154, 83
  %7157 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 %7156)  ; CBufferLoadLegacy(handle,regIndex)
  %7158 = extractvalue %dx.types.CBufRet.i32 %7157, 0
  %7159 = extractvalue %dx.types.CBufRet.i32 %7157, 1
  %7160 = extractvalue %dx.types.CBufRet.i32 %7157, 2
  %7161 = extractvalue %dx.types.CBufRet.i32 %7157, 3
  %7162 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 0
  store i32 %7158, i32* %7162, align 4
  %7163 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 1
  store i32 %7159, i32* %7163, align 4
  %7164 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 2
  store i32 %7160, i32* %7164, align 4
  %7165 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 3
  store i32 %7161, i32* %7165, align 4
  %7166 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 %7155
  %7167 = load i32, i32* %7166, align 4, !tbaa !103, !noalias !107
  %7168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7169 = extractvalue %dx.types.ResRet.i32 %7168, 0
  %7170 = lshr i32 %7169, 16
  %7171 = and i32 %7170, 31
  %7172 = shl i32 %7094, %7171
  %7173 = add i32 %7172, %7093
  %7174 = shl i32 %7173, 2
  %7175 = add i32 %7174, %7167
  %7176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %7175, i32 undef)  ; BufferLoad(srv,index,wot)
  %7177 = extractvalue %dx.types.ResRet.i32 %7176, 0
  %7178 = icmp eq i32 %7177, 0
  br i1 %7178, label %7196, label %7179

; <label>:7179                                    ; preds = %7151
  %7180 = icmp slt i32 %7177, 0
  %7181 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7152
  %7182 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7152
  %7183 = bitcast float* %7181 to i32*
  %7184 = bitcast float* %7182 to i32*
  br i1 %7180, label %7185, label %7192

; <label>:7185                                    ; preds = %7179
  %7186 = and i32 %7177, 1073741823
  %7187 = add i32 %7167, 20
  %7188 = add i32 %7187, %7186
  %7189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %7188, i32 undef)  ; BufferLoad(srv,index,wot)
  %7190 = extractvalue %dx.types.ResRet.i32 %7189, 0
  %7191 = extractvalue %dx.types.ResRet.i32 %7189, 1
  br label %7192

; <label>:7192                                    ; preds = %7185, %7179
  %7193 = phi i32 [ %7190, %7185 ], [ %7101, %7179 ]
  %7194 = phi i32 [ %7191, %7185 ], [ %7102, %7179 ]
  store i32 %7193, i32* %7183, align 4
  store i32 %7194, i32* %7184, align 4
  %7195 = add i32 %7152, 1
  br label %7196

; <label>:7196                                    ; preds = %7192, %7151
  %7197 = phi i32 [ %7152, %7151 ], [ %7195, %7192 ]
  %7198 = add nuw i32 %7153, 1
  %7199 = icmp eq i32 %7198, %7148
  br i1 %7199, label %7200, label %7151

; <label>:7200                                    ; preds = %7196
  br label %7201

; <label>:7201                                    ; preds = %7200, %7145
  %7202 = phi i32 [ %7146, %7145 ], [ %7197, %7200 ]
  %7203 = icmp eq i32 %7202, 1
  %7204 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 0
  %7205 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 0
  br i1 %7203, label %7206, label %7209

; <label>:7206                                    ; preds = %7201
  %7207 = load float, float* %7204, align 4
  %7208 = load float, float* %7205, align 4
  br label %7236

; <label>:7209                                    ; preds = %7201
  %7210 = load float, float* %7204, align 4
  %7211 = load float, float* %7205, align 4
  %7212 = fdiv fast float 1.000000e+00, %7211
  %7213 = fsub fast float %7210, %7212
  %7214 = icmp ugt i32 %7202, 1
  br i1 %7214, label %7215, label %7231

; <label>:7215                                    ; preds = %7209
  br label %7216

; <label>:7216                                    ; preds = %7216, %7215
  %7217 = phi float [ %7226, %7216 ], [ %7213, %7215 ]
  %7218 = phi float [ %7227, %7216 ], [ %7210, %7215 ]
  %7219 = phi i32 [ %7228, %7216 ], [ 1, %7215 ]
  %7220 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7219
  %7221 = load float, float* %7220, align 4
  %7222 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7219
  %7223 = load float, float* %7222, align 4
  %7224 = fdiv fast float 1.000000e+00, %7223
  %7225 = fsub fast float %7221, %7224
  %7226 = call float @dx.op.binary.f32(i32 36, float %7217, float %7225)  ; FMin(a,b)
  %7227 = call float @dx.op.binary.f32(i32 35, float %7218, float %7221)  ; FMax(a,b)
  %7228 = add nuw i32 %7219, 1
  %7229 = icmp eq i32 %7228, %7202
  br i1 %7229, label %7230, label %7216

; <label>:7230                                    ; preds = %7216
  br label %7231

; <label>:7231                                    ; preds = %7230, %7209
  %7232 = phi float [ %7213, %7209 ], [ %7226, %7230 ]
  %7233 = phi float [ %7210, %7209 ], [ %7227, %7230 ]
  %7234 = fsub fast float %7233, %7232
  %7235 = fdiv fast float 1.000000e+00, %7234
  br label %7236

; <label>:7236                                    ; preds = %7231, %7206
  %7237 = phi float [ %7207, %7206 ], [ %7233, %7231 ]
  %7238 = phi float [ %7208, %7206 ], [ %7235, %7231 ]
  %7239 = fadd fast float %6940, %7237
  %7240 = fmul fast float %7239, %7238
  %7241 = call float @dx.op.unary.f32(i32 7, float %7240)  ; Saturate(value)
  %7242 = fmul fast float %7241, 2.000000e+00
  %7243 = fsub fast float 1.000000e+00, %7242
  %7244 = fmul fast float %7078, %7078
  %7245 = fsub fast float %7079, %7244
  %7246 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7245)  ; FMax(a,b)
  %7247 = fdiv fast float 1.000000e+00, %7246
  %7248 = fmul fast float %7079, %7078
  %7249 = fsub fast float %7080, %7248
  %7250 = fsub fast float %7243, %7078
  %7251 = fmul fast float %7243, %7243
  %7252 = fsub fast float %7251, %7079
  %7253 = fmul fast float %7247, %7249
  %7254 = fmul fast float %7253, %7250
  %7255 = fsub fast float %7252, %7254
  %7256 = fmul fast float %7079, %7079
  %7257 = fsub fast float %7081, %7256
  %7258 = fmul fast float %7249, %7249
  %7259 = fmul fast float %7258, %7247
  %7260 = fsub fast float %7257, %7259
  %7261 = fdiv fast float %7255, %7260
  %7262 = fmul fast float %7261, %7249
  %7263 = fsub fast float %7250, %7262
  %7264 = fmul fast float %7263, %7247
  %7265 = fmul fast float %7264, %7078
  %7266 = fsub fast float 1.000000e+00, %7265
  %7267 = fmul fast float %7261, %7079
  %7268 = fsub fast float %7266, %7267
  %7269 = fmul fast float %7264, %7264
  %7270 = fmul fast float %7261, 4.000000e+00
  %7271 = fmul fast float %7270, %7268
  %7272 = fsub fast float %7269, %7271
  %7273 = call float @dx.op.unary.f32(i32 24, float %7272)  ; Sqrt(value)
  %7274 = fcmp fast oge float %7264, 0.000000e+00
  %7275 = fsub fast float -0.000000e+00, %7273
  %7276 = select i1 %7274, float %7275, float %7273
  %7277 = fsub fast float %7276, %7264
  %7278 = fdiv fast float %7277, %7261
  %7279 = fdiv fast float %7268, %7277
  %7280 = fmul fast float %7278, 5.000000e-01
  %7281 = fmul fast float %7279, 2.000000e+00
  %7282 = select i1 %7274, float %7280, float %7281
  %7283 = select i1 %7274, float %7281, float %7280
  %7284 = call float @dx.op.binary.f32(i32 35, float %7282, float %7283)  ; FMax(a,b)
  %7285 = call float @dx.op.binary.f32(i32 36, float %7282, float %7283)  ; FMin(a,b)
  %7286 = fcmp fast ogt float %7243, %7284
  %7287 = fsub fast float %7243, %7285
  %7288 = fsub fast float %7243, %7284
  %7289 = fsub fast float %7284, %7285
  %7290 = select i1 %7286, float %7288, float %7289
  %7291 = fmul float %7287, %7290
  %7292 = select i1 %7286, float %7285, float %7243
  %7293 = fcmp fast ogt float %7243, %7285
  %7294 = fmul fast float %7292, %7284
  %7295 = fadd fast float %7292, %7284
  %7296 = fmul fast float %7295, %7078
  %7297 = fadd fast float %7294, %7079
  %7298 = fsub fast float %7297, %7296
  %7299 = fdiv fast float %7298, %7291
  %7300 = select i1 %7293, float %7299, float 0.000000e+00
  %7301 = fsub fast float 1.000000e+00, %7300
  %7302 = select i1 %7286, float %7301, float %7300
  %7303 = call float @dx.op.unary.f32(i32 7, float %7302)  ; Saturate(value)
  %7304 = extractvalue %dx.types.CBufRet.f32 %7063, 3
  %7305 = fmul fast float %7304, %7303
  %7306 = fsub fast float 1.000000e+00, %7305
  br label %7307

; <label>:7307                                    ; preds = %7236, %6948, %6913, %6909, %6873
  %7308 = phi float [ 1.000000e+00, %6873 ], [ %7306, %7236 ], [ 1.000000e+00, %6913 ], [ 1.000000e+00, %6948 ], [ 1.000000e+00, %6909 ]
  %7309 = fcmp fast ogt float %6905, 0.000000e+00
  br i1 %7309, label %7310, label %7474, !dx.controlflow.hints !116

; <label>:7310                                    ; preds = %7307
  %7311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7312 = extractvalue %dx.types.CBufRet.f32 %7311, 2
  %7313 = fadd fast float %7312, %6786
  %7314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7315 = extractvalue %dx.types.CBufRet.f32 %7314, 2
  %7316 = extractvalue %dx.types.CBufRet.f32 %7314, 3
  %7317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7318 = extractvalue %dx.types.CBufRet.f32 %7317, 2
  %7319 = call float @dx.op.binary.f32(i32 35, float %7313, float 0.000000e+00)  ; FMax(a,b)
  %7320 = fadd fast float %7319, 0x3F10000000000000
  %7321 = fcmp fast oeq float %7318, 0.000000e+00
  br i1 %7321, label %7322, label %7389

; <label>:7322                                    ; preds = %7310
  %7323 = extractvalue %dx.types.CBufRet.f32 %7314, 1
  %7324 = extractvalue %dx.types.CBufRet.f32 %7314, 0
  %7325 = fmul fast float %7324, %6804
  %7326 = fmul fast float %7323, %6805
  %7327 = fadd fast float %7325, 5.000000e-01
  %7328 = call float @dx.op.unary.f32(i32 27, float %7327)  ; Round_ni(value)
  %7329 = fadd fast float %7326, 5.000000e-01
  %7330 = call float @dx.op.unary.f32(i32 27, float %7329)  ; Round_ni(value)
  %7331 = fsub fast float %7327, %7328
  %7332 = fsub fast float %7329, %7330
  %7333 = fadd fast float %7328, -5.000000e-01
  %7334 = fadd fast float %7330, -5.000000e-01
  %7335 = fmul fast float %7331, 2.000000e+00
  %7336 = fsub fast float 3.000000e+00, %7335
  %7337 = fadd fast float %7335, 1.000000e+00
  %7338 = fsub fast float 2.000000e+00, %7331
  %7339 = bitcast float %7336 to i32
  %7340 = sub nsw i32 2129859010, %7339
  %7341 = bitcast i32 %7340 to float
  %7342 = fmul fast float %7341, %7338
  %7343 = fadd fast float %7342, -1.000000e+00
  %7344 = bitcast float %7337 to i32
  %7345 = sub nsw i32 2129859010, %7344
  %7346 = bitcast i32 %7345 to float
  %7347 = fmul fast float %7346, %7331
  %7348 = fadd fast float %7347, 1.000000e+00
  %7349 = fmul fast float %7332, 2.000000e+00
  %7350 = fsub fast float 3.000000e+00, %7349
  %7351 = fadd fast float %7349, 1.000000e+00
  %7352 = fsub fast float 2.000000e+00, %7332
  %7353 = bitcast float %7350 to i32
  %7354 = sub nsw i32 2129859010, %7353
  %7355 = bitcast i32 %7354 to float
  %7356 = fmul fast float %7355, %7352
  %7357 = fadd fast float %7356, -1.000000e+00
  %7358 = bitcast float %7351 to i32
  %7359 = sub nsw i32 2129859010, %7358
  %7360 = bitcast i32 %7359 to float
  %7361 = fmul fast float %7360, %7332
  %7362 = fadd fast float %7361, 1.000000e+00
  %7363 = fadd fast float %7343, %7333
  %7364 = fmul fast float %7363, %7315
  %7365 = fadd fast float %7357, %7334
  %7366 = fmul fast float %7365, %7316
  %7367 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %47, float %7364, float %7366, float undef, float undef, i32 0, i32 0, i32 undef, float %7320)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7368 = extractvalue %dx.types.ResRet.f32 %7367, 0
  %7369 = fmul fast float %7368, %7336
  %7370 = fadd fast float %7348, %7333
  %7371 = fmul fast float %7370, %7315
  %7372 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %47, float %7371, float %7366, float undef, float undef, i32 0, i32 0, i32 undef, float %7320)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7373 = extractvalue %dx.types.ResRet.f32 %7372, 0
  %7374 = fmul fast float %7373, %7337
  %7375 = fadd fast float %7362, %7334
  %7376 = fmul fast float %7375, %7316
  %7377 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %47, float %7364, float %7376, float undef, float undef, i32 0, i32 0, i32 undef, float %7320)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7378 = extractvalue %dx.types.ResRet.f32 %7377, 0
  %7379 = fmul fast float %7378, %7336
  %7380 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %47, float %7371, float %7376, float undef, float undef, i32 0, i32 0, i32 undef, float %7320)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7381 = extractvalue %dx.types.ResRet.f32 %7380, 0
  %7382 = fmul fast float %7381, %7337
  %7383 = fadd fast float %7382, %7379
  %7384 = fmul fast float %7383, %7351
  %7385 = fadd fast float %7374, %7369
  %7386 = fmul fast float %7385, %7350
  %7387 = fadd fast float %7386, %7384
  %7388 = fmul fast float %7387, 6.250000e-02
  br label %7474

; <label>:7389                                    ; preds = %7310
  %7390 = fmul fast float %277, 0x401921FB60000000
  %7391 = call float @dx.op.unary.f32(i32 13, float %7390)  ; Sin(value)
  %7392 = call float @dx.op.unary.f32(i32 12, float %7390)  ; Cos(value)
  %7393 = fsub fast float -0.000000e+00, %7391
  br label %7394

; <label>:7394                                    ; preds = %7443, %7389
  %7395 = phi float [ 0.000000e+00, %7389 ], [ %7438, %7443 ]
  %7396 = phi float [ 0.000000e+00, %7389 ], [ %7440, %7443 ]
  %7397 = phi i32 [ 0, %7389 ], [ %7444, %7443 ]
  %7398 = mul i32 %7397, 2
  %7399 = add i32 0, %7398
  %7400 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7399
  %7401 = load float, float* %7400, align 4
  %7402 = mul i32 %7397, 2
  %7403 = add i32 1, %7402
  %7404 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7403
  %7405 = load float, float* %7404, align 4
  %7406 = fmul fast float %7401, %7392
  %7407 = call float @dx.op.tertiary.f32(i32 46, float %7405, float %7393, float %7406)  ; FMad(a,b,c)
  %7408 = fmul fast float %7401, %7391
  %7409 = call float @dx.op.tertiary.f32(i32 46, float %7405, float %7392, float %7408)  ; FMad(a,b,c)
  %7410 = fmul fast float %7407, %7318
  %7411 = fmul fast float %7409, %7318
  %7412 = fadd fast float %7410, %6804
  %7413 = fadd fast float %7411, %6805
  %7414 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %46, float %7412, float %7413, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7415 = extractvalue %dx.types.ResRet.f32 %7414, 0
  %7416 = extractvalue %dx.types.ResRet.f32 %7414, 1
  %7417 = extractvalue %dx.types.ResRet.f32 %7414, 2
  %7418 = extractvalue %dx.types.ResRet.f32 %7414, 3
  %7419 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 0
  store float %7415, float* %7419, align 4
  %7420 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 1
  store float %7416, float* %7420, align 4
  %7421 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 2
  store float %7417, float* %7421, align 4
  %7422 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 3
  store float %7418, float* %7422, align 4
  %7423 = fsub fast float %7415, %7320
  %7424 = fcmp fast olt float %7423, 0.000000e+00
  %7425 = select i1 %7424, float 0.000000e+00, float 1.000000e+00
  %7426 = fadd fast float %7425, %7395
  %7427 = fmul fast float %7425, %7423
  %7428 = fadd fast float %7427, %7396
  br label %7429

; <label>:7429                                    ; preds = %7429, %7394
  %7430 = phi i32 [ 1, %7394 ], [ %7441, %7429 ]
  %7431 = phi float [ %7428, %7394 ], [ %7440, %7429 ]
  %7432 = phi float [ %7426, %7394 ], [ %7438, %7429 ]
  %7433 = getelementptr [4 x float], [4 x float]* %104, i32 0, i32 %7430
  %7434 = load float, float* %7433, align 4, !tbaa !117, !noalias !107
  %7435 = fsub fast float %7434, %7320
  %7436 = fcmp fast olt float %7435, 0.000000e+00
  %7437 = select i1 %7436, float 0.000000e+00, float 1.000000e+00
  %7438 = fadd fast float %7437, %7432
  %7439 = fmul fast float %7437, %7435
  %7440 = fadd fast float %7439, %7431
  %7441 = add nuw nsw i32 %7430, 1
  %7442 = icmp eq i32 %7441, 4
  br i1 %7442, label %7443, label %7429, !llvm.loop !119

; <label>:7443                                    ; preds = %7429
  %7444 = add nuw nsw i32 %7397, 1
  %7445 = icmp eq i32 %7444, 8
  br i1 %7445, label %7446, label %7394, !llvm.loop !120

; <label>:7446                                    ; preds = %7443
  %7447 = fdiv fast float 1.000000e+00, %7438
  %7448 = fmul fast float %7447, %7440
  %7449 = fdiv fast float 1.000000e+00, %7320
  %7450 = fmul fast float %7448, %7449
  %7451 = call float @dx.op.unary.f32(i32 7, float %7450)  ; Saturate(value)
  %7452 = call float @dx.op.binary.f32(i32 35, float %7451, float 0.000000e+00)  ; FMax(a,b)
  %7453 = fmul fast float %7438, 3.125000e-02
  %7454 = call float @dx.op.unary.f32(i32 7, float %7453)  ; Saturate(value)
  %7455 = fmul fast float %7454, 2.000000e+00
  %7456 = fadd fast float %7455, -1.000000e+00
  %7457 = fcmp fast ogt float %7456, 0.000000e+00
  %7458 = fcmp fast olt float %7456, 0.000000e+00
  %7459 = zext i1 %7457 to i32
  %7460 = zext i1 %7458 to i32
  %7461 = sub nsw i32 %7459, %7460
  %7462 = sitofp i32 %7461 to float
  %7463 = fmul fast float %7462, %7456
  %7464 = fsub fast float 1.000000e+00, %7463
  %7465 = fmul fast float %7464, %7464
  %7466 = fmul fast float %7465, %7464
  %7467 = fsub fast float %7464, %7466
  %7468 = fmul fast float %7467, %7452
  %7469 = fsub fast float 1.000000e+00, %7466
  %7470 = fsub fast float %7469, %7468
  %7471 = fmul fast float %7462, 5.000000e-01
  %7472 = fmul fast float %7471, %7470
  %7473 = fsub fast float 5.000000e-01, %7472
  br label %7474

; <label>:7474                                    ; preds = %7446, %7322, %7307
  %7475 = phi float [ 1.000000e+00, %7307 ], [ %7388, %7322 ], [ %7473, %7446 ]
  %7476 = fcmp fast ogt float %6903, 0.000000e+00
  br i1 %7476, label %7477, label %7641, !dx.controlflow.hints !121

; <label>:7477                                    ; preds = %7474
  %7478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7479 = extractvalue %dx.types.CBufRet.f32 %7478, 1
  %7480 = fadd fast float %7479, %6786
  %7481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7482 = extractvalue %dx.types.CBufRet.f32 %7481, 2
  %7483 = extractvalue %dx.types.CBufRet.f32 %7481, 3
  %7484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7485 = extractvalue %dx.types.CBufRet.f32 %7484, 1
  %7486 = call float @dx.op.binary.f32(i32 35, float %7480, float 0.000000e+00)  ; FMax(a,b)
  %7487 = fadd fast float %7486, 0x3F10000000000000
  %7488 = fcmp fast oeq float %7485, 0.000000e+00
  br i1 %7488, label %7489, label %7556

; <label>:7489                                    ; preds = %7477
  %7490 = extractvalue %dx.types.CBufRet.f32 %7481, 1
  %7491 = extractvalue %dx.types.CBufRet.f32 %7481, 0
  %7492 = fmul fast float %7491, %6796
  %7493 = fmul fast float %7490, %6797
  %7494 = fadd fast float %7492, 5.000000e-01
  %7495 = call float @dx.op.unary.f32(i32 27, float %7494)  ; Round_ni(value)
  %7496 = fadd fast float %7493, 5.000000e-01
  %7497 = call float @dx.op.unary.f32(i32 27, float %7496)  ; Round_ni(value)
  %7498 = fsub fast float %7494, %7495
  %7499 = fsub fast float %7496, %7497
  %7500 = fadd fast float %7495, -5.000000e-01
  %7501 = fadd fast float %7497, -5.000000e-01
  %7502 = fmul fast float %7498, 2.000000e+00
  %7503 = fsub fast float 3.000000e+00, %7502
  %7504 = fadd fast float %7502, 1.000000e+00
  %7505 = fsub fast float 2.000000e+00, %7498
  %7506 = bitcast float %7503 to i32
  %7507 = sub nsw i32 2129859010, %7506
  %7508 = bitcast i32 %7507 to float
  %7509 = fmul fast float %7508, %7505
  %7510 = fadd fast float %7509, -1.000000e+00
  %7511 = bitcast float %7504 to i32
  %7512 = sub nsw i32 2129859010, %7511
  %7513 = bitcast i32 %7512 to float
  %7514 = fmul fast float %7513, %7498
  %7515 = fadd fast float %7514, 1.000000e+00
  %7516 = fmul fast float %7499, 2.000000e+00
  %7517 = fsub fast float 3.000000e+00, %7516
  %7518 = fadd fast float %7516, 1.000000e+00
  %7519 = fsub fast float 2.000000e+00, %7499
  %7520 = bitcast float %7517 to i32
  %7521 = sub nsw i32 2129859010, %7520
  %7522 = bitcast i32 %7521 to float
  %7523 = fmul fast float %7522, %7519
  %7524 = fadd fast float %7523, -1.000000e+00
  %7525 = bitcast float %7518 to i32
  %7526 = sub nsw i32 2129859010, %7525
  %7527 = bitcast i32 %7526 to float
  %7528 = fmul fast float %7527, %7499
  %7529 = fadd fast float %7528, 1.000000e+00
  %7530 = fadd fast float %7510, %7500
  %7531 = fmul fast float %7530, %7482
  %7532 = fadd fast float %7524, %7501
  %7533 = fmul fast float %7532, %7483
  %7534 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %47, float %7531, float %7533, float undef, float undef, i32 0, i32 0, i32 undef, float %7487)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7535 = extractvalue %dx.types.ResRet.f32 %7534, 0
  %7536 = fmul fast float %7535, %7503
  %7537 = fadd fast float %7515, %7500
  %7538 = fmul fast float %7537, %7482
  %7539 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %47, float %7538, float %7533, float undef, float undef, i32 0, i32 0, i32 undef, float %7487)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7540 = extractvalue %dx.types.ResRet.f32 %7539, 0
  %7541 = fmul fast float %7540, %7504
  %7542 = fadd fast float %7529, %7501
  %7543 = fmul fast float %7542, %7483
  %7544 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %47, float %7531, float %7543, float undef, float undef, i32 0, i32 0, i32 undef, float %7487)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7545 = extractvalue %dx.types.ResRet.f32 %7544, 0
  %7546 = fmul fast float %7545, %7503
  %7547 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %47, float %7538, float %7543, float undef, float undef, i32 0, i32 0, i32 undef, float %7487)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7548 = extractvalue %dx.types.ResRet.f32 %7547, 0
  %7549 = fmul fast float %7548, %7504
  %7550 = fadd fast float %7549, %7546
  %7551 = fmul fast float %7550, %7518
  %7552 = fadd fast float %7541, %7536
  %7553 = fmul fast float %7552, %7517
  %7554 = fadd fast float %7553, %7551
  %7555 = fmul fast float %7554, 6.250000e-02
  br label %7641

; <label>:7556                                    ; preds = %7477
  %7557 = fmul fast float %277, 0x401921FB60000000
  %7558 = call float @dx.op.unary.f32(i32 13, float %7557)  ; Sin(value)
  %7559 = call float @dx.op.unary.f32(i32 12, float %7557)  ; Cos(value)
  %7560 = fsub fast float -0.000000e+00, %7558
  br label %7561

; <label>:7561                                    ; preds = %7610, %7556
  %7562 = phi float [ 0.000000e+00, %7556 ], [ %7605, %7610 ]
  %7563 = phi float [ 0.000000e+00, %7556 ], [ %7607, %7610 ]
  %7564 = phi i32 [ 0, %7556 ], [ %7611, %7610 ]
  %7565 = mul i32 %7564, 2
  %7566 = add i32 0, %7565
  %7567 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7566
  %7568 = load float, float* %7567, align 4
  %7569 = mul i32 %7564, 2
  %7570 = add i32 1, %7569
  %7571 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7570
  %7572 = load float, float* %7571, align 4
  %7573 = fmul fast float %7568, %7559
  %7574 = call float @dx.op.tertiary.f32(i32 46, float %7572, float %7560, float %7573)  ; FMad(a,b,c)
  %7575 = fmul fast float %7568, %7558
  %7576 = call float @dx.op.tertiary.f32(i32 46, float %7572, float %7559, float %7575)  ; FMad(a,b,c)
  %7577 = fmul fast float %7574, %7485
  %7578 = fmul fast float %7576, %7485
  %7579 = fadd fast float %7577, %6796
  %7580 = fadd fast float %7578, %6797
  %7581 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %46, float %7579, float %7580, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7582 = extractvalue %dx.types.ResRet.f32 %7581, 0
  %7583 = extractvalue %dx.types.ResRet.f32 %7581, 1
  %7584 = extractvalue %dx.types.ResRet.f32 %7581, 2
  %7585 = extractvalue %dx.types.ResRet.f32 %7581, 3
  %7586 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 0
  store float %7582, float* %7586, align 4
  %7587 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 1
  store float %7583, float* %7587, align 4
  %7588 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 2
  store float %7584, float* %7588, align 4
  %7589 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 3
  store float %7585, float* %7589, align 4
  %7590 = fsub fast float %7582, %7487
  %7591 = fcmp fast olt float %7590, 0.000000e+00
  %7592 = select i1 %7591, float 0.000000e+00, float 1.000000e+00
  %7593 = fadd fast float %7592, %7562
  %7594 = fmul fast float %7592, %7590
  %7595 = fadd fast float %7594, %7563
  br label %7596

; <label>:7596                                    ; preds = %7596, %7561
  %7597 = phi i32 [ 1, %7561 ], [ %7608, %7596 ]
  %7598 = phi float [ %7595, %7561 ], [ %7607, %7596 ]
  %7599 = phi float [ %7593, %7561 ], [ %7605, %7596 ]
  %7600 = getelementptr [4 x float], [4 x float]* %103, i32 0, i32 %7597
  %7601 = load float, float* %7600, align 4, !tbaa !117, !noalias !107
  %7602 = fsub fast float %7601, %7487
  %7603 = fcmp fast olt float %7602, 0.000000e+00
  %7604 = select i1 %7603, float 0.000000e+00, float 1.000000e+00
  %7605 = fadd fast float %7604, %7599
  %7606 = fmul fast float %7604, %7602
  %7607 = fadd fast float %7606, %7598
  %7608 = add nuw nsw i32 %7597, 1
  %7609 = icmp eq i32 %7608, 4
  br i1 %7609, label %7610, label %7596, !llvm.loop !119

; <label>:7610                                    ; preds = %7596
  %7611 = add nuw nsw i32 %7564, 1
  %7612 = icmp eq i32 %7611, 8
  br i1 %7612, label %7613, label %7561, !llvm.loop !120

; <label>:7613                                    ; preds = %7610
  %7614 = fdiv fast float 1.000000e+00, %7605
  %7615 = fmul fast float %7614, %7607
  %7616 = fdiv fast float 1.000000e+00, %7487
  %7617 = fmul fast float %7615, %7616
  %7618 = call float @dx.op.unary.f32(i32 7, float %7617)  ; Saturate(value)
  %7619 = call float @dx.op.binary.f32(i32 35, float %7618, float 0.000000e+00)  ; FMax(a,b)
  %7620 = fmul fast float %7605, 3.125000e-02
  %7621 = call float @dx.op.unary.f32(i32 7, float %7620)  ; Saturate(value)
  %7622 = fmul fast float %7621, 2.000000e+00
  %7623 = fadd fast float %7622, -1.000000e+00
  %7624 = fcmp fast ogt float %7623, 0.000000e+00
  %7625 = fcmp fast olt float %7623, 0.000000e+00
  %7626 = zext i1 %7624 to i32
  %7627 = zext i1 %7625 to i32
  %7628 = sub nsw i32 %7626, %7627
  %7629 = sitofp i32 %7628 to float
  %7630 = fmul fast float %7629, %7623
  %7631 = fsub fast float 1.000000e+00, %7630
  %7632 = fmul fast float %7631, %7631
  %7633 = fmul fast float %7632, %7631
  %7634 = fsub fast float %7631, %7633
  %7635 = fmul fast float %7634, %7619
  %7636 = fsub fast float 1.000000e+00, %7633
  %7637 = fsub fast float %7636, %7635
  %7638 = fmul fast float %7629, 5.000000e-01
  %7639 = fmul fast float %7638, %7637
  %7640 = fsub fast float 5.000000e-01, %7639
  br label %7641

; <label>:7641                                    ; preds = %7613, %7489, %7474
  %7642 = phi float [ 1.000000e+00, %7474 ], [ %7555, %7489 ], [ %7640, %7613 ]
  %7643 = fcmp fast ogt float %6902, 0.000000e+00
  br i1 %7643, label %7644, label %7962, !dx.controlflow.hints !122

; <label>:7644                                    ; preds = %7641
  %7645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7646 = extractvalue %dx.types.CBufRet.f32 %7645, 0
  %7647 = fadd fast float %7646, %6786
  %7648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7649 = extractvalue %dx.types.CBufRet.f32 %7648, 2
  %7650 = extractvalue %dx.types.CBufRet.f32 %7648, 3
  %7651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7652 = extractvalue %dx.types.CBufRet.f32 %7651, 0
  %7653 = call float @dx.op.binary.f32(i32 35, float %7647, float 0.000000e+00)  ; FMax(a,b)
  %7654 = fadd fast float %7653, 0x3F10000000000000
  %7655 = fcmp fast oeq float %7652, 0.000000e+00
  br i1 %6789, label %7656, label %7809, !dx.controlflow.hints !123

; <label>:7656                                    ; preds = %7644
  br i1 %7655, label %7657, label %7724

; <label>:7657                                    ; preds = %7656
  %7658 = extractvalue %dx.types.CBufRet.f32 %7648, 1
  %7659 = extractvalue %dx.types.CBufRet.f32 %7648, 0
  %7660 = fmul fast float %7659, %6778
  %7661 = fmul fast float %7658, %6782
  %7662 = fadd fast float %7660, 5.000000e-01
  %7663 = call float @dx.op.unary.f32(i32 27, float %7662)  ; Round_ni(value)
  %7664 = fadd fast float %7661, 5.000000e-01
  %7665 = call float @dx.op.unary.f32(i32 27, float %7664)  ; Round_ni(value)
  %7666 = fsub fast float %7662, %7663
  %7667 = fsub fast float %7664, %7665
  %7668 = fadd fast float %7663, -5.000000e-01
  %7669 = fadd fast float %7665, -5.000000e-01
  %7670 = fmul fast float %7666, 2.000000e+00
  %7671 = fsub fast float 3.000000e+00, %7670
  %7672 = fadd fast float %7670, 1.000000e+00
  %7673 = fsub fast float 2.000000e+00, %7666
  %7674 = bitcast float %7671 to i32
  %7675 = sub nsw i32 2129859010, %7674
  %7676 = bitcast i32 %7675 to float
  %7677 = fmul fast float %7676, %7673
  %7678 = fadd fast float %7677, -1.000000e+00
  %7679 = bitcast float %7672 to i32
  %7680 = sub nsw i32 2129859010, %7679
  %7681 = bitcast i32 %7680 to float
  %7682 = fmul fast float %7681, %7666
  %7683 = fadd fast float %7682, 1.000000e+00
  %7684 = fmul fast float %7667, 2.000000e+00
  %7685 = fsub fast float 3.000000e+00, %7684
  %7686 = fadd fast float %7684, 1.000000e+00
  %7687 = fsub fast float 2.000000e+00, %7667
  %7688 = bitcast float %7685 to i32
  %7689 = sub nsw i32 2129859010, %7688
  %7690 = bitcast i32 %7689 to float
  %7691 = fmul fast float %7690, %7687
  %7692 = fadd fast float %7691, -1.000000e+00
  %7693 = bitcast float %7686 to i32
  %7694 = sub nsw i32 2129859010, %7693
  %7695 = bitcast i32 %7694 to float
  %7696 = fmul fast float %7695, %7667
  %7697 = fadd fast float %7696, 1.000000e+00
  %7698 = fadd fast float %7678, %7668
  %7699 = fmul fast float %7698, %7649
  %7700 = fadd fast float %7692, %7669
  %7701 = fmul fast float %7700, %7650
  %7702 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %47, float %7699, float %7701, float undef, float undef, i32 0, i32 0, i32 undef, float %7654)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7703 = extractvalue %dx.types.ResRet.f32 %7702, 0
  %7704 = fmul fast float %7703, %7671
  %7705 = fadd fast float %7683, %7668
  %7706 = fmul fast float %7705, %7649
  %7707 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %47, float %7706, float %7701, float undef, float undef, i32 0, i32 0, i32 undef, float %7654)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7708 = extractvalue %dx.types.ResRet.f32 %7707, 0
  %7709 = fmul fast float %7708, %7672
  %7710 = fadd fast float %7697, %7669
  %7711 = fmul fast float %7710, %7650
  %7712 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %47, float %7699, float %7711, float undef, float undef, i32 0, i32 0, i32 undef, float %7654)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7713 = extractvalue %dx.types.ResRet.f32 %7712, 0
  %7714 = fmul fast float %7713, %7671
  %7715 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %47, float %7706, float %7711, float undef, float undef, i32 0, i32 0, i32 undef, float %7654)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7716 = extractvalue %dx.types.ResRet.f32 %7715, 0
  %7717 = fmul fast float %7716, %7672
  %7718 = fadd fast float %7717, %7714
  %7719 = fmul fast float %7718, %7686
  %7720 = fadd fast float %7709, %7704
  %7721 = fmul fast float %7720, %7685
  %7722 = fadd fast float %7721, %7719
  %7723 = fmul fast float %7722, 6.250000e-02
  br label %7962

; <label>:7724                                    ; preds = %7656
  %7725 = fmul fast float %277, 0x401921FB60000000
  %7726 = call float @dx.op.unary.f32(i32 13, float %7725)  ; Sin(value)
  %7727 = call float @dx.op.unary.f32(i32 12, float %7725)  ; Cos(value)
  %7728 = fsub fast float -0.000000e+00, %7726
  br label %7729

; <label>:7729                                    ; preds = %7778, %7724
  %7730 = phi float [ 0.000000e+00, %7724 ], [ %7773, %7778 ]
  %7731 = phi float [ 0.000000e+00, %7724 ], [ %7775, %7778 ]
  %7732 = phi i32 [ 0, %7724 ], [ %7779, %7778 ]
  %7733 = mul i32 %7732, 2
  %7734 = add i32 0, %7733
  %7735 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7734
  %7736 = load float, float* %7735, align 4
  %7737 = mul i32 %7732, 2
  %7738 = add i32 1, %7737
  %7739 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7738
  %7740 = load float, float* %7739, align 4
  %7741 = fmul fast float %7736, %7727
  %7742 = call float @dx.op.tertiary.f32(i32 46, float %7740, float %7728, float %7741)  ; FMad(a,b,c)
  %7743 = fmul fast float %7736, %7726
  %7744 = call float @dx.op.tertiary.f32(i32 46, float %7740, float %7727, float %7743)  ; FMad(a,b,c)
  %7745 = fmul fast float %7742, %7652
  %7746 = fmul fast float %7744, %7652
  %7747 = fadd fast float %7745, %6778
  %7748 = fadd fast float %7746, %6782
  %7749 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %46, float %7747, float %7748, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7750 = extractvalue %dx.types.ResRet.f32 %7749, 0
  %7751 = extractvalue %dx.types.ResRet.f32 %7749, 1
  %7752 = extractvalue %dx.types.ResRet.f32 %7749, 2
  %7753 = extractvalue %dx.types.ResRet.f32 %7749, 3
  %7754 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %7750, float* %7754, align 4
  %7755 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %7751, float* %7755, align 4
  %7756 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %7752, float* %7756, align 4
  %7757 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %7753, float* %7757, align 4
  %7758 = fsub fast float %7750, %7654
  %7759 = fcmp fast olt float %7758, 0.000000e+00
  %7760 = select i1 %7759, float 0.000000e+00, float 1.000000e+00
  %7761 = fadd fast float %7760, %7730
  %7762 = fmul fast float %7760, %7758
  %7763 = fadd fast float %7762, %7731
  br label %7764

; <label>:7764                                    ; preds = %7764, %7729
  %7765 = phi i32 [ 1, %7729 ], [ %7776, %7764 ]
  %7766 = phi float [ %7763, %7729 ], [ %7775, %7764 ]
  %7767 = phi float [ %7761, %7729 ], [ %7773, %7764 ]
  %7768 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %7765
  %7769 = load float, float* %7768, align 4, !tbaa !117, !noalias !107
  %7770 = fsub fast float %7769, %7654
  %7771 = fcmp fast olt float %7770, 0.000000e+00
  %7772 = select i1 %7771, float 0.000000e+00, float 1.000000e+00
  %7773 = fadd fast float %7772, %7767
  %7774 = fmul fast float %7772, %7770
  %7775 = fadd fast float %7774, %7766
  %7776 = add nuw nsw i32 %7765, 1
  %7777 = icmp eq i32 %7776, 4
  br i1 %7777, label %7778, label %7764, !llvm.loop !119

; <label>:7778                                    ; preds = %7764
  %7779 = add nuw nsw i32 %7732, 1
  %7780 = icmp eq i32 %7779, 8
  br i1 %7780, label %7781, label %7729, !llvm.loop !120

; <label>:7781                                    ; preds = %7778
  %7782 = fdiv fast float 1.000000e+00, %7773
  %7783 = fmul fast float %7782, %7775
  %7784 = fdiv fast float 1.000000e+00, %7654
  %7785 = fmul fast float %7783, %7784
  %7786 = call float @dx.op.unary.f32(i32 7, float %7785)  ; Saturate(value)
  %7787 = call float @dx.op.binary.f32(i32 35, float %7786, float 0.000000e+00)  ; FMax(a,b)
  %7788 = fmul fast float %7773, 3.125000e-02
  %7789 = call float @dx.op.unary.f32(i32 7, float %7788)  ; Saturate(value)
  %7790 = fmul fast float %7789, 2.000000e+00
  %7791 = fadd fast float %7790, -1.000000e+00
  %7792 = fcmp fast ogt float %7791, 0.000000e+00
  %7793 = fcmp fast olt float %7791, 0.000000e+00
  %7794 = zext i1 %7792 to i32
  %7795 = zext i1 %7793 to i32
  %7796 = sub nsw i32 %7794, %7795
  %7797 = sitofp i32 %7796 to float
  %7798 = fmul fast float %7797, %7791
  %7799 = fsub fast float 1.000000e+00, %7798
  %7800 = fmul fast float %7799, %7799
  %7801 = fmul fast float %7800, %7799
  %7802 = fsub fast float %7799, %7801
  %7803 = fmul fast float %7802, %7787
  %7804 = fsub fast float 1.000000e+00, %7801
  %7805 = fsub fast float %7804, %7803
  %7806 = fmul fast float %7797, 5.000000e-01
  %7807 = fmul fast float %7806, %7805
  %7808 = fsub fast float 5.000000e-01, %7807
  br label %7962

; <label>:7809                                    ; preds = %7644
  br i1 %7655, label %7810, label %7877

; <label>:7810                                    ; preds = %7809
  %7811 = extractvalue %dx.types.CBufRet.f32 %7648, 1
  %7812 = extractvalue %dx.types.CBufRet.f32 %7648, 0
  %7813 = fmul fast float %7812, %6778
  %7814 = fmul fast float %7811, %6782
  %7815 = fadd fast float %7813, 5.000000e-01
  %7816 = call float @dx.op.unary.f32(i32 27, float %7815)  ; Round_ni(value)
  %7817 = fadd fast float %7814, 5.000000e-01
  %7818 = call float @dx.op.unary.f32(i32 27, float %7817)  ; Round_ni(value)
  %7819 = fsub fast float %7815, %7816
  %7820 = fsub fast float %7817, %7818
  %7821 = fadd fast float %7816, -5.000000e-01
  %7822 = fadd fast float %7818, -5.000000e-01
  %7823 = fmul fast float %7819, 2.000000e+00
  %7824 = fsub fast float 3.000000e+00, %7823
  %7825 = fadd fast float %7823, 1.000000e+00
  %7826 = fsub fast float 2.000000e+00, %7819
  %7827 = bitcast float %7824 to i32
  %7828 = sub nsw i32 2129859010, %7827
  %7829 = bitcast i32 %7828 to float
  %7830 = fmul fast float %7829, %7826
  %7831 = fadd fast float %7830, -1.000000e+00
  %7832 = bitcast float %7825 to i32
  %7833 = sub nsw i32 2129859010, %7832
  %7834 = bitcast i32 %7833 to float
  %7835 = fmul fast float %7834, %7819
  %7836 = fadd fast float %7835, 1.000000e+00
  %7837 = fmul fast float %7820, 2.000000e+00
  %7838 = fsub fast float 3.000000e+00, %7837
  %7839 = fadd fast float %7837, 1.000000e+00
  %7840 = fsub fast float 2.000000e+00, %7820
  %7841 = bitcast float %7838 to i32
  %7842 = sub nsw i32 2129859010, %7841
  %7843 = bitcast i32 %7842 to float
  %7844 = fmul fast float %7843, %7840
  %7845 = fadd fast float %7844, -1.000000e+00
  %7846 = bitcast float %7839 to i32
  %7847 = sub nsw i32 2129859010, %7846
  %7848 = bitcast i32 %7847 to float
  %7849 = fmul fast float %7848, %7820
  %7850 = fadd fast float %7849, 1.000000e+00
  %7851 = fadd fast float %7831, %7821
  %7852 = fmul fast float %7851, %7649
  %7853 = fadd fast float %7845, %7822
  %7854 = fmul fast float %7853, %7650
  %7855 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %47, float %7852, float %7854, float undef, float undef, i32 0, i32 0, i32 undef, float %7654)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7856 = extractvalue %dx.types.ResRet.f32 %7855, 0
  %7857 = fmul fast float %7856, %7824
  %7858 = fadd fast float %7836, %7821
  %7859 = fmul fast float %7858, %7649
  %7860 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %47, float %7859, float %7854, float undef, float undef, i32 0, i32 0, i32 undef, float %7654)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7861 = extractvalue %dx.types.ResRet.f32 %7860, 0
  %7862 = fmul fast float %7861, %7825
  %7863 = fadd fast float %7850, %7822
  %7864 = fmul fast float %7863, %7650
  %7865 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %47, float %7852, float %7864, float undef, float undef, i32 0, i32 0, i32 undef, float %7654)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7866 = extractvalue %dx.types.ResRet.f32 %7865, 0
  %7867 = fmul fast float %7866, %7824
  %7868 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %47, float %7859, float %7864, float undef, float undef, i32 0, i32 0, i32 undef, float %7654)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7869 = extractvalue %dx.types.ResRet.f32 %7868, 0
  %7870 = fmul fast float %7869, %7825
  %7871 = fadd fast float %7870, %7867
  %7872 = fmul fast float %7871, %7839
  %7873 = fadd fast float %7862, %7857
  %7874 = fmul fast float %7873, %7838
  %7875 = fadd fast float %7874, %7872
  %7876 = fmul fast float %7875, 6.250000e-02
  br label %7962

; <label>:7877                                    ; preds = %7809
  %7878 = fmul fast float %277, 0x401921FB60000000
  %7879 = call float @dx.op.unary.f32(i32 13, float %7878)  ; Sin(value)
  %7880 = call float @dx.op.unary.f32(i32 12, float %7878)  ; Cos(value)
  %7881 = fsub fast float -0.000000e+00, %7879
  br label %7882

; <label>:7882                                    ; preds = %7931, %7877
  %7883 = phi float [ 0.000000e+00, %7877 ], [ %7926, %7931 ]
  %7884 = phi float [ 0.000000e+00, %7877 ], [ %7928, %7931 ]
  %7885 = phi i32 [ 0, %7877 ], [ %7932, %7931 ]
  %7886 = mul i32 %7885, 2
  %7887 = add i32 0, %7886
  %7888 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7887
  %7889 = load float, float* %7888, align 4
  %7890 = mul i32 %7885, 2
  %7891 = add i32 1, %7890
  %7892 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7891
  %7893 = load float, float* %7892, align 4
  %7894 = fmul fast float %7889, %7880
  %7895 = call float @dx.op.tertiary.f32(i32 46, float %7893, float %7881, float %7894)  ; FMad(a,b,c)
  %7896 = fmul fast float %7889, %7879
  %7897 = call float @dx.op.tertiary.f32(i32 46, float %7893, float %7880, float %7896)  ; FMad(a,b,c)
  %7898 = fmul fast float %7895, %7652
  %7899 = fmul fast float %7897, %7652
  %7900 = fadd fast float %7898, %6778
  %7901 = fadd fast float %7899, %6782
  %7902 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %46, float %7900, float %7901, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7903 = extractvalue %dx.types.ResRet.f32 %7902, 0
  %7904 = extractvalue %dx.types.ResRet.f32 %7902, 1
  %7905 = extractvalue %dx.types.ResRet.f32 %7902, 2
  %7906 = extractvalue %dx.types.ResRet.f32 %7902, 3
  %7907 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 0
  store float %7903, float* %7907, align 4
  %7908 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 1
  store float %7904, float* %7908, align 4
  %7909 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 2
  store float %7905, float* %7909, align 4
  %7910 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 3
  store float %7906, float* %7910, align 4
  %7911 = fsub fast float %7903, %7654
  %7912 = fcmp fast olt float %7911, 0.000000e+00
  %7913 = select i1 %7912, float 0.000000e+00, float 1.000000e+00
  %7914 = fadd fast float %7913, %7883
  %7915 = fmul fast float %7913, %7911
  %7916 = fadd fast float %7915, %7884
  br label %7917

; <label>:7917                                    ; preds = %7917, %7882
  %7918 = phi i32 [ 1, %7882 ], [ %7929, %7917 ]
  %7919 = phi float [ %7916, %7882 ], [ %7928, %7917 ]
  %7920 = phi float [ %7914, %7882 ], [ %7926, %7917 ]
  %7921 = getelementptr [4 x float], [4 x float]* %101, i32 0, i32 %7918
  %7922 = load float, float* %7921, align 4, !tbaa !117, !noalias !107
  %7923 = fsub fast float %7922, %7654
  %7924 = fcmp fast olt float %7923, 0.000000e+00
  %7925 = select i1 %7924, float 0.000000e+00, float 1.000000e+00
  %7926 = fadd fast float %7925, %7920
  %7927 = fmul fast float %7925, %7923
  %7928 = fadd fast float %7927, %7919
  %7929 = add nuw nsw i32 %7918, 1
  %7930 = icmp eq i32 %7929, 4
  br i1 %7930, label %7931, label %7917, !llvm.loop !119

; <label>:7931                                    ; preds = %7917
  %7932 = add nuw nsw i32 %7885, 1
  %7933 = icmp eq i32 %7932, 8
  br i1 %7933, label %7934, label %7882, !llvm.loop !120

; <label>:7934                                    ; preds = %7931
  %7935 = fdiv fast float 1.000000e+00, %7926
  %7936 = fmul fast float %7935, %7928
  %7937 = fdiv fast float 1.000000e+00, %7654
  %7938 = fmul fast float %7936, %7937
  %7939 = call float @dx.op.unary.f32(i32 7, float %7938)  ; Saturate(value)
  %7940 = call float @dx.op.binary.f32(i32 35, float %7939, float 0.000000e+00)  ; FMax(a,b)
  %7941 = fmul fast float %7926, 3.125000e-02
  %7942 = call float @dx.op.unary.f32(i32 7, float %7941)  ; Saturate(value)
  %7943 = fmul fast float %7942, 2.000000e+00
  %7944 = fadd fast float %7943, -1.000000e+00
  %7945 = fcmp fast ogt float %7944, 0.000000e+00
  %7946 = fcmp fast olt float %7944, 0.000000e+00
  %7947 = zext i1 %7945 to i32
  %7948 = zext i1 %7946 to i32
  %7949 = sub nsw i32 %7947, %7948
  %7950 = sitofp i32 %7949 to float
  %7951 = fmul fast float %7950, %7944
  %7952 = fsub fast float 1.000000e+00, %7951
  %7953 = fmul fast float %7952, %7952
  %7954 = fmul fast float %7953, %7952
  %7955 = fsub fast float %7952, %7954
  %7956 = fmul fast float %7955, %7940
  %7957 = fsub fast float 1.000000e+00, %7954
  %7958 = fsub fast float %7957, %7956
  %7959 = fmul fast float %7950, 5.000000e-01
  %7960 = fmul fast float %7959, %7958
  %7961 = fsub fast float 5.000000e-01, %7960
  br label %7962

; <label>:7962                                    ; preds = %7934, %7810, %7781, %7657, %7641
  %7963 = phi float [ 1.000000e+00, %7641 ], [ %7723, %7657 ], [ %7808, %7781 ], [ %7876, %7810 ], [ %7961, %7934 ]
  %7964 = fsub fast float %7475, %7308
  %7965 = fmul fast float %7964, %6875
  %7966 = fadd fast float %7965, %7308
  %7967 = fsub fast float %7642, %7966
  %7968 = fmul fast float %7967, %6874
  %7969 = fadd fast float %7968, %7966
  %7970 = fsub fast float %7963, %7969
  %7971 = fmul fast float %7970, %6902
  %7972 = fadd fast float %7971, %7969
  %7973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7974 = extractvalue %dx.types.CBufRet.f32 %7973, 2
  %7975 = fcmp fast ogt float %7974, 0.000000e+00
  br i1 %7975, label %7976, label %8016, !dx.controlflow.hints !124

; <label>:7976                                    ; preds = %7962
  %7977 = fcmp fast ugt float %7974, 0.000000e+00
  br i1 %7977, label %7978, label %8013

; <label>:7978                                    ; preds = %7976
  %7979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7980 = extractvalue %dx.types.CBufRet.f32 %7979, 0
  %7981 = extractvalue %dx.types.CBufRet.f32 %7979, 1
  %7982 = extractvalue %dx.types.CBufRet.f32 %7979, 2
  %7983 = extractvalue %dx.types.CBufRet.f32 %7979, 3
  %7984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7985 = extractvalue %dx.types.CBufRet.f32 %7984, 0
  %7986 = extractvalue %dx.types.CBufRet.f32 %7984, 1
  %7987 = extractvalue %dx.types.CBufRet.f32 %7984, 2
  %7988 = extractvalue %dx.types.CBufRet.f32 %7984, 3
  %7989 = extractvalue %dx.types.CBufRet.f32 %7973, 0
  %7990 = extractvalue %dx.types.CBufRet.f32 %7973, 1
  %7991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7992 = extractvalue %dx.types.CBufRet.f32 %7991, 0
  %7993 = extractvalue %dx.types.CBufRet.f32 %7991, 1
  %7994 = extractvalue %dx.types.CBufRet.f32 %7991, 2
  %7995 = fadd fast float %7992, %6755
  %7996 = fadd fast float %7993, %6756
  %7997 = fadd fast float %7994, %6757
  %7998 = fmul fast float %7995, %7980
  %7999 = call float @dx.op.tertiary.f32(i32 46, float %7981, float %7996, float %7998)  ; FMad(a,b,c)
  %8000 = call float @dx.op.tertiary.f32(i32 46, float %7982, float %7997, float %7999)  ; FMad(a,b,c)
  %8001 = fadd fast float %8000, %7983
  %8002 = fmul fast float %7995, %7985
  %8003 = call float @dx.op.tertiary.f32(i32 46, float %7986, float %7996, float %8002)  ; FMad(a,b,c)
  %8004 = call float @dx.op.tertiary.f32(i32 46, float %7987, float %7997, float %8003)  ; FMad(a,b,c)
  %8005 = fadd fast float %8004, %7988
  %8006 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %42, float %8001, float %8005, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %8007 = extractvalue %dx.types.ResRet.f32 %8006, 0
  %8008 = fmul fast float %8007, %7990
  %8009 = fadd fast float %8008, %7989
  %8010 = call float @dx.op.unary.f32(i32 7, float %8009)  ; Saturate(value)
  %8011 = fmul fast float %8010, %7974
  %8012 = fsub fast float 1.000000e+00, %8011
  br label %8013

; <label>:8013                                    ; preds = %7978, %7976
  %8014 = phi float [ %8012, %7978 ], [ 1.000000e+00, %7976 ]
  %8015 = fmul fast float %8014, %7972
  br label %8016

; <label>:8016                                    ; preds = %8013, %7962, %6735
  %8017 = phi float [ 1.000000e+00, %6735 ], [ %8015, %8013 ], [ %7972, %7962 ]
  %8018 = call float @dx.op.binary.f32(i32 36, float %8017, float %8017)  ; FMin(a,b)
  %8019 = call float @dx.op.binary.f32(i32 36, float %8017, float %8018)  ; FMin(a,b)
  %8020 = fcmp fast ogt float %8019, 0.000000e+00
  br i1 %8020, label %8021, label %8187, !dx.controlflow.hints !125

; <label>:8021                                    ; preds = %8016
  %8022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %8023 = extractvalue %dx.types.CBufRet.f32 %8022, 0
  %8024 = extractvalue %dx.types.CBufRet.f32 %8022, 1
  %8025 = extractvalue %dx.types.CBufRet.f32 %8022, 2
  %8026 = extractvalue %dx.types.CBufRet.f32 %8022, 3
  %8027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %8028 = extractvalue %dx.types.CBufRet.f32 %8027, 0
  %8029 = extractvalue %dx.types.CBufRet.f32 %8027, 1
  %8030 = extractvalue %dx.types.CBufRet.f32 %8027, 2
  %8031 = extractvalue %dx.types.CBufRet.f32 %8027, 3
  %8032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %8033 = extractvalue %dx.types.CBufRet.f32 %8032, 0
  %8034 = extractvalue %dx.types.CBufRet.f32 %8032, 1
  %8035 = extractvalue %dx.types.CBufRet.f32 %8032, 2
  %8036 = extractvalue %dx.types.CBufRet.f32 %8032, 3
  %8037 = fmul fast float %8023, %6755
  %8038 = call float @dx.op.tertiary.f32(i32 46, float %6756, float %8024, float %8037)  ; FMad(a,b,c)
  %8039 = call float @dx.op.tertiary.f32(i32 46, float %6757, float %8025, float %8038)  ; FMad(a,b,c)
  %8040 = fadd fast float %8039, %8026
  %8041 = fmul fast float %8028, %6755
  %8042 = call float @dx.op.tertiary.f32(i32 46, float %6756, float %8029, float %8041)  ; FMad(a,b,c)
  %8043 = call float @dx.op.tertiary.f32(i32 46, float %6757, float %8030, float %8042)  ; FMad(a,b,c)
  %8044 = fadd fast float %8043, %8031
  %8045 = fmul fast float %8033, %6755
  %8046 = call float @dx.op.tertiary.f32(i32 46, float %6756, float %8034, float %8045)  ; FMad(a,b,c)
  %8047 = call float @dx.op.tertiary.f32(i32 46, float %6757, float %8035, float %8046)  ; FMad(a,b,c)
  %8048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %8049 = extractvalue %dx.types.CBufRet.f32 %8048, 0
  %8050 = extractvalue %dx.types.CBufRet.f32 %8048, 1
  %8051 = extractvalue %dx.types.CBufRet.f32 %8048, 3
  %8052 = fmul fast float %8051, %8040
  %8053 = fmul fast float %8051, %8044
  %8054 = fadd fast float %8052, %8049
  %8055 = fadd fast float %8053, %8050
  %8056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %8057 = extractvalue %dx.types.CBufRet.f32 %8056, 0
  %8058 = extractvalue %dx.types.CBufRet.f32 %8056, 1
  %8059 = fsub fast float %8054, %8057
  %8060 = fsub fast float %8055, %8058
  %8061 = fcmp fast olt float %8059, 0.000000e+00
  %8062 = fcmp fast olt float %8060, 0.000000e+00
  %8063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %8064 = extractvalue %dx.types.CBufRet.f32 %8063, 0
  %8065 = extractvalue %dx.types.CBufRet.f32 %8063, 1
  %8066 = extractvalue %dx.types.CBufRet.f32 %8063, 2
  %8067 = extractvalue %dx.types.CBufRet.f32 %8063, 3
  %8068 = select i1 %8061, float %8064, float %8066
  %8069 = select i1 %8062, float %8065, float %8067
  %8070 = fmul fast float %8068, %8059
  %8071 = fmul fast float %8069, %8060
  %8072 = call float @dx.op.unary.f32(i32 6, float %8070)  ; FAbs(value)
  %8073 = call float @dx.op.unary.f32(i32 6, float %8071)  ; FAbs(value)
  %8074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %8075 = extractvalue %dx.types.CBufRet.f32 %8074, 0
  %8076 = call float @dx.op.binary.f32(i32 35, float %8072, float %8073)  ; FMax(a,b)
  %8077 = fsub fast float %8075, %8076
  %8078 = call float @dx.op.unary.f32(i32 7, float %8077)  ; Saturate(value)
  %8079 = fcmp fast ogt float %8078, 0.000000e+00
  br i1 %8079, label %8080, label %8121, !dx.controlflow.hints !126

; <label>:8080                                    ; preds = %8021
  %8081 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %45, float %8054, float %8055, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8082 = extractvalue %dx.types.ResRet.f32 %8081, 1
  %8083 = fcmp fast ogt float %8082, 0.000000e+00
  br i1 %8083, label %8084, label %8116

; <label>:8084                                    ; preds = %8080
  %8085 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %45, float %8054, float %8055, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8086 = extractvalue %dx.types.ResRet.f32 %8085, 0
  %8087 = extractvalue %dx.types.ResRet.f32 %8085, 1
  %8088 = extractvalue %dx.types.ResRet.f32 %8085, 2
  %8089 = extractvalue %dx.types.ResRet.f32 %8085, 3
  %8090 = fsub fast float 1.000000e+00, %8036
  %8091 = fsub fast float %8090, %8047
  %8092 = fmul fast float %8091, 0x400921FB60000000
  %8093 = fadd fast float %8092, 0x3FF921FB60000000
  %8094 = call float @dx.op.unary.f32(i32 13, float %8093)  ; Sin(value)
  %8095 = fadd fast float %8094, -1.000000e+00
  %8096 = fmul fast float %8095, 0x3FD45F3060000000
  %8097 = fmul fast float %8091, 0x401921FB60000000
  %8098 = fadd fast float %8097, 0x400921FB60000000
  %8099 = call float @dx.op.unary.f32(i32 13, float %8098)  ; Sin(value)
  %8100 = fadd fast float %8099, 0x3E7777A5C0000000
  %8101 = fmul fast float %8100, 0x3FC45F3060000000
  %8102 = fmul fast float %8091, 0x4022D97C80000000
  %8103 = fadd fast float %8102, 0x4012D97C80000000
  %8104 = call float @dx.op.unary.f32(i32 13, float %8103)  ; Sin(value)
  %8105 = fadd fast float %8104, 1.000000e+00
  %8106 = fmul fast float %8105, 0x3FBB2995E0000000
  %8107 = fmul fast float %8091, 0x402921FB60000000
  %8108 = fadd fast float %8107, 0x401921FB60000000
  %8109 = call float @dx.op.unary.f32(i32 13, float %8108)  ; Sin(value)
  %8110 = fadd fast float %8109, 0xBE8777A5C0000000
  %8111 = fmul fast float %8110, 0x3FB45F3060000000
  %8112 = call float @dx.op.dot4.f32(i32 56, float %8086, float %8087, float %8088, float %8089, float %8096, float %8101, float %8106, float %8111)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %8113 = fmul fast float %8112, 0xBFF7154760000000
  %8114 = call float @dx.op.unary.f32(i32 21, float %8113)  ; Exp(value)
  %8115 = call float @dx.op.unary.f32(i32 7, float %8114)  ; Saturate(value)
  br label %8116

; <label>:8116                                    ; preds = %8084, %8080
  %8117 = phi float [ %8115, %8084 ], [ 1.000000e+00, %8080 ]
  %8118 = fadd fast float %8117, -1.000000e+00
  %8119 = fmul fast float %8118, %8078
  %8120 = fadd fast float %8119, 1.000000e+00
  br label %8121

; <label>:8121                                    ; preds = %8116, %8021
  %8122 = phi float [ %8120, %8116 ], [ 1.000000e+00, %8021 ]
  %8123 = fmul fast float %8122, %8017
  %8124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8125 = extractvalue %dx.types.CBufRet.f32 %8124, 0
  %8126 = extractvalue %dx.types.CBufRet.f32 %8124, 1
  %8127 = extractvalue %dx.types.CBufRet.f32 %8124, 2
  %8128 = fadd fast float %8125, %190
  %8129 = fadd fast float %8126, %191
  %8130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %8131 = extractvalue %dx.types.CBufRet.f32 %8130, 1
  %8132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %8133 = extractvalue %dx.types.CBufRet.f32 %8132, 0
  %8134 = extractvalue %dx.types.CBufRet.f32 %8132, 1
  %8135 = extractvalue %dx.types.CBufRet.f32 %8132, 2
  %8136 = fsub fast float -0.000000e+00, %8128
  %8137 = fsub fast float -0.000000e+00, %8129
  %8138 = fsub fast float -0.000000e+00, %192
  %8139 = fsub fast float %8138, %8127
  %8140 = fadd fast float %8139, %8131
  %8141 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8136, float %8137, float %8140)  ; Dot3(ax,ay,az,bx,by,bz)
  %8142 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8133, float %8134, float %8135)  ; Dot3(ax,ay,az,bx,by,bz)
  %8143 = fdiv fast float 1.000000e+00, %8142
  %8144 = fmul fast float %8143, %8141
  %8145 = fmul fast float %8133, %8144
  %8146 = fmul fast float %8134, %8144
  %8147 = fadd fast float %8145, %8128
  %8148 = fadd fast float %8146, %8129
  %8149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %8150 = extractvalue %dx.types.CBufRet.f32 %8149, 0
  %8151 = extractvalue %dx.types.CBufRet.f32 %8149, 1
  %8152 = fsub fast float %8147, %8150
  %8153 = fsub fast float %8148, %8151
  %8154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %8155 = extractvalue %dx.types.CBufRet.f32 %8154, 2
  %8156 = extractvalue %dx.types.CBufRet.f32 %8154, 3
  %8157 = fmul fast float %8152, %8155
  %8158 = fmul fast float %8153, %8156
  %8159 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %8160 = extractvalue %dx.types.CBufRet.i32 %8159, 3
  %8161 = icmp eq i32 %8160, 0
  br i1 %8161, label %8167, label %8162

; <label>:8162                                    ; preds = %8121
  %8163 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %8157, float %8158, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8164 = extractvalue %dx.types.ResRet.f32 %8163, 0
  %8165 = extractvalue %dx.types.ResRet.f32 %8163, 1
  %8166 = extractvalue %dx.types.ResRet.f32 %8163, 2
  br label %8172

; <label>:8167                                    ; preds = %8121
  %8168 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %45, float %8157, float %8158, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8169 = extractvalue %dx.types.ResRet.f32 %8168, 0
  %8170 = extractvalue %dx.types.ResRet.f32 %8168, 1
  %8171 = extractvalue %dx.types.ResRet.f32 %8168, 2
  br label %8172

; <label>:8172                                    ; preds = %8167, %8162
  %8173 = phi float [ %8164, %8162 ], [ %8169, %8167 ]
  %8174 = phi float [ %8165, %8162 ], [ %8170, %8167 ]
  %8175 = phi float [ %8166, %8162 ], [ %8171, %8167 ]
  %8176 = extractvalue %dx.types.CBufRet.f32 %8130, 2
  %8177 = fmul fast float %8176, %8173
  %8178 = extractvalue %dx.types.CBufRet.f32 %8130, 0
  %8179 = fsub fast float %8144, %8178
  %8180 = fsub fast float %8179, %8177
  %8181 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8180)  ; FMax(a,b)
  %8182 = fmul fast float %8181, %8174
  %8183 = call float @dx.op.binary.f32(i32 36, float %8175, float %8182)  ; FMin(a,b)
  %8184 = fmul fast float %8183, 0xBFF7154760000000
  %8185 = call float @dx.op.unary.f32(i32 21, float %8184)  ; Exp(value)
  %8186 = fmul fast float %8123, %8185
  br label %8187

; <label>:8187                                    ; preds = %8172, %8016
  %8188 = phi float [ %8186, %8172 ], [ %8017, %8016 ]
  %8189 = call float @dx.op.binary.f32(i32 36, float %8188, float %8188)  ; FMin(a,b)
  %8190 = call float @dx.op.binary.f32(i32 36, float %8188, float %8189)  ; FMin(a,b)
  %8191 = fcmp fast ogt float %8190, 0.000000e+00
  br i1 %8191, label %8192, label %8500, !dx.controlflow.hints !127

; <label>:8192                                    ; preds = %8187
  %8193 = bitcast i32 %5726 to float
  %8194 = fmul fast float %8188, %6747
  %8195 = fmul fast float %8188, %6748
  %8196 = fmul fast float %8188, %6749
  %8197 = fsub fast float %6736, %5654
  %8198 = fsub fast float %6737, %5653
  %8199 = fsub fast float %6738, %5652
  %8200 = call float @dx.op.dot3.f32(i32 55, float %8197, float %8198, float %8199, float %8197, float %8198, float %8199)  ; Dot3(ax,ay,az,bx,by,bz)
  %8201 = call float @dx.op.unary.f32(i32 25, float %8200)  ; Rsqrt(value)
  %8202 = fmul fast float %8201, %8197
  %8203 = fmul fast float %8201, %8198
  %8204 = fmul fast float %8201, %8199
  %8205 = call float @dx.op.dot3.f32(i32 55, float %6736, float %6737, float %6738, float %5658, float %5659, float %5660)  ; Dot3(ax,ay,az,bx,by,bz)
  %8206 = call float @dx.op.dot3.f32(i32 55, float %5651, float %5650, float %5649, float %8202, float %8203, float %8204)  ; Dot3(ax,ay,az,bx,by,bz)
  %8207 = call float @dx.op.unary.f32(i32 7, float %8205)  ; Saturate(value)
  %8208 = fmul fast float %8207, %8207
  %8209 = fmul fast float %8208, %8193
  %8210 = call float @dx.op.unary.f32(i32 7, float %8209)  ; Saturate(value)
  %8211 = fmul fast float %8210, %8207
  %8212 = call float @dx.op.dot3.f32(i32 55, float %5658, float %5659, float %5660, float %8202, float %8203, float %8204)  ; Dot3(ax,ay,az,bx,by,bz)
  %8213 = fmul fast float %8212, %8212
  %8214 = call float @dx.op.unary.f32(i32 6, float %8205)  ; FAbs(value)
  %8215 = fsub fast float 1.000000e+00, %5720
  %8216 = fmul fast float %5702, %5702
  %8217 = fmul fast float %8216, %8215
  %8218 = fadd fast float %8217, %5720
  %8219 = bitcast float %8218 to i32
  %8220 = ashr i32 %8219, 1
  %8221 = add nsw i32 %8220, 532487669
  %8222 = bitcast i32 %8221 to float
  %8223 = fadd fast float %8222, %5702
  %8224 = fmul fast float %5720, %8213
  %8225 = fsub fast float 1.000000e+00, %8213
  %8226 = fadd fast float %8225, %8224
  %8227 = fmul fast float %8214, %8214
  %8228 = fmul fast float %8227, %8215
  %8229 = fadd fast float %8228, %5720
  %8230 = bitcast float %8229 to i32
  %8231 = ashr i32 %8230, 1
  %8232 = add nsw i32 %8231, 532487669
  %8233 = bitcast i32 %8232 to float
  %8234 = fadd fast float %8233, %8214
  %8235 = fmul fast float %8226, %8226
  %8236 = fmul fast float %8235, %8223
  %8237 = fmul fast float %8236, %8234
  %8238 = fdiv fast float 0x3FF0A00000000000, %8237
  %8239 = fmul fast float %8238, %5720
  %8240 = fmul fast float %5962, 0x3FF9999980000000
  %8241 = fsub fast float 5.000000e+00, %8240
  %8242 = call float @dx.op.unary.f32(i32 6, float %8206)  ; FAbs(value)
  %8243 = fsub fast float 1.000000e+00, %8242
  %8244 = fmul fast float %5962, 0x41D9660740000000
  %8245 = fadd fast float %8244, 0xC1EFBF8940000000
  %8246 = bitcast float %8243 to i32
  %8247 = sitofp i32 %8246 to float
  %8248 = fmul fast float %8247, %8241
  %8249 = fadd fast float %8245, %8248
  %8250 = fptosi float %8249 to i32
  %8251 = bitcast i32 %8250 to float
  %8252 = fsub fast float 1.000000e+00, %5655
  %8253 = fsub fast float 1.000000e+00, %5656
  %8254 = fsub fast float 1.000000e+00, %5700
  %8255 = fmul fast float %8251, %8252
  %8256 = fmul fast float %8251, %8253
  %8257 = fmul fast float %8251, %8254
  %8258 = fadd fast float %8255, %5655
  %8259 = fadd fast float %8256, %5656
  %8260 = fadd fast float %8257, %5700
  br i1 %5985, label %8261, label %8284

; <label>:8261                                    ; preds = %8192
  %8262 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %45, float %4704, float %8242, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8263 = extractvalue %dx.types.ResRet.f32 %8262, 0
  %8264 = extractvalue %dx.types.ResRet.f32 %8262, 1
  %8265 = extractvalue %dx.types.ResRet.f32 %8262, 2
  %8266 = fadd fast float %8263, -5.000000e-01
  %8267 = fadd fast float %8264, -5.000000e-01
  %8268 = fadd fast float %8265, -5.000000e-01
  %8269 = fmul fast float %5655, 4.000000e+00
  %8270 = fmul fast float %8269, %8252
  %8271 = fmul fast float %8270, %8266
  %8272 = fmul fast float %5656, 4.000000e+00
  %8273 = fmul fast float %8272, %8253
  %8274 = fmul fast float %8273, %8267
  %8275 = fmul fast float %5700, 4.000000e+00
  %8276 = fmul fast float %8275, %8254
  %8277 = fmul fast float %8276, %8268
  %8278 = fadd fast float %8271, %8258
  %8279 = fadd fast float %8274, %8259
  %8280 = fadd fast float %8277, %8260
  %8281 = call float @dx.op.unary.f32(i32 7, float %8278)  ; Saturate(value)
  %8282 = call float @dx.op.unary.f32(i32 7, float %8279)  ; Saturate(value)
  %8283 = call float @dx.op.unary.f32(i32 7, float %8280)  ; Saturate(value)
  br label %8284

; <label>:8284                                    ; preds = %8261, %8192
  %8285 = phi float [ %8281, %8261 ], [ %8258, %8192 ]
  %8286 = phi float [ %8282, %8261 ], [ %8259, %8192 ]
  %8287 = phi float [ %8283, %8261 ], [ %8260, %8192 ]
  %8288 = fmul fast float %8205, 9.843750e-01
  %8289 = fadd fast float %8288, 7.812500e-03
  %8290 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %45, float %8289, float %5966, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8291 = extractvalue %dx.types.ResRet.f32 %8290, 0
  %8292 = extractvalue %dx.types.ResRet.f32 %8290, 1
  %8293 = extractvalue %dx.types.ResRet.f32 %8290, 2
  %8294 = extractvalue %dx.types.ResRet.f32 %8290, 3
  %8295 = fsub fast float %8293, %8291
  %8296 = fsub fast float %8294, %8292
  %8297 = fmul fast float %8295, %5972
  %8298 = fmul fast float %8296, %5972
  %8299 = fadd fast float %8297, %8291
  %8300 = fadd fast float %8298, %8292
  %8301 = fmul fast float %8299, %5655
  %8302 = fmul fast float %8299, %5656
  %8303 = fmul fast float %8299, %5700
  %8304 = fadd fast float %8301, %8300
  %8305 = fadd fast float %8302, %8300
  %8306 = fadd fast float %8303, %8300
  br i1 %5985, label %8307, label %8330

; <label>:8307                                    ; preds = %8284
  %8308 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %45, float %4704, float %8205, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8309 = extractvalue %dx.types.ResRet.f32 %8308, 0
  %8310 = extractvalue %dx.types.ResRet.f32 %8308, 1
  %8311 = extractvalue %dx.types.ResRet.f32 %8308, 2
  %8312 = fadd fast float %8309, -5.000000e-01
  %8313 = fadd fast float %8310, -5.000000e-01
  %8314 = fadd fast float %8311, -5.000000e-01
  %8315 = fmul fast float %5655, 4.000000e+00
  %8316 = fmul fast float %8315, %8252
  %8317 = fmul fast float %8316, %8312
  %8318 = fmul fast float %5656, 4.000000e+00
  %8319 = fmul fast float %8318, %8253
  %8320 = fmul fast float %8319, %8313
  %8321 = fmul fast float %5700, 4.000000e+00
  %8322 = fmul fast float %8321, %8254
  %8323 = fmul fast float %8322, %8314
  %8324 = fadd fast float %8317, %8304
  %8325 = fadd fast float %8320, %8305
  %8326 = fadd fast float %8323, %8306
  %8327 = call float @dx.op.unary.f32(i32 7, float %8324)  ; Saturate(value)
  %8328 = call float @dx.op.unary.f32(i32 7, float %8325)  ; Saturate(value)
  %8329 = call float @dx.op.unary.f32(i32 7, float %8326)  ; Saturate(value)
  br label %8330

; <label>:8330                                    ; preds = %8307, %8284
  %8331 = phi float [ %8327, %8307 ], [ %8304, %8284 ]
  %8332 = phi float [ %8328, %8307 ], [ %8305, %8284 ]
  %8333 = phi float [ %8329, %8307 ], [ %8306, %8284 ]
  %8334 = call float @dx.op.binary.f32(i32 35, float %8332, float %8333)  ; FMax(a,b)
  %8335 = call float @dx.op.binary.f32(i32 35, float %8331, float %8334)  ; FMax(a,b)
  %8336 = fsub fast float 1.000000e+00, %8335
  %8337 = call float @dx.op.binary.f32(i32 35, float %8214, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8338 = fdiv fast float %4008, %8337
  %8339 = fmul fast float %6507, %8338
  %8340 = fmul fast float %6509, %8338
  %8341 = fmul fast float %6511, %8338
  %8342 = call float @dx.op.unary.f32(i32 21, float %8339)  ; Exp(value)
  %8343 = call float @dx.op.unary.f32(i32 21, float %8340)  ; Exp(value)
  %8344 = call float @dx.op.unary.f32(i32 21, float %8341)  ; Exp(value)
  %8345 = call float @dx.op.unary.f32(i32 7, float %8342)  ; Saturate(value)
  %8346 = call float @dx.op.unary.f32(i32 7, float %8343)  ; Saturate(value)
  %8347 = call float @dx.op.unary.f32(i32 7, float %8344)  ; Saturate(value)
  %8348 = select i1 %6504, float %8345, float 0.000000e+00
  %8349 = select i1 %6505, float %8346, float 0.000000e+00
  %8350 = select i1 %6506, float %8347, float 0.000000e+00
  %8351 = fsub fast float -0.000000e+00, %5658
  %8352 = fsub fast float -0.000000e+00, %5659
  %8353 = fsub fast float -0.000000e+00, %5660
  %8354 = call float @dx.op.dot3.f32(i32 55, float %6736, float %6737, float %6738, float %8351, float %8352, float %8353)  ; Dot3(ax,ay,az,bx,by,bz)
  %8355 = call float @dx.op.unary.f32(i32 7, float %8354)  ; Saturate(value)
  %8356 = fmul fast float %8355, 9.843750e-01
  %8357 = fadd fast float %8356, 7.812500e-03
  %8358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %45, float %8357, float %5966, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8359 = extractvalue %dx.types.ResRet.f32 %8358, 0
  %8360 = extractvalue %dx.types.ResRet.f32 %8358, 1
  %8361 = extractvalue %dx.types.ResRet.f32 %8358, 2
  %8362 = extractvalue %dx.types.ResRet.f32 %8358, 3
  %8363 = fsub fast float %8361, %8359
  %8364 = fsub fast float %8362, %8360
  %8365 = fmul fast float %8363, %5972
  %8366 = fmul fast float %8364, %5972
  %8367 = fadd fast float %8365, %8359
  %8368 = fadd fast float %8366, %8360
  %8369 = fmul fast float %8367, %5655
  %8370 = fmul fast float %8367, %5656
  %8371 = fmul fast float %8367, %5700
  %8372 = fadd fast float %8369, %8368
  %8373 = fadd fast float %8370, %8368
  %8374 = fadd fast float %8371, %8368
  br i1 %5985, label %8375, label %8398

; <label>:8375                                    ; preds = %8330
  %8376 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %45, float %4704, float %8355, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8377 = extractvalue %dx.types.ResRet.f32 %8376, 0
  %8378 = extractvalue %dx.types.ResRet.f32 %8376, 1
  %8379 = extractvalue %dx.types.ResRet.f32 %8376, 2
  %8380 = fadd fast float %8377, -5.000000e-01
  %8381 = fadd fast float %8378, -5.000000e-01
  %8382 = fadd fast float %8379, -5.000000e-01
  %8383 = fmul fast float %5655, 4.000000e+00
  %8384 = fmul fast float %8383, %8252
  %8385 = fmul fast float %8384, %8380
  %8386 = fmul fast float %5656, 4.000000e+00
  %8387 = fmul fast float %8386, %8253
  %8388 = fmul fast float %8387, %8381
  %8389 = fmul fast float %5700, 4.000000e+00
  %8390 = fmul fast float %8389, %8254
  %8391 = fmul fast float %8390, %8382
  %8392 = fadd fast float %8385, %8372
  %8393 = fadd fast float %8388, %8373
  %8394 = fadd fast float %8391, %8374
  %8395 = call float @dx.op.unary.f32(i32 7, float %8392)  ; Saturate(value)
  %8396 = call float @dx.op.unary.f32(i32 7, float %8393)  ; Saturate(value)
  %8397 = call float @dx.op.unary.f32(i32 7, float %8394)  ; Saturate(value)
  br label %8398

; <label>:8398                                    ; preds = %8375, %8330
  %8399 = phi float [ %8395, %8375 ], [ %8372, %8330 ]
  %8400 = phi float [ %8396, %8375 ], [ %8373, %8330 ]
  %8401 = phi float [ %8397, %8375 ], [ %8374, %8330 ]
  %8402 = call float @dx.op.binary.f32(i32 35, float %8400, float %8401)  ; FMax(a,b)
  %8403 = call float @dx.op.binary.f32(i32 35, float %8399, float %8402)  ; FMax(a,b)
  %8404 = fsub fast float 1.000000e+00, %8403
  %8405 = fmul fast float %5717, %6571
  %8406 = fadd fast float %6565, %8405
  %8407 = call float @dx.op.unary.f32(i32 7, float %8406)  ; Saturate(value)
  %8408 = fsub fast float %6736, %5708
  %8409 = fsub fast float %6737, %5709
  %8410 = fsub fast float %6738, %5710
  %8411 = call float @dx.op.dot3.f32(i32 55, float %8408, float %8409, float %8410, float %8408, float %8409, float %8410)  ; Dot3(ax,ay,az,bx,by,bz)
  %8412 = call float @dx.op.unary.f32(i32 25, float %8411)  ; Rsqrt(value)
  %8413 = fmul fast float %8412, %8408
  %8414 = fmul fast float %8412, %8409
  %8415 = fmul fast float %8412, %8410
  %8416 = call float @dx.op.dot3.f32(i32 55, float %8351, float %8352, float %8353, float %8413, float %8414, float %8415)  ; Dot3(ax,ay,az,bx,by,bz)
  %8417 = fmul fast float %8416, %8416
  %8418 = call float @dx.op.unary.f32(i32 6, float %8355)  ; FAbs(value)
  %8419 = call float @dx.op.binary.f32(i32 35, float %8407, float 0x3F847AE140000000)  ; FMax(a,b)
  %8420 = fmul fast float %8419, %8419
  %8421 = fmul fast float %8420, %8420
  %8422 = fsub fast float 1.000000e+00, %8421
  %8423 = fmul fast float %8216, %8422
  %8424 = fadd fast float %8423, %8421
  %8425 = bitcast float %8424 to i32
  %8426 = ashr i32 %8425, 1
  %8427 = add nsw i32 %8426, 532487669
  %8428 = bitcast i32 %8427 to float
  %8429 = fadd fast float %8428, %5702
  %8430 = fmul fast float %8421, %8417
  %8431 = fsub fast float 1.000000e+00, %8417
  %8432 = fadd fast float %8431, %8430
  %8433 = fmul fast float %8418, %8418
  %8434 = fmul fast float %8433, %8422
  %8435 = fadd fast float %8434, %8421
  %8436 = bitcast float %8435 to i32
  %8437 = ashr i32 %8436, 1
  %8438 = add nsw i32 %8437, 532487669
  %8439 = bitcast i32 %8438 to float
  %8440 = fadd fast float %8439, %8418
  %8441 = fmul fast float %8432, %8432
  %8442 = fmul fast float %8441, %8429
  %8443 = fmul fast float %8442, %8440
  %8444 = fdiv fast float 0x3FF0A00000000000, %8443
  %8445 = fmul fast float %8444, %8421
  %8446 = fmul fast float %8355, %8348
  %8447 = fmul fast float %8355, %8349
  %8448 = fmul fast float %8355, %8350
  %8449 = fmul fast float %8446, %8404
  %8450 = fmul fast float %8449, %8445
  %8451 = fmul fast float %8447, %8404
  %8452 = fmul fast float %8451, %8445
  %8453 = fmul fast float %8448, %8404
  %8454 = fmul fast float %8453, %8445
  %8455 = fmul fast float %8285, %8239
  %8456 = fmul fast float %8286, %8239
  %8457 = fmul fast float %8287, %8239
  %8458 = fsub fast float 1.000000e+00, %8206
  %8459 = bitcast float %8458 to i32
  %8460 = sitofp i32 %8459 to float
  %8461 = fmul fast float %8460, 5.000000e+00
  %8462 = fadd fast float %8461, 0xC1EFBF8940000000
  %8463 = fptosi float %8462 to i32
  %8464 = bitcast i32 %8463 to float
  %8465 = fmul fast float %8464, %4705
  %8466 = fmul fast float %8336, %8465
  %8467 = fmul fast float %8466, %6499
  %8468 = fmul fast float %8466, %6500
  %8469 = fmul fast float %8466, %6501
  %8470 = fadd fast float %8467, %8455
  %8471 = fadd fast float %8468, %8456
  %8472 = fadd fast float %8469, %8457
  %8473 = fmul fast float %8470, %8211
  %8474 = fmul fast float %8471, %8211
  %8475 = fmul fast float %8472, %8211
  %8476 = fmul fast float %8211, %8194
  %8477 = fmul fast float %8476, %8336
  %8478 = fmul fast float %8211, %8195
  %8479 = fmul fast float %8478, %8336
  %8480 = fmul fast float %8211, %8196
  %8481 = fmul fast float %8480, %8336
  %8482 = fadd fast float %8473, %8450
  %8483 = fadd fast float %8474, %8452
  %8484 = fadd fast float %8475, %8454
  %8485 = fmul fast float %8482, %8194
  %8486 = fmul fast float %8483, %8195
  %8487 = fmul fast float %8484, %8196
  %8488 = fadd fast float %8477, %6483
  %8489 = fmul fast float %8488, %4701
  %8490 = fadd fast float %8479, %6484
  %8491 = fmul fast float %8490, %4701
  %8492 = fadd fast float %8481, %6485
  %8493 = fmul fast float %8492, %4701
  %8494 = fadd fast float %8485, %6722
  %8495 = fmul fast float %8494, %4701
  %8496 = fadd fast float %8486, %6726
  %8497 = fmul fast float %8496, %4701
  %8498 = fadd fast float %8487, %6730
  %8499 = fmul fast float %8498, %4701
  br label %8500

; <label>:8500                                    ; preds = %8398, %8187, %6706
  %8501 = phi float [ %6723, %6706 ], [ %6723, %8187 ], [ %8495, %8398 ]
  %8502 = phi float [ %6727, %6706 ], [ %6727, %8187 ], [ %8497, %8398 ]
  %8503 = phi float [ %6731, %6706 ], [ %6731, %8187 ], [ %8499, %8398 ]
  %8504 = phi float [ %6595, %6706 ], [ %6595, %8187 ], [ %8489, %8398 ]
  %8505 = phi float [ %6596, %6706 ], [ %6596, %8187 ], [ %8491, %8398 ]
  %8506 = phi float [ %6597, %6706 ], [ %6597, %8187 ], [ %8493, %8398 ]
  %8507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8508 = extractvalue %dx.types.CBufRet.f32 %8507, 0
  %8509 = fmul fast float %8508, %6578
  %8510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8511 = extractvalue %dx.types.CBufRet.f32 %8510, 3
  %8512 = fsub fast float 1.000000e+00, %4708
  %8513 = call float @dx.op.unary.f32(i32 7, float %8512)  ; Saturate(value)
  %8514 = fadd fast float %8506, %4707
  %8515 = fmul fast float %8514, %4708
  %8516 = fmul fast float %8513, %8511
  %8517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8518 = extractvalue %dx.types.CBufRet.f32 %8517, 3
  %8519 = fmul fast float %8504, %5661
  %8520 = fmul fast float %8505, %5662
  %8521 = fmul fast float %8506, %5663
  %8522 = fcmp fast ogt float %98, %225
  %8523 = and i1 %8522, %4776
  %8524 = or i1 %4855, %8523
  %8525 = icmp eq i32 %4775, 2
  %8526 = fcmp fast ole float %98, %225
  %8527 = and i1 %8526, %8525
  %8528 = or i1 %8527, %8524
  br i1 %8523, label %8529, label %8783

; <label>:8529                                    ; preds = %8500
  %8530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8531 = extractvalue %dx.types.CBufRet.f32 %8530, 2
  %8532 = extractvalue %dx.types.CBufRet.f32 %8530, 3
  %8533 = fmul fast float %8531, %111
  %8534 = fmul fast float %8532, %112
  %8535 = call float @dx.op.unary.f32(i32 7, float %8533)  ; Saturate(value)
  %8536 = call float @dx.op.unary.f32(i32 7, float %8534)  ; Saturate(value)
  %8537 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %45, float %8535, float %8536, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8538 = extractvalue %dx.types.ResRet.f32 %8537, 0
  %8539 = extractvalue %dx.types.ResRet.f32 %8537, 1
  %8540 = extractvalue %dx.types.ResRet.f32 %8537, 2
  %8541 = extractvalue %dx.types.ResRet.f32 %8537, 3
  %8542 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %45, float %8535, float %8536, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8543 = extractvalue %dx.types.ResRet.f32 %8542, 0
  %8544 = extractvalue %dx.types.ResRet.f32 %8542, 1
  %8545 = extractvalue %dx.types.ResRet.f32 %8542, 2
  %8546 = extractvalue %dx.types.ResRet.f32 %8542, 3
  %8547 = call float @dx.op.binary.f32(i32 35, float %8539, float %8540)  ; FMax(a,b)
  %8548 = call float @dx.op.binary.f32(i32 35, float %8538, float %8547)  ; FMax(a,b)
  %8549 = call float @dx.op.binary.f32(i32 35, float %8548, float %8541)  ; FMax(a,b)
  %8550 = call float @dx.op.binary.f32(i32 36, float %8544, float %8545)  ; FMin(a,b)
  %8551 = call float @dx.op.binary.f32(i32 36, float %8543, float %8550)  ; FMin(a,b)
  %8552 = call float @dx.op.binary.f32(i32 36, float %8551, float %8546)  ; FMin(a,b)
  %8553 = fmul fast float %8549, 2.550000e+02
  %8554 = fadd fast float %8553, 0x3F70101020000000
  %8555 = fptoui float %8554 to i32
  %8556 = fmul fast float %8552, 2.550000e+02
  %8557 = fadd fast float %8556, 0x3F70101020000000
  %8558 = fptoui float %8557 to i32
  %8559 = icmp ult i32 %8555, %8558
  br i1 %8559, label %8560, label %8728

; <label>:8560                                    ; preds = %8529
  %8561 = fcmp fast ogt float %97, 9.843750e-01
  %8562 = fadd fast float %98, -4.000000e+00
  %8563 = select i1 %8561, float -4.000000e+00, float %8562
  %8564 = call float @dx.op.binary.f32(i32 35, float %8563, float 0.000000e+00)  ; FMax(a,b)
  %8565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8566 = extractvalue %dx.types.CBufRet.f32 %8565, 0
  %8567 = fadd fast float %8566, %8564
  %8568 = extractvalue %dx.types.CBufRet.f32 %8565, 2
  %8569 = fmul fast float %8567, %8568
  %8570 = call float @dx.op.unary.f32(i32 23, float %8569)  ; Log(value)
  %8571 = extractvalue %dx.types.CBufRet.f32 %8565, 3
  %8572 = fmul fast float %8571, %8570
  %8573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8574 = extractvalue %dx.types.CBufRet.f32 %8573, 2
  %8575 = fmul fast float %8572, %8574
  %8576 = call float @dx.op.unary.f32(i32 7, float %8575)  ; Saturate(value)
  %8577 = uitofp i32 %8555 to float
  %8578 = uitofp i32 %8558 to float
  %8579 = fadd fast float %8577, 5.000000e-01
  %8580 = fadd fast float %8578, 5.000000e-01
  %8581 = fmul fast float %8574, %8579
  %8582 = fmul fast float %8574, %8580
  %8583 = fadd fast float %8581, 0x3F0FFB4800000000
  %8584 = fadd fast float %8582, 0xBF0FFB4800000000
  %8585 = call float @dx.op.binary.f32(i32 35, float %8576, float %8583)  ; FMax(a,b)
  %8586 = call float @dx.op.binary.f32(i32 36, float %8585, float %8584)  ; FMin(a,b)
  %8587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8588 = extractvalue %dx.types.CBufRet.f32 %8587, 1
  %8589 = extractvalue %dx.types.CBufRet.f32 %8587, 2
  %8590 = extractvalue %dx.types.CBufRet.f32 %8587, 0
  %8591 = fmul fast float %8588, %8586
  %8592 = fadd fast float %8590, %8591
  %8593 = fadd fast float %8590, %8589
  %8594 = fsub fast float %8588, %8589
  %8595 = fadd fast float %8594, %8590
  %8596 = call float @dx.op.binary.f32(i32 35, float %8592, float %8593)  ; FMax(a,b)
  %8597 = call float @dx.op.binary.f32(i32 36, float %8596, float %8595)  ; FMin(a,b)
  %8598 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %43, float %8535, float %8536, float %8597, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8599 = extractvalue %dx.types.ResRet.f32 %8598, 0
  %8600 = extractvalue %dx.types.ResRet.f32 %8598, 1
  %8601 = extractvalue %dx.types.ResRet.f32 %8598, 2
  %8602 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8603 = extractvalue %dx.types.CBufRet.i32 %8602, 0
  %8604 = extractvalue %dx.types.CBufRet.i32 %8602, 1
  %8605 = uitofp i32 %8603 to float
  %8606 = uitofp i32 %8604 to float
  %8607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8608 = extractvalue %dx.types.CBufRet.f32 %8607, 0
  %8609 = extractvalue %dx.types.CBufRet.f32 %8607, 1
  %8610 = fmul fast float %8605, %8535
  %8611 = fmul fast float %8606, %8536
  %8612 = fadd fast float %8610, -5.000000e-01
  %8613 = fadd fast float %8611, -5.000000e-01
  %8614 = call float @dx.op.unary.f32(i32 22, float %8612)  ; Frc(value)
  %8615 = call float @dx.op.unary.f32(i32 22, float %8613)  ; Frc(value)
  %8616 = fmul fast float %8614, %8614
  %8617 = fmul fast float %8616, %8614
  %8618 = fsub fast float 3.000000e+00, %8614
  %8619 = fmul fast float %8616, %8618
  %8620 = fmul fast float %8614, 3.000000e+00
  %8621 = fmul fast float %8617, 3.000000e+00
  %8622 = fmul fast float %8616, 6.000000e+00
  %8623 = fsub fast float %8621, %8622
  %8624 = fadd fast float %8623, 4.000000e+00
  %8625 = fmul fast float %8624, 0x3FC5555560000000
  %8626 = fmul fast float %8617, -3.000000e+00
  %8627 = fadd fast float %8616, %8614
  %8628 = fmul fast float %8627, 3.000000e+00
  %8629 = fadd fast float %8626, 1.000000e+00
  %8630 = fadd fast float %8629, %8628
  %8631 = fmul fast float %8617, 0x3FC5555560000000
  %8632 = fmul fast float %8615, %8615
  %8633 = fmul fast float %8632, %8615
  %8634 = fsub fast float 3.000000e+00, %8615
  %8635 = fmul fast float %8632, %8634
  %8636 = fmul fast float %8615, 3.000000e+00
  %8637 = fmul fast float %8633, 3.000000e+00
  %8638 = fmul fast float %8632, 6.000000e+00
  %8639 = fsub fast float %8637, %8638
  %8640 = fadd fast float %8639, 4.000000e+00
  %8641 = fmul fast float %8640, 0x3FC5555560000000
  %8642 = fmul fast float %8633, -3.000000e+00
  %8643 = fadd fast float %8632, %8615
  %8644 = fmul fast float %8643, 3.000000e+00
  %8645 = fadd fast float %8642, 1.000000e+00
  %8646 = fadd fast float %8645, %8644
  %8647 = fmul fast float %8633, 0x3FC5555560000000
  %8648 = fadd fast float %8614, 1.000000e+00
  %8649 = fsub fast float 1.000000e+00, %8620
  %8650 = fadd fast float %8649, %8619
  %8651 = fadd fast float %8650, %8624
  %8652 = fmul fast float %8651, 0x3FC5555560000000
  %8653 = fdiv fast float %8625, %8652
  %8654 = fsub fast float %8648, %8653
  %8655 = fsub fast float 1.000000e+00, %8614
  %8656 = fadd fast float %8630, %8617
  %8657 = fmul fast float %8656, 0x3FC5555560000000
  %8658 = fdiv fast float %8631, %8657
  %8659 = fadd fast float %8655, %8658
  %8660 = fadd fast float %8615, 1.000000e+00
  %8661 = fsub fast float 1.000000e+00, %8636
  %8662 = fadd fast float %8661, %8635
  %8663 = fadd fast float %8662, %8640
  %8664 = fmul fast float %8663, 0x3FC5555560000000
  %8665 = fdiv fast float %8641, %8664
  %8666 = fsub fast float %8660, %8665
  %8667 = fsub fast float 1.000000e+00, %8615
  %8668 = fadd fast float %8646, %8633
  %8669 = fmul fast float %8668, 0x3FC5555560000000
  %8670 = fdiv fast float %8647, %8669
  %8671 = fadd fast float %8670, %8667
  %8672 = fmul fast float %8654, %8608
  %8673 = fsub fast float %8535, %8672
  %8674 = fmul fast float %8659, %8608
  %8675 = fadd fast float %8674, %8535
  %8676 = fmul fast float %8671, %8609
  %8677 = fadd fast float %8676, %8536
  %8678 = fmul fast float %8666, %8609
  %8679 = fsub fast float %8536, %8678
  %8680 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %8673, float %8679, float %8597, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8681 = extractvalue %dx.types.ResRet.f32 %8680, 0
  %8682 = extractvalue %dx.types.ResRet.f32 %8680, 1
  %8683 = extractvalue %dx.types.ResRet.f32 %8680, 2
  %8684 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %8675, float %8679, float %8597, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8685 = extractvalue %dx.types.ResRet.f32 %8684, 0
  %8686 = extractvalue %dx.types.ResRet.f32 %8684, 1
  %8687 = extractvalue %dx.types.ResRet.f32 %8684, 2
  %8688 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %8673, float %8677, float %8597, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8689 = extractvalue %dx.types.ResRet.f32 %8688, 0
  %8690 = extractvalue %dx.types.ResRet.f32 %8688, 1
  %8691 = extractvalue %dx.types.ResRet.f32 %8688, 2
  %8692 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %8675, float %8677, float %8597, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8693 = extractvalue %dx.types.ResRet.f32 %8692, 0
  %8694 = extractvalue %dx.types.ResRet.f32 %8692, 1
  %8695 = extractvalue %dx.types.ResRet.f32 %8692, 2
  %8696 = fsub fast float %8689, %8681
  %8697 = fsub fast float %8690, %8682
  %8698 = fsub fast float %8691, %8683
  %8699 = fmul fast float %8696, %8669
  %8700 = fmul fast float %8697, %8669
  %8701 = fmul fast float %8698, %8669
  %8702 = fadd fast float %8699, %8681
  %8703 = fadd fast float %8700, %8682
  %8704 = fadd fast float %8701, %8683
  %8705 = fsub fast float %8693, %8685
  %8706 = fsub fast float %8694, %8686
  %8707 = fsub fast float %8695, %8687
  %8708 = fmul fast float %8705, %8669
  %8709 = fmul fast float %8706, %8669
  %8710 = fmul fast float %8707, %8669
  %8711 = fsub fast float %8685, %8702
  %8712 = fadd fast float %8711, %8708
  %8713 = fsub fast float %8686, %8703
  %8714 = fadd fast float %8713, %8709
  %8715 = fsub fast float %8687, %8704
  %8716 = fadd fast float %8715, %8710
  %8717 = fmul fast float %8712, %8657
  %8718 = fmul fast float %8714, %8657
  %8719 = fmul fast float %8716, %8657
  %8720 = fadd fast float %8717, %8702
  %8721 = fadd fast float %8718, %8703
  %8722 = fadd fast float %8719, %8704
  %8723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8724 = extractvalue %dx.types.CBufRet.f32 %8723, 1
  %8725 = fmul fast float %8720, %8724
  %8726 = fmul fast float %8721, %8724
  %8727 = fmul fast float %8722, %8724
  br label %8728

; <label>:8728                                    ; preds = %8560, %8529
  %8729 = phi float [ %8599, %8560 ], [ 1.000000e+00, %8529 ]
  %8730 = phi float [ %8600, %8560 ], [ 1.000000e+00, %8529 ]
  %8731 = phi float [ %8601, %8560 ], [ 1.000000e+00, %8529 ]
  %8732 = phi float [ %8725, %8560 ], [ 0.000000e+00, %8529 ]
  %8733 = phi float [ %8726, %8560 ], [ 0.000000e+00, %8529 ]
  %8734 = phi float [ %8727, %8560 ], [ 0.000000e+00, %8529 ]
  %8735 = call float @dx.op.dot3.f32(i32 55, float %8729, float %8730, float %8731, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8736 = call float @dx.op.dot3.f32(i32 55, float %8732, float %8733, float %8734, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8737 = select i1 %264, float %8735, float %8729
  %8738 = select i1 %264, float %8735, float %8730
  %8739 = select i1 %264, float 1.000000e+00, float %8731
  %8740 = select i1 %264, float %8736, float %8732
  %8741 = select i1 %264, float 0.000000e+00, float %8733
  %8742 = select i1 %264, float 0.000000e+00, float %8734
  %8743 = fmul fast float %8737, %8519
  %8744 = fmul fast float %8738, %8520
  %8745 = fmul fast float %8739, %8521
  %8746 = fadd fast float %8743, %8740
  %8747 = fadd fast float %8744, %8741
  %8748 = fadd fast float %8742, %8745
  %8749 = fmul fast float %8737, %8501
  %8750 = fmul fast float %8738, %8502
  %8751 = fmul fast float %8739, %8503
  %8752 = fmul fast float %139, %8531
  %8753 = fmul fast float %141, %8532
  %8754 = fsub fast float 1.000000e+00, %8752
  %8755 = fsub fast float 1.000000e+00, %8753
  %8756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8757 = extractvalue %dx.types.CBufRet.f32 %8756, 0
  %8758 = extractvalue %dx.types.CBufRet.f32 %8756, 1
  %8759 = extractvalue %dx.types.CBufRet.f32 %8756, 2
  %8760 = fmul fast float %8754, %8757
  %8761 = fmul fast float %8754, %8758
  %8762 = fmul fast float %8754, %8759
  %8763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8764 = extractvalue %dx.types.CBufRet.f32 %8763, 0
  %8765 = extractvalue %dx.types.CBufRet.f32 %8763, 1
  %8766 = extractvalue %dx.types.CBufRet.f32 %8763, 2
  %8767 = fmul fast float %8755, %8764
  %8768 = fmul fast float %8755, %8765
  %8769 = fmul fast float %8755, %8766
  %8770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8771 = extractvalue %dx.types.CBufRet.f32 %8770, 0
  %8772 = extractvalue %dx.types.CBufRet.f32 %8770, 1
  %8773 = extractvalue %dx.types.CBufRet.f32 %8770, 2
  %8774 = fadd fast float %8767, %8771
  %8775 = fadd fast float %8774, %8760
  %8776 = fadd fast float %8768, %8772
  %8777 = fadd fast float %8776, %8761
  %8778 = fadd fast float %8769, %8773
  %8779 = fadd fast float %8778, %8762
  %8780 = fmul fast float %8775, %225
  %8781 = fmul fast float %8777, %225
  %8782 = fmul fast float %8779, %225
  br label %8783

; <label>:8783                                    ; preds = %8728, %8500
  %8784 = phi float [ %8780, %8728 ], [ %190, %8500 ]
  %8785 = phi float [ %8781, %8728 ], [ %191, %8500 ]
  %8786 = phi float [ %8782, %8728 ], [ %192, %8500 ]
  %8787 = phi float [ %225, %8728 ], [ %98, %8500 ]
  %8788 = phi float [ %8746, %8728 ], [ %8519, %8500 ]
  %8789 = phi float [ %8747, %8728 ], [ %8520, %8500 ]
  %8790 = phi float [ %8748, %8728 ], [ %8521, %8500 ]
  %8791 = phi float [ %8749, %8728 ], [ %8501, %8500 ]
  %8792 = phi float [ %8750, %8728 ], [ %8502, %8500 ]
  %8793 = phi float [ %8751, %8728 ], [ %8503, %8500 ]
  %8794 = phi float [ %8729, %8728 ], [ 1.000000e+00, %8500 ]
  br i1 %8528, label %9943, label %8795

; <label>:8795                                    ; preds = %8783
  %8796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8797 = extractvalue %dx.types.CBufRet.f32 %8796, 0
  %8798 = extractvalue %dx.types.CBufRet.f32 %8796, 1
  %8799 = extractvalue %dx.types.CBufRet.f32 %8796, 2
  %8800 = extractvalue %dx.types.CBufRet.f32 %8796, 3
  %8801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8802 = extractvalue %dx.types.CBufRet.f32 %8801, 0
  %8803 = extractvalue %dx.types.CBufRet.f32 %8801, 1
  %8804 = extractvalue %dx.types.CBufRet.f32 %8801, 2
  %8805 = extractvalue %dx.types.CBufRet.f32 %8801, 3
  %8806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8807 = extractvalue %dx.types.CBufRet.f32 %8806, 0
  %8808 = extractvalue %dx.types.CBufRet.f32 %8806, 1
  %8809 = extractvalue %dx.types.CBufRet.f32 %8806, 2
  %8810 = extractvalue %dx.types.CBufRet.f32 %8806, 3
  %8811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8812 = extractvalue %dx.types.CBufRet.f32 %8811, 0
  %8813 = extractvalue %dx.types.CBufRet.f32 %8811, 1
  %8814 = extractvalue %dx.types.CBufRet.f32 %8811, 2
  %8815 = extractvalue %dx.types.CBufRet.f32 %8811, 3
  %8816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8817 = extractvalue %dx.types.CBufRet.f32 %8816, 3
  %8818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8819 = extractvalue %dx.types.CBufRet.f32 %8818, 3
  %8820 = extractvalue %dx.types.CBufRet.f32 %8818, 0
  %8821 = extractvalue %dx.types.CBufRet.f32 %8818, 1
  %8822 = extractvalue %dx.types.CBufRet.f32 %8818, 2
  %8823 = fcmp fast olt float %8822, -5.000000e-01
  %8824 = call float @dx.op.dot3.f32(i32 55, float %8784, float %8785, float %8786, float %8784, float %8785, float %8786)  ; Dot3(ax,ay,az,bx,by,bz)
  %8825 = call float @dx.op.unary.f32(i32 25, float %8824)  ; Rsqrt(value)
  %8826 = fmul fast float %8825, %8824
  %8827 = fmul fast float %8825, %8784
  %8828 = fmul fast float %8825, %8785
  %8829 = fmul fast float %8825, %8786
  %8830 = fadd fast float %8826, %8800
  %8831 = call float @dx.op.dot3.f32(i32 55, float %8827, float %8828, float %8829, float %8797, float %8798, float %8799)  ; Dot3(ax,ay,az,bx,by,bz)
  %8832 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8833 = extractvalue %dx.types.CBufRet.i32 %8832, 1
  %8834 = and i32 %8833, 1
  %8835 = icmp ne i32 %8834, 0
  %8836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8837 = extractvalue %dx.types.CBufRet.f32 %8836, 2
  %8838 = fcmp fast ogt float %8837, 0.000000e+00
  %8839 = and i1 %8835, %8838
  br i1 %8839, label %8840, label %9246, !dx.controlflow.hints !128

; <label>:8840                                    ; preds = %8795
  %8841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8842 = extractvalue %dx.types.CBufRet.f32 %8841, 3
  %8843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8844 = extractvalue %dx.types.CBufRet.f32 %8843, 2
  %8845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8846 = extractvalue %dx.types.CBufRet.f32 %8845, 2
  %8847 = fsub fast float %8844, %8846
  %8848 = and i32 %8833, 2
  %8849 = extractvalue %dx.types.CBufRet.i32 %8832, 0
  %8850 = call i32 @dx.op.binary.i32(i32 40, i32 %8849, i32 3)  ; UMin(a,b)
  %8851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8852 = extractvalue %dx.types.CBufRet.f32 %8851, 0
  %8853 = extractvalue %dx.types.CBufRet.f32 %8851, 1
  %8854 = extractvalue %dx.types.CBufRet.f32 %8845, 0
  %8855 = extractvalue %dx.types.CBufRet.f32 %8845, 1
  %8856 = fsub fast float %8852, %8854
  %8857 = fsub fast float %8853, %8855
  %8858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8859 = extractvalue %dx.types.CBufRet.f32 %8858, 0
  %8860 = fcmp fast ogt float %8859, 0.000000e+00
  %8861 = fsub fast float -0.000000e+00, %8856
  %8862 = fsub fast float -0.000000e+00, %8857
  %8863 = call float @dx.op.dot2.f32(i32 54, float %8827, float %8828, float %8827, float %8828)  ; Dot2(ax,ay,bx,by)
  %8864 = call float @dx.op.dot2.f32(i32 54, float %8827, float %8828, float %8861, float %8862)  ; Dot2(ax,ay,bx,by)
  %8865 = fmul fast float %8864, 2.000000e+00
  %8866 = call float @dx.op.dot2.f32(i32 54, float %8861, float %8862, float %8861, float %8862)  ; Dot2(ax,ay,bx,by)
  %8867 = fmul fast float %8859, %8859
  %8868 = fsub fast float %8866, %8867
  %8869 = fmul fast float %8865, %8865
  %8870 = fmul fast float %8863, 4.000000e+00
  %8871 = fmul fast float %8870, %8868
  %8872 = fsub fast float %8869, %8871
  %8873 = fcmp fast ogt float %8872, 0.000000e+00
  br i1 %8873, label %8874, label %8889

; <label>:8874                                    ; preds = %8840
  %8875 = fcmp fast ogt float %8865, 0.000000e+00
  %8876 = call float @dx.op.unary.f32(i32 24, float %8872)  ; Sqrt(value)
  %8877 = fsub fast float -0.000000e+00, %8876
  %8878 = select i1 %8875, float %8876, float %8877
  %8879 = fadd fast float %8878, %8865
  %8880 = fmul float %8879, -5.000000e-01
  %8881 = fdiv fast float %8880, %8863
  %8882 = call float @dx.op.binary.f32(i32 35, float %8881, float 0.000000e+00)  ; FMax(a,b)
  %8883 = call float @dx.op.binary.f32(i32 36, float %8826, float %8882)  ; FMin(a,b)
  %8884 = fdiv fast float %8868, %8880
  %8885 = call float @dx.op.binary.f32(i32 35, float %8884, float 0.000000e+00)  ; FMax(a,b)
  %8886 = call float @dx.op.binary.f32(i32 36, float %8826, float %8885)  ; FMin(a,b)
  %8887 = call float @dx.op.binary.f32(i32 36, float %8883, float %8886)  ; FMin(a,b)
  %8888 = call float @dx.op.binary.f32(i32 35, float %8883, float %8886)  ; FMax(a,b)
  br label %8889

; <label>:8889                                    ; preds = %8874, %8840
  %8890 = phi float [ %8888, %8874 ], [ -1.000000e+00, %8840 ]
  %8891 = phi float [ %8887, %8874 ], [ -1.000000e+00, %8840 ]
  %8892 = phi i1 [ true, %8874 ], [ false, %8840 ]
  %8893 = and i1 %8860, %8892
  br i1 %8893, label %8894, label %8896

; <label>:8894                                    ; preds = %8889
  %8895 = fcmp fast oeq float %8891, %8890
  br i1 %8895, label %9199, label %8897

; <label>:8896                                    ; preds = %8889
  br i1 %8860, label %9199, label %8897

; <label>:8897                                    ; preds = %8896, %8894
  %8898 = phi float [ %8826, %8896 ], [ %8890, %8894 ]
  %8899 = phi float [ 0.000000e+00, %8896 ], [ %8891, %8894 ]
  %8900 = icmp ne i32 %8848, 0
  %8901 = fmul fast float %8898, %8829
  %8902 = fadd fast float %8901, %8842
  %8903 = fmul fast float %8902, %8898
  %8904 = select i1 %8900, float 0.000000e+00, float %8903
  %8905 = fcmp fast oeq float %8829, 0.000000e+00
  %8906 = fdiv fast float %8847, %8829
  %8907 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8906)  ; FMax(a,b)
  %8908 = select i1 %8905, float %8898, float %8907
  %8909 = call float @dx.op.binary.f32(i32 36, float %8898, float %8908)  ; FMin(a,b)
  %8910 = fcmp fast ogt float %8829, 0.000000e+00
  %8911 = fcmp fast olt float %8847, 0.000000e+00
  br i1 %8910, label %8912, label %8969

; <label>:8912                                    ; preds = %8897
  %8913 = icmp eq i32 %8848, 0
  br i1 %8911, label %8914, label %8958

; <label>:8914                                    ; preds = %8912
  %8915 = select i1 %8913, float %8898, float 0.000000e+00
  %8916 = fsub fast float -0.000000e+00, %8915
  %8917 = call float @dx.op.unary.f32(i32 6, float %8916)  ; FAbs(value)
  %8918 = fmul fast float %8915, %8829
  %8919 = fadd fast float %8918, %8842
  %8920 = fmul fast float %8917, %8919
  %8921 = fsub fast float %8904, %8920
  %8922 = fsub fast float %8898, %8917
  %8923 = select i1 %8913, float %8922, float 0.000000e+00
  %8924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8925 = extractvalue %dx.types.CBufRet.f32 %8924, 0
  %8926 = extractvalue %dx.types.CBufRet.f32 %8924, 1
  %8927 = extractvalue %dx.types.CBufRet.f32 %8924, 2
  %8928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8929 = extractvalue %dx.types.CBufRet.f32 %8928, 0
  %8930 = extractvalue %dx.types.CBufRet.f32 %8928, 1
  %8931 = extractvalue %dx.types.CBufRet.f32 %8928, 2
  %8932 = extractvalue %dx.types.CBufRet.f32 %8928, 3
  %8933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8934 = extractvalue %dx.types.CBufRet.f32 %8933, 3
  %8935 = call float @dx.op.binary.f32(i32 36, float %8921, float %8934)  ; FMin(a,b)
  %8936 = fmul fast float %8932, %8923
  %8937 = call float @dx.op.unary.f32(i32 7, float %8936)  ; Saturate(value)
  %8938 = fsub fast float %8929, %8925
  %8939 = fsub fast float %8930, %8926
  %8940 = fsub fast float %8931, %8927
  %8941 = fmul fast float %8937, %8938
  %8942 = fmul fast float %8937, %8939
  %8943 = fmul fast float %8937, %8940
  %8944 = fadd fast float %8941, %8925
  %8945 = fadd fast float %8942, %8926
  %8946 = fadd fast float %8943, %8927
  %8947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8948 = extractvalue %dx.types.CBufRet.f32 %8947, 0
  %8949 = extractvalue %dx.types.CBufRet.f32 %8947, 1
  %8950 = fadd fast float %8949, %8948
  %8951 = call float @dx.op.unary.f32(i32 7, float %8950)  ; Saturate(value)
  %8952 = extractvalue %dx.types.CBufRet.f32 %8947, 2
  %8953 = extractvalue %dx.types.CBufRet.f32 %8947, 3
  %8954 = fadd fast float %8953, %8952
  %8955 = call float @dx.op.unary.f32(i32 7, float %8954)  ; Saturate(value)
  %8956 = fmul fast float %8951, %8935
  %8957 = fmul fast float %8956, %8955
  br label %9199

; <label>:8958                                    ; preds = %8912
  br i1 %8913, label %8959, label %8980

; <label>:8959                                    ; preds = %8958
  %8960 = call float @dx.op.binary.f32(i32 36, float %8909, float %8899)  ; FMin(a,b)
  %8961 = fsub fast float %8909, %8960
  %8962 = fsub fast float %8961, %8898
  %8963 = call float @dx.op.unary.f32(i32 6, float %8962)  ; FAbs(value)
  %8964 = fadd fast float %8961, %8898
  %8965 = fmul fast float %8964, %8829
  %8966 = fadd fast float %8965, %8842
  %8967 = fmul fast float %8966, %8963
  %8968 = fsub fast float %8904, %8967
  br label %8980

; <label>:8969                                    ; preds = %8897
  br i1 %8911, label %8970, label %8980

; <label>:8970                                    ; preds = %8969
  %8971 = call float @dx.op.binary.f32(i32 35, float %8899, float %8909)  ; FMax(a,b)
  %8972 = icmp eq i32 %8848, 0
  %8973 = select i1 %8972, float %8909, float 0.000000e+00
  %8974 = fsub fast float -0.000000e+00, %8973
  %8975 = call float @dx.op.unary.f32(i32 6, float %8974)  ; FAbs(value)
  %8976 = fmul fast float %8973, %8829
  %8977 = fadd fast float %8976, %8842
  %8978 = fmul fast float %8975, %8977
  %8979 = fsub fast float %8904, %8978
  br label %8980

; <label>:8980                                    ; preds = %8970, %8969, %8959, %8958
  %8981 = phi float [ %8899, %8958 ], [ %8899, %8959 ], [ %8971, %8970 ], [ %8899, %8969 ]
  %8982 = phi float [ 0.000000e+00, %8958 ], [ %8963, %8959 ], [ %8975, %8970 ], [ 0.000000e+00, %8969 ]
  %8983 = phi float [ %8904, %8958 ], [ %8968, %8959 ], [ %8979, %8970 ], [ %8904, %8969 ]
  %8984 = phi float [ %8909, %8958 ], [ %8909, %8959 ], [ %8898, %8970 ], [ %8898, %8969 ]
  %8985 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 0
  store float -1.000000e+00, float* %8985, align 4, !tbaa !117, !noalias !129
  %8986 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 1
  store float -1.000000e+00, float* %8986, align 4, !tbaa !117, !noalias !129
  %8987 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 2
  store float -1.000000e+00, float* %8987, align 4, !tbaa !117, !noalias !129
  %8988 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 0
  store float -1.000000e+00, float* %8988, align 4, !tbaa !117, !noalias !129
  %8989 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 1
  store float -1.000000e+00, float* %8989, align 4, !tbaa !117, !noalias !129
  %8990 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 2
  store float -1.000000e+00, float* %8990, align 4, !tbaa !117, !noalias !129
  %8991 = icmp sgt i32 %8850, 0
  br i1 %8991, label %8992, label %9053

; <label>:8992                                    ; preds = %8980
  br label %8993

; <label>:8993                                    ; preds = %9042, %8992
  %8994 = phi i32 [ %9043, %9042 ], [ 0, %8992 ]
  %8995 = phi i32 [ %9044, %9042 ], [ 0, %8992 ]
  %8996 = add nuw i32 %8995, 171
  %8997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %8996)  ; CBufferLoadLegacy(handle,regIndex)
  %8998 = extractvalue %dx.types.CBufRet.f32 %8997, 0
  %8999 = extractvalue %dx.types.CBufRet.f32 %8997, 1
  %9000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9001 = extractvalue %dx.types.CBufRet.f32 %9000, 0
  %9002 = extractvalue %dx.types.CBufRet.f32 %9000, 1
  %9003 = fsub fast float %8998, %9001
  %9004 = fsub fast float %8999, %9002
  %9005 = extractvalue %dx.types.CBufRet.f32 %8997, 2
  %9006 = fsub fast float -0.000000e+00, %9003
  %9007 = fsub fast float -0.000000e+00, %9004
  %9008 = call float @dx.op.dot2.f32(i32 54, float %8827, float %8828, float %9006, float %9007)  ; Dot2(ax,ay,bx,by)
  %9009 = fmul fast float %9008, 2.000000e+00
  %9010 = call float @dx.op.dot2.f32(i32 54, float %9006, float %9007, float %9006, float %9007)  ; Dot2(ax,ay,bx,by)
  %9011 = fmul fast float %9005, %9005
  %9012 = fsub fast float %9010, %9011
  %9013 = fmul fast float %9009, %9009
  %9014 = fmul fast float %8870, %9012
  %9015 = fsub fast float %9013, %9014
  %9016 = fcmp fast ogt float %9015, 0.000000e+00
  br i1 %9016, label %9017, label %9032

; <label>:9017                                    ; preds = %8993
  %9018 = fcmp fast ogt float %9009, 0.000000e+00
  %9019 = call float @dx.op.unary.f32(i32 24, float %9015)  ; Sqrt(value)
  %9020 = fsub fast float -0.000000e+00, %9019
  %9021 = select i1 %9018, float %9019, float %9020
  %9022 = fadd fast float %9021, %9009
  %9023 = fmul float %9022, -5.000000e-01
  %9024 = fdiv fast float %9023, %8863
  %9025 = call float @dx.op.binary.f32(i32 35, float %9024, float 0.000000e+00)  ; FMax(a,b)
  %9026 = call float @dx.op.binary.f32(i32 36, float %8898, float %9025)  ; FMin(a,b)
  %9027 = fdiv fast float %9012, %9023
  %9028 = call float @dx.op.binary.f32(i32 35, float %9027, float 0.000000e+00)  ; FMax(a,b)
  %9029 = call float @dx.op.binary.f32(i32 36, float %8898, float %9028)  ; FMin(a,b)
  %9030 = call float @dx.op.binary.f32(i32 36, float %9026, float %9029)  ; FMin(a,b)
  %9031 = call float @dx.op.binary.f32(i32 35, float %9026, float %9029)  ; FMax(a,b)
  br label %9032

; <label>:9032                                    ; preds = %9017, %8993
  %9033 = phi float [ %9031, %9017 ], [ -1.000000e+00, %8993 ]
  %9034 = phi float [ %9030, %9017 ], [ -1.000000e+00, %8993 ]
  %9035 = phi i1 [ true, %9017 ], [ false, %8993 ]
  br i1 %9035, label %9036, label %9042

; <label>:9036                                    ; preds = %9032
  %9037 = call float @dx.op.binary.f32(i32 35, float %8981, float %9034)  ; FMax(a,b)
  %9038 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %8995
  store float %9037, float* %9038, align 4, !tbaa !117, !noalias !129
  %9039 = call float @dx.op.binary.f32(i32 35, float %8981, float %9033)  ; FMax(a,b)
  %9040 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %8995
  store float %9039, float* %9040, align 4, !tbaa !117, !noalias !129
  %9041 = add nsw i32 %8994, 1
  br label %9042

; <label>:9042                                    ; preds = %9036, %9032
  %9043 = phi i32 [ %9041, %9036 ], [ %8994, %9032 ]
  %9044 = add nuw nsw i32 %8995, 1
  %9045 = icmp eq i32 %9044, %8850
  br i1 %9045, label %9046, label %8993

; <label>:9046                                    ; preds = %9042
  %9047 = load float, float* %8987, align 4, !tbaa !117, !alias.scope !145, !noalias !148
  %9048 = load float, float* %8986, align 4, !tbaa !117, !alias.scope !151, !noalias !152
  %9049 = load float, float* %8985, align 4, !tbaa !117, !alias.scope !153, !noalias !154
  %9050 = load float, float* %8990, align 4, !tbaa !117, !alias.scope !155, !noalias !158
  %9051 = load float, float* %8989, align 4, !tbaa !117, !alias.scope !161, !noalias !162
  %9052 = load float, float* %8988, align 4, !tbaa !117, !alias.scope !163, !noalias !164
  br label %9053

; <label>:9053                                    ; preds = %9046, %8980
  %9054 = phi float [ -1.000000e+00, %8980 ], [ %9052, %9046 ]
  %9055 = phi float [ -1.000000e+00, %8980 ], [ %9051, %9046 ]
  %9056 = phi float [ -1.000000e+00, %8980 ], [ %9050, %9046 ]
  %9057 = phi float [ -1.000000e+00, %8980 ], [ %9049, %9046 ]
  %9058 = phi float [ -1.000000e+00, %8980 ], [ %9048, %9046 ]
  %9059 = phi float [ -1.000000e+00, %8980 ], [ %9047, %9046 ]
  %9060 = phi i32 [ 0, %8980 ], [ %9043, %9046 ]
  %9061 = call float @dx.op.binary.f32(i32 36, float %9058, float %9059)  ; FMin(a,b)
  %9062 = call float @dx.op.binary.f32(i32 36, float %9057, float %9061)  ; FMin(a,b)
  %9063 = call float @dx.op.binary.f32(i32 35, float %9057, float %9058)  ; FMax(a,b)
  %9064 = call float @dx.op.binary.f32(i32 36, float %9063, float %9059)  ; FMin(a,b)
  %9065 = call float @dx.op.binary.f32(i32 36, float %9057, float %9058)  ; FMin(a,b)
  %9066 = call float @dx.op.binary.f32(i32 35, float %9065, float %9064)  ; FMax(a,b)
  %9067 = call float @dx.op.binary.f32(i32 35, float %9058, float %9059)  ; FMax(a,b)
  %9068 = call float @dx.op.binary.f32(i32 35, float %9057, float %9067)  ; FMax(a,b)
  store float %9062, float* %8985, align 4, !tbaa !117, !alias.scope !153, !noalias !154
  store float %9066, float* %8986, align 4, !tbaa !117, !alias.scope !151, !noalias !152
  store float %9068, float* %8987, align 4, !tbaa !117, !alias.scope !145, !noalias !148
  %9069 = call float @dx.op.binary.f32(i32 36, float %9055, float %9056)  ; FMin(a,b)
  %9070 = call float @dx.op.binary.f32(i32 36, float %9054, float %9069)  ; FMin(a,b)
  %9071 = call float @dx.op.binary.f32(i32 35, float %9054, float %9055)  ; FMax(a,b)
  %9072 = call float @dx.op.binary.f32(i32 36, float %9071, float %9056)  ; FMin(a,b)
  %9073 = call float @dx.op.binary.f32(i32 36, float %9054, float %9055)  ; FMin(a,b)
  %9074 = call float @dx.op.binary.f32(i32 35, float %9073, float %9072)  ; FMax(a,b)
  %9075 = call float @dx.op.binary.f32(i32 35, float %9055, float %9056)  ; FMax(a,b)
  %9076 = call float @dx.op.binary.f32(i32 35, float %9054, float %9075)  ; FMax(a,b)
  store float %9070, float* %8988, align 4, !tbaa !117, !alias.scope !163, !noalias !164
  store float %9074, float* %8989, align 4, !tbaa !117, !alias.scope !161, !noalias !162
  store float %9076, float* %8990, align 4, !tbaa !117, !alias.scope !155, !noalias !158
  %9077 = sub nsw i32 3, %9060
  %9078 = icmp sgt i32 %9077, 2
  br i1 %9078, label %9079, label %9117

; <label>:9079                                    ; preds = %9053
  %9080 = icmp eq i32 %8848, 0
  %9081 = fsub fast float %8898, %8982
  %9082 = select i1 %9080, float %9081, float %8982
  %9083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9084 = extractvalue %dx.types.CBufRet.f32 %9083, 0
  %9085 = extractvalue %dx.types.CBufRet.f32 %9083, 1
  %9086 = extractvalue %dx.types.CBufRet.f32 %9083, 2
  %9087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9088 = extractvalue %dx.types.CBufRet.f32 %9087, 0
  %9089 = extractvalue %dx.types.CBufRet.f32 %9087, 1
  %9090 = extractvalue %dx.types.CBufRet.f32 %9087, 2
  %9091 = extractvalue %dx.types.CBufRet.f32 %9087, 3
  %9092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9093 = extractvalue %dx.types.CBufRet.f32 %9092, 3
  %9094 = call float @dx.op.binary.f32(i32 36, float %8983, float %9093)  ; FMin(a,b)
  %9095 = fmul fast float %9091, %9082
  %9096 = call float @dx.op.unary.f32(i32 7, float %9095)  ; Saturate(value)
  %9097 = fsub fast float %9088, %9084
  %9098 = fsub fast float %9089, %9085
  %9099 = fsub fast float %9090, %9086
  %9100 = fmul fast float %9096, %9097
  %9101 = fmul fast float %9096, %9098
  %9102 = fmul fast float %9096, %9099
  %9103 = fadd fast float %9100, %9084
  %9104 = fadd fast float %9101, %9085
  %9105 = fadd fast float %9102, %9086
  %9106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9107 = extractvalue %dx.types.CBufRet.f32 %9106, 0
  %9108 = extractvalue %dx.types.CBufRet.f32 %9106, 1
  %9109 = fadd fast float %9108, %9107
  %9110 = call float @dx.op.unary.f32(i32 7, float %9109)  ; Saturate(value)
  %9111 = extractvalue %dx.types.CBufRet.f32 %9106, 2
  %9112 = extractvalue %dx.types.CBufRet.f32 %9106, 3
  %9113 = fadd fast float %9112, %9111
  %9114 = call float @dx.op.unary.f32(i32 7, float %9113)  ; Saturate(value)
  %9115 = fmul fast float %9110, %9094
  %9116 = fmul fast float %9115, %9114
  br label %9199

; <label>:9117                                    ; preds = %9053
  %9118 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9077
  %9119 = load float, float* %9118, align 4, !tbaa !117, !noalias !129
  %9120 = fcmp fast olt float %9119, %8984
  %9121 = icmp sgt i32 %9060, 0
  %9122 = and i1 %9121, %9120
  br i1 %9122, label %9123, label %9160

; <label>:9123                                    ; preds = %9117
  br label %9124

; <label>:9124                                    ; preds = %9153, %9123
  %9125 = phi float [ %9154, %9153 ], [ %8982, %9123 ]
  %9126 = phi float [ %9155, %9153 ], [ %8983, %9123 ]
  %9127 = phi float [ %9135, %9153 ], [ %9119, %9123 ]
  %9128 = phi i32 [ %9132, %9153 ], [ %9077, %9123 ]
  %9129 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %9128
  %9130 = load float, float* %9129, align 4, !tbaa !117, !noalias !129
  %9131 = icmp slt i32 %9128, 2
  %9132 = add nsw i32 %9128, 1
  %9133 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9132
  %9134 = load float, float* %9133, align 4, !tbaa !117, !noalias !129
  %9135 = select i1 %9131, float %9134, float %8898
  %9136 = call float @dx.op.binary.f32(i32 36, float %9135, float %9130)  ; FMin(a,b)
  %9137 = call float @dx.op.binary.f32(i32 36, float %8984, float %9136)  ; FMin(a,b)
  %9138 = icmp eq i32 %8848, 0
  %9139 = fadd fast float %9137, %9127
  %9140 = fmul fast float %9139, %8829
  %9141 = fadd fast float %9140, %8842
  br i1 %9138, label %9147, label %9142

; <label>:9142                                    ; preds = %9124
  %9143 = fsub fast float %9137, %9127
  %9144 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9143)  ; FMax(a,b)
  %9145 = fmul fast float %9144, %9141
  %9146 = fadd fast float %9145, %9126
  br label %9153

; <label>:9147                                    ; preds = %9124
  %9148 = fsub fast float %9127, %9137
  %9149 = call float @dx.op.unary.f32(i32 6, float %9148)  ; FAbs(value)
  %9150 = fadd fast float %9149, %9125
  %9151 = fmul fast float %9149, %9141
  %9152 = fsub fast float %9126, %9151
  br label %9153

; <label>:9153                                    ; preds = %9147, %9142
  %9154 = phi float [ %9144, %9142 ], [ %9150, %9147 ]
  %9155 = phi float [ %9146, %9142 ], [ %9152, %9147 ]
  %9156 = fcmp fast olt float %9135, %8984
  %9157 = icmp slt i32 %9132, 3
  %9158 = and i1 %9157, %9156
  br i1 %9158, label %9124, label %9159

; <label>:9159                                    ; preds = %9153
  br label %9160

; <label>:9160                                    ; preds = %9159, %9117
  %9161 = phi float [ %8982, %9117 ], [ %9154, %9159 ]
  %9162 = phi float [ %8983, %9117 ], [ %9155, %9159 ]
  %9163 = fsub fast float %8898, %9161
  %9164 = select i1 %8900, float %9161, float %9163
  %9165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9166 = extractvalue %dx.types.CBufRet.f32 %9165, 0
  %9167 = extractvalue %dx.types.CBufRet.f32 %9165, 1
  %9168 = extractvalue %dx.types.CBufRet.f32 %9165, 2
  %9169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9170 = extractvalue %dx.types.CBufRet.f32 %9169, 0
  %9171 = extractvalue %dx.types.CBufRet.f32 %9169, 1
  %9172 = extractvalue %dx.types.CBufRet.f32 %9169, 2
  %9173 = extractvalue %dx.types.CBufRet.f32 %9169, 3
  %9174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9175 = extractvalue %dx.types.CBufRet.f32 %9174, 3
  %9176 = call float @dx.op.binary.f32(i32 36, float %9162, float %9175)  ; FMin(a,b)
  %9177 = fmul fast float %9173, %9164
  %9178 = call float @dx.op.unary.f32(i32 7, float %9177)  ; Saturate(value)
  %9179 = fsub fast float %9170, %9166
  %9180 = fsub fast float %9171, %9167
  %9181 = fsub fast float %9172, %9168
  %9182 = fmul fast float %9178, %9179
  %9183 = fmul fast float %9178, %9180
  %9184 = fmul fast float %9178, %9181
  %9185 = fadd fast float %9182, %9166
  %9186 = fadd fast float %9183, %9167
  %9187 = fadd fast float %9184, %9168
  %9188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9189 = extractvalue %dx.types.CBufRet.f32 %9188, 0
  %9190 = extractvalue %dx.types.CBufRet.f32 %9188, 1
  %9191 = fadd fast float %9190, %9189
  %9192 = call float @dx.op.unary.f32(i32 7, float %9191)  ; Saturate(value)
  %9193 = extractvalue %dx.types.CBufRet.f32 %9188, 2
  %9194 = extractvalue %dx.types.CBufRet.f32 %9188, 3
  %9195 = fadd fast float %9194, %9193
  %9196 = call float @dx.op.unary.f32(i32 7, float %9195)  ; Saturate(value)
  %9197 = fmul fast float %9192, %9176
  %9198 = fmul fast float %9197, %9196
  br label %9199

; <label>:9199                                    ; preds = %9160, %9079, %8914, %8896, %8894
  %9200 = phi float [ %8923, %8914 ], [ %9082, %9079 ], [ %9164, %9160 ], [ 0.000000e+00, %8894 ], [ 0.000000e+00, %8896 ]
  %9201 = phi float [ %8957, %8914 ], [ %9116, %9079 ], [ %9198, %9160 ], [ 0.000000e+00, %8894 ], [ 0.000000e+00, %8896 ]
  %9202 = phi float [ %8944, %8914 ], [ %9103, %9079 ], [ %9185, %9160 ], [ 0.000000e+00, %8894 ], [ 0.000000e+00, %8896 ]
  %9203 = phi float [ %8945, %8914 ], [ %9104, %9079 ], [ %9186, %9160 ], [ 0.000000e+00, %8894 ], [ 0.000000e+00, %8896 ]
  %9204 = phi float [ %8946, %8914 ], [ %9105, %9079 ], [ %9187, %9160 ], [ 0.000000e+00, %8894 ], [ 0.000000e+00, %8896 ]
  %9205 = fmul fast float %8837, %9201
  %9206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9207 = extractvalue %dx.types.CBufRet.f32 %9206, 2
  %9208 = fsub fast float %8844, %9207
  %9209 = fcmp fast olt float %9205, -2.000000e+01
  %9210 = call float @dx.op.unary.f32(i32 21, float %9205)  ; Exp(value)
  %9211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9212 = extractvalue %dx.types.CBufRet.f32 %9211, 2
  %9213 = extractvalue %dx.types.CBufRet.f32 %9211, 3
  %9214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9215 = extractvalue %dx.types.CBufRet.f32 %9214, 2
  %9216 = fmul fast float %9213, %9208
  %9217 = call float @dx.op.unary.f32(i32 7, float %9216)  ; Saturate(value)
  %9218 = fsub fast float 1.000000e+00, %9217
  %9219 = fmul fast float %8829, 5.000000e-01
  %9220 = fadd fast float %9219, 5.000000e-01
  %9221 = call float @dx.op.unary.f32(i32 7, float %9220)  ; Saturate(value)
  %9222 = fsub fast float 1.000000e+00, %9221
  %9223 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9218)  ; FMax(a,b)
  %9224 = fdiv fast float %9222, %9223
  %9225 = fsub fast float %9208, %8786
  %9226 = call float @dx.op.unary.f32(i32 6, float %9225)  ; FAbs(value)
  %9227 = fmul fast float %9226, %9212
  %9228 = call float @dx.op.unary.f32(i32 7, float %9224)  ; Saturate(value)
  %9229 = fsub fast float 1.000000e+00, %9227
  %9230 = fmul fast float %9229, %9228
  %9231 = fadd fast float %9230, %9227
  %9232 = fmul fast float %9215, %9208
  %9233 = call float @dx.op.unary.f32(i32 7, float %9232)  ; Saturate(value)
  %9234 = fsub fast float 1.000000e+00, %9231
  %9235 = fmul fast float %9234, %9233
  %9236 = fadd fast float %9235, %9231
  %9237 = call float @dx.op.unary.f32(i32 7, float %9236)  ; Saturate(value)
  %9238 = fadd fast float %9210, -1.000000e+00
  %9239 = select i1 %9209, float -1.000000e+00, float %9238
  %9240 = fmul fast float %9237, %9239
  %9241 = fadd fast float %9240, 1.000000e+00
  %9242 = fsub fast float -0.000000e+00, %9240
  %9243 = fmul fast float %9202, %9242
  %9244 = fmul fast float %9203, %9242
  %9245 = fmul fast float %9204, %9242
  br label %9246

; <label>:9246                                    ; preds = %9199, %8795
  %9247 = phi float [ %9200, %9199 ], [ 0.000000e+00, %8795 ]
  %9248 = phi float [ %9241, %9199 ], [ 1.000000e+00, %8795 ]
  %9249 = phi float [ %9243, %9199 ], [ 0.000000e+00, %8795 ]
  %9250 = phi float [ %9244, %9199 ], [ 0.000000e+00, %8795 ]
  %9251 = phi float [ %9245, %9199 ], [ 0.000000e+00, %8795 ]
  %9252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9253 = extractvalue %dx.types.CBufRet.f32 %9252, 1
  %9254 = fsub fast float 1.000000e+00, %9248
  %9255 = fmul fast float %9254, %8830
  %9256 = fmul fast float %9255, %9253
  %9257 = fsub fast float %8830, %9256
  br i1 %8823, label %9258, label %9287, !dx.controlflow.hints !165

; <label>:9258                                    ; preds = %9246
  %9259 = fmul fast float %8831, %8820
  %9260 = fadd fast float %9259, %8821
  %9261 = call float @dx.op.unary.f32(i32 7, float %9260)  ; Saturate(value)
  %9262 = fmul fast float %8802, %9257
  %9263 = fsub fast float -0.000000e+00, %9262
  %9264 = fmul fast float %8803, %9257
  %9265 = fsub fast float -0.000000e+00, %9264
  %9266 = call float @dx.op.unary.f32(i32 21, float %9263)  ; Exp(value)
  %9267 = call float @dx.op.unary.f32(i32 21, float %9265)  ; Exp(value)
  %9268 = call float @dx.op.binary.f32(i32 35, float %8810, float %9266)  ; FMax(a,b)
  %9269 = call float @dx.op.binary.f32(i32 35, float %8810, float %9267)  ; FMax(a,b)
  %9270 = fsub fast float %9269, %9268
  %9271 = fmul fast float %9270, %9261
  %9272 = fadd fast float %9271, %9268
  %9273 = call float @dx.op.unary.f32(i32 7, float %9272)  ; Saturate(value)
  %9274 = fsub fast float %8807, %8812
  %9275 = fsub fast float %8808, %8813
  %9276 = fsub fast float %8809, %8814
  %9277 = fmul fast float %9261, %9274
  %9278 = fmul fast float %9261, %9275
  %9279 = fmul fast float %9261, %9276
  %9280 = fadd fast float %9277, %8812
  %9281 = fadd fast float %9278, %8813
  %9282 = fadd fast float %9279, %8814
  %9283 = fsub fast float 1.000000e+00, %9273
  %9284 = fmul fast float %9283, %9280
  %9285 = fmul fast float %9283, %9281
  %9286 = fmul fast float %9283, %9282
  br label %9346

; <label>:9287                                    ; preds = %9246
  %9288 = fmul fast float %9257, %8819
  %9289 = call float @dx.op.unary.f32(i32 7, float %9288)  ; Saturate(value)
  %9290 = fsub fast float 2.000000e+00, %9289
  %9291 = fmul fast float %9289, 9.921875e-01
  %9292 = fmul fast float %9291, %9290
  %9293 = fadd fast float %9292, 3.906250e-03
  %9294 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %45, float %9293, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9295 = extractvalue %dx.types.ResRet.f32 %9294, 0
  %9296 = fsub fast float %9289, %9295
  %9297 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9296)  ; FMax(a,b)
  %9298 = fmul fast float %8805, %8786
  %9299 = call float @dx.op.unary.f32(i32 6, float %9298)  ; FAbs(value)
  %9300 = fcmp fast ogt float %9299, 0x3EB0C6F7A0000000
  br i1 %9300, label %9301, label %9307, !dx.controlflow.hints !166

; <label>:9301                                    ; preds = %9287
  %9302 = fmul fast float %9298, 0xBFF7154760000000
  %9303 = call float @dx.op.unary.f32(i32 21, float %9302)  ; Exp(value)
  %9304 = fsub fast float 1.000000e+00, %9303
  %9305 = fdiv fast float %9304, %9298
  %9306 = fmul fast float %9305, %8815
  br label %9307

; <label>:9307                                    ; preds = %9301, %9287
  %9308 = phi float [ %9306, %9301 ], [ %8815, %9287 ]
  %9309 = fadd fast float %9308, %8817
  %9310 = fmul fast float %9309, %9297
  %9311 = fmul fast float %8802, %9310
  %9312 = fsub fast float -0.000000e+00, %9311
  %9313 = fmul fast float %8803, %9310
  %9314 = fsub fast float -0.000000e+00, %9313
  %9315 = fmul fast float %8804, %9310
  %9316 = fsub fast float -0.000000e+00, %9315
  %9317 = call float @dx.op.unary.f32(i32 21, float %9312)  ; Exp(value)
  %9318 = call float @dx.op.unary.f32(i32 21, float %9314)  ; Exp(value)
  %9319 = call float @dx.op.unary.f32(i32 21, float %9316)  ; Exp(value)
  %9320 = fmul fast float %8831, %8831
  %9321 = fadd fast float %9320, 1.000000e+00
  %9322 = fmul fast float %9321, 0x3FAE8EC8A0000000
  %9323 = fmul fast float %9322, %8812
  %9324 = fmul fast float %9322, %8813
  %9325 = fmul fast float %9322, %8814
  %9326 = fmul fast float %8831, %8810
  %9327 = fsub fast float 1.000000e+00, %9326
  %9328 = fmul fast float %8810, %8810
  %9329 = fsub fast float 1.000000e+00, %9328
  %9330 = fmul fast float %9329, 0x3FB45F3060000000
  %9331 = fmul fast float %9327, %9327
  %9332 = fdiv fast float 1.000000e+00, %9331
  %9333 = fmul fast float %9330, %9332
  %9334 = fmul fast float %9333, %8807
  %9335 = fmul fast float %9333, %8808
  %9336 = fmul fast float %9333, %8809
  %9337 = fadd fast float %9334, %9323
  %9338 = fadd fast float %9335, %9324
  %9339 = fadd fast float %9336, %9325
  %9340 = fsub fast float 1.000000e+00, %9317
  %9341 = fsub fast float 1.000000e+00, %9318
  %9342 = fsub fast float 1.000000e+00, %9319
  %9343 = fmul fast float %9337, %9340
  %9344 = fmul fast float %9338, %9341
  %9345 = fmul fast float %9339, %9342
  br label %9346

; <label>:9346                                    ; preds = %9307, %9258
  %9347 = phi float [ %9284, %9258 ], [ %9343, %9307 ]
  %9348 = phi float [ %9285, %9258 ], [ %9344, %9307 ]
  %9349 = phi float [ %9286, %9258 ], [ %9345, %9307 ]
  %9350 = phi float [ %9273, %9258 ], [ %9317, %9307 ]
  %9351 = phi float [ %9273, %9258 ], [ %9318, %9307 ]
  %9352 = phi float [ %9273, %9258 ], [ %9319, %9307 ]
  br i1 %8839, label %9353, label %9551, !dx.controlflow.hints !167

; <label>:9353                                    ; preds = %9346
  %9354 = extractvalue %dx.types.CBufRet.f32 %9252, 0
  %9355 = fmul fast float %9354, %9254
  %9356 = fsub fast float %9249, %9347
  %9357 = fsub fast float %9250, %9348
  %9358 = fsub fast float %9251, %9349
  %9359 = fmul fast float %9355, %9356
  %9360 = fmul fast float %9355, %9357
  %9361 = fmul fast float %9355, %9358
  %9362 = fadd fast float %9359, %9347
  %9363 = fadd fast float %9360, %9348
  %9364 = fadd fast float %9361, %9349
  %9365 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9350)  ; FMax(a,b)
  %9366 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9351)  ; FMax(a,b)
  %9367 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9352)  ; FMax(a,b)
  %9368 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9248)  ; FMax(a,b)
  %9369 = call float @dx.op.binary.f32(i32 35, float %9247, float %9257)  ; FMax(a,b)
  %9370 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9369)  ; FMax(a,b)
  %9371 = fdiv fast float %9247, %9370
  %9372 = call float @dx.op.unary.f32(i32 7, float %9371)  ; Saturate(value)
  %9373 = fdiv fast float %9257, %9370
  %9374 = call float @dx.op.unary.f32(i32 7, float %9373)  ; Saturate(value)
  %9375 = fcmp fast une float %9368, 1.000000e+00
  br i1 %9375, label %9376, label %9389, !dx.controlflow.hints !168

; <label>:9376                                    ; preds = %9353
  %9377 = call float @dx.op.unary.f32(i32 23, float %9368)  ; Log(value)
  %9378 = fmul fast float %9377, 0x3FE62E4300000000
  %9379 = fmul fast float %9249, %9378
  %9380 = fsub fast float -0.000000e+00, %9379
  %9381 = fmul fast float %9250, %9378
  %9382 = fsub fast float -0.000000e+00, %9381
  %9383 = fmul fast float %9251, %9378
  %9384 = fsub fast float -0.000000e+00, %9383
  %9385 = fsub fast float 1.000000e+00, %9368
  %9386 = fdiv fast float %9380, %9385
  %9387 = fdiv fast float %9382, %9385
  %9388 = fdiv fast float %9384, %9385
  br label %9389

; <label>:9389                                    ; preds = %9376, %9353
  %9390 = phi float [ %9386, %9376 ], [ %9249, %9353 ]
  %9391 = phi float [ %9387, %9376 ], [ %9250, %9353 ]
  %9392 = phi float [ %9388, %9376 ], [ %9251, %9353 ]
  %9393 = phi float [ %9378, %9376 ], [ 0.000000e+00, %9353 ]
  %9394 = fcmp fast une float %9365, 1.000000e+00
  br i1 %9394, label %9395, label %9402, !dx.controlflow.hints !169

; <label>:9395                                    ; preds = %9389
  %9396 = call float @dx.op.unary.f32(i32 23, float %9365)  ; Log(value)
  %9397 = fmul fast float %9396, 0x3FE62E4300000000
  %9398 = fmul fast float %9362, %9397
  %9399 = fsub fast float -0.000000e+00, %9398
  %9400 = fsub fast float 1.000000e+00, %9365
  %9401 = fdiv fast float %9399, %9400
  br label %9402

; <label>:9402                                    ; preds = %9395, %9389
  %9403 = phi float [ %9401, %9395 ], [ %9362, %9389 ]
  %9404 = phi float [ %9397, %9395 ], [ 0.000000e+00, %9389 ]
  %9405 = fcmp fast une float %9366, 1.000000e+00
  br i1 %9405, label %9406, label %9413, !dx.controlflow.hints !169

; <label>:9406                                    ; preds = %9402
  %9407 = call float @dx.op.unary.f32(i32 23, float %9366)  ; Log(value)
  %9408 = fmul fast float %9407, 0x3FE62E4300000000
  %9409 = fmul fast float %9363, %9408
  %9410 = fsub fast float -0.000000e+00, %9409
  %9411 = fsub fast float 1.000000e+00, %9366
  %9412 = fdiv fast float %9410, %9411
  br label %9413

; <label>:9413                                    ; preds = %9406, %9402
  %9414 = phi float [ %9412, %9406 ], [ %9363, %9402 ]
  %9415 = phi float [ %9408, %9406 ], [ 0.000000e+00, %9402 ]
  %9416 = fcmp fast une float %9367, 1.000000e+00
  br i1 %9416, label %9417, label %9424, !dx.controlflow.hints !169

; <label>:9417                                    ; preds = %9413
  %9418 = call float @dx.op.unary.f32(i32 23, float %9367)  ; Log(value)
  %9419 = fmul fast float %9418, 0x3FE62E4300000000
  %9420 = fmul fast float %9364, %9419
  %9421 = fsub fast float -0.000000e+00, %9420
  %9422 = fsub fast float 1.000000e+00, %9367
  %9423 = fdiv fast float %9421, %9422
  br label %9424

; <label>:9424                                    ; preds = %9417, %9413
  %9425 = phi float [ %9423, %9417 ], [ %9364, %9413 ]
  %9426 = phi float [ %9419, %9417 ], [ 0.000000e+00, %9413 ]
  %9427 = fmul fast float %9390, %9374
  %9428 = fmul fast float %9391, %9374
  %9429 = fmul fast float %9392, %9374
  %9430 = fmul fast float %9393, %9374
  %9431 = fmul fast float %9403, %9372
  %9432 = fmul fast float %9414, %9372
  %9433 = fmul fast float %9425, %9372
  %9434 = fmul fast float %9404, %9372
  %9435 = fmul fast float %9415, %9372
  %9436 = fmul fast float %9426, %9372
  %9437 = fadd fast float %9431, %9427
  %9438 = fadd fast float %9432, %9428
  %9439 = fadd fast float %9433, %9429
  %9440 = fadd fast float %9434, %9430
  %9441 = fadd fast float %9435, %9430
  %9442 = fadd fast float %9436, %9430
  %9443 = fcmp fast une float %9440, 0.000000e+00
  br i1 %9443, label %9444, label %9451, !dx.controlflow.hints !170

; <label>:9444                                    ; preds = %9424
  %9445 = fmul fast float %9440, 0x3FF7154760000000
  %9446 = call float @dx.op.unary.f32(i32 21, float %9445)  ; Exp(value)
  %9447 = fsub fast float 1.000000e+00, %9446
  %9448 = fmul fast float %9437, %9447
  %9449 = fsub fast float -0.000000e+00, %9448
  %9450 = fdiv fast float %9449, %9440
  br label %9451

; <label>:9451                                    ; preds = %9444, %9424
  %9452 = phi float [ %9446, %9444 ], [ 1.000000e+00, %9424 ]
  %9453 = phi float [ %9450, %9444 ], [ %9437, %9424 ]
  %9454 = fcmp fast une float %9441, 0.000000e+00
  br i1 %9454, label %9455, label %9462, !dx.controlflow.hints !170

; <label>:9455                                    ; preds = %9451
  %9456 = fmul fast float %9441, 0x3FF7154760000000
  %9457 = call float @dx.op.unary.f32(i32 21, float %9456)  ; Exp(value)
  %9458 = fsub fast float 1.000000e+00, %9457
  %9459 = fmul fast float %9438, %9458
  %9460 = fsub fast float -0.000000e+00, %9459
  %9461 = fdiv fast float %9460, %9441
  br label %9462

; <label>:9462                                    ; preds = %9455, %9451
  %9463 = phi float [ %9457, %9455 ], [ 1.000000e+00, %9451 ]
  %9464 = phi float [ %9461, %9455 ], [ %9438, %9451 ]
  %9465 = fcmp fast une float %9442, 0.000000e+00
  br i1 %9465, label %9466, label %9473, !dx.controlflow.hints !170

; <label>:9466                                    ; preds = %9462
  %9467 = fmul fast float %9442, 0x3FF7154760000000
  %9468 = call float @dx.op.unary.f32(i32 21, float %9467)  ; Exp(value)
  %9469 = fsub fast float 1.000000e+00, %9468
  %9470 = fmul fast float %9439, %9469
  %9471 = fsub fast float -0.000000e+00, %9470
  %9472 = fdiv fast float %9471, %9442
  br label %9473

; <label>:9473                                    ; preds = %9466, %9462
  %9474 = phi float [ %9468, %9466 ], [ 1.000000e+00, %9462 ]
  %9475 = phi float [ %9472, %9466 ], [ %9439, %9462 ]
  %9476 = fcmp fast ogt float %9372, %9374
  br i1 %9476, label %9477, label %9497

; <label>:9477                                    ; preds = %9473
  %9478 = fsub fast float 1.000000e+00, %9374
  %9479 = fmul fast float %9390, %9478
  %9480 = fmul fast float %9391, %9478
  %9481 = fmul fast float %9392, %9478
  %9482 = fmul fast float %9393, %9478
  %9483 = fcmp fast une float %9482, 0.000000e+00
  br i1 %9483, label %9484, label %9535, !dx.controlflow.hints !171

; <label>:9484                                    ; preds = %9477
  %9485 = fmul fast float %9482, 0x3FF7154760000000
  %9486 = call float @dx.op.unary.f32(i32 21, float %9485)  ; Exp(value)
  %9487 = fsub fast float 1.000000e+00, %9486
  %9488 = fmul fast float %9479, %9487
  %9489 = fsub fast float -0.000000e+00, %9488
  %9490 = fmul fast float %9480, %9487
  %9491 = fsub fast float -0.000000e+00, %9490
  %9492 = fmul fast float %9481, %9487
  %9493 = fsub fast float -0.000000e+00, %9492
  %9494 = fdiv fast float %9489, %9482
  %9495 = fdiv fast float %9491, %9482
  %9496 = fdiv fast float %9493, %9482
  br label %9535

; <label>:9497                                    ; preds = %9473
  %9498 = fsub fast float 1.000000e+00, %9372
  %9499 = fmul fast float %9403, %9498
  %9500 = fmul fast float %9414, %9498
  %9501 = fmul fast float %9425, %9498
  %9502 = fmul fast float %9404, %9498
  %9503 = fmul fast float %9415, %9498
  %9504 = fmul fast float %9426, %9498
  %9505 = fcmp fast une float %9502, 0.000000e+00
  br i1 %9505, label %9506, label %9513, !dx.controlflow.hints !170

; <label>:9506                                    ; preds = %9497
  %9507 = fmul fast float %9502, 0x3FF7154760000000
  %9508 = call float @dx.op.unary.f32(i32 21, float %9507)  ; Exp(value)
  %9509 = fsub fast float 1.000000e+00, %9508
  %9510 = fmul fast float %9499, %9509
  %9511 = fsub fast float -0.000000e+00, %9510
  %9512 = fdiv fast float %9511, %9502
  br label %9513

; <label>:9513                                    ; preds = %9506, %9497
  %9514 = phi float [ %9512, %9506 ], [ %9499, %9497 ]
  %9515 = phi float [ %9508, %9506 ], [ 1.000000e+00, %9497 ]
  %9516 = fcmp fast une float %9503, 0.000000e+00
  br i1 %9516, label %9517, label %9524, !dx.controlflow.hints !170

; <label>:9517                                    ; preds = %9513
  %9518 = fmul fast float %9503, 0x3FF7154760000000
  %9519 = call float @dx.op.unary.f32(i32 21, float %9518)  ; Exp(value)
  %9520 = fsub fast float 1.000000e+00, %9519
  %9521 = fmul fast float %9500, %9520
  %9522 = fsub fast float -0.000000e+00, %9521
  %9523 = fdiv fast float %9522, %9503
  br label %9524

; <label>:9524                                    ; preds = %9517, %9513
  %9525 = phi float [ %9523, %9517 ], [ %9500, %9513 ]
  %9526 = phi float [ %9519, %9517 ], [ 1.000000e+00, %9513 ]
  %9527 = fcmp fast une float %9504, 0.000000e+00
  br i1 %9527, label %9528, label %9535, !dx.controlflow.hints !170

; <label>:9528                                    ; preds = %9524
  %9529 = fmul fast float %9504, 0x3FF7154760000000
  %9530 = call float @dx.op.unary.f32(i32 21, float %9529)  ; Exp(value)
  %9531 = fsub fast float 1.000000e+00, %9530
  %9532 = fmul fast float %9501, %9531
  %9533 = fsub fast float -0.000000e+00, %9532
  %9534 = fdiv fast float %9533, %9504
  br label %9535

; <label>:9535                                    ; preds = %9528, %9524, %9484, %9477
  %9536 = phi float [ %9534, %9528 ], [ %9496, %9484 ], [ %9481, %9477 ], [ %9501, %9524 ]
  %9537 = phi float [ %9525, %9528 ], [ %9495, %9484 ], [ %9480, %9477 ], [ %9525, %9524 ]
  %9538 = phi float [ %9514, %9528 ], [ %9494, %9484 ], [ %9479, %9477 ], [ %9514, %9524 ]
  %9539 = phi float [ %9530, %9528 ], [ %9486, %9484 ], [ 1.000000e+00, %9477 ], [ 1.000000e+00, %9524 ]
  %9540 = phi float [ %9526, %9528 ], [ %9486, %9484 ], [ 1.000000e+00, %9477 ], [ %9526, %9524 ]
  %9541 = phi float [ %9515, %9528 ], [ %9486, %9484 ], [ 1.000000e+00, %9477 ], [ %9515, %9524 ]
  %9542 = fmul fast float %9541, %9453
  %9543 = fmul fast float %9540, %9464
  %9544 = fmul fast float %9539, %9475
  %9545 = fadd fast float %9542, %9538
  %9546 = fadd fast float %9543, %9537
  %9547 = fadd fast float %9544, %9536
  %9548 = fmul fast float %9541, %9452
  %9549 = fmul fast float %9540, %9463
  %9550 = fmul fast float %9539, %9474
  br label %9551

; <label>:9551                                    ; preds = %9535, %9346
  %9552 = phi float [ %9550, %9535 ], [ %9352, %9346 ]
  %9553 = phi float [ %9549, %9535 ], [ %9351, %9346 ]
  %9554 = phi float [ %9548, %9535 ], [ %9350, %9346 ]
  %9555 = phi float [ %9547, %9535 ], [ %9349, %9346 ]
  %9556 = phi float [ %9546, %9535 ], [ %9348, %9346 ]
  %9557 = phi float [ %9545, %9535 ], [ %9347, %9346 ]
  %9558 = fmul fast float %9554, %8794
  %9559 = call float @dx.op.dot3.f32(i32 55, float %9554, float %9553, float %9552, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9560 = call float @dx.op.dot3.f32(i32 55, float %9557, float %9556, float %9555, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9561 = select i1 %264, float %9559, float %9554
  %9562 = select i1 %264, float %9559, float %9553
  %9563 = select i1 %264, float 1.000000e+00, float %9552
  %9564 = select i1 %264, float %9560, float %9557
  %9565 = select i1 %264, float 0.000000e+00, float %9556
  %9566 = select i1 %264, float 0.000000e+00, float %9555
  %9567 = fmul fast float %9561, %8788
  %9568 = fmul fast float %9562, %8789
  %9569 = fmul fast float %9563, %8790
  %9570 = fadd fast float %9567, %9564
  %9571 = fadd fast float %9568, %9565
  %9572 = fadd fast float %9566, %9569
  %9573 = fmul fast float %9561, %8791
  %9574 = fmul fast float %9562, %8792
  %9575 = fmul fast float %9563, %8793
  %9576 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9577 = extractvalue %dx.types.CBufRet.i32 %9576, 0
  %9578 = icmp eq i32 %9577, 0
  br i1 %9578, label %9943, label %9579, !dx.controlflow.hints !172

; <label>:9579                                    ; preds = %9551
  %9580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9581 = extractvalue %dx.types.CBufRet.f32 %9580, 2
  %9582 = extractvalue %dx.types.CBufRet.f32 %9580, 3
  %9583 = fmul fast float %9581, %111
  %9584 = fmul fast float %9582, %112
  %9585 = fmul fast float %9583, 2.000000e+00
  %9586 = fmul fast float %9584, 2.000000e+00
  %9587 = fsub fast float 1.000000e+00, %9585
  %9588 = fsub fast float 1.000000e+00, %9586
  %9589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9590 = extractvalue %dx.types.CBufRet.f32 %9589, 0
  %9591 = extractvalue %dx.types.CBufRet.f32 %9589, 1
  %9592 = extractvalue %dx.types.CBufRet.f32 %9589, 2
  %9593 = fmul fast float %9587, %9590
  %9594 = fmul fast float %9587, %9591
  %9595 = fmul fast float %9587, %9592
  %9596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9597 = extractvalue %dx.types.CBufRet.f32 %9596, 0
  %9598 = extractvalue %dx.types.CBufRet.f32 %9596, 1
  %9599 = extractvalue %dx.types.CBufRet.f32 %9596, 2
  %9600 = fmul fast float %9588, %9597
  %9601 = fmul fast float %9588, %9598
  %9602 = fmul fast float %9588, %9599
  %9603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9604 = extractvalue %dx.types.CBufRet.f32 %9603, 0
  %9605 = extractvalue %dx.types.CBufRet.f32 %9603, 1
  %9606 = extractvalue %dx.types.CBufRet.f32 %9603, 2
  %9607 = fadd fast float %9600, %9604
  %9608 = fadd fast float %9607, %9593
  %9609 = fadd fast float %9601, %9605
  %9610 = fadd fast float %9609, %9594
  %9611 = fadd fast float %9602, %9606
  %9612 = fadd fast float %9611, %9595
  %9613 = fmul fast float %9608, %8787
  %9614 = fmul fast float %9610, %8787
  %9615 = fmul fast float %9612, %8787
  %9616 = fmul fast float %9613, %9613
  %9617 = fmul fast float %9614, %9614
  %9618 = fadd fast float %9616, %9617
  %9619 = fmul fast float %9615, %9615
  %9620 = fadd fast float %9618, %9619
  %9621 = call float @dx.op.unary.f32(i32 24, float %9620)  ; Sqrt(value)
  %9622 = extractvalue %dx.types.CBufRet.f32 %8517, 0
  %9623 = fsub fast float %9621, %9622
  %9624 = extractvalue %dx.types.CBufRet.f32 %8517, 2
  %9625 = fmul fast float %9623, %9624
  %9626 = call float @dx.op.unary.f32(i32 7, float %9625)  ; Saturate(value)
  %9627 = fadd fast float %9626, -5.000000e-01
  %9628 = fmul fast float %9627, 2.000000e+00
  %9629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9630 = extractvalue %dx.types.CBufRet.f32 %9629, 2
  %9631 = call float @dx.op.binary.f32(i32 36, float %9630, float %9628)  ; FMin(a,b)
  %9632 = fsub fast float -0.000000e+00, %9630
  %9633 = fcmp fast ogt float %9631, %9632
  br i1 %9633, label %9634, label %9943, !dx.controlflow.hints !173

; <label>:9634                                    ; preds = %9579
  %9635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9636 = extractvalue %dx.types.CBufRet.f32 %9635, 3
  %9637 = fcmp fast ogt float %9636, 0.000000e+00
  br i1 %9637, label %9638, label %9713, !dx.controlflow.hints !174

; <label>:9638                                    ; preds = %9634
  %9639 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %9640 = extractvalue %dx.types.Dimensions %9639, 0
  %9641 = sitofp i32 %9640 to float
  %9642 = extractvalue %dx.types.Dimensions %9639, 1
  %9643 = sitofp i32 %9642 to float
  %9644 = fmul fast float %9583, %9641
  %9645 = fmul fast float %9584, %9643
  %9646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %9647 = extractvalue %dx.types.CBufRet.f32 %9646, 1
  %9648 = fsub fast float -0.000000e+00, %9647
  %9649 = fptoui float %9648 to i32
  %9650 = fptoui float %9644 to i32
  %9651 = fptoui float %9645 to i32
  %9652 = and i32 %9649, 31
  %9653 = lshr i32 %9650, %9652
  %9654 = lshr i32 %9651, %9652
  %9655 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 %9649, i32 %9653, i32 %9654, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9656 = extractvalue %dx.types.ResRet.f32 %9655, 0
  %9657 = fcmp fast olt float %9656, -1.000000e+00
  %9658 = fcmp fast ogt float %9656, -1.000000e+00
  %9659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9660 = extractvalue %dx.types.CBufRet.f32 %9659, 1
  %9661 = select i1 %9658, float %9660, float 1.000000e+00
  %9662 = fadd fast float %9656, 1.000000e+00
  %9663 = fmul fast float %9661, %9662
  %9664 = call float @dx.op.unary.f32(i32 6, float %9663)  ; FAbs(value)
  %9665 = extractvalue %dx.types.CBufRet.f32 %9659, 3
  %9666 = fcmp fast oge float %9664, %9665
  %9667 = select i1 %9666, float 0x4197782600000000, float %9664
  %9668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9669 = extractvalue %dx.types.CBufRet.f32 %9668, 0
  %9670 = extractvalue %dx.types.CBufRet.f32 %9668, 1
  %9671 = extractvalue %dx.types.CBufRet.f32 %9668, 2
  %9672 = select i1 %9657, float %9669, float %9590
  %9673 = select i1 %9657, float %9670, float %9591
  %9674 = select i1 %9657, float %9671, float %9592
  %9675 = fmul fast float %9672, %9587
  %9676 = fmul fast float %9673, %9587
  %9677 = fmul fast float %9674, %9587
  %9678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9679 = extractvalue %dx.types.CBufRet.f32 %9678, 0
  %9680 = extractvalue %dx.types.CBufRet.f32 %9678, 1
  %9681 = extractvalue %dx.types.CBufRet.f32 %9678, 2
  %9682 = select i1 %9657, float %9679, float %9597
  %9683 = select i1 %9657, float %9680, float %9598
  %9684 = select i1 %9657, float %9681, float %9599
  %9685 = fmul fast float %9682, %9588
  %9686 = fmul fast float %9683, %9588
  %9687 = fmul fast float %9684, %9588
  %9688 = fadd fast float %9685, %9675
  %9689 = fadd fast float %9686, %9676
  %9690 = fadd fast float %9687, %9677
  %9691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9692 = extractvalue %dx.types.CBufRet.f32 %9691, 0
  %9693 = extractvalue %dx.types.CBufRet.f32 %9691, 1
  %9694 = extractvalue %dx.types.CBufRet.f32 %9691, 2
  %9695 = select i1 %9657, float %9692, float %9604
  %9696 = select i1 %9657, float %9693, float %9605
  %9697 = select i1 %9657, float %9694, float %9606
  %9698 = fadd fast float %9688, %9695
  %9699 = fadd fast float %9689, %9696
  %9700 = fadd fast float %9690, %9697
  %9701 = fmul fast float %9698, %9667
  %9702 = fmul fast float %9699, %9667
  %9703 = fmul fast float %9700, %9667
  %9704 = fmul fast float %9701, %9701
  %9705 = fmul fast float %9702, %9702
  %9706 = fadd fast float %9704, %9705
  %9707 = fmul fast float %9703, %9703
  %9708 = fadd fast float %9706, %9707
  %9709 = call float @dx.op.unary.f32(i32 24, float %9708)  ; Sqrt(value)
  %9710 = fsub fast float %9709, %9622
  %9711 = fmul fast float %9710, %9624
  %9712 = call float @dx.op.unary.f32(i32 7, float %9711)  ; Saturate(value)
  br label %9713

; <label>:9713                                    ; preds = %9638, %9634
  %9714 = phi float [ %9712, %9638 ], [ 1.000000e+00, %9634 ]
  %9715 = fmul fast float %9631, 5.000000e-01
  %9716 = fadd fast float %9715, 5.000000e-01
  %9717 = call float @dx.op.unary.f32(i32 22, float %9716)  ; Frc(value)
  %9718 = call float @dx.op.unary.f32(i32 27, float %9717)  ; Round_ni(value)
  %9719 = call float @dx.op.unary.f32(i32 22, float %9717)  ; Frc(value)
  %9720 = fmul fast float %9719, 2.000000e+00
  %9721 = fadd fast float %9720, -1.000000e+00
  %9722 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %45, float %9583, float %9584, float %9718, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9723 = extractvalue %dx.types.ResRet.f32 %9722, 0
  %9724 = extractvalue %dx.types.ResRet.f32 %9722, 1
  %9725 = extractvalue %dx.types.ResRet.f32 %9722, 2
  %9726 = extractvalue %dx.types.ResRet.f32 %9722, 3
  %9727 = fadd fast float %9723, -5.000000e-01
  %9728 = fadd fast float %9725, -5.000000e-01
  %9729 = fmul fast float %9727, 0xBFD5555560000000
  %9730 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9728, float %9729)  ; FMad(a,b,c)
  %9731 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9724, float 0.000000e+00)  ; FMad(a,b,c)
  %9732 = fadd fast float %9731, %9726
  %9733 = fmul fast float %9727, -7.500000e-01
  %9734 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9728, float %9733)  ; FMad(a,b,c)
  %9735 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9724, float 0.000000e+00)  ; FMad(a,b,c)
  %9736 = fadd fast float %9735, %9726
  %9737 = call float @dx.op.binary.f32(i32 35, float %9730, float -1.000000e+00)  ; FMax(a,b)
  %9738 = call float @dx.op.binary.f32(i32 35, float %9732, float -1.000000e+00)  ; FMax(a,b)
  %9739 = call float @dx.op.binary.f32(i32 35, float %9734, float -1.000000e+00)  ; FMax(a,b)
  %9740 = call float @dx.op.binary.f32(i32 35, float %9736, float -1.000000e+00)  ; FMax(a,b)
  %9741 = call float @dx.op.binary.f32(i32 36, float %9737, float 1.000000e+00)  ; FMin(a,b)
  %9742 = call float @dx.op.binary.f32(i32 36, float %9738, float 1.000000e+00)  ; FMin(a,b)
  %9743 = call float @dx.op.binary.f32(i32 36, float %9739, float 1.000000e+00)  ; FMin(a,b)
  %9744 = call float @dx.op.binary.f32(i32 36, float %9740, float 1.000000e+00)  ; FMin(a,b)
  %9745 = fcmp fast olt float %9741, 0x3FEFFF8020000000
  br i1 %9745, label %9746, label %9861, !dx.controlflow.hints !175

; <label>:9746                                    ; preds = %9713
  %9747 = extractvalue %dx.types.CBufRet.f32 %9629, 3
  %9748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9749 = extractvalue %dx.types.CBufRet.f32 %9748, 0
  %9750 = extractvalue %dx.types.CBufRet.f32 %9748, 1
  %9751 = extractvalue %dx.types.CBufRet.f32 %9748, 2
  %9752 = extractvalue %dx.types.CBufRet.f32 %9748, 3
  %9753 = fsub fast float %9749, %9741
  %9754 = fsub fast float %9750, %9742
  %9755 = fsub fast float %9751, %9743
  %9756 = fsub fast float %9752, %9744
  %9757 = fmul fast float %9753, %9747
  %9758 = fmul fast float %9754, %9747
  %9759 = fmul fast float %9755, %9747
  %9760 = fmul fast float %9756, %9747
  %9761 = fadd fast float %9757, %9741
  %9762 = fadd fast float %9758, %9742
  %9763 = fsub fast float -0.000000e+00, %9762
  %9764 = fadd fast float %9759, %9743
  %9765 = fadd fast float %9760, %9744
  %9766 = fmul fast float %9761, %9761
  %9767 = fsub fast float %9762, %9766
  %9768 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9767)  ; FMax(a,b)
  %9769 = fdiv fast float 1.000000e+00, %9768
  %9770 = fmul fast float %9762, %9761
  %9771 = fsub fast float %9764, %9770
  %9772 = fsub fast float %9721, %9761
  %9773 = fmul fast float %9721, %9721
  %9774 = fsub fast float %9773, %9762
  %9775 = fmul fast float %9772, %9769
  %9776 = fmul fast float %9775, %9771
  %9777 = fsub fast float %9774, %9776
  %9778 = fmul fast float %9762, %9762
  %9779 = fsub fast float %9765, %9778
  %9780 = fmul fast float %9771, %9771
  %9781 = fmul fast float %9780, %9769
  %9782 = fsub fast float %9779, %9781
  %9783 = fdiv fast float %9777, %9782
  %9784 = fmul fast float %9771, %9783
  %9785 = fsub fast float %9772, %9784
  %9786 = fmul fast float %9785, %9769
  %9787 = fmul fast float %9786, %9761
  %9788 = fsub fast float 1.000000e+00, %9787
  %9789 = fmul fast float %9762, %9783
  %9790 = fsub fast float %9788, %9789
  %9791 = fmul fast float %9786, %9786
  %9792 = fmul fast float %9783, 4.000000e+00
  %9793 = fmul fast float %9792, %9790
  %9794 = fsub fast float %9791, %9793
  %9795 = call float @dx.op.unary.f32(i32 24, float %9794)  ; Sqrt(value)
  %9796 = fcmp fast oge float %9786, 0.000000e+00
  %9797 = fsub fast float -0.000000e+00, %9795
  %9798 = select i1 %9796, float %9797, float %9795
  %9799 = fsub fast float %9798, %9786
  %9800 = fdiv fast float %9799, %9783
  %9801 = fdiv fast float %9790, %9799
  %9802 = fmul fast float %9800, 5.000000e-01
  %9803 = fmul fast float %9801, 2.000000e+00
  %9804 = select i1 %9796, float %9802, float %9803
  %9805 = select i1 %9796, float %9803, float %9802
  %9806 = call float @dx.op.binary.f32(i32 35, float %9804, float %9805)  ; FMax(a,b)
  %9807 = call float @dx.op.binary.f32(i32 36, float %9804, float %9805)  ; FMin(a,b)
  %9808 = fcmp fast ogt float %9721, %9807
  br i1 %9808, label %9809, label %9819

; <label>:9809                                    ; preds = %9746
  %9810 = fsub fast float %9721, %9807
  %9811 = fsub fast float %9806, %9807
  %9812 = fmul fast float %9810, %9811
  %9813 = fmul fast float %9806, %9721
  %9814 = fadd fast float %9806, %9721
  %9815 = fmul fast float %9814, %9761
  %9816 = fadd fast float %9813, %9762
  %9817 = fsub fast float %9816, %9815
  %9818 = fdiv fast float %9817, %9812
  br label %9819

; <label>:9819                                    ; preds = %9809, %9746
  %9820 = phi float [ %9818, %9809 ], [ 0.000000e+00, %9746 ]
  %9821 = fcmp fast ogt float %9721, %9806
  %9822 = fsub fast float %9721, %9806
  br i1 %9821, label %9823, label %9833

; <label>:9823                                    ; preds = %9819
  %9824 = fsub fast float %9806, %9807
  %9825 = fmul fast float %9824, %9822
  %9826 = fmul fast float %9807, %9721
  %9827 = fadd fast float %9807, %9721
  %9828 = fmul fast float %9827, %9761
  %9829 = fsub fast float %9763, %9826
  %9830 = fadd fast float %9829, %9828
  %9831 = fdiv fast float %9830, %9825
  %9832 = fadd fast float %9831, %9820
  br label %9833

; <label>:9833                                    ; preds = %9823, %9819
  %9834 = phi float [ %9832, %9823 ], [ %9820, %9819 ]
  %9835 = fsub fast float %9721, %9807
  %9836 = fmul fast float %9835, %9822
  %9837 = fmul fast float %9807, %9806
  %9838 = fadd fast float %9807, %9806
  %9839 = fmul fast float %9838, %9761
  %9840 = fadd fast float %9837, %9762
  %9841 = fsub fast float %9840, %9839
  %9842 = fdiv fast float %9841, %9836
  %9843 = call float @dx.op.unary.f32(i32 7, float %9834)  ; Saturate(value)
  %9844 = fcmp fast oeq float %8518, 0.000000e+00
  %9845 = extractvalue %dx.types.CBufRet.f32 %9629, 0
  %9846 = fcmp fast oeq float %9845, 0.000000e+00
  %9847 = or i1 %9844, %9846
  %9848 = fmul fast float %9845, 2.000000e+00
  %9849 = fadd fast float %9630, %9631
  %9850 = fdiv fast float %9849, %9848
  %9851 = call float @dx.op.unary.f32(i32 7, float %9850)  ; Saturate(value)
  %9852 = fmul fast float %9851, 2.000000e+00
  %9853 = fsub fast float 3.000000e+00, %9852
  %9854 = fmul fast float %9851, %9851
  %9855 = fmul fast float %9854, %9853
  %9856 = select i1 %9847, float 1.000000e+00, float %9855
  %9857 = fmul fast float %9842, %8518
  %9858 = fadd fast float %9843, %9857
  %9859 = call float @dx.op.unary.f32(i32 7, float %9858)  ; Saturate(value)
  %9860 = fmul fast float %9856, %9859
  br label %9861

; <label>:9861                                    ; preds = %9833, %9713
  %9862 = phi float [ %9860, %9833 ], [ 0.000000e+00, %9713 ]
  %9863 = fsub fast float 1.000000e+00, %9862
  %9864 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %45, float %9583, float %9584, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9865 = extractvalue %dx.types.ResRet.f32 %9864, 0
  %9866 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9867 = extractvalue %dx.types.CBufRet.i32 %9866, 2
  %9868 = icmp eq i32 %9867, 0
  br i1 %9868, label %9874, label %9869

; <label>:9869                                    ; preds = %9861
  %9870 = call float @dx.op.unary.f32(i32 7, float %9862)  ; Saturate(value)
  %9871 = fadd fast float %9865, -1.000000e+00
  %9872 = fmul fast float %9870, %9871
  %9873 = fadd fast float %9872, 1.000000e+00
  br label %9874

; <label>:9874                                    ; preds = %9869, %9861
  %9875 = phi float [ %9873, %9869 ], [ %9863, %9861 ]
  br i1 %9637, label %9876, label %9894

; <label>:9876                                    ; preds = %9874
  %9877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9878 = extractvalue %dx.types.CBufRet.f32 %9877, 1
  %9879 = fsub fast float %9714, %9878
  %9880 = call float @dx.op.unary.f32(i32 7, float %9879)  ; Saturate(value)
  %9881 = fsub fast float %9714, %9636
  %9882 = call float @dx.op.unary.f32(i32 7, float %9881)  ; Saturate(value)
  %9883 = fsub fast float %9880, %9882
  %9884 = fsub fast float %9716, %9882
  %9885 = fdiv fast float %9884, %9883
  %9886 = call float @dx.op.unary.f32(i32 7, float %9885)  ; Saturate(value)
  %9887 = fmul fast float %9886, 2.000000e+00
  %9888 = fsub fast float 3.000000e+00, %9887
  %9889 = fsub fast float %9865, %9875
  %9890 = fmul fast float %9886, %9886
  %9891 = fmul fast float %9890, %9889
  %9892 = fmul fast float %9891, %9888
  %9893 = fadd fast float %9892, %9875
  br label %9894

; <label>:9894                                    ; preds = %9876, %9874
  %9895 = phi float [ %9893, %9876 ], [ %9875, %9874 ]
  %9896 = call float @dx.op.binary.f32(i32 35, float %9865, float %9895)  ; FMax(a,b)
  %9897 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9898 = extractvalue %dx.types.CBufRet.i32 %9897, 2
  %9899 = and i32 %9898, 1
  %9900 = icmp eq i32 %9899, 0
  %9901 = fcmp fast une float %9896, 1.000000e+00
  %9902 = and i1 %9901, %9900
  br i1 %9902, label %9903, label %9922

; <label>:9903                                    ; preds = %9894
  %9904 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %45, float %9583, float %9584, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9905 = extractvalue %dx.types.ResRet.f32 %9904, 0
  %9906 = extractvalue %dx.types.ResRet.f32 %9904, 1
  %9907 = extractvalue %dx.types.ResRet.f32 %9904, 2
  %9908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9909 = extractvalue %dx.types.CBufRet.f32 %9908, 1
  %9910 = fmul fast float %9909, %9905
  %9911 = fmul fast float %9909, %9906
  %9912 = fmul fast float %9909, %9907
  %9913 = fcmp fast ogt float %9865, 0x3FEFFF2E40000000
  %9914 = fsub fast float 1.000000e+00, %9896
  %9915 = fsub fast float 1.000000e+00, %9865
  %9916 = fdiv fast float %9914, %9915
  %9917 = call float @dx.op.unary.f32(i32 7, float %9916)  ; Saturate(value)
  %9918 = select i1 %9913, float 0.000000e+00, float %9917
  %9919 = fmul fast float %9910, %9918
  %9920 = fmul fast float %9911, %9918
  %9921 = fmul fast float %9912, %9918
  br label %9922

; <label>:9922                                    ; preds = %9903, %9894
  %9923 = phi float [ 0.000000e+00, %9894 ], [ %9919, %9903 ]
  %9924 = phi float [ 0.000000e+00, %9894 ], [ %9920, %9903 ]
  %9925 = phi float [ 0.000000e+00, %9894 ], [ %9921, %9903 ]
  %9926 = fmul fast float %9896, %9558
  %9927 = call float @dx.op.dot3.f32(i32 55, float %9896, float %9896, float %9896, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9928 = call float @dx.op.dot3.f32(i32 55, float %9923, float %9924, float %9925, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9929 = select i1 %264, float %9927, float %9896
  %9930 = select i1 %264, float 1.000000e+00, float %9896
  %9931 = select i1 %264, float %9928, float %9923
  %9932 = select i1 %264, float 0.000000e+00, float %9924
  %9933 = select i1 %264, float 0.000000e+00, float %9925
  %9934 = fmul fast float %9929, %9570
  %9935 = fmul fast float %9929, %9571
  %9936 = fmul fast float %9930, %9572
  %9937 = fadd fast float %9934, %9931
  %9938 = fadd fast float %9935, %9932
  %9939 = fadd fast float %9933, %9936
  %9940 = fmul fast float %9929, %9573
  %9941 = fmul fast float %9929, %9574
  %9942 = fmul fast float %9930, %9575
  br label %9943

; <label>:9943                                    ; preds = %9922, %9579, %9551, %8783
  %9944 = phi float [ %8788, %8783 ], [ %9570, %9551 ], [ %9937, %9922 ], [ %9570, %9579 ]
  %9945 = phi float [ %8789, %8783 ], [ %9571, %9551 ], [ %9938, %9922 ], [ %9571, %9579 ]
  %9946 = phi float [ %8790, %8783 ], [ %9572, %9551 ], [ %9939, %9922 ], [ %9572, %9579 ]
  %9947 = phi float [ %8791, %8783 ], [ %9573, %9551 ], [ %9940, %9922 ], [ %9573, %9579 ]
  %9948 = phi float [ %8792, %8783 ], [ %9574, %9551 ], [ %9941, %9922 ], [ %9574, %9579 ]
  %9949 = phi float [ %8793, %8783 ], [ %9575, %9551 ], [ %9942, %9922 ], [ %9575, %9579 ]
  %9950 = phi float [ %8794, %8783 ], [ %9558, %9551 ], [ %9926, %9922 ], [ %9558, %9579 ]
  %9951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9952 = extractvalue %dx.types.CBufRet.f32 %9951, 2
  %9953 = extractvalue %dx.types.CBufRet.f32 %9951, 3
  %9954 = fmul fast float %9952, %111
  %9955 = fmul fast float %9953, %112
  %9956 = call float @dx.op.unary.f32(i32 7, float %9954)  ; Saturate(value)
  %9957 = call float @dx.op.unary.f32(i32 7, float %9955)  ; Saturate(value)
  %9958 = select i1 %8528, i32 2, i32 0
  %9959 = or i32 %9958, 1
  %9960 = uitofp i32 %9959 to float
  %9961 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %45, float %9956, float %9957, float %9960, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9962 = extractvalue %dx.types.ResRet.f32 %9961, 0
  %9963 = extractvalue %dx.types.ResRet.f32 %9961, 1
  %9964 = extractvalue %dx.types.ResRet.f32 %9961, 2
  %9965 = extractvalue %dx.types.ResRet.f32 %9961, 3
  %9966 = add nuw nsw i32 %9958, 2
  %9967 = uitofp i32 %9966 to float
  %9968 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %45, float %9956, float %9957, float %9967, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9969 = extractvalue %dx.types.ResRet.f32 %9968, 0
  %9970 = extractvalue %dx.types.ResRet.f32 %9968, 1
  %9971 = extractvalue %dx.types.ResRet.f32 %9968, 2
  %9972 = extractvalue %dx.types.ResRet.f32 %9968, 3
  %9973 = call float @dx.op.binary.f32(i32 35, float %9963, float %9964)  ; FMax(a,b)
  %9974 = call float @dx.op.binary.f32(i32 35, float %9962, float %9973)  ; FMax(a,b)
  %9975 = call float @dx.op.binary.f32(i32 35, float %9974, float %9965)  ; FMax(a,b)
  %9976 = call float @dx.op.binary.f32(i32 36, float %9970, float %9971)  ; FMin(a,b)
  %9977 = call float @dx.op.binary.f32(i32 36, float %9969, float %9976)  ; FMin(a,b)
  %9978 = call float @dx.op.binary.f32(i32 36, float %9977, float %9972)  ; FMin(a,b)
  %9979 = fmul fast float %9975, 2.550000e+02
  %9980 = fadd fast float %9979, 0x3F70101020000000
  %9981 = fptoui float %9980 to i32
  %9982 = fmul fast float %9978, 2.550000e+02
  %9983 = fadd fast float %9982, 0x3F70101020000000
  %9984 = fptoui float %9983 to i32
  %9985 = icmp ult i32 %9981, %9984
  br i1 %9985, label %9986, label %10155

; <label>:9986                                    ; preds = %9943
  %9987 = fcmp fast ogt float %97, 9.843750e-01
  %9988 = fadd fast float %8787, -4.000000e+00
  %9989 = select i1 %9987, float -4.000000e+00, float %9988
  %9990 = call float @dx.op.binary.f32(i32 35, float %9989, float 0.000000e+00)  ; FMax(a,b)
  %9991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9992 = extractvalue %dx.types.CBufRet.f32 %9991, 0
  %9993 = fadd fast float %9992, %9990
  %9994 = extractvalue %dx.types.CBufRet.f32 %9991, 2
  %9995 = fmul fast float %9993, %9994
  %9996 = call float @dx.op.unary.f32(i32 23, float %9995)  ; Log(value)
  %9997 = extractvalue %dx.types.CBufRet.f32 %9991, 3
  %9998 = fmul fast float %9997, %9996
  %9999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10000 = extractvalue %dx.types.CBufRet.f32 %9999, 2
  %10001 = fmul fast float %9998, %10000
  %10002 = call float @dx.op.unary.f32(i32 7, float %10001)  ; Saturate(value)
  %10003 = uitofp i32 %9981 to float
  %10004 = uitofp i32 %9984 to float
  %10005 = fadd fast float %10003, 5.000000e-01
  %10006 = fadd fast float %10004, 5.000000e-01
  %10007 = fmul fast float %10000, %10005
  %10008 = fmul fast float %10000, %10006
  %10009 = fadd fast float %10007, 0x3F0FFB4800000000
  %10010 = fadd fast float %10008, 0xBF0FFB4800000000
  %10011 = call float @dx.op.binary.f32(i32 35, float %10002, float %10009)  ; FMax(a,b)
  %10012 = call float @dx.op.binary.f32(i32 36, float %10011, float %10010)  ; FMin(a,b)
  %10013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10014 = extractvalue %dx.types.CBufRet.f32 %10013, 1
  %10015 = extractvalue %dx.types.CBufRet.f32 %10013, 2
  %10016 = extractvalue %dx.types.CBufRet.f32 %10013, 0
  %10017 = select i1 %8528, float %10016, float 0.000000e+00
  %10018 = fmul fast float %10014, %10012
  %10019 = fadd fast float %10017, %10018
  %10020 = fadd fast float %10017, %10015
  %10021 = fsub fast float %10014, %10015
  %10022 = fadd fast float %10021, %10017
  %10023 = call float @dx.op.binary.f32(i32 35, float %10019, float %10020)  ; FMax(a,b)
  %10024 = call float @dx.op.binary.f32(i32 36, float %10023, float %10022)  ; FMin(a,b)
  %10025 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %43, float %9956, float %9957, float %10024, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10026 = extractvalue %dx.types.ResRet.f32 %10025, 0
  %10027 = extractvalue %dx.types.ResRet.f32 %10025, 1
  %10028 = extractvalue %dx.types.ResRet.f32 %10025, 2
  %10029 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10030 = extractvalue %dx.types.CBufRet.i32 %10029, 0
  %10031 = extractvalue %dx.types.CBufRet.i32 %10029, 1
  %10032 = uitofp i32 %10030 to float
  %10033 = uitofp i32 %10031 to float
  %10034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10035 = extractvalue %dx.types.CBufRet.f32 %10034, 0
  %10036 = extractvalue %dx.types.CBufRet.f32 %10034, 1
  %10037 = fmul fast float %10032, %9956
  %10038 = fmul fast float %10033, %9957
  %10039 = fadd fast float %10037, -5.000000e-01
  %10040 = fadd fast float %10038, -5.000000e-01
  %10041 = call float @dx.op.unary.f32(i32 22, float %10039)  ; Frc(value)
  %10042 = call float @dx.op.unary.f32(i32 22, float %10040)  ; Frc(value)
  %10043 = fmul fast float %10041, %10041
  %10044 = fmul fast float %10043, %10041
  %10045 = fsub fast float 3.000000e+00, %10041
  %10046 = fmul fast float %10043, %10045
  %10047 = fmul fast float %10041, 3.000000e+00
  %10048 = fmul fast float %10044, 3.000000e+00
  %10049 = fmul fast float %10043, 6.000000e+00
  %10050 = fsub fast float %10048, %10049
  %10051 = fadd fast float %10050, 4.000000e+00
  %10052 = fmul fast float %10051, 0x3FC5555560000000
  %10053 = fmul fast float %10044, -3.000000e+00
  %10054 = fadd fast float %10043, %10041
  %10055 = fmul fast float %10054, 3.000000e+00
  %10056 = fadd fast float %10053, 1.000000e+00
  %10057 = fadd fast float %10056, %10055
  %10058 = fmul fast float %10044, 0x3FC5555560000000
  %10059 = fmul fast float %10042, %10042
  %10060 = fmul fast float %10059, %10042
  %10061 = fsub fast float 3.000000e+00, %10042
  %10062 = fmul fast float %10059, %10061
  %10063 = fmul fast float %10042, 3.000000e+00
  %10064 = fmul fast float %10060, 3.000000e+00
  %10065 = fmul fast float %10059, 6.000000e+00
  %10066 = fsub fast float %10064, %10065
  %10067 = fadd fast float %10066, 4.000000e+00
  %10068 = fmul fast float %10067, 0x3FC5555560000000
  %10069 = fmul fast float %10060, -3.000000e+00
  %10070 = fadd fast float %10059, %10042
  %10071 = fmul fast float %10070, 3.000000e+00
  %10072 = fadd fast float %10069, 1.000000e+00
  %10073 = fadd fast float %10072, %10071
  %10074 = fmul fast float %10060, 0x3FC5555560000000
  %10075 = fadd fast float %10041, 1.000000e+00
  %10076 = fsub fast float 1.000000e+00, %10047
  %10077 = fadd fast float %10076, %10046
  %10078 = fadd fast float %10077, %10051
  %10079 = fmul fast float %10078, 0x3FC5555560000000
  %10080 = fdiv fast float %10052, %10079
  %10081 = fsub fast float %10075, %10080
  %10082 = fsub fast float 1.000000e+00, %10041
  %10083 = fadd fast float %10057, %10044
  %10084 = fmul fast float %10083, 0x3FC5555560000000
  %10085 = fdiv fast float %10058, %10084
  %10086 = fadd fast float %10082, %10085
  %10087 = fadd fast float %10042, 1.000000e+00
  %10088 = fsub fast float 1.000000e+00, %10063
  %10089 = fadd fast float %10088, %10062
  %10090 = fadd fast float %10089, %10067
  %10091 = fmul fast float %10090, 0x3FC5555560000000
  %10092 = fdiv fast float %10068, %10091
  %10093 = fsub fast float %10087, %10092
  %10094 = fsub fast float 1.000000e+00, %10042
  %10095 = fadd fast float %10073, %10060
  %10096 = fmul fast float %10095, 0x3FC5555560000000
  %10097 = fdiv fast float %10074, %10096
  %10098 = fadd fast float %10097, %10094
  %10099 = fmul fast float %10081, %10035
  %10100 = fsub fast float %9956, %10099
  %10101 = fmul fast float %10086, %10035
  %10102 = fadd fast float %10101, %9956
  %10103 = fmul fast float %10098, %10036
  %10104 = fadd fast float %10103, %9957
  %10105 = fmul fast float %10093, %10036
  %10106 = fsub fast float %9957, %10105
  %10107 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %10100, float %10106, float %10024, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10108 = extractvalue %dx.types.ResRet.f32 %10107, 0
  %10109 = extractvalue %dx.types.ResRet.f32 %10107, 1
  %10110 = extractvalue %dx.types.ResRet.f32 %10107, 2
  %10111 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %10102, float %10106, float %10024, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10112 = extractvalue %dx.types.ResRet.f32 %10111, 0
  %10113 = extractvalue %dx.types.ResRet.f32 %10111, 1
  %10114 = extractvalue %dx.types.ResRet.f32 %10111, 2
  %10115 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %10100, float %10104, float %10024, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10116 = extractvalue %dx.types.ResRet.f32 %10115, 0
  %10117 = extractvalue %dx.types.ResRet.f32 %10115, 1
  %10118 = extractvalue %dx.types.ResRet.f32 %10115, 2
  %10119 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %10102, float %10104, float %10024, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10120 = extractvalue %dx.types.ResRet.f32 %10119, 0
  %10121 = extractvalue %dx.types.ResRet.f32 %10119, 1
  %10122 = extractvalue %dx.types.ResRet.f32 %10119, 2
  %10123 = fsub fast float %10116, %10108
  %10124 = fsub fast float %10117, %10109
  %10125 = fsub fast float %10118, %10110
  %10126 = fmul fast float %10123, %10096
  %10127 = fmul fast float %10124, %10096
  %10128 = fmul fast float %10125, %10096
  %10129 = fadd fast float %10126, %10108
  %10130 = fadd fast float %10127, %10109
  %10131 = fadd fast float %10128, %10110
  %10132 = fsub fast float %10120, %10112
  %10133 = fsub fast float %10121, %10113
  %10134 = fsub fast float %10122, %10114
  %10135 = fmul fast float %10132, %10096
  %10136 = fmul fast float %10133, %10096
  %10137 = fmul fast float %10134, %10096
  %10138 = fsub fast float %10112, %10129
  %10139 = fadd fast float %10138, %10135
  %10140 = fsub fast float %10113, %10130
  %10141 = fadd fast float %10140, %10136
  %10142 = fsub fast float %10114, %10131
  %10143 = fadd fast float %10142, %10137
  %10144 = fmul fast float %10139, %10084
  %10145 = fmul fast float %10141, %10084
  %10146 = fmul fast float %10143, %10084
  %10147 = fadd fast float %10144, %10129
  %10148 = fadd fast float %10145, %10130
  %10149 = fadd fast float %10146, %10131
  %10150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10151 = extractvalue %dx.types.CBufRet.f32 %10150, 1
  %10152 = fmul fast float %10147, %10151
  %10153 = fmul fast float %10148, %10151
  %10154 = fmul fast float %10149, %10151
  br label %10155

; <label>:10155                                   ; preds = %9986, %9943
  %10156 = phi float [ %10026, %9986 ], [ 1.000000e+00, %9943 ]
  %10157 = phi float [ %10027, %9986 ], [ 1.000000e+00, %9943 ]
  %10158 = phi float [ %10028, %9986 ], [ 1.000000e+00, %9943 ]
  %10159 = phi float [ %10152, %9986 ], [ 0.000000e+00, %9943 ]
  %10160 = phi float [ %10153, %9986 ], [ 0.000000e+00, %9943 ]
  %10161 = phi float [ %10154, %9986 ], [ 0.000000e+00, %9943 ]
  %10162 = fmul fast float %10156, %9950
  %10163 = call float @dx.op.dot3.f32(i32 55, float %10156, float %10157, float %10158, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10164 = call float @dx.op.dot3.f32(i32 55, float %10159, float %10160, float %10161, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10165 = select i1 %264, float %10163, float %10156
  %10166 = select i1 %264, float %10163, float %10157
  %10167 = select i1 %264, float 1.000000e+00, float %10158
  %10168 = select i1 %264, float %10164, float %10159
  %10169 = select i1 %264, float 0.000000e+00, float %10160
  %10170 = select i1 %264, float 0.000000e+00, float %10161
  %10171 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10172 = extractvalue %dx.types.CBufRet.i32 %10171, 3
  %10173 = and i32 %10172, 3
  %10174 = icmp ne i32 %10173, 0
  %10175 = and i32 %10172, 4
  %10176 = icmp ne i32 %10175, 0
  %10177 = and i1 %10174, %10176
  %10178 = and i1 %264, %10177
  br i1 %10178, label %10179, label %10185

; <label>:10179                                   ; preds = %10155
  %10180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10181 = extractvalue %dx.types.CBufRet.f32 %10180, 1
  %10182 = fadd fast float %10162, -1.000000e+00
  %10183 = fmul fast float %10181, %10182
  %10184 = fadd fast float %10183, 1.000000e+00
  br label %10185

; <label>:10185                                   ; preds = %10179, %10155
  %10186 = phi float [ %10184, %10179 ], [ %10162, %10155 ]
  %10187 = fadd fast float %9947, %9944
  %10188 = fmul fast float %10165, %10187
  %10189 = fadd fast float %10188, %10168
  %10190 = fadd fast float %9948, %9945
  %10191 = fmul fast float %10166, %10190
  %10192 = fadd fast float %10191, %10169
  %10193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10194 = extractvalue %dx.types.CBufRet.f32 %10193, 0
  br i1 %264, label %10195, label %10210

; <label>:10195                                   ; preds = %10185
  %10196 = fadd fast float %10189, %10192
  %10197 = fmul fast float %10194, %10196
  %10198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10199 = extractvalue %dx.types.CBufRet.f32 %10198, 3
  %10200 = extractvalue %dx.types.CBufRet.f32 %8510, 1
  %10201 = fsub fast float %8515, %8509
  %10202 = fadd fast float %10201, %8516
  %10203 = fsub fast float %10202, %10200
  %10204 = extractvalue %dx.types.CBufRet.f32 %8510, 2
  %10205 = fmul fast float %10203, %10204
  %10206 = call float @dx.op.unary.f32(i32 7, float %10205)  ; Saturate(value)
  %10207 = fsub fast float %10206, %10199
  %10208 = fmul fast float %10207, %10186
  %10209 = fadd fast float %10208, %10199
  br label %10234

; <label>:10210                                   ; preds = %10185
  %10211 = fadd fast float %9949, %9946
  %10212 = fmul fast float %10167, %10211
  %10213 = fadd fast float %10212, %10170
  %10214 = fmul fast float %10194, %10189
  %10215 = fmul fast float %10194, %10192
  %10216 = fmul fast float %10194, %10213
  %10217 = call float @dx.op.binary.f32(i32 35, float %10215, float %10216)  ; FMax(a,b)
  %10218 = call float @dx.op.binary.f32(i32 35, float %10214, float %10217)  ; FMax(a,b)
  %10219 = call float @dx.op.binary.f32(i32 35, float %10218, float 1.000000e+00)  ; FMax(a,b)
  %10220 = fcmp fast ugt float %10219, 0x3F10000000000000
  br i1 %10220, label %10222, label %10221

; <label>:10221                                   ; preds = %10210
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10222

; <label>:10222                                   ; preds = %10221, %10210
  %10223 = add i32 %51, 356
  %10224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %10223, i32 undef)  ; BufferLoad(srv,index,wot)
  %10225 = extractvalue %dx.types.ResRet.i32 %10224, 0
  %10226 = and i32 %10225, 32
  %10227 = icmp eq i32 %10226, 0
  br i1 %10227, label %10234, label %10228

; <label>:10228                                   ; preds = %10222
  %10229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10230 = extractvalue %dx.types.CBufRet.f32 %10229, 0
  %10231 = fmul fast float %10230, 0x3FE99999A0000000
  %10232 = fadd fast float %10230, %10214
  %10233 = fadd fast float %10231, %10216
  br label %10234

; <label>:10234                                   ; preds = %10228, %10222, %10195
  %10235 = phi float [ %10197, %10195 ], [ %10232, %10228 ], [ %10214, %10222 ]
  %10236 = phi float [ %10209, %10195 ], [ %10215, %10228 ], [ %10215, %10222 ]
  %10237 = phi float [ 1.000000e+00, %10195 ], [ %10233, %10228 ], [ %10216, %10222 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10238 = call float @dx.op.binary.f32(i32 36, float %10235, float 3.225500e+04)  ; FMin(a,b)
  %10239 = call float @dx.op.binary.f32(i32 36, float %10236, float 3.225500e+04)  ; FMin(a,b)
  %10240 = call float @dx.op.binary.f32(i32 36, float %10237, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10238)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10239)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10240)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!63}
!dx.entryPoints = !{!64}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !51, !54}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !33, !34, !35, !36, !37, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
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
!24 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
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
!53 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!54 = !{!55, !56, !57, !58, !59, !60, !61, !62}
!55 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!56 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!57 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!58 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!59 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!60 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!61 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!62 = !{i32 7, %struct.SamplerState* undef, !"", i32 0, i32 6, i32 1, i32 0, null}
!63 = !{[62 x i32] [i32 60, i32 8, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0]}
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
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = !{!104, !104, i64 0}
!104 = !{!"int", !105, i64 0}
!105 = !{!"omnipotent char", !106, i64 0}
!106 = !{!"Simple C/C++ TBAA"}
!107 = !{!108, !110, !112, !114}
!108 = distinct !{!108, !109, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!109 = distinct !{!109, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!110 = distinct !{!110, !111, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!111 = distinct !{!111, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!112 = distinct !{!112, !113, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!113 = distinct !{!113, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!114 = distinct !{!114, !115, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!115 = distinct !{!115, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = !{!118, !118, i64 0}
!118 = !{!"float", !105, i64 0}
!119 = distinct !{!119, !96}
!120 = distinct !{!120, !96}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = !{!130, !132, !134, !135, !137, !138, !139, !141, !142, !143}
!130 = distinct !{!130, !131, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!131 = distinct !{!131, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!132 = distinct !{!132, !133, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!133 = distinct !{!133, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!134 = distinct !{!134, !133, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!135 = distinct !{!135, !136, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!136 = distinct !{!136, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!137 = distinct !{!137, !136, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!138 = distinct !{!138, !136, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!139 = distinct !{!139, !140, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!140 = distinct !{!140, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!141 = distinct !{!141, !140, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!142 = distinct !{!142, !140, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!143 = distinct !{!143, !144, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!144 = distinct !{!144, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!145 = !{!146}
!146 = distinct !{!146, !147, !"\01?sort@@YAXAIAM00@Z: %c"}
!147 = distinct !{!147, !"\01?sort@@YAXAIAM00@Z"}
!148 = !{!149, !150, !130, !132, !134, !135, !137, !138, !139, !141, !142, !143}
!149 = distinct !{!149, !147, !"\01?sort@@YAXAIAM00@Z: %a"}
!150 = distinct !{!150, !147, !"\01?sort@@YAXAIAM00@Z: %b"}
!151 = !{!150}
!152 = !{!149, !146, !130, !132, !134, !135, !137, !138, !139, !141, !142, !143}
!153 = !{!149}
!154 = !{!150, !146, !130, !132, !134, !135, !137, !138, !139, !141, !142, !143}
!155 = !{!156}
!156 = distinct !{!156, !157, !"\01?sort@@YAXAIAM00@Z: %c"}
!157 = distinct !{!157, !"\01?sort@@YAXAIAM00@Z"}
!158 = !{!159, !160, !130, !132, !134, !135, !137, !138, !139, !141, !142, !143}
!159 = distinct !{!159, !157, !"\01?sort@@YAXAIAM00@Z: %a"}
!160 = distinct !{!160, !157, !"\01?sort@@YAXAIAM00@Z: %b"}
!161 = !{!160}
!162 = !{!159, !156, !130, !132, !134, !135, !137, !138, !139, !141, !142, !143}
!163 = !{!159}
!164 = !{!160, !156, !130, !132, !134, !135, !137, !138, !139, !141, !142, !143}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 2}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 1}

