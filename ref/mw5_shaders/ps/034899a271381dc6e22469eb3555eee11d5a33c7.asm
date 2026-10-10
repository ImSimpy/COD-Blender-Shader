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
; AMBIENT_COLOR            0   xyz         5     NONE   float   xyz 
; HIGHLIGHT_DIR_VIS        0   xyzw        6     NONE   float   xyzw
; WGV_TEXCOORD             0   xyz         7     NONE   float   xyz 
; WGV_NORMAL               0   xyzw        8     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          9     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw       10     NONE   float   xyzw
; OBJECT_POSITION          0   xyzw       11     NONE   float   xyz 
; DECAL_VOLUME_GRID_INDEX     0   x          12     NONE    uint   x   
; ENTITY_IDS               0    yz        12     NONE    uint     z 
; PACKED_TRI_DATA          0   xyzw       13     NONE    uint   x   
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
; shader hash: c1b6838573296aa42b70ac84f701f00e
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
; AMBIENT_COLOR            0                 linear       
; HIGHLIGHT_DIR_VIS        0                 linear       
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
;                                   texture    byte         r/o      T2      t9,space1     1
;                                   texture    byte         r/o      T3     t37,space1     1
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
; Number of inputs: 56, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 50, 52 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 50, 52 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 50, 52 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 50, 52 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 50, 52 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 50, 52 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 50, 52 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 50, 52 }
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
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %50 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = alloca [12 x float], align 4
  %93 = alloca [12 x float], align 4
  %94 = alloca [4 x float], align 4
  %95 = alloca [4 x float], align 4
  %96 = alloca [4 x float], align 4
  %97 = alloca [4 x float], align 4
  %98 = alloca [3 x float], align 4
  %99 = alloca [3 x float], align 4
  %100 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %101 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 0
  %104 = fmul fast float %103, %88
  %105 = fmul fast float %103, %89
  %106 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %107 = bitcast float %106 to i32
  %108 = ashr i32 %107, 1
  %109 = sub nsw i32 1597250115, %108
  %110 = bitcast i32 %109 to float
  %111 = fmul fast float %110, %79
  %112 = fmul fast float %110, %80
  %113 = fmul fast float %110, %81
  %114 = fmul fast float %80, %77
  %115 = fmul fast float %81, %76
  %116 = fsub fast float %114, %115
  %117 = fmul fast float %81, %75
  %118 = fmul fast float %79, %77
  %119 = fsub fast float %117, %118
  %120 = fmul fast float %79, %76
  %121 = fmul fast float %80, %75
  %122 = fsub fast float %120, %121
  %123 = fmul fast float %116, %78
  %124 = fmul fast float %119, %78
  %125 = fmul fast float %122, %78
  %126 = call float @dx.op.dot3.f32(i32 55, float %68, float %69, float %70, float %68, float %69, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %127 = bitcast float %126 to i32
  %128 = ashr i32 %127, 1
  %129 = sub nsw i32 1597250115, %128
  %130 = bitcast i32 %129 to float
  %131 = fmul fast float %130, %68
  %132 = fmul fast float %130, %69
  %133 = fmul fast float %130, %70
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 0
  %136 = fcmp fast une float %135, 0.000000e+00
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 3
  %140 = fmul fast float %104, 2.000000e+00
  %141 = fmul fast float %140, %138
  %142 = fmul fast float %105, 2.000000e+00
  %143 = fmul fast float %142, %139
  %144 = fsub fast float 1.000000e+00, %141
  %145 = fsub fast float 1.000000e+00, %143
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 0
  %148 = extractvalue %dx.types.CBufRet.f32 %146, 1
  %149 = extractvalue %dx.types.CBufRet.f32 %146, 2
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 0
  %152 = extractvalue %dx.types.CBufRet.f32 %150, 1
  %153 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %154 = select i1 %136, float %147, float %151
  %155 = select i1 %136, float %148, float %152
  %156 = select i1 %136, float %149, float %153
  %157 = fmul fast float %154, %144
  %158 = fmul fast float %155, %144
  %159 = fmul fast float %156, %144
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.f32 %160, 0
  %162 = extractvalue %dx.types.CBufRet.f32 %160, 1
  %163 = extractvalue %dx.types.CBufRet.f32 %160, 2
  %164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.f32 %164, 0
  %166 = extractvalue %dx.types.CBufRet.f32 %164, 1
  %167 = extractvalue %dx.types.CBufRet.f32 %164, 2
  %168 = select i1 %136, float %161, float %165
  %169 = select i1 %136, float %162, float %166
  %170 = select i1 %136, float %163, float %167
  %171 = fmul fast float %168, %145
  %172 = fmul fast float %169, %145
  %173 = fmul fast float %170, %145
  %174 = fadd fast float %171, %157
  %175 = fadd fast float %172, %158
  %176 = fadd fast float %173, %159
  %177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %178 = extractvalue %dx.types.CBufRet.f32 %177, 0
  %179 = extractvalue %dx.types.CBufRet.f32 %177, 1
  %180 = extractvalue %dx.types.CBufRet.f32 %177, 2
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 0
  %183 = extractvalue %dx.types.CBufRet.f32 %181, 1
  %184 = extractvalue %dx.types.CBufRet.f32 %181, 2
  %185 = select i1 %136, float %178, float %182
  %186 = select i1 %136, float %179, float %183
  %187 = select i1 %136, float %180, float %184
  %188 = fadd fast float %174, %185
  %189 = fadd fast float %175, %186
  %190 = fadd fast float %176, %187
  %191 = fmul fast float %188, %91
  %192 = fmul fast float %189, %91
  %193 = fmul fast float %190, %91
  %194 = fmul fast float %104, 5.000000e-01
  %195 = fmul fast float %105, 5.000000e-01
  %196 = fptosi float %194 to i32
  %197 = fptosi float %195 to i32
  %198 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %21, i32 0, i32 %196, i32 %197, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %199 = extractvalue %dx.types.ResRet.i32 %198, 0
  %200 = lshr i32 %199, 18
  %201 = uitofp i32 %200 to float
  %202 = fmul fast float %201, 0x3F4C00EBA0000000
  %203 = call float @dx.op.unary.f32(i32 21, float %202)  ; Exp(value)
  %204 = fadd fast float %203, -1.000000e+00
  %205 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %21, i32 0)  ; GetDimensions(handle,mipLevel)
  %206 = extractvalue %dx.types.Dimensions %205, 0
  %207 = sitofp i32 %206 to float
  %208 = extractvalue %dx.types.Dimensions %205, 1
  %209 = sitofp i32 %208 to float
  %210 = fcmp fast oge float %194, %207
  %211 = fcmp fast oge float %195, %209
  %212 = or i1 %210, %211
  %213 = select i1 %212, float 0x4197782600000000, float %204
  %214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %215 = extractvalue %dx.types.CBufRet.f32 %214, 2
  %216 = extractvalue %dx.types.CBufRet.f32 %214, 3
  %217 = fmul fast float %215, %104
  %218 = fmul fast float %216, %105
  %219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %220 = extractvalue %dx.types.ResRet.i32 %219, 0
  %221 = and i32 %220, 114688
  %222 = icmp ne i32 %221, 0
  %223 = select i1 %222, float %217, float 0.000000e+00
  %224 = select i1 %222, float %218, float 0.000000e+00
  %225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %223, float %224, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %226 = extractvalue %dx.types.ResRet.f32 %225, 0
  %227 = fmul fast float %226, 2.550000e+02
  %228 = fptoui float %227 to i32
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %231 = extractvalue %dx.types.CBufRet.i32 %230, 3
  %232 = and i32 %231, 3
  %233 = icmp ne i32 %232, 0
  %234 = and i32 %231, 4
  %235 = icmp ne i32 %234, 0
  %236 = and i1 %233, %235
  br i1 %236, label %237, label %248

; <label>:237                                     ; preds = %0
  %238 = extractvalue %dx.types.CBufRet.f32 %229, 3
  %239 = fmul fast float %238, %105
  %240 = extractvalue %dx.types.CBufRet.f32 %229, 2
  %241 = fmul fast float %240, %104
  %242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %43, float %241, float %239, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %243 = extractvalue %dx.types.ResRet.f32 %242, 0
  %244 = fsub fast float 1.000000e+00, %243
  %245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %246 = extractvalue %dx.types.CBufRet.f32 %245, 0
  %247 = fcmp fast olt float %244, %246
  br label %251

; <label>:248                                     ; preds = %0
  %249 = icmp eq i32 %234, 0
  %250 = and i1 %233, %249
  br label %251

; <label>:251                                     ; preds = %248, %237
  %252 = phi i1 [ %247, %237 ], [ %250, %248 ]
  %253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.f32 %253, 2
  %255 = fmul fast float %254, 0x3FE3C6EF40000000
  %256 = frem fast float %104, 2.560000e+02
  %257 = frem fast float %105, 2.560000e+02
  %258 = fptoui float %256 to i32
  %259 = fptoui float %257 to i32
  %260 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %258, i32 %259, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %261 = extractvalue %dx.types.ResRet.f32 %260, 0
  %262 = fadd fast float %261, %255
  %263 = call float @dx.op.unary.f32(i32 22, float %262)  ; Frc(value)
  %264 = add i32 %49, 156
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.i32 %265, 0
  %267 = shl i32 %266, 4
  %268 = and i32 %267, 32752
  %269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %268)  ; LegacyF16ToF32(value)
  %270 = lshr i32 %266, 7
  %271 = and i32 %270, 32752
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = lshr i32 %266, 22
  %274 = shl nuw nsw i32 %273, 5
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = add i32 %49, 216
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.i32 %277, 0
  %279 = and i32 %278, 255
  %280 = uitofp i32 %279 to float
  %281 = fmul fast float %280, 0x3F70101020000000
  %282 = lshr i32 %278, 8
  %283 = and i32 %282, 255
  %284 = uitofp i32 %283 to float
  %285 = fmul fast float %284, 0x3F70101020000000
  %286 = lshr i32 %278, 16
  %287 = and i32 %286, 255
  %288 = uitofp i32 %287 to float
  %289 = fmul fast float %288, 0x3F70101020000000
  %290 = add i32 %49, 36
  %291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.i32 %291, 0
  %293 = and i32 %292, 65535
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = lshr i32 %292, 16
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = add i32 %49, 288
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = and i32 %299, 65535
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = lshr i32 %299, 16
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = fmul fast float %301, 0x3F50624DE0000000
  %305 = fmul fast float %303, 0x3F50624DE0000000
  %306 = mul i32 %50, 100
  %307 = add i32 %306, 28
  %308 = add i32 %306, 40
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = add i32 %49, 172
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = shl i32 %313, 4
  %315 = and i32 %314, 32752
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = lshr i32 %313, 7
  %318 = and i32 %317, 32752
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = lshr i32 %313, 22
  %321 = shl nuw nsw i32 %320, 5
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = add i32 %49, 232
  %324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.i32 %324, 0
  %326 = and i32 %325, 255
  %327 = uitofp i32 %326 to float
  %328 = fmul fast float %327, 0x3F70101020000000
  %329 = lshr i32 %325, 8
  %330 = and i32 %329, 255
  %331 = uitofp i32 %330 to float
  %332 = fmul fast float %331, 0x3F70101020000000
  %333 = lshr i32 %325, 16
  %334 = and i32 %333, 255
  %335 = uitofp i32 %334 to float
  %336 = fmul fast float %335, 0x3F70101020000000
  %337 = add i32 %49, 52
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = and i32 %339, 65535
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = lshr i32 %339, 16
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = add i32 %49, 304
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = and i32 %346, 65535
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = lshr i32 %346, 16
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %362 = and i32 %310, 1
  %363 = icmp ne i32 %362, 0
  %364 = select i1 %363, float %355, float %316
  %365 = select i1 %363, float %358, float %319
  %366 = select i1 %363, float %361, float %322
  %367 = add i32 %306, 44
  %368 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.f32 %368, 0
  %370 = fmul fast float %369, %364
  %371 = fmul fast float %369, %365
  %372 = fmul fast float %369, %366
  %373 = add i32 %306, 48
  %374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.i32 %374, 0
  %376 = shl i32 %375, 4
  %377 = and i32 %376, 32752
  %378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %377)  ; LegacyF16ToF32(value)
  %379 = lshr i32 %375, 7
  %380 = and i32 %379, 32752
  %381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %380)  ; LegacyF16ToF32(value)
  %382 = lshr i32 %375, 22
  %383 = shl nuw nsw i32 %382, 5
  %384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %383)  ; LegacyF16ToF32(value)
  %385 = and i32 %310, 8
  %386 = icmp ne i32 %385, 0
  %387 = select i1 %386, float %378, float %328
  %388 = select i1 %386, float %381, float %332
  %389 = select i1 %386, float %384, float %336
  %390 = add i32 %306, 52
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.i32 %391, 0
  %393 = and i32 %392, 65535
  %394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %393)  ; LegacyF16ToF32(value)
  %395 = lshr i32 %392, 16
  %396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %395)  ; LegacyF16ToF32(value)
  %397 = and i32 %310, 2
  %398 = icmp ne i32 %397, 0
  %399 = select i1 %398, float %394, float %341
  %400 = select i1 %398, float %396, float %343
  %401 = add i32 %306, 56
  %402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.i32 %402, 0
  %404 = and i32 %403, 65535
  %405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %404)  ; LegacyF16ToF32(value)
  %406 = lshr i32 %403, 16
  %407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %406)  ; LegacyF16ToF32(value)
  %408 = and i32 %310, 4
  %409 = icmp ne i32 %408, 0
  %410 = select i1 %409, float %405, float %348
  %411 = fmul float %410, 0x3F50624DE0000000
  %412 = select i1 %409, float %407, float %350
  %413 = fmul float %412, 0x3F50624DE0000000
  %414 = add i32 %306, 60
  %415 = add i32 %306, 32
  %416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %415, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.i32 %416, 0
  %418 = add i32 %49, 188
  %419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.i32 %419, 0
  %421 = shl i32 %420, 4
  %422 = and i32 %421, 32752
  %423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %422)  ; LegacyF16ToF32(value)
  %424 = lshr i32 %420, 7
  %425 = and i32 %424, 32752
  %426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %425)  ; LegacyF16ToF32(value)
  %427 = lshr i32 %420, 22
  %428 = shl nuw nsw i32 %427, 5
  %429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %428)  ; LegacyF16ToF32(value)
  %430 = add i32 %49, 248
  %431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.i32 %431, 0
  %433 = and i32 %432, 255
  %434 = uitofp i32 %433 to float
  %435 = fmul fast float %434, 0x3F70101020000000
  %436 = lshr i32 %432, 8
  %437 = and i32 %436, 255
  %438 = uitofp i32 %437 to float
  %439 = fmul fast float %438, 0x3F70101020000000
  %440 = lshr i32 %432, 16
  %441 = and i32 %440, 255
  %442 = uitofp i32 %441 to float
  %443 = fmul fast float %442, 0x3F70101020000000
  %444 = add i32 %49, 68
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.i32 %445, 0
  %447 = and i32 %446, 65535
  %448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %447)  ; LegacyF16ToF32(value)
  %449 = lshr i32 %446, 16
  %450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %449)  ; LegacyF16ToF32(value)
  %451 = add i32 %49, 320
  %452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %453 = extractvalue %dx.types.ResRet.i32 %452, 0
  %454 = and i32 %453, 65535
  %455 = call float @dx.op.legacyF16ToF32(i32 131, i32 %454)  ; LegacyF16ToF32(value)
  %456 = lshr i32 %453, 16
  %457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %456)  ; LegacyF16ToF32(value)
  %458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.i32 %458, 0
  %460 = shl i32 %459, 4
  %461 = and i32 %460, 32752
  %462 = call float @dx.op.legacyF16ToF32(i32 131, i32 %461)  ; LegacyF16ToF32(value)
  %463 = lshr i32 %459, 7
  %464 = and i32 %463, 32752
  %465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %464)  ; LegacyF16ToF32(value)
  %466 = lshr i32 %459, 22
  %467 = shl nuw nsw i32 %466, 5
  %468 = call float @dx.op.legacyF16ToF32(i32 131, i32 %467)  ; LegacyF16ToF32(value)
  %469 = and i32 %417, 1
  %470 = icmp ne i32 %469, 0
  %471 = select i1 %470, float %462, float %423
  %472 = select i1 %470, float %465, float %426
  %473 = select i1 %470, float %468, float %429
  %474 = add i32 %306, 64
  %475 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.f32 %475, 0
  %477 = fmul fast float %476, %471
  %478 = fmul fast float %476, %472
  %479 = fmul fast float %476, %473
  %480 = add i32 %306, 68
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = shl i32 %482, 4
  %484 = and i32 %483, 32752
  %485 = call float @dx.op.legacyF16ToF32(i32 131, i32 %484)  ; LegacyF16ToF32(value)
  %486 = lshr i32 %482, 7
  %487 = and i32 %486, 32752
  %488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %487)  ; LegacyF16ToF32(value)
  %489 = lshr i32 %482, 22
  %490 = shl nuw nsw i32 %489, 5
  %491 = call float @dx.op.legacyF16ToF32(i32 131, i32 %490)  ; LegacyF16ToF32(value)
  %492 = and i32 %417, 8
  %493 = icmp ne i32 %492, 0
  %494 = select i1 %493, float %485, float %435
  %495 = select i1 %493, float %488, float %439
  %496 = select i1 %493, float %491, float %443
  %497 = add i32 %306, 72
  %498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.i32 %498, 0
  %500 = and i32 %499, 65535
  %501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %500)  ; LegacyF16ToF32(value)
  %502 = lshr i32 %499, 16
  %503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %502)  ; LegacyF16ToF32(value)
  %504 = and i32 %417, 2
  %505 = icmp ne i32 %504, 0
  %506 = select i1 %505, float %501, float %448
  %507 = select i1 %505, float %503, float %450
  %508 = add i32 %306, 76
  %509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.i32 %509, 0
  %511 = and i32 %510, 65535
  %512 = call float @dx.op.legacyF16ToF32(i32 131, i32 %511)  ; LegacyF16ToF32(value)
  %513 = lshr i32 %510, 16
  %514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %513)  ; LegacyF16ToF32(value)
  %515 = and i32 %417, 4
  %516 = icmp ne i32 %515, 0
  %517 = select i1 %516, float %512, float %455
  %518 = fmul float %517, 0x3F50624DE0000000
  %519 = select i1 %516, float %514, float %457
  %520 = fmul float %519, 0x3F50624DE0000000
  %521 = add i32 %306, 80
  %522 = add i32 %306, 36
  %523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %522, i32 undef)  ; BufferLoad(srv,index,wot)
  %524 = extractvalue %dx.types.ResRet.i32 %523, 0
  %525 = add i32 %49, 204
  %526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.i32 %526, 0
  %528 = shl i32 %527, 4
  %529 = and i32 %528, 32752
  %530 = call float @dx.op.legacyF16ToF32(i32 131, i32 %529)  ; LegacyF16ToF32(value)
  %531 = lshr i32 %527, 7
  %532 = and i32 %531, 32752
  %533 = call float @dx.op.legacyF16ToF32(i32 131, i32 %532)  ; LegacyF16ToF32(value)
  %534 = lshr i32 %527, 22
  %535 = shl nuw nsw i32 %534, 5
  %536 = call float @dx.op.legacyF16ToF32(i32 131, i32 %535)  ; LegacyF16ToF32(value)
  %537 = add i32 %49, 264
  %538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.i32 %538, 0
  %540 = and i32 %539, 255
  %541 = uitofp i32 %540 to float
  %542 = fmul fast float %541, 0x3F70101020000000
  %543 = lshr i32 %539, 8
  %544 = and i32 %543, 255
  %545 = uitofp i32 %544 to float
  %546 = fmul fast float %545, 0x3F70101020000000
  %547 = lshr i32 %539, 16
  %548 = and i32 %547, 255
  %549 = uitofp i32 %548 to float
  %550 = fmul fast float %549, 0x3F70101020000000
  %551 = add i32 %49, 84
  %552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %551, i32 undef)  ; BufferLoad(srv,index,wot)
  %553 = extractvalue %dx.types.ResRet.i32 %552, 0
  %554 = and i32 %553, 65535
  %555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %554)  ; LegacyF16ToF32(value)
  %556 = lshr i32 %553, 16
  %557 = call float @dx.op.legacyF16ToF32(i32 131, i32 %556)  ; LegacyF16ToF32(value)
  %558 = add i32 %49, 336
  %559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %558, i32 undef)  ; BufferLoad(srv,index,wot)
  %560 = extractvalue %dx.types.ResRet.i32 %559, 0
  %561 = and i32 %560, 65535
  %562 = call float @dx.op.legacyF16ToF32(i32 131, i32 %561)  ; LegacyF16ToF32(value)
  %563 = lshr i32 %560, 16
  %564 = call float @dx.op.legacyF16ToF32(i32 131, i32 %563)  ; LegacyF16ToF32(value)
  %565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.i32 %565, 0
  %567 = shl i32 %566, 4
  %568 = and i32 %567, 32752
  %569 = call float @dx.op.legacyF16ToF32(i32 131, i32 %568)  ; LegacyF16ToF32(value)
  %570 = lshr i32 %566, 7
  %571 = and i32 %570, 32752
  %572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %571)  ; LegacyF16ToF32(value)
  %573 = lshr i32 %566, 22
  %574 = shl nuw nsw i32 %573, 5
  %575 = call float @dx.op.legacyF16ToF32(i32 131, i32 %574)  ; LegacyF16ToF32(value)
  %576 = and i32 %524, 1
  %577 = icmp ne i32 %576, 0
  %578 = select i1 %577, float %569, float %530
  %579 = select i1 %577, float %572, float %533
  %580 = select i1 %577, float %575, float %536
  %581 = add i32 %306, 84
  %582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %581, i32 undef)  ; BufferLoad(srv,index,wot)
  %583 = extractvalue %dx.types.ResRet.f32 %582, 0
  %584 = fmul fast float %583, %578
  %585 = fmul fast float %583, %579
  %586 = fmul fast float %583, %580
  %587 = add i32 %306, 88
  %588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %587, i32 undef)  ; BufferLoad(srv,index,wot)
  %589 = extractvalue %dx.types.ResRet.i32 %588, 0
  %590 = shl i32 %589, 4
  %591 = and i32 %590, 32752
  %592 = call float @dx.op.legacyF16ToF32(i32 131, i32 %591)  ; LegacyF16ToF32(value)
  %593 = lshr i32 %589, 7
  %594 = and i32 %593, 32752
  %595 = call float @dx.op.legacyF16ToF32(i32 131, i32 %594)  ; LegacyF16ToF32(value)
  %596 = lshr i32 %589, 22
  %597 = shl nuw nsw i32 %596, 5
  %598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %597)  ; LegacyF16ToF32(value)
  %599 = and i32 %524, 8
  %600 = icmp ne i32 %599, 0
  %601 = select i1 %600, float %592, float %542
  %602 = select i1 %600, float %595, float %546
  %603 = select i1 %600, float %598, float %550
  %604 = add i32 %306, 92
  %605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %604, i32 undef)  ; BufferLoad(srv,index,wot)
  %606 = extractvalue %dx.types.ResRet.i32 %605, 0
  %607 = and i32 %606, 65535
  %608 = call float @dx.op.legacyF16ToF32(i32 131, i32 %607)  ; LegacyF16ToF32(value)
  %609 = lshr i32 %606, 16
  %610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %609)  ; LegacyF16ToF32(value)
  %611 = and i32 %524, 2
  %612 = icmp ne i32 %611, 0
  %613 = select i1 %612, float %608, float %555
  %614 = select i1 %612, float %610, float %557
  %615 = add i32 %306, 96
  %616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %615, i32 undef)  ; BufferLoad(srv,index,wot)
  %617 = extractvalue %dx.types.ResRet.i32 %616, 0
  %618 = and i32 %617, 65535
  %619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %618)  ; LegacyF16ToF32(value)
  %620 = lshr i32 %617, 16
  %621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %620)  ; LegacyF16ToF32(value)
  %622 = and i32 %524, 4
  %623 = icmp ne i32 %622, 0
  %624 = select i1 %623, float %619, float %562
  %625 = fmul float %624, 0x3F50624DE0000000
  %626 = select i1 %623, float %621, float %564
  %627 = fmul float %626, 0x3F50624DE0000000
  %628 = add i32 %49, 348
  %629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %628, i32 undef)  ; BufferLoad(srv,index,wot)
  %630 = extractvalue %dx.types.ResRet.i32 %629, 0
  %631 = and i32 %630, 32
  %632 = icmp eq i32 %631, 0
  %633 = and i32 %630, 64
  %634 = icmp eq i32 %633, 0
  %635 = and i32 %630, 128
  %636 = icmp eq i32 %635, 0
  %637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %628, i32 undef)  ; BufferLoad(srv,index,wot)
  %638 = extractvalue %dx.types.ResRet.i32 %637, 0
  %639 = and i32 %638, 2
  %640 = icmp eq i32 %639, 0
  br i1 %640, label %656, label %641

; <label>:641                                     ; preds = %251
  %642 = add i32 %49, 472
  %643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %642, i32 undef)  ; BufferLoad(srv,index,wot)
  %644 = extractvalue %dx.types.ResRet.i32 %643, 0
  %645 = add i32 %644, 0
  %646 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %645, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %647 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %646, %dx.types.Handle %101, float %82, float %83, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %648 = extractvalue %dx.types.ResRet.f32 %647, 0
  %649 = extractvalue %dx.types.ResRet.f32 %647, 1
  %650 = extractvalue %dx.types.ResRet.f32 %647, 2
  %651 = extractvalue %dx.types.ResRet.f32 %647, 3
  %652 = fmul fast float %651, %84
  %653 = fmul fast float %648, %85
  %654 = fmul fast float %649, %86
  %655 = fmul fast float %650, %87
  br label %656

; <label>:656                                     ; preds = %641, %251
  %657 = phi float [ %87, %251 ], [ %655, %641 ]
  %658 = phi float [ %86, %251 ], [ %654, %641 ]
  %659 = phi float [ %85, %251 ], [ %653, %641 ]
  %660 = phi float [ %84, %251 ], [ %652, %641 ]
  %661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %628, i32 undef)  ; BufferLoad(srv,index,wot)
  %662 = extractvalue %dx.types.ResRet.i32 %661, 0
  %663 = and i32 %662, 2
  %664 = icmp eq i32 %663, 0
  br i1 %664, label %684, label %665

; <label>:665                                     ; preds = %656
  %666 = add i32 %49, 44
  %667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %666, i32 undef)  ; BufferLoad(srv,index,wot)
  %668 = extractvalue %dx.types.ResRet.i32 %667, 0
  %669 = and i32 %668, 1
  %670 = icmp ne i32 %669, 0
  %671 = select i1 %670, float %659, float 1.000000e+00
  %672 = add i32 %49, 60
  %673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %672, i32 undef)  ; BufferLoad(srv,index,wot)
  %674 = extractvalue %dx.types.ResRet.i32 %673, 0
  %675 = and i32 %674, 1
  %676 = icmp ne i32 %675, 0
  %677 = select i1 %676, float %658, float 1.000000e+00
  %678 = add i32 %49, 76
  %679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %678, i32 undef)  ; BufferLoad(srv,index,wot)
  %680 = extractvalue %dx.types.ResRet.i32 %679, 0
  %681 = and i32 %680, 1
  %682 = icmp ne i32 %681, 0
  %683 = select i1 %682, float %657, float 1.000000e+00
  br label %684

; <label>:684                                     ; preds = %665, %656
  %685 = phi float [ %657, %656 ], [ %683, %665 ]
  %686 = phi float [ %658, %656 ], [ %677, %665 ]
  %687 = phi float [ %659, %656 ], [ %671, %665 ]
  %688 = lshr i32 %662, 20
  %689 = and i32 %688, 3
  %690 = add nuw nsw i32 %689, 1
  %691 = add i32 %49, 24
  %692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %693 = extractvalue %dx.types.ResRet.i32 %692, 0
  %694 = add i32 %49, 28
  %695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %694, i32 undef)  ; BufferLoad(srv,index,wot)
  %696 = extractvalue %dx.types.ResRet.i32 %695, 0
  %697 = or i32 %696, %693
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %1233, label %699

; <label>:699                                     ; preds = %684
  %700 = and i32 %693, 262144
  %701 = icmp ne i32 %700, 0
  %702 = select i1 %701, float %55, float 1.000000e+00
  %703 = select i1 %701, float %56, float 0.000000e+00
  %704 = select i1 %701, float %57, float 0.000000e+00
  %705 = select i1 %701, float %58, float 1.000000e+00
  %706 = select i1 %701, float %59, float %82
  %707 = select i1 %701, float %60, float %83
  %708 = add i32 %49, 284
  %709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %710 = extractvalue %dx.types.ResRet.i32 %709, 0
  %711 = lshr i32 %710, 16
  %712 = call float @dx.op.legacyF16ToF32(i32 131, i32 %711)  ; LegacyF16ToF32(value)
  %713 = fmul fast float %712, 0x3F50624DE0000000
  %714 = add i32 %49, 88
  %715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %714, i32 undef)  ; BufferLoad(srv,index,wot)
  %716 = extractvalue %dx.types.ResRet.i32 %715, 0
  %717 = lshr i32 %716, 16
  %718 = and i32 %717, 255
  %719 = lshr i32 %716, 24
  %720 = add i32 %49, 292
  %721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %720, i32 undef)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.i32 %721, 0
  %723 = and i32 %722, 65535
  %724 = call float @dx.op.legacyF16ToF32(i32 131, i32 %723)  ; LegacyF16ToF32(value)
  %725 = lshr i32 %722, 16
  %726 = call float @dx.op.legacyF16ToF32(i32 131, i32 %725)  ; LegacyF16ToF32(value)
  %727 = add i32 %49, 32
  %728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %727, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.i32 %728, 0
  %730 = lshr i32 %729, 22
  %731 = shl nuw nsw i32 %730, 5
  %732 = call float @dx.op.legacyF16ToF32(i32 131, i32 %731)  ; LegacyF16ToF32(value)
  %733 = shl i32 %729, 4
  %734 = and i32 %733, 32752
  %735 = call float @dx.op.legacyF16ToF32(i32 131, i32 %734)  ; LegacyF16ToF32(value)
  %736 = lshr i32 %729, 7
  %737 = and i32 %736, 32752
  %738 = call float @dx.op.legacyF16ToF32(i32 131, i32 %737)  ; LegacyF16ToF32(value)
  %739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %740 = extractvalue %dx.types.CBufRet.f32 %739, 3
  %741 = fmul fast float %740, 1.000000e+03
  %742 = fmul fast float %304, %741
  %743 = call float @dx.op.unary.f32(i32 22, float %742)  ; Frc(value)
  %744 = fadd fast float %743, %294
  %745 = fmul fast float %305, %741
  %746 = call float @dx.op.unary.f32(i32 22, float %745)  ; Frc(value)
  %747 = fadd fast float %746, %296
  %748 = fmul fast float %713, %741
  %749 = call float @dx.op.unary.f32(i32 22, float %748)  ; Frc(value)
  %750 = fmul fast float %749, 0x401921FB60000000
  %751 = fadd fast float %750, %732
  %752 = call float @dx.op.unary.f32(i32 13, float %751)  ; Sin(value)
  %753 = call float @dx.op.unary.f32(i32 12, float %751)  ; Cos(value)
  %754 = fsub fast float -0.000000e+00, %752
  %755 = fadd fast float %706, -5.000000e-01
  %756 = fadd fast float %707, -5.000000e-01
  %757 = fmul fast float %724, %755
  %758 = fmul fast float %726, %756
  %759 = fadd fast float %757, 5.000000e-01
  %760 = fadd fast float %758, 5.000000e-01
  %761 = fmul fast float %735, %759
  %762 = fmul fast float %738, %760
  %763 = fmul fast float %753, %761
  %764 = call float @dx.op.tertiary.f32(i32 46, float %754, float %762, float %763)  ; FMad(a,b,c)
  %765 = fmul fast float %752, %761
  %766 = call float @dx.op.tertiary.f32(i32 46, float %753, float %762, float %765)  ; FMad(a,b,c)
  %767 = fadd fast float %744, %764
  %768 = fadd fast float %747, %766
  %769 = icmp ugt i32 %718, 1
  %770 = icmp ugt i32 %716, 33554431
  %771 = or i1 %770, %769
  br i1 %771, label %772, label %797

; <label>:772                                     ; preds = %699
  %773 = add i32 %49, 228
  %774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %773, i32 undef)  ; BufferLoad(srv,index,wot)
  %775 = extractvalue %dx.types.ResRet.i32 %774, 0
  %776 = lshr i32 %775, 16
  %777 = call float @dx.op.legacyF16ToF32(i32 131, i32 %776)  ; LegacyF16ToF32(value)
  %778 = fmul fast float %740, %777
  %779 = call float @dx.op.unary.f32(i32 22, float %778)  ; Frc(value)
  %780 = mul nuw nsw i32 %718, %719
  %781 = uitofp i32 %780 to float
  %782 = fmul fast float %779, %781
  %783 = call float @dx.op.unary.f32(i32 27, float %782)  ; Round_ni(value)
  %784 = fptoui float %783 to i32
  %785 = urem i32 %784, %718
  %786 = udiv i32 %784, %719
  %787 = call float @dx.op.unary.f32(i32 22, float %767)  ; Frc(value)
  %788 = call float @dx.op.unary.f32(i32 22, float %768)  ; Frc(value)
  %789 = uitofp i32 %785 to float
  %790 = uitofp i32 %786 to float
  %791 = fadd fast float %787, %789
  %792 = fadd fast float %788, %790
  %793 = uitofp i32 %718 to float
  %794 = uitofp i32 %719 to float
  %795 = fdiv fast float %791, %793
  %796 = fdiv fast float %792, %794
  br label %797

; <label>:797                                     ; preds = %772, %699
  %798 = phi float [ %795, %772 ], [ %767, %699 ]
  %799 = phi float [ %796, %772 ], [ %768, %699 ]
  %800 = and i32 %693, 256
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %848, label %802

; <label>:802                                     ; preds = %797
  %803 = add i32 %49, 424
  %804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %803, i32 undef)  ; BufferLoad(srv,index,wot)
  %805 = extractvalue %dx.types.ResRet.i32 %804, 0
  %806 = add i32 %805, 0
  %807 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %806, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %808 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %807, %dx.types.Handle %101, float %798, float %799, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %809 = extractvalue %dx.types.ResRet.f32 %808, 0
  %810 = add i32 %49, 100
  %811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %810, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.i32 %811, 0
  %813 = shl i32 %812, 4
  %814 = and i32 %813, 32752
  %815 = call float @dx.op.legacyF16ToF32(i32 131, i32 %814)  ; LegacyF16ToF32(value)
  %816 = lshr i32 %812, 7
  %817 = and i32 %816, 32752
  %818 = call float @dx.op.legacyF16ToF32(i32 131, i32 %817)  ; LegacyF16ToF32(value)
  %819 = fsub fast float 1.000000e+00, %660
  %820 = call float @dx.op.binary.f32(i32 35, float %819, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %821 = bitcast float %660 to i32
  %822 = sitofp i32 %821 to float
  %823 = fadd fast float %822, 0xC1CFBF8940000000
  %824 = fmul fast float %818, %823
  %825 = fadd fast float %824, 0x41CFBF8940000000
  %826 = fptosi float %825 to i32
  %827 = bitcast i32 %826 to float
  %828 = bitcast float %820 to i32
  %829 = sitofp i32 %828 to float
  %830 = fadd fast float %829, 0xC1CFBF8940000000
  %831 = fmul fast float %830, %818
  %832 = fadd fast float %831, 0x41CFBF8940000000
  %833 = fptosi float %832 to i32
  %834 = bitcast i32 %833 to float
  %835 = fmul fast float %827, %815
  %836 = fmul fast float %834, %815
  %837 = fsub fast float %820, %835
  %838 = fadd fast float %836, %820
  %839 = call float @dx.op.unary.f32(i32 7, float %837)  ; Saturate(value)
  %840 = call float @dx.op.unary.f32(i32 7, float %838)  ; Saturate(value)
  %841 = fsub fast float %809, %839
  %842 = fsub fast float %840, %839
  %843 = bitcast float %842 to i32
  %844 = sub nsw i32 2129859010, %843
  %845 = bitcast i32 %844 to float
  %846 = fmul fast float %845, %841
  %847 = call float @dx.op.unary.f32(i32 7, float %846)  ; Saturate(value)
  br label %848

; <label>:848                                     ; preds = %802, %797
  %849 = phi float [ %847, %802 ], [ %660, %797 ]
  %850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %851 = extractvalue %dx.types.ResRet.i32 %850, 0
  %852 = and i32 %851, 128
  %853 = icmp eq i32 %852, 0
  br i1 %853, label %870, label %854

; <label>:854                                     ; preds = %848
  %855 = add i32 %49, 408
  %856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %855, i32 undef)  ; BufferLoad(srv,index,wot)
  %857 = extractvalue %dx.types.ResRet.i32 %856, 0
  %858 = add i32 %857, 0
  %859 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %858, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %860 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %859, %dx.types.Handle %101, float %798, float %799, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %861 = extractvalue %dx.types.ResRet.f32 %860, 0
  %862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %863 = extractvalue %dx.types.ResRet.i32 %862, 0
  %864 = and i32 %863, 524288
  %865 = icmp ne i32 %864, 0
  %866 = fcmp fast ogt float %861, 0x3FE0101020000000
  %867 = select i1 %866, float 1.000000e+00, float 0.000000e+00
  %868 = select i1 %865, float %867, float %861
  %869 = fmul fast float %868, %849
  br label %870

; <label>:870                                     ; preds = %854, %848
  %871 = phi float [ %869, %854 ], [ %849, %848 ]
  %872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %873 = extractvalue %dx.types.ResRet.i32 %872, 0
  %874 = and i32 %873, 16
  %875 = icmp eq i32 %874, 0
  br i1 %875, label %1074, label %876

; <label>:876                                     ; preds = %870
  %877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %714, i32 undef)  ; BufferLoad(srv,index,wot)
  %878 = extractvalue %dx.types.ResRet.i32 %877, 0
  %879 = add i32 %49, 360
  %880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %879, i32 undef)  ; BufferLoad(srv,index,wot)
  %881 = extractvalue %dx.types.ResRet.i32 %880, 0
  %882 = add i32 %881, 0
  %883 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %882, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %884 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %883, %dx.types.Handle %100, float %798, float %799, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %885 = extractvalue %dx.types.ResRet.f32 %884, 0
  %886 = extractvalue %dx.types.ResRet.f32 %884, 1
  %887 = extractvalue %dx.types.ResRet.f32 %884, 2
  %888 = extractvalue %dx.types.ResRet.f32 %884, 3
  %889 = and i32 %878, 255
  %890 = uitofp i32 %889 to float
  %891 = lshr i32 %878, 8
  %892 = and i32 %891, 255
  %893 = uitofp i32 %892 to float
  %894 = fmul fast float %888, %890
  %895 = fadd fast float %894, %893
  %896 = fmul fast float %895, 0x3F70101000000000
  %897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %898 = extractvalue %dx.types.ResRet.i32 %897, 0
  %899 = and i32 %898, 512
  %900 = icmp eq i32 %899, 0
  br i1 %900, label %909, label %901

; <label>:901                                     ; preds = %876
  %902 = add i32 %49, 440
  %903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %902, i32 undef)  ; BufferLoad(srv,index,wot)
  %904 = extractvalue %dx.types.ResRet.i32 %903, 0
  %905 = add i32 %904, 0
  %906 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %905, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %907 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %906, %dx.types.Handle %101, float %798, float %799, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %908 = extractvalue %dx.types.ResRet.f32 %907, 0
  br label %909

; <label>:909                                     ; preds = %901, %876
  %910 = phi float [ %908, %901 ], [ 1.000000e+00, %876 ]
  %911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %912 = extractvalue %dx.types.ResRet.i32 %911, 0
  %913 = and i32 %912, 33554432
  %914 = icmp eq i32 %913, 0
  br i1 %914, label %1021, label %915

; <label>:915                                     ; preds = %909
  %916 = add i32 %49, 224
  %917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %918 = extractvalue %dx.types.ResRet.i32 %917, 0
  %919 = and i32 %918, 65535
  %920 = call float @dx.op.legacyF16ToF32(i32 131, i32 %919)  ; LegacyF16ToF32(value)
  %921 = lshr i32 %918, 16
  %922 = call float @dx.op.legacyF16ToF32(i32 131, i32 %921)  ; LegacyF16ToF32(value)
  %923 = add i32 %49, 228
  %924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %923, i32 undef)  ; BufferLoad(srv,index,wot)
  %925 = extractvalue %dx.types.ResRet.i32 %924, 0
  %926 = and i32 %925, 65535
  %927 = call float @dx.op.legacyF16ToF32(i32 131, i32 %926)  ; LegacyF16ToF32(value)
  %928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %929 = extractvalue %dx.types.ResRet.i32 %928, 0
  %930 = lshr i32 %929, 24
  %931 = uitofp i32 %930 to float
  %932 = fmul fast float %931, 0x3F70101020000000
  %933 = and i32 %929, 255
  %934 = uitofp i32 %933 to float
  %935 = fmul fast float %934, 0x3F70101020000000
  %936 = lshr i32 %929, 8
  %937 = and i32 %936, 255
  %938 = uitofp i32 %937 to float
  %939 = fmul fast float %938, 0x3F70101020000000
  %940 = lshr i32 %929, 16
  %941 = and i32 %940, 255
  %942 = uitofp i32 %941 to float
  %943 = fmul fast float %942, 0x3F70101020000000
  %944 = add i32 %49, 220
  %945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %944, i32 undef)  ; BufferLoad(srv,index,wot)
  %946 = extractvalue %dx.types.ResRet.i32 %945, 0
  %947 = lshr i32 %946, 24
  %948 = uitofp i32 %947 to float
  %949 = fmul fast float %948, 0x3F70101020000000
  %950 = and i32 %946, 255
  %951 = uitofp i32 %950 to float
  %952 = fmul fast float %951, 0x3F70101020000000
  %953 = lshr i32 %946, 8
  %954 = and i32 %953, 255
  %955 = uitofp i32 %954 to float
  %956 = fmul fast float %955, 0x3F70101020000000
  %957 = lshr i32 %946, 16
  %958 = and i32 %957, 255
  %959 = uitofp i32 %958 to float
  %960 = fmul fast float %959, 0x3F70101020000000
  %961 = bitcast float %885 to i32
  %962 = ashr i32 %961, 1
  %963 = sub nsw i32 1597463174, %962
  %964 = bitcast i32 %963 to float
  %965 = fmul fast float %885, 5.000000e-01
  %966 = fmul fast float %964, %964
  %967 = fmul fast float %966, %965
  %968 = fsub fast float 1.500000e+00, %967
  %969 = fmul fast float %964, %885
  %970 = fmul fast float %969, %968
  %971 = bitcast float %886 to i32
  %972 = ashr i32 %971, 1
  %973 = sub nsw i32 1597463174, %972
  %974 = bitcast i32 %973 to float
  %975 = fmul fast float %886, 5.000000e-01
  %976 = fmul fast float %974, %974
  %977 = fmul fast float %976, %975
  %978 = fsub fast float 1.500000e+00, %977
  %979 = fmul fast float %974, %886
  %980 = fmul fast float %979, %978
  %981 = bitcast float %887 to i32
  %982 = ashr i32 %981, 1
  %983 = sub nsw i32 1597463174, %982
  %984 = bitcast i32 %983 to float
  %985 = fmul fast float %887, 5.000000e-01
  %986 = fmul fast float %984, %984
  %987 = fmul fast float %986, %985
  %988 = fsub fast float 1.500000e+00, %987
  %989 = fmul fast float %984, %887
  %990 = fmul fast float %989, %988
  %991 = fsub fast float %970, %952
  %992 = fsub fast float %980, %956
  %993 = fsub fast float %990, %960
  %994 = fmul fast float %991, %920
  %995 = fmul fast float %992, %922
  %996 = fmul fast float %993, %927
  %997 = fadd fast float %994, %935
  %998 = fadd fast float %995, %939
  %999 = fadd fast float %996, %943
  %1000 = call float @dx.op.unary.f32(i32 7, float %997)  ; Saturate(value)
  %1001 = call float @dx.op.unary.f32(i32 7, float %998)  ; Saturate(value)
  %1002 = call float @dx.op.unary.f32(i32 7, float %999)  ; Saturate(value)
  %1003 = fmul fast float %1000, %1000
  %1004 = fmul fast float %1001, %1001
  %1005 = fmul fast float %1002, %1002
  %1006 = fsub fast float %1003, %885
  %1007 = fsub fast float %1004, %886
  %1008 = fsub fast float %1005, %887
  %1009 = fmul fast float %1006, %910
  %1010 = fmul fast float %1007, %910
  %1011 = fmul fast float %1008, %910
  %1012 = fadd fast float %1009, %885
  %1013 = fadd fast float %1010, %886
  %1014 = fadd fast float %1011, %887
  %1015 = fadd fast float %932, %896
  %1016 = fsub fast float %1015, %949
  %1017 = call float @dx.op.unary.f32(i32 7, float %1016)  ; Saturate(value)
  %1018 = fsub fast float %1017, %896
  %1019 = fmul fast float %1018, %910
  %1020 = fadd fast float %1019, %896
  br label %1074

; <label>:1021                                    ; preds = %909
  %1022 = and i32 %912, 134217728
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %1058, label %1024

; <label>:1024                                    ; preds = %1021
  %1025 = call float @dx.op.unary.f32(i32 24, float %281)  ; Sqrt(value)
  %1026 = call float @dx.op.unary.f32(i32 24, float %285)  ; Sqrt(value)
  %1027 = call float @dx.op.unary.f32(i32 24, float %289)  ; Sqrt(value)
  %1028 = fadd fast float %1025, -5.000000e-01
  %1029 = fadd fast float %1026, -5.000000e-01
  %1030 = fadd fast float %1027, -5.000000e-01
  %1031 = fmul fast float %1028, %910
  %1032 = fmul fast float %1029, %910
  %1033 = fmul fast float %1030, %910
  %1034 = fadd fast float %1031, 5.000000e-01
  %1035 = fadd fast float %1032, 5.000000e-01
  %1036 = fadd fast float %1033, 5.000000e-01
  %1037 = call float @dx.op.unary.f32(i32 24, float %885)  ; Sqrt(value)
  %1038 = call float @dx.op.unary.f32(i32 24, float %886)  ; Sqrt(value)
  %1039 = call float @dx.op.unary.f32(i32 24, float %887)  ; Sqrt(value)
  %1040 = fmul fast float %1034, 2.000000e+00
  %1041 = fsub fast float 1.000000e+00, %1040
  %1042 = fmul fast float %1041, %1037
  %1043 = fadd fast float %1042, %1040
  %1044 = fmul fast float %1043, %1037
  %1045 = fmul fast float %1035, 2.000000e+00
  %1046 = fsub fast float 1.000000e+00, %1045
  %1047 = fmul fast float %1046, %1038
  %1048 = fadd fast float %1047, %1045
  %1049 = fmul fast float %1048, %1038
  %1050 = fmul fast float %1036, 2.000000e+00
  %1051 = fsub fast float 1.000000e+00, %1050
  %1052 = fmul fast float %1051, %1039
  %1053 = fadd fast float %1052, %1050
  %1054 = fmul fast float %1053, %1039
  %1055 = fmul fast float %1044, %1044
  %1056 = fmul fast float %1049, %1049
  %1057 = fmul fast float %1054, %1054
  br label %1074

; <label>:1058                                    ; preds = %1021
  %1059 = fmul fast float %281, %281
  %1060 = fmul fast float %285, %285
  %1061 = fmul fast float %289, %289
  %1062 = fadd fast float %1059, -1.000000e+00
  %1063 = fadd fast float %1060, -1.000000e+00
  %1064 = fadd fast float %1061, -1.000000e+00
  %1065 = fmul fast float %910, %1062
  %1066 = fmul fast float %910, %1063
  %1067 = fmul fast float %910, %1064
  %1068 = fadd fast float %1065, 1.000000e+00
  %1069 = fadd fast float %1066, 1.000000e+00
  %1070 = fadd fast float %1067, 1.000000e+00
  %1071 = fmul fast float %1068, %885
  %1072 = fmul fast float %1069, %886
  %1073 = fmul fast float %1070, %887
  br label %1074

; <label>:1074                                    ; preds = %1058, %1024, %915, %870
  %1075 = phi float [ %1020, %915 ], [ %896, %1024 ], [ %896, %1058 ], [ 0x3FA23C0BE0000000, %870 ]
  %1076 = phi float [ %1012, %915 ], [ %1055, %1024 ], [ %1071, %1058 ], [ 1.000000e+00, %870 ]
  %1077 = phi float [ %1013, %915 ], [ %1056, %1024 ], [ %1072, %1058 ], [ 1.000000e+00, %870 ]
  %1078 = phi float [ %1014, %915 ], [ %1057, %1024 ], [ %1073, %1058 ], [ 1.000000e+00, %870 ]
  %1079 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1080 = extractvalue %dx.types.CBufRet.i32 %1079, 1
  %1081 = and i32 %1080, 1
  %1082 = icmp ne i32 %1081, 0
  %1083 = add i32 %49, 356
  %1084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1085 = extractvalue %dx.types.ResRet.i32 %1084, 0
  %1086 = and i32 %1085, 32
  %1087 = icmp ne i32 %1086, 0
  %1088 = and i1 %1082, %1087
  %1089 = select i1 %1088, float 1.000000e+00, float %1076
  %1090 = select i1 %1088, float 0x3FD3333340000000, float %1077
  %1091 = select i1 %1088, float 0x3FD3333340000000, float %1078
  %1092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %1093 = extractvalue %dx.types.ResRet.i32 %1092, 0
  %1094 = and i32 %1093, 32
  %1095 = icmp eq i32 %1094, 0
  br i1 %1095, label %1168, label %1096

; <label>:1096                                    ; preds = %1074
  %1097 = add i32 %49, 92
  %1098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1097, i32 undef)  ; BufferLoad(srv,index,wot)
  %1099 = extractvalue %dx.types.ResRet.i32 %1098, 0
  %1100 = add i32 %49, 376
  %1101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1100, i32 undef)  ; BufferLoad(srv,index,wot)
  %1102 = extractvalue %dx.types.ResRet.i32 %1101, 0
  %1103 = add i32 %1102, 0
  %1104 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1103, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1105 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1104, %dx.types.Handle %100, float %798, float %799, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1106 = extractvalue %dx.types.ResRet.f32 %1105, 0
  %1107 = extractvalue %dx.types.ResRet.f32 %1105, 1
  %1108 = extractvalue %dx.types.ResRet.f32 %1105, 2
  %1109 = extractvalue %dx.types.ResRet.f32 %1105, 3
  %1110 = and i32 %1099, 255
  %1111 = uitofp i32 %1110 to float
  %1112 = lshr i32 %1099, 8
  %1113 = and i32 %1112, 255
  %1114 = uitofp i32 %1113 to float
  %1115 = lshr i32 %1099, 16
  %1116 = and i32 %1115, 255
  %1117 = uitofp i32 %1116 to float
  %1118 = fmul fast float %1117, 0x3F70101000000000
  %1119 = fmul fast float %1106, %1111
  %1120 = fadd fast float %1119, %1114
  %1121 = fmul fast float %1120, 0x3F70101000000000
  %1122 = fadd fast float %1107, -5.000000e-01
  %1123 = fadd fast float %1109, -5.000000e-01
  %1124 = fmul fast float %1122, %1118
  %1125 = fmul fast float %1123, %1118
  %1126 = fadd fast float %1124, 5.000000e-01
  %1127 = fadd fast float %1125, 5.000000e-01
  %1128 = fmul fast float %1126, 2.000000e+00
  %1129 = fadd fast float %1128, -1.000000e+00
  %1130 = fmul fast float %1127, 2.000000e+00
  %1131 = fadd fast float %1130, -1.000000e+00
  %1132 = fadd fast float %1129, %1131
  %1133 = fmul fast float %1132, 5.000000e-01
  %1134 = fsub fast float %1129, %1131
  %1135 = fmul fast float %1134, 5.000000e-01
  %1136 = call float @dx.op.unary.f32(i32 6, float %1133)  ; FAbs(value)
  %1137 = fsub fast float 1.000000e+00, %1136
  %1138 = call float @dx.op.unary.f32(i32 6, float %1135)  ; FAbs(value)
  %1139 = fsub fast float %1137, %1138
  %1140 = call float @dx.op.dot3.f32(i32 55, float %1133, float %1135, float %1139, float %1133, float %1135, float %1139)  ; Dot3(ax,ay,az,bx,by,bz)
  %1141 = call float @dx.op.unary.f32(i32 25, float %1140)  ; Rsqrt(value)
  %1142 = fmul fast float %1133, %1141
  %1143 = fmul fast float %1135, %1141
  %1144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %1145 = extractvalue %dx.types.ResRet.i32 %1144, 0
  %1146 = and i32 %1145, 67108864
  %1147 = icmp eq i32 %1146, 0
  br i1 %1147, label %1164, label %1148

; <label>:1148                                    ; preds = %1096
  %1149 = add i32 %49, 280
  %1150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1151 = extractvalue %dx.types.ResRet.i32 %1150, 0
  %1152 = and i32 %1151, 65535
  %1153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1152)  ; LegacyF16ToF32(value)
  %1154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %1155 = extractvalue %dx.types.ResRet.i32 %1154, 0
  %1156 = and i32 %1155, 65535
  %1157 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1156)  ; LegacyF16ToF32(value)
  %1158 = lshr i32 %1151, 16
  %1159 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1158)  ; LegacyF16ToF32(value)
  %1160 = fsub fast float %1121, %1159
  %1161 = fmul fast float %1160, %1153
  %1162 = fadd fast float %1161, %1157
  %1163 = call float @dx.op.unary.f32(i32 7, float %1162)  ; Saturate(value)
  br label %1164

; <label>:1164                                    ; preds = %1148, %1096
  %1165 = phi float [ %1163, %1148 ], [ %1121, %1096 ]
  %1166 = call float @dx.op.dot2.f32(i32 54, float %1142, float %1143, float %702, float %703)  ; Dot2(ax,ay,bx,by)
  %1167 = call float @dx.op.dot2.f32(i32 54, float %1142, float %1143, float %704, float %705)  ; Dot2(ax,ay,bx,by)
  br label %1168

; <label>:1168                                    ; preds = %1164, %1074
  %1169 = phi float [ %1165, %1164 ], [ 0x3FD6666660000000, %1074 ]
  %1170 = phi float [ %1166, %1164 ], [ 0.000000e+00, %1074 ]
  %1171 = phi float [ %1167, %1164 ], [ 0.000000e+00, %1074 ]
  %1172 = phi float [ %1108, %1164 ], [ 1.000000e+00, %1074 ]
  %1173 = add i32 %49, 160
  %1174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1173, i32 undef)  ; BufferLoad(srv,index,wot)
  %1175 = extractvalue %dx.types.ResRet.i32 %1174, 0
  %1176 = lshr i32 %1175, 22
  %1177 = shl nuw nsw i32 %1176, 5
  %1178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1177)  ; LegacyF16ToF32(value)
  %1179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %1180 = extractvalue %dx.types.ResRet.i32 %1179, 0
  %1181 = and i32 %1180, 64
  %1182 = icmp eq i32 %1181, 0
  br i1 %1182, label %1216, label %1183

; <label>:1183                                    ; preds = %1168
  %1184 = add i32 %49, 392
  %1185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1184, i32 undef)  ; BufferLoad(srv,index,wot)
  %1186 = extractvalue %dx.types.ResRet.i32 %1185, 0
  %1187 = add i32 %1186, 0
  %1188 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1187, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %1190 = extractvalue %dx.types.ResRet.i32 %1189, 0
  %1191 = and i32 %1190, 131072
  %1192 = icmp eq i32 %1191, 0
  %1193 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1188, %dx.types.Handle %100, float %798, float %799, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1194 = extractvalue %dx.types.ResRet.f32 %1193, 0
  %1195 = extractvalue %dx.types.ResRet.f32 %1193, 1
  %1196 = extractvalue %dx.types.ResRet.f32 %1193, 2
  %1197 = fmul fast float %1194, %269
  %1198 = fmul fast float %1195, %272
  %1199 = fmul fast float %1196, %275
  br i1 %1192, label %1206, label %1200

; <label>:1200                                    ; preds = %1183
  %1201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1202 = extractvalue %dx.types.CBufRet.f32 %1201, 0
  %1203 = fmul fast float %1202, %1197
  %1204 = fmul fast float %1202, %1198
  %1205 = fmul fast float %1202, %1199
  br label %1206

; <label>:1206                                    ; preds = %1200, %1183
  %1207 = phi float [ %1203, %1200 ], [ %1197, %1183 ]
  %1208 = phi float [ %1204, %1200 ], [ %1198, %1183 ]
  %1209 = phi float [ %1205, %1200 ], [ %1199, %1183 ]
  %1210 = fmul fast float %1207, %1178
  %1211 = select i1 %252, float %1210, float %1207
  %1212 = call float @dx.op.dot3.f32(i32 55, float %1211, float %1208, float %1209, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1213 = select i1 %252, float 0.000000e+00, float %1207
  %1214 = select i1 %252, float %1212, float %1208
  %1215 = select i1 %252, float 0.000000e+00, float %1209
  br label %1216

; <label>:1216                                    ; preds = %1206, %1168
  %1217 = phi float [ %1213, %1206 ], [ 0.000000e+00, %1168 ]
  %1218 = phi float [ %1214, %1206 ], [ 0.000000e+00, %1168 ]
  %1219 = phi float [ %1215, %1206 ], [ 0.000000e+00, %1168 ]
  %1220 = add i32 %49, 96
  %1221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1222 = extractvalue %dx.types.ResRet.i32 %1221, 0
  %1223 = and i32 %1222, 255
  %1224 = uitofp i32 %1223 to float
  %1225 = lshr i32 %1222, 8
  %1226 = and i32 %1225, 255
  %1227 = uitofp i32 %1226 to float
  %1228 = call float @dx.op.dot3.f32(i32 55, float %1089, float %1090, float %1091, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1229 = fmul fast float %1227, %1228
  %1230 = fadd fast float %1229, %1224
  %1231 = fmul fast float %1230, 0x3F70101020000000
  %1232 = call float @dx.op.unary.f32(i32 7, float %1231)  ; Saturate(value)
  br label %1233

; <label>:1233                                    ; preds = %1216, %684
  %1234 = phi float [ 0.000000e+00, %684 ], [ %1170, %1216 ]
  %1235 = phi float [ 0.000000e+00, %684 ], [ %1171, %1216 ]
  %1236 = phi float [ 0.000000e+00, %684 ], [ %1089, %1216 ]
  %1237 = phi float [ 0.000000e+00, %684 ], [ %1090, %1216 ]
  %1238 = phi float [ 0.000000e+00, %684 ], [ %1091, %1216 ]
  %1239 = phi float [ 0.000000e+00, %684 ], [ %1217, %1216 ]
  %1240 = phi float [ 0.000000e+00, %684 ], [ %1218, %1216 ]
  %1241 = phi float [ 0.000000e+00, %684 ], [ %1219, %1216 ]
  %1242 = phi float [ 0.000000e+00, %684 ], [ %1075, %1216 ]
  %1243 = phi float [ 0.000000e+00, %684 ], [ %871, %1216 ]
  %1244 = phi float [ 0.000000e+00, %684 ], [ %1169, %1216 ]
  %1245 = phi float [ 0.000000e+00, %684 ], [ %1172, %1216 ]
  %1246 = phi float [ 0.000000e+00, %684 ], [ %1232, %1216 ]
  br i1 %632, label %1973, label %1247

; <label>:1247                                    ; preds = %1233
  %1248 = icmp ult i32 %690, 2
  %1249 = add i32 %49, 40
  %1250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1251 = extractvalue %dx.types.ResRet.i32 %1250, 0
  %1252 = add i32 %49, 44
  %1253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1254 = extractvalue %dx.types.ResRet.i32 %1253, 0
  %1255 = or i32 %1254, %1251
  %1256 = icmp eq i32 %1255, 0
  br i1 %1256, label %1973, label %1257

; <label>:1257                                    ; preds = %1247
  %1258 = and i32 %1251, 262144
  %1259 = icmp ne i32 %1258, 0
  %1260 = select i1 %1259, float %55, float 1.000000e+00
  %1261 = select i1 %1259, float %56, float 0.000000e+00
  %1262 = select i1 %1259, float %57, float 0.000000e+00
  %1263 = select i1 %1259, float %58, float 1.000000e+00
  %1264 = select i1 %1259, float %59, float %82
  %1265 = select i1 %1259, float %60, float %83
  %1266 = add i32 %49, 300
  %1267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1268 = extractvalue %dx.types.ResRet.i32 %1267, 0
  %1269 = lshr i32 %1268, 16
  %1270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1269)  ; LegacyF16ToF32(value)
  %1271 = fmul fast float %1270, 0x3F50624DE0000000
  %1272 = add i32 %49, 104
  %1273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1274 = extractvalue %dx.types.ResRet.i32 %1273, 0
  %1275 = lshr i32 %1274, 16
  %1276 = and i32 %1275, 255
  %1277 = lshr i32 %1274, 24
  %1278 = add i32 %49, 308
  %1279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1278, i32 undef)  ; BufferLoad(srv,index,wot)
  %1280 = extractvalue %dx.types.ResRet.i32 %1279, 0
  %1281 = and i32 %1280, 65535
  %1282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1281)  ; LegacyF16ToF32(value)
  %1283 = lshr i32 %1280, 16
  %1284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1283)  ; LegacyF16ToF32(value)
  %1285 = add i32 %49, 48
  %1286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1285, i32 undef)  ; BufferLoad(srv,index,wot)
  %1287 = extractvalue %dx.types.ResRet.i32 %1286, 0
  %1288 = lshr i32 %1287, 22
  %1289 = shl nuw nsw i32 %1288, 5
  %1290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1289)  ; LegacyF16ToF32(value)
  %1291 = shl i32 %1287, 4
  %1292 = and i32 %1291, 32752
  %1293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1292)  ; LegacyF16ToF32(value)
  %1294 = lshr i32 %1287, 7
  %1295 = and i32 %1294, 32752
  %1296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1295)  ; LegacyF16ToF32(value)
  %1297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1298 = extractvalue %dx.types.CBufRet.f32 %1297, 3
  %1299 = fmul fast float %1298, 1.000000e+03
  %1300 = fmul fast float %1299, %411
  %1301 = call float @dx.op.unary.f32(i32 22, float %1300)  ; Frc(value)
  %1302 = fadd fast float %1301, %399
  %1303 = fmul fast float %1299, %413
  %1304 = call float @dx.op.unary.f32(i32 22, float %1303)  ; Frc(value)
  %1305 = fadd fast float %1304, %400
  %1306 = fmul fast float %1271, %1299
  %1307 = call float @dx.op.unary.f32(i32 22, float %1306)  ; Frc(value)
  %1308 = fmul fast float %1307, 0x401921FB60000000
  %1309 = fadd fast float %1308, %1290
  %1310 = call float @dx.op.unary.f32(i32 13, float %1309)  ; Sin(value)
  %1311 = call float @dx.op.unary.f32(i32 12, float %1309)  ; Cos(value)
  %1312 = fsub fast float -0.000000e+00, %1310
  %1313 = fadd fast float %1264, -5.000000e-01
  %1314 = fadd fast float %1265, -5.000000e-01
  %1315 = fmul fast float %1282, %1313
  %1316 = fmul fast float %1284, %1314
  %1317 = fadd fast float %1315, 5.000000e-01
  %1318 = fadd fast float %1316, 5.000000e-01
  %1319 = fmul fast float %1293, %1317
  %1320 = fmul fast float %1296, %1318
  %1321 = fmul fast float %1311, %1319
  %1322 = call float @dx.op.tertiary.f32(i32 46, float %1312, float %1320, float %1321)  ; FMad(a,b,c)
  %1323 = fmul fast float %1310, %1319
  %1324 = call float @dx.op.tertiary.f32(i32 46, float %1311, float %1320, float %1323)  ; FMad(a,b,c)
  %1325 = fadd fast float %1302, %1322
  %1326 = fadd fast float %1305, %1324
  %1327 = icmp ugt i32 %1276, 1
  %1328 = icmp ugt i32 %1274, 33554431
  %1329 = or i1 %1328, %1327
  br i1 %1329, label %1330, label %1355

; <label>:1330                                    ; preds = %1257
  %1331 = add i32 %49, 244
  %1332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1331, i32 undef)  ; BufferLoad(srv,index,wot)
  %1333 = extractvalue %dx.types.ResRet.i32 %1332, 0
  %1334 = lshr i32 %1333, 16
  %1335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1334)  ; LegacyF16ToF32(value)
  %1336 = fmul fast float %1298, %1335
  %1337 = call float @dx.op.unary.f32(i32 22, float %1336)  ; Frc(value)
  %1338 = mul nuw nsw i32 %1276, %1277
  %1339 = uitofp i32 %1338 to float
  %1340 = fmul fast float %1337, %1339
  %1341 = call float @dx.op.unary.f32(i32 27, float %1340)  ; Round_ni(value)
  %1342 = fptoui float %1341 to i32
  %1343 = urem i32 %1342, %1276
  %1344 = udiv i32 %1342, %1277
  %1345 = call float @dx.op.unary.f32(i32 22, float %1325)  ; Frc(value)
  %1346 = call float @dx.op.unary.f32(i32 22, float %1326)  ; Frc(value)
  %1347 = uitofp i32 %1343 to float
  %1348 = uitofp i32 %1344 to float
  %1349 = fadd fast float %1345, %1347
  %1350 = fadd fast float %1346, %1348
  %1351 = uitofp i32 %1276 to float
  %1352 = uitofp i32 %1277 to float
  %1353 = fdiv fast float %1349, %1351
  %1354 = fdiv fast float %1350, %1352
  br label %1355

; <label>:1355                                    ; preds = %1330, %1257
  %1356 = phi float [ %1353, %1330 ], [ %1325, %1257 ]
  %1357 = phi float [ %1354, %1330 ], [ %1326, %1257 ]
  %1358 = and i32 %1251, 256
  %1359 = icmp eq i32 %1358, 0
  br i1 %1359, label %1406, label %1360

; <label>:1360                                    ; preds = %1355
  %1361 = add i32 %49, 428
  %1362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1361, i32 undef)  ; BufferLoad(srv,index,wot)
  %1363 = extractvalue %dx.types.ResRet.i32 %1362, 0
  %1364 = add i32 %1363, 0
  %1365 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1364, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1366 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1365, %dx.types.Handle %101, float %1356, float %1357, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1367 = extractvalue %dx.types.ResRet.f32 %1366, 0
  %1368 = add i32 %49, 116
  %1369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1368, i32 undef)  ; BufferLoad(srv,index,wot)
  %1370 = extractvalue %dx.types.ResRet.i32 %1369, 0
  %1371 = shl i32 %1370, 4
  %1372 = and i32 %1371, 32752
  %1373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1372)  ; LegacyF16ToF32(value)
  %1374 = lshr i32 %1370, 7
  %1375 = and i32 %1374, 32752
  %1376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1375)  ; LegacyF16ToF32(value)
  %1377 = fsub fast float 1.000000e+00, %687
  %1378 = call float @dx.op.binary.f32(i32 35, float %1377, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1379 = bitcast float %687 to i32
  %1380 = sitofp i32 %1379 to float
  %1381 = fadd fast float %1380, 0xC1CFBF8940000000
  %1382 = fmul fast float %1376, %1381
  %1383 = fadd fast float %1382, 0x41CFBF8940000000
  %1384 = fptosi float %1383 to i32
  %1385 = bitcast i32 %1384 to float
  %1386 = bitcast float %1378 to i32
  %1387 = sitofp i32 %1386 to float
  %1388 = fadd fast float %1387, 0xC1CFBF8940000000
  %1389 = fmul fast float %1388, %1376
  %1390 = fadd fast float %1389, 0x41CFBF8940000000
  %1391 = fptosi float %1390 to i32
  %1392 = bitcast i32 %1391 to float
  %1393 = fmul fast float %1385, %1373
  %1394 = fmul fast float %1392, %1373
  %1395 = fsub fast float %1378, %1393
  %1396 = fadd fast float %1394, %1378
  %1397 = call float @dx.op.unary.f32(i32 7, float %1395)  ; Saturate(value)
  %1398 = call float @dx.op.unary.f32(i32 7, float %1396)  ; Saturate(value)
  %1399 = fsub fast float %1367, %1397
  %1400 = fsub fast float %1398, %1397
  %1401 = bitcast float %1400 to i32
  %1402 = sub nsw i32 2129859010, %1401
  %1403 = bitcast i32 %1402 to float
  %1404 = fmul fast float %1403, %1399
  %1405 = call float @dx.op.unary.f32(i32 7, float %1404)  ; Saturate(value)
  br label %1406

; <label>:1406                                    ; preds = %1360, %1355
  %1407 = phi float [ %1405, %1360 ], [ %687, %1355 ]
  %1408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1409 = extractvalue %dx.types.ResRet.i32 %1408, 0
  %1410 = and i32 %1409, 128
  %1411 = icmp eq i32 %1410, 0
  br i1 %1411, label %1428, label %1412

; <label>:1412                                    ; preds = %1406
  %1413 = add i32 %49, 412
  %1414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1413, i32 undef)  ; BufferLoad(srv,index,wot)
  %1415 = extractvalue %dx.types.ResRet.i32 %1414, 0
  %1416 = add i32 %1415, 0
  %1417 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1416, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1418 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1417, %dx.types.Handle %101, float %1356, float %1357, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1419 = extractvalue %dx.types.ResRet.f32 %1418, 0
  %1420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1421 = extractvalue %dx.types.ResRet.i32 %1420, 0
  %1422 = and i32 %1421, 524288
  %1423 = icmp ne i32 %1422, 0
  %1424 = fcmp fast ogt float %1419, 0x3FE0101020000000
  %1425 = select i1 %1424, float 1.000000e+00, float 0.000000e+00
  %1426 = select i1 %1423, float %1425, float %1419
  %1427 = fmul fast float %1426, %1407
  br label %1428

; <label>:1428                                    ; preds = %1412, %1406
  %1429 = phi float [ %1427, %1412 ], [ %1407, %1406 ]
  %1430 = fcmp fast ult float %1429, 0x3F70101020000000
  br i1 %1430, label %1973, label %1431

; <label>:1431                                    ; preds = %1428
  %1432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1433 = extractvalue %dx.types.ResRet.i32 %1432, 0
  %1434 = and i32 %1433, 16
  %1435 = icmp eq i32 %1434, 0
  br i1 %1435, label %1634, label %1436

; <label>:1436                                    ; preds = %1431
  %1437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1438 = extractvalue %dx.types.ResRet.i32 %1437, 0
  %1439 = add i32 %49, 364
  %1440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1439, i32 undef)  ; BufferLoad(srv,index,wot)
  %1441 = extractvalue %dx.types.ResRet.i32 %1440, 0
  %1442 = add i32 %1441, 0
  %1443 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1442, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1444 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1443, %dx.types.Handle %100, float %1356, float %1357, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1445 = extractvalue %dx.types.ResRet.f32 %1444, 0
  %1446 = extractvalue %dx.types.ResRet.f32 %1444, 1
  %1447 = extractvalue %dx.types.ResRet.f32 %1444, 2
  %1448 = extractvalue %dx.types.ResRet.f32 %1444, 3
  %1449 = and i32 %1438, 255
  %1450 = uitofp i32 %1449 to float
  %1451 = lshr i32 %1438, 8
  %1452 = and i32 %1451, 255
  %1453 = uitofp i32 %1452 to float
  %1454 = fmul fast float %1448, %1450
  %1455 = fadd fast float %1454, %1453
  %1456 = fmul fast float %1455, 0x3F70101000000000
  %1457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1458 = extractvalue %dx.types.ResRet.i32 %1457, 0
  %1459 = and i32 %1458, 512
  %1460 = icmp eq i32 %1459, 0
  br i1 %1460, label %1469, label %1461

; <label>:1461                                    ; preds = %1436
  %1462 = add i32 %49, 444
  %1463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1462, i32 undef)  ; BufferLoad(srv,index,wot)
  %1464 = extractvalue %dx.types.ResRet.i32 %1463, 0
  %1465 = add i32 %1464, 0
  %1466 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1465, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1467 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1466, %dx.types.Handle %101, float %1356, float %1357, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1468 = extractvalue %dx.types.ResRet.f32 %1467, 0
  br label %1469

; <label>:1469                                    ; preds = %1461, %1436
  %1470 = phi float [ %1468, %1461 ], [ 1.000000e+00, %1436 ]
  %1471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1472 = extractvalue %dx.types.ResRet.i32 %1471, 0
  %1473 = and i32 %1472, 33554432
  %1474 = icmp eq i32 %1473, 0
  br i1 %1474, label %1581, label %1475

; <label>:1475                                    ; preds = %1469
  %1476 = add i32 %49, 240
  %1477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1476, i32 undef)  ; BufferLoad(srv,index,wot)
  %1478 = extractvalue %dx.types.ResRet.i32 %1477, 0
  %1479 = and i32 %1478, 65535
  %1480 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1479)  ; LegacyF16ToF32(value)
  %1481 = lshr i32 %1478, 16
  %1482 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1481)  ; LegacyF16ToF32(value)
  %1483 = add i32 %49, 244
  %1484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1483, i32 undef)  ; BufferLoad(srv,index,wot)
  %1485 = extractvalue %dx.types.ResRet.i32 %1484, 0
  %1486 = and i32 %1485, 65535
  %1487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1486)  ; LegacyF16ToF32(value)
  %1488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1489 = extractvalue %dx.types.ResRet.i32 %1488, 0
  %1490 = lshr i32 %1489, 24
  %1491 = uitofp i32 %1490 to float
  %1492 = fmul fast float %1491, 0x3F70101020000000
  %1493 = and i32 %1489, 255
  %1494 = uitofp i32 %1493 to float
  %1495 = fmul fast float %1494, 0x3F70101020000000
  %1496 = lshr i32 %1489, 8
  %1497 = and i32 %1496, 255
  %1498 = uitofp i32 %1497 to float
  %1499 = fmul fast float %1498, 0x3F70101020000000
  %1500 = lshr i32 %1489, 16
  %1501 = and i32 %1500, 255
  %1502 = uitofp i32 %1501 to float
  %1503 = fmul fast float %1502, 0x3F70101020000000
  %1504 = add i32 %49, 236
  %1505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1504, i32 undef)  ; BufferLoad(srv,index,wot)
  %1506 = extractvalue %dx.types.ResRet.i32 %1505, 0
  %1507 = lshr i32 %1506, 24
  %1508 = uitofp i32 %1507 to float
  %1509 = fmul fast float %1508, 0x3F70101020000000
  %1510 = and i32 %1506, 255
  %1511 = uitofp i32 %1510 to float
  %1512 = fmul fast float %1511, 0x3F70101020000000
  %1513 = lshr i32 %1506, 8
  %1514 = and i32 %1513, 255
  %1515 = uitofp i32 %1514 to float
  %1516 = fmul fast float %1515, 0x3F70101020000000
  %1517 = lshr i32 %1506, 16
  %1518 = and i32 %1517, 255
  %1519 = uitofp i32 %1518 to float
  %1520 = fmul fast float %1519, 0x3F70101020000000
  %1521 = bitcast float %1445 to i32
  %1522 = ashr i32 %1521, 1
  %1523 = sub nsw i32 1597463174, %1522
  %1524 = bitcast i32 %1523 to float
  %1525 = fmul fast float %1445, 5.000000e-01
  %1526 = fmul fast float %1524, %1524
  %1527 = fmul fast float %1526, %1525
  %1528 = fsub fast float 1.500000e+00, %1527
  %1529 = fmul fast float %1524, %1445
  %1530 = fmul fast float %1529, %1528
  %1531 = bitcast float %1446 to i32
  %1532 = ashr i32 %1531, 1
  %1533 = sub nsw i32 1597463174, %1532
  %1534 = bitcast i32 %1533 to float
  %1535 = fmul fast float %1446, 5.000000e-01
  %1536 = fmul fast float %1534, %1534
  %1537 = fmul fast float %1536, %1535
  %1538 = fsub fast float 1.500000e+00, %1537
  %1539 = fmul fast float %1534, %1446
  %1540 = fmul fast float %1539, %1538
  %1541 = bitcast float %1447 to i32
  %1542 = ashr i32 %1541, 1
  %1543 = sub nsw i32 1597463174, %1542
  %1544 = bitcast i32 %1543 to float
  %1545 = fmul fast float %1447, 5.000000e-01
  %1546 = fmul fast float %1544, %1544
  %1547 = fmul fast float %1546, %1545
  %1548 = fsub fast float 1.500000e+00, %1547
  %1549 = fmul fast float %1544, %1447
  %1550 = fmul fast float %1549, %1548
  %1551 = fsub fast float %1530, %1512
  %1552 = fsub fast float %1540, %1516
  %1553 = fsub fast float %1550, %1520
  %1554 = fmul fast float %1551, %1480
  %1555 = fmul fast float %1552, %1482
  %1556 = fmul fast float %1553, %1487
  %1557 = fadd fast float %1554, %1495
  %1558 = fadd fast float %1555, %1499
  %1559 = fadd fast float %1556, %1503
  %1560 = call float @dx.op.unary.f32(i32 7, float %1557)  ; Saturate(value)
  %1561 = call float @dx.op.unary.f32(i32 7, float %1558)  ; Saturate(value)
  %1562 = call float @dx.op.unary.f32(i32 7, float %1559)  ; Saturate(value)
  %1563 = fmul fast float %1560, %1560
  %1564 = fmul fast float %1561, %1561
  %1565 = fmul fast float %1562, %1562
  %1566 = fsub fast float %1563, %1445
  %1567 = fsub fast float %1564, %1446
  %1568 = fsub fast float %1565, %1447
  %1569 = fmul fast float %1566, %1470
  %1570 = fmul fast float %1567, %1470
  %1571 = fmul fast float %1568, %1470
  %1572 = fadd fast float %1569, %1445
  %1573 = fadd fast float %1570, %1446
  %1574 = fadd fast float %1571, %1447
  %1575 = fadd fast float %1492, %1456
  %1576 = fsub fast float %1575, %1509
  %1577 = call float @dx.op.unary.f32(i32 7, float %1576)  ; Saturate(value)
  %1578 = fsub fast float %1577, %1456
  %1579 = fmul fast float %1578, %1470
  %1580 = fadd fast float %1579, %1456
  br label %1634

; <label>:1581                                    ; preds = %1469
  %1582 = and i32 %1472, 134217728
  %1583 = icmp eq i32 %1582, 0
  br i1 %1583, label %1618, label %1584

; <label>:1584                                    ; preds = %1581
  %1585 = call float @dx.op.unary.f32(i32 24, float %387)  ; Sqrt(value)
  %1586 = call float @dx.op.unary.f32(i32 24, float %388)  ; Sqrt(value)
  %1587 = call float @dx.op.unary.f32(i32 24, float %389)  ; Sqrt(value)
  %1588 = fadd fast float %1585, -5.000000e-01
  %1589 = fadd fast float %1586, -5.000000e-01
  %1590 = fadd fast float %1587, -5.000000e-01
  %1591 = fmul fast float %1588, %1470
  %1592 = fmul fast float %1589, %1470
  %1593 = fmul fast float %1590, %1470
  %1594 = fadd fast float %1591, 5.000000e-01
  %1595 = fadd fast float %1592, 5.000000e-01
  %1596 = fadd fast float %1593, 5.000000e-01
  %1597 = call float @dx.op.unary.f32(i32 24, float %1445)  ; Sqrt(value)
  %1598 = call float @dx.op.unary.f32(i32 24, float %1446)  ; Sqrt(value)
  %1599 = call float @dx.op.unary.f32(i32 24, float %1447)  ; Sqrt(value)
  %1600 = fmul fast float %1594, 2.000000e+00
  %1601 = fsub fast float 1.000000e+00, %1600
  %1602 = fmul fast float %1601, %1597
  %1603 = fadd fast float %1602, %1600
  %1604 = fmul fast float %1603, %1597
  %1605 = fmul fast float %1595, 2.000000e+00
  %1606 = fsub fast float 1.000000e+00, %1605
  %1607 = fmul fast float %1606, %1598
  %1608 = fadd fast float %1607, %1605
  %1609 = fmul fast float %1608, %1598
  %1610 = fmul fast float %1596, 2.000000e+00
  %1611 = fsub fast float 1.000000e+00, %1610
  %1612 = fmul fast float %1611, %1599
  %1613 = fadd fast float %1612, %1610
  %1614 = fmul fast float %1613, %1599
  %1615 = fmul fast float %1604, %1604
  %1616 = fmul fast float %1609, %1609
  %1617 = fmul fast float %1614, %1614
  br label %1634

; <label>:1618                                    ; preds = %1581
  %1619 = fmul fast float %387, %387
  %1620 = fmul fast float %388, %388
  %1621 = fmul fast float %389, %389
  %1622 = fadd fast float %1619, -1.000000e+00
  %1623 = fadd fast float %1620, -1.000000e+00
  %1624 = fadd fast float %1621, -1.000000e+00
  %1625 = fmul fast float %1470, %1622
  %1626 = fmul fast float %1470, %1623
  %1627 = fmul fast float %1470, %1624
  %1628 = fadd fast float %1625, 1.000000e+00
  %1629 = fadd fast float %1626, 1.000000e+00
  %1630 = fadd fast float %1627, 1.000000e+00
  %1631 = fmul fast float %1628, %1445
  %1632 = fmul fast float %1629, %1446
  %1633 = fmul fast float %1630, %1447
  br label %1634

; <label>:1634                                    ; preds = %1618, %1584, %1475, %1431
  %1635 = phi float [ %1580, %1475 ], [ %1456, %1584 ], [ %1456, %1618 ], [ 0x3FA23C0BE0000000, %1431 ]
  %1636 = phi float [ %1572, %1475 ], [ %1615, %1584 ], [ %1631, %1618 ], [ 1.000000e+00, %1431 ]
  %1637 = phi float [ %1573, %1475 ], [ %1616, %1584 ], [ %1632, %1618 ], [ 1.000000e+00, %1431 ]
  %1638 = phi float [ %1574, %1475 ], [ %1617, %1584 ], [ %1633, %1618 ], [ 1.000000e+00, %1431 ]
  %1639 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1640 = extractvalue %dx.types.CBufRet.i32 %1639, 1
  %1641 = and i32 %1640, 1
  %1642 = icmp ne i32 %1641, 0
  %1643 = add i32 %49, 356
  %1644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1643, i32 undef)  ; BufferLoad(srv,index,wot)
  %1645 = extractvalue %dx.types.ResRet.i32 %1644, 0
  %1646 = and i32 %1645, 32
  %1647 = icmp ne i32 %1646, 0
  %1648 = and i1 %1642, %1647
  %1649 = select i1 %1648, float 1.000000e+00, float %1636
  %1650 = select i1 %1648, float 0x3FD3333340000000, float %1637
  %1651 = select i1 %1648, float 0x3FD3333340000000, float %1638
  %1652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1653 = extractvalue %dx.types.ResRet.i32 %1652, 0
  %1654 = and i32 %1653, 32
  %1655 = icmp eq i32 %1654, 0
  br i1 %1655, label %1728, label %1656

; <label>:1656                                    ; preds = %1634
  %1657 = add i32 %49, 108
  %1658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1657, i32 undef)  ; BufferLoad(srv,index,wot)
  %1659 = extractvalue %dx.types.ResRet.i32 %1658, 0
  %1660 = add i32 %49, 380
  %1661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1660, i32 undef)  ; BufferLoad(srv,index,wot)
  %1662 = extractvalue %dx.types.ResRet.i32 %1661, 0
  %1663 = add i32 %1662, 0
  %1664 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1663, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1665 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1664, %dx.types.Handle %100, float %1356, float %1357, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1666 = extractvalue %dx.types.ResRet.f32 %1665, 0
  %1667 = extractvalue %dx.types.ResRet.f32 %1665, 1
  %1668 = extractvalue %dx.types.ResRet.f32 %1665, 2
  %1669 = extractvalue %dx.types.ResRet.f32 %1665, 3
  %1670 = and i32 %1659, 255
  %1671 = uitofp i32 %1670 to float
  %1672 = lshr i32 %1659, 8
  %1673 = and i32 %1672, 255
  %1674 = uitofp i32 %1673 to float
  %1675 = lshr i32 %1659, 16
  %1676 = and i32 %1675, 255
  %1677 = uitofp i32 %1676 to float
  %1678 = fmul fast float %1677, 0x3F70101000000000
  %1679 = fmul fast float %1666, %1671
  %1680 = fadd fast float %1679, %1674
  %1681 = fmul fast float %1680, 0x3F70101000000000
  %1682 = fadd fast float %1667, -5.000000e-01
  %1683 = fadd fast float %1669, -5.000000e-01
  %1684 = fmul fast float %1682, %1678
  %1685 = fmul fast float %1683, %1678
  %1686 = fadd fast float %1684, 5.000000e-01
  %1687 = fadd fast float %1685, 5.000000e-01
  %1688 = fmul fast float %1686, 2.000000e+00
  %1689 = fadd fast float %1688, -1.000000e+00
  %1690 = fmul fast float %1687, 2.000000e+00
  %1691 = fadd fast float %1690, -1.000000e+00
  %1692 = fadd fast float %1689, %1691
  %1693 = fmul fast float %1692, 5.000000e-01
  %1694 = fsub fast float %1689, %1691
  %1695 = fmul fast float %1694, 5.000000e-01
  %1696 = call float @dx.op.unary.f32(i32 6, float %1693)  ; FAbs(value)
  %1697 = fsub fast float 1.000000e+00, %1696
  %1698 = call float @dx.op.unary.f32(i32 6, float %1695)  ; FAbs(value)
  %1699 = fsub fast float %1697, %1698
  %1700 = call float @dx.op.dot3.f32(i32 55, float %1693, float %1695, float %1699, float %1693, float %1695, float %1699)  ; Dot3(ax,ay,az,bx,by,bz)
  %1701 = call float @dx.op.unary.f32(i32 25, float %1700)  ; Rsqrt(value)
  %1702 = fmul fast float %1693, %1701
  %1703 = fmul fast float %1695, %1701
  %1704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1705 = extractvalue %dx.types.ResRet.i32 %1704, 0
  %1706 = and i32 %1705, 67108864
  %1707 = icmp eq i32 %1706, 0
  br i1 %1707, label %1724, label %1708

; <label>:1708                                    ; preds = %1656
  %1709 = add i32 %49, 296
  %1710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1709, i32 undef)  ; BufferLoad(srv,index,wot)
  %1711 = extractvalue %dx.types.ResRet.i32 %1710, 0
  %1712 = and i32 %1711, 65535
  %1713 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1712)  ; LegacyF16ToF32(value)
  %1714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1715 = extractvalue %dx.types.ResRet.i32 %1714, 0
  %1716 = and i32 %1715, 65535
  %1717 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1716)  ; LegacyF16ToF32(value)
  %1718 = lshr i32 %1711, 16
  %1719 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1718)  ; LegacyF16ToF32(value)
  %1720 = fsub fast float %1681, %1719
  %1721 = fmul fast float %1720, %1713
  %1722 = fadd fast float %1721, %1717
  %1723 = call float @dx.op.unary.f32(i32 7, float %1722)  ; Saturate(value)
  br label %1724

; <label>:1724                                    ; preds = %1708, %1656
  %1725 = phi float [ %1723, %1708 ], [ %1681, %1656 ]
  %1726 = call float @dx.op.dot2.f32(i32 54, float %1702, float %1703, float %1260, float %1261)  ; Dot2(ax,ay,bx,by)
  %1727 = call float @dx.op.dot2.f32(i32 54, float %1702, float %1703, float %1262, float %1263)  ; Dot2(ax,ay,bx,by)
  br label %1728

; <label>:1728                                    ; preds = %1724, %1634
  %1729 = phi float [ %1725, %1724 ], [ 0x3FD6666660000000, %1634 ]
  %1730 = phi float [ %1726, %1724 ], [ 0.000000e+00, %1634 ]
  %1731 = phi float [ %1727, %1724 ], [ 0.000000e+00, %1634 ]
  %1732 = phi float [ %1668, %1724 ], [ 1.000000e+00, %1634 ]
  %1733 = add i32 %49, 176
  %1734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1733, i32 undef)  ; BufferLoad(srv,index,wot)
  %1735 = extractvalue %dx.types.ResRet.i32 %1734, 0
  %1736 = lshr i32 %1735, 22
  %1737 = shl nuw nsw i32 %1736, 5
  %1738 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1737)  ; LegacyF16ToF32(value)
  %1739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1740 = extractvalue %dx.types.ResRet.i32 %1739, 0
  %1741 = and i32 %1740, 64
  %1742 = icmp eq i32 %1741, 0
  br i1 %1742, label %1776, label %1743

; <label>:1743                                    ; preds = %1728
  %1744 = add i32 %49, 396
  %1745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1744, i32 undef)  ; BufferLoad(srv,index,wot)
  %1746 = extractvalue %dx.types.ResRet.i32 %1745, 0
  %1747 = add i32 %1746, 0
  %1748 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1747, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1750 = extractvalue %dx.types.ResRet.i32 %1749, 0
  %1751 = and i32 %1750, 131072
  %1752 = icmp eq i32 %1751, 0
  %1753 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1748, %dx.types.Handle %100, float %1356, float %1357, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1754 = extractvalue %dx.types.ResRet.f32 %1753, 0
  %1755 = extractvalue %dx.types.ResRet.f32 %1753, 1
  %1756 = extractvalue %dx.types.ResRet.f32 %1753, 2
  %1757 = fmul fast float %370, %1754
  %1758 = fmul fast float %371, %1755
  %1759 = fmul fast float %372, %1756
  br i1 %1752, label %1766, label %1760

; <label>:1760                                    ; preds = %1743
  %1761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1762 = extractvalue %dx.types.CBufRet.f32 %1761, 0
  %1763 = fmul fast float %1762, %1757
  %1764 = fmul fast float %1762, %1758
  %1765 = fmul fast float %1762, %1759
  br label %1766

; <label>:1766                                    ; preds = %1760, %1743
  %1767 = phi float [ %1763, %1760 ], [ %1757, %1743 ]
  %1768 = phi float [ %1764, %1760 ], [ %1758, %1743 ]
  %1769 = phi float [ %1765, %1760 ], [ %1759, %1743 ]
  %1770 = fmul fast float %1767, %1738
  %1771 = select i1 %252, float %1770, float %1767
  %1772 = call float @dx.op.dot3.f32(i32 55, float %1771, float %1768, float %1769, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1773 = select i1 %252, float 0.000000e+00, float %1767
  %1774 = select i1 %252, float %1772, float %1768
  %1775 = select i1 %252, float 0.000000e+00, float %1769
  br label %1776

; <label>:1776                                    ; preds = %1766, %1728
  %1777 = phi float [ %1773, %1766 ], [ 0.000000e+00, %1728 ]
  %1778 = phi float [ %1774, %1766 ], [ 0.000000e+00, %1728 ]
  %1779 = phi float [ %1775, %1766 ], [ 0.000000e+00, %1728 ]
  %1780 = add i32 %49, 112
  %1781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1780, i32 undef)  ; BufferLoad(srv,index,wot)
  %1782 = extractvalue %dx.types.ResRet.i32 %1781, 0
  %1783 = and i32 %1782, 255
  %1784 = uitofp i32 %1783 to float
  %1785 = lshr i32 %1782, 8
  %1786 = and i32 %1785, 255
  %1787 = uitofp i32 %1786 to float
  %1788 = call float @dx.op.dot3.f32(i32 55, float %1649, float %1650, float %1651, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1789 = fmul fast float %1787, %1788
  %1790 = fadd fast float %1789, %1784
  %1791 = fmul fast float %1790, 0x3F70101020000000
  %1792 = call float @dx.op.unary.f32(i32 7, float %1791)  ; Saturate(value)
  br i1 %1248, label %1793, label %1801

; <label>:1793                                    ; preds = %1776
  %1794 = fsub fast float 1.000000e+00, %1429
  %1795 = fmul fast float %1794, %1236
  %1796 = fmul fast float %1794, %1237
  %1797 = fmul fast float %1794, %1238
  %1798 = fmul fast float %1794, %1239
  %1799 = fmul fast float %1794, %1240
  %1800 = fmul fast float %1794, %1241
  br label %1801

; <label>:1801                                    ; preds = %1793, %1776
  %1802 = phi float [ %1795, %1793 ], [ %1236, %1776 ]
  %1803 = phi float [ %1796, %1793 ], [ %1237, %1776 ]
  %1804 = phi float [ %1797, %1793 ], [ %1238, %1776 ]
  %1805 = phi float [ %1798, %1793 ], [ %1239, %1776 ]
  %1806 = phi float [ %1799, %1793 ], [ %1240, %1776 ]
  %1807 = phi float [ %1800, %1793 ], [ %1241, %1776 ]
  %1808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1809 = extractvalue %dx.types.ResRet.i32 %1808, 0
  %1810 = and i32 %1809, 3
  %1811 = icmp eq i32 %1810, 3
  br i1 %1811, label %1890, label %1812

; <label>:1812                                    ; preds = %1801
  %1813 = and i32 %1809, 16
  %1814 = icmp ne i32 %1813, 0
  %1815 = select i1 %1814, float %1429, float 0.000000e+00
  %1816 = icmp eq i32 %1810, 0
  br i1 %1816, label %1817, label %1845

; <label>:1817                                    ; preds = %1812
  %1818 = and i32 %1809, 64
  %1819 = icmp ne i32 %1818, 0
  %1820 = select i1 %1819, float %1429, float 0.000000e+00
  %1821 = fsub fast float %1649, %1802
  %1822 = fsub fast float %1650, %1803
  %1823 = fsub fast float %1651, %1804
  %1824 = fmul fast float %1815, %1821
  %1825 = fmul fast float %1815, %1822
  %1826 = fmul fast float %1815, %1823
  %1827 = fadd fast float %1824, %1802
  %1828 = fadd fast float %1825, %1803
  %1829 = fadd fast float %1826, %1804
  %1830 = fsub fast float %1635, %1242
  %1831 = fmul fast float %1815, %1830
  %1832 = fadd fast float %1831, %1242
  %1833 = fsub fast float %1777, %1805
  %1834 = fsub fast float %1778, %1806
  %1835 = fsub fast float %1779, %1807
  %1836 = fmul fast float %1820, %1833
  %1837 = fmul fast float %1820, %1834
  %1838 = fmul fast float %1820, %1835
  %1839 = fadd fast float %1836, %1805
  %1840 = fadd fast float %1837, %1806
  %1841 = fadd fast float %1838, %1807
  %1842 = fsub fast float %1792, %1246
  %1843 = fmul fast float %1815, %1842
  %1844 = fadd fast float %1843, %1246
  br label %1890

; <label>:1845                                    ; preds = %1812
  %1846 = icmp eq i32 %1810, 1
  br i1 %1846, label %1847, label %1860

; <label>:1847                                    ; preds = %1845
  %1848 = fadd fast float %1649, -1.000000e+00
  %1849 = fadd fast float %1650, -1.000000e+00
  %1850 = fadd fast float %1651, -1.000000e+00
  %1851 = fmul fast float %1815, %1848
  %1852 = fmul fast float %1815, %1849
  %1853 = fmul fast float %1815, %1850
  %1854 = fadd fast float %1851, 1.000000e+00
  %1855 = fadd fast float %1852, 1.000000e+00
  %1856 = fadd fast float %1853, 1.000000e+00
  %1857 = fmul fast float %1854, %1802
  %1858 = fmul fast float %1855, %1803
  %1859 = fmul fast float %1856, %1804
  br label %1890

; <label>:1860                                    ; preds = %1845
  %1861 = icmp eq i32 %1810, 2
  br i1 %1861, label %1862, label %1890

; <label>:1862                                    ; preds = %1860
  %1863 = call float @dx.op.unary.f32(i32 24, float %1649)  ; Sqrt(value)
  %1864 = call float @dx.op.unary.f32(i32 24, float %1650)  ; Sqrt(value)
  %1865 = call float @dx.op.unary.f32(i32 24, float %1651)  ; Sqrt(value)
  %1866 = fadd fast float %1863, -5.000000e-01
  %1867 = fadd fast float %1864, -5.000000e-01
  %1868 = fadd fast float %1865, -5.000000e-01
  %1869 = fmul fast float %1866, %1815
  %1870 = fmul fast float %1867, %1815
  %1871 = fmul fast float %1868, %1815
  %1872 = fadd fast float %1869, 5.000000e-01
  %1873 = fadd fast float %1870, 5.000000e-01
  %1874 = fadd fast float %1871, 5.000000e-01
  %1875 = fmul fast float %1872, 2.000000e+00
  %1876 = fsub fast float 1.000000e+00, %1875
  %1877 = fmul fast float %1876, %1802
  %1878 = fadd fast float %1877, %1875
  %1879 = fmul fast float %1878, %1802
  %1880 = fmul fast float %1873, 2.000000e+00
  %1881 = fsub fast float 1.000000e+00, %1880
  %1882 = fmul fast float %1881, %1803
  %1883 = fadd fast float %1882, %1880
  %1884 = fmul fast float %1883, %1803
  %1885 = fmul fast float %1874, 2.000000e+00
  %1886 = fsub fast float 1.000000e+00, %1885
  %1887 = fmul fast float %1886, %1804
  %1888 = fadd fast float %1887, %1885
  %1889 = fmul fast float %1888, %1804
  br label %1890

; <label>:1890                                    ; preds = %1862, %1860, %1847, %1817, %1801
  %1891 = phi float [ %1802, %1801 ], [ %1879, %1862 ], [ %1802, %1860 ], [ %1857, %1847 ], [ %1827, %1817 ]
  %1892 = phi float [ %1803, %1801 ], [ %1884, %1862 ], [ %1803, %1860 ], [ %1858, %1847 ], [ %1828, %1817 ]
  %1893 = phi float [ %1804, %1801 ], [ %1889, %1862 ], [ %1804, %1860 ], [ %1859, %1847 ], [ %1829, %1817 ]
  %1894 = phi float [ %1805, %1801 ], [ %1805, %1862 ], [ %1805, %1860 ], [ %1805, %1847 ], [ %1839, %1817 ]
  %1895 = phi float [ %1806, %1801 ], [ %1806, %1862 ], [ %1806, %1860 ], [ %1806, %1847 ], [ %1840, %1817 ]
  %1896 = phi float [ %1807, %1801 ], [ %1807, %1862 ], [ %1807, %1860 ], [ %1807, %1847 ], [ %1841, %1817 ]
  %1897 = phi float [ %1242, %1801 ], [ %1242, %1862 ], [ %1242, %1860 ], [ %1242, %1847 ], [ %1832, %1817 ]
  %1898 = phi float [ %1246, %1801 ], [ %1246, %1862 ], [ %1246, %1860 ], [ %1246, %1847 ], [ %1844, %1817 ]
  %1899 = and i32 %1809, 12
  %1900 = icmp eq i32 %1899, 12
  br i1 %1900, label %1973, label %1901

; <label>:1901                                    ; preds = %1890
  %1902 = and i32 %1809, 2097184
  %1903 = icmp eq i32 %1902, 2097184
  %1904 = select i1 %1903, float %1429, float 0.000000e+00
  %1905 = and i32 %1809, 4194336
  %1906 = icmp eq i32 %1905, 4194336
  %1907 = select i1 %1906, float %1429, float 0.000000e+00
  %1908 = and i32 %1809, 8388640
  %1909 = icmp eq i32 %1908, 8388640
  %1910 = select i1 %1909, float %1429, float 0.000000e+00
  %1911 = icmp eq i32 %1899, 0
  br i1 %1911, label %1912, label %1925

; <label>:1912                                    ; preds = %1901
  %1913 = fsub fast float %1730, %1234
  %1914 = fsub fast float %1731, %1235
  %1915 = fmul fast float %1904, %1913
  %1916 = fmul fast float %1904, %1914
  %1917 = fadd fast float %1915, %1234
  %1918 = fadd fast float %1916, %1235
  %1919 = fsub fast float %1732, %1245
  %1920 = fmul fast float %1907, %1919
  %1921 = fadd fast float %1920, %1245
  %1922 = fsub fast float %1729, %1244
  %1923 = fmul fast float %1910, %1922
  %1924 = fadd fast float %1923, %1244
  br label %1973

; <label>:1925                                    ; preds = %1901
  %1926 = icmp eq i32 %1899, 4
  br i1 %1926, label %1927, label %1959

; <label>:1927                                    ; preds = %1925
  %1928 = fmul fast float %1904, %1730
  %1929 = fmul fast float %1904, %1731
  %1930 = fadd fast float %1928, %1234
  %1931 = fadd fast float %1929, %1235
  %1932 = call float @dx.op.binary.f32(i32 36, float %1245, float %1732)  ; FMin(a,b)
  %1933 = fsub fast float %1932, %1245
  %1934 = fmul fast float %1933, %1907
  %1935 = fadd fast float %1934, %1245
  %1936 = fadd fast float %1729, %1244
  %1937 = fmul fast float %1936, 0x3FF337FAE0000000
  %1938 = fmul fast float %1244, %1244
  %1939 = fmul fast float %1729, %1729
  %1940 = fadd fast float %1939, %1938
  %1941 = fmul fast float %1940, 0x3FE5152B00000000
  %1942 = fmul fast float %1244, 0xBFCC1F85E0000000
  %1943 = fmul fast float %1942, %1729
  %1944 = fadd fast float %1943, 0xBFE1363700000000
  %1945 = fadd fast float %1944, %1937
  %1946 = fsub fast float %1945, %1941
  %1947 = fmul fast float %1936, 0x3FBA6F0D00000000
  %1948 = fmul fast float %1940, 0x3FD0432880000000
  %1949 = fmul fast float %1244, 0xBFEF110800000000
  %1950 = fmul fast float %1949, %1729
  %1951 = fadd fast float %1950, 1.000000e+00
  %1952 = fsub fast float %1951, %1947
  %1953 = fadd fast float %1952, %1948
  %1954 = fdiv fast float %1946, %1953
  %1955 = call float @dx.op.unary.f32(i32 7, float %1954)  ; Saturate(value)
  %1956 = fsub fast float %1955, %1244
  %1957 = fmul fast float %1956, %1910
  %1958 = fadd fast float %1957, %1244
  br label %1973

; <label>:1959                                    ; preds = %1925
  %1960 = icmp eq i32 %1899, 8
  br i1 %1960, label %1961, label %1973

; <label>:1961                                    ; preds = %1959
  %1962 = fmul fast float %1904, %1730
  %1963 = fmul fast float %1904, %1731
  %1964 = fadd fast float %1962, %1234
  %1965 = fadd fast float %1963, %1235
  %1966 = call float @dx.op.binary.f32(i32 36, float %1245, float %1732)  ; FMin(a,b)
  %1967 = fsub fast float %1966, %1245
  %1968 = fmul fast float %1967, %1907
  %1969 = fadd fast float %1968, %1245
  %1970 = fsub fast float %1729, %1244
  %1971 = fmul fast float %1910, %1970
  %1972 = fadd fast float %1971, %1244
  br label %1973

; <label>:1973                                    ; preds = %1961, %1959, %1927, %1912, %1890, %1428, %1247, %1233
  %1974 = phi float [ %1234, %1890 ], [ %1234, %1428 ], [ %1234, %1233 ], [ %1964, %1961 ], [ %1234, %1959 ], [ %1930, %1927 ], [ %1917, %1912 ], [ %1234, %1247 ]
  %1975 = phi float [ %1235, %1890 ], [ %1235, %1428 ], [ %1235, %1233 ], [ %1965, %1961 ], [ %1235, %1959 ], [ %1931, %1927 ], [ %1918, %1912 ], [ %1235, %1247 ]
  %1976 = phi float [ %1891, %1890 ], [ %1236, %1428 ], [ %1236, %1233 ], [ %1891, %1961 ], [ %1891, %1959 ], [ %1891, %1927 ], [ %1891, %1912 ], [ %1236, %1247 ]
  %1977 = phi float [ %1892, %1890 ], [ %1237, %1428 ], [ %1237, %1233 ], [ %1892, %1961 ], [ %1892, %1959 ], [ %1892, %1927 ], [ %1892, %1912 ], [ %1237, %1247 ]
  %1978 = phi float [ %1893, %1890 ], [ %1238, %1428 ], [ %1238, %1233 ], [ %1893, %1961 ], [ %1893, %1959 ], [ %1893, %1927 ], [ %1893, %1912 ], [ %1238, %1247 ]
  %1979 = phi float [ %1894, %1890 ], [ %1239, %1428 ], [ %1239, %1233 ], [ %1894, %1961 ], [ %1894, %1959 ], [ %1894, %1927 ], [ %1894, %1912 ], [ %1239, %1247 ]
  %1980 = phi float [ %1895, %1890 ], [ %1240, %1428 ], [ %1240, %1233 ], [ %1895, %1961 ], [ %1895, %1959 ], [ %1895, %1927 ], [ %1895, %1912 ], [ %1240, %1247 ]
  %1981 = phi float [ %1896, %1890 ], [ %1241, %1428 ], [ %1241, %1233 ], [ %1896, %1961 ], [ %1896, %1959 ], [ %1896, %1927 ], [ %1896, %1912 ], [ %1241, %1247 ]
  %1982 = phi float [ %1897, %1890 ], [ %1242, %1428 ], [ %1242, %1233 ], [ %1897, %1961 ], [ %1897, %1959 ], [ %1897, %1927 ], [ %1897, %1912 ], [ %1242, %1247 ]
  %1983 = phi float [ %1244, %1890 ], [ %1244, %1428 ], [ %1244, %1233 ], [ %1972, %1961 ], [ %1244, %1959 ], [ %1958, %1927 ], [ %1924, %1912 ], [ %1244, %1247 ]
  %1984 = phi float [ %1245, %1890 ], [ %1245, %1428 ], [ %1245, %1233 ], [ %1969, %1961 ], [ %1245, %1959 ], [ %1935, %1927 ], [ %1921, %1912 ], [ %1245, %1247 ]
  %1985 = phi float [ %1898, %1890 ], [ %1246, %1428 ], [ %1246, %1233 ], [ %1898, %1961 ], [ %1898, %1959 ], [ %1898, %1927 ], [ %1898, %1912 ], [ %1246, %1247 ]
  br i1 %634, label %2712, label %1986

; <label>:1986                                    ; preds = %1973
  %1987 = icmp ult i32 %690, 3
  %1988 = add i32 %49, 56
  %1989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1988, i32 undef)  ; BufferLoad(srv,index,wot)
  %1990 = extractvalue %dx.types.ResRet.i32 %1989, 0
  %1991 = add i32 %49, 60
  %1992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1991, i32 undef)  ; BufferLoad(srv,index,wot)
  %1993 = extractvalue %dx.types.ResRet.i32 %1992, 0
  %1994 = or i32 %1993, %1990
  %1995 = icmp eq i32 %1994, 0
  br i1 %1995, label %2712, label %1996

; <label>:1996                                    ; preds = %1986
  %1997 = and i32 %1990, 262144
  %1998 = icmp ne i32 %1997, 0
  %1999 = select i1 %1998, float %55, float 1.000000e+00
  %2000 = select i1 %1998, float %56, float 0.000000e+00
  %2001 = select i1 %1998, float %57, float 0.000000e+00
  %2002 = select i1 %1998, float %58, float 1.000000e+00
  %2003 = select i1 %1998, float %59, float %82
  %2004 = select i1 %1998, float %60, float %83
  %2005 = add i32 %49, 316
  %2006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2005, i32 undef)  ; BufferLoad(srv,index,wot)
  %2007 = extractvalue %dx.types.ResRet.i32 %2006, 0
  %2008 = lshr i32 %2007, 16
  %2009 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2008)  ; LegacyF16ToF32(value)
  %2010 = fmul fast float %2009, 0x3F50624DE0000000
  %2011 = add i32 %49, 120
  %2012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2011, i32 undef)  ; BufferLoad(srv,index,wot)
  %2013 = extractvalue %dx.types.ResRet.i32 %2012, 0
  %2014 = lshr i32 %2013, 16
  %2015 = and i32 %2014, 255
  %2016 = lshr i32 %2013, 24
  %2017 = add i32 %49, 324
  %2018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2017, i32 undef)  ; BufferLoad(srv,index,wot)
  %2019 = extractvalue %dx.types.ResRet.i32 %2018, 0
  %2020 = and i32 %2019, 65535
  %2021 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2020)  ; LegacyF16ToF32(value)
  %2022 = lshr i32 %2019, 16
  %2023 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2022)  ; LegacyF16ToF32(value)
  %2024 = add i32 %49, 64
  %2025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2024, i32 undef)  ; BufferLoad(srv,index,wot)
  %2026 = extractvalue %dx.types.ResRet.i32 %2025, 0
  %2027 = lshr i32 %2026, 22
  %2028 = shl nuw nsw i32 %2027, 5
  %2029 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2028)  ; LegacyF16ToF32(value)
  %2030 = shl i32 %2026, 4
  %2031 = and i32 %2030, 32752
  %2032 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2031)  ; LegacyF16ToF32(value)
  %2033 = lshr i32 %2026, 7
  %2034 = and i32 %2033, 32752
  %2035 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2034)  ; LegacyF16ToF32(value)
  %2036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2037 = extractvalue %dx.types.CBufRet.f32 %2036, 3
  %2038 = fmul fast float %2037, 1.000000e+03
  %2039 = fmul fast float %2038, %518
  %2040 = call float @dx.op.unary.f32(i32 22, float %2039)  ; Frc(value)
  %2041 = fadd fast float %2040, %506
  %2042 = fmul fast float %2038, %520
  %2043 = call float @dx.op.unary.f32(i32 22, float %2042)  ; Frc(value)
  %2044 = fadd fast float %2043, %507
  %2045 = fmul fast float %2010, %2038
  %2046 = call float @dx.op.unary.f32(i32 22, float %2045)  ; Frc(value)
  %2047 = fmul fast float %2046, 0x401921FB60000000
  %2048 = fadd fast float %2047, %2029
  %2049 = call float @dx.op.unary.f32(i32 13, float %2048)  ; Sin(value)
  %2050 = call float @dx.op.unary.f32(i32 12, float %2048)  ; Cos(value)
  %2051 = fsub fast float -0.000000e+00, %2049
  %2052 = fadd fast float %2003, -5.000000e-01
  %2053 = fadd fast float %2004, -5.000000e-01
  %2054 = fmul fast float %2021, %2052
  %2055 = fmul fast float %2023, %2053
  %2056 = fadd fast float %2054, 5.000000e-01
  %2057 = fadd fast float %2055, 5.000000e-01
  %2058 = fmul fast float %2032, %2056
  %2059 = fmul fast float %2035, %2057
  %2060 = fmul fast float %2050, %2058
  %2061 = call float @dx.op.tertiary.f32(i32 46, float %2051, float %2059, float %2060)  ; FMad(a,b,c)
  %2062 = fmul fast float %2049, %2058
  %2063 = call float @dx.op.tertiary.f32(i32 46, float %2050, float %2059, float %2062)  ; FMad(a,b,c)
  %2064 = fadd fast float %2041, %2061
  %2065 = fadd fast float %2044, %2063
  %2066 = icmp ugt i32 %2015, 1
  %2067 = icmp ugt i32 %2013, 33554431
  %2068 = or i1 %2067, %2066
  br i1 %2068, label %2069, label %2094

; <label>:2069                                    ; preds = %1996
  %2070 = add i32 %49, 260
  %2071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2070, i32 undef)  ; BufferLoad(srv,index,wot)
  %2072 = extractvalue %dx.types.ResRet.i32 %2071, 0
  %2073 = lshr i32 %2072, 16
  %2074 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2073)  ; LegacyF16ToF32(value)
  %2075 = fmul fast float %2037, %2074
  %2076 = call float @dx.op.unary.f32(i32 22, float %2075)  ; Frc(value)
  %2077 = mul nuw nsw i32 %2015, %2016
  %2078 = uitofp i32 %2077 to float
  %2079 = fmul fast float %2076, %2078
  %2080 = call float @dx.op.unary.f32(i32 27, float %2079)  ; Round_ni(value)
  %2081 = fptoui float %2080 to i32
  %2082 = urem i32 %2081, %2015
  %2083 = udiv i32 %2081, %2016
  %2084 = call float @dx.op.unary.f32(i32 22, float %2064)  ; Frc(value)
  %2085 = call float @dx.op.unary.f32(i32 22, float %2065)  ; Frc(value)
  %2086 = uitofp i32 %2082 to float
  %2087 = uitofp i32 %2083 to float
  %2088 = fadd fast float %2084, %2086
  %2089 = fadd fast float %2085, %2087
  %2090 = uitofp i32 %2015 to float
  %2091 = uitofp i32 %2016 to float
  %2092 = fdiv fast float %2088, %2090
  %2093 = fdiv fast float %2089, %2091
  br label %2094

; <label>:2094                                    ; preds = %2069, %1996
  %2095 = phi float [ %2092, %2069 ], [ %2064, %1996 ]
  %2096 = phi float [ %2093, %2069 ], [ %2065, %1996 ]
  %2097 = and i32 %1990, 256
  %2098 = icmp eq i32 %2097, 0
  br i1 %2098, label %2145, label %2099

; <label>:2099                                    ; preds = %2094
  %2100 = add i32 %49, 432
  %2101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2100, i32 undef)  ; BufferLoad(srv,index,wot)
  %2102 = extractvalue %dx.types.ResRet.i32 %2101, 0
  %2103 = add i32 %2102, 0
  %2104 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2103, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2105 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2104, %dx.types.Handle %101, float %2095, float %2096, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2106 = extractvalue %dx.types.ResRet.f32 %2105, 0
  %2107 = add i32 %49, 132
  %2108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2107, i32 undef)  ; BufferLoad(srv,index,wot)
  %2109 = extractvalue %dx.types.ResRet.i32 %2108, 0
  %2110 = shl i32 %2109, 4
  %2111 = and i32 %2110, 32752
  %2112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2111)  ; LegacyF16ToF32(value)
  %2113 = lshr i32 %2109, 7
  %2114 = and i32 %2113, 32752
  %2115 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2114)  ; LegacyF16ToF32(value)
  %2116 = fsub fast float 1.000000e+00, %686
  %2117 = call float @dx.op.binary.f32(i32 35, float %2116, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2118 = bitcast float %686 to i32
  %2119 = sitofp i32 %2118 to float
  %2120 = fadd fast float %2119, 0xC1CFBF8940000000
  %2121 = fmul fast float %2115, %2120
  %2122 = fadd fast float %2121, 0x41CFBF8940000000
  %2123 = fptosi float %2122 to i32
  %2124 = bitcast i32 %2123 to float
  %2125 = bitcast float %2117 to i32
  %2126 = sitofp i32 %2125 to float
  %2127 = fadd fast float %2126, 0xC1CFBF8940000000
  %2128 = fmul fast float %2127, %2115
  %2129 = fadd fast float %2128, 0x41CFBF8940000000
  %2130 = fptosi float %2129 to i32
  %2131 = bitcast i32 %2130 to float
  %2132 = fmul fast float %2124, %2112
  %2133 = fmul fast float %2131, %2112
  %2134 = fsub fast float %2117, %2132
  %2135 = fadd fast float %2133, %2117
  %2136 = call float @dx.op.unary.f32(i32 7, float %2134)  ; Saturate(value)
  %2137 = call float @dx.op.unary.f32(i32 7, float %2135)  ; Saturate(value)
  %2138 = fsub fast float %2106, %2136
  %2139 = fsub fast float %2137, %2136
  %2140 = bitcast float %2139 to i32
  %2141 = sub nsw i32 2129859010, %2140
  %2142 = bitcast i32 %2141 to float
  %2143 = fmul fast float %2142, %2138
  %2144 = call float @dx.op.unary.f32(i32 7, float %2143)  ; Saturate(value)
  br label %2145

; <label>:2145                                    ; preds = %2099, %2094
  %2146 = phi float [ %2144, %2099 ], [ %686, %2094 ]
  %2147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1988, i32 undef)  ; BufferLoad(srv,index,wot)
  %2148 = extractvalue %dx.types.ResRet.i32 %2147, 0
  %2149 = and i32 %2148, 128
  %2150 = icmp eq i32 %2149, 0
  br i1 %2150, label %2167, label %2151

; <label>:2151                                    ; preds = %2145
  %2152 = add i32 %49, 416
  %2153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2152, i32 undef)  ; BufferLoad(srv,index,wot)
  %2154 = extractvalue %dx.types.ResRet.i32 %2153, 0
  %2155 = add i32 %2154, 0
  %2156 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2155, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2157 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2156, %dx.types.Handle %101, float %2095, float %2096, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2158 = extractvalue %dx.types.ResRet.f32 %2157, 0
  %2159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1988, i32 undef)  ; BufferLoad(srv,index,wot)
  %2160 = extractvalue %dx.types.ResRet.i32 %2159, 0
  %2161 = and i32 %2160, 524288
  %2162 = icmp ne i32 %2161, 0
  %2163 = fcmp fast ogt float %2158, 0x3FE0101020000000
  %2164 = select i1 %2163, float 1.000000e+00, float 0.000000e+00
  %2165 = select i1 %2162, float %2164, float %2158
  %2166 = fmul fast float %2165, %2146
  br label %2167

; <label>:2167                                    ; preds = %2151, %2145
  %2168 = phi float [ %2166, %2151 ], [ %2146, %2145 ]
  %2169 = fcmp fast ult float %2168, 0x3F70101020000000
  br i1 %2169, label %2712, label %2170

; <label>:2170                                    ; preds = %2167
  %2171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1988, i32 undef)  ; BufferLoad(srv,index,wot)
  %2172 = extractvalue %dx.types.ResRet.i32 %2171, 0
  %2173 = and i32 %2172, 16
  %2174 = icmp eq i32 %2173, 0
  br i1 %2174, label %2373, label %2175

; <label>:2175                                    ; preds = %2170
  %2176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2011, i32 undef)  ; BufferLoad(srv,index,wot)
  %2177 = extractvalue %dx.types.ResRet.i32 %2176, 0
  %2178 = add i32 %49, 368
  %2179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2178, i32 undef)  ; BufferLoad(srv,index,wot)
  %2180 = extractvalue %dx.types.ResRet.i32 %2179, 0
  %2181 = add i32 %2180, 0
  %2182 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2181, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2183 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2182, %dx.types.Handle %100, float %2095, float %2096, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2184 = extractvalue %dx.types.ResRet.f32 %2183, 0
  %2185 = extractvalue %dx.types.ResRet.f32 %2183, 1
  %2186 = extractvalue %dx.types.ResRet.f32 %2183, 2
  %2187 = extractvalue %dx.types.ResRet.f32 %2183, 3
  %2188 = and i32 %2177, 255
  %2189 = uitofp i32 %2188 to float
  %2190 = lshr i32 %2177, 8
  %2191 = and i32 %2190, 255
  %2192 = uitofp i32 %2191 to float
  %2193 = fmul fast float %2187, %2189
  %2194 = fadd fast float %2193, %2192
  %2195 = fmul fast float %2194, 0x3F70101000000000
  %2196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1988, i32 undef)  ; BufferLoad(srv,index,wot)
  %2197 = extractvalue %dx.types.ResRet.i32 %2196, 0
  %2198 = and i32 %2197, 512
  %2199 = icmp eq i32 %2198, 0
  br i1 %2199, label %2208, label %2200

; <label>:2200                                    ; preds = %2175
  %2201 = add i32 %49, 448
  %2202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2201, i32 undef)  ; BufferLoad(srv,index,wot)
  %2203 = extractvalue %dx.types.ResRet.i32 %2202, 0
  %2204 = add i32 %2203, 0
  %2205 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2204, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2206 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2205, %dx.types.Handle %101, float %2095, float %2096, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2207 = extractvalue %dx.types.ResRet.f32 %2206, 0
  br label %2208

; <label>:2208                                    ; preds = %2200, %2175
  %2209 = phi float [ %2207, %2200 ], [ 1.000000e+00, %2175 ]
  %2210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1988, i32 undef)  ; BufferLoad(srv,index,wot)
  %2211 = extractvalue %dx.types.ResRet.i32 %2210, 0
  %2212 = and i32 %2211, 33554432
  %2213 = icmp eq i32 %2212, 0
  br i1 %2213, label %2320, label %2214

; <label>:2214                                    ; preds = %2208
  %2215 = add i32 %49, 256
  %2216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2215, i32 undef)  ; BufferLoad(srv,index,wot)
  %2217 = extractvalue %dx.types.ResRet.i32 %2216, 0
  %2218 = and i32 %2217, 65535
  %2219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2218)  ; LegacyF16ToF32(value)
  %2220 = lshr i32 %2217, 16
  %2221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2220)  ; LegacyF16ToF32(value)
  %2222 = add i32 %49, 260
  %2223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2222, i32 undef)  ; BufferLoad(srv,index,wot)
  %2224 = extractvalue %dx.types.ResRet.i32 %2223, 0
  %2225 = and i32 %2224, 65535
  %2226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2225)  ; LegacyF16ToF32(value)
  %2227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %2228 = extractvalue %dx.types.ResRet.i32 %2227, 0
  %2229 = lshr i32 %2228, 24
  %2230 = uitofp i32 %2229 to float
  %2231 = fmul fast float %2230, 0x3F70101020000000
  %2232 = and i32 %2228, 255
  %2233 = uitofp i32 %2232 to float
  %2234 = fmul fast float %2233, 0x3F70101020000000
  %2235 = lshr i32 %2228, 8
  %2236 = and i32 %2235, 255
  %2237 = uitofp i32 %2236 to float
  %2238 = fmul fast float %2237, 0x3F70101020000000
  %2239 = lshr i32 %2228, 16
  %2240 = and i32 %2239, 255
  %2241 = uitofp i32 %2240 to float
  %2242 = fmul fast float %2241, 0x3F70101020000000
  %2243 = add i32 %49, 252
  %2244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2243, i32 undef)  ; BufferLoad(srv,index,wot)
  %2245 = extractvalue %dx.types.ResRet.i32 %2244, 0
  %2246 = lshr i32 %2245, 24
  %2247 = uitofp i32 %2246 to float
  %2248 = fmul fast float %2247, 0x3F70101020000000
  %2249 = and i32 %2245, 255
  %2250 = uitofp i32 %2249 to float
  %2251 = fmul fast float %2250, 0x3F70101020000000
  %2252 = lshr i32 %2245, 8
  %2253 = and i32 %2252, 255
  %2254 = uitofp i32 %2253 to float
  %2255 = fmul fast float %2254, 0x3F70101020000000
  %2256 = lshr i32 %2245, 16
  %2257 = and i32 %2256, 255
  %2258 = uitofp i32 %2257 to float
  %2259 = fmul fast float %2258, 0x3F70101020000000
  %2260 = bitcast float %2184 to i32
  %2261 = ashr i32 %2260, 1
  %2262 = sub nsw i32 1597463174, %2261
  %2263 = bitcast i32 %2262 to float
  %2264 = fmul fast float %2184, 5.000000e-01
  %2265 = fmul fast float %2263, %2263
  %2266 = fmul fast float %2265, %2264
  %2267 = fsub fast float 1.500000e+00, %2266
  %2268 = fmul fast float %2263, %2184
  %2269 = fmul fast float %2268, %2267
  %2270 = bitcast float %2185 to i32
  %2271 = ashr i32 %2270, 1
  %2272 = sub nsw i32 1597463174, %2271
  %2273 = bitcast i32 %2272 to float
  %2274 = fmul fast float %2185, 5.000000e-01
  %2275 = fmul fast float %2273, %2273
  %2276 = fmul fast float %2275, %2274
  %2277 = fsub fast float 1.500000e+00, %2276
  %2278 = fmul fast float %2273, %2185
  %2279 = fmul fast float %2278, %2277
  %2280 = bitcast float %2186 to i32
  %2281 = ashr i32 %2280, 1
  %2282 = sub nsw i32 1597463174, %2281
  %2283 = bitcast i32 %2282 to float
  %2284 = fmul fast float %2186, 5.000000e-01
  %2285 = fmul fast float %2283, %2283
  %2286 = fmul fast float %2285, %2284
  %2287 = fsub fast float 1.500000e+00, %2286
  %2288 = fmul fast float %2283, %2186
  %2289 = fmul fast float %2288, %2287
  %2290 = fsub fast float %2269, %2251
  %2291 = fsub fast float %2279, %2255
  %2292 = fsub fast float %2289, %2259
  %2293 = fmul fast float %2290, %2219
  %2294 = fmul fast float %2291, %2221
  %2295 = fmul fast float %2292, %2226
  %2296 = fadd fast float %2293, %2234
  %2297 = fadd fast float %2294, %2238
  %2298 = fadd fast float %2295, %2242
  %2299 = call float @dx.op.unary.f32(i32 7, float %2296)  ; Saturate(value)
  %2300 = call float @dx.op.unary.f32(i32 7, float %2297)  ; Saturate(value)
  %2301 = call float @dx.op.unary.f32(i32 7, float %2298)  ; Saturate(value)
  %2302 = fmul fast float %2299, %2299
  %2303 = fmul fast float %2300, %2300
  %2304 = fmul fast float %2301, %2301
  %2305 = fsub fast float %2302, %2184
  %2306 = fsub fast float %2303, %2185
  %2307 = fsub fast float %2304, %2186
  %2308 = fmul fast float %2305, %2209
  %2309 = fmul fast float %2306, %2209
  %2310 = fmul fast float %2307, %2209
  %2311 = fadd fast float %2308, %2184
  %2312 = fadd fast float %2309, %2185
  %2313 = fadd fast float %2310, %2186
  %2314 = fadd fast float %2231, %2195
  %2315 = fsub fast float %2314, %2248
  %2316 = call float @dx.op.unary.f32(i32 7, float %2315)  ; Saturate(value)
  %2317 = fsub fast float %2316, %2195
  %2318 = fmul fast float %2317, %2209
  %2319 = fadd fast float %2318, %2195
  br label %2373

; <label>:2320                                    ; preds = %2208
  %2321 = and i32 %2211, 134217728
  %2322 = icmp eq i32 %2321, 0
  br i1 %2322, label %2357, label %2323

; <label>:2323                                    ; preds = %2320
  %2324 = call float @dx.op.unary.f32(i32 24, float %494)  ; Sqrt(value)
  %2325 = call float @dx.op.unary.f32(i32 24, float %495)  ; Sqrt(value)
  %2326 = call float @dx.op.unary.f32(i32 24, float %496)  ; Sqrt(value)
  %2327 = fadd fast float %2324, -5.000000e-01
  %2328 = fadd fast float %2325, -5.000000e-01
  %2329 = fadd fast float %2326, -5.000000e-01
  %2330 = fmul fast float %2327, %2209
  %2331 = fmul fast float %2328, %2209
  %2332 = fmul fast float %2329, %2209
  %2333 = fadd fast float %2330, 5.000000e-01
  %2334 = fadd fast float %2331, 5.000000e-01
  %2335 = fadd fast float %2332, 5.000000e-01
  %2336 = call float @dx.op.unary.f32(i32 24, float %2184)  ; Sqrt(value)
  %2337 = call float @dx.op.unary.f32(i32 24, float %2185)  ; Sqrt(value)
  %2338 = call float @dx.op.unary.f32(i32 24, float %2186)  ; Sqrt(value)
  %2339 = fmul fast float %2333, 2.000000e+00
  %2340 = fsub fast float 1.000000e+00, %2339
  %2341 = fmul fast float %2340, %2336
  %2342 = fadd fast float %2341, %2339
  %2343 = fmul fast float %2342, %2336
  %2344 = fmul fast float %2334, 2.000000e+00
  %2345 = fsub fast float 1.000000e+00, %2344
  %2346 = fmul fast float %2345, %2337
  %2347 = fadd fast float %2346, %2344
  %2348 = fmul fast float %2347, %2337
  %2349 = fmul fast float %2335, 2.000000e+00
  %2350 = fsub fast float 1.000000e+00, %2349
  %2351 = fmul fast float %2350, %2338
  %2352 = fadd fast float %2351, %2349
  %2353 = fmul fast float %2352, %2338
  %2354 = fmul fast float %2343, %2343
  %2355 = fmul fast float %2348, %2348
  %2356 = fmul fast float %2353, %2353
  br label %2373

; <label>:2357                                    ; preds = %2320
  %2358 = fmul fast float %494, %494
  %2359 = fmul fast float %495, %495
  %2360 = fmul fast float %496, %496
  %2361 = fadd fast float %2358, -1.000000e+00
  %2362 = fadd fast float %2359, -1.000000e+00
  %2363 = fadd fast float %2360, -1.000000e+00
  %2364 = fmul fast float %2209, %2361
  %2365 = fmul fast float %2209, %2362
  %2366 = fmul fast float %2209, %2363
  %2367 = fadd fast float %2364, 1.000000e+00
  %2368 = fadd fast float %2365, 1.000000e+00
  %2369 = fadd fast float %2366, 1.000000e+00
  %2370 = fmul fast float %2367, %2184
  %2371 = fmul fast float %2368, %2185
  %2372 = fmul fast float %2369, %2186
  br label %2373

; <label>:2373                                    ; preds = %2357, %2323, %2214, %2170
  %2374 = phi float [ %2319, %2214 ], [ %2195, %2323 ], [ %2195, %2357 ], [ 0x3FA23C0BE0000000, %2170 ]
  %2375 = phi float [ %2311, %2214 ], [ %2354, %2323 ], [ %2370, %2357 ], [ 1.000000e+00, %2170 ]
  %2376 = phi float [ %2312, %2214 ], [ %2355, %2323 ], [ %2371, %2357 ], [ 1.000000e+00, %2170 ]
  %2377 = phi float [ %2313, %2214 ], [ %2356, %2323 ], [ %2372, %2357 ], [ 1.000000e+00, %2170 ]
  %2378 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2379 = extractvalue %dx.types.CBufRet.i32 %2378, 1
  %2380 = and i32 %2379, 1
  %2381 = icmp ne i32 %2380, 0
  %2382 = add i32 %49, 356
  %2383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2382, i32 undef)  ; BufferLoad(srv,index,wot)
  %2384 = extractvalue %dx.types.ResRet.i32 %2383, 0
  %2385 = and i32 %2384, 32
  %2386 = icmp ne i32 %2385, 0
  %2387 = and i1 %2381, %2386
  %2388 = select i1 %2387, float 1.000000e+00, float %2375
  %2389 = select i1 %2387, float 0x3FD3333340000000, float %2376
  %2390 = select i1 %2387, float 0x3FD3333340000000, float %2377
  %2391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1988, i32 undef)  ; BufferLoad(srv,index,wot)
  %2392 = extractvalue %dx.types.ResRet.i32 %2391, 0
  %2393 = and i32 %2392, 32
  %2394 = icmp eq i32 %2393, 0
  br i1 %2394, label %2467, label %2395

; <label>:2395                                    ; preds = %2373
  %2396 = add i32 %49, 124
  %2397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2396, i32 undef)  ; BufferLoad(srv,index,wot)
  %2398 = extractvalue %dx.types.ResRet.i32 %2397, 0
  %2399 = add i32 %49, 384
  %2400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2399, i32 undef)  ; BufferLoad(srv,index,wot)
  %2401 = extractvalue %dx.types.ResRet.i32 %2400, 0
  %2402 = add i32 %2401, 0
  %2403 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2402, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2404 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2403, %dx.types.Handle %100, float %2095, float %2096, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2405 = extractvalue %dx.types.ResRet.f32 %2404, 0
  %2406 = extractvalue %dx.types.ResRet.f32 %2404, 1
  %2407 = extractvalue %dx.types.ResRet.f32 %2404, 2
  %2408 = extractvalue %dx.types.ResRet.f32 %2404, 3
  %2409 = and i32 %2398, 255
  %2410 = uitofp i32 %2409 to float
  %2411 = lshr i32 %2398, 8
  %2412 = and i32 %2411, 255
  %2413 = uitofp i32 %2412 to float
  %2414 = lshr i32 %2398, 16
  %2415 = and i32 %2414, 255
  %2416 = uitofp i32 %2415 to float
  %2417 = fmul fast float %2416, 0x3F70101000000000
  %2418 = fmul fast float %2405, %2410
  %2419 = fadd fast float %2418, %2413
  %2420 = fmul fast float %2419, 0x3F70101000000000
  %2421 = fadd fast float %2406, -5.000000e-01
  %2422 = fadd fast float %2408, -5.000000e-01
  %2423 = fmul fast float %2421, %2417
  %2424 = fmul fast float %2422, %2417
  %2425 = fadd fast float %2423, 5.000000e-01
  %2426 = fadd fast float %2424, 5.000000e-01
  %2427 = fmul fast float %2425, 2.000000e+00
  %2428 = fadd fast float %2427, -1.000000e+00
  %2429 = fmul fast float %2426, 2.000000e+00
  %2430 = fadd fast float %2429, -1.000000e+00
  %2431 = fadd fast float %2428, %2430
  %2432 = fmul fast float %2431, 5.000000e-01
  %2433 = fsub fast float %2428, %2430
  %2434 = fmul fast float %2433, 5.000000e-01
  %2435 = call float @dx.op.unary.f32(i32 6, float %2432)  ; FAbs(value)
  %2436 = fsub fast float 1.000000e+00, %2435
  %2437 = call float @dx.op.unary.f32(i32 6, float %2434)  ; FAbs(value)
  %2438 = fsub fast float %2436, %2437
  %2439 = call float @dx.op.dot3.f32(i32 55, float %2432, float %2434, float %2438, float %2432, float %2434, float %2438)  ; Dot3(ax,ay,az,bx,by,bz)
  %2440 = call float @dx.op.unary.f32(i32 25, float %2439)  ; Rsqrt(value)
  %2441 = fmul fast float %2432, %2440
  %2442 = fmul fast float %2434, %2440
  %2443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1988, i32 undef)  ; BufferLoad(srv,index,wot)
  %2444 = extractvalue %dx.types.ResRet.i32 %2443, 0
  %2445 = and i32 %2444, 67108864
  %2446 = icmp eq i32 %2445, 0
  br i1 %2446, label %2463, label %2447

; <label>:2447                                    ; preds = %2395
  %2448 = add i32 %49, 312
  %2449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2448, i32 undef)  ; BufferLoad(srv,index,wot)
  %2450 = extractvalue %dx.types.ResRet.i32 %2449, 0
  %2451 = and i32 %2450, 65535
  %2452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2451)  ; LegacyF16ToF32(value)
  %2453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2005, i32 undef)  ; BufferLoad(srv,index,wot)
  %2454 = extractvalue %dx.types.ResRet.i32 %2453, 0
  %2455 = and i32 %2454, 65535
  %2456 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2455)  ; LegacyF16ToF32(value)
  %2457 = lshr i32 %2450, 16
  %2458 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2457)  ; LegacyF16ToF32(value)
  %2459 = fsub fast float %2420, %2458
  %2460 = fmul fast float %2459, %2452
  %2461 = fadd fast float %2460, %2456
  %2462 = call float @dx.op.unary.f32(i32 7, float %2461)  ; Saturate(value)
  br label %2463

; <label>:2463                                    ; preds = %2447, %2395
  %2464 = phi float [ %2462, %2447 ], [ %2420, %2395 ]
  %2465 = call float @dx.op.dot2.f32(i32 54, float %2441, float %2442, float %1999, float %2000)  ; Dot2(ax,ay,bx,by)
  %2466 = call float @dx.op.dot2.f32(i32 54, float %2441, float %2442, float %2001, float %2002)  ; Dot2(ax,ay,bx,by)
  br label %2467

; <label>:2467                                    ; preds = %2463, %2373
  %2468 = phi float [ %2464, %2463 ], [ 0x3FD6666660000000, %2373 ]
  %2469 = phi float [ %2465, %2463 ], [ 0.000000e+00, %2373 ]
  %2470 = phi float [ %2466, %2463 ], [ 0.000000e+00, %2373 ]
  %2471 = phi float [ %2407, %2463 ], [ 1.000000e+00, %2373 ]
  %2472 = add i32 %49, 192
  %2473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2472, i32 undef)  ; BufferLoad(srv,index,wot)
  %2474 = extractvalue %dx.types.ResRet.i32 %2473, 0
  %2475 = lshr i32 %2474, 22
  %2476 = shl nuw nsw i32 %2475, 5
  %2477 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2476)  ; LegacyF16ToF32(value)
  %2478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1988, i32 undef)  ; BufferLoad(srv,index,wot)
  %2479 = extractvalue %dx.types.ResRet.i32 %2478, 0
  %2480 = and i32 %2479, 64
  %2481 = icmp eq i32 %2480, 0
  br i1 %2481, label %2515, label %2482

; <label>:2482                                    ; preds = %2467
  %2483 = add i32 %49, 400
  %2484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2483, i32 undef)  ; BufferLoad(srv,index,wot)
  %2485 = extractvalue %dx.types.ResRet.i32 %2484, 0
  %2486 = add i32 %2485, 0
  %2487 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2486, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1988, i32 undef)  ; BufferLoad(srv,index,wot)
  %2489 = extractvalue %dx.types.ResRet.i32 %2488, 0
  %2490 = and i32 %2489, 131072
  %2491 = icmp eq i32 %2490, 0
  %2492 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2487, %dx.types.Handle %100, float %2095, float %2096, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2493 = extractvalue %dx.types.ResRet.f32 %2492, 0
  %2494 = extractvalue %dx.types.ResRet.f32 %2492, 1
  %2495 = extractvalue %dx.types.ResRet.f32 %2492, 2
  %2496 = fmul fast float %477, %2493
  %2497 = fmul fast float %478, %2494
  %2498 = fmul fast float %479, %2495
  br i1 %2491, label %2505, label %2499

; <label>:2499                                    ; preds = %2482
  %2500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2501 = extractvalue %dx.types.CBufRet.f32 %2500, 0
  %2502 = fmul fast float %2501, %2496
  %2503 = fmul fast float %2501, %2497
  %2504 = fmul fast float %2501, %2498
  br label %2505

; <label>:2505                                    ; preds = %2499, %2482
  %2506 = phi float [ %2502, %2499 ], [ %2496, %2482 ]
  %2507 = phi float [ %2503, %2499 ], [ %2497, %2482 ]
  %2508 = phi float [ %2504, %2499 ], [ %2498, %2482 ]
  %2509 = fmul fast float %2506, %2477
  %2510 = select i1 %252, float %2509, float %2506
  %2511 = call float @dx.op.dot3.f32(i32 55, float %2510, float %2507, float %2508, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2512 = select i1 %252, float 0.000000e+00, float %2506
  %2513 = select i1 %252, float %2511, float %2507
  %2514 = select i1 %252, float 0.000000e+00, float %2508
  br label %2515

; <label>:2515                                    ; preds = %2505, %2467
  %2516 = phi float [ %2512, %2505 ], [ 0.000000e+00, %2467 ]
  %2517 = phi float [ %2513, %2505 ], [ 0.000000e+00, %2467 ]
  %2518 = phi float [ %2514, %2505 ], [ 0.000000e+00, %2467 ]
  %2519 = add i32 %49, 128
  %2520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2519, i32 undef)  ; BufferLoad(srv,index,wot)
  %2521 = extractvalue %dx.types.ResRet.i32 %2520, 0
  %2522 = and i32 %2521, 255
  %2523 = uitofp i32 %2522 to float
  %2524 = lshr i32 %2521, 8
  %2525 = and i32 %2524, 255
  %2526 = uitofp i32 %2525 to float
  %2527 = call float @dx.op.dot3.f32(i32 55, float %2388, float %2389, float %2390, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2528 = fmul fast float %2526, %2527
  %2529 = fadd fast float %2528, %2523
  %2530 = fmul fast float %2529, 0x3F70101020000000
  %2531 = call float @dx.op.unary.f32(i32 7, float %2530)  ; Saturate(value)
  br i1 %1987, label %2532, label %2540

; <label>:2532                                    ; preds = %2515
  %2533 = fsub fast float 1.000000e+00, %2168
  %2534 = fmul fast float %2533, %1976
  %2535 = fmul fast float %2533, %1977
  %2536 = fmul fast float %2533, %1978
  %2537 = fmul fast float %2533, %1979
  %2538 = fmul fast float %2533, %1980
  %2539 = fmul fast float %2533, %1981
  br label %2540

; <label>:2540                                    ; preds = %2532, %2515
  %2541 = phi float [ %2534, %2532 ], [ %1976, %2515 ]
  %2542 = phi float [ %2535, %2532 ], [ %1977, %2515 ]
  %2543 = phi float [ %2536, %2532 ], [ %1978, %2515 ]
  %2544 = phi float [ %2537, %2532 ], [ %1979, %2515 ]
  %2545 = phi float [ %2538, %2532 ], [ %1980, %2515 ]
  %2546 = phi float [ %2539, %2532 ], [ %1981, %2515 ]
  %2547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1988, i32 undef)  ; BufferLoad(srv,index,wot)
  %2548 = extractvalue %dx.types.ResRet.i32 %2547, 0
  %2549 = and i32 %2548, 3
  %2550 = icmp eq i32 %2549, 3
  br i1 %2550, label %2629, label %2551

; <label>:2551                                    ; preds = %2540
  %2552 = and i32 %2548, 16
  %2553 = icmp ne i32 %2552, 0
  %2554 = select i1 %2553, float %2168, float 0.000000e+00
  %2555 = icmp eq i32 %2549, 0
  br i1 %2555, label %2556, label %2584

; <label>:2556                                    ; preds = %2551
  %2557 = and i32 %2548, 64
  %2558 = icmp ne i32 %2557, 0
  %2559 = select i1 %2558, float %2168, float 0.000000e+00
  %2560 = fsub fast float %2388, %2541
  %2561 = fsub fast float %2389, %2542
  %2562 = fsub fast float %2390, %2543
  %2563 = fmul fast float %2554, %2560
  %2564 = fmul fast float %2554, %2561
  %2565 = fmul fast float %2554, %2562
  %2566 = fadd fast float %2563, %2541
  %2567 = fadd fast float %2564, %2542
  %2568 = fadd fast float %2565, %2543
  %2569 = fsub fast float %2374, %1982
  %2570 = fmul fast float %2554, %2569
  %2571 = fadd fast float %2570, %1982
  %2572 = fsub fast float %2516, %2544
  %2573 = fsub fast float %2517, %2545
  %2574 = fsub fast float %2518, %2546
  %2575 = fmul fast float %2559, %2572
  %2576 = fmul fast float %2559, %2573
  %2577 = fmul fast float %2559, %2574
  %2578 = fadd fast float %2575, %2544
  %2579 = fadd fast float %2576, %2545
  %2580 = fadd fast float %2577, %2546
  %2581 = fsub fast float %2531, %1985
  %2582 = fmul fast float %2554, %2581
  %2583 = fadd fast float %2582, %1985
  br label %2629

; <label>:2584                                    ; preds = %2551
  %2585 = icmp eq i32 %2549, 1
  br i1 %2585, label %2586, label %2599

; <label>:2586                                    ; preds = %2584
  %2587 = fadd fast float %2388, -1.000000e+00
  %2588 = fadd fast float %2389, -1.000000e+00
  %2589 = fadd fast float %2390, -1.000000e+00
  %2590 = fmul fast float %2554, %2587
  %2591 = fmul fast float %2554, %2588
  %2592 = fmul fast float %2554, %2589
  %2593 = fadd fast float %2590, 1.000000e+00
  %2594 = fadd fast float %2591, 1.000000e+00
  %2595 = fadd fast float %2592, 1.000000e+00
  %2596 = fmul fast float %2593, %2541
  %2597 = fmul fast float %2594, %2542
  %2598 = fmul fast float %2595, %2543
  br label %2629

; <label>:2599                                    ; preds = %2584
  %2600 = icmp eq i32 %2549, 2
  br i1 %2600, label %2601, label %2629

; <label>:2601                                    ; preds = %2599
  %2602 = call float @dx.op.unary.f32(i32 24, float %2388)  ; Sqrt(value)
  %2603 = call float @dx.op.unary.f32(i32 24, float %2389)  ; Sqrt(value)
  %2604 = call float @dx.op.unary.f32(i32 24, float %2390)  ; Sqrt(value)
  %2605 = fadd fast float %2602, -5.000000e-01
  %2606 = fadd fast float %2603, -5.000000e-01
  %2607 = fadd fast float %2604, -5.000000e-01
  %2608 = fmul fast float %2605, %2554
  %2609 = fmul fast float %2606, %2554
  %2610 = fmul fast float %2607, %2554
  %2611 = fadd fast float %2608, 5.000000e-01
  %2612 = fadd fast float %2609, 5.000000e-01
  %2613 = fadd fast float %2610, 5.000000e-01
  %2614 = fmul fast float %2611, 2.000000e+00
  %2615 = fsub fast float 1.000000e+00, %2614
  %2616 = fmul fast float %2615, %2541
  %2617 = fadd fast float %2616, %2614
  %2618 = fmul fast float %2617, %2541
  %2619 = fmul fast float %2612, 2.000000e+00
  %2620 = fsub fast float 1.000000e+00, %2619
  %2621 = fmul fast float %2620, %2542
  %2622 = fadd fast float %2621, %2619
  %2623 = fmul fast float %2622, %2542
  %2624 = fmul fast float %2613, 2.000000e+00
  %2625 = fsub fast float 1.000000e+00, %2624
  %2626 = fmul fast float %2625, %2543
  %2627 = fadd fast float %2626, %2624
  %2628 = fmul fast float %2627, %2543
  br label %2629

; <label>:2629                                    ; preds = %2601, %2599, %2586, %2556, %2540
  %2630 = phi float [ %2541, %2540 ], [ %2618, %2601 ], [ %2541, %2599 ], [ %2596, %2586 ], [ %2566, %2556 ]
  %2631 = phi float [ %2542, %2540 ], [ %2623, %2601 ], [ %2542, %2599 ], [ %2597, %2586 ], [ %2567, %2556 ]
  %2632 = phi float [ %2543, %2540 ], [ %2628, %2601 ], [ %2543, %2599 ], [ %2598, %2586 ], [ %2568, %2556 ]
  %2633 = phi float [ %2544, %2540 ], [ %2544, %2601 ], [ %2544, %2599 ], [ %2544, %2586 ], [ %2578, %2556 ]
  %2634 = phi float [ %2545, %2540 ], [ %2545, %2601 ], [ %2545, %2599 ], [ %2545, %2586 ], [ %2579, %2556 ]
  %2635 = phi float [ %2546, %2540 ], [ %2546, %2601 ], [ %2546, %2599 ], [ %2546, %2586 ], [ %2580, %2556 ]
  %2636 = phi float [ %1982, %2540 ], [ %1982, %2601 ], [ %1982, %2599 ], [ %1982, %2586 ], [ %2571, %2556 ]
  %2637 = phi float [ %1985, %2540 ], [ %1985, %2601 ], [ %1985, %2599 ], [ %1985, %2586 ], [ %2583, %2556 ]
  %2638 = and i32 %2548, 12
  %2639 = icmp eq i32 %2638, 12
  br i1 %2639, label %2712, label %2640

; <label>:2640                                    ; preds = %2629
  %2641 = and i32 %2548, 2097184
  %2642 = icmp eq i32 %2641, 2097184
  %2643 = select i1 %2642, float %2168, float 0.000000e+00
  %2644 = and i32 %2548, 4194336
  %2645 = icmp eq i32 %2644, 4194336
  %2646 = select i1 %2645, float %2168, float 0.000000e+00
  %2647 = and i32 %2548, 8388640
  %2648 = icmp eq i32 %2647, 8388640
  %2649 = select i1 %2648, float %2168, float 0.000000e+00
  %2650 = icmp eq i32 %2638, 0
  br i1 %2650, label %2651, label %2664

; <label>:2651                                    ; preds = %2640
  %2652 = fsub fast float %2469, %1974
  %2653 = fsub fast float %2470, %1975
  %2654 = fmul fast float %2643, %2652
  %2655 = fmul fast float %2643, %2653
  %2656 = fadd fast float %2654, %1974
  %2657 = fadd fast float %2655, %1975
  %2658 = fsub fast float %2471, %1984
  %2659 = fmul fast float %2646, %2658
  %2660 = fadd fast float %2659, %1984
  %2661 = fsub fast float %2468, %1983
  %2662 = fmul fast float %2649, %2661
  %2663 = fadd fast float %2662, %1983
  br label %2712

; <label>:2664                                    ; preds = %2640
  %2665 = icmp eq i32 %2638, 4
  br i1 %2665, label %2666, label %2698

; <label>:2666                                    ; preds = %2664
  %2667 = fmul fast float %2643, %2469
  %2668 = fmul fast float %2643, %2470
  %2669 = fadd fast float %2667, %1974
  %2670 = fadd fast float %2668, %1975
  %2671 = call float @dx.op.binary.f32(i32 36, float %1984, float %2471)  ; FMin(a,b)
  %2672 = fsub fast float %2671, %1984
  %2673 = fmul fast float %2672, %2646
  %2674 = fadd fast float %2673, %1984
  %2675 = fadd fast float %2468, %1983
  %2676 = fmul fast float %2675, 0x3FF337FAE0000000
  %2677 = fmul fast float %1983, %1983
  %2678 = fmul fast float %2468, %2468
  %2679 = fadd fast float %2678, %2677
  %2680 = fmul fast float %2679, 0x3FE5152B00000000
  %2681 = fmul fast float %1983, 0xBFCC1F85E0000000
  %2682 = fmul fast float %2681, %2468
  %2683 = fadd fast float %2682, 0xBFE1363700000000
  %2684 = fadd fast float %2683, %2676
  %2685 = fsub fast float %2684, %2680
  %2686 = fmul fast float %2675, 0x3FBA6F0D00000000
  %2687 = fmul fast float %2679, 0x3FD0432880000000
  %2688 = fmul fast float %1983, 0xBFEF110800000000
  %2689 = fmul fast float %2688, %2468
  %2690 = fadd fast float %2689, 1.000000e+00
  %2691 = fsub fast float %2690, %2686
  %2692 = fadd fast float %2691, %2687
  %2693 = fdiv fast float %2685, %2692
  %2694 = call float @dx.op.unary.f32(i32 7, float %2693)  ; Saturate(value)
  %2695 = fsub fast float %2694, %1983
  %2696 = fmul fast float %2695, %2649
  %2697 = fadd fast float %2696, %1983
  br label %2712

; <label>:2698                                    ; preds = %2664
  %2699 = icmp eq i32 %2638, 8
  br i1 %2699, label %2700, label %2712

; <label>:2700                                    ; preds = %2698
  %2701 = fmul fast float %2643, %2469
  %2702 = fmul fast float %2643, %2470
  %2703 = fadd fast float %2701, %1974
  %2704 = fadd fast float %2702, %1975
  %2705 = call float @dx.op.binary.f32(i32 36, float %1984, float %2471)  ; FMin(a,b)
  %2706 = fsub fast float %2705, %1984
  %2707 = fmul fast float %2706, %2646
  %2708 = fadd fast float %2707, %1984
  %2709 = fsub fast float %2468, %1983
  %2710 = fmul fast float %2649, %2709
  %2711 = fadd fast float %2710, %1983
  br label %2712

; <label>:2712                                    ; preds = %2700, %2698, %2666, %2651, %2629, %2167, %1986, %1973
  %2713 = phi float [ %1974, %2629 ], [ %1974, %2167 ], [ %1974, %1973 ], [ %2703, %2700 ], [ %1974, %2698 ], [ %2669, %2666 ], [ %2656, %2651 ], [ %1974, %1986 ]
  %2714 = phi float [ %1975, %2629 ], [ %1975, %2167 ], [ %1975, %1973 ], [ %2704, %2700 ], [ %1975, %2698 ], [ %2670, %2666 ], [ %2657, %2651 ], [ %1975, %1986 ]
  %2715 = phi float [ %2630, %2629 ], [ %1976, %2167 ], [ %1976, %1973 ], [ %2630, %2700 ], [ %2630, %2698 ], [ %2630, %2666 ], [ %2630, %2651 ], [ %1976, %1986 ]
  %2716 = phi float [ %2631, %2629 ], [ %1977, %2167 ], [ %1977, %1973 ], [ %2631, %2700 ], [ %2631, %2698 ], [ %2631, %2666 ], [ %2631, %2651 ], [ %1977, %1986 ]
  %2717 = phi float [ %2632, %2629 ], [ %1978, %2167 ], [ %1978, %1973 ], [ %2632, %2700 ], [ %2632, %2698 ], [ %2632, %2666 ], [ %2632, %2651 ], [ %1978, %1986 ]
  %2718 = phi float [ %2633, %2629 ], [ %1979, %2167 ], [ %1979, %1973 ], [ %2633, %2700 ], [ %2633, %2698 ], [ %2633, %2666 ], [ %2633, %2651 ], [ %1979, %1986 ]
  %2719 = phi float [ %2634, %2629 ], [ %1980, %2167 ], [ %1980, %1973 ], [ %2634, %2700 ], [ %2634, %2698 ], [ %2634, %2666 ], [ %2634, %2651 ], [ %1980, %1986 ]
  %2720 = phi float [ %2635, %2629 ], [ %1981, %2167 ], [ %1981, %1973 ], [ %2635, %2700 ], [ %2635, %2698 ], [ %2635, %2666 ], [ %2635, %2651 ], [ %1981, %1986 ]
  %2721 = phi float [ %2636, %2629 ], [ %1982, %2167 ], [ %1982, %1973 ], [ %2636, %2700 ], [ %2636, %2698 ], [ %2636, %2666 ], [ %2636, %2651 ], [ %1982, %1986 ]
  %2722 = phi float [ %1983, %2629 ], [ %1983, %2167 ], [ %1983, %1973 ], [ %2711, %2700 ], [ %1983, %2698 ], [ %2697, %2666 ], [ %2663, %2651 ], [ %1983, %1986 ]
  %2723 = phi float [ %1984, %2629 ], [ %1984, %2167 ], [ %1984, %1973 ], [ %2708, %2700 ], [ %1984, %2698 ], [ %2674, %2666 ], [ %2660, %2651 ], [ %1984, %1986 ]
  %2724 = phi float [ %2637, %2629 ], [ %1985, %2167 ], [ %1985, %1973 ], [ %2637, %2700 ], [ %2637, %2698 ], [ %2637, %2666 ], [ %2637, %2651 ], [ %1985, %1986 ]
  br i1 %636, label %3451, label %2725

; <label>:2725                                    ; preds = %2712
  %2726 = icmp ult i32 %690, 4
  %2727 = add i32 %49, 72
  %2728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2727, i32 undef)  ; BufferLoad(srv,index,wot)
  %2729 = extractvalue %dx.types.ResRet.i32 %2728, 0
  %2730 = add i32 %49, 76
  %2731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2730, i32 undef)  ; BufferLoad(srv,index,wot)
  %2732 = extractvalue %dx.types.ResRet.i32 %2731, 0
  %2733 = or i32 %2732, %2729
  %2734 = icmp eq i32 %2733, 0
  br i1 %2734, label %3451, label %2735

; <label>:2735                                    ; preds = %2725
  %2736 = and i32 %2729, 262144
  %2737 = icmp ne i32 %2736, 0
  %2738 = select i1 %2737, float %55, float 1.000000e+00
  %2739 = select i1 %2737, float %56, float 0.000000e+00
  %2740 = select i1 %2737, float %57, float 0.000000e+00
  %2741 = select i1 %2737, float %58, float 1.000000e+00
  %2742 = select i1 %2737, float %59, float %82
  %2743 = select i1 %2737, float %60, float %83
  %2744 = add i32 %49, 332
  %2745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2744, i32 undef)  ; BufferLoad(srv,index,wot)
  %2746 = extractvalue %dx.types.ResRet.i32 %2745, 0
  %2747 = lshr i32 %2746, 16
  %2748 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2747)  ; LegacyF16ToF32(value)
  %2749 = fmul fast float %2748, 0x3F50624DE0000000
  %2750 = add i32 %49, 136
  %2751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2750, i32 undef)  ; BufferLoad(srv,index,wot)
  %2752 = extractvalue %dx.types.ResRet.i32 %2751, 0
  %2753 = lshr i32 %2752, 16
  %2754 = and i32 %2753, 255
  %2755 = lshr i32 %2752, 24
  %2756 = add i32 %49, 340
  %2757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2756, i32 undef)  ; BufferLoad(srv,index,wot)
  %2758 = extractvalue %dx.types.ResRet.i32 %2757, 0
  %2759 = and i32 %2758, 65535
  %2760 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2759)  ; LegacyF16ToF32(value)
  %2761 = lshr i32 %2758, 16
  %2762 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2761)  ; LegacyF16ToF32(value)
  %2763 = add i32 %49, 80
  %2764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2763, i32 undef)  ; BufferLoad(srv,index,wot)
  %2765 = extractvalue %dx.types.ResRet.i32 %2764, 0
  %2766 = lshr i32 %2765, 22
  %2767 = shl nuw nsw i32 %2766, 5
  %2768 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2767)  ; LegacyF16ToF32(value)
  %2769 = shl i32 %2765, 4
  %2770 = and i32 %2769, 32752
  %2771 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2770)  ; LegacyF16ToF32(value)
  %2772 = lshr i32 %2765, 7
  %2773 = and i32 %2772, 32752
  %2774 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2773)  ; LegacyF16ToF32(value)
  %2775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2776 = extractvalue %dx.types.CBufRet.f32 %2775, 3
  %2777 = fmul fast float %2776, 1.000000e+03
  %2778 = fmul fast float %2777, %625
  %2779 = call float @dx.op.unary.f32(i32 22, float %2778)  ; Frc(value)
  %2780 = fadd fast float %2779, %613
  %2781 = fmul fast float %2777, %627
  %2782 = call float @dx.op.unary.f32(i32 22, float %2781)  ; Frc(value)
  %2783 = fadd fast float %2782, %614
  %2784 = fmul fast float %2749, %2777
  %2785 = call float @dx.op.unary.f32(i32 22, float %2784)  ; Frc(value)
  %2786 = fmul fast float %2785, 0x401921FB60000000
  %2787 = fadd fast float %2786, %2768
  %2788 = call float @dx.op.unary.f32(i32 13, float %2787)  ; Sin(value)
  %2789 = call float @dx.op.unary.f32(i32 12, float %2787)  ; Cos(value)
  %2790 = fsub fast float -0.000000e+00, %2788
  %2791 = fadd fast float %2742, -5.000000e-01
  %2792 = fadd fast float %2743, -5.000000e-01
  %2793 = fmul fast float %2760, %2791
  %2794 = fmul fast float %2762, %2792
  %2795 = fadd fast float %2793, 5.000000e-01
  %2796 = fadd fast float %2794, 5.000000e-01
  %2797 = fmul fast float %2771, %2795
  %2798 = fmul fast float %2774, %2796
  %2799 = fmul fast float %2789, %2797
  %2800 = call float @dx.op.tertiary.f32(i32 46, float %2790, float %2798, float %2799)  ; FMad(a,b,c)
  %2801 = fmul fast float %2788, %2797
  %2802 = call float @dx.op.tertiary.f32(i32 46, float %2789, float %2798, float %2801)  ; FMad(a,b,c)
  %2803 = fadd fast float %2780, %2800
  %2804 = fadd fast float %2783, %2802
  %2805 = icmp ugt i32 %2754, 1
  %2806 = icmp ugt i32 %2752, 33554431
  %2807 = or i1 %2806, %2805
  br i1 %2807, label %2808, label %2833

; <label>:2808                                    ; preds = %2735
  %2809 = add i32 %49, 276
  %2810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2809, i32 undef)  ; BufferLoad(srv,index,wot)
  %2811 = extractvalue %dx.types.ResRet.i32 %2810, 0
  %2812 = lshr i32 %2811, 16
  %2813 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2812)  ; LegacyF16ToF32(value)
  %2814 = fmul fast float %2776, %2813
  %2815 = call float @dx.op.unary.f32(i32 22, float %2814)  ; Frc(value)
  %2816 = mul nuw nsw i32 %2754, %2755
  %2817 = uitofp i32 %2816 to float
  %2818 = fmul fast float %2815, %2817
  %2819 = call float @dx.op.unary.f32(i32 27, float %2818)  ; Round_ni(value)
  %2820 = fptoui float %2819 to i32
  %2821 = urem i32 %2820, %2754
  %2822 = udiv i32 %2820, %2755
  %2823 = call float @dx.op.unary.f32(i32 22, float %2803)  ; Frc(value)
  %2824 = call float @dx.op.unary.f32(i32 22, float %2804)  ; Frc(value)
  %2825 = uitofp i32 %2821 to float
  %2826 = uitofp i32 %2822 to float
  %2827 = fadd fast float %2823, %2825
  %2828 = fadd fast float %2824, %2826
  %2829 = uitofp i32 %2754 to float
  %2830 = uitofp i32 %2755 to float
  %2831 = fdiv fast float %2827, %2829
  %2832 = fdiv fast float %2828, %2830
  br label %2833

; <label>:2833                                    ; preds = %2808, %2735
  %2834 = phi float [ %2831, %2808 ], [ %2803, %2735 ]
  %2835 = phi float [ %2832, %2808 ], [ %2804, %2735 ]
  %2836 = and i32 %2729, 256
  %2837 = icmp eq i32 %2836, 0
  br i1 %2837, label %2884, label %2838

; <label>:2838                                    ; preds = %2833
  %2839 = add i32 %49, 436
  %2840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2839, i32 undef)  ; BufferLoad(srv,index,wot)
  %2841 = extractvalue %dx.types.ResRet.i32 %2840, 0
  %2842 = add i32 %2841, 0
  %2843 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2842, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2844 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2843, %dx.types.Handle %101, float %2834, float %2835, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2845 = extractvalue %dx.types.ResRet.f32 %2844, 0
  %2846 = add i32 %49, 148
  %2847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %2848 = extractvalue %dx.types.ResRet.i32 %2847, 0
  %2849 = shl i32 %2848, 4
  %2850 = and i32 %2849, 32752
  %2851 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2850)  ; LegacyF16ToF32(value)
  %2852 = lshr i32 %2848, 7
  %2853 = and i32 %2852, 32752
  %2854 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2853)  ; LegacyF16ToF32(value)
  %2855 = fsub fast float 1.000000e+00, %685
  %2856 = call float @dx.op.binary.f32(i32 35, float %2855, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2857 = bitcast float %685 to i32
  %2858 = sitofp i32 %2857 to float
  %2859 = fadd fast float %2858, 0xC1CFBF8940000000
  %2860 = fmul fast float %2854, %2859
  %2861 = fadd fast float %2860, 0x41CFBF8940000000
  %2862 = fptosi float %2861 to i32
  %2863 = bitcast i32 %2862 to float
  %2864 = bitcast float %2856 to i32
  %2865 = sitofp i32 %2864 to float
  %2866 = fadd fast float %2865, 0xC1CFBF8940000000
  %2867 = fmul fast float %2866, %2854
  %2868 = fadd fast float %2867, 0x41CFBF8940000000
  %2869 = fptosi float %2868 to i32
  %2870 = bitcast i32 %2869 to float
  %2871 = fmul fast float %2863, %2851
  %2872 = fmul fast float %2870, %2851
  %2873 = fsub fast float %2856, %2871
  %2874 = fadd fast float %2872, %2856
  %2875 = call float @dx.op.unary.f32(i32 7, float %2873)  ; Saturate(value)
  %2876 = call float @dx.op.unary.f32(i32 7, float %2874)  ; Saturate(value)
  %2877 = fsub fast float %2845, %2875
  %2878 = fsub fast float %2876, %2875
  %2879 = bitcast float %2878 to i32
  %2880 = sub nsw i32 2129859010, %2879
  %2881 = bitcast i32 %2880 to float
  %2882 = fmul fast float %2881, %2877
  %2883 = call float @dx.op.unary.f32(i32 7, float %2882)  ; Saturate(value)
  br label %2884

; <label>:2884                                    ; preds = %2838, %2833
  %2885 = phi float [ %2883, %2838 ], [ %685, %2833 ]
  %2886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2727, i32 undef)  ; BufferLoad(srv,index,wot)
  %2887 = extractvalue %dx.types.ResRet.i32 %2886, 0
  %2888 = and i32 %2887, 128
  %2889 = icmp eq i32 %2888, 0
  br i1 %2889, label %2906, label %2890

; <label>:2890                                    ; preds = %2884
  %2891 = add i32 %49, 420
  %2892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2891, i32 undef)  ; BufferLoad(srv,index,wot)
  %2893 = extractvalue %dx.types.ResRet.i32 %2892, 0
  %2894 = add i32 %2893, 0
  %2895 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2894, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2896 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2895, %dx.types.Handle %101, float %2834, float %2835, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2897 = extractvalue %dx.types.ResRet.f32 %2896, 0
  %2898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2727, i32 undef)  ; BufferLoad(srv,index,wot)
  %2899 = extractvalue %dx.types.ResRet.i32 %2898, 0
  %2900 = and i32 %2899, 524288
  %2901 = icmp ne i32 %2900, 0
  %2902 = fcmp fast ogt float %2897, 0x3FE0101020000000
  %2903 = select i1 %2902, float 1.000000e+00, float 0.000000e+00
  %2904 = select i1 %2901, float %2903, float %2897
  %2905 = fmul fast float %2904, %2885
  br label %2906

; <label>:2906                                    ; preds = %2890, %2884
  %2907 = phi float [ %2905, %2890 ], [ %2885, %2884 ]
  %2908 = fcmp fast ult float %2907, 0x3F70101020000000
  br i1 %2908, label %3451, label %2909

; <label>:2909                                    ; preds = %2906
  %2910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2727, i32 undef)  ; BufferLoad(srv,index,wot)
  %2911 = extractvalue %dx.types.ResRet.i32 %2910, 0
  %2912 = and i32 %2911, 16
  %2913 = icmp eq i32 %2912, 0
  br i1 %2913, label %3112, label %2914

; <label>:2914                                    ; preds = %2909
  %2915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2750, i32 undef)  ; BufferLoad(srv,index,wot)
  %2916 = extractvalue %dx.types.ResRet.i32 %2915, 0
  %2917 = add i32 %49, 372
  %2918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2917, i32 undef)  ; BufferLoad(srv,index,wot)
  %2919 = extractvalue %dx.types.ResRet.i32 %2918, 0
  %2920 = add i32 %2919, 0
  %2921 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2920, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2922 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2921, %dx.types.Handle %100, float %2834, float %2835, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2923 = extractvalue %dx.types.ResRet.f32 %2922, 0
  %2924 = extractvalue %dx.types.ResRet.f32 %2922, 1
  %2925 = extractvalue %dx.types.ResRet.f32 %2922, 2
  %2926 = extractvalue %dx.types.ResRet.f32 %2922, 3
  %2927 = and i32 %2916, 255
  %2928 = uitofp i32 %2927 to float
  %2929 = lshr i32 %2916, 8
  %2930 = and i32 %2929, 255
  %2931 = uitofp i32 %2930 to float
  %2932 = fmul fast float %2926, %2928
  %2933 = fadd fast float %2932, %2931
  %2934 = fmul fast float %2933, 0x3F70101000000000
  %2935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2727, i32 undef)  ; BufferLoad(srv,index,wot)
  %2936 = extractvalue %dx.types.ResRet.i32 %2935, 0
  %2937 = and i32 %2936, 512
  %2938 = icmp eq i32 %2937, 0
  br i1 %2938, label %2947, label %2939

; <label>:2939                                    ; preds = %2914
  %2940 = add i32 %49, 452
  %2941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %2942 = extractvalue %dx.types.ResRet.i32 %2941, 0
  %2943 = add i32 %2942, 0
  %2944 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2943, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2945 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2944, %dx.types.Handle %101, float %2834, float %2835, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2946 = extractvalue %dx.types.ResRet.f32 %2945, 0
  br label %2947

; <label>:2947                                    ; preds = %2939, %2914
  %2948 = phi float [ %2946, %2939 ], [ 1.000000e+00, %2914 ]
  %2949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2727, i32 undef)  ; BufferLoad(srv,index,wot)
  %2950 = extractvalue %dx.types.ResRet.i32 %2949, 0
  %2951 = and i32 %2950, 33554432
  %2952 = icmp eq i32 %2951, 0
  br i1 %2952, label %3059, label %2953

; <label>:2953                                    ; preds = %2947
  %2954 = add i32 %49, 272
  %2955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2954, i32 undef)  ; BufferLoad(srv,index,wot)
  %2956 = extractvalue %dx.types.ResRet.i32 %2955, 0
  %2957 = and i32 %2956, 65535
  %2958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2957)  ; LegacyF16ToF32(value)
  %2959 = lshr i32 %2956, 16
  %2960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2959)  ; LegacyF16ToF32(value)
  %2961 = add i32 %49, 276
  %2962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2961, i32 undef)  ; BufferLoad(srv,index,wot)
  %2963 = extractvalue %dx.types.ResRet.i32 %2962, 0
  %2964 = and i32 %2963, 65535
  %2965 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2964)  ; LegacyF16ToF32(value)
  %2966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %2967 = extractvalue %dx.types.ResRet.i32 %2966, 0
  %2968 = lshr i32 %2967, 24
  %2969 = uitofp i32 %2968 to float
  %2970 = fmul fast float %2969, 0x3F70101020000000
  %2971 = and i32 %2967, 255
  %2972 = uitofp i32 %2971 to float
  %2973 = fmul fast float %2972, 0x3F70101020000000
  %2974 = lshr i32 %2967, 8
  %2975 = and i32 %2974, 255
  %2976 = uitofp i32 %2975 to float
  %2977 = fmul fast float %2976, 0x3F70101020000000
  %2978 = lshr i32 %2967, 16
  %2979 = and i32 %2978, 255
  %2980 = uitofp i32 %2979 to float
  %2981 = fmul fast float %2980, 0x3F70101020000000
  %2982 = add i32 %49, 268
  %2983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2982, i32 undef)  ; BufferLoad(srv,index,wot)
  %2984 = extractvalue %dx.types.ResRet.i32 %2983, 0
  %2985 = lshr i32 %2984, 24
  %2986 = uitofp i32 %2985 to float
  %2987 = fmul fast float %2986, 0x3F70101020000000
  %2988 = and i32 %2984, 255
  %2989 = uitofp i32 %2988 to float
  %2990 = fmul fast float %2989, 0x3F70101020000000
  %2991 = lshr i32 %2984, 8
  %2992 = and i32 %2991, 255
  %2993 = uitofp i32 %2992 to float
  %2994 = fmul fast float %2993, 0x3F70101020000000
  %2995 = lshr i32 %2984, 16
  %2996 = and i32 %2995, 255
  %2997 = uitofp i32 %2996 to float
  %2998 = fmul fast float %2997, 0x3F70101020000000
  %2999 = bitcast float %2923 to i32
  %3000 = ashr i32 %2999, 1
  %3001 = sub nsw i32 1597463174, %3000
  %3002 = bitcast i32 %3001 to float
  %3003 = fmul fast float %2923, 5.000000e-01
  %3004 = fmul fast float %3002, %3002
  %3005 = fmul fast float %3004, %3003
  %3006 = fsub fast float 1.500000e+00, %3005
  %3007 = fmul fast float %3002, %2923
  %3008 = fmul fast float %3007, %3006
  %3009 = bitcast float %2924 to i32
  %3010 = ashr i32 %3009, 1
  %3011 = sub nsw i32 1597463174, %3010
  %3012 = bitcast i32 %3011 to float
  %3013 = fmul fast float %2924, 5.000000e-01
  %3014 = fmul fast float %3012, %3012
  %3015 = fmul fast float %3014, %3013
  %3016 = fsub fast float 1.500000e+00, %3015
  %3017 = fmul fast float %3012, %2924
  %3018 = fmul fast float %3017, %3016
  %3019 = bitcast float %2925 to i32
  %3020 = ashr i32 %3019, 1
  %3021 = sub nsw i32 1597463174, %3020
  %3022 = bitcast i32 %3021 to float
  %3023 = fmul fast float %2925, 5.000000e-01
  %3024 = fmul fast float %3022, %3022
  %3025 = fmul fast float %3024, %3023
  %3026 = fsub fast float 1.500000e+00, %3025
  %3027 = fmul fast float %3022, %2925
  %3028 = fmul fast float %3027, %3026
  %3029 = fsub fast float %3008, %2990
  %3030 = fsub fast float %3018, %2994
  %3031 = fsub fast float %3028, %2998
  %3032 = fmul fast float %3029, %2958
  %3033 = fmul fast float %3030, %2960
  %3034 = fmul fast float %3031, %2965
  %3035 = fadd fast float %3032, %2973
  %3036 = fadd fast float %3033, %2977
  %3037 = fadd fast float %3034, %2981
  %3038 = call float @dx.op.unary.f32(i32 7, float %3035)  ; Saturate(value)
  %3039 = call float @dx.op.unary.f32(i32 7, float %3036)  ; Saturate(value)
  %3040 = call float @dx.op.unary.f32(i32 7, float %3037)  ; Saturate(value)
  %3041 = fmul fast float %3038, %3038
  %3042 = fmul fast float %3039, %3039
  %3043 = fmul fast float %3040, %3040
  %3044 = fsub fast float %3041, %2923
  %3045 = fsub fast float %3042, %2924
  %3046 = fsub fast float %3043, %2925
  %3047 = fmul fast float %3044, %2948
  %3048 = fmul fast float %3045, %2948
  %3049 = fmul fast float %3046, %2948
  %3050 = fadd fast float %3047, %2923
  %3051 = fadd fast float %3048, %2924
  %3052 = fadd fast float %3049, %2925
  %3053 = fadd fast float %2970, %2934
  %3054 = fsub fast float %3053, %2987
  %3055 = call float @dx.op.unary.f32(i32 7, float %3054)  ; Saturate(value)
  %3056 = fsub fast float %3055, %2934
  %3057 = fmul fast float %3056, %2948
  %3058 = fadd fast float %3057, %2934
  br label %3112

; <label>:3059                                    ; preds = %2947
  %3060 = and i32 %2950, 134217728
  %3061 = icmp eq i32 %3060, 0
  br i1 %3061, label %3096, label %3062

; <label>:3062                                    ; preds = %3059
  %3063 = call float @dx.op.unary.f32(i32 24, float %601)  ; Sqrt(value)
  %3064 = call float @dx.op.unary.f32(i32 24, float %602)  ; Sqrt(value)
  %3065 = call float @dx.op.unary.f32(i32 24, float %603)  ; Sqrt(value)
  %3066 = fadd fast float %3063, -5.000000e-01
  %3067 = fadd fast float %3064, -5.000000e-01
  %3068 = fadd fast float %3065, -5.000000e-01
  %3069 = fmul fast float %3066, %2948
  %3070 = fmul fast float %3067, %2948
  %3071 = fmul fast float %3068, %2948
  %3072 = fadd fast float %3069, 5.000000e-01
  %3073 = fadd fast float %3070, 5.000000e-01
  %3074 = fadd fast float %3071, 5.000000e-01
  %3075 = call float @dx.op.unary.f32(i32 24, float %2923)  ; Sqrt(value)
  %3076 = call float @dx.op.unary.f32(i32 24, float %2924)  ; Sqrt(value)
  %3077 = call float @dx.op.unary.f32(i32 24, float %2925)  ; Sqrt(value)
  %3078 = fmul fast float %3072, 2.000000e+00
  %3079 = fsub fast float 1.000000e+00, %3078
  %3080 = fmul fast float %3079, %3075
  %3081 = fadd fast float %3080, %3078
  %3082 = fmul fast float %3081, %3075
  %3083 = fmul fast float %3073, 2.000000e+00
  %3084 = fsub fast float 1.000000e+00, %3083
  %3085 = fmul fast float %3084, %3076
  %3086 = fadd fast float %3085, %3083
  %3087 = fmul fast float %3086, %3076
  %3088 = fmul fast float %3074, 2.000000e+00
  %3089 = fsub fast float 1.000000e+00, %3088
  %3090 = fmul fast float %3089, %3077
  %3091 = fadd fast float %3090, %3088
  %3092 = fmul fast float %3091, %3077
  %3093 = fmul fast float %3082, %3082
  %3094 = fmul fast float %3087, %3087
  %3095 = fmul fast float %3092, %3092
  br label %3112

; <label>:3096                                    ; preds = %3059
  %3097 = fmul fast float %601, %601
  %3098 = fmul fast float %602, %602
  %3099 = fmul fast float %603, %603
  %3100 = fadd fast float %3097, -1.000000e+00
  %3101 = fadd fast float %3098, -1.000000e+00
  %3102 = fadd fast float %3099, -1.000000e+00
  %3103 = fmul fast float %2948, %3100
  %3104 = fmul fast float %2948, %3101
  %3105 = fmul fast float %2948, %3102
  %3106 = fadd fast float %3103, 1.000000e+00
  %3107 = fadd fast float %3104, 1.000000e+00
  %3108 = fadd fast float %3105, 1.000000e+00
  %3109 = fmul fast float %3106, %2923
  %3110 = fmul fast float %3107, %2924
  %3111 = fmul fast float %3108, %2925
  br label %3112

; <label>:3112                                    ; preds = %3096, %3062, %2953, %2909
  %3113 = phi float [ %3058, %2953 ], [ %2934, %3062 ], [ %2934, %3096 ], [ 0x3FA23C0BE0000000, %2909 ]
  %3114 = phi float [ %3050, %2953 ], [ %3093, %3062 ], [ %3109, %3096 ], [ 1.000000e+00, %2909 ]
  %3115 = phi float [ %3051, %2953 ], [ %3094, %3062 ], [ %3110, %3096 ], [ 1.000000e+00, %2909 ]
  %3116 = phi float [ %3052, %2953 ], [ %3095, %3062 ], [ %3111, %3096 ], [ 1.000000e+00, %2909 ]
  %3117 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3118 = extractvalue %dx.types.CBufRet.i32 %3117, 1
  %3119 = and i32 %3118, 1
  %3120 = icmp ne i32 %3119, 0
  %3121 = add i32 %49, 356
  %3122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3121, i32 undef)  ; BufferLoad(srv,index,wot)
  %3123 = extractvalue %dx.types.ResRet.i32 %3122, 0
  %3124 = and i32 %3123, 32
  %3125 = icmp ne i32 %3124, 0
  %3126 = and i1 %3120, %3125
  %3127 = select i1 %3126, float 1.000000e+00, float %3114
  %3128 = select i1 %3126, float 0x3FD3333340000000, float %3115
  %3129 = select i1 %3126, float 0x3FD3333340000000, float %3116
  %3130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2727, i32 undef)  ; BufferLoad(srv,index,wot)
  %3131 = extractvalue %dx.types.ResRet.i32 %3130, 0
  %3132 = and i32 %3131, 32
  %3133 = icmp eq i32 %3132, 0
  br i1 %3133, label %3206, label %3134

; <label>:3134                                    ; preds = %3112
  %3135 = add i32 %49, 140
  %3136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3135, i32 undef)  ; BufferLoad(srv,index,wot)
  %3137 = extractvalue %dx.types.ResRet.i32 %3136, 0
  %3138 = add i32 %49, 388
  %3139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3138, i32 undef)  ; BufferLoad(srv,index,wot)
  %3140 = extractvalue %dx.types.ResRet.i32 %3139, 0
  %3141 = add i32 %3140, 0
  %3142 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3141, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3143 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3142, %dx.types.Handle %100, float %2834, float %2835, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3144 = extractvalue %dx.types.ResRet.f32 %3143, 0
  %3145 = extractvalue %dx.types.ResRet.f32 %3143, 1
  %3146 = extractvalue %dx.types.ResRet.f32 %3143, 2
  %3147 = extractvalue %dx.types.ResRet.f32 %3143, 3
  %3148 = and i32 %3137, 255
  %3149 = uitofp i32 %3148 to float
  %3150 = lshr i32 %3137, 8
  %3151 = and i32 %3150, 255
  %3152 = uitofp i32 %3151 to float
  %3153 = lshr i32 %3137, 16
  %3154 = and i32 %3153, 255
  %3155 = uitofp i32 %3154 to float
  %3156 = fmul fast float %3155, 0x3F70101000000000
  %3157 = fmul fast float %3144, %3149
  %3158 = fadd fast float %3157, %3152
  %3159 = fmul fast float %3158, 0x3F70101000000000
  %3160 = fadd fast float %3145, -5.000000e-01
  %3161 = fadd fast float %3147, -5.000000e-01
  %3162 = fmul fast float %3160, %3156
  %3163 = fmul fast float %3161, %3156
  %3164 = fadd fast float %3162, 5.000000e-01
  %3165 = fadd fast float %3163, 5.000000e-01
  %3166 = fmul fast float %3164, 2.000000e+00
  %3167 = fadd fast float %3166, -1.000000e+00
  %3168 = fmul fast float %3165, 2.000000e+00
  %3169 = fadd fast float %3168, -1.000000e+00
  %3170 = fadd fast float %3167, %3169
  %3171 = fmul fast float %3170, 5.000000e-01
  %3172 = fsub fast float %3167, %3169
  %3173 = fmul fast float %3172, 5.000000e-01
  %3174 = call float @dx.op.unary.f32(i32 6, float %3171)  ; FAbs(value)
  %3175 = fsub fast float 1.000000e+00, %3174
  %3176 = call float @dx.op.unary.f32(i32 6, float %3173)  ; FAbs(value)
  %3177 = fsub fast float %3175, %3176
  %3178 = call float @dx.op.dot3.f32(i32 55, float %3171, float %3173, float %3177, float %3171, float %3173, float %3177)  ; Dot3(ax,ay,az,bx,by,bz)
  %3179 = call float @dx.op.unary.f32(i32 25, float %3178)  ; Rsqrt(value)
  %3180 = fmul fast float %3171, %3179
  %3181 = fmul fast float %3173, %3179
  %3182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2727, i32 undef)  ; BufferLoad(srv,index,wot)
  %3183 = extractvalue %dx.types.ResRet.i32 %3182, 0
  %3184 = and i32 %3183, 67108864
  %3185 = icmp eq i32 %3184, 0
  br i1 %3185, label %3202, label %3186

; <label>:3186                                    ; preds = %3134
  %3187 = add i32 %49, 328
  %3188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3187, i32 undef)  ; BufferLoad(srv,index,wot)
  %3189 = extractvalue %dx.types.ResRet.i32 %3188, 0
  %3190 = and i32 %3189, 65535
  %3191 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3190)  ; LegacyF16ToF32(value)
  %3192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2744, i32 undef)  ; BufferLoad(srv,index,wot)
  %3193 = extractvalue %dx.types.ResRet.i32 %3192, 0
  %3194 = and i32 %3193, 65535
  %3195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3194)  ; LegacyF16ToF32(value)
  %3196 = lshr i32 %3189, 16
  %3197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3196)  ; LegacyF16ToF32(value)
  %3198 = fsub fast float %3159, %3197
  %3199 = fmul fast float %3198, %3191
  %3200 = fadd fast float %3199, %3195
  %3201 = call float @dx.op.unary.f32(i32 7, float %3200)  ; Saturate(value)
  br label %3202

; <label>:3202                                    ; preds = %3186, %3134
  %3203 = phi float [ %3201, %3186 ], [ %3159, %3134 ]
  %3204 = call float @dx.op.dot2.f32(i32 54, float %3180, float %3181, float %2738, float %2739)  ; Dot2(ax,ay,bx,by)
  %3205 = call float @dx.op.dot2.f32(i32 54, float %3180, float %3181, float %2740, float %2741)  ; Dot2(ax,ay,bx,by)
  br label %3206

; <label>:3206                                    ; preds = %3202, %3112
  %3207 = phi float [ %3203, %3202 ], [ 0x3FD6666660000000, %3112 ]
  %3208 = phi float [ %3204, %3202 ], [ 0.000000e+00, %3112 ]
  %3209 = phi float [ %3205, %3202 ], [ 0.000000e+00, %3112 ]
  %3210 = phi float [ %3146, %3202 ], [ 1.000000e+00, %3112 ]
  %3211 = add i32 %49, 208
  %3212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3211, i32 undef)  ; BufferLoad(srv,index,wot)
  %3213 = extractvalue %dx.types.ResRet.i32 %3212, 0
  %3214 = lshr i32 %3213, 22
  %3215 = shl nuw nsw i32 %3214, 5
  %3216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3215)  ; LegacyF16ToF32(value)
  %3217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2727, i32 undef)  ; BufferLoad(srv,index,wot)
  %3218 = extractvalue %dx.types.ResRet.i32 %3217, 0
  %3219 = and i32 %3218, 64
  %3220 = icmp eq i32 %3219, 0
  br i1 %3220, label %3254, label %3221

; <label>:3221                                    ; preds = %3206
  %3222 = add i32 %49, 404
  %3223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3222, i32 undef)  ; BufferLoad(srv,index,wot)
  %3224 = extractvalue %dx.types.ResRet.i32 %3223, 0
  %3225 = add i32 %3224, 0
  %3226 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3225, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2727, i32 undef)  ; BufferLoad(srv,index,wot)
  %3228 = extractvalue %dx.types.ResRet.i32 %3227, 0
  %3229 = and i32 %3228, 131072
  %3230 = icmp eq i32 %3229, 0
  %3231 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3226, %dx.types.Handle %100, float %2834, float %2835, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3232 = extractvalue %dx.types.ResRet.f32 %3231, 0
  %3233 = extractvalue %dx.types.ResRet.f32 %3231, 1
  %3234 = extractvalue %dx.types.ResRet.f32 %3231, 2
  %3235 = fmul fast float %584, %3232
  %3236 = fmul fast float %585, %3233
  %3237 = fmul fast float %586, %3234
  br i1 %3230, label %3244, label %3238

; <label>:3238                                    ; preds = %3221
  %3239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3240 = extractvalue %dx.types.CBufRet.f32 %3239, 0
  %3241 = fmul fast float %3240, %3235
  %3242 = fmul fast float %3240, %3236
  %3243 = fmul fast float %3240, %3237
  br label %3244

; <label>:3244                                    ; preds = %3238, %3221
  %3245 = phi float [ %3241, %3238 ], [ %3235, %3221 ]
  %3246 = phi float [ %3242, %3238 ], [ %3236, %3221 ]
  %3247 = phi float [ %3243, %3238 ], [ %3237, %3221 ]
  %3248 = fmul fast float %3245, %3216
  %3249 = select i1 %252, float %3248, float %3245
  %3250 = call float @dx.op.dot3.f32(i32 55, float %3249, float %3246, float %3247, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3251 = select i1 %252, float 0.000000e+00, float %3245
  %3252 = select i1 %252, float %3250, float %3246
  %3253 = select i1 %252, float 0.000000e+00, float %3247
  br label %3254

; <label>:3254                                    ; preds = %3244, %3206
  %3255 = phi float [ %3251, %3244 ], [ 0.000000e+00, %3206 ]
  %3256 = phi float [ %3252, %3244 ], [ 0.000000e+00, %3206 ]
  %3257 = phi float [ %3253, %3244 ], [ 0.000000e+00, %3206 ]
  %3258 = add i32 %49, 144
  %3259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3258, i32 undef)  ; BufferLoad(srv,index,wot)
  %3260 = extractvalue %dx.types.ResRet.i32 %3259, 0
  %3261 = and i32 %3260, 255
  %3262 = uitofp i32 %3261 to float
  %3263 = lshr i32 %3260, 8
  %3264 = and i32 %3263, 255
  %3265 = uitofp i32 %3264 to float
  %3266 = call float @dx.op.dot3.f32(i32 55, float %3127, float %3128, float %3129, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3267 = fmul fast float %3265, %3266
  %3268 = fadd fast float %3267, %3262
  %3269 = fmul fast float %3268, 0x3F70101020000000
  %3270 = call float @dx.op.unary.f32(i32 7, float %3269)  ; Saturate(value)
  br i1 %2726, label %3271, label %3279

; <label>:3271                                    ; preds = %3254
  %3272 = fsub fast float 1.000000e+00, %2907
  %3273 = fmul fast float %3272, %2715
  %3274 = fmul fast float %3272, %2716
  %3275 = fmul fast float %3272, %2717
  %3276 = fmul fast float %3272, %2718
  %3277 = fmul fast float %3272, %2719
  %3278 = fmul fast float %3272, %2720
  br label %3279

; <label>:3279                                    ; preds = %3271, %3254
  %3280 = phi float [ %3273, %3271 ], [ %2715, %3254 ]
  %3281 = phi float [ %3274, %3271 ], [ %2716, %3254 ]
  %3282 = phi float [ %3275, %3271 ], [ %2717, %3254 ]
  %3283 = phi float [ %3276, %3271 ], [ %2718, %3254 ]
  %3284 = phi float [ %3277, %3271 ], [ %2719, %3254 ]
  %3285 = phi float [ %3278, %3271 ], [ %2720, %3254 ]
  %3286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2727, i32 undef)  ; BufferLoad(srv,index,wot)
  %3287 = extractvalue %dx.types.ResRet.i32 %3286, 0
  %3288 = and i32 %3287, 3
  %3289 = icmp eq i32 %3288, 3
  br i1 %3289, label %3368, label %3290

; <label>:3290                                    ; preds = %3279
  %3291 = and i32 %3287, 16
  %3292 = icmp ne i32 %3291, 0
  %3293 = select i1 %3292, float %2907, float 0.000000e+00
  %3294 = icmp eq i32 %3288, 0
  br i1 %3294, label %3295, label %3323

; <label>:3295                                    ; preds = %3290
  %3296 = and i32 %3287, 64
  %3297 = icmp ne i32 %3296, 0
  %3298 = select i1 %3297, float %2907, float 0.000000e+00
  %3299 = fsub fast float %3127, %3280
  %3300 = fsub fast float %3128, %3281
  %3301 = fsub fast float %3129, %3282
  %3302 = fmul fast float %3293, %3299
  %3303 = fmul fast float %3293, %3300
  %3304 = fmul fast float %3293, %3301
  %3305 = fadd fast float %3302, %3280
  %3306 = fadd fast float %3303, %3281
  %3307 = fadd fast float %3304, %3282
  %3308 = fsub fast float %3113, %2721
  %3309 = fmul fast float %3293, %3308
  %3310 = fadd fast float %3309, %2721
  %3311 = fsub fast float %3255, %3283
  %3312 = fsub fast float %3256, %3284
  %3313 = fsub fast float %3257, %3285
  %3314 = fmul fast float %3298, %3311
  %3315 = fmul fast float %3298, %3312
  %3316 = fmul fast float %3298, %3313
  %3317 = fadd fast float %3314, %3283
  %3318 = fadd fast float %3315, %3284
  %3319 = fadd fast float %3316, %3285
  %3320 = fsub fast float %3270, %2724
  %3321 = fmul fast float %3293, %3320
  %3322 = fadd fast float %3321, %2724
  br label %3368

; <label>:3323                                    ; preds = %3290
  %3324 = icmp eq i32 %3288, 1
  br i1 %3324, label %3325, label %3338

; <label>:3325                                    ; preds = %3323
  %3326 = fadd fast float %3127, -1.000000e+00
  %3327 = fadd fast float %3128, -1.000000e+00
  %3328 = fadd fast float %3129, -1.000000e+00
  %3329 = fmul fast float %3293, %3326
  %3330 = fmul fast float %3293, %3327
  %3331 = fmul fast float %3293, %3328
  %3332 = fadd fast float %3329, 1.000000e+00
  %3333 = fadd fast float %3330, 1.000000e+00
  %3334 = fadd fast float %3331, 1.000000e+00
  %3335 = fmul fast float %3332, %3280
  %3336 = fmul fast float %3333, %3281
  %3337 = fmul fast float %3334, %3282
  br label %3368

; <label>:3338                                    ; preds = %3323
  %3339 = icmp eq i32 %3288, 2
  br i1 %3339, label %3340, label %3368

; <label>:3340                                    ; preds = %3338
  %3341 = call float @dx.op.unary.f32(i32 24, float %3127)  ; Sqrt(value)
  %3342 = call float @dx.op.unary.f32(i32 24, float %3128)  ; Sqrt(value)
  %3343 = call float @dx.op.unary.f32(i32 24, float %3129)  ; Sqrt(value)
  %3344 = fadd fast float %3341, -5.000000e-01
  %3345 = fadd fast float %3342, -5.000000e-01
  %3346 = fadd fast float %3343, -5.000000e-01
  %3347 = fmul fast float %3344, %3293
  %3348 = fmul fast float %3345, %3293
  %3349 = fmul fast float %3346, %3293
  %3350 = fadd fast float %3347, 5.000000e-01
  %3351 = fadd fast float %3348, 5.000000e-01
  %3352 = fadd fast float %3349, 5.000000e-01
  %3353 = fmul fast float %3350, 2.000000e+00
  %3354 = fsub fast float 1.000000e+00, %3353
  %3355 = fmul fast float %3354, %3280
  %3356 = fadd fast float %3355, %3353
  %3357 = fmul fast float %3356, %3280
  %3358 = fmul fast float %3351, 2.000000e+00
  %3359 = fsub fast float 1.000000e+00, %3358
  %3360 = fmul fast float %3359, %3281
  %3361 = fadd fast float %3360, %3358
  %3362 = fmul fast float %3361, %3281
  %3363 = fmul fast float %3352, 2.000000e+00
  %3364 = fsub fast float 1.000000e+00, %3363
  %3365 = fmul fast float %3364, %3282
  %3366 = fadd fast float %3365, %3363
  %3367 = fmul fast float %3366, %3282
  br label %3368

; <label>:3368                                    ; preds = %3340, %3338, %3325, %3295, %3279
  %3369 = phi float [ %3280, %3279 ], [ %3357, %3340 ], [ %3280, %3338 ], [ %3335, %3325 ], [ %3305, %3295 ]
  %3370 = phi float [ %3281, %3279 ], [ %3362, %3340 ], [ %3281, %3338 ], [ %3336, %3325 ], [ %3306, %3295 ]
  %3371 = phi float [ %3282, %3279 ], [ %3367, %3340 ], [ %3282, %3338 ], [ %3337, %3325 ], [ %3307, %3295 ]
  %3372 = phi float [ %3283, %3279 ], [ %3283, %3340 ], [ %3283, %3338 ], [ %3283, %3325 ], [ %3317, %3295 ]
  %3373 = phi float [ %3284, %3279 ], [ %3284, %3340 ], [ %3284, %3338 ], [ %3284, %3325 ], [ %3318, %3295 ]
  %3374 = phi float [ %3285, %3279 ], [ %3285, %3340 ], [ %3285, %3338 ], [ %3285, %3325 ], [ %3319, %3295 ]
  %3375 = phi float [ %2721, %3279 ], [ %2721, %3340 ], [ %2721, %3338 ], [ %2721, %3325 ], [ %3310, %3295 ]
  %3376 = phi float [ %2724, %3279 ], [ %2724, %3340 ], [ %2724, %3338 ], [ %2724, %3325 ], [ %3322, %3295 ]
  %3377 = and i32 %3287, 12
  %3378 = icmp eq i32 %3377, 12
  br i1 %3378, label %3451, label %3379

; <label>:3379                                    ; preds = %3368
  %3380 = and i32 %3287, 2097184
  %3381 = icmp eq i32 %3380, 2097184
  %3382 = select i1 %3381, float %2907, float 0.000000e+00
  %3383 = and i32 %3287, 4194336
  %3384 = icmp eq i32 %3383, 4194336
  %3385 = select i1 %3384, float %2907, float 0.000000e+00
  %3386 = and i32 %3287, 8388640
  %3387 = icmp eq i32 %3386, 8388640
  %3388 = select i1 %3387, float %2907, float 0.000000e+00
  %3389 = icmp eq i32 %3377, 0
  br i1 %3389, label %3390, label %3403

; <label>:3390                                    ; preds = %3379
  %3391 = fsub fast float %3208, %2713
  %3392 = fsub fast float %3209, %2714
  %3393 = fmul fast float %3382, %3391
  %3394 = fmul fast float %3382, %3392
  %3395 = fadd fast float %3393, %2713
  %3396 = fadd fast float %3394, %2714
  %3397 = fsub fast float %3210, %2723
  %3398 = fmul fast float %3385, %3397
  %3399 = fadd fast float %3398, %2723
  %3400 = fsub fast float %3207, %2722
  %3401 = fmul fast float %3388, %3400
  %3402 = fadd fast float %3401, %2722
  br label %3451

; <label>:3403                                    ; preds = %3379
  %3404 = icmp eq i32 %3377, 4
  br i1 %3404, label %3405, label %3437

; <label>:3405                                    ; preds = %3403
  %3406 = fmul fast float %3382, %3208
  %3407 = fmul fast float %3382, %3209
  %3408 = fadd fast float %3406, %2713
  %3409 = fadd fast float %3407, %2714
  %3410 = call float @dx.op.binary.f32(i32 36, float %2723, float %3210)  ; FMin(a,b)
  %3411 = fsub fast float %3410, %2723
  %3412 = fmul fast float %3411, %3385
  %3413 = fadd fast float %3412, %2723
  %3414 = fadd fast float %3207, %2722
  %3415 = fmul fast float %3414, 0x3FF337FAE0000000
  %3416 = fmul fast float %2722, %2722
  %3417 = fmul fast float %3207, %3207
  %3418 = fadd fast float %3417, %3416
  %3419 = fmul fast float %3418, 0x3FE5152B00000000
  %3420 = fmul fast float %2722, 0xBFCC1F85E0000000
  %3421 = fmul fast float %3420, %3207
  %3422 = fadd fast float %3421, 0xBFE1363700000000
  %3423 = fadd fast float %3422, %3415
  %3424 = fsub fast float %3423, %3419
  %3425 = fmul fast float %3414, 0x3FBA6F0D00000000
  %3426 = fmul fast float %3418, 0x3FD0432880000000
  %3427 = fmul fast float %2722, 0xBFEF110800000000
  %3428 = fmul fast float %3427, %3207
  %3429 = fadd fast float %3428, 1.000000e+00
  %3430 = fsub fast float %3429, %3425
  %3431 = fadd fast float %3430, %3426
  %3432 = fdiv fast float %3424, %3431
  %3433 = call float @dx.op.unary.f32(i32 7, float %3432)  ; Saturate(value)
  %3434 = fsub fast float %3433, %2722
  %3435 = fmul fast float %3434, %3388
  %3436 = fadd fast float %3435, %2722
  br label %3451

; <label>:3437                                    ; preds = %3403
  %3438 = icmp eq i32 %3377, 8
  br i1 %3438, label %3439, label %3451

; <label>:3439                                    ; preds = %3437
  %3440 = fmul fast float %3382, %3208
  %3441 = fmul fast float %3382, %3209
  %3442 = fadd fast float %3440, %2713
  %3443 = fadd fast float %3441, %2714
  %3444 = call float @dx.op.binary.f32(i32 36, float %2723, float %3210)  ; FMin(a,b)
  %3445 = fsub fast float %3444, %2723
  %3446 = fmul fast float %3445, %3385
  %3447 = fadd fast float %3446, %2723
  %3448 = fsub fast float %3207, %2722
  %3449 = fmul fast float %3388, %3448
  %3450 = fadd fast float %3449, %2722
  br label %3451

; <label>:3451                                    ; preds = %3439, %3437, %3405, %3390, %3368, %2906, %2725, %2712
  %3452 = phi float [ %2713, %3368 ], [ %2713, %2906 ], [ %2713, %2712 ], [ %2713, %2725 ], [ %3395, %3390 ], [ %3408, %3405 ], [ %2713, %3437 ], [ %3442, %3439 ]
  %3453 = phi float [ %2714, %3368 ], [ %2714, %2906 ], [ %2714, %2712 ], [ %2714, %2725 ], [ %3396, %3390 ], [ %3409, %3405 ], [ %2714, %3437 ], [ %3443, %3439 ]
  %3454 = phi float [ %3369, %3368 ], [ %2715, %2906 ], [ %2715, %2712 ], [ %2715, %2725 ], [ %3369, %3390 ], [ %3369, %3405 ], [ %3369, %3437 ], [ %3369, %3439 ]
  %3455 = phi float [ %3370, %3368 ], [ %2716, %2906 ], [ %2716, %2712 ], [ %2716, %2725 ], [ %3370, %3390 ], [ %3370, %3405 ], [ %3370, %3437 ], [ %3370, %3439 ]
  %3456 = phi float [ %3371, %3368 ], [ %2717, %2906 ], [ %2717, %2712 ], [ %2717, %2725 ], [ %3371, %3390 ], [ %3371, %3405 ], [ %3371, %3437 ], [ %3371, %3439 ]
  %3457 = phi float [ %3372, %3368 ], [ %2718, %2906 ], [ %2718, %2712 ], [ %2718, %2725 ], [ %3372, %3390 ], [ %3372, %3405 ], [ %3372, %3437 ], [ %3372, %3439 ]
  %3458 = phi float [ %3373, %3368 ], [ %2719, %2906 ], [ %2719, %2712 ], [ %2719, %2725 ], [ %3373, %3390 ], [ %3373, %3405 ], [ %3373, %3437 ], [ %3373, %3439 ]
  %3459 = phi float [ %3374, %3368 ], [ %2720, %2906 ], [ %2720, %2712 ], [ %2720, %2725 ], [ %3374, %3390 ], [ %3374, %3405 ], [ %3374, %3437 ], [ %3374, %3439 ]
  %3460 = phi float [ %3375, %3368 ], [ %2721, %2906 ], [ %2721, %2712 ], [ %2721, %2725 ], [ %3375, %3390 ], [ %3375, %3405 ], [ %3375, %3437 ], [ %3375, %3439 ]
  %3461 = phi float [ %2722, %3368 ], [ %2722, %2906 ], [ %2722, %2712 ], [ %2722, %2725 ], [ %3402, %3390 ], [ %3436, %3405 ], [ %2722, %3437 ], [ %3450, %3439 ]
  %3462 = phi float [ %2723, %3368 ], [ %2723, %2906 ], [ %2723, %2712 ], [ %2723, %2725 ], [ %3399, %3390 ], [ %3413, %3405 ], [ %2723, %3437 ], [ %3447, %3439 ]
  %3463 = phi float [ %3376, %3368 ], [ %2724, %2906 ], [ %2724, %2712 ], [ %2724, %2725 ], [ %3376, %3390 ], [ %3376, %3405 ], [ %3376, %3437 ], [ %3376, %3439 ]
  %3464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3465 = extractvalue %dx.types.CBufRet.f32 %3464, 0
  %3466 = call float @dx.op.dot2.f32(i32 54, float %3452, float %3453, float %3452, float %3453)  ; Dot2(ax,ay,bx,by)
  %3467 = fmul fast float %3466, 0x3FE3333340000000
  %3468 = fsub fast float 1.000000e+00, %3467
  %3469 = call float @dx.op.dot3.f32(i32 55, float %3452, float %3453, float %3468, float %3452, float %3453, float %3468)  ; Dot3(ax,ay,az,bx,by,bz)
  %3470 = call float @dx.op.unary.f32(i32 25, float %3469)  ; Rsqrt(value)
  %3471 = fmul fast float %3470, %3452
  %3472 = fmul fast float %3470, %3453
  %3473 = fmul fast float %3468, %3470
  %3474 = fmul fast float %3473, %111
  %3475 = fmul fast float %3473, %112
  %3476 = fmul fast float %3473, %113
  %3477 = fmul fast float %3471, %75
  %3478 = fmul fast float %3471, %76
  %3479 = fmul fast float %3471, %77
  %3480 = fadd fast float %3474, %3477
  %3481 = fadd fast float %3475, %3478
  %3482 = fadd fast float %3476, %3479
  %3483 = fmul fast float %123, %3472
  %3484 = fmul fast float %124, %3472
  %3485 = fmul fast float %125, %3472
  %3486 = fadd fast float %3480, %3483
  %3487 = fadd fast float %3481, %3484
  %3488 = fadd fast float %3482, %3485
  %3489 = call float @dx.op.dot3.f32(i32 55, float %3486, float %3487, float %3488, float %3486, float %3487, float %3488)  ; Dot3(ax,ay,az,bx,by,bz)
  %3490 = call float @dx.op.unary.f32(i32 25, float %3489)  ; Rsqrt(value)
  %3491 = fmul fast float %3486, %3490
  %3492 = fmul fast float %3487, %3490
  %3493 = fmul fast float %3488, %3490
  %3494 = icmp eq i32 %51, 65535
  br i1 %3494, label %4013, label %3495

; <label>:3495                                    ; preds = %3451
  %3496 = call float @dx.op.unary.f32(i32 83, float %52)  ; DerivCoarseX(value)
  %3497 = call float @dx.op.unary.f32(i32 83, float %53)  ; DerivCoarseX(value)
  %3498 = call float @dx.op.unary.f32(i32 83, float %54)  ; DerivCoarseX(value)
  %3499 = call float @dx.op.unary.f32(i32 84, float %52)  ; DerivCoarseY(value)
  %3500 = call float @dx.op.unary.f32(i32 84, float %53)  ; DerivCoarseY(value)
  %3501 = call float @dx.op.unary.f32(i32 84, float %54)  ; DerivCoarseY(value)
  %3502 = fadd fast float %3496, %52
  %3503 = fadd fast float %3497, %53
  %3504 = fadd fast float %3498, %54
  %3505 = fadd fast float %3499, %52
  %3506 = fadd fast float %3500, %53
  %3507 = fadd fast float %3501, %54
  %3508 = mul i32 %51, 48
  %3509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3508, i32 undef)  ; BufferLoad(srv,index,wot)
  %3510 = extractvalue %dx.types.ResRet.f32 %3509, 0
  %3511 = extractvalue %dx.types.ResRet.f32 %3509, 1
  %3512 = extractvalue %dx.types.ResRet.f32 %3509, 2
  %3513 = add i32 %3508, 16
  %3514 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3513, i32 undef)  ; BufferLoad(srv,index,wot)
  %3515 = extractvalue %dx.types.ResRet.f32 %3514, 0
  %3516 = extractvalue %dx.types.ResRet.f32 %3514, 1
  %3517 = extractvalue %dx.types.ResRet.f32 %3514, 2
  %3518 = add i32 %3508, 32
  %3519 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3518, i32 undef)  ; BufferLoad(srv,index,wot)
  %3520 = extractvalue %dx.types.ResRet.f32 %3519, 0
  %3521 = extractvalue %dx.types.ResRet.f32 %3519, 1
  %3522 = extractvalue %dx.types.ResRet.f32 %3519, 2
  %3523 = extractvalue %dx.types.ResRet.f32 %3519, 3
  %3524 = bitcast float %3523 to i32
  %3525 = fmul fast float %3510, %52
  %3526 = fmul fast float %3511, %53
  %3527 = fmul fast float %3512, %54
  %3528 = fsub fast float %3525, %3515
  %3529 = fsub fast float %3526, %3516
  %3530 = fsub fast float %3527, %3517
  %3531 = call float @dx.op.unary.f32(i32 7, float %3528)  ; Saturate(value)
  %3532 = call float @dx.op.unary.f32(i32 7, float %3529)  ; Saturate(value)
  %3533 = call float @dx.op.unary.f32(i32 7, float %3530)  ; Saturate(value)
  %3534 = fmul fast float %3531, %3520
  %3535 = fmul fast float %3532, %3521
  %3536 = fmul fast float %3533, %3522
  %3537 = fadd fast float %3520, -1.000000e+00
  %3538 = fadd fast float %3521, -1.000000e+00
  %3539 = fadd fast float %3522, -1.000000e+00
  %3540 = call float @dx.op.unary.f32(i32 27, float %3534)  ; Round_ni(value)
  %3541 = call float @dx.op.unary.f32(i32 27, float %3535)  ; Round_ni(value)
  %3542 = call float @dx.op.unary.f32(i32 27, float %3536)  ; Round_ni(value)
  %3543 = call float @dx.op.binary.f32(i32 36, float %3540, float %3537)  ; FMin(a,b)
  %3544 = call float @dx.op.binary.f32(i32 36, float %3541, float %3538)  ; FMin(a,b)
  %3545 = call float @dx.op.binary.f32(i32 36, float %3542, float %3539)  ; FMin(a,b)
  %3546 = fmul fast float %3545, %3521
  %3547 = fadd fast float %3546, %3544
  %3548 = fmul fast float %3547, %3520
  %3549 = fadd fast float %3548, %3543
  %3550 = fptosi float %3549 to i32
  %3551 = add nsw i32 %3550, %3524
  %3552 = shl nsw i32 %3551, 2
  %3553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3552, i32 undef)  ; BufferLoad(srv,index,wot)
  %3554 = extractvalue %dx.types.ResRet.i32 %3553, 0
  %3555 = lshr i32 %3554, 16
  %3556 = icmp eq i32 %3555, 0
  br i1 %3556, label %3981, label %3557

; <label>:3557                                    ; preds = %3495
  br label %3558

; <label>:3558                                    ; preds = %3680, %3557
  %3559 = phi i32 [ %3582, %3680 ], [ %3555, %3557 ]
  %3560 = phi float [ %3681, %3680 ], [ 0.000000e+00, %3557 ]
  %3561 = phi float [ %3682, %3680 ], [ %1243, %3557 ]
  %3562 = phi float [ %3683, %3680 ], [ %3465, %3557 ]
  %3563 = phi float [ %3684, %3680 ], [ %3463, %3557 ]
  %3564 = phi float [ %3685, %3680 ], [ 0.000000e+00, %3557 ]
  %3565 = phi float [ %3686, %3680 ], [ 0.000000e+00, %3557 ]
  %3566 = phi float [ %3687, %3680 ], [ %3457, %3557 ]
  %3567 = phi float [ %3688, %3680 ], [ %3458, %3557 ]
  %3568 = phi float [ %3689, %3680 ], [ %3459, %3557 ]
  %3569 = phi float [ %3690, %3680 ], [ %3491, %3557 ]
  %3570 = phi float [ %3691, %3680 ], [ %3492, %3557 ]
  %3571 = phi float [ %3692, %3680 ], [ %3493, %3557 ]
  %3572 = phi float [ %3693, %3680 ], [ %3462, %3557 ]
  %3573 = phi float [ %3694, %3680 ], [ %3461, %3557 ]
  %3574 = phi float [ %3695, %3680 ], [ 0.000000e+00, %3557 ]
  %3575 = phi float [ %3696, %3680 ], [ %3460, %3557 ]
  %3576 = phi float [ %3697, %3680 ], [ %3454, %3557 ]
  %3577 = phi float [ %3698, %3680 ], [ %3455, %3557 ]
  %3578 = phi float [ %3699, %3680 ], [ %3456, %3557 ]
  %3579 = shl nuw nsw i32 %3559, 2
  %3580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3579, i32 undef)  ; BufferLoad(srv,index,wot)
  %3581 = extractvalue %dx.types.ResRet.i32 %3580, 0
  %3582 = lshr i32 %3581, 16
  %3583 = shl i32 %3581, 8
  %3584 = and i32 %3583, 16776960
  %3585 = or i32 %3584, 48
  %3586 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3585, i32 undef)  ; BufferLoad(srv,index,wot)
  %3587 = extractvalue %dx.types.ResRet.f32 %3586, 0
  %3588 = extractvalue %dx.types.ResRet.f32 %3586, 1
  %3589 = extractvalue %dx.types.ResRet.f32 %3586, 2
  %3590 = or i32 %3584, 64
  %3591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3590, i32 undef)  ; BufferLoad(srv,index,wot)
  %3592 = extractvalue %dx.types.ResRet.i32 %3591, 0
  %3593 = extractvalue %dx.types.ResRet.i32 %3591, 1
  %3594 = or i32 %3584, 80
  %3595 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3594, i32 undef)  ; BufferLoad(srv,index,wot)
  %3596 = extractvalue %dx.types.ResRet.f32 %3595, 2
  %3597 = extractvalue %dx.types.ResRet.f32 %3595, 3
  %3598 = or i32 %3584, 96
  %3599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3598, i32 undef)  ; BufferLoad(srv,index,wot)
  %3600 = extractvalue %dx.types.ResRet.f32 %3599, 0
  %3601 = extractvalue %dx.types.ResRet.f32 %3599, 1
  %3602 = extractvalue %dx.types.ResRet.f32 %3599, 2
  %3603 = extractvalue %dx.types.ResRet.f32 %3599, 3
  %3604 = or i32 %3584, 112
  %3605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3604, i32 undef)  ; BufferLoad(srv,index,wot)
  %3606 = extractvalue %dx.types.ResRet.f32 %3605, 2
  %3607 = or i32 %3584, 128
  %3608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3607, i32 undef)  ; BufferLoad(srv,index,wot)
  %3609 = extractvalue %dx.types.ResRet.f32 %3608, 0
  %3610 = extractvalue %dx.types.ResRet.f32 %3608, 1
  %3611 = extractvalue %dx.types.ResRet.f32 %3608, 2
  %3612 = extractvalue %dx.types.ResRet.f32 %3608, 3
  %3613 = or i32 %3584, 144
  %3614 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3613, i32 undef)  ; BufferLoad(srv,index,wot)
  %3615 = extractvalue %dx.types.ResRet.f32 %3614, 0
  %3616 = extractvalue %dx.types.ResRet.f32 %3614, 1
  %3617 = extractvalue %dx.types.ResRet.f32 %3614, 2
  %3618 = extractvalue %dx.types.ResRet.f32 %3614, 3
  %3619 = or i32 %3584, 160
  %3620 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3619, i32 undef)  ; BufferLoad(srv,index,wot)
  %3621 = extractvalue %dx.types.ResRet.f32 %3620, 0
  %3622 = extractvalue %dx.types.ResRet.f32 %3620, 1
  %3623 = extractvalue %dx.types.ResRet.f32 %3620, 2
  %3624 = extractvalue %dx.types.ResRet.f32 %3620, 3
  %3625 = or i32 %3584, 192
  %3626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3625, i32 undef)  ; BufferLoad(srv,index,wot)
  %3627 = extractvalue %dx.types.ResRet.i32 %3626, 0
  %3628 = or i32 %3584, 208
  %3629 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3628, i32 undef)  ; BufferLoad(srv,index,wot)
  %3630 = extractvalue %dx.types.ResRet.f32 %3629, 0
  %3631 = or i32 %3584, 248
  %3632 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3631, i32 undef)  ; BufferLoad(srv,index,wot)
  %3633 = extractvalue %dx.types.ResRet.f32 %3632, 0
  %3634 = extractvalue %dx.types.ResRet.f32 %3632, 1
  %3635 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3584, i32 undef)  ; BufferLoad(srv,index,wot)
  %3636 = extractvalue %dx.types.ResRet.f32 %3635, 0
  %3637 = extractvalue %dx.types.ResRet.f32 %3635, 1
  %3638 = extractvalue %dx.types.ResRet.f32 %3635, 2
  %3639 = extractvalue %dx.types.ResRet.f32 %3635, 3
  %3640 = call float @dx.op.dot4.f32(i32 56, float %3636, float %3637, float %3638, float %3639, float %52, float %53, float %54, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3641 = or i32 %3584, 16
  %3642 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3641, i32 undef)  ; BufferLoad(srv,index,wot)
  %3643 = extractvalue %dx.types.ResRet.f32 %3642, 0
  %3644 = extractvalue %dx.types.ResRet.f32 %3642, 1
  %3645 = extractvalue %dx.types.ResRet.f32 %3642, 2
  %3646 = extractvalue %dx.types.ResRet.f32 %3642, 3
  %3647 = call float @dx.op.dot4.f32(i32 56, float %3643, float %3644, float %3645, float %3646, float %52, float %53, float %54, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3648 = or i32 %3584, 32
  %3649 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3648, i32 undef)  ; BufferLoad(srv,index,wot)
  %3650 = extractvalue %dx.types.ResRet.f32 %3649, 0
  %3651 = extractvalue %dx.types.ResRet.f32 %3649, 1
  %3652 = extractvalue %dx.types.ResRet.f32 %3649, 2
  %3653 = extractvalue %dx.types.ResRet.f32 %3649, 3
  %3654 = call float @dx.op.dot4.f32(i32 56, float %3650, float %3651, float %3652, float %3653, float %52, float %53, float %54, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3655 = call float @dx.op.unary.f32(i32 27, float %3640)  ; Round_ni(value)
  %3656 = call float @dx.op.unary.f32(i32 6, float %3655)  ; FAbs(value)
  %3657 = call float @dx.op.unary.f32(i32 27, float %3647)  ; Round_ni(value)
  %3658 = call float @dx.op.unary.f32(i32 6, float %3657)  ; FAbs(value)
  %3659 = call float @dx.op.unary.f32(i32 6, float %3654)  ; FAbs(value)
  %3660 = call float @dx.op.unary.f32(i32 27, float %3659)  ; Round_ni(value)
  %3661 = fadd fast float %3658, %3656
  %3662 = fadd fast float %3661, %3660
  %3663 = fcmp fast oeq float %3662, 0.000000e+00
  %3664 = call float @dx.op.dot4.f32(i32 56, float %3636, float %3637, float %3638, float %3639, float %3502, float %3503, float %3504, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3665 = call float @dx.op.dot4.f32(i32 56, float %3643, float %3644, float %3645, float %3646, float %3502, float %3503, float %3504, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3666 = call float @dx.op.dot4.f32(i32 56, float %3636, float %3637, float %3638, float %3639, float %3505, float %3506, float %3507, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3667 = call float @dx.op.dot4.f32(i32 56, float %3643, float %3644, float %3645, float %3646, float %3505, float %3506, float %3507, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3668 = fsub fast float %3664, %3640
  %3669 = fsub fast float %3666, %3640
  %3670 = fsub fast float %3665, %3647
  %3671 = fsub fast float %3667, %3647
  %3672 = call float @dx.op.dot3.f32(i32 55, float %3587, float %3588, float %3589, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %3673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3674 = extractvalue %dx.types.CBufRet.f32 %3673, 2
  %3675 = fadd fast float %3674, %3672
  %3676 = call float @dx.op.unary.f32(i32 7, float %3675)  ; Saturate(value)
  %3677 = extractvalue %dx.types.CBufRet.f32 %3673, 0
  %3678 = fcmp fast ogt float %3676, %3677
  %3679 = and i1 %3663, %3678
  br i1 %3679, label %3701, label %3680

; <label>:3680                                    ; preds = %3967, %3784, %3701, %3558
  %3681 = phi float [ %3560, %3701 ], [ %3787, %3784 ], [ %3787, %3967 ], [ %3560, %3558 ]
  %3682 = phi float [ %3561, %3701 ], [ %3561, %3784 ], [ %3942, %3967 ], [ %3561, %3558 ]
  %3683 = phi float [ %3562, %3701 ], [ %3562, %3784 ], [ %3941, %3967 ], [ %3562, %3558 ]
  %3684 = phi float [ %3563, %3701 ], [ %3563, %3784 ], [ %3939, %3967 ], [ %3563, %3558 ]
  %3685 = phi float [ %3564, %3701 ], [ %3564, %3784 ], [ %3911, %3967 ], [ %3564, %3558 ]
  %3686 = phi float [ %3565, %3701 ], [ %3565, %3784 ], [ %3909, %3967 ], [ %3565, %3558 ]
  %3687 = phi float [ %3566, %3701 ], [ %3566, %3784 ], [ %3977, %3967 ], [ %3566, %3558 ]
  %3688 = phi float [ %3567, %3701 ], [ %3567, %3784 ], [ %3978, %3967 ], [ %3567, %3558 ]
  %3689 = phi float [ %3568, %3701 ], [ %3568, %3784 ], [ %3979, %3967 ], [ %3568, %3558 ]
  %3690 = phi float [ %3569, %3701 ], [ %3569, %3784 ], [ %3890, %3967 ], [ %3569, %3558 ]
  %3691 = phi float [ %3570, %3701 ], [ %3570, %3784 ], [ %3891, %3967 ], [ %3570, %3558 ]
  %3692 = phi float [ %3571, %3701 ], [ %3571, %3784 ], [ %3892, %3967 ], [ %3571, %3558 ]
  %3693 = phi float [ %3572, %3701 ], [ %3572, %3784 ], [ %3919, %3967 ], [ %3572, %3558 ]
  %3694 = phi float [ %3573, %3701 ], [ %3573, %3784 ], [ %3916, %3967 ], [ %3573, %3558 ]
  %3695 = phi float [ %3574, %3701 ], [ %3574, %3784 ], [ %3913, %3967 ], [ %3574, %3558 ]
  %3696 = phi float [ %3575, %3701 ], [ %3575, %3784 ], [ %3907, %3967 ], [ %3575, %3558 ]
  %3697 = phi float [ %3576, %3701 ], [ %3576, %3784 ], [ %3902, %3967 ], [ %3576, %3558 ]
  %3698 = phi float [ %3577, %3701 ], [ %3577, %3784 ], [ %3903, %3967 ], [ %3577, %3558 ]
  %3699 = phi float [ %3578, %3701 ], [ %3578, %3784 ], [ %3904, %3967 ], [ %3578, %3558 ]
  %3700 = icmp eq i32 %3582, 0
  br i1 %3700, label %3980, label %3558

; <label>:3701                                    ; preds = %3558
  %3702 = extractvalue %dx.types.ResRet.f32 %3586, 3
  %3703 = extractvalue %dx.types.ResRet.f32 %3605, 3
  %3704 = extractvalue %dx.types.ResRet.f32 %3605, 1
  %3705 = extractvalue %dx.types.ResRet.f32 %3605, 0
  %3706 = extractvalue %dx.types.ResRet.f32 %3595, 1
  %3707 = extractvalue %dx.types.ResRet.f32 %3595, 0
  %3708 = extractvalue %dx.types.ResRet.i32 %3591, 3
  %3709 = extractvalue %dx.types.ResRet.i32 %3591, 2
  %3710 = bitcast float %3702 to i32
  %3711 = add i32 %3708, 0
  %3712 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3711, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3713 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3714 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3712, %dx.types.Handle %3713, float %3640, float %3647, float undef, float undef, i32 0, i32 0, i32 undef, float %3668, float %3670, float undef, float %3669, float %3671, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3715 = extractvalue %dx.types.ResRet.f32 %3714, 0
  %3716 = fmul fast float %3715, %3707
  %3717 = fadd fast float %3716, %3706
  %3718 = call float @dx.op.unary.f32(i32 7, float %3717)  ; Saturate(value)
  %3719 = fmul fast float %3640, %3600
  %3720 = call float @dx.op.tertiary.f32(i32 46, float %3601, float %3647, float %3719)  ; FMad(a,b,c)
  %3721 = fadd fast float %3720, %3705
  %3722 = fmul fast float %3640, %3602
  %3723 = call float @dx.op.tertiary.f32(i32 46, float %3603, float %3647, float %3722)  ; FMad(a,b,c)
  %3724 = fadd fast float %3723, %3704
  %3725 = fmul fast float %3668, %3600
  %3726 = call float @dx.op.tertiary.f32(i32 46, float %3601, float %3670, float %3725)  ; FMad(a,b,c)
  %3727 = fmul fast float %3668, %3602
  %3728 = call float @dx.op.tertiary.f32(i32 46, float %3603, float %3670, float %3727)  ; FMad(a,b,c)
  %3729 = fmul fast float %3669, %3600
  %3730 = call float @dx.op.tertiary.f32(i32 46, float %3601, float %3671, float %3729)  ; FMad(a,b,c)
  %3731 = fmul fast float %3669, %3602
  %3732 = call float @dx.op.tertiary.f32(i32 46, float %3603, float %3671, float %3731)  ; FMad(a,b,c)
  %3733 = add i32 %3709, 0
  %3734 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3733, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3735 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3734, %dx.types.Handle %3713, float %3721, float %3724, float undef, float undef, i32 0, i32 0, i32 undef, float %3726, float %3728, float undef, float %3730, float %3732, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3736 = extractvalue %dx.types.ResRet.f32 %3735, 0
  %3737 = and i32 %3710, 1024
  %3738 = icmp ne i32 %3737, 0
  %3739 = fcmp fast ogt float %3736, 0x3FE0101020000000
  %3740 = uitofp i1 %3739 to float
  %3741 = select i1 %3738, float %3740, float %3736
  %3742 = and i32 %3710, 8192
  %3743 = icmp ne i32 %3742, 0
  %3744 = select i1 %3743, float %3703, float 1.000000e+00
  %3745 = fmul fast float %3640, 2.000000e+00
  %3746 = fadd fast float %3745, -1.000000e+00
  %3747 = call float @dx.op.unary.f32(i32 6, float %3746)  ; FAbs(value)
  %3748 = fmul fast float %3747, %3633
  %3749 = fsub fast float %3748, %3633
  %3750 = call float @dx.op.unary.f32(i32 7, float %3749)  ; Saturate(value)
  %3751 = fmul fast float %3647, 2.000000e+00
  %3752 = fadd fast float %3751, -1.000000e+00
  %3753 = call float @dx.op.unary.f32(i32 6, float %3752)  ; FAbs(value)
  %3754 = fmul fast float %3753, %3634
  %3755 = fsub fast float %3754, %3634
  %3756 = call float @dx.op.unary.f32(i32 7, float %3755)  ; Saturate(value)
  %3757 = fmul fast float %3659, %3596
  %3758 = fsub fast float %3757, %3596
  %3759 = call float @dx.op.unary.f32(i32 7, float %3758)  ; Saturate(value)
  %3760 = fmul fast float %3718, %3744
  %3761 = fmul fast float %3760, %3715
  %3762 = fmul fast float %3761, %3750
  %3763 = fmul fast float %3762, %3741
  %3764 = fmul fast float %3763, %3756
  %3765 = fmul fast float %3764, %3759
  %3766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3767 = extractvalue %dx.types.CBufRet.f32 %3766, 1
  %3768 = extractvalue %dx.types.CBufRet.f32 %3766, 0
  %3769 = fsub fast float %3676, %3768
  %3770 = fmul fast float %3769, %3767
  %3771 = call float @dx.op.unary.f32(i32 7, float %3770)  ; Saturate(value)
  %3772 = fmul fast float %3765, %3597
  %3773 = fadd fast float %3765, %3597
  %3774 = fmul fast float %3773, %3606
  %3775 = fsub fast float %3774, %3606
  %3776 = call float @dx.op.unary.f32(i32 7, float %3775)  ; Saturate(value)
  %3777 = and i32 %3710, 128
  %3778 = icmp ne i32 %3777, 0
  %3779 = select i1 %3778, float %3776, float %3772
  %3780 = fmul fast float %3779, %3771
  %3781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3782 = extractvalue %dx.types.CBufRet.f32 %3781, 0
  %3783 = fcmp fast ugt float %3780, %3782
  br i1 %3783, label %3784, label %3680

; <label>:3784                                    ; preds = %3701
  %3785 = select i1 %3743, float %3780, float 0.000000e+00
  %3786 = fadd fast float %3785, %3560
  %3787 = call float @dx.op.unary.f32(i32 7, float %3786)  ; Saturate(value)
  br i1 %3743, label %3680, label %3788

; <label>:3788                                    ; preds = %3784
  %3789 = and i32 %3710, 4
  %3790 = and i32 %3710, 8
  %3791 = add i32 %3592, 0
  %3792 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3791, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3793 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3794 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3792, %dx.types.Handle %3793, float %3721, float %3724, float undef, float undef, i32 0, i32 0, i32 undef, float %3726, float %3728, float undef, float %3730, float %3732, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3795 = extractvalue %dx.types.ResRet.f32 %3794, 0
  %3796 = extractvalue %dx.types.ResRet.f32 %3794, 1
  %3797 = extractvalue %dx.types.ResRet.f32 %3794, 2
  %3798 = extractvalue %dx.types.ResRet.f32 %3794, 3
  %3799 = bitcast float %3618 to i32
  %3800 = and i32 %3799, 255
  %3801 = uitofp i32 %3800 to float
  %3802 = lshr i32 %3799, 8
  %3803 = and i32 %3802, 255
  %3804 = uitofp i32 %3803 to float
  %3805 = fmul fast float %3798, %3801
  %3806 = fadd fast float %3805, %3804
  %3807 = fmul fast float %3806, 0x3F70101000000000
  %3808 = add i32 %3593, 0
  %3809 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3808, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3810 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3809, %dx.types.Handle %3793, float %3721, float %3724, float undef, float undef, i32 0, i32 0, i32 undef, float %3726, float %3728, float undef, float %3730, float %3732, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3811 = extractvalue %dx.types.ResRet.f32 %3810, 0
  %3812 = extractvalue %dx.types.ResRet.f32 %3810, 1
  %3813 = extractvalue %dx.types.ResRet.f32 %3810, 2
  %3814 = extractvalue %dx.types.ResRet.f32 %3810, 3
  %3815 = bitcast float %3612 to i32
  %3816 = and i32 %3815, 255
  %3817 = uitofp i32 %3816 to float
  %3818 = lshr i32 %3815, 8
  %3819 = and i32 %3818, 255
  %3820 = uitofp i32 %3819 to float
  %3821 = lshr i32 %3815, 16
  %3822 = and i32 %3821, 255
  %3823 = uitofp i32 %3822 to float
  %3824 = fmul fast float %3823, 0x3F70101000000000
  %3825 = fmul fast float %3811, %3817
  %3826 = fadd fast float %3825, %3820
  %3827 = fmul fast float %3826, 0x3F70101000000000
  %3828 = fadd fast float %3812, -5.000000e-01
  %3829 = fadd fast float %3814, -5.000000e-01
  %3830 = fmul fast float %3828, %3824
  %3831 = fmul fast float %3829, %3824
  %3832 = fadd fast float %3830, 5.000000e-01
  %3833 = fadd fast float %3831, 5.000000e-01
  %3834 = fmul fast float %3795, %3621
  %3835 = fmul fast float %3796, %3622
  %3836 = fmul fast float %3797, %3623
  %3837 = fmul fast float %3832, 2.000000e+00
  %3838 = fadd fast float %3837, -1.000000e+00
  %3839 = fmul fast float %3833, 2.000000e+00
  %3840 = fadd fast float %3839, -1.000000e+00
  %3841 = fadd fast float %3838, %3840
  %3842 = fmul fast float %3841, 5.000000e-01
  %3843 = fsub fast float %3838, %3840
  %3844 = fmul fast float %3843, 5.000000e-01
  %3845 = call float @dx.op.unary.f32(i32 6, float %3842)  ; FAbs(value)
  %3846 = fsub fast float 1.000000e+00, %3845
  %3847 = call float @dx.op.unary.f32(i32 6, float %3844)  ; FAbs(value)
  %3848 = fsub fast float %3846, %3847
  %3849 = call float @dx.op.dot3.f32(i32 55, float %3842, float %3844, float %3848, float %3842, float %3844, float %3848)  ; Dot3(ax,ay,az,bx,by,bz)
  %3850 = call float @dx.op.unary.f32(i32 25, float %3849)  ; Rsqrt(value)
  %3851 = fmul fast float %3842, %3850
  %3852 = fmul fast float %3844, %3850
  %3853 = fmul fast float %3850, %3848
  %3854 = fmul fast float %3853, %3587
  %3855 = fmul fast float %3853, %3588
  %3856 = fmul fast float %3853, %3589
  %3857 = fmul fast float %3851, %3609
  %3858 = fmul fast float %3851, %3610
  %3859 = fmul fast float %3851, %3611
  %3860 = fadd fast float %3857, %3854
  %3861 = fadd fast float %3858, %3855
  %3862 = fadd fast float %3859, %3856
  %3863 = fmul fast float %3852, %3615
  %3864 = fmul fast float %3852, %3616
  %3865 = fmul fast float %3852, %3617
  %3866 = fadd fast float %3860, %3863
  %3867 = fadd fast float %3861, %3864
  %3868 = fadd fast float %3862, %3865
  %3869 = call float @dx.op.dot3.f32(i32 55, float %3866, float %3867, float %3868, float %3866, float %3867, float %3868)  ; Dot3(ax,ay,az,bx,by,bz)
  %3870 = call float @dx.op.unary.f32(i32 25, float %3869)  ; Rsqrt(value)
  %3871 = fmul fast float %3866, %3870
  %3872 = fmul fast float %3867, %3870
  %3873 = fmul fast float %3868, %3870
  %3874 = icmp ne i32 %3790, 0
  %3875 = select i1 %3874, float 1.000000e+00, float 0.000000e+00
  %3876 = fmul fast float %3780, %3875
  %3877 = and i32 %3710, 1
  %3878 = icmp eq i32 %3877, 0
  br i1 %3878, label %3879, label %3883

; <label>:3879                                    ; preds = %3788
  %3880 = fsub fast float %3871, %3569
  %3881 = fsub fast float %3872, %3570
  %3882 = fsub fast float %3873, %3571
  br label %3883

; <label>:3883                                    ; preds = %3879, %3788
  %3884 = phi float [ %3880, %3879 ], [ %3871, %3788 ]
  %3885 = phi float [ %3881, %3879 ], [ %3872, %3788 ]
  %3886 = phi float [ %3882, %3879 ], [ %3873, %3788 ]
  %3887 = fmul float %3886, %3876
  %3888 = fmul float %3885, %3876
  %3889 = fmul float %3884, %3876
  %3890 = fadd fast float %3889, %3569
  %3891 = fadd fast float %3888, %3570
  %3892 = fadd fast float %3887, %3571
  %3893 = icmp ne i32 %3789, 0
  %3894 = select i1 %3893, float 1.000000e+00, float 0.000000e+00
  %3895 = fmul fast float %3780, %3894
  %3896 = fsub fast float %3834, %3576
  %3897 = fsub fast float %3835, %3577
  %3898 = fsub fast float %3836, %3578
  %3899 = fmul fast float %3896, %3895
  %3900 = fmul fast float %3897, %3895
  %3901 = fmul fast float %3898, %3895
  %3902 = fadd fast float %3899, %3576
  %3903 = fadd fast float %3900, %3577
  %3904 = fadd fast float %3901, %3578
  %3905 = fsub fast float %3807, %3575
  %3906 = fmul fast float %3905, %3895
  %3907 = fadd fast float %3906, %3575
  %3908 = fmul fast float %3895, %3565
  %3909 = fsub fast float %3565, %3908
  %3910 = fmul fast float %3895, %3564
  %3911 = fsub fast float %3564, %3910
  %3912 = fadd fast float %3780, %3574
  %3913 = call float @dx.op.unary.f32(i32 7, float %3912)  ; Saturate(value)
  %3914 = fsub fast float %3827, %3573
  %3915 = fmul fast float %3914, %3876
  %3916 = fadd fast float %3915, %3573
  %3917 = fsub fast float %3813, %3572
  %3918 = fmul fast float %3917, %3876
  %3919 = fadd fast float %3918, %3572
  %3920 = call float @dx.op.dot3.f32(i32 55, float %3834, float %3835, float %3836, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3922 = extractvalue %dx.types.CBufRet.f32 %3921, 0
  %3923 = extractvalue %dx.types.CBufRet.f32 %3921, 1
  %3924 = fmul fast float %3923, %3920
  %3925 = fadd fast float %3924, %3922
  %3926 = call float @dx.op.unary.f32(i32 7, float %3925)  ; Saturate(value)
  %3927 = bitcast float %3624 to i32
  %3928 = and i32 %3927, 65535
  %3929 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3928)  ; LegacyF16ToF32(value)
  %3930 = lshr i32 %3927, 16
  %3931 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3930)  ; LegacyF16ToF32(value)
  %3932 = fcmp fast oge float %3929, 0.000000e+00
  %3933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3934 = extractvalue %dx.types.CBufRet.f32 %3933, 0
  %3935 = select i1 %3932, float %3929, float %3934
  %3936 = fadd fast float %3935, %3931
  %3937 = fsub fast float %3926, %3563
  %3938 = fmul fast float %3937, %3780
  %3939 = fadd fast float %3938, %3563
  %3940 = fmul fast float %3936, %3780
  %3941 = call float @dx.op.binary.f32(i32 35, float %3562, float %3940)  ; FMax(a,b)
  %3942 = call float @dx.op.binary.f32(i32 35, float %3561, float %3780)  ; FMax(a,b)
  %3943 = and i32 %3710, 16
  %3944 = icmp eq i32 %3943, 0
  br i1 %3944, label %3967, label %3945

; <label>:3945                                    ; preds = %3883
  %3946 = bitcast float %3630 to i32
  %3947 = add i32 %3627, 0
  %3948 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3947, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3949 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3948, %dx.types.Handle %3793, float %3721, float %3724, float undef, float undef, i32 0, i32 0, i32 undef, float %3726, float %3728, float undef, float %3730, float %3732, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3950 = extractvalue %dx.types.ResRet.f32 %3949, 0
  %3951 = extractvalue %dx.types.ResRet.f32 %3949, 1
  %3952 = extractvalue %dx.types.ResRet.f32 %3949, 2
  %3953 = and i32 %3946, 65535
  %3954 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3953)  ; LegacyF16ToF32(value)
  %3955 = fmul fast float %3950, %3621
  %3956 = fmul fast float %3951, %3622
  %3957 = fmul fast float %3952, %3623
  %3958 = and i32 %3710, 16384
  %3959 = icmp ne i32 %3958, 0
  %3960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3961 = extractvalue %dx.types.CBufRet.f32 %3960, 0
  %3962 = select i1 %3959, float %3961, float 1.000000e+00
  %3963 = fmul fast float %3962, %3954
  %3964 = fmul fast float %3955, %3963
  %3965 = fmul fast float %3956, %3963
  %3966 = fmul fast float %3957, %3963
  br label %3967

; <label>:3967                                    ; preds = %3945, %3883
  %3968 = phi float [ %3964, %3945 ], [ 0.000000e+00, %3883 ]
  %3969 = phi float [ %3965, %3945 ], [ 0.000000e+00, %3883 ]
  %3970 = phi float [ %3966, %3945 ], [ 0.000000e+00, %3883 ]
  %3971 = fsub fast float %3968, %3566
  %3972 = fsub fast float %3969, %3567
  %3973 = fsub fast float %3970, %3568
  %3974 = fmul fast float %3971, %3780
  %3975 = fmul fast float %3972, %3780
  %3976 = fmul fast float %3973, %3780
  %3977 = fadd fast float %3974, %3566
  %3978 = fadd fast float %3975, %3567
  %3979 = fadd fast float %3976, %3568
  br label %3680

; <label>:3980                                    ; preds = %3680
  br label %3981

; <label>:3981                                    ; preds = %3980, %3495
  %3982 = phi float [ 0.000000e+00, %3495 ], [ %3681, %3980 ]
  %3983 = phi float [ %1243, %3495 ], [ %3682, %3980 ]
  %3984 = phi float [ %3465, %3495 ], [ %3683, %3980 ]
  %3985 = phi float [ %3463, %3495 ], [ %3684, %3980 ]
  %3986 = phi float [ 0.000000e+00, %3495 ], [ %3685, %3980 ]
  %3987 = phi float [ 0.000000e+00, %3495 ], [ %3686, %3980 ]
  %3988 = phi float [ %3457, %3495 ], [ %3687, %3980 ]
  %3989 = phi float [ %3458, %3495 ], [ %3688, %3980 ]
  %3990 = phi float [ %3459, %3495 ], [ %3689, %3980 ]
  %3991 = phi float [ %3491, %3495 ], [ %3690, %3980 ]
  %3992 = phi float [ %3492, %3495 ], [ %3691, %3980 ]
  %3993 = phi float [ %3493, %3495 ], [ %3692, %3980 ]
  %3994 = phi float [ %3462, %3495 ], [ %3693, %3980 ]
  %3995 = phi float [ %3461, %3495 ], [ %3694, %3980 ]
  %3996 = phi float [ 0.000000e+00, %3495 ], [ %3695, %3980 ]
  %3997 = phi float [ %3460, %3495 ], [ %3696, %3980 ]
  %3998 = phi float [ %3454, %3495 ], [ %3697, %3980 ]
  %3999 = phi float [ %3455, %3495 ], [ %3698, %3980 ]
  %4000 = phi float [ %3456, %3495 ], [ %3699, %3980 ]
  %4001 = call float @dx.op.dot3.f32(i32 55, float %3991, float %3992, float %3993, float %3991, float %3992, float %3993)  ; Dot3(ax,ay,az,bx,by,bz)
  %4002 = call float @dx.op.unary.f32(i32 25, float %4001)  ; Rsqrt(value)
  %4003 = fmul fast float %4002, %3991
  %4004 = fmul fast float %4002, %3992
  %4005 = fmul fast float %4002, %3993
  %4006 = fadd fast float %3996, %1243
  %4007 = call float @dx.op.unary.f32(i32 7, float %4006)  ; Saturate(value)
  %4008 = call float @dx.op.dot3.f32(i32 55, float %4003, float %4004, float %4005, float %4003, float %4004, float %4005)  ; Dot3(ax,ay,az,bx,by,bz)
  %4009 = call float @dx.op.unary.f32(i32 25, float %4008)  ; Rsqrt(value)
  %4010 = fmul fast float %4009, %4003
  %4011 = fmul fast float %4009, %4004
  %4012 = fmul fast float %4009, %4005
  br label %4013

; <label>:4013                                    ; preds = %3981, %3451
  %4014 = phi float [ %4010, %3981 ], [ %3491, %3451 ]
  %4015 = phi float [ %4011, %3981 ], [ %3492, %3451 ]
  %4016 = phi float [ %4012, %3981 ], [ %3493, %3451 ]
  %4017 = phi float [ %3998, %3981 ], [ %3454, %3451 ]
  %4018 = phi float [ %3999, %3981 ], [ %3455, %3451 ]
  %4019 = phi float [ %4000, %3981 ], [ %3456, %3451 ]
  %4020 = phi float [ %3988, %3981 ], [ %3457, %3451 ]
  %4021 = phi float [ %3989, %3981 ], [ %3458, %3451 ]
  %4022 = phi float [ %3990, %3981 ], [ %3459, %3451 ]
  %4023 = phi float [ %3997, %3981 ], [ %3460, %3451 ]
  %4024 = phi float [ %4007, %3981 ], [ %1243, %3451 ]
  %4025 = phi float [ %3995, %3981 ], [ %3461, %3451 ]
  %4026 = phi float [ %3994, %3981 ], [ %3462, %3451 ]
  %4027 = phi float [ %3987, %3981 ], [ 0.000000e+00, %3451 ]
  %4028 = phi float [ %3986, %3981 ], [ 0.000000e+00, %3451 ]
  %4029 = phi float [ %3982, %3981 ], [ 0.000000e+00, %3451 ]
  %4030 = phi float [ %3984, %3981 ], [ %3465, %3451 ]
  %4031 = phi float [ %3983, %3981 ], [ %1243, %3451 ]
  %4032 = phi float [ %3985, %3981 ], [ %3463, %3451 ]
  %4033 = fadd fast float %4023, 0xBFB99999A0000000
  %4034 = call float @dx.op.unary.f32(i32 7, float %4033)  ; Saturate(value)
  %4035 = fmul fast float %4034, 0x3FF1C71C80000000
  %4036 = call float @dx.op.binary.f32(i32 36, float %4023, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4037 = fsub fast float 1.000000e+00, %4035
  %4038 = call float @dx.op.unary.f32(i32 7, float %4037)  ; Saturate(value)
  %4039 = fmul fast float %4038, %4017
  %4040 = fmul fast float %4038, %4018
  %4041 = fmul fast float %4038, %4019
  %4042 = call float @dx.op.unary.f32(i32 7, float %4039)  ; Saturate(value)
  %4043 = call float @dx.op.unary.f32(i32 7, float %4040)  ; Saturate(value)
  %4044 = call float @dx.op.unary.f32(i32 7, float %4041)  ; Saturate(value)
  %4045 = fmul fast float %4035, %4017
  %4046 = fmul fast float %4035, %4018
  %4047 = fmul fast float %4035, %4019
  %4048 = fadd fast float %4045, %4036
  %4049 = fadd fast float %4046, %4036
  %4050 = fadd fast float %4047, %4036
  %4051 = call float @dx.op.unary.f32(i32 7, float %4048)  ; Saturate(value)
  %4052 = call float @dx.op.unary.f32(i32 7, float %4049)  ; Saturate(value)
  %4053 = call float @dx.op.unary.f32(i32 7, float %4050)  ; Saturate(value)
  %4054 = call float @dx.op.unary.f32(i32 7, float %4025)  ; Saturate(value)
  %4055 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4056 = extractvalue %dx.types.CBufRet.i32 %4055, 3
  %4057 = and i32 %4056, 8
  %4058 = icmp ne i32 %4057, 0
  %4059 = call float @dx.op.binary.f32(i32 35, float %4042, float %4017)  ; FMax(a,b)
  %4060 = call float @dx.op.binary.f32(i32 35, float %4043, float %4017)  ; FMax(a,b)
  %4061 = call float @dx.op.binary.f32(i32 35, float %4044, float %4017)  ; FMax(a,b)
  %4062 = call float @dx.op.dot3.f32(i32 55, float %4042, float %4043, float %4044, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4063 = select i1 %252, float %4017, float %4042
  %4064 = select i1 %252, float %4062, float %4043
  %4065 = select i1 %252, float 1.000000e+00, float %4044
  %4066 = select i1 %4058, float %4059, float %4063
  %4067 = select i1 %4058, float %4060, float %4064
  %4068 = select i1 %4058, float %4061, float %4065
  %4069 = and i32 %228, 3
  %4070 = select i1 %222, i32 %4069, i32 0
  %4071 = icmp eq i32 %4070, 1
  br i1 %4071, label %4072, label %4148

; <label>:4072                                    ; preds = %4013
  %4073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4074 = extractvalue %dx.types.CBufRet.f32 %4073, 0
  %4075 = extractvalue %dx.types.CBufRet.f32 %4073, 1
  %4076 = fadd fast float %4074, %191
  %4077 = fadd fast float %4075, %192
  %4078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4079 = extractvalue %dx.types.CBufRet.f32 %4078, 0
  %4080 = extractvalue %dx.types.CBufRet.f32 %4078, 1
  %4081 = fsub fast float %4076, %4079
  %4082 = fsub fast float %4077, %4080
  %4083 = fmul fast float %4081, %4081
  %4084 = fmul fast float %4082, %4082
  %4085 = fadd fast float %4083, %4084
  %4086 = call float @dx.op.unary.f32(i32 24, float %4085)  ; Sqrt(value)
  %4087 = extractvalue %dx.types.CBufRet.f32 %4078, 2
  %4088 = fcmp fast olt float %4086, %4087
  br i1 %4088, label %4089, label %4142

; <label>:4089                                    ; preds = %4072
  %4090 = extractvalue %dx.types.CBufRet.f32 %4073, 2
  %4091 = fadd fast float %4090, %193
  %4092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4093 = extractvalue %dx.types.CBufRet.f32 %4092, 0
  %4094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4095 = extractvalue %dx.types.CBufRet.f32 %4094, 0
  %4096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4097 = extractvalue %dx.types.CBufRet.f32 %4096, 0
  %4098 = extractvalue %dx.types.CBufRet.f32 %4092, 1
  %4099 = extractvalue %dx.types.CBufRet.f32 %4094, 1
  %4100 = extractvalue %dx.types.CBufRet.f32 %4096, 1
  %4101 = extractvalue %dx.types.CBufRet.f32 %4092, 3
  %4102 = extractvalue %dx.types.CBufRet.f32 %4094, 3
  %4103 = extractvalue %dx.types.CBufRet.f32 %4096, 3
  %4104 = fadd fast float %4101, %4076
  %4105 = fadd fast float %4102, %4077
  %4106 = fadd fast float %4091, %4103
  %4107 = fmul fast float %4104, %4093
  %4108 = call float @dx.op.tertiary.f32(i32 46, float %4105, float %4095, float %4107)  ; FMad(a,b,c)
  %4109 = call float @dx.op.tertiary.f32(i32 46, float %4106, float %4097, float %4108)  ; FMad(a,b,c)
  %4110 = fmul fast float %4104, %4098
  %4111 = call float @dx.op.tertiary.f32(i32 46, float %4105, float %4099, float %4110)  ; FMad(a,b,c)
  %4112 = call float @dx.op.tertiary.f32(i32 46, float %4106, float %4100, float %4111)  ; FMad(a,b,c)
  %4113 = fsub fast float %4109, %4101
  %4114 = fsub fast float %4112, %4102
  %4115 = fsub fast float %4113, %4079
  %4116 = fadd fast float %4115, %4087
  %4117 = fsub fast float %4114, %4080
  %4118 = fadd fast float %4117, %4087
  %4119 = extractvalue %dx.types.CBufRet.f32 %4078, 3
  %4120 = fmul fast float %4116, %4119
  %4121 = fmul fast float %4118, %4119
  %4122 = call float @dx.op.unary.f32(i32 7, float %4120)  ; Saturate(value)
  %4123 = call float @dx.op.unary.f32(i32 7, float %4121)  ; Saturate(value)
  %4124 = fsub fast float 1.000000e+00, %4122
  %4125 = fsub fast float 1.000000e+00, %4123
  %4126 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %43, float %4124, float %4125, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4127 = extractvalue %dx.types.ResRet.f32 %4126, 0
  %4128 = fcmp fast ugt float %4127, 0.000000e+00
  br i1 %4128, label %4129, label %4142

; <label>:4129                                    ; preds = %4089
  %4130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4131 = extractvalue %dx.types.CBufRet.f32 %4130, 2
  %4132 = fmul fast float %4131, %4127
  %4133 = extractvalue %dx.types.CBufRet.f32 %4130, 3
  %4134 = fadd fast float %4133, %4132
  %4135 = extractvalue %dx.types.CBufRet.f32 %4096, 2
  %4136 = fadd fast float %4134, %4103
  %4137 = fmul fast float %4109, %4097
  %4138 = call float @dx.op.tertiary.f32(i32 46, float %4112, float %4100, float %4137)  ; FMad(a,b,c)
  %4139 = call float @dx.op.tertiary.f32(i32 46, float %4136, float %4135, float %4138)  ; FMad(a,b,c)
  %4140 = fsub fast float %4139, %4103
  %4141 = fsub fast float %4140, %4090
  br label %4142

; <label>:4142                                    ; preds = %4129, %4089, %4072
  %4143 = phi i1 [ true, %4129 ], [ false, %4089 ], [ false, %4072 ]
  %4144 = phi float [ %4141, %4129 ], [ -1.310720e+05, %4089 ], [ -1.310720e+05, %4072 ]
  %4145 = fsub fast float %4144, %193
  %4146 = call float @dx.op.unary.f32(i32 7, float %4145)  ; Saturate(value)
  %4147 = select i1 %4143, float %4146, float 1.000000e+00
  br label %4148

; <label>:4148                                    ; preds = %4142, %4013
  %4149 = phi float [ %4147, %4142 ], [ 0.000000e+00, %4013 ]
  %4150 = icmp eq i32 %4070, 3
  %4151 = select i1 %4150, float 1.000000e+00, float %4149
  %4152 = call float @dx.op.binary.f32(i32 35, float %4029, float %4151)  ; FMax(a,b)
  %4153 = fcmp fast olt float %4151, 1.000000e+00
  %4154 = fcmp uge float %65, 0.000000e+00
  %4155 = and i1 %4154, %4153
  br i1 %4155, label %4156, label %4166

; <label>:4156                                    ; preds = %4148
  %4157 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %41, float %65, float %66, float %67, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4158 = extractvalue %dx.types.ResRet.f32 %4157, 0
  %4159 = extractvalue %dx.types.ResRet.f32 %4157, 1
  %4160 = extractvalue %dx.types.ResRet.f32 %4157, 2
  %4161 = fadd fast float %4158, %4152
  %4162 = fcmp ule float %64, 0.000000e+00
  %4163 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4164 = select i1 %4162, float %4163, float 1.000000e+00
  %4165 = fmul fast float %4164, %4160
  br label %4166

; <label>:4166                                    ; preds = %4156, %4148
  %4167 = phi float [ %4161, %4156 ], [ %4152, %4148 ]
  %4168 = phi float [ %4159, %4156 ], [ 0.000000e+00, %4148 ]
  %4169 = phi float [ %4165, %4156 ], [ 0.000000e+00, %4148 ]
  %4170 = call float @dx.op.unary.f32(i32 7, float %4167)  ; Saturate(value)
  %4171 = call float @dx.op.unary.f32(i32 7, float %4168)  ; Saturate(value)
  %4172 = call float @dx.op.unary.f32(i32 7, float %4169)  ; Saturate(value)
  %4173 = fcmp fast une float %4171, 0.000000e+00
  %4174 = fcmp fast une float %4172, 0.000000e+00
  %4175 = or i1 %4173, %4174
  br i1 %4175, label %4176, label %4735

; <label>:4176                                    ; preds = %4166
  br i1 %4173, label %4177, label %4450

; <label>:4177                                    ; preds = %4176
  %4178 = call float @dx.op.unary.f32(i32 23, float %4026)  ; Log(value)
  %4179 = fmul fast float %4178, 4.000000e+00
  %4180 = call float @dx.op.unary.f32(i32 21, float %4179)  ; Exp(value)
  %4181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4182 = extractvalue %dx.types.CBufRet.f32 %4181, 0
  %4183 = fmul fast float %4182, %52
  %4184 = fmul fast float %4182, %53
  %4185 = fmul fast float %4182, %54
  %4186 = call float @dx.op.unary.f32(i32 6, float %61)  ; FAbs(value)
  %4187 = call float @dx.op.unary.f32(i32 6, float %62)  ; FAbs(value)
  %4188 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %4189 = call float @dx.op.unary.f32(i32 23, float %4186)  ; Log(value)
  %4190 = call float @dx.op.unary.f32(i32 23, float %4187)  ; Log(value)
  %4191 = call float @dx.op.unary.f32(i32 23, float %4188)  ; Log(value)
  %4192 = fmul fast float %4189, 4.000000e+00
  %4193 = fmul fast float %4190, 4.000000e+00
  %4194 = fmul fast float %4191, 4.000000e+00
  %4195 = call float @dx.op.unary.f32(i32 21, float %4192)  ; Exp(value)
  %4196 = call float @dx.op.unary.f32(i32 21, float %4193)  ; Exp(value)
  %4197 = call float @dx.op.unary.f32(i32 21, float %4194)  ; Exp(value)
  %4198 = fadd fast float %4196, %4195
  %4199 = fadd fast float %4198, %4197
  %4200 = fdiv fast float 1.000000e+00, %4199
  %4201 = fmul fast float %4200, %4195
  %4202 = fcmp fast ogt float %61, 0.000000e+00
  %4203 = fcmp fast ogt float %62, 0.000000e+00
  %4204 = fcmp fast ogt float %63, 0.000000e+00
  %4205 = fcmp fast olt float %61, 0.000000e+00
  %4206 = fcmp fast olt float %62, 0.000000e+00
  %4207 = fcmp fast olt float %63, 0.000000e+00
  %4208 = zext i1 %4202 to i32
  %4209 = zext i1 %4203 to i32
  %4210 = zext i1 %4204 to i32
  %4211 = zext i1 %4205 to i32
  %4212 = zext i1 %4206 to i32
  %4213 = zext i1 %4207 to i32
  %4214 = sub nsw i32 %4208, %4211
  %4215 = sub nsw i32 %4209, %4212
  %4216 = sub nsw i32 %4210, %4213
  %4217 = call float @dx.op.unary.f32(i32 83, float %4183)  ; DerivCoarseX(value)
  %4218 = call float @dx.op.unary.f32(i32 83, float %4184)  ; DerivCoarseX(value)
  %4219 = call float @dx.op.unary.f32(i32 83, float %4185)  ; DerivCoarseX(value)
  %4220 = call float @dx.op.unary.f32(i32 84, float %4183)  ; DerivCoarseY(value)
  %4221 = call float @dx.op.unary.f32(i32 84, float %4184)  ; DerivCoarseY(value)
  %4222 = call float @dx.op.unary.f32(i32 84, float %4185)  ; DerivCoarseY(value)
  %4223 = fcmp fast ole float %263, %4201
  %4224 = fmul fast float %4200, %4198
  %4225 = fcmp fast ole float %263, %4224
  %4226 = select i1 %4225, float %4185, float %4183
  %4227 = select i1 %4225, float %4183, float %4184
  %4228 = select i1 %4223, float %4184, float %4226
  %4229 = select i1 %4223, float %4185, float %4227
  %4230 = select i1 %4225, float %4219, float %4217
  %4231 = select i1 %4225, float %4217, float %4218
  %4232 = select i1 %4223, float %4218, float %4230
  %4233 = select i1 %4223, float %4219, float %4231
  %4234 = select i1 %4225, float %4222, float %4220
  %4235 = select i1 %4225, float %4220, float %4221
  %4236 = select i1 %4223, float %4221, float %4234
  %4237 = select i1 %4223, float %4222, float %4235
  %4238 = call float @dx.op.unary.f32(i32 27, float %4228)  ; Round_ni(value)
  %4239 = call float @dx.op.unary.f32(i32 27, float %4229)  ; Round_ni(value)
  %4240 = fptosi float %4238 to i32
  %4241 = fptosi float %4239 to i32
  %4242 = xor i32 %4241, %4240
  %4243 = sitofp i32 %4242 to float
  %4244 = fptosi float %4243 to i32
  %4245 = sitofp i32 %4244 to float
  %4246 = fmul fast float %4245, 0x3FE3C6EF40000000
  %4247 = frem fast float %4238, 2.560000e+02
  %4248 = frem fast float %4239, 2.560000e+02
  %4249 = fptoui float %4247 to i32
  %4250 = fptoui float %4248 to i32
  %4251 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %4249, i32 %4250, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4252 = extractvalue %dx.types.ResRet.f32 %4251, 0
  %4253 = extractvalue %dx.types.ResRet.f32 %4251, 1
  %4254 = extractvalue %dx.types.ResRet.f32 %4251, 2
  %4255 = fadd fast float %4252, %4246
  %4256 = fadd fast float %4253, %4246
  %4257 = fadd fast float %4254, %4246
  %4258 = call float @dx.op.unary.f32(i32 22, float %4255)  ; Frc(value)
  %4259 = call float @dx.op.unary.f32(i32 22, float %4256)  ; Frc(value)
  %4260 = call float @dx.op.unary.f32(i32 22, float %4257)  ; Frc(value)
  %4261 = fmul fast float %4260, 0x401921FB60000000
  %4262 = call float @dx.op.unary.f32(i32 13, float %4261)  ; Sin(value)
  %4263 = call float @dx.op.unary.f32(i32 12, float %4261)  ; Cos(value)
  %4264 = fsub fast float -0.000000e+00, %4263
  %4265 = fmul fast float %4263, %4228
  %4266 = call float @dx.op.tertiary.f32(i32 46, float %4262, float %4229, float %4265)  ; FMad(a,b,c)
  %4267 = fmul fast float %4262, %4228
  %4268 = call float @dx.op.tertiary.f32(i32 46, float %4264, float %4229, float %4267)  ; FMad(a,b,c)
  %4269 = fadd fast float %4266, %4258
  %4270 = fadd fast float %4268, %4259
  %4271 = extractvalue %dx.types.CBufRet.f32 %4181, 3
  %4272 = bitcast float %4271 to i32
  %4273 = icmp eq i32 %4272, 0
  br i1 %4273, label %4312, label %4274

; <label>:4274                                    ; preds = %4177
  %4275 = add i32 %4272, 0
  %4276 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4275, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4277 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4276, %dx.types.Handle %101, float %4269, float %4270, float undef, float undef, i32 0, i32 0, i32 undef, float %4232, float %4233, float undef, float %4236, float %4237, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4278 = extractvalue %dx.types.ResRet.f32 %4277, 0
  %4279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4280 = extractvalue %dx.types.CBufRet.f32 %4279, 1
  %4281 = extractvalue %dx.types.CBufRet.f32 %4279, 2
  %4282 = fsub fast float 1.000000e+00, %4171
  %4283 = call float @dx.op.binary.f32(i32 35, float %4282, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4284 = bitcast float %4171 to i32
  %4285 = sitofp i32 %4284 to float
  %4286 = fadd fast float %4285, 0xC1CFBF8940000000
  %4287 = fmul fast float %4281, %4286
  %4288 = fadd fast float %4287, 0x41CFBF8940000000
  %4289 = fptosi float %4288 to i32
  %4290 = bitcast i32 %4289 to float
  %4291 = bitcast float %4283 to i32
  %4292 = sitofp i32 %4291 to float
  %4293 = fadd fast float %4292, 0xC1CFBF8940000000
  %4294 = fmul fast float %4293, %4281
  %4295 = fadd fast float %4294, 0x41CFBF8940000000
  %4296 = fptosi float %4295 to i32
  %4297 = bitcast i32 %4296 to float
  %4298 = fmul fast float %4290, %4280
  %4299 = fmul fast float %4297, %4280
  %4300 = fsub fast float %4283, %4298
  %4301 = fadd fast float %4299, %4283
  %4302 = call float @dx.op.unary.f32(i32 7, float %4300)  ; Saturate(value)
  %4303 = call float @dx.op.unary.f32(i32 7, float %4301)  ; Saturate(value)
  %4304 = fsub fast float %4278, %4302
  %4305 = fsub fast float %4303, %4302
  %4306 = bitcast float %4305 to i32
  %4307 = sub nsw i32 2129859010, %4306
  %4308 = bitcast i32 %4307 to float
  %4309 = fmul fast float %4308, %4304
  %4310 = call float @dx.op.unary.f32(i32 7, float %4309)  ; Saturate(value)
  %4311 = fcmp fast olt float %4310, 0x3F70101020000000
  br i1 %4311, label %4450, label %4312

; <label>:4312                                    ; preds = %4274, %4177
  %4313 = phi float [ %4310, %4274 ], [ %4171, %4177 ]
  %4314 = fmul fast float %4313, %4180
  %4315 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4316 = extractvalue %dx.types.CBufRet.i32 %4315, 1
  %4317 = extractvalue %dx.types.CBufRet.i32 %4315, 0
  %4318 = add i32 %4317, 0
  %4319 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4318, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4320 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4319, %dx.types.Handle %100, float %4269, float %4270, float undef, float undef, i32 0, i32 0, i32 undef, float %4232, float %4233, float undef, float %4236, float %4237, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4321 = extractvalue %dx.types.ResRet.f32 %4320, 0
  %4322 = extractvalue %dx.types.ResRet.f32 %4320, 1
  %4323 = extractvalue %dx.types.ResRet.f32 %4320, 2
  %4324 = extractvalue %dx.types.ResRet.f32 %4320, 3
  %4325 = and i32 %4316, 255
  %4326 = uitofp i32 %4325 to float
  %4327 = lshr i32 %4316, 8
  %4328 = and i32 %4327, 255
  %4329 = uitofp i32 %4328 to float
  %4330 = fmul fast float %4324, %4326
  %4331 = fadd fast float %4330, %4329
  %4332 = fmul fast float %4331, 0x3F70101000000000
  %4333 = fadd fast float %4332, 0xBFB99999A0000000
  %4334 = call float @dx.op.unary.f32(i32 7, float %4333)  ; Saturate(value)
  %4335 = fmul fast float %4334, 0x3FF1C71C80000000
  %4336 = call float @dx.op.binary.f32(i32 36, float %4332, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4337 = fsub fast float 1.000000e+00, %4335
  %4338 = call float @dx.op.unary.f32(i32 7, float %4337)  ; Saturate(value)
  %4339 = fmul fast float %4338, %4321
  %4340 = fmul fast float %4338, %4322
  %4341 = fmul fast float %4338, %4323
  %4342 = call float @dx.op.unary.f32(i32 7, float %4339)  ; Saturate(value)
  %4343 = call float @dx.op.unary.f32(i32 7, float %4340)  ; Saturate(value)
  %4344 = call float @dx.op.unary.f32(i32 7, float %4341)  ; Saturate(value)
  %4345 = fmul fast float %4335, %4321
  %4346 = fmul fast float %4335, %4322
  %4347 = fmul fast float %4335, %4323
  %4348 = fadd fast float %4345, %4336
  %4349 = fadd fast float %4346, %4336
  %4350 = fadd fast float %4347, %4336
  %4351 = call float @dx.op.unary.f32(i32 7, float %4348)  ; Saturate(value)
  %4352 = call float @dx.op.unary.f32(i32 7, float %4349)  ; Saturate(value)
  %4353 = call float @dx.op.unary.f32(i32 7, float %4350)  ; Saturate(value)
  %4354 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4355 = extractvalue %dx.types.CBufRet.i32 %4354, 3
  %4356 = extractvalue %dx.types.CBufRet.i32 %4354, 2
  %4357 = add i32 %4356, 0
  %4358 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4357, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4359 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4358, %dx.types.Handle %100, float %4269, float %4270, float undef, float undef, i32 0, i32 0, i32 undef, float %4232, float %4233, float undef, float %4236, float %4237, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4360 = extractvalue %dx.types.ResRet.f32 %4359, 0
  %4361 = extractvalue %dx.types.ResRet.f32 %4359, 1
  %4362 = extractvalue %dx.types.ResRet.f32 %4359, 2
  %4363 = extractvalue %dx.types.ResRet.f32 %4359, 3
  %4364 = and i32 %4355, 255
  %4365 = uitofp i32 %4364 to float
  %4366 = lshr i32 %4355, 8
  %4367 = and i32 %4366, 255
  %4368 = uitofp i32 %4367 to float
  %4369 = lshr i32 %4355, 16
  %4370 = and i32 %4369, 255
  %4371 = uitofp i32 %4370 to float
  %4372 = fmul fast float %4371, 0x3F70101000000000
  %4373 = fmul fast float %4360, %4365
  %4374 = fadd fast float %4373, %4368
  %4375 = fmul fast float %4374, 0x3F70101000000000
  %4376 = fadd fast float %4361, -5.000000e-01
  %4377 = fadd fast float %4363, -5.000000e-01
  %4378 = fmul fast float %4376, %4372
  %4379 = fmul fast float %4377, %4372
  %4380 = fadd fast float %4378, 5.000000e-01
  %4381 = fadd fast float %4379, 5.000000e-01
  %4382 = fmul fast float %4380, 2.000000e+00
  %4383 = fadd fast float %4382, -1.000000e+00
  %4384 = fmul fast float %4381, 2.000000e+00
  %4385 = fadd fast float %4384, -1.000000e+00
  %4386 = fadd fast float %4383, %4385
  %4387 = fmul fast float %4386, 5.000000e-01
  %4388 = fsub fast float %4383, %4385
  %4389 = fmul fast float %4388, 5.000000e-01
  %4390 = call float @dx.op.unary.f32(i32 6, float %4387)  ; FAbs(value)
  %4391 = fsub fast float 1.000000e+00, %4390
  %4392 = call float @dx.op.unary.f32(i32 6, float %4389)  ; FAbs(value)
  %4393 = fsub fast float %4391, %4392
  %4394 = call float @dx.op.dot3.f32(i32 55, float %4387, float %4389, float %4393, float %4387, float %4389, float %4393)  ; Dot3(ax,ay,az,bx,by,bz)
  %4395 = call float @dx.op.unary.f32(i32 25, float %4394)  ; Rsqrt(value)
  %4396 = fmul fast float %4387, %4395
  %4397 = fmul fast float %4389, %4395
  %4398 = select i1 %4225, i32 %4215, i32 %4216
  %4399 = select i1 %4223, i32 %4214, i32 %4398
  %4400 = sitofp i32 %4399 to float
  %4401 = fmul fast float %4393, %4400
  %4402 = fmul fast float %4401, %4395
  %4403 = select i1 %4225, float %4402, float %4397
  %4404 = select i1 %4225, float %4397, float %4402
  %4405 = select i1 %4223, float %4402, float %4396
  %4406 = select i1 %4223, float %4397, float %4403
  %4407 = select i1 %4223, float %4396, float %4404
  %4408 = fsub fast float %4342, %4066
  %4409 = fsub fast float %4343, %4067
  %4410 = fsub fast float %4344, %4068
  %4411 = fmul fast float %4408, %4314
  %4412 = fmul fast float %4409, %4314
  %4413 = fmul fast float %4410, %4314
  %4414 = fadd fast float %4411, %4066
  %4415 = fadd fast float %4412, %4067
  %4416 = fadd fast float %4413, %4068
  %4417 = fsub fast float %4351, %4051
  %4418 = fsub fast float %4352, %4052
  %4419 = fsub fast float %4353, %4053
  %4420 = fmul fast float %4417, %4314
  %4421 = fmul fast float %4418, %4314
  %4422 = fmul fast float %4419, %4314
  %4423 = fadd fast float %4420, %4051
  %4424 = fadd fast float %4421, %4052
  %4425 = fadd fast float %4422, %4053
  %4426 = fadd fast float %4405, %4014
  %4427 = fadd fast float %4406, %4015
  %4428 = fadd fast float %4407, %4016
  %4429 = call float @dx.op.dot3.f32(i32 55, float %4426, float %4427, float %4428, float %4426, float %4427, float %4428)  ; Dot3(ax,ay,az,bx,by,bz)
  %4430 = call float @dx.op.unary.f32(i32 25, float %4429)  ; Rsqrt(value)
  %4431 = fmul fast float %4426, %4430
  %4432 = fmul fast float %4427, %4430
  %4433 = fmul fast float %4428, %4430
  %4434 = fsub fast float %4431, %4014
  %4435 = fsub fast float %4432, %4015
  %4436 = fsub fast float %4433, %4016
  %4437 = fmul fast float %4434, %4314
  %4438 = fmul fast float %4435, %4314
  %4439 = fmul fast float %4436, %4314
  %4440 = fadd fast float %4437, %4014
  %4441 = fadd fast float %4438, %4015
  %4442 = fadd fast float %4439, %4016
  %4443 = call float @dx.op.binary.f32(i32 36, float %4026, float %4362)  ; FMin(a,b)
  %4444 = fsub fast float %4443, %4026
  %4445 = fmul fast float %4444, %4314
  %4446 = fadd fast float %4445, %4026
  %4447 = fsub fast float %4375, %4054
  %4448 = fmul fast float %4447, %4314
  %4449 = fadd fast float %4448, %4054
  br label %4450

; <label>:4450                                    ; preds = %4312, %4274, %4176
  %4451 = phi float [ %4423, %4312 ], [ %4051, %4274 ], [ %4051, %4176 ]
  %4452 = phi float [ %4424, %4312 ], [ %4052, %4274 ], [ %4052, %4176 ]
  %4453 = phi float [ %4425, %4312 ], [ %4053, %4274 ], [ %4053, %4176 ]
  %4454 = phi float [ %4414, %4312 ], [ %4066, %4274 ], [ %4066, %4176 ]
  %4455 = phi float [ %4415, %4312 ], [ %4067, %4274 ], [ %4067, %4176 ]
  %4456 = phi float [ %4416, %4312 ], [ %4068, %4274 ], [ %4068, %4176 ]
  %4457 = phi float [ %4440, %4312 ], [ %4014, %4274 ], [ %4014, %4176 ]
  %4458 = phi float [ %4441, %4312 ], [ %4015, %4274 ], [ %4015, %4176 ]
  %4459 = phi float [ %4442, %4312 ], [ %4016, %4274 ], [ %4016, %4176 ]
  %4460 = phi float [ %4449, %4312 ], [ %4054, %4274 ], [ %4054, %4176 ]
  %4461 = phi float [ %4446, %4312 ], [ %4026, %4274 ], [ %4026, %4176 ]
  br i1 %4174, label %4462, label %4735

; <label>:4462                                    ; preds = %4450
  %4463 = call float @dx.op.unary.f32(i32 23, float %4461)  ; Log(value)
  %4464 = fmul fast float %4463, 4.000000e+00
  %4465 = call float @dx.op.unary.f32(i32 21, float %4464)  ; Exp(value)
  %4466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4467 = extractvalue %dx.types.CBufRet.f32 %4466, 0
  %4468 = fmul fast float %4467, %52
  %4469 = fmul fast float %4467, %53
  %4470 = fmul fast float %4467, %54
  %4471 = call float @dx.op.unary.f32(i32 6, float %61)  ; FAbs(value)
  %4472 = call float @dx.op.unary.f32(i32 6, float %62)  ; FAbs(value)
  %4473 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %4474 = call float @dx.op.unary.f32(i32 23, float %4471)  ; Log(value)
  %4475 = call float @dx.op.unary.f32(i32 23, float %4472)  ; Log(value)
  %4476 = call float @dx.op.unary.f32(i32 23, float %4473)  ; Log(value)
  %4477 = fmul fast float %4474, 4.000000e+00
  %4478 = fmul fast float %4475, 4.000000e+00
  %4479 = fmul fast float %4476, 4.000000e+00
  %4480 = call float @dx.op.unary.f32(i32 21, float %4477)  ; Exp(value)
  %4481 = call float @dx.op.unary.f32(i32 21, float %4478)  ; Exp(value)
  %4482 = call float @dx.op.unary.f32(i32 21, float %4479)  ; Exp(value)
  %4483 = fadd fast float %4481, %4480
  %4484 = fadd fast float %4483, %4482
  %4485 = fdiv fast float 1.000000e+00, %4484
  %4486 = fmul fast float %4485, %4480
  %4487 = fcmp fast ogt float %61, 0.000000e+00
  %4488 = fcmp fast ogt float %62, 0.000000e+00
  %4489 = fcmp fast ogt float %63, 0.000000e+00
  %4490 = fcmp fast olt float %61, 0.000000e+00
  %4491 = fcmp fast olt float %62, 0.000000e+00
  %4492 = fcmp fast olt float %63, 0.000000e+00
  %4493 = zext i1 %4487 to i32
  %4494 = zext i1 %4488 to i32
  %4495 = zext i1 %4489 to i32
  %4496 = zext i1 %4490 to i32
  %4497 = zext i1 %4491 to i32
  %4498 = zext i1 %4492 to i32
  %4499 = sub nsw i32 %4493, %4496
  %4500 = sub nsw i32 %4494, %4497
  %4501 = sub nsw i32 %4495, %4498
  %4502 = call float @dx.op.unary.f32(i32 83, float %4468)  ; DerivCoarseX(value)
  %4503 = call float @dx.op.unary.f32(i32 83, float %4469)  ; DerivCoarseX(value)
  %4504 = call float @dx.op.unary.f32(i32 83, float %4470)  ; DerivCoarseX(value)
  %4505 = call float @dx.op.unary.f32(i32 84, float %4468)  ; DerivCoarseY(value)
  %4506 = call float @dx.op.unary.f32(i32 84, float %4469)  ; DerivCoarseY(value)
  %4507 = call float @dx.op.unary.f32(i32 84, float %4470)  ; DerivCoarseY(value)
  %4508 = fcmp fast ole float %263, %4486
  %4509 = fmul fast float %4485, %4483
  %4510 = fcmp fast ole float %263, %4509
  %4511 = select i1 %4510, float %4470, float %4468
  %4512 = select i1 %4510, float %4468, float %4469
  %4513 = select i1 %4508, float %4469, float %4511
  %4514 = select i1 %4508, float %4470, float %4512
  %4515 = select i1 %4510, float %4504, float %4502
  %4516 = select i1 %4510, float %4502, float %4503
  %4517 = select i1 %4508, float %4503, float %4515
  %4518 = select i1 %4508, float %4504, float %4516
  %4519 = select i1 %4510, float %4507, float %4505
  %4520 = select i1 %4510, float %4505, float %4506
  %4521 = select i1 %4508, float %4506, float %4519
  %4522 = select i1 %4508, float %4507, float %4520
  %4523 = call float @dx.op.unary.f32(i32 27, float %4513)  ; Round_ni(value)
  %4524 = call float @dx.op.unary.f32(i32 27, float %4514)  ; Round_ni(value)
  %4525 = fptosi float %4523 to i32
  %4526 = fptosi float %4524 to i32
  %4527 = xor i32 %4526, %4525
  %4528 = sitofp i32 %4527 to float
  %4529 = fptosi float %4528 to i32
  %4530 = sitofp i32 %4529 to float
  %4531 = fmul fast float %4530, 0x3FE3C6EF40000000
  %4532 = frem fast float %4523, 2.560000e+02
  %4533 = frem fast float %4524, 2.560000e+02
  %4534 = fptoui float %4532 to i32
  %4535 = fptoui float %4533 to i32
  %4536 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %4534, i32 %4535, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4537 = extractvalue %dx.types.ResRet.f32 %4536, 0
  %4538 = extractvalue %dx.types.ResRet.f32 %4536, 1
  %4539 = extractvalue %dx.types.ResRet.f32 %4536, 2
  %4540 = fadd fast float %4537, %4531
  %4541 = fadd fast float %4538, %4531
  %4542 = fadd fast float %4539, %4531
  %4543 = call float @dx.op.unary.f32(i32 22, float %4540)  ; Frc(value)
  %4544 = call float @dx.op.unary.f32(i32 22, float %4541)  ; Frc(value)
  %4545 = call float @dx.op.unary.f32(i32 22, float %4542)  ; Frc(value)
  %4546 = fmul fast float %4545, 0x401921FB60000000
  %4547 = call float @dx.op.unary.f32(i32 13, float %4546)  ; Sin(value)
  %4548 = call float @dx.op.unary.f32(i32 12, float %4546)  ; Cos(value)
  %4549 = fsub fast float -0.000000e+00, %4548
  %4550 = fmul fast float %4548, %4513
  %4551 = call float @dx.op.tertiary.f32(i32 46, float %4547, float %4514, float %4550)  ; FMad(a,b,c)
  %4552 = fmul fast float %4547, %4513
  %4553 = call float @dx.op.tertiary.f32(i32 46, float %4549, float %4514, float %4552)  ; FMad(a,b,c)
  %4554 = fadd fast float %4551, %4543
  %4555 = fadd fast float %4553, %4544
  %4556 = extractvalue %dx.types.CBufRet.f32 %4466, 3
  %4557 = bitcast float %4556 to i32
  %4558 = icmp eq i32 %4557, 0
  br i1 %4558, label %4597, label %4559

; <label>:4559                                    ; preds = %4462
  %4560 = add i32 %4557, 0
  %4561 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4560, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4562 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4561, %dx.types.Handle %101, float %4554, float %4555, float undef, float undef, i32 0, i32 0, i32 undef, float %4517, float %4518, float undef, float %4521, float %4522, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4563 = extractvalue %dx.types.ResRet.f32 %4562, 0
  %4564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4565 = extractvalue %dx.types.CBufRet.f32 %4564, 1
  %4566 = extractvalue %dx.types.CBufRet.f32 %4564, 2
  %4567 = fsub fast float 1.000000e+00, %4172
  %4568 = call float @dx.op.binary.f32(i32 35, float %4567, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4569 = bitcast float %4172 to i32
  %4570 = sitofp i32 %4569 to float
  %4571 = fadd fast float %4570, 0xC1CFBF8940000000
  %4572 = fmul fast float %4566, %4571
  %4573 = fadd fast float %4572, 0x41CFBF8940000000
  %4574 = fptosi float %4573 to i32
  %4575 = bitcast i32 %4574 to float
  %4576 = bitcast float %4568 to i32
  %4577 = sitofp i32 %4576 to float
  %4578 = fadd fast float %4577, 0xC1CFBF8940000000
  %4579 = fmul fast float %4578, %4566
  %4580 = fadd fast float %4579, 0x41CFBF8940000000
  %4581 = fptosi float %4580 to i32
  %4582 = bitcast i32 %4581 to float
  %4583 = fmul fast float %4575, %4565
  %4584 = fmul fast float %4582, %4565
  %4585 = fsub fast float %4568, %4583
  %4586 = fadd fast float %4584, %4568
  %4587 = call float @dx.op.unary.f32(i32 7, float %4585)  ; Saturate(value)
  %4588 = call float @dx.op.unary.f32(i32 7, float %4586)  ; Saturate(value)
  %4589 = fsub fast float %4563, %4587
  %4590 = fsub fast float %4588, %4587
  %4591 = bitcast float %4590 to i32
  %4592 = sub nsw i32 2129859010, %4591
  %4593 = bitcast i32 %4592 to float
  %4594 = fmul fast float %4593, %4589
  %4595 = call float @dx.op.unary.f32(i32 7, float %4594)  ; Saturate(value)
  %4596 = fcmp fast olt float %4595, 0x3F70101020000000
  br i1 %4596, label %4735, label %4597

; <label>:4597                                    ; preds = %4559, %4462
  %4598 = phi float [ %4595, %4559 ], [ %4172, %4462 ]
  %4599 = fmul fast float %4598, %4465
  %4600 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4601 = extractvalue %dx.types.CBufRet.i32 %4600, 1
  %4602 = extractvalue %dx.types.CBufRet.i32 %4600, 0
  %4603 = add i32 %4602, 0
  %4604 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4603, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4605 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4604, %dx.types.Handle %100, float %4554, float %4555, float undef, float undef, i32 0, i32 0, i32 undef, float %4517, float %4518, float undef, float %4521, float %4522, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4606 = extractvalue %dx.types.ResRet.f32 %4605, 0
  %4607 = extractvalue %dx.types.ResRet.f32 %4605, 1
  %4608 = extractvalue %dx.types.ResRet.f32 %4605, 2
  %4609 = extractvalue %dx.types.ResRet.f32 %4605, 3
  %4610 = and i32 %4601, 255
  %4611 = uitofp i32 %4610 to float
  %4612 = lshr i32 %4601, 8
  %4613 = and i32 %4612, 255
  %4614 = uitofp i32 %4613 to float
  %4615 = fmul fast float %4609, %4611
  %4616 = fadd fast float %4615, %4614
  %4617 = fmul fast float %4616, 0x3F70101000000000
  %4618 = fadd fast float %4617, 0xBFB99999A0000000
  %4619 = call float @dx.op.unary.f32(i32 7, float %4618)  ; Saturate(value)
  %4620 = fmul fast float %4619, 0x3FF1C71C80000000
  %4621 = call float @dx.op.binary.f32(i32 36, float %4617, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4622 = fsub fast float 1.000000e+00, %4620
  %4623 = call float @dx.op.unary.f32(i32 7, float %4622)  ; Saturate(value)
  %4624 = fmul fast float %4623, %4606
  %4625 = fmul fast float %4623, %4607
  %4626 = fmul fast float %4623, %4608
  %4627 = call float @dx.op.unary.f32(i32 7, float %4624)  ; Saturate(value)
  %4628 = call float @dx.op.unary.f32(i32 7, float %4625)  ; Saturate(value)
  %4629 = call float @dx.op.unary.f32(i32 7, float %4626)  ; Saturate(value)
  %4630 = fmul fast float %4620, %4606
  %4631 = fmul fast float %4620, %4607
  %4632 = fmul fast float %4620, %4608
  %4633 = fadd fast float %4630, %4621
  %4634 = fadd fast float %4631, %4621
  %4635 = fadd fast float %4632, %4621
  %4636 = call float @dx.op.unary.f32(i32 7, float %4633)  ; Saturate(value)
  %4637 = call float @dx.op.unary.f32(i32 7, float %4634)  ; Saturate(value)
  %4638 = call float @dx.op.unary.f32(i32 7, float %4635)  ; Saturate(value)
  %4639 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4640 = extractvalue %dx.types.CBufRet.i32 %4639, 3
  %4641 = extractvalue %dx.types.CBufRet.i32 %4639, 2
  %4642 = add i32 %4641, 0
  %4643 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4642, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4644 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4643, %dx.types.Handle %100, float %4554, float %4555, float undef, float undef, i32 0, i32 0, i32 undef, float %4517, float %4518, float undef, float %4521, float %4522, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4645 = extractvalue %dx.types.ResRet.f32 %4644, 0
  %4646 = extractvalue %dx.types.ResRet.f32 %4644, 1
  %4647 = extractvalue %dx.types.ResRet.f32 %4644, 2
  %4648 = extractvalue %dx.types.ResRet.f32 %4644, 3
  %4649 = and i32 %4640, 255
  %4650 = uitofp i32 %4649 to float
  %4651 = lshr i32 %4640, 8
  %4652 = and i32 %4651, 255
  %4653 = uitofp i32 %4652 to float
  %4654 = lshr i32 %4640, 16
  %4655 = and i32 %4654, 255
  %4656 = uitofp i32 %4655 to float
  %4657 = fmul fast float %4656, 0x3F70101000000000
  %4658 = fmul fast float %4645, %4650
  %4659 = fadd fast float %4658, %4653
  %4660 = fmul fast float %4659, 0x3F70101000000000
  %4661 = fadd fast float %4646, -5.000000e-01
  %4662 = fadd fast float %4648, -5.000000e-01
  %4663 = fmul fast float %4661, %4657
  %4664 = fmul fast float %4662, %4657
  %4665 = fadd fast float %4663, 5.000000e-01
  %4666 = fadd fast float %4664, 5.000000e-01
  %4667 = fmul fast float %4665, 2.000000e+00
  %4668 = fadd fast float %4667, -1.000000e+00
  %4669 = fmul fast float %4666, 2.000000e+00
  %4670 = fadd fast float %4669, -1.000000e+00
  %4671 = fadd fast float %4668, %4670
  %4672 = fmul fast float %4671, 5.000000e-01
  %4673 = fsub fast float %4668, %4670
  %4674 = fmul fast float %4673, 5.000000e-01
  %4675 = call float @dx.op.unary.f32(i32 6, float %4672)  ; FAbs(value)
  %4676 = fsub fast float 1.000000e+00, %4675
  %4677 = call float @dx.op.unary.f32(i32 6, float %4674)  ; FAbs(value)
  %4678 = fsub fast float %4676, %4677
  %4679 = call float @dx.op.dot3.f32(i32 55, float %4672, float %4674, float %4678, float %4672, float %4674, float %4678)  ; Dot3(ax,ay,az,bx,by,bz)
  %4680 = call float @dx.op.unary.f32(i32 25, float %4679)  ; Rsqrt(value)
  %4681 = fmul fast float %4672, %4680
  %4682 = fmul fast float %4674, %4680
  %4683 = select i1 %4510, i32 %4500, i32 %4501
  %4684 = select i1 %4508, i32 %4499, i32 %4683
  %4685 = sitofp i32 %4684 to float
  %4686 = fmul fast float %4678, %4685
  %4687 = fmul fast float %4686, %4680
  %4688 = select i1 %4510, float %4687, float %4682
  %4689 = select i1 %4510, float %4682, float %4687
  %4690 = select i1 %4508, float %4687, float %4681
  %4691 = select i1 %4508, float %4682, float %4688
  %4692 = select i1 %4508, float %4681, float %4689
  %4693 = fsub fast float %4627, %4454
  %4694 = fsub fast float %4628, %4455
  %4695 = fsub fast float %4629, %4456
  %4696 = fmul fast float %4693, %4599
  %4697 = fmul fast float %4694, %4599
  %4698 = fmul fast float %4695, %4599
  %4699 = fadd fast float %4696, %4454
  %4700 = fadd fast float %4697, %4455
  %4701 = fadd fast float %4698, %4456
  %4702 = fsub fast float %4636, %4451
  %4703 = fsub fast float %4637, %4452
  %4704 = fsub fast float %4638, %4453
  %4705 = fmul fast float %4702, %4599
  %4706 = fmul fast float %4703, %4599
  %4707 = fmul fast float %4704, %4599
  %4708 = fadd fast float %4705, %4451
  %4709 = fadd fast float %4706, %4452
  %4710 = fadd fast float %4707, %4453
  %4711 = fadd fast float %4690, %4457
  %4712 = fadd fast float %4691, %4458
  %4713 = fadd fast float %4692, %4459
  %4714 = call float @dx.op.dot3.f32(i32 55, float %4711, float %4712, float %4713, float %4711, float %4712, float %4713)  ; Dot3(ax,ay,az,bx,by,bz)
  %4715 = call float @dx.op.unary.f32(i32 25, float %4714)  ; Rsqrt(value)
  %4716 = fmul fast float %4711, %4715
  %4717 = fmul fast float %4712, %4715
  %4718 = fmul fast float %4713, %4715
  %4719 = fsub fast float %4716, %4457
  %4720 = fsub fast float %4717, %4458
  %4721 = fsub fast float %4718, %4459
  %4722 = fmul fast float %4719, %4599
  %4723 = fmul fast float %4720, %4599
  %4724 = fmul fast float %4721, %4599
  %4725 = fadd fast float %4722, %4457
  %4726 = fadd fast float %4723, %4458
  %4727 = fadd fast float %4724, %4459
  %4728 = call float @dx.op.binary.f32(i32 36, float %4461, float %4647)  ; FMin(a,b)
  %4729 = fsub fast float %4728, %4461
  %4730 = fmul fast float %4729, %4599
  %4731 = fadd fast float %4730, %4461
  %4732 = fsub fast float %4660, %4460
  %4733 = fmul fast float %4732, %4599
  %4734 = fadd fast float %4733, %4460
  br label %4735

; <label>:4735                                    ; preds = %4597, %4559, %4450, %4166
  %4736 = phi float [ %4708, %4597 ], [ %4451, %4559 ], [ %4451, %4450 ], [ %4051, %4166 ]
  %4737 = phi float [ %4709, %4597 ], [ %4452, %4559 ], [ %4452, %4450 ], [ %4052, %4166 ]
  %4738 = phi float [ %4710, %4597 ], [ %4453, %4559 ], [ %4453, %4450 ], [ %4053, %4166 ]
  %4739 = phi float [ %4699, %4597 ], [ %4454, %4559 ], [ %4454, %4450 ], [ %4066, %4166 ]
  %4740 = phi float [ %4700, %4597 ], [ %4455, %4559 ], [ %4455, %4450 ], [ %4067, %4166 ]
  %4741 = phi float [ %4701, %4597 ], [ %4456, %4559 ], [ %4456, %4450 ], [ %4068, %4166 ]
  %4742 = phi float [ %4725, %4597 ], [ %4457, %4559 ], [ %4457, %4450 ], [ %4014, %4166 ]
  %4743 = phi float [ %4726, %4597 ], [ %4458, %4559 ], [ %4458, %4450 ], [ %4015, %4166 ]
  %4744 = phi float [ %4727, %4597 ], [ %4459, %4559 ], [ %4459, %4450 ], [ %4016, %4166 ]
  %4745 = phi float [ %4734, %4597 ], [ %4460, %4559 ], [ %4460, %4450 ], [ %4054, %4166 ]
  %4746 = phi float [ %4731, %4597 ], [ %4461, %4559 ], [ %4461, %4450 ], [ %4026, %4166 ]
  %4747 = fcmp fast une float %4170, 0.000000e+00
  br i1 %4747, label %4748, label %4917

; <label>:4748                                    ; preds = %4735
  %4749 = call float @dx.op.dot3.f32(i32 55, float %191, float %192, float %193, float %191, float %192, float %193)  ; Dot3(ax,ay,az,bx,by,bz)
  %4750 = call float @dx.op.unary.f32(i32 25, float %4749)  ; Rsqrt(value)
  %4751 = fmul fast float %191, %4750
  %4752 = fsub fast float -0.000000e+00, %4751
  %4753 = fmul fast float %192, %4750
  %4754 = fsub fast float -0.000000e+00, %4753
  %4755 = fmul fast float %193, %4750
  %4756 = fsub fast float -0.000000e+00, %4755
  %4757 = call float @dx.op.dot3.f32(i32 55, float %4752, float %4754, float %4756, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4758 = fmul fast float %4170, 2.500000e+00
  %4759 = call float @dx.op.unary.f32(i32 7, float %4758)  ; Saturate(value)
  %4760 = fmul fast float %4170, 0x4013FFFFE0000000
  %4761 = fadd fast float %4760, 0xBFFFFFFFE0000000
  %4762 = call float @dx.op.unary.f32(i32 7, float %4761)  ; Saturate(value)
  %4763 = fmul fast float %4170, 0x4004000020000000
  %4764 = fadd fast float %4763, 0xBFF8000040000000
  %4765 = call float @dx.op.unary.f32(i32 7, float %4764)  ; Saturate(value)
  %4766 = fmul fast float %4033, 1.000000e+01
  %4767 = call float @dx.op.unary.f32(i32 7, float %4766)  ; Saturate(value)
  %4768 = fmul fast float %4767, 2.000000e+00
  %4769 = fsub fast float 3.000000e+00, %4768
  %4770 = fmul fast float %4767, %4767
  %4771 = fmul fast float %4770, %4769
  %4772 = fsub fast float 1.000000e+00, %4771
  %4773 = fsub fast float 0x3FE3333340000000, %4745
  %4774 = fmul fast float %4773, 0x400AAAAAA0000000
  %4775 = call float @dx.op.unary.f32(i32 7, float %4774)  ; Saturate(value)
  %4776 = fmul fast float %4772, %4775
  %4777 = fmul fast float %4739, 0x3FEA2B8620000000
  %4778 = fmul fast float %4740, 0x3FEA2B8620000000
  %4779 = fmul fast float %4741, 0x3FEA2B8620000000
  %4780 = fadd fast float %4777, 0x3FC81DFBA0000000
  %4781 = fmul fast float %4780, %4739
  %4782 = fadd fast float %4781, 0x3F910E6020000000
  %4783 = fadd fast float %4778, 0x3FC81DFBA0000000
  %4784 = fmul fast float %4783, %4740
  %4785 = fadd fast float %4784, 0x3F910E6020000000
  %4786 = fadd fast float %4779, 0x3FC81DFBA0000000
  %4787 = fmul fast float %4786, %4741
  %4788 = fadd fast float %4787, 0x3F910E6020000000
  %4789 = call float @dx.op.unary.f32(i32 7, float %4782)  ; Saturate(value)
  %4790 = call float @dx.op.unary.f32(i32 7, float %4785)  ; Saturate(value)
  %4791 = call float @dx.op.unary.f32(i32 7, float %4788)  ; Saturate(value)
  %4792 = fsub fast float %4789, %4739
  %4793 = fsub fast float %4790, %4740
  %4794 = fsub fast float %4791, %4741
  %4795 = fmul fast float %4792, %4759
  %4796 = fmul fast float %4795, %4776
  %4797 = fmul fast float %4793, %4759
  %4798 = fmul fast float %4797, %4776
  %4799 = fmul fast float %4794, %4759
  %4800 = fmul fast float %4799, %4776
  %4801 = fadd fast float %4796, %4739
  %4802 = fadd fast float %4798, %4740
  %4803 = fadd fast float %4800, %4741
  %4804 = fmul fast float %4746, %4746
  %4805 = fmul fast float %4804, %4804
  %4806 = fadd fast float %4762, 1.000000e+00
  %4807 = fsub fast float %4806, %4776
  %4808 = call float @dx.op.unary.f32(i32 7, float %4807)  ; Saturate(value)
  %4809 = call float @dx.op.dot3.f32(i32 55, float %111, float %112, float %113, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4810 = call float @dx.op.unary.f32(i32 7, float %4809)  ; Saturate(value)
  %4811 = fsub fast float 1.000000e+00, %4805
  %4812 = call float @dx.op.binary.f32(i32 36, float %4808, float %4811)  ; FMin(a,b)
  %4813 = call float @dx.op.unary.f32(i32 7, float %4765)  ; Saturate(value)
  %4814 = call float @dx.op.binary.f32(i32 35, float %4812, float %4813)  ; FMax(a,b)
  %4815 = fadd fast float %4810, 0xBFE4CCCCC0000000
  %4816 = fmul fast float %4815, 0x4006DB6DA0000000
  %4817 = call float @dx.op.unary.f32(i32 7, float %4816)  ; Saturate(value)
  %4818 = fmul fast float %4817, 2.000000e+00
  %4819 = fsub fast float 3.000000e+00, %4818
  %4820 = bitcast float %4736 to i32
  %4821 = ashr i32 %4820, 1
  %4822 = add nsw i32 %4821, 532487669
  %4823 = bitcast i32 %4822 to float
  %4824 = fsub fast float 1.000000e+00, %4823
  %4825 = bitcast float %4824 to i32
  %4826 = sub nsw i32 2129859010, %4825
  %4827 = bitcast i32 %4826 to float
  %4828 = fmul fast float %4827, 2.000000e+00
  %4829 = bitcast float %4737 to i32
  %4830 = ashr i32 %4829, 1
  %4831 = add nsw i32 %4830, 532487669
  %4832 = bitcast i32 %4831 to float
  %4833 = fsub fast float 1.000000e+00, %4832
  %4834 = bitcast float %4833 to i32
  %4835 = sub nsw i32 2129859010, %4834
  %4836 = bitcast i32 %4835 to float
  %4837 = fmul fast float %4836, 2.000000e+00
  %4838 = bitcast float %4738 to i32
  %4839 = ashr i32 %4838, 1
  %4840 = add nsw i32 %4839, 532487669
  %4841 = bitcast i32 %4840 to float
  %4842 = fsub fast float 1.000000e+00, %4841
  %4843 = bitcast float %4842 to i32
  %4844 = sub nsw i32 2129859010, %4843
  %4845 = bitcast i32 %4844 to float
  %4846 = fmul fast float %4845, 2.000000e+00
  %4847 = fsub fast float 0x4002A9FBE0000000, %4828
  %4848 = fadd fast float %4828, 0x3FD54FDF00000000
  %4849 = bitcast float %4848 to i32
  %4850 = sub nsw i32 2129859010, %4849
  %4851 = bitcast i32 %4850 to float
  %4852 = fmul fast float %4851, %4847
  %4853 = fmul fast float %4852, %4852
  %4854 = fsub fast float 0x4002A9FBE0000000, %4837
  %4855 = fadd fast float %4837, 0x3FD54FDF00000000
  %4856 = bitcast float %4855 to i32
  %4857 = sub nsw i32 2129859010, %4856
  %4858 = bitcast i32 %4857 to float
  %4859 = fmul fast float %4858, %4854
  %4860 = fmul fast float %4859, %4859
  %4861 = fsub fast float 0x4002A9FBE0000000, %4846
  %4862 = fadd fast float %4846, 0x3FD54FDF00000000
  %4863 = bitcast float %4862 to i32
  %4864 = sub nsw i32 2129859010, %4863
  %4865 = bitcast i32 %4864 to float
  %4866 = fmul fast float %4865, %4861
  %4867 = fmul fast float %4866, %4866
  %4868 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4853)  ; FMax(a,b)
  %4869 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4860)  ; FMax(a,b)
  %4870 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4867)  ; FMax(a,b)
  %4871 = fsub fast float 1.000000e+00, %4757
  %4872 = fadd fast float %4871, %4772
  %4873 = call float @dx.op.unary.f32(i32 7, float %4872)  ; Saturate(value)
  %4874 = fsub fast float 1.000000e+00, %4151
  %4875 = fmul fast float %4814, %4874
  %4876 = fmul fast float %4817, %4817
  %4877 = fmul fast float %4876, %4875
  %4878 = fmul fast float %4877, %4819
  %4879 = fmul fast float %4874, 0xBFE99999A0000000
  %4880 = fmul fast float %4879, %4759
  %4881 = fmul fast float %4880, %4776
  %4882 = fadd fast float %4881, 1.000000e+00
  %4883 = fadd fast float %4745, -1.000000e+00
  %4884 = fmul fast float %4882, %4883
  %4885 = fadd fast float %4884, 1.000000e+00
  %4886 = fsub fast float %4868, %4736
  %4887 = fsub fast float %4869, %4737
  %4888 = fsub fast float %4870, %4738
  %4889 = fmul fast float %4878, %4886
  %4890 = fmul fast float %4878, %4887
  %4891 = fmul fast float %4878, %4888
  %4892 = fadd fast float %4889, %4736
  %4893 = fadd fast float %4890, %4737
  %4894 = fadd fast float %4891, %4738
  %4895 = fsub fast float %111, %4742
  %4896 = fsub fast float %112, %4743
  %4897 = fsub fast float %113, %4744
  %4898 = fmul fast float %4878, %4895
  %4899 = fmul fast float %4878, %4896
  %4900 = fmul fast float %4878, %4897
  %4901 = fadd fast float %4898, %4742
  %4902 = fadd fast float %4899, %4743
  %4903 = fadd fast float %4900, %4744
  %4904 = fmul fast float %4878, %4873
  %4905 = call float @dx.op.unary.f32(i32 7, float %4885)  ; Saturate(value)
  %4906 = fsub fast float 1.000000e+00, %4905
  %4907 = fmul fast float %4904, %4906
  %4908 = fadd fast float %4907, %4905
  %4909 = fsub fast float 1.000000e+00, %4746
  %4910 = fmul fast float %4878, %4909
  %4911 = fadd fast float %4910, %4746
  %4912 = call float @dx.op.dot3.f32(i32 55, float %4901, float %4902, float %4903, float %4901, float %4902, float %4903)  ; Dot3(ax,ay,az,bx,by,bz)
  %4913 = call float @dx.op.unary.f32(i32 25, float %4912)  ; Rsqrt(value)
  %4914 = fmul fast float %4901, %4913
  %4915 = fmul fast float %4902, %4913
  %4916 = fmul fast float %4903, %4913
  br label %4917

; <label>:4917                                    ; preds = %4748, %4735
  %4918 = phi float [ %4892, %4748 ], [ %4736, %4735 ]
  %4919 = phi float [ %4893, %4748 ], [ %4737, %4735 ]
  %4920 = phi float [ %4894, %4748 ], [ %4738, %4735 ]
  %4921 = phi float [ %4801, %4748 ], [ %4739, %4735 ]
  %4922 = phi float [ %4802, %4748 ], [ %4740, %4735 ]
  %4923 = phi float [ %4803, %4748 ], [ %4741, %4735 ]
  %4924 = phi float [ %4914, %4748 ], [ %4742, %4735 ]
  %4925 = phi float [ %4915, %4748 ], [ %4743, %4735 ]
  %4926 = phi float [ %4916, %4748 ], [ %4744, %4735 ]
  %4927 = phi float [ %4908, %4748 ], [ %4745, %4735 ]
  %4928 = phi float [ %4911, %4748 ], [ %4746, %4735 ]
  %4929 = icmp eq i32 %50, 0
  br i1 %4929, label %4960, label %4930

; <label>:4930                                    ; preds = %4917
  %4931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4932 = extractvalue %dx.types.CBufRet.f32 %4931, 2
  %4933 = extractvalue %dx.types.CBufRet.f32 %4931, 3
  %4934 = fmul fast float %4932, %104
  %4935 = fmul fast float %4933, %105
  %4936 = fmul fast float %4934, 1.024000e+03
  %4937 = fmul fast float %4935, 1.024000e+03
  %4938 = fadd fast float %4936, -5.120000e+02
  %4939 = fadd fast float %4937, -5.120000e+02
  %4940 = fmul fast float %4934, 0x4081BEDF00000000
  %4941 = fadd fast float %4940, 0xC071BEDF00000000
  %4942 = call float @dx.op.unary.f32(i32 22, float %4941)  ; Frc(value)
  %4943 = fmul fast float %4938, %4942
  %4944 = fadd fast float %4943, %4939
  %4945 = fmul fast float %4935, 0x4073BEBE20000000
  %4946 = fadd fast float %4945, 0xC063BEBE20000000
  %4947 = call float @dx.op.unary.f32(i32 22, float %4946)  ; Frc(value)
  %4948 = fmul fast float %4939, %4947
  %4949 = fadd fast float %4948, %4938
  %4950 = fmul fast float %4944, %4949
  %4951 = call float @dx.op.unary.f32(i32 22, float %4950)  ; Frc(value)
  %4952 = add i32 %306, 12
  %4953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4952, i32 undef)  ; BufferLoad(srv,index,wot)
  %4954 = extractvalue %dx.types.ResRet.i32 %4953, 0
  %4955 = and i32 %4954, 255
  %4956 = uitofp i32 %4955 to float
  %4957 = fmul fast float %4956, 0x3F70101020000000
  %4958 = fcmp fast olt float %4951, %4957
  br i1 %4958, label %4959, label %4960

; <label>:4959                                    ; preds = %4930
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %4960

; <label>:4960                                    ; preds = %4959, %4930, %4917
  %4961 = call float @dx.op.dot3.f32(i32 55, float %191, float %192, float %193, float %191, float %192, float %193)  ; Dot3(ax,ay,az,bx,by,bz)
  %4962 = call float @dx.op.unary.f32(i32 25, float %4961)  ; Rsqrt(value)
  %4963 = fmul fast float %4962, %191
  %4964 = fmul fast float %4962, %192
  %4965 = fmul fast float %4962, %193
  %4966 = fsub fast float -0.000000e+00, %4963
  %4967 = fsub fast float -0.000000e+00, %4964
  %4968 = fsub fast float -0.000000e+00, %4965
  %4969 = select i1 %252, float 0.000000e+00, float %4920
  %4970 = call float @dx.op.dot3.f32(i32 55, float %4924, float %4925, float %4926, float %4966, float %4967, float %4968)  ; Dot3(ax,ay,az,bx,by,bz)
  %4971 = call float @dx.op.unary.f32(i32 7, float %4970)  ; Saturate(value)
  %4972 = call float @dx.op.dot3.f32(i32 55, float %4963, float %4964, float %4965, float %4924, float %4925, float %4926)  ; Dot3(ax,ay,az,bx,by,bz)
  %4973 = fmul fast float %4972, 2.000000e+00
  %4974 = fmul fast float %4973, %4924
  %4975 = fmul fast float %4973, %4925
  %4976 = fmul fast float %4973, %4926
  %4977 = fsub fast float %4963, %4974
  %4978 = fsub fast float %4964, %4975
  %4979 = fsub fast float %4965, %4976
  %4980 = call float @dx.op.binary.f32(i32 36, float %4928, float 1.000000e+00)  ; FMin(a,b)
  %4981 = fsub fast float 1.000000e+00, %4980
  %4982 = bitcast float %4981 to i32
  %4983 = ashr i32 %4982, 1
  %4984 = add nsw i32 %4983, 532487669
  %4985 = bitcast i32 %4984 to float
  %4986 = fsub fast float 1.000000e+00, %4927
  %4987 = call float @dx.op.binary.f32(i32 35, float %4986, float 0x3F847AE140000000)  ; FMax(a,b)
  %4988 = fmul fast float %4987, %4987
  %4989 = fmul fast float %4988, %4988
  %4990 = call float @dx.op.unary.f32(i32 7, float %4971)  ; Saturate(value)
  %4991 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %43, float %4985, float %4989, float %4990, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4992 = extractvalue %dx.types.ResRet.f32 %4991, 0
  %4993 = fsub fast float 1.000000e+00, %4928
  %4994 = bitcast float %4993 to i32
  %4995 = sub nsw i32 2129859010, %4994
  %4996 = fsub fast float 1.000000e+00, %71
  %4997 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4998 = call float @dx.op.binary.f32(i32 35, float %4997, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4999 = fdiv fast float %4996, %4998
  %5000 = call float @dx.op.dot3.f32(i32 55, float %4924, float %4925, float %4926, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5001 = call float @dx.op.unary.f32(i32 7, float %5000)  ; Saturate(value)
  %5002 = fmul fast float %5001, 5.000000e-01
  %5003 = fadd fast float %5002, 5.000000e-01
  %5004 = fmul fast float %5003, %71
  %5005 = call float @dx.op.dot3.f32(i32 55, float %4924, float %4925, float %4926, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %5006 = call float @dx.op.unary.f32(i32 7, float %5005)  ; Saturate(value)
  %5007 = fmul fast float %5006, %4999
  %5008 = fadd fast float %5004, %5007
  %5009 = fsub fast float 5.000000e-01, %5002
  %5010 = fmul fast float %5009, %4921
  %5011 = fmul fast float %5009, %4922
  %5012 = fmul fast float %5009, %4923
  %5013 = fadd fast float %5008, %5010
  %5014 = fadd fast float %5008, %5011
  %5015 = fadd fast float %5008, %5012
  %5016 = call float @dx.op.dot3.f32(i32 55, float %4977, float %4978, float %4979, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5017 = call float @dx.op.unary.f32(i32 7, float %5016)  ; Saturate(value)
  %5018 = fmul fast float %5017, 5.000000e-01
  %5019 = fadd fast float %5018, 5.000000e-01
  %5020 = fmul fast float %5019, %71
  %5021 = call float @dx.op.dot3.f32(i32 55, float %4977, float %4978, float %4979, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %5022 = call float @dx.op.unary.f32(i32 7, float %5021)  ; Saturate(value)
  %5023 = fmul fast float %5022, %4999
  %5024 = fadd fast float %5020, %5023
  %5025 = fsub fast float 5.000000e-01, %5018
  %5026 = fmul fast float %5025, %4921
  %5027 = fmul fast float %5025, %4922
  %5028 = fmul fast float %5025, %4923
  %5029 = fadd fast float %5024, %5026
  %5030 = fadd fast float %5024, %5027
  %5031 = fadd fast float %5024, %5028
  %5032 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5034 = extractvalue %dx.types.CBufRet.f32 %5033, 0
  %5035 = call float @dx.op.binary.f32(i32 36, float %4921, float %5034)  ; FMin(a,b)
  %5036 = fmul fast float %5035, %4981
  %5037 = fsub fast float 1.000000e+00, %5036
  %5038 = bitcast float %5037 to i32
  %5039 = sub nsw i32 2129859010, %5038
  %5040 = bitcast i32 %5039 to float
  %5041 = call float @dx.op.binary.f32(i32 36, float %4922, float %5034)  ; FMin(a,b)
  %5042 = fmul fast float %5041, %4981
  %5043 = fsub fast float 1.000000e+00, %5042
  %5044 = bitcast float %5043 to i32
  %5045 = sub nsw i32 2129859010, %5044
  %5046 = bitcast i32 %5045 to float
  %5047 = call float @dx.op.binary.f32(i32 36, float %4923, float %5034)  ; FMin(a,b)
  %5048 = fmul fast float %5047, %4981
  %5049 = fsub fast float 1.000000e+00, %5048
  %5050 = bitcast float %5049 to i32
  %5051 = sub nsw i32 2129859010, %5050
  %5052 = bitcast i32 %5051 to float
  %5053 = fmul fast float %4980, %72
  %5054 = fmul fast float %5053, %5013
  %5055 = fmul fast float %5054, %5040
  %5056 = fmul fast float %4980, %73
  %5057 = fmul fast float %5056, %5014
  %5058 = fmul fast float %5057, %5046
  %5059 = fmul fast float %4980, %74
  %5060 = fmul fast float %5059, %5015
  %5061 = fmul fast float %5060, %5052
  %5062 = call float @dx.op.binary.f32(i32 36, float %4918, float %5034)  ; FMin(a,b)
  %5063 = fmul fast float %5062, %4981
  %5064 = fsub fast float 1.000000e+00, %5063
  %5065 = bitcast float %5064 to i32
  %5066 = sub nsw i32 2129859010, %5065
  %5067 = bitcast i32 %5066 to float
  %5068 = call float @dx.op.binary.f32(i32 36, float %4919, float %5034)  ; FMin(a,b)
  %5069 = fmul fast float %5068, %4981
  %5070 = fsub fast float 1.000000e+00, %5069
  %5071 = bitcast float %5070 to i32
  %5072 = sub nsw i32 2129859010, %5071
  %5073 = bitcast i32 %5072 to float
  %5074 = call float @dx.op.binary.f32(i32 36, float %4969, float %5034)  ; FMin(a,b)
  %5075 = fmul fast float %5074, %4981
  %5076 = fsub fast float 1.000000e+00, %5075
  %5077 = bitcast float %5076 to i32
  %5078 = sub nsw i32 2129859010, %5077
  %5079 = bitcast i32 %5078 to float
  %5080 = fmul fast float %5053, %5029
  %5081 = fmul fast float %5080, %5067
  %5082 = fmul fast float %5056, %5030
  %5083 = fmul fast float %5082, %5073
  %5084 = fmul fast float %5059, %5031
  %5085 = fmul fast float %5084, %5079
  %5086 = call float @dx.op.dot3.f32(i32 55, float %5055, float %5058, float %5061, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5087 = select i1 %252, float 0.000000e+00, float %5055
  %5088 = select i1 %252, float %5086, float %5058
  %5089 = select i1 %252, float 0.000000e+00, float %5061
  %5090 = call float @dx.op.dot3.f32(i32 55, float %5081, float %5083, float %5085, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5091 = select i1 %252, float 0.000000e+00, float %5081
  %5092 = select i1 %252, float %5090, float %5083
  %5093 = select i1 %252, float 0.000000e+00, float %5085
  %5094 = fmul fast float %4971, 9.843750e-01
  %5095 = fmul fast float %4927, 9.843750e-01
  %5096 = fadd fast float %5094, 7.812500e-03
  %5097 = fadd fast float %5095, 7.812500e-03
  %5098 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %43, float %5096, float %5097, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5099 = extractvalue %dx.types.ResRet.f32 %5098, 2
  %5100 = extractvalue %dx.types.ResRet.f32 %5098, 3
  %5101 = fmul fast float %5099, %4918
  %5102 = fmul fast float %5099, %4919
  %5103 = fmul fast float %5099, %4969
  %5104 = fadd fast float %5101, %5100
  %5105 = fadd fast float %5102, %5100
  %5106 = fadd fast float %5103, %5100
  %5107 = fcmp fast ogt float %4027, 0.000000e+00
  br i1 %5107, label %5108, label %5134

; <label>:5108                                    ; preds = %4960
  %5109 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %43, float %4027, float %4971, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5110 = extractvalue %dx.types.ResRet.f32 %5109, 0
  %5111 = extractvalue %dx.types.ResRet.f32 %5109, 1
  %5112 = extractvalue %dx.types.ResRet.f32 %5109, 2
  %5113 = fadd fast float %5110, -5.000000e-01
  %5114 = fadd fast float %5111, -5.000000e-01
  %5115 = fadd fast float %5112, -5.000000e-01
  %5116 = fsub fast float 1.000000e+00, %4918
  %5117 = fsub fast float 1.000000e+00, %4919
  %5118 = fsub fast float 1.000000e+00, %4969
  %5119 = fmul fast float %4918, 4.000000e+00
  %5120 = fmul fast float %5119, %5116
  %5121 = fmul fast float %5120, %5113
  %5122 = fmul fast float %4919, 4.000000e+00
  %5123 = fmul fast float %5122, %5117
  %5124 = fmul fast float %5123, %5114
  %5125 = fmul fast float %4969, 4.000000e+00
  %5126 = fmul fast float %5125, %5118
  %5127 = fmul fast float %5126, %5115
  %5128 = fadd fast float %5121, %5104
  %5129 = fadd fast float %5124, %5105
  %5130 = fadd fast float %5127, %5106
  %5131 = call float @dx.op.unary.f32(i32 7, float %5128)  ; Saturate(value)
  %5132 = call float @dx.op.unary.f32(i32 7, float %5129)  ; Saturate(value)
  %5133 = call float @dx.op.unary.f32(i32 7, float %5130)  ; Saturate(value)
  br label %5134

; <label>:5134                                    ; preds = %5108, %4960
  %5135 = phi float [ %5131, %5108 ], [ %5104, %4960 ]
  %5136 = phi float [ %5132, %5108 ], [ %5105, %4960 ]
  %5137 = phi float [ %5133, %5108 ], [ %5106, %4960 ]
  %5138 = call float @dx.op.binary.f32(i32 35, float %5136, float %5137)  ; FMax(a,b)
  %5139 = call float @dx.op.binary.f32(i32 35, float %5135, float %5138)  ; FMax(a,b)
  %5140 = fsub fast float 1.000000e+00, %5139
  %5141 = fmul fast float %5139, %4927
  %5142 = fadd fast float %5141, %4927
  %5143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5144 = extractvalue %dx.types.CBufRet.f32 %5143, 2
  %5145 = extractvalue %dx.types.CBufRet.f32 %5143, 3
  %5146 = fmul fast float %5142, %5144
  %5147 = fadd fast float %5146, %5145
  %5148 = call float @dx.op.unary.f32(i32 7, float %5147)  ; Saturate(value)
  %5149 = fsub fast float 1.000000e+00, %4992
  %5150 = fadd fast float %5149, %5148
  %5151 = call float @dx.op.unary.f32(i32 7, float %5150)  ; Saturate(value)
  %5152 = fcmp fast olt float %5151, 1.000000e+00
  br i1 %5152, label %5153, label %5601

; <label>:5153                                    ; preds = %5134
  %5154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5155 = extractvalue %dx.types.CBufRet.f32 %5154, 2
  %5156 = extractvalue %dx.types.CBufRet.f32 %5154, 3
  %5157 = fmul fast float %5155, %104
  %5158 = fmul fast float %5156, %105
  %5159 = fptoui float %5157 to i32
  %5160 = fptoui float %5158 to i32
  %5161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5162 = extractvalue %dx.types.CBufRet.f32 %5161, 0
  %5163 = extractvalue %dx.types.CBufRet.f32 %5161, 2
  %5164 = extractvalue %dx.types.CBufRet.f32 %5161, 3
  %5165 = fadd fast float %91, -4.000000e+00
  %5166 = call float @dx.op.binary.f32(i32 35, float %5165, float 0.000000e+00)  ; FMax(a,b)
  %5167 = fadd fast float %5166, %5162
  %5168 = fmul fast float %5167, %5163
  %5169 = call float @dx.op.unary.f32(i32 23, float %5168)  ; Log(value)
  %5170 = fmul fast float %5169, %5164
  %5171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5172 = extractvalue %dx.types.CBufRet.f32 %5171, 2
  %5173 = fmul fast float %5170, %5172
  %5174 = call float @dx.op.unary.f32(i32 7, float %5173)  ; Saturate(value)
  %5175 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5176 = extractvalue %dx.types.CBufRet.i32 %5175, 1
  %5177 = add i32 %5176, -1
  %5178 = uitofp i32 %5176 to float
  %5179 = fmul fast float %5178, %5174
  %5180 = fptoui float %5179 to i32
  %5181 = call i32 @dx.op.binary.i32(i32 40, i32 %5180, i32 %5177)  ; UMin(a,b)
  %5182 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5183 = extractvalue %dx.types.CBufRet.i32 %5182, 2
  %5184 = extractvalue %dx.types.CBufRet.i32 %5182, 3
  %5185 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5160, i32 %5183, i32 %5159)  ; UMad(a,b,c)
  %5186 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5181, i32 %5184, i32 %5185)  ; UMad(a,b,c)
  %5187 = call float @dx.op.binary.f32(i32 35, float %91, float 0.000000e+00)  ; FMax(a,b)
  %5188 = fptoui float %5187 to i32
  %5189 = lshr i32 %5188, 5
  %5190 = call i32 @dx.op.binary.i32(i32 40, i32 %5189, i32 8191)  ; UMin(a,b)
  br i1 false, label %5191, label %5198

; <label>:5191                                    ; preds = %5153
  %5192 = fadd fast float 0.000000e+00, %4979
  %5193 = call float @dx.op.dot3.f32(i32 55, float %4977, float %4978, float %5192, float %4977, float %4978, float %5192)  ; Dot3(ax,ay,az,bx,by,bz)
  %5194 = call float @dx.op.unary.f32(i32 25, float %5193)  ; Rsqrt(value)
  %5195 = fmul fast float %5194, %4977
  %5196 = fmul fast float %5194, %4978
  %5197 = fmul fast float %5192, %5194
  br label %5198

; <label>:5198                                    ; preds = %5191, %5153
  %5199 = phi float [ %5195, %5191 ], [ %4977, %5153 ]
  %5200 = phi float [ %5196, %5191 ], [ %4978, %5153 ]
  %5201 = phi float [ %5197, %5191 ], [ %4979, %5153 ]
  %5202 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5203 = extractvalue %dx.types.CBufRet.i32 %5202, 2
  %5204 = add nsw i32 %5203, -1
  %5205 = call i32 @dx.op.binary.i32(i32 37, i32 %5204, i32 0)  ; IMax(a,b)
  %5206 = shl i32 %5190, 2
  %5207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5206, i32 undef)  ; BufferLoad(srv,index,wot)
  %5208 = extractvalue %dx.types.ResRet.i32 %5207, 0
  %5209 = lshr i32 %5208, 16
  %5210 = and i32 %5208, 65535
  %5211 = lshr i32 %5208, 21
  %5212 = lshr i32 %5210, 5
  %5213 = call i32 @dx.op.binary.i32(i32 40, i32 %5212, i32 %5205)  ; UMin(a,b)
  %5214 = icmp ugt i32 %5211, %5213
  br i1 %5214, label %5577, label %5215

; <label>:5215                                    ; preds = %5198
  br label %5216

; <label>:5216                                    ; preds = %5569, %5215
  %5217 = phi float [ %5570, %5569 ], [ 0.000000e+00, %5215 ]
  %5218 = phi float [ %5571, %5569 ], [ 0.000000e+00, %5215 ]
  %5219 = phi float [ %5572, %5569 ], [ 0.000000e+00, %5215 ]
  %5220 = phi float [ %5573, %5569 ], [ 1.000000e+00, %5215 ]
  %5221 = phi i32 [ %5574, %5569 ], [ %5211, %5215 ]
  %5222 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5223 = extractvalue %dx.types.CBufRet.i32 %5222, 2
  %5224 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5186, i32 %5223, i32 %5221)  ; UMad(a,b,c)
  %5225 = shl i32 %5224, 2
  %5226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %5225, i32 undef)  ; BufferLoad(srv,index,wot)
  %5227 = extractvalue %dx.types.ResRet.i32 %5226, 0
  %5228 = shl i32 %5221, 5
  %5229 = sub nsw i32 %5209, %5228
  %5230 = call i32 @dx.op.binary.i32(i32 37, i32 %5229, i32 0)  ; IMax(a,b)
  %5231 = call i32 @dx.op.binary.i32(i32 38, i32 %5230, i32 31)  ; IMin(a,b)
  %5232 = sub nsw i32 1, %5209
  %5233 = add nsw i32 %5232, %5210
  %5234 = call i32 @dx.op.binary.i32(i32 37, i32 %5233, i32 0)  ; IMax(a,b)
  %5235 = call i32 @dx.op.binary.i32(i32 38, i32 %5234, i32 32)  ; IMin(a,b)
  %5236 = and i32 %5235, 31
  %5237 = shl i32 -1, %5236
  %5238 = xor i32 %5237, -1
  %5239 = and i32 %5231, 31
  %5240 = shl i32 %5238, %5239
  %5241 = icmp eq i32 %5235, 32
  %5242 = select i1 %5241, i32 -1, i32 %5240
  %5243 = and i32 %5242, %5227
  %5244 = icmp eq i32 %5243, 0
  br i1 %5244, label %5569, label %5245

; <label>:5245                                    ; preds = %5216
  br label %5246

; <label>:5246                                    ; preds = %5352, %5245
  %5247 = phi float [ %5353, %5352 ], [ %5217, %5245 ]
  %5248 = phi float [ %5354, %5352 ], [ %5218, %5245 ]
  %5249 = phi float [ %5355, %5352 ], [ %5219, %5245 ]
  %5250 = phi float [ %5356, %5352 ], [ %5220, %5245 ]
  %5251 = phi i32 [ %5256, %5352 ], [ %5243, %5245 ]
  %5252 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5251)  ; FirstbitLo(value)
  %5253 = add i32 %5252, %5228
  %5254 = and i32 %5252, 31
  %5255 = shl i32 1, %5254
  %5256 = xor i32 %5255, %5251
  %5257 = mul i32 %5253, 72
  %5258 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5257, i32 undef)  ; BufferLoad(srv,index,wot)
  %5259 = extractvalue %dx.types.ResRet.f32 %5258, 0
  %5260 = extractvalue %dx.types.ResRet.f32 %5258, 1
  %5261 = extractvalue %dx.types.ResRet.f32 %5258, 2
  %5262 = add i32 %5257, 12
  %5263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %5262, i32 undef)  ; BufferLoad(srv,index,wot)
  %5264 = extractvalue %dx.types.ResRet.i32 %5263, 0
  %5265 = add i32 %5257, 16
  %5266 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5265, i32 undef)  ; BufferLoad(srv,index,wot)
  %5267 = extractvalue %dx.types.ResRet.f32 %5266, 0
  %5268 = extractvalue %dx.types.ResRet.f32 %5266, 1
  %5269 = extractvalue %dx.types.ResRet.f32 %5266, 2
  %5270 = add i32 %5257, 28
  %5271 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5270, i32 undef)  ; BufferLoad(srv,index,wot)
  %5272 = extractvalue %dx.types.ResRet.f32 %5271, 0
  %5273 = add i32 %5257, 32
  %5274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5273, i32 undef)  ; BufferLoad(srv,index,wot)
  %5275 = extractvalue %dx.types.ResRet.f32 %5274, 0
  %5276 = extractvalue %dx.types.ResRet.f32 %5274, 1
  %5277 = extractvalue %dx.types.ResRet.f32 %5274, 2
  %5278 = extractvalue %dx.types.ResRet.f32 %5274, 3
  %5279 = add i32 %5257, 48
  %5280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5279, i32 undef)  ; BufferLoad(srv,index,wot)
  %5281 = extractvalue %dx.types.ResRet.f32 %5280, 0
  %5282 = extractvalue %dx.types.ResRet.f32 %5280, 1
  %5283 = add i32 %5257, 56
  %5284 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5283, i32 undef)  ; BufferLoad(srv,index,wot)
  %5285 = extractvalue %dx.types.ResRet.f32 %5284, 0
  %5286 = extractvalue %dx.types.ResRet.f32 %5284, 1
  %5287 = add i32 %5257, 64
  %5288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5287, i32 undef)  ; BufferLoad(srv,index,wot)
  %5289 = extractvalue %dx.types.ResRet.f32 %5288, 0
  %5290 = extractvalue %dx.types.ResRet.f32 %5288, 1
  %5291 = mul i32 %5253, 60
  %5292 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5291, i32 undef)  ; BufferLoad(srv,index,wot)
  %5293 = extractvalue %dx.types.ResRet.f32 %5292, 0
  %5294 = extractvalue %dx.types.ResRet.f32 %5292, 1
  %5295 = extractvalue %dx.types.ResRet.f32 %5292, 2
  %5296 = add i32 %5291, 12
  %5297 = add i32 %5291, 48
  %5298 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5297, i32 undef)  ; BufferLoad(srv,index,wot)
  %5299 = extractvalue %dx.types.ResRet.f32 %5298, 0
  %5300 = extractvalue %dx.types.ResRet.f32 %5298, 1
  %5301 = extractvalue %dx.types.ResRet.f32 %5298, 2
  %5302 = and i32 %5264, 32767
  %5303 = bitcast float %5259 to i32
  %5304 = icmp eq i32 %5303, -1
  %5305 = bitcast float %5260 to i32
  %5306 = and i32 %5264, 32768
  %5307 = icmp ne i32 %5306, 0
  %5308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5309 = extractvalue %dx.types.CBufRet.f32 %5308, 0
  %5310 = extractvalue %dx.types.CBufRet.f32 %5308, 1
  %5311 = extractvalue %dx.types.CBufRet.f32 %5308, 2
  %5312 = fsub fast float %5293, %5309
  %5313 = fsub fast float %5294, %5310
  %5314 = fsub fast float %5295, %5311
  %5315 = fsub fast float %191, %5312
  %5316 = fsub fast float %192, %5313
  %5317 = fsub fast float %193, %5314
  %5318 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5296, i32 undef)  ; BufferLoad(srv,index,wot)
  %5319 = extractvalue %dx.types.ResRet.f32 %5318, 0
  %5320 = extractvalue %dx.types.ResRet.f32 %5318, 1
  %5321 = extractvalue %dx.types.ResRet.f32 %5318, 2
  %5322 = call float @dx.op.dot3.f32(i32 55, float %5315, float %5316, float %5317, float %5319, float %5320, float %5321)  ; Dot3(ax,ay,az,bx,by,bz)
  %5323 = add i32 %5291, 24
  %5324 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5323, i32 undef)  ; BufferLoad(srv,index,wot)
  %5325 = extractvalue %dx.types.ResRet.f32 %5324, 0
  %5326 = extractvalue %dx.types.ResRet.f32 %5324, 1
  %5327 = extractvalue %dx.types.ResRet.f32 %5324, 2
  %5328 = call float @dx.op.dot3.f32(i32 55, float %5315, float %5316, float %5317, float %5325, float %5326, float %5327)  ; Dot3(ax,ay,az,bx,by,bz)
  %5329 = add i32 %5291, 36
  %5330 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5329, i32 undef)  ; BufferLoad(srv,index,wot)
  %5331 = extractvalue %dx.types.ResRet.f32 %5330, 0
  %5332 = extractvalue %dx.types.ResRet.f32 %5330, 1
  %5333 = extractvalue %dx.types.ResRet.f32 %5330, 2
  %5334 = call float @dx.op.dot3.f32(i32 55, float %5315, float %5316, float %5317, float %5331, float %5332, float %5333)  ; Dot3(ax,ay,az,bx,by,bz)
  %5335 = call float @dx.op.unary.f32(i32 6, float %5322)  ; FAbs(value)
  %5336 = call float @dx.op.unary.f32(i32 6, float %5328)  ; FAbs(value)
  %5337 = call float @dx.op.unary.f32(i32 6, float %5334)  ; FAbs(value)
  %5338 = fsub fast float %5299, %5335
  %5339 = fsub fast float %5300, %5336
  %5340 = fsub fast float %5301, %5337
  %5341 = fmul fast float %5338, %5267
  %5342 = fmul fast float %5339, %5268
  %5343 = fmul fast float %5340, %5269
  %5344 = call float @dx.op.binary.f32(i32 36, float %5342, float %5343)  ; FMin(a,b)
  %5345 = call float @dx.op.binary.f32(i32 36, float %5341, float %5344)  ; FMin(a,b)
  %5346 = call float @dx.op.unary.f32(i32 7, float %5345)  ; Saturate(value)
  %5347 = call float @dx.op.binary.f32(i32 36, float %5250, float %5346)  ; FMin(a,b)
  %5348 = uitofp i1 %5307 to float
  %5349 = fsub fast float 1.000000e+00, %5348
  %5350 = fmul fast float %5347, %5349
  %5351 = fcmp fast ogt float %5350, 0.000000e+00
  br i1 %5351, label %5358, label %5352

; <label>:5352                                    ; preds = %5500, %5246
  %5353 = phi float [ %5564, %5500 ], [ %5247, %5246 ]
  %5354 = phi float [ %5565, %5500 ], [ %5248, %5246 ]
  %5355 = phi float [ %5566, %5500 ], [ %5249, %5246 ]
  %5356 = phi float [ %5567, %5500 ], [ %5250, %5246 ]
  %5357 = icmp eq i32 %5251, %5255
  br i1 %5357, label %5568, label %5246

; <label>:5358                                    ; preds = %5246
  br i1 %5304, label %5416, label %5359

; <label>:5359                                    ; preds = %5358
  %5360 = fsub fast float -0.000000e+00, %5319
  %5361 = fsub fast float -0.000000e+00, %5320
  %5362 = fsub fast float -0.000000e+00, %5321
  %5363 = call float @dx.op.dot3.f32(i32 55, float %5199, float %5200, float %5201, float %5360, float %5361, float %5362)  ; Dot3(ax,ay,az,bx,by,bz)
  %5364 = fsub fast float -0.000000e+00, %5363
  %5365 = call float @dx.op.dot3.f32(i32 55, float %5315, float %5316, float %5317, float %5360, float %5361, float %5362)  ; Dot3(ax,ay,az,bx,by,bz)
  %5366 = fadd fast float %5365, %5282
  %5367 = fadd fast float %5281, %5365
  %5368 = fsub fast float -0.000000e+00, %5367
  %5369 = fcmp ogt float %5363, -0.000000e+00
  %5370 = select i1 %5369, float %5368, float %5366
  %5371 = call float @dx.op.unary.f32(i32 6, float %5364)  ; FAbs(value)
  %5372 = fdiv fast float 1.000000e+00, %5371
  %5373 = fmul fast float %5370, %5372
  %5374 = call float @dx.op.binary.f32(i32 35, float %5373, float 0.000000e+00)  ; FMax(a,b)
  %5375 = fsub fast float -0.000000e+00, %5325
  %5376 = fsub fast float -0.000000e+00, %5326
  %5377 = fsub fast float -0.000000e+00, %5327
  %5378 = call float @dx.op.dot3.f32(i32 55, float %5199, float %5200, float %5201, float %5375, float %5376, float %5377)  ; Dot3(ax,ay,az,bx,by,bz)
  %5379 = fsub fast float -0.000000e+00, %5378
  %5380 = call float @dx.op.dot3.f32(i32 55, float %5315, float %5316, float %5317, float %5375, float %5376, float %5377)  ; Dot3(ax,ay,az,bx,by,bz)
  %5381 = fadd fast float %5380, %5286
  %5382 = fadd fast float %5285, %5380
  %5383 = fsub fast float -0.000000e+00, %5382
  %5384 = fcmp ogt float %5378, -0.000000e+00
  %5385 = select i1 %5384, float %5383, float %5381
  %5386 = call float @dx.op.unary.f32(i32 6, float %5379)  ; FAbs(value)
  %5387 = fdiv fast float 1.000000e+00, %5386
  %5388 = fmul fast float %5385, %5387
  %5389 = call float @dx.op.binary.f32(i32 35, float %5388, float 0.000000e+00)  ; FMax(a,b)
  %5390 = fsub fast float -0.000000e+00, %5331
  %5391 = fsub fast float -0.000000e+00, %5332
  %5392 = fsub fast float -0.000000e+00, %5333
  %5393 = call float @dx.op.dot3.f32(i32 55, float %5199, float %5200, float %5201, float %5390, float %5391, float %5392)  ; Dot3(ax,ay,az,bx,by,bz)
  %5394 = fsub fast float -0.000000e+00, %5393
  %5395 = call float @dx.op.dot3.f32(i32 55, float %5315, float %5316, float %5317, float %5390, float %5391, float %5392)  ; Dot3(ax,ay,az,bx,by,bz)
  %5396 = fadd fast float %5395, %5290
  %5397 = fadd fast float %5289, %5395
  %5398 = fsub fast float -0.000000e+00, %5397
  %5399 = fcmp ogt float %5393, -0.000000e+00
  %5400 = select i1 %5399, float %5398, float %5396
  %5401 = call float @dx.op.unary.f32(i32 6, float %5394)  ; FAbs(value)
  %5402 = fdiv fast float 1.000000e+00, %5401
  %5403 = fmul fast float %5400, %5402
  %5404 = call float @dx.op.binary.f32(i32 35, float %5403, float 0.000000e+00)  ; FMax(a,b)
  %5405 = call float @dx.op.binary.f32(i32 36, float %5389, float %5404)  ; FMin(a,b)
  %5406 = call float @dx.op.binary.f32(i32 36, float %5374, float %5405)  ; FMin(a,b)
  %5407 = fmul fast float %5406, %5199
  %5408 = fmul fast float %5406, %5200
  %5409 = fmul fast float %5406, %5201
  %5410 = fadd fast float %5407, %191
  %5411 = fadd fast float %5408, %192
  %5412 = fadd fast float %5409, %193
  %5413 = fsub fast float %5410, %5259
  %5414 = fsub fast float %5411, %5260
  %5415 = fsub fast float %5412, %5261
  br label %5423

; <label>:5416                                    ; preds = %5358
  %5417 = fmul fast float %5199, 8.096000e+03
  %5418 = fmul fast float %5200, 8.096000e+03
  %5419 = fmul fast float %5201, 8.096000e+03
  %5420 = fadd fast float %5417, %191
  %5421 = fadd fast float %5418, %192
  %5422 = fadd fast float %5419, %193
  br label %5423

; <label>:5423                                    ; preds = %5416, %5359
  %5424 = phi float [ %5199, %5416 ], [ %5413, %5359 ]
  %5425 = phi float [ %5200, %5416 ], [ %5414, %5359 ]
  %5426 = phi float [ %5201, %5416 ], [ %5415, %5359 ]
  %5427 = phi float [ %5420, %5416 ], [ %5410, %5359 ]
  %5428 = phi float [ %5421, %5416 ], [ %5411, %5359 ]
  %5429 = phi float [ %5422, %5416 ], [ %5412, %5359 ]
  %5430 = fcmp fast olt float %5278, 1.000000e+00
  br i1 %5430, label %5431, label %5462, !dx.controlflow.hints !92

; <label>:5431                                    ; preds = %5423
  %5432 = fmul fast float %5426, %5276
  %5433 = fmul fast float %5425, %5277
  %5434 = fsub fast float %5432, %5433
  %5435 = fmul fast float %5424, %5277
  %5436 = fmul fast float %5426, %5275
  %5437 = fsub fast float %5435, %5436
  %5438 = fmul fast float %5425, %5275
  %5439 = fmul fast float %5424, %5276
  %5440 = fsub fast float %5438, %5439
  %5441 = fmul fast float %5434, 2.000000e+00
  %5442 = fmul fast float %5437, 2.000000e+00
  %5443 = fmul fast float %5440, 2.000000e+00
  %5444 = fmul fast float %5441, %5278
  %5445 = fmul fast float %5442, %5278
  %5446 = fmul fast float %5443, %5278
  %5447 = fmul fast float %5443, %5276
  %5448 = fmul fast float %5442, %5277
  %5449 = fmul fast float %5441, %5277
  %5450 = fmul fast float %5443, %5275
  %5451 = fmul fast float %5442, %5275
  %5452 = fmul fast float %5441, %5276
  %5453 = fadd fast float %5447, %5424
  %5454 = fadd fast float %5453, %5444
  %5455 = fsub fast float %5454, %5448
  %5456 = fsub fast float %5425, %5450
  %5457 = fadd fast float %5456, %5445
  %5458 = fadd fast float %5457, %5449
  %5459 = fadd fast float %5446, %5426
  %5460 = fsub fast float %5459, %5452
  %5461 = fadd fast float %5460, %5451
  br label %5462

; <label>:5462                                    ; preds = %5431, %5423
  %5463 = phi float [ %5455, %5431 ], [ %5424, %5423 ]
  %5464 = phi float [ %5458, %5431 ], [ %5425, %5423 ]
  %5465 = phi float [ %5461, %5431 ], [ %5426, %5423 ]
  br i1 %5304, label %5497, label %5466

; <label>:5466                                    ; preds = %5462
  %5467 = fmul fast float %4927, 0x400187C840000000
  %5468 = fadd fast float %5467, 0xC00EFC2120000000
  %5469 = fmul fast float %5468, %4927
  %5470 = fadd fast float %5469, 0x3FE5D16340000000
  %5471 = fmul fast float %5470, %4927
  %5472 = fadd fast float %5471, 1.000000e+00
  %5473 = call float @dx.op.unary.f32(i32 7, float %5472)  ; Saturate(value)
  %5474 = fsub fast float %5427, %191
  %5475 = fsub fast float %5428, %192
  %5476 = fsub fast float %5429, %193
  %5477 = fsub fast float %5427, %5259
  %5478 = fsub fast float %5428, %5260
  %5479 = fsub fast float %5429, %5261
  %5480 = call float @dx.op.dot3.f32(i32 55, float %5474, float %5475, float %5476, float %5474, float %5475, float %5476)  ; Dot3(ax,ay,az,bx,by,bz)
  %5481 = call float @dx.op.dot3.f32(i32 55, float %5477, float %5478, float %5479, float %5477, float %5478, float %5479)  ; Dot3(ax,ay,az,bx,by,bz)
  %5482 = fadd fast float %5481, 0x3EE4F8B580000000
  %5483 = fdiv fast float %5480, %5482
  %5484 = bitcast float %5483 to i32
  %5485 = ashr i32 %5484, 1
  %5486 = add nsw i32 %5485, 532487669
  %5487 = bitcast i32 %5486 to float
  %5488 = fmul fast float %5487, %5473
  %5489 = call float @dx.op.unary.f32(i32 7, float %5488)  ; Saturate(value)
  %5490 = fmul fast float %5489, 0x4009981AE0000000
  %5491 = fsub fast float 0x40111BBD80000000, %5490
  %5492 = fmul fast float %5491, %5489
  %5493 = fadd fast float %5492, 0xC0009F6020000000
  %5494 = fmul fast float %5493, %5489
  %5495 = fadd fast float %5494, 1.000000e+00
  %5496 = call float @dx.op.unary.f32(i32 7, float %5495)  ; Saturate(value)
  br label %5500

; <label>:5497                                    ; preds = %5462
  %5498 = icmp ne i32 %5305, -1
  %5499 = zext i1 %5498 to i32
  br label %5500

; <label>:5500                                    ; preds = %5497, %5466
  %5501 = phi float [ %4927, %5497 ], [ %5496, %5466 ]
  %5502 = phi i32 [ %5499, %5497 ], [ 0, %5466 ]
  %5503 = fmul float %5501, 5.000000e+00
  %5504 = fsub float 5.000000e+00, %5503
  %5505 = icmp ne i32 %5502, 0
  %5506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5507 = extractvalue %dx.types.CBufRet.f32 %5506, 3
  %5508 = fadd fast float %5507, %5504
  %5509 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5508)  ; FMax(a,b)
  %5510 = call float @dx.op.unary.f32(i32 6, float %5463)  ; FAbs(value)
  %5511 = call float @dx.op.unary.f32(i32 6, float %5464)  ; FAbs(value)
  %5512 = fadd fast float %5511, %5510
  %5513 = call float @dx.op.unary.f32(i32 6, float %5465)  ; FAbs(value)
  %5514 = fadd fast float %5512, %5513
  %5515 = fcmp fast oeq float %5514, 0.000000e+00
  %5516 = fdiv fast float 1.000000e+00, %5514
  %5517 = select i1 %5515, float 1.000000e+00, float %5516
  %5518 = fmul fast float %5517, %5463
  %5519 = fmul fast float %5517, %5464
  %5520 = call float @dx.op.unary.f32(i32 6, float %5519)  ; FAbs(value)
  %5521 = call float @dx.op.unary.f32(i32 6, float %5518)  ; FAbs(value)
  %5522 = fsub fast float 1.000000e+00, %5520
  %5523 = fsub fast float 1.000000e+00, %5521
  %5524 = fcmp fast oge float %5518, 0.000000e+00
  %5525 = fcmp fast oge float %5519, 0.000000e+00
  %5526 = select i1 %5524, float 1.000000e+00, float -1.000000e+00
  %5527 = select i1 %5525, float 1.000000e+00, float -1.000000e+00
  %5528 = fcmp fast ole float %5465, 0.000000e+00
  %5529 = fmul fast float %5526, %5522
  %5530 = fmul fast float %5527, %5523
  %5531 = select i1 %5528, float %5529, float %5518
  %5532 = select i1 %5528, float %5530, float %5519
  %5533 = fmul fast float %5531, 5.000000e-01
  %5534 = fmul fast float %5532, 5.000000e-01
  %5535 = fadd fast float %5533, 5.000000e-01
  %5536 = fadd fast float %5534, 5.000000e-01
  %5537 = uitofp i32 %5302 to float
  %5538 = call float @dx.op.binary.f32(i32 36, float %5509, float 3.000000e+00)  ; FMin(a,b)
  %5539 = fadd fast float %5538, 2.000000e+00
  %5540 = call float @dx.op.unary.f32(i32 21, float %5539)  ; Exp(value)
  %5541 = extractvalue %dx.types.CBufRet.f32 %5506, 1
  %5542 = fmul fast float %5541, %5540
  %5543 = fmul fast float %5542, 2.000000e+00
  %5544 = fsub fast float 1.000000e+00, %5543
  %5545 = fmul fast float %5535, %5544
  %5546 = fmul fast float %5536, %5544
  %5547 = fadd fast float %5545, %5542
  %5548 = fadd fast float %5546, %5542
  %5549 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %41, float %5547, float %5548, float %5537, float undef, i32 0, i32 0, i32 undef, float %5509)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5550 = extractvalue %dx.types.ResRet.f32 %5549, 0
  %5551 = extractvalue %dx.types.ResRet.f32 %5549, 1
  %5552 = extractvalue %dx.types.ResRet.f32 %5549, 2
  %5553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5554 = extractvalue %dx.types.CBufRet.f32 %5553, 3
  %5555 = fmul fast float %5554, %5272
  %5556 = call float @dx.op.binary.f32(i32 36, float %5032, float %5555)  ; FMin(a,b)
  %5557 = select i1 %5505, float %5556, float %5555
  %5558 = fmul fast float %5550, %5350
  %5559 = fmul fast float %5558, %5557
  %5560 = fmul fast float %5551, %5350
  %5561 = fmul fast float %5560, %5557
  %5562 = fmul fast float %5552, %5350
  %5563 = fmul fast float %5562, %5557
  %5564 = fadd fast float %5559, %5247
  %5565 = fadd fast float %5561, %5248
  %5566 = fadd fast float %5563, %5249
  %5567 = fsub fast float %5250, %5350
  br label %5352

; <label>:5568                                    ; preds = %5352
  br label %5569

; <label>:5569                                    ; preds = %5568, %5216
  %5570 = phi float [ %5217, %5216 ], [ %5353, %5568 ]
  %5571 = phi float [ %5218, %5216 ], [ %5354, %5568 ]
  %5572 = phi float [ %5219, %5216 ], [ %5355, %5568 ]
  %5573 = phi float [ %5220, %5216 ], [ %5356, %5568 ]
  %5574 = add i32 %5221, 1
  %5575 = icmp ugt i32 %5574, %5213
  br i1 %5575, label %5576, label %5216, !llvm.loop !93

; <label>:5576                                    ; preds = %5569
  br label %5577

; <label>:5577                                    ; preds = %5576, %5198
  %5578 = phi float [ 0.000000e+00, %5198 ], [ %5570, %5576 ]
  %5579 = phi float [ 0.000000e+00, %5198 ], [ %5571, %5576 ]
  %5580 = phi float [ 0.000000e+00, %5198 ], [ %5572, %5576 ]
  %5581 = call float @dx.op.dot3.f32(i32 55, float %5578, float %5579, float %5580, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5582 = select i1 %252, float 0.000000e+00, float %5578
  %5583 = select i1 %252, float %5581, float %5579
  %5584 = select i1 %252, float 0.000000e+00, float %5580
  %5585 = fcmp fast olt float %5151, 0.000000e+00
  %5586 = call float @dx.op.unary.f32(i32 6, float %5151)  ; FAbs(value)
  %5587 = fmul fast float %5586, %5091
  %5588 = fmul fast float %5586, %5092
  %5589 = fmul fast float %5586, %5093
  %5590 = select i1 %5585, float %5091, float %5587
  %5591 = select i1 %5585, float %5092, float %5588
  %5592 = select i1 %5585, float %5093, float %5589
  %5593 = fsub fast float 1.000000e+00, %5586
  %5594 = call float @dx.op.unary.f32(i32 7, float %5593)  ; Saturate(value)
  %5595 = fmul fast float %5594, %5582
  %5596 = fmul fast float %5594, %5583
  %5597 = fmul fast float %5594, %5584
  %5598 = fadd fast float %5590, %5595
  %5599 = fadd fast float %5591, %5596
  %5600 = fadd fast float %5592, %5597
  br label %5601

; <label>:5601                                    ; preds = %5577, %5134
  %5602 = phi float [ %5091, %5134 ], [ %5598, %5577 ]
  %5603 = phi float [ %5092, %5134 ], [ %5599, %5577 ]
  %5604 = phi float [ %5093, %5134 ], [ %5600, %5577 ]
  %5605 = fmul fast float %5140, %5087
  %5606 = fmul fast float %5140, %5088
  %5607 = fmul fast float %5140, %5089
  %5608 = call float @dx.op.dot3.f32(i32 55, float %4921, float %4922, float %4923, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5609 = fcmp fast ogt float %5608, 0x3E7FF19E20000000
  %5610 = fdiv fast float 1.000000e+00, %5608
  %5611 = select i1 %5609, float %5610, float 0.000000e+00
  %5612 = fmul fast float %5611, %4921
  %5613 = fmul fast float %5611, %4922
  %5614 = fmul fast float %5611, %4923
  %5615 = fadd fast float %5612, -1.000000e+00
  %5616 = fadd fast float %5613, -1.000000e+00
  %5617 = fadd fast float %5614, -1.000000e+00
  %5618 = fmul fast float %5615, 5.000000e-01
  %5619 = fmul fast float %5616, 5.000000e-01
  %5620 = fmul fast float %5617, 5.000000e-01
  %5621 = fadd fast float %5618, 1.000000e+00
  %5622 = fadd fast float %5619, 1.000000e+00
  %5623 = fadd fast float %5620, 1.000000e+00
  %5624 = fmul fast float %5602, %5135
  %5625 = fmul fast float %5603, %5136
  %5626 = fmul fast float %5604, %5137
  %5627 = fsub fast float 1.000000e+00, %4971
  %5628 = bitcast float %5627 to i32
  %5629 = sitofp i32 %5628 to float
  %5630 = fmul fast float %5629, 5.000000e+00
  %5631 = fadd fast float %5630, 0xC1EFBF8940000000
  %5632 = fptosi float %5631 to i32
  %5633 = bitcast i32 %5632 to float
  %5634 = fmul fast float %5633, %4028
  %5635 = fmul fast float %5087, %5634
  %5636 = fmul fast float %5635, %5140
  %5637 = fmul fast float %5636, %5621
  %5638 = fmul fast float %5088, %5634
  %5639 = fmul fast float %5638, %5140
  %5640 = fmul fast float %5639, %5622
  %5641 = fmul fast float %5089, %5634
  %5642 = fmul fast float %5641, %5140
  %5643 = fmul fast float %5642, %5623
  %5644 = fmul fast float %5605, %4024
  %5645 = fmul fast float %5606, %4024
  %5646 = fmul fast float %5607, %4024
  %5647 = fadd fast float %5624, %4020
  %5648 = fadd fast float %5647, %5637
  %5649 = fmul fast float %5648, %4024
  %5650 = fadd fast float %5625, %4021
  %5651 = fadd fast float %5650, %5640
  %5652 = fmul fast float %5651, %4024
  %5653 = fadd fast float %5626, %4022
  %5654 = fadd fast float %5653, %5643
  %5655 = fmul fast float %5654, %4024
  %5656 = bitcast i32 %4995 to float
  %5657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5658 = extractvalue %dx.types.CBufRet.f32 %5657, 3
  %5659 = fcmp fast oeq float %5658, 0.000000e+00
  br i1 %5659, label %7288, label %5660

; <label>:5660                                    ; preds = %5601
  %5661 = extractvalue %dx.types.CBufRet.f32 %5657, 0
  %5662 = extractvalue %dx.types.CBufRet.f32 %5657, 1
  %5663 = extractvalue %dx.types.CBufRet.f32 %5657, 2
  %5664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5665 = extractvalue %dx.types.CBufRet.f32 %5664, 0
  %5666 = extractvalue %dx.types.CBufRet.f32 %5664, 1
  %5667 = extractvalue %dx.types.CBufRet.f32 %5664, 2
  %5668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5669 = extractvalue %dx.types.CBufRet.f32 %5668, 0
  %5670 = extractvalue %dx.types.CBufRet.f32 %5668, 1
  %5671 = call float @dx.op.dot3.f32(i32 55, float %5665, float %5666, float %5667, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5672 = select i1 %252, float %5669, float %5665
  %5673 = select i1 %252, float %5671, float %5666
  %5674 = select i1 %252, float %5670, float %5667
  %5675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5676 = extractvalue %dx.types.CBufRet.f32 %5675, 2
  %5677 = fmul fast float %5676, %111
  %5678 = fmul fast float %5676, %112
  %5679 = fmul fast float %5676, %113
  %5680 = fadd fast float %5677, %191
  %5681 = fadd fast float %5678, %192
  %5682 = fadd fast float %5679, %193
  %5683 = fcmp fast olt float %5658, 0.000000e+00
  br i1 %5683, label %6941, label %5684

; <label>:5684                                    ; preds = %5660
  %5685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5686 = extractvalue %dx.types.CBufRet.f32 %5685, 0
  %5687 = extractvalue %dx.types.CBufRet.f32 %5685, 1
  %5688 = extractvalue %dx.types.CBufRet.f32 %5685, 2
  %5689 = extractvalue %dx.types.CBufRet.f32 %5685, 3
  %5690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5691 = extractvalue %dx.types.CBufRet.f32 %5690, 0
  %5692 = extractvalue %dx.types.CBufRet.f32 %5690, 1
  %5693 = extractvalue %dx.types.CBufRet.f32 %5690, 2
  %5694 = extractvalue %dx.types.CBufRet.f32 %5690, 3
  %5695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5696 = extractvalue %dx.types.CBufRet.f32 %5695, 0
  %5697 = extractvalue %dx.types.CBufRet.f32 %5695, 1
  %5698 = extractvalue %dx.types.CBufRet.f32 %5695, 2
  %5699 = extractvalue %dx.types.CBufRet.f32 %5695, 3
  %5700 = fmul fast float %5686, %5680
  %5701 = call float @dx.op.tertiary.f32(i32 46, float %5681, float %5687, float %5700)  ; FMad(a,b,c)
  %5702 = call float @dx.op.tertiary.f32(i32 46, float %5682, float %5688, float %5701)  ; FMad(a,b,c)
  %5703 = fadd fast float %5702, %5689
  %5704 = fmul fast float %5691, %5680
  %5705 = call float @dx.op.tertiary.f32(i32 46, float %5681, float %5692, float %5704)  ; FMad(a,b,c)
  %5706 = call float @dx.op.tertiary.f32(i32 46, float %5682, float %5693, float %5705)  ; FMad(a,b,c)
  %5707 = fadd fast float %5706, %5694
  %5708 = fmul fast float %5696, %5680
  %5709 = call float @dx.op.tertiary.f32(i32 46, float %5681, float %5697, float %5708)  ; FMad(a,b,c)
  %5710 = call float @dx.op.tertiary.f32(i32 46, float %5682, float %5698, float %5709)  ; FMad(a,b,c)
  %5711 = fadd fast float %5710, %5699
  %5712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5713 = extractvalue %dx.types.CBufRet.f32 %5712, 0
  %5714 = fcmp fast une float %5713, 0.000000e+00
  %5715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5716 = extractvalue %dx.types.CBufRet.f32 %5715, 0
  %5717 = extractvalue %dx.types.CBufRet.f32 %5715, 1
  %5718 = extractvalue %dx.types.CBufRet.f32 %5715, 3
  %5719 = fmul fast float %5718, %5703
  %5720 = fmul fast float %5718, %5707
  %5721 = fadd fast float %5719, %5716
  %5722 = fadd fast float %5720, %5717
  %5723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5724 = extractvalue %dx.types.CBufRet.f32 %5723, 0
  %5725 = extractvalue %dx.types.CBufRet.f32 %5723, 1
  %5726 = extractvalue %dx.types.CBufRet.f32 %5723, 3
  %5727 = fmul fast float %5726, %5703
  %5728 = fmul fast float %5726, %5707
  %5729 = fadd fast float %5727, %5724
  %5730 = fadd fast float %5728, %5725
  %5731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5732 = extractvalue %dx.types.CBufRet.f32 %5731, 1
  %5733 = fsub fast float %5732, %5711
  %5734 = extractvalue %dx.types.CBufRet.f32 %5731, 2
  %5735 = fmul fast float %5733, %5734
  %5736 = fsub fast float 1.000000e+00, %5735
  %5737 = call float @dx.op.unary.f32(i32 7, float %5736)  ; Saturate(value)
  br i1 %5714, label %5798, label %5738

; <label>:5738                                    ; preds = %5684
  %5739 = extractvalue %dx.types.CBufRet.f32 %5723, 2
  %5740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5741 = extractvalue %dx.types.CBufRet.f32 %5740, 2
  %5742 = fadd fast float %5741, %5739
  %5743 = fcmp fast ogt float %5742, 0.000000e+00
  br i1 %5743, label %5744, label %5768

; <label>:5744                                    ; preds = %5738
  %5745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5746 = extractvalue %dx.types.CBufRet.f32 %5745, 0
  %5747 = extractvalue %dx.types.CBufRet.f32 %5745, 1
  %5748 = fsub fast float %5729, %5746
  %5749 = fsub fast float %5730, %5747
  %5750 = fcmp fast olt float %5748, 0.000000e+00
  %5751 = fcmp fast olt float %5749, 0.000000e+00
  %5752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5753 = extractvalue %dx.types.CBufRet.f32 %5752, 0
  %5754 = extractvalue %dx.types.CBufRet.f32 %5752, 1
  %5755 = extractvalue %dx.types.CBufRet.f32 %5752, 2
  %5756 = extractvalue %dx.types.CBufRet.f32 %5752, 3
  %5757 = select i1 %5750, float %5753, float %5755
  %5758 = select i1 %5751, float %5754, float %5756
  %5759 = fmul fast float %5757, %5748
  %5760 = fmul fast float %5758, %5749
  %5761 = call float @dx.op.unary.f32(i32 6, float %5759)  ; FAbs(value)
  %5762 = call float @dx.op.unary.f32(i32 6, float %5760)  ; FAbs(value)
  %5763 = extractvalue %dx.types.CBufRet.f32 %5675, 0
  %5764 = call float @dx.op.binary.f32(i32 35, float %5761, float %5762)  ; FMax(a,b)
  %5765 = fsub fast float %5763, %5764
  %5766 = call float @dx.op.unary.f32(i32 7, float %5765)  ; Saturate(value)
  %5767 = fmul fast float %5766, %5737
  br label %5768

; <label>:5768                                    ; preds = %5744, %5738
  %5769 = phi float [ %5767, %5744 ], [ 0.000000e+00, %5738 ]
  %5770 = extractvalue %dx.types.CBufRet.f32 %5715, 2
  %5771 = extractvalue %dx.types.CBufRet.f32 %5740, 1
  %5772 = fadd fast float %5771, %5770
  %5773 = fcmp fast ogt float %5772, 0.000000e+00
  br i1 %5773, label %5774, label %5798

; <label>:5774                                    ; preds = %5768
  %5775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5776 = extractvalue %dx.types.CBufRet.f32 %5775, 0
  %5777 = extractvalue %dx.types.CBufRet.f32 %5775, 1
  %5778 = fsub fast float %5721, %5776
  %5779 = fsub fast float %5722, %5777
  %5780 = fcmp fast olt float %5778, 0.000000e+00
  %5781 = fcmp fast olt float %5779, 0.000000e+00
  %5782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5783 = extractvalue %dx.types.CBufRet.f32 %5782, 0
  %5784 = extractvalue %dx.types.CBufRet.f32 %5782, 1
  %5785 = extractvalue %dx.types.CBufRet.f32 %5782, 2
  %5786 = extractvalue %dx.types.CBufRet.f32 %5782, 3
  %5787 = select i1 %5780, float %5783, float %5785
  %5788 = select i1 %5781, float %5784, float %5786
  %5789 = fmul fast float %5787, %5778
  %5790 = fmul fast float %5788, %5779
  %5791 = call float @dx.op.unary.f32(i32 6, float %5789)  ; FAbs(value)
  %5792 = call float @dx.op.unary.f32(i32 6, float %5790)  ; FAbs(value)
  %5793 = extractvalue %dx.types.CBufRet.f32 %5675, 0
  %5794 = call float @dx.op.binary.f32(i32 35, float %5791, float %5792)  ; FMax(a,b)
  %5795 = fsub fast float %5793, %5794
  %5796 = call float @dx.op.unary.f32(i32 7, float %5795)  ; Saturate(value)
  %5797 = fmul fast float %5796, %5737
  br label %5798

; <label>:5798                                    ; preds = %5774, %5768, %5684
  %5799 = phi float [ 0.000000e+00, %5684 ], [ %5797, %5774 ], [ 0.000000e+00, %5768 ]
  %5800 = phi float [ 0.000000e+00, %5684 ], [ %5769, %5774 ], [ %5769, %5768 ]
  %5801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5802 = extractvalue %dx.types.CBufRet.f32 %5801, 1
  %5803 = call float @dx.op.unary.f32(i32 7, float %5802)  ; Saturate(value)
  %5804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5805 = extractvalue %dx.types.CBufRet.f32 %5804, 0
  %5806 = extractvalue %dx.types.CBufRet.f32 %5804, 1
  %5807 = fsub fast float %5703, %5805
  %5808 = fsub fast float %5707, %5806
  %5809 = fcmp fast olt float %5807, 0.000000e+00
  %5810 = fcmp fast olt float %5808, 0.000000e+00
  %5811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5812 = extractvalue %dx.types.CBufRet.f32 %5811, 0
  %5813 = extractvalue %dx.types.CBufRet.f32 %5811, 1
  %5814 = extractvalue %dx.types.CBufRet.f32 %5811, 2
  %5815 = extractvalue %dx.types.CBufRet.f32 %5811, 3
  %5816 = select i1 %5809, float %5812, float %5814
  %5817 = select i1 %5810, float %5813, float %5815
  %5818 = fmul fast float %5816, %5807
  %5819 = fmul fast float %5817, %5808
  %5820 = call float @dx.op.unary.f32(i32 6, float %5818)  ; FAbs(value)
  %5821 = call float @dx.op.unary.f32(i32 6, float %5819)  ; FAbs(value)
  %5822 = extractvalue %dx.types.CBufRet.f32 %5675, 0
  %5823 = call float @dx.op.binary.f32(i32 35, float %5820, float %5821)  ; FMax(a,b)
  %5824 = fsub fast float %5822, %5823
  %5825 = call float @dx.op.unary.f32(i32 7, float %5824)  ; Saturate(value)
  %5826 = call float @dx.op.binary.f32(i32 36, float %5825, float %5803)  ; FMin(a,b)
  %5827 = fmul fast float %5826, %5737
  %5828 = fsub fast float %5799, %5827
  %5829 = fsub fast float %5800, %5799
  %5830 = fsub fast float %5829, %5827
  %5831 = call float @dx.op.binary.f32(i32 35, float %5799, float %5800)  ; FMax(a,b)
  %5832 = call float @dx.op.binary.f32(i32 35, float %5827, float %5831)  ; FMax(a,b)
  %5833 = fcmp fast olt float %5832, 1.000000e+00
  br i1 %5833, label %5834, label %6232, !dx.controlflow.hints !95

; <label>:5834                                    ; preds = %5798
  %5835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5836 = extractvalue %dx.types.CBufRet.f32 %5835, 0
  %5837 = fcmp fast une float %5836, 0.000000e+00
  br i1 %5837, label %5838, label %6232, !dx.controlflow.hints !96

; <label>:5838                                    ; preds = %5834
  %5839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5840 = extractvalue %dx.types.CBufRet.f32 %5839, 0
  %5841 = extractvalue %dx.types.CBufRet.f32 %5839, 1
  %5842 = extractvalue %dx.types.CBufRet.f32 %5839, 2
  %5843 = extractvalue %dx.types.CBufRet.f32 %5839, 3
  %5844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5845 = extractvalue %dx.types.CBufRet.f32 %5844, 0
  %5846 = extractvalue %dx.types.CBufRet.f32 %5844, 1
  %5847 = extractvalue %dx.types.CBufRet.f32 %5844, 2
  %5848 = extractvalue %dx.types.CBufRet.f32 %5844, 3
  %5849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5850 = extractvalue %dx.types.CBufRet.f32 %5849, 0
  %5851 = extractvalue %dx.types.CBufRet.f32 %5849, 1
  %5852 = extractvalue %dx.types.CBufRet.f32 %5849, 2
  %5853 = extractvalue %dx.types.CBufRet.f32 %5849, 3
  %5854 = fmul fast float %5840, %5680
  %5855 = call float @dx.op.tertiary.f32(i32 46, float %5681, float %5841, float %5854)  ; FMad(a,b,c)
  %5856 = call float @dx.op.tertiary.f32(i32 46, float %5682, float %5842, float %5855)  ; FMad(a,b,c)
  %5857 = fadd fast float %5856, %5843
  %5858 = fmul fast float %5845, %5680
  %5859 = call float @dx.op.tertiary.f32(i32 46, float %5681, float %5846, float %5858)  ; FMad(a,b,c)
  %5860 = call float @dx.op.tertiary.f32(i32 46, float %5682, float %5847, float %5859)  ; FMad(a,b,c)
  %5861 = fadd fast float %5860, %5848
  %5862 = fmul fast float %5850, %5680
  %5863 = call float @dx.op.tertiary.f32(i32 46, float %5681, float %5851, float %5862)  ; FMad(a,b,c)
  %5864 = call float @dx.op.tertiary.f32(i32 46, float %5682, float %5852, float %5863)  ; FMad(a,b,c)
  %5865 = fadd fast float %5864, %5853
  %5866 = fcmp fast oge float %5857, 1.000000e+00
  %5867 = fcmp fast oge float %5861, 1.000000e+00
  %5868 = or i1 %5866, %5867
  %5869 = fcmp fast olt float %5857, 0.000000e+00
  %5870 = fcmp fast olt float %5861, 0.000000e+00
  %5871 = or i1 %5869, %5870
  %5872 = or i1 %5868, %5871
  br i1 %5872, label %6232, label %5873, !dx.controlflow.hints !97

; <label>:5873                                    ; preds = %5838
  %5874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5875 = extractvalue %dx.types.CBufRet.f32 %5874, 0
  %5876 = extractvalue %dx.types.CBufRet.f32 %5874, 1
  %5877 = extractvalue %dx.types.CBufRet.f32 %5874, 2
  %5878 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5879 = extractvalue %dx.types.CBufRet.i32 %5878, 2
  %5880 = uitofp i32 %5879 to float
  %5881 = extractvalue %dx.types.CBufRet.i32 %5878, 3
  %5882 = uitofp i32 %5881 to float
  %5883 = extractvalue %dx.types.CBufRet.f32 %5874, 3
  %5884 = fmul fast float %5883, 2.000000e+00
  %5885 = fsub fast float %5857, %5875
  %5886 = fsub fast float %5861, %5876
  %5887 = fmul fast float %5884, %5885
  %5888 = fmul fast float %5884, %5886
  %5889 = fdiv fast float 1.000000e+00, %5663
  %5890 = fmul fast float %5888, %5889
  %5891 = call float @dx.op.unary.f32(i32 6, float %5890)  ; FAbs(value)
  %5892 = fmul fast float %5877, %5682
  %5893 = fmul fast float %5892, %5884
  %5894 = call float @dx.op.unary.f32(i32 6, float %5893)  ; FAbs(value)
  %5895 = call float @dx.op.unary.f32(i32 6, float %5887)  ; FAbs(value)
  %5896 = call float @dx.op.binary.f32(i32 35, float %5894, float %5891)  ; FMax(a,b)
  %5897 = call float @dx.op.binary.f32(i32 35, float %5895, float %5896)  ; FMax(a,b)
  %5898 = fmul fast float %5897, 2.000000e+00
  %5899 = call float @dx.op.unary.f32(i32 23, float %5898)  ; Log(value)
  %5900 = call float @dx.op.binary.f32(i32 35, float %5899, float %5880)  ; FMax(a,b)
  %5901 = call float @dx.op.unary.f32(i32 22, float %5900)  ; Frc(value)
  %5902 = fadd fast float %5901, 0xBFEA666660000000
  %5903 = fmul fast float %5902, 8.000000e+00
  %5904 = call float @dx.op.unary.f32(i32 7, float %5903)  ; Saturate(value)
  %5905 = call float @dx.op.unary.f32(i32 27, float %5900)  ; Round_ni(value)
  %5906 = fadd fast float %5905, %5904
  %5907 = call float @dx.op.binary.f32(i32 36, float %5906, float %5882)  ; FMin(a,b)
  %5908 = call float @dx.op.unary.f32(i32 27, float %5907)  ; Round_ni(value)
  %5909 = fsub fast float -0.000000e+00, %5908
  %5910 = call float @dx.op.unary.f32(i32 21, float %5909)  ; Exp(value)
  %5911 = fmul fast float %5910, %5884
  %5912 = fmul fast float %5911, %5857
  %5913 = fmul fast float %5911, %5861
  %5914 = fmul fast float %5912, 2.500000e-01
  %5915 = fmul fast float %5913, 2.500000e-01
  %5916 = fadd fast float %5914, 5.000000e-01
  %5917 = fadd fast float %5915, 5.000000e-01
  %5918 = fsub fast float %5882, %5880
  %5919 = fptoui float %5918 to i32
  %5920 = add i32 %5919, 320
  %5921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 %5920)  ; CBufferLoadLegacy(handle,regIndex)
  %5922 = extractvalue %dx.types.CBufRet.f32 %5921, 0
  %5923 = extractvalue %dx.types.CBufRet.f32 %5921, 1
  %5924 = fcmp fast une float %5907, %5882
  %5925 = fsub fast float %5857, %5922
  %5926 = fsub fast float %5861, %5923
  %5927 = call float @dx.op.unary.f32(i32 6, float %5925)  ; FAbs(value)
  %5928 = call float @dx.op.unary.f32(i32 6, float %5926)  ; FAbs(value)
  %5929 = fmul fast float %5927, %5911
  %5930 = fmul fast float %5928, %5911
  %5931 = fcmp fast olt float %5929, 1.000000e+00
  %5932 = fcmp fast olt float %5930, 1.000000e+00
  %5933 = and i1 %5931, %5932
  %5934 = or i1 %5924, %5933
  br i1 %5934, label %5935, label %6232, !dx.controlflow.hints !98

; <label>:5935                                    ; preds = %5873
  %5936 = fmul fast float %5913, 5.000000e-01
  %5937 = fmul fast float %5912, 5.000000e-01
  %5938 = fadd fast float %5936, 5.000000e-01
  %5939 = fadd fast float %5937, 5.000000e-01
  %5940 = sitofp i32 %5879 to float
  %5941 = fsub fast float %5907, %5940
  %5942 = call float @dx.op.unary.f32(i32 27, float %5941)  ; Round_ni(value)
  %5943 = call float @dx.op.unary.f32(i32 22, float %5907)  ; Frc(value)
  %5944 = call float @dx.op.unary.f32(i32 22, float %5939)  ; Frc(value)
  %5945 = call float @dx.op.unary.f32(i32 22, float %5938)  ; Frc(value)
  %5946 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %42, float %5944, float %5945, float %5942, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5947 = extractvalue %dx.types.ResRet.f32 %5946, 0
  %5948 = extractvalue %dx.types.ResRet.f32 %5946, 1
  %5949 = extractvalue %dx.types.ResRet.f32 %5946, 2
  %5950 = extractvalue %dx.types.ResRet.f32 %5946, 3
  %5951 = fcmp fast ogt float %5943, 0.000000e+00
  br i1 %5951, label %5952, label %5973, !dx.controlflow.hints !99

; <label>:5952                                    ; preds = %5935
  %5953 = fadd fast float %5942, 1.000000e+00
  %5954 = call float @dx.op.unary.f32(i32 22, float %5916)  ; Frc(value)
  %5955 = call float @dx.op.unary.f32(i32 22, float %5917)  ; Frc(value)
  %5956 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %42, float %5954, float %5955, float %5953, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5957 = extractvalue %dx.types.ResRet.f32 %5956, 0
  %5958 = extractvalue %dx.types.ResRet.f32 %5956, 1
  %5959 = extractvalue %dx.types.ResRet.f32 %5956, 2
  %5960 = extractvalue %dx.types.ResRet.f32 %5956, 3
  %5961 = fsub fast float %5957, %5947
  %5962 = fsub fast float %5958, %5948
  %5963 = fsub fast float %5959, %5949
  %5964 = fsub fast float %5960, %5950
  %5965 = fmul fast float %5961, %5943
  %5966 = fmul fast float %5962, %5943
  %5967 = fmul fast float %5963, %5943
  %5968 = fmul fast float %5964, %5943
  %5969 = fadd fast float %5965, %5947
  %5970 = fadd fast float %5966, %5948
  %5971 = fadd fast float %5967, %5949
  %5972 = fadd fast float %5968, %5950
  br label %5973

; <label>:5973                                    ; preds = %5952, %5935
  %5974 = phi float [ %5969, %5952 ], [ %5947, %5935 ]
  %5975 = phi float [ %5970, %5952 ], [ %5948, %5935 ]
  %5976 = phi float [ %5971, %5952 ], [ %5949, %5935 ]
  %5977 = phi float [ %5972, %5952 ], [ %5950, %5935 ]
  %5978 = fadd fast float %5974, -5.000000e-01
  %5979 = fadd fast float %5976, -5.000000e-01
  %5980 = fmul fast float %5978, 0xBFD5555560000000
  %5981 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5979, float %5980)  ; FMad(a,b,c)
  %5982 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5975, float 0.000000e+00)  ; FMad(a,b,c)
  %5983 = fadd fast float %5982, %5977
  %5984 = fmul fast float %5978, -7.500000e-01
  %5985 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5979, float %5984)  ; FMad(a,b,c)
  %5986 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5975, float 0.000000e+00)  ; FMad(a,b,c)
  %5987 = fadd fast float %5986, %5977
  %5988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5989 = extractvalue %dx.types.CBufRet.f32 %5988, 0
  %5990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5991 = extractvalue %dx.types.CBufRet.f32 %5990, 0
  %5992 = extractvalue %dx.types.CBufRet.f32 %5990, 1
  %5993 = extractvalue %dx.types.CBufRet.f32 %5990, 2
  %5994 = extractvalue %dx.types.CBufRet.f32 %5990, 3
  %5995 = fsub fast float %5991, %5981
  %5996 = fsub fast float %5992, %5983
  %5997 = fsub fast float %5993, %5985
  %5998 = fsub fast float %5994, %5987
  %5999 = fmul fast float %5995, %5989
  %6000 = fmul fast float %5996, %5989
  %6001 = fmul fast float %5997, %5989
  %6002 = fmul fast float %5998, %5989
  %6003 = fadd fast float %5999, %5981
  %6004 = fadd fast float %6000, %5983
  %6005 = fadd fast float %6001, %5985
  %6006 = fadd fast float %6002, %5987
  %6007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6008 = extractvalue %dx.types.ResRet.i32 %6007, 0
  %6009 = and i32 %6008, 536870911
  %6010 = uitofp i32 %6009 to float
  %6011 = fmul fast float %6010, %5857
  %6012 = fmul fast float %6010, %5861
  %6013 = fptoui float %6011 to i32
  %6014 = fptoui float %6012 to i32
  %6015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6016 = extractvalue %dx.types.ResRet.i32 %6015, 0
  %6017 = and i32 %6016, 31
  %6018 = lshr i32 %6013, %6017
  %6019 = lshr i32 %6014, %6017
  %6020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6021 = extractvalue %dx.types.ResRet.i32 %6020, 0
  %6022 = and i32 %6021, 31
  %6023 = shl i32 1, %6022
  %6024 = call i32 @dx.op.binary.i32(i32 40, i32 %6023, i32 4)  ; UMin(a,b)
  %6025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6026 = extractvalue %dx.types.ResRet.i32 %6025, 0
  %6027 = extractvalue %dx.types.ResRet.i32 %6025, 1
  %6028 = icmp eq i32 %6024, 0
  br i1 %6028, label %6070, label %6029

; <label>:6029                                    ; preds = %5973
  br label %6030

; <label>:6030                                    ; preds = %6058, %6029
  %6031 = phi i32 [ %6061, %6058 ], [ 0, %6029 ]
  %6032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6033 = extractvalue %dx.types.ResRet.i32 %6032, 0
  %6034 = lshr i32 %6033, 16
  %6035 = and i32 %6034, 31
  %6036 = shl i32 %6019, %6035
  %6037 = add i32 %6036, %6018
  %6038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6039 = extractvalue %dx.types.ResRet.i32 %6038, 0
  %6040 = and i32 %6039, 31
  %6041 = shl i32 %6037, %6040
  %6042 = add i32 %6041, %6031
  %6043 = shl i32 %6042, 2
  %6044 = add i32 %6043, 32
  %6045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6044, i32 undef)  ; BufferLoad(srv,index,wot)
  %6046 = extractvalue %dx.types.ResRet.i32 %6045, 0
  %6047 = icmp slt i32 %6046, 0
  %6048 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6031
  %6049 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6031
  %6050 = bitcast float* %6048 to i32*
  %6051 = bitcast float* %6049 to i32*
  br i1 %6047, label %6052, label %6058

; <label>:6052                                    ; preds = %6030
  %6053 = and i32 %6046, 1073741823
  %6054 = add nuw nsw i32 %6053, 20
  %6055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6054, i32 undef)  ; BufferLoad(srv,index,wot)
  %6056 = extractvalue %dx.types.ResRet.i32 %6055, 0
  %6057 = extractvalue %dx.types.ResRet.i32 %6055, 1
  br label %6058

; <label>:6058                                    ; preds = %6052, %6030
  %6059 = phi i32 [ %6056, %6052 ], [ %6026, %6030 ]
  %6060 = phi i32 [ %6057, %6052 ], [ %6027, %6030 ]
  store i32 %6059, i32* %6050, align 4
  store i32 %6060, i32* %6051, align 4
  %6061 = add nuw i32 %6031, 1
  %6062 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6063 = extractvalue %dx.types.CBufRet.i32 %6062, 2
  %6064 = icmp eq i32 %6063, 0
  %6065 = icmp ugt i32 %6046, -1073741825
  %6066 = and i1 %6065, %6064
  %6067 = icmp ult i32 %6061, %6024
  %6068 = and i1 %6066, %6067
  br i1 %6068, label %6030, label %6069

; <label>:6069                                    ; preds = %6058
  br label %6070

; <label>:6070                                    ; preds = %6069, %5973
  %6071 = phi i32 [ 0, %5973 ], [ %6061, %6069 ]
  %6072 = extractvalue %dx.types.CBufRet.f32 %5835, 2
  %6073 = fptoui float %6072 to i32
  %6074 = icmp eq i32 %6073, 0
  br i1 %6074, label %6126, label %6075

; <label>:6075                                    ; preds = %6070
  br label %6076

; <label>:6076                                    ; preds = %6121, %6075
  %6077 = phi i32 [ %6122, %6121 ], [ %6071, %6075 ]
  %6078 = phi i32 [ %6123, %6121 ], [ 0, %6075 ]
  %6079 = lshr i32 %6078, 2
  %6080 = and i32 %6078, 3
  %6081 = add nuw nsw i32 %6079, 83
  %6082 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 %6081)  ; CBufferLoadLegacy(handle,regIndex)
  %6083 = extractvalue %dx.types.CBufRet.i32 %6082, 0
  %6084 = extractvalue %dx.types.CBufRet.i32 %6082, 1
  %6085 = extractvalue %dx.types.CBufRet.i32 %6082, 2
  %6086 = extractvalue %dx.types.CBufRet.i32 %6082, 3
  %6087 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 0
  store i32 %6083, i32* %6087, align 4
  %6088 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 1
  store i32 %6084, i32* %6088, align 4
  %6089 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 2
  store i32 %6085, i32* %6089, align 4
  %6090 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 3
  store i32 %6086, i32* %6090, align 4
  %6091 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 %6080
  %6092 = load i32, i32* %6091, align 4, !tbaa !100, !noalias !104
  %6093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6094 = extractvalue %dx.types.ResRet.i32 %6093, 0
  %6095 = lshr i32 %6094, 16
  %6096 = and i32 %6095, 31
  %6097 = shl i32 %6019, %6096
  %6098 = add i32 %6097, %6018
  %6099 = shl i32 %6098, 2
  %6100 = add i32 %6099, %6092
  %6101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6100, i32 undef)  ; BufferLoad(srv,index,wot)
  %6102 = extractvalue %dx.types.ResRet.i32 %6101, 0
  %6103 = icmp eq i32 %6102, 0
  br i1 %6103, label %6121, label %6104

; <label>:6104                                    ; preds = %6076
  %6105 = icmp slt i32 %6102, 0
  %6106 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6077
  %6107 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6077
  %6108 = bitcast float* %6106 to i32*
  %6109 = bitcast float* %6107 to i32*
  br i1 %6105, label %6110, label %6117

; <label>:6110                                    ; preds = %6104
  %6111 = and i32 %6102, 1073741823
  %6112 = add i32 %6092, 20
  %6113 = add i32 %6112, %6111
  %6114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6113, i32 undef)  ; BufferLoad(srv,index,wot)
  %6115 = extractvalue %dx.types.ResRet.i32 %6114, 0
  %6116 = extractvalue %dx.types.ResRet.i32 %6114, 1
  br label %6117

; <label>:6117                                    ; preds = %6110, %6104
  %6118 = phi i32 [ %6115, %6110 ], [ %6026, %6104 ]
  %6119 = phi i32 [ %6116, %6110 ], [ %6027, %6104 ]
  store i32 %6118, i32* %6108, align 4
  store i32 %6119, i32* %6109, align 4
  %6120 = add i32 %6077, 1
  br label %6121

; <label>:6121                                    ; preds = %6117, %6076
  %6122 = phi i32 [ %6077, %6076 ], [ %6120, %6117 ]
  %6123 = add nuw i32 %6078, 1
  %6124 = icmp eq i32 %6123, %6073
  br i1 %6124, label %6125, label %6076

; <label>:6125                                    ; preds = %6121
  br label %6126

; <label>:6126                                    ; preds = %6125, %6070
  %6127 = phi i32 [ %6071, %6070 ], [ %6122, %6125 ]
  %6128 = icmp eq i32 %6127, 1
  %6129 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 0
  %6130 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 0
  br i1 %6128, label %6131, label %6134

; <label>:6131                                    ; preds = %6126
  %6132 = load float, float* %6129, align 4
  %6133 = load float, float* %6130, align 4
  br label %6161

; <label>:6134                                    ; preds = %6126
  %6135 = load float, float* %6129, align 4
  %6136 = load float, float* %6130, align 4
  %6137 = fdiv fast float 1.000000e+00, %6136
  %6138 = fsub fast float %6135, %6137
  %6139 = icmp ugt i32 %6127, 1
  br i1 %6139, label %6140, label %6156

; <label>:6140                                    ; preds = %6134
  br label %6141

; <label>:6141                                    ; preds = %6141, %6140
  %6142 = phi float [ %6151, %6141 ], [ %6138, %6140 ]
  %6143 = phi float [ %6152, %6141 ], [ %6135, %6140 ]
  %6144 = phi i32 [ %6153, %6141 ], [ 1, %6140 ]
  %6145 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6144
  %6146 = load float, float* %6145, align 4
  %6147 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6144
  %6148 = load float, float* %6147, align 4
  %6149 = fdiv fast float 1.000000e+00, %6148
  %6150 = fsub fast float %6146, %6149
  %6151 = call float @dx.op.binary.f32(i32 36, float %6142, float %6150)  ; FMin(a,b)
  %6152 = call float @dx.op.binary.f32(i32 35, float %6143, float %6146)  ; FMax(a,b)
  %6153 = add nuw i32 %6144, 1
  %6154 = icmp eq i32 %6153, %6127
  br i1 %6154, label %6155, label %6141

; <label>:6155                                    ; preds = %6141
  br label %6156

; <label>:6156                                    ; preds = %6155, %6134
  %6157 = phi float [ %6138, %6134 ], [ %6151, %6155 ]
  %6158 = phi float [ %6135, %6134 ], [ %6152, %6155 ]
  %6159 = fsub fast float %6158, %6157
  %6160 = fdiv fast float 1.000000e+00, %6159
  br label %6161

; <label>:6161                                    ; preds = %6156, %6131
  %6162 = phi float [ %6132, %6131 ], [ %6158, %6156 ]
  %6163 = phi float [ %6133, %6131 ], [ %6160, %6156 ]
  %6164 = fadd fast float %5865, %6162
  %6165 = fmul fast float %6164, %6163
  %6166 = call float @dx.op.unary.f32(i32 7, float %6165)  ; Saturate(value)
  %6167 = fmul fast float %6166, 2.000000e+00
  %6168 = fsub fast float 1.000000e+00, %6167
  %6169 = fmul fast float %6003, %6003
  %6170 = fsub fast float %6004, %6169
  %6171 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6170)  ; FMax(a,b)
  %6172 = fdiv fast float 1.000000e+00, %6171
  %6173 = fmul fast float %6004, %6003
  %6174 = fsub fast float %6005, %6173
  %6175 = fsub fast float %6168, %6003
  %6176 = fmul fast float %6168, %6168
  %6177 = fsub fast float %6176, %6004
  %6178 = fmul fast float %6172, %6174
  %6179 = fmul fast float %6178, %6175
  %6180 = fsub fast float %6177, %6179
  %6181 = fmul fast float %6004, %6004
  %6182 = fsub fast float %6006, %6181
  %6183 = fmul fast float %6174, %6174
  %6184 = fmul fast float %6183, %6172
  %6185 = fsub fast float %6182, %6184
  %6186 = fdiv fast float %6180, %6185
  %6187 = fmul fast float %6186, %6174
  %6188 = fsub fast float %6175, %6187
  %6189 = fmul fast float %6188, %6172
  %6190 = fmul fast float %6189, %6003
  %6191 = fsub fast float 1.000000e+00, %6190
  %6192 = fmul fast float %6186, %6004
  %6193 = fsub fast float %6191, %6192
  %6194 = fmul fast float %6189, %6189
  %6195 = fmul fast float %6186, 4.000000e+00
  %6196 = fmul fast float %6195, %6193
  %6197 = fsub fast float %6194, %6196
  %6198 = call float @dx.op.unary.f32(i32 24, float %6197)  ; Sqrt(value)
  %6199 = fcmp fast oge float %6189, 0.000000e+00
  %6200 = fsub fast float -0.000000e+00, %6198
  %6201 = select i1 %6199, float %6200, float %6198
  %6202 = fsub fast float %6201, %6189
  %6203 = fdiv fast float %6202, %6186
  %6204 = fdiv fast float %6193, %6202
  %6205 = fmul fast float %6203, 5.000000e-01
  %6206 = fmul fast float %6204, 2.000000e+00
  %6207 = select i1 %6199, float %6205, float %6206
  %6208 = select i1 %6199, float %6206, float %6205
  %6209 = call float @dx.op.binary.f32(i32 35, float %6207, float %6208)  ; FMax(a,b)
  %6210 = call float @dx.op.binary.f32(i32 36, float %6207, float %6208)  ; FMin(a,b)
  %6211 = fcmp fast ogt float %6168, %6209
  %6212 = fsub fast float %6168, %6210
  %6213 = fsub fast float %6168, %6209
  %6214 = fsub fast float %6209, %6210
  %6215 = select i1 %6211, float %6213, float %6214
  %6216 = fmul float %6212, %6215
  %6217 = select i1 %6211, float %6210, float %6168
  %6218 = fcmp fast ogt float %6168, %6210
  %6219 = fmul fast float %6217, %6209
  %6220 = fadd fast float %6217, %6209
  %6221 = fmul fast float %6220, %6003
  %6222 = fadd fast float %6219, %6004
  %6223 = fsub fast float %6222, %6221
  %6224 = fdiv fast float %6223, %6216
  %6225 = select i1 %6218, float %6224, float 0.000000e+00
  %6226 = fsub fast float 1.000000e+00, %6225
  %6227 = select i1 %6211, float %6226, float %6225
  %6228 = call float @dx.op.unary.f32(i32 7, float %6227)  ; Saturate(value)
  %6229 = extractvalue %dx.types.CBufRet.f32 %5988, 3
  %6230 = fmul fast float %6229, %6228
  %6231 = fsub fast float 1.000000e+00, %6230
  br label %6232

; <label>:6232                                    ; preds = %6161, %5873, %5838, %5834, %5798
  %6233 = phi float [ 1.000000e+00, %5798 ], [ %6231, %6161 ], [ 1.000000e+00, %5838 ], [ 1.000000e+00, %5873 ], [ 1.000000e+00, %5834 ]
  %6234 = fcmp fast ogt float %5830, 0.000000e+00
  br i1 %6234, label %6235, label %6399, !dx.controlflow.hints !113

; <label>:6235                                    ; preds = %6232
  %6236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6237 = extractvalue %dx.types.CBufRet.f32 %6236, 2
  %6238 = fadd fast float %6237, %5711
  %6239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6240 = extractvalue %dx.types.CBufRet.f32 %6239, 2
  %6241 = extractvalue %dx.types.CBufRet.f32 %6239, 3
  %6242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6243 = extractvalue %dx.types.CBufRet.f32 %6242, 2
  %6244 = call float @dx.op.binary.f32(i32 35, float %6238, float 0.000000e+00)  ; FMax(a,b)
  %6245 = fadd fast float %6244, 0x3F10000000000000
  %6246 = fcmp fast oeq float %6243, 0.000000e+00
  br i1 %6246, label %6247, label %6314

; <label>:6247                                    ; preds = %6235
  %6248 = extractvalue %dx.types.CBufRet.f32 %6239, 1
  %6249 = extractvalue %dx.types.CBufRet.f32 %6239, 0
  %6250 = fmul fast float %6249, %5729
  %6251 = fmul fast float %6248, %5730
  %6252 = fadd fast float %6250, 5.000000e-01
  %6253 = call float @dx.op.unary.f32(i32 27, float %6252)  ; Round_ni(value)
  %6254 = fadd fast float %6251, 5.000000e-01
  %6255 = call float @dx.op.unary.f32(i32 27, float %6254)  ; Round_ni(value)
  %6256 = fsub fast float %6252, %6253
  %6257 = fsub fast float %6254, %6255
  %6258 = fadd fast float %6253, -5.000000e-01
  %6259 = fadd fast float %6255, -5.000000e-01
  %6260 = fmul fast float %6256, 2.000000e+00
  %6261 = fsub fast float 3.000000e+00, %6260
  %6262 = fadd fast float %6260, 1.000000e+00
  %6263 = fsub fast float 2.000000e+00, %6256
  %6264 = bitcast float %6261 to i32
  %6265 = sub nsw i32 2129859010, %6264
  %6266 = bitcast i32 %6265 to float
  %6267 = fmul fast float %6266, %6263
  %6268 = fadd fast float %6267, -1.000000e+00
  %6269 = bitcast float %6262 to i32
  %6270 = sub nsw i32 2129859010, %6269
  %6271 = bitcast i32 %6270 to float
  %6272 = fmul fast float %6271, %6256
  %6273 = fadd fast float %6272, 1.000000e+00
  %6274 = fmul fast float %6257, 2.000000e+00
  %6275 = fsub fast float 3.000000e+00, %6274
  %6276 = fadd fast float %6274, 1.000000e+00
  %6277 = fsub fast float 2.000000e+00, %6257
  %6278 = bitcast float %6275 to i32
  %6279 = sub nsw i32 2129859010, %6278
  %6280 = bitcast i32 %6279 to float
  %6281 = fmul fast float %6280, %6277
  %6282 = fadd fast float %6281, -1.000000e+00
  %6283 = bitcast float %6276 to i32
  %6284 = sub nsw i32 2129859010, %6283
  %6285 = bitcast i32 %6284 to float
  %6286 = fmul fast float %6285, %6257
  %6287 = fadd fast float %6286, 1.000000e+00
  %6288 = fadd fast float %6268, %6258
  %6289 = fmul fast float %6288, %6240
  %6290 = fadd fast float %6282, %6259
  %6291 = fmul fast float %6290, %6241
  %6292 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %6289, float %6291, float undef, float undef, i32 0, i32 0, i32 undef, float %6245)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6293 = extractvalue %dx.types.ResRet.f32 %6292, 0
  %6294 = fmul fast float %6293, %6261
  %6295 = fadd fast float %6273, %6258
  %6296 = fmul fast float %6295, %6240
  %6297 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %6296, float %6291, float undef, float undef, i32 0, i32 0, i32 undef, float %6245)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6298 = extractvalue %dx.types.ResRet.f32 %6297, 0
  %6299 = fmul fast float %6298, %6262
  %6300 = fadd fast float %6287, %6259
  %6301 = fmul fast float %6300, %6241
  %6302 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %6289, float %6301, float undef, float undef, i32 0, i32 0, i32 undef, float %6245)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6303 = extractvalue %dx.types.ResRet.f32 %6302, 0
  %6304 = fmul fast float %6303, %6261
  %6305 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %6296, float %6301, float undef, float undef, i32 0, i32 0, i32 undef, float %6245)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6306 = extractvalue %dx.types.ResRet.f32 %6305, 0
  %6307 = fmul fast float %6306, %6262
  %6308 = fadd fast float %6307, %6304
  %6309 = fmul fast float %6308, %6276
  %6310 = fadd fast float %6299, %6294
  %6311 = fmul fast float %6310, %6275
  %6312 = fadd fast float %6311, %6309
  %6313 = fmul fast float %6312, 6.250000e-02
  br label %6399

; <label>:6314                                    ; preds = %6235
  %6315 = fmul fast float %263, 0x401921FB60000000
  %6316 = call float @dx.op.unary.f32(i32 13, float %6315)  ; Sin(value)
  %6317 = call float @dx.op.unary.f32(i32 12, float %6315)  ; Cos(value)
  %6318 = fsub fast float -0.000000e+00, %6316
  br label %6319

; <label>:6319                                    ; preds = %6368, %6314
  %6320 = phi float [ 0.000000e+00, %6314 ], [ %6363, %6368 ]
  %6321 = phi float [ 0.000000e+00, %6314 ], [ %6365, %6368 ]
  %6322 = phi i32 [ 0, %6314 ], [ %6369, %6368 ]
  %6323 = mul i32 %6322, 2
  %6324 = add i32 0, %6323
  %6325 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6324
  %6326 = load float, float* %6325, align 4
  %6327 = mul i32 %6322, 2
  %6328 = add i32 1, %6327
  %6329 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6328
  %6330 = load float, float* %6329, align 4
  %6331 = fmul fast float %6326, %6317
  %6332 = call float @dx.op.tertiary.f32(i32 46, float %6330, float %6318, float %6331)  ; FMad(a,b,c)
  %6333 = fmul fast float %6326, %6316
  %6334 = call float @dx.op.tertiary.f32(i32 46, float %6330, float %6317, float %6333)  ; FMad(a,b,c)
  %6335 = fmul fast float %6332, %6243
  %6336 = fmul fast float %6334, %6243
  %6337 = fadd fast float %6335, %5729
  %6338 = fadd fast float %6336, %5730
  %6339 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %44, float %6337, float %6338, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6340 = extractvalue %dx.types.ResRet.f32 %6339, 0
  %6341 = extractvalue %dx.types.ResRet.f32 %6339, 1
  %6342 = extractvalue %dx.types.ResRet.f32 %6339, 2
  %6343 = extractvalue %dx.types.ResRet.f32 %6339, 3
  %6344 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 0
  store float %6340, float* %6344, align 4
  %6345 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 1
  store float %6341, float* %6345, align 4
  %6346 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 2
  store float %6342, float* %6346, align 4
  %6347 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 3
  store float %6343, float* %6347, align 4
  %6348 = fsub fast float %6340, %6245
  %6349 = fcmp fast olt float %6348, 0.000000e+00
  %6350 = select i1 %6349, float 0.000000e+00, float 1.000000e+00
  %6351 = fadd fast float %6350, %6320
  %6352 = fmul fast float %6350, %6348
  %6353 = fadd fast float %6352, %6321
  br label %6354

; <label>:6354                                    ; preds = %6354, %6319
  %6355 = phi i32 [ 1, %6319 ], [ %6366, %6354 ]
  %6356 = phi float [ %6353, %6319 ], [ %6365, %6354 ]
  %6357 = phi float [ %6351, %6319 ], [ %6363, %6354 ]
  %6358 = getelementptr [4 x float], [4 x float]* %97, i32 0, i32 %6355
  %6359 = load float, float* %6358, align 4, !tbaa !114, !noalias !104
  %6360 = fsub fast float %6359, %6245
  %6361 = fcmp fast olt float %6360, 0.000000e+00
  %6362 = select i1 %6361, float 0.000000e+00, float 1.000000e+00
  %6363 = fadd fast float %6362, %6357
  %6364 = fmul fast float %6362, %6360
  %6365 = fadd fast float %6364, %6356
  %6366 = add nuw nsw i32 %6355, 1
  %6367 = icmp eq i32 %6366, 4
  br i1 %6367, label %6368, label %6354, !llvm.loop !116

; <label>:6368                                    ; preds = %6354
  %6369 = add nuw nsw i32 %6322, 1
  %6370 = icmp eq i32 %6369, 8
  br i1 %6370, label %6371, label %6319, !llvm.loop !117

; <label>:6371                                    ; preds = %6368
  %6372 = fdiv fast float 1.000000e+00, %6363
  %6373 = fmul fast float %6372, %6365
  %6374 = fdiv fast float 1.000000e+00, %6245
  %6375 = fmul fast float %6373, %6374
  %6376 = call float @dx.op.unary.f32(i32 7, float %6375)  ; Saturate(value)
  %6377 = call float @dx.op.binary.f32(i32 35, float %6376, float 0.000000e+00)  ; FMax(a,b)
  %6378 = fmul fast float %6363, 3.125000e-02
  %6379 = call float @dx.op.unary.f32(i32 7, float %6378)  ; Saturate(value)
  %6380 = fmul fast float %6379, 2.000000e+00
  %6381 = fadd fast float %6380, -1.000000e+00
  %6382 = fcmp fast ogt float %6381, 0.000000e+00
  %6383 = fcmp fast olt float %6381, 0.000000e+00
  %6384 = zext i1 %6382 to i32
  %6385 = zext i1 %6383 to i32
  %6386 = sub nsw i32 %6384, %6385
  %6387 = sitofp i32 %6386 to float
  %6388 = fmul fast float %6387, %6381
  %6389 = fsub fast float 1.000000e+00, %6388
  %6390 = fmul fast float %6389, %6389
  %6391 = fmul fast float %6390, %6389
  %6392 = fsub fast float %6389, %6391
  %6393 = fmul fast float %6392, %6377
  %6394 = fsub fast float 1.000000e+00, %6391
  %6395 = fsub fast float %6394, %6393
  %6396 = fmul fast float %6387, 5.000000e-01
  %6397 = fmul fast float %6396, %6395
  %6398 = fsub fast float 5.000000e-01, %6397
  br label %6399

; <label>:6399                                    ; preds = %6371, %6247, %6232
  %6400 = phi float [ 1.000000e+00, %6232 ], [ %6313, %6247 ], [ %6398, %6371 ]
  %6401 = fcmp fast ogt float %5828, 0.000000e+00
  br i1 %6401, label %6402, label %6566, !dx.controlflow.hints !118

; <label>:6402                                    ; preds = %6399
  %6403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6404 = extractvalue %dx.types.CBufRet.f32 %6403, 1
  %6405 = fadd fast float %6404, %5711
  %6406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6407 = extractvalue %dx.types.CBufRet.f32 %6406, 2
  %6408 = extractvalue %dx.types.CBufRet.f32 %6406, 3
  %6409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6410 = extractvalue %dx.types.CBufRet.f32 %6409, 1
  %6411 = call float @dx.op.binary.f32(i32 35, float %6405, float 0.000000e+00)  ; FMax(a,b)
  %6412 = fadd fast float %6411, 0x3F10000000000000
  %6413 = fcmp fast oeq float %6410, 0.000000e+00
  br i1 %6413, label %6414, label %6481

; <label>:6414                                    ; preds = %6402
  %6415 = extractvalue %dx.types.CBufRet.f32 %6406, 1
  %6416 = extractvalue %dx.types.CBufRet.f32 %6406, 0
  %6417 = fmul fast float %6416, %5721
  %6418 = fmul fast float %6415, %5722
  %6419 = fadd fast float %6417, 5.000000e-01
  %6420 = call float @dx.op.unary.f32(i32 27, float %6419)  ; Round_ni(value)
  %6421 = fadd fast float %6418, 5.000000e-01
  %6422 = call float @dx.op.unary.f32(i32 27, float %6421)  ; Round_ni(value)
  %6423 = fsub fast float %6419, %6420
  %6424 = fsub fast float %6421, %6422
  %6425 = fadd fast float %6420, -5.000000e-01
  %6426 = fadd fast float %6422, -5.000000e-01
  %6427 = fmul fast float %6423, 2.000000e+00
  %6428 = fsub fast float 3.000000e+00, %6427
  %6429 = fadd fast float %6427, 1.000000e+00
  %6430 = fsub fast float 2.000000e+00, %6423
  %6431 = bitcast float %6428 to i32
  %6432 = sub nsw i32 2129859010, %6431
  %6433 = bitcast i32 %6432 to float
  %6434 = fmul fast float %6433, %6430
  %6435 = fadd fast float %6434, -1.000000e+00
  %6436 = bitcast float %6429 to i32
  %6437 = sub nsw i32 2129859010, %6436
  %6438 = bitcast i32 %6437 to float
  %6439 = fmul fast float %6438, %6423
  %6440 = fadd fast float %6439, 1.000000e+00
  %6441 = fmul fast float %6424, 2.000000e+00
  %6442 = fsub fast float 3.000000e+00, %6441
  %6443 = fadd fast float %6441, 1.000000e+00
  %6444 = fsub fast float 2.000000e+00, %6424
  %6445 = bitcast float %6442 to i32
  %6446 = sub nsw i32 2129859010, %6445
  %6447 = bitcast i32 %6446 to float
  %6448 = fmul fast float %6447, %6444
  %6449 = fadd fast float %6448, -1.000000e+00
  %6450 = bitcast float %6443 to i32
  %6451 = sub nsw i32 2129859010, %6450
  %6452 = bitcast i32 %6451 to float
  %6453 = fmul fast float %6452, %6424
  %6454 = fadd fast float %6453, 1.000000e+00
  %6455 = fadd fast float %6435, %6425
  %6456 = fmul fast float %6455, %6407
  %6457 = fadd fast float %6449, %6426
  %6458 = fmul fast float %6457, %6408
  %6459 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %6456, float %6458, float undef, float undef, i32 0, i32 0, i32 undef, float %6412)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6460 = extractvalue %dx.types.ResRet.f32 %6459, 0
  %6461 = fmul fast float %6460, %6428
  %6462 = fadd fast float %6440, %6425
  %6463 = fmul fast float %6462, %6407
  %6464 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %6463, float %6458, float undef, float undef, i32 0, i32 0, i32 undef, float %6412)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6465 = extractvalue %dx.types.ResRet.f32 %6464, 0
  %6466 = fmul fast float %6465, %6429
  %6467 = fadd fast float %6454, %6426
  %6468 = fmul fast float %6467, %6408
  %6469 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %6456, float %6468, float undef, float undef, i32 0, i32 0, i32 undef, float %6412)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6470 = extractvalue %dx.types.ResRet.f32 %6469, 0
  %6471 = fmul fast float %6470, %6428
  %6472 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %6463, float %6468, float undef, float undef, i32 0, i32 0, i32 undef, float %6412)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6473 = extractvalue %dx.types.ResRet.f32 %6472, 0
  %6474 = fmul fast float %6473, %6429
  %6475 = fadd fast float %6474, %6471
  %6476 = fmul fast float %6475, %6443
  %6477 = fadd fast float %6466, %6461
  %6478 = fmul fast float %6477, %6442
  %6479 = fadd fast float %6478, %6476
  %6480 = fmul fast float %6479, 6.250000e-02
  br label %6566

; <label>:6481                                    ; preds = %6402
  %6482 = fmul fast float %263, 0x401921FB60000000
  %6483 = call float @dx.op.unary.f32(i32 13, float %6482)  ; Sin(value)
  %6484 = call float @dx.op.unary.f32(i32 12, float %6482)  ; Cos(value)
  %6485 = fsub fast float -0.000000e+00, %6483
  br label %6486

; <label>:6486                                    ; preds = %6535, %6481
  %6487 = phi float [ 0.000000e+00, %6481 ], [ %6530, %6535 ]
  %6488 = phi float [ 0.000000e+00, %6481 ], [ %6532, %6535 ]
  %6489 = phi i32 [ 0, %6481 ], [ %6536, %6535 ]
  %6490 = mul i32 %6489, 2
  %6491 = add i32 0, %6490
  %6492 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6491
  %6493 = load float, float* %6492, align 4
  %6494 = mul i32 %6489, 2
  %6495 = add i32 1, %6494
  %6496 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6495
  %6497 = load float, float* %6496, align 4
  %6498 = fmul fast float %6493, %6484
  %6499 = call float @dx.op.tertiary.f32(i32 46, float %6497, float %6485, float %6498)  ; FMad(a,b,c)
  %6500 = fmul fast float %6493, %6483
  %6501 = call float @dx.op.tertiary.f32(i32 46, float %6497, float %6484, float %6500)  ; FMad(a,b,c)
  %6502 = fmul fast float %6499, %6410
  %6503 = fmul fast float %6501, %6410
  %6504 = fadd fast float %6502, %5721
  %6505 = fadd fast float %6503, %5722
  %6506 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %44, float %6504, float %6505, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6507 = extractvalue %dx.types.ResRet.f32 %6506, 0
  %6508 = extractvalue %dx.types.ResRet.f32 %6506, 1
  %6509 = extractvalue %dx.types.ResRet.f32 %6506, 2
  %6510 = extractvalue %dx.types.ResRet.f32 %6506, 3
  %6511 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 0
  store float %6507, float* %6511, align 4
  %6512 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 1
  store float %6508, float* %6512, align 4
  %6513 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 2
  store float %6509, float* %6513, align 4
  %6514 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 3
  store float %6510, float* %6514, align 4
  %6515 = fsub fast float %6507, %6412
  %6516 = fcmp fast olt float %6515, 0.000000e+00
  %6517 = select i1 %6516, float 0.000000e+00, float 1.000000e+00
  %6518 = fadd fast float %6517, %6487
  %6519 = fmul fast float %6517, %6515
  %6520 = fadd fast float %6519, %6488
  br label %6521

; <label>:6521                                    ; preds = %6521, %6486
  %6522 = phi i32 [ 1, %6486 ], [ %6533, %6521 ]
  %6523 = phi float [ %6520, %6486 ], [ %6532, %6521 ]
  %6524 = phi float [ %6518, %6486 ], [ %6530, %6521 ]
  %6525 = getelementptr [4 x float], [4 x float]* %96, i32 0, i32 %6522
  %6526 = load float, float* %6525, align 4, !tbaa !114, !noalias !104
  %6527 = fsub fast float %6526, %6412
  %6528 = fcmp fast olt float %6527, 0.000000e+00
  %6529 = select i1 %6528, float 0.000000e+00, float 1.000000e+00
  %6530 = fadd fast float %6529, %6524
  %6531 = fmul fast float %6529, %6527
  %6532 = fadd fast float %6531, %6523
  %6533 = add nuw nsw i32 %6522, 1
  %6534 = icmp eq i32 %6533, 4
  br i1 %6534, label %6535, label %6521, !llvm.loop !116

; <label>:6535                                    ; preds = %6521
  %6536 = add nuw nsw i32 %6489, 1
  %6537 = icmp eq i32 %6536, 8
  br i1 %6537, label %6538, label %6486, !llvm.loop !117

; <label>:6538                                    ; preds = %6535
  %6539 = fdiv fast float 1.000000e+00, %6530
  %6540 = fmul fast float %6539, %6532
  %6541 = fdiv fast float 1.000000e+00, %6412
  %6542 = fmul fast float %6540, %6541
  %6543 = call float @dx.op.unary.f32(i32 7, float %6542)  ; Saturate(value)
  %6544 = call float @dx.op.binary.f32(i32 35, float %6543, float 0.000000e+00)  ; FMax(a,b)
  %6545 = fmul fast float %6530, 3.125000e-02
  %6546 = call float @dx.op.unary.f32(i32 7, float %6545)  ; Saturate(value)
  %6547 = fmul fast float %6546, 2.000000e+00
  %6548 = fadd fast float %6547, -1.000000e+00
  %6549 = fcmp fast ogt float %6548, 0.000000e+00
  %6550 = fcmp fast olt float %6548, 0.000000e+00
  %6551 = zext i1 %6549 to i32
  %6552 = zext i1 %6550 to i32
  %6553 = sub nsw i32 %6551, %6552
  %6554 = sitofp i32 %6553 to float
  %6555 = fmul fast float %6554, %6548
  %6556 = fsub fast float 1.000000e+00, %6555
  %6557 = fmul fast float %6556, %6556
  %6558 = fmul fast float %6557, %6556
  %6559 = fsub fast float %6556, %6558
  %6560 = fmul fast float %6559, %6544
  %6561 = fsub fast float 1.000000e+00, %6558
  %6562 = fsub fast float %6561, %6560
  %6563 = fmul fast float %6554, 5.000000e-01
  %6564 = fmul fast float %6563, %6562
  %6565 = fsub fast float 5.000000e-01, %6564
  br label %6566

; <label>:6566                                    ; preds = %6538, %6414, %6399
  %6567 = phi float [ 1.000000e+00, %6399 ], [ %6480, %6414 ], [ %6565, %6538 ]
  %6568 = fcmp fast ogt float %5827, 0.000000e+00
  br i1 %6568, label %6569, label %6887, !dx.controlflow.hints !119

; <label>:6569                                    ; preds = %6566
  %6570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6571 = extractvalue %dx.types.CBufRet.f32 %6570, 0
  %6572 = fadd fast float %6571, %5711
  %6573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6574 = extractvalue %dx.types.CBufRet.f32 %6573, 2
  %6575 = extractvalue %dx.types.CBufRet.f32 %6573, 3
  %6576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6577 = extractvalue %dx.types.CBufRet.f32 %6576, 0
  %6578 = call float @dx.op.binary.f32(i32 35, float %6572, float 0.000000e+00)  ; FMax(a,b)
  %6579 = fadd fast float %6578, 0x3F10000000000000
  %6580 = fcmp fast oeq float %6577, 0.000000e+00
  br i1 %5714, label %6581, label %6734, !dx.controlflow.hints !120

; <label>:6581                                    ; preds = %6569
  br i1 %6580, label %6582, label %6649

; <label>:6582                                    ; preds = %6581
  %6583 = extractvalue %dx.types.CBufRet.f32 %6573, 1
  %6584 = extractvalue %dx.types.CBufRet.f32 %6573, 0
  %6585 = fmul fast float %6584, %5703
  %6586 = fmul fast float %6583, %5707
  %6587 = fadd fast float %6585, 5.000000e-01
  %6588 = call float @dx.op.unary.f32(i32 27, float %6587)  ; Round_ni(value)
  %6589 = fadd fast float %6586, 5.000000e-01
  %6590 = call float @dx.op.unary.f32(i32 27, float %6589)  ; Round_ni(value)
  %6591 = fsub fast float %6587, %6588
  %6592 = fsub fast float %6589, %6590
  %6593 = fadd fast float %6588, -5.000000e-01
  %6594 = fadd fast float %6590, -5.000000e-01
  %6595 = fmul fast float %6591, 2.000000e+00
  %6596 = fsub fast float 3.000000e+00, %6595
  %6597 = fadd fast float %6595, 1.000000e+00
  %6598 = fsub fast float 2.000000e+00, %6591
  %6599 = bitcast float %6596 to i32
  %6600 = sub nsw i32 2129859010, %6599
  %6601 = bitcast i32 %6600 to float
  %6602 = fmul fast float %6601, %6598
  %6603 = fadd fast float %6602, -1.000000e+00
  %6604 = bitcast float %6597 to i32
  %6605 = sub nsw i32 2129859010, %6604
  %6606 = bitcast i32 %6605 to float
  %6607 = fmul fast float %6606, %6591
  %6608 = fadd fast float %6607, 1.000000e+00
  %6609 = fmul fast float %6592, 2.000000e+00
  %6610 = fsub fast float 3.000000e+00, %6609
  %6611 = fadd fast float %6609, 1.000000e+00
  %6612 = fsub fast float 2.000000e+00, %6592
  %6613 = bitcast float %6610 to i32
  %6614 = sub nsw i32 2129859010, %6613
  %6615 = bitcast i32 %6614 to float
  %6616 = fmul fast float %6615, %6612
  %6617 = fadd fast float %6616, -1.000000e+00
  %6618 = bitcast float %6611 to i32
  %6619 = sub nsw i32 2129859010, %6618
  %6620 = bitcast i32 %6619 to float
  %6621 = fmul fast float %6620, %6592
  %6622 = fadd fast float %6621, 1.000000e+00
  %6623 = fadd fast float %6603, %6593
  %6624 = fmul fast float %6623, %6574
  %6625 = fadd fast float %6617, %6594
  %6626 = fmul fast float %6625, %6575
  %6627 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %45, float %6624, float %6626, float undef, float undef, i32 0, i32 0, i32 undef, float %6579)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6628 = extractvalue %dx.types.ResRet.f32 %6627, 0
  %6629 = fmul fast float %6628, %6596
  %6630 = fadd fast float %6608, %6593
  %6631 = fmul fast float %6630, %6574
  %6632 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %45, float %6631, float %6626, float undef, float undef, i32 0, i32 0, i32 undef, float %6579)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6633 = extractvalue %dx.types.ResRet.f32 %6632, 0
  %6634 = fmul fast float %6633, %6597
  %6635 = fadd fast float %6622, %6594
  %6636 = fmul fast float %6635, %6575
  %6637 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %45, float %6624, float %6636, float undef, float undef, i32 0, i32 0, i32 undef, float %6579)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6638 = extractvalue %dx.types.ResRet.f32 %6637, 0
  %6639 = fmul fast float %6638, %6596
  %6640 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %45, float %6631, float %6636, float undef, float undef, i32 0, i32 0, i32 undef, float %6579)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6641 = extractvalue %dx.types.ResRet.f32 %6640, 0
  %6642 = fmul fast float %6641, %6597
  %6643 = fadd fast float %6642, %6639
  %6644 = fmul fast float %6643, %6611
  %6645 = fadd fast float %6634, %6629
  %6646 = fmul fast float %6645, %6610
  %6647 = fadd fast float %6646, %6644
  %6648 = fmul fast float %6647, 6.250000e-02
  br label %6887

; <label>:6649                                    ; preds = %6581
  %6650 = fmul fast float %263, 0x401921FB60000000
  %6651 = call float @dx.op.unary.f32(i32 13, float %6650)  ; Sin(value)
  %6652 = call float @dx.op.unary.f32(i32 12, float %6650)  ; Cos(value)
  %6653 = fsub fast float -0.000000e+00, %6651
  br label %6654

; <label>:6654                                    ; preds = %6703, %6649
  %6655 = phi float [ 0.000000e+00, %6649 ], [ %6698, %6703 ]
  %6656 = phi float [ 0.000000e+00, %6649 ], [ %6700, %6703 ]
  %6657 = phi i32 [ 0, %6649 ], [ %6704, %6703 ]
  %6658 = mul i32 %6657, 2
  %6659 = add i32 0, %6658
  %6660 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6659
  %6661 = load float, float* %6660, align 4
  %6662 = mul i32 %6657, 2
  %6663 = add i32 1, %6662
  %6664 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6663
  %6665 = load float, float* %6664, align 4
  %6666 = fmul fast float %6661, %6652
  %6667 = call float @dx.op.tertiary.f32(i32 46, float %6665, float %6653, float %6666)  ; FMad(a,b,c)
  %6668 = fmul fast float %6661, %6651
  %6669 = call float @dx.op.tertiary.f32(i32 46, float %6665, float %6652, float %6668)  ; FMad(a,b,c)
  %6670 = fmul fast float %6667, %6577
  %6671 = fmul fast float %6669, %6577
  %6672 = fadd fast float %6670, %5703
  %6673 = fadd fast float %6671, %5707
  %6674 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %44, float %6672, float %6673, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6675 = extractvalue %dx.types.ResRet.f32 %6674, 0
  %6676 = extractvalue %dx.types.ResRet.f32 %6674, 1
  %6677 = extractvalue %dx.types.ResRet.f32 %6674, 2
  %6678 = extractvalue %dx.types.ResRet.f32 %6674, 3
  %6679 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 0
  store float %6675, float* %6679, align 4
  %6680 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 1
  store float %6676, float* %6680, align 4
  %6681 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 2
  store float %6677, float* %6681, align 4
  %6682 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 3
  store float %6678, float* %6682, align 4
  %6683 = fsub fast float %6675, %6579
  %6684 = fcmp fast olt float %6683, 0.000000e+00
  %6685 = select i1 %6684, float 0.000000e+00, float 1.000000e+00
  %6686 = fadd fast float %6685, %6655
  %6687 = fmul fast float %6685, %6683
  %6688 = fadd fast float %6687, %6656
  br label %6689

; <label>:6689                                    ; preds = %6689, %6654
  %6690 = phi i32 [ 1, %6654 ], [ %6701, %6689 ]
  %6691 = phi float [ %6688, %6654 ], [ %6700, %6689 ]
  %6692 = phi float [ %6686, %6654 ], [ %6698, %6689 ]
  %6693 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 %6690
  %6694 = load float, float* %6693, align 4, !tbaa !114, !noalias !104
  %6695 = fsub fast float %6694, %6579
  %6696 = fcmp fast olt float %6695, 0.000000e+00
  %6697 = select i1 %6696, float 0.000000e+00, float 1.000000e+00
  %6698 = fadd fast float %6697, %6692
  %6699 = fmul fast float %6697, %6695
  %6700 = fadd fast float %6699, %6691
  %6701 = add nuw nsw i32 %6690, 1
  %6702 = icmp eq i32 %6701, 4
  br i1 %6702, label %6703, label %6689, !llvm.loop !116

; <label>:6703                                    ; preds = %6689
  %6704 = add nuw nsw i32 %6657, 1
  %6705 = icmp eq i32 %6704, 8
  br i1 %6705, label %6706, label %6654, !llvm.loop !117

; <label>:6706                                    ; preds = %6703
  %6707 = fdiv fast float 1.000000e+00, %6698
  %6708 = fmul fast float %6707, %6700
  %6709 = fdiv fast float 1.000000e+00, %6579
  %6710 = fmul fast float %6708, %6709
  %6711 = call float @dx.op.unary.f32(i32 7, float %6710)  ; Saturate(value)
  %6712 = call float @dx.op.binary.f32(i32 35, float %6711, float 0.000000e+00)  ; FMax(a,b)
  %6713 = fmul fast float %6698, 3.125000e-02
  %6714 = call float @dx.op.unary.f32(i32 7, float %6713)  ; Saturate(value)
  %6715 = fmul fast float %6714, 2.000000e+00
  %6716 = fadd fast float %6715, -1.000000e+00
  %6717 = fcmp fast ogt float %6716, 0.000000e+00
  %6718 = fcmp fast olt float %6716, 0.000000e+00
  %6719 = zext i1 %6717 to i32
  %6720 = zext i1 %6718 to i32
  %6721 = sub nsw i32 %6719, %6720
  %6722 = sitofp i32 %6721 to float
  %6723 = fmul fast float %6722, %6716
  %6724 = fsub fast float 1.000000e+00, %6723
  %6725 = fmul fast float %6724, %6724
  %6726 = fmul fast float %6725, %6724
  %6727 = fsub fast float %6724, %6726
  %6728 = fmul fast float %6727, %6712
  %6729 = fsub fast float 1.000000e+00, %6726
  %6730 = fsub fast float %6729, %6728
  %6731 = fmul fast float %6722, 5.000000e-01
  %6732 = fmul fast float %6731, %6730
  %6733 = fsub fast float 5.000000e-01, %6732
  br label %6887

; <label>:6734                                    ; preds = %6569
  br i1 %6580, label %6735, label %6802

; <label>:6735                                    ; preds = %6734
  %6736 = extractvalue %dx.types.CBufRet.f32 %6573, 1
  %6737 = extractvalue %dx.types.CBufRet.f32 %6573, 0
  %6738 = fmul fast float %6737, %5703
  %6739 = fmul fast float %6736, %5707
  %6740 = fadd fast float %6738, 5.000000e-01
  %6741 = call float @dx.op.unary.f32(i32 27, float %6740)  ; Round_ni(value)
  %6742 = fadd fast float %6739, 5.000000e-01
  %6743 = call float @dx.op.unary.f32(i32 27, float %6742)  ; Round_ni(value)
  %6744 = fsub fast float %6740, %6741
  %6745 = fsub fast float %6742, %6743
  %6746 = fadd fast float %6741, -5.000000e-01
  %6747 = fadd fast float %6743, -5.000000e-01
  %6748 = fmul fast float %6744, 2.000000e+00
  %6749 = fsub fast float 3.000000e+00, %6748
  %6750 = fadd fast float %6748, 1.000000e+00
  %6751 = fsub fast float 2.000000e+00, %6744
  %6752 = bitcast float %6749 to i32
  %6753 = sub nsw i32 2129859010, %6752
  %6754 = bitcast i32 %6753 to float
  %6755 = fmul fast float %6754, %6751
  %6756 = fadd fast float %6755, -1.000000e+00
  %6757 = bitcast float %6750 to i32
  %6758 = sub nsw i32 2129859010, %6757
  %6759 = bitcast i32 %6758 to float
  %6760 = fmul fast float %6759, %6744
  %6761 = fadd fast float %6760, 1.000000e+00
  %6762 = fmul fast float %6745, 2.000000e+00
  %6763 = fsub fast float 3.000000e+00, %6762
  %6764 = fadd fast float %6762, 1.000000e+00
  %6765 = fsub fast float 2.000000e+00, %6745
  %6766 = bitcast float %6763 to i32
  %6767 = sub nsw i32 2129859010, %6766
  %6768 = bitcast i32 %6767 to float
  %6769 = fmul fast float %6768, %6765
  %6770 = fadd fast float %6769, -1.000000e+00
  %6771 = bitcast float %6764 to i32
  %6772 = sub nsw i32 2129859010, %6771
  %6773 = bitcast i32 %6772 to float
  %6774 = fmul fast float %6773, %6745
  %6775 = fadd fast float %6774, 1.000000e+00
  %6776 = fadd fast float %6756, %6746
  %6777 = fmul fast float %6776, %6574
  %6778 = fadd fast float %6770, %6747
  %6779 = fmul fast float %6778, %6575
  %6780 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %6777, float %6779, float undef, float undef, i32 0, i32 0, i32 undef, float %6579)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6781 = extractvalue %dx.types.ResRet.f32 %6780, 0
  %6782 = fmul fast float %6781, %6749
  %6783 = fadd fast float %6761, %6746
  %6784 = fmul fast float %6783, %6574
  %6785 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %6784, float %6779, float undef, float undef, i32 0, i32 0, i32 undef, float %6579)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6786 = extractvalue %dx.types.ResRet.f32 %6785, 0
  %6787 = fmul fast float %6786, %6750
  %6788 = fadd fast float %6775, %6747
  %6789 = fmul fast float %6788, %6575
  %6790 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %6777, float %6789, float undef, float undef, i32 0, i32 0, i32 undef, float %6579)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6791 = extractvalue %dx.types.ResRet.f32 %6790, 0
  %6792 = fmul fast float %6791, %6749
  %6793 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %6784, float %6789, float undef, float undef, i32 0, i32 0, i32 undef, float %6579)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6794 = extractvalue %dx.types.ResRet.f32 %6793, 0
  %6795 = fmul fast float %6794, %6750
  %6796 = fadd fast float %6795, %6792
  %6797 = fmul fast float %6796, %6764
  %6798 = fadd fast float %6787, %6782
  %6799 = fmul fast float %6798, %6763
  %6800 = fadd fast float %6799, %6797
  %6801 = fmul fast float %6800, 6.250000e-02
  br label %6887

; <label>:6802                                    ; preds = %6734
  %6803 = fmul fast float %263, 0x401921FB60000000
  %6804 = call float @dx.op.unary.f32(i32 13, float %6803)  ; Sin(value)
  %6805 = call float @dx.op.unary.f32(i32 12, float %6803)  ; Cos(value)
  %6806 = fsub fast float -0.000000e+00, %6804
  br label %6807

; <label>:6807                                    ; preds = %6856, %6802
  %6808 = phi float [ 0.000000e+00, %6802 ], [ %6851, %6856 ]
  %6809 = phi float [ 0.000000e+00, %6802 ], [ %6853, %6856 ]
  %6810 = phi i32 [ 0, %6802 ], [ %6857, %6856 ]
  %6811 = mul i32 %6810, 2
  %6812 = add i32 0, %6811
  %6813 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6812
  %6814 = load float, float* %6813, align 4
  %6815 = mul i32 %6810, 2
  %6816 = add i32 1, %6815
  %6817 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6816
  %6818 = load float, float* %6817, align 4
  %6819 = fmul fast float %6814, %6805
  %6820 = call float @dx.op.tertiary.f32(i32 46, float %6818, float %6806, float %6819)  ; FMad(a,b,c)
  %6821 = fmul fast float %6814, %6804
  %6822 = call float @dx.op.tertiary.f32(i32 46, float %6818, float %6805, float %6821)  ; FMad(a,b,c)
  %6823 = fmul fast float %6820, %6577
  %6824 = fmul fast float %6822, %6577
  %6825 = fadd fast float %6823, %5703
  %6826 = fadd fast float %6824, %5707
  %6827 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %44, float %6825, float %6826, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6828 = extractvalue %dx.types.ResRet.f32 %6827, 0
  %6829 = extractvalue %dx.types.ResRet.f32 %6827, 1
  %6830 = extractvalue %dx.types.ResRet.f32 %6827, 2
  %6831 = extractvalue %dx.types.ResRet.f32 %6827, 3
  %6832 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 0
  store float %6828, float* %6832, align 4
  %6833 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 1
  store float %6829, float* %6833, align 4
  %6834 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 2
  store float %6830, float* %6834, align 4
  %6835 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 3
  store float %6831, float* %6835, align 4
  %6836 = fsub fast float %6828, %6579
  %6837 = fcmp fast olt float %6836, 0.000000e+00
  %6838 = select i1 %6837, float 0.000000e+00, float 1.000000e+00
  %6839 = fadd fast float %6838, %6808
  %6840 = fmul fast float %6838, %6836
  %6841 = fadd fast float %6840, %6809
  br label %6842

; <label>:6842                                    ; preds = %6842, %6807
  %6843 = phi i32 [ 1, %6807 ], [ %6854, %6842 ]
  %6844 = phi float [ %6841, %6807 ], [ %6853, %6842 ]
  %6845 = phi float [ %6839, %6807 ], [ %6851, %6842 ]
  %6846 = getelementptr [4 x float], [4 x float]* %94, i32 0, i32 %6843
  %6847 = load float, float* %6846, align 4, !tbaa !114, !noalias !104
  %6848 = fsub fast float %6847, %6579
  %6849 = fcmp fast olt float %6848, 0.000000e+00
  %6850 = select i1 %6849, float 0.000000e+00, float 1.000000e+00
  %6851 = fadd fast float %6850, %6845
  %6852 = fmul fast float %6850, %6848
  %6853 = fadd fast float %6852, %6844
  %6854 = add nuw nsw i32 %6843, 1
  %6855 = icmp eq i32 %6854, 4
  br i1 %6855, label %6856, label %6842, !llvm.loop !116

; <label>:6856                                    ; preds = %6842
  %6857 = add nuw nsw i32 %6810, 1
  %6858 = icmp eq i32 %6857, 8
  br i1 %6858, label %6859, label %6807, !llvm.loop !117

; <label>:6859                                    ; preds = %6856
  %6860 = fdiv fast float 1.000000e+00, %6851
  %6861 = fmul fast float %6860, %6853
  %6862 = fdiv fast float 1.000000e+00, %6579
  %6863 = fmul fast float %6861, %6862
  %6864 = call float @dx.op.unary.f32(i32 7, float %6863)  ; Saturate(value)
  %6865 = call float @dx.op.binary.f32(i32 35, float %6864, float 0.000000e+00)  ; FMax(a,b)
  %6866 = fmul fast float %6851, 3.125000e-02
  %6867 = call float @dx.op.unary.f32(i32 7, float %6866)  ; Saturate(value)
  %6868 = fmul fast float %6867, 2.000000e+00
  %6869 = fadd fast float %6868, -1.000000e+00
  %6870 = fcmp fast ogt float %6869, 0.000000e+00
  %6871 = fcmp fast olt float %6869, 0.000000e+00
  %6872 = zext i1 %6870 to i32
  %6873 = zext i1 %6871 to i32
  %6874 = sub nsw i32 %6872, %6873
  %6875 = sitofp i32 %6874 to float
  %6876 = fmul fast float %6875, %6869
  %6877 = fsub fast float 1.000000e+00, %6876
  %6878 = fmul fast float %6877, %6877
  %6879 = fmul fast float %6878, %6877
  %6880 = fsub fast float %6877, %6879
  %6881 = fmul fast float %6880, %6865
  %6882 = fsub fast float 1.000000e+00, %6879
  %6883 = fsub fast float %6882, %6881
  %6884 = fmul fast float %6875, 5.000000e-01
  %6885 = fmul fast float %6884, %6883
  %6886 = fsub fast float 5.000000e-01, %6885
  br label %6887

; <label>:6887                                    ; preds = %6859, %6735, %6706, %6582, %6566
  %6888 = phi float [ 1.000000e+00, %6566 ], [ %6648, %6582 ], [ %6733, %6706 ], [ %6801, %6735 ], [ %6886, %6859 ]
  %6889 = fsub fast float %6400, %6233
  %6890 = fmul fast float %6889, %5800
  %6891 = fadd fast float %6890, %6233
  %6892 = fsub fast float %6567, %6891
  %6893 = fmul fast float %6892, %5799
  %6894 = fadd fast float %6893, %6891
  %6895 = fsub fast float %6888, %6894
  %6896 = fmul fast float %6895, %5827
  %6897 = fadd fast float %6896, %6894
  %6898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6899 = extractvalue %dx.types.CBufRet.f32 %6898, 2
  %6900 = fcmp fast ogt float %6899, 0.000000e+00
  br i1 %6900, label %6901, label %6941, !dx.controlflow.hints !121

; <label>:6901                                    ; preds = %6887
  %6902 = fcmp fast ugt float %6899, 0.000000e+00
  br i1 %6902, label %6903, label %6938

; <label>:6903                                    ; preds = %6901
  %6904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6905 = extractvalue %dx.types.CBufRet.f32 %6904, 0
  %6906 = extractvalue %dx.types.CBufRet.f32 %6904, 1
  %6907 = extractvalue %dx.types.CBufRet.f32 %6904, 2
  %6908 = extractvalue %dx.types.CBufRet.f32 %6904, 3
  %6909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6910 = extractvalue %dx.types.CBufRet.f32 %6909, 0
  %6911 = extractvalue %dx.types.CBufRet.f32 %6909, 1
  %6912 = extractvalue %dx.types.CBufRet.f32 %6909, 2
  %6913 = extractvalue %dx.types.CBufRet.f32 %6909, 3
  %6914 = extractvalue %dx.types.CBufRet.f32 %6898, 0
  %6915 = extractvalue %dx.types.CBufRet.f32 %6898, 1
  %6916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6917 = extractvalue %dx.types.CBufRet.f32 %6916, 0
  %6918 = extractvalue %dx.types.CBufRet.f32 %6916, 1
  %6919 = extractvalue %dx.types.CBufRet.f32 %6916, 2
  %6920 = fadd fast float %6917, %5680
  %6921 = fadd fast float %6918, %5681
  %6922 = fadd fast float %6919, %5682
  %6923 = fmul fast float %6920, %6905
  %6924 = call float @dx.op.tertiary.f32(i32 46, float %6906, float %6921, float %6923)  ; FMad(a,b,c)
  %6925 = call float @dx.op.tertiary.f32(i32 46, float %6907, float %6922, float %6924)  ; FMad(a,b,c)
  %6926 = fadd fast float %6925, %6908
  %6927 = fmul fast float %6920, %6910
  %6928 = call float @dx.op.tertiary.f32(i32 46, float %6911, float %6921, float %6927)  ; FMad(a,b,c)
  %6929 = call float @dx.op.tertiary.f32(i32 46, float %6912, float %6922, float %6928)  ; FMad(a,b,c)
  %6930 = fadd fast float %6929, %6913
  %6931 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %40, float %6926, float %6930, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6932 = extractvalue %dx.types.ResRet.f32 %6931, 0
  %6933 = fmul fast float %6932, %6915
  %6934 = fadd fast float %6933, %6914
  %6935 = call float @dx.op.unary.f32(i32 7, float %6934)  ; Saturate(value)
  %6936 = fmul fast float %6935, %6899
  %6937 = fsub fast float 1.000000e+00, %6936
  br label %6938

; <label>:6938                                    ; preds = %6903, %6901
  %6939 = phi float [ %6937, %6903 ], [ 1.000000e+00, %6901 ]
  %6940 = fmul fast float %6939, %6897
  br label %6941

; <label>:6941                                    ; preds = %6938, %6887, %5660
  %6942 = phi float [ 1.000000e+00, %5660 ], [ %6940, %6938 ], [ %6897, %6887 ]
  %6943 = call float @dx.op.binary.f32(i32 36, float %6942, float %6942)  ; FMin(a,b)
  %6944 = call float @dx.op.binary.f32(i32 36, float %6942, float %6943)  ; FMin(a,b)
  %6945 = fcmp fast ogt float %6944, 0.000000e+00
  br i1 %6945, label %6946, label %7112, !dx.controlflow.hints !122

; <label>:6946                                    ; preds = %6941
  %6947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6948 = extractvalue %dx.types.CBufRet.f32 %6947, 0
  %6949 = extractvalue %dx.types.CBufRet.f32 %6947, 1
  %6950 = extractvalue %dx.types.CBufRet.f32 %6947, 2
  %6951 = extractvalue %dx.types.CBufRet.f32 %6947, 3
  %6952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6953 = extractvalue %dx.types.CBufRet.f32 %6952, 0
  %6954 = extractvalue %dx.types.CBufRet.f32 %6952, 1
  %6955 = extractvalue %dx.types.CBufRet.f32 %6952, 2
  %6956 = extractvalue %dx.types.CBufRet.f32 %6952, 3
  %6957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6958 = extractvalue %dx.types.CBufRet.f32 %6957, 0
  %6959 = extractvalue %dx.types.CBufRet.f32 %6957, 1
  %6960 = extractvalue %dx.types.CBufRet.f32 %6957, 2
  %6961 = extractvalue %dx.types.CBufRet.f32 %6957, 3
  %6962 = fmul fast float %6948, %5680
  %6963 = call float @dx.op.tertiary.f32(i32 46, float %5681, float %6949, float %6962)  ; FMad(a,b,c)
  %6964 = call float @dx.op.tertiary.f32(i32 46, float %5682, float %6950, float %6963)  ; FMad(a,b,c)
  %6965 = fadd fast float %6964, %6951
  %6966 = fmul fast float %6953, %5680
  %6967 = call float @dx.op.tertiary.f32(i32 46, float %5681, float %6954, float %6966)  ; FMad(a,b,c)
  %6968 = call float @dx.op.tertiary.f32(i32 46, float %5682, float %6955, float %6967)  ; FMad(a,b,c)
  %6969 = fadd fast float %6968, %6956
  %6970 = fmul fast float %6958, %5680
  %6971 = call float @dx.op.tertiary.f32(i32 46, float %5681, float %6959, float %6970)  ; FMad(a,b,c)
  %6972 = call float @dx.op.tertiary.f32(i32 46, float %5682, float %6960, float %6971)  ; FMad(a,b,c)
  %6973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6974 = extractvalue %dx.types.CBufRet.f32 %6973, 0
  %6975 = extractvalue %dx.types.CBufRet.f32 %6973, 1
  %6976 = extractvalue %dx.types.CBufRet.f32 %6973, 3
  %6977 = fmul fast float %6976, %6965
  %6978 = fmul fast float %6976, %6969
  %6979 = fadd fast float %6977, %6974
  %6980 = fadd fast float %6978, %6975
  %6981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6982 = extractvalue %dx.types.CBufRet.f32 %6981, 0
  %6983 = extractvalue %dx.types.CBufRet.f32 %6981, 1
  %6984 = fsub fast float %6979, %6982
  %6985 = fsub fast float %6980, %6983
  %6986 = fcmp fast olt float %6984, 0.000000e+00
  %6987 = fcmp fast olt float %6985, 0.000000e+00
  %6988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6989 = extractvalue %dx.types.CBufRet.f32 %6988, 0
  %6990 = extractvalue %dx.types.CBufRet.f32 %6988, 1
  %6991 = extractvalue %dx.types.CBufRet.f32 %6988, 2
  %6992 = extractvalue %dx.types.CBufRet.f32 %6988, 3
  %6993 = select i1 %6986, float %6989, float %6991
  %6994 = select i1 %6987, float %6990, float %6992
  %6995 = fmul fast float %6993, %6984
  %6996 = fmul fast float %6994, %6985
  %6997 = call float @dx.op.unary.f32(i32 6, float %6995)  ; FAbs(value)
  %6998 = call float @dx.op.unary.f32(i32 6, float %6996)  ; FAbs(value)
  %6999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7000 = extractvalue %dx.types.CBufRet.f32 %6999, 0
  %7001 = call float @dx.op.binary.f32(i32 35, float %6997, float %6998)  ; FMax(a,b)
  %7002 = fsub fast float %7000, %7001
  %7003 = call float @dx.op.unary.f32(i32 7, float %7002)  ; Saturate(value)
  %7004 = fcmp fast ogt float %7003, 0.000000e+00
  br i1 %7004, label %7005, label %7046, !dx.controlflow.hints !123

; <label>:7005                                    ; preds = %6946
  %7006 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %43, float %6979, float %6980, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7007 = extractvalue %dx.types.ResRet.f32 %7006, 1
  %7008 = fcmp fast ogt float %7007, 0.000000e+00
  br i1 %7008, label %7009, label %7041

; <label>:7009                                    ; preds = %7005
  %7010 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %43, float %6979, float %6980, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7011 = extractvalue %dx.types.ResRet.f32 %7010, 0
  %7012 = extractvalue %dx.types.ResRet.f32 %7010, 1
  %7013 = extractvalue %dx.types.ResRet.f32 %7010, 2
  %7014 = extractvalue %dx.types.ResRet.f32 %7010, 3
  %7015 = fsub fast float 1.000000e+00, %6961
  %7016 = fsub fast float %7015, %6972
  %7017 = fmul fast float %7016, 0x400921FB60000000
  %7018 = fadd fast float %7017, 0x3FF921FB60000000
  %7019 = call float @dx.op.unary.f32(i32 13, float %7018)  ; Sin(value)
  %7020 = fadd fast float %7019, -1.000000e+00
  %7021 = fmul fast float %7020, 0x3FD45F3060000000
  %7022 = fmul fast float %7016, 0x401921FB60000000
  %7023 = fadd fast float %7022, 0x400921FB60000000
  %7024 = call float @dx.op.unary.f32(i32 13, float %7023)  ; Sin(value)
  %7025 = fadd fast float %7024, 0x3E7777A5C0000000
  %7026 = fmul fast float %7025, 0x3FC45F3060000000
  %7027 = fmul fast float %7016, 0x4022D97C80000000
  %7028 = fadd fast float %7027, 0x4012D97C80000000
  %7029 = call float @dx.op.unary.f32(i32 13, float %7028)  ; Sin(value)
  %7030 = fadd fast float %7029, 1.000000e+00
  %7031 = fmul fast float %7030, 0x3FBB2995E0000000
  %7032 = fmul fast float %7016, 0x402921FB60000000
  %7033 = fadd fast float %7032, 0x401921FB60000000
  %7034 = call float @dx.op.unary.f32(i32 13, float %7033)  ; Sin(value)
  %7035 = fadd fast float %7034, 0xBE8777A5C0000000
  %7036 = fmul fast float %7035, 0x3FB45F3060000000
  %7037 = call float @dx.op.dot4.f32(i32 56, float %7011, float %7012, float %7013, float %7014, float %7021, float %7026, float %7031, float %7036)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7038 = fmul fast float %7037, 0xBFF7154760000000
  %7039 = call float @dx.op.unary.f32(i32 21, float %7038)  ; Exp(value)
  %7040 = call float @dx.op.unary.f32(i32 7, float %7039)  ; Saturate(value)
  br label %7041

; <label>:7041                                    ; preds = %7009, %7005
  %7042 = phi float [ %7040, %7009 ], [ 1.000000e+00, %7005 ]
  %7043 = fadd fast float %7042, -1.000000e+00
  %7044 = fmul fast float %7043, %7003
  %7045 = fadd fast float %7044, 1.000000e+00
  br label %7046

; <label>:7046                                    ; preds = %7041, %6946
  %7047 = phi float [ %7045, %7041 ], [ 1.000000e+00, %6946 ]
  %7048 = fmul fast float %7047, %6942
  %7049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7050 = extractvalue %dx.types.CBufRet.f32 %7049, 0
  %7051 = extractvalue %dx.types.CBufRet.f32 %7049, 1
  %7052 = extractvalue %dx.types.CBufRet.f32 %7049, 2
  %7053 = fadd fast float %7050, %191
  %7054 = fadd fast float %7051, %192
  %7055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7056 = extractvalue %dx.types.CBufRet.f32 %7055, 1
  %7057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7058 = extractvalue %dx.types.CBufRet.f32 %7057, 0
  %7059 = extractvalue %dx.types.CBufRet.f32 %7057, 1
  %7060 = extractvalue %dx.types.CBufRet.f32 %7057, 2
  %7061 = fsub fast float -0.000000e+00, %7053
  %7062 = fsub fast float -0.000000e+00, %7054
  %7063 = fsub fast float -0.000000e+00, %193
  %7064 = fsub fast float %7063, %7052
  %7065 = fadd fast float %7064, %7056
  %7066 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7061, float %7062, float %7065)  ; Dot3(ax,ay,az,bx,by,bz)
  %7067 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7058, float %7059, float %7060)  ; Dot3(ax,ay,az,bx,by,bz)
  %7068 = fdiv fast float 1.000000e+00, %7067
  %7069 = fmul fast float %7068, %7066
  %7070 = fmul fast float %7058, %7069
  %7071 = fmul fast float %7059, %7069
  %7072 = fadd fast float %7070, %7053
  %7073 = fadd fast float %7071, %7054
  %7074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7075 = extractvalue %dx.types.CBufRet.f32 %7074, 0
  %7076 = extractvalue %dx.types.CBufRet.f32 %7074, 1
  %7077 = fsub fast float %7072, %7075
  %7078 = fsub fast float %7073, %7076
  %7079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7080 = extractvalue %dx.types.CBufRet.f32 %7079, 2
  %7081 = extractvalue %dx.types.CBufRet.f32 %7079, 3
  %7082 = fmul fast float %7077, %7080
  %7083 = fmul fast float %7078, %7081
  %7084 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7085 = extractvalue %dx.types.CBufRet.i32 %7084, 3
  %7086 = icmp eq i32 %7085, 0
  br i1 %7086, label %7092, label %7087

; <label>:7087                                    ; preds = %7046
  %7088 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %7082, float %7083, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7089 = extractvalue %dx.types.ResRet.f32 %7088, 0
  %7090 = extractvalue %dx.types.ResRet.f32 %7088, 1
  %7091 = extractvalue %dx.types.ResRet.f32 %7088, 2
  br label %7097

; <label>:7092                                    ; preds = %7046
  %7093 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %7082, float %7083, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7094 = extractvalue %dx.types.ResRet.f32 %7093, 0
  %7095 = extractvalue %dx.types.ResRet.f32 %7093, 1
  %7096 = extractvalue %dx.types.ResRet.f32 %7093, 2
  br label %7097

; <label>:7097                                    ; preds = %7092, %7087
  %7098 = phi float [ %7089, %7087 ], [ %7094, %7092 ]
  %7099 = phi float [ %7090, %7087 ], [ %7095, %7092 ]
  %7100 = phi float [ %7091, %7087 ], [ %7096, %7092 ]
  %7101 = extractvalue %dx.types.CBufRet.f32 %7055, 2
  %7102 = fmul fast float %7101, %7098
  %7103 = extractvalue %dx.types.CBufRet.f32 %7055, 0
  %7104 = fsub fast float %7069, %7103
  %7105 = fsub fast float %7104, %7102
  %7106 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7105)  ; FMax(a,b)
  %7107 = fmul fast float %7106, %7099
  %7108 = call float @dx.op.binary.f32(i32 36, float %7100, float %7107)  ; FMin(a,b)
  %7109 = fmul fast float %7108, 0xBFF7154760000000
  %7110 = call float @dx.op.unary.f32(i32 21, float %7109)  ; Exp(value)
  %7111 = fmul fast float %7048, %7110
  br label %7112

; <label>:7112                                    ; preds = %7097, %6941
  %7113 = phi float [ %7111, %7097 ], [ %6942, %6941 ]
  %7114 = call float @dx.op.binary.f32(i32 36, float %7113, float %7113)  ; FMin(a,b)
  %7115 = call float @dx.op.binary.f32(i32 36, float %7113, float %7114)  ; FMin(a,b)
  %7116 = fcmp fast ogt float %7115, 0.000000e+00
  br i1 %7116, label %7117, label %7288, !dx.controlflow.hints !124

; <label>:7117                                    ; preds = %7112
  %7118 = fmul fast float %7113, %5672
  %7119 = fmul fast float %7113, %5673
  %7120 = fmul fast float %7113, %5674
  %7121 = fsub fast float %5661, %4963
  %7122 = fsub fast float %5662, %4964
  %7123 = fsub fast float %5663, %4965
  %7124 = call float @dx.op.dot3.f32(i32 55, float %7121, float %7122, float %7123, float %7121, float %7122, float %7123)  ; Dot3(ax,ay,az,bx,by,bz)
  %7125 = call float @dx.op.unary.f32(i32 25, float %7124)  ; Rsqrt(value)
  %7126 = fmul fast float %7125, %7121
  %7127 = fmul fast float %7125, %7122
  %7128 = fmul fast float %7125, %7123
  %7129 = call float @dx.op.dot3.f32(i32 55, float %5661, float %5662, float %5663, float %4924, float %4925, float %4926)  ; Dot3(ax,ay,az,bx,by,bz)
  %7130 = call float @dx.op.dot3.f32(i32 55, float %4966, float %4967, float %4968, float %7126, float %7127, float %7128)  ; Dot3(ax,ay,az,bx,by,bz)
  %7131 = call float @dx.op.unary.f32(i32 7, float %7129)  ; Saturate(value)
  %7132 = fmul fast float %7131, %7131
  %7133 = fmul fast float %7132, %5656
  %7134 = call float @dx.op.unary.f32(i32 7, float %7133)  ; Saturate(value)
  %7135 = fmul fast float %7134, %7131
  %7136 = call float @dx.op.dot3.f32(i32 55, float %4924, float %4925, float %4926, float %7126, float %7127, float %7128)  ; Dot3(ax,ay,az,bx,by,bz)
  %7137 = fmul fast float %7136, %7136
  %7138 = call float @dx.op.unary.f32(i32 6, float %7129)  ; FAbs(value)
  %7139 = fsub fast float 1.000000e+00, %4989
  %7140 = fmul fast float %4971, %4971
  %7141 = fmul fast float %7140, %7139
  %7142 = fadd fast float %7141, %4989
  %7143 = bitcast float %7142 to i32
  %7144 = ashr i32 %7143, 1
  %7145 = add nsw i32 %7144, 532487669
  %7146 = bitcast i32 %7145 to float
  %7147 = fadd fast float %7146, %4971
  %7148 = fmul fast float %4989, %7137
  %7149 = fsub fast float 1.000000e+00, %7137
  %7150 = fadd fast float %7149, %7148
  %7151 = fmul fast float %7138, %7138
  %7152 = fmul fast float %7151, %7139
  %7153 = fadd fast float %7152, %4989
  %7154 = bitcast float %7153 to i32
  %7155 = ashr i32 %7154, 1
  %7156 = add nsw i32 %7155, 532487669
  %7157 = bitcast i32 %7156 to float
  %7158 = fadd fast float %7157, %7138
  %7159 = fmul fast float %7150, %7150
  %7160 = fmul fast float %7159, %7147
  %7161 = fmul fast float %7160, %7158
  %7162 = fdiv fast float 0x3FF0A00000000000, %7161
  %7163 = fmul fast float %7162, %4989
  %7164 = call float @dx.op.unary.f32(i32 6, float %7130)  ; FAbs(value)
  %7165 = fsub fast float 1.000000e+00, %7164
  %7166 = bitcast float %7165 to i32
  %7167 = sitofp i32 %7166 to float
  %7168 = fmul fast float %7167, 5.000000e+00
  %7169 = fadd fast float %7168, 0xC1EFBF8940000000
  %7170 = fptosi float %7169 to i32
  %7171 = bitcast i32 %7170 to float
  %7172 = fsub fast float 1.000000e+00, %4918
  %7173 = fsub fast float 1.000000e+00, %4919
  %7174 = fsub fast float 1.000000e+00, %4969
  %7175 = fmul fast float %7171, %7172
  %7176 = fmul fast float %7171, %7173
  %7177 = fmul fast float %7171, %7174
  %7178 = fadd fast float %7175, %4918
  %7179 = fadd fast float %7176, %4919
  %7180 = fadd fast float %7177, %4969
  br i1 %5107, label %7181, label %7204

; <label>:7181                                    ; preds = %7117
  %7182 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %43, float %4027, float %7164, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7183 = extractvalue %dx.types.ResRet.f32 %7182, 0
  %7184 = extractvalue %dx.types.ResRet.f32 %7182, 1
  %7185 = extractvalue %dx.types.ResRet.f32 %7182, 2
  %7186 = fadd fast float %7183, -5.000000e-01
  %7187 = fadd fast float %7184, -5.000000e-01
  %7188 = fadd fast float %7185, -5.000000e-01
  %7189 = fmul fast float %4918, 4.000000e+00
  %7190 = fmul fast float %7189, %7172
  %7191 = fmul fast float %7190, %7186
  %7192 = fmul fast float %4919, 4.000000e+00
  %7193 = fmul fast float %7192, %7173
  %7194 = fmul fast float %7193, %7187
  %7195 = fmul fast float %4969, 4.000000e+00
  %7196 = fmul fast float %7195, %7174
  %7197 = fmul fast float %7196, %7188
  %7198 = fadd fast float %7191, %7178
  %7199 = fadd fast float %7194, %7179
  %7200 = fadd fast float %7197, %7180
  %7201 = call float @dx.op.unary.f32(i32 7, float %7198)  ; Saturate(value)
  %7202 = call float @dx.op.unary.f32(i32 7, float %7199)  ; Saturate(value)
  %7203 = call float @dx.op.unary.f32(i32 7, float %7200)  ; Saturate(value)
  br label %7204

; <label>:7204                                    ; preds = %7181, %7117
  %7205 = phi float [ %7201, %7181 ], [ %7178, %7117 ]
  %7206 = phi float [ %7202, %7181 ], [ %7179, %7117 ]
  %7207 = phi float [ %7203, %7181 ], [ %7180, %7117 ]
  %7208 = fmul fast float %7129, 9.843750e-01
  %7209 = fadd fast float %7208, 7.812500e-03
  %7210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %43, float %7209, float %5097, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7211 = extractvalue %dx.types.ResRet.f32 %7210, 2
  %7212 = extractvalue %dx.types.ResRet.f32 %7210, 3
  %7213 = fmul fast float %7211, %4918
  %7214 = fmul fast float %7211, %4919
  %7215 = fmul fast float %7211, %4969
  %7216 = fadd fast float %7213, %7212
  %7217 = fadd fast float %7214, %7212
  %7218 = fadd fast float %7215, %7212
  br i1 %5107, label %7219, label %7242

; <label>:7219                                    ; preds = %7204
  %7220 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %43, float %4027, float %7129, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7221 = extractvalue %dx.types.ResRet.f32 %7220, 0
  %7222 = extractvalue %dx.types.ResRet.f32 %7220, 1
  %7223 = extractvalue %dx.types.ResRet.f32 %7220, 2
  %7224 = fadd fast float %7221, -5.000000e-01
  %7225 = fadd fast float %7222, -5.000000e-01
  %7226 = fadd fast float %7223, -5.000000e-01
  %7227 = fmul fast float %4918, 4.000000e+00
  %7228 = fmul fast float %7227, %7172
  %7229 = fmul fast float %7228, %7224
  %7230 = fmul fast float %4919, 4.000000e+00
  %7231 = fmul fast float %7230, %7173
  %7232 = fmul fast float %7231, %7225
  %7233 = fmul fast float %4969, 4.000000e+00
  %7234 = fmul fast float %7233, %7174
  %7235 = fmul fast float %7234, %7226
  %7236 = fadd fast float %7229, %7216
  %7237 = fadd fast float %7232, %7217
  %7238 = fadd fast float %7235, %7218
  %7239 = call float @dx.op.unary.f32(i32 7, float %7236)  ; Saturate(value)
  %7240 = call float @dx.op.unary.f32(i32 7, float %7237)  ; Saturate(value)
  %7241 = call float @dx.op.unary.f32(i32 7, float %7238)  ; Saturate(value)
  br label %7242

; <label>:7242                                    ; preds = %7219, %7204
  %7243 = phi float [ %7239, %7219 ], [ %7216, %7204 ]
  %7244 = phi float [ %7240, %7219 ], [ %7217, %7204 ]
  %7245 = phi float [ %7241, %7219 ], [ %7218, %7204 ]
  %7246 = call float @dx.op.binary.f32(i32 35, float %7244, float %7245)  ; FMax(a,b)
  %7247 = call float @dx.op.binary.f32(i32 35, float %7243, float %7246)  ; FMax(a,b)
  %7248 = fsub fast float 1.000000e+00, %7247
  %7249 = fmul fast float %7205, %7163
  %7250 = fmul fast float %7206, %7163
  %7251 = fmul fast float %7207, %7163
  %7252 = fsub fast float 1.000000e+00, %7130
  %7253 = bitcast float %7252 to i32
  %7254 = sitofp i32 %7253 to float
  %7255 = fmul fast float %7254, 5.000000e+00
  %7256 = fadd fast float %7255, 0xC1EFBF8940000000
  %7257 = fptosi float %7256 to i32
  %7258 = bitcast i32 %7257 to float
  %7259 = fmul fast float %7258, %4028
  %7260 = fmul fast float %7248, %7259
  %7261 = fmul fast float %7260, %5621
  %7262 = fmul fast float %7260, %5622
  %7263 = fmul fast float %7260, %5623
  %7264 = fadd fast float %7261, %7249
  %7265 = fadd fast float %7262, %7250
  %7266 = fadd fast float %7263, %7251
  %7267 = fmul fast float %7135, %7118
  %7268 = fmul fast float %7267, %7248
  %7269 = fmul fast float %7135, %7119
  %7270 = fmul fast float %7269, %7248
  %7271 = fmul fast float %7135, %7120
  %7272 = fmul fast float %7271, %7248
  %7273 = fmul fast float %7267, %7264
  %7274 = fmul fast float %7269, %7265
  %7275 = fmul fast float %7271, %7266
  %7276 = fadd fast float %7268, %5605
  %7277 = fmul fast float %7276, %4024
  %7278 = fadd fast float %7270, %5606
  %7279 = fmul fast float %7278, %4024
  %7280 = fadd fast float %7272, %5607
  %7281 = fmul fast float %7280, %4024
  %7282 = fadd fast float %7273, %5648
  %7283 = fmul fast float %7282, %4024
  %7284 = fadd fast float %7274, %5651
  %7285 = fmul fast float %7284, %4024
  %7286 = fadd fast float %7275, %5654
  %7287 = fmul fast float %7286, %4024
  br label %7288

; <label>:7288                                    ; preds = %7242, %7112, %5601
  %7289 = phi float [ %5649, %5601 ], [ %5649, %7112 ], [ %7283, %7242 ]
  %7290 = phi float [ %5652, %5601 ], [ %5652, %7112 ], [ %7285, %7242 ]
  %7291 = phi float [ %5655, %5601 ], [ %5655, %7112 ], [ %7287, %7242 ]
  %7292 = phi float [ %5644, %5601 ], [ %5644, %7112 ], [ %7277, %7242 ]
  %7293 = phi float [ %5645, %5601 ], [ %5645, %7112 ], [ %7279, %7242 ]
  %7294 = phi float [ %5646, %5601 ], [ %5646, %7112 ], [ %7281, %7242 ]
  %7295 = fmul fast float %4024, %4024
  %7296 = fsub fast float 1.000000e+00, %7295
  %7297 = call float @dx.op.dot3.f32(i32 55, float %7296, float %7296, float %7296, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7298 = fsub fast float 1.000000e+00, %7297
  %7299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7300 = extractvalue %dx.types.CBufRet.f32 %7299, 0
  %7301 = fmul fast float %7300, %5627
  %7302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7303 = extractvalue %dx.types.CBufRet.f32 %7302, 3
  %7304 = fsub fast float 1.000000e+00, %4032
  %7305 = call float @dx.op.unary.f32(i32 7, float %7304)  ; Saturate(value)
  %7306 = fadd fast float %7294, %4030
  %7307 = fmul fast float %7306, %4032
  %7308 = fmul fast float %7305, %7303
  %7309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7310 = extractvalue %dx.types.CBufRet.f32 %7309, 3
  %7311 = fmul fast float %7292, %4921
  %7312 = fmul fast float %7293, %4922
  %7313 = fmul fast float %7294, %4923
  %7314 = fcmp fast ogt float %91, %213
  %7315 = and i1 %7314, %4071
  %7316 = or i1 %4150, %7315
  %7317 = icmp eq i32 %4070, 2
  %7318 = fcmp fast ole float %91, %213
  %7319 = and i1 %7318, %7317
  %7320 = or i1 %7319, %7316
  br i1 %7315, label %7321, label %7578

; <label>:7321                                    ; preds = %7288
  %7322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7323 = extractvalue %dx.types.CBufRet.f32 %7322, 2
  %7324 = extractvalue %dx.types.CBufRet.f32 %7322, 3
  %7325 = fmul fast float %7323, %104
  %7326 = fmul fast float %7324, %105
  %7327 = call float @dx.op.unary.f32(i32 7, float %7325)  ; Saturate(value)
  %7328 = call float @dx.op.unary.f32(i32 7, float %7326)  ; Saturate(value)
  %7329 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %7327, float %7328, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7330 = extractvalue %dx.types.ResRet.f32 %7329, 0
  %7331 = extractvalue %dx.types.ResRet.f32 %7329, 1
  %7332 = extractvalue %dx.types.ResRet.f32 %7329, 2
  %7333 = extractvalue %dx.types.ResRet.f32 %7329, 3
  %7334 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %7327, float %7328, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7335 = extractvalue %dx.types.ResRet.f32 %7334, 0
  %7336 = extractvalue %dx.types.ResRet.f32 %7334, 1
  %7337 = extractvalue %dx.types.ResRet.f32 %7334, 2
  %7338 = extractvalue %dx.types.ResRet.f32 %7334, 3
  %7339 = call float @dx.op.binary.f32(i32 35, float %7331, float %7332)  ; FMax(a,b)
  %7340 = call float @dx.op.binary.f32(i32 35, float %7330, float %7339)  ; FMax(a,b)
  %7341 = call float @dx.op.binary.f32(i32 35, float %7340, float %7333)  ; FMax(a,b)
  %7342 = call float @dx.op.binary.f32(i32 36, float %7336, float %7337)  ; FMin(a,b)
  %7343 = call float @dx.op.binary.f32(i32 36, float %7335, float %7342)  ; FMin(a,b)
  %7344 = call float @dx.op.binary.f32(i32 36, float %7343, float %7338)  ; FMin(a,b)
  %7345 = fmul fast float %7341, 2.550000e+02
  %7346 = fadd fast float %7345, 0x3F70101020000000
  %7347 = fptoui float %7346 to i32
  %7348 = fmul fast float %7344, 2.550000e+02
  %7349 = fadd fast float %7348, 0x3F70101020000000
  %7350 = fptoui float %7349 to i32
  %7351 = icmp ult i32 %7347, %7350
  br i1 %7351, label %7352, label %7520

; <label>:7352                                    ; preds = %7321
  %7353 = fcmp fast ogt float %90, 9.843750e-01
  %7354 = fadd fast float %91, -4.000000e+00
  %7355 = select i1 %7353, float -4.000000e+00, float %7354
  %7356 = call float @dx.op.binary.f32(i32 35, float %7355, float 0.000000e+00)  ; FMax(a,b)
  %7357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7358 = extractvalue %dx.types.CBufRet.f32 %7357, 0
  %7359 = fadd fast float %7358, %7356
  %7360 = extractvalue %dx.types.CBufRet.f32 %7357, 2
  %7361 = fmul fast float %7359, %7360
  %7362 = call float @dx.op.unary.f32(i32 23, float %7361)  ; Log(value)
  %7363 = extractvalue %dx.types.CBufRet.f32 %7357, 3
  %7364 = fmul fast float %7363, %7362
  %7365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7366 = extractvalue %dx.types.CBufRet.f32 %7365, 2
  %7367 = fmul fast float %7364, %7366
  %7368 = call float @dx.op.unary.f32(i32 7, float %7367)  ; Saturate(value)
  %7369 = uitofp i32 %7347 to float
  %7370 = uitofp i32 %7350 to float
  %7371 = fadd fast float %7369, 5.000000e-01
  %7372 = fadd fast float %7370, 5.000000e-01
  %7373 = fmul fast float %7366, %7371
  %7374 = fmul fast float %7366, %7372
  %7375 = fadd fast float %7373, 0x3F0FFB4800000000
  %7376 = fadd fast float %7374, 0xBF0FFB4800000000
  %7377 = call float @dx.op.binary.f32(i32 35, float %7368, float %7375)  ; FMax(a,b)
  %7378 = call float @dx.op.binary.f32(i32 36, float %7377, float %7376)  ; FMin(a,b)
  %7379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7380 = extractvalue %dx.types.CBufRet.f32 %7379, 1
  %7381 = extractvalue %dx.types.CBufRet.f32 %7379, 2
  %7382 = extractvalue %dx.types.CBufRet.f32 %7379, 0
  %7383 = fmul fast float %7380, %7378
  %7384 = fadd fast float %7382, %7383
  %7385 = fadd fast float %7382, %7381
  %7386 = fsub fast float %7380, %7381
  %7387 = fadd fast float %7386, %7382
  %7388 = call float @dx.op.binary.f32(i32 35, float %7384, float %7385)  ; FMax(a,b)
  %7389 = call float @dx.op.binary.f32(i32 36, float %7388, float %7387)  ; FMin(a,b)
  %7390 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %41, float %7327, float %7328, float %7389, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7391 = extractvalue %dx.types.ResRet.f32 %7390, 0
  %7392 = extractvalue %dx.types.ResRet.f32 %7390, 1
  %7393 = extractvalue %dx.types.ResRet.f32 %7390, 2
  %7394 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7395 = extractvalue %dx.types.CBufRet.i32 %7394, 0
  %7396 = extractvalue %dx.types.CBufRet.i32 %7394, 1
  %7397 = uitofp i32 %7395 to float
  %7398 = uitofp i32 %7396 to float
  %7399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7400 = extractvalue %dx.types.CBufRet.f32 %7399, 0
  %7401 = extractvalue %dx.types.CBufRet.f32 %7399, 1
  %7402 = fmul fast float %7397, %7327
  %7403 = fmul fast float %7398, %7328
  %7404 = fadd fast float %7402, -5.000000e-01
  %7405 = fadd fast float %7403, -5.000000e-01
  %7406 = call float @dx.op.unary.f32(i32 22, float %7404)  ; Frc(value)
  %7407 = call float @dx.op.unary.f32(i32 22, float %7405)  ; Frc(value)
  %7408 = fmul fast float %7406, %7406
  %7409 = fmul fast float %7408, %7406
  %7410 = fsub fast float 3.000000e+00, %7406
  %7411 = fmul fast float %7408, %7410
  %7412 = fmul fast float %7406, 3.000000e+00
  %7413 = fmul fast float %7409, 3.000000e+00
  %7414 = fmul fast float %7408, 6.000000e+00
  %7415 = fsub fast float %7413, %7414
  %7416 = fadd fast float %7415, 4.000000e+00
  %7417 = fmul fast float %7416, 0x3FC5555560000000
  %7418 = fmul fast float %7409, -3.000000e+00
  %7419 = fadd fast float %7408, %7406
  %7420 = fmul fast float %7419, 3.000000e+00
  %7421 = fadd fast float %7418, 1.000000e+00
  %7422 = fadd fast float %7421, %7420
  %7423 = fmul fast float %7409, 0x3FC5555560000000
  %7424 = fmul fast float %7407, %7407
  %7425 = fmul fast float %7424, %7407
  %7426 = fsub fast float 3.000000e+00, %7407
  %7427 = fmul fast float %7424, %7426
  %7428 = fmul fast float %7407, 3.000000e+00
  %7429 = fmul fast float %7425, 3.000000e+00
  %7430 = fmul fast float %7424, 6.000000e+00
  %7431 = fsub fast float %7429, %7430
  %7432 = fadd fast float %7431, 4.000000e+00
  %7433 = fmul fast float %7432, 0x3FC5555560000000
  %7434 = fmul fast float %7425, -3.000000e+00
  %7435 = fadd fast float %7424, %7407
  %7436 = fmul fast float %7435, 3.000000e+00
  %7437 = fadd fast float %7434, 1.000000e+00
  %7438 = fadd fast float %7437, %7436
  %7439 = fmul fast float %7425, 0x3FC5555560000000
  %7440 = fadd fast float %7406, 1.000000e+00
  %7441 = fsub fast float 1.000000e+00, %7412
  %7442 = fadd fast float %7441, %7411
  %7443 = fadd fast float %7442, %7416
  %7444 = fmul fast float %7443, 0x3FC5555560000000
  %7445 = fdiv fast float %7417, %7444
  %7446 = fsub fast float %7440, %7445
  %7447 = fsub fast float 1.000000e+00, %7406
  %7448 = fadd fast float %7422, %7409
  %7449 = fmul fast float %7448, 0x3FC5555560000000
  %7450 = fdiv fast float %7423, %7449
  %7451 = fadd fast float %7447, %7450
  %7452 = fadd fast float %7407, 1.000000e+00
  %7453 = fsub fast float 1.000000e+00, %7428
  %7454 = fadd fast float %7453, %7427
  %7455 = fadd fast float %7454, %7432
  %7456 = fmul fast float %7455, 0x3FC5555560000000
  %7457 = fdiv fast float %7433, %7456
  %7458 = fsub fast float %7452, %7457
  %7459 = fsub fast float 1.000000e+00, %7407
  %7460 = fadd fast float %7438, %7425
  %7461 = fmul fast float %7460, 0x3FC5555560000000
  %7462 = fdiv fast float %7439, %7461
  %7463 = fadd fast float %7462, %7459
  %7464 = fmul fast float %7446, %7400
  %7465 = fsub fast float %7327, %7464
  %7466 = fmul fast float %7451, %7400
  %7467 = fadd fast float %7466, %7327
  %7468 = fmul fast float %7463, %7401
  %7469 = fadd fast float %7468, %7328
  %7470 = fmul fast float %7458, %7401
  %7471 = fsub fast float %7328, %7470
  %7472 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %7465, float %7471, float %7389, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7473 = extractvalue %dx.types.ResRet.f32 %7472, 0
  %7474 = extractvalue %dx.types.ResRet.f32 %7472, 1
  %7475 = extractvalue %dx.types.ResRet.f32 %7472, 2
  %7476 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %7467, float %7471, float %7389, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7477 = extractvalue %dx.types.ResRet.f32 %7476, 0
  %7478 = extractvalue %dx.types.ResRet.f32 %7476, 1
  %7479 = extractvalue %dx.types.ResRet.f32 %7476, 2
  %7480 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %7465, float %7469, float %7389, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7481 = extractvalue %dx.types.ResRet.f32 %7480, 0
  %7482 = extractvalue %dx.types.ResRet.f32 %7480, 1
  %7483 = extractvalue %dx.types.ResRet.f32 %7480, 2
  %7484 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %7467, float %7469, float %7389, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7485 = extractvalue %dx.types.ResRet.f32 %7484, 0
  %7486 = extractvalue %dx.types.ResRet.f32 %7484, 1
  %7487 = extractvalue %dx.types.ResRet.f32 %7484, 2
  %7488 = fsub fast float %7481, %7473
  %7489 = fsub fast float %7482, %7474
  %7490 = fsub fast float %7483, %7475
  %7491 = fmul fast float %7488, %7461
  %7492 = fmul fast float %7489, %7461
  %7493 = fmul fast float %7490, %7461
  %7494 = fadd fast float %7491, %7473
  %7495 = fadd fast float %7492, %7474
  %7496 = fadd fast float %7493, %7475
  %7497 = fsub fast float %7485, %7477
  %7498 = fsub fast float %7486, %7478
  %7499 = fsub fast float %7487, %7479
  %7500 = fmul fast float %7497, %7461
  %7501 = fmul fast float %7498, %7461
  %7502 = fmul fast float %7499, %7461
  %7503 = fsub fast float %7477, %7494
  %7504 = fadd fast float %7503, %7500
  %7505 = fsub fast float %7478, %7495
  %7506 = fadd fast float %7505, %7501
  %7507 = fsub fast float %7479, %7496
  %7508 = fadd fast float %7507, %7502
  %7509 = fmul fast float %7504, %7449
  %7510 = fmul fast float %7506, %7449
  %7511 = fmul fast float %7508, %7449
  %7512 = fadd fast float %7509, %7494
  %7513 = fadd fast float %7510, %7495
  %7514 = fadd fast float %7511, %7496
  %7515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7516 = extractvalue %dx.types.CBufRet.f32 %7515, 1
  %7517 = fmul fast float %7512, %7516
  %7518 = fmul fast float %7513, %7516
  %7519 = fmul fast float %7514, %7516
  br label %7520

; <label>:7520                                    ; preds = %7352, %7321
  %7521 = phi float [ %7391, %7352 ], [ 1.000000e+00, %7321 ]
  %7522 = phi float [ %7392, %7352 ], [ 1.000000e+00, %7321 ]
  %7523 = phi float [ %7393, %7352 ], [ 1.000000e+00, %7321 ]
  %7524 = phi float [ %7517, %7352 ], [ 0.000000e+00, %7321 ]
  %7525 = phi float [ %7518, %7352 ], [ 0.000000e+00, %7321 ]
  %7526 = phi float [ %7519, %7352 ], [ 0.000000e+00, %7321 ]
  %7527 = fmul fast float %7524, %7298
  %7528 = fmul fast float %7525, %7298
  %7529 = fmul fast float %7526, %7298
  %7530 = call float @dx.op.dot3.f32(i32 55, float %7521, float %7522, float %7523, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7531 = call float @dx.op.dot3.f32(i32 55, float %7527, float %7528, float %7529, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7532 = select i1 %252, float %7530, float %7521
  %7533 = select i1 %252, float %7530, float %7522
  %7534 = select i1 %252, float 1.000000e+00, float %7523
  %7535 = select i1 %252, float %7531, float %7527
  %7536 = select i1 %252, float 0.000000e+00, float %7528
  %7537 = select i1 %252, float 0.000000e+00, float %7529
  %7538 = fmul fast float %7532, %7311
  %7539 = fmul fast float %7533, %7312
  %7540 = fmul fast float %7534, %7313
  %7541 = fadd fast float %7538, %7535
  %7542 = fadd fast float %7539, %7536
  %7543 = fadd fast float %7537, %7540
  %7544 = fmul fast float %7532, %7289
  %7545 = fmul fast float %7533, %7290
  %7546 = fmul fast float %7534, %7291
  %7547 = fmul fast float %140, %7323
  %7548 = fmul fast float %142, %7324
  %7549 = fsub fast float 1.000000e+00, %7547
  %7550 = fsub fast float 1.000000e+00, %7548
  %7551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7552 = extractvalue %dx.types.CBufRet.f32 %7551, 0
  %7553 = extractvalue %dx.types.CBufRet.f32 %7551, 1
  %7554 = extractvalue %dx.types.CBufRet.f32 %7551, 2
  %7555 = fmul fast float %7549, %7552
  %7556 = fmul fast float %7549, %7553
  %7557 = fmul fast float %7549, %7554
  %7558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7559 = extractvalue %dx.types.CBufRet.f32 %7558, 0
  %7560 = extractvalue %dx.types.CBufRet.f32 %7558, 1
  %7561 = extractvalue %dx.types.CBufRet.f32 %7558, 2
  %7562 = fmul fast float %7550, %7559
  %7563 = fmul fast float %7550, %7560
  %7564 = fmul fast float %7550, %7561
  %7565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7566 = extractvalue %dx.types.CBufRet.f32 %7565, 0
  %7567 = extractvalue %dx.types.CBufRet.f32 %7565, 1
  %7568 = extractvalue %dx.types.CBufRet.f32 %7565, 2
  %7569 = fadd fast float %7562, %7566
  %7570 = fadd fast float %7569, %7555
  %7571 = fadd fast float %7563, %7567
  %7572 = fadd fast float %7571, %7556
  %7573 = fadd fast float %7564, %7568
  %7574 = fadd fast float %7573, %7557
  %7575 = fmul fast float %7570, %213
  %7576 = fmul fast float %7572, %213
  %7577 = fmul fast float %7574, %213
  br label %7578

; <label>:7578                                    ; preds = %7520, %7288
  %7579 = phi float [ %7575, %7520 ], [ %191, %7288 ]
  %7580 = phi float [ %7576, %7520 ], [ %192, %7288 ]
  %7581 = phi float [ %7577, %7520 ], [ %193, %7288 ]
  %7582 = phi float [ %213, %7520 ], [ %91, %7288 ]
  %7583 = phi float [ %7541, %7520 ], [ %7311, %7288 ]
  %7584 = phi float [ %7542, %7520 ], [ %7312, %7288 ]
  %7585 = phi float [ %7543, %7520 ], [ %7313, %7288 ]
  %7586 = phi float [ %7544, %7520 ], [ %7289, %7288 ]
  %7587 = phi float [ %7545, %7520 ], [ %7290, %7288 ]
  %7588 = phi float [ %7546, %7520 ], [ %7291, %7288 ]
  %7589 = phi float [ %7521, %7520 ], [ 1.000000e+00, %7288 ]
  br i1 %7320, label %8744, label %7590

; <label>:7590                                    ; preds = %7578
  %7591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7592 = extractvalue %dx.types.CBufRet.f32 %7591, 0
  %7593 = extractvalue %dx.types.CBufRet.f32 %7591, 1
  %7594 = extractvalue %dx.types.CBufRet.f32 %7591, 2
  %7595 = extractvalue %dx.types.CBufRet.f32 %7591, 3
  %7596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7597 = extractvalue %dx.types.CBufRet.f32 %7596, 0
  %7598 = extractvalue %dx.types.CBufRet.f32 %7596, 1
  %7599 = extractvalue %dx.types.CBufRet.f32 %7596, 2
  %7600 = extractvalue %dx.types.CBufRet.f32 %7596, 3
  %7601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7602 = extractvalue %dx.types.CBufRet.f32 %7601, 0
  %7603 = extractvalue %dx.types.CBufRet.f32 %7601, 1
  %7604 = extractvalue %dx.types.CBufRet.f32 %7601, 2
  %7605 = extractvalue %dx.types.CBufRet.f32 %7601, 3
  %7606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7607 = extractvalue %dx.types.CBufRet.f32 %7606, 0
  %7608 = extractvalue %dx.types.CBufRet.f32 %7606, 1
  %7609 = extractvalue %dx.types.CBufRet.f32 %7606, 2
  %7610 = extractvalue %dx.types.CBufRet.f32 %7606, 3
  %7611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7612 = extractvalue %dx.types.CBufRet.f32 %7611, 3
  %7613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7614 = extractvalue %dx.types.CBufRet.f32 %7613, 3
  %7615 = extractvalue %dx.types.CBufRet.f32 %7613, 0
  %7616 = extractvalue %dx.types.CBufRet.f32 %7613, 1
  %7617 = extractvalue %dx.types.CBufRet.f32 %7613, 2
  %7618 = fcmp fast olt float %7617, -5.000000e-01
  %7619 = call float @dx.op.dot3.f32(i32 55, float %7579, float %7580, float %7581, float %7579, float %7580, float %7581)  ; Dot3(ax,ay,az,bx,by,bz)
  %7620 = call float @dx.op.unary.f32(i32 25, float %7619)  ; Rsqrt(value)
  %7621 = fmul fast float %7620, %7619
  %7622 = fmul fast float %7620, %7579
  %7623 = fmul fast float %7620, %7580
  %7624 = fmul fast float %7620, %7581
  %7625 = fadd fast float %7621, %7595
  %7626 = call float @dx.op.dot3.f32(i32 55, float %7622, float %7623, float %7624, float %7592, float %7593, float %7594)  ; Dot3(ax,ay,az,bx,by,bz)
  %7627 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7628 = extractvalue %dx.types.CBufRet.i32 %7627, 1
  %7629 = and i32 %7628, 1
  %7630 = icmp ne i32 %7629, 0
  %7631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7632 = extractvalue %dx.types.CBufRet.f32 %7631, 2
  %7633 = fcmp fast ogt float %7632, 0.000000e+00
  %7634 = and i1 %7630, %7633
  br i1 %7634, label %7635, label %8041, !dx.controlflow.hints !125

; <label>:7635                                    ; preds = %7590
  %7636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7637 = extractvalue %dx.types.CBufRet.f32 %7636, 3
  %7638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7639 = extractvalue %dx.types.CBufRet.f32 %7638, 2
  %7640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7641 = extractvalue %dx.types.CBufRet.f32 %7640, 2
  %7642 = fsub fast float %7639, %7641
  %7643 = and i32 %7628, 2
  %7644 = extractvalue %dx.types.CBufRet.i32 %7627, 0
  %7645 = call i32 @dx.op.binary.i32(i32 40, i32 %7644, i32 3)  ; UMin(a,b)
  %7646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7647 = extractvalue %dx.types.CBufRet.f32 %7646, 0
  %7648 = extractvalue %dx.types.CBufRet.f32 %7646, 1
  %7649 = extractvalue %dx.types.CBufRet.f32 %7640, 0
  %7650 = extractvalue %dx.types.CBufRet.f32 %7640, 1
  %7651 = fsub fast float %7647, %7649
  %7652 = fsub fast float %7648, %7650
  %7653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7654 = extractvalue %dx.types.CBufRet.f32 %7653, 0
  %7655 = fcmp fast ogt float %7654, 0.000000e+00
  %7656 = fsub fast float -0.000000e+00, %7651
  %7657 = fsub fast float -0.000000e+00, %7652
  %7658 = call float @dx.op.dot2.f32(i32 54, float %7622, float %7623, float %7622, float %7623)  ; Dot2(ax,ay,bx,by)
  %7659 = call float @dx.op.dot2.f32(i32 54, float %7622, float %7623, float %7656, float %7657)  ; Dot2(ax,ay,bx,by)
  %7660 = fmul fast float %7659, 2.000000e+00
  %7661 = call float @dx.op.dot2.f32(i32 54, float %7656, float %7657, float %7656, float %7657)  ; Dot2(ax,ay,bx,by)
  %7662 = fmul fast float %7654, %7654
  %7663 = fsub fast float %7661, %7662
  %7664 = fmul fast float %7660, %7660
  %7665 = fmul fast float %7658, 4.000000e+00
  %7666 = fmul fast float %7665, %7663
  %7667 = fsub fast float %7664, %7666
  %7668 = fcmp fast ogt float %7667, 0.000000e+00
  br i1 %7668, label %7669, label %7684

; <label>:7669                                    ; preds = %7635
  %7670 = fcmp fast ogt float %7660, 0.000000e+00
  %7671 = call float @dx.op.unary.f32(i32 24, float %7667)  ; Sqrt(value)
  %7672 = fsub fast float -0.000000e+00, %7671
  %7673 = select i1 %7670, float %7671, float %7672
  %7674 = fadd fast float %7673, %7660
  %7675 = fmul float %7674, -5.000000e-01
  %7676 = fdiv fast float %7675, %7658
  %7677 = call float @dx.op.binary.f32(i32 35, float %7676, float 0.000000e+00)  ; FMax(a,b)
  %7678 = call float @dx.op.binary.f32(i32 36, float %7621, float %7677)  ; FMin(a,b)
  %7679 = fdiv fast float %7663, %7675
  %7680 = call float @dx.op.binary.f32(i32 35, float %7679, float 0.000000e+00)  ; FMax(a,b)
  %7681 = call float @dx.op.binary.f32(i32 36, float %7621, float %7680)  ; FMin(a,b)
  %7682 = call float @dx.op.binary.f32(i32 36, float %7678, float %7681)  ; FMin(a,b)
  %7683 = call float @dx.op.binary.f32(i32 35, float %7678, float %7681)  ; FMax(a,b)
  br label %7684

; <label>:7684                                    ; preds = %7669, %7635
  %7685 = phi float [ %7683, %7669 ], [ -1.000000e+00, %7635 ]
  %7686 = phi float [ %7682, %7669 ], [ -1.000000e+00, %7635 ]
  %7687 = phi i1 [ true, %7669 ], [ false, %7635 ]
  %7688 = and i1 %7655, %7687
  br i1 %7688, label %7689, label %7691

; <label>:7689                                    ; preds = %7684
  %7690 = fcmp fast oeq float %7686, %7685
  br i1 %7690, label %7994, label %7692

; <label>:7691                                    ; preds = %7684
  br i1 %7655, label %7994, label %7692

; <label>:7692                                    ; preds = %7691, %7689
  %7693 = phi float [ %7621, %7691 ], [ %7685, %7689 ]
  %7694 = phi float [ 0.000000e+00, %7691 ], [ %7686, %7689 ]
  %7695 = icmp ne i32 %7643, 0
  %7696 = fmul fast float %7693, %7624
  %7697 = fadd fast float %7696, %7637
  %7698 = fmul fast float %7697, %7693
  %7699 = select i1 %7695, float 0.000000e+00, float %7698
  %7700 = fcmp fast oeq float %7624, 0.000000e+00
  %7701 = fdiv fast float %7642, %7624
  %7702 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7701)  ; FMax(a,b)
  %7703 = select i1 %7700, float %7693, float %7702
  %7704 = call float @dx.op.binary.f32(i32 36, float %7693, float %7703)  ; FMin(a,b)
  %7705 = fcmp fast ogt float %7624, 0.000000e+00
  %7706 = fcmp fast olt float %7642, 0.000000e+00
  br i1 %7705, label %7707, label %7764

; <label>:7707                                    ; preds = %7692
  %7708 = icmp eq i32 %7643, 0
  br i1 %7706, label %7709, label %7753

; <label>:7709                                    ; preds = %7707
  %7710 = select i1 %7708, float %7693, float 0.000000e+00
  %7711 = fsub fast float -0.000000e+00, %7710
  %7712 = call float @dx.op.unary.f32(i32 6, float %7711)  ; FAbs(value)
  %7713 = fmul fast float %7710, %7624
  %7714 = fadd fast float %7713, %7637
  %7715 = fmul fast float %7712, %7714
  %7716 = fsub fast float %7699, %7715
  %7717 = fsub fast float %7693, %7712
  %7718 = select i1 %7708, float %7717, float 0.000000e+00
  %7719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7720 = extractvalue %dx.types.CBufRet.f32 %7719, 0
  %7721 = extractvalue %dx.types.CBufRet.f32 %7719, 1
  %7722 = extractvalue %dx.types.CBufRet.f32 %7719, 2
  %7723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7724 = extractvalue %dx.types.CBufRet.f32 %7723, 0
  %7725 = extractvalue %dx.types.CBufRet.f32 %7723, 1
  %7726 = extractvalue %dx.types.CBufRet.f32 %7723, 2
  %7727 = extractvalue %dx.types.CBufRet.f32 %7723, 3
  %7728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7729 = extractvalue %dx.types.CBufRet.f32 %7728, 3
  %7730 = call float @dx.op.binary.f32(i32 36, float %7716, float %7729)  ; FMin(a,b)
  %7731 = fmul fast float %7727, %7718
  %7732 = call float @dx.op.unary.f32(i32 7, float %7731)  ; Saturate(value)
  %7733 = fsub fast float %7724, %7720
  %7734 = fsub fast float %7725, %7721
  %7735 = fsub fast float %7726, %7722
  %7736 = fmul fast float %7732, %7733
  %7737 = fmul fast float %7732, %7734
  %7738 = fmul fast float %7732, %7735
  %7739 = fadd fast float %7736, %7720
  %7740 = fadd fast float %7737, %7721
  %7741 = fadd fast float %7738, %7722
  %7742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7743 = extractvalue %dx.types.CBufRet.f32 %7742, 0
  %7744 = extractvalue %dx.types.CBufRet.f32 %7742, 1
  %7745 = fadd fast float %7744, %7743
  %7746 = call float @dx.op.unary.f32(i32 7, float %7745)  ; Saturate(value)
  %7747 = extractvalue %dx.types.CBufRet.f32 %7742, 2
  %7748 = extractvalue %dx.types.CBufRet.f32 %7742, 3
  %7749 = fadd fast float %7748, %7747
  %7750 = call float @dx.op.unary.f32(i32 7, float %7749)  ; Saturate(value)
  %7751 = fmul fast float %7746, %7730
  %7752 = fmul fast float %7751, %7750
  br label %7994

; <label>:7753                                    ; preds = %7707
  br i1 %7708, label %7754, label %7775

; <label>:7754                                    ; preds = %7753
  %7755 = call float @dx.op.binary.f32(i32 36, float %7704, float %7694)  ; FMin(a,b)
  %7756 = fsub fast float %7704, %7755
  %7757 = fsub fast float %7756, %7693
  %7758 = call float @dx.op.unary.f32(i32 6, float %7757)  ; FAbs(value)
  %7759 = fadd fast float %7756, %7693
  %7760 = fmul fast float %7759, %7624
  %7761 = fadd fast float %7760, %7637
  %7762 = fmul fast float %7761, %7758
  %7763 = fsub fast float %7699, %7762
  br label %7775

; <label>:7764                                    ; preds = %7692
  br i1 %7706, label %7765, label %7775

; <label>:7765                                    ; preds = %7764
  %7766 = call float @dx.op.binary.f32(i32 35, float %7694, float %7704)  ; FMax(a,b)
  %7767 = icmp eq i32 %7643, 0
  %7768 = select i1 %7767, float %7704, float 0.000000e+00
  %7769 = fsub fast float -0.000000e+00, %7768
  %7770 = call float @dx.op.unary.f32(i32 6, float %7769)  ; FAbs(value)
  %7771 = fmul fast float %7768, %7624
  %7772 = fadd fast float %7771, %7637
  %7773 = fmul fast float %7770, %7772
  %7774 = fsub fast float %7699, %7773
  br label %7775

; <label>:7775                                    ; preds = %7765, %7764, %7754, %7753
  %7776 = phi float [ %7694, %7753 ], [ %7694, %7754 ], [ %7766, %7765 ], [ %7694, %7764 ]
  %7777 = phi float [ 0.000000e+00, %7753 ], [ %7758, %7754 ], [ %7770, %7765 ], [ 0.000000e+00, %7764 ]
  %7778 = phi float [ %7699, %7753 ], [ %7763, %7754 ], [ %7774, %7765 ], [ %7699, %7764 ]
  %7779 = phi float [ %7704, %7753 ], [ %7704, %7754 ], [ %7693, %7765 ], [ %7693, %7764 ]
  %7780 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 0
  store float -1.000000e+00, float* %7780, align 4, !tbaa !114, !noalias !126
  %7781 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 1
  store float -1.000000e+00, float* %7781, align 4, !tbaa !114, !noalias !126
  %7782 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 2
  store float -1.000000e+00, float* %7782, align 4, !tbaa !114, !noalias !126
  %7783 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 0
  store float -1.000000e+00, float* %7783, align 4, !tbaa !114, !noalias !126
  %7784 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 1
  store float -1.000000e+00, float* %7784, align 4, !tbaa !114, !noalias !126
  %7785 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 2
  store float -1.000000e+00, float* %7785, align 4, !tbaa !114, !noalias !126
  %7786 = icmp sgt i32 %7645, 0
  br i1 %7786, label %7787, label %7848

; <label>:7787                                    ; preds = %7775
  br label %7788

; <label>:7788                                    ; preds = %7837, %7787
  %7789 = phi i32 [ %7838, %7837 ], [ 0, %7787 ]
  %7790 = phi i32 [ %7839, %7837 ], [ 0, %7787 ]
  %7791 = add nuw i32 %7790, 171
  %7792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 %7791)  ; CBufferLoadLegacy(handle,regIndex)
  %7793 = extractvalue %dx.types.CBufRet.f32 %7792, 0
  %7794 = extractvalue %dx.types.CBufRet.f32 %7792, 1
  %7795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7796 = extractvalue %dx.types.CBufRet.f32 %7795, 0
  %7797 = extractvalue %dx.types.CBufRet.f32 %7795, 1
  %7798 = fsub fast float %7793, %7796
  %7799 = fsub fast float %7794, %7797
  %7800 = extractvalue %dx.types.CBufRet.f32 %7792, 2
  %7801 = fsub fast float -0.000000e+00, %7798
  %7802 = fsub fast float -0.000000e+00, %7799
  %7803 = call float @dx.op.dot2.f32(i32 54, float %7622, float %7623, float %7801, float %7802)  ; Dot2(ax,ay,bx,by)
  %7804 = fmul fast float %7803, 2.000000e+00
  %7805 = call float @dx.op.dot2.f32(i32 54, float %7801, float %7802, float %7801, float %7802)  ; Dot2(ax,ay,bx,by)
  %7806 = fmul fast float %7800, %7800
  %7807 = fsub fast float %7805, %7806
  %7808 = fmul fast float %7804, %7804
  %7809 = fmul fast float %7665, %7807
  %7810 = fsub fast float %7808, %7809
  %7811 = fcmp fast ogt float %7810, 0.000000e+00
  br i1 %7811, label %7812, label %7827

; <label>:7812                                    ; preds = %7788
  %7813 = fcmp fast ogt float %7804, 0.000000e+00
  %7814 = call float @dx.op.unary.f32(i32 24, float %7810)  ; Sqrt(value)
  %7815 = fsub fast float -0.000000e+00, %7814
  %7816 = select i1 %7813, float %7814, float %7815
  %7817 = fadd fast float %7816, %7804
  %7818 = fmul float %7817, -5.000000e-01
  %7819 = fdiv fast float %7818, %7658
  %7820 = call float @dx.op.binary.f32(i32 35, float %7819, float 0.000000e+00)  ; FMax(a,b)
  %7821 = call float @dx.op.binary.f32(i32 36, float %7693, float %7820)  ; FMin(a,b)
  %7822 = fdiv fast float %7807, %7818
  %7823 = call float @dx.op.binary.f32(i32 35, float %7822, float 0.000000e+00)  ; FMax(a,b)
  %7824 = call float @dx.op.binary.f32(i32 36, float %7693, float %7823)  ; FMin(a,b)
  %7825 = call float @dx.op.binary.f32(i32 36, float %7821, float %7824)  ; FMin(a,b)
  %7826 = call float @dx.op.binary.f32(i32 35, float %7821, float %7824)  ; FMax(a,b)
  br label %7827

; <label>:7827                                    ; preds = %7812, %7788
  %7828 = phi float [ %7826, %7812 ], [ -1.000000e+00, %7788 ]
  %7829 = phi float [ %7825, %7812 ], [ -1.000000e+00, %7788 ]
  %7830 = phi i1 [ true, %7812 ], [ false, %7788 ]
  br i1 %7830, label %7831, label %7837

; <label>:7831                                    ; preds = %7827
  %7832 = call float @dx.op.binary.f32(i32 35, float %7776, float %7829)  ; FMax(a,b)
  %7833 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %7790
  store float %7832, float* %7833, align 4, !tbaa !114, !noalias !126
  %7834 = call float @dx.op.binary.f32(i32 35, float %7776, float %7828)  ; FMax(a,b)
  %7835 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %7790
  store float %7834, float* %7835, align 4, !tbaa !114, !noalias !126
  %7836 = add nsw i32 %7789, 1
  br label %7837

; <label>:7837                                    ; preds = %7831, %7827
  %7838 = phi i32 [ %7836, %7831 ], [ %7789, %7827 ]
  %7839 = add nuw nsw i32 %7790, 1
  %7840 = icmp eq i32 %7839, %7645
  br i1 %7840, label %7841, label %7788

; <label>:7841                                    ; preds = %7837
  %7842 = load float, float* %7782, align 4, !tbaa !114, !alias.scope !142, !noalias !145
  %7843 = load float, float* %7781, align 4, !tbaa !114, !alias.scope !148, !noalias !149
  %7844 = load float, float* %7780, align 4, !tbaa !114, !alias.scope !150, !noalias !151
  %7845 = load float, float* %7785, align 4, !tbaa !114, !alias.scope !152, !noalias !155
  %7846 = load float, float* %7784, align 4, !tbaa !114, !alias.scope !158, !noalias !159
  %7847 = load float, float* %7783, align 4, !tbaa !114, !alias.scope !160, !noalias !161
  br label %7848

; <label>:7848                                    ; preds = %7841, %7775
  %7849 = phi float [ -1.000000e+00, %7775 ], [ %7847, %7841 ]
  %7850 = phi float [ -1.000000e+00, %7775 ], [ %7846, %7841 ]
  %7851 = phi float [ -1.000000e+00, %7775 ], [ %7845, %7841 ]
  %7852 = phi float [ -1.000000e+00, %7775 ], [ %7844, %7841 ]
  %7853 = phi float [ -1.000000e+00, %7775 ], [ %7843, %7841 ]
  %7854 = phi float [ -1.000000e+00, %7775 ], [ %7842, %7841 ]
  %7855 = phi i32 [ 0, %7775 ], [ %7838, %7841 ]
  %7856 = call float @dx.op.binary.f32(i32 36, float %7853, float %7854)  ; FMin(a,b)
  %7857 = call float @dx.op.binary.f32(i32 36, float %7852, float %7856)  ; FMin(a,b)
  %7858 = call float @dx.op.binary.f32(i32 35, float %7852, float %7853)  ; FMax(a,b)
  %7859 = call float @dx.op.binary.f32(i32 36, float %7858, float %7854)  ; FMin(a,b)
  %7860 = call float @dx.op.binary.f32(i32 36, float %7852, float %7853)  ; FMin(a,b)
  %7861 = call float @dx.op.binary.f32(i32 35, float %7860, float %7859)  ; FMax(a,b)
  %7862 = call float @dx.op.binary.f32(i32 35, float %7853, float %7854)  ; FMax(a,b)
  %7863 = call float @dx.op.binary.f32(i32 35, float %7852, float %7862)  ; FMax(a,b)
  store float %7857, float* %7780, align 4, !tbaa !114, !alias.scope !150, !noalias !151
  store float %7861, float* %7781, align 4, !tbaa !114, !alias.scope !148, !noalias !149
  store float %7863, float* %7782, align 4, !tbaa !114, !alias.scope !142, !noalias !145
  %7864 = call float @dx.op.binary.f32(i32 36, float %7850, float %7851)  ; FMin(a,b)
  %7865 = call float @dx.op.binary.f32(i32 36, float %7849, float %7864)  ; FMin(a,b)
  %7866 = call float @dx.op.binary.f32(i32 35, float %7849, float %7850)  ; FMax(a,b)
  %7867 = call float @dx.op.binary.f32(i32 36, float %7866, float %7851)  ; FMin(a,b)
  %7868 = call float @dx.op.binary.f32(i32 36, float %7849, float %7850)  ; FMin(a,b)
  %7869 = call float @dx.op.binary.f32(i32 35, float %7868, float %7867)  ; FMax(a,b)
  %7870 = call float @dx.op.binary.f32(i32 35, float %7850, float %7851)  ; FMax(a,b)
  %7871 = call float @dx.op.binary.f32(i32 35, float %7849, float %7870)  ; FMax(a,b)
  store float %7865, float* %7783, align 4, !tbaa !114, !alias.scope !160, !noalias !161
  store float %7869, float* %7784, align 4, !tbaa !114, !alias.scope !158, !noalias !159
  store float %7871, float* %7785, align 4, !tbaa !114, !alias.scope !152, !noalias !155
  %7872 = sub nsw i32 3, %7855
  %7873 = icmp sgt i32 %7872, 2
  br i1 %7873, label %7874, label %7912

; <label>:7874                                    ; preds = %7848
  %7875 = icmp eq i32 %7643, 0
  %7876 = fsub fast float %7693, %7777
  %7877 = select i1 %7875, float %7876, float %7777
  %7878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7879 = extractvalue %dx.types.CBufRet.f32 %7878, 0
  %7880 = extractvalue %dx.types.CBufRet.f32 %7878, 1
  %7881 = extractvalue %dx.types.CBufRet.f32 %7878, 2
  %7882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7883 = extractvalue %dx.types.CBufRet.f32 %7882, 0
  %7884 = extractvalue %dx.types.CBufRet.f32 %7882, 1
  %7885 = extractvalue %dx.types.CBufRet.f32 %7882, 2
  %7886 = extractvalue %dx.types.CBufRet.f32 %7882, 3
  %7887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7888 = extractvalue %dx.types.CBufRet.f32 %7887, 3
  %7889 = call float @dx.op.binary.f32(i32 36, float %7778, float %7888)  ; FMin(a,b)
  %7890 = fmul fast float %7886, %7877
  %7891 = call float @dx.op.unary.f32(i32 7, float %7890)  ; Saturate(value)
  %7892 = fsub fast float %7883, %7879
  %7893 = fsub fast float %7884, %7880
  %7894 = fsub fast float %7885, %7881
  %7895 = fmul fast float %7891, %7892
  %7896 = fmul fast float %7891, %7893
  %7897 = fmul fast float %7891, %7894
  %7898 = fadd fast float %7895, %7879
  %7899 = fadd fast float %7896, %7880
  %7900 = fadd fast float %7897, %7881
  %7901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7902 = extractvalue %dx.types.CBufRet.f32 %7901, 0
  %7903 = extractvalue %dx.types.CBufRet.f32 %7901, 1
  %7904 = fadd fast float %7903, %7902
  %7905 = call float @dx.op.unary.f32(i32 7, float %7904)  ; Saturate(value)
  %7906 = extractvalue %dx.types.CBufRet.f32 %7901, 2
  %7907 = extractvalue %dx.types.CBufRet.f32 %7901, 3
  %7908 = fadd fast float %7907, %7906
  %7909 = call float @dx.op.unary.f32(i32 7, float %7908)  ; Saturate(value)
  %7910 = fmul fast float %7905, %7889
  %7911 = fmul fast float %7910, %7909
  br label %7994

; <label>:7912                                    ; preds = %7848
  %7913 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %7872
  %7914 = load float, float* %7913, align 4, !tbaa !114, !noalias !126
  %7915 = fcmp fast olt float %7914, %7779
  %7916 = icmp sgt i32 %7855, 0
  %7917 = and i1 %7916, %7915
  br i1 %7917, label %7918, label %7955

; <label>:7918                                    ; preds = %7912
  br label %7919

; <label>:7919                                    ; preds = %7948, %7918
  %7920 = phi float [ %7949, %7948 ], [ %7777, %7918 ]
  %7921 = phi float [ %7950, %7948 ], [ %7778, %7918 ]
  %7922 = phi float [ %7930, %7948 ], [ %7914, %7918 ]
  %7923 = phi i32 [ %7927, %7948 ], [ %7872, %7918 ]
  %7924 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %7923
  %7925 = load float, float* %7924, align 4, !tbaa !114, !noalias !126
  %7926 = icmp slt i32 %7923, 2
  %7927 = add nsw i32 %7923, 1
  %7928 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %7927
  %7929 = load float, float* %7928, align 4, !tbaa !114, !noalias !126
  %7930 = select i1 %7926, float %7929, float %7693
  %7931 = call float @dx.op.binary.f32(i32 36, float %7930, float %7925)  ; FMin(a,b)
  %7932 = call float @dx.op.binary.f32(i32 36, float %7779, float %7931)  ; FMin(a,b)
  %7933 = icmp eq i32 %7643, 0
  %7934 = fadd fast float %7932, %7922
  %7935 = fmul fast float %7934, %7624
  %7936 = fadd fast float %7935, %7637
  br i1 %7933, label %7942, label %7937

; <label>:7937                                    ; preds = %7919
  %7938 = fsub fast float %7932, %7922
  %7939 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7938)  ; FMax(a,b)
  %7940 = fmul fast float %7939, %7936
  %7941 = fadd fast float %7940, %7921
  br label %7948

; <label>:7942                                    ; preds = %7919
  %7943 = fsub fast float %7922, %7932
  %7944 = call float @dx.op.unary.f32(i32 6, float %7943)  ; FAbs(value)
  %7945 = fadd fast float %7944, %7920
  %7946 = fmul fast float %7944, %7936
  %7947 = fsub fast float %7921, %7946
  br label %7948

; <label>:7948                                    ; preds = %7942, %7937
  %7949 = phi float [ %7939, %7937 ], [ %7945, %7942 ]
  %7950 = phi float [ %7941, %7937 ], [ %7947, %7942 ]
  %7951 = fcmp fast olt float %7930, %7779
  %7952 = icmp slt i32 %7927, 3
  %7953 = and i1 %7952, %7951
  br i1 %7953, label %7919, label %7954

; <label>:7954                                    ; preds = %7948
  br label %7955

; <label>:7955                                    ; preds = %7954, %7912
  %7956 = phi float [ %7777, %7912 ], [ %7949, %7954 ]
  %7957 = phi float [ %7778, %7912 ], [ %7950, %7954 ]
  %7958 = fsub fast float %7693, %7956
  %7959 = select i1 %7695, float %7956, float %7958
  %7960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7961 = extractvalue %dx.types.CBufRet.f32 %7960, 0
  %7962 = extractvalue %dx.types.CBufRet.f32 %7960, 1
  %7963 = extractvalue %dx.types.CBufRet.f32 %7960, 2
  %7964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7965 = extractvalue %dx.types.CBufRet.f32 %7964, 0
  %7966 = extractvalue %dx.types.CBufRet.f32 %7964, 1
  %7967 = extractvalue %dx.types.CBufRet.f32 %7964, 2
  %7968 = extractvalue %dx.types.CBufRet.f32 %7964, 3
  %7969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7970 = extractvalue %dx.types.CBufRet.f32 %7969, 3
  %7971 = call float @dx.op.binary.f32(i32 36, float %7957, float %7970)  ; FMin(a,b)
  %7972 = fmul fast float %7968, %7959
  %7973 = call float @dx.op.unary.f32(i32 7, float %7972)  ; Saturate(value)
  %7974 = fsub fast float %7965, %7961
  %7975 = fsub fast float %7966, %7962
  %7976 = fsub fast float %7967, %7963
  %7977 = fmul fast float %7973, %7974
  %7978 = fmul fast float %7973, %7975
  %7979 = fmul fast float %7973, %7976
  %7980 = fadd fast float %7977, %7961
  %7981 = fadd fast float %7978, %7962
  %7982 = fadd fast float %7979, %7963
  %7983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7984 = extractvalue %dx.types.CBufRet.f32 %7983, 0
  %7985 = extractvalue %dx.types.CBufRet.f32 %7983, 1
  %7986 = fadd fast float %7985, %7984
  %7987 = call float @dx.op.unary.f32(i32 7, float %7986)  ; Saturate(value)
  %7988 = extractvalue %dx.types.CBufRet.f32 %7983, 2
  %7989 = extractvalue %dx.types.CBufRet.f32 %7983, 3
  %7990 = fadd fast float %7989, %7988
  %7991 = call float @dx.op.unary.f32(i32 7, float %7990)  ; Saturate(value)
  %7992 = fmul fast float %7987, %7971
  %7993 = fmul fast float %7992, %7991
  br label %7994

; <label>:7994                                    ; preds = %7955, %7874, %7709, %7691, %7689
  %7995 = phi float [ %7718, %7709 ], [ %7877, %7874 ], [ %7959, %7955 ], [ 0.000000e+00, %7689 ], [ 0.000000e+00, %7691 ]
  %7996 = phi float [ %7752, %7709 ], [ %7911, %7874 ], [ %7993, %7955 ], [ 0.000000e+00, %7689 ], [ 0.000000e+00, %7691 ]
  %7997 = phi float [ %7739, %7709 ], [ %7898, %7874 ], [ %7980, %7955 ], [ 0.000000e+00, %7689 ], [ 0.000000e+00, %7691 ]
  %7998 = phi float [ %7740, %7709 ], [ %7899, %7874 ], [ %7981, %7955 ], [ 0.000000e+00, %7689 ], [ 0.000000e+00, %7691 ]
  %7999 = phi float [ %7741, %7709 ], [ %7900, %7874 ], [ %7982, %7955 ], [ 0.000000e+00, %7689 ], [ 0.000000e+00, %7691 ]
  %8000 = fmul fast float %7632, %7996
  %8001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8002 = extractvalue %dx.types.CBufRet.f32 %8001, 2
  %8003 = fsub fast float %7639, %8002
  %8004 = fcmp fast olt float %8000, -2.000000e+01
  %8005 = call float @dx.op.unary.f32(i32 21, float %8000)  ; Exp(value)
  %8006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8007 = extractvalue %dx.types.CBufRet.f32 %8006, 2
  %8008 = extractvalue %dx.types.CBufRet.f32 %8006, 3
  %8009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8010 = extractvalue %dx.types.CBufRet.f32 %8009, 2
  %8011 = fmul fast float %8008, %8003
  %8012 = call float @dx.op.unary.f32(i32 7, float %8011)  ; Saturate(value)
  %8013 = fsub fast float 1.000000e+00, %8012
  %8014 = fmul fast float %7624, 5.000000e-01
  %8015 = fadd fast float %8014, 5.000000e-01
  %8016 = call float @dx.op.unary.f32(i32 7, float %8015)  ; Saturate(value)
  %8017 = fsub fast float 1.000000e+00, %8016
  %8018 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8013)  ; FMax(a,b)
  %8019 = fdiv fast float %8017, %8018
  %8020 = fsub fast float %8003, %7581
  %8021 = call float @dx.op.unary.f32(i32 6, float %8020)  ; FAbs(value)
  %8022 = fmul fast float %8021, %8007
  %8023 = call float @dx.op.unary.f32(i32 7, float %8019)  ; Saturate(value)
  %8024 = fsub fast float 1.000000e+00, %8022
  %8025 = fmul fast float %8024, %8023
  %8026 = fadd fast float %8025, %8022
  %8027 = fmul fast float %8010, %8003
  %8028 = call float @dx.op.unary.f32(i32 7, float %8027)  ; Saturate(value)
  %8029 = fsub fast float 1.000000e+00, %8026
  %8030 = fmul fast float %8029, %8028
  %8031 = fadd fast float %8030, %8026
  %8032 = call float @dx.op.unary.f32(i32 7, float %8031)  ; Saturate(value)
  %8033 = fadd fast float %8005, -1.000000e+00
  %8034 = select i1 %8004, float -1.000000e+00, float %8033
  %8035 = fmul fast float %8032, %8034
  %8036 = fadd fast float %8035, 1.000000e+00
  %8037 = fsub fast float -0.000000e+00, %8035
  %8038 = fmul fast float %7997, %8037
  %8039 = fmul fast float %7998, %8037
  %8040 = fmul fast float %7999, %8037
  br label %8041

; <label>:8041                                    ; preds = %7994, %7590
  %8042 = phi float [ %7995, %7994 ], [ 0.000000e+00, %7590 ]
  %8043 = phi float [ %8036, %7994 ], [ 1.000000e+00, %7590 ]
  %8044 = phi float [ %8038, %7994 ], [ 0.000000e+00, %7590 ]
  %8045 = phi float [ %8039, %7994 ], [ 0.000000e+00, %7590 ]
  %8046 = phi float [ %8040, %7994 ], [ 0.000000e+00, %7590 ]
  %8047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8048 = extractvalue %dx.types.CBufRet.f32 %8047, 1
  %8049 = fsub fast float 1.000000e+00, %8043
  %8050 = fmul fast float %8049, %7625
  %8051 = fmul fast float %8050, %8048
  %8052 = fsub fast float %7625, %8051
  br i1 %7618, label %8053, label %8082, !dx.controlflow.hints !162

; <label>:8053                                    ; preds = %8041
  %8054 = fmul fast float %7626, %7615
  %8055 = fadd fast float %8054, %7616
  %8056 = call float @dx.op.unary.f32(i32 7, float %8055)  ; Saturate(value)
  %8057 = fmul fast float %7597, %8052
  %8058 = fsub fast float -0.000000e+00, %8057
  %8059 = fmul fast float %7598, %8052
  %8060 = fsub fast float -0.000000e+00, %8059
  %8061 = call float @dx.op.unary.f32(i32 21, float %8058)  ; Exp(value)
  %8062 = call float @dx.op.unary.f32(i32 21, float %8060)  ; Exp(value)
  %8063 = call float @dx.op.binary.f32(i32 35, float %7605, float %8061)  ; FMax(a,b)
  %8064 = call float @dx.op.binary.f32(i32 35, float %7605, float %8062)  ; FMax(a,b)
  %8065 = fsub fast float %8064, %8063
  %8066 = fmul fast float %8065, %8056
  %8067 = fadd fast float %8066, %8063
  %8068 = call float @dx.op.unary.f32(i32 7, float %8067)  ; Saturate(value)
  %8069 = fsub fast float %7602, %7607
  %8070 = fsub fast float %7603, %7608
  %8071 = fsub fast float %7604, %7609
  %8072 = fmul fast float %8056, %8069
  %8073 = fmul fast float %8056, %8070
  %8074 = fmul fast float %8056, %8071
  %8075 = fadd fast float %8072, %7607
  %8076 = fadd fast float %8073, %7608
  %8077 = fadd fast float %8074, %7609
  %8078 = fsub fast float 1.000000e+00, %8068
  %8079 = fmul fast float %8078, %8075
  %8080 = fmul fast float %8078, %8076
  %8081 = fmul fast float %8078, %8077
  br label %8141

; <label>:8082                                    ; preds = %8041
  %8083 = fmul fast float %8052, %7614
  %8084 = call float @dx.op.unary.f32(i32 7, float %8083)  ; Saturate(value)
  %8085 = fsub fast float 2.000000e+00, %8084
  %8086 = fmul fast float %8084, 9.921875e-01
  %8087 = fmul fast float %8086, %8085
  %8088 = fadd fast float %8087, 3.906250e-03
  %8089 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %43, float %8088, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8090 = extractvalue %dx.types.ResRet.f32 %8089, 0
  %8091 = fsub fast float %8084, %8090
  %8092 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8091)  ; FMax(a,b)
  %8093 = fmul fast float %7600, %7581
  %8094 = call float @dx.op.unary.f32(i32 6, float %8093)  ; FAbs(value)
  %8095 = fcmp fast ogt float %8094, 0x3EB0C6F7A0000000
  br i1 %8095, label %8096, label %8102, !dx.controlflow.hints !163

; <label>:8096                                    ; preds = %8082
  %8097 = fmul fast float %8093, 0xBFF7154760000000
  %8098 = call float @dx.op.unary.f32(i32 21, float %8097)  ; Exp(value)
  %8099 = fsub fast float 1.000000e+00, %8098
  %8100 = fdiv fast float %8099, %8093
  %8101 = fmul fast float %8100, %7610
  br label %8102

; <label>:8102                                    ; preds = %8096, %8082
  %8103 = phi float [ %8101, %8096 ], [ %7610, %8082 ]
  %8104 = fadd fast float %8103, %7612
  %8105 = fmul fast float %8104, %8092
  %8106 = fmul fast float %7597, %8105
  %8107 = fsub fast float -0.000000e+00, %8106
  %8108 = fmul fast float %7598, %8105
  %8109 = fsub fast float -0.000000e+00, %8108
  %8110 = fmul fast float %7599, %8105
  %8111 = fsub fast float -0.000000e+00, %8110
  %8112 = call float @dx.op.unary.f32(i32 21, float %8107)  ; Exp(value)
  %8113 = call float @dx.op.unary.f32(i32 21, float %8109)  ; Exp(value)
  %8114 = call float @dx.op.unary.f32(i32 21, float %8111)  ; Exp(value)
  %8115 = fmul fast float %7626, %7626
  %8116 = fadd fast float %8115, 1.000000e+00
  %8117 = fmul fast float %8116, 0x3FAE8EC8A0000000
  %8118 = fmul fast float %8117, %7607
  %8119 = fmul fast float %8117, %7608
  %8120 = fmul fast float %8117, %7609
  %8121 = fmul fast float %7626, %7605
  %8122 = fsub fast float 1.000000e+00, %8121
  %8123 = fmul fast float %7605, %7605
  %8124 = fsub fast float 1.000000e+00, %8123
  %8125 = fmul fast float %8124, 0x3FB45F3060000000
  %8126 = fmul fast float %8122, %8122
  %8127 = fdiv fast float 1.000000e+00, %8126
  %8128 = fmul fast float %8125, %8127
  %8129 = fmul fast float %8128, %7602
  %8130 = fmul fast float %8128, %7603
  %8131 = fmul fast float %8128, %7604
  %8132 = fadd fast float %8129, %8118
  %8133 = fadd fast float %8130, %8119
  %8134 = fadd fast float %8131, %8120
  %8135 = fsub fast float 1.000000e+00, %8112
  %8136 = fsub fast float 1.000000e+00, %8113
  %8137 = fsub fast float 1.000000e+00, %8114
  %8138 = fmul fast float %8132, %8135
  %8139 = fmul fast float %8133, %8136
  %8140 = fmul fast float %8134, %8137
  br label %8141

; <label>:8141                                    ; preds = %8102, %8053
  %8142 = phi float [ %8079, %8053 ], [ %8138, %8102 ]
  %8143 = phi float [ %8080, %8053 ], [ %8139, %8102 ]
  %8144 = phi float [ %8081, %8053 ], [ %8140, %8102 ]
  %8145 = phi float [ %8068, %8053 ], [ %8112, %8102 ]
  %8146 = phi float [ %8068, %8053 ], [ %8113, %8102 ]
  %8147 = phi float [ %8068, %8053 ], [ %8114, %8102 ]
  br i1 %7634, label %8148, label %8346, !dx.controlflow.hints !164

; <label>:8148                                    ; preds = %8141
  %8149 = extractvalue %dx.types.CBufRet.f32 %8047, 0
  %8150 = fmul fast float %8149, %8049
  %8151 = fsub fast float %8044, %8142
  %8152 = fsub fast float %8045, %8143
  %8153 = fsub fast float %8046, %8144
  %8154 = fmul fast float %8150, %8151
  %8155 = fmul fast float %8150, %8152
  %8156 = fmul fast float %8150, %8153
  %8157 = fadd fast float %8154, %8142
  %8158 = fadd fast float %8155, %8143
  %8159 = fadd fast float %8156, %8144
  %8160 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8145)  ; FMax(a,b)
  %8161 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8146)  ; FMax(a,b)
  %8162 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8147)  ; FMax(a,b)
  %8163 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8043)  ; FMax(a,b)
  %8164 = call float @dx.op.binary.f32(i32 35, float %8042, float %8052)  ; FMax(a,b)
  %8165 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8164)  ; FMax(a,b)
  %8166 = fdiv fast float %8042, %8165
  %8167 = call float @dx.op.unary.f32(i32 7, float %8166)  ; Saturate(value)
  %8168 = fdiv fast float %8052, %8165
  %8169 = call float @dx.op.unary.f32(i32 7, float %8168)  ; Saturate(value)
  %8170 = fcmp fast une float %8163, 1.000000e+00
  br i1 %8170, label %8171, label %8184, !dx.controlflow.hints !165

; <label>:8171                                    ; preds = %8148
  %8172 = call float @dx.op.unary.f32(i32 23, float %8163)  ; Log(value)
  %8173 = fmul fast float %8172, 0x3FE62E4300000000
  %8174 = fmul fast float %8044, %8173
  %8175 = fsub fast float -0.000000e+00, %8174
  %8176 = fmul fast float %8045, %8173
  %8177 = fsub fast float -0.000000e+00, %8176
  %8178 = fmul fast float %8046, %8173
  %8179 = fsub fast float -0.000000e+00, %8178
  %8180 = fsub fast float 1.000000e+00, %8163
  %8181 = fdiv fast float %8175, %8180
  %8182 = fdiv fast float %8177, %8180
  %8183 = fdiv fast float %8179, %8180
  br label %8184

; <label>:8184                                    ; preds = %8171, %8148
  %8185 = phi float [ %8181, %8171 ], [ %8044, %8148 ]
  %8186 = phi float [ %8182, %8171 ], [ %8045, %8148 ]
  %8187 = phi float [ %8183, %8171 ], [ %8046, %8148 ]
  %8188 = phi float [ %8173, %8171 ], [ 0.000000e+00, %8148 ]
  %8189 = fcmp fast une float %8160, 1.000000e+00
  br i1 %8189, label %8190, label %8197, !dx.controlflow.hints !166

; <label>:8190                                    ; preds = %8184
  %8191 = call float @dx.op.unary.f32(i32 23, float %8160)  ; Log(value)
  %8192 = fmul fast float %8191, 0x3FE62E4300000000
  %8193 = fmul fast float %8157, %8192
  %8194 = fsub fast float -0.000000e+00, %8193
  %8195 = fsub fast float 1.000000e+00, %8160
  %8196 = fdiv fast float %8194, %8195
  br label %8197

; <label>:8197                                    ; preds = %8190, %8184
  %8198 = phi float [ %8196, %8190 ], [ %8157, %8184 ]
  %8199 = phi float [ %8192, %8190 ], [ 0.000000e+00, %8184 ]
  %8200 = fcmp fast une float %8161, 1.000000e+00
  br i1 %8200, label %8201, label %8208, !dx.controlflow.hints !166

; <label>:8201                                    ; preds = %8197
  %8202 = call float @dx.op.unary.f32(i32 23, float %8161)  ; Log(value)
  %8203 = fmul fast float %8202, 0x3FE62E4300000000
  %8204 = fmul fast float %8158, %8203
  %8205 = fsub fast float -0.000000e+00, %8204
  %8206 = fsub fast float 1.000000e+00, %8161
  %8207 = fdiv fast float %8205, %8206
  br label %8208

; <label>:8208                                    ; preds = %8201, %8197
  %8209 = phi float [ %8207, %8201 ], [ %8158, %8197 ]
  %8210 = phi float [ %8203, %8201 ], [ 0.000000e+00, %8197 ]
  %8211 = fcmp fast une float %8162, 1.000000e+00
  br i1 %8211, label %8212, label %8219, !dx.controlflow.hints !166

; <label>:8212                                    ; preds = %8208
  %8213 = call float @dx.op.unary.f32(i32 23, float %8162)  ; Log(value)
  %8214 = fmul fast float %8213, 0x3FE62E4300000000
  %8215 = fmul fast float %8159, %8214
  %8216 = fsub fast float -0.000000e+00, %8215
  %8217 = fsub fast float 1.000000e+00, %8162
  %8218 = fdiv fast float %8216, %8217
  br label %8219

; <label>:8219                                    ; preds = %8212, %8208
  %8220 = phi float [ %8218, %8212 ], [ %8159, %8208 ]
  %8221 = phi float [ %8214, %8212 ], [ 0.000000e+00, %8208 ]
  %8222 = fmul fast float %8185, %8169
  %8223 = fmul fast float %8186, %8169
  %8224 = fmul fast float %8187, %8169
  %8225 = fmul fast float %8188, %8169
  %8226 = fmul fast float %8198, %8167
  %8227 = fmul fast float %8209, %8167
  %8228 = fmul fast float %8220, %8167
  %8229 = fmul fast float %8199, %8167
  %8230 = fmul fast float %8210, %8167
  %8231 = fmul fast float %8221, %8167
  %8232 = fadd fast float %8226, %8222
  %8233 = fadd fast float %8227, %8223
  %8234 = fadd fast float %8228, %8224
  %8235 = fadd fast float %8229, %8225
  %8236 = fadd fast float %8230, %8225
  %8237 = fadd fast float %8231, %8225
  %8238 = fcmp fast une float %8235, 0.000000e+00
  br i1 %8238, label %8239, label %8246, !dx.controlflow.hints !167

; <label>:8239                                    ; preds = %8219
  %8240 = fmul fast float %8235, 0x3FF7154760000000
  %8241 = call float @dx.op.unary.f32(i32 21, float %8240)  ; Exp(value)
  %8242 = fsub fast float 1.000000e+00, %8241
  %8243 = fmul fast float %8232, %8242
  %8244 = fsub fast float -0.000000e+00, %8243
  %8245 = fdiv fast float %8244, %8235
  br label %8246

; <label>:8246                                    ; preds = %8239, %8219
  %8247 = phi float [ %8241, %8239 ], [ 1.000000e+00, %8219 ]
  %8248 = phi float [ %8245, %8239 ], [ %8232, %8219 ]
  %8249 = fcmp fast une float %8236, 0.000000e+00
  br i1 %8249, label %8250, label %8257, !dx.controlflow.hints !167

; <label>:8250                                    ; preds = %8246
  %8251 = fmul fast float %8236, 0x3FF7154760000000
  %8252 = call float @dx.op.unary.f32(i32 21, float %8251)  ; Exp(value)
  %8253 = fsub fast float 1.000000e+00, %8252
  %8254 = fmul fast float %8233, %8253
  %8255 = fsub fast float -0.000000e+00, %8254
  %8256 = fdiv fast float %8255, %8236
  br label %8257

; <label>:8257                                    ; preds = %8250, %8246
  %8258 = phi float [ %8252, %8250 ], [ 1.000000e+00, %8246 ]
  %8259 = phi float [ %8256, %8250 ], [ %8233, %8246 ]
  %8260 = fcmp fast une float %8237, 0.000000e+00
  br i1 %8260, label %8261, label %8268, !dx.controlflow.hints !167

; <label>:8261                                    ; preds = %8257
  %8262 = fmul fast float %8237, 0x3FF7154760000000
  %8263 = call float @dx.op.unary.f32(i32 21, float %8262)  ; Exp(value)
  %8264 = fsub fast float 1.000000e+00, %8263
  %8265 = fmul fast float %8234, %8264
  %8266 = fsub fast float -0.000000e+00, %8265
  %8267 = fdiv fast float %8266, %8237
  br label %8268

; <label>:8268                                    ; preds = %8261, %8257
  %8269 = phi float [ %8263, %8261 ], [ 1.000000e+00, %8257 ]
  %8270 = phi float [ %8267, %8261 ], [ %8234, %8257 ]
  %8271 = fcmp fast ogt float %8167, %8169
  br i1 %8271, label %8272, label %8292

; <label>:8272                                    ; preds = %8268
  %8273 = fsub fast float 1.000000e+00, %8169
  %8274 = fmul fast float %8185, %8273
  %8275 = fmul fast float %8186, %8273
  %8276 = fmul fast float %8187, %8273
  %8277 = fmul fast float %8188, %8273
  %8278 = fcmp fast une float %8277, 0.000000e+00
  br i1 %8278, label %8279, label %8330, !dx.controlflow.hints !168

; <label>:8279                                    ; preds = %8272
  %8280 = fmul fast float %8277, 0x3FF7154760000000
  %8281 = call float @dx.op.unary.f32(i32 21, float %8280)  ; Exp(value)
  %8282 = fsub fast float 1.000000e+00, %8281
  %8283 = fmul fast float %8274, %8282
  %8284 = fsub fast float -0.000000e+00, %8283
  %8285 = fmul fast float %8275, %8282
  %8286 = fsub fast float -0.000000e+00, %8285
  %8287 = fmul fast float %8276, %8282
  %8288 = fsub fast float -0.000000e+00, %8287
  %8289 = fdiv fast float %8284, %8277
  %8290 = fdiv fast float %8286, %8277
  %8291 = fdiv fast float %8288, %8277
  br label %8330

; <label>:8292                                    ; preds = %8268
  %8293 = fsub fast float 1.000000e+00, %8167
  %8294 = fmul fast float %8198, %8293
  %8295 = fmul fast float %8209, %8293
  %8296 = fmul fast float %8220, %8293
  %8297 = fmul fast float %8199, %8293
  %8298 = fmul fast float %8210, %8293
  %8299 = fmul fast float %8221, %8293
  %8300 = fcmp fast une float %8297, 0.000000e+00
  br i1 %8300, label %8301, label %8308, !dx.controlflow.hints !167

; <label>:8301                                    ; preds = %8292
  %8302 = fmul fast float %8297, 0x3FF7154760000000
  %8303 = call float @dx.op.unary.f32(i32 21, float %8302)  ; Exp(value)
  %8304 = fsub fast float 1.000000e+00, %8303
  %8305 = fmul fast float %8294, %8304
  %8306 = fsub fast float -0.000000e+00, %8305
  %8307 = fdiv fast float %8306, %8297
  br label %8308

; <label>:8308                                    ; preds = %8301, %8292
  %8309 = phi float [ %8307, %8301 ], [ %8294, %8292 ]
  %8310 = phi float [ %8303, %8301 ], [ 1.000000e+00, %8292 ]
  %8311 = fcmp fast une float %8298, 0.000000e+00
  br i1 %8311, label %8312, label %8319, !dx.controlflow.hints !167

; <label>:8312                                    ; preds = %8308
  %8313 = fmul fast float %8298, 0x3FF7154760000000
  %8314 = call float @dx.op.unary.f32(i32 21, float %8313)  ; Exp(value)
  %8315 = fsub fast float 1.000000e+00, %8314
  %8316 = fmul fast float %8295, %8315
  %8317 = fsub fast float -0.000000e+00, %8316
  %8318 = fdiv fast float %8317, %8298
  br label %8319

; <label>:8319                                    ; preds = %8312, %8308
  %8320 = phi float [ %8318, %8312 ], [ %8295, %8308 ]
  %8321 = phi float [ %8314, %8312 ], [ 1.000000e+00, %8308 ]
  %8322 = fcmp fast une float %8299, 0.000000e+00
  br i1 %8322, label %8323, label %8330, !dx.controlflow.hints !167

; <label>:8323                                    ; preds = %8319
  %8324 = fmul fast float %8299, 0x3FF7154760000000
  %8325 = call float @dx.op.unary.f32(i32 21, float %8324)  ; Exp(value)
  %8326 = fsub fast float 1.000000e+00, %8325
  %8327 = fmul fast float %8296, %8326
  %8328 = fsub fast float -0.000000e+00, %8327
  %8329 = fdiv fast float %8328, %8299
  br label %8330

; <label>:8330                                    ; preds = %8323, %8319, %8279, %8272
  %8331 = phi float [ %8329, %8323 ], [ %8291, %8279 ], [ %8276, %8272 ], [ %8296, %8319 ]
  %8332 = phi float [ %8320, %8323 ], [ %8290, %8279 ], [ %8275, %8272 ], [ %8320, %8319 ]
  %8333 = phi float [ %8309, %8323 ], [ %8289, %8279 ], [ %8274, %8272 ], [ %8309, %8319 ]
  %8334 = phi float [ %8325, %8323 ], [ %8281, %8279 ], [ 1.000000e+00, %8272 ], [ 1.000000e+00, %8319 ]
  %8335 = phi float [ %8321, %8323 ], [ %8281, %8279 ], [ 1.000000e+00, %8272 ], [ %8321, %8319 ]
  %8336 = phi float [ %8310, %8323 ], [ %8281, %8279 ], [ 1.000000e+00, %8272 ], [ %8310, %8319 ]
  %8337 = fmul fast float %8336, %8248
  %8338 = fmul fast float %8335, %8259
  %8339 = fmul fast float %8334, %8270
  %8340 = fadd fast float %8337, %8333
  %8341 = fadd fast float %8338, %8332
  %8342 = fadd fast float %8339, %8331
  %8343 = fmul fast float %8336, %8247
  %8344 = fmul fast float %8335, %8258
  %8345 = fmul fast float %8334, %8269
  br label %8346

; <label>:8346                                    ; preds = %8330, %8141
  %8347 = phi float [ %8345, %8330 ], [ %8147, %8141 ]
  %8348 = phi float [ %8344, %8330 ], [ %8146, %8141 ]
  %8349 = phi float [ %8343, %8330 ], [ %8145, %8141 ]
  %8350 = phi float [ %8342, %8330 ], [ %8144, %8141 ]
  %8351 = phi float [ %8341, %8330 ], [ %8143, %8141 ]
  %8352 = phi float [ %8340, %8330 ], [ %8142, %8141 ]
  %8353 = fmul fast float %8352, %7298
  %8354 = fmul fast float %8351, %7298
  %8355 = fmul fast float %8350, %7298
  %8356 = fmul fast float %8349, %7589
  %8357 = call float @dx.op.dot3.f32(i32 55, float %8349, float %8348, float %8347, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8358 = call float @dx.op.dot3.f32(i32 55, float %8353, float %8354, float %8355, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8359 = select i1 %252, float %8357, float %8349
  %8360 = select i1 %252, float %8357, float %8348
  %8361 = select i1 %252, float 1.000000e+00, float %8347
  %8362 = select i1 %252, float %8358, float %8353
  %8363 = select i1 %252, float 0.000000e+00, float %8354
  %8364 = select i1 %252, float 0.000000e+00, float %8355
  %8365 = fmul fast float %8359, %7583
  %8366 = fmul fast float %8360, %7584
  %8367 = fmul fast float %8361, %7585
  %8368 = fadd fast float %8365, %8362
  %8369 = fadd fast float %8366, %8363
  %8370 = fadd fast float %8364, %8367
  %8371 = fmul fast float %8359, %7586
  %8372 = fmul fast float %8360, %7587
  %8373 = fmul fast float %8361, %7588
  %8374 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8375 = extractvalue %dx.types.CBufRet.i32 %8374, 0
  %8376 = icmp eq i32 %8375, 0
  br i1 %8376, label %8744, label %8377, !dx.controlflow.hints !169

; <label>:8377                                    ; preds = %8346
  %8378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8379 = extractvalue %dx.types.CBufRet.f32 %8378, 2
  %8380 = extractvalue %dx.types.CBufRet.f32 %8378, 3
  %8381 = fmul fast float %8379, %104
  %8382 = fmul fast float %8380, %105
  %8383 = fmul fast float %8381, 2.000000e+00
  %8384 = fmul fast float %8382, 2.000000e+00
  %8385 = fsub fast float 1.000000e+00, %8383
  %8386 = fsub fast float 1.000000e+00, %8384
  %8387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8388 = extractvalue %dx.types.CBufRet.f32 %8387, 0
  %8389 = extractvalue %dx.types.CBufRet.f32 %8387, 1
  %8390 = extractvalue %dx.types.CBufRet.f32 %8387, 2
  %8391 = fmul fast float %8385, %8388
  %8392 = fmul fast float %8385, %8389
  %8393 = fmul fast float %8385, %8390
  %8394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8395 = extractvalue %dx.types.CBufRet.f32 %8394, 0
  %8396 = extractvalue %dx.types.CBufRet.f32 %8394, 1
  %8397 = extractvalue %dx.types.CBufRet.f32 %8394, 2
  %8398 = fmul fast float %8386, %8395
  %8399 = fmul fast float %8386, %8396
  %8400 = fmul fast float %8386, %8397
  %8401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8402 = extractvalue %dx.types.CBufRet.f32 %8401, 0
  %8403 = extractvalue %dx.types.CBufRet.f32 %8401, 1
  %8404 = extractvalue %dx.types.CBufRet.f32 %8401, 2
  %8405 = fadd fast float %8398, %8402
  %8406 = fadd fast float %8405, %8391
  %8407 = fadd fast float %8399, %8403
  %8408 = fadd fast float %8407, %8392
  %8409 = fadd fast float %8400, %8404
  %8410 = fadd fast float %8409, %8393
  %8411 = fmul fast float %8406, %7582
  %8412 = fmul fast float %8408, %7582
  %8413 = fmul fast float %8410, %7582
  %8414 = fmul fast float %8411, %8411
  %8415 = fmul fast float %8412, %8412
  %8416 = fadd fast float %8414, %8415
  %8417 = fmul fast float %8413, %8413
  %8418 = fadd fast float %8416, %8417
  %8419 = call float @dx.op.unary.f32(i32 24, float %8418)  ; Sqrt(value)
  %8420 = extractvalue %dx.types.CBufRet.f32 %7309, 0
  %8421 = fsub fast float %8419, %8420
  %8422 = extractvalue %dx.types.CBufRet.f32 %7309, 2
  %8423 = fmul fast float %8421, %8422
  %8424 = call float @dx.op.unary.f32(i32 7, float %8423)  ; Saturate(value)
  %8425 = fadd fast float %8424, -5.000000e-01
  %8426 = fmul fast float %8425, 2.000000e+00
  %8427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8428 = extractvalue %dx.types.CBufRet.f32 %8427, 2
  %8429 = call float @dx.op.binary.f32(i32 36, float %8428, float %8426)  ; FMin(a,b)
  %8430 = fsub fast float -0.000000e+00, %8428
  %8431 = fcmp fast ogt float %8429, %8430
  br i1 %8431, label %8432, label %8744, !dx.controlflow.hints !170

; <label>:8432                                    ; preds = %8377
  %8433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8434 = extractvalue %dx.types.CBufRet.f32 %8433, 3
  %8435 = fcmp fast ogt float %8434, 0.000000e+00
  br i1 %8435, label %8436, label %8511, !dx.controlflow.hints !171

; <label>:8436                                    ; preds = %8432
  %8437 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %8438 = extractvalue %dx.types.Dimensions %8437, 0
  %8439 = sitofp i32 %8438 to float
  %8440 = extractvalue %dx.types.Dimensions %8437, 1
  %8441 = sitofp i32 %8440 to float
  %8442 = fmul fast float %8381, %8439
  %8443 = fmul fast float %8382, %8441
  %8444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8445 = extractvalue %dx.types.CBufRet.f32 %8444, 1
  %8446 = fsub fast float -0.000000e+00, %8445
  %8447 = fptoui float %8446 to i32
  %8448 = fptoui float %8442 to i32
  %8449 = fptoui float %8443 to i32
  %8450 = and i32 %8447, 31
  %8451 = lshr i32 %8448, %8450
  %8452 = lshr i32 %8449, %8450
  %8453 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %25, i32 %8447, i32 %8451, i32 %8452, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8454 = extractvalue %dx.types.ResRet.f32 %8453, 0
  %8455 = fcmp fast olt float %8454, -1.000000e+00
  %8456 = fcmp fast ogt float %8454, -1.000000e+00
  %8457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8458 = extractvalue %dx.types.CBufRet.f32 %8457, 1
  %8459 = select i1 %8456, float %8458, float 1.000000e+00
  %8460 = fadd fast float %8454, 1.000000e+00
  %8461 = fmul fast float %8459, %8460
  %8462 = call float @dx.op.unary.f32(i32 6, float %8461)  ; FAbs(value)
  %8463 = extractvalue %dx.types.CBufRet.f32 %8457, 3
  %8464 = fcmp fast oge float %8462, %8463
  %8465 = select i1 %8464, float 0x4197782600000000, float %8462
  %8466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8467 = extractvalue %dx.types.CBufRet.f32 %8466, 0
  %8468 = extractvalue %dx.types.CBufRet.f32 %8466, 1
  %8469 = extractvalue %dx.types.CBufRet.f32 %8466, 2
  %8470 = select i1 %8455, float %8467, float %8388
  %8471 = select i1 %8455, float %8468, float %8389
  %8472 = select i1 %8455, float %8469, float %8390
  %8473 = fmul fast float %8470, %8385
  %8474 = fmul fast float %8471, %8385
  %8475 = fmul fast float %8472, %8385
  %8476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8477 = extractvalue %dx.types.CBufRet.f32 %8476, 0
  %8478 = extractvalue %dx.types.CBufRet.f32 %8476, 1
  %8479 = extractvalue %dx.types.CBufRet.f32 %8476, 2
  %8480 = select i1 %8455, float %8477, float %8395
  %8481 = select i1 %8455, float %8478, float %8396
  %8482 = select i1 %8455, float %8479, float %8397
  %8483 = fmul fast float %8480, %8386
  %8484 = fmul fast float %8481, %8386
  %8485 = fmul fast float %8482, %8386
  %8486 = fadd fast float %8483, %8473
  %8487 = fadd fast float %8484, %8474
  %8488 = fadd fast float %8485, %8475
  %8489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8490 = extractvalue %dx.types.CBufRet.f32 %8489, 0
  %8491 = extractvalue %dx.types.CBufRet.f32 %8489, 1
  %8492 = extractvalue %dx.types.CBufRet.f32 %8489, 2
  %8493 = select i1 %8455, float %8490, float %8402
  %8494 = select i1 %8455, float %8491, float %8403
  %8495 = select i1 %8455, float %8492, float %8404
  %8496 = fadd fast float %8486, %8493
  %8497 = fadd fast float %8487, %8494
  %8498 = fadd fast float %8488, %8495
  %8499 = fmul fast float %8496, %8465
  %8500 = fmul fast float %8497, %8465
  %8501 = fmul fast float %8498, %8465
  %8502 = fmul fast float %8499, %8499
  %8503 = fmul fast float %8500, %8500
  %8504 = fadd fast float %8502, %8503
  %8505 = fmul fast float %8501, %8501
  %8506 = fadd fast float %8504, %8505
  %8507 = call float @dx.op.unary.f32(i32 24, float %8506)  ; Sqrt(value)
  %8508 = fsub fast float %8507, %8420
  %8509 = fmul fast float %8508, %8422
  %8510 = call float @dx.op.unary.f32(i32 7, float %8509)  ; Saturate(value)
  br label %8511

; <label>:8511                                    ; preds = %8436, %8432
  %8512 = phi float [ %8510, %8436 ], [ 1.000000e+00, %8432 ]
  %8513 = fmul fast float %8429, 5.000000e-01
  %8514 = fadd fast float %8513, 5.000000e-01
  %8515 = call float @dx.op.unary.f32(i32 22, float %8514)  ; Frc(value)
  %8516 = call float @dx.op.unary.f32(i32 27, float %8515)  ; Round_ni(value)
  %8517 = call float @dx.op.unary.f32(i32 22, float %8515)  ; Frc(value)
  %8518 = fmul fast float %8517, 2.000000e+00
  %8519 = fadd fast float %8518, -1.000000e+00
  %8520 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %43, float %8381, float %8382, float %8516, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8521 = extractvalue %dx.types.ResRet.f32 %8520, 0
  %8522 = extractvalue %dx.types.ResRet.f32 %8520, 1
  %8523 = extractvalue %dx.types.ResRet.f32 %8520, 2
  %8524 = extractvalue %dx.types.ResRet.f32 %8520, 3
  %8525 = fadd fast float %8521, -5.000000e-01
  %8526 = fadd fast float %8523, -5.000000e-01
  %8527 = fmul fast float %8525, 0xBFD5555560000000
  %8528 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8526, float %8527)  ; FMad(a,b,c)
  %8529 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8522, float 0.000000e+00)  ; FMad(a,b,c)
  %8530 = fadd fast float %8529, %8524
  %8531 = fmul fast float %8525, -7.500000e-01
  %8532 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8526, float %8531)  ; FMad(a,b,c)
  %8533 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8522, float 0.000000e+00)  ; FMad(a,b,c)
  %8534 = fadd fast float %8533, %8524
  %8535 = call float @dx.op.binary.f32(i32 35, float %8528, float -1.000000e+00)  ; FMax(a,b)
  %8536 = call float @dx.op.binary.f32(i32 35, float %8530, float -1.000000e+00)  ; FMax(a,b)
  %8537 = call float @dx.op.binary.f32(i32 35, float %8532, float -1.000000e+00)  ; FMax(a,b)
  %8538 = call float @dx.op.binary.f32(i32 35, float %8534, float -1.000000e+00)  ; FMax(a,b)
  %8539 = call float @dx.op.binary.f32(i32 36, float %8535, float 1.000000e+00)  ; FMin(a,b)
  %8540 = call float @dx.op.binary.f32(i32 36, float %8536, float 1.000000e+00)  ; FMin(a,b)
  %8541 = call float @dx.op.binary.f32(i32 36, float %8537, float 1.000000e+00)  ; FMin(a,b)
  %8542 = call float @dx.op.binary.f32(i32 36, float %8538, float 1.000000e+00)  ; FMin(a,b)
  %8543 = fcmp fast olt float %8539, 0x3FEFFF8020000000
  br i1 %8543, label %8544, label %8659, !dx.controlflow.hints !172

; <label>:8544                                    ; preds = %8511
  %8545 = extractvalue %dx.types.CBufRet.f32 %8427, 3
  %8546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8547 = extractvalue %dx.types.CBufRet.f32 %8546, 0
  %8548 = extractvalue %dx.types.CBufRet.f32 %8546, 1
  %8549 = extractvalue %dx.types.CBufRet.f32 %8546, 2
  %8550 = extractvalue %dx.types.CBufRet.f32 %8546, 3
  %8551 = fsub fast float %8547, %8539
  %8552 = fsub fast float %8548, %8540
  %8553 = fsub fast float %8549, %8541
  %8554 = fsub fast float %8550, %8542
  %8555 = fmul fast float %8551, %8545
  %8556 = fmul fast float %8552, %8545
  %8557 = fmul fast float %8553, %8545
  %8558 = fmul fast float %8554, %8545
  %8559 = fadd fast float %8555, %8539
  %8560 = fadd fast float %8556, %8540
  %8561 = fsub fast float -0.000000e+00, %8560
  %8562 = fadd fast float %8557, %8541
  %8563 = fadd fast float %8558, %8542
  %8564 = fmul fast float %8559, %8559
  %8565 = fsub fast float %8560, %8564
  %8566 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8565)  ; FMax(a,b)
  %8567 = fdiv fast float 1.000000e+00, %8566
  %8568 = fmul fast float %8560, %8559
  %8569 = fsub fast float %8562, %8568
  %8570 = fsub fast float %8519, %8559
  %8571 = fmul fast float %8519, %8519
  %8572 = fsub fast float %8571, %8560
  %8573 = fmul fast float %8570, %8567
  %8574 = fmul fast float %8573, %8569
  %8575 = fsub fast float %8572, %8574
  %8576 = fmul fast float %8560, %8560
  %8577 = fsub fast float %8563, %8576
  %8578 = fmul fast float %8569, %8569
  %8579 = fmul fast float %8578, %8567
  %8580 = fsub fast float %8577, %8579
  %8581 = fdiv fast float %8575, %8580
  %8582 = fmul fast float %8569, %8581
  %8583 = fsub fast float %8570, %8582
  %8584 = fmul fast float %8583, %8567
  %8585 = fmul fast float %8584, %8559
  %8586 = fsub fast float 1.000000e+00, %8585
  %8587 = fmul fast float %8560, %8581
  %8588 = fsub fast float %8586, %8587
  %8589 = fmul fast float %8584, %8584
  %8590 = fmul fast float %8581, 4.000000e+00
  %8591 = fmul fast float %8590, %8588
  %8592 = fsub fast float %8589, %8591
  %8593 = call float @dx.op.unary.f32(i32 24, float %8592)  ; Sqrt(value)
  %8594 = fcmp fast oge float %8584, 0.000000e+00
  %8595 = fsub fast float -0.000000e+00, %8593
  %8596 = select i1 %8594, float %8595, float %8593
  %8597 = fsub fast float %8596, %8584
  %8598 = fdiv fast float %8597, %8581
  %8599 = fdiv fast float %8588, %8597
  %8600 = fmul fast float %8598, 5.000000e-01
  %8601 = fmul fast float %8599, 2.000000e+00
  %8602 = select i1 %8594, float %8600, float %8601
  %8603 = select i1 %8594, float %8601, float %8600
  %8604 = call float @dx.op.binary.f32(i32 35, float %8602, float %8603)  ; FMax(a,b)
  %8605 = call float @dx.op.binary.f32(i32 36, float %8602, float %8603)  ; FMin(a,b)
  %8606 = fcmp fast ogt float %8519, %8605
  br i1 %8606, label %8607, label %8617

; <label>:8607                                    ; preds = %8544
  %8608 = fsub fast float %8519, %8605
  %8609 = fsub fast float %8604, %8605
  %8610 = fmul fast float %8608, %8609
  %8611 = fmul fast float %8604, %8519
  %8612 = fadd fast float %8604, %8519
  %8613 = fmul fast float %8612, %8559
  %8614 = fadd fast float %8611, %8560
  %8615 = fsub fast float %8614, %8613
  %8616 = fdiv fast float %8615, %8610
  br label %8617

; <label>:8617                                    ; preds = %8607, %8544
  %8618 = phi float [ %8616, %8607 ], [ 0.000000e+00, %8544 ]
  %8619 = fcmp fast ogt float %8519, %8604
  %8620 = fsub fast float %8519, %8604
  br i1 %8619, label %8621, label %8631

; <label>:8621                                    ; preds = %8617
  %8622 = fsub fast float %8604, %8605
  %8623 = fmul fast float %8622, %8620
  %8624 = fmul fast float %8605, %8519
  %8625 = fadd fast float %8605, %8519
  %8626 = fmul fast float %8625, %8559
  %8627 = fsub fast float %8561, %8624
  %8628 = fadd fast float %8627, %8626
  %8629 = fdiv fast float %8628, %8623
  %8630 = fadd fast float %8629, %8618
  br label %8631

; <label>:8631                                    ; preds = %8621, %8617
  %8632 = phi float [ %8630, %8621 ], [ %8618, %8617 ]
  %8633 = fsub fast float %8519, %8605
  %8634 = fmul fast float %8633, %8620
  %8635 = fmul fast float %8605, %8604
  %8636 = fadd fast float %8605, %8604
  %8637 = fmul fast float %8636, %8559
  %8638 = fadd fast float %8635, %8560
  %8639 = fsub fast float %8638, %8637
  %8640 = fdiv fast float %8639, %8634
  %8641 = call float @dx.op.unary.f32(i32 7, float %8632)  ; Saturate(value)
  %8642 = fcmp fast oeq float %7310, 0.000000e+00
  %8643 = extractvalue %dx.types.CBufRet.f32 %8427, 0
  %8644 = fcmp fast oeq float %8643, 0.000000e+00
  %8645 = or i1 %8642, %8644
  %8646 = fmul fast float %8643, 2.000000e+00
  %8647 = fadd fast float %8428, %8429
  %8648 = fdiv fast float %8647, %8646
  %8649 = call float @dx.op.unary.f32(i32 7, float %8648)  ; Saturate(value)
  %8650 = fmul fast float %8649, 2.000000e+00
  %8651 = fsub fast float 3.000000e+00, %8650
  %8652 = fmul fast float %8649, %8649
  %8653 = fmul fast float %8652, %8651
  %8654 = select i1 %8645, float 1.000000e+00, float %8653
  %8655 = fmul fast float %8640, %7310
  %8656 = fadd fast float %8641, %8655
  %8657 = call float @dx.op.unary.f32(i32 7, float %8656)  ; Saturate(value)
  %8658 = fmul fast float %8654, %8657
  br label %8659

; <label>:8659                                    ; preds = %8631, %8511
  %8660 = phi float [ %8658, %8631 ], [ 0.000000e+00, %8511 ]
  %8661 = fsub fast float 1.000000e+00, %8660
  %8662 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %43, float %8381, float %8382, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8663 = extractvalue %dx.types.ResRet.f32 %8662, 0
  %8664 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8665 = extractvalue %dx.types.CBufRet.i32 %8664, 2
  %8666 = icmp eq i32 %8665, 0
  br i1 %8666, label %8672, label %8667

; <label>:8667                                    ; preds = %8659
  %8668 = call float @dx.op.unary.f32(i32 7, float %8660)  ; Saturate(value)
  %8669 = fadd fast float %8663, -1.000000e+00
  %8670 = fmul fast float %8668, %8669
  %8671 = fadd fast float %8670, 1.000000e+00
  br label %8672

; <label>:8672                                    ; preds = %8667, %8659
  %8673 = phi float [ %8671, %8667 ], [ %8661, %8659 ]
  br i1 %8435, label %8674, label %8692

; <label>:8674                                    ; preds = %8672
  %8675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8676 = extractvalue %dx.types.CBufRet.f32 %8675, 1
  %8677 = fsub fast float %8512, %8676
  %8678 = call float @dx.op.unary.f32(i32 7, float %8677)  ; Saturate(value)
  %8679 = fsub fast float %8512, %8434
  %8680 = call float @dx.op.unary.f32(i32 7, float %8679)  ; Saturate(value)
  %8681 = fsub fast float %8678, %8680
  %8682 = fsub fast float %8514, %8680
  %8683 = fdiv fast float %8682, %8681
  %8684 = call float @dx.op.unary.f32(i32 7, float %8683)  ; Saturate(value)
  %8685 = fmul fast float %8684, 2.000000e+00
  %8686 = fsub fast float 3.000000e+00, %8685
  %8687 = fsub fast float %8663, %8673
  %8688 = fmul fast float %8684, %8684
  %8689 = fmul fast float %8688, %8687
  %8690 = fmul fast float %8689, %8686
  %8691 = fadd fast float %8690, %8673
  br label %8692

; <label>:8692                                    ; preds = %8674, %8672
  %8693 = phi float [ %8691, %8674 ], [ %8673, %8672 ]
  %8694 = call float @dx.op.binary.f32(i32 35, float %8663, float %8693)  ; FMax(a,b)
  %8695 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8696 = extractvalue %dx.types.CBufRet.i32 %8695, 2
  %8697 = and i32 %8696, 1
  %8698 = icmp eq i32 %8697, 0
  %8699 = fcmp fast une float %8694, 1.000000e+00
  %8700 = and i1 %8699, %8698
  br i1 %8700, label %8701, label %8720

; <label>:8701                                    ; preds = %8692
  %8702 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %43, float %8381, float %8382, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8703 = extractvalue %dx.types.ResRet.f32 %8702, 0
  %8704 = extractvalue %dx.types.ResRet.f32 %8702, 1
  %8705 = extractvalue %dx.types.ResRet.f32 %8702, 2
  %8706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8707 = extractvalue %dx.types.CBufRet.f32 %8706, 1
  %8708 = fmul fast float %8707, %8703
  %8709 = fmul fast float %8707, %8704
  %8710 = fmul fast float %8707, %8705
  %8711 = fcmp fast ogt float %8663, 0x3FEFFF2E40000000
  %8712 = fsub fast float 1.000000e+00, %8694
  %8713 = fsub fast float 1.000000e+00, %8663
  %8714 = fdiv fast float %8712, %8713
  %8715 = call float @dx.op.unary.f32(i32 7, float %8714)  ; Saturate(value)
  %8716 = select i1 %8711, float 0.000000e+00, float %8715
  %8717 = fmul fast float %8708, %8716
  %8718 = fmul fast float %8709, %8716
  %8719 = fmul fast float %8710, %8716
  br label %8720

; <label>:8720                                    ; preds = %8701, %8692
  %8721 = phi float [ 0.000000e+00, %8692 ], [ %8717, %8701 ]
  %8722 = phi float [ 0.000000e+00, %8692 ], [ %8718, %8701 ]
  %8723 = phi float [ 0.000000e+00, %8692 ], [ %8719, %8701 ]
  %8724 = fmul fast float %8721, %7298
  %8725 = fmul fast float %8722, %7298
  %8726 = fmul fast float %8723, %7298
  %8727 = fmul fast float %8694, %8356
  %8728 = call float @dx.op.dot3.f32(i32 55, float %8694, float %8694, float %8694, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8729 = call float @dx.op.dot3.f32(i32 55, float %8724, float %8725, float %8726, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8730 = select i1 %252, float %8728, float %8694
  %8731 = select i1 %252, float 1.000000e+00, float %8694
  %8732 = select i1 %252, float %8729, float %8724
  %8733 = select i1 %252, float 0.000000e+00, float %8725
  %8734 = select i1 %252, float 0.000000e+00, float %8726
  %8735 = fmul fast float %8730, %8368
  %8736 = fmul fast float %8730, %8369
  %8737 = fmul fast float %8731, %8370
  %8738 = fadd fast float %8735, %8732
  %8739 = fadd fast float %8736, %8733
  %8740 = fadd fast float %8734, %8737
  %8741 = fmul fast float %8730, %8371
  %8742 = fmul fast float %8730, %8372
  %8743 = fmul fast float %8731, %8373
  br label %8744

; <label>:8744                                    ; preds = %8720, %8377, %8346, %7578
  %8745 = phi float [ %7583, %7578 ], [ %8368, %8346 ], [ %8738, %8720 ], [ %8368, %8377 ]
  %8746 = phi float [ %7584, %7578 ], [ %8369, %8346 ], [ %8739, %8720 ], [ %8369, %8377 ]
  %8747 = phi float [ %7585, %7578 ], [ %8370, %8346 ], [ %8740, %8720 ], [ %8370, %8377 ]
  %8748 = phi float [ %7586, %7578 ], [ %8371, %8346 ], [ %8741, %8720 ], [ %8371, %8377 ]
  %8749 = phi float [ %7587, %7578 ], [ %8372, %8346 ], [ %8742, %8720 ], [ %8372, %8377 ]
  %8750 = phi float [ %7588, %7578 ], [ %8373, %8346 ], [ %8743, %8720 ], [ %8373, %8377 ]
  %8751 = phi float [ %7589, %7578 ], [ %8356, %8346 ], [ %8727, %8720 ], [ %8356, %8377 ]
  %8752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8753 = extractvalue %dx.types.CBufRet.f32 %8752, 2
  %8754 = extractvalue %dx.types.CBufRet.f32 %8752, 3
  %8755 = fmul fast float %8753, %104
  %8756 = fmul fast float %8754, %105
  %8757 = call float @dx.op.unary.f32(i32 7, float %8755)  ; Saturate(value)
  %8758 = call float @dx.op.unary.f32(i32 7, float %8756)  ; Saturate(value)
  %8759 = select i1 %7320, i32 2, i32 0
  %8760 = or i32 %8759, 1
  %8761 = uitofp i32 %8760 to float
  %8762 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %8757, float %8758, float %8761, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8763 = extractvalue %dx.types.ResRet.f32 %8762, 0
  %8764 = extractvalue %dx.types.ResRet.f32 %8762, 1
  %8765 = extractvalue %dx.types.ResRet.f32 %8762, 2
  %8766 = extractvalue %dx.types.ResRet.f32 %8762, 3
  %8767 = add nuw nsw i32 %8759, 2
  %8768 = uitofp i32 %8767 to float
  %8769 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %8757, float %8758, float %8768, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8770 = extractvalue %dx.types.ResRet.f32 %8769, 0
  %8771 = extractvalue %dx.types.ResRet.f32 %8769, 1
  %8772 = extractvalue %dx.types.ResRet.f32 %8769, 2
  %8773 = extractvalue %dx.types.ResRet.f32 %8769, 3
  %8774 = call float @dx.op.binary.f32(i32 35, float %8764, float %8765)  ; FMax(a,b)
  %8775 = call float @dx.op.binary.f32(i32 35, float %8763, float %8774)  ; FMax(a,b)
  %8776 = call float @dx.op.binary.f32(i32 35, float %8775, float %8766)  ; FMax(a,b)
  %8777 = call float @dx.op.binary.f32(i32 36, float %8771, float %8772)  ; FMin(a,b)
  %8778 = call float @dx.op.binary.f32(i32 36, float %8770, float %8777)  ; FMin(a,b)
  %8779 = call float @dx.op.binary.f32(i32 36, float %8778, float %8773)  ; FMin(a,b)
  %8780 = fmul fast float %8776, 2.550000e+02
  %8781 = fadd fast float %8780, 0x3F70101020000000
  %8782 = fptoui float %8781 to i32
  %8783 = fmul fast float %8779, 2.550000e+02
  %8784 = fadd fast float %8783, 0x3F70101020000000
  %8785 = fptoui float %8784 to i32
  %8786 = icmp ult i32 %8782, %8785
  br i1 %8786, label %8787, label %8956

; <label>:8787                                    ; preds = %8744
  %8788 = fcmp fast ogt float %90, 9.843750e-01
  %8789 = fadd fast float %7582, -4.000000e+00
  %8790 = select i1 %8788, float -4.000000e+00, float %8789
  %8791 = call float @dx.op.binary.f32(i32 35, float %8790, float 0.000000e+00)  ; FMax(a,b)
  %8792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8793 = extractvalue %dx.types.CBufRet.f32 %8792, 0
  %8794 = fadd fast float %8793, %8791
  %8795 = extractvalue %dx.types.CBufRet.f32 %8792, 2
  %8796 = fmul fast float %8794, %8795
  %8797 = call float @dx.op.unary.f32(i32 23, float %8796)  ; Log(value)
  %8798 = extractvalue %dx.types.CBufRet.f32 %8792, 3
  %8799 = fmul fast float %8798, %8797
  %8800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8801 = extractvalue %dx.types.CBufRet.f32 %8800, 2
  %8802 = fmul fast float %8799, %8801
  %8803 = call float @dx.op.unary.f32(i32 7, float %8802)  ; Saturate(value)
  %8804 = uitofp i32 %8782 to float
  %8805 = uitofp i32 %8785 to float
  %8806 = fadd fast float %8804, 5.000000e-01
  %8807 = fadd fast float %8805, 5.000000e-01
  %8808 = fmul fast float %8801, %8806
  %8809 = fmul fast float %8801, %8807
  %8810 = fadd fast float %8808, 0x3F0FFB4800000000
  %8811 = fadd fast float %8809, 0xBF0FFB4800000000
  %8812 = call float @dx.op.binary.f32(i32 35, float %8803, float %8810)  ; FMax(a,b)
  %8813 = call float @dx.op.binary.f32(i32 36, float %8812, float %8811)  ; FMin(a,b)
  %8814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8815 = extractvalue %dx.types.CBufRet.f32 %8814, 1
  %8816 = extractvalue %dx.types.CBufRet.f32 %8814, 2
  %8817 = extractvalue %dx.types.CBufRet.f32 %8814, 0
  %8818 = select i1 %7320, float %8817, float 0.000000e+00
  %8819 = fmul fast float %8815, %8813
  %8820 = fadd fast float %8818, %8819
  %8821 = fadd fast float %8818, %8816
  %8822 = fsub fast float %8815, %8816
  %8823 = fadd fast float %8822, %8818
  %8824 = call float @dx.op.binary.f32(i32 35, float %8820, float %8821)  ; FMax(a,b)
  %8825 = call float @dx.op.binary.f32(i32 36, float %8824, float %8823)  ; FMin(a,b)
  %8826 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %41, float %8757, float %8758, float %8825, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8827 = extractvalue %dx.types.ResRet.f32 %8826, 0
  %8828 = extractvalue %dx.types.ResRet.f32 %8826, 1
  %8829 = extractvalue %dx.types.ResRet.f32 %8826, 2
  %8830 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8831 = extractvalue %dx.types.CBufRet.i32 %8830, 0
  %8832 = extractvalue %dx.types.CBufRet.i32 %8830, 1
  %8833 = uitofp i32 %8831 to float
  %8834 = uitofp i32 %8832 to float
  %8835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8836 = extractvalue %dx.types.CBufRet.f32 %8835, 0
  %8837 = extractvalue %dx.types.CBufRet.f32 %8835, 1
  %8838 = fmul fast float %8833, %8757
  %8839 = fmul fast float %8834, %8758
  %8840 = fadd fast float %8838, -5.000000e-01
  %8841 = fadd fast float %8839, -5.000000e-01
  %8842 = call float @dx.op.unary.f32(i32 22, float %8840)  ; Frc(value)
  %8843 = call float @dx.op.unary.f32(i32 22, float %8841)  ; Frc(value)
  %8844 = fmul fast float %8842, %8842
  %8845 = fmul fast float %8844, %8842
  %8846 = fsub fast float 3.000000e+00, %8842
  %8847 = fmul fast float %8844, %8846
  %8848 = fmul fast float %8842, 3.000000e+00
  %8849 = fmul fast float %8845, 3.000000e+00
  %8850 = fmul fast float %8844, 6.000000e+00
  %8851 = fsub fast float %8849, %8850
  %8852 = fadd fast float %8851, 4.000000e+00
  %8853 = fmul fast float %8852, 0x3FC5555560000000
  %8854 = fmul fast float %8845, -3.000000e+00
  %8855 = fadd fast float %8844, %8842
  %8856 = fmul fast float %8855, 3.000000e+00
  %8857 = fadd fast float %8854, 1.000000e+00
  %8858 = fadd fast float %8857, %8856
  %8859 = fmul fast float %8845, 0x3FC5555560000000
  %8860 = fmul fast float %8843, %8843
  %8861 = fmul fast float %8860, %8843
  %8862 = fsub fast float 3.000000e+00, %8843
  %8863 = fmul fast float %8860, %8862
  %8864 = fmul fast float %8843, 3.000000e+00
  %8865 = fmul fast float %8861, 3.000000e+00
  %8866 = fmul fast float %8860, 6.000000e+00
  %8867 = fsub fast float %8865, %8866
  %8868 = fadd fast float %8867, 4.000000e+00
  %8869 = fmul fast float %8868, 0x3FC5555560000000
  %8870 = fmul fast float %8861, -3.000000e+00
  %8871 = fadd fast float %8860, %8843
  %8872 = fmul fast float %8871, 3.000000e+00
  %8873 = fadd fast float %8870, 1.000000e+00
  %8874 = fadd fast float %8873, %8872
  %8875 = fmul fast float %8861, 0x3FC5555560000000
  %8876 = fadd fast float %8842, 1.000000e+00
  %8877 = fsub fast float 1.000000e+00, %8848
  %8878 = fadd fast float %8877, %8847
  %8879 = fadd fast float %8878, %8852
  %8880 = fmul fast float %8879, 0x3FC5555560000000
  %8881 = fdiv fast float %8853, %8880
  %8882 = fsub fast float %8876, %8881
  %8883 = fsub fast float 1.000000e+00, %8842
  %8884 = fadd fast float %8858, %8845
  %8885 = fmul fast float %8884, 0x3FC5555560000000
  %8886 = fdiv fast float %8859, %8885
  %8887 = fadd fast float %8883, %8886
  %8888 = fadd fast float %8843, 1.000000e+00
  %8889 = fsub fast float 1.000000e+00, %8864
  %8890 = fadd fast float %8889, %8863
  %8891 = fadd fast float %8890, %8868
  %8892 = fmul fast float %8891, 0x3FC5555560000000
  %8893 = fdiv fast float %8869, %8892
  %8894 = fsub fast float %8888, %8893
  %8895 = fsub fast float 1.000000e+00, %8843
  %8896 = fadd fast float %8874, %8861
  %8897 = fmul fast float %8896, 0x3FC5555560000000
  %8898 = fdiv fast float %8875, %8897
  %8899 = fadd fast float %8898, %8895
  %8900 = fmul fast float %8882, %8836
  %8901 = fsub fast float %8757, %8900
  %8902 = fmul fast float %8887, %8836
  %8903 = fadd fast float %8902, %8757
  %8904 = fmul fast float %8899, %8837
  %8905 = fadd fast float %8904, %8758
  %8906 = fmul fast float %8894, %8837
  %8907 = fsub fast float %8758, %8906
  %8908 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8901, float %8907, float %8825, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8909 = extractvalue %dx.types.ResRet.f32 %8908, 0
  %8910 = extractvalue %dx.types.ResRet.f32 %8908, 1
  %8911 = extractvalue %dx.types.ResRet.f32 %8908, 2
  %8912 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8903, float %8907, float %8825, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8913 = extractvalue %dx.types.ResRet.f32 %8912, 0
  %8914 = extractvalue %dx.types.ResRet.f32 %8912, 1
  %8915 = extractvalue %dx.types.ResRet.f32 %8912, 2
  %8916 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8901, float %8905, float %8825, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8917 = extractvalue %dx.types.ResRet.f32 %8916, 0
  %8918 = extractvalue %dx.types.ResRet.f32 %8916, 1
  %8919 = extractvalue %dx.types.ResRet.f32 %8916, 2
  %8920 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8903, float %8905, float %8825, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8921 = extractvalue %dx.types.ResRet.f32 %8920, 0
  %8922 = extractvalue %dx.types.ResRet.f32 %8920, 1
  %8923 = extractvalue %dx.types.ResRet.f32 %8920, 2
  %8924 = fsub fast float %8917, %8909
  %8925 = fsub fast float %8918, %8910
  %8926 = fsub fast float %8919, %8911
  %8927 = fmul fast float %8924, %8897
  %8928 = fmul fast float %8925, %8897
  %8929 = fmul fast float %8926, %8897
  %8930 = fadd fast float %8927, %8909
  %8931 = fadd fast float %8928, %8910
  %8932 = fadd fast float %8929, %8911
  %8933 = fsub fast float %8921, %8913
  %8934 = fsub fast float %8922, %8914
  %8935 = fsub fast float %8923, %8915
  %8936 = fmul fast float %8933, %8897
  %8937 = fmul fast float %8934, %8897
  %8938 = fmul fast float %8935, %8897
  %8939 = fsub fast float %8913, %8930
  %8940 = fadd fast float %8939, %8936
  %8941 = fsub fast float %8914, %8931
  %8942 = fadd fast float %8941, %8937
  %8943 = fsub fast float %8915, %8932
  %8944 = fadd fast float %8943, %8938
  %8945 = fmul fast float %8940, %8885
  %8946 = fmul fast float %8942, %8885
  %8947 = fmul fast float %8944, %8885
  %8948 = fadd fast float %8945, %8930
  %8949 = fadd fast float %8946, %8931
  %8950 = fadd fast float %8947, %8932
  %8951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8952 = extractvalue %dx.types.CBufRet.f32 %8951, 1
  %8953 = fmul fast float %8948, %8952
  %8954 = fmul fast float %8949, %8952
  %8955 = fmul fast float %8950, %8952
  br label %8956

; <label>:8956                                    ; preds = %8787, %8744
  %8957 = phi float [ %8827, %8787 ], [ 1.000000e+00, %8744 ]
  %8958 = phi float [ %8828, %8787 ], [ 1.000000e+00, %8744 ]
  %8959 = phi float [ %8829, %8787 ], [ 1.000000e+00, %8744 ]
  %8960 = phi float [ %8953, %8787 ], [ 0.000000e+00, %8744 ]
  %8961 = phi float [ %8954, %8787 ], [ 0.000000e+00, %8744 ]
  %8962 = phi float [ %8955, %8787 ], [ 0.000000e+00, %8744 ]
  %8963 = fmul fast float %8960, %7298
  %8964 = fmul fast float %8961, %7298
  %8965 = fmul fast float %8962, %7298
  %8966 = fmul fast float %8957, %8751
  %8967 = call float @dx.op.dot3.f32(i32 55, float %8957, float %8958, float %8959, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8968 = call float @dx.op.dot3.f32(i32 55, float %8963, float %8964, float %8965, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8969 = select i1 %252, float %8967, float %8957
  %8970 = select i1 %252, float %8967, float %8958
  %8971 = select i1 %252, float 1.000000e+00, float %8959
  %8972 = select i1 %252, float %8968, float %8963
  %8973 = select i1 %252, float 0.000000e+00, float %8964
  %8974 = select i1 %252, float 0.000000e+00, float %8965
  %8975 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8976 = extractvalue %dx.types.CBufRet.i32 %8975, 3
  %8977 = and i32 %8976, 3
  %8978 = icmp ne i32 %8977, 0
  %8979 = and i32 %8976, 4
  %8980 = icmp ne i32 %8979, 0
  %8981 = and i1 %8978, %8980
  %8982 = and i1 %252, %8981
  br i1 %8982, label %8983, label %8989

; <label>:8983                                    ; preds = %8956
  %8984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8985 = extractvalue %dx.types.CBufRet.f32 %8984, 1
  %8986 = fadd fast float %8966, -1.000000e+00
  %8987 = fmul fast float %8985, %8986
  %8988 = fadd fast float %8987, 1.000000e+00
  br label %8989

; <label>:8989                                    ; preds = %8983, %8956
  %8990 = phi float [ %8988, %8983 ], [ %8966, %8956 ]
  %8991 = fadd fast float %8748, %8745
  %8992 = fmul fast float %8969, %8991
  %8993 = fadd fast float %8992, %8972
  %8994 = fadd fast float %8749, %8746
  %8995 = fmul fast float %8970, %8994
  %8996 = fadd fast float %8995, %8973
  %8997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8998 = extractvalue %dx.types.CBufRet.f32 %8997, 0
  br i1 %252, label %8999, label %9023

; <label>:8999                                    ; preds = %8989
  %9000 = fadd fast float %8993, %8996
  %9001 = fmul fast float %8998, %9000
  %9002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9003 = extractvalue %dx.types.CBufRet.f32 %9002, 3
  %9004 = extractvalue %dx.types.CBufRet.f32 %7302, 1
  %9005 = fsub fast float %7307, %7301
  %9006 = fadd fast float %9005, %7308
  %9007 = fsub fast float %9006, %9004
  %9008 = extractvalue %dx.types.CBufRet.f32 %7302, 2
  %9009 = fmul fast float %9007, %9008
  %9010 = call float @dx.op.unary.f32(i32 7, float %9009)  ; Saturate(value)
  %9011 = fsub fast float %9010, %9003
  %9012 = fmul fast float %9011, %8990
  %9013 = fadd fast float %9012, %9003
  %9014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9015 = extractvalue %dx.types.CBufRet.f32 %9014, 0
  %9016 = fsub fast float %9013, %9015
  %9017 = fmul fast float %9016, 1.000000e+01
  %9018 = call float @dx.op.unary.f32(i32 7, float %9017)  ; Saturate(value)
  %9019 = fsub fast float %4031, %7298
  %9020 = fmul fast float %9018, %9019
  %9021 = fadd fast float %9020, %7298
  %9022 = fmul fast float %9021, %9013
  br label %9047

; <label>:9023                                    ; preds = %8989
  %9024 = fadd fast float %8750, %8747
  %9025 = fmul fast float %8971, %9024
  %9026 = fadd fast float %9025, %8974
  %9027 = fmul fast float %8998, %8993
  %9028 = fmul fast float %8998, %8996
  %9029 = fmul fast float %8998, %9026
  %9030 = call float @dx.op.binary.f32(i32 35, float %9028, float %9029)  ; FMax(a,b)
  %9031 = call float @dx.op.binary.f32(i32 35, float %9027, float %9030)  ; FMax(a,b)
  %9032 = call float @dx.op.binary.f32(i32 35, float %9031, float %7298)  ; FMax(a,b)
  %9033 = fcmp fast ugt float %9032, 0x3F10000000000000
  br i1 %9033, label %9035, label %9034

; <label>:9034                                    ; preds = %9023
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9035

; <label>:9035                                    ; preds = %9034, %9023
  %9036 = add i32 %49, 356
  %9037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %9036, i32 undef)  ; BufferLoad(srv,index,wot)
  %9038 = extractvalue %dx.types.ResRet.i32 %9037, 0
  %9039 = and i32 %9038, 32
  %9040 = icmp eq i32 %9039, 0
  br i1 %9040, label %9047, label %9041

; <label>:9041                                    ; preds = %9035
  %9042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9043 = extractvalue %dx.types.CBufRet.f32 %9042, 0
  %9044 = fmul fast float %9043, 0x3FE99999A0000000
  %9045 = fadd fast float %9043, %9027
  %9046 = fadd fast float %9044, %9029
  br label %9047

; <label>:9047                                    ; preds = %9041, %9035, %8999
  %9048 = phi float [ %9001, %8999 ], [ %9045, %9041 ], [ %9027, %9035 ]
  %9049 = phi float [ %9022, %8999 ], [ %9028, %9041 ], [ %9028, %9035 ]
  %9050 = phi float [ %9021, %8999 ], [ %9046, %9041 ], [ %9029, %9035 ]
  %9051 = phi float [ %9021, %8999 ], [ %7298, %9041 ], [ %7298, %9035 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9052 = call float @dx.op.binary.f32(i32 36, float %9048, float 3.225500e+04)  ; FMin(a,b)
  %9053 = call float @dx.op.binary.f32(i32 36, float %9049, float 3.225500e+04)  ; FMin(a,b)
  %9054 = call float @dx.op.binary.f32(i32 36, float %9050, float 3.225500e+04)  ; FMin(a,b)
  %9055 = call float @dx.op.binary.f32(i32 36, float %9051, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9052)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9053)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9054)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9055)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %9051)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9051)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9051)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %9051)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 9, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
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
!61 = !{[58 x i32] [i32 56, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 255, i32 7, i32 7, i32 255, i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255, i32 0, i32 255, i32 0, i32 255, i32 0, i32 0, i32 0]}
!62 = !{void ()* @ps_main, !"ps_main", !63, !4, !91}
!63 = !{!64, !87, null}
!64 = !{!65, !68, !69, !71, !73, !74, !75, !76, !77, !78, !79, !80, !81, !83, !85, !86}
!65 = !{i32 0, !"SV_Position", i8 9, i8 3, !66, i8 4, i32 1, i8 4, i32 0, i8 0, !67}
!66 = !{i32 0}
!67 = !{i32 3, i32 15}
!68 = !{i32 1, !"COLOR", i8 9, i8 0, !66, i8 2, i32 1, i8 4, i32 1, i8 0, !67}
!69 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !66, i8 2, i32 1, i8 4, i32 2, i8 0, !70}
!70 = !{i32 3, i32 3}
!71 = !{i32 3, !"NORMAL", i8 9, i8 0, !66, i8 2, i32 1, i8 3, i32 3, i8 0, !72}
!72 = !{i32 3, i32 7}
!73 = !{i32 4, !"TANGENT", i8 9, i8 0, !66, i8 2, i32 1, i8 4, i32 4, i8 0, !67}
!74 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !66, i8 2, i32 1, i8 3, i32 5, i8 0, !72}
!75 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !66, i8 2, i32 1, i8 4, i32 6, i8 0, !67}
!76 = !{i32 7, !"WGV_TEXCOORD", i8 9, i8 0, !66, i8 2, i32 1, i8 3, i32 7, i8 0, !72}
!77 = !{i32 8, !"WGV_NORMAL", i8 9, i8 0, !66, i8 2, i32 1, i8 4, i32 8, i8 0, !67}
!78 = !{i32 9, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !66, i8 2, i32 1, i8 2, i32 9, i8 0, !70}
!79 = !{i32 10, !"SCEONDARY_NORMAL", i8 9, i8 0, !66, i8 2, i32 1, i8 4, i32 10, i8 0, !67}
!80 = !{i32 11, !"OBJECT_POSITION", i8 9, i8 0, !66, i8 2, i32 1, i8 4, i32 11, i8 0, !72}
!81 = !{i32 12, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !66, i8 1, i32 1, i8 1, i32 12, i8 0, !82}
!82 = !{i32 3, i32 1}
!83 = !{i32 13, !"ENTITY_IDS", i8 5, i8 0, !66, i8 1, i32 1, i8 2, i32 12, i8 1, !84}
!84 = !{i32 3, i32 2}
!85 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !66, i8 1, i32 1, i8 4, i32 13, i8 0, !82}
!86 = !{i32 15, !"SV_SampleIndex", i8 5, i8 12, !66, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
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
!132 = distinct !{!132, !133, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!133 = distinct !{!133, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!134 = distinct !{!134, !133, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!135 = distinct !{!135, !133, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!136 = distinct !{!136, !137, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!137 = distinct !{!137, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!138 = distinct !{!138, !137, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!139 = distinct !{!139, !137, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
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

