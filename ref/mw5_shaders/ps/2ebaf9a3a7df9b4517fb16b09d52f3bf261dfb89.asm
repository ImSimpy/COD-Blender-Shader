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
; shader hash: 969a1d810a085437e7b8b999bc8cac89
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
  %201 = extractvalue %dx.types.ResRet.i32 %199, 1
  %202 = bitcast i32 %200 to float
  %203 = bitcast i32 %201 to float
  %204 = add i32 %49, 360
  %205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %204, i32 undef)  ; BufferLoad(srv,index,wot)
  %206 = extractvalue %dx.types.ResRet.i32 %205, 0
  %207 = extractvalue %dx.types.ResRet.i32 %205, 1
  %208 = extractvalue %dx.types.ResRet.i32 %205, 2
  %209 = extractvalue %dx.types.ResRet.i32 %205, 3
  %210 = bitcast i32 %206 to float
  %211 = bitcast i32 %207 to float
  %212 = bitcast i32 %208 to float
  %213 = bitcast i32 %209 to float
  %214 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %215 = call float @dx.op.unary.f32(i32 25, float %214)  ; Rsqrt(value)
  %216 = fmul fast float %215, %116
  %217 = fmul fast float %215, %117
  %218 = fmul fast float %215, %118
  %219 = call float @dx.op.dot3.f32(i32 55, float %188, float %189, float %190, float %188, float %189, float %190)  ; Dot3(ax,ay,az,bx,by,bz)
  %220 = call float @dx.op.unary.f32(i32 25, float %219)  ; Rsqrt(value)
  %221 = fmul fast float %220, %188
  %222 = fmul fast float %220, %189
  %223 = fmul fast float %220, %190
  %224 = call float @dx.op.dot3.f32(i32 55, float %221, float %222, float %223, float %216, float %217, float %218)  ; Dot3(ax,ay,az,bx,by,bz)
  %225 = fmul fast float %224, %224
  %226 = fmul fast float %225, %212
  %227 = fadd fast float %226, %213
  %228 = call float @dx.op.unary.f32(i32 7, float %227)  ; Saturate(value)
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.f32 %229, 3
  %231 = fmul fast float %230, %219
  %232 = fsub fast float %210, %231
  %233 = fmul fast float %232, %211
  %234 = call float @dx.op.unary.f32(i32 7, float %233)  ; Saturate(value)
  %235 = fmul fast float %234, %228
  %236 = fmul fast float %109, 5.000000e-01
  %237 = fmul fast float %110, 5.000000e-01
  %238 = fptosi float %236 to i32
  %239 = fptosi float %237 to i32
  %240 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %21, i32 0, i32 %238, i32 %239, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %241 = extractvalue %dx.types.ResRet.i32 %240, 0
  %242 = lshr i32 %241, 18
  %243 = uitofp i32 %242 to float
  %244 = fmul fast float %243, 0x3F4C00EBA0000000
  %245 = call float @dx.op.unary.f32(i32 21, float %244)  ; Exp(value)
  %246 = fadd fast float %245, -1.000000e+00
  %247 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %21, i32 0)  ; GetDimensions(handle,mipLevel)
  %248 = extractvalue %dx.types.Dimensions %247, 0
  %249 = sitofp i32 %248 to float
  %250 = extractvalue %dx.types.Dimensions %247, 1
  %251 = sitofp i32 %250 to float
  %252 = fcmp fast oge float %236, %249
  %253 = fcmp fast oge float %237, %251
  %254 = or i1 %252, %253
  %255 = select i1 %254, float 0x4197782600000000, float %246
  %256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %257 = extractvalue %dx.types.CBufRet.f32 %256, 2
  %258 = extractvalue %dx.types.CBufRet.f32 %256, 3
  %259 = fmul fast float %257, %109
  %260 = fmul fast float %258, %110
  %261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.i32 %261, 0
  %263 = and i32 %262, 114688
  %264 = icmp ne i32 %263, 0
  %265 = select i1 %264, float %259, float 0.000000e+00
  %266 = select i1 %264, float %260, float 0.000000e+00
  %267 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %265, float %266, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %268 = extractvalue %dx.types.ResRet.f32 %267, 0
  %269 = fmul fast float %268, 2.550000e+02
  %270 = fptoui float %269 to i32
  %271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %272 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %273 = extractvalue %dx.types.CBufRet.i32 %272, 3
  %274 = and i32 %273, 3
  %275 = icmp ne i32 %274, 0
  %276 = and i32 %273, 4
  %277 = icmp ne i32 %276, 0
  %278 = and i1 %275, %277
  br i1 %278, label %279, label %290

; <label>:279                                     ; preds = %0
  %280 = extractvalue %dx.types.CBufRet.f32 %271, 3
  %281 = fmul fast float %280, %110
  %282 = extractvalue %dx.types.CBufRet.f32 %271, 2
  %283 = fmul fast float %282, %109
  %284 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %43, float %283, float %281, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %285 = extractvalue %dx.types.ResRet.f32 %284, 0
  %286 = fsub fast float 1.000000e+00, %285
  %287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %288 = extractvalue %dx.types.CBufRet.f32 %287, 0
  %289 = fcmp fast olt float %286, %288
  br label %293

; <label>:290                                     ; preds = %0
  %291 = icmp eq i32 %276, 0
  %292 = and i1 %275, %291
  br label %293

; <label>:293                                     ; preds = %290, %279
  %294 = phi i1 [ %289, %279 ], [ %292, %290 ]
  %295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %296 = extractvalue %dx.types.CBufRet.f32 %295, 2
  %297 = fmul fast float %296, 0x3FE3C6EF40000000
  %298 = frem fast float %109, 2.560000e+02
  %299 = frem fast float %110, 2.560000e+02
  %300 = fptoui float %298 to i32
  %301 = fptoui float %299 to i32
  %302 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %300, i32 %301, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %303 = extractvalue %dx.types.ResRet.f32 %302, 0
  %304 = fadd fast float %303, %297
  %305 = call float @dx.op.unary.f32(i32 22, float %304)  ; Frc(value)
  %306 = add i32 %49, 156
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %318 = add i32 %49, 216
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %332 = add i32 %49, 36
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = and i32 %334, 65535
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = lshr i32 %334, 16
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = add i32 %49, 288
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.i32 %340, 0
  %342 = and i32 %341, 65535
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = lshr i32 %341, 16
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = fmul fast float %343, 0x3F50624DE0000000
  %347 = fmul fast float %345, 0x3F50624DE0000000
  %348 = add i32 %49, 172
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %360 = add i32 %49, 232
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %374 = add i32 %49, 52
  %375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %374, i32 undef)  ; BufferLoad(srv,index,wot)
  %376 = extractvalue %dx.types.ResRet.i32 %375, 0
  %377 = and i32 %376, 65535
  %378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %377)  ; LegacyF16ToF32(value)
  %379 = lshr i32 %376, 16
  %380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %379)  ; LegacyF16ToF32(value)
  %381 = add i32 %49, 304
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = and i32 %383, 65535
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = lshr i32 %383, 16
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = fmul fast float %385, 0x3F50624DE0000000
  %389 = fmul fast float %387, 0x3F50624DE0000000
  %390 = add i32 %49, 188
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %402 = add i32 %49, 248
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %416 = add i32 %49, 68
  %417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.i32 %417, 0
  %419 = and i32 %418, 65535
  %420 = call float @dx.op.legacyF16ToF32(i32 131, i32 %419)  ; LegacyF16ToF32(value)
  %421 = lshr i32 %418, 16
  %422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %421)  ; LegacyF16ToF32(value)
  %423 = add i32 %49, 320
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.i32 %424, 0
  %426 = and i32 %425, 65535
  %427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %426)  ; LegacyF16ToF32(value)
  %428 = lshr i32 %425, 16
  %429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %428)  ; LegacyF16ToF32(value)
  %430 = fmul fast float %427, 0x3F50624DE0000000
  %431 = fmul fast float %429, 0x3F50624DE0000000
  %432 = add i32 %49, 204
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %444 = add i32 %49, 264
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %458 = add i32 %49, 84
  %459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.i32 %459, 0
  %461 = and i32 %460, 65535
  %462 = call float @dx.op.legacyF16ToF32(i32 131, i32 %461)  ; LegacyF16ToF32(value)
  %463 = lshr i32 %460, 16
  %464 = call float @dx.op.legacyF16ToF32(i32 131, i32 %463)  ; LegacyF16ToF32(value)
  %465 = add i32 %49, 336
  %466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.i32 %466, 0
  %468 = and i32 %467, 65535
  %469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %468)  ; LegacyF16ToF32(value)
  %470 = lshr i32 %467, 16
  %471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %470)  ; LegacyF16ToF32(value)
  %472 = fmul fast float %469, 0x3F50624DE0000000
  %473 = fmul fast float %471, 0x3F50624DE0000000
  %474 = add i32 %49, 348
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.i32 %475, 0
  %477 = and i32 %476, 32
  %478 = icmp eq i32 %477, 0
  %479 = and i32 %476, 64
  %480 = icmp eq i32 %479, 0
  %481 = and i32 %476, 128
  %482 = icmp eq i32 %481, 0
  %483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.i32 %483, 0
  %485 = and i32 %484, 2
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %502, label %487

; <label>:487                                     ; preds = %293
  %488 = add i32 %49, 556
  %489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %490 = extractvalue %dx.types.ResRet.i32 %489, 0
  %491 = add i32 %490, 0
  %492 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %491, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %493 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %492, %dx.types.Handle %106, float %87, float %88, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %494 = extractvalue %dx.types.ResRet.f32 %493, 0
  %495 = extractvalue %dx.types.ResRet.f32 %493, 1
  %496 = extractvalue %dx.types.ResRet.f32 %493, 2
  %497 = extractvalue %dx.types.ResRet.f32 %493, 3
  %498 = fmul fast float %497, %89
  %499 = fmul fast float %494, %90
  %500 = fmul fast float %495, %91
  %501 = fmul fast float %496, %92
  br label %502

; <label>:502                                     ; preds = %487, %293
  %503 = phi float [ %92, %293 ], [ %501, %487 ]
  %504 = phi float [ %91, %293 ], [ %500, %487 ]
  %505 = phi float [ %90, %293 ], [ %499, %487 ]
  %506 = phi float [ %89, %293 ], [ %498, %487 ]
  %507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %508 = extractvalue %dx.types.ResRet.i32 %507, 0
  %509 = and i32 %508, 2
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %530, label %511

; <label>:511                                     ; preds = %502
  %512 = add i32 %49, 44
  %513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %514 = extractvalue %dx.types.ResRet.i32 %513, 0
  %515 = and i32 %514, 1
  %516 = icmp ne i32 %515, 0
  %517 = select i1 %516, float %505, float 1.000000e+00
  %518 = add i32 %49, 60
  %519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %520 = extractvalue %dx.types.ResRet.i32 %519, 0
  %521 = and i32 %520, 1
  %522 = icmp ne i32 %521, 0
  %523 = select i1 %522, float %504, float 1.000000e+00
  %524 = add i32 %49, 76
  %525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %524, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %537 = add i32 %49, 24
  %538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.i32 %538, 0
  %540 = add i32 %49, 28
  %541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.i32 %541, 0
  %543 = or i32 %542, %539
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %1190, label %545

; <label>:545                                     ; preds = %530
  %546 = and i32 %539, 262144
  %547 = icmp ne i32 %546, 0
  %548 = select i1 %547, float %55, float 1.000000e+00
  %549 = select i1 %547, float %56, float 0.000000e+00
  %550 = select i1 %547, float %57, float 0.000000e+00
  %551 = select i1 %547, float %58, float 1.000000e+00
  %552 = select i1 %547, float %59, float %87
  %553 = select i1 %547, float %60, float %88
  %554 = add i32 %49, 284
  %555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %554, i32 undef)  ; BufferLoad(srv,index,wot)
  %556 = extractvalue %dx.types.ResRet.i32 %555, 0
  %557 = lshr i32 %556, 16
  %558 = call float @dx.op.legacyF16ToF32(i32 131, i32 %557)  ; LegacyF16ToF32(value)
  %559 = fmul fast float %558, 0x3F50624DE0000000
  %560 = add i32 %49, 88
  %561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %560, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.i32 %561, 0
  %563 = lshr i32 %562, 16
  %564 = and i32 %563, 255
  %565 = lshr i32 %562, 24
  %566 = add i32 %49, 292
  %567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %566, i32 undef)  ; BufferLoad(srv,index,wot)
  %568 = extractvalue %dx.types.ResRet.i32 %567, 0
  %569 = and i32 %568, 65535
  %570 = call float @dx.op.legacyF16ToF32(i32 131, i32 %569)  ; LegacyF16ToF32(value)
  %571 = lshr i32 %568, 16
  %572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %571)  ; LegacyF16ToF32(value)
  %573 = add i32 %49, 32
  %574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %573, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
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
  %619 = add i32 %49, 228
  %620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %619, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %649 = add i32 %49, 488
  %650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %649, i32 undef)  ; BufferLoad(srv,index,wot)
  %651 = extractvalue %dx.types.ResRet.i32 %650, 0
  %652 = add i32 %651, 0
  %653 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %652, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %654 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %653, %dx.types.Handle %106, float %644, float %645, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %655 = extractvalue %dx.types.ResRet.f32 %654, 0
  %656 = add i32 %49, 100
  %657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %656, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %697 = extractvalue %dx.types.ResRet.i32 %696, 0
  %698 = and i32 %697, 128
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %716, label %700

; <label>:700                                     ; preds = %694
  %701 = add i32 %49, 472
  %702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %701, i32 undef)  ; BufferLoad(srv,index,wot)
  %703 = extractvalue %dx.types.ResRet.i32 %702, 0
  %704 = add i32 %703, 0
  %705 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %704, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %706 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %705, %dx.types.Handle %106, float %644, float %645, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %707 = extractvalue %dx.types.ResRet.f32 %706, 0
  %708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %719 = extractvalue %dx.types.ResRet.i32 %718, 0
  %720 = and i32 %719, 16
  %721 = icmp eq i32 %720, 0
  br i1 %721, label %920, label %722

; <label>:722                                     ; preds = %716
  %723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %560, i32 undef)  ; BufferLoad(srv,index,wot)
  %724 = extractvalue %dx.types.ResRet.i32 %723, 0
  %725 = add i32 %49, 424
  %726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %725, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.i32 %726, 0
  %728 = add i32 %727, 0
  %729 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %728, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %730 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %729, %dx.types.Handle %105, float %644, float %645, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %744 = extractvalue %dx.types.ResRet.i32 %743, 0
  %745 = and i32 %744, 512
  %746 = icmp eq i32 %745, 0
  br i1 %746, label %755, label %747

; <label>:747                                     ; preds = %722
  %748 = add i32 %49, 508
  %749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %748, i32 undef)  ; BufferLoad(srv,index,wot)
  %750 = extractvalue %dx.types.ResRet.i32 %749, 0
  %751 = add i32 %750, 0
  %752 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %751, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %753 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %752, %dx.types.Handle %106, float %644, float %645, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %754 = extractvalue %dx.types.ResRet.f32 %753, 0
  br label %755

; <label>:755                                     ; preds = %747, %722
  %756 = phi float [ %754, %747 ], [ 1.000000e+00, %722 ]
  %757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %758 = extractvalue %dx.types.ResRet.i32 %757, 0
  %759 = and i32 %758, 33554432
  %760 = icmp eq i32 %759, 0
  br i1 %760, label %867, label %761

; <label>:761                                     ; preds = %755
  %762 = add i32 %49, 224
  %763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %762, i32 undef)  ; BufferLoad(srv,index,wot)
  %764 = extractvalue %dx.types.ResRet.i32 %763, 0
  %765 = and i32 %764, 65535
  %766 = call float @dx.op.legacyF16ToF32(i32 131, i32 %765)  ; LegacyF16ToF32(value)
  %767 = lshr i32 %764, 16
  %768 = call float @dx.op.legacyF16ToF32(i32 131, i32 %767)  ; LegacyF16ToF32(value)
  %769 = add i32 %49, 228
  %770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %769, i32 undef)  ; BufferLoad(srv,index,wot)
  %771 = extractvalue %dx.types.ResRet.i32 %770, 0
  %772 = and i32 %771, 65535
  %773 = call float @dx.op.legacyF16ToF32(i32 131, i32 %772)  ; LegacyF16ToF32(value)
  %774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %790 = add i32 %49, 220
  %791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %790, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %925 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %926 = extractvalue %dx.types.CBufRet.i32 %925, 1
  %927 = and i32 %926, 1
  %928 = icmp ne i32 %927, 0
  %929 = add i32 %49, 356
  %930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %929, i32 undef)  ; BufferLoad(srv,index,wot)
  %931 = extractvalue %dx.types.ResRet.i32 %930, 0
  %932 = and i32 %931, 32
  %933 = icmp ne i32 %932, 0
  %934 = and i1 %928, %933
  %935 = select i1 %934, float 1.000000e+00, float %922
  %936 = select i1 %934, float 0x3FD3333340000000, float %923
  %937 = select i1 %934, float 0x3FD3333340000000, float %924
  %938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %939 = extractvalue %dx.types.ResRet.i32 %938, 0
  %940 = and i32 %939, 32
  %941 = icmp eq i32 %940, 0
  br i1 %941, label %1014, label %942

; <label>:942                                     ; preds = %920
  %943 = add i32 %49, 92
  %944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %943, i32 undef)  ; BufferLoad(srv,index,wot)
  %945 = extractvalue %dx.types.ResRet.i32 %944, 0
  %946 = add i32 %49, 440
  %947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %946, i32 undef)  ; BufferLoad(srv,index,wot)
  %948 = extractvalue %dx.types.ResRet.i32 %947, 0
  %949 = add i32 %948, 0
  %950 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %949, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %951 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %950, %dx.types.Handle %105, float %644, float %645, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %991 = extractvalue %dx.types.ResRet.i32 %990, 0
  %992 = and i32 %991, 67108864
  %993 = icmp eq i32 %992, 0
  br i1 %993, label %1010, label %994

; <label>:994                                     ; preds = %942
  %995 = add i32 %49, 280
  %996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %995, i32 undef)  ; BufferLoad(srv,index,wot)
  %997 = extractvalue %dx.types.ResRet.i32 %996, 0
  %998 = and i32 %997, 65535
  %999 = call float @dx.op.legacyF16ToF32(i32 131, i32 %998)  ; LegacyF16ToF32(value)
  %1000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %554, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1019 = add i32 %49, 160
  %1020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1019, i32 undef)  ; BufferLoad(srv,index,wot)
  %1021 = extractvalue %dx.types.ResRet.i32 %1020, 0
  %1022 = lshr i32 %1021, 22
  %1023 = shl nuw nsw i32 %1022, 5
  %1024 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1023)  ; LegacyF16ToF32(value)
  %1025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %1026 = extractvalue %dx.types.ResRet.i32 %1025, 0
  %1027 = and i32 %1026, 64
  %1028 = icmp eq i32 %1027, 0
  br i1 %1028, label %1062, label %1029

; <label>:1029                                    ; preds = %1014
  %1030 = add i32 %49, 456
  %1031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1030, i32 undef)  ; BufferLoad(srv,index,wot)
  %1032 = extractvalue %dx.types.ResRet.i32 %1031, 0
  %1033 = add i32 %1032, 0
  %1034 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1033, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %1036 = extractvalue %dx.types.ResRet.i32 %1035, 0
  %1037 = and i32 %1036, 131072
  %1038 = icmp eq i32 %1037, 0
  %1039 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1034, %dx.types.Handle %105, float %644, float %645, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1040 = extractvalue %dx.types.ResRet.f32 %1039, 0
  %1041 = extractvalue %dx.types.ResRet.f32 %1039, 1
  %1042 = extractvalue %dx.types.ResRet.f32 %1039, 2
  %1043 = fmul fast float %1040, %311
  %1044 = fmul fast float %1041, %314
  %1045 = fmul fast float %1042, %317
  br i1 %1038, label %1052, label %1046

; <label>:1046                                    ; preds = %1029
  %1047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %1067 = extractvalue %dx.types.ResRet.i32 %1066, 0
  %1068 = and i32 %1067, 1024
  %1069 = icmp eq i32 %1068, 0
  br i1 %1069, label %1100, label %1070

; <label>:1070                                    ; preds = %1062
  %1071 = add i32 %49, 152
  %1072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1071, i32 undef)  ; BufferLoad(srv,index,wot)
  %1073 = extractvalue %dx.types.ResRet.i32 %1072, 0
  %1074 = and i32 %1073, 255
  %1075 = uitofp i32 %1074 to float
  %1076 = fmul fast float %1075, 0x3F70101020000000
  %1077 = lshr i32 %1073, 8
  %1078 = and i32 %1077, 255
  %1079 = uitofp i32 %1078 to float
  %1080 = fmul fast float %1079, 0x3F70101020000000
  %1081 = lshr i32 %1073, 16
  %1082 = and i32 %1081, 255
  %1083 = uitofp i32 %1082 to float
  %1084 = fmul fast float %1083, 0x3F70101020000000
  %1085 = fmul fast float %1076, %1076
  %1086 = fmul fast float %1080, %1080
  %1087 = fmul fast float %1084, %1084
  %1088 = add i32 %49, 524
  %1089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1088, i32 undef)  ; BufferLoad(srv,index,wot)
  %1090 = extractvalue %dx.types.ResRet.i32 %1089, 0
  %1091 = add i32 %1090, 0
  %1092 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1091, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1093 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1092, %dx.types.Handle %106, float %644, float %645, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1094 = extractvalue %dx.types.ResRet.f32 %1093, 0
  %1095 = extractvalue %dx.types.ResRet.f32 %1093, 1
  %1096 = extractvalue %dx.types.ResRet.f32 %1093, 2
  %1097 = fmul fast float %1085, %1094
  %1098 = fmul fast float %1086, %1095
  %1099 = fmul fast float %1087, %1096
  br label %1100

; <label>:1100                                    ; preds = %1070, %1062
  %1101 = phi float [ %1097, %1070 ], [ 0.000000e+00, %1062 ]
  %1102 = phi float [ %1098, %1070 ], [ 0.000000e+00, %1062 ]
  %1103 = phi float [ %1099, %1070 ], [ 0.000000e+00, %1062 ]
  %1104 = fcmp fast ogt float %1101, 0.000000e+00
  %1105 = fcmp fast ogt float %1102, 0.000000e+00
  %1106 = fcmp fast ogt float %1103, 0.000000e+00
  %1107 = call float @dx.op.unary.f32(i32 23, float %1101)  ; Log(value)
  %1108 = call float @dx.op.unary.f32(i32 23, float %1102)  ; Log(value)
  %1109 = call float @dx.op.unary.f32(i32 23, float %1103)  ; Log(value)
  %1110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1019, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.i32 %1110, 0
  %1112 = lshr i32 %1111, 7
  %1113 = and i32 %1112, 32752
  %1114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1113)  ; LegacyF16ToF32(value)
  %1115 = fmul fast float %1107, 0xBFE62E4300000000
  %1116 = fmul fast float %1115, %1114
  %1117 = fmul fast float %1108, 0xBFE62E4300000000
  %1118 = fmul fast float %1117, %1114
  %1119 = fmul fast float %1109, 0xBFE62E4300000000
  %1120 = fmul fast float %1119, %1114
  %1121 = select i1 %1104, float %1116, float 1.270000e+02
  %1122 = select i1 %1105, float %1118, float 1.270000e+02
  %1123 = select i1 %1106, float %1120, float 1.270000e+02
  %1124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %1125 = extractvalue %dx.types.ResRet.i32 %1124, 0
  %1126 = and i32 %1125, 10240
  %1127 = icmp eq i32 %1126, 0
  br i1 %1127, label %1172, label %1128

; <label>:1128                                    ; preds = %1100
  %1129 = add i32 %49, 540
  %1130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1131 = extractvalue %dx.types.ResRet.i32 %1130, 0
  %1132 = add i32 %1131, 0
  %1133 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1132, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1134 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1133, %dx.types.Handle %106, float %644, float %645, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1135 = extractvalue %dx.types.ResRet.f32 %1134, 1
  %1136 = extractvalue %dx.types.ResRet.f32 %1134, 3
  %1137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %1138 = extractvalue %dx.types.ResRet.i32 %1137, 0
  %1139 = and i32 %1138, 1048576
  %1140 = icmp ne i32 %1139, 0
  %1141 = and i32 %1138, 8192
  %1142 = icmp eq i32 %1141, 0
  br i1 %1142, label %1158, label %1143

; <label>:1143                                    ; preds = %1128
  %1144 = extractvalue %dx.types.ResRet.f32 %1134, 2
  %1145 = select i1 %1140, float %1144, float %1135
  %1146 = extractvalue %dx.types.ResRet.f32 %1134, 0
  %1147 = select i1 %1140, float %1146, float %1135
  %1148 = add i32 %49, 96
  %1149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1148, i32 undef)  ; BufferLoad(srv,index,wot)
  %1150 = extractvalue %dx.types.ResRet.i32 %1149, 0
  %1151 = lshr i32 %1150, 16
  %1152 = and i32 %1151, 255
  %1153 = uitofp i32 %1152 to float
  %1154 = fmul fast float %1153, 0x3F80101020000000
  %1155 = fmul fast float %1154, %1147
  %1156 = fmul fast float %1154, %1135
  %1157 = fmul fast float %1154, %1145
  br label %1158

; <label>:1158                                    ; preds = %1143, %1128
  %1159 = phi float [ %1155, %1143 ], [ 0.000000e+00, %1128 ]
  %1160 = phi float [ %1156, %1143 ], [ 0.000000e+00, %1128 ]
  %1161 = phi float [ %1157, %1143 ], [ 0.000000e+00, %1128 ]
  %1162 = and i32 %1138, 2048
  %1163 = icmp eq i32 %1162, 0
  br i1 %1163, label %1172, label %1164

; <label>:1164                                    ; preds = %1158
  %1165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1019, i32 undef)  ; BufferLoad(srv,index,wot)
  %1166 = extractvalue %dx.types.ResRet.i32 %1165, 0
  %1167 = shl i32 %1166, 4
  %1168 = and i32 %1167, 32752
  %1169 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1168)  ; LegacyF16ToF32(value)
  %1170 = fmul fast float %1169, %1136
  %1171 = call float @dx.op.binary.f32(i32 35, float %1170, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1172

; <label>:1172                                    ; preds = %1164, %1158, %1100
  %1173 = phi float [ %1159, %1164 ], [ %1159, %1158 ], [ 0.000000e+00, %1100 ]
  %1174 = phi float [ %1160, %1164 ], [ %1160, %1158 ], [ 0.000000e+00, %1100 ]
  %1175 = phi float [ %1161, %1164 ], [ %1161, %1158 ], [ 0.000000e+00, %1100 ]
  %1176 = phi float [ %1171, %1164 ], [ 0x3F70101020000000, %1158 ], [ 0x3F70101020000000, %1100 ]
  %1177 = add i32 %49, 96
  %1178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1179 = extractvalue %dx.types.ResRet.i32 %1178, 0
  %1180 = and i32 %1179, 255
  %1181 = uitofp i32 %1180 to float
  %1182 = lshr i32 %1179, 8
  %1183 = and i32 %1182, 255
  %1184 = uitofp i32 %1183 to float
  %1185 = call float @dx.op.dot3.f32(i32 55, float %935, float %936, float %937, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1186 = fmul fast float %1184, %1185
  %1187 = fadd fast float %1186, %1181
  %1188 = fmul fast float %1187, 0x3F70101020000000
  %1189 = call float @dx.op.unary.f32(i32 7, float %1188)  ; Saturate(value)
  br label %1190

; <label>:1190                                    ; preds = %1172, %530
  %1191 = phi float [ 0.000000e+00, %530 ], [ %1016, %1172 ]
  %1192 = phi float [ 0.000000e+00, %530 ], [ %1017, %1172 ]
  %1193 = phi float [ 0.000000e+00, %530 ], [ %935, %1172 ]
  %1194 = phi float [ 0.000000e+00, %530 ], [ %936, %1172 ]
  %1195 = phi float [ 0.000000e+00, %530 ], [ %937, %1172 ]
  %1196 = phi float [ 0.000000e+00, %530 ], [ %1063, %1172 ]
  %1197 = phi float [ 0.000000e+00, %530 ], [ %1064, %1172 ]
  %1198 = phi float [ 0.000000e+00, %530 ], [ %1065, %1172 ]
  %1199 = phi float [ 0.000000e+00, %530 ], [ %1121, %1172 ]
  %1200 = phi float [ 0.000000e+00, %530 ], [ %1122, %1172 ]
  %1201 = phi float [ 0.000000e+00, %530 ], [ %1123, %1172 ]
  %1202 = phi float [ 0.000000e+00, %530 ], [ %1173, %1172 ]
  %1203 = phi float [ 0.000000e+00, %530 ], [ %1174, %1172 ]
  %1204 = phi float [ 0.000000e+00, %530 ], [ %1175, %1172 ]
  %1205 = phi float [ 0.000000e+00, %530 ], [ %921, %1172 ]
  %1206 = phi float [ 0.000000e+00, %530 ], [ %717, %1172 ]
  %1207 = phi float [ 0.000000e+00, %530 ], [ %1015, %1172 ]
  %1208 = phi float [ 0.000000e+00, %530 ], [ %1018, %1172 ]
  %1209 = phi float [ 0.000000e+00, %530 ], [ %1176, %1172 ]
  %1210 = phi float [ 0.000000e+00, %530 ], [ %1189, %1172 ]
  br i1 %478, label %2133, label %1211

; <label>:1211                                    ; preds = %1190
  %1212 = icmp ult i32 %536, 2
  %1213 = add i32 %49, 40
  %1214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1215 = extractvalue %dx.types.ResRet.i32 %1214, 0
  %1216 = add i32 %49, 44
  %1217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1216, i32 undef)  ; BufferLoad(srv,index,wot)
  %1218 = extractvalue %dx.types.ResRet.i32 %1217, 0
  %1219 = or i32 %1218, %1215
  %1220 = icmp eq i32 %1219, 0
  br i1 %1220, label %2133, label %1221

; <label>:1221                                    ; preds = %1211
  %1222 = and i32 %1215, 262144
  %1223 = icmp ne i32 %1222, 0
  %1224 = select i1 %1223, float %55, float 1.000000e+00
  %1225 = select i1 %1223, float %56, float 0.000000e+00
  %1226 = select i1 %1223, float %57, float 0.000000e+00
  %1227 = select i1 %1223, float %58, float 1.000000e+00
  %1228 = select i1 %1223, float %59, float %87
  %1229 = select i1 %1223, float %60, float %88
  %1230 = add i32 %49, 300
  %1231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1230, i32 undef)  ; BufferLoad(srv,index,wot)
  %1232 = extractvalue %dx.types.ResRet.i32 %1231, 0
  %1233 = lshr i32 %1232, 16
  %1234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1233)  ; LegacyF16ToF32(value)
  %1235 = fmul fast float %1234, 0x3F50624DE0000000
  %1236 = add i32 %49, 104
  %1237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1238 = extractvalue %dx.types.ResRet.i32 %1237, 0
  %1239 = lshr i32 %1238, 16
  %1240 = and i32 %1239, 255
  %1241 = lshr i32 %1238, 24
  %1242 = add i32 %49, 308
  %1243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1242, i32 undef)  ; BufferLoad(srv,index,wot)
  %1244 = extractvalue %dx.types.ResRet.i32 %1243, 0
  %1245 = and i32 %1244, 65535
  %1246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1245)  ; LegacyF16ToF32(value)
  %1247 = lshr i32 %1244, 16
  %1248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1247)  ; LegacyF16ToF32(value)
  %1249 = add i32 %49, 48
  %1250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1251 = extractvalue %dx.types.ResRet.i32 %1250, 0
  %1252 = lshr i32 %1251, 22
  %1253 = shl nuw nsw i32 %1252, 5
  %1254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1253)  ; LegacyF16ToF32(value)
  %1255 = shl i32 %1251, 4
  %1256 = and i32 %1255, 32752
  %1257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1256)  ; LegacyF16ToF32(value)
  %1258 = lshr i32 %1251, 7
  %1259 = and i32 %1258, 32752
  %1260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1259)  ; LegacyF16ToF32(value)
  %1261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1262 = extractvalue %dx.types.CBufRet.f32 %1261, 3
  %1263 = fmul fast float %1262, 1.000000e+03
  %1264 = fmul fast float %388, %1263
  %1265 = call float @dx.op.unary.f32(i32 22, float %1264)  ; Frc(value)
  %1266 = fadd fast float %1265, %378
  %1267 = fmul fast float %389, %1263
  %1268 = call float @dx.op.unary.f32(i32 22, float %1267)  ; Frc(value)
  %1269 = fadd fast float %1268, %380
  %1270 = fmul fast float %1235, %1263
  %1271 = call float @dx.op.unary.f32(i32 22, float %1270)  ; Frc(value)
  %1272 = fmul fast float %1271, 0x401921FB60000000
  %1273 = fadd fast float %1272, %1254
  %1274 = call float @dx.op.unary.f32(i32 13, float %1273)  ; Sin(value)
  %1275 = call float @dx.op.unary.f32(i32 12, float %1273)  ; Cos(value)
  %1276 = fsub fast float -0.000000e+00, %1274
  %1277 = fadd fast float %1228, -5.000000e-01
  %1278 = fadd fast float %1229, -5.000000e-01
  %1279 = fmul fast float %1246, %1277
  %1280 = fmul fast float %1248, %1278
  %1281 = fadd fast float %1279, 5.000000e-01
  %1282 = fadd fast float %1280, 5.000000e-01
  %1283 = fmul fast float %1257, %1281
  %1284 = fmul fast float %1260, %1282
  %1285 = fmul fast float %1275, %1283
  %1286 = call float @dx.op.tertiary.f32(i32 46, float %1276, float %1284, float %1285)  ; FMad(a,b,c)
  %1287 = fmul fast float %1274, %1283
  %1288 = call float @dx.op.tertiary.f32(i32 46, float %1275, float %1284, float %1287)  ; FMad(a,b,c)
  %1289 = fadd fast float %1266, %1286
  %1290 = fadd fast float %1269, %1288
  %1291 = icmp ugt i32 %1240, 1
  %1292 = icmp ugt i32 %1238, 33554431
  %1293 = or i1 %1292, %1291
  br i1 %1293, label %1294, label %1319

; <label>:1294                                    ; preds = %1221
  %1295 = add i32 %49, 244
  %1296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1295, i32 undef)  ; BufferLoad(srv,index,wot)
  %1297 = extractvalue %dx.types.ResRet.i32 %1296, 0
  %1298 = lshr i32 %1297, 16
  %1299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1298)  ; LegacyF16ToF32(value)
  %1300 = fmul fast float %1262, %1299
  %1301 = call float @dx.op.unary.f32(i32 22, float %1300)  ; Frc(value)
  %1302 = mul nuw nsw i32 %1240, %1241
  %1303 = uitofp i32 %1302 to float
  %1304 = fmul fast float %1301, %1303
  %1305 = call float @dx.op.unary.f32(i32 27, float %1304)  ; Round_ni(value)
  %1306 = fptoui float %1305 to i32
  %1307 = urem i32 %1306, %1240
  %1308 = udiv i32 %1306, %1241
  %1309 = call float @dx.op.unary.f32(i32 22, float %1289)  ; Frc(value)
  %1310 = call float @dx.op.unary.f32(i32 22, float %1290)  ; Frc(value)
  %1311 = uitofp i32 %1307 to float
  %1312 = uitofp i32 %1308 to float
  %1313 = fadd fast float %1309, %1311
  %1314 = fadd fast float %1310, %1312
  %1315 = uitofp i32 %1240 to float
  %1316 = uitofp i32 %1241 to float
  %1317 = fdiv fast float %1313, %1315
  %1318 = fdiv fast float %1314, %1316
  br label %1319

; <label>:1319                                    ; preds = %1294, %1221
  %1320 = phi float [ %1317, %1294 ], [ %1289, %1221 ]
  %1321 = phi float [ %1318, %1294 ], [ %1290, %1221 ]
  %1322 = and i32 %1215, 256
  %1323 = icmp eq i32 %1322, 0
  br i1 %1323, label %1370, label %1324

; <label>:1324                                    ; preds = %1319
  %1325 = add i32 %49, 492
  %1326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1325, i32 undef)  ; BufferLoad(srv,index,wot)
  %1327 = extractvalue %dx.types.ResRet.i32 %1326, 0
  %1328 = add i32 %1327, 0
  %1329 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1328, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1330 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1329, %dx.types.Handle %106, float %1320, float %1321, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1331 = extractvalue %dx.types.ResRet.f32 %1330, 0
  %1332 = add i32 %49, 116
  %1333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1332, i32 undef)  ; BufferLoad(srv,index,wot)
  %1334 = extractvalue %dx.types.ResRet.i32 %1333, 0
  %1335 = shl i32 %1334, 4
  %1336 = and i32 %1335, 32752
  %1337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1336)  ; LegacyF16ToF32(value)
  %1338 = lshr i32 %1334, 7
  %1339 = and i32 %1338, 32752
  %1340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1339)  ; LegacyF16ToF32(value)
  %1341 = fsub fast float 1.000000e+00, %533
  %1342 = call float @dx.op.binary.f32(i32 35, float %1341, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1343 = bitcast float %533 to i32
  %1344 = sitofp i32 %1343 to float
  %1345 = fadd fast float %1344, 0xC1CFBF8940000000
  %1346 = fmul fast float %1340, %1345
  %1347 = fadd fast float %1346, 0x41CFBF8940000000
  %1348 = fptosi float %1347 to i32
  %1349 = bitcast i32 %1348 to float
  %1350 = bitcast float %1342 to i32
  %1351 = sitofp i32 %1350 to float
  %1352 = fadd fast float %1351, 0xC1CFBF8940000000
  %1353 = fmul fast float %1352, %1340
  %1354 = fadd fast float %1353, 0x41CFBF8940000000
  %1355 = fptosi float %1354 to i32
  %1356 = bitcast i32 %1355 to float
  %1357 = fmul fast float %1349, %1337
  %1358 = fmul fast float %1356, %1337
  %1359 = fsub fast float %1342, %1357
  %1360 = fadd fast float %1358, %1342
  %1361 = call float @dx.op.unary.f32(i32 7, float %1359)  ; Saturate(value)
  %1362 = call float @dx.op.unary.f32(i32 7, float %1360)  ; Saturate(value)
  %1363 = fsub fast float %1331, %1361
  %1364 = fsub fast float %1362, %1361
  %1365 = bitcast float %1364 to i32
  %1366 = sub nsw i32 2129859010, %1365
  %1367 = bitcast i32 %1366 to float
  %1368 = fmul fast float %1367, %1363
  %1369 = call float @dx.op.unary.f32(i32 7, float %1368)  ; Saturate(value)
  br label %1370

; <label>:1370                                    ; preds = %1324, %1319
  %1371 = phi float [ %1369, %1324 ], [ %533, %1319 ]
  %1372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1373 = extractvalue %dx.types.ResRet.i32 %1372, 0
  %1374 = and i32 %1373, 128
  %1375 = icmp eq i32 %1374, 0
  br i1 %1375, label %1392, label %1376

; <label>:1376                                    ; preds = %1370
  %1377 = add i32 %49, 476
  %1378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1377, i32 undef)  ; BufferLoad(srv,index,wot)
  %1379 = extractvalue %dx.types.ResRet.i32 %1378, 0
  %1380 = add i32 %1379, 0
  %1381 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1380, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1382 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1381, %dx.types.Handle %106, float %1320, float %1321, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1383 = extractvalue %dx.types.ResRet.f32 %1382, 0
  %1384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1385 = extractvalue %dx.types.ResRet.i32 %1384, 0
  %1386 = and i32 %1385, 524288
  %1387 = icmp ne i32 %1386, 0
  %1388 = fcmp fast ogt float %1383, 0x3FE0101020000000
  %1389 = select i1 %1388, float 1.000000e+00, float 0.000000e+00
  %1390 = select i1 %1387, float %1389, float %1383
  %1391 = fmul fast float %1390, %1371
  br label %1392

; <label>:1392                                    ; preds = %1376, %1370
  %1393 = phi float [ %1391, %1376 ], [ %1371, %1370 ]
  %1394 = fcmp fast ult float %1393, 0x3F70101020000000
  br i1 %1394, label %2133, label %1395

; <label>:1395                                    ; preds = %1392
  %1396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1397 = extractvalue %dx.types.ResRet.i32 %1396, 0
  %1398 = and i32 %1397, 16
  %1399 = icmp eq i32 %1398, 0
  br i1 %1399, label %1598, label %1400

; <label>:1400                                    ; preds = %1395
  %1401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1402 = extractvalue %dx.types.ResRet.i32 %1401, 0
  %1403 = add i32 %49, 428
  %1404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1403, i32 undef)  ; BufferLoad(srv,index,wot)
  %1405 = extractvalue %dx.types.ResRet.i32 %1404, 0
  %1406 = add i32 %1405, 0
  %1407 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1406, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1408 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1407, %dx.types.Handle %105, float %1320, float %1321, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1409 = extractvalue %dx.types.ResRet.f32 %1408, 0
  %1410 = extractvalue %dx.types.ResRet.f32 %1408, 1
  %1411 = extractvalue %dx.types.ResRet.f32 %1408, 2
  %1412 = extractvalue %dx.types.ResRet.f32 %1408, 3
  %1413 = and i32 %1402, 255
  %1414 = uitofp i32 %1413 to float
  %1415 = lshr i32 %1402, 8
  %1416 = and i32 %1415, 255
  %1417 = uitofp i32 %1416 to float
  %1418 = fmul fast float %1412, %1414
  %1419 = fadd fast float %1418, %1417
  %1420 = fmul fast float %1419, 0x3F70101000000000
  %1421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1422 = extractvalue %dx.types.ResRet.i32 %1421, 0
  %1423 = and i32 %1422, 512
  %1424 = icmp eq i32 %1423, 0
  br i1 %1424, label %1433, label %1425

; <label>:1425                                    ; preds = %1400
  %1426 = add i32 %49, 512
  %1427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1426, i32 undef)  ; BufferLoad(srv,index,wot)
  %1428 = extractvalue %dx.types.ResRet.i32 %1427, 0
  %1429 = add i32 %1428, 0
  %1430 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1429, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1431 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1430, %dx.types.Handle %106, float %1320, float %1321, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1432 = extractvalue %dx.types.ResRet.f32 %1431, 0
  br label %1433

; <label>:1433                                    ; preds = %1425, %1400
  %1434 = phi float [ %1432, %1425 ], [ 1.000000e+00, %1400 ]
  %1435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1436 = extractvalue %dx.types.ResRet.i32 %1435, 0
  %1437 = and i32 %1436, 33554432
  %1438 = icmp eq i32 %1437, 0
  br i1 %1438, label %1545, label %1439

; <label>:1439                                    ; preds = %1433
  %1440 = add i32 %49, 240
  %1441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1440, i32 undef)  ; BufferLoad(srv,index,wot)
  %1442 = extractvalue %dx.types.ResRet.i32 %1441, 0
  %1443 = and i32 %1442, 65535
  %1444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1443)  ; LegacyF16ToF32(value)
  %1445 = lshr i32 %1442, 16
  %1446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1445)  ; LegacyF16ToF32(value)
  %1447 = add i32 %49, 244
  %1448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1447, i32 undef)  ; BufferLoad(srv,index,wot)
  %1449 = extractvalue %dx.types.ResRet.i32 %1448, 0
  %1450 = and i32 %1449, 65535
  %1451 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1450)  ; LegacyF16ToF32(value)
  %1452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %1453 = extractvalue %dx.types.ResRet.i32 %1452, 0
  %1454 = lshr i32 %1453, 24
  %1455 = uitofp i32 %1454 to float
  %1456 = fmul fast float %1455, 0x3F70101020000000
  %1457 = and i32 %1453, 255
  %1458 = uitofp i32 %1457 to float
  %1459 = fmul fast float %1458, 0x3F70101020000000
  %1460 = lshr i32 %1453, 8
  %1461 = and i32 %1460, 255
  %1462 = uitofp i32 %1461 to float
  %1463 = fmul fast float %1462, 0x3F70101020000000
  %1464 = lshr i32 %1453, 16
  %1465 = and i32 %1464, 255
  %1466 = uitofp i32 %1465 to float
  %1467 = fmul fast float %1466, 0x3F70101020000000
  %1468 = add i32 %49, 236
  %1469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1468, i32 undef)  ; BufferLoad(srv,index,wot)
  %1470 = extractvalue %dx.types.ResRet.i32 %1469, 0
  %1471 = lshr i32 %1470, 24
  %1472 = uitofp i32 %1471 to float
  %1473 = fmul fast float %1472, 0x3F70101020000000
  %1474 = and i32 %1470, 255
  %1475 = uitofp i32 %1474 to float
  %1476 = fmul fast float %1475, 0x3F70101020000000
  %1477 = lshr i32 %1470, 8
  %1478 = and i32 %1477, 255
  %1479 = uitofp i32 %1478 to float
  %1480 = fmul fast float %1479, 0x3F70101020000000
  %1481 = lshr i32 %1470, 16
  %1482 = and i32 %1481, 255
  %1483 = uitofp i32 %1482 to float
  %1484 = fmul fast float %1483, 0x3F70101020000000
  %1485 = bitcast float %1409 to i32
  %1486 = ashr i32 %1485, 1
  %1487 = sub nsw i32 1597463174, %1486
  %1488 = bitcast i32 %1487 to float
  %1489 = fmul fast float %1409, 5.000000e-01
  %1490 = fmul fast float %1488, %1488
  %1491 = fmul fast float %1490, %1489
  %1492 = fsub fast float 1.500000e+00, %1491
  %1493 = fmul fast float %1488, %1409
  %1494 = fmul fast float %1493, %1492
  %1495 = bitcast float %1410 to i32
  %1496 = ashr i32 %1495, 1
  %1497 = sub nsw i32 1597463174, %1496
  %1498 = bitcast i32 %1497 to float
  %1499 = fmul fast float %1410, 5.000000e-01
  %1500 = fmul fast float %1498, %1498
  %1501 = fmul fast float %1500, %1499
  %1502 = fsub fast float 1.500000e+00, %1501
  %1503 = fmul fast float %1498, %1410
  %1504 = fmul fast float %1503, %1502
  %1505 = bitcast float %1411 to i32
  %1506 = ashr i32 %1505, 1
  %1507 = sub nsw i32 1597463174, %1506
  %1508 = bitcast i32 %1507 to float
  %1509 = fmul fast float %1411, 5.000000e-01
  %1510 = fmul fast float %1508, %1508
  %1511 = fmul fast float %1510, %1509
  %1512 = fsub fast float 1.500000e+00, %1511
  %1513 = fmul fast float %1508, %1411
  %1514 = fmul fast float %1513, %1512
  %1515 = fsub fast float %1494, %1476
  %1516 = fsub fast float %1504, %1480
  %1517 = fsub fast float %1514, %1484
  %1518 = fmul fast float %1515, %1444
  %1519 = fmul fast float %1516, %1446
  %1520 = fmul fast float %1517, %1451
  %1521 = fadd fast float %1518, %1459
  %1522 = fadd fast float %1519, %1463
  %1523 = fadd fast float %1520, %1467
  %1524 = call float @dx.op.unary.f32(i32 7, float %1521)  ; Saturate(value)
  %1525 = call float @dx.op.unary.f32(i32 7, float %1522)  ; Saturate(value)
  %1526 = call float @dx.op.unary.f32(i32 7, float %1523)  ; Saturate(value)
  %1527 = fmul fast float %1524, %1524
  %1528 = fmul fast float %1525, %1525
  %1529 = fmul fast float %1526, %1526
  %1530 = fsub fast float %1527, %1409
  %1531 = fsub fast float %1528, %1410
  %1532 = fsub fast float %1529, %1411
  %1533 = fmul fast float %1530, %1434
  %1534 = fmul fast float %1531, %1434
  %1535 = fmul fast float %1532, %1434
  %1536 = fadd fast float %1533, %1409
  %1537 = fadd fast float %1534, %1410
  %1538 = fadd fast float %1535, %1411
  %1539 = fadd fast float %1456, %1420
  %1540 = fsub fast float %1539, %1473
  %1541 = call float @dx.op.unary.f32(i32 7, float %1540)  ; Saturate(value)
  %1542 = fsub fast float %1541, %1420
  %1543 = fmul fast float %1542, %1434
  %1544 = fadd fast float %1543, %1420
  br label %1598

; <label>:1545                                    ; preds = %1433
  %1546 = and i32 %1436, 134217728
  %1547 = icmp eq i32 %1546, 0
  br i1 %1547, label %1582, label %1548

; <label>:1548                                    ; preds = %1545
  %1549 = call float @dx.op.unary.f32(i32 24, float %365)  ; Sqrt(value)
  %1550 = call float @dx.op.unary.f32(i32 24, float %369)  ; Sqrt(value)
  %1551 = call float @dx.op.unary.f32(i32 24, float %373)  ; Sqrt(value)
  %1552 = fadd fast float %1549, -5.000000e-01
  %1553 = fadd fast float %1550, -5.000000e-01
  %1554 = fadd fast float %1551, -5.000000e-01
  %1555 = fmul fast float %1552, %1434
  %1556 = fmul fast float %1553, %1434
  %1557 = fmul fast float %1554, %1434
  %1558 = fadd fast float %1555, 5.000000e-01
  %1559 = fadd fast float %1556, 5.000000e-01
  %1560 = fadd fast float %1557, 5.000000e-01
  %1561 = call float @dx.op.unary.f32(i32 24, float %1409)  ; Sqrt(value)
  %1562 = call float @dx.op.unary.f32(i32 24, float %1410)  ; Sqrt(value)
  %1563 = call float @dx.op.unary.f32(i32 24, float %1411)  ; Sqrt(value)
  %1564 = fmul fast float %1558, 2.000000e+00
  %1565 = fsub fast float 1.000000e+00, %1564
  %1566 = fmul fast float %1565, %1561
  %1567 = fadd fast float %1566, %1564
  %1568 = fmul fast float %1567, %1561
  %1569 = fmul fast float %1559, 2.000000e+00
  %1570 = fsub fast float 1.000000e+00, %1569
  %1571 = fmul fast float %1570, %1562
  %1572 = fadd fast float %1571, %1569
  %1573 = fmul fast float %1572, %1562
  %1574 = fmul fast float %1560, 2.000000e+00
  %1575 = fsub fast float 1.000000e+00, %1574
  %1576 = fmul fast float %1575, %1563
  %1577 = fadd fast float %1576, %1574
  %1578 = fmul fast float %1577, %1563
  %1579 = fmul fast float %1568, %1568
  %1580 = fmul fast float %1573, %1573
  %1581 = fmul fast float %1578, %1578
  br label %1598

; <label>:1582                                    ; preds = %1545
  %1583 = fmul fast float %365, %365
  %1584 = fmul fast float %369, %369
  %1585 = fmul fast float %373, %373
  %1586 = fadd fast float %1583, -1.000000e+00
  %1587 = fadd fast float %1584, -1.000000e+00
  %1588 = fadd fast float %1585, -1.000000e+00
  %1589 = fmul fast float %1434, %1586
  %1590 = fmul fast float %1434, %1587
  %1591 = fmul fast float %1434, %1588
  %1592 = fadd fast float %1589, 1.000000e+00
  %1593 = fadd fast float %1590, 1.000000e+00
  %1594 = fadd fast float %1591, 1.000000e+00
  %1595 = fmul fast float %1592, %1409
  %1596 = fmul fast float %1593, %1410
  %1597 = fmul fast float %1594, %1411
  br label %1598

; <label>:1598                                    ; preds = %1582, %1548, %1439, %1395
  %1599 = phi float [ %1544, %1439 ], [ %1420, %1548 ], [ %1420, %1582 ], [ 0x3FA23C0BE0000000, %1395 ]
  %1600 = phi float [ %1536, %1439 ], [ %1579, %1548 ], [ %1595, %1582 ], [ 1.000000e+00, %1395 ]
  %1601 = phi float [ %1537, %1439 ], [ %1580, %1548 ], [ %1596, %1582 ], [ 1.000000e+00, %1395 ]
  %1602 = phi float [ %1538, %1439 ], [ %1581, %1548 ], [ %1597, %1582 ], [ 1.000000e+00, %1395 ]
  %1603 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1604 = extractvalue %dx.types.CBufRet.i32 %1603, 1
  %1605 = and i32 %1604, 1
  %1606 = icmp ne i32 %1605, 0
  %1607 = add i32 %49, 356
  %1608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1607, i32 undef)  ; BufferLoad(srv,index,wot)
  %1609 = extractvalue %dx.types.ResRet.i32 %1608, 0
  %1610 = and i32 %1609, 32
  %1611 = icmp ne i32 %1610, 0
  %1612 = and i1 %1606, %1611
  %1613 = select i1 %1612, float 1.000000e+00, float %1600
  %1614 = select i1 %1612, float 0x3FD3333340000000, float %1601
  %1615 = select i1 %1612, float 0x3FD3333340000000, float %1602
  %1616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1617 = extractvalue %dx.types.ResRet.i32 %1616, 0
  %1618 = and i32 %1617, 32
  %1619 = icmp eq i32 %1618, 0
  br i1 %1619, label %1692, label %1620

; <label>:1620                                    ; preds = %1598
  %1621 = add i32 %49, 108
  %1622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1621, i32 undef)  ; BufferLoad(srv,index,wot)
  %1623 = extractvalue %dx.types.ResRet.i32 %1622, 0
  %1624 = add i32 %49, 444
  %1625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1624, i32 undef)  ; BufferLoad(srv,index,wot)
  %1626 = extractvalue %dx.types.ResRet.i32 %1625, 0
  %1627 = add i32 %1626, 0
  %1628 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1627, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1629 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1628, %dx.types.Handle %105, float %1320, float %1321, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1630 = extractvalue %dx.types.ResRet.f32 %1629, 0
  %1631 = extractvalue %dx.types.ResRet.f32 %1629, 1
  %1632 = extractvalue %dx.types.ResRet.f32 %1629, 2
  %1633 = extractvalue %dx.types.ResRet.f32 %1629, 3
  %1634 = and i32 %1623, 255
  %1635 = uitofp i32 %1634 to float
  %1636 = lshr i32 %1623, 8
  %1637 = and i32 %1636, 255
  %1638 = uitofp i32 %1637 to float
  %1639 = lshr i32 %1623, 16
  %1640 = and i32 %1639, 255
  %1641 = uitofp i32 %1640 to float
  %1642 = fmul fast float %1641, 0x3F70101000000000
  %1643 = fmul fast float %1630, %1635
  %1644 = fadd fast float %1643, %1638
  %1645 = fmul fast float %1644, 0x3F70101000000000
  %1646 = fadd fast float %1631, -5.000000e-01
  %1647 = fadd fast float %1633, -5.000000e-01
  %1648 = fmul fast float %1646, %1642
  %1649 = fmul fast float %1647, %1642
  %1650 = fadd fast float %1648, 5.000000e-01
  %1651 = fadd fast float %1649, 5.000000e-01
  %1652 = fmul fast float %1650, 2.000000e+00
  %1653 = fadd fast float %1652, -1.000000e+00
  %1654 = fmul fast float %1651, 2.000000e+00
  %1655 = fadd fast float %1654, -1.000000e+00
  %1656 = fadd fast float %1653, %1655
  %1657 = fmul fast float %1656, 5.000000e-01
  %1658 = fsub fast float %1653, %1655
  %1659 = fmul fast float %1658, 5.000000e-01
  %1660 = call float @dx.op.unary.f32(i32 6, float %1657)  ; FAbs(value)
  %1661 = fsub fast float 1.000000e+00, %1660
  %1662 = call float @dx.op.unary.f32(i32 6, float %1659)  ; FAbs(value)
  %1663 = fsub fast float %1661, %1662
  %1664 = call float @dx.op.dot3.f32(i32 55, float %1657, float %1659, float %1663, float %1657, float %1659, float %1663)  ; Dot3(ax,ay,az,bx,by,bz)
  %1665 = call float @dx.op.unary.f32(i32 25, float %1664)  ; Rsqrt(value)
  %1666 = fmul fast float %1657, %1665
  %1667 = fmul fast float %1659, %1665
  %1668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1669 = extractvalue %dx.types.ResRet.i32 %1668, 0
  %1670 = and i32 %1669, 67108864
  %1671 = icmp eq i32 %1670, 0
  br i1 %1671, label %1688, label %1672

; <label>:1672                                    ; preds = %1620
  %1673 = add i32 %49, 296
  %1674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1673, i32 undef)  ; BufferLoad(srv,index,wot)
  %1675 = extractvalue %dx.types.ResRet.i32 %1674, 0
  %1676 = and i32 %1675, 65535
  %1677 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1676)  ; LegacyF16ToF32(value)
  %1678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1230, i32 undef)  ; BufferLoad(srv,index,wot)
  %1679 = extractvalue %dx.types.ResRet.i32 %1678, 0
  %1680 = and i32 %1679, 65535
  %1681 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1680)  ; LegacyF16ToF32(value)
  %1682 = lshr i32 %1675, 16
  %1683 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1682)  ; LegacyF16ToF32(value)
  %1684 = fsub fast float %1645, %1683
  %1685 = fmul fast float %1684, %1677
  %1686 = fadd fast float %1685, %1681
  %1687 = call float @dx.op.unary.f32(i32 7, float %1686)  ; Saturate(value)
  br label %1688

; <label>:1688                                    ; preds = %1672, %1620
  %1689 = phi float [ %1687, %1672 ], [ %1645, %1620 ]
  %1690 = call float @dx.op.dot2.f32(i32 54, float %1666, float %1667, float %1224, float %1225)  ; Dot2(ax,ay,bx,by)
  %1691 = call float @dx.op.dot2.f32(i32 54, float %1666, float %1667, float %1226, float %1227)  ; Dot2(ax,ay,bx,by)
  br label %1692

; <label>:1692                                    ; preds = %1688, %1598
  %1693 = phi float [ %1689, %1688 ], [ 0x3FD6666660000000, %1598 ]
  %1694 = phi float [ %1690, %1688 ], [ 0.000000e+00, %1598 ]
  %1695 = phi float [ %1691, %1688 ], [ 0.000000e+00, %1598 ]
  %1696 = phi float [ %1632, %1688 ], [ 1.000000e+00, %1598 ]
  %1697 = add i32 %49, 176
  %1698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1697, i32 undef)  ; BufferLoad(srv,index,wot)
  %1699 = extractvalue %dx.types.ResRet.i32 %1698, 0
  %1700 = lshr i32 %1699, 22
  %1701 = shl nuw nsw i32 %1700, 5
  %1702 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1701)  ; LegacyF16ToF32(value)
  %1703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1704 = extractvalue %dx.types.ResRet.i32 %1703, 0
  %1705 = and i32 %1704, 64
  %1706 = icmp eq i32 %1705, 0
  br i1 %1706, label %1740, label %1707

; <label>:1707                                    ; preds = %1692
  %1708 = add i32 %49, 460
  %1709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1708, i32 undef)  ; BufferLoad(srv,index,wot)
  %1710 = extractvalue %dx.types.ResRet.i32 %1709, 0
  %1711 = add i32 %1710, 0
  %1712 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1711, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1714 = extractvalue %dx.types.ResRet.i32 %1713, 0
  %1715 = and i32 %1714, 131072
  %1716 = icmp eq i32 %1715, 0
  %1717 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1712, %dx.types.Handle %105, float %1320, float %1321, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1718 = extractvalue %dx.types.ResRet.f32 %1717, 0
  %1719 = extractvalue %dx.types.ResRet.f32 %1717, 1
  %1720 = extractvalue %dx.types.ResRet.f32 %1717, 2
  %1721 = fmul fast float %1718, %353
  %1722 = fmul fast float %1719, %356
  %1723 = fmul fast float %1720, %359
  br i1 %1716, label %1730, label %1724

; <label>:1724                                    ; preds = %1707
  %1725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1726 = extractvalue %dx.types.CBufRet.f32 %1725, 0
  %1727 = fmul fast float %1726, %1721
  %1728 = fmul fast float %1726, %1722
  %1729 = fmul fast float %1726, %1723
  br label %1730

; <label>:1730                                    ; preds = %1724, %1707
  %1731 = phi float [ %1727, %1724 ], [ %1721, %1707 ]
  %1732 = phi float [ %1728, %1724 ], [ %1722, %1707 ]
  %1733 = phi float [ %1729, %1724 ], [ %1723, %1707 ]
  %1734 = fmul fast float %1731, %1702
  %1735 = select i1 %294, float %1734, float %1731
  %1736 = call float @dx.op.dot3.f32(i32 55, float %1735, float %1732, float %1733, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1737 = select i1 %294, float 0.000000e+00, float %1731
  %1738 = select i1 %294, float %1736, float %1732
  %1739 = select i1 %294, float 0.000000e+00, float %1733
  br label %1740

; <label>:1740                                    ; preds = %1730, %1692
  %1741 = phi float [ %1737, %1730 ], [ 0.000000e+00, %1692 ]
  %1742 = phi float [ %1738, %1730 ], [ 0.000000e+00, %1692 ]
  %1743 = phi float [ %1739, %1730 ], [ 0.000000e+00, %1692 ]
  %1744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1745 = extractvalue %dx.types.ResRet.i32 %1744, 0
  %1746 = and i32 %1745, 1024
  %1747 = icmp eq i32 %1746, 0
  br i1 %1747, label %1778, label %1748

; <label>:1748                                    ; preds = %1740
  %1749 = add i32 %49, 168
  %1750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1749, i32 undef)  ; BufferLoad(srv,index,wot)
  %1751 = extractvalue %dx.types.ResRet.i32 %1750, 0
  %1752 = and i32 %1751, 255
  %1753 = uitofp i32 %1752 to float
  %1754 = fmul fast float %1753, 0x3F70101020000000
  %1755 = lshr i32 %1751, 8
  %1756 = and i32 %1755, 255
  %1757 = uitofp i32 %1756 to float
  %1758 = fmul fast float %1757, 0x3F70101020000000
  %1759 = lshr i32 %1751, 16
  %1760 = and i32 %1759, 255
  %1761 = uitofp i32 %1760 to float
  %1762 = fmul fast float %1761, 0x3F70101020000000
  %1763 = fmul fast float %1754, %1754
  %1764 = fmul fast float %1758, %1758
  %1765 = fmul fast float %1762, %1762
  %1766 = add i32 %49, 528
  %1767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %1768 = extractvalue %dx.types.ResRet.i32 %1767, 0
  %1769 = add i32 %1768, 0
  %1770 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1769, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1771 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1770, %dx.types.Handle %106, float %1320, float %1321, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1772 = extractvalue %dx.types.ResRet.f32 %1771, 0
  %1773 = extractvalue %dx.types.ResRet.f32 %1771, 1
  %1774 = extractvalue %dx.types.ResRet.f32 %1771, 2
  %1775 = fmul fast float %1763, %1772
  %1776 = fmul fast float %1764, %1773
  %1777 = fmul fast float %1765, %1774
  br label %1778

; <label>:1778                                    ; preds = %1748, %1740
  %1779 = phi float [ %1775, %1748 ], [ 0.000000e+00, %1740 ]
  %1780 = phi float [ %1776, %1748 ], [ 0.000000e+00, %1740 ]
  %1781 = phi float [ %1777, %1748 ], [ 0.000000e+00, %1740 ]
  %1782 = fcmp fast ogt float %1779, 0.000000e+00
  %1783 = fcmp fast ogt float %1780, 0.000000e+00
  %1784 = fcmp fast ogt float %1781, 0.000000e+00
  %1785 = call float @dx.op.unary.f32(i32 23, float %1779)  ; Log(value)
  %1786 = call float @dx.op.unary.f32(i32 23, float %1780)  ; Log(value)
  %1787 = call float @dx.op.unary.f32(i32 23, float %1781)  ; Log(value)
  %1788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1697, i32 undef)  ; BufferLoad(srv,index,wot)
  %1789 = extractvalue %dx.types.ResRet.i32 %1788, 0
  %1790 = lshr i32 %1789, 7
  %1791 = and i32 %1790, 32752
  %1792 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1791)  ; LegacyF16ToF32(value)
  %1793 = fmul fast float %1785, 0xBFE62E4300000000
  %1794 = fmul fast float %1793, %1792
  %1795 = fmul fast float %1786, 0xBFE62E4300000000
  %1796 = fmul fast float %1795, %1792
  %1797 = fmul fast float %1787, 0xBFE62E4300000000
  %1798 = fmul fast float %1797, %1792
  %1799 = select i1 %1782, float %1794, float 1.270000e+02
  %1800 = select i1 %1783, float %1796, float 1.270000e+02
  %1801 = select i1 %1784, float %1798, float 1.270000e+02
  %1802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1803 = extractvalue %dx.types.ResRet.i32 %1802, 0
  %1804 = and i32 %1803, 10240
  %1805 = icmp eq i32 %1804, 0
  br i1 %1805, label %1850, label %1806

; <label>:1806                                    ; preds = %1778
  %1807 = add i32 %49, 544
  %1808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %1809 = extractvalue %dx.types.ResRet.i32 %1808, 0
  %1810 = add i32 %1809, 0
  %1811 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1810, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1812 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1811, %dx.types.Handle %106, float %1320, float %1321, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1813 = extractvalue %dx.types.ResRet.f32 %1812, 1
  %1814 = extractvalue %dx.types.ResRet.f32 %1812, 3
  %1815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1816 = extractvalue %dx.types.ResRet.i32 %1815, 0
  %1817 = and i32 %1816, 1048576
  %1818 = icmp ne i32 %1817, 0
  %1819 = and i32 %1816, 8192
  %1820 = icmp eq i32 %1819, 0
  br i1 %1820, label %1836, label %1821

; <label>:1821                                    ; preds = %1806
  %1822 = extractvalue %dx.types.ResRet.f32 %1812, 2
  %1823 = select i1 %1818, float %1822, float %1813
  %1824 = extractvalue %dx.types.ResRet.f32 %1812, 0
  %1825 = select i1 %1818, float %1824, float %1813
  %1826 = add i32 %49, 112
  %1827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1826, i32 undef)  ; BufferLoad(srv,index,wot)
  %1828 = extractvalue %dx.types.ResRet.i32 %1827, 0
  %1829 = lshr i32 %1828, 16
  %1830 = and i32 %1829, 255
  %1831 = uitofp i32 %1830 to float
  %1832 = fmul fast float %1831, 0x3F80101020000000
  %1833 = fmul fast float %1832, %1825
  %1834 = fmul fast float %1832, %1813
  %1835 = fmul fast float %1832, %1823
  br label %1836

; <label>:1836                                    ; preds = %1821, %1806
  %1837 = phi float [ %1833, %1821 ], [ 0.000000e+00, %1806 ]
  %1838 = phi float [ %1834, %1821 ], [ 0.000000e+00, %1806 ]
  %1839 = phi float [ %1835, %1821 ], [ 0.000000e+00, %1806 ]
  %1840 = and i32 %1816, 2048
  %1841 = icmp eq i32 %1840, 0
  br i1 %1841, label %1850, label %1842

; <label>:1842                                    ; preds = %1836
  %1843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1697, i32 undef)  ; BufferLoad(srv,index,wot)
  %1844 = extractvalue %dx.types.ResRet.i32 %1843, 0
  %1845 = shl i32 %1844, 4
  %1846 = and i32 %1845, 32752
  %1847 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1846)  ; LegacyF16ToF32(value)
  %1848 = fmul fast float %1847, %1814
  %1849 = call float @dx.op.binary.f32(i32 35, float %1848, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1850

; <label>:1850                                    ; preds = %1842, %1836, %1778
  %1851 = phi float [ %1837, %1842 ], [ %1837, %1836 ], [ 0.000000e+00, %1778 ]
  %1852 = phi float [ %1838, %1842 ], [ %1838, %1836 ], [ 0.000000e+00, %1778 ]
  %1853 = phi float [ %1839, %1842 ], [ %1839, %1836 ], [ 0.000000e+00, %1778 ]
  %1854 = phi float [ %1849, %1842 ], [ 0x3F70101020000000, %1836 ], [ 0x3F70101020000000, %1778 ]
  %1855 = add i32 %49, 112
  %1856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1855, i32 undef)  ; BufferLoad(srv,index,wot)
  %1857 = extractvalue %dx.types.ResRet.i32 %1856, 0
  %1858 = and i32 %1857, 255
  %1859 = uitofp i32 %1858 to float
  %1860 = lshr i32 %1857, 8
  %1861 = and i32 %1860, 255
  %1862 = uitofp i32 %1861 to float
  %1863 = call float @dx.op.dot3.f32(i32 55, float %1613, float %1614, float %1615, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1864 = fmul fast float %1862, %1863
  %1865 = fadd fast float %1864, %1859
  %1866 = fmul fast float %1865, 0x3F70101020000000
  %1867 = call float @dx.op.unary.f32(i32 7, float %1866)  ; Saturate(value)
  br i1 %1212, label %1868, label %1903

; <label>:1868                                    ; preds = %1850
  %1869 = fmul fast float %1854, 2.000000e+00
  %1870 = fcmp fast olt float %1799, 1.270000e+02
  %1871 = fcmp fast olt float %1800, 1.270000e+02
  %1872 = fcmp fast olt float %1801, 1.270000e+02
  %1873 = fmul fast float %1799, 0xBFF7154760000000
  %1874 = fmul fast float %1873, %1869
  %1875 = fmul fast float %1800, 0xBFF7154760000000
  %1876 = fmul fast float %1875, %1869
  %1877 = fmul fast float %1801, 0xBFF7154760000000
  %1878 = fmul fast float %1877, %1869
  %1879 = call float @dx.op.unary.f32(i32 21, float %1874)  ; Exp(value)
  %1880 = call float @dx.op.unary.f32(i32 21, float %1876)  ; Exp(value)
  %1881 = call float @dx.op.unary.f32(i32 21, float %1878)  ; Exp(value)
  %1882 = call float @dx.op.unary.f32(i32 7, float %1879)  ; Saturate(value)
  %1883 = call float @dx.op.unary.f32(i32 7, float %1880)  ; Saturate(value)
  %1884 = call float @dx.op.unary.f32(i32 7, float %1881)  ; Saturate(value)
  %1885 = fadd fast float %1882, -1.000000e+00
  %1886 = select i1 %1870, float %1885, float -1.000000e+00
  %1887 = fadd fast float %1883, -1.000000e+00
  %1888 = select i1 %1871, float %1887, float -1.000000e+00
  %1889 = fadd fast float %1884, -1.000000e+00
  %1890 = select i1 %1872, float %1889, float -1.000000e+00
  %1891 = fmul fast float %1886, %1393
  %1892 = fmul fast float %1888, %1393
  %1893 = fmul fast float %1890, %1393
  %1894 = fadd fast float %1891, 1.000000e+00
  %1895 = fadd fast float %1892, 1.000000e+00
  %1896 = fadd fast float %1893, 1.000000e+00
  %1897 = fmul fast float %1894, %1193
  %1898 = fmul fast float %1895, %1194
  %1899 = fmul fast float %1896, %1195
  %1900 = fmul fast float %1894, %1196
  %1901 = fmul fast float %1895, %1197
  %1902 = fmul fast float %1896, %1198
  br label %1903

; <label>:1903                                    ; preds = %1868, %1850
  %1904 = phi float [ %1897, %1868 ], [ %1193, %1850 ]
  %1905 = phi float [ %1898, %1868 ], [ %1194, %1850 ]
  %1906 = phi float [ %1899, %1868 ], [ %1195, %1850 ]
  %1907 = phi float [ %1900, %1868 ], [ %1196, %1850 ]
  %1908 = phi float [ %1901, %1868 ], [ %1197, %1850 ]
  %1909 = phi float [ %1902, %1868 ], [ %1198, %1850 ]
  %1910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1911 = extractvalue %dx.types.ResRet.i32 %1910, 0
  %1912 = and i32 %1911, 3
  %1913 = icmp eq i32 %1912, 3
  br i1 %1913, label %1992, label %1914

; <label>:1914                                    ; preds = %1903
  %1915 = and i32 %1911, 16
  %1916 = icmp ne i32 %1915, 0
  %1917 = select i1 %1916, float %1393, float 0.000000e+00
  %1918 = icmp eq i32 %1912, 0
  br i1 %1918, label %1919, label %1947

; <label>:1919                                    ; preds = %1914
  %1920 = and i32 %1911, 64
  %1921 = icmp ne i32 %1920, 0
  %1922 = select i1 %1921, float %1393, float 0.000000e+00
  %1923 = fsub fast float %1613, %1904
  %1924 = fsub fast float %1614, %1905
  %1925 = fsub fast float %1615, %1906
  %1926 = fmul fast float %1917, %1923
  %1927 = fmul fast float %1917, %1924
  %1928 = fmul fast float %1917, %1925
  %1929 = fadd fast float %1926, %1904
  %1930 = fadd fast float %1927, %1905
  %1931 = fadd fast float %1928, %1906
  %1932 = fsub fast float %1599, %1205
  %1933 = fmul fast float %1917, %1932
  %1934 = fadd fast float %1933, %1205
  %1935 = fsub fast float %1741, %1907
  %1936 = fsub fast float %1742, %1908
  %1937 = fsub fast float %1743, %1909
  %1938 = fmul fast float %1922, %1935
  %1939 = fmul fast float %1922, %1936
  %1940 = fmul fast float %1922, %1937
  %1941 = fadd fast float %1938, %1907
  %1942 = fadd fast float %1939, %1908
  %1943 = fadd fast float %1940, %1909
  %1944 = fsub fast float %1867, %1210
  %1945 = fmul fast float %1917, %1944
  %1946 = fadd fast float %1945, %1210
  br label %1992

; <label>:1947                                    ; preds = %1914
  %1948 = icmp eq i32 %1912, 1
  br i1 %1948, label %1949, label %1962

; <label>:1949                                    ; preds = %1947
  %1950 = fadd fast float %1613, -1.000000e+00
  %1951 = fadd fast float %1614, -1.000000e+00
  %1952 = fadd fast float %1615, -1.000000e+00
  %1953 = fmul fast float %1917, %1950
  %1954 = fmul fast float %1917, %1951
  %1955 = fmul fast float %1917, %1952
  %1956 = fadd fast float %1953, 1.000000e+00
  %1957 = fadd fast float %1954, 1.000000e+00
  %1958 = fadd fast float %1955, 1.000000e+00
  %1959 = fmul fast float %1956, %1904
  %1960 = fmul fast float %1957, %1905
  %1961 = fmul fast float %1958, %1906
  br label %1992

; <label>:1962                                    ; preds = %1947
  %1963 = icmp eq i32 %1912, 2
  br i1 %1963, label %1964, label %1992

; <label>:1964                                    ; preds = %1962
  %1965 = call float @dx.op.unary.f32(i32 24, float %1613)  ; Sqrt(value)
  %1966 = call float @dx.op.unary.f32(i32 24, float %1614)  ; Sqrt(value)
  %1967 = call float @dx.op.unary.f32(i32 24, float %1615)  ; Sqrt(value)
  %1968 = fadd fast float %1965, -5.000000e-01
  %1969 = fadd fast float %1966, -5.000000e-01
  %1970 = fadd fast float %1967, -5.000000e-01
  %1971 = fmul fast float %1968, %1917
  %1972 = fmul fast float %1969, %1917
  %1973 = fmul fast float %1970, %1917
  %1974 = fadd fast float %1971, 5.000000e-01
  %1975 = fadd fast float %1972, 5.000000e-01
  %1976 = fadd fast float %1973, 5.000000e-01
  %1977 = fmul fast float %1974, 2.000000e+00
  %1978 = fsub fast float 1.000000e+00, %1977
  %1979 = fmul fast float %1978, %1904
  %1980 = fadd fast float %1979, %1977
  %1981 = fmul fast float %1980, %1904
  %1982 = fmul fast float %1975, 2.000000e+00
  %1983 = fsub fast float 1.000000e+00, %1982
  %1984 = fmul fast float %1983, %1905
  %1985 = fadd fast float %1984, %1982
  %1986 = fmul fast float %1985, %1905
  %1987 = fmul fast float %1976, 2.000000e+00
  %1988 = fsub fast float 1.000000e+00, %1987
  %1989 = fmul fast float %1988, %1906
  %1990 = fadd fast float %1989, %1987
  %1991 = fmul fast float %1990, %1906
  br label %1992

; <label>:1992                                    ; preds = %1964, %1962, %1949, %1919, %1903
  %1993 = phi float [ %1904, %1903 ], [ %1981, %1964 ], [ %1904, %1962 ], [ %1959, %1949 ], [ %1929, %1919 ]
  %1994 = phi float [ %1905, %1903 ], [ %1986, %1964 ], [ %1905, %1962 ], [ %1960, %1949 ], [ %1930, %1919 ]
  %1995 = phi float [ %1906, %1903 ], [ %1991, %1964 ], [ %1906, %1962 ], [ %1961, %1949 ], [ %1931, %1919 ]
  %1996 = phi float [ %1907, %1903 ], [ %1907, %1964 ], [ %1907, %1962 ], [ %1907, %1949 ], [ %1941, %1919 ]
  %1997 = phi float [ %1908, %1903 ], [ %1908, %1964 ], [ %1908, %1962 ], [ %1908, %1949 ], [ %1942, %1919 ]
  %1998 = phi float [ %1909, %1903 ], [ %1909, %1964 ], [ %1909, %1962 ], [ %1909, %1949 ], [ %1943, %1919 ]
  %1999 = phi float [ %1205, %1903 ], [ %1205, %1964 ], [ %1205, %1962 ], [ %1205, %1949 ], [ %1934, %1919 ]
  %2000 = phi float [ %1210, %1903 ], [ %1210, %1964 ], [ %1210, %1962 ], [ %1210, %1949 ], [ %1946, %1919 ]
  %2001 = and i32 %1911, 12
  %2002 = icmp eq i32 %2001, 12
  br i1 %2002, label %2133, label %2003

; <label>:2003                                    ; preds = %1992
  %2004 = and i32 %1911, 2097184
  %2005 = icmp eq i32 %2004, 2097184
  %2006 = select i1 %2005, float %1393, float 0.000000e+00
  %2007 = and i32 %1911, 4194336
  %2008 = icmp eq i32 %2007, 4194336
  %2009 = select i1 %2008, float %1393, float 0.000000e+00
  %2010 = and i32 %1911, 8388640
  %2011 = icmp eq i32 %2010, 8388640
  %2012 = select i1 %2011, float %1393, float 0.000000e+00
  %2013 = and i32 %1911, 1024
  %2014 = icmp ne i32 %2013, 0
  %2015 = select i1 %2014, float %1393, float 0.000000e+00
  %2016 = and i32 %1911, 2048
  %2017 = icmp ne i32 %2016, 0
  %2018 = select i1 %2017, float %1393, float 0.000000e+00
  %2019 = and i32 %1911, 8192
  %2020 = icmp ne i32 %2019, 0
  %2021 = select i1 %2020, float %1393, float 0.000000e+00
  %2022 = icmp eq i32 %2001, 0
  br i1 %2022, label %2023, label %2057

; <label>:2023                                    ; preds = %2003
  %2024 = fsub fast float %1694, %1191
  %2025 = fsub fast float %1695, %1192
  %2026 = fmul fast float %2006, %2024
  %2027 = fmul fast float %2006, %2025
  %2028 = fadd fast float %2026, %1191
  %2029 = fadd fast float %2027, %1192
  %2030 = fsub fast float %1696, %1208
  %2031 = fmul fast float %2009, %2030
  %2032 = fadd fast float %2031, %1208
  %2033 = fsub fast float %1693, %1207
  %2034 = fmul fast float %2012, %2033
  %2035 = fadd fast float %2034, %1207
  %2036 = fsub fast float %1799, %1199
  %2037 = fsub fast float %1800, %1200
  %2038 = fsub fast float %1801, %1201
  %2039 = fmul fast float %2015, %2036
  %2040 = fmul fast float %2015, %2037
  %2041 = fmul fast float %2015, %2038
  %2042 = fadd fast float %2039, %1199
  %2043 = fadd fast float %2040, %1200
  %2044 = fadd fast float %2041, %1201
  %2045 = fsub fast float %1854, %1209
  %2046 = fmul fast float %2018, %2045
  %2047 = fadd fast float %2046, %1209
  %2048 = fsub fast float %1851, %1202
  %2049 = fsub fast float %1852, %1203
  %2050 = fsub fast float %1853, %1204
  %2051 = fmul fast float %2021, %2048
  %2052 = fmul fast float %2021, %2049
  %2053 = fmul fast float %2021, %2050
  %2054 = fadd fast float %2051, %1202
  %2055 = fadd fast float %2052, %1203
  %2056 = fadd fast float %2053, %1204
  br label %2133

; <label>:2057                                    ; preds = %2003
  %2058 = icmp eq i32 %2001, 4
  br i1 %2058, label %2059, label %2105

; <label>:2059                                    ; preds = %2057
  %2060 = fmul fast float %2006, %1694
  %2061 = fmul fast float %2006, %1695
  %2062 = fadd fast float %2060, %1191
  %2063 = fadd fast float %2061, %1192
  %2064 = call float @dx.op.binary.f32(i32 36, float %1208, float %1696)  ; FMin(a,b)
  %2065 = fsub fast float %2064, %1208
  %2066 = fmul fast float %2065, %2009
  %2067 = fadd fast float %2066, %1208
  %2068 = fadd fast float %1693, %1207
  %2069 = fmul fast float %2068, 0x3FF337FAE0000000
  %2070 = fmul fast float %1207, %1207
  %2071 = fmul fast float %1693, %1693
  %2072 = fadd fast float %2071, %2070
  %2073 = fmul fast float %2072, 0x3FE5152B00000000
  %2074 = fmul fast float %1207, 0xBFCC1F85E0000000
  %2075 = fmul fast float %2074, %1693
  %2076 = fadd fast float %2075, 0xBFE1363700000000
  %2077 = fadd fast float %2076, %2069
  %2078 = fsub fast float %2077, %2073
  %2079 = fmul fast float %2068, 0x3FBA6F0D00000000
  %2080 = fmul fast float %2072, 0x3FD0432880000000
  %2081 = fmul fast float %1207, 0xBFEF110800000000
  %2082 = fmul fast float %2081, %1693
  %2083 = fadd fast float %2082, 1.000000e+00
  %2084 = fsub fast float %2083, %2079
  %2085 = fadd fast float %2084, %2080
  %2086 = fdiv fast float %2078, %2085
  %2087 = call float @dx.op.unary.f32(i32 7, float %2086)  ; Saturate(value)
  %2088 = fsub fast float %2087, %1207
  %2089 = fmul fast float %2088, %2012
  %2090 = fadd fast float %2089, %1207
  %2091 = fmul fast float %2015, %1799
  %2092 = fmul fast float %2015, %1800
  %2093 = fmul fast float %2015, %1801
  %2094 = fadd fast float %2091, %1199
  %2095 = fadd fast float %2092, %1200
  %2096 = fadd fast float %2093, %1201
  %2097 = fmul fast float %2018, %1854
  %2098 = fadd fast float %2097, %1209
  %2099 = fmul fast float %2021, %1851
  %2100 = fmul fast float %2021, %1852
  %2101 = fmul fast float %2021, %1853
  %2102 = fadd fast float %2099, %1202
  %2103 = fadd fast float %2100, %1203
  %2104 = fadd fast float %2101, %1204
  br label %2133

; <label>:2105                                    ; preds = %2057
  %2106 = icmp eq i32 %2001, 8
  br i1 %2106, label %2107, label %2133

; <label>:2107                                    ; preds = %2105
  %2108 = fmul fast float %2006, %1694
  %2109 = fmul fast float %2006, %1695
  %2110 = fadd fast float %2108, %1191
  %2111 = fadd fast float %2109, %1192
  %2112 = call float @dx.op.binary.f32(i32 36, float %1208, float %1696)  ; FMin(a,b)
  %2113 = fsub fast float %2112, %1208
  %2114 = fmul fast float %2113, %2009
  %2115 = fadd fast float %2114, %1208
  %2116 = fsub fast float %1693, %1207
  %2117 = fmul fast float %2012, %2116
  %2118 = fadd fast float %2117, %1207
  %2119 = fmul fast float %2015, %1799
  %2120 = fmul fast float %2015, %1800
  %2121 = fmul fast float %2015, %1801
  %2122 = fadd fast float %2119, %1199
  %2123 = fadd fast float %2120, %1200
  %2124 = fadd fast float %2121, %1201
  %2125 = fmul fast float %2018, %1854
  %2126 = fadd fast float %2125, %1209
  %2127 = fmul fast float %2021, %1851
  %2128 = fmul fast float %2021, %1852
  %2129 = fmul fast float %2021, %1853
  %2130 = fadd fast float %2127, %1202
  %2131 = fadd fast float %2128, %1203
  %2132 = fadd fast float %2129, %1204
  br label %2133

; <label>:2133                                    ; preds = %2107, %2105, %2059, %2023, %1992, %1392, %1211, %1190
  %2134 = phi float [ %1191, %1992 ], [ %1191, %1392 ], [ %1191, %1190 ], [ %2110, %2107 ], [ %1191, %2105 ], [ %2062, %2059 ], [ %2028, %2023 ], [ %1191, %1211 ]
  %2135 = phi float [ %1192, %1992 ], [ %1192, %1392 ], [ %1192, %1190 ], [ %2111, %2107 ], [ %1192, %2105 ], [ %2063, %2059 ], [ %2029, %2023 ], [ %1192, %1211 ]
  %2136 = phi float [ %1993, %1992 ], [ %1193, %1392 ], [ %1193, %1190 ], [ %1993, %2107 ], [ %1993, %2105 ], [ %1993, %2059 ], [ %1993, %2023 ], [ %1193, %1211 ]
  %2137 = phi float [ %1994, %1992 ], [ %1194, %1392 ], [ %1194, %1190 ], [ %1994, %2107 ], [ %1994, %2105 ], [ %1994, %2059 ], [ %1994, %2023 ], [ %1194, %1211 ]
  %2138 = phi float [ %1995, %1992 ], [ %1195, %1392 ], [ %1195, %1190 ], [ %1995, %2107 ], [ %1995, %2105 ], [ %1995, %2059 ], [ %1995, %2023 ], [ %1195, %1211 ]
  %2139 = phi float [ %1996, %1992 ], [ %1196, %1392 ], [ %1196, %1190 ], [ %1996, %2107 ], [ %1996, %2105 ], [ %1996, %2059 ], [ %1996, %2023 ], [ %1196, %1211 ]
  %2140 = phi float [ %1997, %1992 ], [ %1197, %1392 ], [ %1197, %1190 ], [ %1997, %2107 ], [ %1997, %2105 ], [ %1997, %2059 ], [ %1997, %2023 ], [ %1197, %1211 ]
  %2141 = phi float [ %1998, %1992 ], [ %1198, %1392 ], [ %1198, %1190 ], [ %1998, %2107 ], [ %1998, %2105 ], [ %1998, %2059 ], [ %1998, %2023 ], [ %1198, %1211 ]
  %2142 = phi float [ %1199, %1992 ], [ %1199, %1392 ], [ %1199, %1190 ], [ %2122, %2107 ], [ %1199, %2105 ], [ %2094, %2059 ], [ %2042, %2023 ], [ %1199, %1211 ]
  %2143 = phi float [ %1200, %1992 ], [ %1200, %1392 ], [ %1200, %1190 ], [ %2123, %2107 ], [ %1200, %2105 ], [ %2095, %2059 ], [ %2043, %2023 ], [ %1200, %1211 ]
  %2144 = phi float [ %1201, %1992 ], [ %1201, %1392 ], [ %1201, %1190 ], [ %2124, %2107 ], [ %1201, %2105 ], [ %2096, %2059 ], [ %2044, %2023 ], [ %1201, %1211 ]
  %2145 = phi float [ %1202, %1992 ], [ %1202, %1392 ], [ %1202, %1190 ], [ %2130, %2107 ], [ %1202, %2105 ], [ %2102, %2059 ], [ %2054, %2023 ], [ %1202, %1211 ]
  %2146 = phi float [ %1203, %1992 ], [ %1203, %1392 ], [ %1203, %1190 ], [ %2131, %2107 ], [ %1203, %2105 ], [ %2103, %2059 ], [ %2055, %2023 ], [ %1203, %1211 ]
  %2147 = phi float [ %1204, %1992 ], [ %1204, %1392 ], [ %1204, %1190 ], [ %2132, %2107 ], [ %1204, %2105 ], [ %2104, %2059 ], [ %2056, %2023 ], [ %1204, %1211 ]
  %2148 = phi float [ %1999, %1992 ], [ %1205, %1392 ], [ %1205, %1190 ], [ %1999, %2107 ], [ %1999, %2105 ], [ %1999, %2059 ], [ %1999, %2023 ], [ %1205, %1211 ]
  %2149 = phi float [ %1207, %1992 ], [ %1207, %1392 ], [ %1207, %1190 ], [ %2118, %2107 ], [ %1207, %2105 ], [ %2090, %2059 ], [ %2035, %2023 ], [ %1207, %1211 ]
  %2150 = phi float [ %1208, %1992 ], [ %1208, %1392 ], [ %1208, %1190 ], [ %2115, %2107 ], [ %1208, %2105 ], [ %2067, %2059 ], [ %2032, %2023 ], [ %1208, %1211 ]
  %2151 = phi float [ %1209, %1992 ], [ %1209, %1392 ], [ %1209, %1190 ], [ %2126, %2107 ], [ %1209, %2105 ], [ %2098, %2059 ], [ %2047, %2023 ], [ %1209, %1211 ]
  %2152 = phi float [ %2000, %1992 ], [ %1210, %1392 ], [ %1210, %1190 ], [ %2000, %2107 ], [ %2000, %2105 ], [ %2000, %2059 ], [ %2000, %2023 ], [ %1210, %1211 ]
  br i1 %480, label %3075, label %2153

; <label>:2153                                    ; preds = %2133
  %2154 = icmp ult i32 %536, 3
  %2155 = add i32 %49, 56
  %2156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2155, i32 undef)  ; BufferLoad(srv,index,wot)
  %2157 = extractvalue %dx.types.ResRet.i32 %2156, 0
  %2158 = add i32 %49, 60
  %2159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2158, i32 undef)  ; BufferLoad(srv,index,wot)
  %2160 = extractvalue %dx.types.ResRet.i32 %2159, 0
  %2161 = or i32 %2160, %2157
  %2162 = icmp eq i32 %2161, 0
  br i1 %2162, label %3075, label %2163

; <label>:2163                                    ; preds = %2153
  %2164 = and i32 %2157, 262144
  %2165 = icmp ne i32 %2164, 0
  %2166 = select i1 %2165, float %55, float 1.000000e+00
  %2167 = select i1 %2165, float %56, float 0.000000e+00
  %2168 = select i1 %2165, float %57, float 0.000000e+00
  %2169 = select i1 %2165, float %58, float 1.000000e+00
  %2170 = select i1 %2165, float %59, float %87
  %2171 = select i1 %2165, float %60, float %88
  %2172 = add i32 %49, 316
  %2173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2172, i32 undef)  ; BufferLoad(srv,index,wot)
  %2174 = extractvalue %dx.types.ResRet.i32 %2173, 0
  %2175 = lshr i32 %2174, 16
  %2176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2175)  ; LegacyF16ToF32(value)
  %2177 = fmul fast float %2176, 0x3F50624DE0000000
  %2178 = add i32 %49, 120
  %2179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2178, i32 undef)  ; BufferLoad(srv,index,wot)
  %2180 = extractvalue %dx.types.ResRet.i32 %2179, 0
  %2181 = lshr i32 %2180, 16
  %2182 = and i32 %2181, 255
  %2183 = lshr i32 %2180, 24
  %2184 = add i32 %49, 324
  %2185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2184, i32 undef)  ; BufferLoad(srv,index,wot)
  %2186 = extractvalue %dx.types.ResRet.i32 %2185, 0
  %2187 = and i32 %2186, 65535
  %2188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2187)  ; LegacyF16ToF32(value)
  %2189 = lshr i32 %2186, 16
  %2190 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2189)  ; LegacyF16ToF32(value)
  %2191 = add i32 %49, 64
  %2192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2191, i32 undef)  ; BufferLoad(srv,index,wot)
  %2193 = extractvalue %dx.types.ResRet.i32 %2192, 0
  %2194 = lshr i32 %2193, 22
  %2195 = shl nuw nsw i32 %2194, 5
  %2196 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2195)  ; LegacyF16ToF32(value)
  %2197 = shl i32 %2193, 4
  %2198 = and i32 %2197, 32752
  %2199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2198)  ; LegacyF16ToF32(value)
  %2200 = lshr i32 %2193, 7
  %2201 = and i32 %2200, 32752
  %2202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2201)  ; LegacyF16ToF32(value)
  %2203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2204 = extractvalue %dx.types.CBufRet.f32 %2203, 3
  %2205 = fmul fast float %2204, 1.000000e+03
  %2206 = fmul fast float %430, %2205
  %2207 = call float @dx.op.unary.f32(i32 22, float %2206)  ; Frc(value)
  %2208 = fadd fast float %2207, %420
  %2209 = fmul fast float %431, %2205
  %2210 = call float @dx.op.unary.f32(i32 22, float %2209)  ; Frc(value)
  %2211 = fadd fast float %2210, %422
  %2212 = fmul fast float %2177, %2205
  %2213 = call float @dx.op.unary.f32(i32 22, float %2212)  ; Frc(value)
  %2214 = fmul fast float %2213, 0x401921FB60000000
  %2215 = fadd fast float %2214, %2196
  %2216 = call float @dx.op.unary.f32(i32 13, float %2215)  ; Sin(value)
  %2217 = call float @dx.op.unary.f32(i32 12, float %2215)  ; Cos(value)
  %2218 = fsub fast float -0.000000e+00, %2216
  %2219 = fadd fast float %2170, -5.000000e-01
  %2220 = fadd fast float %2171, -5.000000e-01
  %2221 = fmul fast float %2188, %2219
  %2222 = fmul fast float %2190, %2220
  %2223 = fadd fast float %2221, 5.000000e-01
  %2224 = fadd fast float %2222, 5.000000e-01
  %2225 = fmul fast float %2199, %2223
  %2226 = fmul fast float %2202, %2224
  %2227 = fmul fast float %2217, %2225
  %2228 = call float @dx.op.tertiary.f32(i32 46, float %2218, float %2226, float %2227)  ; FMad(a,b,c)
  %2229 = fmul fast float %2216, %2225
  %2230 = call float @dx.op.tertiary.f32(i32 46, float %2217, float %2226, float %2229)  ; FMad(a,b,c)
  %2231 = fadd fast float %2208, %2228
  %2232 = fadd fast float %2211, %2230
  %2233 = icmp ugt i32 %2182, 1
  %2234 = icmp ugt i32 %2180, 33554431
  %2235 = or i1 %2234, %2233
  br i1 %2235, label %2236, label %2261

; <label>:2236                                    ; preds = %2163
  %2237 = add i32 %49, 260
  %2238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2237, i32 undef)  ; BufferLoad(srv,index,wot)
  %2239 = extractvalue %dx.types.ResRet.i32 %2238, 0
  %2240 = lshr i32 %2239, 16
  %2241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2240)  ; LegacyF16ToF32(value)
  %2242 = fmul fast float %2204, %2241
  %2243 = call float @dx.op.unary.f32(i32 22, float %2242)  ; Frc(value)
  %2244 = mul nuw nsw i32 %2182, %2183
  %2245 = uitofp i32 %2244 to float
  %2246 = fmul fast float %2243, %2245
  %2247 = call float @dx.op.unary.f32(i32 27, float %2246)  ; Round_ni(value)
  %2248 = fptoui float %2247 to i32
  %2249 = urem i32 %2248, %2182
  %2250 = udiv i32 %2248, %2183
  %2251 = call float @dx.op.unary.f32(i32 22, float %2231)  ; Frc(value)
  %2252 = call float @dx.op.unary.f32(i32 22, float %2232)  ; Frc(value)
  %2253 = uitofp i32 %2249 to float
  %2254 = uitofp i32 %2250 to float
  %2255 = fadd fast float %2251, %2253
  %2256 = fadd fast float %2252, %2254
  %2257 = uitofp i32 %2182 to float
  %2258 = uitofp i32 %2183 to float
  %2259 = fdiv fast float %2255, %2257
  %2260 = fdiv fast float %2256, %2258
  br label %2261

; <label>:2261                                    ; preds = %2236, %2163
  %2262 = phi float [ %2259, %2236 ], [ %2231, %2163 ]
  %2263 = phi float [ %2260, %2236 ], [ %2232, %2163 ]
  %2264 = and i32 %2157, 256
  %2265 = icmp eq i32 %2264, 0
  br i1 %2265, label %2312, label %2266

; <label>:2266                                    ; preds = %2261
  %2267 = add i32 %49, 496
  %2268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2267, i32 undef)  ; BufferLoad(srv,index,wot)
  %2269 = extractvalue %dx.types.ResRet.i32 %2268, 0
  %2270 = add i32 %2269, 0
  %2271 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2270, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2272 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2271, %dx.types.Handle %106, float %2262, float %2263, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2273 = extractvalue %dx.types.ResRet.f32 %2272, 0
  %2274 = add i32 %49, 132
  %2275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2274, i32 undef)  ; BufferLoad(srv,index,wot)
  %2276 = extractvalue %dx.types.ResRet.i32 %2275, 0
  %2277 = shl i32 %2276, 4
  %2278 = and i32 %2277, 32752
  %2279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2278)  ; LegacyF16ToF32(value)
  %2280 = lshr i32 %2276, 7
  %2281 = and i32 %2280, 32752
  %2282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2281)  ; LegacyF16ToF32(value)
  %2283 = fsub fast float 1.000000e+00, %532
  %2284 = call float @dx.op.binary.f32(i32 35, float %2283, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2285 = bitcast float %532 to i32
  %2286 = sitofp i32 %2285 to float
  %2287 = fadd fast float %2286, 0xC1CFBF8940000000
  %2288 = fmul fast float %2282, %2287
  %2289 = fadd fast float %2288, 0x41CFBF8940000000
  %2290 = fptosi float %2289 to i32
  %2291 = bitcast i32 %2290 to float
  %2292 = bitcast float %2284 to i32
  %2293 = sitofp i32 %2292 to float
  %2294 = fadd fast float %2293, 0xC1CFBF8940000000
  %2295 = fmul fast float %2294, %2282
  %2296 = fadd fast float %2295, 0x41CFBF8940000000
  %2297 = fptosi float %2296 to i32
  %2298 = bitcast i32 %2297 to float
  %2299 = fmul fast float %2291, %2279
  %2300 = fmul fast float %2298, %2279
  %2301 = fsub fast float %2284, %2299
  %2302 = fadd fast float %2300, %2284
  %2303 = call float @dx.op.unary.f32(i32 7, float %2301)  ; Saturate(value)
  %2304 = call float @dx.op.unary.f32(i32 7, float %2302)  ; Saturate(value)
  %2305 = fsub fast float %2273, %2303
  %2306 = fsub fast float %2304, %2303
  %2307 = bitcast float %2306 to i32
  %2308 = sub nsw i32 2129859010, %2307
  %2309 = bitcast i32 %2308 to float
  %2310 = fmul fast float %2309, %2305
  %2311 = call float @dx.op.unary.f32(i32 7, float %2310)  ; Saturate(value)
  br label %2312

; <label>:2312                                    ; preds = %2266, %2261
  %2313 = phi float [ %2311, %2266 ], [ %532, %2261 ]
  %2314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2155, i32 undef)  ; BufferLoad(srv,index,wot)
  %2315 = extractvalue %dx.types.ResRet.i32 %2314, 0
  %2316 = and i32 %2315, 128
  %2317 = icmp eq i32 %2316, 0
  br i1 %2317, label %2334, label %2318

; <label>:2318                                    ; preds = %2312
  %2319 = add i32 %49, 480
  %2320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2319, i32 undef)  ; BufferLoad(srv,index,wot)
  %2321 = extractvalue %dx.types.ResRet.i32 %2320, 0
  %2322 = add i32 %2321, 0
  %2323 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2322, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2324 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2323, %dx.types.Handle %106, float %2262, float %2263, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2325 = extractvalue %dx.types.ResRet.f32 %2324, 0
  %2326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2155, i32 undef)  ; BufferLoad(srv,index,wot)
  %2327 = extractvalue %dx.types.ResRet.i32 %2326, 0
  %2328 = and i32 %2327, 524288
  %2329 = icmp ne i32 %2328, 0
  %2330 = fcmp fast ogt float %2325, 0x3FE0101020000000
  %2331 = select i1 %2330, float 1.000000e+00, float 0.000000e+00
  %2332 = select i1 %2329, float %2331, float %2325
  %2333 = fmul fast float %2332, %2313
  br label %2334

; <label>:2334                                    ; preds = %2318, %2312
  %2335 = phi float [ %2333, %2318 ], [ %2313, %2312 ]
  %2336 = fcmp fast ult float %2335, 0x3F70101020000000
  br i1 %2336, label %3075, label %2337

; <label>:2337                                    ; preds = %2334
  %2338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2155, i32 undef)  ; BufferLoad(srv,index,wot)
  %2339 = extractvalue %dx.types.ResRet.i32 %2338, 0
  %2340 = and i32 %2339, 16
  %2341 = icmp eq i32 %2340, 0
  br i1 %2341, label %2540, label %2342

; <label>:2342                                    ; preds = %2337
  %2343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2178, i32 undef)  ; BufferLoad(srv,index,wot)
  %2344 = extractvalue %dx.types.ResRet.i32 %2343, 0
  %2345 = add i32 %49, 432
  %2346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2345, i32 undef)  ; BufferLoad(srv,index,wot)
  %2347 = extractvalue %dx.types.ResRet.i32 %2346, 0
  %2348 = add i32 %2347, 0
  %2349 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2348, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2350 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2349, %dx.types.Handle %105, float %2262, float %2263, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2351 = extractvalue %dx.types.ResRet.f32 %2350, 0
  %2352 = extractvalue %dx.types.ResRet.f32 %2350, 1
  %2353 = extractvalue %dx.types.ResRet.f32 %2350, 2
  %2354 = extractvalue %dx.types.ResRet.f32 %2350, 3
  %2355 = and i32 %2344, 255
  %2356 = uitofp i32 %2355 to float
  %2357 = lshr i32 %2344, 8
  %2358 = and i32 %2357, 255
  %2359 = uitofp i32 %2358 to float
  %2360 = fmul fast float %2354, %2356
  %2361 = fadd fast float %2360, %2359
  %2362 = fmul fast float %2361, 0x3F70101000000000
  %2363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2155, i32 undef)  ; BufferLoad(srv,index,wot)
  %2364 = extractvalue %dx.types.ResRet.i32 %2363, 0
  %2365 = and i32 %2364, 512
  %2366 = icmp eq i32 %2365, 0
  br i1 %2366, label %2375, label %2367

; <label>:2367                                    ; preds = %2342
  %2368 = add i32 %49, 516
  %2369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2368, i32 undef)  ; BufferLoad(srv,index,wot)
  %2370 = extractvalue %dx.types.ResRet.i32 %2369, 0
  %2371 = add i32 %2370, 0
  %2372 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2371, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2373 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2372, %dx.types.Handle %106, float %2262, float %2263, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2374 = extractvalue %dx.types.ResRet.f32 %2373, 0
  br label %2375

; <label>:2375                                    ; preds = %2367, %2342
  %2376 = phi float [ %2374, %2367 ], [ 1.000000e+00, %2342 ]
  %2377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2155, i32 undef)  ; BufferLoad(srv,index,wot)
  %2378 = extractvalue %dx.types.ResRet.i32 %2377, 0
  %2379 = and i32 %2378, 33554432
  %2380 = icmp eq i32 %2379, 0
  br i1 %2380, label %2487, label %2381

; <label>:2381                                    ; preds = %2375
  %2382 = add i32 %49, 256
  %2383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2382, i32 undef)  ; BufferLoad(srv,index,wot)
  %2384 = extractvalue %dx.types.ResRet.i32 %2383, 0
  %2385 = and i32 %2384, 65535
  %2386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2385)  ; LegacyF16ToF32(value)
  %2387 = lshr i32 %2384, 16
  %2388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2387)  ; LegacyF16ToF32(value)
  %2389 = add i32 %49, 260
  %2390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2389, i32 undef)  ; BufferLoad(srv,index,wot)
  %2391 = extractvalue %dx.types.ResRet.i32 %2390, 0
  %2392 = and i32 %2391, 65535
  %2393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2392)  ; LegacyF16ToF32(value)
  %2394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %2395 = extractvalue %dx.types.ResRet.i32 %2394, 0
  %2396 = lshr i32 %2395, 24
  %2397 = uitofp i32 %2396 to float
  %2398 = fmul fast float %2397, 0x3F70101020000000
  %2399 = and i32 %2395, 255
  %2400 = uitofp i32 %2399 to float
  %2401 = fmul fast float %2400, 0x3F70101020000000
  %2402 = lshr i32 %2395, 8
  %2403 = and i32 %2402, 255
  %2404 = uitofp i32 %2403 to float
  %2405 = fmul fast float %2404, 0x3F70101020000000
  %2406 = lshr i32 %2395, 16
  %2407 = and i32 %2406, 255
  %2408 = uitofp i32 %2407 to float
  %2409 = fmul fast float %2408, 0x3F70101020000000
  %2410 = add i32 %49, 252
  %2411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2410, i32 undef)  ; BufferLoad(srv,index,wot)
  %2412 = extractvalue %dx.types.ResRet.i32 %2411, 0
  %2413 = lshr i32 %2412, 24
  %2414 = uitofp i32 %2413 to float
  %2415 = fmul fast float %2414, 0x3F70101020000000
  %2416 = and i32 %2412, 255
  %2417 = uitofp i32 %2416 to float
  %2418 = fmul fast float %2417, 0x3F70101020000000
  %2419 = lshr i32 %2412, 8
  %2420 = and i32 %2419, 255
  %2421 = uitofp i32 %2420 to float
  %2422 = fmul fast float %2421, 0x3F70101020000000
  %2423 = lshr i32 %2412, 16
  %2424 = and i32 %2423, 255
  %2425 = uitofp i32 %2424 to float
  %2426 = fmul fast float %2425, 0x3F70101020000000
  %2427 = bitcast float %2351 to i32
  %2428 = ashr i32 %2427, 1
  %2429 = sub nsw i32 1597463174, %2428
  %2430 = bitcast i32 %2429 to float
  %2431 = fmul fast float %2351, 5.000000e-01
  %2432 = fmul fast float %2430, %2430
  %2433 = fmul fast float %2432, %2431
  %2434 = fsub fast float 1.500000e+00, %2433
  %2435 = fmul fast float %2430, %2351
  %2436 = fmul fast float %2435, %2434
  %2437 = bitcast float %2352 to i32
  %2438 = ashr i32 %2437, 1
  %2439 = sub nsw i32 1597463174, %2438
  %2440 = bitcast i32 %2439 to float
  %2441 = fmul fast float %2352, 5.000000e-01
  %2442 = fmul fast float %2440, %2440
  %2443 = fmul fast float %2442, %2441
  %2444 = fsub fast float 1.500000e+00, %2443
  %2445 = fmul fast float %2440, %2352
  %2446 = fmul fast float %2445, %2444
  %2447 = bitcast float %2353 to i32
  %2448 = ashr i32 %2447, 1
  %2449 = sub nsw i32 1597463174, %2448
  %2450 = bitcast i32 %2449 to float
  %2451 = fmul fast float %2353, 5.000000e-01
  %2452 = fmul fast float %2450, %2450
  %2453 = fmul fast float %2452, %2451
  %2454 = fsub fast float 1.500000e+00, %2453
  %2455 = fmul fast float %2450, %2353
  %2456 = fmul fast float %2455, %2454
  %2457 = fsub fast float %2436, %2418
  %2458 = fsub fast float %2446, %2422
  %2459 = fsub fast float %2456, %2426
  %2460 = fmul fast float %2457, %2386
  %2461 = fmul fast float %2458, %2388
  %2462 = fmul fast float %2459, %2393
  %2463 = fadd fast float %2460, %2401
  %2464 = fadd fast float %2461, %2405
  %2465 = fadd fast float %2462, %2409
  %2466 = call float @dx.op.unary.f32(i32 7, float %2463)  ; Saturate(value)
  %2467 = call float @dx.op.unary.f32(i32 7, float %2464)  ; Saturate(value)
  %2468 = call float @dx.op.unary.f32(i32 7, float %2465)  ; Saturate(value)
  %2469 = fmul fast float %2466, %2466
  %2470 = fmul fast float %2467, %2467
  %2471 = fmul fast float %2468, %2468
  %2472 = fsub fast float %2469, %2351
  %2473 = fsub fast float %2470, %2352
  %2474 = fsub fast float %2471, %2353
  %2475 = fmul fast float %2472, %2376
  %2476 = fmul fast float %2473, %2376
  %2477 = fmul fast float %2474, %2376
  %2478 = fadd fast float %2475, %2351
  %2479 = fadd fast float %2476, %2352
  %2480 = fadd fast float %2477, %2353
  %2481 = fadd fast float %2398, %2362
  %2482 = fsub fast float %2481, %2415
  %2483 = call float @dx.op.unary.f32(i32 7, float %2482)  ; Saturate(value)
  %2484 = fsub fast float %2483, %2362
  %2485 = fmul fast float %2484, %2376
  %2486 = fadd fast float %2485, %2362
  br label %2540

; <label>:2487                                    ; preds = %2375
  %2488 = and i32 %2378, 134217728
  %2489 = icmp eq i32 %2488, 0
  br i1 %2489, label %2524, label %2490

; <label>:2490                                    ; preds = %2487
  %2491 = call float @dx.op.unary.f32(i32 24, float %407)  ; Sqrt(value)
  %2492 = call float @dx.op.unary.f32(i32 24, float %411)  ; Sqrt(value)
  %2493 = call float @dx.op.unary.f32(i32 24, float %415)  ; Sqrt(value)
  %2494 = fadd fast float %2491, -5.000000e-01
  %2495 = fadd fast float %2492, -5.000000e-01
  %2496 = fadd fast float %2493, -5.000000e-01
  %2497 = fmul fast float %2494, %2376
  %2498 = fmul fast float %2495, %2376
  %2499 = fmul fast float %2496, %2376
  %2500 = fadd fast float %2497, 5.000000e-01
  %2501 = fadd fast float %2498, 5.000000e-01
  %2502 = fadd fast float %2499, 5.000000e-01
  %2503 = call float @dx.op.unary.f32(i32 24, float %2351)  ; Sqrt(value)
  %2504 = call float @dx.op.unary.f32(i32 24, float %2352)  ; Sqrt(value)
  %2505 = call float @dx.op.unary.f32(i32 24, float %2353)  ; Sqrt(value)
  %2506 = fmul fast float %2500, 2.000000e+00
  %2507 = fsub fast float 1.000000e+00, %2506
  %2508 = fmul fast float %2507, %2503
  %2509 = fadd fast float %2508, %2506
  %2510 = fmul fast float %2509, %2503
  %2511 = fmul fast float %2501, 2.000000e+00
  %2512 = fsub fast float 1.000000e+00, %2511
  %2513 = fmul fast float %2512, %2504
  %2514 = fadd fast float %2513, %2511
  %2515 = fmul fast float %2514, %2504
  %2516 = fmul fast float %2502, 2.000000e+00
  %2517 = fsub fast float 1.000000e+00, %2516
  %2518 = fmul fast float %2517, %2505
  %2519 = fadd fast float %2518, %2516
  %2520 = fmul fast float %2519, %2505
  %2521 = fmul fast float %2510, %2510
  %2522 = fmul fast float %2515, %2515
  %2523 = fmul fast float %2520, %2520
  br label %2540

; <label>:2524                                    ; preds = %2487
  %2525 = fmul fast float %407, %407
  %2526 = fmul fast float %411, %411
  %2527 = fmul fast float %415, %415
  %2528 = fadd fast float %2525, -1.000000e+00
  %2529 = fadd fast float %2526, -1.000000e+00
  %2530 = fadd fast float %2527, -1.000000e+00
  %2531 = fmul fast float %2376, %2528
  %2532 = fmul fast float %2376, %2529
  %2533 = fmul fast float %2376, %2530
  %2534 = fadd fast float %2531, 1.000000e+00
  %2535 = fadd fast float %2532, 1.000000e+00
  %2536 = fadd fast float %2533, 1.000000e+00
  %2537 = fmul fast float %2534, %2351
  %2538 = fmul fast float %2535, %2352
  %2539 = fmul fast float %2536, %2353
  br label %2540

; <label>:2540                                    ; preds = %2524, %2490, %2381, %2337
  %2541 = phi float [ %2486, %2381 ], [ %2362, %2490 ], [ %2362, %2524 ], [ 0x3FA23C0BE0000000, %2337 ]
  %2542 = phi float [ %2478, %2381 ], [ %2521, %2490 ], [ %2537, %2524 ], [ 1.000000e+00, %2337 ]
  %2543 = phi float [ %2479, %2381 ], [ %2522, %2490 ], [ %2538, %2524 ], [ 1.000000e+00, %2337 ]
  %2544 = phi float [ %2480, %2381 ], [ %2523, %2490 ], [ %2539, %2524 ], [ 1.000000e+00, %2337 ]
  %2545 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2546 = extractvalue %dx.types.CBufRet.i32 %2545, 1
  %2547 = and i32 %2546, 1
  %2548 = icmp ne i32 %2547, 0
  %2549 = add i32 %49, 356
  %2550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2549, i32 undef)  ; BufferLoad(srv,index,wot)
  %2551 = extractvalue %dx.types.ResRet.i32 %2550, 0
  %2552 = and i32 %2551, 32
  %2553 = icmp ne i32 %2552, 0
  %2554 = and i1 %2548, %2553
  %2555 = select i1 %2554, float 1.000000e+00, float %2542
  %2556 = select i1 %2554, float 0x3FD3333340000000, float %2543
  %2557 = select i1 %2554, float 0x3FD3333340000000, float %2544
  %2558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2155, i32 undef)  ; BufferLoad(srv,index,wot)
  %2559 = extractvalue %dx.types.ResRet.i32 %2558, 0
  %2560 = and i32 %2559, 32
  %2561 = icmp eq i32 %2560, 0
  br i1 %2561, label %2634, label %2562

; <label>:2562                                    ; preds = %2540
  %2563 = add i32 %49, 124
  %2564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2563, i32 undef)  ; BufferLoad(srv,index,wot)
  %2565 = extractvalue %dx.types.ResRet.i32 %2564, 0
  %2566 = add i32 %49, 448
  %2567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2566, i32 undef)  ; BufferLoad(srv,index,wot)
  %2568 = extractvalue %dx.types.ResRet.i32 %2567, 0
  %2569 = add i32 %2568, 0
  %2570 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2569, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2571 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2570, %dx.types.Handle %105, float %2262, float %2263, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2572 = extractvalue %dx.types.ResRet.f32 %2571, 0
  %2573 = extractvalue %dx.types.ResRet.f32 %2571, 1
  %2574 = extractvalue %dx.types.ResRet.f32 %2571, 2
  %2575 = extractvalue %dx.types.ResRet.f32 %2571, 3
  %2576 = and i32 %2565, 255
  %2577 = uitofp i32 %2576 to float
  %2578 = lshr i32 %2565, 8
  %2579 = and i32 %2578, 255
  %2580 = uitofp i32 %2579 to float
  %2581 = lshr i32 %2565, 16
  %2582 = and i32 %2581, 255
  %2583 = uitofp i32 %2582 to float
  %2584 = fmul fast float %2583, 0x3F70101000000000
  %2585 = fmul fast float %2572, %2577
  %2586 = fadd fast float %2585, %2580
  %2587 = fmul fast float %2586, 0x3F70101000000000
  %2588 = fadd fast float %2573, -5.000000e-01
  %2589 = fadd fast float %2575, -5.000000e-01
  %2590 = fmul fast float %2588, %2584
  %2591 = fmul fast float %2589, %2584
  %2592 = fadd fast float %2590, 5.000000e-01
  %2593 = fadd fast float %2591, 5.000000e-01
  %2594 = fmul fast float %2592, 2.000000e+00
  %2595 = fadd fast float %2594, -1.000000e+00
  %2596 = fmul fast float %2593, 2.000000e+00
  %2597 = fadd fast float %2596, -1.000000e+00
  %2598 = fadd fast float %2595, %2597
  %2599 = fmul fast float %2598, 5.000000e-01
  %2600 = fsub fast float %2595, %2597
  %2601 = fmul fast float %2600, 5.000000e-01
  %2602 = call float @dx.op.unary.f32(i32 6, float %2599)  ; FAbs(value)
  %2603 = fsub fast float 1.000000e+00, %2602
  %2604 = call float @dx.op.unary.f32(i32 6, float %2601)  ; FAbs(value)
  %2605 = fsub fast float %2603, %2604
  %2606 = call float @dx.op.dot3.f32(i32 55, float %2599, float %2601, float %2605, float %2599, float %2601, float %2605)  ; Dot3(ax,ay,az,bx,by,bz)
  %2607 = call float @dx.op.unary.f32(i32 25, float %2606)  ; Rsqrt(value)
  %2608 = fmul fast float %2599, %2607
  %2609 = fmul fast float %2601, %2607
  %2610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2155, i32 undef)  ; BufferLoad(srv,index,wot)
  %2611 = extractvalue %dx.types.ResRet.i32 %2610, 0
  %2612 = and i32 %2611, 67108864
  %2613 = icmp eq i32 %2612, 0
  br i1 %2613, label %2630, label %2614

; <label>:2614                                    ; preds = %2562
  %2615 = add i32 %49, 312
  %2616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2615, i32 undef)  ; BufferLoad(srv,index,wot)
  %2617 = extractvalue %dx.types.ResRet.i32 %2616, 0
  %2618 = and i32 %2617, 65535
  %2619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2618)  ; LegacyF16ToF32(value)
  %2620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2172, i32 undef)  ; BufferLoad(srv,index,wot)
  %2621 = extractvalue %dx.types.ResRet.i32 %2620, 0
  %2622 = and i32 %2621, 65535
  %2623 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2622)  ; LegacyF16ToF32(value)
  %2624 = lshr i32 %2617, 16
  %2625 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2624)  ; LegacyF16ToF32(value)
  %2626 = fsub fast float %2587, %2625
  %2627 = fmul fast float %2626, %2619
  %2628 = fadd fast float %2627, %2623
  %2629 = call float @dx.op.unary.f32(i32 7, float %2628)  ; Saturate(value)
  br label %2630

; <label>:2630                                    ; preds = %2614, %2562
  %2631 = phi float [ %2629, %2614 ], [ %2587, %2562 ]
  %2632 = call float @dx.op.dot2.f32(i32 54, float %2608, float %2609, float %2166, float %2167)  ; Dot2(ax,ay,bx,by)
  %2633 = call float @dx.op.dot2.f32(i32 54, float %2608, float %2609, float %2168, float %2169)  ; Dot2(ax,ay,bx,by)
  br label %2634

; <label>:2634                                    ; preds = %2630, %2540
  %2635 = phi float [ %2631, %2630 ], [ 0x3FD6666660000000, %2540 ]
  %2636 = phi float [ %2632, %2630 ], [ 0.000000e+00, %2540 ]
  %2637 = phi float [ %2633, %2630 ], [ 0.000000e+00, %2540 ]
  %2638 = phi float [ %2574, %2630 ], [ 1.000000e+00, %2540 ]
  %2639 = add i32 %49, 192
  %2640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2639, i32 undef)  ; BufferLoad(srv,index,wot)
  %2641 = extractvalue %dx.types.ResRet.i32 %2640, 0
  %2642 = lshr i32 %2641, 22
  %2643 = shl nuw nsw i32 %2642, 5
  %2644 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2643)  ; LegacyF16ToF32(value)
  %2645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2155, i32 undef)  ; BufferLoad(srv,index,wot)
  %2646 = extractvalue %dx.types.ResRet.i32 %2645, 0
  %2647 = and i32 %2646, 64
  %2648 = icmp eq i32 %2647, 0
  br i1 %2648, label %2682, label %2649

; <label>:2649                                    ; preds = %2634
  %2650 = add i32 %49, 464
  %2651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2650, i32 undef)  ; BufferLoad(srv,index,wot)
  %2652 = extractvalue %dx.types.ResRet.i32 %2651, 0
  %2653 = add i32 %2652, 0
  %2654 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2653, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2155, i32 undef)  ; BufferLoad(srv,index,wot)
  %2656 = extractvalue %dx.types.ResRet.i32 %2655, 0
  %2657 = and i32 %2656, 131072
  %2658 = icmp eq i32 %2657, 0
  %2659 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2654, %dx.types.Handle %105, float %2262, float %2263, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2660 = extractvalue %dx.types.ResRet.f32 %2659, 0
  %2661 = extractvalue %dx.types.ResRet.f32 %2659, 1
  %2662 = extractvalue %dx.types.ResRet.f32 %2659, 2
  %2663 = fmul fast float %2660, %395
  %2664 = fmul fast float %2661, %398
  %2665 = fmul fast float %2662, %401
  br i1 %2658, label %2672, label %2666

; <label>:2666                                    ; preds = %2649
  %2667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2668 = extractvalue %dx.types.CBufRet.f32 %2667, 0
  %2669 = fmul fast float %2668, %2663
  %2670 = fmul fast float %2668, %2664
  %2671 = fmul fast float %2668, %2665
  br label %2672

; <label>:2672                                    ; preds = %2666, %2649
  %2673 = phi float [ %2669, %2666 ], [ %2663, %2649 ]
  %2674 = phi float [ %2670, %2666 ], [ %2664, %2649 ]
  %2675 = phi float [ %2671, %2666 ], [ %2665, %2649 ]
  %2676 = fmul fast float %2673, %2644
  %2677 = select i1 %294, float %2676, float %2673
  %2678 = call float @dx.op.dot3.f32(i32 55, float %2677, float %2674, float %2675, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2679 = select i1 %294, float 0.000000e+00, float %2673
  %2680 = select i1 %294, float %2678, float %2674
  %2681 = select i1 %294, float 0.000000e+00, float %2675
  br label %2682

; <label>:2682                                    ; preds = %2672, %2634
  %2683 = phi float [ %2679, %2672 ], [ 0.000000e+00, %2634 ]
  %2684 = phi float [ %2680, %2672 ], [ 0.000000e+00, %2634 ]
  %2685 = phi float [ %2681, %2672 ], [ 0.000000e+00, %2634 ]
  %2686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2155, i32 undef)  ; BufferLoad(srv,index,wot)
  %2687 = extractvalue %dx.types.ResRet.i32 %2686, 0
  %2688 = and i32 %2687, 1024
  %2689 = icmp eq i32 %2688, 0
  br i1 %2689, label %2720, label %2690

; <label>:2690                                    ; preds = %2682
  %2691 = add i32 %49, 184
  %2692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2691, i32 undef)  ; BufferLoad(srv,index,wot)
  %2693 = extractvalue %dx.types.ResRet.i32 %2692, 0
  %2694 = and i32 %2693, 255
  %2695 = uitofp i32 %2694 to float
  %2696 = fmul fast float %2695, 0x3F70101020000000
  %2697 = lshr i32 %2693, 8
  %2698 = and i32 %2697, 255
  %2699 = uitofp i32 %2698 to float
  %2700 = fmul fast float %2699, 0x3F70101020000000
  %2701 = lshr i32 %2693, 16
  %2702 = and i32 %2701, 255
  %2703 = uitofp i32 %2702 to float
  %2704 = fmul fast float %2703, 0x3F70101020000000
  %2705 = fmul fast float %2696, %2696
  %2706 = fmul fast float %2700, %2700
  %2707 = fmul fast float %2704, %2704
  %2708 = add i32 %49, 532
  %2709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2708, i32 undef)  ; BufferLoad(srv,index,wot)
  %2710 = extractvalue %dx.types.ResRet.i32 %2709, 0
  %2711 = add i32 %2710, 0
  %2712 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2711, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2713 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2712, %dx.types.Handle %106, float %2262, float %2263, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2714 = extractvalue %dx.types.ResRet.f32 %2713, 0
  %2715 = extractvalue %dx.types.ResRet.f32 %2713, 1
  %2716 = extractvalue %dx.types.ResRet.f32 %2713, 2
  %2717 = fmul fast float %2705, %2714
  %2718 = fmul fast float %2706, %2715
  %2719 = fmul fast float %2707, %2716
  br label %2720

; <label>:2720                                    ; preds = %2690, %2682
  %2721 = phi float [ %2717, %2690 ], [ 0.000000e+00, %2682 ]
  %2722 = phi float [ %2718, %2690 ], [ 0.000000e+00, %2682 ]
  %2723 = phi float [ %2719, %2690 ], [ 0.000000e+00, %2682 ]
  %2724 = fcmp fast ogt float %2721, 0.000000e+00
  %2725 = fcmp fast ogt float %2722, 0.000000e+00
  %2726 = fcmp fast ogt float %2723, 0.000000e+00
  %2727 = call float @dx.op.unary.f32(i32 23, float %2721)  ; Log(value)
  %2728 = call float @dx.op.unary.f32(i32 23, float %2722)  ; Log(value)
  %2729 = call float @dx.op.unary.f32(i32 23, float %2723)  ; Log(value)
  %2730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2639, i32 undef)  ; BufferLoad(srv,index,wot)
  %2731 = extractvalue %dx.types.ResRet.i32 %2730, 0
  %2732 = lshr i32 %2731, 7
  %2733 = and i32 %2732, 32752
  %2734 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2733)  ; LegacyF16ToF32(value)
  %2735 = fmul fast float %2727, 0xBFE62E4300000000
  %2736 = fmul fast float %2735, %2734
  %2737 = fmul fast float %2728, 0xBFE62E4300000000
  %2738 = fmul fast float %2737, %2734
  %2739 = fmul fast float %2729, 0xBFE62E4300000000
  %2740 = fmul fast float %2739, %2734
  %2741 = select i1 %2724, float %2736, float 1.270000e+02
  %2742 = select i1 %2725, float %2738, float 1.270000e+02
  %2743 = select i1 %2726, float %2740, float 1.270000e+02
  %2744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2155, i32 undef)  ; BufferLoad(srv,index,wot)
  %2745 = extractvalue %dx.types.ResRet.i32 %2744, 0
  %2746 = and i32 %2745, 10240
  %2747 = icmp eq i32 %2746, 0
  br i1 %2747, label %2792, label %2748

; <label>:2748                                    ; preds = %2720
  %2749 = add i32 %49, 548
  %2750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2749, i32 undef)  ; BufferLoad(srv,index,wot)
  %2751 = extractvalue %dx.types.ResRet.i32 %2750, 0
  %2752 = add i32 %2751, 0
  %2753 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2752, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2754 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2753, %dx.types.Handle %106, float %2262, float %2263, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2755 = extractvalue %dx.types.ResRet.f32 %2754, 1
  %2756 = extractvalue %dx.types.ResRet.f32 %2754, 3
  %2757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2155, i32 undef)  ; BufferLoad(srv,index,wot)
  %2758 = extractvalue %dx.types.ResRet.i32 %2757, 0
  %2759 = and i32 %2758, 1048576
  %2760 = icmp ne i32 %2759, 0
  %2761 = and i32 %2758, 8192
  %2762 = icmp eq i32 %2761, 0
  br i1 %2762, label %2778, label %2763

; <label>:2763                                    ; preds = %2748
  %2764 = extractvalue %dx.types.ResRet.f32 %2754, 2
  %2765 = select i1 %2760, float %2764, float %2755
  %2766 = extractvalue %dx.types.ResRet.f32 %2754, 0
  %2767 = select i1 %2760, float %2766, float %2755
  %2768 = add i32 %49, 128
  %2769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2768, i32 undef)  ; BufferLoad(srv,index,wot)
  %2770 = extractvalue %dx.types.ResRet.i32 %2769, 0
  %2771 = lshr i32 %2770, 16
  %2772 = and i32 %2771, 255
  %2773 = uitofp i32 %2772 to float
  %2774 = fmul fast float %2773, 0x3F80101020000000
  %2775 = fmul fast float %2774, %2767
  %2776 = fmul fast float %2774, %2755
  %2777 = fmul fast float %2774, %2765
  br label %2778

; <label>:2778                                    ; preds = %2763, %2748
  %2779 = phi float [ %2775, %2763 ], [ 0.000000e+00, %2748 ]
  %2780 = phi float [ %2776, %2763 ], [ 0.000000e+00, %2748 ]
  %2781 = phi float [ %2777, %2763 ], [ 0.000000e+00, %2748 ]
  %2782 = and i32 %2758, 2048
  %2783 = icmp eq i32 %2782, 0
  br i1 %2783, label %2792, label %2784

; <label>:2784                                    ; preds = %2778
  %2785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2639, i32 undef)  ; BufferLoad(srv,index,wot)
  %2786 = extractvalue %dx.types.ResRet.i32 %2785, 0
  %2787 = shl i32 %2786, 4
  %2788 = and i32 %2787, 32752
  %2789 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2788)  ; LegacyF16ToF32(value)
  %2790 = fmul fast float %2789, %2756
  %2791 = call float @dx.op.binary.f32(i32 35, float %2790, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2792

; <label>:2792                                    ; preds = %2784, %2778, %2720
  %2793 = phi float [ %2779, %2784 ], [ %2779, %2778 ], [ 0.000000e+00, %2720 ]
  %2794 = phi float [ %2780, %2784 ], [ %2780, %2778 ], [ 0.000000e+00, %2720 ]
  %2795 = phi float [ %2781, %2784 ], [ %2781, %2778 ], [ 0.000000e+00, %2720 ]
  %2796 = phi float [ %2791, %2784 ], [ 0x3F70101020000000, %2778 ], [ 0x3F70101020000000, %2720 ]
  %2797 = add i32 %49, 128
  %2798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2797, i32 undef)  ; BufferLoad(srv,index,wot)
  %2799 = extractvalue %dx.types.ResRet.i32 %2798, 0
  %2800 = and i32 %2799, 255
  %2801 = uitofp i32 %2800 to float
  %2802 = lshr i32 %2799, 8
  %2803 = and i32 %2802, 255
  %2804 = uitofp i32 %2803 to float
  %2805 = call float @dx.op.dot3.f32(i32 55, float %2555, float %2556, float %2557, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2806 = fmul fast float %2804, %2805
  %2807 = fadd fast float %2806, %2801
  %2808 = fmul fast float %2807, 0x3F70101020000000
  %2809 = call float @dx.op.unary.f32(i32 7, float %2808)  ; Saturate(value)
  br i1 %2154, label %2810, label %2845

; <label>:2810                                    ; preds = %2792
  %2811 = fmul fast float %2796, 2.000000e+00
  %2812 = fcmp fast olt float %2741, 1.270000e+02
  %2813 = fcmp fast olt float %2742, 1.270000e+02
  %2814 = fcmp fast olt float %2743, 1.270000e+02
  %2815 = fmul fast float %2741, 0xBFF7154760000000
  %2816 = fmul fast float %2815, %2811
  %2817 = fmul fast float %2742, 0xBFF7154760000000
  %2818 = fmul fast float %2817, %2811
  %2819 = fmul fast float %2743, 0xBFF7154760000000
  %2820 = fmul fast float %2819, %2811
  %2821 = call float @dx.op.unary.f32(i32 21, float %2816)  ; Exp(value)
  %2822 = call float @dx.op.unary.f32(i32 21, float %2818)  ; Exp(value)
  %2823 = call float @dx.op.unary.f32(i32 21, float %2820)  ; Exp(value)
  %2824 = call float @dx.op.unary.f32(i32 7, float %2821)  ; Saturate(value)
  %2825 = call float @dx.op.unary.f32(i32 7, float %2822)  ; Saturate(value)
  %2826 = call float @dx.op.unary.f32(i32 7, float %2823)  ; Saturate(value)
  %2827 = fadd fast float %2824, -1.000000e+00
  %2828 = select i1 %2812, float %2827, float -1.000000e+00
  %2829 = fadd fast float %2825, -1.000000e+00
  %2830 = select i1 %2813, float %2829, float -1.000000e+00
  %2831 = fadd fast float %2826, -1.000000e+00
  %2832 = select i1 %2814, float %2831, float -1.000000e+00
  %2833 = fmul fast float %2828, %2335
  %2834 = fmul fast float %2830, %2335
  %2835 = fmul fast float %2832, %2335
  %2836 = fadd fast float %2833, 1.000000e+00
  %2837 = fadd fast float %2834, 1.000000e+00
  %2838 = fadd fast float %2835, 1.000000e+00
  %2839 = fmul fast float %2836, %2136
  %2840 = fmul fast float %2837, %2137
  %2841 = fmul fast float %2838, %2138
  %2842 = fmul fast float %2836, %2139
  %2843 = fmul fast float %2837, %2140
  %2844 = fmul fast float %2838, %2141
  br label %2845

; <label>:2845                                    ; preds = %2810, %2792
  %2846 = phi float [ %2839, %2810 ], [ %2136, %2792 ]
  %2847 = phi float [ %2840, %2810 ], [ %2137, %2792 ]
  %2848 = phi float [ %2841, %2810 ], [ %2138, %2792 ]
  %2849 = phi float [ %2842, %2810 ], [ %2139, %2792 ]
  %2850 = phi float [ %2843, %2810 ], [ %2140, %2792 ]
  %2851 = phi float [ %2844, %2810 ], [ %2141, %2792 ]
  %2852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2155, i32 undef)  ; BufferLoad(srv,index,wot)
  %2853 = extractvalue %dx.types.ResRet.i32 %2852, 0
  %2854 = and i32 %2853, 3
  %2855 = icmp eq i32 %2854, 3
  br i1 %2855, label %2934, label %2856

; <label>:2856                                    ; preds = %2845
  %2857 = and i32 %2853, 16
  %2858 = icmp ne i32 %2857, 0
  %2859 = select i1 %2858, float %2335, float 0.000000e+00
  %2860 = icmp eq i32 %2854, 0
  br i1 %2860, label %2861, label %2889

; <label>:2861                                    ; preds = %2856
  %2862 = and i32 %2853, 64
  %2863 = icmp ne i32 %2862, 0
  %2864 = select i1 %2863, float %2335, float 0.000000e+00
  %2865 = fsub fast float %2555, %2846
  %2866 = fsub fast float %2556, %2847
  %2867 = fsub fast float %2557, %2848
  %2868 = fmul fast float %2859, %2865
  %2869 = fmul fast float %2859, %2866
  %2870 = fmul fast float %2859, %2867
  %2871 = fadd fast float %2868, %2846
  %2872 = fadd fast float %2869, %2847
  %2873 = fadd fast float %2870, %2848
  %2874 = fsub fast float %2541, %2148
  %2875 = fmul fast float %2859, %2874
  %2876 = fadd fast float %2875, %2148
  %2877 = fsub fast float %2683, %2849
  %2878 = fsub fast float %2684, %2850
  %2879 = fsub fast float %2685, %2851
  %2880 = fmul fast float %2864, %2877
  %2881 = fmul fast float %2864, %2878
  %2882 = fmul fast float %2864, %2879
  %2883 = fadd fast float %2880, %2849
  %2884 = fadd fast float %2881, %2850
  %2885 = fadd fast float %2882, %2851
  %2886 = fsub fast float %2809, %2152
  %2887 = fmul fast float %2859, %2886
  %2888 = fadd fast float %2887, %2152
  br label %2934

; <label>:2889                                    ; preds = %2856
  %2890 = icmp eq i32 %2854, 1
  br i1 %2890, label %2891, label %2904

; <label>:2891                                    ; preds = %2889
  %2892 = fadd fast float %2555, -1.000000e+00
  %2893 = fadd fast float %2556, -1.000000e+00
  %2894 = fadd fast float %2557, -1.000000e+00
  %2895 = fmul fast float %2859, %2892
  %2896 = fmul fast float %2859, %2893
  %2897 = fmul fast float %2859, %2894
  %2898 = fadd fast float %2895, 1.000000e+00
  %2899 = fadd fast float %2896, 1.000000e+00
  %2900 = fadd fast float %2897, 1.000000e+00
  %2901 = fmul fast float %2898, %2846
  %2902 = fmul fast float %2899, %2847
  %2903 = fmul fast float %2900, %2848
  br label %2934

; <label>:2904                                    ; preds = %2889
  %2905 = icmp eq i32 %2854, 2
  br i1 %2905, label %2906, label %2934

; <label>:2906                                    ; preds = %2904
  %2907 = call float @dx.op.unary.f32(i32 24, float %2555)  ; Sqrt(value)
  %2908 = call float @dx.op.unary.f32(i32 24, float %2556)  ; Sqrt(value)
  %2909 = call float @dx.op.unary.f32(i32 24, float %2557)  ; Sqrt(value)
  %2910 = fadd fast float %2907, -5.000000e-01
  %2911 = fadd fast float %2908, -5.000000e-01
  %2912 = fadd fast float %2909, -5.000000e-01
  %2913 = fmul fast float %2910, %2859
  %2914 = fmul fast float %2911, %2859
  %2915 = fmul fast float %2912, %2859
  %2916 = fadd fast float %2913, 5.000000e-01
  %2917 = fadd fast float %2914, 5.000000e-01
  %2918 = fadd fast float %2915, 5.000000e-01
  %2919 = fmul fast float %2916, 2.000000e+00
  %2920 = fsub fast float 1.000000e+00, %2919
  %2921 = fmul fast float %2920, %2846
  %2922 = fadd fast float %2921, %2919
  %2923 = fmul fast float %2922, %2846
  %2924 = fmul fast float %2917, 2.000000e+00
  %2925 = fsub fast float 1.000000e+00, %2924
  %2926 = fmul fast float %2925, %2847
  %2927 = fadd fast float %2926, %2924
  %2928 = fmul fast float %2927, %2847
  %2929 = fmul fast float %2918, 2.000000e+00
  %2930 = fsub fast float 1.000000e+00, %2929
  %2931 = fmul fast float %2930, %2848
  %2932 = fadd fast float %2931, %2929
  %2933 = fmul fast float %2932, %2848
  br label %2934

; <label>:2934                                    ; preds = %2906, %2904, %2891, %2861, %2845
  %2935 = phi float [ %2846, %2845 ], [ %2923, %2906 ], [ %2846, %2904 ], [ %2901, %2891 ], [ %2871, %2861 ]
  %2936 = phi float [ %2847, %2845 ], [ %2928, %2906 ], [ %2847, %2904 ], [ %2902, %2891 ], [ %2872, %2861 ]
  %2937 = phi float [ %2848, %2845 ], [ %2933, %2906 ], [ %2848, %2904 ], [ %2903, %2891 ], [ %2873, %2861 ]
  %2938 = phi float [ %2849, %2845 ], [ %2849, %2906 ], [ %2849, %2904 ], [ %2849, %2891 ], [ %2883, %2861 ]
  %2939 = phi float [ %2850, %2845 ], [ %2850, %2906 ], [ %2850, %2904 ], [ %2850, %2891 ], [ %2884, %2861 ]
  %2940 = phi float [ %2851, %2845 ], [ %2851, %2906 ], [ %2851, %2904 ], [ %2851, %2891 ], [ %2885, %2861 ]
  %2941 = phi float [ %2148, %2845 ], [ %2148, %2906 ], [ %2148, %2904 ], [ %2148, %2891 ], [ %2876, %2861 ]
  %2942 = phi float [ %2152, %2845 ], [ %2152, %2906 ], [ %2152, %2904 ], [ %2152, %2891 ], [ %2888, %2861 ]
  %2943 = and i32 %2853, 12
  %2944 = icmp eq i32 %2943, 12
  br i1 %2944, label %3075, label %2945

; <label>:2945                                    ; preds = %2934
  %2946 = and i32 %2853, 2097184
  %2947 = icmp eq i32 %2946, 2097184
  %2948 = select i1 %2947, float %2335, float 0.000000e+00
  %2949 = and i32 %2853, 4194336
  %2950 = icmp eq i32 %2949, 4194336
  %2951 = select i1 %2950, float %2335, float 0.000000e+00
  %2952 = and i32 %2853, 8388640
  %2953 = icmp eq i32 %2952, 8388640
  %2954 = select i1 %2953, float %2335, float 0.000000e+00
  %2955 = and i32 %2853, 1024
  %2956 = icmp ne i32 %2955, 0
  %2957 = select i1 %2956, float %2335, float 0.000000e+00
  %2958 = and i32 %2853, 2048
  %2959 = icmp ne i32 %2958, 0
  %2960 = select i1 %2959, float %2335, float 0.000000e+00
  %2961 = and i32 %2853, 8192
  %2962 = icmp ne i32 %2961, 0
  %2963 = select i1 %2962, float %2335, float 0.000000e+00
  %2964 = icmp eq i32 %2943, 0
  br i1 %2964, label %2965, label %2999

; <label>:2965                                    ; preds = %2945
  %2966 = fsub fast float %2636, %2134
  %2967 = fsub fast float %2637, %2135
  %2968 = fmul fast float %2948, %2966
  %2969 = fmul fast float %2948, %2967
  %2970 = fadd fast float %2968, %2134
  %2971 = fadd fast float %2969, %2135
  %2972 = fsub fast float %2638, %2150
  %2973 = fmul fast float %2951, %2972
  %2974 = fadd fast float %2973, %2150
  %2975 = fsub fast float %2635, %2149
  %2976 = fmul fast float %2954, %2975
  %2977 = fadd fast float %2976, %2149
  %2978 = fsub fast float %2741, %2142
  %2979 = fsub fast float %2742, %2143
  %2980 = fsub fast float %2743, %2144
  %2981 = fmul fast float %2957, %2978
  %2982 = fmul fast float %2957, %2979
  %2983 = fmul fast float %2957, %2980
  %2984 = fadd fast float %2981, %2142
  %2985 = fadd fast float %2982, %2143
  %2986 = fadd fast float %2983, %2144
  %2987 = fsub fast float %2796, %2151
  %2988 = fmul fast float %2960, %2987
  %2989 = fadd fast float %2988, %2151
  %2990 = fsub fast float %2793, %2145
  %2991 = fsub fast float %2794, %2146
  %2992 = fsub fast float %2795, %2147
  %2993 = fmul fast float %2963, %2990
  %2994 = fmul fast float %2963, %2991
  %2995 = fmul fast float %2963, %2992
  %2996 = fadd fast float %2993, %2145
  %2997 = fadd fast float %2994, %2146
  %2998 = fadd fast float %2995, %2147
  br label %3075

; <label>:2999                                    ; preds = %2945
  %3000 = icmp eq i32 %2943, 4
  br i1 %3000, label %3001, label %3047

; <label>:3001                                    ; preds = %2999
  %3002 = fmul fast float %2948, %2636
  %3003 = fmul fast float %2948, %2637
  %3004 = fadd fast float %3002, %2134
  %3005 = fadd fast float %3003, %2135
  %3006 = call float @dx.op.binary.f32(i32 36, float %2150, float %2638)  ; FMin(a,b)
  %3007 = fsub fast float %3006, %2150
  %3008 = fmul fast float %3007, %2951
  %3009 = fadd fast float %3008, %2150
  %3010 = fadd fast float %2635, %2149
  %3011 = fmul fast float %3010, 0x3FF337FAE0000000
  %3012 = fmul fast float %2149, %2149
  %3013 = fmul fast float %2635, %2635
  %3014 = fadd fast float %3013, %3012
  %3015 = fmul fast float %3014, 0x3FE5152B00000000
  %3016 = fmul fast float %2149, 0xBFCC1F85E0000000
  %3017 = fmul fast float %3016, %2635
  %3018 = fadd fast float %3017, 0xBFE1363700000000
  %3019 = fadd fast float %3018, %3011
  %3020 = fsub fast float %3019, %3015
  %3021 = fmul fast float %3010, 0x3FBA6F0D00000000
  %3022 = fmul fast float %3014, 0x3FD0432880000000
  %3023 = fmul fast float %2149, 0xBFEF110800000000
  %3024 = fmul fast float %3023, %2635
  %3025 = fadd fast float %3024, 1.000000e+00
  %3026 = fsub fast float %3025, %3021
  %3027 = fadd fast float %3026, %3022
  %3028 = fdiv fast float %3020, %3027
  %3029 = call float @dx.op.unary.f32(i32 7, float %3028)  ; Saturate(value)
  %3030 = fsub fast float %3029, %2149
  %3031 = fmul fast float %3030, %2954
  %3032 = fadd fast float %3031, %2149
  %3033 = fmul fast float %2957, %2741
  %3034 = fmul fast float %2957, %2742
  %3035 = fmul fast float %2957, %2743
  %3036 = fadd fast float %3033, %2142
  %3037 = fadd fast float %3034, %2143
  %3038 = fadd fast float %3035, %2144
  %3039 = fmul fast float %2960, %2796
  %3040 = fadd fast float %3039, %2151
  %3041 = fmul fast float %2963, %2793
  %3042 = fmul fast float %2963, %2794
  %3043 = fmul fast float %2963, %2795
  %3044 = fadd fast float %3041, %2145
  %3045 = fadd fast float %3042, %2146
  %3046 = fadd fast float %3043, %2147
  br label %3075

; <label>:3047                                    ; preds = %2999
  %3048 = icmp eq i32 %2943, 8
  br i1 %3048, label %3049, label %3075

; <label>:3049                                    ; preds = %3047
  %3050 = fmul fast float %2948, %2636
  %3051 = fmul fast float %2948, %2637
  %3052 = fadd fast float %3050, %2134
  %3053 = fadd fast float %3051, %2135
  %3054 = call float @dx.op.binary.f32(i32 36, float %2150, float %2638)  ; FMin(a,b)
  %3055 = fsub fast float %3054, %2150
  %3056 = fmul fast float %3055, %2951
  %3057 = fadd fast float %3056, %2150
  %3058 = fsub fast float %2635, %2149
  %3059 = fmul fast float %2954, %3058
  %3060 = fadd fast float %3059, %2149
  %3061 = fmul fast float %2957, %2741
  %3062 = fmul fast float %2957, %2742
  %3063 = fmul fast float %2957, %2743
  %3064 = fadd fast float %3061, %2142
  %3065 = fadd fast float %3062, %2143
  %3066 = fadd fast float %3063, %2144
  %3067 = fmul fast float %2960, %2796
  %3068 = fadd fast float %3067, %2151
  %3069 = fmul fast float %2963, %2793
  %3070 = fmul fast float %2963, %2794
  %3071 = fmul fast float %2963, %2795
  %3072 = fadd fast float %3069, %2145
  %3073 = fadd fast float %3070, %2146
  %3074 = fadd fast float %3071, %2147
  br label %3075

; <label>:3075                                    ; preds = %3049, %3047, %3001, %2965, %2934, %2334, %2153, %2133
  %3076 = phi float [ %2134, %2934 ], [ %2134, %2334 ], [ %2134, %2133 ], [ %3052, %3049 ], [ %2134, %3047 ], [ %3004, %3001 ], [ %2970, %2965 ], [ %2134, %2153 ]
  %3077 = phi float [ %2135, %2934 ], [ %2135, %2334 ], [ %2135, %2133 ], [ %3053, %3049 ], [ %2135, %3047 ], [ %3005, %3001 ], [ %2971, %2965 ], [ %2135, %2153 ]
  %3078 = phi float [ %2935, %2934 ], [ %2136, %2334 ], [ %2136, %2133 ], [ %2935, %3049 ], [ %2935, %3047 ], [ %2935, %3001 ], [ %2935, %2965 ], [ %2136, %2153 ]
  %3079 = phi float [ %2936, %2934 ], [ %2137, %2334 ], [ %2137, %2133 ], [ %2936, %3049 ], [ %2936, %3047 ], [ %2936, %3001 ], [ %2936, %2965 ], [ %2137, %2153 ]
  %3080 = phi float [ %2937, %2934 ], [ %2138, %2334 ], [ %2138, %2133 ], [ %2937, %3049 ], [ %2937, %3047 ], [ %2937, %3001 ], [ %2937, %2965 ], [ %2138, %2153 ]
  %3081 = phi float [ %2938, %2934 ], [ %2139, %2334 ], [ %2139, %2133 ], [ %2938, %3049 ], [ %2938, %3047 ], [ %2938, %3001 ], [ %2938, %2965 ], [ %2139, %2153 ]
  %3082 = phi float [ %2939, %2934 ], [ %2140, %2334 ], [ %2140, %2133 ], [ %2939, %3049 ], [ %2939, %3047 ], [ %2939, %3001 ], [ %2939, %2965 ], [ %2140, %2153 ]
  %3083 = phi float [ %2940, %2934 ], [ %2141, %2334 ], [ %2141, %2133 ], [ %2940, %3049 ], [ %2940, %3047 ], [ %2940, %3001 ], [ %2940, %2965 ], [ %2141, %2153 ]
  %3084 = phi float [ %2142, %2934 ], [ %2142, %2334 ], [ %2142, %2133 ], [ %3064, %3049 ], [ %2142, %3047 ], [ %3036, %3001 ], [ %2984, %2965 ], [ %2142, %2153 ]
  %3085 = phi float [ %2143, %2934 ], [ %2143, %2334 ], [ %2143, %2133 ], [ %3065, %3049 ], [ %2143, %3047 ], [ %3037, %3001 ], [ %2985, %2965 ], [ %2143, %2153 ]
  %3086 = phi float [ %2144, %2934 ], [ %2144, %2334 ], [ %2144, %2133 ], [ %3066, %3049 ], [ %2144, %3047 ], [ %3038, %3001 ], [ %2986, %2965 ], [ %2144, %2153 ]
  %3087 = phi float [ %2145, %2934 ], [ %2145, %2334 ], [ %2145, %2133 ], [ %3072, %3049 ], [ %2145, %3047 ], [ %3044, %3001 ], [ %2996, %2965 ], [ %2145, %2153 ]
  %3088 = phi float [ %2146, %2934 ], [ %2146, %2334 ], [ %2146, %2133 ], [ %3073, %3049 ], [ %2146, %3047 ], [ %3045, %3001 ], [ %2997, %2965 ], [ %2146, %2153 ]
  %3089 = phi float [ %2147, %2934 ], [ %2147, %2334 ], [ %2147, %2133 ], [ %3074, %3049 ], [ %2147, %3047 ], [ %3046, %3001 ], [ %2998, %2965 ], [ %2147, %2153 ]
  %3090 = phi float [ %2941, %2934 ], [ %2148, %2334 ], [ %2148, %2133 ], [ %2941, %3049 ], [ %2941, %3047 ], [ %2941, %3001 ], [ %2941, %2965 ], [ %2148, %2153 ]
  %3091 = phi float [ %2149, %2934 ], [ %2149, %2334 ], [ %2149, %2133 ], [ %3060, %3049 ], [ %2149, %3047 ], [ %3032, %3001 ], [ %2977, %2965 ], [ %2149, %2153 ]
  %3092 = phi float [ %2150, %2934 ], [ %2150, %2334 ], [ %2150, %2133 ], [ %3057, %3049 ], [ %2150, %3047 ], [ %3009, %3001 ], [ %2974, %2965 ], [ %2150, %2153 ]
  %3093 = phi float [ %2151, %2934 ], [ %2151, %2334 ], [ %2151, %2133 ], [ %3068, %3049 ], [ %2151, %3047 ], [ %3040, %3001 ], [ %2989, %2965 ], [ %2151, %2153 ]
  %3094 = phi float [ %2942, %2934 ], [ %2152, %2334 ], [ %2152, %2133 ], [ %2942, %3049 ], [ %2942, %3047 ], [ %2942, %3001 ], [ %2942, %2965 ], [ %2152, %2153 ]
  br i1 %482, label %4017, label %3095

; <label>:3095                                    ; preds = %3075
  %3096 = icmp ult i32 %536, 4
  %3097 = add i32 %49, 72
  %3098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3097, i32 undef)  ; BufferLoad(srv,index,wot)
  %3099 = extractvalue %dx.types.ResRet.i32 %3098, 0
  %3100 = add i32 %49, 76
  %3101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3100, i32 undef)  ; BufferLoad(srv,index,wot)
  %3102 = extractvalue %dx.types.ResRet.i32 %3101, 0
  %3103 = or i32 %3102, %3099
  %3104 = icmp eq i32 %3103, 0
  br i1 %3104, label %4017, label %3105

; <label>:3105                                    ; preds = %3095
  %3106 = and i32 %3099, 262144
  %3107 = icmp ne i32 %3106, 0
  %3108 = select i1 %3107, float %55, float 1.000000e+00
  %3109 = select i1 %3107, float %56, float 0.000000e+00
  %3110 = select i1 %3107, float %57, float 0.000000e+00
  %3111 = select i1 %3107, float %58, float 1.000000e+00
  %3112 = select i1 %3107, float %59, float %87
  %3113 = select i1 %3107, float %60, float %88
  %3114 = add i32 %49, 332
  %3115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3114, i32 undef)  ; BufferLoad(srv,index,wot)
  %3116 = extractvalue %dx.types.ResRet.i32 %3115, 0
  %3117 = lshr i32 %3116, 16
  %3118 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3117)  ; LegacyF16ToF32(value)
  %3119 = fmul fast float %3118, 0x3F50624DE0000000
  %3120 = add i32 %49, 136
  %3121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3120, i32 undef)  ; BufferLoad(srv,index,wot)
  %3122 = extractvalue %dx.types.ResRet.i32 %3121, 0
  %3123 = lshr i32 %3122, 16
  %3124 = and i32 %3123, 255
  %3125 = lshr i32 %3122, 24
  %3126 = add i32 %49, 340
  %3127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3126, i32 undef)  ; BufferLoad(srv,index,wot)
  %3128 = extractvalue %dx.types.ResRet.i32 %3127, 0
  %3129 = and i32 %3128, 65535
  %3130 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3129)  ; LegacyF16ToF32(value)
  %3131 = lshr i32 %3128, 16
  %3132 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3131)  ; LegacyF16ToF32(value)
  %3133 = add i32 %49, 80
  %3134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3133, i32 undef)  ; BufferLoad(srv,index,wot)
  %3135 = extractvalue %dx.types.ResRet.i32 %3134, 0
  %3136 = lshr i32 %3135, 22
  %3137 = shl nuw nsw i32 %3136, 5
  %3138 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3137)  ; LegacyF16ToF32(value)
  %3139 = shl i32 %3135, 4
  %3140 = and i32 %3139, 32752
  %3141 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3140)  ; LegacyF16ToF32(value)
  %3142 = lshr i32 %3135, 7
  %3143 = and i32 %3142, 32752
  %3144 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3143)  ; LegacyF16ToF32(value)
  %3145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3146 = extractvalue %dx.types.CBufRet.f32 %3145, 3
  %3147 = fmul fast float %3146, 1.000000e+03
  %3148 = fmul fast float %472, %3147
  %3149 = call float @dx.op.unary.f32(i32 22, float %3148)  ; Frc(value)
  %3150 = fadd fast float %3149, %462
  %3151 = fmul fast float %473, %3147
  %3152 = call float @dx.op.unary.f32(i32 22, float %3151)  ; Frc(value)
  %3153 = fadd fast float %3152, %464
  %3154 = fmul fast float %3119, %3147
  %3155 = call float @dx.op.unary.f32(i32 22, float %3154)  ; Frc(value)
  %3156 = fmul fast float %3155, 0x401921FB60000000
  %3157 = fadd fast float %3156, %3138
  %3158 = call float @dx.op.unary.f32(i32 13, float %3157)  ; Sin(value)
  %3159 = call float @dx.op.unary.f32(i32 12, float %3157)  ; Cos(value)
  %3160 = fsub fast float -0.000000e+00, %3158
  %3161 = fadd fast float %3112, -5.000000e-01
  %3162 = fadd fast float %3113, -5.000000e-01
  %3163 = fmul fast float %3130, %3161
  %3164 = fmul fast float %3132, %3162
  %3165 = fadd fast float %3163, 5.000000e-01
  %3166 = fadd fast float %3164, 5.000000e-01
  %3167 = fmul fast float %3141, %3165
  %3168 = fmul fast float %3144, %3166
  %3169 = fmul fast float %3159, %3167
  %3170 = call float @dx.op.tertiary.f32(i32 46, float %3160, float %3168, float %3169)  ; FMad(a,b,c)
  %3171 = fmul fast float %3158, %3167
  %3172 = call float @dx.op.tertiary.f32(i32 46, float %3159, float %3168, float %3171)  ; FMad(a,b,c)
  %3173 = fadd fast float %3150, %3170
  %3174 = fadd fast float %3153, %3172
  %3175 = icmp ugt i32 %3124, 1
  %3176 = icmp ugt i32 %3122, 33554431
  %3177 = or i1 %3176, %3175
  br i1 %3177, label %3178, label %3203

; <label>:3178                                    ; preds = %3105
  %3179 = add i32 %49, 276
  %3180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3179, i32 undef)  ; BufferLoad(srv,index,wot)
  %3181 = extractvalue %dx.types.ResRet.i32 %3180, 0
  %3182 = lshr i32 %3181, 16
  %3183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3182)  ; LegacyF16ToF32(value)
  %3184 = fmul fast float %3146, %3183
  %3185 = call float @dx.op.unary.f32(i32 22, float %3184)  ; Frc(value)
  %3186 = mul nuw nsw i32 %3124, %3125
  %3187 = uitofp i32 %3186 to float
  %3188 = fmul fast float %3185, %3187
  %3189 = call float @dx.op.unary.f32(i32 27, float %3188)  ; Round_ni(value)
  %3190 = fptoui float %3189 to i32
  %3191 = urem i32 %3190, %3124
  %3192 = udiv i32 %3190, %3125
  %3193 = call float @dx.op.unary.f32(i32 22, float %3173)  ; Frc(value)
  %3194 = call float @dx.op.unary.f32(i32 22, float %3174)  ; Frc(value)
  %3195 = uitofp i32 %3191 to float
  %3196 = uitofp i32 %3192 to float
  %3197 = fadd fast float %3193, %3195
  %3198 = fadd fast float %3194, %3196
  %3199 = uitofp i32 %3124 to float
  %3200 = uitofp i32 %3125 to float
  %3201 = fdiv fast float %3197, %3199
  %3202 = fdiv fast float %3198, %3200
  br label %3203

; <label>:3203                                    ; preds = %3178, %3105
  %3204 = phi float [ %3201, %3178 ], [ %3173, %3105 ]
  %3205 = phi float [ %3202, %3178 ], [ %3174, %3105 ]
  %3206 = and i32 %3099, 256
  %3207 = icmp eq i32 %3206, 0
  br i1 %3207, label %3254, label %3208

; <label>:3208                                    ; preds = %3203
  %3209 = add i32 %49, 500
  %3210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3209, i32 undef)  ; BufferLoad(srv,index,wot)
  %3211 = extractvalue %dx.types.ResRet.i32 %3210, 0
  %3212 = add i32 %3211, 0
  %3213 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3212, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3214 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3213, %dx.types.Handle %106, float %3204, float %3205, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3215 = extractvalue %dx.types.ResRet.f32 %3214, 0
  %3216 = add i32 %49, 148
  %3217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3216, i32 undef)  ; BufferLoad(srv,index,wot)
  %3218 = extractvalue %dx.types.ResRet.i32 %3217, 0
  %3219 = shl i32 %3218, 4
  %3220 = and i32 %3219, 32752
  %3221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3220)  ; LegacyF16ToF32(value)
  %3222 = lshr i32 %3218, 7
  %3223 = and i32 %3222, 32752
  %3224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3223)  ; LegacyF16ToF32(value)
  %3225 = fsub fast float 1.000000e+00, %531
  %3226 = call float @dx.op.binary.f32(i32 35, float %3225, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3227 = bitcast float %531 to i32
  %3228 = sitofp i32 %3227 to float
  %3229 = fadd fast float %3228, 0xC1CFBF8940000000
  %3230 = fmul fast float %3224, %3229
  %3231 = fadd fast float %3230, 0x41CFBF8940000000
  %3232 = fptosi float %3231 to i32
  %3233 = bitcast i32 %3232 to float
  %3234 = bitcast float %3226 to i32
  %3235 = sitofp i32 %3234 to float
  %3236 = fadd fast float %3235, 0xC1CFBF8940000000
  %3237 = fmul fast float %3236, %3224
  %3238 = fadd fast float %3237, 0x41CFBF8940000000
  %3239 = fptosi float %3238 to i32
  %3240 = bitcast i32 %3239 to float
  %3241 = fmul fast float %3233, %3221
  %3242 = fmul fast float %3240, %3221
  %3243 = fsub fast float %3226, %3241
  %3244 = fadd fast float %3242, %3226
  %3245 = call float @dx.op.unary.f32(i32 7, float %3243)  ; Saturate(value)
  %3246 = call float @dx.op.unary.f32(i32 7, float %3244)  ; Saturate(value)
  %3247 = fsub fast float %3215, %3245
  %3248 = fsub fast float %3246, %3245
  %3249 = bitcast float %3248 to i32
  %3250 = sub nsw i32 2129859010, %3249
  %3251 = bitcast i32 %3250 to float
  %3252 = fmul fast float %3251, %3247
  %3253 = call float @dx.op.unary.f32(i32 7, float %3252)  ; Saturate(value)
  br label %3254

; <label>:3254                                    ; preds = %3208, %3203
  %3255 = phi float [ %3253, %3208 ], [ %531, %3203 ]
  %3256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3097, i32 undef)  ; BufferLoad(srv,index,wot)
  %3257 = extractvalue %dx.types.ResRet.i32 %3256, 0
  %3258 = and i32 %3257, 128
  %3259 = icmp eq i32 %3258, 0
  br i1 %3259, label %3276, label %3260

; <label>:3260                                    ; preds = %3254
  %3261 = add i32 %49, 484
  %3262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3261, i32 undef)  ; BufferLoad(srv,index,wot)
  %3263 = extractvalue %dx.types.ResRet.i32 %3262, 0
  %3264 = add i32 %3263, 0
  %3265 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3264, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3266 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3265, %dx.types.Handle %106, float %3204, float %3205, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3267 = extractvalue %dx.types.ResRet.f32 %3266, 0
  %3268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3097, i32 undef)  ; BufferLoad(srv,index,wot)
  %3269 = extractvalue %dx.types.ResRet.i32 %3268, 0
  %3270 = and i32 %3269, 524288
  %3271 = icmp ne i32 %3270, 0
  %3272 = fcmp fast ogt float %3267, 0x3FE0101020000000
  %3273 = select i1 %3272, float 1.000000e+00, float 0.000000e+00
  %3274 = select i1 %3271, float %3273, float %3267
  %3275 = fmul fast float %3274, %3255
  br label %3276

; <label>:3276                                    ; preds = %3260, %3254
  %3277 = phi float [ %3275, %3260 ], [ %3255, %3254 ]
  %3278 = fcmp fast ult float %3277, 0x3F70101020000000
  br i1 %3278, label %4017, label %3279

; <label>:3279                                    ; preds = %3276
  %3280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3097, i32 undef)  ; BufferLoad(srv,index,wot)
  %3281 = extractvalue %dx.types.ResRet.i32 %3280, 0
  %3282 = and i32 %3281, 16
  %3283 = icmp eq i32 %3282, 0
  br i1 %3283, label %3482, label %3284

; <label>:3284                                    ; preds = %3279
  %3285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3120, i32 undef)  ; BufferLoad(srv,index,wot)
  %3286 = extractvalue %dx.types.ResRet.i32 %3285, 0
  %3287 = add i32 %49, 436
  %3288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3287, i32 undef)  ; BufferLoad(srv,index,wot)
  %3289 = extractvalue %dx.types.ResRet.i32 %3288, 0
  %3290 = add i32 %3289, 0
  %3291 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3290, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3292 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3291, %dx.types.Handle %105, float %3204, float %3205, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3293 = extractvalue %dx.types.ResRet.f32 %3292, 0
  %3294 = extractvalue %dx.types.ResRet.f32 %3292, 1
  %3295 = extractvalue %dx.types.ResRet.f32 %3292, 2
  %3296 = extractvalue %dx.types.ResRet.f32 %3292, 3
  %3297 = and i32 %3286, 255
  %3298 = uitofp i32 %3297 to float
  %3299 = lshr i32 %3286, 8
  %3300 = and i32 %3299, 255
  %3301 = uitofp i32 %3300 to float
  %3302 = fmul fast float %3296, %3298
  %3303 = fadd fast float %3302, %3301
  %3304 = fmul fast float %3303, 0x3F70101000000000
  %3305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3097, i32 undef)  ; BufferLoad(srv,index,wot)
  %3306 = extractvalue %dx.types.ResRet.i32 %3305, 0
  %3307 = and i32 %3306, 512
  %3308 = icmp eq i32 %3307, 0
  br i1 %3308, label %3317, label %3309

; <label>:3309                                    ; preds = %3284
  %3310 = add i32 %49, 520
  %3311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3310, i32 undef)  ; BufferLoad(srv,index,wot)
  %3312 = extractvalue %dx.types.ResRet.i32 %3311, 0
  %3313 = add i32 %3312, 0
  %3314 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3313, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3315 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3314, %dx.types.Handle %106, float %3204, float %3205, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3316 = extractvalue %dx.types.ResRet.f32 %3315, 0
  br label %3317

; <label>:3317                                    ; preds = %3309, %3284
  %3318 = phi float [ %3316, %3309 ], [ 1.000000e+00, %3284 ]
  %3319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3097, i32 undef)  ; BufferLoad(srv,index,wot)
  %3320 = extractvalue %dx.types.ResRet.i32 %3319, 0
  %3321 = and i32 %3320, 33554432
  %3322 = icmp eq i32 %3321, 0
  br i1 %3322, label %3429, label %3323

; <label>:3323                                    ; preds = %3317
  %3324 = add i32 %49, 272
  %3325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3324, i32 undef)  ; BufferLoad(srv,index,wot)
  %3326 = extractvalue %dx.types.ResRet.i32 %3325, 0
  %3327 = and i32 %3326, 65535
  %3328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3327)  ; LegacyF16ToF32(value)
  %3329 = lshr i32 %3326, 16
  %3330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3329)  ; LegacyF16ToF32(value)
  %3331 = add i32 %49, 276
  %3332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3331, i32 undef)  ; BufferLoad(srv,index,wot)
  %3333 = extractvalue %dx.types.ResRet.i32 %3332, 0
  %3334 = and i32 %3333, 65535
  %3335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3334)  ; LegacyF16ToF32(value)
  %3336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %3337 = extractvalue %dx.types.ResRet.i32 %3336, 0
  %3338 = lshr i32 %3337, 24
  %3339 = uitofp i32 %3338 to float
  %3340 = fmul fast float %3339, 0x3F70101020000000
  %3341 = and i32 %3337, 255
  %3342 = uitofp i32 %3341 to float
  %3343 = fmul fast float %3342, 0x3F70101020000000
  %3344 = lshr i32 %3337, 8
  %3345 = and i32 %3344, 255
  %3346 = uitofp i32 %3345 to float
  %3347 = fmul fast float %3346, 0x3F70101020000000
  %3348 = lshr i32 %3337, 16
  %3349 = and i32 %3348, 255
  %3350 = uitofp i32 %3349 to float
  %3351 = fmul fast float %3350, 0x3F70101020000000
  %3352 = add i32 %49, 268
  %3353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3352, i32 undef)  ; BufferLoad(srv,index,wot)
  %3354 = extractvalue %dx.types.ResRet.i32 %3353, 0
  %3355 = lshr i32 %3354, 24
  %3356 = uitofp i32 %3355 to float
  %3357 = fmul fast float %3356, 0x3F70101020000000
  %3358 = and i32 %3354, 255
  %3359 = uitofp i32 %3358 to float
  %3360 = fmul fast float %3359, 0x3F70101020000000
  %3361 = lshr i32 %3354, 8
  %3362 = and i32 %3361, 255
  %3363 = uitofp i32 %3362 to float
  %3364 = fmul fast float %3363, 0x3F70101020000000
  %3365 = lshr i32 %3354, 16
  %3366 = and i32 %3365, 255
  %3367 = uitofp i32 %3366 to float
  %3368 = fmul fast float %3367, 0x3F70101020000000
  %3369 = bitcast float %3293 to i32
  %3370 = ashr i32 %3369, 1
  %3371 = sub nsw i32 1597463174, %3370
  %3372 = bitcast i32 %3371 to float
  %3373 = fmul fast float %3293, 5.000000e-01
  %3374 = fmul fast float %3372, %3372
  %3375 = fmul fast float %3374, %3373
  %3376 = fsub fast float 1.500000e+00, %3375
  %3377 = fmul fast float %3372, %3293
  %3378 = fmul fast float %3377, %3376
  %3379 = bitcast float %3294 to i32
  %3380 = ashr i32 %3379, 1
  %3381 = sub nsw i32 1597463174, %3380
  %3382 = bitcast i32 %3381 to float
  %3383 = fmul fast float %3294, 5.000000e-01
  %3384 = fmul fast float %3382, %3382
  %3385 = fmul fast float %3384, %3383
  %3386 = fsub fast float 1.500000e+00, %3385
  %3387 = fmul fast float %3382, %3294
  %3388 = fmul fast float %3387, %3386
  %3389 = bitcast float %3295 to i32
  %3390 = ashr i32 %3389, 1
  %3391 = sub nsw i32 1597463174, %3390
  %3392 = bitcast i32 %3391 to float
  %3393 = fmul fast float %3295, 5.000000e-01
  %3394 = fmul fast float %3392, %3392
  %3395 = fmul fast float %3394, %3393
  %3396 = fsub fast float 1.500000e+00, %3395
  %3397 = fmul fast float %3392, %3295
  %3398 = fmul fast float %3397, %3396
  %3399 = fsub fast float %3378, %3360
  %3400 = fsub fast float %3388, %3364
  %3401 = fsub fast float %3398, %3368
  %3402 = fmul fast float %3399, %3328
  %3403 = fmul fast float %3400, %3330
  %3404 = fmul fast float %3401, %3335
  %3405 = fadd fast float %3402, %3343
  %3406 = fadd fast float %3403, %3347
  %3407 = fadd fast float %3404, %3351
  %3408 = call float @dx.op.unary.f32(i32 7, float %3405)  ; Saturate(value)
  %3409 = call float @dx.op.unary.f32(i32 7, float %3406)  ; Saturate(value)
  %3410 = call float @dx.op.unary.f32(i32 7, float %3407)  ; Saturate(value)
  %3411 = fmul fast float %3408, %3408
  %3412 = fmul fast float %3409, %3409
  %3413 = fmul fast float %3410, %3410
  %3414 = fsub fast float %3411, %3293
  %3415 = fsub fast float %3412, %3294
  %3416 = fsub fast float %3413, %3295
  %3417 = fmul fast float %3414, %3318
  %3418 = fmul fast float %3415, %3318
  %3419 = fmul fast float %3416, %3318
  %3420 = fadd fast float %3417, %3293
  %3421 = fadd fast float %3418, %3294
  %3422 = fadd fast float %3419, %3295
  %3423 = fadd fast float %3340, %3304
  %3424 = fsub fast float %3423, %3357
  %3425 = call float @dx.op.unary.f32(i32 7, float %3424)  ; Saturate(value)
  %3426 = fsub fast float %3425, %3304
  %3427 = fmul fast float %3426, %3318
  %3428 = fadd fast float %3427, %3304
  br label %3482

; <label>:3429                                    ; preds = %3317
  %3430 = and i32 %3320, 134217728
  %3431 = icmp eq i32 %3430, 0
  br i1 %3431, label %3466, label %3432

; <label>:3432                                    ; preds = %3429
  %3433 = call float @dx.op.unary.f32(i32 24, float %449)  ; Sqrt(value)
  %3434 = call float @dx.op.unary.f32(i32 24, float %453)  ; Sqrt(value)
  %3435 = call float @dx.op.unary.f32(i32 24, float %457)  ; Sqrt(value)
  %3436 = fadd fast float %3433, -5.000000e-01
  %3437 = fadd fast float %3434, -5.000000e-01
  %3438 = fadd fast float %3435, -5.000000e-01
  %3439 = fmul fast float %3436, %3318
  %3440 = fmul fast float %3437, %3318
  %3441 = fmul fast float %3438, %3318
  %3442 = fadd fast float %3439, 5.000000e-01
  %3443 = fadd fast float %3440, 5.000000e-01
  %3444 = fadd fast float %3441, 5.000000e-01
  %3445 = call float @dx.op.unary.f32(i32 24, float %3293)  ; Sqrt(value)
  %3446 = call float @dx.op.unary.f32(i32 24, float %3294)  ; Sqrt(value)
  %3447 = call float @dx.op.unary.f32(i32 24, float %3295)  ; Sqrt(value)
  %3448 = fmul fast float %3442, 2.000000e+00
  %3449 = fsub fast float 1.000000e+00, %3448
  %3450 = fmul fast float %3449, %3445
  %3451 = fadd fast float %3450, %3448
  %3452 = fmul fast float %3451, %3445
  %3453 = fmul fast float %3443, 2.000000e+00
  %3454 = fsub fast float 1.000000e+00, %3453
  %3455 = fmul fast float %3454, %3446
  %3456 = fadd fast float %3455, %3453
  %3457 = fmul fast float %3456, %3446
  %3458 = fmul fast float %3444, 2.000000e+00
  %3459 = fsub fast float 1.000000e+00, %3458
  %3460 = fmul fast float %3459, %3447
  %3461 = fadd fast float %3460, %3458
  %3462 = fmul fast float %3461, %3447
  %3463 = fmul fast float %3452, %3452
  %3464 = fmul fast float %3457, %3457
  %3465 = fmul fast float %3462, %3462
  br label %3482

; <label>:3466                                    ; preds = %3429
  %3467 = fmul fast float %449, %449
  %3468 = fmul fast float %453, %453
  %3469 = fmul fast float %457, %457
  %3470 = fadd fast float %3467, -1.000000e+00
  %3471 = fadd fast float %3468, -1.000000e+00
  %3472 = fadd fast float %3469, -1.000000e+00
  %3473 = fmul fast float %3318, %3470
  %3474 = fmul fast float %3318, %3471
  %3475 = fmul fast float %3318, %3472
  %3476 = fadd fast float %3473, 1.000000e+00
  %3477 = fadd fast float %3474, 1.000000e+00
  %3478 = fadd fast float %3475, 1.000000e+00
  %3479 = fmul fast float %3476, %3293
  %3480 = fmul fast float %3477, %3294
  %3481 = fmul fast float %3478, %3295
  br label %3482

; <label>:3482                                    ; preds = %3466, %3432, %3323, %3279
  %3483 = phi float [ %3428, %3323 ], [ %3304, %3432 ], [ %3304, %3466 ], [ 0x3FA23C0BE0000000, %3279 ]
  %3484 = phi float [ %3420, %3323 ], [ %3463, %3432 ], [ %3479, %3466 ], [ 1.000000e+00, %3279 ]
  %3485 = phi float [ %3421, %3323 ], [ %3464, %3432 ], [ %3480, %3466 ], [ 1.000000e+00, %3279 ]
  %3486 = phi float [ %3422, %3323 ], [ %3465, %3432 ], [ %3481, %3466 ], [ 1.000000e+00, %3279 ]
  %3487 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3488 = extractvalue %dx.types.CBufRet.i32 %3487, 1
  %3489 = and i32 %3488, 1
  %3490 = icmp ne i32 %3489, 0
  %3491 = add i32 %49, 356
  %3492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3491, i32 undef)  ; BufferLoad(srv,index,wot)
  %3493 = extractvalue %dx.types.ResRet.i32 %3492, 0
  %3494 = and i32 %3493, 32
  %3495 = icmp ne i32 %3494, 0
  %3496 = and i1 %3490, %3495
  %3497 = select i1 %3496, float 1.000000e+00, float %3484
  %3498 = select i1 %3496, float 0x3FD3333340000000, float %3485
  %3499 = select i1 %3496, float 0x3FD3333340000000, float %3486
  %3500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3097, i32 undef)  ; BufferLoad(srv,index,wot)
  %3501 = extractvalue %dx.types.ResRet.i32 %3500, 0
  %3502 = and i32 %3501, 32
  %3503 = icmp eq i32 %3502, 0
  br i1 %3503, label %3576, label %3504

; <label>:3504                                    ; preds = %3482
  %3505 = add i32 %49, 140
  %3506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3505, i32 undef)  ; BufferLoad(srv,index,wot)
  %3507 = extractvalue %dx.types.ResRet.i32 %3506, 0
  %3508 = add i32 %49, 452
  %3509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3508, i32 undef)  ; BufferLoad(srv,index,wot)
  %3510 = extractvalue %dx.types.ResRet.i32 %3509, 0
  %3511 = add i32 %3510, 0
  %3512 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3511, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3513 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3512, %dx.types.Handle %105, float %3204, float %3205, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3514 = extractvalue %dx.types.ResRet.f32 %3513, 0
  %3515 = extractvalue %dx.types.ResRet.f32 %3513, 1
  %3516 = extractvalue %dx.types.ResRet.f32 %3513, 2
  %3517 = extractvalue %dx.types.ResRet.f32 %3513, 3
  %3518 = and i32 %3507, 255
  %3519 = uitofp i32 %3518 to float
  %3520 = lshr i32 %3507, 8
  %3521 = and i32 %3520, 255
  %3522 = uitofp i32 %3521 to float
  %3523 = lshr i32 %3507, 16
  %3524 = and i32 %3523, 255
  %3525 = uitofp i32 %3524 to float
  %3526 = fmul fast float %3525, 0x3F70101000000000
  %3527 = fmul fast float %3514, %3519
  %3528 = fadd fast float %3527, %3522
  %3529 = fmul fast float %3528, 0x3F70101000000000
  %3530 = fadd fast float %3515, -5.000000e-01
  %3531 = fadd fast float %3517, -5.000000e-01
  %3532 = fmul fast float %3530, %3526
  %3533 = fmul fast float %3531, %3526
  %3534 = fadd fast float %3532, 5.000000e-01
  %3535 = fadd fast float %3533, 5.000000e-01
  %3536 = fmul fast float %3534, 2.000000e+00
  %3537 = fadd fast float %3536, -1.000000e+00
  %3538 = fmul fast float %3535, 2.000000e+00
  %3539 = fadd fast float %3538, -1.000000e+00
  %3540 = fadd fast float %3537, %3539
  %3541 = fmul fast float %3540, 5.000000e-01
  %3542 = fsub fast float %3537, %3539
  %3543 = fmul fast float %3542, 5.000000e-01
  %3544 = call float @dx.op.unary.f32(i32 6, float %3541)  ; FAbs(value)
  %3545 = fsub fast float 1.000000e+00, %3544
  %3546 = call float @dx.op.unary.f32(i32 6, float %3543)  ; FAbs(value)
  %3547 = fsub fast float %3545, %3546
  %3548 = call float @dx.op.dot3.f32(i32 55, float %3541, float %3543, float %3547, float %3541, float %3543, float %3547)  ; Dot3(ax,ay,az,bx,by,bz)
  %3549 = call float @dx.op.unary.f32(i32 25, float %3548)  ; Rsqrt(value)
  %3550 = fmul fast float %3541, %3549
  %3551 = fmul fast float %3543, %3549
  %3552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3097, i32 undef)  ; BufferLoad(srv,index,wot)
  %3553 = extractvalue %dx.types.ResRet.i32 %3552, 0
  %3554 = and i32 %3553, 67108864
  %3555 = icmp eq i32 %3554, 0
  br i1 %3555, label %3572, label %3556

; <label>:3556                                    ; preds = %3504
  %3557 = add i32 %49, 328
  %3558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3557, i32 undef)  ; BufferLoad(srv,index,wot)
  %3559 = extractvalue %dx.types.ResRet.i32 %3558, 0
  %3560 = and i32 %3559, 65535
  %3561 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3560)  ; LegacyF16ToF32(value)
  %3562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3114, i32 undef)  ; BufferLoad(srv,index,wot)
  %3563 = extractvalue %dx.types.ResRet.i32 %3562, 0
  %3564 = and i32 %3563, 65535
  %3565 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3564)  ; LegacyF16ToF32(value)
  %3566 = lshr i32 %3559, 16
  %3567 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3566)  ; LegacyF16ToF32(value)
  %3568 = fsub fast float %3529, %3567
  %3569 = fmul fast float %3568, %3561
  %3570 = fadd fast float %3569, %3565
  %3571 = call float @dx.op.unary.f32(i32 7, float %3570)  ; Saturate(value)
  br label %3572

; <label>:3572                                    ; preds = %3556, %3504
  %3573 = phi float [ %3571, %3556 ], [ %3529, %3504 ]
  %3574 = call float @dx.op.dot2.f32(i32 54, float %3550, float %3551, float %3108, float %3109)  ; Dot2(ax,ay,bx,by)
  %3575 = call float @dx.op.dot2.f32(i32 54, float %3550, float %3551, float %3110, float %3111)  ; Dot2(ax,ay,bx,by)
  br label %3576

; <label>:3576                                    ; preds = %3572, %3482
  %3577 = phi float [ %3573, %3572 ], [ 0x3FD6666660000000, %3482 ]
  %3578 = phi float [ %3574, %3572 ], [ 0.000000e+00, %3482 ]
  %3579 = phi float [ %3575, %3572 ], [ 0.000000e+00, %3482 ]
  %3580 = phi float [ %3516, %3572 ], [ 1.000000e+00, %3482 ]
  %3581 = add i32 %49, 208
  %3582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3581, i32 undef)  ; BufferLoad(srv,index,wot)
  %3583 = extractvalue %dx.types.ResRet.i32 %3582, 0
  %3584 = lshr i32 %3583, 22
  %3585 = shl nuw nsw i32 %3584, 5
  %3586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3585)  ; LegacyF16ToF32(value)
  %3587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3097, i32 undef)  ; BufferLoad(srv,index,wot)
  %3588 = extractvalue %dx.types.ResRet.i32 %3587, 0
  %3589 = and i32 %3588, 64
  %3590 = icmp eq i32 %3589, 0
  br i1 %3590, label %3624, label %3591

; <label>:3591                                    ; preds = %3576
  %3592 = add i32 %49, 468
  %3593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3592, i32 undef)  ; BufferLoad(srv,index,wot)
  %3594 = extractvalue %dx.types.ResRet.i32 %3593, 0
  %3595 = add i32 %3594, 0
  %3596 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3595, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3097, i32 undef)  ; BufferLoad(srv,index,wot)
  %3598 = extractvalue %dx.types.ResRet.i32 %3597, 0
  %3599 = and i32 %3598, 131072
  %3600 = icmp eq i32 %3599, 0
  %3601 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3596, %dx.types.Handle %105, float %3204, float %3205, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3602 = extractvalue %dx.types.ResRet.f32 %3601, 0
  %3603 = extractvalue %dx.types.ResRet.f32 %3601, 1
  %3604 = extractvalue %dx.types.ResRet.f32 %3601, 2
  %3605 = fmul fast float %3602, %437
  %3606 = fmul fast float %3603, %440
  %3607 = fmul fast float %3604, %443
  br i1 %3600, label %3614, label %3608

; <label>:3608                                    ; preds = %3591
  %3609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3610 = extractvalue %dx.types.CBufRet.f32 %3609, 0
  %3611 = fmul fast float %3610, %3605
  %3612 = fmul fast float %3610, %3606
  %3613 = fmul fast float %3610, %3607
  br label %3614

; <label>:3614                                    ; preds = %3608, %3591
  %3615 = phi float [ %3611, %3608 ], [ %3605, %3591 ]
  %3616 = phi float [ %3612, %3608 ], [ %3606, %3591 ]
  %3617 = phi float [ %3613, %3608 ], [ %3607, %3591 ]
  %3618 = fmul fast float %3615, %3586
  %3619 = select i1 %294, float %3618, float %3615
  %3620 = call float @dx.op.dot3.f32(i32 55, float %3619, float %3616, float %3617, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3621 = select i1 %294, float 0.000000e+00, float %3615
  %3622 = select i1 %294, float %3620, float %3616
  %3623 = select i1 %294, float 0.000000e+00, float %3617
  br label %3624

; <label>:3624                                    ; preds = %3614, %3576
  %3625 = phi float [ %3621, %3614 ], [ 0.000000e+00, %3576 ]
  %3626 = phi float [ %3622, %3614 ], [ 0.000000e+00, %3576 ]
  %3627 = phi float [ %3623, %3614 ], [ 0.000000e+00, %3576 ]
  %3628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3097, i32 undef)  ; BufferLoad(srv,index,wot)
  %3629 = extractvalue %dx.types.ResRet.i32 %3628, 0
  %3630 = and i32 %3629, 1024
  %3631 = icmp eq i32 %3630, 0
  br i1 %3631, label %3662, label %3632

; <label>:3632                                    ; preds = %3624
  %3633 = add i32 %49, 200
  %3634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3633, i32 undef)  ; BufferLoad(srv,index,wot)
  %3635 = extractvalue %dx.types.ResRet.i32 %3634, 0
  %3636 = and i32 %3635, 255
  %3637 = uitofp i32 %3636 to float
  %3638 = fmul fast float %3637, 0x3F70101020000000
  %3639 = lshr i32 %3635, 8
  %3640 = and i32 %3639, 255
  %3641 = uitofp i32 %3640 to float
  %3642 = fmul fast float %3641, 0x3F70101020000000
  %3643 = lshr i32 %3635, 16
  %3644 = and i32 %3643, 255
  %3645 = uitofp i32 %3644 to float
  %3646 = fmul fast float %3645, 0x3F70101020000000
  %3647 = fmul fast float %3638, %3638
  %3648 = fmul fast float %3642, %3642
  %3649 = fmul fast float %3646, %3646
  %3650 = add i32 %49, 536
  %3651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3650, i32 undef)  ; BufferLoad(srv,index,wot)
  %3652 = extractvalue %dx.types.ResRet.i32 %3651, 0
  %3653 = add i32 %3652, 0
  %3654 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3653, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3655 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3654, %dx.types.Handle %106, float %3204, float %3205, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3656 = extractvalue %dx.types.ResRet.f32 %3655, 0
  %3657 = extractvalue %dx.types.ResRet.f32 %3655, 1
  %3658 = extractvalue %dx.types.ResRet.f32 %3655, 2
  %3659 = fmul fast float %3647, %3656
  %3660 = fmul fast float %3648, %3657
  %3661 = fmul fast float %3649, %3658
  br label %3662

; <label>:3662                                    ; preds = %3632, %3624
  %3663 = phi float [ %3659, %3632 ], [ 0.000000e+00, %3624 ]
  %3664 = phi float [ %3660, %3632 ], [ 0.000000e+00, %3624 ]
  %3665 = phi float [ %3661, %3632 ], [ 0.000000e+00, %3624 ]
  %3666 = fcmp fast ogt float %3663, 0.000000e+00
  %3667 = fcmp fast ogt float %3664, 0.000000e+00
  %3668 = fcmp fast ogt float %3665, 0.000000e+00
  %3669 = call float @dx.op.unary.f32(i32 23, float %3663)  ; Log(value)
  %3670 = call float @dx.op.unary.f32(i32 23, float %3664)  ; Log(value)
  %3671 = call float @dx.op.unary.f32(i32 23, float %3665)  ; Log(value)
  %3672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3581, i32 undef)  ; BufferLoad(srv,index,wot)
  %3673 = extractvalue %dx.types.ResRet.i32 %3672, 0
  %3674 = lshr i32 %3673, 7
  %3675 = and i32 %3674, 32752
  %3676 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3675)  ; LegacyF16ToF32(value)
  %3677 = fmul fast float %3669, 0xBFE62E4300000000
  %3678 = fmul fast float %3677, %3676
  %3679 = fmul fast float %3670, 0xBFE62E4300000000
  %3680 = fmul fast float %3679, %3676
  %3681 = fmul fast float %3671, 0xBFE62E4300000000
  %3682 = fmul fast float %3681, %3676
  %3683 = select i1 %3666, float %3678, float 1.270000e+02
  %3684 = select i1 %3667, float %3680, float 1.270000e+02
  %3685 = select i1 %3668, float %3682, float 1.270000e+02
  %3686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3097, i32 undef)  ; BufferLoad(srv,index,wot)
  %3687 = extractvalue %dx.types.ResRet.i32 %3686, 0
  %3688 = and i32 %3687, 10240
  %3689 = icmp eq i32 %3688, 0
  br i1 %3689, label %3734, label %3690

; <label>:3690                                    ; preds = %3662
  %3691 = add i32 %49, 552
  %3692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3691, i32 undef)  ; BufferLoad(srv,index,wot)
  %3693 = extractvalue %dx.types.ResRet.i32 %3692, 0
  %3694 = add i32 %3693, 0
  %3695 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3694, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3696 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3695, %dx.types.Handle %106, float %3204, float %3205, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3697 = extractvalue %dx.types.ResRet.f32 %3696, 1
  %3698 = extractvalue %dx.types.ResRet.f32 %3696, 3
  %3699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3097, i32 undef)  ; BufferLoad(srv,index,wot)
  %3700 = extractvalue %dx.types.ResRet.i32 %3699, 0
  %3701 = and i32 %3700, 1048576
  %3702 = icmp ne i32 %3701, 0
  %3703 = and i32 %3700, 8192
  %3704 = icmp eq i32 %3703, 0
  br i1 %3704, label %3720, label %3705

; <label>:3705                                    ; preds = %3690
  %3706 = extractvalue %dx.types.ResRet.f32 %3696, 2
  %3707 = select i1 %3702, float %3706, float %3697
  %3708 = extractvalue %dx.types.ResRet.f32 %3696, 0
  %3709 = select i1 %3702, float %3708, float %3697
  %3710 = add i32 %49, 144
  %3711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3710, i32 undef)  ; BufferLoad(srv,index,wot)
  %3712 = extractvalue %dx.types.ResRet.i32 %3711, 0
  %3713 = lshr i32 %3712, 16
  %3714 = and i32 %3713, 255
  %3715 = uitofp i32 %3714 to float
  %3716 = fmul fast float %3715, 0x3F80101020000000
  %3717 = fmul fast float %3716, %3709
  %3718 = fmul fast float %3716, %3697
  %3719 = fmul fast float %3716, %3707
  br label %3720

; <label>:3720                                    ; preds = %3705, %3690
  %3721 = phi float [ %3717, %3705 ], [ 0.000000e+00, %3690 ]
  %3722 = phi float [ %3718, %3705 ], [ 0.000000e+00, %3690 ]
  %3723 = phi float [ %3719, %3705 ], [ 0.000000e+00, %3690 ]
  %3724 = and i32 %3700, 2048
  %3725 = icmp eq i32 %3724, 0
  br i1 %3725, label %3734, label %3726

; <label>:3726                                    ; preds = %3720
  %3727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3581, i32 undef)  ; BufferLoad(srv,index,wot)
  %3728 = extractvalue %dx.types.ResRet.i32 %3727, 0
  %3729 = shl i32 %3728, 4
  %3730 = and i32 %3729, 32752
  %3731 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3730)  ; LegacyF16ToF32(value)
  %3732 = fmul fast float %3731, %3698
  %3733 = call float @dx.op.binary.f32(i32 35, float %3732, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3734

; <label>:3734                                    ; preds = %3726, %3720, %3662
  %3735 = phi float [ %3721, %3726 ], [ %3721, %3720 ], [ 0.000000e+00, %3662 ]
  %3736 = phi float [ %3722, %3726 ], [ %3722, %3720 ], [ 0.000000e+00, %3662 ]
  %3737 = phi float [ %3723, %3726 ], [ %3723, %3720 ], [ 0.000000e+00, %3662 ]
  %3738 = phi float [ %3733, %3726 ], [ 0x3F70101020000000, %3720 ], [ 0x3F70101020000000, %3662 ]
  %3739 = add i32 %49, 144
  %3740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3739, i32 undef)  ; BufferLoad(srv,index,wot)
  %3741 = extractvalue %dx.types.ResRet.i32 %3740, 0
  %3742 = and i32 %3741, 255
  %3743 = uitofp i32 %3742 to float
  %3744 = lshr i32 %3741, 8
  %3745 = and i32 %3744, 255
  %3746 = uitofp i32 %3745 to float
  %3747 = call float @dx.op.dot3.f32(i32 55, float %3497, float %3498, float %3499, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3748 = fmul fast float %3746, %3747
  %3749 = fadd fast float %3748, %3743
  %3750 = fmul fast float %3749, 0x3F70101020000000
  %3751 = call float @dx.op.unary.f32(i32 7, float %3750)  ; Saturate(value)
  br i1 %3096, label %3752, label %3787

; <label>:3752                                    ; preds = %3734
  %3753 = fmul fast float %3738, 2.000000e+00
  %3754 = fcmp fast olt float %3683, 1.270000e+02
  %3755 = fcmp fast olt float %3684, 1.270000e+02
  %3756 = fcmp fast olt float %3685, 1.270000e+02
  %3757 = fmul fast float %3683, 0xBFF7154760000000
  %3758 = fmul fast float %3757, %3753
  %3759 = fmul fast float %3684, 0xBFF7154760000000
  %3760 = fmul fast float %3759, %3753
  %3761 = fmul fast float %3685, 0xBFF7154760000000
  %3762 = fmul fast float %3761, %3753
  %3763 = call float @dx.op.unary.f32(i32 21, float %3758)  ; Exp(value)
  %3764 = call float @dx.op.unary.f32(i32 21, float %3760)  ; Exp(value)
  %3765 = call float @dx.op.unary.f32(i32 21, float %3762)  ; Exp(value)
  %3766 = call float @dx.op.unary.f32(i32 7, float %3763)  ; Saturate(value)
  %3767 = call float @dx.op.unary.f32(i32 7, float %3764)  ; Saturate(value)
  %3768 = call float @dx.op.unary.f32(i32 7, float %3765)  ; Saturate(value)
  %3769 = fadd fast float %3766, -1.000000e+00
  %3770 = select i1 %3754, float %3769, float -1.000000e+00
  %3771 = fadd fast float %3767, -1.000000e+00
  %3772 = select i1 %3755, float %3771, float -1.000000e+00
  %3773 = fadd fast float %3768, -1.000000e+00
  %3774 = select i1 %3756, float %3773, float -1.000000e+00
  %3775 = fmul fast float %3770, %3277
  %3776 = fmul fast float %3772, %3277
  %3777 = fmul fast float %3774, %3277
  %3778 = fadd fast float %3775, 1.000000e+00
  %3779 = fadd fast float %3776, 1.000000e+00
  %3780 = fadd fast float %3777, 1.000000e+00
  %3781 = fmul fast float %3778, %3078
  %3782 = fmul fast float %3779, %3079
  %3783 = fmul fast float %3780, %3080
  %3784 = fmul fast float %3778, %3081
  %3785 = fmul fast float %3779, %3082
  %3786 = fmul fast float %3780, %3083
  br label %3787

; <label>:3787                                    ; preds = %3752, %3734
  %3788 = phi float [ %3781, %3752 ], [ %3078, %3734 ]
  %3789 = phi float [ %3782, %3752 ], [ %3079, %3734 ]
  %3790 = phi float [ %3783, %3752 ], [ %3080, %3734 ]
  %3791 = phi float [ %3784, %3752 ], [ %3081, %3734 ]
  %3792 = phi float [ %3785, %3752 ], [ %3082, %3734 ]
  %3793 = phi float [ %3786, %3752 ], [ %3083, %3734 ]
  %3794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3097, i32 undef)  ; BufferLoad(srv,index,wot)
  %3795 = extractvalue %dx.types.ResRet.i32 %3794, 0
  %3796 = and i32 %3795, 3
  %3797 = icmp eq i32 %3796, 3
  br i1 %3797, label %3876, label %3798

; <label>:3798                                    ; preds = %3787
  %3799 = and i32 %3795, 16
  %3800 = icmp ne i32 %3799, 0
  %3801 = select i1 %3800, float %3277, float 0.000000e+00
  %3802 = icmp eq i32 %3796, 0
  br i1 %3802, label %3803, label %3831

; <label>:3803                                    ; preds = %3798
  %3804 = and i32 %3795, 64
  %3805 = icmp ne i32 %3804, 0
  %3806 = select i1 %3805, float %3277, float 0.000000e+00
  %3807 = fsub fast float %3497, %3788
  %3808 = fsub fast float %3498, %3789
  %3809 = fsub fast float %3499, %3790
  %3810 = fmul fast float %3801, %3807
  %3811 = fmul fast float %3801, %3808
  %3812 = fmul fast float %3801, %3809
  %3813 = fadd fast float %3810, %3788
  %3814 = fadd fast float %3811, %3789
  %3815 = fadd fast float %3812, %3790
  %3816 = fsub fast float %3483, %3090
  %3817 = fmul fast float %3801, %3816
  %3818 = fadd fast float %3817, %3090
  %3819 = fsub fast float %3625, %3791
  %3820 = fsub fast float %3626, %3792
  %3821 = fsub fast float %3627, %3793
  %3822 = fmul fast float %3806, %3819
  %3823 = fmul fast float %3806, %3820
  %3824 = fmul fast float %3806, %3821
  %3825 = fadd fast float %3822, %3791
  %3826 = fadd fast float %3823, %3792
  %3827 = fadd fast float %3824, %3793
  %3828 = fsub fast float %3751, %3094
  %3829 = fmul fast float %3801, %3828
  %3830 = fadd fast float %3829, %3094
  br label %3876

; <label>:3831                                    ; preds = %3798
  %3832 = icmp eq i32 %3796, 1
  br i1 %3832, label %3833, label %3846

; <label>:3833                                    ; preds = %3831
  %3834 = fadd fast float %3497, -1.000000e+00
  %3835 = fadd fast float %3498, -1.000000e+00
  %3836 = fadd fast float %3499, -1.000000e+00
  %3837 = fmul fast float %3801, %3834
  %3838 = fmul fast float %3801, %3835
  %3839 = fmul fast float %3801, %3836
  %3840 = fadd fast float %3837, 1.000000e+00
  %3841 = fadd fast float %3838, 1.000000e+00
  %3842 = fadd fast float %3839, 1.000000e+00
  %3843 = fmul fast float %3840, %3788
  %3844 = fmul fast float %3841, %3789
  %3845 = fmul fast float %3842, %3790
  br label %3876

; <label>:3846                                    ; preds = %3831
  %3847 = icmp eq i32 %3796, 2
  br i1 %3847, label %3848, label %3876

; <label>:3848                                    ; preds = %3846
  %3849 = call float @dx.op.unary.f32(i32 24, float %3497)  ; Sqrt(value)
  %3850 = call float @dx.op.unary.f32(i32 24, float %3498)  ; Sqrt(value)
  %3851 = call float @dx.op.unary.f32(i32 24, float %3499)  ; Sqrt(value)
  %3852 = fadd fast float %3849, -5.000000e-01
  %3853 = fadd fast float %3850, -5.000000e-01
  %3854 = fadd fast float %3851, -5.000000e-01
  %3855 = fmul fast float %3852, %3801
  %3856 = fmul fast float %3853, %3801
  %3857 = fmul fast float %3854, %3801
  %3858 = fadd fast float %3855, 5.000000e-01
  %3859 = fadd fast float %3856, 5.000000e-01
  %3860 = fadd fast float %3857, 5.000000e-01
  %3861 = fmul fast float %3858, 2.000000e+00
  %3862 = fsub fast float 1.000000e+00, %3861
  %3863 = fmul fast float %3862, %3788
  %3864 = fadd fast float %3863, %3861
  %3865 = fmul fast float %3864, %3788
  %3866 = fmul fast float %3859, 2.000000e+00
  %3867 = fsub fast float 1.000000e+00, %3866
  %3868 = fmul fast float %3867, %3789
  %3869 = fadd fast float %3868, %3866
  %3870 = fmul fast float %3869, %3789
  %3871 = fmul fast float %3860, 2.000000e+00
  %3872 = fsub fast float 1.000000e+00, %3871
  %3873 = fmul fast float %3872, %3790
  %3874 = fadd fast float %3873, %3871
  %3875 = fmul fast float %3874, %3790
  br label %3876

; <label>:3876                                    ; preds = %3848, %3846, %3833, %3803, %3787
  %3877 = phi float [ %3788, %3787 ], [ %3865, %3848 ], [ %3788, %3846 ], [ %3843, %3833 ], [ %3813, %3803 ]
  %3878 = phi float [ %3789, %3787 ], [ %3870, %3848 ], [ %3789, %3846 ], [ %3844, %3833 ], [ %3814, %3803 ]
  %3879 = phi float [ %3790, %3787 ], [ %3875, %3848 ], [ %3790, %3846 ], [ %3845, %3833 ], [ %3815, %3803 ]
  %3880 = phi float [ %3791, %3787 ], [ %3791, %3848 ], [ %3791, %3846 ], [ %3791, %3833 ], [ %3825, %3803 ]
  %3881 = phi float [ %3792, %3787 ], [ %3792, %3848 ], [ %3792, %3846 ], [ %3792, %3833 ], [ %3826, %3803 ]
  %3882 = phi float [ %3793, %3787 ], [ %3793, %3848 ], [ %3793, %3846 ], [ %3793, %3833 ], [ %3827, %3803 ]
  %3883 = phi float [ %3090, %3787 ], [ %3090, %3848 ], [ %3090, %3846 ], [ %3090, %3833 ], [ %3818, %3803 ]
  %3884 = phi float [ %3094, %3787 ], [ %3094, %3848 ], [ %3094, %3846 ], [ %3094, %3833 ], [ %3830, %3803 ]
  %3885 = and i32 %3795, 12
  %3886 = icmp eq i32 %3885, 12
  br i1 %3886, label %4017, label %3887

; <label>:3887                                    ; preds = %3876
  %3888 = and i32 %3795, 2097184
  %3889 = icmp eq i32 %3888, 2097184
  %3890 = select i1 %3889, float %3277, float 0.000000e+00
  %3891 = and i32 %3795, 4194336
  %3892 = icmp eq i32 %3891, 4194336
  %3893 = select i1 %3892, float %3277, float 0.000000e+00
  %3894 = and i32 %3795, 8388640
  %3895 = icmp eq i32 %3894, 8388640
  %3896 = select i1 %3895, float %3277, float 0.000000e+00
  %3897 = and i32 %3795, 1024
  %3898 = icmp ne i32 %3897, 0
  %3899 = select i1 %3898, float %3277, float 0.000000e+00
  %3900 = and i32 %3795, 2048
  %3901 = icmp ne i32 %3900, 0
  %3902 = select i1 %3901, float %3277, float 0.000000e+00
  %3903 = and i32 %3795, 8192
  %3904 = icmp ne i32 %3903, 0
  %3905 = select i1 %3904, float %3277, float 0.000000e+00
  %3906 = icmp eq i32 %3885, 0
  br i1 %3906, label %3907, label %3941

; <label>:3907                                    ; preds = %3887
  %3908 = fsub fast float %3578, %3076
  %3909 = fsub fast float %3579, %3077
  %3910 = fmul fast float %3890, %3908
  %3911 = fmul fast float %3890, %3909
  %3912 = fadd fast float %3910, %3076
  %3913 = fadd fast float %3911, %3077
  %3914 = fsub fast float %3580, %3092
  %3915 = fmul fast float %3893, %3914
  %3916 = fadd fast float %3915, %3092
  %3917 = fsub fast float %3577, %3091
  %3918 = fmul fast float %3896, %3917
  %3919 = fadd fast float %3918, %3091
  %3920 = fsub fast float %3683, %3084
  %3921 = fsub fast float %3684, %3085
  %3922 = fsub fast float %3685, %3086
  %3923 = fmul fast float %3899, %3920
  %3924 = fmul fast float %3899, %3921
  %3925 = fmul fast float %3899, %3922
  %3926 = fadd fast float %3923, %3084
  %3927 = fadd fast float %3924, %3085
  %3928 = fadd fast float %3925, %3086
  %3929 = fsub fast float %3738, %3093
  %3930 = fmul fast float %3902, %3929
  %3931 = fadd fast float %3930, %3093
  %3932 = fsub fast float %3735, %3087
  %3933 = fsub fast float %3736, %3088
  %3934 = fsub fast float %3737, %3089
  %3935 = fmul fast float %3905, %3932
  %3936 = fmul fast float %3905, %3933
  %3937 = fmul fast float %3905, %3934
  %3938 = fadd fast float %3935, %3087
  %3939 = fadd fast float %3936, %3088
  %3940 = fadd fast float %3937, %3089
  br label %4017

; <label>:3941                                    ; preds = %3887
  %3942 = icmp eq i32 %3885, 4
  br i1 %3942, label %3943, label %3989

; <label>:3943                                    ; preds = %3941
  %3944 = fmul fast float %3890, %3578
  %3945 = fmul fast float %3890, %3579
  %3946 = fadd fast float %3944, %3076
  %3947 = fadd fast float %3945, %3077
  %3948 = call float @dx.op.binary.f32(i32 36, float %3092, float %3580)  ; FMin(a,b)
  %3949 = fsub fast float %3948, %3092
  %3950 = fmul fast float %3949, %3893
  %3951 = fadd fast float %3950, %3092
  %3952 = fadd fast float %3577, %3091
  %3953 = fmul fast float %3952, 0x3FF337FAE0000000
  %3954 = fmul fast float %3091, %3091
  %3955 = fmul fast float %3577, %3577
  %3956 = fadd fast float %3955, %3954
  %3957 = fmul fast float %3956, 0x3FE5152B00000000
  %3958 = fmul fast float %3091, 0xBFCC1F85E0000000
  %3959 = fmul fast float %3958, %3577
  %3960 = fadd fast float %3959, 0xBFE1363700000000
  %3961 = fadd fast float %3960, %3953
  %3962 = fsub fast float %3961, %3957
  %3963 = fmul fast float %3952, 0x3FBA6F0D00000000
  %3964 = fmul fast float %3956, 0x3FD0432880000000
  %3965 = fmul fast float %3091, 0xBFEF110800000000
  %3966 = fmul fast float %3965, %3577
  %3967 = fadd fast float %3966, 1.000000e+00
  %3968 = fsub fast float %3967, %3963
  %3969 = fadd fast float %3968, %3964
  %3970 = fdiv fast float %3962, %3969
  %3971 = call float @dx.op.unary.f32(i32 7, float %3970)  ; Saturate(value)
  %3972 = fsub fast float %3971, %3091
  %3973 = fmul fast float %3972, %3896
  %3974 = fadd fast float %3973, %3091
  %3975 = fmul fast float %3899, %3683
  %3976 = fmul fast float %3899, %3684
  %3977 = fmul fast float %3899, %3685
  %3978 = fadd fast float %3975, %3084
  %3979 = fadd fast float %3976, %3085
  %3980 = fadd fast float %3977, %3086
  %3981 = fmul fast float %3902, %3738
  %3982 = fadd fast float %3981, %3093
  %3983 = fmul fast float %3905, %3735
  %3984 = fmul fast float %3905, %3736
  %3985 = fmul fast float %3905, %3737
  %3986 = fadd fast float %3983, %3087
  %3987 = fadd fast float %3984, %3088
  %3988 = fadd fast float %3985, %3089
  br label %4017

; <label>:3989                                    ; preds = %3941
  %3990 = icmp eq i32 %3885, 8
  br i1 %3990, label %3991, label %4017

; <label>:3991                                    ; preds = %3989
  %3992 = fmul fast float %3890, %3578
  %3993 = fmul fast float %3890, %3579
  %3994 = fadd fast float %3992, %3076
  %3995 = fadd fast float %3993, %3077
  %3996 = call float @dx.op.binary.f32(i32 36, float %3092, float %3580)  ; FMin(a,b)
  %3997 = fsub fast float %3996, %3092
  %3998 = fmul fast float %3997, %3893
  %3999 = fadd fast float %3998, %3092
  %4000 = fsub fast float %3577, %3091
  %4001 = fmul fast float %3896, %4000
  %4002 = fadd fast float %4001, %3091
  %4003 = fmul fast float %3899, %3683
  %4004 = fmul fast float %3899, %3684
  %4005 = fmul fast float %3899, %3685
  %4006 = fadd fast float %4003, %3084
  %4007 = fadd fast float %4004, %3085
  %4008 = fadd fast float %4005, %3086
  %4009 = fmul fast float %3902, %3738
  %4010 = fadd fast float %4009, %3093
  %4011 = fmul fast float %3905, %3735
  %4012 = fmul fast float %3905, %3736
  %4013 = fmul fast float %3905, %3737
  %4014 = fadd fast float %4011, %3087
  %4015 = fadd fast float %4012, %3088
  %4016 = fadd fast float %4013, %3089
  br label %4017

; <label>:4017                                    ; preds = %3991, %3989, %3943, %3907, %3876, %3276, %3095, %3075
  %4018 = phi float [ %3076, %3876 ], [ %3076, %3276 ], [ %3076, %3075 ], [ %3076, %3095 ], [ %3912, %3907 ], [ %3946, %3943 ], [ %3076, %3989 ], [ %3994, %3991 ]
  %4019 = phi float [ %3077, %3876 ], [ %3077, %3276 ], [ %3077, %3075 ], [ %3077, %3095 ], [ %3913, %3907 ], [ %3947, %3943 ], [ %3077, %3989 ], [ %3995, %3991 ]
  %4020 = phi float [ %3877, %3876 ], [ %3078, %3276 ], [ %3078, %3075 ], [ %3078, %3095 ], [ %3877, %3907 ], [ %3877, %3943 ], [ %3877, %3989 ], [ %3877, %3991 ]
  %4021 = phi float [ %3878, %3876 ], [ %3079, %3276 ], [ %3079, %3075 ], [ %3079, %3095 ], [ %3878, %3907 ], [ %3878, %3943 ], [ %3878, %3989 ], [ %3878, %3991 ]
  %4022 = phi float [ %3879, %3876 ], [ %3080, %3276 ], [ %3080, %3075 ], [ %3080, %3095 ], [ %3879, %3907 ], [ %3879, %3943 ], [ %3879, %3989 ], [ %3879, %3991 ]
  %4023 = phi float [ %3880, %3876 ], [ %3081, %3276 ], [ %3081, %3075 ], [ %3081, %3095 ], [ %3880, %3907 ], [ %3880, %3943 ], [ %3880, %3989 ], [ %3880, %3991 ]
  %4024 = phi float [ %3881, %3876 ], [ %3082, %3276 ], [ %3082, %3075 ], [ %3082, %3095 ], [ %3881, %3907 ], [ %3881, %3943 ], [ %3881, %3989 ], [ %3881, %3991 ]
  %4025 = phi float [ %3882, %3876 ], [ %3083, %3276 ], [ %3083, %3075 ], [ %3083, %3095 ], [ %3882, %3907 ], [ %3882, %3943 ], [ %3882, %3989 ], [ %3882, %3991 ]
  %4026 = phi float [ %3084, %3876 ], [ %3084, %3276 ], [ %3084, %3075 ], [ %3084, %3095 ], [ %3926, %3907 ], [ %3978, %3943 ], [ %3084, %3989 ], [ %4006, %3991 ]
  %4027 = phi float [ %3085, %3876 ], [ %3085, %3276 ], [ %3085, %3075 ], [ %3085, %3095 ], [ %3927, %3907 ], [ %3979, %3943 ], [ %3085, %3989 ], [ %4007, %3991 ]
  %4028 = phi float [ %3086, %3876 ], [ %3086, %3276 ], [ %3086, %3075 ], [ %3086, %3095 ], [ %3928, %3907 ], [ %3980, %3943 ], [ %3086, %3989 ], [ %4008, %3991 ]
  %4029 = phi float [ %3087, %3876 ], [ %3087, %3276 ], [ %3087, %3075 ], [ %3087, %3095 ], [ %3938, %3907 ], [ %3986, %3943 ], [ %3087, %3989 ], [ %4014, %3991 ]
  %4030 = phi float [ %3088, %3876 ], [ %3088, %3276 ], [ %3088, %3075 ], [ %3088, %3095 ], [ %3939, %3907 ], [ %3987, %3943 ], [ %3088, %3989 ], [ %4015, %3991 ]
  %4031 = phi float [ %3089, %3876 ], [ %3089, %3276 ], [ %3089, %3075 ], [ %3089, %3095 ], [ %3940, %3907 ], [ %3988, %3943 ], [ %3089, %3989 ], [ %4016, %3991 ]
  %4032 = phi float [ %3883, %3876 ], [ %3090, %3276 ], [ %3090, %3075 ], [ %3090, %3095 ], [ %3883, %3907 ], [ %3883, %3943 ], [ %3883, %3989 ], [ %3883, %3991 ]
  %4033 = phi float [ %3091, %3876 ], [ %3091, %3276 ], [ %3091, %3075 ], [ %3091, %3095 ], [ %3919, %3907 ], [ %3974, %3943 ], [ %3091, %3989 ], [ %4002, %3991 ]
  %4034 = phi float [ %3092, %3876 ], [ %3092, %3276 ], [ %3092, %3075 ], [ %3092, %3095 ], [ %3916, %3907 ], [ %3951, %3943 ], [ %3092, %3989 ], [ %3999, %3991 ]
  %4035 = phi float [ %3093, %3876 ], [ %3093, %3276 ], [ %3093, %3075 ], [ %3093, %3095 ], [ %3931, %3907 ], [ %3982, %3943 ], [ %3093, %3989 ], [ %4010, %3991 ]
  %4036 = phi float [ %3884, %3876 ], [ %3094, %3276 ], [ %3094, %3075 ], [ %3094, %3095 ], [ %3884, %3907 ], [ %3884, %3943 ], [ %3884, %3989 ], [ %3884, %3991 ]
  %4037 = add i32 %49, 408
  %4038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4037, i32 undef)  ; BufferLoad(srv,index,wot)
  %4039 = extractvalue %dx.types.ResRet.i32 %4038, 0
  %4040 = extractvalue %dx.types.ResRet.i32 %4038, 1
  %4041 = bitcast i32 %4039 to float
  %4042 = bitcast i32 %4040 to float
  %4043 = fcmp fast oge float %4041, 0.000000e+00
  %4044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4045 = extractvalue %dx.types.CBufRet.f32 %4044, 0
  %4046 = select i1 %4043, float %4041, float %4045
  %4047 = fadd fast float %4046, %202
  %4048 = fmul fast float %4042, %203
  %4049 = add i32 %49, 504
  %4050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4049, i32 undef)  ; BufferLoad(srv,index,wot)
  %4051 = extractvalue %dx.types.ResRet.i32 %4050, 0
  %4052 = add i32 %4051, 0
  %4053 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4052, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4054 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4053, %dx.types.Handle %106, float %87, float %88, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4055 = extractvalue %dx.types.ResRet.f32 %4054, 0
  %4056 = fmul fast float %4048, %4055
  %4057 = fadd fast float %4047, %4056
  %4058 = and i32 %194, 65535
  %4059 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4058)  ; LegacyF16ToF32(value)
  %4060 = lshr i32 %194, 16
  %4061 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4060)  ; LegacyF16ToF32(value)
  %4062 = and i32 %195, 65535
  %4063 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4062)  ; LegacyF16ToF32(value)
  %4064 = fmul fast float %4059, %4020
  %4065 = fmul fast float %4061, %4021
  %4066 = fmul fast float %4063, %4022
  %4067 = shl i32 %196, 4
  %4068 = and i32 %4067, 32752
  %4069 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4068)  ; LegacyF16ToF32(value)
  %4070 = lshr i32 %196, 7
  %4071 = and i32 %4070, 32752
  %4072 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4071)  ; LegacyF16ToF32(value)
  %4073 = lshr i32 %196, 22
  %4074 = shl nuw nsw i32 %4073, 5
  %4075 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4074)  ; LegacyF16ToF32(value)
  %4076 = and i32 %197, 65535
  %4077 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4076)  ; LegacyF16ToF32(value)
  %4078 = fmul fast float %4069, %4023
  %4079 = fmul fast float %4078, %4077
  %4080 = fmul fast float %4072, %4024
  %4081 = fmul fast float %4080, %4077
  %4082 = fmul fast float %4075, %4025
  %4083 = fmul fast float %4082, %4077
  %4084 = call float @dx.op.dot2.f32(i32 54, float %4018, float %4019, float %4018, float %4019)  ; Dot2(ax,ay,bx,by)
  %4085 = fmul fast float %4084, 0x3FE3333340000000
  %4086 = fsub fast float 1.000000e+00, %4085
  %4087 = call float @dx.op.dot3.f32(i32 55, float %4018, float %4019, float %4086, float %4018, float %4019, float %4086)  ; Dot3(ax,ay,az,bx,by,bz)
  %4088 = call float @dx.op.unary.f32(i32 25, float %4087)  ; Rsqrt(value)
  %4089 = fmul fast float %4088, %4018
  %4090 = fmul fast float %4088, %4019
  %4091 = fmul fast float %4086, %4088
  %4092 = fmul fast float %4091, %116
  %4093 = fmul fast float %4091, %117
  %4094 = fmul fast float %4091, %118
  %4095 = fmul fast float %4089, %80
  %4096 = fmul fast float %4089, %81
  %4097 = fmul fast float %4089, %82
  %4098 = fadd fast float %4092, %4095
  %4099 = fadd fast float %4093, %4096
  %4100 = fadd fast float %4094, %4097
  %4101 = fmul fast float %128, %4090
  %4102 = fmul fast float %129, %4090
  %4103 = fmul fast float %130, %4090
  %4104 = fadd fast float %4098, %4101
  %4105 = fadd fast float %4099, %4102
  %4106 = fadd fast float %4100, %4103
  %4107 = call float @dx.op.dot3.f32(i32 55, float %4104, float %4105, float %4106, float %4104, float %4105, float %4106)  ; Dot3(ax,ay,az,bx,by,bz)
  %4108 = call float @dx.op.unary.f32(i32 25, float %4107)  ; Rsqrt(value)
  %4109 = fmul fast float %4104, %4108
  %4110 = fmul fast float %4105, %4108
  %4111 = fmul fast float %4106, %4108
  %4112 = icmp eq i32 %51, 65535
  br i1 %4112, label %4711, label %4113

; <label>:4113                                    ; preds = %4017
  %4114 = call float @dx.op.unary.f32(i32 83, float %52)  ; DerivCoarseX(value)
  %4115 = call float @dx.op.unary.f32(i32 83, float %53)  ; DerivCoarseX(value)
  %4116 = call float @dx.op.unary.f32(i32 83, float %54)  ; DerivCoarseX(value)
  %4117 = call float @dx.op.unary.f32(i32 84, float %52)  ; DerivCoarseY(value)
  %4118 = call float @dx.op.unary.f32(i32 84, float %53)  ; DerivCoarseY(value)
  %4119 = call float @dx.op.unary.f32(i32 84, float %54)  ; DerivCoarseY(value)
  %4120 = fadd fast float %4114, %52
  %4121 = fadd fast float %4115, %53
  %4122 = fadd fast float %4116, %54
  %4123 = fadd fast float %4117, %52
  %4124 = fadd fast float %4118, %53
  %4125 = fadd fast float %4119, %54
  %4126 = mul i32 %51, 48
  %4127 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4126, i32 undef)  ; BufferLoad(srv,index,wot)
  %4128 = extractvalue %dx.types.ResRet.f32 %4127, 0
  %4129 = extractvalue %dx.types.ResRet.f32 %4127, 1
  %4130 = extractvalue %dx.types.ResRet.f32 %4127, 2
  %4131 = add i32 %4126, 16
  %4132 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4131, i32 undef)  ; BufferLoad(srv,index,wot)
  %4133 = extractvalue %dx.types.ResRet.f32 %4132, 0
  %4134 = extractvalue %dx.types.ResRet.f32 %4132, 1
  %4135 = extractvalue %dx.types.ResRet.f32 %4132, 2
  %4136 = add i32 %4126, 32
  %4137 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4136, i32 undef)  ; BufferLoad(srv,index,wot)
  %4138 = extractvalue %dx.types.ResRet.f32 %4137, 0
  %4139 = extractvalue %dx.types.ResRet.f32 %4137, 1
  %4140 = extractvalue %dx.types.ResRet.f32 %4137, 2
  %4141 = extractvalue %dx.types.ResRet.f32 %4137, 3
  %4142 = bitcast float %4141 to i32
  %4143 = fmul fast float %4128, %52
  %4144 = fmul fast float %4129, %53
  %4145 = fmul fast float %4130, %54
  %4146 = fsub fast float %4143, %4133
  %4147 = fsub fast float %4144, %4134
  %4148 = fsub fast float %4145, %4135
  %4149 = call float @dx.op.unary.f32(i32 7, float %4146)  ; Saturate(value)
  %4150 = call float @dx.op.unary.f32(i32 7, float %4147)  ; Saturate(value)
  %4151 = call float @dx.op.unary.f32(i32 7, float %4148)  ; Saturate(value)
  %4152 = fmul fast float %4149, %4138
  %4153 = fmul fast float %4150, %4139
  %4154 = fmul fast float %4151, %4140
  %4155 = fadd fast float %4138, -1.000000e+00
  %4156 = fadd fast float %4139, -1.000000e+00
  %4157 = fadd fast float %4140, -1.000000e+00
  %4158 = call float @dx.op.unary.f32(i32 27, float %4152)  ; Round_ni(value)
  %4159 = call float @dx.op.unary.f32(i32 27, float %4153)  ; Round_ni(value)
  %4160 = call float @dx.op.unary.f32(i32 27, float %4154)  ; Round_ni(value)
  %4161 = call float @dx.op.binary.f32(i32 36, float %4158, float %4155)  ; FMin(a,b)
  %4162 = call float @dx.op.binary.f32(i32 36, float %4159, float %4156)  ; FMin(a,b)
  %4163 = call float @dx.op.binary.f32(i32 36, float %4160, float %4157)  ; FMin(a,b)
  %4164 = fmul fast float %4163, %4139
  %4165 = fadd fast float %4164, %4162
  %4166 = fmul fast float %4165, %4138
  %4167 = fadd fast float %4166, %4161
  %4168 = fptosi float %4167 to i32
  %4169 = add nsw i32 %4168, %4142
  %4170 = shl nsw i32 %4169, 2
  %4171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4170, i32 undef)  ; BufferLoad(srv,index,wot)
  %4172 = extractvalue %dx.types.ResRet.i32 %4171, 0
  %4173 = lshr i32 %4172, 16
  %4174 = icmp eq i32 %4173, 0
  br i1 %4174, label %4674, label %4175

; <label>:4175                                    ; preds = %4113
  br label %4176

; <label>:4176                                    ; preds = %4303, %4175
  %4177 = phi i32 [ %4205, %4303 ], [ %4173, %4175 ]
  %4178 = phi float [ %4304, %4303 ], [ 0.000000e+00, %4175 ]
  %4179 = phi float [ %4305, %4303 ], [ %4057, %4175 ]
  %4180 = phi float [ %4306, %4303 ], [ %4036, %4175 ]
  %4181 = phi float [ %4307, %4303 ], [ %4026, %4175 ]
  %4182 = phi float [ %4308, %4303 ], [ %4027, %4175 ]
  %4183 = phi float [ %4309, %4303 ], [ %4028, %4175 ]
  %4184 = phi float [ %4310, %4303 ], [ 0.000000e+00, %4175 ]
  %4185 = phi float [ %4311, %4303 ], [ 0.000000e+00, %4175 ]
  %4186 = phi float [ %4312, %4303 ], [ %4029, %4175 ]
  %4187 = phi float [ %4313, %4303 ], [ %4030, %4175 ]
  %4188 = phi float [ %4314, %4303 ], [ %4031, %4175 ]
  %4189 = phi float [ %4315, %4303 ], [ %4079, %4175 ]
  %4190 = phi float [ %4316, %4303 ], [ %4081, %4175 ]
  %4191 = phi float [ %4317, %4303 ], [ %4083, %4175 ]
  %4192 = phi float [ %4318, %4303 ], [ %4109, %4175 ]
  %4193 = phi float [ %4319, %4303 ], [ %4110, %4175 ]
  %4194 = phi float [ %4320, %4303 ], [ %4111, %4175 ]
  %4195 = phi float [ %4321, %4303 ], [ %4034, %4175 ]
  %4196 = phi float [ %4322, %4303 ], [ %4033, %4175 ]
  %4197 = phi float [ %4323, %4303 ], [ 0.000000e+00, %4175 ]
  %4198 = phi float [ %4324, %4303 ], [ %4032, %4175 ]
  %4199 = phi float [ %4325, %4303 ], [ %4064, %4175 ]
  %4200 = phi float [ %4326, %4303 ], [ %4065, %4175 ]
  %4201 = phi float [ %4327, %4303 ], [ %4066, %4175 ]
  %4202 = shl nuw nsw i32 %4177, 2
  %4203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4202, i32 undef)  ; BufferLoad(srv,index,wot)
  %4204 = extractvalue %dx.types.ResRet.i32 %4203, 0
  %4205 = lshr i32 %4204, 16
  %4206 = shl i32 %4204, 8
  %4207 = and i32 %4206, 16776960
  %4208 = or i32 %4207, 48
  %4209 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4208, i32 undef)  ; BufferLoad(srv,index,wot)
  %4210 = extractvalue %dx.types.ResRet.f32 %4209, 0
  %4211 = extractvalue %dx.types.ResRet.f32 %4209, 1
  %4212 = extractvalue %dx.types.ResRet.f32 %4209, 2
  %4213 = or i32 %4207, 64
  %4214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4213, i32 undef)  ; BufferLoad(srv,index,wot)
  %4215 = extractvalue %dx.types.ResRet.i32 %4214, 0
  %4216 = extractvalue %dx.types.ResRet.i32 %4214, 1
  %4217 = or i32 %4207, 80
  %4218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4217, i32 undef)  ; BufferLoad(srv,index,wot)
  %4219 = extractvalue %dx.types.ResRet.f32 %4218, 2
  %4220 = extractvalue %dx.types.ResRet.f32 %4218, 3
  %4221 = or i32 %4207, 96
  %4222 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4221, i32 undef)  ; BufferLoad(srv,index,wot)
  %4223 = extractvalue %dx.types.ResRet.f32 %4222, 0
  %4224 = extractvalue %dx.types.ResRet.f32 %4222, 1
  %4225 = extractvalue %dx.types.ResRet.f32 %4222, 2
  %4226 = extractvalue %dx.types.ResRet.f32 %4222, 3
  %4227 = or i32 %4207, 112
  %4228 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4227, i32 undef)  ; BufferLoad(srv,index,wot)
  %4229 = extractvalue %dx.types.ResRet.f32 %4228, 2
  %4230 = or i32 %4207, 128
  %4231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4230, i32 undef)  ; BufferLoad(srv,index,wot)
  %4232 = extractvalue %dx.types.ResRet.f32 %4231, 0
  %4233 = extractvalue %dx.types.ResRet.f32 %4231, 1
  %4234 = extractvalue %dx.types.ResRet.f32 %4231, 2
  %4235 = extractvalue %dx.types.ResRet.f32 %4231, 3
  %4236 = or i32 %4207, 144
  %4237 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4236, i32 undef)  ; BufferLoad(srv,index,wot)
  %4238 = extractvalue %dx.types.ResRet.f32 %4237, 0
  %4239 = extractvalue %dx.types.ResRet.f32 %4237, 1
  %4240 = extractvalue %dx.types.ResRet.f32 %4237, 2
  %4241 = extractvalue %dx.types.ResRet.f32 %4237, 3
  %4242 = or i32 %4207, 160
  %4243 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4242, i32 undef)  ; BufferLoad(srv,index,wot)
  %4244 = extractvalue %dx.types.ResRet.f32 %4243, 0
  %4245 = extractvalue %dx.types.ResRet.f32 %4243, 1
  %4246 = extractvalue %dx.types.ResRet.f32 %4243, 2
  %4247 = extractvalue %dx.types.ResRet.f32 %4243, 3
  %4248 = or i32 %4207, 192
  %4249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4248, i32 undef)  ; BufferLoad(srv,index,wot)
  %4250 = extractvalue %dx.types.ResRet.i32 %4249, 0
  %4251 = or i32 %4207, 208
  %4252 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4251, i32 undef)  ; BufferLoad(srv,index,wot)
  %4253 = extractvalue %dx.types.ResRet.f32 %4252, 0
  %4254 = or i32 %4207, 248
  %4255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4254, i32 undef)  ; BufferLoad(srv,index,wot)
  %4256 = extractvalue %dx.types.ResRet.f32 %4255, 0
  %4257 = extractvalue %dx.types.ResRet.f32 %4255, 1
  %4258 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4207, i32 undef)  ; BufferLoad(srv,index,wot)
  %4259 = extractvalue %dx.types.ResRet.f32 %4258, 0
  %4260 = extractvalue %dx.types.ResRet.f32 %4258, 1
  %4261 = extractvalue %dx.types.ResRet.f32 %4258, 2
  %4262 = extractvalue %dx.types.ResRet.f32 %4258, 3
  %4263 = call float @dx.op.dot4.f32(i32 56, float %4259, float %4260, float %4261, float %4262, float %52, float %53, float %54, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4264 = or i32 %4207, 16
  %4265 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4264, i32 undef)  ; BufferLoad(srv,index,wot)
  %4266 = extractvalue %dx.types.ResRet.f32 %4265, 0
  %4267 = extractvalue %dx.types.ResRet.f32 %4265, 1
  %4268 = extractvalue %dx.types.ResRet.f32 %4265, 2
  %4269 = extractvalue %dx.types.ResRet.f32 %4265, 3
  %4270 = call float @dx.op.dot4.f32(i32 56, float %4266, float %4267, float %4268, float %4269, float %52, float %53, float %54, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4271 = or i32 %4207, 32
  %4272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4271, i32 undef)  ; BufferLoad(srv,index,wot)
  %4273 = extractvalue %dx.types.ResRet.f32 %4272, 0
  %4274 = extractvalue %dx.types.ResRet.f32 %4272, 1
  %4275 = extractvalue %dx.types.ResRet.f32 %4272, 2
  %4276 = extractvalue %dx.types.ResRet.f32 %4272, 3
  %4277 = call float @dx.op.dot4.f32(i32 56, float %4273, float %4274, float %4275, float %4276, float %52, float %53, float %54, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4278 = call float @dx.op.unary.f32(i32 27, float %4263)  ; Round_ni(value)
  %4279 = call float @dx.op.unary.f32(i32 6, float %4278)  ; FAbs(value)
  %4280 = call float @dx.op.unary.f32(i32 27, float %4270)  ; Round_ni(value)
  %4281 = call float @dx.op.unary.f32(i32 6, float %4280)  ; FAbs(value)
  %4282 = call float @dx.op.unary.f32(i32 6, float %4277)  ; FAbs(value)
  %4283 = call float @dx.op.unary.f32(i32 27, float %4282)  ; Round_ni(value)
  %4284 = fadd fast float %4281, %4279
  %4285 = fadd fast float %4284, %4283
  %4286 = fcmp fast oeq float %4285, 0.000000e+00
  %4287 = call float @dx.op.dot4.f32(i32 56, float %4259, float %4260, float %4261, float %4262, float %4120, float %4121, float %4122, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4288 = call float @dx.op.dot4.f32(i32 56, float %4266, float %4267, float %4268, float %4269, float %4120, float %4121, float %4122, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4289 = call float @dx.op.dot4.f32(i32 56, float %4259, float %4260, float %4261, float %4262, float %4123, float %4124, float %4125, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4290 = call float @dx.op.dot4.f32(i32 56, float %4266, float %4267, float %4268, float %4269, float %4123, float %4124, float %4125, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4291 = fsub fast float %4287, %4263
  %4292 = fsub fast float %4289, %4263
  %4293 = fsub fast float %4288, %4270
  %4294 = fsub fast float %4290, %4270
  %4295 = call float @dx.op.dot3.f32(i32 55, float %4210, float %4211, float %4212, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %4296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4297 = extractvalue %dx.types.CBufRet.f32 %4296, 2
  %4298 = fadd fast float %4297, %4295
  %4299 = call float @dx.op.unary.f32(i32 7, float %4298)  ; Saturate(value)
  %4300 = extractvalue %dx.types.CBufRet.f32 %4296, 0
  %4301 = fcmp fast ogt float %4299, %4300
  %4302 = and i1 %4286, %4301
  br i1 %4302, label %4329, label %4303

; <label>:4303                                    ; preds = %4660, %4412, %4329, %4176
  %4304 = phi float [ %4178, %4329 ], [ %4415, %4412 ], [ %4415, %4660 ], [ %4178, %4176 ]
  %4305 = phi float [ %4179, %4329 ], [ %4179, %4412 ], [ %4636, %4660 ], [ %4179, %4176 ]
  %4306 = phi float [ %4180, %4329 ], [ %4180, %4412 ], [ %4634, %4660 ], [ %4180, %4176 ]
  %4307 = phi float [ %4181, %4329 ], [ %4181, %4412 ], [ %4612, %4660 ], [ %4181, %4176 ]
  %4308 = phi float [ %4182, %4329 ], [ %4182, %4412 ], [ %4613, %4660 ], [ %4182, %4176 ]
  %4309 = phi float [ %4183, %4329 ], [ %4183, %4412 ], [ %4614, %4660 ], [ %4183, %4176 ]
  %4310 = phi float [ %4184, %4329 ], [ %4184, %4412 ], [ %4539, %4660 ], [ %4184, %4176 ]
  %4311 = phi float [ %4185, %4329 ], [ %4185, %4412 ], [ %4537, %4660 ], [ %4185, %4176 ]
  %4312 = phi float [ %4186, %4329 ], [ %4186, %4412 ], [ %4582, %4660 ], [ %4186, %4176 ]
  %4313 = phi float [ %4187, %4329 ], [ %4187, %4412 ], [ %4583, %4660 ], [ %4187, %4176 ]
  %4314 = phi float [ %4188, %4329 ], [ %4188, %4412 ], [ %4584, %4660 ], [ %4188, %4176 ]
  %4315 = phi float [ %4189, %4329 ], [ %4189, %4412 ], [ %4670, %4660 ], [ %4189, %4176 ]
  %4316 = phi float [ %4190, %4329 ], [ %4190, %4412 ], [ %4671, %4660 ], [ %4190, %4176 ]
  %4317 = phi float [ %4191, %4329 ], [ %4191, %4412 ], [ %4672, %4660 ], [ %4191, %4176 ]
  %4318 = phi float [ %4192, %4329 ], [ %4192, %4412 ], [ %4518, %4660 ], [ %4192, %4176 ]
  %4319 = phi float [ %4193, %4329 ], [ %4193, %4412 ], [ %4519, %4660 ], [ %4193, %4176 ]
  %4320 = phi float [ %4194, %4329 ], [ %4194, %4412 ], [ %4520, %4660 ], [ %4194, %4176 ]
  %4321 = phi float [ %4195, %4329 ], [ %4195, %4412 ], [ %4592, %4660 ], [ %4195, %4176 ]
  %4322 = phi float [ %4196, %4329 ], [ %4196, %4412 ], [ %4589, %4660 ], [ %4196, %4176 ]
  %4323 = phi float [ %4197, %4329 ], [ %4197, %4412 ], [ %4586, %4660 ], [ %4197, %4176 ]
  %4324 = phi float [ %4198, %4329 ], [ %4198, %4412 ], [ %4535, %4660 ], [ %4198, %4176 ]
  %4325 = phi float [ %4199, %4329 ], [ %4199, %4412 ], [ %4530, %4660 ], [ %4199, %4176 ]
  %4326 = phi float [ %4200, %4329 ], [ %4200, %4412 ], [ %4531, %4660 ], [ %4200, %4176 ]
  %4327 = phi float [ %4201, %4329 ], [ %4201, %4412 ], [ %4532, %4660 ], [ %4201, %4176 ]
  %4328 = icmp eq i32 %4205, 0
  br i1 %4328, label %4673, label %4176

; <label>:4329                                    ; preds = %4176
  %4330 = extractvalue %dx.types.ResRet.f32 %4209, 3
  %4331 = extractvalue %dx.types.ResRet.f32 %4228, 3
  %4332 = extractvalue %dx.types.ResRet.f32 %4228, 1
  %4333 = extractvalue %dx.types.ResRet.f32 %4228, 0
  %4334 = extractvalue %dx.types.ResRet.f32 %4218, 1
  %4335 = extractvalue %dx.types.ResRet.f32 %4218, 0
  %4336 = extractvalue %dx.types.ResRet.i32 %4214, 3
  %4337 = extractvalue %dx.types.ResRet.i32 %4214, 2
  %4338 = bitcast float %4330 to i32
  %4339 = add i32 %4336, 0
  %4340 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4339, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4341 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4342 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4340, %dx.types.Handle %4341, float %4263, float %4270, float undef, float undef, i32 0, i32 0, i32 undef, float %4291, float %4293, float undef, float %4292, float %4294, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4343 = extractvalue %dx.types.ResRet.f32 %4342, 0
  %4344 = fmul fast float %4343, %4335
  %4345 = fadd fast float %4344, %4334
  %4346 = call float @dx.op.unary.f32(i32 7, float %4345)  ; Saturate(value)
  %4347 = fmul fast float %4263, %4223
  %4348 = call float @dx.op.tertiary.f32(i32 46, float %4224, float %4270, float %4347)  ; FMad(a,b,c)
  %4349 = fadd fast float %4348, %4333
  %4350 = fmul fast float %4263, %4225
  %4351 = call float @dx.op.tertiary.f32(i32 46, float %4226, float %4270, float %4350)  ; FMad(a,b,c)
  %4352 = fadd fast float %4351, %4332
  %4353 = fmul fast float %4291, %4223
  %4354 = call float @dx.op.tertiary.f32(i32 46, float %4224, float %4293, float %4353)  ; FMad(a,b,c)
  %4355 = fmul fast float %4291, %4225
  %4356 = call float @dx.op.tertiary.f32(i32 46, float %4226, float %4293, float %4355)  ; FMad(a,b,c)
  %4357 = fmul fast float %4292, %4223
  %4358 = call float @dx.op.tertiary.f32(i32 46, float %4224, float %4294, float %4357)  ; FMad(a,b,c)
  %4359 = fmul fast float %4292, %4225
  %4360 = call float @dx.op.tertiary.f32(i32 46, float %4226, float %4294, float %4359)  ; FMad(a,b,c)
  %4361 = add i32 %4337, 0
  %4362 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4361, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4363 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4362, %dx.types.Handle %4341, float %4349, float %4352, float undef, float undef, i32 0, i32 0, i32 undef, float %4354, float %4356, float undef, float %4358, float %4360, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4364 = extractvalue %dx.types.ResRet.f32 %4363, 0
  %4365 = and i32 %4338, 1024
  %4366 = icmp ne i32 %4365, 0
  %4367 = fcmp fast ogt float %4364, 0x3FE0101020000000
  %4368 = uitofp i1 %4367 to float
  %4369 = select i1 %4366, float %4368, float %4364
  %4370 = and i32 %4338, 8192
  %4371 = icmp ne i32 %4370, 0
  %4372 = select i1 %4371, float %4331, float 1.000000e+00
  %4373 = fmul fast float %4263, 2.000000e+00
  %4374 = fadd fast float %4373, -1.000000e+00
  %4375 = call float @dx.op.unary.f32(i32 6, float %4374)  ; FAbs(value)
  %4376 = fmul fast float %4375, %4256
  %4377 = fsub fast float %4376, %4256
  %4378 = call float @dx.op.unary.f32(i32 7, float %4377)  ; Saturate(value)
  %4379 = fmul fast float %4270, 2.000000e+00
  %4380 = fadd fast float %4379, -1.000000e+00
  %4381 = call float @dx.op.unary.f32(i32 6, float %4380)  ; FAbs(value)
  %4382 = fmul fast float %4381, %4257
  %4383 = fsub fast float %4382, %4257
  %4384 = call float @dx.op.unary.f32(i32 7, float %4383)  ; Saturate(value)
  %4385 = fmul fast float %4282, %4219
  %4386 = fsub fast float %4385, %4219
  %4387 = call float @dx.op.unary.f32(i32 7, float %4386)  ; Saturate(value)
  %4388 = fmul fast float %4346, %4372
  %4389 = fmul fast float %4388, %4343
  %4390 = fmul fast float %4389, %4378
  %4391 = fmul fast float %4390, %4369
  %4392 = fmul fast float %4391, %4384
  %4393 = fmul fast float %4392, %4387
  %4394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4395 = extractvalue %dx.types.CBufRet.f32 %4394, 1
  %4396 = extractvalue %dx.types.CBufRet.f32 %4394, 0
  %4397 = fsub fast float %4299, %4396
  %4398 = fmul fast float %4397, %4395
  %4399 = call float @dx.op.unary.f32(i32 7, float %4398)  ; Saturate(value)
  %4400 = fmul fast float %4393, %4220
  %4401 = fadd fast float %4393, %4220
  %4402 = fmul fast float %4401, %4229
  %4403 = fsub fast float %4402, %4229
  %4404 = call float @dx.op.unary.f32(i32 7, float %4403)  ; Saturate(value)
  %4405 = and i32 %4338, 128
  %4406 = icmp ne i32 %4405, 0
  %4407 = select i1 %4406, float %4404, float %4400
  %4408 = fmul fast float %4407, %4399
  %4409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4410 = extractvalue %dx.types.CBufRet.f32 %4409, 0
  %4411 = fcmp fast ugt float %4408, %4410
  br i1 %4411, label %4412, label %4303

; <label>:4412                                    ; preds = %4329
  %4413 = select i1 %4371, float %4408, float 0.000000e+00
  %4414 = fadd fast float %4413, %4178
  %4415 = call float @dx.op.unary.f32(i32 7, float %4414)  ; Saturate(value)
  br i1 %4371, label %4303, label %4416

; <label>:4416                                    ; preds = %4412
  %4417 = and i32 %4338, 4
  %4418 = and i32 %4338, 8
  %4419 = add i32 %4215, 0
  %4420 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4419, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4421 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4422 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4420, %dx.types.Handle %4421, float %4349, float %4352, float undef, float undef, i32 0, i32 0, i32 undef, float %4354, float %4356, float undef, float %4358, float %4360, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4423 = extractvalue %dx.types.ResRet.f32 %4422, 0
  %4424 = extractvalue %dx.types.ResRet.f32 %4422, 1
  %4425 = extractvalue %dx.types.ResRet.f32 %4422, 2
  %4426 = extractvalue %dx.types.ResRet.f32 %4422, 3
  %4427 = bitcast float %4241 to i32
  %4428 = and i32 %4427, 255
  %4429 = uitofp i32 %4428 to float
  %4430 = lshr i32 %4427, 8
  %4431 = and i32 %4430, 255
  %4432 = uitofp i32 %4431 to float
  %4433 = fmul fast float %4426, %4429
  %4434 = fadd fast float %4433, %4432
  %4435 = fmul fast float %4434, 0x3F70101000000000
  %4436 = add i32 %4216, 0
  %4437 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4436, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4438 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4437, %dx.types.Handle %4421, float %4349, float %4352, float undef, float undef, i32 0, i32 0, i32 undef, float %4354, float %4356, float undef, float %4358, float %4360, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4439 = extractvalue %dx.types.ResRet.f32 %4438, 0
  %4440 = extractvalue %dx.types.ResRet.f32 %4438, 1
  %4441 = extractvalue %dx.types.ResRet.f32 %4438, 2
  %4442 = extractvalue %dx.types.ResRet.f32 %4438, 3
  %4443 = bitcast float %4235 to i32
  %4444 = and i32 %4443, 255
  %4445 = uitofp i32 %4444 to float
  %4446 = lshr i32 %4443, 8
  %4447 = and i32 %4446, 255
  %4448 = uitofp i32 %4447 to float
  %4449 = lshr i32 %4443, 16
  %4450 = and i32 %4449, 255
  %4451 = uitofp i32 %4450 to float
  %4452 = fmul fast float %4451, 0x3F70101000000000
  %4453 = fmul fast float %4439, %4445
  %4454 = fadd fast float %4453, %4448
  %4455 = fmul fast float %4454, 0x3F70101000000000
  %4456 = fadd fast float %4440, -5.000000e-01
  %4457 = fadd fast float %4442, -5.000000e-01
  %4458 = fmul fast float %4456, %4452
  %4459 = fmul fast float %4457, %4452
  %4460 = fadd fast float %4458, 5.000000e-01
  %4461 = fadd fast float %4459, 5.000000e-01
  %4462 = fmul fast float %4423, %4244
  %4463 = fmul fast float %4424, %4245
  %4464 = fmul fast float %4425, %4246
  %4465 = fmul fast float %4460, 2.000000e+00
  %4466 = fadd fast float %4465, -1.000000e+00
  %4467 = fmul fast float %4461, 2.000000e+00
  %4468 = fadd fast float %4467, -1.000000e+00
  %4469 = fadd fast float %4466, %4468
  %4470 = fmul fast float %4469, 5.000000e-01
  %4471 = fsub fast float %4466, %4468
  %4472 = fmul fast float %4471, 5.000000e-01
  %4473 = call float @dx.op.unary.f32(i32 6, float %4470)  ; FAbs(value)
  %4474 = fsub fast float 1.000000e+00, %4473
  %4475 = call float @dx.op.unary.f32(i32 6, float %4472)  ; FAbs(value)
  %4476 = fsub fast float %4474, %4475
  %4477 = call float @dx.op.dot3.f32(i32 55, float %4470, float %4472, float %4476, float %4470, float %4472, float %4476)  ; Dot3(ax,ay,az,bx,by,bz)
  %4478 = call float @dx.op.unary.f32(i32 25, float %4477)  ; Rsqrt(value)
  %4479 = fmul fast float %4470, %4478
  %4480 = fmul fast float %4472, %4478
  %4481 = fmul fast float %4478, %4476
  %4482 = fmul fast float %4481, %4210
  %4483 = fmul fast float %4481, %4211
  %4484 = fmul fast float %4481, %4212
  %4485 = fmul fast float %4479, %4232
  %4486 = fmul fast float %4479, %4233
  %4487 = fmul fast float %4479, %4234
  %4488 = fadd fast float %4485, %4482
  %4489 = fadd fast float %4486, %4483
  %4490 = fadd fast float %4487, %4484
  %4491 = fmul fast float %4480, %4238
  %4492 = fmul fast float %4480, %4239
  %4493 = fmul fast float %4480, %4240
  %4494 = fadd fast float %4488, %4491
  %4495 = fadd fast float %4489, %4492
  %4496 = fadd fast float %4490, %4493
  %4497 = call float @dx.op.dot3.f32(i32 55, float %4494, float %4495, float %4496, float %4494, float %4495, float %4496)  ; Dot3(ax,ay,az,bx,by,bz)
  %4498 = call float @dx.op.unary.f32(i32 25, float %4497)  ; Rsqrt(value)
  %4499 = fmul fast float %4494, %4498
  %4500 = fmul fast float %4495, %4498
  %4501 = fmul fast float %4496, %4498
  %4502 = icmp ne i32 %4418, 0
  %4503 = select i1 %4502, float 1.000000e+00, float 0.000000e+00
  %4504 = fmul fast float %4408, %4503
  %4505 = and i32 %4338, 1
  %4506 = icmp eq i32 %4505, 0
  br i1 %4506, label %4507, label %4511

; <label>:4507                                    ; preds = %4416
  %4508 = fsub fast float %4499, %4192
  %4509 = fsub fast float %4500, %4193
  %4510 = fsub fast float %4501, %4194
  br label %4511

; <label>:4511                                    ; preds = %4507, %4416
  %4512 = phi float [ %4508, %4507 ], [ %4499, %4416 ]
  %4513 = phi float [ %4509, %4507 ], [ %4500, %4416 ]
  %4514 = phi float [ %4510, %4507 ], [ %4501, %4416 ]
  %4515 = fmul float %4514, %4504
  %4516 = fmul float %4513, %4504
  %4517 = fmul float %4512, %4504
  %4518 = fadd fast float %4517, %4192
  %4519 = fadd fast float %4516, %4193
  %4520 = fadd fast float %4515, %4194
  %4521 = icmp ne i32 %4417, 0
  %4522 = select i1 %4521, float 1.000000e+00, float 0.000000e+00
  %4523 = fmul fast float %4408, %4522
  %4524 = fsub fast float %4462, %4199
  %4525 = fsub fast float %4463, %4200
  %4526 = fsub fast float %4464, %4201
  %4527 = fmul fast float %4524, %4523
  %4528 = fmul fast float %4525, %4523
  %4529 = fmul fast float %4526, %4523
  %4530 = fadd fast float %4527, %4199
  %4531 = fadd fast float %4528, %4200
  %4532 = fadd fast float %4529, %4201
  %4533 = fsub fast float %4435, %4198
  %4534 = fmul fast float %4533, %4523
  %4535 = fadd fast float %4534, %4198
  %4536 = fmul fast float %4523, %4185
  %4537 = fsub fast float %4185, %4536
  %4538 = fmul fast float %4523, %4184
  %4539 = fsub fast float %4184, %4538
  %4540 = bitcast float %4253 to i32
  %4541 = lshr i32 %4540, 16
  %4542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4541)  ; LegacyF16ToF32(value)
  %4543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %4544 = extractvalue %dx.types.ResRet.i32 %4543, 0
  %4545 = and i32 %4544, 1
  %4546 = icmp eq i32 %4545, 0
  br i1 %4546, label %4547, label %4572

; <label>:4547                                    ; preds = %4511
  %4548 = fadd fast float %4435, 0xBFB99999A0000000
  %4549 = call float @dx.op.unary.f32(i32 7, float %4548)  ; Saturate(value)
  %4550 = fmul fast float %4549, 0x3FF1C71C80000000
  %4551 = fsub fast float 1.000000e+00, %4550
  %4552 = call float @dx.op.unary.f32(i32 7, float %4551)  ; Saturate(value)
  %4553 = fmul fast float %4552, %4462
  %4554 = fmul fast float %4552, %4463
  %4555 = fmul fast float %4552, %4464
  %4556 = call float @dx.op.unary.f32(i32 7, float %4553)  ; Saturate(value)
  %4557 = call float @dx.op.unary.f32(i32 7, float %4554)  ; Saturate(value)
  %4558 = call float @dx.op.unary.f32(i32 7, float %4555)  ; Saturate(value)
  %4559 = call float @dx.op.binary.f32(i32 35, float %4557, float %4558)  ; FMax(a,b)
  %4560 = call float @dx.op.binary.f32(i32 35, float %4556, float %4559)  ; FMax(a,b)
  %4561 = fcmp fast ogt float %4560, 0.000000e+00
  %4562 = bitcast float %4560 to i32
  %4563 = sub nsw i32 2129859010, %4562
  %4564 = bitcast i32 %4563 to float
  %4565 = select i1 %4561, float %4564, float 0.000000e+00
  %4566 = fmul fast float %4556, %4542
  %4567 = fmul fast float %4557, %4542
  %4568 = fmul fast float %4558, %4542
  %4569 = fmul fast float %4566, %4565
  %4570 = fmul fast float %4567, %4565
  %4571 = fmul fast float %4568, %4565
  br label %4572

; <label>:4572                                    ; preds = %4547, %4511
  %4573 = phi float [ %4542, %4511 ], [ %4569, %4547 ]
  %4574 = phi float [ %4542, %4511 ], [ %4570, %4547 ]
  %4575 = phi float [ %4542, %4511 ], [ %4571, %4547 ]
  %4576 = fsub fast float %4573, %4186
  %4577 = fsub fast float %4574, %4187
  %4578 = fsub fast float %4575, %4188
  %4579 = fmul fast float %4576, %4523
  %4580 = fmul fast float %4577, %4523
  %4581 = fmul fast float %4578, %4523
  %4582 = fadd fast float %4579, %4186
  %4583 = fadd fast float %4580, %4187
  %4584 = fadd fast float %4581, %4188
  %4585 = fadd fast float %4408, %4197
  %4586 = call float @dx.op.unary.f32(i32 7, float %4585)  ; Saturate(value)
  %4587 = fsub fast float %4455, %4196
  %4588 = fmul fast float %4587, %4504
  %4589 = fadd fast float %4588, %4196
  %4590 = fsub fast float %4441, %4195
  %4591 = fmul fast float %4590, %4504
  %4592 = fadd fast float %4591, %4195
  br i1 %4506, label %4601, label %4593

; <label>:4593                                    ; preds = %4572
  %4594 = and i32 %4338, 32768
  %4595 = icmp eq i32 %4594, 0
  br i1 %4595, label %4611, label %4596

; <label>:4596                                    ; preds = %4593
  %4597 = fmul fast float %4504, 1.270000e+02
  %4598 = fadd fast float %4597, %4181
  %4599 = fadd fast float %4597, %4182
  %4600 = fadd fast float %4597, %4183
  br label %4611

; <label>:4601                                    ; preds = %4572
  %4602 = fsub fast float 1.270000e+02, %4181
  %4603 = fsub fast float 1.270000e+02, %4182
  %4604 = fsub fast float 1.270000e+02, %4183
  %4605 = fmul fast float %4504, %4602
  %4606 = fmul fast float %4504, %4603
  %4607 = fmul fast float %4504, %4604
  %4608 = fadd fast float %4605, %4181
  %4609 = fadd fast float %4606, %4182
  %4610 = fadd fast float %4607, %4183
  br label %4611

; <label>:4611                                    ; preds = %4601, %4596, %4593
  %4612 = phi float [ %4598, %4596 ], [ %4181, %4593 ], [ %4608, %4601 ]
  %4613 = phi float [ %4599, %4596 ], [ %4182, %4593 ], [ %4609, %4601 ]
  %4614 = phi float [ %4600, %4596 ], [ %4183, %4593 ], [ %4610, %4601 ]
  %4615 = call float @dx.op.dot3.f32(i32 55, float %4462, float %4463, float %4464, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4617 = extractvalue %dx.types.CBufRet.f32 %4616, 0
  %4618 = extractvalue %dx.types.CBufRet.f32 %4616, 1
  %4619 = fmul fast float %4618, %4615
  %4620 = fadd fast float %4619, %4617
  %4621 = call float @dx.op.unary.f32(i32 7, float %4620)  ; Saturate(value)
  %4622 = bitcast float %4247 to i32
  %4623 = and i32 %4622, 65535
  %4624 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4623)  ; LegacyF16ToF32(value)
  %4625 = lshr i32 %4622, 16
  %4626 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4625)  ; LegacyF16ToF32(value)
  %4627 = fcmp fast oge float %4624, 0.000000e+00
  %4628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4629 = extractvalue %dx.types.CBufRet.f32 %4628, 0
  %4630 = select i1 %4627, float %4624, float %4629
  %4631 = fadd fast float %4630, %4626
  %4632 = fsub fast float %4621, %4180
  %4633 = fmul fast float %4632, %4408
  %4634 = fadd fast float %4633, %4180
  %4635 = fmul fast float %4631, %4408
  %4636 = call float @dx.op.binary.f32(i32 35, float %4179, float %4635)  ; FMax(a,b)
  %4637 = and i32 %4338, 16
  %4638 = icmp eq i32 %4637, 0
  br i1 %4638, label %4660, label %4639

; <label>:4639                                    ; preds = %4611
  %4640 = add i32 %4250, 0
  %4641 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4640, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4642 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4641, %dx.types.Handle %4421, float %4349, float %4352, float undef, float undef, i32 0, i32 0, i32 undef, float %4354, float %4356, float undef, float %4358, float %4360, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4643 = extractvalue %dx.types.ResRet.f32 %4642, 0
  %4644 = extractvalue %dx.types.ResRet.f32 %4642, 1
  %4645 = extractvalue %dx.types.ResRet.f32 %4642, 2
  %4646 = and i32 %4540, 65535
  %4647 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4646)  ; LegacyF16ToF32(value)
  %4648 = fmul fast float %4643, %4244
  %4649 = fmul fast float %4644, %4245
  %4650 = fmul fast float %4645, %4246
  %4651 = and i32 %4338, 16384
  %4652 = icmp ne i32 %4651, 0
  %4653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4654 = extractvalue %dx.types.CBufRet.f32 %4653, 0
  %4655 = select i1 %4652, float %4654, float 1.000000e+00
  %4656 = fmul fast float %4655, %4647
  %4657 = fmul fast float %4648, %4656
  %4658 = fmul fast float %4649, %4656
  %4659 = fmul fast float %4650, %4656
  br label %4660

; <label>:4660                                    ; preds = %4639, %4611
  %4661 = phi float [ %4657, %4639 ], [ 0.000000e+00, %4611 ]
  %4662 = phi float [ %4658, %4639 ], [ 0.000000e+00, %4611 ]
  %4663 = phi float [ %4659, %4639 ], [ 0.000000e+00, %4611 ]
  %4664 = fsub fast float %4661, %4189
  %4665 = fsub fast float %4662, %4190
  %4666 = fsub fast float %4663, %4191
  %4667 = fmul fast float %4664, %4408
  %4668 = fmul fast float %4665, %4408
  %4669 = fmul fast float %4666, %4408
  %4670 = fadd fast float %4667, %4189
  %4671 = fadd fast float %4668, %4190
  %4672 = fadd fast float %4669, %4191
  br label %4303

; <label>:4673                                    ; preds = %4303
  br label %4674

; <label>:4674                                    ; preds = %4673, %4113
  %4675 = phi float [ 0.000000e+00, %4113 ], [ %4304, %4673 ]
  %4676 = phi float [ %4057, %4113 ], [ %4305, %4673 ]
  %4677 = phi float [ %4036, %4113 ], [ %4306, %4673 ]
  %4678 = phi float [ %4026, %4113 ], [ %4307, %4673 ]
  %4679 = phi float [ %4027, %4113 ], [ %4308, %4673 ]
  %4680 = phi float [ %4028, %4113 ], [ %4309, %4673 ]
  %4681 = phi float [ 0.000000e+00, %4113 ], [ %4310, %4673 ]
  %4682 = phi float [ 0.000000e+00, %4113 ], [ %4311, %4673 ]
  %4683 = phi float [ %4029, %4113 ], [ %4312, %4673 ]
  %4684 = phi float [ %4030, %4113 ], [ %4313, %4673 ]
  %4685 = phi float [ %4031, %4113 ], [ %4314, %4673 ]
  %4686 = phi float [ %4079, %4113 ], [ %4315, %4673 ]
  %4687 = phi float [ %4081, %4113 ], [ %4316, %4673 ]
  %4688 = phi float [ %4083, %4113 ], [ %4317, %4673 ]
  %4689 = phi float [ %4109, %4113 ], [ %4318, %4673 ]
  %4690 = phi float [ %4110, %4113 ], [ %4319, %4673 ]
  %4691 = phi float [ %4111, %4113 ], [ %4320, %4673 ]
  %4692 = phi float [ %4034, %4113 ], [ %4321, %4673 ]
  %4693 = phi float [ %4033, %4113 ], [ %4322, %4673 ]
  %4694 = phi float [ 0.000000e+00, %4113 ], [ %4323, %4673 ]
  %4695 = phi float [ %4032, %4113 ], [ %4324, %4673 ]
  %4696 = phi float [ %4064, %4113 ], [ %4325, %4673 ]
  %4697 = phi float [ %4065, %4113 ], [ %4326, %4673 ]
  %4698 = phi float [ %4066, %4113 ], [ %4327, %4673 ]
  %4699 = call float @dx.op.dot3.f32(i32 55, float %4689, float %4690, float %4691, float %4689, float %4690, float %4691)  ; Dot3(ax,ay,az,bx,by,bz)
  %4700 = call float @dx.op.unary.f32(i32 25, float %4699)  ; Rsqrt(value)
  %4701 = fmul fast float %4700, %4689
  %4702 = fmul fast float %4700, %4690
  %4703 = fmul fast float %4700, %4691
  %4704 = fadd fast float %4694, %1206
  %4705 = call float @dx.op.unary.f32(i32 7, float %4704)  ; Saturate(value)
  %4706 = call float @dx.op.dot3.f32(i32 55, float %4701, float %4702, float %4703, float %4701, float %4702, float %4703)  ; Dot3(ax,ay,az,bx,by,bz)
  %4707 = call float @dx.op.unary.f32(i32 25, float %4706)  ; Rsqrt(value)
  %4708 = fmul fast float %4707, %4701
  %4709 = fmul fast float %4707, %4702
  %4710 = fmul fast float %4707, %4703
  br label %4711

; <label>:4711                                    ; preds = %4674, %4017
  %4712 = phi float [ %4708, %4674 ], [ %4109, %4017 ]
  %4713 = phi float [ %4709, %4674 ], [ %4110, %4017 ]
  %4714 = phi float [ %4710, %4674 ], [ %4111, %4017 ]
  %4715 = phi float [ %4696, %4674 ], [ %4064, %4017 ]
  %4716 = phi float [ %4697, %4674 ], [ %4065, %4017 ]
  %4717 = phi float [ %4698, %4674 ], [ %4066, %4017 ]
  %4718 = phi float [ %4686, %4674 ], [ %4079, %4017 ]
  %4719 = phi float [ %4687, %4674 ], [ %4081, %4017 ]
  %4720 = phi float [ %4688, %4674 ], [ %4083, %4017 ]
  %4721 = phi float [ %4678, %4674 ], [ %4026, %4017 ]
  %4722 = phi float [ %4679, %4674 ], [ %4027, %4017 ]
  %4723 = phi float [ %4680, %4674 ], [ %4028, %4017 ]
  %4724 = phi float [ %4683, %4674 ], [ %4029, %4017 ]
  %4725 = phi float [ %4684, %4674 ], [ %4030, %4017 ]
  %4726 = phi float [ %4685, %4674 ], [ %4031, %4017 ]
  %4727 = phi float [ %4695, %4674 ], [ %4032, %4017 ]
  %4728 = phi float [ %4705, %4674 ], [ %1206, %4017 ]
  %4729 = phi float [ %4693, %4674 ], [ %4033, %4017 ]
  %4730 = phi float [ %4692, %4674 ], [ %4034, %4017 ]
  %4731 = phi float [ %4682, %4674 ], [ 0.000000e+00, %4017 ]
  %4732 = phi float [ %4681, %4674 ], [ 0.000000e+00, %4017 ]
  %4733 = phi float [ %4675, %4674 ], [ 0.000000e+00, %4017 ]
  %4734 = phi float [ %4676, %4674 ], [ %4057, %4017 ]
  %4735 = phi float [ %4677, %4674 ], [ %4036, %4017 ]
  %4736 = add i32 %49, 392
  %4737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4736, i32 undef)  ; BufferLoad(srv,index,wot)
  %4738 = extractvalue %dx.types.ResRet.i32 %4737, 0
  %4739 = extractvalue %dx.types.ResRet.i32 %4737, 1
  %4740 = extractvalue %dx.types.ResRet.i32 %4737, 2
  %4741 = extractvalue %dx.types.ResRet.i32 %4737, 3
  %4742 = bitcast i32 %4738 to float
  %4743 = bitcast i32 %4739 to float
  %4744 = bitcast i32 %4740 to float
  %4745 = bitcast i32 %4741 to float
  %4746 = fsub fast float %4715, %4742
  %4747 = fsub fast float %4716, %4743
  %4748 = fsub fast float %4717, %4744
  %4749 = fmul fast float %4746, %235
  %4750 = fmul fast float %4747, %235
  %4751 = fmul fast float %4748, %235
  %4752 = fadd fast float %4749, %4742
  %4753 = fadd fast float %4750, %4743
  %4754 = fadd fast float %4751, %4744
  %4755 = fsub fast float %4728, %4745
  %4756 = fmul fast float %4755, %235
  %4757 = fadd fast float %4756, %4745
  %4758 = fadd fast float %4727, 0xBFB99999A0000000
  %4759 = call float @dx.op.unary.f32(i32 7, float %4758)  ; Saturate(value)
  %4760 = fmul fast float %4759, 0x3FF1C71C80000000
  %4761 = call float @dx.op.binary.f32(i32 36, float %4727, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4762 = fsub fast float 1.000000e+00, %4760
  %4763 = call float @dx.op.unary.f32(i32 7, float %4762)  ; Saturate(value)
  %4764 = fmul fast float %4752, %4763
  %4765 = fmul fast float %4753, %4763
  %4766 = fmul fast float %4754, %4763
  %4767 = call float @dx.op.unary.f32(i32 7, float %4764)  ; Saturate(value)
  %4768 = call float @dx.op.unary.f32(i32 7, float %4765)  ; Saturate(value)
  %4769 = call float @dx.op.unary.f32(i32 7, float %4766)  ; Saturate(value)
  %4770 = fmul fast float %4752, %4760
  %4771 = fmul fast float %4753, %4760
  %4772 = fmul fast float %4754, %4760
  %4773 = fadd fast float %4770, %4761
  %4774 = fadd fast float %4771, %4761
  %4775 = fadd fast float %4772, %4761
  %4776 = call float @dx.op.unary.f32(i32 7, float %4773)  ; Saturate(value)
  %4777 = call float @dx.op.unary.f32(i32 7, float %4774)  ; Saturate(value)
  %4778 = call float @dx.op.unary.f32(i32 7, float %4775)  ; Saturate(value)
  %4779 = call float @dx.op.unary.f32(i32 7, float %4729)  ; Saturate(value)
  %4780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %4781 = extractvalue %dx.types.ResRet.i32 %4780, 0
  %4782 = and i32 %4781, 1
  %4783 = icmp eq i32 %4782, 0
  br i1 %4783, label %4798, label %4784

; <label>:4784                                    ; preds = %4711
  %4785 = call float @dx.op.binary.f32(i32 35, float %4768, float %4769)  ; FMax(a,b)
  %4786 = call float @dx.op.binary.f32(i32 35, float %4767, float %4785)  ; FMax(a,b)
  %4787 = fcmp fast ogt float %4786, 0.000000e+00
  %4788 = bitcast float %4786 to i32
  %4789 = sub nsw i32 2129859010, %4788
  %4790 = bitcast i32 %4789 to float
  %4791 = select i1 %4787, float %4790, float 0.000000e+00
  %4792 = fmul fast float %4767, %4724
  %4793 = fmul fast float %4768, %4725
  %4794 = fmul fast float %4769, %4726
  %4795 = fmul fast float %4792, %4791
  %4796 = fmul fast float %4793, %4791
  %4797 = fmul fast float %4794, %4791
  br label %4798

; <label>:4798                                    ; preds = %4784, %4711
  %4799 = phi float [ %4795, %4784 ], [ %4724, %4711 ]
  %4800 = phi float [ %4796, %4784 ], [ %4725, %4711 ]
  %4801 = phi float [ %4797, %4784 ], [ %4726, %4711 ]
  %4802 = call float @dx.op.binary.f32(i32 36, float %4721, float 1.270000e+02)  ; FMin(a,b)
  %4803 = call float @dx.op.binary.f32(i32 36, float %4722, float 1.270000e+02)  ; FMin(a,b)
  %4804 = call float @dx.op.binary.f32(i32 36, float %4723, float 1.270000e+02)  ; FMin(a,b)
  %4805 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4806 = extractvalue %dx.types.CBufRet.i32 %4805, 3
  %4807 = and i32 %4806, 8
  %4808 = icmp ne i32 %4807, 0
  %4809 = call float @dx.op.binary.f32(i32 35, float %4767, float %4752)  ; FMax(a,b)
  %4810 = call float @dx.op.binary.f32(i32 35, float %4768, float %4752)  ; FMax(a,b)
  %4811 = call float @dx.op.binary.f32(i32 35, float %4769, float %4752)  ; FMax(a,b)
  %4812 = call float @dx.op.dot3.f32(i32 55, float %4767, float %4768, float %4769, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4813 = select i1 %294, float %4752, float %4767
  %4814 = select i1 %294, float %4812, float %4768
  %4815 = select i1 %294, float 1.000000e+00, float %4769
  %4816 = select i1 %4808, float %4809, float %4813
  %4817 = select i1 %4808, float %4810, float %4814
  %4818 = select i1 %4808, float %4811, float %4815
  %4819 = call float @dx.op.dot3.f32(i32 55, float %4799, float %4800, float %4801, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4820 = select i1 %294, float %4819, float %4799
  %4821 = select i1 %294, float %4819, float %4800
  %4822 = select i1 %294, float %4819, float %4801
  %4823 = and i32 %270, 3
  %4824 = select i1 %264, i32 %4823, i32 0
  %4825 = icmp eq i32 %4824, 1
  br i1 %4825, label %4826, label %4902

; <label>:4826                                    ; preds = %4798
  %4827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4828 = extractvalue %dx.types.CBufRet.f32 %4827, 0
  %4829 = extractvalue %dx.types.CBufRet.f32 %4827, 1
  %4830 = fadd fast float %4828, %188
  %4831 = fadd fast float %4829, %189
  %4832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4833 = extractvalue %dx.types.CBufRet.f32 %4832, 0
  %4834 = extractvalue %dx.types.CBufRet.f32 %4832, 1
  %4835 = fsub fast float %4830, %4833
  %4836 = fsub fast float %4831, %4834
  %4837 = fmul fast float %4835, %4835
  %4838 = fmul fast float %4836, %4836
  %4839 = fadd fast float %4837, %4838
  %4840 = call float @dx.op.unary.f32(i32 24, float %4839)  ; Sqrt(value)
  %4841 = extractvalue %dx.types.CBufRet.f32 %4832, 2
  %4842 = fcmp fast olt float %4840, %4841
  br i1 %4842, label %4843, label %4896

; <label>:4843                                    ; preds = %4826
  %4844 = extractvalue %dx.types.CBufRet.f32 %4827, 2
  %4845 = fadd fast float %4844, %190
  %4846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4847 = extractvalue %dx.types.CBufRet.f32 %4846, 0
  %4848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4849 = extractvalue %dx.types.CBufRet.f32 %4848, 0
  %4850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4851 = extractvalue %dx.types.CBufRet.f32 %4850, 0
  %4852 = extractvalue %dx.types.CBufRet.f32 %4846, 1
  %4853 = extractvalue %dx.types.CBufRet.f32 %4848, 1
  %4854 = extractvalue %dx.types.CBufRet.f32 %4850, 1
  %4855 = extractvalue %dx.types.CBufRet.f32 %4846, 3
  %4856 = extractvalue %dx.types.CBufRet.f32 %4848, 3
  %4857 = extractvalue %dx.types.CBufRet.f32 %4850, 3
  %4858 = fadd fast float %4855, %4830
  %4859 = fadd fast float %4856, %4831
  %4860 = fadd fast float %4845, %4857
  %4861 = fmul fast float %4858, %4847
  %4862 = call float @dx.op.tertiary.f32(i32 46, float %4859, float %4849, float %4861)  ; FMad(a,b,c)
  %4863 = call float @dx.op.tertiary.f32(i32 46, float %4860, float %4851, float %4862)  ; FMad(a,b,c)
  %4864 = fmul fast float %4858, %4852
  %4865 = call float @dx.op.tertiary.f32(i32 46, float %4859, float %4853, float %4864)  ; FMad(a,b,c)
  %4866 = call float @dx.op.tertiary.f32(i32 46, float %4860, float %4854, float %4865)  ; FMad(a,b,c)
  %4867 = fsub fast float %4863, %4855
  %4868 = fsub fast float %4866, %4856
  %4869 = fsub fast float %4867, %4833
  %4870 = fadd fast float %4869, %4841
  %4871 = fsub fast float %4868, %4834
  %4872 = fadd fast float %4871, %4841
  %4873 = extractvalue %dx.types.CBufRet.f32 %4832, 3
  %4874 = fmul fast float %4870, %4873
  %4875 = fmul fast float %4872, %4873
  %4876 = call float @dx.op.unary.f32(i32 7, float %4874)  ; Saturate(value)
  %4877 = call float @dx.op.unary.f32(i32 7, float %4875)  ; Saturate(value)
  %4878 = fsub fast float 1.000000e+00, %4876
  %4879 = fsub fast float 1.000000e+00, %4877
  %4880 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %43, float %4878, float %4879, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4881 = extractvalue %dx.types.ResRet.f32 %4880, 0
  %4882 = fcmp fast ugt float %4881, 0.000000e+00
  br i1 %4882, label %4883, label %4896

; <label>:4883                                    ; preds = %4843
  %4884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4885 = extractvalue %dx.types.CBufRet.f32 %4884, 2
  %4886 = fmul fast float %4885, %4881
  %4887 = extractvalue %dx.types.CBufRet.f32 %4884, 3
  %4888 = fadd fast float %4887, %4886
  %4889 = extractvalue %dx.types.CBufRet.f32 %4850, 2
  %4890 = fadd fast float %4888, %4857
  %4891 = fmul fast float %4863, %4851
  %4892 = call float @dx.op.tertiary.f32(i32 46, float %4866, float %4854, float %4891)  ; FMad(a,b,c)
  %4893 = call float @dx.op.tertiary.f32(i32 46, float %4890, float %4889, float %4892)  ; FMad(a,b,c)
  %4894 = fsub fast float %4893, %4857
  %4895 = fsub fast float %4894, %4844
  br label %4896

; <label>:4896                                    ; preds = %4883, %4843, %4826
  %4897 = phi i1 [ true, %4883 ], [ false, %4843 ], [ false, %4826 ]
  %4898 = phi float [ %4895, %4883 ], [ -1.310720e+05, %4843 ], [ -1.310720e+05, %4826 ]
  %4899 = fsub fast float %4898, %190
  %4900 = call float @dx.op.unary.f32(i32 7, float %4899)  ; Saturate(value)
  %4901 = select i1 %4897, float %4900, float 1.000000e+00
  br label %4902

; <label>:4902                                    ; preds = %4896, %4798
  %4903 = phi float [ %4901, %4896 ], [ 0.000000e+00, %4798 ]
  %4904 = icmp eq i32 %4824, 3
  %4905 = select i1 %4904, float 1.000000e+00, float %4903
  %4906 = call float @dx.op.binary.f32(i32 35, float %4733, float %4905)  ; FMax(a,b)
  %4907 = fcmp fast olt float %4905, 1.000000e+00
  %4908 = fcmp uge float %65, 0.000000e+00
  %4909 = and i1 %4908, %4907
  br i1 %4909, label %4910, label %4920

; <label>:4910                                    ; preds = %4902
  %4911 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %41, float %65, float %66, float %67, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4912 = extractvalue %dx.types.ResRet.f32 %4911, 0
  %4913 = extractvalue %dx.types.ResRet.f32 %4911, 1
  %4914 = extractvalue %dx.types.ResRet.f32 %4911, 2
  %4915 = fadd fast float %4912, %4906
  %4916 = fcmp ule float %64, 0.000000e+00
  %4917 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4918 = select i1 %4916, float %4917, float 1.000000e+00
  %4919 = fmul fast float %4918, %4914
  br label %4920

; <label>:4920                                    ; preds = %4910, %4902
  %4921 = phi float [ %4915, %4910 ], [ %4906, %4902 ]
  %4922 = phi float [ %4913, %4910 ], [ 0.000000e+00, %4902 ]
  %4923 = phi float [ %4919, %4910 ], [ 0.000000e+00, %4902 ]
  %4924 = call float @dx.op.unary.f32(i32 7, float %4921)  ; Saturate(value)
  %4925 = call float @dx.op.unary.f32(i32 7, float %4922)  ; Saturate(value)
  %4926 = call float @dx.op.unary.f32(i32 7, float %4923)  ; Saturate(value)
  %4927 = fcmp fast une float %4925, 0.000000e+00
  %4928 = fcmp fast une float %4926, 0.000000e+00
  %4929 = or i1 %4927, %4928
  br i1 %4929, label %4930, label %5505

; <label>:4930                                    ; preds = %4920
  br i1 %4927, label %4931, label %5204

; <label>:4931                                    ; preds = %4930
  %4932 = call float @dx.op.unary.f32(i32 23, float %4730)  ; Log(value)
  %4933 = fmul fast float %4932, 4.000000e+00
  %4934 = call float @dx.op.unary.f32(i32 21, float %4933)  ; Exp(value)
  %4935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4936 = extractvalue %dx.types.CBufRet.f32 %4935, 0
  %4937 = fmul fast float %4936, %52
  %4938 = fmul fast float %4936, %53
  %4939 = fmul fast float %4936, %54
  %4940 = call float @dx.op.unary.f32(i32 6, float %61)  ; FAbs(value)
  %4941 = call float @dx.op.unary.f32(i32 6, float %62)  ; FAbs(value)
  %4942 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %4943 = call float @dx.op.unary.f32(i32 23, float %4940)  ; Log(value)
  %4944 = call float @dx.op.unary.f32(i32 23, float %4941)  ; Log(value)
  %4945 = call float @dx.op.unary.f32(i32 23, float %4942)  ; Log(value)
  %4946 = fmul fast float %4943, 4.000000e+00
  %4947 = fmul fast float %4944, 4.000000e+00
  %4948 = fmul fast float %4945, 4.000000e+00
  %4949 = call float @dx.op.unary.f32(i32 21, float %4946)  ; Exp(value)
  %4950 = call float @dx.op.unary.f32(i32 21, float %4947)  ; Exp(value)
  %4951 = call float @dx.op.unary.f32(i32 21, float %4948)  ; Exp(value)
  %4952 = fadd fast float %4950, %4949
  %4953 = fadd fast float %4952, %4951
  %4954 = fdiv fast float 1.000000e+00, %4953
  %4955 = fmul fast float %4954, %4949
  %4956 = fcmp fast ogt float %61, 0.000000e+00
  %4957 = fcmp fast ogt float %62, 0.000000e+00
  %4958 = fcmp fast ogt float %63, 0.000000e+00
  %4959 = fcmp fast olt float %61, 0.000000e+00
  %4960 = fcmp fast olt float %62, 0.000000e+00
  %4961 = fcmp fast olt float %63, 0.000000e+00
  %4962 = zext i1 %4956 to i32
  %4963 = zext i1 %4957 to i32
  %4964 = zext i1 %4958 to i32
  %4965 = zext i1 %4959 to i32
  %4966 = zext i1 %4960 to i32
  %4967 = zext i1 %4961 to i32
  %4968 = sub nsw i32 %4962, %4965
  %4969 = sub nsw i32 %4963, %4966
  %4970 = sub nsw i32 %4964, %4967
  %4971 = call float @dx.op.unary.f32(i32 83, float %4937)  ; DerivCoarseX(value)
  %4972 = call float @dx.op.unary.f32(i32 83, float %4938)  ; DerivCoarseX(value)
  %4973 = call float @dx.op.unary.f32(i32 83, float %4939)  ; DerivCoarseX(value)
  %4974 = call float @dx.op.unary.f32(i32 84, float %4937)  ; DerivCoarseY(value)
  %4975 = call float @dx.op.unary.f32(i32 84, float %4938)  ; DerivCoarseY(value)
  %4976 = call float @dx.op.unary.f32(i32 84, float %4939)  ; DerivCoarseY(value)
  %4977 = fcmp fast ole float %305, %4955
  %4978 = fmul fast float %4954, %4952
  %4979 = fcmp fast ole float %305, %4978
  %4980 = select i1 %4979, float %4939, float %4937
  %4981 = select i1 %4979, float %4937, float %4938
  %4982 = select i1 %4977, float %4938, float %4980
  %4983 = select i1 %4977, float %4939, float %4981
  %4984 = select i1 %4979, float %4973, float %4971
  %4985 = select i1 %4979, float %4971, float %4972
  %4986 = select i1 %4977, float %4972, float %4984
  %4987 = select i1 %4977, float %4973, float %4985
  %4988 = select i1 %4979, float %4976, float %4974
  %4989 = select i1 %4979, float %4974, float %4975
  %4990 = select i1 %4977, float %4975, float %4988
  %4991 = select i1 %4977, float %4976, float %4989
  %4992 = call float @dx.op.unary.f32(i32 27, float %4982)  ; Round_ni(value)
  %4993 = call float @dx.op.unary.f32(i32 27, float %4983)  ; Round_ni(value)
  %4994 = fptosi float %4992 to i32
  %4995 = fptosi float %4993 to i32
  %4996 = xor i32 %4995, %4994
  %4997 = sitofp i32 %4996 to float
  %4998 = fptosi float %4997 to i32
  %4999 = sitofp i32 %4998 to float
  %5000 = fmul fast float %4999, 0x3FE3C6EF40000000
  %5001 = frem fast float %4992, 2.560000e+02
  %5002 = frem fast float %4993, 2.560000e+02
  %5003 = fptoui float %5001 to i32
  %5004 = fptoui float %5002 to i32
  %5005 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %5003, i32 %5004, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5006 = extractvalue %dx.types.ResRet.f32 %5005, 0
  %5007 = extractvalue %dx.types.ResRet.f32 %5005, 1
  %5008 = extractvalue %dx.types.ResRet.f32 %5005, 2
  %5009 = fadd fast float %5006, %5000
  %5010 = fadd fast float %5007, %5000
  %5011 = fadd fast float %5008, %5000
  %5012 = call float @dx.op.unary.f32(i32 22, float %5009)  ; Frc(value)
  %5013 = call float @dx.op.unary.f32(i32 22, float %5010)  ; Frc(value)
  %5014 = call float @dx.op.unary.f32(i32 22, float %5011)  ; Frc(value)
  %5015 = fmul fast float %5014, 0x401921FB60000000
  %5016 = call float @dx.op.unary.f32(i32 13, float %5015)  ; Sin(value)
  %5017 = call float @dx.op.unary.f32(i32 12, float %5015)  ; Cos(value)
  %5018 = fsub fast float -0.000000e+00, %5017
  %5019 = fmul fast float %5017, %4982
  %5020 = call float @dx.op.tertiary.f32(i32 46, float %5016, float %4983, float %5019)  ; FMad(a,b,c)
  %5021 = fmul fast float %5016, %4982
  %5022 = call float @dx.op.tertiary.f32(i32 46, float %5018, float %4983, float %5021)  ; FMad(a,b,c)
  %5023 = fadd fast float %5020, %5012
  %5024 = fadd fast float %5022, %5013
  %5025 = extractvalue %dx.types.CBufRet.f32 %4935, 3
  %5026 = bitcast float %5025 to i32
  %5027 = icmp eq i32 %5026, 0
  br i1 %5027, label %5066, label %5028

; <label>:5028                                    ; preds = %4931
  %5029 = add i32 %5026, 0
  %5030 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5029, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5031 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5030, %dx.types.Handle %106, float %5023, float %5024, float undef, float undef, i32 0, i32 0, i32 undef, float %4986, float %4987, float undef, float %4990, float %4991, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5032 = extractvalue %dx.types.ResRet.f32 %5031, 0
  %5033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5034 = extractvalue %dx.types.CBufRet.f32 %5033, 1
  %5035 = extractvalue %dx.types.CBufRet.f32 %5033, 2
  %5036 = fsub fast float 1.000000e+00, %4925
  %5037 = call float @dx.op.binary.f32(i32 35, float %5036, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5038 = bitcast float %4925 to i32
  %5039 = sitofp i32 %5038 to float
  %5040 = fadd fast float %5039, 0xC1CFBF8940000000
  %5041 = fmul fast float %5035, %5040
  %5042 = fadd fast float %5041, 0x41CFBF8940000000
  %5043 = fptosi float %5042 to i32
  %5044 = bitcast i32 %5043 to float
  %5045 = bitcast float %5037 to i32
  %5046 = sitofp i32 %5045 to float
  %5047 = fadd fast float %5046, 0xC1CFBF8940000000
  %5048 = fmul fast float %5047, %5035
  %5049 = fadd fast float %5048, 0x41CFBF8940000000
  %5050 = fptosi float %5049 to i32
  %5051 = bitcast i32 %5050 to float
  %5052 = fmul fast float %5044, %5034
  %5053 = fmul fast float %5051, %5034
  %5054 = fsub fast float %5037, %5052
  %5055 = fadd fast float %5053, %5037
  %5056 = call float @dx.op.unary.f32(i32 7, float %5054)  ; Saturate(value)
  %5057 = call float @dx.op.unary.f32(i32 7, float %5055)  ; Saturate(value)
  %5058 = fsub fast float %5032, %5056
  %5059 = fsub fast float %5057, %5056
  %5060 = bitcast float %5059 to i32
  %5061 = sub nsw i32 2129859010, %5060
  %5062 = bitcast i32 %5061 to float
  %5063 = fmul fast float %5062, %5058
  %5064 = call float @dx.op.unary.f32(i32 7, float %5063)  ; Saturate(value)
  %5065 = fcmp fast olt float %5064, 0x3F70101020000000
  br i1 %5065, label %5204, label %5066

; <label>:5066                                    ; preds = %5028, %4931
  %5067 = phi float [ %5064, %5028 ], [ %4925, %4931 ]
  %5068 = fmul fast float %5067, %4934
  %5069 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5070 = extractvalue %dx.types.CBufRet.i32 %5069, 1
  %5071 = extractvalue %dx.types.CBufRet.i32 %5069, 0
  %5072 = add i32 %5071, 0
  %5073 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5072, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5074 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5073, %dx.types.Handle %105, float %5023, float %5024, float undef, float undef, i32 0, i32 0, i32 undef, float %4986, float %4987, float undef, float %4990, float %4991, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5075 = extractvalue %dx.types.ResRet.f32 %5074, 0
  %5076 = extractvalue %dx.types.ResRet.f32 %5074, 1
  %5077 = extractvalue %dx.types.ResRet.f32 %5074, 2
  %5078 = extractvalue %dx.types.ResRet.f32 %5074, 3
  %5079 = and i32 %5070, 255
  %5080 = uitofp i32 %5079 to float
  %5081 = lshr i32 %5070, 8
  %5082 = and i32 %5081, 255
  %5083 = uitofp i32 %5082 to float
  %5084 = fmul fast float %5078, %5080
  %5085 = fadd fast float %5084, %5083
  %5086 = fmul fast float %5085, 0x3F70101000000000
  %5087 = fadd fast float %5086, 0xBFB99999A0000000
  %5088 = call float @dx.op.unary.f32(i32 7, float %5087)  ; Saturate(value)
  %5089 = fmul fast float %5088, 0x3FF1C71C80000000
  %5090 = call float @dx.op.binary.f32(i32 36, float %5086, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5091 = fsub fast float 1.000000e+00, %5089
  %5092 = call float @dx.op.unary.f32(i32 7, float %5091)  ; Saturate(value)
  %5093 = fmul fast float %5092, %5075
  %5094 = fmul fast float %5092, %5076
  %5095 = fmul fast float %5092, %5077
  %5096 = call float @dx.op.unary.f32(i32 7, float %5093)  ; Saturate(value)
  %5097 = call float @dx.op.unary.f32(i32 7, float %5094)  ; Saturate(value)
  %5098 = call float @dx.op.unary.f32(i32 7, float %5095)  ; Saturate(value)
  %5099 = fmul fast float %5089, %5075
  %5100 = fmul fast float %5089, %5076
  %5101 = fmul fast float %5089, %5077
  %5102 = fadd fast float %5099, %5090
  %5103 = fadd fast float %5100, %5090
  %5104 = fadd fast float %5101, %5090
  %5105 = call float @dx.op.unary.f32(i32 7, float %5102)  ; Saturate(value)
  %5106 = call float @dx.op.unary.f32(i32 7, float %5103)  ; Saturate(value)
  %5107 = call float @dx.op.unary.f32(i32 7, float %5104)  ; Saturate(value)
  %5108 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5109 = extractvalue %dx.types.CBufRet.i32 %5108, 3
  %5110 = extractvalue %dx.types.CBufRet.i32 %5108, 2
  %5111 = add i32 %5110, 0
  %5112 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5111, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5113 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5112, %dx.types.Handle %105, float %5023, float %5024, float undef, float undef, i32 0, i32 0, i32 undef, float %4986, float %4987, float undef, float %4990, float %4991, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5114 = extractvalue %dx.types.ResRet.f32 %5113, 0
  %5115 = extractvalue %dx.types.ResRet.f32 %5113, 1
  %5116 = extractvalue %dx.types.ResRet.f32 %5113, 2
  %5117 = extractvalue %dx.types.ResRet.f32 %5113, 3
  %5118 = and i32 %5109, 255
  %5119 = uitofp i32 %5118 to float
  %5120 = lshr i32 %5109, 8
  %5121 = and i32 %5120, 255
  %5122 = uitofp i32 %5121 to float
  %5123 = lshr i32 %5109, 16
  %5124 = and i32 %5123, 255
  %5125 = uitofp i32 %5124 to float
  %5126 = fmul fast float %5125, 0x3F70101000000000
  %5127 = fmul fast float %5114, %5119
  %5128 = fadd fast float %5127, %5122
  %5129 = fmul fast float %5128, 0x3F70101000000000
  %5130 = fadd fast float %5115, -5.000000e-01
  %5131 = fadd fast float %5117, -5.000000e-01
  %5132 = fmul fast float %5130, %5126
  %5133 = fmul fast float %5131, %5126
  %5134 = fadd fast float %5132, 5.000000e-01
  %5135 = fadd fast float %5133, 5.000000e-01
  %5136 = fmul fast float %5134, 2.000000e+00
  %5137 = fadd fast float %5136, -1.000000e+00
  %5138 = fmul fast float %5135, 2.000000e+00
  %5139 = fadd fast float %5138, -1.000000e+00
  %5140 = fadd fast float %5137, %5139
  %5141 = fmul fast float %5140, 5.000000e-01
  %5142 = fsub fast float %5137, %5139
  %5143 = fmul fast float %5142, 5.000000e-01
  %5144 = call float @dx.op.unary.f32(i32 6, float %5141)  ; FAbs(value)
  %5145 = fsub fast float 1.000000e+00, %5144
  %5146 = call float @dx.op.unary.f32(i32 6, float %5143)  ; FAbs(value)
  %5147 = fsub fast float %5145, %5146
  %5148 = call float @dx.op.dot3.f32(i32 55, float %5141, float %5143, float %5147, float %5141, float %5143, float %5147)  ; Dot3(ax,ay,az,bx,by,bz)
  %5149 = call float @dx.op.unary.f32(i32 25, float %5148)  ; Rsqrt(value)
  %5150 = fmul fast float %5141, %5149
  %5151 = fmul fast float %5143, %5149
  %5152 = select i1 %4979, i32 %4969, i32 %4970
  %5153 = select i1 %4977, i32 %4968, i32 %5152
  %5154 = sitofp i32 %5153 to float
  %5155 = fmul fast float %5147, %5154
  %5156 = fmul fast float %5155, %5149
  %5157 = select i1 %4979, float %5156, float %5151
  %5158 = select i1 %4979, float %5151, float %5156
  %5159 = select i1 %4977, float %5156, float %5150
  %5160 = select i1 %4977, float %5151, float %5157
  %5161 = select i1 %4977, float %5150, float %5158
  %5162 = fsub fast float %5096, %4816
  %5163 = fsub fast float %5097, %4817
  %5164 = fsub fast float %5098, %4818
  %5165 = fmul fast float %5162, %5068
  %5166 = fmul fast float %5163, %5068
  %5167 = fmul fast float %5164, %5068
  %5168 = fadd fast float %5165, %4816
  %5169 = fadd fast float %5166, %4817
  %5170 = fadd fast float %5167, %4818
  %5171 = fsub fast float %5105, %4776
  %5172 = fsub fast float %5106, %4777
  %5173 = fsub fast float %5107, %4778
  %5174 = fmul fast float %5171, %5068
  %5175 = fmul fast float %5172, %5068
  %5176 = fmul fast float %5173, %5068
  %5177 = fadd fast float %5174, %4776
  %5178 = fadd fast float %5175, %4777
  %5179 = fadd fast float %5176, %4778
  %5180 = fadd fast float %5159, %4712
  %5181 = fadd fast float %5160, %4713
  %5182 = fadd fast float %5161, %4714
  %5183 = call float @dx.op.dot3.f32(i32 55, float %5180, float %5181, float %5182, float %5180, float %5181, float %5182)  ; Dot3(ax,ay,az,bx,by,bz)
  %5184 = call float @dx.op.unary.f32(i32 25, float %5183)  ; Rsqrt(value)
  %5185 = fmul fast float %5180, %5184
  %5186 = fmul fast float %5181, %5184
  %5187 = fmul fast float %5182, %5184
  %5188 = fsub fast float %5185, %4712
  %5189 = fsub fast float %5186, %4713
  %5190 = fsub fast float %5187, %4714
  %5191 = fmul fast float %5188, %5068
  %5192 = fmul fast float %5189, %5068
  %5193 = fmul fast float %5190, %5068
  %5194 = fadd fast float %5191, %4712
  %5195 = fadd fast float %5192, %4713
  %5196 = fadd fast float %5193, %4714
  %5197 = call float @dx.op.binary.f32(i32 36, float %4730, float %5116)  ; FMin(a,b)
  %5198 = fsub fast float %5197, %4730
  %5199 = fmul fast float %5198, %5068
  %5200 = fadd fast float %5199, %4730
  %5201 = fsub fast float %5129, %4779
  %5202 = fmul fast float %5201, %5068
  %5203 = fadd fast float %5202, %4779
  br label %5204

; <label>:5204                                    ; preds = %5066, %5028, %4930
  %5205 = phi float [ %5177, %5066 ], [ %4776, %5028 ], [ %4776, %4930 ]
  %5206 = phi float [ %5178, %5066 ], [ %4777, %5028 ], [ %4777, %4930 ]
  %5207 = phi float [ %5179, %5066 ], [ %4778, %5028 ], [ %4778, %4930 ]
  %5208 = phi float [ %5194, %5066 ], [ %4712, %5028 ], [ %4712, %4930 ]
  %5209 = phi float [ %5195, %5066 ], [ %4713, %5028 ], [ %4713, %4930 ]
  %5210 = phi float [ %5196, %5066 ], [ %4714, %5028 ], [ %4714, %4930 ]
  %5211 = phi float [ %5168, %5066 ], [ %4816, %5028 ], [ %4816, %4930 ]
  %5212 = phi float [ %5169, %5066 ], [ %4817, %5028 ], [ %4817, %4930 ]
  %5213 = phi float [ %5170, %5066 ], [ %4818, %5028 ], [ %4818, %4930 ]
  %5214 = phi float [ %5203, %5066 ], [ %4779, %5028 ], [ %4779, %4930 ]
  %5215 = phi float [ %5200, %5066 ], [ %4730, %5028 ], [ %4730, %4930 ]
  br i1 %4928, label %5216, label %5505

; <label>:5216                                    ; preds = %5204
  %5217 = call float @dx.op.unary.f32(i32 23, float %5215)  ; Log(value)
  %5218 = fmul fast float %5217, 4.000000e+00
  %5219 = call float @dx.op.unary.f32(i32 21, float %5218)  ; Exp(value)
  %5220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5221 = extractvalue %dx.types.CBufRet.f32 %5220, 0
  %5222 = fmul fast float %5221, %52
  %5223 = fmul fast float %5221, %53
  %5224 = fmul fast float %5221, %54
  %5225 = call float @dx.op.unary.f32(i32 6, float %61)  ; FAbs(value)
  %5226 = call float @dx.op.unary.f32(i32 6, float %62)  ; FAbs(value)
  %5227 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %5228 = call float @dx.op.unary.f32(i32 23, float %5225)  ; Log(value)
  %5229 = call float @dx.op.unary.f32(i32 23, float %5226)  ; Log(value)
  %5230 = call float @dx.op.unary.f32(i32 23, float %5227)  ; Log(value)
  %5231 = fmul fast float %5228, 4.000000e+00
  %5232 = fmul fast float %5229, 4.000000e+00
  %5233 = fmul fast float %5230, 4.000000e+00
  %5234 = call float @dx.op.unary.f32(i32 21, float %5231)  ; Exp(value)
  %5235 = call float @dx.op.unary.f32(i32 21, float %5232)  ; Exp(value)
  %5236 = call float @dx.op.unary.f32(i32 21, float %5233)  ; Exp(value)
  %5237 = fadd fast float %5235, %5234
  %5238 = fadd fast float %5237, %5236
  %5239 = fdiv fast float 1.000000e+00, %5238
  %5240 = fmul fast float %5239, %5234
  %5241 = fcmp fast ogt float %61, 0.000000e+00
  %5242 = fcmp fast ogt float %62, 0.000000e+00
  %5243 = fcmp fast ogt float %63, 0.000000e+00
  %5244 = fcmp fast olt float %61, 0.000000e+00
  %5245 = fcmp fast olt float %62, 0.000000e+00
  %5246 = fcmp fast olt float %63, 0.000000e+00
  %5247 = zext i1 %5241 to i32
  %5248 = zext i1 %5242 to i32
  %5249 = zext i1 %5243 to i32
  %5250 = zext i1 %5244 to i32
  %5251 = zext i1 %5245 to i32
  %5252 = zext i1 %5246 to i32
  %5253 = sub nsw i32 %5247, %5250
  %5254 = sub nsw i32 %5248, %5251
  %5255 = sub nsw i32 %5249, %5252
  %5256 = call float @dx.op.unary.f32(i32 83, float %5222)  ; DerivCoarseX(value)
  %5257 = call float @dx.op.unary.f32(i32 83, float %5223)  ; DerivCoarseX(value)
  %5258 = call float @dx.op.unary.f32(i32 83, float %5224)  ; DerivCoarseX(value)
  %5259 = call float @dx.op.unary.f32(i32 84, float %5222)  ; DerivCoarseY(value)
  %5260 = call float @dx.op.unary.f32(i32 84, float %5223)  ; DerivCoarseY(value)
  %5261 = call float @dx.op.unary.f32(i32 84, float %5224)  ; DerivCoarseY(value)
  %5262 = fcmp fast ole float %305, %5240
  %5263 = fmul fast float %5239, %5237
  %5264 = fcmp fast ole float %305, %5263
  %5265 = select i1 %5264, float %5224, float %5222
  %5266 = select i1 %5264, float %5222, float %5223
  %5267 = select i1 %5262, float %5223, float %5265
  %5268 = select i1 %5262, float %5224, float %5266
  %5269 = select i1 %5264, float %5258, float %5256
  %5270 = select i1 %5264, float %5256, float %5257
  %5271 = select i1 %5262, float %5257, float %5269
  %5272 = select i1 %5262, float %5258, float %5270
  %5273 = select i1 %5264, float %5261, float %5259
  %5274 = select i1 %5264, float %5259, float %5260
  %5275 = select i1 %5262, float %5260, float %5273
  %5276 = select i1 %5262, float %5261, float %5274
  %5277 = call float @dx.op.unary.f32(i32 27, float %5267)  ; Round_ni(value)
  %5278 = call float @dx.op.unary.f32(i32 27, float %5268)  ; Round_ni(value)
  %5279 = fptosi float %5277 to i32
  %5280 = fptosi float %5278 to i32
  %5281 = xor i32 %5280, %5279
  %5282 = sitofp i32 %5281 to float
  %5283 = fptosi float %5282 to i32
  %5284 = sitofp i32 %5283 to float
  %5285 = fmul fast float %5284, 0x3FE3C6EF40000000
  %5286 = frem fast float %5277, 2.560000e+02
  %5287 = frem fast float %5278, 2.560000e+02
  %5288 = fptoui float %5286 to i32
  %5289 = fptoui float %5287 to i32
  %5290 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %5288, i32 %5289, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5291 = extractvalue %dx.types.ResRet.f32 %5290, 0
  %5292 = extractvalue %dx.types.ResRet.f32 %5290, 1
  %5293 = extractvalue %dx.types.ResRet.f32 %5290, 2
  %5294 = fadd fast float %5291, %5285
  %5295 = fadd fast float %5292, %5285
  %5296 = fadd fast float %5293, %5285
  %5297 = call float @dx.op.unary.f32(i32 22, float %5294)  ; Frc(value)
  %5298 = call float @dx.op.unary.f32(i32 22, float %5295)  ; Frc(value)
  %5299 = call float @dx.op.unary.f32(i32 22, float %5296)  ; Frc(value)
  %5300 = fmul fast float %5299, 0x401921FB60000000
  %5301 = call float @dx.op.unary.f32(i32 13, float %5300)  ; Sin(value)
  %5302 = call float @dx.op.unary.f32(i32 12, float %5300)  ; Cos(value)
  %5303 = fsub fast float -0.000000e+00, %5302
  %5304 = fmul fast float %5302, %5267
  %5305 = call float @dx.op.tertiary.f32(i32 46, float %5301, float %5268, float %5304)  ; FMad(a,b,c)
  %5306 = fmul fast float %5301, %5267
  %5307 = call float @dx.op.tertiary.f32(i32 46, float %5303, float %5268, float %5306)  ; FMad(a,b,c)
  %5308 = fadd fast float %5305, %5297
  %5309 = fadd fast float %5307, %5298
  %5310 = extractvalue %dx.types.CBufRet.f32 %5220, 3
  %5311 = bitcast float %5310 to i32
  %5312 = icmp eq i32 %5311, 0
  br i1 %5312, label %5351, label %5313

; <label>:5313                                    ; preds = %5216
  %5314 = add i32 %5311, 0
  %5315 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5314, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5316 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5315, %dx.types.Handle %106, float %5308, float %5309, float undef, float undef, i32 0, i32 0, i32 undef, float %5271, float %5272, float undef, float %5275, float %5276, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5317 = extractvalue %dx.types.ResRet.f32 %5316, 0
  %5318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5319 = extractvalue %dx.types.CBufRet.f32 %5318, 1
  %5320 = extractvalue %dx.types.CBufRet.f32 %5318, 2
  %5321 = fsub fast float 1.000000e+00, %4926
  %5322 = call float @dx.op.binary.f32(i32 35, float %5321, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5323 = bitcast float %4926 to i32
  %5324 = sitofp i32 %5323 to float
  %5325 = fadd fast float %5324, 0xC1CFBF8940000000
  %5326 = fmul fast float %5320, %5325
  %5327 = fadd fast float %5326, 0x41CFBF8940000000
  %5328 = fptosi float %5327 to i32
  %5329 = bitcast i32 %5328 to float
  %5330 = bitcast float %5322 to i32
  %5331 = sitofp i32 %5330 to float
  %5332 = fadd fast float %5331, 0xC1CFBF8940000000
  %5333 = fmul fast float %5332, %5320
  %5334 = fadd fast float %5333, 0x41CFBF8940000000
  %5335 = fptosi float %5334 to i32
  %5336 = bitcast i32 %5335 to float
  %5337 = fmul fast float %5329, %5319
  %5338 = fmul fast float %5336, %5319
  %5339 = fsub fast float %5322, %5337
  %5340 = fadd fast float %5338, %5322
  %5341 = call float @dx.op.unary.f32(i32 7, float %5339)  ; Saturate(value)
  %5342 = call float @dx.op.unary.f32(i32 7, float %5340)  ; Saturate(value)
  %5343 = fsub fast float %5317, %5341
  %5344 = fsub fast float %5342, %5341
  %5345 = bitcast float %5344 to i32
  %5346 = sub nsw i32 2129859010, %5345
  %5347 = bitcast i32 %5346 to float
  %5348 = fmul fast float %5347, %5343
  %5349 = call float @dx.op.unary.f32(i32 7, float %5348)  ; Saturate(value)
  %5350 = fcmp fast olt float %5349, 0x3F70101020000000
  br i1 %5350, label %5505, label %5351

; <label>:5351                                    ; preds = %5313, %5216
  %5352 = phi float [ %5349, %5313 ], [ %4926, %5216 ]
  %5353 = fmul fast float %5352, %5219
  %5354 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5355 = extractvalue %dx.types.CBufRet.i32 %5354, 1
  %5356 = extractvalue %dx.types.CBufRet.i32 %5354, 0
  %5357 = add i32 %5356, 0
  %5358 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5357, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5359 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5358, %dx.types.Handle %105, float %5308, float %5309, float undef, float undef, i32 0, i32 0, i32 undef, float %5271, float %5272, float undef, float %5275, float %5276, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5360 = extractvalue %dx.types.ResRet.f32 %5359, 0
  %5361 = extractvalue %dx.types.ResRet.f32 %5359, 1
  %5362 = extractvalue %dx.types.ResRet.f32 %5359, 2
  %5363 = extractvalue %dx.types.ResRet.f32 %5359, 3
  %5364 = and i32 %5355, 255
  %5365 = uitofp i32 %5364 to float
  %5366 = lshr i32 %5355, 8
  %5367 = and i32 %5366, 255
  %5368 = uitofp i32 %5367 to float
  %5369 = fmul fast float %5363, %5365
  %5370 = fadd fast float %5369, %5368
  %5371 = fmul fast float %5370, 0x3F70101000000000
  %5372 = fadd fast float %5371, 0xBFB99999A0000000
  %5373 = call float @dx.op.unary.f32(i32 7, float %5372)  ; Saturate(value)
  %5374 = fmul fast float %5373, 0x3FF1C71C80000000
  %5375 = call float @dx.op.binary.f32(i32 36, float %5371, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5376 = fsub fast float 1.000000e+00, %5374
  %5377 = call float @dx.op.unary.f32(i32 7, float %5376)  ; Saturate(value)
  %5378 = fmul fast float %5377, %5360
  %5379 = fmul fast float %5377, %5361
  %5380 = fmul fast float %5377, %5362
  %5381 = call float @dx.op.unary.f32(i32 7, float %5378)  ; Saturate(value)
  %5382 = call float @dx.op.unary.f32(i32 7, float %5379)  ; Saturate(value)
  %5383 = call float @dx.op.unary.f32(i32 7, float %5380)  ; Saturate(value)
  %5384 = fmul fast float %5374, %5360
  %5385 = fmul fast float %5374, %5361
  %5386 = fmul fast float %5374, %5362
  %5387 = fadd fast float %5384, %5375
  %5388 = fadd fast float %5385, %5375
  %5389 = fadd fast float %5386, %5375
  %5390 = call float @dx.op.unary.f32(i32 7, float %5387)  ; Saturate(value)
  %5391 = call float @dx.op.unary.f32(i32 7, float %5388)  ; Saturate(value)
  %5392 = call float @dx.op.unary.f32(i32 7, float %5389)  ; Saturate(value)
  %5393 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5394 = extractvalue %dx.types.CBufRet.i32 %5393, 3
  %5395 = extractvalue %dx.types.CBufRet.i32 %5393, 2
  %5396 = add i32 %5395, 0
  %5397 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5396, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5398 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5397, %dx.types.Handle %105, float %5308, float %5309, float undef, float undef, i32 0, i32 0, i32 undef, float %5271, float %5272, float undef, float %5275, float %5276, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5399 = extractvalue %dx.types.ResRet.f32 %5398, 0
  %5400 = extractvalue %dx.types.ResRet.f32 %5398, 1
  %5401 = extractvalue %dx.types.ResRet.f32 %5398, 2
  %5402 = extractvalue %dx.types.ResRet.f32 %5398, 3
  %5403 = and i32 %5394, 255
  %5404 = uitofp i32 %5403 to float
  %5405 = lshr i32 %5394, 8
  %5406 = and i32 %5405, 255
  %5407 = uitofp i32 %5406 to float
  %5408 = lshr i32 %5394, 16
  %5409 = and i32 %5408, 255
  %5410 = uitofp i32 %5409 to float
  %5411 = fmul fast float %5410, 0x3F70101000000000
  %5412 = fmul fast float %5399, %5404
  %5413 = fadd fast float %5412, %5407
  %5414 = fmul fast float %5413, 0x3F70101000000000
  %5415 = fadd fast float %5400, -5.000000e-01
  %5416 = fadd fast float %5402, -5.000000e-01
  %5417 = fmul fast float %5415, %5411
  %5418 = fmul fast float %5416, %5411
  %5419 = fadd fast float %5417, 5.000000e-01
  %5420 = fadd fast float %5418, 5.000000e-01
  %5421 = fmul fast float %5419, 2.000000e+00
  %5422 = fadd fast float %5421, -1.000000e+00
  %5423 = fmul fast float %5420, 2.000000e+00
  %5424 = fadd fast float %5423, -1.000000e+00
  %5425 = fadd fast float %5422, %5424
  %5426 = fmul fast float %5425, 5.000000e-01
  %5427 = fsub fast float %5422, %5424
  %5428 = fmul fast float %5427, 5.000000e-01
  %5429 = call float @dx.op.unary.f32(i32 6, float %5426)  ; FAbs(value)
  %5430 = fsub fast float 1.000000e+00, %5429
  %5431 = call float @dx.op.unary.f32(i32 6, float %5428)  ; FAbs(value)
  %5432 = fsub fast float %5430, %5431
  %5433 = call float @dx.op.dot3.f32(i32 55, float %5426, float %5428, float %5432, float %5426, float %5428, float %5432)  ; Dot3(ax,ay,az,bx,by,bz)
  %5434 = call float @dx.op.unary.f32(i32 25, float %5433)  ; Rsqrt(value)
  %5435 = fmul fast float %5426, %5434
  %5436 = fmul fast float %5428, %5434
  %5437 = select i1 %5264, i32 %5254, i32 %5255
  %5438 = select i1 %5262, i32 %5253, i32 %5437
  %5439 = sitofp i32 %5438 to float
  %5440 = fmul fast float %5432, %5439
  %5441 = fmul fast float %5440, %5434
  %5442 = select i1 %5264, float %5441, float %5436
  %5443 = select i1 %5264, float %5436, float %5441
  %5444 = select i1 %5262, float %5441, float %5435
  %5445 = select i1 %5262, float %5436, float %5442
  %5446 = select i1 %5262, float %5435, float %5443
  %5447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 375)  ; CBufferLoadLegacy(handle,regIndex)
  %5448 = extractvalue %dx.types.CBufRet.f32 %5447, 0
  %5449 = fptoui float %5448 to i32
  %5450 = add i32 %5449, 0
  %5451 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5450, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5452 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5451, %dx.types.Handle %105, float %5308, float %5309, float undef, float undef, i32 0, i32 0, i32 undef, float %5271, float %5272, float undef, float %5275, float %5276, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5453 = extractvalue %dx.types.ResRet.f32 %5452, 0
  %5454 = fsub fast float %5381, %5211
  %5455 = fsub fast float %5382, %5212
  %5456 = fsub fast float %5383, %5213
  %5457 = fmul fast float %5454, %5353
  %5458 = fmul fast float %5455, %5353
  %5459 = fmul fast float %5456, %5353
  %5460 = fadd fast float %5457, %5211
  %5461 = fadd fast float %5458, %5212
  %5462 = fadd fast float %5459, %5213
  %5463 = fsub fast float %5390, %5205
  %5464 = fsub fast float %5391, %5206
  %5465 = fsub fast float %5392, %5207
  %5466 = fmul fast float %5463, %5353
  %5467 = fmul fast float %5464, %5353
  %5468 = fmul fast float %5465, %5353
  %5469 = fadd fast float %5466, %5205
  %5470 = fadd fast float %5467, %5206
  %5471 = fadd fast float %5468, %5207
  %5472 = fadd fast float %5444, %5208
  %5473 = fadd fast float %5445, %5209
  %5474 = fadd fast float %5446, %5210
  %5475 = call float @dx.op.dot3.f32(i32 55, float %5472, float %5473, float %5474, float %5472, float %5473, float %5474)  ; Dot3(ax,ay,az,bx,by,bz)
  %5476 = call float @dx.op.unary.f32(i32 25, float %5475)  ; Rsqrt(value)
  %5477 = fmul fast float %5476, %5472
  %5478 = fmul fast float %5476, %5473
  %5479 = fmul fast float %5476, %5474
  %5480 = fsub fast float %5477, %5208
  %5481 = fsub fast float %5478, %5209
  %5482 = fsub fast float %5479, %5210
  %5483 = fmul fast float %5480, %5353
  %5484 = fmul fast float %5481, %5353
  %5485 = fmul fast float %5482, %5353
  %5486 = fadd fast float %5483, %5208
  %5487 = fadd fast float %5484, %5209
  %5488 = fadd fast float %5485, %5210
  %5489 = call float @dx.op.binary.f32(i32 36, float %5215, float %5401)  ; FMin(a,b)
  %5490 = fsub fast float %5489, %5215
  %5491 = fmul fast float %5490, %5353
  %5492 = fadd fast float %5491, %5215
  %5493 = fsub fast float %5414, %5214
  %5494 = fmul fast float %5493, %5353
  %5495 = fadd fast float %5494, %5214
  %5496 = fsub fast float %5453, %4820
  %5497 = fsub fast float %5453, %4821
  %5498 = fsub fast float %5453, %4822
  %5499 = fmul fast float %5496, %5353
  %5500 = fmul fast float %5497, %5353
  %5501 = fmul fast float %5498, %5353
  %5502 = fadd fast float %5499, %4820
  %5503 = fadd fast float %5500, %4821
  %5504 = fadd fast float %5501, %4822
  br label %5505

; <label>:5505                                    ; preds = %5351, %5313, %5204, %4920
  %5506 = phi float [ %5469, %5351 ], [ %5205, %5313 ], [ %5205, %5204 ], [ %4776, %4920 ]
  %5507 = phi float [ %5470, %5351 ], [ %5206, %5313 ], [ %5206, %5204 ], [ %4777, %4920 ]
  %5508 = phi float [ %5471, %5351 ], [ %5207, %5313 ], [ %5207, %5204 ], [ %4778, %4920 ]
  %5509 = phi float [ %5502, %5351 ], [ %4820, %5313 ], [ %4820, %5204 ], [ %4820, %4920 ]
  %5510 = phi float [ %5503, %5351 ], [ %4821, %5313 ], [ %4821, %5204 ], [ %4821, %4920 ]
  %5511 = phi float [ %5504, %5351 ], [ %4822, %5313 ], [ %4822, %5204 ], [ %4822, %4920 ]
  %5512 = phi float [ %5486, %5351 ], [ %5208, %5313 ], [ %5208, %5204 ], [ %4712, %4920 ]
  %5513 = phi float [ %5487, %5351 ], [ %5209, %5313 ], [ %5209, %5204 ], [ %4713, %4920 ]
  %5514 = phi float [ %5488, %5351 ], [ %5210, %5313 ], [ %5210, %5204 ], [ %4714, %4920 ]
  %5515 = phi float [ %5460, %5351 ], [ %5211, %5313 ], [ %5211, %5204 ], [ %4816, %4920 ]
  %5516 = phi float [ %5461, %5351 ], [ %5212, %5313 ], [ %5212, %5204 ], [ %4817, %4920 ]
  %5517 = phi float [ %5462, %5351 ], [ %5213, %5313 ], [ %5213, %5204 ], [ %4818, %4920 ]
  %5518 = phi float [ %5495, %5351 ], [ %5214, %5313 ], [ %5214, %5204 ], [ %4779, %4920 ]
  %5519 = phi float [ %5492, %5351 ], [ %5215, %5313 ], [ %5215, %5204 ], [ %4730, %4920 ]
  %5520 = fcmp fast une float %4924, 0.000000e+00
  %5521 = fsub fast float -0.000000e+00, %221
  %5522 = fsub fast float -0.000000e+00, %222
  %5523 = fsub fast float -0.000000e+00, %223
  br i1 %5520, label %5524, label %5685

; <label>:5524                                    ; preds = %5505
  %5525 = call float @dx.op.dot3.f32(i32 55, float %5521, float %5522, float %5523, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %5526 = fmul fast float %4924, 2.500000e+00
  %5527 = call float @dx.op.unary.f32(i32 7, float %5526)  ; Saturate(value)
  %5528 = fmul fast float %4924, 0x4013FFFFE0000000
  %5529 = fadd fast float %5528, 0xBFFFFFFFE0000000
  %5530 = call float @dx.op.unary.f32(i32 7, float %5529)  ; Saturate(value)
  %5531 = fmul fast float %4924, 0x4004000020000000
  %5532 = fadd fast float %5531, 0xBFF8000040000000
  %5533 = call float @dx.op.unary.f32(i32 7, float %5532)  ; Saturate(value)
  %5534 = fmul fast float %4758, 1.000000e+01
  %5535 = call float @dx.op.unary.f32(i32 7, float %5534)  ; Saturate(value)
  %5536 = fmul fast float %5535, 2.000000e+00
  %5537 = fsub fast float 3.000000e+00, %5536
  %5538 = fmul fast float %5535, %5535
  %5539 = fmul fast float %5538, %5537
  %5540 = fsub fast float 1.000000e+00, %5539
  %5541 = fsub fast float 0x3FE3333340000000, %5518
  %5542 = fmul fast float %5541, 0x400AAAAAA0000000
  %5543 = call float @dx.op.unary.f32(i32 7, float %5542)  ; Saturate(value)
  %5544 = fmul fast float %5540, %5543
  %5545 = fmul fast float %5515, 0x3FEA2B8620000000
  %5546 = fmul fast float %5516, 0x3FEA2B8620000000
  %5547 = fmul fast float %5517, 0x3FEA2B8620000000
  %5548 = fadd fast float %5545, 0x3FC81DFBA0000000
  %5549 = fmul fast float %5548, %5515
  %5550 = fadd fast float %5549, 0x3F910E6020000000
  %5551 = fadd fast float %5546, 0x3FC81DFBA0000000
  %5552 = fmul fast float %5551, %5516
  %5553 = fadd fast float %5552, 0x3F910E6020000000
  %5554 = fadd fast float %5547, 0x3FC81DFBA0000000
  %5555 = fmul fast float %5554, %5517
  %5556 = fadd fast float %5555, 0x3F910E6020000000
  %5557 = call float @dx.op.unary.f32(i32 7, float %5550)  ; Saturate(value)
  %5558 = call float @dx.op.unary.f32(i32 7, float %5553)  ; Saturate(value)
  %5559 = call float @dx.op.unary.f32(i32 7, float %5556)  ; Saturate(value)
  %5560 = fsub fast float %5557, %5515
  %5561 = fsub fast float %5558, %5516
  %5562 = fsub fast float %5559, %5517
  %5563 = fmul fast float %5560, %5527
  %5564 = fmul fast float %5563, %5544
  %5565 = fmul fast float %5561, %5527
  %5566 = fmul fast float %5565, %5544
  %5567 = fmul fast float %5562, %5527
  %5568 = fmul fast float %5567, %5544
  %5569 = fadd fast float %5564, %5515
  %5570 = fadd fast float %5566, %5516
  %5571 = fadd fast float %5568, %5517
  %5572 = fmul fast float %5519, %5519
  %5573 = fmul fast float %5572, %5572
  %5574 = fadd fast float %5530, 1.000000e+00
  %5575 = fsub fast float %5574, %5544
  %5576 = call float @dx.op.unary.f32(i32 7, float %5575)  ; Saturate(value)
  %5577 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5578 = call float @dx.op.unary.f32(i32 7, float %5577)  ; Saturate(value)
  %5579 = fsub fast float 1.000000e+00, %5573
  %5580 = call float @dx.op.binary.f32(i32 36, float %5576, float %5579)  ; FMin(a,b)
  %5581 = call float @dx.op.unary.f32(i32 7, float %5533)  ; Saturate(value)
  %5582 = call float @dx.op.binary.f32(i32 35, float %5580, float %5581)  ; FMax(a,b)
  %5583 = fadd fast float %5578, 0xBFE4CCCCC0000000
  %5584 = fmul fast float %5583, 0x4006DB6DA0000000
  %5585 = call float @dx.op.unary.f32(i32 7, float %5584)  ; Saturate(value)
  %5586 = fmul fast float %5585, 2.000000e+00
  %5587 = fsub fast float 3.000000e+00, %5586
  %5588 = bitcast float %5506 to i32
  %5589 = ashr i32 %5588, 1
  %5590 = add nsw i32 %5589, 532487669
  %5591 = bitcast i32 %5590 to float
  %5592 = fsub fast float 1.000000e+00, %5591
  %5593 = bitcast float %5592 to i32
  %5594 = sub nsw i32 2129859010, %5593
  %5595 = bitcast i32 %5594 to float
  %5596 = fmul fast float %5595, 2.000000e+00
  %5597 = bitcast float %5507 to i32
  %5598 = ashr i32 %5597, 1
  %5599 = add nsw i32 %5598, 532487669
  %5600 = bitcast i32 %5599 to float
  %5601 = fsub fast float 1.000000e+00, %5600
  %5602 = bitcast float %5601 to i32
  %5603 = sub nsw i32 2129859010, %5602
  %5604 = bitcast i32 %5603 to float
  %5605 = fmul fast float %5604, 2.000000e+00
  %5606 = bitcast float %5508 to i32
  %5607 = ashr i32 %5606, 1
  %5608 = add nsw i32 %5607, 532487669
  %5609 = bitcast i32 %5608 to float
  %5610 = fsub fast float 1.000000e+00, %5609
  %5611 = bitcast float %5610 to i32
  %5612 = sub nsw i32 2129859010, %5611
  %5613 = bitcast i32 %5612 to float
  %5614 = fmul fast float %5613, 2.000000e+00
  %5615 = fsub fast float 0x4002A9FBE0000000, %5596
  %5616 = fadd fast float %5596, 0x3FD54FDF00000000
  %5617 = bitcast float %5616 to i32
  %5618 = sub nsw i32 2129859010, %5617
  %5619 = bitcast i32 %5618 to float
  %5620 = fmul fast float %5619, %5615
  %5621 = fmul fast float %5620, %5620
  %5622 = fsub fast float 0x4002A9FBE0000000, %5605
  %5623 = fadd fast float %5605, 0x3FD54FDF00000000
  %5624 = bitcast float %5623 to i32
  %5625 = sub nsw i32 2129859010, %5624
  %5626 = bitcast i32 %5625 to float
  %5627 = fmul fast float %5626, %5622
  %5628 = fmul fast float %5627, %5627
  %5629 = fsub fast float 0x4002A9FBE0000000, %5614
  %5630 = fadd fast float %5614, 0x3FD54FDF00000000
  %5631 = bitcast float %5630 to i32
  %5632 = sub nsw i32 2129859010, %5631
  %5633 = bitcast i32 %5632 to float
  %5634 = fmul fast float %5633, %5629
  %5635 = fmul fast float %5634, %5634
  %5636 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5621)  ; FMax(a,b)
  %5637 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5628)  ; FMax(a,b)
  %5638 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5635)  ; FMax(a,b)
  %5639 = fsub fast float 1.000000e+00, %5525
  %5640 = fadd fast float %5639, %5540
  %5641 = call float @dx.op.unary.f32(i32 7, float %5640)  ; Saturate(value)
  %5642 = fsub fast float 1.000000e+00, %4905
  %5643 = fmul fast float %5582, %5642
  %5644 = fmul fast float %5585, %5585
  %5645 = fmul fast float %5644, %5643
  %5646 = fmul fast float %5645, %5587
  %5647 = fmul fast float %5642, 0xBFE99999A0000000
  %5648 = fmul fast float %5647, %5527
  %5649 = fmul fast float %5648, %5544
  %5650 = fadd fast float %5649, 1.000000e+00
  %5651 = fadd fast float %5518, -1.000000e+00
  %5652 = fmul fast float %5650, %5651
  %5653 = fadd fast float %5652, 1.000000e+00
  %5654 = fsub fast float %5636, %5506
  %5655 = fsub fast float %5637, %5507
  %5656 = fsub fast float %5638, %5508
  %5657 = fmul fast float %5646, %5654
  %5658 = fmul fast float %5646, %5655
  %5659 = fmul fast float %5646, %5656
  %5660 = fadd fast float %5657, %5506
  %5661 = fadd fast float %5658, %5507
  %5662 = fadd fast float %5659, %5508
  %5663 = fsub fast float %116, %5512
  %5664 = fsub fast float %117, %5513
  %5665 = fsub fast float %118, %5514
  %5666 = fmul fast float %5646, %5663
  %5667 = fmul fast float %5646, %5664
  %5668 = fmul fast float %5646, %5665
  %5669 = fadd fast float %5666, %5512
  %5670 = fadd fast float %5667, %5513
  %5671 = fadd fast float %5668, %5514
  %5672 = fmul fast float %5646, %5641
  %5673 = call float @dx.op.unary.f32(i32 7, float %5653)  ; Saturate(value)
  %5674 = fsub fast float 1.000000e+00, %5673
  %5675 = fmul fast float %5672, %5674
  %5676 = fadd fast float %5675, %5673
  %5677 = fsub fast float 1.000000e+00, %5519
  %5678 = fmul fast float %5646, %5677
  %5679 = fadd fast float %5678, %5519
  %5680 = call float @dx.op.dot3.f32(i32 55, float %5669, float %5670, float %5671, float %5669, float %5670, float %5671)  ; Dot3(ax,ay,az,bx,by,bz)
  %5681 = call float @dx.op.unary.f32(i32 25, float %5680)  ; Rsqrt(value)
  %5682 = fmul fast float %5669, %5681
  %5683 = fmul fast float %5670, %5681
  %5684 = fmul fast float %5671, %5681
  br label %5685

; <label>:5685                                    ; preds = %5524, %5505
  %5686 = phi float [ %5660, %5524 ], [ %5506, %5505 ]
  %5687 = phi float [ %5661, %5524 ], [ %5507, %5505 ]
  %5688 = phi float [ %5662, %5524 ], [ %5508, %5505 ]
  %5689 = phi float [ %5682, %5524 ], [ %5512, %5505 ]
  %5690 = phi float [ %5683, %5524 ], [ %5513, %5505 ]
  %5691 = phi float [ %5684, %5524 ], [ %5514, %5505 ]
  %5692 = phi float [ %5569, %5524 ], [ %5515, %5505 ]
  %5693 = phi float [ %5570, %5524 ], [ %5516, %5505 ]
  %5694 = phi float [ %5571, %5524 ], [ %5517, %5505 ]
  %5695 = phi float [ %5676, %5524 ], [ %5518, %5505 ]
  %5696 = phi float [ %5679, %5524 ], [ %5519, %5505 ]
  %5697 = select i1 %294, float 0.000000e+00, float %5688
  %5698 = call float @dx.op.dot3.f32(i32 55, float %5689, float %5690, float %5691, float %5521, float %5522, float %5523)  ; Dot3(ax,ay,az,bx,by,bz)
  %5699 = call float @dx.op.unary.f32(i32 7, float %5698)  ; Saturate(value)
  %5700 = call float @dx.op.dot3.f32(i32 55, float %221, float %222, float %223, float %5689, float %5690, float %5691)  ; Dot3(ax,ay,az,bx,by,bz)
  %5701 = fmul fast float %5700, 2.000000e+00
  %5702 = fmul fast float %5701, %5689
  %5703 = fmul fast float %5701, %5690
  %5704 = fmul fast float %5701, %5691
  %5705 = fsub fast float %221, %5702
  %5706 = fsub fast float %222, %5703
  %5707 = fsub fast float %223, %5704
  %5708 = call float @dx.op.binary.f32(i32 36, float %5696, float 1.000000e+00)  ; FMin(a,b)
  %5709 = fsub fast float 1.000000e+00, %5708
  %5710 = bitcast float %5709 to i32
  %5711 = ashr i32 %5710, 1
  %5712 = add nsw i32 %5711, 532487669
  %5713 = bitcast i32 %5712 to float
  %5714 = fsub fast float 1.000000e+00, %5695
  %5715 = call float @dx.op.binary.f32(i32 35, float %5714, float 0x3F847AE140000000)  ; FMax(a,b)
  %5716 = fmul fast float %5715, %5715
  %5717 = fmul fast float %5716, %5716
  %5718 = call float @dx.op.unary.f32(i32 7, float %5699)  ; Saturate(value)
  %5719 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %43, float %5713, float %5717, float %5718, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5720 = extractvalue %dx.types.ResRet.f32 %5719, 0
  %5721 = fsub fast float 1.000000e+00, %5696
  %5722 = bitcast float %5721 to i32
  %5723 = sub nsw i32 2129859010, %5722
  %5724 = call float @dx.op.dot3.f32(i32 55, float %76, float %72, float %68, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5725 = fmul fast float %5724, 0x3FD20DD760000000
  %5726 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %76)  ; FMax(a,b)
  %5727 = call float @dx.op.dot3.f32(i32 55, float %77, float %78, float %79, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %5728 = fcmp fast oeq float %5727, 0.000000e+00
  %5729 = fcmp fast oeq float %5726, 0.000000e+00
  %5730 = or i1 %5729, %5728
  br i1 %5730, label %5760, label %5731

; <label>:5731                                    ; preds = %5685
  %5732 = fsub fast float -0.000000e+00, %79
  %5733 = fsub fast float -0.000000e+00, %77
  %5734 = call float @dx.op.unary.f32(i32 24, float %5727)  ; Sqrt(value)
  %5735 = fdiv fast float %5734, %5726
  %5736 = fcmp fast ogt float %5735, 0x3FFB6F8900000000
  %5737 = select i1 %5736, float 0x3FFB6F8900000000, float %5735
  %5738 = fmul fast float %5737, 0x3FE8A23460000000
  %5739 = call float @dx.op.unary.f32(i32 7, float %5738)  ; Saturate(value)
  %5740 = call float @dx.op.binary.f32(i32 35, float %5737, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5741 = fmul fast float %5739, %5726
  %5742 = fmul fast float %5740, 0x3FF279A740000000
  %5743 = fadd fast float %5742, -1.000000e+00
  %5744 = call float @dx.op.dot3.f32(i32 55, float %5732, float %5733, float %78, float %5732, float %5733, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %5745 = call float @dx.op.unary.f32(i32 25, float %5744)  ; Rsqrt(value)
  %5746 = fmul fast float %5745, %5732
  %5747 = fmul fast float %5745, %5733
  %5748 = fmul fast float %5745, %78
  %5749 = fmul fast float %5743, %5743
  %5750 = fsub fast float 1.000000e+00, %5749
  %5751 = fmul fast float %5740, 0x40005F8BE0000000
  %5752 = fsub fast float 0x400C5BF8A0000000, %5751
  %5753 = fdiv fast float %5741, %5752
  %5754 = fmul fast float %5753, 0x3FEE31C3C0000000
  %5755 = fmul fast float %5754, %5750
  %5756 = fmul fast float %5740, 0x3FDACB7480000000
  %5757 = fadd fast float %5756, 0xBFD7347680000000
  %5758 = fmul fast float %5757, %5753
  %5759 = fmul fast float %5758, %5750
  br label %5760

; <label>:5760                                    ; preds = %5731, %5685
  %5761 = phi float [ %5746, %5731 ], [ 0.000000e+00, %5685 ]
  %5762 = phi float [ %5747, %5731 ], [ 0.000000e+00, %5685 ]
  %5763 = phi float [ %5748, %5731 ], [ 0.000000e+00, %5685 ]
  %5764 = phi float [ %5755, %5731 ], [ 0.000000e+00, %5685 ]
  %5765 = phi float [ %5759, %5731 ], [ 0.000000e+00, %5685 ]
  %5766 = call float @dx.op.dot3.f32(i32 55, float %5761, float %5762, float %5763, float %5689, float %5690, float %5691)  ; Dot3(ax,ay,az,bx,by,bz)
  %5767 = fmul fast float %5766, 0x3FDF454380000000
  %5768 = fmul fast float %5766, %5766
  %5769 = fmul fast float %5768, 0x3FEE471020000000
  %5770 = fadd fast float %5769, 0xBFD42F6020000000
  %5771 = fmul fast float %5726, 0x3FD20DD760000000
  %5772 = fmul fast float %5770, %5765
  %5773 = fadd fast float %5772, %5771
  %5774 = fmul fast float %5767, %5764
  %5775 = fadd fast float %5773, %5774
  %5776 = fsub fast float %5773, %5774
  %5777 = call float @dx.op.dot3.f32(i32 55, float %5761, float %5762, float %5763, float %5705, float %5706, float %5707)  ; Dot3(ax,ay,az,bx,by,bz)
  %5778 = fmul fast float %5777, 0x3FDF454380000000
  %5779 = fmul fast float %5777, %5777
  %5780 = fmul fast float %5779, 0x3FEE471020000000
  %5781 = fadd fast float %5780, 0xBFD42F6020000000
  %5782 = call float @dx.op.dot3.f32(i32 55, float %5726, float %5764, float %5765, float 0x3FD20DD760000000, float %5778, float %5781)  ; Dot3(ax,ay,az,bx,by,bz)
  %5783 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %72)  ; FMax(a,b)
  %5784 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %5785 = fcmp fast oeq float %5784, 0.000000e+00
  %5786 = fcmp fast oeq float %5783, 0.000000e+00
  %5787 = or i1 %5786, %5785
  br i1 %5787, label %5817, label %5788

; <label>:5788                                    ; preds = %5760
  %5789 = fsub fast float -0.000000e+00, %75
  %5790 = fsub fast float -0.000000e+00, %73
  %5791 = call float @dx.op.unary.f32(i32 24, float %5784)  ; Sqrt(value)
  %5792 = fdiv fast float %5791, %5783
  %5793 = fcmp fast ogt float %5792, 0x3FFB6F8900000000
  %5794 = select i1 %5793, float 0x3FFB6F8900000000, float %5792
  %5795 = fmul fast float %5794, 0x3FE8A23460000000
  %5796 = call float @dx.op.unary.f32(i32 7, float %5795)  ; Saturate(value)
  %5797 = call float @dx.op.binary.f32(i32 35, float %5794, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5798 = fmul fast float %5796, %5783
  %5799 = fmul fast float %5797, 0x3FF279A740000000
  %5800 = fadd fast float %5799, -1.000000e+00
  %5801 = call float @dx.op.dot3.f32(i32 55, float %5789, float %5790, float %74, float %5789, float %5790, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %5802 = call float @dx.op.unary.f32(i32 25, float %5801)  ; Rsqrt(value)
  %5803 = fmul fast float %5802, %5789
  %5804 = fmul fast float %5802, %5790
  %5805 = fmul fast float %5802, %74
  %5806 = fmul fast float %5800, %5800
  %5807 = fsub fast float 1.000000e+00, %5806
  %5808 = fmul fast float %5797, 0x40005F8BE0000000
  %5809 = fsub fast float 0x400C5BF8A0000000, %5808
  %5810 = fdiv fast float %5798, %5809
  %5811 = fmul fast float %5810, 0x3FEE31C3C0000000
  %5812 = fmul fast float %5811, %5807
  %5813 = fmul fast float %5797, 0x3FDACB7480000000
  %5814 = fadd fast float %5813, 0xBFD7347680000000
  %5815 = fmul fast float %5814, %5810
  %5816 = fmul fast float %5815, %5807
  br label %5817

; <label>:5817                                    ; preds = %5788, %5760
  %5818 = phi float [ %5803, %5788 ], [ 0.000000e+00, %5760 ]
  %5819 = phi float [ %5804, %5788 ], [ 0.000000e+00, %5760 ]
  %5820 = phi float [ %5805, %5788 ], [ 0.000000e+00, %5760 ]
  %5821 = phi float [ %5812, %5788 ], [ 0.000000e+00, %5760 ]
  %5822 = phi float [ %5816, %5788 ], [ 0.000000e+00, %5760 ]
  %5823 = call float @dx.op.dot3.f32(i32 55, float %5818, float %5819, float %5820, float %5689, float %5690, float %5691)  ; Dot3(ax,ay,az,bx,by,bz)
  %5824 = fmul fast float %5823, 0x3FDF454380000000
  %5825 = fmul fast float %5823, %5823
  %5826 = fmul fast float %5825, 0x3FEE471020000000
  %5827 = fadd fast float %5826, 0xBFD42F6020000000
  %5828 = fmul fast float %5783, 0x3FD20DD760000000
  %5829 = fmul fast float %5827, %5822
  %5830 = fadd fast float %5829, %5828
  %5831 = fmul fast float %5824, %5821
  %5832 = fadd fast float %5830, %5831
  %5833 = fsub fast float %5830, %5831
  %5834 = call float @dx.op.dot3.f32(i32 55, float %5818, float %5819, float %5820, float %5705, float %5706, float %5707)  ; Dot3(ax,ay,az,bx,by,bz)
  %5835 = fmul fast float %5834, 0x3FDF454380000000
  %5836 = fmul fast float %5834, %5834
  %5837 = fmul fast float %5836, 0x3FEE471020000000
  %5838 = fadd fast float %5837, 0xBFD42F6020000000
  %5839 = call float @dx.op.dot3.f32(i32 55, float %5783, float %5821, float %5822, float 0x3FD20DD760000000, float %5835, float %5838)  ; Dot3(ax,ay,az,bx,by,bz)
  %5840 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %68)  ; FMax(a,b)
  %5841 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float %69, float %70, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %5842 = fcmp fast oeq float %5841, 0.000000e+00
  %5843 = fcmp fast oeq float %5840, 0.000000e+00
  %5844 = or i1 %5843, %5842
  br i1 %5844, label %5874, label %5845

; <label>:5845                                    ; preds = %5817
  %5846 = fsub fast float -0.000000e+00, %71
  %5847 = fsub fast float -0.000000e+00, %69
  %5848 = call float @dx.op.unary.f32(i32 24, float %5841)  ; Sqrt(value)
  %5849 = fdiv fast float %5848, %5840
  %5850 = fcmp fast ogt float %5849, 0x3FFB6F8900000000
  %5851 = select i1 %5850, float 0x3FFB6F8900000000, float %5849
  %5852 = fmul fast float %5851, 0x3FE8A23460000000
  %5853 = call float @dx.op.unary.f32(i32 7, float %5852)  ; Saturate(value)
  %5854 = call float @dx.op.binary.f32(i32 35, float %5851, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5855 = fmul fast float %5853, %5840
  %5856 = fmul fast float %5854, 0x3FF279A740000000
  %5857 = fadd fast float %5856, -1.000000e+00
  %5858 = call float @dx.op.dot3.f32(i32 55, float %5846, float %5847, float %70, float %5846, float %5847, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %5859 = call float @dx.op.unary.f32(i32 25, float %5858)  ; Rsqrt(value)
  %5860 = fmul fast float %5859, %5846
  %5861 = fmul fast float %5859, %5847
  %5862 = fmul fast float %5859, %70
  %5863 = fmul fast float %5857, %5857
  %5864 = fsub fast float 1.000000e+00, %5863
  %5865 = fmul fast float %5854, 0x40005F8BE0000000
  %5866 = fsub fast float 0x400C5BF8A0000000, %5865
  %5867 = fdiv fast float %5855, %5866
  %5868 = fmul fast float %5867, 0x3FEE31C3C0000000
  %5869 = fmul fast float %5868, %5864
  %5870 = fmul fast float %5854, 0x3FDACB7480000000
  %5871 = fadd fast float %5870, 0xBFD7347680000000
  %5872 = fmul fast float %5871, %5867
  %5873 = fmul fast float %5872, %5864
  br label %5874

; <label>:5874                                    ; preds = %5845, %5817
  %5875 = phi float [ %5860, %5845 ], [ 0.000000e+00, %5817 ]
  %5876 = phi float [ %5861, %5845 ], [ 0.000000e+00, %5817 ]
  %5877 = phi float [ %5862, %5845 ], [ 0.000000e+00, %5817 ]
  %5878 = phi float [ %5869, %5845 ], [ 0.000000e+00, %5817 ]
  %5879 = phi float [ %5873, %5845 ], [ 0.000000e+00, %5817 ]
  %5880 = call float @dx.op.dot3.f32(i32 55, float %5875, float %5876, float %5877, float %5689, float %5690, float %5691)  ; Dot3(ax,ay,az,bx,by,bz)
  %5881 = fmul fast float %5880, 0x3FDF454380000000
  %5882 = fmul fast float %5880, %5880
  %5883 = fmul fast float %5882, 0x3FEE471020000000
  %5884 = fadd fast float %5883, 0xBFD42F6020000000
  %5885 = fmul fast float %5840, 0x3FD20DD760000000
  %5886 = fmul fast float %5884, %5879
  %5887 = fadd fast float %5886, %5885
  %5888 = fmul fast float %5881, %5878
  %5889 = fadd fast float %5887, %5888
  %5890 = fsub fast float %5887, %5888
  %5891 = call float @dx.op.dot3.f32(i32 55, float %5875, float %5876, float %5877, float %5705, float %5706, float %5707)  ; Dot3(ax,ay,az,bx,by,bz)
  %5892 = fmul fast float %5891, 0x3FDF454380000000
  %5893 = fmul fast float %5891, %5891
  %5894 = fmul fast float %5893, 0x3FEE471020000000
  %5895 = fadd fast float %5894, 0xBFD42F6020000000
  %5896 = call float @dx.op.dot3.f32(i32 55, float %5840, float %5878, float %5879, float 0x3FD20DD760000000, float %5892, float %5895)  ; Dot3(ax,ay,az,bx,by,bz)
  %5897 = call float @dx.op.binary.f32(i32 35, float %5775, float 0.000000e+00)  ; FMax(a,b)
  %5898 = call float @dx.op.binary.f32(i32 35, float %5832, float 0.000000e+00)  ; FMax(a,b)
  %5899 = call float @dx.op.binary.f32(i32 35, float %5889, float 0.000000e+00)  ; FMax(a,b)
  %5900 = call float @dx.op.binary.f32(i32 35, float %5776, float 0.000000e+00)  ; FMax(a,b)
  %5901 = call float @dx.op.binary.f32(i32 35, float %5833, float 0.000000e+00)  ; FMax(a,b)
  %5902 = call float @dx.op.binary.f32(i32 35, float %5890, float 0.000000e+00)  ; FMax(a,b)
  %5903 = call float @dx.op.binary.f32(i32 35, float %5782, float 0.000000e+00)  ; FMax(a,b)
  %5904 = call float @dx.op.binary.f32(i32 35, float %5839, float 0.000000e+00)  ; FMax(a,b)
  %5905 = call float @dx.op.binary.f32(i32 35, float %5896, float 0.000000e+00)  ; FMax(a,b)
  %5906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5907 = extractvalue %dx.types.CBufRet.f32 %5906, 0
  %5908 = call float @dx.op.binary.f32(i32 36, float %5692, float %5907)  ; FMin(a,b)
  %5909 = fmul fast float %5908, %5709
  %5910 = fsub fast float 1.000000e+00, %5909
  %5911 = bitcast float %5910 to i32
  %5912 = sub nsw i32 2129859010, %5911
  %5913 = bitcast i32 %5912 to float
  %5914 = call float @dx.op.binary.f32(i32 36, float %5693, float %5907)  ; FMin(a,b)
  %5915 = fmul fast float %5914, %5709
  %5916 = fsub fast float 1.000000e+00, %5915
  %5917 = bitcast float %5916 to i32
  %5918 = sub nsw i32 2129859010, %5917
  %5919 = bitcast i32 %5918 to float
  %5920 = call float @dx.op.binary.f32(i32 36, float %5694, float %5907)  ; FMin(a,b)
  %5921 = fmul fast float %5920, %5709
  %5922 = fsub fast float 1.000000e+00, %5921
  %5923 = bitcast float %5922 to i32
  %5924 = sub nsw i32 2129859010, %5923
  %5925 = bitcast i32 %5924 to float
  %5926 = fmul fast float %5897, %5708
  %5927 = fmul fast float %5926, %5913
  %5928 = fmul fast float %5898, %5708
  %5929 = fmul fast float %5928, %5919
  %5930 = fmul fast float %5899, %5708
  %5931 = fmul fast float %5930, %5925
  %5932 = call float @dx.op.binary.f32(i32 36, float %5686, float %5907)  ; FMin(a,b)
  %5933 = fmul fast float %5932, %5709
  %5934 = fsub fast float 1.000000e+00, %5933
  %5935 = bitcast float %5934 to i32
  %5936 = sub nsw i32 2129859010, %5935
  %5937 = bitcast i32 %5936 to float
  %5938 = call float @dx.op.binary.f32(i32 36, float %5687, float %5907)  ; FMin(a,b)
  %5939 = fmul fast float %5938, %5709
  %5940 = fsub fast float 1.000000e+00, %5939
  %5941 = bitcast float %5940 to i32
  %5942 = sub nsw i32 2129859010, %5941
  %5943 = bitcast i32 %5942 to float
  %5944 = call float @dx.op.binary.f32(i32 36, float %5697, float %5907)  ; FMin(a,b)
  %5945 = fmul fast float %5944, %5709
  %5946 = fsub fast float 1.000000e+00, %5945
  %5947 = bitcast float %5946 to i32
  %5948 = sub nsw i32 2129859010, %5947
  %5949 = bitcast i32 %5948 to float
  %5950 = fmul fast float %5903, %5708
  %5951 = fmul fast float %5950, %5937
  %5952 = fmul fast float %5904, %5708
  %5953 = fmul fast float %5952, %5943
  %5954 = fmul fast float %5905, %5708
  %5955 = fmul fast float %5954, %5949
  %5956 = call float @dx.op.dot3.f32(i32 55, float %5927, float %5929, float %5931, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5957 = select i1 %294, float 0.000000e+00, float %5927
  %5958 = select i1 %294, float %5956, float %5929
  %5959 = select i1 %294, float 0.000000e+00, float %5931
  %5960 = call float @dx.op.dot3.f32(i32 55, float %5900, float %5901, float %5902, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5961 = select i1 %294, float 0.000000e+00, float %5900
  %5962 = select i1 %294, float %5960, float %5901
  %5963 = select i1 %294, float 0.000000e+00, float %5902
  %5964 = call float @dx.op.dot3.f32(i32 55, float %5951, float %5953, float %5955, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5965 = select i1 %294, float 0.000000e+00, float %5951
  %5966 = select i1 %294, float %5964, float %5953
  %5967 = select i1 %294, float 0.000000e+00, float %5955
  %5968 = fmul fast float %4035, %4035
  %5969 = call float @dx.op.unary.f32(i32 7, float %5968)  ; Saturate(value)
  %5970 = fmul fast float %5699, 9.843750e-01
  %5971 = fmul fast float %5695, 9.843750e-01
  %5972 = fadd fast float %5970, 7.812500e-03
  %5973 = fadd fast float %5971, 7.812500e-03
  %5974 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %43, float %5972, float %5973, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5975 = extractvalue %dx.types.ResRet.f32 %5974, 0
  %5976 = extractvalue %dx.types.ResRet.f32 %5974, 1
  %5977 = extractvalue %dx.types.ResRet.f32 %5974, 2
  %5978 = extractvalue %dx.types.ResRet.f32 %5974, 3
  %5979 = fsub fast float 1.000000e+00, %5969
  %5980 = fsub fast float %5977, %5975
  %5981 = fsub fast float %5978, %5976
  %5982 = fmul fast float %5980, %5979
  %5983 = fmul fast float %5981, %5979
  %5984 = fadd fast float %5982, %5975
  %5985 = fadd fast float %5983, %5976
  %5986 = fmul fast float %5984, %5686
  %5987 = fmul fast float %5984, %5687
  %5988 = fmul fast float %5984, %5697
  %5989 = fadd fast float %5986, %5985
  %5990 = fadd fast float %5987, %5985
  %5991 = fadd fast float %5988, %5985
  %5992 = fcmp fast ogt float %4731, 0.000000e+00
  br i1 %5992, label %5993, label %6019

; <label>:5993                                    ; preds = %5874
  %5994 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %43, float %4731, float %5699, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5995 = extractvalue %dx.types.ResRet.f32 %5994, 0
  %5996 = extractvalue %dx.types.ResRet.f32 %5994, 1
  %5997 = extractvalue %dx.types.ResRet.f32 %5994, 2
  %5998 = fadd fast float %5995, -5.000000e-01
  %5999 = fadd fast float %5996, -5.000000e-01
  %6000 = fadd fast float %5997, -5.000000e-01
  %6001 = fsub fast float 1.000000e+00, %5686
  %6002 = fsub fast float 1.000000e+00, %5687
  %6003 = fsub fast float 1.000000e+00, %5697
  %6004 = fmul fast float %5686, 4.000000e+00
  %6005 = fmul fast float %6004, %6001
  %6006 = fmul fast float %6005, %5998
  %6007 = fmul fast float %5687, 4.000000e+00
  %6008 = fmul fast float %6007, %6002
  %6009 = fmul fast float %6008, %5999
  %6010 = fmul fast float %5697, 4.000000e+00
  %6011 = fmul fast float %6010, %6003
  %6012 = fmul fast float %6011, %6000
  %6013 = fadd fast float %6006, %5989
  %6014 = fadd fast float %6009, %5990
  %6015 = fadd fast float %6012, %5991
  %6016 = call float @dx.op.unary.f32(i32 7, float %6013)  ; Saturate(value)
  %6017 = call float @dx.op.unary.f32(i32 7, float %6014)  ; Saturate(value)
  %6018 = call float @dx.op.unary.f32(i32 7, float %6015)  ; Saturate(value)
  br label %6019

; <label>:6019                                    ; preds = %5993, %5874
  %6020 = phi float [ %6016, %5993 ], [ %5989, %5874 ]
  %6021 = phi float [ %6017, %5993 ], [ %5990, %5874 ]
  %6022 = phi float [ %6018, %5993 ], [ %5991, %5874 ]
  %6023 = call float @dx.op.binary.f32(i32 35, float %6021, float %6022)  ; FMax(a,b)
  %6024 = call float @dx.op.binary.f32(i32 35, float %6020, float %6023)  ; FMax(a,b)
  %6025 = fsub fast float 1.000000e+00, %6024
  %6026 = fmul fast float %6024, %5695
  %6027 = fadd fast float %6026, %5695
  %6028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %6029 = extractvalue %dx.types.CBufRet.f32 %6028, 2
  %6030 = extractvalue %dx.types.CBufRet.f32 %6028, 3
  %6031 = fmul fast float %6027, %6029
  %6032 = fadd fast float %6031, %6030
  %6033 = call float @dx.op.unary.f32(i32 7, float %6032)  ; Saturate(value)
  %6034 = fsub fast float 1.000000e+00, %5720
  %6035 = fadd fast float %6034, %6033
  %6036 = call float @dx.op.unary.f32(i32 7, float %6035)  ; Saturate(value)
  %6037 = fcmp fast olt float %6036, 1.000000e+00
  br i1 %6037, label %6038, label %6486

; <label>:6038                                    ; preds = %6019
  %6039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6040 = extractvalue %dx.types.CBufRet.f32 %6039, 2
  %6041 = extractvalue %dx.types.CBufRet.f32 %6039, 3
  %6042 = fmul fast float %6040, %109
  %6043 = fmul fast float %6041, %110
  %6044 = fptoui float %6042 to i32
  %6045 = fptoui float %6043 to i32
  %6046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6047 = extractvalue %dx.types.CBufRet.f32 %6046, 0
  %6048 = extractvalue %dx.types.CBufRet.f32 %6046, 2
  %6049 = extractvalue %dx.types.CBufRet.f32 %6046, 3
  %6050 = fadd fast float %96, -4.000000e+00
  %6051 = call float @dx.op.binary.f32(i32 35, float %6050, float 0.000000e+00)  ; FMax(a,b)
  %6052 = fadd fast float %6051, %6047
  %6053 = fmul fast float %6052, %6048
  %6054 = call float @dx.op.unary.f32(i32 23, float %6053)  ; Log(value)
  %6055 = fmul fast float %6054, %6049
  %6056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6057 = extractvalue %dx.types.CBufRet.f32 %6056, 2
  %6058 = fmul fast float %6055, %6057
  %6059 = call float @dx.op.unary.f32(i32 7, float %6058)  ; Saturate(value)
  %6060 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6061 = extractvalue %dx.types.CBufRet.i32 %6060, 1
  %6062 = add i32 %6061, -1
  %6063 = uitofp i32 %6061 to float
  %6064 = fmul fast float %6063, %6059
  %6065 = fptoui float %6064 to i32
  %6066 = call i32 @dx.op.binary.i32(i32 40, i32 %6065, i32 %6062)  ; UMin(a,b)
  %6067 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6068 = extractvalue %dx.types.CBufRet.i32 %6067, 2
  %6069 = extractvalue %dx.types.CBufRet.i32 %6067, 3
  %6070 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6045, i32 %6068, i32 %6044)  ; UMad(a,b,c)
  %6071 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6066, i32 %6069, i32 %6070)  ; UMad(a,b,c)
  %6072 = call float @dx.op.binary.f32(i32 35, float %96, float 0.000000e+00)  ; FMax(a,b)
  %6073 = fptoui float %6072 to i32
  %6074 = lshr i32 %6073, 5
  %6075 = call i32 @dx.op.binary.i32(i32 40, i32 %6074, i32 8191)  ; UMin(a,b)
  br i1 false, label %6076, label %6083

; <label>:6076                                    ; preds = %6038
  %6077 = fadd fast float 0.000000e+00, %5707
  %6078 = call float @dx.op.dot3.f32(i32 55, float %5705, float %5706, float %6077, float %5705, float %5706, float %6077)  ; Dot3(ax,ay,az,bx,by,bz)
  %6079 = call float @dx.op.unary.f32(i32 25, float %6078)  ; Rsqrt(value)
  %6080 = fmul fast float %6079, %5705
  %6081 = fmul fast float %6079, %5706
  %6082 = fmul fast float %6077, %6079
  br label %6083

; <label>:6083                                    ; preds = %6076, %6038
  %6084 = phi float [ %6080, %6076 ], [ %5705, %6038 ]
  %6085 = phi float [ %6081, %6076 ], [ %5706, %6038 ]
  %6086 = phi float [ %6082, %6076 ], [ %5707, %6038 ]
  %6087 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6088 = extractvalue %dx.types.CBufRet.i32 %6087, 2
  %6089 = add nsw i32 %6088, -1
  %6090 = call i32 @dx.op.binary.i32(i32 37, i32 %6089, i32 0)  ; IMax(a,b)
  %6091 = shl i32 %6075, 2
  %6092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %6091, i32 undef)  ; BufferLoad(srv,index,wot)
  %6093 = extractvalue %dx.types.ResRet.i32 %6092, 0
  %6094 = lshr i32 %6093, 16
  %6095 = and i32 %6093, 65535
  %6096 = lshr i32 %6093, 21
  %6097 = lshr i32 %6095, 5
  %6098 = call i32 @dx.op.binary.i32(i32 40, i32 %6097, i32 %6090)  ; UMin(a,b)
  %6099 = icmp ugt i32 %6096, %6098
  br i1 %6099, label %6462, label %6100

; <label>:6100                                    ; preds = %6083
  br label %6101

; <label>:6101                                    ; preds = %6454, %6100
  %6102 = phi float [ %6455, %6454 ], [ 0.000000e+00, %6100 ]
  %6103 = phi float [ %6456, %6454 ], [ 0.000000e+00, %6100 ]
  %6104 = phi float [ %6457, %6454 ], [ 0.000000e+00, %6100 ]
  %6105 = phi float [ %6458, %6454 ], [ 1.000000e+00, %6100 ]
  %6106 = phi i32 [ %6459, %6454 ], [ %6096, %6100 ]
  %6107 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6108 = extractvalue %dx.types.CBufRet.i32 %6107, 2
  %6109 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6071, i32 %6108, i32 %6106)  ; UMad(a,b,c)
  %6110 = shl i32 %6109, 2
  %6111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %6110, i32 undef)  ; BufferLoad(srv,index,wot)
  %6112 = extractvalue %dx.types.ResRet.i32 %6111, 0
  %6113 = shl i32 %6106, 5
  %6114 = sub nsw i32 %6094, %6113
  %6115 = call i32 @dx.op.binary.i32(i32 37, i32 %6114, i32 0)  ; IMax(a,b)
  %6116 = call i32 @dx.op.binary.i32(i32 38, i32 %6115, i32 31)  ; IMin(a,b)
  %6117 = sub nsw i32 1, %6094
  %6118 = add nsw i32 %6117, %6095
  %6119 = call i32 @dx.op.binary.i32(i32 37, i32 %6118, i32 0)  ; IMax(a,b)
  %6120 = call i32 @dx.op.binary.i32(i32 38, i32 %6119, i32 32)  ; IMin(a,b)
  %6121 = and i32 %6120, 31
  %6122 = shl i32 -1, %6121
  %6123 = xor i32 %6122, -1
  %6124 = and i32 %6116, 31
  %6125 = shl i32 %6123, %6124
  %6126 = icmp eq i32 %6120, 32
  %6127 = select i1 %6126, i32 -1, i32 %6125
  %6128 = and i32 %6127, %6112
  %6129 = icmp eq i32 %6128, 0
  br i1 %6129, label %6454, label %6130

; <label>:6130                                    ; preds = %6101
  br label %6131

; <label>:6131                                    ; preds = %6237, %6130
  %6132 = phi float [ %6238, %6237 ], [ %6102, %6130 ]
  %6133 = phi float [ %6239, %6237 ], [ %6103, %6130 ]
  %6134 = phi float [ %6240, %6237 ], [ %6104, %6130 ]
  %6135 = phi float [ %6241, %6237 ], [ %6105, %6130 ]
  %6136 = phi i32 [ %6141, %6237 ], [ %6128, %6130 ]
  %6137 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6136)  ; FirstbitLo(value)
  %6138 = add i32 %6137, %6113
  %6139 = and i32 %6137, 31
  %6140 = shl i32 1, %6139
  %6141 = xor i32 %6140, %6136
  %6142 = mul i32 %6138, 72
  %6143 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6142, i32 undef)  ; BufferLoad(srv,index,wot)
  %6144 = extractvalue %dx.types.ResRet.f32 %6143, 0
  %6145 = extractvalue %dx.types.ResRet.f32 %6143, 1
  %6146 = extractvalue %dx.types.ResRet.f32 %6143, 2
  %6147 = add i32 %6142, 12
  %6148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %6147, i32 undef)  ; BufferLoad(srv,index,wot)
  %6149 = extractvalue %dx.types.ResRet.i32 %6148, 0
  %6150 = add i32 %6142, 16
  %6151 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6150, i32 undef)  ; BufferLoad(srv,index,wot)
  %6152 = extractvalue %dx.types.ResRet.f32 %6151, 0
  %6153 = extractvalue %dx.types.ResRet.f32 %6151, 1
  %6154 = extractvalue %dx.types.ResRet.f32 %6151, 2
  %6155 = add i32 %6142, 28
  %6156 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6155, i32 undef)  ; BufferLoad(srv,index,wot)
  %6157 = extractvalue %dx.types.ResRet.f32 %6156, 0
  %6158 = add i32 %6142, 32
  %6159 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6158, i32 undef)  ; BufferLoad(srv,index,wot)
  %6160 = extractvalue %dx.types.ResRet.f32 %6159, 0
  %6161 = extractvalue %dx.types.ResRet.f32 %6159, 1
  %6162 = extractvalue %dx.types.ResRet.f32 %6159, 2
  %6163 = extractvalue %dx.types.ResRet.f32 %6159, 3
  %6164 = add i32 %6142, 48
  %6165 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6164, i32 undef)  ; BufferLoad(srv,index,wot)
  %6166 = extractvalue %dx.types.ResRet.f32 %6165, 0
  %6167 = extractvalue %dx.types.ResRet.f32 %6165, 1
  %6168 = add i32 %6142, 56
  %6169 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6168, i32 undef)  ; BufferLoad(srv,index,wot)
  %6170 = extractvalue %dx.types.ResRet.f32 %6169, 0
  %6171 = extractvalue %dx.types.ResRet.f32 %6169, 1
  %6172 = add i32 %6142, 64
  %6173 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6172, i32 undef)  ; BufferLoad(srv,index,wot)
  %6174 = extractvalue %dx.types.ResRet.f32 %6173, 0
  %6175 = extractvalue %dx.types.ResRet.f32 %6173, 1
  %6176 = mul i32 %6138, 60
  %6177 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %6176, i32 undef)  ; BufferLoad(srv,index,wot)
  %6178 = extractvalue %dx.types.ResRet.f32 %6177, 0
  %6179 = extractvalue %dx.types.ResRet.f32 %6177, 1
  %6180 = extractvalue %dx.types.ResRet.f32 %6177, 2
  %6181 = add i32 %6176, 12
  %6182 = add i32 %6176, 48
  %6183 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %6182, i32 undef)  ; BufferLoad(srv,index,wot)
  %6184 = extractvalue %dx.types.ResRet.f32 %6183, 0
  %6185 = extractvalue %dx.types.ResRet.f32 %6183, 1
  %6186 = extractvalue %dx.types.ResRet.f32 %6183, 2
  %6187 = and i32 %6149, 32767
  %6188 = bitcast float %6144 to i32
  %6189 = icmp eq i32 %6188, -1
  %6190 = bitcast float %6145 to i32
  %6191 = and i32 %6149, 32768
  %6192 = icmp ne i32 %6191, 0
  %6193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6194 = extractvalue %dx.types.CBufRet.f32 %6193, 0
  %6195 = extractvalue %dx.types.CBufRet.f32 %6193, 1
  %6196 = extractvalue %dx.types.CBufRet.f32 %6193, 2
  %6197 = fsub fast float %6178, %6194
  %6198 = fsub fast float %6179, %6195
  %6199 = fsub fast float %6180, %6196
  %6200 = fsub fast float %188, %6197
  %6201 = fsub fast float %189, %6198
  %6202 = fsub fast float %190, %6199
  %6203 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %6181, i32 undef)  ; BufferLoad(srv,index,wot)
  %6204 = extractvalue %dx.types.ResRet.f32 %6203, 0
  %6205 = extractvalue %dx.types.ResRet.f32 %6203, 1
  %6206 = extractvalue %dx.types.ResRet.f32 %6203, 2
  %6207 = call float @dx.op.dot3.f32(i32 55, float %6200, float %6201, float %6202, float %6204, float %6205, float %6206)  ; Dot3(ax,ay,az,bx,by,bz)
  %6208 = add i32 %6176, 24
  %6209 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %6208, i32 undef)  ; BufferLoad(srv,index,wot)
  %6210 = extractvalue %dx.types.ResRet.f32 %6209, 0
  %6211 = extractvalue %dx.types.ResRet.f32 %6209, 1
  %6212 = extractvalue %dx.types.ResRet.f32 %6209, 2
  %6213 = call float @dx.op.dot3.f32(i32 55, float %6200, float %6201, float %6202, float %6210, float %6211, float %6212)  ; Dot3(ax,ay,az,bx,by,bz)
  %6214 = add i32 %6176, 36
  %6215 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %6214, i32 undef)  ; BufferLoad(srv,index,wot)
  %6216 = extractvalue %dx.types.ResRet.f32 %6215, 0
  %6217 = extractvalue %dx.types.ResRet.f32 %6215, 1
  %6218 = extractvalue %dx.types.ResRet.f32 %6215, 2
  %6219 = call float @dx.op.dot3.f32(i32 55, float %6200, float %6201, float %6202, float %6216, float %6217, float %6218)  ; Dot3(ax,ay,az,bx,by,bz)
  %6220 = call float @dx.op.unary.f32(i32 6, float %6207)  ; FAbs(value)
  %6221 = call float @dx.op.unary.f32(i32 6, float %6213)  ; FAbs(value)
  %6222 = call float @dx.op.unary.f32(i32 6, float %6219)  ; FAbs(value)
  %6223 = fsub fast float %6184, %6220
  %6224 = fsub fast float %6185, %6221
  %6225 = fsub fast float %6186, %6222
  %6226 = fmul fast float %6223, %6152
  %6227 = fmul fast float %6224, %6153
  %6228 = fmul fast float %6225, %6154
  %6229 = call float @dx.op.binary.f32(i32 36, float %6227, float %6228)  ; FMin(a,b)
  %6230 = call float @dx.op.binary.f32(i32 36, float %6226, float %6229)  ; FMin(a,b)
  %6231 = call float @dx.op.unary.f32(i32 7, float %6230)  ; Saturate(value)
  %6232 = call float @dx.op.binary.f32(i32 36, float %6135, float %6231)  ; FMin(a,b)
  %6233 = uitofp i1 %6192 to float
  %6234 = fsub fast float 1.000000e+00, %6233
  %6235 = fmul fast float %6232, %6234
  %6236 = fcmp fast ogt float %6235, 0.000000e+00
  br i1 %6236, label %6243, label %6237

; <label>:6237                                    ; preds = %6385, %6131
  %6238 = phi float [ %6449, %6385 ], [ %6132, %6131 ]
  %6239 = phi float [ %6450, %6385 ], [ %6133, %6131 ]
  %6240 = phi float [ %6451, %6385 ], [ %6134, %6131 ]
  %6241 = phi float [ %6452, %6385 ], [ %6135, %6131 ]
  %6242 = icmp eq i32 %6136, %6140
  br i1 %6242, label %6453, label %6131

; <label>:6243                                    ; preds = %6131
  br i1 %6189, label %6301, label %6244

; <label>:6244                                    ; preds = %6243
  %6245 = fsub fast float -0.000000e+00, %6204
  %6246 = fsub fast float -0.000000e+00, %6205
  %6247 = fsub fast float -0.000000e+00, %6206
  %6248 = call float @dx.op.dot3.f32(i32 55, float %6084, float %6085, float %6086, float %6245, float %6246, float %6247)  ; Dot3(ax,ay,az,bx,by,bz)
  %6249 = fsub fast float -0.000000e+00, %6248
  %6250 = call float @dx.op.dot3.f32(i32 55, float %6200, float %6201, float %6202, float %6245, float %6246, float %6247)  ; Dot3(ax,ay,az,bx,by,bz)
  %6251 = fadd fast float %6250, %6167
  %6252 = fadd fast float %6166, %6250
  %6253 = fsub fast float -0.000000e+00, %6252
  %6254 = fcmp ogt float %6248, -0.000000e+00
  %6255 = select i1 %6254, float %6253, float %6251
  %6256 = call float @dx.op.unary.f32(i32 6, float %6249)  ; FAbs(value)
  %6257 = fdiv fast float 1.000000e+00, %6256
  %6258 = fmul fast float %6255, %6257
  %6259 = call float @dx.op.binary.f32(i32 35, float %6258, float 0.000000e+00)  ; FMax(a,b)
  %6260 = fsub fast float -0.000000e+00, %6210
  %6261 = fsub fast float -0.000000e+00, %6211
  %6262 = fsub fast float -0.000000e+00, %6212
  %6263 = call float @dx.op.dot3.f32(i32 55, float %6084, float %6085, float %6086, float %6260, float %6261, float %6262)  ; Dot3(ax,ay,az,bx,by,bz)
  %6264 = fsub fast float -0.000000e+00, %6263
  %6265 = call float @dx.op.dot3.f32(i32 55, float %6200, float %6201, float %6202, float %6260, float %6261, float %6262)  ; Dot3(ax,ay,az,bx,by,bz)
  %6266 = fadd fast float %6265, %6171
  %6267 = fadd fast float %6170, %6265
  %6268 = fsub fast float -0.000000e+00, %6267
  %6269 = fcmp ogt float %6263, -0.000000e+00
  %6270 = select i1 %6269, float %6268, float %6266
  %6271 = call float @dx.op.unary.f32(i32 6, float %6264)  ; FAbs(value)
  %6272 = fdiv fast float 1.000000e+00, %6271
  %6273 = fmul fast float %6270, %6272
  %6274 = call float @dx.op.binary.f32(i32 35, float %6273, float 0.000000e+00)  ; FMax(a,b)
  %6275 = fsub fast float -0.000000e+00, %6216
  %6276 = fsub fast float -0.000000e+00, %6217
  %6277 = fsub fast float -0.000000e+00, %6218
  %6278 = call float @dx.op.dot3.f32(i32 55, float %6084, float %6085, float %6086, float %6275, float %6276, float %6277)  ; Dot3(ax,ay,az,bx,by,bz)
  %6279 = fsub fast float -0.000000e+00, %6278
  %6280 = call float @dx.op.dot3.f32(i32 55, float %6200, float %6201, float %6202, float %6275, float %6276, float %6277)  ; Dot3(ax,ay,az,bx,by,bz)
  %6281 = fadd fast float %6280, %6175
  %6282 = fadd fast float %6174, %6280
  %6283 = fsub fast float -0.000000e+00, %6282
  %6284 = fcmp ogt float %6278, -0.000000e+00
  %6285 = select i1 %6284, float %6283, float %6281
  %6286 = call float @dx.op.unary.f32(i32 6, float %6279)  ; FAbs(value)
  %6287 = fdiv fast float 1.000000e+00, %6286
  %6288 = fmul fast float %6285, %6287
  %6289 = call float @dx.op.binary.f32(i32 35, float %6288, float 0.000000e+00)  ; FMax(a,b)
  %6290 = call float @dx.op.binary.f32(i32 36, float %6274, float %6289)  ; FMin(a,b)
  %6291 = call float @dx.op.binary.f32(i32 36, float %6259, float %6290)  ; FMin(a,b)
  %6292 = fmul fast float %6291, %6084
  %6293 = fmul fast float %6291, %6085
  %6294 = fmul fast float %6291, %6086
  %6295 = fadd fast float %6292, %188
  %6296 = fadd fast float %6293, %189
  %6297 = fadd fast float %6294, %190
  %6298 = fsub fast float %6295, %6144
  %6299 = fsub fast float %6296, %6145
  %6300 = fsub fast float %6297, %6146
  br label %6308

; <label>:6301                                    ; preds = %6243
  %6302 = fmul fast float %6084, 8.096000e+03
  %6303 = fmul fast float %6085, 8.096000e+03
  %6304 = fmul fast float %6086, 8.096000e+03
  %6305 = fadd fast float %6302, %188
  %6306 = fadd fast float %6303, %189
  %6307 = fadd fast float %6304, %190
  br label %6308

; <label>:6308                                    ; preds = %6301, %6244
  %6309 = phi float [ %6084, %6301 ], [ %6298, %6244 ]
  %6310 = phi float [ %6085, %6301 ], [ %6299, %6244 ]
  %6311 = phi float [ %6086, %6301 ], [ %6300, %6244 ]
  %6312 = phi float [ %6305, %6301 ], [ %6295, %6244 ]
  %6313 = phi float [ %6306, %6301 ], [ %6296, %6244 ]
  %6314 = phi float [ %6307, %6301 ], [ %6297, %6244 ]
  %6315 = fcmp fast olt float %6163, 1.000000e+00
  br i1 %6315, label %6316, label %6347, !dx.controlflow.hints !92

; <label>:6316                                    ; preds = %6308
  %6317 = fmul fast float %6311, %6161
  %6318 = fmul fast float %6310, %6162
  %6319 = fsub fast float %6317, %6318
  %6320 = fmul fast float %6309, %6162
  %6321 = fmul fast float %6311, %6160
  %6322 = fsub fast float %6320, %6321
  %6323 = fmul fast float %6310, %6160
  %6324 = fmul fast float %6309, %6161
  %6325 = fsub fast float %6323, %6324
  %6326 = fmul fast float %6319, 2.000000e+00
  %6327 = fmul fast float %6322, 2.000000e+00
  %6328 = fmul fast float %6325, 2.000000e+00
  %6329 = fmul fast float %6326, %6163
  %6330 = fmul fast float %6327, %6163
  %6331 = fmul fast float %6328, %6163
  %6332 = fmul fast float %6328, %6161
  %6333 = fmul fast float %6327, %6162
  %6334 = fmul fast float %6326, %6162
  %6335 = fmul fast float %6328, %6160
  %6336 = fmul fast float %6327, %6160
  %6337 = fmul fast float %6326, %6161
  %6338 = fadd fast float %6332, %6309
  %6339 = fadd fast float %6338, %6329
  %6340 = fsub fast float %6339, %6333
  %6341 = fsub fast float %6310, %6335
  %6342 = fadd fast float %6341, %6330
  %6343 = fadd fast float %6342, %6334
  %6344 = fadd fast float %6331, %6311
  %6345 = fsub fast float %6344, %6337
  %6346 = fadd fast float %6345, %6336
  br label %6347

; <label>:6347                                    ; preds = %6316, %6308
  %6348 = phi float [ %6340, %6316 ], [ %6309, %6308 ]
  %6349 = phi float [ %6343, %6316 ], [ %6310, %6308 ]
  %6350 = phi float [ %6346, %6316 ], [ %6311, %6308 ]
  br i1 %6189, label %6382, label %6351

; <label>:6351                                    ; preds = %6347
  %6352 = fmul fast float %5695, 0x400187C840000000
  %6353 = fadd fast float %6352, 0xC00EFC2120000000
  %6354 = fmul fast float %6353, %5695
  %6355 = fadd fast float %6354, 0x3FE5D16340000000
  %6356 = fmul fast float %6355, %5695
  %6357 = fadd fast float %6356, 1.000000e+00
  %6358 = call float @dx.op.unary.f32(i32 7, float %6357)  ; Saturate(value)
  %6359 = fsub fast float %6312, %188
  %6360 = fsub fast float %6313, %189
  %6361 = fsub fast float %6314, %190
  %6362 = fsub fast float %6312, %6144
  %6363 = fsub fast float %6313, %6145
  %6364 = fsub fast float %6314, %6146
  %6365 = call float @dx.op.dot3.f32(i32 55, float %6359, float %6360, float %6361, float %6359, float %6360, float %6361)  ; Dot3(ax,ay,az,bx,by,bz)
  %6366 = call float @dx.op.dot3.f32(i32 55, float %6362, float %6363, float %6364, float %6362, float %6363, float %6364)  ; Dot3(ax,ay,az,bx,by,bz)
  %6367 = fadd fast float %6366, 0x3EE4F8B580000000
  %6368 = fdiv fast float %6365, %6367
  %6369 = bitcast float %6368 to i32
  %6370 = ashr i32 %6369, 1
  %6371 = add nsw i32 %6370, 532487669
  %6372 = bitcast i32 %6371 to float
  %6373 = fmul fast float %6372, %6358
  %6374 = call float @dx.op.unary.f32(i32 7, float %6373)  ; Saturate(value)
  %6375 = fmul fast float %6374, 0x4009981AE0000000
  %6376 = fsub fast float 0x40111BBD80000000, %6375
  %6377 = fmul fast float %6376, %6374
  %6378 = fadd fast float %6377, 0xC0009F6020000000
  %6379 = fmul fast float %6378, %6374
  %6380 = fadd fast float %6379, 1.000000e+00
  %6381 = call float @dx.op.unary.f32(i32 7, float %6380)  ; Saturate(value)
  br label %6385

; <label>:6382                                    ; preds = %6347
  %6383 = icmp ne i32 %6190, -1
  %6384 = zext i1 %6383 to i32
  br label %6385

; <label>:6385                                    ; preds = %6382, %6351
  %6386 = phi float [ %5695, %6382 ], [ %6381, %6351 ]
  %6387 = phi i32 [ %6384, %6382 ], [ 0, %6351 ]
  %6388 = fmul float %6386, 5.000000e+00
  %6389 = fsub float 5.000000e+00, %6388
  %6390 = icmp ne i32 %6387, 0
  %6391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6392 = extractvalue %dx.types.CBufRet.f32 %6391, 3
  %6393 = fadd fast float %6392, %6389
  %6394 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6393)  ; FMax(a,b)
  %6395 = call float @dx.op.unary.f32(i32 6, float %6348)  ; FAbs(value)
  %6396 = call float @dx.op.unary.f32(i32 6, float %6349)  ; FAbs(value)
  %6397 = fadd fast float %6396, %6395
  %6398 = call float @dx.op.unary.f32(i32 6, float %6350)  ; FAbs(value)
  %6399 = fadd fast float %6397, %6398
  %6400 = fcmp fast oeq float %6399, 0.000000e+00
  %6401 = fdiv fast float 1.000000e+00, %6399
  %6402 = select i1 %6400, float 1.000000e+00, float %6401
  %6403 = fmul fast float %6402, %6348
  %6404 = fmul fast float %6402, %6349
  %6405 = call float @dx.op.unary.f32(i32 6, float %6404)  ; FAbs(value)
  %6406 = call float @dx.op.unary.f32(i32 6, float %6403)  ; FAbs(value)
  %6407 = fsub fast float 1.000000e+00, %6405
  %6408 = fsub fast float 1.000000e+00, %6406
  %6409 = fcmp fast oge float %6403, 0.000000e+00
  %6410 = fcmp fast oge float %6404, 0.000000e+00
  %6411 = select i1 %6409, float 1.000000e+00, float -1.000000e+00
  %6412 = select i1 %6410, float 1.000000e+00, float -1.000000e+00
  %6413 = fcmp fast ole float %6350, 0.000000e+00
  %6414 = fmul fast float %6411, %6407
  %6415 = fmul fast float %6412, %6408
  %6416 = select i1 %6413, float %6414, float %6403
  %6417 = select i1 %6413, float %6415, float %6404
  %6418 = fmul fast float %6416, 5.000000e-01
  %6419 = fmul fast float %6417, 5.000000e-01
  %6420 = fadd fast float %6418, 5.000000e-01
  %6421 = fadd fast float %6419, 5.000000e-01
  %6422 = uitofp i32 %6187 to float
  %6423 = call float @dx.op.binary.f32(i32 36, float %6394, float 3.000000e+00)  ; FMin(a,b)
  %6424 = fadd fast float %6423, 2.000000e+00
  %6425 = call float @dx.op.unary.f32(i32 21, float %6424)  ; Exp(value)
  %6426 = extractvalue %dx.types.CBufRet.f32 %6391, 1
  %6427 = fmul fast float %6426, %6425
  %6428 = fmul fast float %6427, 2.000000e+00
  %6429 = fsub fast float 1.000000e+00, %6428
  %6430 = fmul fast float %6420, %6429
  %6431 = fmul fast float %6421, %6429
  %6432 = fadd fast float %6430, %6427
  %6433 = fadd fast float %6431, %6427
  %6434 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %41, float %6432, float %6433, float %6422, float undef, i32 0, i32 0, i32 undef, float %6394)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6435 = extractvalue %dx.types.ResRet.f32 %6434, 0
  %6436 = extractvalue %dx.types.ResRet.f32 %6434, 1
  %6437 = extractvalue %dx.types.ResRet.f32 %6434, 2
  %6438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6439 = extractvalue %dx.types.CBufRet.f32 %6438, 3
  %6440 = fmul fast float %6439, %6157
  %6441 = call float @dx.op.binary.f32(i32 36, float %5725, float %6440)  ; FMin(a,b)
  %6442 = select i1 %6390, float %6441, float %6440
  %6443 = fmul fast float %6435, %6235
  %6444 = fmul fast float %6443, %6442
  %6445 = fmul fast float %6436, %6235
  %6446 = fmul fast float %6445, %6442
  %6447 = fmul fast float %6437, %6235
  %6448 = fmul fast float %6447, %6442
  %6449 = fadd fast float %6444, %6132
  %6450 = fadd fast float %6446, %6133
  %6451 = fadd fast float %6448, %6134
  %6452 = fsub fast float %6135, %6235
  br label %6237

; <label>:6453                                    ; preds = %6237
  br label %6454

; <label>:6454                                    ; preds = %6453, %6101
  %6455 = phi float [ %6102, %6101 ], [ %6238, %6453 ]
  %6456 = phi float [ %6103, %6101 ], [ %6239, %6453 ]
  %6457 = phi float [ %6104, %6101 ], [ %6240, %6453 ]
  %6458 = phi float [ %6105, %6101 ], [ %6241, %6453 ]
  %6459 = add i32 %6106, 1
  %6460 = icmp ugt i32 %6459, %6098
  br i1 %6460, label %6461, label %6101, !llvm.loop !93

; <label>:6461                                    ; preds = %6454
  br label %6462

; <label>:6462                                    ; preds = %6461, %6083
  %6463 = phi float [ 0.000000e+00, %6083 ], [ %6455, %6461 ]
  %6464 = phi float [ 0.000000e+00, %6083 ], [ %6456, %6461 ]
  %6465 = phi float [ 0.000000e+00, %6083 ], [ %6457, %6461 ]
  %6466 = call float @dx.op.dot3.f32(i32 55, float %6463, float %6464, float %6465, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6467 = select i1 %294, float 0.000000e+00, float %6463
  %6468 = select i1 %294, float %6466, float %6464
  %6469 = select i1 %294, float 0.000000e+00, float %6465
  %6470 = fcmp fast olt float %6036, 0.000000e+00
  %6471 = call float @dx.op.unary.f32(i32 6, float %6036)  ; FAbs(value)
  %6472 = fmul fast float %6471, %5965
  %6473 = fmul fast float %6471, %5966
  %6474 = fmul fast float %6471, %5967
  %6475 = select i1 %6470, float %5965, float %6472
  %6476 = select i1 %6470, float %5966, float %6473
  %6477 = select i1 %6470, float %5967, float %6474
  %6478 = fsub fast float 1.000000e+00, %6471
  %6479 = call float @dx.op.unary.f32(i32 7, float %6478)  ; Saturate(value)
  %6480 = fmul fast float %6479, %6467
  %6481 = fmul fast float %6479, %6468
  %6482 = fmul fast float %6479, %6469
  %6483 = fadd fast float %6475, %6480
  %6484 = fadd fast float %6476, %6481
  %6485 = fadd fast float %6477, %6482
  br label %6486

; <label>:6486                                    ; preds = %6462, %6019
  %6487 = phi float [ %5965, %6019 ], [ %6483, %6462 ]
  %6488 = phi float [ %5966, %6019 ], [ %6484, %6462 ]
  %6489 = phi float [ %5967, %6019 ], [ %6485, %6462 ]
  %6490 = call float @dx.op.dot3.f32(i32 55, float %5692, float %5693, float %5694, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6491 = fcmp fast ogt float %6490, 0x3E7FF19E20000000
  %6492 = fdiv fast float 1.000000e+00, %6490
  %6493 = select i1 %6491, float %6492, float 0.000000e+00
  %6494 = fmul fast float %6493, %5692
  %6495 = fmul fast float %6493, %5693
  %6496 = fmul fast float %6493, %5694
  %6497 = fadd fast float %6494, -1.000000e+00
  %6498 = fadd fast float %6495, -1.000000e+00
  %6499 = fadd fast float %6496, -1.000000e+00
  %6500 = fmul fast float %6497, 5.000000e-01
  %6501 = fmul fast float %6498, 5.000000e-01
  %6502 = fmul fast float %6499, 5.000000e-01
  %6503 = fadd fast float %6500, 1.000000e+00
  %6504 = fadd fast float %6501, 1.000000e+00
  %6505 = fadd fast float %6502, 1.000000e+00
  %6506 = call float @dx.op.binary.f32(i32 35, float %5699, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6507 = fdiv fast float %4035, %6506
  %6508 = fcmp fast olt float %4802, 1.270000e+02
  %6509 = fcmp fast olt float %4803, 1.270000e+02
  %6510 = fcmp fast olt float %4804, 1.270000e+02
  %6511 = fmul fast float %4802, 0xBFF7154760000000
  %6512 = fmul fast float %6511, %6507
  %6513 = fmul fast float %4803, 0xBFF7154760000000
  %6514 = fmul fast float %6513, %6507
  %6515 = fmul fast float %4804, 0xBFF7154760000000
  %6516 = fmul fast float %6515, %6507
  %6517 = call float @dx.op.unary.f32(i32 21, float %6512)  ; Exp(value)
  %6518 = call float @dx.op.unary.f32(i32 21, float %6514)  ; Exp(value)
  %6519 = call float @dx.op.unary.f32(i32 21, float %6516)  ; Exp(value)
  %6520 = call float @dx.op.unary.f32(i32 7, float %6517)  ; Saturate(value)
  %6521 = call float @dx.op.unary.f32(i32 7, float %6518)  ; Saturate(value)
  %6522 = call float @dx.op.unary.f32(i32 7, float %6519)  ; Saturate(value)
  %6523 = select i1 %6508, float %6520, float 0.000000e+00
  %6524 = select i1 %6509, float %6521, float 0.000000e+00
  %6525 = select i1 %6510, float %6522, float 0.000000e+00
  %6526 = fmul fast float %6523, %6025
  %6527 = fmul fast float %6524, %6025
  %6528 = fmul fast float %6525, %6025
  %6529 = fadd fast float %6526, -1.000000e+00
  %6530 = fadd fast float %6527, -1.000000e+00
  %6531 = fadd fast float %6528, -1.000000e+00
  %6532 = fmul fast float %6529, %4757
  %6533 = fmul fast float %6530, %4757
  %6534 = fmul fast float %6531, %4757
  %6535 = fmul fast float %6487, %6020
  %6536 = fmul fast float %6488, %6021
  %6537 = fmul fast float %6489, %6022
  %6538 = fsub fast float 1.000000e+00, %5699
  %6539 = bitcast float %6538 to i32
  %6540 = sitofp i32 %6539 to float
  %6541 = fmul fast float %6540, 5.000000e+00
  %6542 = fadd fast float %6541, 0xC1EFBF8940000000
  %6543 = fptosi float %6542 to i32
  %6544 = bitcast i32 %6543 to float
  %6545 = fmul fast float %6544, %4732
  %6546 = fmul fast float %5957, %6545
  %6547 = fmul fast float %6546, %6025
  %6548 = fmul fast float %6547, %6503
  %6549 = fmul fast float %5958, %6545
  %6550 = fmul fast float %6549, %6025
  %6551 = fmul fast float %6550, %6504
  %6552 = fmul fast float %5959, %6545
  %6553 = fmul fast float %6552, %6025
  %6554 = fmul fast float %6553, %6505
  %6555 = fadd fast float %6535, %4718
  %6556 = fadd fast float %6555, %6548
  %6557 = fmul fast float %6556, %4757
  %6558 = fadd fast float %6536, %4719
  %6559 = fadd fast float %6558, %6551
  %6560 = fmul fast float %6559, %4757
  %6561 = fadd fast float %6537, %4720
  %6562 = fadd fast float %6561, %6554
  %6563 = fmul fast float %6562, %4757
  %6564 = fmul fast float %5687, 0x4012D0A400000000
  %6565 = fadd fast float %6534, 1.000000e+00
  %6566 = fadd fast float %6533, 1.000000e+00
  %6567 = fadd fast float %6532, 1.000000e+00
  %6568 = fmul fast float %6025, %5959
  %6569 = fmul fast float %6025, %5958
  %6570 = fmul fast float %6025, %5957
  %6571 = fmul fast float %5714, %4757
  %6572 = fsub fast float 1.000000e+00, %6571
  %6573 = call float @dx.op.unary.f32(i32 7, float %6572)  ; Saturate(value)
  %6574 = fsub fast float 1.000000e+00, %6573
  %6575 = fadd fast float %6564, 0x3FDB6377A0000000
  %6576 = fmul fast float %6574, %6575
  %6577 = call float @dx.op.dot3.f32(i32 55, float %5509, float %5510, float %5511, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6578 = fadd fast float %6576, %6577
  %6579 = call float @dx.op.unary.f32(i32 7, float %6578)  ; Saturate(value)
  %6580 = call float @dx.op.binary.f32(i32 35, float %6579, float 0x3F847AE140000000)  ; FMax(a,b)
  %6581 = fmul fast float %6580, %6580
  %6582 = fmul fast float %6581, %6581
  %6583 = fmul fast float %6582, 0xC00A935000000000
  %6584 = call float @dx.op.unary.f32(i32 21, float %6583)  ; Exp(value)
  %6585 = fsub fast float 1.000000e+00, %6584
  %6586 = fmul fast float %6567, %5961
  %6587 = fmul fast float %6586, %6585
  %6588 = fmul fast float %6566, %5962
  %6589 = fmul fast float %6588, %6585
  %6590 = fmul fast float %6565, %5963
  %6591 = fmul fast float %6590, %6585
  %6592 = fadd fast float %6587, %6570
  %6593 = fmul fast float %6592, %4757
  %6594 = fadd fast float %6589, %6569
  %6595 = fmul fast float %6594, %4757
  %6596 = fadd fast float %6591, %6568
  %6597 = fmul fast float %6596, %4757
  %6598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6599 = extractvalue %dx.types.CBufRet.f32 %6598, 3
  %6600 = fcmp fast oeq float %6599, 0.000000e+00
  br i1 %6600, label %8366, label %6601

; <label>:6601                                    ; preds = %6486
  %6602 = extractvalue %dx.types.CBufRet.f32 %6598, 0
  %6603 = extractvalue %dx.types.CBufRet.f32 %6598, 1
  %6604 = extractvalue %dx.types.CBufRet.f32 %6598, 2
  %6605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6606 = extractvalue %dx.types.CBufRet.f32 %6605, 0
  %6607 = extractvalue %dx.types.CBufRet.f32 %6605, 1
  %6608 = extractvalue %dx.types.CBufRet.f32 %6605, 2
  %6609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6610 = extractvalue %dx.types.CBufRet.f32 %6609, 0
  %6611 = extractvalue %dx.types.CBufRet.f32 %6609, 1
  %6612 = call float @dx.op.dot3.f32(i32 55, float %6606, float %6607, float %6608, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6613 = select i1 %294, float %6610, float %6606
  %6614 = select i1 %294, float %6612, float %6607
  %6615 = select i1 %294, float %6611, float %6608
  %6616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6617 = extractvalue %dx.types.CBufRet.f32 %6616, 2
  %6618 = fmul fast float %6617, %116
  %6619 = fmul fast float %6617, %117
  %6620 = fmul fast float %6617, %118
  %6621 = fadd fast float %6618, %188
  %6622 = fadd fast float %6619, %189
  %6623 = fadd fast float %6620, %190
  %6624 = fcmp fast olt float %6599, 0.000000e+00
  br i1 %6624, label %7882, label %6625

; <label>:6625                                    ; preds = %6601
  %6626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6627 = extractvalue %dx.types.CBufRet.f32 %6626, 0
  %6628 = extractvalue %dx.types.CBufRet.f32 %6626, 1
  %6629 = extractvalue %dx.types.CBufRet.f32 %6626, 2
  %6630 = extractvalue %dx.types.CBufRet.f32 %6626, 3
  %6631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6632 = extractvalue %dx.types.CBufRet.f32 %6631, 0
  %6633 = extractvalue %dx.types.CBufRet.f32 %6631, 1
  %6634 = extractvalue %dx.types.CBufRet.f32 %6631, 2
  %6635 = extractvalue %dx.types.CBufRet.f32 %6631, 3
  %6636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6637 = extractvalue %dx.types.CBufRet.f32 %6636, 0
  %6638 = extractvalue %dx.types.CBufRet.f32 %6636, 1
  %6639 = extractvalue %dx.types.CBufRet.f32 %6636, 2
  %6640 = extractvalue %dx.types.CBufRet.f32 %6636, 3
  %6641 = fmul fast float %6627, %6621
  %6642 = call float @dx.op.tertiary.f32(i32 46, float %6622, float %6628, float %6641)  ; FMad(a,b,c)
  %6643 = call float @dx.op.tertiary.f32(i32 46, float %6623, float %6629, float %6642)  ; FMad(a,b,c)
  %6644 = fadd fast float %6643, %6630
  %6645 = fmul fast float %6632, %6621
  %6646 = call float @dx.op.tertiary.f32(i32 46, float %6622, float %6633, float %6645)  ; FMad(a,b,c)
  %6647 = call float @dx.op.tertiary.f32(i32 46, float %6623, float %6634, float %6646)  ; FMad(a,b,c)
  %6648 = fadd fast float %6647, %6635
  %6649 = fmul fast float %6637, %6621
  %6650 = call float @dx.op.tertiary.f32(i32 46, float %6622, float %6638, float %6649)  ; FMad(a,b,c)
  %6651 = call float @dx.op.tertiary.f32(i32 46, float %6623, float %6639, float %6650)  ; FMad(a,b,c)
  %6652 = fadd fast float %6651, %6640
  %6653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6654 = extractvalue %dx.types.CBufRet.f32 %6653, 0
  %6655 = fcmp fast une float %6654, 0.000000e+00
  %6656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6657 = extractvalue %dx.types.CBufRet.f32 %6656, 0
  %6658 = extractvalue %dx.types.CBufRet.f32 %6656, 1
  %6659 = extractvalue %dx.types.CBufRet.f32 %6656, 3
  %6660 = fmul fast float %6659, %6644
  %6661 = fmul fast float %6659, %6648
  %6662 = fadd fast float %6660, %6657
  %6663 = fadd fast float %6661, %6658
  %6664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6665 = extractvalue %dx.types.CBufRet.f32 %6664, 0
  %6666 = extractvalue %dx.types.CBufRet.f32 %6664, 1
  %6667 = extractvalue %dx.types.CBufRet.f32 %6664, 3
  %6668 = fmul fast float %6667, %6644
  %6669 = fmul fast float %6667, %6648
  %6670 = fadd fast float %6668, %6665
  %6671 = fadd fast float %6669, %6666
  %6672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6673 = extractvalue %dx.types.CBufRet.f32 %6672, 1
  %6674 = fsub fast float %6673, %6652
  %6675 = extractvalue %dx.types.CBufRet.f32 %6672, 2
  %6676 = fmul fast float %6674, %6675
  %6677 = fsub fast float 1.000000e+00, %6676
  %6678 = call float @dx.op.unary.f32(i32 7, float %6677)  ; Saturate(value)
  br i1 %6655, label %6739, label %6679

; <label>:6679                                    ; preds = %6625
  %6680 = extractvalue %dx.types.CBufRet.f32 %6664, 2
  %6681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6682 = extractvalue %dx.types.CBufRet.f32 %6681, 2
  %6683 = fadd fast float %6682, %6680
  %6684 = fcmp fast ogt float %6683, 0.000000e+00
  br i1 %6684, label %6685, label %6709

; <label>:6685                                    ; preds = %6679
  %6686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6687 = extractvalue %dx.types.CBufRet.f32 %6686, 0
  %6688 = extractvalue %dx.types.CBufRet.f32 %6686, 1
  %6689 = fsub fast float %6670, %6687
  %6690 = fsub fast float %6671, %6688
  %6691 = fcmp fast olt float %6689, 0.000000e+00
  %6692 = fcmp fast olt float %6690, 0.000000e+00
  %6693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6694 = extractvalue %dx.types.CBufRet.f32 %6693, 0
  %6695 = extractvalue %dx.types.CBufRet.f32 %6693, 1
  %6696 = extractvalue %dx.types.CBufRet.f32 %6693, 2
  %6697 = extractvalue %dx.types.CBufRet.f32 %6693, 3
  %6698 = select i1 %6691, float %6694, float %6696
  %6699 = select i1 %6692, float %6695, float %6697
  %6700 = fmul fast float %6698, %6689
  %6701 = fmul fast float %6699, %6690
  %6702 = call float @dx.op.unary.f32(i32 6, float %6700)  ; FAbs(value)
  %6703 = call float @dx.op.unary.f32(i32 6, float %6701)  ; FAbs(value)
  %6704 = extractvalue %dx.types.CBufRet.f32 %6616, 0
  %6705 = call float @dx.op.binary.f32(i32 35, float %6702, float %6703)  ; FMax(a,b)
  %6706 = fsub fast float %6704, %6705
  %6707 = call float @dx.op.unary.f32(i32 7, float %6706)  ; Saturate(value)
  %6708 = fmul fast float %6707, %6678
  br label %6709

; <label>:6709                                    ; preds = %6685, %6679
  %6710 = phi float [ %6708, %6685 ], [ 0.000000e+00, %6679 ]
  %6711 = extractvalue %dx.types.CBufRet.f32 %6656, 2
  %6712 = extractvalue %dx.types.CBufRet.f32 %6681, 1
  %6713 = fadd fast float %6712, %6711
  %6714 = fcmp fast ogt float %6713, 0.000000e+00
  br i1 %6714, label %6715, label %6739

; <label>:6715                                    ; preds = %6709
  %6716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6717 = extractvalue %dx.types.CBufRet.f32 %6716, 0
  %6718 = extractvalue %dx.types.CBufRet.f32 %6716, 1
  %6719 = fsub fast float %6662, %6717
  %6720 = fsub fast float %6663, %6718
  %6721 = fcmp fast olt float %6719, 0.000000e+00
  %6722 = fcmp fast olt float %6720, 0.000000e+00
  %6723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6724 = extractvalue %dx.types.CBufRet.f32 %6723, 0
  %6725 = extractvalue %dx.types.CBufRet.f32 %6723, 1
  %6726 = extractvalue %dx.types.CBufRet.f32 %6723, 2
  %6727 = extractvalue %dx.types.CBufRet.f32 %6723, 3
  %6728 = select i1 %6721, float %6724, float %6726
  %6729 = select i1 %6722, float %6725, float %6727
  %6730 = fmul fast float %6728, %6719
  %6731 = fmul fast float %6729, %6720
  %6732 = call float @dx.op.unary.f32(i32 6, float %6730)  ; FAbs(value)
  %6733 = call float @dx.op.unary.f32(i32 6, float %6731)  ; FAbs(value)
  %6734 = extractvalue %dx.types.CBufRet.f32 %6616, 0
  %6735 = call float @dx.op.binary.f32(i32 35, float %6732, float %6733)  ; FMax(a,b)
  %6736 = fsub fast float %6734, %6735
  %6737 = call float @dx.op.unary.f32(i32 7, float %6736)  ; Saturate(value)
  %6738 = fmul fast float %6737, %6678
  br label %6739

; <label>:6739                                    ; preds = %6715, %6709, %6625
  %6740 = phi float [ 0.000000e+00, %6625 ], [ %6738, %6715 ], [ 0.000000e+00, %6709 ]
  %6741 = phi float [ 0.000000e+00, %6625 ], [ %6710, %6715 ], [ %6710, %6709 ]
  %6742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6743 = extractvalue %dx.types.CBufRet.f32 %6742, 1
  %6744 = call float @dx.op.unary.f32(i32 7, float %6743)  ; Saturate(value)
  %6745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6746 = extractvalue %dx.types.CBufRet.f32 %6745, 0
  %6747 = extractvalue %dx.types.CBufRet.f32 %6745, 1
  %6748 = fsub fast float %6644, %6746
  %6749 = fsub fast float %6648, %6747
  %6750 = fcmp fast olt float %6748, 0.000000e+00
  %6751 = fcmp fast olt float %6749, 0.000000e+00
  %6752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6753 = extractvalue %dx.types.CBufRet.f32 %6752, 0
  %6754 = extractvalue %dx.types.CBufRet.f32 %6752, 1
  %6755 = extractvalue %dx.types.CBufRet.f32 %6752, 2
  %6756 = extractvalue %dx.types.CBufRet.f32 %6752, 3
  %6757 = select i1 %6750, float %6753, float %6755
  %6758 = select i1 %6751, float %6754, float %6756
  %6759 = fmul fast float %6757, %6748
  %6760 = fmul fast float %6758, %6749
  %6761 = call float @dx.op.unary.f32(i32 6, float %6759)  ; FAbs(value)
  %6762 = call float @dx.op.unary.f32(i32 6, float %6760)  ; FAbs(value)
  %6763 = extractvalue %dx.types.CBufRet.f32 %6616, 0
  %6764 = call float @dx.op.binary.f32(i32 35, float %6761, float %6762)  ; FMax(a,b)
  %6765 = fsub fast float %6763, %6764
  %6766 = call float @dx.op.unary.f32(i32 7, float %6765)  ; Saturate(value)
  %6767 = call float @dx.op.binary.f32(i32 36, float %6766, float %6744)  ; FMin(a,b)
  %6768 = fmul fast float %6767, %6678
  %6769 = fsub fast float %6740, %6768
  %6770 = fsub fast float %6741, %6740
  %6771 = fsub fast float %6770, %6768
  %6772 = call float @dx.op.binary.f32(i32 35, float %6740, float %6741)  ; FMax(a,b)
  %6773 = call float @dx.op.binary.f32(i32 35, float %6768, float %6772)  ; FMax(a,b)
  %6774 = fcmp fast olt float %6773, 1.000000e+00
  br i1 %6774, label %6775, label %7173, !dx.controlflow.hints !95

; <label>:6775                                    ; preds = %6739
  %6776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6777 = extractvalue %dx.types.CBufRet.f32 %6776, 0
  %6778 = fcmp fast une float %6777, 0.000000e+00
  br i1 %6778, label %6779, label %7173, !dx.controlflow.hints !96

; <label>:6779                                    ; preds = %6775
  %6780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6781 = extractvalue %dx.types.CBufRet.f32 %6780, 0
  %6782 = extractvalue %dx.types.CBufRet.f32 %6780, 1
  %6783 = extractvalue %dx.types.CBufRet.f32 %6780, 2
  %6784 = extractvalue %dx.types.CBufRet.f32 %6780, 3
  %6785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6786 = extractvalue %dx.types.CBufRet.f32 %6785, 0
  %6787 = extractvalue %dx.types.CBufRet.f32 %6785, 1
  %6788 = extractvalue %dx.types.CBufRet.f32 %6785, 2
  %6789 = extractvalue %dx.types.CBufRet.f32 %6785, 3
  %6790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6791 = extractvalue %dx.types.CBufRet.f32 %6790, 0
  %6792 = extractvalue %dx.types.CBufRet.f32 %6790, 1
  %6793 = extractvalue %dx.types.CBufRet.f32 %6790, 2
  %6794 = extractvalue %dx.types.CBufRet.f32 %6790, 3
  %6795 = fmul fast float %6781, %6621
  %6796 = call float @dx.op.tertiary.f32(i32 46, float %6622, float %6782, float %6795)  ; FMad(a,b,c)
  %6797 = call float @dx.op.tertiary.f32(i32 46, float %6623, float %6783, float %6796)  ; FMad(a,b,c)
  %6798 = fadd fast float %6797, %6784
  %6799 = fmul fast float %6786, %6621
  %6800 = call float @dx.op.tertiary.f32(i32 46, float %6622, float %6787, float %6799)  ; FMad(a,b,c)
  %6801 = call float @dx.op.tertiary.f32(i32 46, float %6623, float %6788, float %6800)  ; FMad(a,b,c)
  %6802 = fadd fast float %6801, %6789
  %6803 = fmul fast float %6791, %6621
  %6804 = call float @dx.op.tertiary.f32(i32 46, float %6622, float %6792, float %6803)  ; FMad(a,b,c)
  %6805 = call float @dx.op.tertiary.f32(i32 46, float %6623, float %6793, float %6804)  ; FMad(a,b,c)
  %6806 = fadd fast float %6805, %6794
  %6807 = fcmp fast oge float %6798, 1.000000e+00
  %6808 = fcmp fast oge float %6802, 1.000000e+00
  %6809 = or i1 %6807, %6808
  %6810 = fcmp fast olt float %6798, 0.000000e+00
  %6811 = fcmp fast olt float %6802, 0.000000e+00
  %6812 = or i1 %6810, %6811
  %6813 = or i1 %6809, %6812
  br i1 %6813, label %7173, label %6814, !dx.controlflow.hints !97

; <label>:6814                                    ; preds = %6779
  %6815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6816 = extractvalue %dx.types.CBufRet.f32 %6815, 0
  %6817 = extractvalue %dx.types.CBufRet.f32 %6815, 1
  %6818 = extractvalue %dx.types.CBufRet.f32 %6815, 2
  %6819 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6820 = extractvalue %dx.types.CBufRet.i32 %6819, 2
  %6821 = uitofp i32 %6820 to float
  %6822 = extractvalue %dx.types.CBufRet.i32 %6819, 3
  %6823 = uitofp i32 %6822 to float
  %6824 = extractvalue %dx.types.CBufRet.f32 %6815, 3
  %6825 = fmul fast float %6824, 2.000000e+00
  %6826 = fsub fast float %6798, %6816
  %6827 = fsub fast float %6802, %6817
  %6828 = fmul fast float %6825, %6826
  %6829 = fmul fast float %6825, %6827
  %6830 = fdiv fast float 1.000000e+00, %6604
  %6831 = fmul fast float %6829, %6830
  %6832 = call float @dx.op.unary.f32(i32 6, float %6831)  ; FAbs(value)
  %6833 = fmul fast float %6818, %6623
  %6834 = fmul fast float %6833, %6825
  %6835 = call float @dx.op.unary.f32(i32 6, float %6834)  ; FAbs(value)
  %6836 = call float @dx.op.unary.f32(i32 6, float %6828)  ; FAbs(value)
  %6837 = call float @dx.op.binary.f32(i32 35, float %6835, float %6832)  ; FMax(a,b)
  %6838 = call float @dx.op.binary.f32(i32 35, float %6836, float %6837)  ; FMax(a,b)
  %6839 = fmul fast float %6838, 2.000000e+00
  %6840 = call float @dx.op.unary.f32(i32 23, float %6839)  ; Log(value)
  %6841 = call float @dx.op.binary.f32(i32 35, float %6840, float %6821)  ; FMax(a,b)
  %6842 = call float @dx.op.unary.f32(i32 22, float %6841)  ; Frc(value)
  %6843 = fadd fast float %6842, 0xBFEA666660000000
  %6844 = fmul fast float %6843, 8.000000e+00
  %6845 = call float @dx.op.unary.f32(i32 7, float %6844)  ; Saturate(value)
  %6846 = call float @dx.op.unary.f32(i32 27, float %6841)  ; Round_ni(value)
  %6847 = fadd fast float %6846, %6845
  %6848 = call float @dx.op.binary.f32(i32 36, float %6847, float %6823)  ; FMin(a,b)
  %6849 = call float @dx.op.unary.f32(i32 27, float %6848)  ; Round_ni(value)
  %6850 = fsub fast float -0.000000e+00, %6849
  %6851 = call float @dx.op.unary.f32(i32 21, float %6850)  ; Exp(value)
  %6852 = fmul fast float %6851, %6825
  %6853 = fmul fast float %6852, %6798
  %6854 = fmul fast float %6852, %6802
  %6855 = fmul fast float %6853, 2.500000e-01
  %6856 = fmul fast float %6854, 2.500000e-01
  %6857 = fadd fast float %6855, 5.000000e-01
  %6858 = fadd fast float %6856, 5.000000e-01
  %6859 = fsub fast float %6823, %6821
  %6860 = fptoui float %6859 to i32
  %6861 = add i32 %6860, 320
  %6862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 %6861)  ; CBufferLoadLegacy(handle,regIndex)
  %6863 = extractvalue %dx.types.CBufRet.f32 %6862, 0
  %6864 = extractvalue %dx.types.CBufRet.f32 %6862, 1
  %6865 = fcmp fast une float %6848, %6823
  %6866 = fsub fast float %6798, %6863
  %6867 = fsub fast float %6802, %6864
  %6868 = call float @dx.op.unary.f32(i32 6, float %6866)  ; FAbs(value)
  %6869 = call float @dx.op.unary.f32(i32 6, float %6867)  ; FAbs(value)
  %6870 = fmul fast float %6868, %6852
  %6871 = fmul fast float %6869, %6852
  %6872 = fcmp fast olt float %6870, 1.000000e+00
  %6873 = fcmp fast olt float %6871, 1.000000e+00
  %6874 = and i1 %6872, %6873
  %6875 = or i1 %6865, %6874
  br i1 %6875, label %6876, label %7173, !dx.controlflow.hints !98

; <label>:6876                                    ; preds = %6814
  %6877 = fmul fast float %6854, 5.000000e-01
  %6878 = fmul fast float %6853, 5.000000e-01
  %6879 = fadd fast float %6877, 5.000000e-01
  %6880 = fadd fast float %6878, 5.000000e-01
  %6881 = sitofp i32 %6820 to float
  %6882 = fsub fast float %6848, %6881
  %6883 = call float @dx.op.unary.f32(i32 27, float %6882)  ; Round_ni(value)
  %6884 = call float @dx.op.unary.f32(i32 22, float %6848)  ; Frc(value)
  %6885 = call float @dx.op.unary.f32(i32 22, float %6880)  ; Frc(value)
  %6886 = call float @dx.op.unary.f32(i32 22, float %6879)  ; Frc(value)
  %6887 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %42, float %6885, float %6886, float %6883, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6888 = extractvalue %dx.types.ResRet.f32 %6887, 0
  %6889 = extractvalue %dx.types.ResRet.f32 %6887, 1
  %6890 = extractvalue %dx.types.ResRet.f32 %6887, 2
  %6891 = extractvalue %dx.types.ResRet.f32 %6887, 3
  %6892 = fcmp fast ogt float %6884, 0.000000e+00
  br i1 %6892, label %6893, label %6914, !dx.controlflow.hints !99

; <label>:6893                                    ; preds = %6876
  %6894 = fadd fast float %6883, 1.000000e+00
  %6895 = call float @dx.op.unary.f32(i32 22, float %6857)  ; Frc(value)
  %6896 = call float @dx.op.unary.f32(i32 22, float %6858)  ; Frc(value)
  %6897 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %42, float %6895, float %6896, float %6894, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6898 = extractvalue %dx.types.ResRet.f32 %6897, 0
  %6899 = extractvalue %dx.types.ResRet.f32 %6897, 1
  %6900 = extractvalue %dx.types.ResRet.f32 %6897, 2
  %6901 = extractvalue %dx.types.ResRet.f32 %6897, 3
  %6902 = fsub fast float %6898, %6888
  %6903 = fsub fast float %6899, %6889
  %6904 = fsub fast float %6900, %6890
  %6905 = fsub fast float %6901, %6891
  %6906 = fmul fast float %6902, %6884
  %6907 = fmul fast float %6903, %6884
  %6908 = fmul fast float %6904, %6884
  %6909 = fmul fast float %6905, %6884
  %6910 = fadd fast float %6906, %6888
  %6911 = fadd fast float %6907, %6889
  %6912 = fadd fast float %6908, %6890
  %6913 = fadd fast float %6909, %6891
  br label %6914

; <label>:6914                                    ; preds = %6893, %6876
  %6915 = phi float [ %6910, %6893 ], [ %6888, %6876 ]
  %6916 = phi float [ %6911, %6893 ], [ %6889, %6876 ]
  %6917 = phi float [ %6912, %6893 ], [ %6890, %6876 ]
  %6918 = phi float [ %6913, %6893 ], [ %6891, %6876 ]
  %6919 = fadd fast float %6915, -5.000000e-01
  %6920 = fadd fast float %6917, -5.000000e-01
  %6921 = fmul fast float %6919, 0xBFD5555560000000
  %6922 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6920, float %6921)  ; FMad(a,b,c)
  %6923 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6916, float 0.000000e+00)  ; FMad(a,b,c)
  %6924 = fadd fast float %6923, %6918
  %6925 = fmul fast float %6919, -7.500000e-01
  %6926 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6920, float %6925)  ; FMad(a,b,c)
  %6927 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6916, float 0.000000e+00)  ; FMad(a,b,c)
  %6928 = fadd fast float %6927, %6918
  %6929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6930 = extractvalue %dx.types.CBufRet.f32 %6929, 0
  %6931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6932 = extractvalue %dx.types.CBufRet.f32 %6931, 0
  %6933 = extractvalue %dx.types.CBufRet.f32 %6931, 1
  %6934 = extractvalue %dx.types.CBufRet.f32 %6931, 2
  %6935 = extractvalue %dx.types.CBufRet.f32 %6931, 3
  %6936 = fsub fast float %6932, %6922
  %6937 = fsub fast float %6933, %6924
  %6938 = fsub fast float %6934, %6926
  %6939 = fsub fast float %6935, %6928
  %6940 = fmul fast float %6936, %6930
  %6941 = fmul fast float %6937, %6930
  %6942 = fmul fast float %6938, %6930
  %6943 = fmul fast float %6939, %6930
  %6944 = fadd fast float %6940, %6922
  %6945 = fadd fast float %6941, %6924
  %6946 = fadd fast float %6942, %6926
  %6947 = fadd fast float %6943, %6928
  %6948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6949 = extractvalue %dx.types.ResRet.i32 %6948, 0
  %6950 = and i32 %6949, 536870911
  %6951 = uitofp i32 %6950 to float
  %6952 = fmul fast float %6951, %6798
  %6953 = fmul fast float %6951, %6802
  %6954 = fptoui float %6952 to i32
  %6955 = fptoui float %6953 to i32
  %6956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6957 = extractvalue %dx.types.ResRet.i32 %6956, 0
  %6958 = and i32 %6957, 31
  %6959 = lshr i32 %6954, %6958
  %6960 = lshr i32 %6955, %6958
  %6961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6962 = extractvalue %dx.types.ResRet.i32 %6961, 0
  %6963 = and i32 %6962, 31
  %6964 = shl i32 1, %6963
  %6965 = call i32 @dx.op.binary.i32(i32 40, i32 %6964, i32 4)  ; UMin(a,b)
  %6966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6967 = extractvalue %dx.types.ResRet.i32 %6966, 0
  %6968 = extractvalue %dx.types.ResRet.i32 %6966, 1
  %6969 = icmp eq i32 %6965, 0
  br i1 %6969, label %7011, label %6970

; <label>:6970                                    ; preds = %6914
  br label %6971

; <label>:6971                                    ; preds = %6999, %6970
  %6972 = phi i32 [ %7002, %6999 ], [ 0, %6970 ]
  %6973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6974 = extractvalue %dx.types.ResRet.i32 %6973, 0
  %6975 = lshr i32 %6974, 16
  %6976 = and i32 %6975, 31
  %6977 = shl i32 %6960, %6976
  %6978 = add i32 %6977, %6959
  %6979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6980 = extractvalue %dx.types.ResRet.i32 %6979, 0
  %6981 = and i32 %6980, 31
  %6982 = shl i32 %6978, %6981
  %6983 = add i32 %6982, %6972
  %6984 = shl i32 %6983, 2
  %6985 = add i32 %6984, 32
  %6986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6985, i32 undef)  ; BufferLoad(srv,index,wot)
  %6987 = extractvalue %dx.types.ResRet.i32 %6986, 0
  %6988 = icmp slt i32 %6987, 0
  %6989 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %6972
  %6990 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %6972
  %6991 = bitcast float* %6989 to i32*
  %6992 = bitcast float* %6990 to i32*
  br i1 %6988, label %6993, label %6999

; <label>:6993                                    ; preds = %6971
  %6994 = and i32 %6987, 1073741823
  %6995 = add nuw nsw i32 %6994, 20
  %6996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6995, i32 undef)  ; BufferLoad(srv,index,wot)
  %6997 = extractvalue %dx.types.ResRet.i32 %6996, 0
  %6998 = extractvalue %dx.types.ResRet.i32 %6996, 1
  br label %6999

; <label>:6999                                    ; preds = %6993, %6971
  %7000 = phi i32 [ %6997, %6993 ], [ %6967, %6971 ]
  %7001 = phi i32 [ %6998, %6993 ], [ %6968, %6971 ]
  store i32 %7000, i32* %6991, align 4
  store i32 %7001, i32* %6992, align 4
  %7002 = add nuw i32 %6972, 1
  %7003 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %7004 = extractvalue %dx.types.CBufRet.i32 %7003, 2
  %7005 = icmp eq i32 %7004, 0
  %7006 = icmp ugt i32 %6987, -1073741825
  %7007 = and i1 %7006, %7005
  %7008 = icmp ult i32 %7002, %6965
  %7009 = and i1 %7007, %7008
  br i1 %7009, label %6971, label %7010

; <label>:7010                                    ; preds = %6999
  br label %7011

; <label>:7011                                    ; preds = %7010, %6914
  %7012 = phi i32 [ 0, %6914 ], [ %7002, %7010 ]
  %7013 = extractvalue %dx.types.CBufRet.f32 %6776, 2
  %7014 = fptoui float %7013 to i32
  %7015 = icmp eq i32 %7014, 0
  br i1 %7015, label %7067, label %7016

; <label>:7016                                    ; preds = %7011
  br label %7017

; <label>:7017                                    ; preds = %7062, %7016
  %7018 = phi i32 [ %7063, %7062 ], [ %7012, %7016 ]
  %7019 = phi i32 [ %7064, %7062 ], [ 0, %7016 ]
  %7020 = lshr i32 %7019, 2
  %7021 = and i32 %7019, 3
  %7022 = add nuw nsw i32 %7020, 83
  %7023 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 %7022)  ; CBufferLoadLegacy(handle,regIndex)
  %7024 = extractvalue %dx.types.CBufRet.i32 %7023, 0
  %7025 = extractvalue %dx.types.CBufRet.i32 %7023, 1
  %7026 = extractvalue %dx.types.CBufRet.i32 %7023, 2
  %7027 = extractvalue %dx.types.CBufRet.i32 %7023, 3
  %7028 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 0
  store i32 %7024, i32* %7028, align 4
  %7029 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 1
  store i32 %7025, i32* %7029, align 4
  %7030 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 2
  store i32 %7026, i32* %7030, align 4
  %7031 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 3
  store i32 %7027, i32* %7031, align 4
  %7032 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 %7021
  %7033 = load i32, i32* %7032, align 4, !tbaa !100, !noalias !104
  %7034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7035 = extractvalue %dx.types.ResRet.i32 %7034, 0
  %7036 = lshr i32 %7035, 16
  %7037 = and i32 %7036, 31
  %7038 = shl i32 %6960, %7037
  %7039 = add i32 %7038, %6959
  %7040 = shl i32 %7039, 2
  %7041 = add i32 %7040, %7033
  %7042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %7041, i32 undef)  ; BufferLoad(srv,index,wot)
  %7043 = extractvalue %dx.types.ResRet.i32 %7042, 0
  %7044 = icmp eq i32 %7043, 0
  br i1 %7044, label %7062, label %7045

; <label>:7045                                    ; preds = %7017
  %7046 = icmp slt i32 %7043, 0
  %7047 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %7018
  %7048 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %7018
  %7049 = bitcast float* %7047 to i32*
  %7050 = bitcast float* %7048 to i32*
  br i1 %7046, label %7051, label %7058

; <label>:7051                                    ; preds = %7045
  %7052 = and i32 %7043, 1073741823
  %7053 = add i32 %7033, 20
  %7054 = add i32 %7053, %7052
  %7055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %7054, i32 undef)  ; BufferLoad(srv,index,wot)
  %7056 = extractvalue %dx.types.ResRet.i32 %7055, 0
  %7057 = extractvalue %dx.types.ResRet.i32 %7055, 1
  br label %7058

; <label>:7058                                    ; preds = %7051, %7045
  %7059 = phi i32 [ %7056, %7051 ], [ %6967, %7045 ]
  %7060 = phi i32 [ %7057, %7051 ], [ %6968, %7045 ]
  store i32 %7059, i32* %7049, align 4
  store i32 %7060, i32* %7050, align 4
  %7061 = add i32 %7018, 1
  br label %7062

; <label>:7062                                    ; preds = %7058, %7017
  %7063 = phi i32 [ %7018, %7017 ], [ %7061, %7058 ]
  %7064 = add nuw i32 %7019, 1
  %7065 = icmp eq i32 %7064, %7014
  br i1 %7065, label %7066, label %7017

; <label>:7066                                    ; preds = %7062
  br label %7067

; <label>:7067                                    ; preds = %7066, %7011
  %7068 = phi i32 [ %7012, %7011 ], [ %7063, %7066 ]
  %7069 = icmp eq i32 %7068, 1
  %7070 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 0
  %7071 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 0
  br i1 %7069, label %7072, label %7075

; <label>:7072                                    ; preds = %7067
  %7073 = load float, float* %7070, align 4
  %7074 = load float, float* %7071, align 4
  br label %7102

; <label>:7075                                    ; preds = %7067
  %7076 = load float, float* %7070, align 4
  %7077 = load float, float* %7071, align 4
  %7078 = fdiv fast float 1.000000e+00, %7077
  %7079 = fsub fast float %7076, %7078
  %7080 = icmp ugt i32 %7068, 1
  br i1 %7080, label %7081, label %7097

; <label>:7081                                    ; preds = %7075
  br label %7082

; <label>:7082                                    ; preds = %7082, %7081
  %7083 = phi float [ %7092, %7082 ], [ %7079, %7081 ]
  %7084 = phi float [ %7093, %7082 ], [ %7076, %7081 ]
  %7085 = phi i32 [ %7094, %7082 ], [ 1, %7081 ]
  %7086 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %7085
  %7087 = load float, float* %7086, align 4
  %7088 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %7085
  %7089 = load float, float* %7088, align 4
  %7090 = fdiv fast float 1.000000e+00, %7089
  %7091 = fsub fast float %7087, %7090
  %7092 = call float @dx.op.binary.f32(i32 36, float %7083, float %7091)  ; FMin(a,b)
  %7093 = call float @dx.op.binary.f32(i32 35, float %7084, float %7087)  ; FMax(a,b)
  %7094 = add nuw i32 %7085, 1
  %7095 = icmp eq i32 %7094, %7068
  br i1 %7095, label %7096, label %7082

; <label>:7096                                    ; preds = %7082
  br label %7097

; <label>:7097                                    ; preds = %7096, %7075
  %7098 = phi float [ %7079, %7075 ], [ %7092, %7096 ]
  %7099 = phi float [ %7076, %7075 ], [ %7093, %7096 ]
  %7100 = fsub fast float %7099, %7098
  %7101 = fdiv fast float 1.000000e+00, %7100
  br label %7102

; <label>:7102                                    ; preds = %7097, %7072
  %7103 = phi float [ %7073, %7072 ], [ %7099, %7097 ]
  %7104 = phi float [ %7074, %7072 ], [ %7101, %7097 ]
  %7105 = fadd fast float %6806, %7103
  %7106 = fmul fast float %7105, %7104
  %7107 = call float @dx.op.unary.f32(i32 7, float %7106)  ; Saturate(value)
  %7108 = fmul fast float %7107, 2.000000e+00
  %7109 = fsub fast float 1.000000e+00, %7108
  %7110 = fmul fast float %6944, %6944
  %7111 = fsub fast float %6945, %7110
  %7112 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7111)  ; FMax(a,b)
  %7113 = fdiv fast float 1.000000e+00, %7112
  %7114 = fmul fast float %6945, %6944
  %7115 = fsub fast float %6946, %7114
  %7116 = fsub fast float %7109, %6944
  %7117 = fmul fast float %7109, %7109
  %7118 = fsub fast float %7117, %6945
  %7119 = fmul fast float %7113, %7115
  %7120 = fmul fast float %7119, %7116
  %7121 = fsub fast float %7118, %7120
  %7122 = fmul fast float %6945, %6945
  %7123 = fsub fast float %6947, %7122
  %7124 = fmul fast float %7115, %7115
  %7125 = fmul fast float %7124, %7113
  %7126 = fsub fast float %7123, %7125
  %7127 = fdiv fast float %7121, %7126
  %7128 = fmul fast float %7127, %7115
  %7129 = fsub fast float %7116, %7128
  %7130 = fmul fast float %7129, %7113
  %7131 = fmul fast float %7130, %6944
  %7132 = fsub fast float 1.000000e+00, %7131
  %7133 = fmul fast float %7127, %6945
  %7134 = fsub fast float %7132, %7133
  %7135 = fmul fast float %7130, %7130
  %7136 = fmul fast float %7127, 4.000000e+00
  %7137 = fmul fast float %7136, %7134
  %7138 = fsub fast float %7135, %7137
  %7139 = call float @dx.op.unary.f32(i32 24, float %7138)  ; Sqrt(value)
  %7140 = fcmp fast oge float %7130, 0.000000e+00
  %7141 = fsub fast float -0.000000e+00, %7139
  %7142 = select i1 %7140, float %7141, float %7139
  %7143 = fsub fast float %7142, %7130
  %7144 = fdiv fast float %7143, %7127
  %7145 = fdiv fast float %7134, %7143
  %7146 = fmul fast float %7144, 5.000000e-01
  %7147 = fmul fast float %7145, 2.000000e+00
  %7148 = select i1 %7140, float %7146, float %7147
  %7149 = select i1 %7140, float %7147, float %7146
  %7150 = call float @dx.op.binary.f32(i32 35, float %7148, float %7149)  ; FMax(a,b)
  %7151 = call float @dx.op.binary.f32(i32 36, float %7148, float %7149)  ; FMin(a,b)
  %7152 = fcmp fast ogt float %7109, %7150
  %7153 = fsub fast float %7109, %7151
  %7154 = fsub fast float %7109, %7150
  %7155 = fsub fast float %7150, %7151
  %7156 = select i1 %7152, float %7154, float %7155
  %7157 = fmul float %7153, %7156
  %7158 = select i1 %7152, float %7151, float %7109
  %7159 = fcmp fast ogt float %7109, %7151
  %7160 = fmul fast float %7158, %7150
  %7161 = fadd fast float %7158, %7150
  %7162 = fmul fast float %7161, %6944
  %7163 = fadd fast float %7160, %6945
  %7164 = fsub fast float %7163, %7162
  %7165 = fdiv fast float %7164, %7157
  %7166 = select i1 %7159, float %7165, float 0.000000e+00
  %7167 = fsub fast float 1.000000e+00, %7166
  %7168 = select i1 %7152, float %7167, float %7166
  %7169 = call float @dx.op.unary.f32(i32 7, float %7168)  ; Saturate(value)
  %7170 = extractvalue %dx.types.CBufRet.f32 %6929, 3
  %7171 = fmul fast float %7170, %7169
  %7172 = fsub fast float 1.000000e+00, %7171
  br label %7173

; <label>:7173                                    ; preds = %7102, %6814, %6779, %6775, %6739
  %7174 = phi float [ 1.000000e+00, %6739 ], [ %7172, %7102 ], [ 1.000000e+00, %6779 ], [ 1.000000e+00, %6814 ], [ 1.000000e+00, %6775 ]
  %7175 = fcmp fast ogt float %6771, 0.000000e+00
  br i1 %7175, label %7176, label %7340, !dx.controlflow.hints !113

; <label>:7176                                    ; preds = %7173
  %7177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7178 = extractvalue %dx.types.CBufRet.f32 %7177, 2
  %7179 = fadd fast float %7178, %6652
  %7180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7181 = extractvalue %dx.types.CBufRet.f32 %7180, 2
  %7182 = extractvalue %dx.types.CBufRet.f32 %7180, 3
  %7183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7184 = extractvalue %dx.types.CBufRet.f32 %7183, 2
  %7185 = call float @dx.op.binary.f32(i32 35, float %7179, float 0.000000e+00)  ; FMax(a,b)
  %7186 = fadd fast float %7185, 0x3F10000000000000
  %7187 = fcmp fast oeq float %7184, 0.000000e+00
  br i1 %7187, label %7188, label %7255

; <label>:7188                                    ; preds = %7176
  %7189 = extractvalue %dx.types.CBufRet.f32 %7180, 1
  %7190 = extractvalue %dx.types.CBufRet.f32 %7180, 0
  %7191 = fmul fast float %7190, %6670
  %7192 = fmul fast float %7189, %6671
  %7193 = fadd fast float %7191, 5.000000e-01
  %7194 = call float @dx.op.unary.f32(i32 27, float %7193)  ; Round_ni(value)
  %7195 = fadd fast float %7192, 5.000000e-01
  %7196 = call float @dx.op.unary.f32(i32 27, float %7195)  ; Round_ni(value)
  %7197 = fsub fast float %7193, %7194
  %7198 = fsub fast float %7195, %7196
  %7199 = fadd fast float %7194, -5.000000e-01
  %7200 = fadd fast float %7196, -5.000000e-01
  %7201 = fmul fast float %7197, 2.000000e+00
  %7202 = fsub fast float 3.000000e+00, %7201
  %7203 = fadd fast float %7201, 1.000000e+00
  %7204 = fsub fast float 2.000000e+00, %7197
  %7205 = bitcast float %7202 to i32
  %7206 = sub nsw i32 2129859010, %7205
  %7207 = bitcast i32 %7206 to float
  %7208 = fmul fast float %7207, %7204
  %7209 = fadd fast float %7208, -1.000000e+00
  %7210 = bitcast float %7203 to i32
  %7211 = sub nsw i32 2129859010, %7210
  %7212 = bitcast i32 %7211 to float
  %7213 = fmul fast float %7212, %7197
  %7214 = fadd fast float %7213, 1.000000e+00
  %7215 = fmul fast float %7198, 2.000000e+00
  %7216 = fsub fast float 3.000000e+00, %7215
  %7217 = fadd fast float %7215, 1.000000e+00
  %7218 = fsub fast float 2.000000e+00, %7198
  %7219 = bitcast float %7216 to i32
  %7220 = sub nsw i32 2129859010, %7219
  %7221 = bitcast i32 %7220 to float
  %7222 = fmul fast float %7221, %7218
  %7223 = fadd fast float %7222, -1.000000e+00
  %7224 = bitcast float %7217 to i32
  %7225 = sub nsw i32 2129859010, %7224
  %7226 = bitcast i32 %7225 to float
  %7227 = fmul fast float %7226, %7198
  %7228 = fadd fast float %7227, 1.000000e+00
  %7229 = fadd fast float %7209, %7199
  %7230 = fmul fast float %7229, %7181
  %7231 = fadd fast float %7223, %7200
  %7232 = fmul fast float %7231, %7182
  %7233 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %7230, float %7232, float undef, float undef, i32 0, i32 0, i32 undef, float %7186)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7234 = extractvalue %dx.types.ResRet.f32 %7233, 0
  %7235 = fmul fast float %7234, %7202
  %7236 = fadd fast float %7214, %7199
  %7237 = fmul fast float %7236, %7181
  %7238 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %7237, float %7232, float undef, float undef, i32 0, i32 0, i32 undef, float %7186)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7239 = extractvalue %dx.types.ResRet.f32 %7238, 0
  %7240 = fmul fast float %7239, %7203
  %7241 = fadd fast float %7228, %7200
  %7242 = fmul fast float %7241, %7182
  %7243 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %7230, float %7242, float undef, float undef, i32 0, i32 0, i32 undef, float %7186)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7244 = extractvalue %dx.types.ResRet.f32 %7243, 0
  %7245 = fmul fast float %7244, %7202
  %7246 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %7237, float %7242, float undef, float undef, i32 0, i32 0, i32 undef, float %7186)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7247 = extractvalue %dx.types.ResRet.f32 %7246, 0
  %7248 = fmul fast float %7247, %7203
  %7249 = fadd fast float %7248, %7245
  %7250 = fmul fast float %7249, %7217
  %7251 = fadd fast float %7240, %7235
  %7252 = fmul fast float %7251, %7216
  %7253 = fadd fast float %7252, %7250
  %7254 = fmul fast float %7253, 6.250000e-02
  br label %7340

; <label>:7255                                    ; preds = %7176
  %7256 = fmul fast float %305, 0x401921FB60000000
  %7257 = call float @dx.op.unary.f32(i32 13, float %7256)  ; Sin(value)
  %7258 = call float @dx.op.unary.f32(i32 12, float %7256)  ; Cos(value)
  %7259 = fsub fast float -0.000000e+00, %7257
  br label %7260

; <label>:7260                                    ; preds = %7309, %7255
  %7261 = phi float [ 0.000000e+00, %7255 ], [ %7304, %7309 ]
  %7262 = phi float [ 0.000000e+00, %7255 ], [ %7306, %7309 ]
  %7263 = phi i32 [ 0, %7255 ], [ %7310, %7309 ]
  %7264 = mul i32 %7263, 2
  %7265 = add i32 0, %7264
  %7266 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7265
  %7267 = load float, float* %7266, align 4
  %7268 = mul i32 %7263, 2
  %7269 = add i32 1, %7268
  %7270 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7269
  %7271 = load float, float* %7270, align 4
  %7272 = fmul fast float %7267, %7258
  %7273 = call float @dx.op.tertiary.f32(i32 46, float %7271, float %7259, float %7272)  ; FMad(a,b,c)
  %7274 = fmul fast float %7267, %7257
  %7275 = call float @dx.op.tertiary.f32(i32 46, float %7271, float %7258, float %7274)  ; FMad(a,b,c)
  %7276 = fmul fast float %7273, %7184
  %7277 = fmul fast float %7275, %7184
  %7278 = fadd fast float %7276, %6670
  %7279 = fadd fast float %7277, %6671
  %7280 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %44, float %7278, float %7279, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7281 = extractvalue %dx.types.ResRet.f32 %7280, 0
  %7282 = extractvalue %dx.types.ResRet.f32 %7280, 1
  %7283 = extractvalue %dx.types.ResRet.f32 %7280, 2
  %7284 = extractvalue %dx.types.ResRet.f32 %7280, 3
  %7285 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %7281, float* %7285, align 4
  %7286 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %7282, float* %7286, align 4
  %7287 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %7283, float* %7287, align 4
  %7288 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %7284, float* %7288, align 4
  %7289 = fsub fast float %7281, %7186
  %7290 = fcmp fast olt float %7289, 0.000000e+00
  %7291 = select i1 %7290, float 0.000000e+00, float 1.000000e+00
  %7292 = fadd fast float %7291, %7261
  %7293 = fmul fast float %7291, %7289
  %7294 = fadd fast float %7293, %7262
  br label %7295

; <label>:7295                                    ; preds = %7295, %7260
  %7296 = phi i32 [ 1, %7260 ], [ %7307, %7295 ]
  %7297 = phi float [ %7294, %7260 ], [ %7306, %7295 ]
  %7298 = phi float [ %7292, %7260 ], [ %7304, %7295 ]
  %7299 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %7296
  %7300 = load float, float* %7299, align 4, !tbaa !114, !noalias !104
  %7301 = fsub fast float %7300, %7186
  %7302 = fcmp fast olt float %7301, 0.000000e+00
  %7303 = select i1 %7302, float 0.000000e+00, float 1.000000e+00
  %7304 = fadd fast float %7303, %7298
  %7305 = fmul fast float %7303, %7301
  %7306 = fadd fast float %7305, %7297
  %7307 = add nuw nsw i32 %7296, 1
  %7308 = icmp eq i32 %7307, 4
  br i1 %7308, label %7309, label %7295, !llvm.loop !116

; <label>:7309                                    ; preds = %7295
  %7310 = add nuw nsw i32 %7263, 1
  %7311 = icmp eq i32 %7310, 8
  br i1 %7311, label %7312, label %7260, !llvm.loop !117

; <label>:7312                                    ; preds = %7309
  %7313 = fdiv fast float 1.000000e+00, %7304
  %7314 = fmul fast float %7313, %7306
  %7315 = fdiv fast float 1.000000e+00, %7186
  %7316 = fmul fast float %7314, %7315
  %7317 = call float @dx.op.unary.f32(i32 7, float %7316)  ; Saturate(value)
  %7318 = call float @dx.op.binary.f32(i32 35, float %7317, float 0.000000e+00)  ; FMax(a,b)
  %7319 = fmul fast float %7304, 3.125000e-02
  %7320 = call float @dx.op.unary.f32(i32 7, float %7319)  ; Saturate(value)
  %7321 = fmul fast float %7320, 2.000000e+00
  %7322 = fadd fast float %7321, -1.000000e+00
  %7323 = fcmp fast ogt float %7322, 0.000000e+00
  %7324 = fcmp fast olt float %7322, 0.000000e+00
  %7325 = zext i1 %7323 to i32
  %7326 = zext i1 %7324 to i32
  %7327 = sub nsw i32 %7325, %7326
  %7328 = sitofp i32 %7327 to float
  %7329 = fmul fast float %7328, %7322
  %7330 = fsub fast float 1.000000e+00, %7329
  %7331 = fmul fast float %7330, %7330
  %7332 = fmul fast float %7331, %7330
  %7333 = fsub fast float %7330, %7332
  %7334 = fmul fast float %7333, %7318
  %7335 = fsub fast float 1.000000e+00, %7332
  %7336 = fsub fast float %7335, %7334
  %7337 = fmul fast float %7328, 5.000000e-01
  %7338 = fmul fast float %7337, %7336
  %7339 = fsub fast float 5.000000e-01, %7338
  br label %7340

; <label>:7340                                    ; preds = %7312, %7188, %7173
  %7341 = phi float [ 1.000000e+00, %7173 ], [ %7254, %7188 ], [ %7339, %7312 ]
  %7342 = fcmp fast ogt float %6769, 0.000000e+00
  br i1 %7342, label %7343, label %7507, !dx.controlflow.hints !118

; <label>:7343                                    ; preds = %7340
  %7344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7345 = extractvalue %dx.types.CBufRet.f32 %7344, 1
  %7346 = fadd fast float %7345, %6652
  %7347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7348 = extractvalue %dx.types.CBufRet.f32 %7347, 2
  %7349 = extractvalue %dx.types.CBufRet.f32 %7347, 3
  %7350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7351 = extractvalue %dx.types.CBufRet.f32 %7350, 1
  %7352 = call float @dx.op.binary.f32(i32 35, float %7346, float 0.000000e+00)  ; FMax(a,b)
  %7353 = fadd fast float %7352, 0x3F10000000000000
  %7354 = fcmp fast oeq float %7351, 0.000000e+00
  br i1 %7354, label %7355, label %7422

; <label>:7355                                    ; preds = %7343
  %7356 = extractvalue %dx.types.CBufRet.f32 %7347, 1
  %7357 = extractvalue %dx.types.CBufRet.f32 %7347, 0
  %7358 = fmul fast float %7357, %6662
  %7359 = fmul fast float %7356, %6663
  %7360 = fadd fast float %7358, 5.000000e-01
  %7361 = call float @dx.op.unary.f32(i32 27, float %7360)  ; Round_ni(value)
  %7362 = fadd fast float %7359, 5.000000e-01
  %7363 = call float @dx.op.unary.f32(i32 27, float %7362)  ; Round_ni(value)
  %7364 = fsub fast float %7360, %7361
  %7365 = fsub fast float %7362, %7363
  %7366 = fadd fast float %7361, -5.000000e-01
  %7367 = fadd fast float %7363, -5.000000e-01
  %7368 = fmul fast float %7364, 2.000000e+00
  %7369 = fsub fast float 3.000000e+00, %7368
  %7370 = fadd fast float %7368, 1.000000e+00
  %7371 = fsub fast float 2.000000e+00, %7364
  %7372 = bitcast float %7369 to i32
  %7373 = sub nsw i32 2129859010, %7372
  %7374 = bitcast i32 %7373 to float
  %7375 = fmul fast float %7374, %7371
  %7376 = fadd fast float %7375, -1.000000e+00
  %7377 = bitcast float %7370 to i32
  %7378 = sub nsw i32 2129859010, %7377
  %7379 = bitcast i32 %7378 to float
  %7380 = fmul fast float %7379, %7364
  %7381 = fadd fast float %7380, 1.000000e+00
  %7382 = fmul fast float %7365, 2.000000e+00
  %7383 = fsub fast float 3.000000e+00, %7382
  %7384 = fadd fast float %7382, 1.000000e+00
  %7385 = fsub fast float 2.000000e+00, %7365
  %7386 = bitcast float %7383 to i32
  %7387 = sub nsw i32 2129859010, %7386
  %7388 = bitcast i32 %7387 to float
  %7389 = fmul fast float %7388, %7385
  %7390 = fadd fast float %7389, -1.000000e+00
  %7391 = bitcast float %7384 to i32
  %7392 = sub nsw i32 2129859010, %7391
  %7393 = bitcast i32 %7392 to float
  %7394 = fmul fast float %7393, %7365
  %7395 = fadd fast float %7394, 1.000000e+00
  %7396 = fadd fast float %7376, %7366
  %7397 = fmul fast float %7396, %7348
  %7398 = fadd fast float %7390, %7367
  %7399 = fmul fast float %7398, %7349
  %7400 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %7397, float %7399, float undef, float undef, i32 0, i32 0, i32 undef, float %7353)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7401 = extractvalue %dx.types.ResRet.f32 %7400, 0
  %7402 = fmul fast float %7401, %7369
  %7403 = fadd fast float %7381, %7366
  %7404 = fmul fast float %7403, %7348
  %7405 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %7404, float %7399, float undef, float undef, i32 0, i32 0, i32 undef, float %7353)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7406 = extractvalue %dx.types.ResRet.f32 %7405, 0
  %7407 = fmul fast float %7406, %7370
  %7408 = fadd fast float %7395, %7367
  %7409 = fmul fast float %7408, %7349
  %7410 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %7397, float %7409, float undef, float undef, i32 0, i32 0, i32 undef, float %7353)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7411 = extractvalue %dx.types.ResRet.f32 %7410, 0
  %7412 = fmul fast float %7411, %7369
  %7413 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %7404, float %7409, float undef, float undef, i32 0, i32 0, i32 undef, float %7353)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7414 = extractvalue %dx.types.ResRet.f32 %7413, 0
  %7415 = fmul fast float %7414, %7370
  %7416 = fadd fast float %7415, %7412
  %7417 = fmul fast float %7416, %7384
  %7418 = fadd fast float %7407, %7402
  %7419 = fmul fast float %7418, %7383
  %7420 = fadd fast float %7419, %7417
  %7421 = fmul fast float %7420, 6.250000e-02
  br label %7507

; <label>:7422                                    ; preds = %7343
  %7423 = fmul fast float %305, 0x401921FB60000000
  %7424 = call float @dx.op.unary.f32(i32 13, float %7423)  ; Sin(value)
  %7425 = call float @dx.op.unary.f32(i32 12, float %7423)  ; Cos(value)
  %7426 = fsub fast float -0.000000e+00, %7424
  br label %7427

; <label>:7427                                    ; preds = %7476, %7422
  %7428 = phi float [ 0.000000e+00, %7422 ], [ %7471, %7476 ]
  %7429 = phi float [ 0.000000e+00, %7422 ], [ %7473, %7476 ]
  %7430 = phi i32 [ 0, %7422 ], [ %7477, %7476 ]
  %7431 = mul i32 %7430, 2
  %7432 = add i32 0, %7431
  %7433 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7432
  %7434 = load float, float* %7433, align 4
  %7435 = mul i32 %7430, 2
  %7436 = add i32 1, %7435
  %7437 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7436
  %7438 = load float, float* %7437, align 4
  %7439 = fmul fast float %7434, %7425
  %7440 = call float @dx.op.tertiary.f32(i32 46, float %7438, float %7426, float %7439)  ; FMad(a,b,c)
  %7441 = fmul fast float %7434, %7424
  %7442 = call float @dx.op.tertiary.f32(i32 46, float %7438, float %7425, float %7441)  ; FMad(a,b,c)
  %7443 = fmul fast float %7440, %7351
  %7444 = fmul fast float %7442, %7351
  %7445 = fadd fast float %7443, %6662
  %7446 = fadd fast float %7444, %6663
  %7447 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %44, float %7445, float %7446, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7448 = extractvalue %dx.types.ResRet.f32 %7447, 0
  %7449 = extractvalue %dx.types.ResRet.f32 %7447, 1
  %7450 = extractvalue %dx.types.ResRet.f32 %7447, 2
  %7451 = extractvalue %dx.types.ResRet.f32 %7447, 3
  %7452 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 0
  store float %7448, float* %7452, align 4
  %7453 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 1
  store float %7449, float* %7453, align 4
  %7454 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 2
  store float %7450, float* %7454, align 4
  %7455 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 3
  store float %7451, float* %7455, align 4
  %7456 = fsub fast float %7448, %7353
  %7457 = fcmp fast olt float %7456, 0.000000e+00
  %7458 = select i1 %7457, float 0.000000e+00, float 1.000000e+00
  %7459 = fadd fast float %7458, %7428
  %7460 = fmul fast float %7458, %7456
  %7461 = fadd fast float %7460, %7429
  br label %7462

; <label>:7462                                    ; preds = %7462, %7427
  %7463 = phi i32 [ 1, %7427 ], [ %7474, %7462 ]
  %7464 = phi float [ %7461, %7427 ], [ %7473, %7462 ]
  %7465 = phi float [ %7459, %7427 ], [ %7471, %7462 ]
  %7466 = getelementptr [4 x float], [4 x float]* %101, i32 0, i32 %7463
  %7467 = load float, float* %7466, align 4, !tbaa !114, !noalias !104
  %7468 = fsub fast float %7467, %7353
  %7469 = fcmp fast olt float %7468, 0.000000e+00
  %7470 = select i1 %7469, float 0.000000e+00, float 1.000000e+00
  %7471 = fadd fast float %7470, %7465
  %7472 = fmul fast float %7470, %7468
  %7473 = fadd fast float %7472, %7464
  %7474 = add nuw nsw i32 %7463, 1
  %7475 = icmp eq i32 %7474, 4
  br i1 %7475, label %7476, label %7462, !llvm.loop !116

; <label>:7476                                    ; preds = %7462
  %7477 = add nuw nsw i32 %7430, 1
  %7478 = icmp eq i32 %7477, 8
  br i1 %7478, label %7479, label %7427, !llvm.loop !117

; <label>:7479                                    ; preds = %7476
  %7480 = fdiv fast float 1.000000e+00, %7471
  %7481 = fmul fast float %7480, %7473
  %7482 = fdiv fast float 1.000000e+00, %7353
  %7483 = fmul fast float %7481, %7482
  %7484 = call float @dx.op.unary.f32(i32 7, float %7483)  ; Saturate(value)
  %7485 = call float @dx.op.binary.f32(i32 35, float %7484, float 0.000000e+00)  ; FMax(a,b)
  %7486 = fmul fast float %7471, 3.125000e-02
  %7487 = call float @dx.op.unary.f32(i32 7, float %7486)  ; Saturate(value)
  %7488 = fmul fast float %7487, 2.000000e+00
  %7489 = fadd fast float %7488, -1.000000e+00
  %7490 = fcmp fast ogt float %7489, 0.000000e+00
  %7491 = fcmp fast olt float %7489, 0.000000e+00
  %7492 = zext i1 %7490 to i32
  %7493 = zext i1 %7491 to i32
  %7494 = sub nsw i32 %7492, %7493
  %7495 = sitofp i32 %7494 to float
  %7496 = fmul fast float %7495, %7489
  %7497 = fsub fast float 1.000000e+00, %7496
  %7498 = fmul fast float %7497, %7497
  %7499 = fmul fast float %7498, %7497
  %7500 = fsub fast float %7497, %7499
  %7501 = fmul fast float %7500, %7485
  %7502 = fsub fast float 1.000000e+00, %7499
  %7503 = fsub fast float %7502, %7501
  %7504 = fmul fast float %7495, 5.000000e-01
  %7505 = fmul fast float %7504, %7503
  %7506 = fsub fast float 5.000000e-01, %7505
  br label %7507

; <label>:7507                                    ; preds = %7479, %7355, %7340
  %7508 = phi float [ 1.000000e+00, %7340 ], [ %7421, %7355 ], [ %7506, %7479 ]
  %7509 = fcmp fast ogt float %6768, 0.000000e+00
  br i1 %7509, label %7510, label %7828, !dx.controlflow.hints !119

; <label>:7510                                    ; preds = %7507
  %7511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7512 = extractvalue %dx.types.CBufRet.f32 %7511, 0
  %7513 = fadd fast float %7512, %6652
  %7514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7515 = extractvalue %dx.types.CBufRet.f32 %7514, 2
  %7516 = extractvalue %dx.types.CBufRet.f32 %7514, 3
  %7517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7518 = extractvalue %dx.types.CBufRet.f32 %7517, 0
  %7519 = call float @dx.op.binary.f32(i32 35, float %7513, float 0.000000e+00)  ; FMax(a,b)
  %7520 = fadd fast float %7519, 0x3F10000000000000
  %7521 = fcmp fast oeq float %7518, 0.000000e+00
  br i1 %6655, label %7522, label %7675, !dx.controlflow.hints !120

; <label>:7522                                    ; preds = %7510
  br i1 %7521, label %7523, label %7590

; <label>:7523                                    ; preds = %7522
  %7524 = extractvalue %dx.types.CBufRet.f32 %7514, 1
  %7525 = extractvalue %dx.types.CBufRet.f32 %7514, 0
  %7526 = fmul fast float %7525, %6644
  %7527 = fmul fast float %7524, %6648
  %7528 = fadd fast float %7526, 5.000000e-01
  %7529 = call float @dx.op.unary.f32(i32 27, float %7528)  ; Round_ni(value)
  %7530 = fadd fast float %7527, 5.000000e-01
  %7531 = call float @dx.op.unary.f32(i32 27, float %7530)  ; Round_ni(value)
  %7532 = fsub fast float %7528, %7529
  %7533 = fsub fast float %7530, %7531
  %7534 = fadd fast float %7529, -5.000000e-01
  %7535 = fadd fast float %7531, -5.000000e-01
  %7536 = fmul fast float %7532, 2.000000e+00
  %7537 = fsub fast float 3.000000e+00, %7536
  %7538 = fadd fast float %7536, 1.000000e+00
  %7539 = fsub fast float 2.000000e+00, %7532
  %7540 = bitcast float %7537 to i32
  %7541 = sub nsw i32 2129859010, %7540
  %7542 = bitcast i32 %7541 to float
  %7543 = fmul fast float %7542, %7539
  %7544 = fadd fast float %7543, -1.000000e+00
  %7545 = bitcast float %7538 to i32
  %7546 = sub nsw i32 2129859010, %7545
  %7547 = bitcast i32 %7546 to float
  %7548 = fmul fast float %7547, %7532
  %7549 = fadd fast float %7548, 1.000000e+00
  %7550 = fmul fast float %7533, 2.000000e+00
  %7551 = fsub fast float 3.000000e+00, %7550
  %7552 = fadd fast float %7550, 1.000000e+00
  %7553 = fsub fast float 2.000000e+00, %7533
  %7554 = bitcast float %7551 to i32
  %7555 = sub nsw i32 2129859010, %7554
  %7556 = bitcast i32 %7555 to float
  %7557 = fmul fast float %7556, %7553
  %7558 = fadd fast float %7557, -1.000000e+00
  %7559 = bitcast float %7552 to i32
  %7560 = sub nsw i32 2129859010, %7559
  %7561 = bitcast i32 %7560 to float
  %7562 = fmul fast float %7561, %7533
  %7563 = fadd fast float %7562, 1.000000e+00
  %7564 = fadd fast float %7544, %7534
  %7565 = fmul fast float %7564, %7515
  %7566 = fadd fast float %7558, %7535
  %7567 = fmul fast float %7566, %7516
  %7568 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %45, float %7565, float %7567, float undef, float undef, i32 0, i32 0, i32 undef, float %7520)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7569 = extractvalue %dx.types.ResRet.f32 %7568, 0
  %7570 = fmul fast float %7569, %7537
  %7571 = fadd fast float %7549, %7534
  %7572 = fmul fast float %7571, %7515
  %7573 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %45, float %7572, float %7567, float undef, float undef, i32 0, i32 0, i32 undef, float %7520)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7574 = extractvalue %dx.types.ResRet.f32 %7573, 0
  %7575 = fmul fast float %7574, %7538
  %7576 = fadd fast float %7563, %7535
  %7577 = fmul fast float %7576, %7516
  %7578 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %45, float %7565, float %7577, float undef, float undef, i32 0, i32 0, i32 undef, float %7520)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7579 = extractvalue %dx.types.ResRet.f32 %7578, 0
  %7580 = fmul fast float %7579, %7537
  %7581 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %45, float %7572, float %7577, float undef, float undef, i32 0, i32 0, i32 undef, float %7520)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7582 = extractvalue %dx.types.ResRet.f32 %7581, 0
  %7583 = fmul fast float %7582, %7538
  %7584 = fadd fast float %7583, %7580
  %7585 = fmul fast float %7584, %7552
  %7586 = fadd fast float %7575, %7570
  %7587 = fmul fast float %7586, %7551
  %7588 = fadd fast float %7587, %7585
  %7589 = fmul fast float %7588, 6.250000e-02
  br label %7828

; <label>:7590                                    ; preds = %7522
  %7591 = fmul fast float %305, 0x401921FB60000000
  %7592 = call float @dx.op.unary.f32(i32 13, float %7591)  ; Sin(value)
  %7593 = call float @dx.op.unary.f32(i32 12, float %7591)  ; Cos(value)
  %7594 = fsub fast float -0.000000e+00, %7592
  br label %7595

; <label>:7595                                    ; preds = %7644, %7590
  %7596 = phi float [ 0.000000e+00, %7590 ], [ %7639, %7644 ]
  %7597 = phi float [ 0.000000e+00, %7590 ], [ %7641, %7644 ]
  %7598 = phi i32 [ 0, %7590 ], [ %7645, %7644 ]
  %7599 = mul i32 %7598, 2
  %7600 = add i32 0, %7599
  %7601 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7600
  %7602 = load float, float* %7601, align 4
  %7603 = mul i32 %7598, 2
  %7604 = add i32 1, %7603
  %7605 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7604
  %7606 = load float, float* %7605, align 4
  %7607 = fmul fast float %7602, %7593
  %7608 = call float @dx.op.tertiary.f32(i32 46, float %7606, float %7594, float %7607)  ; FMad(a,b,c)
  %7609 = fmul fast float %7602, %7592
  %7610 = call float @dx.op.tertiary.f32(i32 46, float %7606, float %7593, float %7609)  ; FMad(a,b,c)
  %7611 = fmul fast float %7608, %7518
  %7612 = fmul fast float %7610, %7518
  %7613 = fadd fast float %7611, %6644
  %7614 = fadd fast float %7612, %6648
  %7615 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %44, float %7613, float %7614, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7616 = extractvalue %dx.types.ResRet.f32 %7615, 0
  %7617 = extractvalue %dx.types.ResRet.f32 %7615, 1
  %7618 = extractvalue %dx.types.ResRet.f32 %7615, 2
  %7619 = extractvalue %dx.types.ResRet.f32 %7615, 3
  %7620 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 0
  store float %7616, float* %7620, align 4
  %7621 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 1
  store float %7617, float* %7621, align 4
  %7622 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 2
  store float %7618, float* %7622, align 4
  %7623 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 3
  store float %7619, float* %7623, align 4
  %7624 = fsub fast float %7616, %7520
  %7625 = fcmp fast olt float %7624, 0.000000e+00
  %7626 = select i1 %7625, float 0.000000e+00, float 1.000000e+00
  %7627 = fadd fast float %7626, %7596
  %7628 = fmul fast float %7626, %7624
  %7629 = fadd fast float %7628, %7597
  br label %7630

; <label>:7630                                    ; preds = %7630, %7595
  %7631 = phi i32 [ 1, %7595 ], [ %7642, %7630 ]
  %7632 = phi float [ %7629, %7595 ], [ %7641, %7630 ]
  %7633 = phi float [ %7627, %7595 ], [ %7639, %7630 ]
  %7634 = getelementptr [4 x float], [4 x float]* %100, i32 0, i32 %7631
  %7635 = load float, float* %7634, align 4, !tbaa !114, !noalias !104
  %7636 = fsub fast float %7635, %7520
  %7637 = fcmp fast olt float %7636, 0.000000e+00
  %7638 = select i1 %7637, float 0.000000e+00, float 1.000000e+00
  %7639 = fadd fast float %7638, %7633
  %7640 = fmul fast float %7638, %7636
  %7641 = fadd fast float %7640, %7632
  %7642 = add nuw nsw i32 %7631, 1
  %7643 = icmp eq i32 %7642, 4
  br i1 %7643, label %7644, label %7630, !llvm.loop !116

; <label>:7644                                    ; preds = %7630
  %7645 = add nuw nsw i32 %7598, 1
  %7646 = icmp eq i32 %7645, 8
  br i1 %7646, label %7647, label %7595, !llvm.loop !117

; <label>:7647                                    ; preds = %7644
  %7648 = fdiv fast float 1.000000e+00, %7639
  %7649 = fmul fast float %7648, %7641
  %7650 = fdiv fast float 1.000000e+00, %7520
  %7651 = fmul fast float %7649, %7650
  %7652 = call float @dx.op.unary.f32(i32 7, float %7651)  ; Saturate(value)
  %7653 = call float @dx.op.binary.f32(i32 35, float %7652, float 0.000000e+00)  ; FMax(a,b)
  %7654 = fmul fast float %7639, 3.125000e-02
  %7655 = call float @dx.op.unary.f32(i32 7, float %7654)  ; Saturate(value)
  %7656 = fmul fast float %7655, 2.000000e+00
  %7657 = fadd fast float %7656, -1.000000e+00
  %7658 = fcmp fast ogt float %7657, 0.000000e+00
  %7659 = fcmp fast olt float %7657, 0.000000e+00
  %7660 = zext i1 %7658 to i32
  %7661 = zext i1 %7659 to i32
  %7662 = sub nsw i32 %7660, %7661
  %7663 = sitofp i32 %7662 to float
  %7664 = fmul fast float %7663, %7657
  %7665 = fsub fast float 1.000000e+00, %7664
  %7666 = fmul fast float %7665, %7665
  %7667 = fmul fast float %7666, %7665
  %7668 = fsub fast float %7665, %7667
  %7669 = fmul fast float %7668, %7653
  %7670 = fsub fast float 1.000000e+00, %7667
  %7671 = fsub fast float %7670, %7669
  %7672 = fmul fast float %7663, 5.000000e-01
  %7673 = fmul fast float %7672, %7671
  %7674 = fsub fast float 5.000000e-01, %7673
  br label %7828

; <label>:7675                                    ; preds = %7510
  br i1 %7521, label %7676, label %7743

; <label>:7676                                    ; preds = %7675
  %7677 = extractvalue %dx.types.CBufRet.f32 %7514, 1
  %7678 = extractvalue %dx.types.CBufRet.f32 %7514, 0
  %7679 = fmul fast float %7678, %6644
  %7680 = fmul fast float %7677, %6648
  %7681 = fadd fast float %7679, 5.000000e-01
  %7682 = call float @dx.op.unary.f32(i32 27, float %7681)  ; Round_ni(value)
  %7683 = fadd fast float %7680, 5.000000e-01
  %7684 = call float @dx.op.unary.f32(i32 27, float %7683)  ; Round_ni(value)
  %7685 = fsub fast float %7681, %7682
  %7686 = fsub fast float %7683, %7684
  %7687 = fadd fast float %7682, -5.000000e-01
  %7688 = fadd fast float %7684, -5.000000e-01
  %7689 = fmul fast float %7685, 2.000000e+00
  %7690 = fsub fast float 3.000000e+00, %7689
  %7691 = fadd fast float %7689, 1.000000e+00
  %7692 = fsub fast float 2.000000e+00, %7685
  %7693 = bitcast float %7690 to i32
  %7694 = sub nsw i32 2129859010, %7693
  %7695 = bitcast i32 %7694 to float
  %7696 = fmul fast float %7695, %7692
  %7697 = fadd fast float %7696, -1.000000e+00
  %7698 = bitcast float %7691 to i32
  %7699 = sub nsw i32 2129859010, %7698
  %7700 = bitcast i32 %7699 to float
  %7701 = fmul fast float %7700, %7685
  %7702 = fadd fast float %7701, 1.000000e+00
  %7703 = fmul fast float %7686, 2.000000e+00
  %7704 = fsub fast float 3.000000e+00, %7703
  %7705 = fadd fast float %7703, 1.000000e+00
  %7706 = fsub fast float 2.000000e+00, %7686
  %7707 = bitcast float %7704 to i32
  %7708 = sub nsw i32 2129859010, %7707
  %7709 = bitcast i32 %7708 to float
  %7710 = fmul fast float %7709, %7706
  %7711 = fadd fast float %7710, -1.000000e+00
  %7712 = bitcast float %7705 to i32
  %7713 = sub nsw i32 2129859010, %7712
  %7714 = bitcast i32 %7713 to float
  %7715 = fmul fast float %7714, %7686
  %7716 = fadd fast float %7715, 1.000000e+00
  %7717 = fadd fast float %7697, %7687
  %7718 = fmul fast float %7717, %7515
  %7719 = fadd fast float %7711, %7688
  %7720 = fmul fast float %7719, %7516
  %7721 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7718, float %7720, float undef, float undef, i32 0, i32 0, i32 undef, float %7520)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7722 = extractvalue %dx.types.ResRet.f32 %7721, 0
  %7723 = fmul fast float %7722, %7690
  %7724 = fadd fast float %7702, %7687
  %7725 = fmul fast float %7724, %7515
  %7726 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7725, float %7720, float undef, float undef, i32 0, i32 0, i32 undef, float %7520)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7727 = extractvalue %dx.types.ResRet.f32 %7726, 0
  %7728 = fmul fast float %7727, %7691
  %7729 = fadd fast float %7716, %7688
  %7730 = fmul fast float %7729, %7516
  %7731 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7718, float %7730, float undef, float undef, i32 0, i32 0, i32 undef, float %7520)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7732 = extractvalue %dx.types.ResRet.f32 %7731, 0
  %7733 = fmul fast float %7732, %7690
  %7734 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7725, float %7730, float undef, float undef, i32 0, i32 0, i32 undef, float %7520)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7735 = extractvalue %dx.types.ResRet.f32 %7734, 0
  %7736 = fmul fast float %7735, %7691
  %7737 = fadd fast float %7736, %7733
  %7738 = fmul fast float %7737, %7705
  %7739 = fadd fast float %7728, %7723
  %7740 = fmul fast float %7739, %7704
  %7741 = fadd fast float %7740, %7738
  %7742 = fmul fast float %7741, 6.250000e-02
  br label %7828

; <label>:7743                                    ; preds = %7675
  %7744 = fmul fast float %305, 0x401921FB60000000
  %7745 = call float @dx.op.unary.f32(i32 13, float %7744)  ; Sin(value)
  %7746 = call float @dx.op.unary.f32(i32 12, float %7744)  ; Cos(value)
  %7747 = fsub fast float -0.000000e+00, %7745
  br label %7748

; <label>:7748                                    ; preds = %7797, %7743
  %7749 = phi float [ 0.000000e+00, %7743 ], [ %7792, %7797 ]
  %7750 = phi float [ 0.000000e+00, %7743 ], [ %7794, %7797 ]
  %7751 = phi i32 [ 0, %7743 ], [ %7798, %7797 ]
  %7752 = mul i32 %7751, 2
  %7753 = add i32 0, %7752
  %7754 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7753
  %7755 = load float, float* %7754, align 4
  %7756 = mul i32 %7751, 2
  %7757 = add i32 1, %7756
  %7758 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7757
  %7759 = load float, float* %7758, align 4
  %7760 = fmul fast float %7755, %7746
  %7761 = call float @dx.op.tertiary.f32(i32 46, float %7759, float %7747, float %7760)  ; FMad(a,b,c)
  %7762 = fmul fast float %7755, %7745
  %7763 = call float @dx.op.tertiary.f32(i32 46, float %7759, float %7746, float %7762)  ; FMad(a,b,c)
  %7764 = fmul fast float %7761, %7518
  %7765 = fmul fast float %7763, %7518
  %7766 = fadd fast float %7764, %6644
  %7767 = fadd fast float %7765, %6648
  %7768 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %44, float %7766, float %7767, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7769 = extractvalue %dx.types.ResRet.f32 %7768, 0
  %7770 = extractvalue %dx.types.ResRet.f32 %7768, 1
  %7771 = extractvalue %dx.types.ResRet.f32 %7768, 2
  %7772 = extractvalue %dx.types.ResRet.f32 %7768, 3
  %7773 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 0
  store float %7769, float* %7773, align 4
  %7774 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 1
  store float %7770, float* %7774, align 4
  %7775 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 2
  store float %7771, float* %7775, align 4
  %7776 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 3
  store float %7772, float* %7776, align 4
  %7777 = fsub fast float %7769, %7520
  %7778 = fcmp fast olt float %7777, 0.000000e+00
  %7779 = select i1 %7778, float 0.000000e+00, float 1.000000e+00
  %7780 = fadd fast float %7779, %7749
  %7781 = fmul fast float %7779, %7777
  %7782 = fadd fast float %7781, %7750
  br label %7783

; <label>:7783                                    ; preds = %7783, %7748
  %7784 = phi i32 [ 1, %7748 ], [ %7795, %7783 ]
  %7785 = phi float [ %7782, %7748 ], [ %7794, %7783 ]
  %7786 = phi float [ %7780, %7748 ], [ %7792, %7783 ]
  %7787 = getelementptr [4 x float], [4 x float]* %99, i32 0, i32 %7784
  %7788 = load float, float* %7787, align 4, !tbaa !114, !noalias !104
  %7789 = fsub fast float %7788, %7520
  %7790 = fcmp fast olt float %7789, 0.000000e+00
  %7791 = select i1 %7790, float 0.000000e+00, float 1.000000e+00
  %7792 = fadd fast float %7791, %7786
  %7793 = fmul fast float %7791, %7789
  %7794 = fadd fast float %7793, %7785
  %7795 = add nuw nsw i32 %7784, 1
  %7796 = icmp eq i32 %7795, 4
  br i1 %7796, label %7797, label %7783, !llvm.loop !116

; <label>:7797                                    ; preds = %7783
  %7798 = add nuw nsw i32 %7751, 1
  %7799 = icmp eq i32 %7798, 8
  br i1 %7799, label %7800, label %7748, !llvm.loop !117

; <label>:7800                                    ; preds = %7797
  %7801 = fdiv fast float 1.000000e+00, %7792
  %7802 = fmul fast float %7801, %7794
  %7803 = fdiv fast float 1.000000e+00, %7520
  %7804 = fmul fast float %7802, %7803
  %7805 = call float @dx.op.unary.f32(i32 7, float %7804)  ; Saturate(value)
  %7806 = call float @dx.op.binary.f32(i32 35, float %7805, float 0.000000e+00)  ; FMax(a,b)
  %7807 = fmul fast float %7792, 3.125000e-02
  %7808 = call float @dx.op.unary.f32(i32 7, float %7807)  ; Saturate(value)
  %7809 = fmul fast float %7808, 2.000000e+00
  %7810 = fadd fast float %7809, -1.000000e+00
  %7811 = fcmp fast ogt float %7810, 0.000000e+00
  %7812 = fcmp fast olt float %7810, 0.000000e+00
  %7813 = zext i1 %7811 to i32
  %7814 = zext i1 %7812 to i32
  %7815 = sub nsw i32 %7813, %7814
  %7816 = sitofp i32 %7815 to float
  %7817 = fmul fast float %7816, %7810
  %7818 = fsub fast float 1.000000e+00, %7817
  %7819 = fmul fast float %7818, %7818
  %7820 = fmul fast float %7819, %7818
  %7821 = fsub fast float %7818, %7820
  %7822 = fmul fast float %7821, %7806
  %7823 = fsub fast float 1.000000e+00, %7820
  %7824 = fsub fast float %7823, %7822
  %7825 = fmul fast float %7816, 5.000000e-01
  %7826 = fmul fast float %7825, %7824
  %7827 = fsub fast float 5.000000e-01, %7826
  br label %7828

; <label>:7828                                    ; preds = %7800, %7676, %7647, %7523, %7507
  %7829 = phi float [ 1.000000e+00, %7507 ], [ %7589, %7523 ], [ %7674, %7647 ], [ %7742, %7676 ], [ %7827, %7800 ]
  %7830 = fsub fast float %7341, %7174
  %7831 = fmul fast float %7830, %6741
  %7832 = fadd fast float %7831, %7174
  %7833 = fsub fast float %7508, %7832
  %7834 = fmul fast float %7833, %6740
  %7835 = fadd fast float %7834, %7832
  %7836 = fsub fast float %7829, %7835
  %7837 = fmul fast float %7836, %6768
  %7838 = fadd fast float %7837, %7835
  %7839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7840 = extractvalue %dx.types.CBufRet.f32 %7839, 2
  %7841 = fcmp fast ogt float %7840, 0.000000e+00
  br i1 %7841, label %7842, label %7882, !dx.controlflow.hints !121

; <label>:7842                                    ; preds = %7828
  %7843 = fcmp fast ugt float %7840, 0.000000e+00
  br i1 %7843, label %7844, label %7879

; <label>:7844                                    ; preds = %7842
  %7845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7846 = extractvalue %dx.types.CBufRet.f32 %7845, 0
  %7847 = extractvalue %dx.types.CBufRet.f32 %7845, 1
  %7848 = extractvalue %dx.types.CBufRet.f32 %7845, 2
  %7849 = extractvalue %dx.types.CBufRet.f32 %7845, 3
  %7850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7851 = extractvalue %dx.types.CBufRet.f32 %7850, 0
  %7852 = extractvalue %dx.types.CBufRet.f32 %7850, 1
  %7853 = extractvalue %dx.types.CBufRet.f32 %7850, 2
  %7854 = extractvalue %dx.types.CBufRet.f32 %7850, 3
  %7855 = extractvalue %dx.types.CBufRet.f32 %7839, 0
  %7856 = extractvalue %dx.types.CBufRet.f32 %7839, 1
  %7857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7858 = extractvalue %dx.types.CBufRet.f32 %7857, 0
  %7859 = extractvalue %dx.types.CBufRet.f32 %7857, 1
  %7860 = extractvalue %dx.types.CBufRet.f32 %7857, 2
  %7861 = fadd fast float %7858, %6621
  %7862 = fadd fast float %7859, %6622
  %7863 = fadd fast float %7860, %6623
  %7864 = fmul fast float %7861, %7846
  %7865 = call float @dx.op.tertiary.f32(i32 46, float %7847, float %7862, float %7864)  ; FMad(a,b,c)
  %7866 = call float @dx.op.tertiary.f32(i32 46, float %7848, float %7863, float %7865)  ; FMad(a,b,c)
  %7867 = fadd fast float %7866, %7849
  %7868 = fmul fast float %7861, %7851
  %7869 = call float @dx.op.tertiary.f32(i32 46, float %7852, float %7862, float %7868)  ; FMad(a,b,c)
  %7870 = call float @dx.op.tertiary.f32(i32 46, float %7853, float %7863, float %7869)  ; FMad(a,b,c)
  %7871 = fadd fast float %7870, %7854
  %7872 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %40, float %7867, float %7871, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7873 = extractvalue %dx.types.ResRet.f32 %7872, 0
  %7874 = fmul fast float %7873, %7856
  %7875 = fadd fast float %7874, %7855
  %7876 = call float @dx.op.unary.f32(i32 7, float %7875)  ; Saturate(value)
  %7877 = fmul fast float %7876, %7840
  %7878 = fsub fast float 1.000000e+00, %7877
  br label %7879

; <label>:7879                                    ; preds = %7844, %7842
  %7880 = phi float [ %7878, %7844 ], [ 1.000000e+00, %7842 ]
  %7881 = fmul fast float %7880, %7838
  br label %7882

; <label>:7882                                    ; preds = %7879, %7828, %6601
  %7883 = phi float [ 1.000000e+00, %6601 ], [ %7881, %7879 ], [ %7838, %7828 ]
  %7884 = call float @dx.op.binary.f32(i32 36, float %7883, float %7883)  ; FMin(a,b)
  %7885 = call float @dx.op.binary.f32(i32 36, float %7883, float %7884)  ; FMin(a,b)
  %7886 = fcmp fast ogt float %7885, 0.000000e+00
  br i1 %7886, label %7887, label %8053, !dx.controlflow.hints !122

; <label>:7887                                    ; preds = %7882
  %7888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7889 = extractvalue %dx.types.CBufRet.f32 %7888, 0
  %7890 = extractvalue %dx.types.CBufRet.f32 %7888, 1
  %7891 = extractvalue %dx.types.CBufRet.f32 %7888, 2
  %7892 = extractvalue %dx.types.CBufRet.f32 %7888, 3
  %7893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7894 = extractvalue %dx.types.CBufRet.f32 %7893, 0
  %7895 = extractvalue %dx.types.CBufRet.f32 %7893, 1
  %7896 = extractvalue %dx.types.CBufRet.f32 %7893, 2
  %7897 = extractvalue %dx.types.CBufRet.f32 %7893, 3
  %7898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7899 = extractvalue %dx.types.CBufRet.f32 %7898, 0
  %7900 = extractvalue %dx.types.CBufRet.f32 %7898, 1
  %7901 = extractvalue %dx.types.CBufRet.f32 %7898, 2
  %7902 = extractvalue %dx.types.CBufRet.f32 %7898, 3
  %7903 = fmul fast float %7889, %6621
  %7904 = call float @dx.op.tertiary.f32(i32 46, float %6622, float %7890, float %7903)  ; FMad(a,b,c)
  %7905 = call float @dx.op.tertiary.f32(i32 46, float %6623, float %7891, float %7904)  ; FMad(a,b,c)
  %7906 = fadd fast float %7905, %7892
  %7907 = fmul fast float %7894, %6621
  %7908 = call float @dx.op.tertiary.f32(i32 46, float %6622, float %7895, float %7907)  ; FMad(a,b,c)
  %7909 = call float @dx.op.tertiary.f32(i32 46, float %6623, float %7896, float %7908)  ; FMad(a,b,c)
  %7910 = fadd fast float %7909, %7897
  %7911 = fmul fast float %7899, %6621
  %7912 = call float @dx.op.tertiary.f32(i32 46, float %6622, float %7900, float %7911)  ; FMad(a,b,c)
  %7913 = call float @dx.op.tertiary.f32(i32 46, float %6623, float %7901, float %7912)  ; FMad(a,b,c)
  %7914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7915 = extractvalue %dx.types.CBufRet.f32 %7914, 0
  %7916 = extractvalue %dx.types.CBufRet.f32 %7914, 1
  %7917 = extractvalue %dx.types.CBufRet.f32 %7914, 3
  %7918 = fmul fast float %7917, %7906
  %7919 = fmul fast float %7917, %7910
  %7920 = fadd fast float %7918, %7915
  %7921 = fadd fast float %7919, %7916
  %7922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7923 = extractvalue %dx.types.CBufRet.f32 %7922, 0
  %7924 = extractvalue %dx.types.CBufRet.f32 %7922, 1
  %7925 = fsub fast float %7920, %7923
  %7926 = fsub fast float %7921, %7924
  %7927 = fcmp fast olt float %7925, 0.000000e+00
  %7928 = fcmp fast olt float %7926, 0.000000e+00
  %7929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7930 = extractvalue %dx.types.CBufRet.f32 %7929, 0
  %7931 = extractvalue %dx.types.CBufRet.f32 %7929, 1
  %7932 = extractvalue %dx.types.CBufRet.f32 %7929, 2
  %7933 = extractvalue %dx.types.CBufRet.f32 %7929, 3
  %7934 = select i1 %7927, float %7930, float %7932
  %7935 = select i1 %7928, float %7931, float %7933
  %7936 = fmul fast float %7934, %7925
  %7937 = fmul fast float %7935, %7926
  %7938 = call float @dx.op.unary.f32(i32 6, float %7936)  ; FAbs(value)
  %7939 = call float @dx.op.unary.f32(i32 6, float %7937)  ; FAbs(value)
  %7940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7941 = extractvalue %dx.types.CBufRet.f32 %7940, 0
  %7942 = call float @dx.op.binary.f32(i32 35, float %7938, float %7939)  ; FMax(a,b)
  %7943 = fsub fast float %7941, %7942
  %7944 = call float @dx.op.unary.f32(i32 7, float %7943)  ; Saturate(value)
  %7945 = fcmp fast ogt float %7944, 0.000000e+00
  br i1 %7945, label %7946, label %7987, !dx.controlflow.hints !123

; <label>:7946                                    ; preds = %7887
  %7947 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %43, float %7920, float %7921, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7948 = extractvalue %dx.types.ResRet.f32 %7947, 1
  %7949 = fcmp fast ogt float %7948, 0.000000e+00
  br i1 %7949, label %7950, label %7982

; <label>:7950                                    ; preds = %7946
  %7951 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %43, float %7920, float %7921, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7952 = extractvalue %dx.types.ResRet.f32 %7951, 0
  %7953 = extractvalue %dx.types.ResRet.f32 %7951, 1
  %7954 = extractvalue %dx.types.ResRet.f32 %7951, 2
  %7955 = extractvalue %dx.types.ResRet.f32 %7951, 3
  %7956 = fsub fast float 1.000000e+00, %7902
  %7957 = fsub fast float %7956, %7913
  %7958 = fmul fast float %7957, 0x400921FB60000000
  %7959 = fadd fast float %7958, 0x3FF921FB60000000
  %7960 = call float @dx.op.unary.f32(i32 13, float %7959)  ; Sin(value)
  %7961 = fadd fast float %7960, -1.000000e+00
  %7962 = fmul fast float %7961, 0x3FD45F3060000000
  %7963 = fmul fast float %7957, 0x401921FB60000000
  %7964 = fadd fast float %7963, 0x400921FB60000000
  %7965 = call float @dx.op.unary.f32(i32 13, float %7964)  ; Sin(value)
  %7966 = fadd fast float %7965, 0x3E7777A5C0000000
  %7967 = fmul fast float %7966, 0x3FC45F3060000000
  %7968 = fmul fast float %7957, 0x4022D97C80000000
  %7969 = fadd fast float %7968, 0x4012D97C80000000
  %7970 = call float @dx.op.unary.f32(i32 13, float %7969)  ; Sin(value)
  %7971 = fadd fast float %7970, 1.000000e+00
  %7972 = fmul fast float %7971, 0x3FBB2995E0000000
  %7973 = fmul fast float %7957, 0x402921FB60000000
  %7974 = fadd fast float %7973, 0x401921FB60000000
  %7975 = call float @dx.op.unary.f32(i32 13, float %7974)  ; Sin(value)
  %7976 = fadd fast float %7975, 0xBE8777A5C0000000
  %7977 = fmul fast float %7976, 0x3FB45F3060000000
  %7978 = call float @dx.op.dot4.f32(i32 56, float %7952, float %7953, float %7954, float %7955, float %7962, float %7967, float %7972, float %7977)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7979 = fmul fast float %7978, 0xBFF7154760000000
  %7980 = call float @dx.op.unary.f32(i32 21, float %7979)  ; Exp(value)
  %7981 = call float @dx.op.unary.f32(i32 7, float %7980)  ; Saturate(value)
  br label %7982

; <label>:7982                                    ; preds = %7950, %7946
  %7983 = phi float [ %7981, %7950 ], [ 1.000000e+00, %7946 ]
  %7984 = fadd fast float %7983, -1.000000e+00
  %7985 = fmul fast float %7984, %7944
  %7986 = fadd fast float %7985, 1.000000e+00
  br label %7987

; <label>:7987                                    ; preds = %7982, %7887
  %7988 = phi float [ %7986, %7982 ], [ 1.000000e+00, %7887 ]
  %7989 = fmul fast float %7988, %7883
  %7990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7991 = extractvalue %dx.types.CBufRet.f32 %7990, 0
  %7992 = extractvalue %dx.types.CBufRet.f32 %7990, 1
  %7993 = extractvalue %dx.types.CBufRet.f32 %7990, 2
  %7994 = fadd fast float %7991, %188
  %7995 = fadd fast float %7992, %189
  %7996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7997 = extractvalue %dx.types.CBufRet.f32 %7996, 1
  %7998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7999 = extractvalue %dx.types.CBufRet.f32 %7998, 0
  %8000 = extractvalue %dx.types.CBufRet.f32 %7998, 1
  %8001 = extractvalue %dx.types.CBufRet.f32 %7998, 2
  %8002 = fsub fast float -0.000000e+00, %7994
  %8003 = fsub fast float -0.000000e+00, %7995
  %8004 = fsub fast float -0.000000e+00, %190
  %8005 = fsub fast float %8004, %7993
  %8006 = fadd fast float %8005, %7997
  %8007 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8002, float %8003, float %8006)  ; Dot3(ax,ay,az,bx,by,bz)
  %8008 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7999, float %8000, float %8001)  ; Dot3(ax,ay,az,bx,by,bz)
  %8009 = fdiv fast float 1.000000e+00, %8008
  %8010 = fmul fast float %8009, %8007
  %8011 = fmul fast float %7999, %8010
  %8012 = fmul fast float %8000, %8010
  %8013 = fadd fast float %8011, %7994
  %8014 = fadd fast float %8012, %7995
  %8015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %8016 = extractvalue %dx.types.CBufRet.f32 %8015, 0
  %8017 = extractvalue %dx.types.CBufRet.f32 %8015, 1
  %8018 = fsub fast float %8013, %8016
  %8019 = fsub fast float %8014, %8017
  %8020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %8021 = extractvalue %dx.types.CBufRet.f32 %8020, 2
  %8022 = extractvalue %dx.types.CBufRet.f32 %8020, 3
  %8023 = fmul fast float %8018, %8021
  %8024 = fmul fast float %8019, %8022
  %8025 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %8026 = extractvalue %dx.types.CBufRet.i32 %8025, 3
  %8027 = icmp eq i32 %8026, 0
  br i1 %8027, label %8033, label %8028

; <label>:8028                                    ; preds = %7987
  %8029 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %8023, float %8024, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8030 = extractvalue %dx.types.ResRet.f32 %8029, 0
  %8031 = extractvalue %dx.types.ResRet.f32 %8029, 1
  %8032 = extractvalue %dx.types.ResRet.f32 %8029, 2
  br label %8038

; <label>:8033                                    ; preds = %7987
  %8034 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %8023, float %8024, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8035 = extractvalue %dx.types.ResRet.f32 %8034, 0
  %8036 = extractvalue %dx.types.ResRet.f32 %8034, 1
  %8037 = extractvalue %dx.types.ResRet.f32 %8034, 2
  br label %8038

; <label>:8038                                    ; preds = %8033, %8028
  %8039 = phi float [ %8030, %8028 ], [ %8035, %8033 ]
  %8040 = phi float [ %8031, %8028 ], [ %8036, %8033 ]
  %8041 = phi float [ %8032, %8028 ], [ %8037, %8033 ]
  %8042 = extractvalue %dx.types.CBufRet.f32 %7996, 2
  %8043 = fmul fast float %8042, %8039
  %8044 = extractvalue %dx.types.CBufRet.f32 %7996, 0
  %8045 = fsub fast float %8010, %8044
  %8046 = fsub fast float %8045, %8043
  %8047 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8046)  ; FMax(a,b)
  %8048 = fmul fast float %8047, %8040
  %8049 = call float @dx.op.binary.f32(i32 36, float %8041, float %8048)  ; FMin(a,b)
  %8050 = fmul fast float %8049, 0xBFF7154760000000
  %8051 = call float @dx.op.unary.f32(i32 21, float %8050)  ; Exp(value)
  %8052 = fmul fast float %7989, %8051
  br label %8053

; <label>:8053                                    ; preds = %8038, %7882
  %8054 = phi float [ %8052, %8038 ], [ %7883, %7882 ]
  %8055 = call float @dx.op.binary.f32(i32 36, float %8054, float %8054)  ; FMin(a,b)
  %8056 = call float @dx.op.binary.f32(i32 36, float %8054, float %8055)  ; FMin(a,b)
  %8057 = fcmp fast ogt float %8056, 0.000000e+00
  br i1 %8057, label %8058, label %8366, !dx.controlflow.hints !124

; <label>:8058                                    ; preds = %8053
  %8059 = bitcast i32 %5723 to float
  %8060 = fmul fast float %8054, %6613
  %8061 = fmul fast float %8054, %6614
  %8062 = fmul fast float %8054, %6615
  %8063 = fsub fast float %6602, %221
  %8064 = fsub fast float %6603, %222
  %8065 = fsub fast float %6604, %223
  %8066 = call float @dx.op.dot3.f32(i32 55, float %8063, float %8064, float %8065, float %8063, float %8064, float %8065)  ; Dot3(ax,ay,az,bx,by,bz)
  %8067 = call float @dx.op.unary.f32(i32 25, float %8066)  ; Rsqrt(value)
  %8068 = fmul fast float %8067, %8063
  %8069 = fmul fast float %8067, %8064
  %8070 = fmul fast float %8067, %8065
  %8071 = call float @dx.op.dot3.f32(i32 55, float %6602, float %6603, float %6604, float %5689, float %5690, float %5691)  ; Dot3(ax,ay,az,bx,by,bz)
  %8072 = call float @dx.op.dot3.f32(i32 55, float %5521, float %5522, float %5523, float %8068, float %8069, float %8070)  ; Dot3(ax,ay,az,bx,by,bz)
  %8073 = call float @dx.op.unary.f32(i32 7, float %8071)  ; Saturate(value)
  %8074 = fmul fast float %8073, %8073
  %8075 = fmul fast float %8074, %8059
  %8076 = call float @dx.op.unary.f32(i32 7, float %8075)  ; Saturate(value)
  %8077 = fmul fast float %8076, %8073
  %8078 = call float @dx.op.dot3.f32(i32 55, float %5689, float %5690, float %5691, float %8068, float %8069, float %8070)  ; Dot3(ax,ay,az,bx,by,bz)
  %8079 = fmul fast float %8078, %8078
  %8080 = call float @dx.op.unary.f32(i32 6, float %8071)  ; FAbs(value)
  %8081 = fsub fast float 1.000000e+00, %5717
  %8082 = fmul fast float %5699, %5699
  %8083 = fmul fast float %8082, %8081
  %8084 = fadd fast float %8083, %5717
  %8085 = bitcast float %8084 to i32
  %8086 = ashr i32 %8085, 1
  %8087 = add nsw i32 %8086, 532487669
  %8088 = bitcast i32 %8087 to float
  %8089 = fadd fast float %8088, %5699
  %8090 = fmul fast float %5717, %8079
  %8091 = fsub fast float 1.000000e+00, %8079
  %8092 = fadd fast float %8091, %8090
  %8093 = fmul fast float %8080, %8080
  %8094 = fmul fast float %8093, %8081
  %8095 = fadd fast float %8094, %5717
  %8096 = bitcast float %8095 to i32
  %8097 = ashr i32 %8096, 1
  %8098 = add nsw i32 %8097, 532487669
  %8099 = bitcast i32 %8098 to float
  %8100 = fadd fast float %8099, %8080
  %8101 = fmul fast float %8092, %8092
  %8102 = fmul fast float %8101, %8089
  %8103 = fmul fast float %8102, %8100
  %8104 = fdiv fast float 0x3FF0A00000000000, %8103
  %8105 = fmul fast float %8104, %5717
  %8106 = fmul fast float %5969, 0x3FF9999980000000
  %8107 = fsub fast float 5.000000e+00, %8106
  %8108 = call float @dx.op.unary.f32(i32 6, float %8072)  ; FAbs(value)
  %8109 = fsub fast float 1.000000e+00, %8108
  %8110 = fmul fast float %5969, 0x41D9660740000000
  %8111 = fadd fast float %8110, 0xC1EFBF8940000000
  %8112 = bitcast float %8109 to i32
  %8113 = sitofp i32 %8112 to float
  %8114 = fmul fast float %8113, %8107
  %8115 = fadd fast float %8111, %8114
  %8116 = fptosi float %8115 to i32
  %8117 = bitcast i32 %8116 to float
  %8118 = fsub fast float 1.000000e+00, %5686
  %8119 = fsub fast float 1.000000e+00, %5687
  %8120 = fsub fast float 1.000000e+00, %5697
  %8121 = fmul fast float %8117, %8118
  %8122 = fmul fast float %8117, %8119
  %8123 = fmul fast float %8117, %8120
  %8124 = fadd fast float %8121, %5686
  %8125 = fadd fast float %8122, %5687
  %8126 = fadd fast float %8123, %5697
  br i1 %5992, label %8127, label %8150

; <label>:8127                                    ; preds = %8058
  %8128 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %43, float %4731, float %8108, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8129 = extractvalue %dx.types.ResRet.f32 %8128, 0
  %8130 = extractvalue %dx.types.ResRet.f32 %8128, 1
  %8131 = extractvalue %dx.types.ResRet.f32 %8128, 2
  %8132 = fadd fast float %8129, -5.000000e-01
  %8133 = fadd fast float %8130, -5.000000e-01
  %8134 = fadd fast float %8131, -5.000000e-01
  %8135 = fmul fast float %5686, 4.000000e+00
  %8136 = fmul fast float %8135, %8118
  %8137 = fmul fast float %8136, %8132
  %8138 = fmul fast float %5687, 4.000000e+00
  %8139 = fmul fast float %8138, %8119
  %8140 = fmul fast float %8139, %8133
  %8141 = fmul fast float %5697, 4.000000e+00
  %8142 = fmul fast float %8141, %8120
  %8143 = fmul fast float %8142, %8134
  %8144 = fadd fast float %8137, %8124
  %8145 = fadd fast float %8140, %8125
  %8146 = fadd fast float %8143, %8126
  %8147 = call float @dx.op.unary.f32(i32 7, float %8144)  ; Saturate(value)
  %8148 = call float @dx.op.unary.f32(i32 7, float %8145)  ; Saturate(value)
  %8149 = call float @dx.op.unary.f32(i32 7, float %8146)  ; Saturate(value)
  br label %8150

; <label>:8150                                    ; preds = %8127, %8058
  %8151 = phi float [ %8147, %8127 ], [ %8124, %8058 ]
  %8152 = phi float [ %8148, %8127 ], [ %8125, %8058 ]
  %8153 = phi float [ %8149, %8127 ], [ %8126, %8058 ]
  %8154 = fmul fast float %8071, 9.843750e-01
  %8155 = fadd fast float %8154, 7.812500e-03
  %8156 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %43, float %8155, float %5973, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8157 = extractvalue %dx.types.ResRet.f32 %8156, 0
  %8158 = extractvalue %dx.types.ResRet.f32 %8156, 1
  %8159 = extractvalue %dx.types.ResRet.f32 %8156, 2
  %8160 = extractvalue %dx.types.ResRet.f32 %8156, 3
  %8161 = fsub fast float %8159, %8157
  %8162 = fsub fast float %8160, %8158
  %8163 = fmul fast float %8161, %5979
  %8164 = fmul fast float %8162, %5979
  %8165 = fadd fast float %8163, %8157
  %8166 = fadd fast float %8164, %8158
  %8167 = fmul fast float %8165, %5686
  %8168 = fmul fast float %8165, %5687
  %8169 = fmul fast float %8165, %5697
  %8170 = fadd fast float %8167, %8166
  %8171 = fadd fast float %8168, %8166
  %8172 = fadd fast float %8169, %8166
  br i1 %5992, label %8173, label %8196

; <label>:8173                                    ; preds = %8150
  %8174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %43, float %4731, float %8071, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8175 = extractvalue %dx.types.ResRet.f32 %8174, 0
  %8176 = extractvalue %dx.types.ResRet.f32 %8174, 1
  %8177 = extractvalue %dx.types.ResRet.f32 %8174, 2
  %8178 = fadd fast float %8175, -5.000000e-01
  %8179 = fadd fast float %8176, -5.000000e-01
  %8180 = fadd fast float %8177, -5.000000e-01
  %8181 = fmul fast float %5686, 4.000000e+00
  %8182 = fmul fast float %8181, %8118
  %8183 = fmul fast float %8182, %8178
  %8184 = fmul fast float %5687, 4.000000e+00
  %8185 = fmul fast float %8184, %8119
  %8186 = fmul fast float %8185, %8179
  %8187 = fmul fast float %5697, 4.000000e+00
  %8188 = fmul fast float %8187, %8120
  %8189 = fmul fast float %8188, %8180
  %8190 = fadd fast float %8183, %8170
  %8191 = fadd fast float %8186, %8171
  %8192 = fadd fast float %8189, %8172
  %8193 = call float @dx.op.unary.f32(i32 7, float %8190)  ; Saturate(value)
  %8194 = call float @dx.op.unary.f32(i32 7, float %8191)  ; Saturate(value)
  %8195 = call float @dx.op.unary.f32(i32 7, float %8192)  ; Saturate(value)
  br label %8196

; <label>:8196                                    ; preds = %8173, %8150
  %8197 = phi float [ %8193, %8173 ], [ %8170, %8150 ]
  %8198 = phi float [ %8194, %8173 ], [ %8171, %8150 ]
  %8199 = phi float [ %8195, %8173 ], [ %8172, %8150 ]
  %8200 = call float @dx.op.binary.f32(i32 35, float %8198, float %8199)  ; FMax(a,b)
  %8201 = call float @dx.op.binary.f32(i32 35, float %8197, float %8200)  ; FMax(a,b)
  %8202 = fsub fast float 1.000000e+00, %8201
  %8203 = call float @dx.op.binary.f32(i32 35, float %8080, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8204 = fdiv fast float %4035, %8203
  %8205 = fmul fast float %6511, %8204
  %8206 = fmul fast float %6513, %8204
  %8207 = fmul fast float %6515, %8204
  %8208 = call float @dx.op.unary.f32(i32 21, float %8205)  ; Exp(value)
  %8209 = call float @dx.op.unary.f32(i32 21, float %8206)  ; Exp(value)
  %8210 = call float @dx.op.unary.f32(i32 21, float %8207)  ; Exp(value)
  %8211 = call float @dx.op.unary.f32(i32 7, float %8208)  ; Saturate(value)
  %8212 = call float @dx.op.unary.f32(i32 7, float %8209)  ; Saturate(value)
  %8213 = call float @dx.op.unary.f32(i32 7, float %8210)  ; Saturate(value)
  %8214 = select i1 %6508, float %8211, float 0.000000e+00
  %8215 = select i1 %6509, float %8212, float 0.000000e+00
  %8216 = select i1 %6510, float %8213, float 0.000000e+00
  %8217 = fsub fast float -0.000000e+00, %5689
  %8218 = fsub fast float -0.000000e+00, %5690
  %8219 = fsub fast float -0.000000e+00, %5691
  %8220 = call float @dx.op.dot3.f32(i32 55, float %6602, float %6603, float %6604, float %8217, float %8218, float %8219)  ; Dot3(ax,ay,az,bx,by,bz)
  %8221 = call float @dx.op.unary.f32(i32 7, float %8220)  ; Saturate(value)
  %8222 = fmul fast float %8221, 9.843750e-01
  %8223 = fadd fast float %8222, 7.812500e-03
  %8224 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %43, float %8223, float %5973, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8225 = extractvalue %dx.types.ResRet.f32 %8224, 0
  %8226 = extractvalue %dx.types.ResRet.f32 %8224, 1
  %8227 = extractvalue %dx.types.ResRet.f32 %8224, 2
  %8228 = extractvalue %dx.types.ResRet.f32 %8224, 3
  %8229 = fsub fast float %8227, %8225
  %8230 = fsub fast float %8228, %8226
  %8231 = fmul fast float %8229, %5979
  %8232 = fmul fast float %8230, %5979
  %8233 = fadd fast float %8231, %8225
  %8234 = fadd fast float %8232, %8226
  %8235 = fmul fast float %8233, %5686
  %8236 = fmul fast float %8233, %5687
  %8237 = fmul fast float %8233, %5697
  %8238 = fadd fast float %8235, %8234
  %8239 = fadd fast float %8236, %8234
  %8240 = fadd fast float %8237, %8234
  br i1 %5992, label %8241, label %8264

; <label>:8241                                    ; preds = %8196
  %8242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %43, float %4731, float %8221, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8243 = extractvalue %dx.types.ResRet.f32 %8242, 0
  %8244 = extractvalue %dx.types.ResRet.f32 %8242, 1
  %8245 = extractvalue %dx.types.ResRet.f32 %8242, 2
  %8246 = fadd fast float %8243, -5.000000e-01
  %8247 = fadd fast float %8244, -5.000000e-01
  %8248 = fadd fast float %8245, -5.000000e-01
  %8249 = fmul fast float %5686, 4.000000e+00
  %8250 = fmul fast float %8249, %8118
  %8251 = fmul fast float %8250, %8246
  %8252 = fmul fast float %5687, 4.000000e+00
  %8253 = fmul fast float %8252, %8119
  %8254 = fmul fast float %8253, %8247
  %8255 = fmul fast float %5697, 4.000000e+00
  %8256 = fmul fast float %8255, %8120
  %8257 = fmul fast float %8256, %8248
  %8258 = fadd fast float %8251, %8238
  %8259 = fadd fast float %8254, %8239
  %8260 = fadd fast float %8257, %8240
  %8261 = call float @dx.op.unary.f32(i32 7, float %8258)  ; Saturate(value)
  %8262 = call float @dx.op.unary.f32(i32 7, float %8259)  ; Saturate(value)
  %8263 = call float @dx.op.unary.f32(i32 7, float %8260)  ; Saturate(value)
  br label %8264

; <label>:8264                                    ; preds = %8241, %8196
  %8265 = phi float [ %8261, %8241 ], [ %8238, %8196 ]
  %8266 = phi float [ %8262, %8241 ], [ %8239, %8196 ]
  %8267 = phi float [ %8263, %8241 ], [ %8240, %8196 ]
  %8268 = call float @dx.op.binary.f32(i32 35, float %8266, float %8267)  ; FMax(a,b)
  %8269 = call float @dx.op.binary.f32(i32 35, float %8265, float %8268)  ; FMax(a,b)
  %8270 = fsub fast float 1.000000e+00, %8269
  %8271 = fmul fast float %5714, %6575
  %8272 = fadd fast float %6577, %8271
  %8273 = call float @dx.op.unary.f32(i32 7, float %8272)  ; Saturate(value)
  %8274 = fsub fast float %6602, %5705
  %8275 = fsub fast float %6603, %5706
  %8276 = fsub fast float %6604, %5707
  %8277 = call float @dx.op.dot3.f32(i32 55, float %8274, float %8275, float %8276, float %8274, float %8275, float %8276)  ; Dot3(ax,ay,az,bx,by,bz)
  %8278 = call float @dx.op.unary.f32(i32 25, float %8277)  ; Rsqrt(value)
  %8279 = fmul fast float %8278, %8274
  %8280 = fmul fast float %8278, %8275
  %8281 = fmul fast float %8278, %8276
  %8282 = call float @dx.op.dot3.f32(i32 55, float %8217, float %8218, float %8219, float %8279, float %8280, float %8281)  ; Dot3(ax,ay,az,bx,by,bz)
  %8283 = fmul fast float %8282, %8282
  %8284 = call float @dx.op.unary.f32(i32 6, float %8221)  ; FAbs(value)
  %8285 = call float @dx.op.binary.f32(i32 35, float %8273, float 0x3F847AE140000000)  ; FMax(a,b)
  %8286 = fmul fast float %8285, %8285
  %8287 = fmul fast float %8286, %8286
  %8288 = fsub fast float 1.000000e+00, %8287
  %8289 = fmul fast float %8082, %8288
  %8290 = fadd fast float %8289, %8287
  %8291 = bitcast float %8290 to i32
  %8292 = ashr i32 %8291, 1
  %8293 = add nsw i32 %8292, 532487669
  %8294 = bitcast i32 %8293 to float
  %8295 = fadd fast float %8294, %5699
  %8296 = fmul fast float %8287, %8283
  %8297 = fsub fast float 1.000000e+00, %8283
  %8298 = fadd fast float %8297, %8296
  %8299 = fmul fast float %8284, %8284
  %8300 = fmul fast float %8299, %8288
  %8301 = fadd fast float %8300, %8287
  %8302 = bitcast float %8301 to i32
  %8303 = ashr i32 %8302, 1
  %8304 = add nsw i32 %8303, 532487669
  %8305 = bitcast i32 %8304 to float
  %8306 = fadd fast float %8305, %8284
  %8307 = fmul fast float %8298, %8298
  %8308 = fmul fast float %8307, %8295
  %8309 = fmul fast float %8308, %8306
  %8310 = fdiv fast float 0x3FF0A00000000000, %8309
  %8311 = fmul fast float %8310, %8287
  %8312 = fmul fast float %8221, %8214
  %8313 = fmul fast float %8221, %8215
  %8314 = fmul fast float %8221, %8216
  %8315 = fmul fast float %8312, %8270
  %8316 = fmul fast float %8315, %8311
  %8317 = fmul fast float %8313, %8270
  %8318 = fmul fast float %8317, %8311
  %8319 = fmul fast float %8314, %8270
  %8320 = fmul fast float %8319, %8311
  %8321 = fmul fast float %8151, %8105
  %8322 = fmul fast float %8152, %8105
  %8323 = fmul fast float %8153, %8105
  %8324 = fsub fast float 1.000000e+00, %8072
  %8325 = bitcast float %8324 to i32
  %8326 = sitofp i32 %8325 to float
  %8327 = fmul fast float %8326, 5.000000e+00
  %8328 = fadd fast float %8327, 0xC1EFBF8940000000
  %8329 = fptosi float %8328 to i32
  %8330 = bitcast i32 %8329 to float
  %8331 = fmul fast float %8330, %4732
  %8332 = fmul fast float %8202, %8331
  %8333 = fmul fast float %8332, %6503
  %8334 = fmul fast float %8332, %6504
  %8335 = fmul fast float %8332, %6505
  %8336 = fadd fast float %8333, %8321
  %8337 = fadd fast float %8334, %8322
  %8338 = fadd fast float %8335, %8323
  %8339 = fmul fast float %8336, %8077
  %8340 = fmul fast float %8337, %8077
  %8341 = fmul fast float %8338, %8077
  %8342 = fmul fast float %8077, %8060
  %8343 = fmul fast float %8342, %8202
  %8344 = fmul fast float %8077, %8061
  %8345 = fmul fast float %8344, %8202
  %8346 = fmul fast float %8077, %8062
  %8347 = fmul fast float %8346, %8202
  %8348 = fadd fast float %8339, %8316
  %8349 = fadd fast float %8340, %8318
  %8350 = fadd fast float %8341, %8320
  %8351 = fmul fast float %8348, %8060
  %8352 = fmul fast float %8349, %8061
  %8353 = fmul fast float %8350, %8062
  %8354 = fadd fast float %8343, %6592
  %8355 = fmul fast float %8354, %4757
  %8356 = fadd fast float %8345, %6594
  %8357 = fmul fast float %8356, %4757
  %8358 = fadd fast float %8347, %6596
  %8359 = fmul fast float %8358, %4757
  %8360 = fadd fast float %8351, %6556
  %8361 = fmul fast float %8360, %4757
  %8362 = fadd fast float %8352, %6559
  %8363 = fmul fast float %8362, %4757
  %8364 = fadd fast float %8353, %6562
  %8365 = fmul fast float %8364, %4757
  br label %8366

; <label>:8366                                    ; preds = %8264, %8053, %6486
  %8367 = phi float [ %6557, %6486 ], [ %6557, %8053 ], [ %8361, %8264 ]
  %8368 = phi float [ %6560, %6486 ], [ %6560, %8053 ], [ %8363, %8264 ]
  %8369 = phi float [ %6563, %6486 ], [ %6563, %8053 ], [ %8365, %8264 ]
  %8370 = phi float [ %6593, %6486 ], [ %6593, %8053 ], [ %8355, %8264 ]
  %8371 = phi float [ %6595, %6486 ], [ %6595, %8053 ], [ %8357, %8264 ]
  %8372 = phi float [ %6597, %6486 ], [ %6597, %8053 ], [ %8359, %8264 ]
  %8373 = fmul fast float %4757, %6532
  %8374 = fsub fast float -0.000000e+00, %8373
  %8375 = fmul fast float %4757, %6533
  %8376 = fsub fast float -0.000000e+00, %8375
  %8377 = fmul fast float %4757, %6534
  %8378 = fsub fast float -0.000000e+00, %8377
  %8379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8380 = extractvalue %dx.types.CBufRet.f32 %8379, 0
  %8381 = fmul fast float %8380, %6538
  %8382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8383 = extractvalue %dx.types.CBufRet.f32 %8382, 3
  %8384 = fsub fast float 1.000000e+00, %4735
  %8385 = call float @dx.op.unary.f32(i32 7, float %8384)  ; Saturate(value)
  %8386 = fadd fast float %8372, %4734
  %8387 = fmul fast float %8386, %4735
  %8388 = fmul fast float %8385, %8383
  %8389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4736, i32 undef)  ; BufferLoad(srv,index,wot)
  %8390 = extractvalue %dx.types.ResRet.i32 %8389, 3
  %8391 = bitcast i32 %8390 to float
  %8392 = fsub fast float %8374, %8391
  %8393 = fsub fast float %8376, %8391
  %8394 = fsub fast float %8378, %8391
  %8395 = fmul fast float %8392, %235
  %8396 = fmul fast float %8393, %235
  %8397 = fmul fast float %8394, %235
  %8398 = fadd fast float %8395, %8391
  %8399 = fadd fast float %8396, %8391
  %8400 = fadd fast float %8397, %8391
  %8401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8402 = extractvalue %dx.types.CBufRet.f32 %8401, 3
  %8403 = fmul fast float %8370, %5692
  %8404 = fmul fast float %8371, %5693
  %8405 = fmul fast float %8372, %5694
  %8406 = fcmp fast ogt float %96, %255
  %8407 = and i1 %8406, %4825
  %8408 = or i1 %4904, %8407
  %8409 = icmp eq i32 %4824, 2
  %8410 = fcmp fast ole float %96, %255
  %8411 = and i1 %8410, %8409
  %8412 = or i1 %8411, %8408
  br i1 %8407, label %8413, label %8670

; <label>:8413                                    ; preds = %8366
  %8414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8415 = extractvalue %dx.types.CBufRet.f32 %8414, 2
  %8416 = extractvalue %dx.types.CBufRet.f32 %8414, 3
  %8417 = fmul fast float %8415, %109
  %8418 = fmul fast float %8416, %110
  %8419 = call float @dx.op.unary.f32(i32 7, float %8417)  ; Saturate(value)
  %8420 = call float @dx.op.unary.f32(i32 7, float %8418)  ; Saturate(value)
  %8421 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %8419, float %8420, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8422 = extractvalue %dx.types.ResRet.f32 %8421, 0
  %8423 = extractvalue %dx.types.ResRet.f32 %8421, 1
  %8424 = extractvalue %dx.types.ResRet.f32 %8421, 2
  %8425 = extractvalue %dx.types.ResRet.f32 %8421, 3
  %8426 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %8419, float %8420, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8427 = extractvalue %dx.types.ResRet.f32 %8426, 0
  %8428 = extractvalue %dx.types.ResRet.f32 %8426, 1
  %8429 = extractvalue %dx.types.ResRet.f32 %8426, 2
  %8430 = extractvalue %dx.types.ResRet.f32 %8426, 3
  %8431 = call float @dx.op.binary.f32(i32 35, float %8423, float %8424)  ; FMax(a,b)
  %8432 = call float @dx.op.binary.f32(i32 35, float %8422, float %8431)  ; FMax(a,b)
  %8433 = call float @dx.op.binary.f32(i32 35, float %8432, float %8425)  ; FMax(a,b)
  %8434 = call float @dx.op.binary.f32(i32 36, float %8428, float %8429)  ; FMin(a,b)
  %8435 = call float @dx.op.binary.f32(i32 36, float %8427, float %8434)  ; FMin(a,b)
  %8436 = call float @dx.op.binary.f32(i32 36, float %8435, float %8430)  ; FMin(a,b)
  %8437 = fmul fast float %8433, 2.550000e+02
  %8438 = fadd fast float %8437, 0x3F70101020000000
  %8439 = fptoui float %8438 to i32
  %8440 = fmul fast float %8436, 2.550000e+02
  %8441 = fadd fast float %8440, 0x3F70101020000000
  %8442 = fptoui float %8441 to i32
  %8443 = icmp ult i32 %8439, %8442
  br i1 %8443, label %8444, label %8612

; <label>:8444                                    ; preds = %8413
  %8445 = fcmp fast ogt float %95, 9.843750e-01
  %8446 = fadd fast float %96, -4.000000e+00
  %8447 = select i1 %8445, float -4.000000e+00, float %8446
  %8448 = call float @dx.op.binary.f32(i32 35, float %8447, float 0.000000e+00)  ; FMax(a,b)
  %8449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8450 = extractvalue %dx.types.CBufRet.f32 %8449, 0
  %8451 = fadd fast float %8450, %8448
  %8452 = extractvalue %dx.types.CBufRet.f32 %8449, 2
  %8453 = fmul fast float %8451, %8452
  %8454 = call float @dx.op.unary.f32(i32 23, float %8453)  ; Log(value)
  %8455 = extractvalue %dx.types.CBufRet.f32 %8449, 3
  %8456 = fmul fast float %8455, %8454
  %8457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8458 = extractvalue %dx.types.CBufRet.f32 %8457, 2
  %8459 = fmul fast float %8456, %8458
  %8460 = call float @dx.op.unary.f32(i32 7, float %8459)  ; Saturate(value)
  %8461 = uitofp i32 %8439 to float
  %8462 = uitofp i32 %8442 to float
  %8463 = fadd fast float %8461, 5.000000e-01
  %8464 = fadd fast float %8462, 5.000000e-01
  %8465 = fmul fast float %8458, %8463
  %8466 = fmul fast float %8458, %8464
  %8467 = fadd fast float %8465, 0x3F0FFB4800000000
  %8468 = fadd fast float %8466, 0xBF0FFB4800000000
  %8469 = call float @dx.op.binary.f32(i32 35, float %8460, float %8467)  ; FMax(a,b)
  %8470 = call float @dx.op.binary.f32(i32 36, float %8469, float %8468)  ; FMin(a,b)
  %8471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8472 = extractvalue %dx.types.CBufRet.f32 %8471, 1
  %8473 = extractvalue %dx.types.CBufRet.f32 %8471, 2
  %8474 = extractvalue %dx.types.CBufRet.f32 %8471, 0
  %8475 = fmul fast float %8472, %8470
  %8476 = fadd fast float %8474, %8475
  %8477 = fadd fast float %8474, %8473
  %8478 = fsub fast float %8472, %8473
  %8479 = fadd fast float %8478, %8474
  %8480 = call float @dx.op.binary.f32(i32 35, float %8476, float %8477)  ; FMax(a,b)
  %8481 = call float @dx.op.binary.f32(i32 36, float %8480, float %8479)  ; FMin(a,b)
  %8482 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %41, float %8419, float %8420, float %8481, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8483 = extractvalue %dx.types.ResRet.f32 %8482, 0
  %8484 = extractvalue %dx.types.ResRet.f32 %8482, 1
  %8485 = extractvalue %dx.types.ResRet.f32 %8482, 2
  %8486 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8487 = extractvalue %dx.types.CBufRet.i32 %8486, 0
  %8488 = extractvalue %dx.types.CBufRet.i32 %8486, 1
  %8489 = uitofp i32 %8487 to float
  %8490 = uitofp i32 %8488 to float
  %8491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8492 = extractvalue %dx.types.CBufRet.f32 %8491, 0
  %8493 = extractvalue %dx.types.CBufRet.f32 %8491, 1
  %8494 = fmul fast float %8489, %8419
  %8495 = fmul fast float %8490, %8420
  %8496 = fadd fast float %8494, -5.000000e-01
  %8497 = fadd fast float %8495, -5.000000e-01
  %8498 = call float @dx.op.unary.f32(i32 22, float %8496)  ; Frc(value)
  %8499 = call float @dx.op.unary.f32(i32 22, float %8497)  ; Frc(value)
  %8500 = fmul fast float %8498, %8498
  %8501 = fmul fast float %8500, %8498
  %8502 = fsub fast float 3.000000e+00, %8498
  %8503 = fmul fast float %8500, %8502
  %8504 = fmul fast float %8498, 3.000000e+00
  %8505 = fmul fast float %8501, 3.000000e+00
  %8506 = fmul fast float %8500, 6.000000e+00
  %8507 = fsub fast float %8505, %8506
  %8508 = fadd fast float %8507, 4.000000e+00
  %8509 = fmul fast float %8508, 0x3FC5555560000000
  %8510 = fmul fast float %8501, -3.000000e+00
  %8511 = fadd fast float %8500, %8498
  %8512 = fmul fast float %8511, 3.000000e+00
  %8513 = fadd fast float %8510, 1.000000e+00
  %8514 = fadd fast float %8513, %8512
  %8515 = fmul fast float %8501, 0x3FC5555560000000
  %8516 = fmul fast float %8499, %8499
  %8517 = fmul fast float %8516, %8499
  %8518 = fsub fast float 3.000000e+00, %8499
  %8519 = fmul fast float %8516, %8518
  %8520 = fmul fast float %8499, 3.000000e+00
  %8521 = fmul fast float %8517, 3.000000e+00
  %8522 = fmul fast float %8516, 6.000000e+00
  %8523 = fsub fast float %8521, %8522
  %8524 = fadd fast float %8523, 4.000000e+00
  %8525 = fmul fast float %8524, 0x3FC5555560000000
  %8526 = fmul fast float %8517, -3.000000e+00
  %8527 = fadd fast float %8516, %8499
  %8528 = fmul fast float %8527, 3.000000e+00
  %8529 = fadd fast float %8526, 1.000000e+00
  %8530 = fadd fast float %8529, %8528
  %8531 = fmul fast float %8517, 0x3FC5555560000000
  %8532 = fadd fast float %8498, 1.000000e+00
  %8533 = fsub fast float 1.000000e+00, %8504
  %8534 = fadd fast float %8533, %8503
  %8535 = fadd fast float %8534, %8508
  %8536 = fmul fast float %8535, 0x3FC5555560000000
  %8537 = fdiv fast float %8509, %8536
  %8538 = fsub fast float %8532, %8537
  %8539 = fsub fast float 1.000000e+00, %8498
  %8540 = fadd fast float %8514, %8501
  %8541 = fmul fast float %8540, 0x3FC5555560000000
  %8542 = fdiv fast float %8515, %8541
  %8543 = fadd fast float %8539, %8542
  %8544 = fadd fast float %8499, 1.000000e+00
  %8545 = fsub fast float 1.000000e+00, %8520
  %8546 = fadd fast float %8545, %8519
  %8547 = fadd fast float %8546, %8524
  %8548 = fmul fast float %8547, 0x3FC5555560000000
  %8549 = fdiv fast float %8525, %8548
  %8550 = fsub fast float %8544, %8549
  %8551 = fsub fast float 1.000000e+00, %8499
  %8552 = fadd fast float %8530, %8517
  %8553 = fmul fast float %8552, 0x3FC5555560000000
  %8554 = fdiv fast float %8531, %8553
  %8555 = fadd fast float %8554, %8551
  %8556 = fmul fast float %8538, %8492
  %8557 = fsub fast float %8419, %8556
  %8558 = fmul fast float %8543, %8492
  %8559 = fadd fast float %8558, %8419
  %8560 = fmul fast float %8555, %8493
  %8561 = fadd fast float %8560, %8420
  %8562 = fmul fast float %8550, %8493
  %8563 = fsub fast float %8420, %8562
  %8564 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8557, float %8563, float %8481, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8565 = extractvalue %dx.types.ResRet.f32 %8564, 0
  %8566 = extractvalue %dx.types.ResRet.f32 %8564, 1
  %8567 = extractvalue %dx.types.ResRet.f32 %8564, 2
  %8568 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8559, float %8563, float %8481, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8569 = extractvalue %dx.types.ResRet.f32 %8568, 0
  %8570 = extractvalue %dx.types.ResRet.f32 %8568, 1
  %8571 = extractvalue %dx.types.ResRet.f32 %8568, 2
  %8572 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8557, float %8561, float %8481, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8573 = extractvalue %dx.types.ResRet.f32 %8572, 0
  %8574 = extractvalue %dx.types.ResRet.f32 %8572, 1
  %8575 = extractvalue %dx.types.ResRet.f32 %8572, 2
  %8576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8559, float %8561, float %8481, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8577 = extractvalue %dx.types.ResRet.f32 %8576, 0
  %8578 = extractvalue %dx.types.ResRet.f32 %8576, 1
  %8579 = extractvalue %dx.types.ResRet.f32 %8576, 2
  %8580 = fsub fast float %8573, %8565
  %8581 = fsub fast float %8574, %8566
  %8582 = fsub fast float %8575, %8567
  %8583 = fmul fast float %8580, %8553
  %8584 = fmul fast float %8581, %8553
  %8585 = fmul fast float %8582, %8553
  %8586 = fadd fast float %8583, %8565
  %8587 = fadd fast float %8584, %8566
  %8588 = fadd fast float %8585, %8567
  %8589 = fsub fast float %8577, %8569
  %8590 = fsub fast float %8578, %8570
  %8591 = fsub fast float %8579, %8571
  %8592 = fmul fast float %8589, %8553
  %8593 = fmul fast float %8590, %8553
  %8594 = fmul fast float %8591, %8553
  %8595 = fsub fast float %8569, %8586
  %8596 = fadd fast float %8595, %8592
  %8597 = fsub fast float %8570, %8587
  %8598 = fadd fast float %8597, %8593
  %8599 = fsub fast float %8571, %8588
  %8600 = fadd fast float %8599, %8594
  %8601 = fmul fast float %8596, %8541
  %8602 = fmul fast float %8598, %8541
  %8603 = fmul fast float %8600, %8541
  %8604 = fadd fast float %8601, %8586
  %8605 = fadd fast float %8602, %8587
  %8606 = fadd fast float %8603, %8588
  %8607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8608 = extractvalue %dx.types.CBufRet.f32 %8607, 1
  %8609 = fmul fast float %8604, %8608
  %8610 = fmul fast float %8605, %8608
  %8611 = fmul fast float %8606, %8608
  br label %8612

; <label>:8612                                    ; preds = %8444, %8413
  %8613 = phi float [ %8483, %8444 ], [ 1.000000e+00, %8413 ]
  %8614 = phi float [ %8484, %8444 ], [ 1.000000e+00, %8413 ]
  %8615 = phi float [ %8485, %8444 ], [ 1.000000e+00, %8413 ]
  %8616 = phi float [ %8609, %8444 ], [ 0.000000e+00, %8413 ]
  %8617 = phi float [ %8610, %8444 ], [ 0.000000e+00, %8413 ]
  %8618 = phi float [ %8611, %8444 ], [ 0.000000e+00, %8413 ]
  %8619 = fmul fast float %8616, %8398
  %8620 = fmul fast float %8617, %8399
  %8621 = fmul fast float %8618, %8400
  %8622 = call float @dx.op.dot3.f32(i32 55, float %8613, float %8614, float %8615, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8623 = call float @dx.op.dot3.f32(i32 55, float %8619, float %8620, float %8621, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8624 = select i1 %294, float %8622, float %8613
  %8625 = select i1 %294, float %8622, float %8614
  %8626 = select i1 %294, float 1.000000e+00, float %8615
  %8627 = select i1 %294, float %8623, float %8619
  %8628 = select i1 %294, float 0.000000e+00, float %8620
  %8629 = select i1 %294, float 0.000000e+00, float %8621
  %8630 = fmul fast float %8624, %8403
  %8631 = fmul fast float %8625, %8404
  %8632 = fmul fast float %8626, %8405
  %8633 = fadd fast float %8630, %8627
  %8634 = fadd fast float %8631, %8628
  %8635 = fadd fast float %8629, %8632
  %8636 = fmul fast float %8624, %8367
  %8637 = fmul fast float %8625, %8368
  %8638 = fmul fast float %8626, %8369
  %8639 = fmul fast float %137, %8415
  %8640 = fmul fast float %139, %8416
  %8641 = fsub fast float 1.000000e+00, %8639
  %8642 = fsub fast float 1.000000e+00, %8640
  %8643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8644 = extractvalue %dx.types.CBufRet.f32 %8643, 0
  %8645 = extractvalue %dx.types.CBufRet.f32 %8643, 1
  %8646 = extractvalue %dx.types.CBufRet.f32 %8643, 2
  %8647 = fmul fast float %8641, %8644
  %8648 = fmul fast float %8641, %8645
  %8649 = fmul fast float %8641, %8646
  %8650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8651 = extractvalue %dx.types.CBufRet.f32 %8650, 0
  %8652 = extractvalue %dx.types.CBufRet.f32 %8650, 1
  %8653 = extractvalue %dx.types.CBufRet.f32 %8650, 2
  %8654 = fmul fast float %8642, %8651
  %8655 = fmul fast float %8642, %8652
  %8656 = fmul fast float %8642, %8653
  %8657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8658 = extractvalue %dx.types.CBufRet.f32 %8657, 0
  %8659 = extractvalue %dx.types.CBufRet.f32 %8657, 1
  %8660 = extractvalue %dx.types.CBufRet.f32 %8657, 2
  %8661 = fadd fast float %8654, %8658
  %8662 = fadd fast float %8661, %8647
  %8663 = fadd fast float %8655, %8659
  %8664 = fadd fast float %8663, %8648
  %8665 = fadd fast float %8656, %8660
  %8666 = fadd fast float %8665, %8649
  %8667 = fmul fast float %8662, %255
  %8668 = fmul fast float %8664, %255
  %8669 = fmul fast float %8666, %255
  br label %8670

; <label>:8670                                    ; preds = %8612, %8366
  %8671 = phi float [ %8667, %8612 ], [ %188, %8366 ]
  %8672 = phi float [ %8668, %8612 ], [ %189, %8366 ]
  %8673 = phi float [ %8669, %8612 ], [ %190, %8366 ]
  %8674 = phi float [ %255, %8612 ], [ %96, %8366 ]
  %8675 = phi float [ %8633, %8612 ], [ %8403, %8366 ]
  %8676 = phi float [ %8634, %8612 ], [ %8404, %8366 ]
  %8677 = phi float [ %8635, %8612 ], [ %8405, %8366 ]
  %8678 = phi float [ %8636, %8612 ], [ %8367, %8366 ]
  %8679 = phi float [ %8637, %8612 ], [ %8368, %8366 ]
  %8680 = phi float [ %8638, %8612 ], [ %8369, %8366 ]
  %8681 = phi float [ %8613, %8612 ], [ 1.000000e+00, %8366 ]
  br i1 %8412, label %9836, label %8682

; <label>:8682                                    ; preds = %8670
  %8683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8684 = extractvalue %dx.types.CBufRet.f32 %8683, 0
  %8685 = extractvalue %dx.types.CBufRet.f32 %8683, 1
  %8686 = extractvalue %dx.types.CBufRet.f32 %8683, 2
  %8687 = extractvalue %dx.types.CBufRet.f32 %8683, 3
  %8688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8689 = extractvalue %dx.types.CBufRet.f32 %8688, 0
  %8690 = extractvalue %dx.types.CBufRet.f32 %8688, 1
  %8691 = extractvalue %dx.types.CBufRet.f32 %8688, 2
  %8692 = extractvalue %dx.types.CBufRet.f32 %8688, 3
  %8693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8694 = extractvalue %dx.types.CBufRet.f32 %8693, 0
  %8695 = extractvalue %dx.types.CBufRet.f32 %8693, 1
  %8696 = extractvalue %dx.types.CBufRet.f32 %8693, 2
  %8697 = extractvalue %dx.types.CBufRet.f32 %8693, 3
  %8698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8699 = extractvalue %dx.types.CBufRet.f32 %8698, 0
  %8700 = extractvalue %dx.types.CBufRet.f32 %8698, 1
  %8701 = extractvalue %dx.types.CBufRet.f32 %8698, 2
  %8702 = extractvalue %dx.types.CBufRet.f32 %8698, 3
  %8703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8704 = extractvalue %dx.types.CBufRet.f32 %8703, 3
  %8705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8706 = extractvalue %dx.types.CBufRet.f32 %8705, 3
  %8707 = extractvalue %dx.types.CBufRet.f32 %8705, 0
  %8708 = extractvalue %dx.types.CBufRet.f32 %8705, 1
  %8709 = extractvalue %dx.types.CBufRet.f32 %8705, 2
  %8710 = fcmp fast olt float %8709, -5.000000e-01
  %8711 = call float @dx.op.dot3.f32(i32 55, float %8671, float %8672, float %8673, float %8671, float %8672, float %8673)  ; Dot3(ax,ay,az,bx,by,bz)
  %8712 = call float @dx.op.unary.f32(i32 25, float %8711)  ; Rsqrt(value)
  %8713 = fmul fast float %8712, %8711
  %8714 = fmul fast float %8712, %8671
  %8715 = fmul fast float %8712, %8672
  %8716 = fmul fast float %8712, %8673
  %8717 = fadd fast float %8713, %8687
  %8718 = call float @dx.op.dot3.f32(i32 55, float %8714, float %8715, float %8716, float %8684, float %8685, float %8686)  ; Dot3(ax,ay,az,bx,by,bz)
  %8719 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8720 = extractvalue %dx.types.CBufRet.i32 %8719, 1
  %8721 = and i32 %8720, 1
  %8722 = icmp ne i32 %8721, 0
  %8723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8724 = extractvalue %dx.types.CBufRet.f32 %8723, 2
  %8725 = fcmp fast ogt float %8724, 0.000000e+00
  %8726 = and i1 %8722, %8725
  br i1 %8726, label %8727, label %9133, !dx.controlflow.hints !125

; <label>:8727                                    ; preds = %8682
  %8728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8729 = extractvalue %dx.types.CBufRet.f32 %8728, 3
  %8730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8731 = extractvalue %dx.types.CBufRet.f32 %8730, 2
  %8732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8733 = extractvalue %dx.types.CBufRet.f32 %8732, 2
  %8734 = fsub fast float %8731, %8733
  %8735 = and i32 %8720, 2
  %8736 = extractvalue %dx.types.CBufRet.i32 %8719, 0
  %8737 = call i32 @dx.op.binary.i32(i32 40, i32 %8736, i32 3)  ; UMin(a,b)
  %8738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8739 = extractvalue %dx.types.CBufRet.f32 %8738, 0
  %8740 = extractvalue %dx.types.CBufRet.f32 %8738, 1
  %8741 = extractvalue %dx.types.CBufRet.f32 %8732, 0
  %8742 = extractvalue %dx.types.CBufRet.f32 %8732, 1
  %8743 = fsub fast float %8739, %8741
  %8744 = fsub fast float %8740, %8742
  %8745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8746 = extractvalue %dx.types.CBufRet.f32 %8745, 0
  %8747 = fcmp fast ogt float %8746, 0.000000e+00
  %8748 = fsub fast float -0.000000e+00, %8743
  %8749 = fsub fast float -0.000000e+00, %8744
  %8750 = call float @dx.op.dot2.f32(i32 54, float %8714, float %8715, float %8714, float %8715)  ; Dot2(ax,ay,bx,by)
  %8751 = call float @dx.op.dot2.f32(i32 54, float %8714, float %8715, float %8748, float %8749)  ; Dot2(ax,ay,bx,by)
  %8752 = fmul fast float %8751, 2.000000e+00
  %8753 = call float @dx.op.dot2.f32(i32 54, float %8748, float %8749, float %8748, float %8749)  ; Dot2(ax,ay,bx,by)
  %8754 = fmul fast float %8746, %8746
  %8755 = fsub fast float %8753, %8754
  %8756 = fmul fast float %8752, %8752
  %8757 = fmul fast float %8750, 4.000000e+00
  %8758 = fmul fast float %8757, %8755
  %8759 = fsub fast float %8756, %8758
  %8760 = fcmp fast ogt float %8759, 0.000000e+00
  br i1 %8760, label %8761, label %8776

; <label>:8761                                    ; preds = %8727
  %8762 = fcmp fast ogt float %8752, 0.000000e+00
  %8763 = call float @dx.op.unary.f32(i32 24, float %8759)  ; Sqrt(value)
  %8764 = fsub fast float -0.000000e+00, %8763
  %8765 = select i1 %8762, float %8763, float %8764
  %8766 = fadd fast float %8765, %8752
  %8767 = fmul float %8766, -5.000000e-01
  %8768 = fdiv fast float %8767, %8750
  %8769 = call float @dx.op.binary.f32(i32 35, float %8768, float 0.000000e+00)  ; FMax(a,b)
  %8770 = call float @dx.op.binary.f32(i32 36, float %8713, float %8769)  ; FMin(a,b)
  %8771 = fdiv fast float %8755, %8767
  %8772 = call float @dx.op.binary.f32(i32 35, float %8771, float 0.000000e+00)  ; FMax(a,b)
  %8773 = call float @dx.op.binary.f32(i32 36, float %8713, float %8772)  ; FMin(a,b)
  %8774 = call float @dx.op.binary.f32(i32 36, float %8770, float %8773)  ; FMin(a,b)
  %8775 = call float @dx.op.binary.f32(i32 35, float %8770, float %8773)  ; FMax(a,b)
  br label %8776

; <label>:8776                                    ; preds = %8761, %8727
  %8777 = phi float [ %8775, %8761 ], [ -1.000000e+00, %8727 ]
  %8778 = phi float [ %8774, %8761 ], [ -1.000000e+00, %8727 ]
  %8779 = phi i1 [ true, %8761 ], [ false, %8727 ]
  %8780 = and i1 %8747, %8779
  br i1 %8780, label %8781, label %8783

; <label>:8781                                    ; preds = %8776
  %8782 = fcmp fast oeq float %8778, %8777
  br i1 %8782, label %9086, label %8784

; <label>:8783                                    ; preds = %8776
  br i1 %8747, label %9086, label %8784

; <label>:8784                                    ; preds = %8783, %8781
  %8785 = phi float [ %8713, %8783 ], [ %8777, %8781 ]
  %8786 = phi float [ 0.000000e+00, %8783 ], [ %8778, %8781 ]
  %8787 = icmp ne i32 %8735, 0
  %8788 = fmul fast float %8785, %8716
  %8789 = fadd fast float %8788, %8729
  %8790 = fmul fast float %8789, %8785
  %8791 = select i1 %8787, float 0.000000e+00, float %8790
  %8792 = fcmp fast oeq float %8716, 0.000000e+00
  %8793 = fdiv fast float %8734, %8716
  %8794 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8793)  ; FMax(a,b)
  %8795 = select i1 %8792, float %8785, float %8794
  %8796 = call float @dx.op.binary.f32(i32 36, float %8785, float %8795)  ; FMin(a,b)
  %8797 = fcmp fast ogt float %8716, 0.000000e+00
  %8798 = fcmp fast olt float %8734, 0.000000e+00
  br i1 %8797, label %8799, label %8856

; <label>:8799                                    ; preds = %8784
  %8800 = icmp eq i32 %8735, 0
  br i1 %8798, label %8801, label %8845

; <label>:8801                                    ; preds = %8799
  %8802 = select i1 %8800, float %8785, float 0.000000e+00
  %8803 = fsub fast float -0.000000e+00, %8802
  %8804 = call float @dx.op.unary.f32(i32 6, float %8803)  ; FAbs(value)
  %8805 = fmul fast float %8802, %8716
  %8806 = fadd fast float %8805, %8729
  %8807 = fmul fast float %8804, %8806
  %8808 = fsub fast float %8791, %8807
  %8809 = fsub fast float %8785, %8804
  %8810 = select i1 %8800, float %8809, float 0.000000e+00
  %8811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8812 = extractvalue %dx.types.CBufRet.f32 %8811, 0
  %8813 = extractvalue %dx.types.CBufRet.f32 %8811, 1
  %8814 = extractvalue %dx.types.CBufRet.f32 %8811, 2
  %8815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8816 = extractvalue %dx.types.CBufRet.f32 %8815, 0
  %8817 = extractvalue %dx.types.CBufRet.f32 %8815, 1
  %8818 = extractvalue %dx.types.CBufRet.f32 %8815, 2
  %8819 = extractvalue %dx.types.CBufRet.f32 %8815, 3
  %8820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8821 = extractvalue %dx.types.CBufRet.f32 %8820, 3
  %8822 = call float @dx.op.binary.f32(i32 36, float %8808, float %8821)  ; FMin(a,b)
  %8823 = fmul fast float %8819, %8810
  %8824 = call float @dx.op.unary.f32(i32 7, float %8823)  ; Saturate(value)
  %8825 = fsub fast float %8816, %8812
  %8826 = fsub fast float %8817, %8813
  %8827 = fsub fast float %8818, %8814
  %8828 = fmul fast float %8824, %8825
  %8829 = fmul fast float %8824, %8826
  %8830 = fmul fast float %8824, %8827
  %8831 = fadd fast float %8828, %8812
  %8832 = fadd fast float %8829, %8813
  %8833 = fadd fast float %8830, %8814
  %8834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8835 = extractvalue %dx.types.CBufRet.f32 %8834, 0
  %8836 = extractvalue %dx.types.CBufRet.f32 %8834, 1
  %8837 = fadd fast float %8836, %8835
  %8838 = call float @dx.op.unary.f32(i32 7, float %8837)  ; Saturate(value)
  %8839 = extractvalue %dx.types.CBufRet.f32 %8834, 2
  %8840 = extractvalue %dx.types.CBufRet.f32 %8834, 3
  %8841 = fadd fast float %8840, %8839
  %8842 = call float @dx.op.unary.f32(i32 7, float %8841)  ; Saturate(value)
  %8843 = fmul fast float %8838, %8822
  %8844 = fmul fast float %8843, %8842
  br label %9086

; <label>:8845                                    ; preds = %8799
  br i1 %8800, label %8846, label %8867

; <label>:8846                                    ; preds = %8845
  %8847 = call float @dx.op.binary.f32(i32 36, float %8796, float %8786)  ; FMin(a,b)
  %8848 = fsub fast float %8796, %8847
  %8849 = fsub fast float %8848, %8785
  %8850 = call float @dx.op.unary.f32(i32 6, float %8849)  ; FAbs(value)
  %8851 = fadd fast float %8848, %8785
  %8852 = fmul fast float %8851, %8716
  %8853 = fadd fast float %8852, %8729
  %8854 = fmul fast float %8853, %8850
  %8855 = fsub fast float %8791, %8854
  br label %8867

; <label>:8856                                    ; preds = %8784
  br i1 %8798, label %8857, label %8867

; <label>:8857                                    ; preds = %8856
  %8858 = call float @dx.op.binary.f32(i32 35, float %8786, float %8796)  ; FMax(a,b)
  %8859 = icmp eq i32 %8735, 0
  %8860 = select i1 %8859, float %8796, float 0.000000e+00
  %8861 = fsub fast float -0.000000e+00, %8860
  %8862 = call float @dx.op.unary.f32(i32 6, float %8861)  ; FAbs(value)
  %8863 = fmul fast float %8860, %8716
  %8864 = fadd fast float %8863, %8729
  %8865 = fmul fast float %8862, %8864
  %8866 = fsub fast float %8791, %8865
  br label %8867

; <label>:8867                                    ; preds = %8857, %8856, %8846, %8845
  %8868 = phi float [ %8786, %8845 ], [ %8786, %8846 ], [ %8858, %8857 ], [ %8786, %8856 ]
  %8869 = phi float [ 0.000000e+00, %8845 ], [ %8850, %8846 ], [ %8862, %8857 ], [ 0.000000e+00, %8856 ]
  %8870 = phi float [ %8791, %8845 ], [ %8855, %8846 ], [ %8866, %8857 ], [ %8791, %8856 ]
  %8871 = phi float [ %8796, %8845 ], [ %8796, %8846 ], [ %8785, %8857 ], [ %8785, %8856 ]
  %8872 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 0
  store float -1.000000e+00, float* %8872, align 4, !tbaa !114, !noalias !126
  %8873 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 1
  store float -1.000000e+00, float* %8873, align 4, !tbaa !114, !noalias !126
  %8874 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 2
  store float -1.000000e+00, float* %8874, align 4, !tbaa !114, !noalias !126
  %8875 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 0
  store float -1.000000e+00, float* %8875, align 4, !tbaa !114, !noalias !126
  %8876 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 1
  store float -1.000000e+00, float* %8876, align 4, !tbaa !114, !noalias !126
  %8877 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 2
  store float -1.000000e+00, float* %8877, align 4, !tbaa !114, !noalias !126
  %8878 = icmp sgt i32 %8737, 0
  br i1 %8878, label %8879, label %8940

; <label>:8879                                    ; preds = %8867
  br label %8880

; <label>:8880                                    ; preds = %8929, %8879
  %8881 = phi i32 [ %8930, %8929 ], [ 0, %8879 ]
  %8882 = phi i32 [ %8931, %8929 ], [ 0, %8879 ]
  %8883 = add nuw i32 %8882, 171
  %8884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 %8883)  ; CBufferLoadLegacy(handle,regIndex)
  %8885 = extractvalue %dx.types.CBufRet.f32 %8884, 0
  %8886 = extractvalue %dx.types.CBufRet.f32 %8884, 1
  %8887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8888 = extractvalue %dx.types.CBufRet.f32 %8887, 0
  %8889 = extractvalue %dx.types.CBufRet.f32 %8887, 1
  %8890 = fsub fast float %8885, %8888
  %8891 = fsub fast float %8886, %8889
  %8892 = extractvalue %dx.types.CBufRet.f32 %8884, 2
  %8893 = fsub fast float -0.000000e+00, %8890
  %8894 = fsub fast float -0.000000e+00, %8891
  %8895 = call float @dx.op.dot2.f32(i32 54, float %8714, float %8715, float %8893, float %8894)  ; Dot2(ax,ay,bx,by)
  %8896 = fmul fast float %8895, 2.000000e+00
  %8897 = call float @dx.op.dot2.f32(i32 54, float %8893, float %8894, float %8893, float %8894)  ; Dot2(ax,ay,bx,by)
  %8898 = fmul fast float %8892, %8892
  %8899 = fsub fast float %8897, %8898
  %8900 = fmul fast float %8896, %8896
  %8901 = fmul fast float %8757, %8899
  %8902 = fsub fast float %8900, %8901
  %8903 = fcmp fast ogt float %8902, 0.000000e+00
  br i1 %8903, label %8904, label %8919

; <label>:8904                                    ; preds = %8880
  %8905 = fcmp fast ogt float %8896, 0.000000e+00
  %8906 = call float @dx.op.unary.f32(i32 24, float %8902)  ; Sqrt(value)
  %8907 = fsub fast float -0.000000e+00, %8906
  %8908 = select i1 %8905, float %8906, float %8907
  %8909 = fadd fast float %8908, %8896
  %8910 = fmul float %8909, -5.000000e-01
  %8911 = fdiv fast float %8910, %8750
  %8912 = call float @dx.op.binary.f32(i32 35, float %8911, float 0.000000e+00)  ; FMax(a,b)
  %8913 = call float @dx.op.binary.f32(i32 36, float %8785, float %8912)  ; FMin(a,b)
  %8914 = fdiv fast float %8899, %8910
  %8915 = call float @dx.op.binary.f32(i32 35, float %8914, float 0.000000e+00)  ; FMax(a,b)
  %8916 = call float @dx.op.binary.f32(i32 36, float %8785, float %8915)  ; FMin(a,b)
  %8917 = call float @dx.op.binary.f32(i32 36, float %8913, float %8916)  ; FMin(a,b)
  %8918 = call float @dx.op.binary.f32(i32 35, float %8913, float %8916)  ; FMax(a,b)
  br label %8919

; <label>:8919                                    ; preds = %8904, %8880
  %8920 = phi float [ %8918, %8904 ], [ -1.000000e+00, %8880 ]
  %8921 = phi float [ %8917, %8904 ], [ -1.000000e+00, %8880 ]
  %8922 = phi i1 [ true, %8904 ], [ false, %8880 ]
  br i1 %8922, label %8923, label %8929

; <label>:8923                                    ; preds = %8919
  %8924 = call float @dx.op.binary.f32(i32 35, float %8868, float %8921)  ; FMax(a,b)
  %8925 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %8882
  store float %8924, float* %8925, align 4, !tbaa !114, !noalias !126
  %8926 = call float @dx.op.binary.f32(i32 35, float %8868, float %8920)  ; FMax(a,b)
  %8927 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %8882
  store float %8926, float* %8927, align 4, !tbaa !114, !noalias !126
  %8928 = add nsw i32 %8881, 1
  br label %8929

; <label>:8929                                    ; preds = %8923, %8919
  %8930 = phi i32 [ %8928, %8923 ], [ %8881, %8919 ]
  %8931 = add nuw nsw i32 %8882, 1
  %8932 = icmp eq i32 %8931, %8737
  br i1 %8932, label %8933, label %8880

; <label>:8933                                    ; preds = %8929
  %8934 = load float, float* %8874, align 4, !tbaa !114, !alias.scope !142, !noalias !145
  %8935 = load float, float* %8873, align 4, !tbaa !114, !alias.scope !148, !noalias !149
  %8936 = load float, float* %8872, align 4, !tbaa !114, !alias.scope !150, !noalias !151
  %8937 = load float, float* %8877, align 4, !tbaa !114, !alias.scope !152, !noalias !155
  %8938 = load float, float* %8876, align 4, !tbaa !114, !alias.scope !158, !noalias !159
  %8939 = load float, float* %8875, align 4, !tbaa !114, !alias.scope !160, !noalias !161
  br label %8940

; <label>:8940                                    ; preds = %8933, %8867
  %8941 = phi float [ -1.000000e+00, %8867 ], [ %8939, %8933 ]
  %8942 = phi float [ -1.000000e+00, %8867 ], [ %8938, %8933 ]
  %8943 = phi float [ -1.000000e+00, %8867 ], [ %8937, %8933 ]
  %8944 = phi float [ -1.000000e+00, %8867 ], [ %8936, %8933 ]
  %8945 = phi float [ -1.000000e+00, %8867 ], [ %8935, %8933 ]
  %8946 = phi float [ -1.000000e+00, %8867 ], [ %8934, %8933 ]
  %8947 = phi i32 [ 0, %8867 ], [ %8930, %8933 ]
  %8948 = call float @dx.op.binary.f32(i32 36, float %8945, float %8946)  ; FMin(a,b)
  %8949 = call float @dx.op.binary.f32(i32 36, float %8944, float %8948)  ; FMin(a,b)
  %8950 = call float @dx.op.binary.f32(i32 35, float %8944, float %8945)  ; FMax(a,b)
  %8951 = call float @dx.op.binary.f32(i32 36, float %8950, float %8946)  ; FMin(a,b)
  %8952 = call float @dx.op.binary.f32(i32 36, float %8944, float %8945)  ; FMin(a,b)
  %8953 = call float @dx.op.binary.f32(i32 35, float %8952, float %8951)  ; FMax(a,b)
  %8954 = call float @dx.op.binary.f32(i32 35, float %8945, float %8946)  ; FMax(a,b)
  %8955 = call float @dx.op.binary.f32(i32 35, float %8944, float %8954)  ; FMax(a,b)
  store float %8949, float* %8872, align 4, !tbaa !114, !alias.scope !150, !noalias !151
  store float %8953, float* %8873, align 4, !tbaa !114, !alias.scope !148, !noalias !149
  store float %8955, float* %8874, align 4, !tbaa !114, !alias.scope !142, !noalias !145
  %8956 = call float @dx.op.binary.f32(i32 36, float %8942, float %8943)  ; FMin(a,b)
  %8957 = call float @dx.op.binary.f32(i32 36, float %8941, float %8956)  ; FMin(a,b)
  %8958 = call float @dx.op.binary.f32(i32 35, float %8941, float %8942)  ; FMax(a,b)
  %8959 = call float @dx.op.binary.f32(i32 36, float %8958, float %8943)  ; FMin(a,b)
  %8960 = call float @dx.op.binary.f32(i32 36, float %8941, float %8942)  ; FMin(a,b)
  %8961 = call float @dx.op.binary.f32(i32 35, float %8960, float %8959)  ; FMax(a,b)
  %8962 = call float @dx.op.binary.f32(i32 35, float %8942, float %8943)  ; FMax(a,b)
  %8963 = call float @dx.op.binary.f32(i32 35, float %8941, float %8962)  ; FMax(a,b)
  store float %8957, float* %8875, align 4, !tbaa !114, !alias.scope !160, !noalias !161
  store float %8961, float* %8876, align 4, !tbaa !114, !alias.scope !158, !noalias !159
  store float %8963, float* %8877, align 4, !tbaa !114, !alias.scope !152, !noalias !155
  %8964 = sub nsw i32 3, %8947
  %8965 = icmp sgt i32 %8964, 2
  br i1 %8965, label %8966, label %9004

; <label>:8966                                    ; preds = %8940
  %8967 = icmp eq i32 %8735, 0
  %8968 = fsub fast float %8785, %8869
  %8969 = select i1 %8967, float %8968, float %8869
  %8970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8971 = extractvalue %dx.types.CBufRet.f32 %8970, 0
  %8972 = extractvalue %dx.types.CBufRet.f32 %8970, 1
  %8973 = extractvalue %dx.types.CBufRet.f32 %8970, 2
  %8974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8975 = extractvalue %dx.types.CBufRet.f32 %8974, 0
  %8976 = extractvalue %dx.types.CBufRet.f32 %8974, 1
  %8977 = extractvalue %dx.types.CBufRet.f32 %8974, 2
  %8978 = extractvalue %dx.types.CBufRet.f32 %8974, 3
  %8979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8980 = extractvalue %dx.types.CBufRet.f32 %8979, 3
  %8981 = call float @dx.op.binary.f32(i32 36, float %8870, float %8980)  ; FMin(a,b)
  %8982 = fmul fast float %8978, %8969
  %8983 = call float @dx.op.unary.f32(i32 7, float %8982)  ; Saturate(value)
  %8984 = fsub fast float %8975, %8971
  %8985 = fsub fast float %8976, %8972
  %8986 = fsub fast float %8977, %8973
  %8987 = fmul fast float %8983, %8984
  %8988 = fmul fast float %8983, %8985
  %8989 = fmul fast float %8983, %8986
  %8990 = fadd fast float %8987, %8971
  %8991 = fadd fast float %8988, %8972
  %8992 = fadd fast float %8989, %8973
  %8993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8994 = extractvalue %dx.types.CBufRet.f32 %8993, 0
  %8995 = extractvalue %dx.types.CBufRet.f32 %8993, 1
  %8996 = fadd fast float %8995, %8994
  %8997 = call float @dx.op.unary.f32(i32 7, float %8996)  ; Saturate(value)
  %8998 = extractvalue %dx.types.CBufRet.f32 %8993, 2
  %8999 = extractvalue %dx.types.CBufRet.f32 %8993, 3
  %9000 = fadd fast float %8999, %8998
  %9001 = call float @dx.op.unary.f32(i32 7, float %9000)  ; Saturate(value)
  %9002 = fmul fast float %8997, %8981
  %9003 = fmul fast float %9002, %9001
  br label %9086

; <label>:9004                                    ; preds = %8940
  %9005 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %8964
  %9006 = load float, float* %9005, align 4, !tbaa !114, !noalias !126
  %9007 = fcmp fast olt float %9006, %8871
  %9008 = icmp sgt i32 %8947, 0
  %9009 = and i1 %9008, %9007
  br i1 %9009, label %9010, label %9047

; <label>:9010                                    ; preds = %9004
  br label %9011

; <label>:9011                                    ; preds = %9040, %9010
  %9012 = phi float [ %9041, %9040 ], [ %8869, %9010 ]
  %9013 = phi float [ %9042, %9040 ], [ %8870, %9010 ]
  %9014 = phi float [ %9022, %9040 ], [ %9006, %9010 ]
  %9015 = phi i32 [ %9019, %9040 ], [ %8964, %9010 ]
  %9016 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %9015
  %9017 = load float, float* %9016, align 4, !tbaa !114, !noalias !126
  %9018 = icmp slt i32 %9015, 2
  %9019 = add nsw i32 %9015, 1
  %9020 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %9019
  %9021 = load float, float* %9020, align 4, !tbaa !114, !noalias !126
  %9022 = select i1 %9018, float %9021, float %8785
  %9023 = call float @dx.op.binary.f32(i32 36, float %9022, float %9017)  ; FMin(a,b)
  %9024 = call float @dx.op.binary.f32(i32 36, float %8871, float %9023)  ; FMin(a,b)
  %9025 = icmp eq i32 %8735, 0
  %9026 = fadd fast float %9024, %9014
  %9027 = fmul fast float %9026, %8716
  %9028 = fadd fast float %9027, %8729
  br i1 %9025, label %9034, label %9029

; <label>:9029                                    ; preds = %9011
  %9030 = fsub fast float %9024, %9014
  %9031 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9030)  ; FMax(a,b)
  %9032 = fmul fast float %9031, %9028
  %9033 = fadd fast float %9032, %9013
  br label %9040

; <label>:9034                                    ; preds = %9011
  %9035 = fsub fast float %9014, %9024
  %9036 = call float @dx.op.unary.f32(i32 6, float %9035)  ; FAbs(value)
  %9037 = fadd fast float %9036, %9012
  %9038 = fmul fast float %9036, %9028
  %9039 = fsub fast float %9013, %9038
  br label %9040

; <label>:9040                                    ; preds = %9034, %9029
  %9041 = phi float [ %9031, %9029 ], [ %9037, %9034 ]
  %9042 = phi float [ %9033, %9029 ], [ %9039, %9034 ]
  %9043 = fcmp fast olt float %9022, %8871
  %9044 = icmp slt i32 %9019, 3
  %9045 = and i1 %9044, %9043
  br i1 %9045, label %9011, label %9046

; <label>:9046                                    ; preds = %9040
  br label %9047

; <label>:9047                                    ; preds = %9046, %9004
  %9048 = phi float [ %8869, %9004 ], [ %9041, %9046 ]
  %9049 = phi float [ %8870, %9004 ], [ %9042, %9046 ]
  %9050 = fsub fast float %8785, %9048
  %9051 = select i1 %8787, float %9048, float %9050
  %9052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9053 = extractvalue %dx.types.CBufRet.f32 %9052, 0
  %9054 = extractvalue %dx.types.CBufRet.f32 %9052, 1
  %9055 = extractvalue %dx.types.CBufRet.f32 %9052, 2
  %9056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9057 = extractvalue %dx.types.CBufRet.f32 %9056, 0
  %9058 = extractvalue %dx.types.CBufRet.f32 %9056, 1
  %9059 = extractvalue %dx.types.CBufRet.f32 %9056, 2
  %9060 = extractvalue %dx.types.CBufRet.f32 %9056, 3
  %9061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9062 = extractvalue %dx.types.CBufRet.f32 %9061, 3
  %9063 = call float @dx.op.binary.f32(i32 36, float %9049, float %9062)  ; FMin(a,b)
  %9064 = fmul fast float %9060, %9051
  %9065 = call float @dx.op.unary.f32(i32 7, float %9064)  ; Saturate(value)
  %9066 = fsub fast float %9057, %9053
  %9067 = fsub fast float %9058, %9054
  %9068 = fsub fast float %9059, %9055
  %9069 = fmul fast float %9065, %9066
  %9070 = fmul fast float %9065, %9067
  %9071 = fmul fast float %9065, %9068
  %9072 = fadd fast float %9069, %9053
  %9073 = fadd fast float %9070, %9054
  %9074 = fadd fast float %9071, %9055
  %9075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9076 = extractvalue %dx.types.CBufRet.f32 %9075, 0
  %9077 = extractvalue %dx.types.CBufRet.f32 %9075, 1
  %9078 = fadd fast float %9077, %9076
  %9079 = call float @dx.op.unary.f32(i32 7, float %9078)  ; Saturate(value)
  %9080 = extractvalue %dx.types.CBufRet.f32 %9075, 2
  %9081 = extractvalue %dx.types.CBufRet.f32 %9075, 3
  %9082 = fadd fast float %9081, %9080
  %9083 = call float @dx.op.unary.f32(i32 7, float %9082)  ; Saturate(value)
  %9084 = fmul fast float %9079, %9063
  %9085 = fmul fast float %9084, %9083
  br label %9086

; <label>:9086                                    ; preds = %9047, %8966, %8801, %8783, %8781
  %9087 = phi float [ %8810, %8801 ], [ %8969, %8966 ], [ %9051, %9047 ], [ 0.000000e+00, %8781 ], [ 0.000000e+00, %8783 ]
  %9088 = phi float [ %8844, %8801 ], [ %9003, %8966 ], [ %9085, %9047 ], [ 0.000000e+00, %8781 ], [ 0.000000e+00, %8783 ]
  %9089 = phi float [ %8831, %8801 ], [ %8990, %8966 ], [ %9072, %9047 ], [ 0.000000e+00, %8781 ], [ 0.000000e+00, %8783 ]
  %9090 = phi float [ %8832, %8801 ], [ %8991, %8966 ], [ %9073, %9047 ], [ 0.000000e+00, %8781 ], [ 0.000000e+00, %8783 ]
  %9091 = phi float [ %8833, %8801 ], [ %8992, %8966 ], [ %9074, %9047 ], [ 0.000000e+00, %8781 ], [ 0.000000e+00, %8783 ]
  %9092 = fmul fast float %8724, %9088
  %9093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9094 = extractvalue %dx.types.CBufRet.f32 %9093, 2
  %9095 = fsub fast float %8731, %9094
  %9096 = fcmp fast olt float %9092, -2.000000e+01
  %9097 = call float @dx.op.unary.f32(i32 21, float %9092)  ; Exp(value)
  %9098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9099 = extractvalue %dx.types.CBufRet.f32 %9098, 2
  %9100 = extractvalue %dx.types.CBufRet.f32 %9098, 3
  %9101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9102 = extractvalue %dx.types.CBufRet.f32 %9101, 2
  %9103 = fmul fast float %9100, %9095
  %9104 = call float @dx.op.unary.f32(i32 7, float %9103)  ; Saturate(value)
  %9105 = fsub fast float 1.000000e+00, %9104
  %9106 = fmul fast float %8716, 5.000000e-01
  %9107 = fadd fast float %9106, 5.000000e-01
  %9108 = call float @dx.op.unary.f32(i32 7, float %9107)  ; Saturate(value)
  %9109 = fsub fast float 1.000000e+00, %9108
  %9110 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9105)  ; FMax(a,b)
  %9111 = fdiv fast float %9109, %9110
  %9112 = fsub fast float %9095, %8673
  %9113 = call float @dx.op.unary.f32(i32 6, float %9112)  ; FAbs(value)
  %9114 = fmul fast float %9113, %9099
  %9115 = call float @dx.op.unary.f32(i32 7, float %9111)  ; Saturate(value)
  %9116 = fsub fast float 1.000000e+00, %9114
  %9117 = fmul fast float %9116, %9115
  %9118 = fadd fast float %9117, %9114
  %9119 = fmul fast float %9102, %9095
  %9120 = call float @dx.op.unary.f32(i32 7, float %9119)  ; Saturate(value)
  %9121 = fsub fast float 1.000000e+00, %9118
  %9122 = fmul fast float %9121, %9120
  %9123 = fadd fast float %9122, %9118
  %9124 = call float @dx.op.unary.f32(i32 7, float %9123)  ; Saturate(value)
  %9125 = fadd fast float %9097, -1.000000e+00
  %9126 = select i1 %9096, float -1.000000e+00, float %9125
  %9127 = fmul fast float %9124, %9126
  %9128 = fadd fast float %9127, 1.000000e+00
  %9129 = fsub fast float -0.000000e+00, %9127
  %9130 = fmul fast float %9089, %9129
  %9131 = fmul fast float %9090, %9129
  %9132 = fmul fast float %9091, %9129
  br label %9133

; <label>:9133                                    ; preds = %9086, %8682
  %9134 = phi float [ %9087, %9086 ], [ 0.000000e+00, %8682 ]
  %9135 = phi float [ %9128, %9086 ], [ 1.000000e+00, %8682 ]
  %9136 = phi float [ %9130, %9086 ], [ 0.000000e+00, %8682 ]
  %9137 = phi float [ %9131, %9086 ], [ 0.000000e+00, %8682 ]
  %9138 = phi float [ %9132, %9086 ], [ 0.000000e+00, %8682 ]
  %9139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9140 = extractvalue %dx.types.CBufRet.f32 %9139, 1
  %9141 = fsub fast float 1.000000e+00, %9135
  %9142 = fmul fast float %9141, %8717
  %9143 = fmul fast float %9142, %9140
  %9144 = fsub fast float %8717, %9143
  br i1 %8710, label %9145, label %9174, !dx.controlflow.hints !162

; <label>:9145                                    ; preds = %9133
  %9146 = fmul fast float %8718, %8707
  %9147 = fadd fast float %9146, %8708
  %9148 = call float @dx.op.unary.f32(i32 7, float %9147)  ; Saturate(value)
  %9149 = fmul fast float %8689, %9144
  %9150 = fsub fast float -0.000000e+00, %9149
  %9151 = fmul fast float %8690, %9144
  %9152 = fsub fast float -0.000000e+00, %9151
  %9153 = call float @dx.op.unary.f32(i32 21, float %9150)  ; Exp(value)
  %9154 = call float @dx.op.unary.f32(i32 21, float %9152)  ; Exp(value)
  %9155 = call float @dx.op.binary.f32(i32 35, float %8697, float %9153)  ; FMax(a,b)
  %9156 = call float @dx.op.binary.f32(i32 35, float %8697, float %9154)  ; FMax(a,b)
  %9157 = fsub fast float %9156, %9155
  %9158 = fmul fast float %9157, %9148
  %9159 = fadd fast float %9158, %9155
  %9160 = call float @dx.op.unary.f32(i32 7, float %9159)  ; Saturate(value)
  %9161 = fsub fast float %8694, %8699
  %9162 = fsub fast float %8695, %8700
  %9163 = fsub fast float %8696, %8701
  %9164 = fmul fast float %9148, %9161
  %9165 = fmul fast float %9148, %9162
  %9166 = fmul fast float %9148, %9163
  %9167 = fadd fast float %9164, %8699
  %9168 = fadd fast float %9165, %8700
  %9169 = fadd fast float %9166, %8701
  %9170 = fsub fast float 1.000000e+00, %9160
  %9171 = fmul fast float %9170, %9167
  %9172 = fmul fast float %9170, %9168
  %9173 = fmul fast float %9170, %9169
  br label %9233

; <label>:9174                                    ; preds = %9133
  %9175 = fmul fast float %9144, %8706
  %9176 = call float @dx.op.unary.f32(i32 7, float %9175)  ; Saturate(value)
  %9177 = fsub fast float 2.000000e+00, %9176
  %9178 = fmul fast float %9176, 9.921875e-01
  %9179 = fmul fast float %9178, %9177
  %9180 = fadd fast float %9179, 3.906250e-03
  %9181 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %43, float %9180, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9182 = extractvalue %dx.types.ResRet.f32 %9181, 0
  %9183 = fsub fast float %9176, %9182
  %9184 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9183)  ; FMax(a,b)
  %9185 = fmul fast float %8692, %8673
  %9186 = call float @dx.op.unary.f32(i32 6, float %9185)  ; FAbs(value)
  %9187 = fcmp fast ogt float %9186, 0x3EB0C6F7A0000000
  br i1 %9187, label %9188, label %9194, !dx.controlflow.hints !163

; <label>:9188                                    ; preds = %9174
  %9189 = fmul fast float %9185, 0xBFF7154760000000
  %9190 = call float @dx.op.unary.f32(i32 21, float %9189)  ; Exp(value)
  %9191 = fsub fast float 1.000000e+00, %9190
  %9192 = fdiv fast float %9191, %9185
  %9193 = fmul fast float %9192, %8702
  br label %9194

; <label>:9194                                    ; preds = %9188, %9174
  %9195 = phi float [ %9193, %9188 ], [ %8702, %9174 ]
  %9196 = fadd fast float %9195, %8704
  %9197 = fmul fast float %9196, %9184
  %9198 = fmul fast float %8689, %9197
  %9199 = fsub fast float -0.000000e+00, %9198
  %9200 = fmul fast float %8690, %9197
  %9201 = fsub fast float -0.000000e+00, %9200
  %9202 = fmul fast float %8691, %9197
  %9203 = fsub fast float -0.000000e+00, %9202
  %9204 = call float @dx.op.unary.f32(i32 21, float %9199)  ; Exp(value)
  %9205 = call float @dx.op.unary.f32(i32 21, float %9201)  ; Exp(value)
  %9206 = call float @dx.op.unary.f32(i32 21, float %9203)  ; Exp(value)
  %9207 = fmul fast float %8718, %8718
  %9208 = fadd fast float %9207, 1.000000e+00
  %9209 = fmul fast float %9208, 0x3FAE8EC8A0000000
  %9210 = fmul fast float %9209, %8699
  %9211 = fmul fast float %9209, %8700
  %9212 = fmul fast float %9209, %8701
  %9213 = fmul fast float %8718, %8697
  %9214 = fsub fast float 1.000000e+00, %9213
  %9215 = fmul fast float %8697, %8697
  %9216 = fsub fast float 1.000000e+00, %9215
  %9217 = fmul fast float %9216, 0x3FB45F3060000000
  %9218 = fmul fast float %9214, %9214
  %9219 = fdiv fast float 1.000000e+00, %9218
  %9220 = fmul fast float %9217, %9219
  %9221 = fmul fast float %9220, %8694
  %9222 = fmul fast float %9220, %8695
  %9223 = fmul fast float %9220, %8696
  %9224 = fadd fast float %9221, %9210
  %9225 = fadd fast float %9222, %9211
  %9226 = fadd fast float %9223, %9212
  %9227 = fsub fast float 1.000000e+00, %9204
  %9228 = fsub fast float 1.000000e+00, %9205
  %9229 = fsub fast float 1.000000e+00, %9206
  %9230 = fmul fast float %9224, %9227
  %9231 = fmul fast float %9225, %9228
  %9232 = fmul fast float %9226, %9229
  br label %9233

; <label>:9233                                    ; preds = %9194, %9145
  %9234 = phi float [ %9171, %9145 ], [ %9230, %9194 ]
  %9235 = phi float [ %9172, %9145 ], [ %9231, %9194 ]
  %9236 = phi float [ %9173, %9145 ], [ %9232, %9194 ]
  %9237 = phi float [ %9160, %9145 ], [ %9204, %9194 ]
  %9238 = phi float [ %9160, %9145 ], [ %9205, %9194 ]
  %9239 = phi float [ %9160, %9145 ], [ %9206, %9194 ]
  br i1 %8726, label %9240, label %9438, !dx.controlflow.hints !164

; <label>:9240                                    ; preds = %9233
  %9241 = extractvalue %dx.types.CBufRet.f32 %9139, 0
  %9242 = fmul fast float %9241, %9141
  %9243 = fsub fast float %9136, %9234
  %9244 = fsub fast float %9137, %9235
  %9245 = fsub fast float %9138, %9236
  %9246 = fmul fast float %9242, %9243
  %9247 = fmul fast float %9242, %9244
  %9248 = fmul fast float %9242, %9245
  %9249 = fadd fast float %9246, %9234
  %9250 = fadd fast float %9247, %9235
  %9251 = fadd fast float %9248, %9236
  %9252 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9237)  ; FMax(a,b)
  %9253 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9238)  ; FMax(a,b)
  %9254 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9239)  ; FMax(a,b)
  %9255 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9135)  ; FMax(a,b)
  %9256 = call float @dx.op.binary.f32(i32 35, float %9134, float %9144)  ; FMax(a,b)
  %9257 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9256)  ; FMax(a,b)
  %9258 = fdiv fast float %9134, %9257
  %9259 = call float @dx.op.unary.f32(i32 7, float %9258)  ; Saturate(value)
  %9260 = fdiv fast float %9144, %9257
  %9261 = call float @dx.op.unary.f32(i32 7, float %9260)  ; Saturate(value)
  %9262 = fcmp fast une float %9255, 1.000000e+00
  br i1 %9262, label %9263, label %9276, !dx.controlflow.hints !165

; <label>:9263                                    ; preds = %9240
  %9264 = call float @dx.op.unary.f32(i32 23, float %9255)  ; Log(value)
  %9265 = fmul fast float %9264, 0x3FE62E4300000000
  %9266 = fmul fast float %9136, %9265
  %9267 = fsub fast float -0.000000e+00, %9266
  %9268 = fmul fast float %9137, %9265
  %9269 = fsub fast float -0.000000e+00, %9268
  %9270 = fmul fast float %9138, %9265
  %9271 = fsub fast float -0.000000e+00, %9270
  %9272 = fsub fast float 1.000000e+00, %9255
  %9273 = fdiv fast float %9267, %9272
  %9274 = fdiv fast float %9269, %9272
  %9275 = fdiv fast float %9271, %9272
  br label %9276

; <label>:9276                                    ; preds = %9263, %9240
  %9277 = phi float [ %9273, %9263 ], [ %9136, %9240 ]
  %9278 = phi float [ %9274, %9263 ], [ %9137, %9240 ]
  %9279 = phi float [ %9275, %9263 ], [ %9138, %9240 ]
  %9280 = phi float [ %9265, %9263 ], [ 0.000000e+00, %9240 ]
  %9281 = fcmp fast une float %9252, 1.000000e+00
  br i1 %9281, label %9282, label %9289, !dx.controlflow.hints !166

; <label>:9282                                    ; preds = %9276
  %9283 = call float @dx.op.unary.f32(i32 23, float %9252)  ; Log(value)
  %9284 = fmul fast float %9283, 0x3FE62E4300000000
  %9285 = fmul fast float %9249, %9284
  %9286 = fsub fast float -0.000000e+00, %9285
  %9287 = fsub fast float 1.000000e+00, %9252
  %9288 = fdiv fast float %9286, %9287
  br label %9289

; <label>:9289                                    ; preds = %9282, %9276
  %9290 = phi float [ %9288, %9282 ], [ %9249, %9276 ]
  %9291 = phi float [ %9284, %9282 ], [ 0.000000e+00, %9276 ]
  %9292 = fcmp fast une float %9253, 1.000000e+00
  br i1 %9292, label %9293, label %9300, !dx.controlflow.hints !166

; <label>:9293                                    ; preds = %9289
  %9294 = call float @dx.op.unary.f32(i32 23, float %9253)  ; Log(value)
  %9295 = fmul fast float %9294, 0x3FE62E4300000000
  %9296 = fmul fast float %9250, %9295
  %9297 = fsub fast float -0.000000e+00, %9296
  %9298 = fsub fast float 1.000000e+00, %9253
  %9299 = fdiv fast float %9297, %9298
  br label %9300

; <label>:9300                                    ; preds = %9293, %9289
  %9301 = phi float [ %9299, %9293 ], [ %9250, %9289 ]
  %9302 = phi float [ %9295, %9293 ], [ 0.000000e+00, %9289 ]
  %9303 = fcmp fast une float %9254, 1.000000e+00
  br i1 %9303, label %9304, label %9311, !dx.controlflow.hints !166

; <label>:9304                                    ; preds = %9300
  %9305 = call float @dx.op.unary.f32(i32 23, float %9254)  ; Log(value)
  %9306 = fmul fast float %9305, 0x3FE62E4300000000
  %9307 = fmul fast float %9251, %9306
  %9308 = fsub fast float -0.000000e+00, %9307
  %9309 = fsub fast float 1.000000e+00, %9254
  %9310 = fdiv fast float %9308, %9309
  br label %9311

; <label>:9311                                    ; preds = %9304, %9300
  %9312 = phi float [ %9310, %9304 ], [ %9251, %9300 ]
  %9313 = phi float [ %9306, %9304 ], [ 0.000000e+00, %9300 ]
  %9314 = fmul fast float %9277, %9261
  %9315 = fmul fast float %9278, %9261
  %9316 = fmul fast float %9279, %9261
  %9317 = fmul fast float %9280, %9261
  %9318 = fmul fast float %9290, %9259
  %9319 = fmul fast float %9301, %9259
  %9320 = fmul fast float %9312, %9259
  %9321 = fmul fast float %9291, %9259
  %9322 = fmul fast float %9302, %9259
  %9323 = fmul fast float %9313, %9259
  %9324 = fadd fast float %9318, %9314
  %9325 = fadd fast float %9319, %9315
  %9326 = fadd fast float %9320, %9316
  %9327 = fadd fast float %9321, %9317
  %9328 = fadd fast float %9322, %9317
  %9329 = fadd fast float %9323, %9317
  %9330 = fcmp fast une float %9327, 0.000000e+00
  br i1 %9330, label %9331, label %9338, !dx.controlflow.hints !167

; <label>:9331                                    ; preds = %9311
  %9332 = fmul fast float %9327, 0x3FF7154760000000
  %9333 = call float @dx.op.unary.f32(i32 21, float %9332)  ; Exp(value)
  %9334 = fsub fast float 1.000000e+00, %9333
  %9335 = fmul fast float %9324, %9334
  %9336 = fsub fast float -0.000000e+00, %9335
  %9337 = fdiv fast float %9336, %9327
  br label %9338

; <label>:9338                                    ; preds = %9331, %9311
  %9339 = phi float [ %9333, %9331 ], [ 1.000000e+00, %9311 ]
  %9340 = phi float [ %9337, %9331 ], [ %9324, %9311 ]
  %9341 = fcmp fast une float %9328, 0.000000e+00
  br i1 %9341, label %9342, label %9349, !dx.controlflow.hints !167

; <label>:9342                                    ; preds = %9338
  %9343 = fmul fast float %9328, 0x3FF7154760000000
  %9344 = call float @dx.op.unary.f32(i32 21, float %9343)  ; Exp(value)
  %9345 = fsub fast float 1.000000e+00, %9344
  %9346 = fmul fast float %9325, %9345
  %9347 = fsub fast float -0.000000e+00, %9346
  %9348 = fdiv fast float %9347, %9328
  br label %9349

; <label>:9349                                    ; preds = %9342, %9338
  %9350 = phi float [ %9344, %9342 ], [ 1.000000e+00, %9338 ]
  %9351 = phi float [ %9348, %9342 ], [ %9325, %9338 ]
  %9352 = fcmp fast une float %9329, 0.000000e+00
  br i1 %9352, label %9353, label %9360, !dx.controlflow.hints !167

; <label>:9353                                    ; preds = %9349
  %9354 = fmul fast float %9329, 0x3FF7154760000000
  %9355 = call float @dx.op.unary.f32(i32 21, float %9354)  ; Exp(value)
  %9356 = fsub fast float 1.000000e+00, %9355
  %9357 = fmul fast float %9326, %9356
  %9358 = fsub fast float -0.000000e+00, %9357
  %9359 = fdiv fast float %9358, %9329
  br label %9360

; <label>:9360                                    ; preds = %9353, %9349
  %9361 = phi float [ %9355, %9353 ], [ 1.000000e+00, %9349 ]
  %9362 = phi float [ %9359, %9353 ], [ %9326, %9349 ]
  %9363 = fcmp fast ogt float %9259, %9261
  br i1 %9363, label %9364, label %9384

; <label>:9364                                    ; preds = %9360
  %9365 = fsub fast float 1.000000e+00, %9261
  %9366 = fmul fast float %9277, %9365
  %9367 = fmul fast float %9278, %9365
  %9368 = fmul fast float %9279, %9365
  %9369 = fmul fast float %9280, %9365
  %9370 = fcmp fast une float %9369, 0.000000e+00
  br i1 %9370, label %9371, label %9422, !dx.controlflow.hints !168

; <label>:9371                                    ; preds = %9364
  %9372 = fmul fast float %9369, 0x3FF7154760000000
  %9373 = call float @dx.op.unary.f32(i32 21, float %9372)  ; Exp(value)
  %9374 = fsub fast float 1.000000e+00, %9373
  %9375 = fmul fast float %9366, %9374
  %9376 = fsub fast float -0.000000e+00, %9375
  %9377 = fmul fast float %9367, %9374
  %9378 = fsub fast float -0.000000e+00, %9377
  %9379 = fmul fast float %9368, %9374
  %9380 = fsub fast float -0.000000e+00, %9379
  %9381 = fdiv fast float %9376, %9369
  %9382 = fdiv fast float %9378, %9369
  %9383 = fdiv fast float %9380, %9369
  br label %9422

; <label>:9384                                    ; preds = %9360
  %9385 = fsub fast float 1.000000e+00, %9259
  %9386 = fmul fast float %9290, %9385
  %9387 = fmul fast float %9301, %9385
  %9388 = fmul fast float %9312, %9385
  %9389 = fmul fast float %9291, %9385
  %9390 = fmul fast float %9302, %9385
  %9391 = fmul fast float %9313, %9385
  %9392 = fcmp fast une float %9389, 0.000000e+00
  br i1 %9392, label %9393, label %9400, !dx.controlflow.hints !167

; <label>:9393                                    ; preds = %9384
  %9394 = fmul fast float %9389, 0x3FF7154760000000
  %9395 = call float @dx.op.unary.f32(i32 21, float %9394)  ; Exp(value)
  %9396 = fsub fast float 1.000000e+00, %9395
  %9397 = fmul fast float %9386, %9396
  %9398 = fsub fast float -0.000000e+00, %9397
  %9399 = fdiv fast float %9398, %9389
  br label %9400

; <label>:9400                                    ; preds = %9393, %9384
  %9401 = phi float [ %9399, %9393 ], [ %9386, %9384 ]
  %9402 = phi float [ %9395, %9393 ], [ 1.000000e+00, %9384 ]
  %9403 = fcmp fast une float %9390, 0.000000e+00
  br i1 %9403, label %9404, label %9411, !dx.controlflow.hints !167

; <label>:9404                                    ; preds = %9400
  %9405 = fmul fast float %9390, 0x3FF7154760000000
  %9406 = call float @dx.op.unary.f32(i32 21, float %9405)  ; Exp(value)
  %9407 = fsub fast float 1.000000e+00, %9406
  %9408 = fmul fast float %9387, %9407
  %9409 = fsub fast float -0.000000e+00, %9408
  %9410 = fdiv fast float %9409, %9390
  br label %9411

; <label>:9411                                    ; preds = %9404, %9400
  %9412 = phi float [ %9410, %9404 ], [ %9387, %9400 ]
  %9413 = phi float [ %9406, %9404 ], [ 1.000000e+00, %9400 ]
  %9414 = fcmp fast une float %9391, 0.000000e+00
  br i1 %9414, label %9415, label %9422, !dx.controlflow.hints !167

; <label>:9415                                    ; preds = %9411
  %9416 = fmul fast float %9391, 0x3FF7154760000000
  %9417 = call float @dx.op.unary.f32(i32 21, float %9416)  ; Exp(value)
  %9418 = fsub fast float 1.000000e+00, %9417
  %9419 = fmul fast float %9388, %9418
  %9420 = fsub fast float -0.000000e+00, %9419
  %9421 = fdiv fast float %9420, %9391
  br label %9422

; <label>:9422                                    ; preds = %9415, %9411, %9371, %9364
  %9423 = phi float [ %9421, %9415 ], [ %9383, %9371 ], [ %9368, %9364 ], [ %9388, %9411 ]
  %9424 = phi float [ %9412, %9415 ], [ %9382, %9371 ], [ %9367, %9364 ], [ %9412, %9411 ]
  %9425 = phi float [ %9401, %9415 ], [ %9381, %9371 ], [ %9366, %9364 ], [ %9401, %9411 ]
  %9426 = phi float [ %9417, %9415 ], [ %9373, %9371 ], [ 1.000000e+00, %9364 ], [ 1.000000e+00, %9411 ]
  %9427 = phi float [ %9413, %9415 ], [ %9373, %9371 ], [ 1.000000e+00, %9364 ], [ %9413, %9411 ]
  %9428 = phi float [ %9402, %9415 ], [ %9373, %9371 ], [ 1.000000e+00, %9364 ], [ %9402, %9411 ]
  %9429 = fmul fast float %9428, %9340
  %9430 = fmul fast float %9427, %9351
  %9431 = fmul fast float %9426, %9362
  %9432 = fadd fast float %9429, %9425
  %9433 = fadd fast float %9430, %9424
  %9434 = fadd fast float %9431, %9423
  %9435 = fmul fast float %9428, %9339
  %9436 = fmul fast float %9427, %9350
  %9437 = fmul fast float %9426, %9361
  br label %9438

; <label>:9438                                    ; preds = %9422, %9233
  %9439 = phi float [ %9437, %9422 ], [ %9239, %9233 ]
  %9440 = phi float [ %9436, %9422 ], [ %9238, %9233 ]
  %9441 = phi float [ %9435, %9422 ], [ %9237, %9233 ]
  %9442 = phi float [ %9434, %9422 ], [ %9236, %9233 ]
  %9443 = phi float [ %9433, %9422 ], [ %9235, %9233 ]
  %9444 = phi float [ %9432, %9422 ], [ %9234, %9233 ]
  %9445 = fmul fast float %9444, %8398
  %9446 = fmul fast float %9443, %8399
  %9447 = fmul fast float %9442, %8400
  %9448 = fmul fast float %9441, %8681
  %9449 = call float @dx.op.dot3.f32(i32 55, float %9441, float %9440, float %9439, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9450 = call float @dx.op.dot3.f32(i32 55, float %9445, float %9446, float %9447, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9451 = select i1 %294, float %9449, float %9441
  %9452 = select i1 %294, float %9449, float %9440
  %9453 = select i1 %294, float 1.000000e+00, float %9439
  %9454 = select i1 %294, float %9450, float %9445
  %9455 = select i1 %294, float 0.000000e+00, float %9446
  %9456 = select i1 %294, float 0.000000e+00, float %9447
  %9457 = fmul fast float %9451, %8675
  %9458 = fmul fast float %9452, %8676
  %9459 = fmul fast float %9453, %8677
  %9460 = fadd fast float %9457, %9454
  %9461 = fadd fast float %9458, %9455
  %9462 = fadd fast float %9456, %9459
  %9463 = fmul fast float %9451, %8678
  %9464 = fmul fast float %9452, %8679
  %9465 = fmul fast float %9453, %8680
  %9466 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9467 = extractvalue %dx.types.CBufRet.i32 %9466, 0
  %9468 = icmp eq i32 %9467, 0
  br i1 %9468, label %9836, label %9469, !dx.controlflow.hints !169

; <label>:9469                                    ; preds = %9438
  %9470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9471 = extractvalue %dx.types.CBufRet.f32 %9470, 2
  %9472 = extractvalue %dx.types.CBufRet.f32 %9470, 3
  %9473 = fmul fast float %9471, %109
  %9474 = fmul fast float %9472, %110
  %9475 = fmul fast float %9473, 2.000000e+00
  %9476 = fmul fast float %9474, 2.000000e+00
  %9477 = fsub fast float 1.000000e+00, %9475
  %9478 = fsub fast float 1.000000e+00, %9476
  %9479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9480 = extractvalue %dx.types.CBufRet.f32 %9479, 0
  %9481 = extractvalue %dx.types.CBufRet.f32 %9479, 1
  %9482 = extractvalue %dx.types.CBufRet.f32 %9479, 2
  %9483 = fmul fast float %9477, %9480
  %9484 = fmul fast float %9477, %9481
  %9485 = fmul fast float %9477, %9482
  %9486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9487 = extractvalue %dx.types.CBufRet.f32 %9486, 0
  %9488 = extractvalue %dx.types.CBufRet.f32 %9486, 1
  %9489 = extractvalue %dx.types.CBufRet.f32 %9486, 2
  %9490 = fmul fast float %9478, %9487
  %9491 = fmul fast float %9478, %9488
  %9492 = fmul fast float %9478, %9489
  %9493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9494 = extractvalue %dx.types.CBufRet.f32 %9493, 0
  %9495 = extractvalue %dx.types.CBufRet.f32 %9493, 1
  %9496 = extractvalue %dx.types.CBufRet.f32 %9493, 2
  %9497 = fadd fast float %9490, %9494
  %9498 = fadd fast float %9497, %9483
  %9499 = fadd fast float %9491, %9495
  %9500 = fadd fast float %9499, %9484
  %9501 = fadd fast float %9492, %9496
  %9502 = fadd fast float %9501, %9485
  %9503 = fmul fast float %9498, %8674
  %9504 = fmul fast float %9500, %8674
  %9505 = fmul fast float %9502, %8674
  %9506 = fmul fast float %9503, %9503
  %9507 = fmul fast float %9504, %9504
  %9508 = fadd fast float %9506, %9507
  %9509 = fmul fast float %9505, %9505
  %9510 = fadd fast float %9508, %9509
  %9511 = call float @dx.op.unary.f32(i32 24, float %9510)  ; Sqrt(value)
  %9512 = extractvalue %dx.types.CBufRet.f32 %8401, 0
  %9513 = fsub fast float %9511, %9512
  %9514 = extractvalue %dx.types.CBufRet.f32 %8401, 2
  %9515 = fmul fast float %9513, %9514
  %9516 = call float @dx.op.unary.f32(i32 7, float %9515)  ; Saturate(value)
  %9517 = fadd fast float %9516, -5.000000e-01
  %9518 = fmul fast float %9517, 2.000000e+00
  %9519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9520 = extractvalue %dx.types.CBufRet.f32 %9519, 2
  %9521 = call float @dx.op.binary.f32(i32 36, float %9520, float %9518)  ; FMin(a,b)
  %9522 = fsub fast float -0.000000e+00, %9520
  %9523 = fcmp fast ogt float %9521, %9522
  br i1 %9523, label %9524, label %9836, !dx.controlflow.hints !170

; <label>:9524                                    ; preds = %9469
  %9525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9526 = extractvalue %dx.types.CBufRet.f32 %9525, 3
  %9527 = fcmp fast ogt float %9526, 0.000000e+00
  br i1 %9527, label %9528, label %9603, !dx.controlflow.hints !171

; <label>:9528                                    ; preds = %9524
  %9529 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %9530 = extractvalue %dx.types.Dimensions %9529, 0
  %9531 = sitofp i32 %9530 to float
  %9532 = extractvalue %dx.types.Dimensions %9529, 1
  %9533 = sitofp i32 %9532 to float
  %9534 = fmul fast float %9473, %9531
  %9535 = fmul fast float %9474, %9533
  %9536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9537 = extractvalue %dx.types.CBufRet.f32 %9536, 1
  %9538 = fsub fast float -0.000000e+00, %9537
  %9539 = fptoui float %9538 to i32
  %9540 = fptoui float %9534 to i32
  %9541 = fptoui float %9535 to i32
  %9542 = and i32 %9539, 31
  %9543 = lshr i32 %9540, %9542
  %9544 = lshr i32 %9541, %9542
  %9545 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %25, i32 %9539, i32 %9543, i32 %9544, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9546 = extractvalue %dx.types.ResRet.f32 %9545, 0
  %9547 = fcmp fast olt float %9546, -1.000000e+00
  %9548 = fcmp fast ogt float %9546, -1.000000e+00
  %9549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9550 = extractvalue %dx.types.CBufRet.f32 %9549, 1
  %9551 = select i1 %9548, float %9550, float 1.000000e+00
  %9552 = fadd fast float %9546, 1.000000e+00
  %9553 = fmul fast float %9551, %9552
  %9554 = call float @dx.op.unary.f32(i32 6, float %9553)  ; FAbs(value)
  %9555 = extractvalue %dx.types.CBufRet.f32 %9549, 3
  %9556 = fcmp fast oge float %9554, %9555
  %9557 = select i1 %9556, float 0x4197782600000000, float %9554
  %9558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9559 = extractvalue %dx.types.CBufRet.f32 %9558, 0
  %9560 = extractvalue %dx.types.CBufRet.f32 %9558, 1
  %9561 = extractvalue %dx.types.CBufRet.f32 %9558, 2
  %9562 = select i1 %9547, float %9559, float %9480
  %9563 = select i1 %9547, float %9560, float %9481
  %9564 = select i1 %9547, float %9561, float %9482
  %9565 = fmul fast float %9562, %9477
  %9566 = fmul fast float %9563, %9477
  %9567 = fmul fast float %9564, %9477
  %9568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9569 = extractvalue %dx.types.CBufRet.f32 %9568, 0
  %9570 = extractvalue %dx.types.CBufRet.f32 %9568, 1
  %9571 = extractvalue %dx.types.CBufRet.f32 %9568, 2
  %9572 = select i1 %9547, float %9569, float %9487
  %9573 = select i1 %9547, float %9570, float %9488
  %9574 = select i1 %9547, float %9571, float %9489
  %9575 = fmul fast float %9572, %9478
  %9576 = fmul fast float %9573, %9478
  %9577 = fmul fast float %9574, %9478
  %9578 = fadd fast float %9575, %9565
  %9579 = fadd fast float %9576, %9566
  %9580 = fadd fast float %9577, %9567
  %9581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9582 = extractvalue %dx.types.CBufRet.f32 %9581, 0
  %9583 = extractvalue %dx.types.CBufRet.f32 %9581, 1
  %9584 = extractvalue %dx.types.CBufRet.f32 %9581, 2
  %9585 = select i1 %9547, float %9582, float %9494
  %9586 = select i1 %9547, float %9583, float %9495
  %9587 = select i1 %9547, float %9584, float %9496
  %9588 = fadd fast float %9578, %9585
  %9589 = fadd fast float %9579, %9586
  %9590 = fadd fast float %9580, %9587
  %9591 = fmul fast float %9588, %9557
  %9592 = fmul fast float %9589, %9557
  %9593 = fmul fast float %9590, %9557
  %9594 = fmul fast float %9591, %9591
  %9595 = fmul fast float %9592, %9592
  %9596 = fadd fast float %9594, %9595
  %9597 = fmul fast float %9593, %9593
  %9598 = fadd fast float %9596, %9597
  %9599 = call float @dx.op.unary.f32(i32 24, float %9598)  ; Sqrt(value)
  %9600 = fsub fast float %9599, %9512
  %9601 = fmul fast float %9600, %9514
  %9602 = call float @dx.op.unary.f32(i32 7, float %9601)  ; Saturate(value)
  br label %9603

; <label>:9603                                    ; preds = %9528, %9524
  %9604 = phi float [ %9602, %9528 ], [ 1.000000e+00, %9524 ]
  %9605 = fmul fast float %9521, 5.000000e-01
  %9606 = fadd fast float %9605, 5.000000e-01
  %9607 = call float @dx.op.unary.f32(i32 22, float %9606)  ; Frc(value)
  %9608 = call float @dx.op.unary.f32(i32 27, float %9607)  ; Round_ni(value)
  %9609 = call float @dx.op.unary.f32(i32 22, float %9607)  ; Frc(value)
  %9610 = fmul fast float %9609, 2.000000e+00
  %9611 = fadd fast float %9610, -1.000000e+00
  %9612 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %43, float %9473, float %9474, float %9608, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9613 = extractvalue %dx.types.ResRet.f32 %9612, 0
  %9614 = extractvalue %dx.types.ResRet.f32 %9612, 1
  %9615 = extractvalue %dx.types.ResRet.f32 %9612, 2
  %9616 = extractvalue %dx.types.ResRet.f32 %9612, 3
  %9617 = fadd fast float %9613, -5.000000e-01
  %9618 = fadd fast float %9615, -5.000000e-01
  %9619 = fmul fast float %9617, 0xBFD5555560000000
  %9620 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9618, float %9619)  ; FMad(a,b,c)
  %9621 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9614, float 0.000000e+00)  ; FMad(a,b,c)
  %9622 = fadd fast float %9621, %9616
  %9623 = fmul fast float %9617, -7.500000e-01
  %9624 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9618, float %9623)  ; FMad(a,b,c)
  %9625 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9614, float 0.000000e+00)  ; FMad(a,b,c)
  %9626 = fadd fast float %9625, %9616
  %9627 = call float @dx.op.binary.f32(i32 35, float %9620, float -1.000000e+00)  ; FMax(a,b)
  %9628 = call float @dx.op.binary.f32(i32 35, float %9622, float -1.000000e+00)  ; FMax(a,b)
  %9629 = call float @dx.op.binary.f32(i32 35, float %9624, float -1.000000e+00)  ; FMax(a,b)
  %9630 = call float @dx.op.binary.f32(i32 35, float %9626, float -1.000000e+00)  ; FMax(a,b)
  %9631 = call float @dx.op.binary.f32(i32 36, float %9627, float 1.000000e+00)  ; FMin(a,b)
  %9632 = call float @dx.op.binary.f32(i32 36, float %9628, float 1.000000e+00)  ; FMin(a,b)
  %9633 = call float @dx.op.binary.f32(i32 36, float %9629, float 1.000000e+00)  ; FMin(a,b)
  %9634 = call float @dx.op.binary.f32(i32 36, float %9630, float 1.000000e+00)  ; FMin(a,b)
  %9635 = fcmp fast olt float %9631, 0x3FEFFF8020000000
  br i1 %9635, label %9636, label %9751, !dx.controlflow.hints !172

; <label>:9636                                    ; preds = %9603
  %9637 = extractvalue %dx.types.CBufRet.f32 %9519, 3
  %9638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9639 = extractvalue %dx.types.CBufRet.f32 %9638, 0
  %9640 = extractvalue %dx.types.CBufRet.f32 %9638, 1
  %9641 = extractvalue %dx.types.CBufRet.f32 %9638, 2
  %9642 = extractvalue %dx.types.CBufRet.f32 %9638, 3
  %9643 = fsub fast float %9639, %9631
  %9644 = fsub fast float %9640, %9632
  %9645 = fsub fast float %9641, %9633
  %9646 = fsub fast float %9642, %9634
  %9647 = fmul fast float %9643, %9637
  %9648 = fmul fast float %9644, %9637
  %9649 = fmul fast float %9645, %9637
  %9650 = fmul fast float %9646, %9637
  %9651 = fadd fast float %9647, %9631
  %9652 = fadd fast float %9648, %9632
  %9653 = fsub fast float -0.000000e+00, %9652
  %9654 = fadd fast float %9649, %9633
  %9655 = fadd fast float %9650, %9634
  %9656 = fmul fast float %9651, %9651
  %9657 = fsub fast float %9652, %9656
  %9658 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9657)  ; FMax(a,b)
  %9659 = fdiv fast float 1.000000e+00, %9658
  %9660 = fmul fast float %9652, %9651
  %9661 = fsub fast float %9654, %9660
  %9662 = fsub fast float %9611, %9651
  %9663 = fmul fast float %9611, %9611
  %9664 = fsub fast float %9663, %9652
  %9665 = fmul fast float %9662, %9659
  %9666 = fmul fast float %9665, %9661
  %9667 = fsub fast float %9664, %9666
  %9668 = fmul fast float %9652, %9652
  %9669 = fsub fast float %9655, %9668
  %9670 = fmul fast float %9661, %9661
  %9671 = fmul fast float %9670, %9659
  %9672 = fsub fast float %9669, %9671
  %9673 = fdiv fast float %9667, %9672
  %9674 = fmul fast float %9661, %9673
  %9675 = fsub fast float %9662, %9674
  %9676 = fmul fast float %9675, %9659
  %9677 = fmul fast float %9676, %9651
  %9678 = fsub fast float 1.000000e+00, %9677
  %9679 = fmul fast float %9652, %9673
  %9680 = fsub fast float %9678, %9679
  %9681 = fmul fast float %9676, %9676
  %9682 = fmul fast float %9673, 4.000000e+00
  %9683 = fmul fast float %9682, %9680
  %9684 = fsub fast float %9681, %9683
  %9685 = call float @dx.op.unary.f32(i32 24, float %9684)  ; Sqrt(value)
  %9686 = fcmp fast oge float %9676, 0.000000e+00
  %9687 = fsub fast float -0.000000e+00, %9685
  %9688 = select i1 %9686, float %9687, float %9685
  %9689 = fsub fast float %9688, %9676
  %9690 = fdiv fast float %9689, %9673
  %9691 = fdiv fast float %9680, %9689
  %9692 = fmul fast float %9690, 5.000000e-01
  %9693 = fmul fast float %9691, 2.000000e+00
  %9694 = select i1 %9686, float %9692, float %9693
  %9695 = select i1 %9686, float %9693, float %9692
  %9696 = call float @dx.op.binary.f32(i32 35, float %9694, float %9695)  ; FMax(a,b)
  %9697 = call float @dx.op.binary.f32(i32 36, float %9694, float %9695)  ; FMin(a,b)
  %9698 = fcmp fast ogt float %9611, %9697
  br i1 %9698, label %9699, label %9709

; <label>:9699                                    ; preds = %9636
  %9700 = fsub fast float %9611, %9697
  %9701 = fsub fast float %9696, %9697
  %9702 = fmul fast float %9700, %9701
  %9703 = fmul fast float %9696, %9611
  %9704 = fadd fast float %9696, %9611
  %9705 = fmul fast float %9704, %9651
  %9706 = fadd fast float %9703, %9652
  %9707 = fsub fast float %9706, %9705
  %9708 = fdiv fast float %9707, %9702
  br label %9709

; <label>:9709                                    ; preds = %9699, %9636
  %9710 = phi float [ %9708, %9699 ], [ 0.000000e+00, %9636 ]
  %9711 = fcmp fast ogt float %9611, %9696
  %9712 = fsub fast float %9611, %9696
  br i1 %9711, label %9713, label %9723

; <label>:9713                                    ; preds = %9709
  %9714 = fsub fast float %9696, %9697
  %9715 = fmul fast float %9714, %9712
  %9716 = fmul fast float %9697, %9611
  %9717 = fadd fast float %9697, %9611
  %9718 = fmul fast float %9717, %9651
  %9719 = fsub fast float %9653, %9716
  %9720 = fadd fast float %9719, %9718
  %9721 = fdiv fast float %9720, %9715
  %9722 = fadd fast float %9721, %9710
  br label %9723

; <label>:9723                                    ; preds = %9713, %9709
  %9724 = phi float [ %9722, %9713 ], [ %9710, %9709 ]
  %9725 = fsub fast float %9611, %9697
  %9726 = fmul fast float %9725, %9712
  %9727 = fmul fast float %9697, %9696
  %9728 = fadd fast float %9697, %9696
  %9729 = fmul fast float %9728, %9651
  %9730 = fadd fast float %9727, %9652
  %9731 = fsub fast float %9730, %9729
  %9732 = fdiv fast float %9731, %9726
  %9733 = call float @dx.op.unary.f32(i32 7, float %9724)  ; Saturate(value)
  %9734 = fcmp fast oeq float %8402, 0.000000e+00
  %9735 = extractvalue %dx.types.CBufRet.f32 %9519, 0
  %9736 = fcmp fast oeq float %9735, 0.000000e+00
  %9737 = or i1 %9734, %9736
  %9738 = fmul fast float %9735, 2.000000e+00
  %9739 = fadd fast float %9520, %9521
  %9740 = fdiv fast float %9739, %9738
  %9741 = call float @dx.op.unary.f32(i32 7, float %9740)  ; Saturate(value)
  %9742 = fmul fast float %9741, 2.000000e+00
  %9743 = fsub fast float 3.000000e+00, %9742
  %9744 = fmul fast float %9741, %9741
  %9745 = fmul fast float %9744, %9743
  %9746 = select i1 %9737, float 1.000000e+00, float %9745
  %9747 = fmul fast float %9732, %8402
  %9748 = fadd fast float %9733, %9747
  %9749 = call float @dx.op.unary.f32(i32 7, float %9748)  ; Saturate(value)
  %9750 = fmul fast float %9746, %9749
  br label %9751

; <label>:9751                                    ; preds = %9723, %9603
  %9752 = phi float [ %9750, %9723 ], [ 0.000000e+00, %9603 ]
  %9753 = fsub fast float 1.000000e+00, %9752
  %9754 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %43, float %9473, float %9474, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9755 = extractvalue %dx.types.ResRet.f32 %9754, 0
  %9756 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9757 = extractvalue %dx.types.CBufRet.i32 %9756, 2
  %9758 = icmp eq i32 %9757, 0
  br i1 %9758, label %9764, label %9759

; <label>:9759                                    ; preds = %9751
  %9760 = call float @dx.op.unary.f32(i32 7, float %9752)  ; Saturate(value)
  %9761 = fadd fast float %9755, -1.000000e+00
  %9762 = fmul fast float %9760, %9761
  %9763 = fadd fast float %9762, 1.000000e+00
  br label %9764

; <label>:9764                                    ; preds = %9759, %9751
  %9765 = phi float [ %9763, %9759 ], [ %9753, %9751 ]
  br i1 %9527, label %9766, label %9784

; <label>:9766                                    ; preds = %9764
  %9767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9768 = extractvalue %dx.types.CBufRet.f32 %9767, 1
  %9769 = fsub fast float %9604, %9768
  %9770 = call float @dx.op.unary.f32(i32 7, float %9769)  ; Saturate(value)
  %9771 = fsub fast float %9604, %9526
  %9772 = call float @dx.op.unary.f32(i32 7, float %9771)  ; Saturate(value)
  %9773 = fsub fast float %9770, %9772
  %9774 = fsub fast float %9606, %9772
  %9775 = fdiv fast float %9774, %9773
  %9776 = call float @dx.op.unary.f32(i32 7, float %9775)  ; Saturate(value)
  %9777 = fmul fast float %9776, 2.000000e+00
  %9778 = fsub fast float 3.000000e+00, %9777
  %9779 = fsub fast float %9755, %9765
  %9780 = fmul fast float %9776, %9776
  %9781 = fmul fast float %9780, %9779
  %9782 = fmul fast float %9781, %9778
  %9783 = fadd fast float %9782, %9765
  br label %9784

; <label>:9784                                    ; preds = %9766, %9764
  %9785 = phi float [ %9783, %9766 ], [ %9765, %9764 ]
  %9786 = call float @dx.op.binary.f32(i32 35, float %9755, float %9785)  ; FMax(a,b)
  %9787 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9788 = extractvalue %dx.types.CBufRet.i32 %9787, 2
  %9789 = and i32 %9788, 1
  %9790 = icmp eq i32 %9789, 0
  %9791 = fcmp fast une float %9786, 1.000000e+00
  %9792 = and i1 %9791, %9790
  br i1 %9792, label %9793, label %9812

; <label>:9793                                    ; preds = %9784
  %9794 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %43, float %9473, float %9474, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9795 = extractvalue %dx.types.ResRet.f32 %9794, 0
  %9796 = extractvalue %dx.types.ResRet.f32 %9794, 1
  %9797 = extractvalue %dx.types.ResRet.f32 %9794, 2
  %9798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9799 = extractvalue %dx.types.CBufRet.f32 %9798, 1
  %9800 = fmul fast float %9799, %9795
  %9801 = fmul fast float %9799, %9796
  %9802 = fmul fast float %9799, %9797
  %9803 = fcmp fast ogt float %9755, 0x3FEFFF2E40000000
  %9804 = fsub fast float 1.000000e+00, %9786
  %9805 = fsub fast float 1.000000e+00, %9755
  %9806 = fdiv fast float %9804, %9805
  %9807 = call float @dx.op.unary.f32(i32 7, float %9806)  ; Saturate(value)
  %9808 = select i1 %9803, float 0.000000e+00, float %9807
  %9809 = fmul fast float %9800, %9808
  %9810 = fmul fast float %9801, %9808
  %9811 = fmul fast float %9802, %9808
  br label %9812

; <label>:9812                                    ; preds = %9793, %9784
  %9813 = phi float [ 0.000000e+00, %9784 ], [ %9809, %9793 ]
  %9814 = phi float [ 0.000000e+00, %9784 ], [ %9810, %9793 ]
  %9815 = phi float [ 0.000000e+00, %9784 ], [ %9811, %9793 ]
  %9816 = fmul fast float %9813, %8398
  %9817 = fmul fast float %9814, %8399
  %9818 = fmul fast float %9815, %8400
  %9819 = fmul fast float %9786, %9448
  %9820 = call float @dx.op.dot3.f32(i32 55, float %9786, float %9786, float %9786, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9821 = call float @dx.op.dot3.f32(i32 55, float %9816, float %9817, float %9818, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9822 = select i1 %294, float %9820, float %9786
  %9823 = select i1 %294, float 1.000000e+00, float %9786
  %9824 = select i1 %294, float %9821, float %9816
  %9825 = select i1 %294, float 0.000000e+00, float %9817
  %9826 = select i1 %294, float 0.000000e+00, float %9818
  %9827 = fmul fast float %9822, %9460
  %9828 = fmul fast float %9822, %9461
  %9829 = fmul fast float %9823, %9462
  %9830 = fadd fast float %9827, %9824
  %9831 = fadd fast float %9828, %9825
  %9832 = fadd fast float %9826, %9829
  %9833 = fmul fast float %9822, %9463
  %9834 = fmul fast float %9822, %9464
  %9835 = fmul fast float %9823, %9465
  br label %9836

; <label>:9836                                    ; preds = %9812, %9469, %9438, %8670
  %9837 = phi float [ %8675, %8670 ], [ %9460, %9438 ], [ %9830, %9812 ], [ %9460, %9469 ]
  %9838 = phi float [ %8676, %8670 ], [ %9461, %9438 ], [ %9831, %9812 ], [ %9461, %9469 ]
  %9839 = phi float [ %8677, %8670 ], [ %9462, %9438 ], [ %9832, %9812 ], [ %9462, %9469 ]
  %9840 = phi float [ %8678, %8670 ], [ %9463, %9438 ], [ %9833, %9812 ], [ %9463, %9469 ]
  %9841 = phi float [ %8679, %8670 ], [ %9464, %9438 ], [ %9834, %9812 ], [ %9464, %9469 ]
  %9842 = phi float [ %8680, %8670 ], [ %9465, %9438 ], [ %9835, %9812 ], [ %9465, %9469 ]
  %9843 = phi float [ %8681, %8670 ], [ %9448, %9438 ], [ %9819, %9812 ], [ %9448, %9469 ]
  %9844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9845 = extractvalue %dx.types.CBufRet.f32 %9844, 2
  %9846 = extractvalue %dx.types.CBufRet.f32 %9844, 3
  %9847 = fmul fast float %9845, %109
  %9848 = fmul fast float %9846, %110
  %9849 = call float @dx.op.unary.f32(i32 7, float %9847)  ; Saturate(value)
  %9850 = call float @dx.op.unary.f32(i32 7, float %9848)  ; Saturate(value)
  %9851 = select i1 %8412, i32 2, i32 0
  %9852 = or i32 %9851, 1
  %9853 = uitofp i32 %9852 to float
  %9854 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %9849, float %9850, float %9853, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9855 = extractvalue %dx.types.ResRet.f32 %9854, 0
  %9856 = extractvalue %dx.types.ResRet.f32 %9854, 1
  %9857 = extractvalue %dx.types.ResRet.f32 %9854, 2
  %9858 = extractvalue %dx.types.ResRet.f32 %9854, 3
  %9859 = add nuw nsw i32 %9851, 2
  %9860 = uitofp i32 %9859 to float
  %9861 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %9849, float %9850, float %9860, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9862 = extractvalue %dx.types.ResRet.f32 %9861, 0
  %9863 = extractvalue %dx.types.ResRet.f32 %9861, 1
  %9864 = extractvalue %dx.types.ResRet.f32 %9861, 2
  %9865 = extractvalue %dx.types.ResRet.f32 %9861, 3
  %9866 = call float @dx.op.binary.f32(i32 35, float %9856, float %9857)  ; FMax(a,b)
  %9867 = call float @dx.op.binary.f32(i32 35, float %9855, float %9866)  ; FMax(a,b)
  %9868 = call float @dx.op.binary.f32(i32 35, float %9867, float %9858)  ; FMax(a,b)
  %9869 = call float @dx.op.binary.f32(i32 36, float %9863, float %9864)  ; FMin(a,b)
  %9870 = call float @dx.op.binary.f32(i32 36, float %9862, float %9869)  ; FMin(a,b)
  %9871 = call float @dx.op.binary.f32(i32 36, float %9870, float %9865)  ; FMin(a,b)
  %9872 = fmul fast float %9868, 2.550000e+02
  %9873 = fadd fast float %9872, 0x3F70101020000000
  %9874 = fptoui float %9873 to i32
  %9875 = fmul fast float %9871, 2.550000e+02
  %9876 = fadd fast float %9875, 0x3F70101020000000
  %9877 = fptoui float %9876 to i32
  %9878 = icmp ult i32 %9874, %9877
  br i1 %9878, label %9879, label %10048

; <label>:9879                                    ; preds = %9836
  %9880 = fcmp fast ogt float %95, 9.843750e-01
  %9881 = fadd fast float %8674, -4.000000e+00
  %9882 = select i1 %9880, float -4.000000e+00, float %9881
  %9883 = call float @dx.op.binary.f32(i32 35, float %9882, float 0.000000e+00)  ; FMax(a,b)
  %9884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9885 = extractvalue %dx.types.CBufRet.f32 %9884, 0
  %9886 = fadd fast float %9885, %9883
  %9887 = extractvalue %dx.types.CBufRet.f32 %9884, 2
  %9888 = fmul fast float %9886, %9887
  %9889 = call float @dx.op.unary.f32(i32 23, float %9888)  ; Log(value)
  %9890 = extractvalue %dx.types.CBufRet.f32 %9884, 3
  %9891 = fmul fast float %9890, %9889
  %9892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9893 = extractvalue %dx.types.CBufRet.f32 %9892, 2
  %9894 = fmul fast float %9891, %9893
  %9895 = call float @dx.op.unary.f32(i32 7, float %9894)  ; Saturate(value)
  %9896 = uitofp i32 %9874 to float
  %9897 = uitofp i32 %9877 to float
  %9898 = fadd fast float %9896, 5.000000e-01
  %9899 = fadd fast float %9897, 5.000000e-01
  %9900 = fmul fast float %9893, %9898
  %9901 = fmul fast float %9893, %9899
  %9902 = fadd fast float %9900, 0x3F0FFB4800000000
  %9903 = fadd fast float %9901, 0xBF0FFB4800000000
  %9904 = call float @dx.op.binary.f32(i32 35, float %9895, float %9902)  ; FMax(a,b)
  %9905 = call float @dx.op.binary.f32(i32 36, float %9904, float %9903)  ; FMin(a,b)
  %9906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9907 = extractvalue %dx.types.CBufRet.f32 %9906, 1
  %9908 = extractvalue %dx.types.CBufRet.f32 %9906, 2
  %9909 = extractvalue %dx.types.CBufRet.f32 %9906, 0
  %9910 = select i1 %8412, float %9909, float 0.000000e+00
  %9911 = fmul fast float %9907, %9905
  %9912 = fadd fast float %9910, %9911
  %9913 = fadd fast float %9910, %9908
  %9914 = fsub fast float %9907, %9908
  %9915 = fadd fast float %9914, %9910
  %9916 = call float @dx.op.binary.f32(i32 35, float %9912, float %9913)  ; FMax(a,b)
  %9917 = call float @dx.op.binary.f32(i32 36, float %9916, float %9915)  ; FMin(a,b)
  %9918 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %41, float %9849, float %9850, float %9917, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9919 = extractvalue %dx.types.ResRet.f32 %9918, 0
  %9920 = extractvalue %dx.types.ResRet.f32 %9918, 1
  %9921 = extractvalue %dx.types.ResRet.f32 %9918, 2
  %9922 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9923 = extractvalue %dx.types.CBufRet.i32 %9922, 0
  %9924 = extractvalue %dx.types.CBufRet.i32 %9922, 1
  %9925 = uitofp i32 %9923 to float
  %9926 = uitofp i32 %9924 to float
  %9927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9928 = extractvalue %dx.types.CBufRet.f32 %9927, 0
  %9929 = extractvalue %dx.types.CBufRet.f32 %9927, 1
  %9930 = fmul fast float %9925, %9849
  %9931 = fmul fast float %9926, %9850
  %9932 = fadd fast float %9930, -5.000000e-01
  %9933 = fadd fast float %9931, -5.000000e-01
  %9934 = call float @dx.op.unary.f32(i32 22, float %9932)  ; Frc(value)
  %9935 = call float @dx.op.unary.f32(i32 22, float %9933)  ; Frc(value)
  %9936 = fmul fast float %9934, %9934
  %9937 = fmul fast float %9936, %9934
  %9938 = fsub fast float 3.000000e+00, %9934
  %9939 = fmul fast float %9936, %9938
  %9940 = fmul fast float %9934, 3.000000e+00
  %9941 = fmul fast float %9937, 3.000000e+00
  %9942 = fmul fast float %9936, 6.000000e+00
  %9943 = fsub fast float %9941, %9942
  %9944 = fadd fast float %9943, 4.000000e+00
  %9945 = fmul fast float %9944, 0x3FC5555560000000
  %9946 = fmul fast float %9937, -3.000000e+00
  %9947 = fadd fast float %9936, %9934
  %9948 = fmul fast float %9947, 3.000000e+00
  %9949 = fadd fast float %9946, 1.000000e+00
  %9950 = fadd fast float %9949, %9948
  %9951 = fmul fast float %9937, 0x3FC5555560000000
  %9952 = fmul fast float %9935, %9935
  %9953 = fmul fast float %9952, %9935
  %9954 = fsub fast float 3.000000e+00, %9935
  %9955 = fmul fast float %9952, %9954
  %9956 = fmul fast float %9935, 3.000000e+00
  %9957 = fmul fast float %9953, 3.000000e+00
  %9958 = fmul fast float %9952, 6.000000e+00
  %9959 = fsub fast float %9957, %9958
  %9960 = fadd fast float %9959, 4.000000e+00
  %9961 = fmul fast float %9960, 0x3FC5555560000000
  %9962 = fmul fast float %9953, -3.000000e+00
  %9963 = fadd fast float %9952, %9935
  %9964 = fmul fast float %9963, 3.000000e+00
  %9965 = fadd fast float %9962, 1.000000e+00
  %9966 = fadd fast float %9965, %9964
  %9967 = fmul fast float %9953, 0x3FC5555560000000
  %9968 = fadd fast float %9934, 1.000000e+00
  %9969 = fsub fast float 1.000000e+00, %9940
  %9970 = fadd fast float %9969, %9939
  %9971 = fadd fast float %9970, %9944
  %9972 = fmul fast float %9971, 0x3FC5555560000000
  %9973 = fdiv fast float %9945, %9972
  %9974 = fsub fast float %9968, %9973
  %9975 = fsub fast float 1.000000e+00, %9934
  %9976 = fadd fast float %9950, %9937
  %9977 = fmul fast float %9976, 0x3FC5555560000000
  %9978 = fdiv fast float %9951, %9977
  %9979 = fadd fast float %9975, %9978
  %9980 = fadd fast float %9935, 1.000000e+00
  %9981 = fsub fast float 1.000000e+00, %9956
  %9982 = fadd fast float %9981, %9955
  %9983 = fadd fast float %9982, %9960
  %9984 = fmul fast float %9983, 0x3FC5555560000000
  %9985 = fdiv fast float %9961, %9984
  %9986 = fsub fast float %9980, %9985
  %9987 = fsub fast float 1.000000e+00, %9935
  %9988 = fadd fast float %9966, %9953
  %9989 = fmul fast float %9988, 0x3FC5555560000000
  %9990 = fdiv fast float %9967, %9989
  %9991 = fadd fast float %9990, %9987
  %9992 = fmul fast float %9974, %9928
  %9993 = fsub fast float %9849, %9992
  %9994 = fmul fast float %9979, %9928
  %9995 = fadd fast float %9994, %9849
  %9996 = fmul fast float %9991, %9929
  %9997 = fadd fast float %9996, %9850
  %9998 = fmul fast float %9986, %9929
  %9999 = fsub fast float %9850, %9998
  %10000 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %9993, float %9999, float %9917, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10001 = extractvalue %dx.types.ResRet.f32 %10000, 0
  %10002 = extractvalue %dx.types.ResRet.f32 %10000, 1
  %10003 = extractvalue %dx.types.ResRet.f32 %10000, 2
  %10004 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %9995, float %9999, float %9917, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10005 = extractvalue %dx.types.ResRet.f32 %10004, 0
  %10006 = extractvalue %dx.types.ResRet.f32 %10004, 1
  %10007 = extractvalue %dx.types.ResRet.f32 %10004, 2
  %10008 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %9993, float %9997, float %9917, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10009 = extractvalue %dx.types.ResRet.f32 %10008, 0
  %10010 = extractvalue %dx.types.ResRet.f32 %10008, 1
  %10011 = extractvalue %dx.types.ResRet.f32 %10008, 2
  %10012 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %9995, float %9997, float %9917, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10013 = extractvalue %dx.types.ResRet.f32 %10012, 0
  %10014 = extractvalue %dx.types.ResRet.f32 %10012, 1
  %10015 = extractvalue %dx.types.ResRet.f32 %10012, 2
  %10016 = fsub fast float %10009, %10001
  %10017 = fsub fast float %10010, %10002
  %10018 = fsub fast float %10011, %10003
  %10019 = fmul fast float %10016, %9989
  %10020 = fmul fast float %10017, %9989
  %10021 = fmul fast float %10018, %9989
  %10022 = fadd fast float %10019, %10001
  %10023 = fadd fast float %10020, %10002
  %10024 = fadd fast float %10021, %10003
  %10025 = fsub fast float %10013, %10005
  %10026 = fsub fast float %10014, %10006
  %10027 = fsub fast float %10015, %10007
  %10028 = fmul fast float %10025, %9989
  %10029 = fmul fast float %10026, %9989
  %10030 = fmul fast float %10027, %9989
  %10031 = fsub fast float %10005, %10022
  %10032 = fadd fast float %10031, %10028
  %10033 = fsub fast float %10006, %10023
  %10034 = fadd fast float %10033, %10029
  %10035 = fsub fast float %10007, %10024
  %10036 = fadd fast float %10035, %10030
  %10037 = fmul fast float %10032, %9977
  %10038 = fmul fast float %10034, %9977
  %10039 = fmul fast float %10036, %9977
  %10040 = fadd fast float %10037, %10022
  %10041 = fadd fast float %10038, %10023
  %10042 = fadd fast float %10039, %10024
  %10043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10044 = extractvalue %dx.types.CBufRet.f32 %10043, 1
  %10045 = fmul fast float %10040, %10044
  %10046 = fmul fast float %10041, %10044
  %10047 = fmul fast float %10042, %10044
  br label %10048

; <label>:10048                                   ; preds = %9879, %9836
  %10049 = phi float [ %9919, %9879 ], [ 1.000000e+00, %9836 ]
  %10050 = phi float [ %9920, %9879 ], [ 1.000000e+00, %9836 ]
  %10051 = phi float [ %9921, %9879 ], [ 1.000000e+00, %9836 ]
  %10052 = phi float [ %10045, %9879 ], [ 0.000000e+00, %9836 ]
  %10053 = phi float [ %10046, %9879 ], [ 0.000000e+00, %9836 ]
  %10054 = phi float [ %10047, %9879 ], [ 0.000000e+00, %9836 ]
  %10055 = fmul fast float %10052, %8398
  %10056 = fmul fast float %10053, %8399
  %10057 = fmul fast float %10054, %8400
  %10058 = fmul fast float %10049, %9843
  %10059 = call float @dx.op.dot3.f32(i32 55, float %10049, float %10050, float %10051, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10060 = call float @dx.op.dot3.f32(i32 55, float %10055, float %10056, float %10057, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10061 = select i1 %294, float %10059, float %10049
  %10062 = select i1 %294, float %10059, float %10050
  %10063 = select i1 %294, float 1.000000e+00, float %10051
  %10064 = select i1 %294, float %10060, float %10055
  %10065 = select i1 %294, float 0.000000e+00, float %10056
  %10066 = select i1 %294, float 0.000000e+00, float %10057
  %10067 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10068 = extractvalue %dx.types.CBufRet.i32 %10067, 3
  %10069 = and i32 %10068, 3
  %10070 = icmp ne i32 %10069, 0
  %10071 = and i32 %10068, 4
  %10072 = icmp ne i32 %10071, 0
  %10073 = and i1 %10070, %10072
  %10074 = and i1 %294, %10073
  br i1 %10074, label %10075, label %10081

; <label>:10075                                   ; preds = %10048
  %10076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10077 = extractvalue %dx.types.CBufRet.f32 %10076, 1
  %10078 = fadd fast float %10058, -1.000000e+00
  %10079 = fmul fast float %10077, %10078
  %10080 = fadd fast float %10079, 1.000000e+00
  br label %10081

; <label>:10081                                   ; preds = %10075, %10048
  %10082 = phi float [ %10080, %10075 ], [ %10058, %10048 ]
  %10083 = fadd fast float %9840, %9837
  %10084 = fmul fast float %10061, %10083
  %10085 = fadd fast float %10084, %10064
  %10086 = fadd fast float %9841, %9838
  %10087 = fmul fast float %10062, %10086
  %10088 = fadd fast float %10087, %10065
  %10089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10090 = extractvalue %dx.types.CBufRet.f32 %10089, 0
  br i1 %294, label %10091, label %10106

; <label>:10091                                   ; preds = %10081
  %10092 = fadd fast float %10085, %10088
  %10093 = fmul fast float %10090, %10092
  %10094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10095 = extractvalue %dx.types.CBufRet.f32 %10094, 3
  %10096 = extractvalue %dx.types.CBufRet.f32 %8382, 1
  %10097 = fsub fast float %8387, %8381
  %10098 = fadd fast float %10097, %8388
  %10099 = fsub fast float %10098, %10096
  %10100 = extractvalue %dx.types.CBufRet.f32 %8382, 2
  %10101 = fmul fast float %10099, %10100
  %10102 = call float @dx.op.unary.f32(i32 7, float %10101)  ; Saturate(value)
  %10103 = fsub fast float %10102, %10095
  %10104 = fmul fast float %10103, %10082
  %10105 = fadd fast float %10104, %10095
  br label %10132

; <label>:10106                                   ; preds = %10081
  %10107 = fadd fast float %9842, %9839
  %10108 = fmul fast float %10063, %10107
  %10109 = fadd fast float %10108, %10066
  %10110 = fmul fast float %10090, %10085
  %10111 = fmul fast float %10090, %10088
  %10112 = fmul fast float %10090, %10109
  %10113 = call float @dx.op.binary.f32(i32 35, float %10111, float %10112)  ; FMax(a,b)
  %10114 = call float @dx.op.binary.f32(i32 35, float %10110, float %10113)  ; FMax(a,b)
  %10115 = call float @dx.op.binary.f32(i32 35, float %8399, float %8400)  ; FMax(a,b)
  %10116 = call float @dx.op.binary.f32(i32 35, float %8398, float %10115)  ; FMax(a,b)
  %10117 = call float @dx.op.binary.f32(i32 35, float %10114, float %10116)  ; FMax(a,b)
  %10118 = fcmp fast ugt float %10117, 0x3F10000000000000
  br i1 %10118, label %10120, label %10119

; <label>:10119                                   ; preds = %10106
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10120

; <label>:10120                                   ; preds = %10119, %10106
  %10121 = add i32 %49, 356
  %10122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %10121, i32 undef)  ; BufferLoad(srv,index,wot)
  %10123 = extractvalue %dx.types.ResRet.i32 %10122, 0
  %10124 = and i32 %10123, 32
  %10125 = icmp eq i32 %10124, 0
  br i1 %10125, label %10132, label %10126

; <label>:10126                                   ; preds = %10120
  %10127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10128 = extractvalue %dx.types.CBufRet.f32 %10127, 0
  %10129 = fmul fast float %10128, 0x3FE99999A0000000
  %10130 = fadd fast float %10128, %10110
  %10131 = fadd fast float %10129, %10112
  br label %10132

; <label>:10132                                   ; preds = %10126, %10120, %10091
  %10133 = phi float [ 1.000000e+00, %10091 ], [ %8399, %10126 ], [ %8399, %10120 ]
  %10134 = phi float [ 1.000000e+00, %10091 ], [ %8400, %10126 ], [ %8400, %10120 ]
  %10135 = phi float [ %10093, %10091 ], [ %10130, %10126 ], [ %10110, %10120 ]
  %10136 = phi float [ %10105, %10091 ], [ %10111, %10126 ], [ %10111, %10120 ]
  %10137 = phi float [ 1.000000e+00, %10091 ], [ %10131, %10126 ], [ %10112, %10120 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10138 = call float @dx.op.binary.f32(i32 36, float %10135, float 3.225500e+04)  ; FMin(a,b)
  %10139 = call float @dx.op.binary.f32(i32 36, float %10136, float 3.225500e+04)  ; FMin(a,b)
  %10140 = call float @dx.op.binary.f32(i32 36, float %10137, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10138)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10139)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10140)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10141 = call float @dx.op.binary.f32(i32 36, float %8398, float 3.225500e+04)  ; FMin(a,b)
  %10142 = call float @dx.op.binary.f32(i32 36, float %10133, float 3.225500e+04)  ; FMin(a,b)
  %10143 = call float @dx.op.binary.f32(i32 36, float %10134, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %10141)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %10142)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %10143)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

