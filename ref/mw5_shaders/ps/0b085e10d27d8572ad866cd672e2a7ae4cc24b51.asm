;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORDS                0   xyzw        2     NONE   float   xy  
; NORMAL                   0   xyz         3     NONE   float   xyz 
; COMP_FACTOR              0      w        3     NONE   float      w
; TANGENT                  0   xyzw        4     NONE   float   xyzw
; AMBIENT_COLOR            0   xyz         5     NONE   float   xyz 
; HIGHLIGHT_DIR_VIS        0   xyzw        6     NONE   float   xyzw
; WGV_TEXCOORD             0   xyz         7     NONE   float   xyz 
; WGV_NORMAL               0   xyzw        8     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          9     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw       10     NONE   float   xyzw
; OBJECT_POSITION          0   xyzw       11     NONE   float   xyzw
; DECAL_VOLUME_GRID_INDEX     0   x          12     NONE    uint   x   
; ENTITY_IDS               0    yz        12     NONE    uint    yz 
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
; shader hash: 630edad3aa667465a737245e27e27981
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
; COMP_FACTOR              0                 linear       
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
;                                   texture    byte         r/o      T4     t22,space1     1
;                                   texture     f32          3d      T5     t52,space2     1
;                                   texture     f32          2d      T6     t33,space2     1
;                                   texture    byte         r/o      T7      t3,space1     1
;                                   texture    byte         r/o      T8      t4,space1     1
;                                   texture    byte         r/o      T9      t5,space1     1
;                                   texture    byte         r/o     T10      t6,space1     1
;                                   texture     f32          2d     T11     t69,space2     1
;                                   texture    byte         r/o     T12     t18,space1     1
;                                   texture    byte         r/o     T13     t19,space1     1
;                                   texture    byte         r/o     T14     t20,space1     1
;                                   texture    byte         r/o     T15     t21,space1     1
;                                   texture     f32          2d     T16     t37,space2     1
;                                   texture     f32          2d     T17             t0     1
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
; Number of inputs: 56, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 52 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 52 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 52 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 50, 52 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 50, 52 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 50, 52 }
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
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = alloca [4 x i32], align 4
  %50 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
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
  %130 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %131 = bitcast float %130 to i32
  %132 = ashr i32 %131, 1
  %133 = sub nsw i32 1597250115, %132
  %134 = bitcast i32 %133 to float
  %135 = fmul fast float %134, %72
  %136 = fmul fast float %134, %73
  %137 = fmul fast float %134, %74
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 0
  %140 = fcmp fast une float %139, 0.000000e+00
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.f32 %141, 2
  %143 = extractvalue %dx.types.CBufRet.f32 %141, 3
  %144 = fmul fast float %108, 2.000000e+00
  %145 = fmul fast float %144, %142
  %146 = fmul fast float %109, 2.000000e+00
  %147 = fmul fast float %146, %143
  %148 = fsub fast float 1.000000e+00, %145
  %149 = fsub fast float 1.000000e+00, %147
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 0
  %152 = extractvalue %dx.types.CBufRet.f32 %150, 1
  %153 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 0
  %156 = extractvalue %dx.types.CBufRet.f32 %154, 1
  %157 = extractvalue %dx.types.CBufRet.f32 %154, 2
  %158 = select i1 %140, float %151, float %155
  %159 = select i1 %140, float %152, float %156
  %160 = select i1 %140, float %153, float %157
  %161 = fmul fast float %158, %148
  %162 = fmul fast float %159, %148
  %163 = fmul fast float %160, %148
  %164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.f32 %164, 0
  %166 = extractvalue %dx.types.CBufRet.f32 %164, 1
  %167 = extractvalue %dx.types.CBufRet.f32 %164, 2
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 0
  %170 = extractvalue %dx.types.CBufRet.f32 %168, 1
  %171 = extractvalue %dx.types.CBufRet.f32 %168, 2
  %172 = select i1 %140, float %165, float %169
  %173 = select i1 %140, float %166, float %170
  %174 = select i1 %140, float %167, float %171
  %175 = fmul fast float %172, %149
  %176 = fmul fast float %173, %149
  %177 = fmul fast float %174, %149
  %178 = fadd fast float %175, %161
  %179 = fadd fast float %176, %162
  %180 = fadd fast float %177, %163
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 0
  %183 = extractvalue %dx.types.CBufRet.f32 %181, 1
  %184 = extractvalue %dx.types.CBufRet.f32 %181, 2
  %185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %186 = extractvalue %dx.types.CBufRet.f32 %185, 0
  %187 = extractvalue %dx.types.CBufRet.f32 %185, 1
  %188 = extractvalue %dx.types.CBufRet.f32 %185, 2
  %189 = select i1 %140, float %182, float %186
  %190 = select i1 %140, float %183, float %187
  %191 = select i1 %140, float %184, float %188
  %192 = fadd fast float %178, %189
  %193 = fadd fast float %179, %190
  %194 = fadd fast float %180, %191
  %195 = fmul fast float %192, %95
  %196 = fmul fast float %193, %95
  %197 = fmul fast float %194, %95
  %198 = shl i32 %51, 5
  %199 = add i32 %198, 4194304
  %200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %199, i32 undef)  ; BufferLoad(srv,index,wot)
  %201 = extractvalue %dx.types.ResRet.i32 %200, 0
  %202 = extractvalue %dx.types.ResRet.i32 %200, 1
  %203 = extractvalue %dx.types.ResRet.i32 %200, 2
  %204 = extractvalue %dx.types.ResRet.i32 %200, 3
  %205 = add i32 %198, 4194320
  %206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %205, i32 undef)  ; BufferLoad(srv,index,wot)
  %207 = extractvalue %dx.types.ResRet.i32 %206, 0
  %208 = extractvalue %dx.types.ResRet.i32 %206, 1
  %209 = bitcast i32 %207 to float
  %210 = bitcast i32 %208 to float
  %211 = fmul fast float %108, 5.000000e-01
  %212 = fmul fast float %109, 5.000000e-01
  %213 = fptosi float %211 to i32
  %214 = fptosi float %212 to i32
  %215 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %21, i32 0, i32 %213, i32 %214, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %216 = extractvalue %dx.types.ResRet.i32 %215, 0
  %217 = lshr i32 %216, 18
  %218 = uitofp i32 %217 to float
  %219 = fmul fast float %218, 0x3F4C00EBA0000000
  %220 = call float @dx.op.unary.f32(i32 21, float %219)  ; Exp(value)
  %221 = fadd fast float %220, -1.000000e+00
  %222 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %21, i32 0)  ; GetDimensions(handle,mipLevel)
  %223 = extractvalue %dx.types.Dimensions %222, 0
  %224 = sitofp i32 %223 to float
  %225 = extractvalue %dx.types.Dimensions %222, 1
  %226 = sitofp i32 %225 to float
  %227 = fcmp fast oge float %211, %224
  %228 = fcmp fast oge float %212, %226
  %229 = or i1 %227, %228
  %230 = select i1 %229, float 0x4197782600000000, float %221
  %231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.f32 %231, 2
  %233 = extractvalue %dx.types.CBufRet.f32 %231, 3
  %234 = fmul fast float %232, %108
  %235 = fmul fast float %233, %109
  %236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.i32 %236, 0
  %238 = and i32 %237, 114688
  %239 = icmp ne i32 %238, 0
  %240 = select i1 %239, float %234, float 0.000000e+00
  %241 = select i1 %239, float %235, float 0.000000e+00
  %242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %45, float %240, float %241, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %243 = extractvalue %dx.types.ResRet.f32 %242, 0
  %244 = fmul fast float %243, 2.550000e+02
  %245 = fptoui float %244 to i32
  %246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %247 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %248 = extractvalue %dx.types.CBufRet.i32 %247, 3
  %249 = and i32 %248, 3
  %250 = icmp ne i32 %249, 0
  %251 = and i32 %248, 4
  %252 = icmp ne i32 %251, 0
  %253 = and i1 %250, %252
  br i1 %253, label %254, label %265

; <label>:254                                     ; preds = %0
  %255 = extractvalue %dx.types.CBufRet.f32 %246, 3
  %256 = fmul fast float %255, %109
  %257 = extractvalue %dx.types.CBufRet.f32 %246, 2
  %258 = fmul fast float %257, %108
  %259 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %44, float %258, float %256, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %260 = extractvalue %dx.types.ResRet.f32 %259, 0
  %261 = fsub fast float 1.000000e+00, %260
  %262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %263 = extractvalue %dx.types.CBufRet.f32 %262, 0
  %264 = fcmp fast olt float %261, %263
  br label %268

; <label>:265                                     ; preds = %0
  %266 = icmp eq i32 %251, 0
  %267 = and i1 %250, %266
  br label %268

; <label>:268                                     ; preds = %265, %254
  %269 = phi i1 [ %264, %254 ], [ %267, %265 ]
  %270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %271 = extractvalue %dx.types.CBufRet.f32 %270, 2
  %272 = fmul fast float %271, 0x3FE3C6EF40000000
  %273 = frem fast float %108, 2.560000e+02
  %274 = frem fast float %109, 2.560000e+02
  %275 = fptoui float %273 to i32
  %276 = fptoui float %274 to i32
  %277 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %275, i32 %276, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %278 = extractvalue %dx.types.ResRet.f32 %277, 0
  %279 = fadd fast float %278, %272
  %280 = call float @dx.op.unary.f32(i32 22, float %279)  ; Frc(value)
  %281 = add i32 %50, 156
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = shl i32 %283, 4
  %285 = and i32 %284, 32752
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = lshr i32 %283, 7
  %288 = and i32 %287, 32752
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = lshr i32 %283, 22
  %291 = shl nuw nsw i32 %290, 5
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = add i32 %50, 216
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = and i32 %295, 255
  %297 = uitofp i32 %296 to float
  %298 = fmul fast float %297, 0x3F70101020000000
  %299 = lshr i32 %295, 8
  %300 = and i32 %299, 255
  %301 = uitofp i32 %300 to float
  %302 = fmul fast float %301, 0x3F70101020000000
  %303 = lshr i32 %295, 16
  %304 = and i32 %303, 255
  %305 = uitofp i32 %304 to float
  %306 = fmul fast float %305, 0x3F70101020000000
  %307 = add i32 %50, 36
  %308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.i32 %308, 0
  %310 = and i32 %309, 65535
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = lshr i32 %309, 16
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = add i32 %50, 288
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = and i32 %316, 65535
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = lshr i32 %316, 16
  %320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %319)  ; LegacyF16ToF32(value)
  %321 = fmul fast float %318, 0x3F50624DE0000000
  %322 = fmul fast float %320, 0x3F50624DE0000000
  %323 = mul i32 %52, 100
  %324 = add i32 %323, 28
  %325 = add i32 %323, 40
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.i32 %326, 0
  %328 = add i32 %50, 172
  %329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.i32 %329, 0
  %331 = shl i32 %330, 4
  %332 = and i32 %331, 32752
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = lshr i32 %330, 7
  %335 = and i32 %334, 32752
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = lshr i32 %330, 22
  %338 = shl nuw nsw i32 %337, 5
  %339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %338)  ; LegacyF16ToF32(value)
  %340 = add i32 %50, 232
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = and i32 %342, 255
  %344 = uitofp i32 %343 to float
  %345 = fmul fast float %344, 0x3F70101020000000
  %346 = lshr i32 %342, 8
  %347 = and i32 %346, 255
  %348 = uitofp i32 %347 to float
  %349 = fmul fast float %348, 0x3F70101020000000
  %350 = lshr i32 %342, 16
  %351 = and i32 %350, 255
  %352 = uitofp i32 %351 to float
  %353 = fmul fast float %352, 0x3F70101020000000
  %354 = add i32 %50, 52
  %355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.i32 %355, 0
  %357 = and i32 %356, 65535
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = lshr i32 %356, 16
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = add i32 %50, 304
  %362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.i32 %362, 0
  %364 = and i32 %363, 65535
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = lshr i32 %363, 16
  %367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %366)  ; LegacyF16ToF32(value)
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = shl i32 %369, 4
  %371 = and i32 %370, 32752
  %372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %371)  ; LegacyF16ToF32(value)
  %373 = lshr i32 %369, 7
  %374 = and i32 %373, 32752
  %375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %374)  ; LegacyF16ToF32(value)
  %376 = lshr i32 %369, 22
  %377 = shl nuw nsw i32 %376, 5
  %378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %377)  ; LegacyF16ToF32(value)
  %379 = and i32 %327, 1
  %380 = icmp ne i32 %379, 0
  %381 = select i1 %380, float %372, float %333
  %382 = select i1 %380, float %375, float %336
  %383 = select i1 %380, float %378, float %339
  %384 = add i32 %323, 44
  %385 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.f32 %385, 0
  %387 = fmul fast float %386, %381
  %388 = fmul fast float %386, %382
  %389 = fmul fast float %386, %383
  %390 = add i32 %323, 48
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %402 = and i32 %327, 8
  %403 = icmp ne i32 %402, 0
  %404 = select i1 %403, float %395, float %345
  %405 = select i1 %403, float %398, float %349
  %406 = select i1 %403, float %401, float %353
  %407 = add i32 %323, 52
  %408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.i32 %408, 0
  %410 = and i32 %409, 65535
  %411 = call float @dx.op.legacyF16ToF32(i32 131, i32 %410)  ; LegacyF16ToF32(value)
  %412 = lshr i32 %409, 16
  %413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %412)  ; LegacyF16ToF32(value)
  %414 = and i32 %327, 2
  %415 = icmp ne i32 %414, 0
  %416 = select i1 %415, float %411, float %358
  %417 = select i1 %415, float %413, float %360
  %418 = add i32 %323, 56
  %419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.i32 %419, 0
  %421 = and i32 %420, 65535
  %422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %421)  ; LegacyF16ToF32(value)
  %423 = lshr i32 %420, 16
  %424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %423)  ; LegacyF16ToF32(value)
  %425 = and i32 %327, 4
  %426 = icmp ne i32 %425, 0
  %427 = select i1 %426, float %422, float %365
  %428 = fmul float %427, 0x3F50624DE0000000
  %429 = select i1 %426, float %424, float %367
  %430 = fmul float %429, 0x3F50624DE0000000
  %431 = add i32 %323, 60
  %432 = add i32 %323, 32
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = add i32 %50, 188
  %436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.i32 %436, 0
  %438 = shl i32 %437, 4
  %439 = and i32 %438, 32752
  %440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %439)  ; LegacyF16ToF32(value)
  %441 = lshr i32 %437, 7
  %442 = and i32 %441, 32752
  %443 = call float @dx.op.legacyF16ToF32(i32 131, i32 %442)  ; LegacyF16ToF32(value)
  %444 = lshr i32 %437, 22
  %445 = shl nuw nsw i32 %444, 5
  %446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %445)  ; LegacyF16ToF32(value)
  %447 = add i32 %50, 248
  %448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.i32 %448, 0
  %450 = and i32 %449, 255
  %451 = uitofp i32 %450 to float
  %452 = fmul fast float %451, 0x3F70101020000000
  %453 = lshr i32 %449, 8
  %454 = and i32 %453, 255
  %455 = uitofp i32 %454 to float
  %456 = fmul fast float %455, 0x3F70101020000000
  %457 = lshr i32 %449, 16
  %458 = and i32 %457, 255
  %459 = uitofp i32 %458 to float
  %460 = fmul fast float %459, 0x3F70101020000000
  %461 = add i32 %50, 68
  %462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.i32 %462, 0
  %464 = and i32 %463, 65535
  %465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %464)  ; LegacyF16ToF32(value)
  %466 = lshr i32 %463, 16
  %467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %466)  ; LegacyF16ToF32(value)
  %468 = add i32 %50, 320
  %469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.i32 %469, 0
  %471 = and i32 %470, 65535
  %472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %471)  ; LegacyF16ToF32(value)
  %473 = lshr i32 %470, 16
  %474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %473)  ; LegacyF16ToF32(value)
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %431, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.i32 %475, 0
  %477 = shl i32 %476, 4
  %478 = and i32 %477, 32752
  %479 = call float @dx.op.legacyF16ToF32(i32 131, i32 %478)  ; LegacyF16ToF32(value)
  %480 = lshr i32 %476, 7
  %481 = and i32 %480, 32752
  %482 = call float @dx.op.legacyF16ToF32(i32 131, i32 %481)  ; LegacyF16ToF32(value)
  %483 = lshr i32 %476, 22
  %484 = shl nuw nsw i32 %483, 5
  %485 = call float @dx.op.legacyF16ToF32(i32 131, i32 %484)  ; LegacyF16ToF32(value)
  %486 = and i32 %434, 1
  %487 = icmp ne i32 %486, 0
  %488 = select i1 %487, float %479, float %440
  %489 = select i1 %487, float %482, float %443
  %490 = select i1 %487, float %485, float %446
  %491 = add i32 %323, 64
  %492 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.f32 %492, 0
  %494 = fmul fast float %493, %488
  %495 = fmul fast float %493, %489
  %496 = fmul fast float %493, %490
  %497 = add i32 %323, 68
  %498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.i32 %498, 0
  %500 = shl i32 %499, 4
  %501 = and i32 %500, 32752
  %502 = call float @dx.op.legacyF16ToF32(i32 131, i32 %501)  ; LegacyF16ToF32(value)
  %503 = lshr i32 %499, 7
  %504 = and i32 %503, 32752
  %505 = call float @dx.op.legacyF16ToF32(i32 131, i32 %504)  ; LegacyF16ToF32(value)
  %506 = lshr i32 %499, 22
  %507 = shl nuw nsw i32 %506, 5
  %508 = call float @dx.op.legacyF16ToF32(i32 131, i32 %507)  ; LegacyF16ToF32(value)
  %509 = and i32 %434, 8
  %510 = icmp ne i32 %509, 0
  %511 = select i1 %510, float %502, float %452
  %512 = select i1 %510, float %505, float %456
  %513 = select i1 %510, float %508, float %460
  %514 = add i32 %323, 72
  %515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %514, i32 undef)  ; BufferLoad(srv,index,wot)
  %516 = extractvalue %dx.types.ResRet.i32 %515, 0
  %517 = and i32 %516, 65535
  %518 = call float @dx.op.legacyF16ToF32(i32 131, i32 %517)  ; LegacyF16ToF32(value)
  %519 = lshr i32 %516, 16
  %520 = call float @dx.op.legacyF16ToF32(i32 131, i32 %519)  ; LegacyF16ToF32(value)
  %521 = and i32 %434, 2
  %522 = icmp ne i32 %521, 0
  %523 = select i1 %522, float %518, float %465
  %524 = select i1 %522, float %520, float %467
  %525 = add i32 %323, 76
  %526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.i32 %526, 0
  %528 = and i32 %527, 65535
  %529 = call float @dx.op.legacyF16ToF32(i32 131, i32 %528)  ; LegacyF16ToF32(value)
  %530 = lshr i32 %527, 16
  %531 = call float @dx.op.legacyF16ToF32(i32 131, i32 %530)  ; LegacyF16ToF32(value)
  %532 = and i32 %434, 4
  %533 = icmp ne i32 %532, 0
  %534 = select i1 %533, float %529, float %472
  %535 = fmul float %534, 0x3F50624DE0000000
  %536 = select i1 %533, float %531, float %474
  %537 = fmul float %536, 0x3F50624DE0000000
  %538 = add i32 %323, 80
  %539 = add i32 %323, 36
  %540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.i32 %540, 0
  %542 = add i32 %50, 204
  %543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.i32 %543, 0
  %545 = shl i32 %544, 4
  %546 = and i32 %545, 32752
  %547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %546)  ; LegacyF16ToF32(value)
  %548 = lshr i32 %544, 7
  %549 = and i32 %548, 32752
  %550 = call float @dx.op.legacyF16ToF32(i32 131, i32 %549)  ; LegacyF16ToF32(value)
  %551 = lshr i32 %544, 22
  %552 = shl nuw nsw i32 %551, 5
  %553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %552)  ; LegacyF16ToF32(value)
  %554 = add i32 %50, 264
  %555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %554, i32 undef)  ; BufferLoad(srv,index,wot)
  %556 = extractvalue %dx.types.ResRet.i32 %555, 0
  %557 = and i32 %556, 255
  %558 = uitofp i32 %557 to float
  %559 = fmul fast float %558, 0x3F70101020000000
  %560 = lshr i32 %556, 8
  %561 = and i32 %560, 255
  %562 = uitofp i32 %561 to float
  %563 = fmul fast float %562, 0x3F70101020000000
  %564 = lshr i32 %556, 16
  %565 = and i32 %564, 255
  %566 = uitofp i32 %565 to float
  %567 = fmul fast float %566, 0x3F70101020000000
  %568 = add i32 %50, 84
  %569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %568, i32 undef)  ; BufferLoad(srv,index,wot)
  %570 = extractvalue %dx.types.ResRet.i32 %569, 0
  %571 = and i32 %570, 65535
  %572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %571)  ; LegacyF16ToF32(value)
  %573 = lshr i32 %570, 16
  %574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %573)  ; LegacyF16ToF32(value)
  %575 = add i32 %50, 336
  %576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %575, i32 undef)  ; BufferLoad(srv,index,wot)
  %577 = extractvalue %dx.types.ResRet.i32 %576, 0
  %578 = and i32 %577, 65535
  %579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %578)  ; LegacyF16ToF32(value)
  %580 = lshr i32 %577, 16
  %581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %580)  ; LegacyF16ToF32(value)
  %582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %538, i32 undef)  ; BufferLoad(srv,index,wot)
  %583 = extractvalue %dx.types.ResRet.i32 %582, 0
  %584 = shl i32 %583, 4
  %585 = and i32 %584, 32752
  %586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %585)  ; LegacyF16ToF32(value)
  %587 = lshr i32 %583, 7
  %588 = and i32 %587, 32752
  %589 = call float @dx.op.legacyF16ToF32(i32 131, i32 %588)  ; LegacyF16ToF32(value)
  %590 = lshr i32 %583, 22
  %591 = shl nuw nsw i32 %590, 5
  %592 = call float @dx.op.legacyF16ToF32(i32 131, i32 %591)  ; LegacyF16ToF32(value)
  %593 = and i32 %541, 1
  %594 = icmp ne i32 %593, 0
  %595 = select i1 %594, float %586, float %547
  %596 = select i1 %594, float %589, float %550
  %597 = select i1 %594, float %592, float %553
  %598 = add i32 %323, 84
  %599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %598, i32 undef)  ; BufferLoad(srv,index,wot)
  %600 = extractvalue %dx.types.ResRet.f32 %599, 0
  %601 = fmul fast float %600, %595
  %602 = fmul fast float %600, %596
  %603 = fmul fast float %600, %597
  %604 = add i32 %323, 88
  %605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %604, i32 undef)  ; BufferLoad(srv,index,wot)
  %606 = extractvalue %dx.types.ResRet.i32 %605, 0
  %607 = shl i32 %606, 4
  %608 = and i32 %607, 32752
  %609 = call float @dx.op.legacyF16ToF32(i32 131, i32 %608)  ; LegacyF16ToF32(value)
  %610 = lshr i32 %606, 7
  %611 = and i32 %610, 32752
  %612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %611)  ; LegacyF16ToF32(value)
  %613 = lshr i32 %606, 22
  %614 = shl nuw nsw i32 %613, 5
  %615 = call float @dx.op.legacyF16ToF32(i32 131, i32 %614)  ; LegacyF16ToF32(value)
  %616 = and i32 %541, 8
  %617 = icmp ne i32 %616, 0
  %618 = select i1 %617, float %609, float %559
  %619 = select i1 %617, float %612, float %563
  %620 = select i1 %617, float %615, float %567
  %621 = add i32 %323, 92
  %622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %621, i32 undef)  ; BufferLoad(srv,index,wot)
  %623 = extractvalue %dx.types.ResRet.i32 %622, 0
  %624 = and i32 %623, 65535
  %625 = call float @dx.op.legacyF16ToF32(i32 131, i32 %624)  ; LegacyF16ToF32(value)
  %626 = lshr i32 %623, 16
  %627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %626)  ; LegacyF16ToF32(value)
  %628 = and i32 %541, 2
  %629 = icmp ne i32 %628, 0
  %630 = select i1 %629, float %625, float %572
  %631 = select i1 %629, float %627, float %574
  %632 = add i32 %323, 96
  %633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %632, i32 undef)  ; BufferLoad(srv,index,wot)
  %634 = extractvalue %dx.types.ResRet.i32 %633, 0
  %635 = and i32 %634, 65535
  %636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %635)  ; LegacyF16ToF32(value)
  %637 = lshr i32 %634, 16
  %638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %637)  ; LegacyF16ToF32(value)
  %639 = and i32 %541, 4
  %640 = icmp ne i32 %639, 0
  %641 = select i1 %640, float %636, float %579
  %642 = fmul float %641, 0x3F50624DE0000000
  %643 = select i1 %640, float %638, float %581
  %644 = fmul float %643, 0x3F50624DE0000000
  %645 = add i32 %50, 348
  %646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %645, i32 undef)  ; BufferLoad(srv,index,wot)
  %647 = extractvalue %dx.types.ResRet.i32 %646, 0
  %648 = and i32 %647, 32
  %649 = icmp eq i32 %648, 0
  %650 = and i32 %647, 64
  %651 = icmp eq i32 %650, 0
  %652 = and i32 %647, 128
  %653 = icmp eq i32 %652, 0
  %654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %645, i32 undef)  ; BufferLoad(srv,index,wot)
  %655 = extractvalue %dx.types.ResRet.i32 %654, 0
  %656 = and i32 %655, 2
  %657 = icmp eq i32 %656, 0
  br i1 %657, label %673, label %658

; <label>:658                                     ; preds = %268
  %659 = add i32 %50, 540
  %660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %659, i32 undef)  ; BufferLoad(srv,index,wot)
  %661 = extractvalue %dx.types.ResRet.i32 %660, 0
  %662 = add i32 %661, 0
  %663 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %662, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %664 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %663, %dx.types.Handle %105, float %86, float %87, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %665 = extractvalue %dx.types.ResRet.f32 %664, 0
  %666 = extractvalue %dx.types.ResRet.f32 %664, 1
  %667 = extractvalue %dx.types.ResRet.f32 %664, 2
  %668 = extractvalue %dx.types.ResRet.f32 %664, 3
  %669 = fmul fast float %668, %88
  %670 = fmul fast float %665, %89
  %671 = fmul fast float %666, %90
  %672 = fmul fast float %667, %91
  br label %673

; <label>:673                                     ; preds = %658, %268
  %674 = phi float [ %91, %268 ], [ %672, %658 ]
  %675 = phi float [ %90, %268 ], [ %671, %658 ]
  %676 = phi float [ %89, %268 ], [ %670, %658 ]
  %677 = phi float [ %88, %268 ], [ %669, %658 ]
  %678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %645, i32 undef)  ; BufferLoad(srv,index,wot)
  %679 = extractvalue %dx.types.ResRet.i32 %678, 0
  %680 = and i32 %679, 2
  %681 = icmp eq i32 %680, 0
  br i1 %681, label %701, label %682

; <label>:682                                     ; preds = %673
  %683 = add i32 %50, 44
  %684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %683, i32 undef)  ; BufferLoad(srv,index,wot)
  %685 = extractvalue %dx.types.ResRet.i32 %684, 0
  %686 = and i32 %685, 1
  %687 = icmp ne i32 %686, 0
  %688 = select i1 %687, float %676, float 1.000000e+00
  %689 = add i32 %50, 60
  %690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %689, i32 undef)  ; BufferLoad(srv,index,wot)
  %691 = extractvalue %dx.types.ResRet.i32 %690, 0
  %692 = and i32 %691, 1
  %693 = icmp ne i32 %692, 0
  %694 = select i1 %693, float %675, float 1.000000e+00
  %695 = add i32 %50, 76
  %696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %695, i32 undef)  ; BufferLoad(srv,index,wot)
  %697 = extractvalue %dx.types.ResRet.i32 %696, 0
  %698 = and i32 %697, 1
  %699 = icmp ne i32 %698, 0
  %700 = select i1 %699, float %674, float 1.000000e+00
  br label %701

; <label>:701                                     ; preds = %682, %673
  %702 = phi float [ %674, %673 ], [ %700, %682 ]
  %703 = phi float [ %675, %673 ], [ %694, %682 ]
  %704 = phi float [ %676, %673 ], [ %688, %682 ]
  %705 = lshr i32 %679, 20
  %706 = and i32 %705, 3
  %707 = add nuw nsw i32 %706, 1
  %708 = add i32 %50, 24
  %709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %710 = extractvalue %dx.types.ResRet.i32 %709, 0
  %711 = add i32 %50, 28
  %712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %711, i32 undef)  ; BufferLoad(srv,index,wot)
  %713 = extractvalue %dx.types.ResRet.i32 %712, 0
  %714 = or i32 %713, %710
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %1334, label %716

; <label>:716                                     ; preds = %701
  %717 = and i32 %710, 262144
  %718 = icmp ne i32 %717, 0
  %719 = select i1 %718, float %58, float 1.000000e+00
  %720 = select i1 %718, float %59, float 0.000000e+00
  %721 = select i1 %718, float %60, float 0.000000e+00
  %722 = select i1 %718, float %61, float 1.000000e+00
  %723 = select i1 %718, float %62, float %86
  %724 = select i1 %718, float %63, float %87
  %725 = add i32 %50, 284
  %726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %725, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.i32 %726, 0
  %728 = lshr i32 %727, 16
  %729 = call float @dx.op.legacyF16ToF32(i32 131, i32 %728)  ; LegacyF16ToF32(value)
  %730 = fmul fast float %729, 0x3F50624DE0000000
  %731 = add i32 %50, 88
  %732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %731, i32 undef)  ; BufferLoad(srv,index,wot)
  %733 = extractvalue %dx.types.ResRet.i32 %732, 0
  %734 = lshr i32 %733, 16
  %735 = and i32 %734, 255
  %736 = lshr i32 %733, 24
  %737 = add i32 %50, 292
  %738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %737, i32 undef)  ; BufferLoad(srv,index,wot)
  %739 = extractvalue %dx.types.ResRet.i32 %738, 0
  %740 = and i32 %739, 65535
  %741 = call float @dx.op.legacyF16ToF32(i32 131, i32 %740)  ; LegacyF16ToF32(value)
  %742 = lshr i32 %739, 16
  %743 = call float @dx.op.legacyF16ToF32(i32 131, i32 %742)  ; LegacyF16ToF32(value)
  %744 = add i32 %50, 32
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %744, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = lshr i32 %746, 22
  %748 = shl nuw nsw i32 %747, 5
  %749 = call float @dx.op.legacyF16ToF32(i32 131, i32 %748)  ; LegacyF16ToF32(value)
  %750 = shl i32 %746, 4
  %751 = and i32 %750, 32752
  %752 = call float @dx.op.legacyF16ToF32(i32 131, i32 %751)  ; LegacyF16ToF32(value)
  %753 = lshr i32 %746, 7
  %754 = and i32 %753, 32752
  %755 = call float @dx.op.legacyF16ToF32(i32 131, i32 %754)  ; LegacyF16ToF32(value)
  %756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %757 = extractvalue %dx.types.CBufRet.f32 %756, 3
  %758 = fmul fast float %757, 1.000000e+03
  %759 = fmul fast float %321, %758
  %760 = call float @dx.op.unary.f32(i32 22, float %759)  ; Frc(value)
  %761 = fadd fast float %760, %311
  %762 = fmul fast float %322, %758
  %763 = call float @dx.op.unary.f32(i32 22, float %762)  ; Frc(value)
  %764 = fadd fast float %763, %313
  %765 = fmul fast float %730, %758
  %766 = call float @dx.op.unary.f32(i32 22, float %765)  ; Frc(value)
  %767 = fmul fast float %766, 0x401921FB60000000
  %768 = fadd fast float %767, %749
  %769 = call float @dx.op.unary.f32(i32 13, float %768)  ; Sin(value)
  %770 = call float @dx.op.unary.f32(i32 12, float %768)  ; Cos(value)
  %771 = fsub fast float -0.000000e+00, %769
  %772 = fadd fast float %723, -5.000000e-01
  %773 = fadd fast float %724, -5.000000e-01
  %774 = fmul fast float %741, %772
  %775 = fmul fast float %743, %773
  %776 = fadd fast float %774, 5.000000e-01
  %777 = fadd fast float %775, 5.000000e-01
  %778 = fmul fast float %752, %776
  %779 = fmul fast float %755, %777
  %780 = fmul fast float %770, %778
  %781 = call float @dx.op.tertiary.f32(i32 46, float %771, float %779, float %780)  ; FMad(a,b,c)
  %782 = fmul fast float %769, %778
  %783 = call float @dx.op.tertiary.f32(i32 46, float %770, float %779, float %782)  ; FMad(a,b,c)
  %784 = fadd fast float %761, %781
  %785 = fadd fast float %764, %783
  %786 = icmp ugt i32 %735, 1
  %787 = icmp ugt i32 %733, 33554431
  %788 = or i1 %787, %786
  br i1 %788, label %789, label %814

; <label>:789                                     ; preds = %716
  %790 = add i32 %50, 228
  %791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %790, i32 undef)  ; BufferLoad(srv,index,wot)
  %792 = extractvalue %dx.types.ResRet.i32 %791, 0
  %793 = lshr i32 %792, 16
  %794 = call float @dx.op.legacyF16ToF32(i32 131, i32 %793)  ; LegacyF16ToF32(value)
  %795 = fmul fast float %757, %794
  %796 = call float @dx.op.unary.f32(i32 22, float %795)  ; Frc(value)
  %797 = mul nuw nsw i32 %735, %736
  %798 = uitofp i32 %797 to float
  %799 = fmul fast float %796, %798
  %800 = call float @dx.op.unary.f32(i32 27, float %799)  ; Round_ni(value)
  %801 = fptoui float %800 to i32
  %802 = urem i32 %801, %735
  %803 = udiv i32 %801, %736
  %804 = call float @dx.op.unary.f32(i32 22, float %784)  ; Frc(value)
  %805 = call float @dx.op.unary.f32(i32 22, float %785)  ; Frc(value)
  %806 = uitofp i32 %802 to float
  %807 = uitofp i32 %803 to float
  %808 = fadd fast float %804, %806
  %809 = fadd fast float %805, %807
  %810 = uitofp i32 %735 to float
  %811 = uitofp i32 %736 to float
  %812 = fdiv fast float %808, %810
  %813 = fdiv fast float %809, %811
  br label %814

; <label>:814                                     ; preds = %789, %716
  %815 = phi float [ %812, %789 ], [ %784, %716 ]
  %816 = phi float [ %813, %789 ], [ %785, %716 ]
  %817 = and i32 %710, 256
  %818 = icmp eq i32 %817, 0
  br i1 %818, label %865, label %819

; <label>:819                                     ; preds = %814
  %820 = add i32 %50, 472
  %821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %820, i32 undef)  ; BufferLoad(srv,index,wot)
  %822 = extractvalue %dx.types.ResRet.i32 %821, 0
  %823 = add i32 %822, 0
  %824 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %823, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %825 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %824, %dx.types.Handle %105, float %815, float %816, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %826 = extractvalue %dx.types.ResRet.f32 %825, 0
  %827 = add i32 %50, 100
  %828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %827, i32 undef)  ; BufferLoad(srv,index,wot)
  %829 = extractvalue %dx.types.ResRet.i32 %828, 0
  %830 = shl i32 %829, 4
  %831 = and i32 %830, 32752
  %832 = call float @dx.op.legacyF16ToF32(i32 131, i32 %831)  ; LegacyF16ToF32(value)
  %833 = lshr i32 %829, 7
  %834 = and i32 %833, 32752
  %835 = call float @dx.op.legacyF16ToF32(i32 131, i32 %834)  ; LegacyF16ToF32(value)
  %836 = fsub fast float 1.000000e+00, %677
  %837 = call float @dx.op.binary.f32(i32 35, float %836, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %838 = bitcast float %677 to i32
  %839 = sitofp i32 %838 to float
  %840 = fadd fast float %839, 0xC1CFBF8940000000
  %841 = fmul fast float %835, %840
  %842 = fadd fast float %841, 0x41CFBF8940000000
  %843 = fptosi float %842 to i32
  %844 = bitcast i32 %843 to float
  %845 = bitcast float %837 to i32
  %846 = sitofp i32 %845 to float
  %847 = fadd fast float %846, 0xC1CFBF8940000000
  %848 = fmul fast float %847, %835
  %849 = fadd fast float %848, 0x41CFBF8940000000
  %850 = fptosi float %849 to i32
  %851 = bitcast i32 %850 to float
  %852 = fmul fast float %844, %832
  %853 = fmul fast float %851, %832
  %854 = fsub fast float %837, %852
  %855 = fadd fast float %853, %837
  %856 = call float @dx.op.unary.f32(i32 7, float %854)  ; Saturate(value)
  %857 = call float @dx.op.unary.f32(i32 7, float %855)  ; Saturate(value)
  %858 = fsub fast float %826, %856
  %859 = fsub fast float %857, %856
  %860 = bitcast float %859 to i32
  %861 = sub nsw i32 2129859010, %860
  %862 = bitcast i32 %861 to float
  %863 = fmul fast float %862, %858
  %864 = call float @dx.op.unary.f32(i32 7, float %863)  ; Saturate(value)
  br label %865

; <label>:865                                     ; preds = %819, %814
  %866 = phi float [ %864, %819 ], [ %677, %814 ]
  %867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %868 = extractvalue %dx.types.ResRet.i32 %867, 0
  %869 = and i32 %868, 128
  %870 = icmp eq i32 %869, 0
  br i1 %870, label %887, label %871

; <label>:871                                     ; preds = %865
  %872 = add i32 %50, 456
  %873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %874 = extractvalue %dx.types.ResRet.i32 %873, 0
  %875 = add i32 %874, 0
  %876 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %875, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %877 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %876, %dx.types.Handle %105, float %815, float %816, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %878 = extractvalue %dx.types.ResRet.f32 %877, 0
  %879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %880 = extractvalue %dx.types.ResRet.i32 %879, 0
  %881 = and i32 %880, 524288
  %882 = icmp ne i32 %881, 0
  %883 = fcmp fast ogt float %878, 0x3FE0101020000000
  %884 = select i1 %883, float 1.000000e+00, float 0.000000e+00
  %885 = select i1 %882, float %884, float %878
  %886 = fmul fast float %885, %866
  br label %887

; <label>:887                                     ; preds = %871, %865
  %888 = phi float [ %886, %871 ], [ %866, %865 ]
  %889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %890 = extractvalue %dx.types.ResRet.i32 %889, 0
  %891 = and i32 %890, 16
  %892 = icmp eq i32 %891, 0
  br i1 %892, label %1091, label %893

; <label>:893                                     ; preds = %887
  %894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %731, i32 undef)  ; BufferLoad(srv,index,wot)
  %895 = extractvalue %dx.types.ResRet.i32 %894, 0
  %896 = add i32 %50, 408
  %897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %896, i32 undef)  ; BufferLoad(srv,index,wot)
  %898 = extractvalue %dx.types.ResRet.i32 %897, 0
  %899 = add i32 %898, 0
  %900 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %899, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %901 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %900, %dx.types.Handle %104, float %815, float %816, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %902 = extractvalue %dx.types.ResRet.f32 %901, 0
  %903 = extractvalue %dx.types.ResRet.f32 %901, 1
  %904 = extractvalue %dx.types.ResRet.f32 %901, 2
  %905 = extractvalue %dx.types.ResRet.f32 %901, 3
  %906 = and i32 %895, 255
  %907 = uitofp i32 %906 to float
  %908 = lshr i32 %895, 8
  %909 = and i32 %908, 255
  %910 = uitofp i32 %909 to float
  %911 = fmul fast float %905, %907
  %912 = fadd fast float %911, %910
  %913 = fmul fast float %912, 0x3F70101000000000
  %914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %915 = extractvalue %dx.types.ResRet.i32 %914, 0
  %916 = and i32 %915, 512
  %917 = icmp eq i32 %916, 0
  br i1 %917, label %926, label %918

; <label>:918                                     ; preds = %893
  %919 = add i32 %50, 492
  %920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %919, i32 undef)  ; BufferLoad(srv,index,wot)
  %921 = extractvalue %dx.types.ResRet.i32 %920, 0
  %922 = add i32 %921, 0
  %923 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %922, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %924 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %923, %dx.types.Handle %105, float %815, float %816, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %925 = extractvalue %dx.types.ResRet.f32 %924, 0
  br label %926

; <label>:926                                     ; preds = %918, %893
  %927 = phi float [ %925, %918 ], [ 1.000000e+00, %893 ]
  %928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %929 = extractvalue %dx.types.ResRet.i32 %928, 0
  %930 = and i32 %929, 33554432
  %931 = icmp eq i32 %930, 0
  br i1 %931, label %1038, label %932

; <label>:932                                     ; preds = %926
  %933 = add i32 %50, 224
  %934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %933, i32 undef)  ; BufferLoad(srv,index,wot)
  %935 = extractvalue %dx.types.ResRet.i32 %934, 0
  %936 = and i32 %935, 65535
  %937 = call float @dx.op.legacyF16ToF32(i32 131, i32 %936)  ; LegacyF16ToF32(value)
  %938 = lshr i32 %935, 16
  %939 = call float @dx.op.legacyF16ToF32(i32 131, i32 %938)  ; LegacyF16ToF32(value)
  %940 = add i32 %50, 228
  %941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %942 = extractvalue %dx.types.ResRet.i32 %941, 0
  %943 = and i32 %942, 65535
  %944 = call float @dx.op.legacyF16ToF32(i32 131, i32 %943)  ; LegacyF16ToF32(value)
  %945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %961 = add i32 %50, 220
  %962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %961, i32 undef)  ; BufferLoad(srv,index,wot)
  %963 = extractvalue %dx.types.ResRet.i32 %962, 0
  %964 = lshr i32 %963, 24
  %965 = uitofp i32 %964 to float
  %966 = fmul fast float %965, 0x3F70101020000000
  %967 = and i32 %963, 255
  %968 = uitofp i32 %967 to float
  %969 = fmul fast float %968, 0x3F70101020000000
  %970 = lshr i32 %963, 8
  %971 = and i32 %970, 255
  %972 = uitofp i32 %971 to float
  %973 = fmul fast float %972, 0x3F70101020000000
  %974 = lshr i32 %963, 16
  %975 = and i32 %974, 255
  %976 = uitofp i32 %975 to float
  %977 = fmul fast float %976, 0x3F70101020000000
  %978 = bitcast float %902 to i32
  %979 = ashr i32 %978, 1
  %980 = sub nsw i32 1597463174, %979
  %981 = bitcast i32 %980 to float
  %982 = fmul fast float %902, 5.000000e-01
  %983 = fmul fast float %981, %981
  %984 = fmul fast float %983, %982
  %985 = fsub fast float 1.500000e+00, %984
  %986 = fmul fast float %981, %902
  %987 = fmul fast float %986, %985
  %988 = bitcast float %903 to i32
  %989 = ashr i32 %988, 1
  %990 = sub nsw i32 1597463174, %989
  %991 = bitcast i32 %990 to float
  %992 = fmul fast float %903, 5.000000e-01
  %993 = fmul fast float %991, %991
  %994 = fmul fast float %993, %992
  %995 = fsub fast float 1.500000e+00, %994
  %996 = fmul fast float %991, %903
  %997 = fmul fast float %996, %995
  %998 = bitcast float %904 to i32
  %999 = ashr i32 %998, 1
  %1000 = sub nsw i32 1597463174, %999
  %1001 = bitcast i32 %1000 to float
  %1002 = fmul fast float %904, 5.000000e-01
  %1003 = fmul fast float %1001, %1001
  %1004 = fmul fast float %1003, %1002
  %1005 = fsub fast float 1.500000e+00, %1004
  %1006 = fmul fast float %1001, %904
  %1007 = fmul fast float %1006, %1005
  %1008 = fsub fast float %987, %969
  %1009 = fsub fast float %997, %973
  %1010 = fsub fast float %1007, %977
  %1011 = fmul fast float %1008, %937
  %1012 = fmul fast float %1009, %939
  %1013 = fmul fast float %1010, %944
  %1014 = fadd fast float %1011, %952
  %1015 = fadd fast float %1012, %956
  %1016 = fadd fast float %1013, %960
  %1017 = call float @dx.op.unary.f32(i32 7, float %1014)  ; Saturate(value)
  %1018 = call float @dx.op.unary.f32(i32 7, float %1015)  ; Saturate(value)
  %1019 = call float @dx.op.unary.f32(i32 7, float %1016)  ; Saturate(value)
  %1020 = fmul fast float %1017, %1017
  %1021 = fmul fast float %1018, %1018
  %1022 = fmul fast float %1019, %1019
  %1023 = fsub fast float %1020, %902
  %1024 = fsub fast float %1021, %903
  %1025 = fsub fast float %1022, %904
  %1026 = fmul fast float %1023, %927
  %1027 = fmul fast float %1024, %927
  %1028 = fmul fast float %1025, %927
  %1029 = fadd fast float %1026, %902
  %1030 = fadd fast float %1027, %903
  %1031 = fadd fast float %1028, %904
  %1032 = fadd fast float %949, %913
  %1033 = fsub fast float %1032, %966
  %1034 = call float @dx.op.unary.f32(i32 7, float %1033)  ; Saturate(value)
  %1035 = fsub fast float %1034, %913
  %1036 = fmul fast float %1035, %927
  %1037 = fadd fast float %1036, %913
  br label %1091

; <label>:1038                                    ; preds = %926
  %1039 = and i32 %929, 134217728
  %1040 = icmp eq i32 %1039, 0
  br i1 %1040, label %1075, label %1041

; <label>:1041                                    ; preds = %1038
  %1042 = call float @dx.op.unary.f32(i32 24, float %298)  ; Sqrt(value)
  %1043 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %1044 = call float @dx.op.unary.f32(i32 24, float %306)  ; Sqrt(value)
  %1045 = fadd fast float %1042, -5.000000e-01
  %1046 = fadd fast float %1043, -5.000000e-01
  %1047 = fadd fast float %1044, -5.000000e-01
  %1048 = fmul fast float %1045, %927
  %1049 = fmul fast float %1046, %927
  %1050 = fmul fast float %1047, %927
  %1051 = fadd fast float %1048, 5.000000e-01
  %1052 = fadd fast float %1049, 5.000000e-01
  %1053 = fadd fast float %1050, 5.000000e-01
  %1054 = call float @dx.op.unary.f32(i32 24, float %902)  ; Sqrt(value)
  %1055 = call float @dx.op.unary.f32(i32 24, float %903)  ; Sqrt(value)
  %1056 = call float @dx.op.unary.f32(i32 24, float %904)  ; Sqrt(value)
  %1057 = fmul fast float %1051, 2.000000e+00
  %1058 = fsub fast float 1.000000e+00, %1057
  %1059 = fmul fast float %1058, %1054
  %1060 = fadd fast float %1059, %1057
  %1061 = fmul fast float %1060, %1054
  %1062 = fmul fast float %1052, 2.000000e+00
  %1063 = fsub fast float 1.000000e+00, %1062
  %1064 = fmul fast float %1063, %1055
  %1065 = fadd fast float %1064, %1062
  %1066 = fmul fast float %1065, %1055
  %1067 = fmul fast float %1053, 2.000000e+00
  %1068 = fsub fast float 1.000000e+00, %1067
  %1069 = fmul fast float %1068, %1056
  %1070 = fadd fast float %1069, %1067
  %1071 = fmul fast float %1070, %1056
  %1072 = fmul fast float %1061, %1061
  %1073 = fmul fast float %1066, %1066
  %1074 = fmul fast float %1071, %1071
  br label %1091

; <label>:1075                                    ; preds = %1038
  %1076 = fmul fast float %298, %298
  %1077 = fmul fast float %302, %302
  %1078 = fmul fast float %306, %306
  %1079 = fadd fast float %1076, -1.000000e+00
  %1080 = fadd fast float %1077, -1.000000e+00
  %1081 = fadd fast float %1078, -1.000000e+00
  %1082 = fmul fast float %927, %1079
  %1083 = fmul fast float %927, %1080
  %1084 = fmul fast float %927, %1081
  %1085 = fadd fast float %1082, 1.000000e+00
  %1086 = fadd fast float %1083, 1.000000e+00
  %1087 = fadd fast float %1084, 1.000000e+00
  %1088 = fmul fast float %1085, %902
  %1089 = fmul fast float %1086, %903
  %1090 = fmul fast float %1087, %904
  br label %1091

; <label>:1091                                    ; preds = %1075, %1041, %932, %887
  %1092 = phi float [ %1037, %932 ], [ %913, %1041 ], [ %913, %1075 ], [ 0x3FA23C0BE0000000, %887 ]
  %1093 = phi float [ %1029, %932 ], [ %1072, %1041 ], [ %1088, %1075 ], [ 1.000000e+00, %887 ]
  %1094 = phi float [ %1030, %932 ], [ %1073, %1041 ], [ %1089, %1075 ], [ 1.000000e+00, %887 ]
  %1095 = phi float [ %1031, %932 ], [ %1074, %1041 ], [ %1090, %1075 ], [ 1.000000e+00, %887 ]
  %1096 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1097 = extractvalue %dx.types.CBufRet.i32 %1096, 1
  %1098 = and i32 %1097, 1
  %1099 = icmp ne i32 %1098, 0
  %1100 = add i32 %50, 356
  %1101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1100, i32 undef)  ; BufferLoad(srv,index,wot)
  %1102 = extractvalue %dx.types.ResRet.i32 %1101, 0
  %1103 = and i32 %1102, 32
  %1104 = icmp ne i32 %1103, 0
  %1105 = and i1 %1099, %1104
  %1106 = select i1 %1105, float 1.000000e+00, float %1093
  %1107 = select i1 %1105, float 0x3FD3333340000000, float %1094
  %1108 = select i1 %1105, float 0x3FD3333340000000, float %1095
  %1109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %1110 = extractvalue %dx.types.ResRet.i32 %1109, 0
  %1111 = and i32 %1110, 32
  %1112 = icmp eq i32 %1111, 0
  br i1 %1112, label %1185, label %1113

; <label>:1113                                    ; preds = %1091
  %1114 = add i32 %50, 92
  %1115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1114, i32 undef)  ; BufferLoad(srv,index,wot)
  %1116 = extractvalue %dx.types.ResRet.i32 %1115, 0
  %1117 = add i32 %50, 424
  %1118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1117, i32 undef)  ; BufferLoad(srv,index,wot)
  %1119 = extractvalue %dx.types.ResRet.i32 %1118, 0
  %1120 = add i32 %1119, 0
  %1121 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1120, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1122 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1121, %dx.types.Handle %104, float %815, float %816, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1123 = extractvalue %dx.types.ResRet.f32 %1122, 0
  %1124 = extractvalue %dx.types.ResRet.f32 %1122, 1
  %1125 = extractvalue %dx.types.ResRet.f32 %1122, 2
  %1126 = extractvalue %dx.types.ResRet.f32 %1122, 3
  %1127 = and i32 %1116, 255
  %1128 = uitofp i32 %1127 to float
  %1129 = lshr i32 %1116, 8
  %1130 = and i32 %1129, 255
  %1131 = uitofp i32 %1130 to float
  %1132 = lshr i32 %1116, 16
  %1133 = and i32 %1132, 255
  %1134 = uitofp i32 %1133 to float
  %1135 = fmul fast float %1134, 0x3F70101000000000
  %1136 = fmul fast float %1123, %1128
  %1137 = fadd fast float %1136, %1131
  %1138 = fmul fast float %1137, 0x3F70101000000000
  %1139 = fadd fast float %1124, -5.000000e-01
  %1140 = fadd fast float %1126, -5.000000e-01
  %1141 = fmul fast float %1139, %1135
  %1142 = fmul fast float %1140, %1135
  %1143 = fadd fast float %1141, 5.000000e-01
  %1144 = fadd fast float %1142, 5.000000e-01
  %1145 = fmul fast float %1143, 2.000000e+00
  %1146 = fadd fast float %1145, -1.000000e+00
  %1147 = fmul fast float %1144, 2.000000e+00
  %1148 = fadd fast float %1147, -1.000000e+00
  %1149 = fadd fast float %1146, %1148
  %1150 = fmul fast float %1149, 5.000000e-01
  %1151 = fsub fast float %1146, %1148
  %1152 = fmul fast float %1151, 5.000000e-01
  %1153 = call float @dx.op.unary.f32(i32 6, float %1150)  ; FAbs(value)
  %1154 = fsub fast float 1.000000e+00, %1153
  %1155 = call float @dx.op.unary.f32(i32 6, float %1152)  ; FAbs(value)
  %1156 = fsub fast float %1154, %1155
  %1157 = call float @dx.op.dot3.f32(i32 55, float %1150, float %1152, float %1156, float %1150, float %1152, float %1156)  ; Dot3(ax,ay,az,bx,by,bz)
  %1158 = call float @dx.op.unary.f32(i32 25, float %1157)  ; Rsqrt(value)
  %1159 = fmul fast float %1150, %1158
  %1160 = fmul fast float %1152, %1158
  %1161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %1162 = extractvalue %dx.types.ResRet.i32 %1161, 0
  %1163 = and i32 %1162, 67108864
  %1164 = icmp eq i32 %1163, 0
  br i1 %1164, label %1181, label %1165

; <label>:1165                                    ; preds = %1113
  %1166 = add i32 %50, 280
  %1167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1168 = extractvalue %dx.types.ResRet.i32 %1167, 0
  %1169 = and i32 %1168, 65535
  %1170 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1169)  ; LegacyF16ToF32(value)
  %1171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %725, i32 undef)  ; BufferLoad(srv,index,wot)
  %1172 = extractvalue %dx.types.ResRet.i32 %1171, 0
  %1173 = and i32 %1172, 65535
  %1174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1173)  ; LegacyF16ToF32(value)
  %1175 = lshr i32 %1168, 16
  %1176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1175)  ; LegacyF16ToF32(value)
  %1177 = fsub fast float %1138, %1176
  %1178 = fmul fast float %1177, %1170
  %1179 = fadd fast float %1178, %1174
  %1180 = call float @dx.op.unary.f32(i32 7, float %1179)  ; Saturate(value)
  br label %1181

; <label>:1181                                    ; preds = %1165, %1113
  %1182 = phi float [ %1180, %1165 ], [ %1138, %1113 ]
  %1183 = call float @dx.op.dot2.f32(i32 54, float %1159, float %1160, float %719, float %720)  ; Dot2(ax,ay,bx,by)
  %1184 = call float @dx.op.dot2.f32(i32 54, float %1159, float %1160, float %721, float %722)  ; Dot2(ax,ay,bx,by)
  br label %1185

; <label>:1185                                    ; preds = %1181, %1091
  %1186 = phi float [ %1182, %1181 ], [ 0x3FD6666660000000, %1091 ]
  %1187 = phi float [ %1183, %1181 ], [ 0.000000e+00, %1091 ]
  %1188 = phi float [ %1184, %1181 ], [ 0.000000e+00, %1091 ]
  %1189 = phi float [ %1125, %1181 ], [ 1.000000e+00, %1091 ]
  %1190 = add i32 %50, 160
  %1191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1192 = extractvalue %dx.types.ResRet.i32 %1191, 0
  %1193 = lshr i32 %1192, 22
  %1194 = shl nuw nsw i32 %1193, 5
  %1195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1194)  ; LegacyF16ToF32(value)
  %1196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %1197 = extractvalue %dx.types.ResRet.i32 %1196, 0
  %1198 = and i32 %1197, 64
  %1199 = icmp eq i32 %1198, 0
  br i1 %1199, label %1233, label %1200

; <label>:1200                                    ; preds = %1185
  %1201 = add i32 %50, 440
  %1202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1201, i32 undef)  ; BufferLoad(srv,index,wot)
  %1203 = extractvalue %dx.types.ResRet.i32 %1202, 0
  %1204 = add i32 %1203, 0
  %1205 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1204, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %1207 = extractvalue %dx.types.ResRet.i32 %1206, 0
  %1208 = and i32 %1207, 131072
  %1209 = icmp eq i32 %1208, 0
  %1210 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1205, %dx.types.Handle %104, float %815, float %816, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1211 = extractvalue %dx.types.ResRet.f32 %1210, 0
  %1212 = extractvalue %dx.types.ResRet.f32 %1210, 1
  %1213 = extractvalue %dx.types.ResRet.f32 %1210, 2
  %1214 = fmul fast float %1211, %286
  %1215 = fmul fast float %1212, %289
  %1216 = fmul fast float %1213, %292
  br i1 %1209, label %1223, label %1217

; <label>:1217                                    ; preds = %1200
  %1218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1219 = extractvalue %dx.types.CBufRet.f32 %1218, 0
  %1220 = fmul fast float %1219, %1214
  %1221 = fmul fast float %1219, %1215
  %1222 = fmul fast float %1219, %1216
  br label %1223

; <label>:1223                                    ; preds = %1217, %1200
  %1224 = phi float [ %1220, %1217 ], [ %1214, %1200 ]
  %1225 = phi float [ %1221, %1217 ], [ %1215, %1200 ]
  %1226 = phi float [ %1222, %1217 ], [ %1216, %1200 ]
  %1227 = fmul fast float %1224, %1195
  %1228 = select i1 %269, float %1227, float %1224
  %1229 = call float @dx.op.dot3.f32(i32 55, float %1228, float %1225, float %1226, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1230 = select i1 %269, float 0.000000e+00, float %1224
  %1231 = select i1 %269, float %1229, float %1225
  %1232 = select i1 %269, float 0.000000e+00, float %1226
  br label %1233

; <label>:1233                                    ; preds = %1223, %1185
  %1234 = phi float [ %1230, %1223 ], [ 0.000000e+00, %1185 ]
  %1235 = phi float [ %1231, %1223 ], [ 0.000000e+00, %1185 ]
  %1236 = phi float [ %1232, %1223 ], [ 0.000000e+00, %1185 ]
  %1237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %1238 = extractvalue %dx.types.ResRet.i32 %1237, 0
  %1239 = and i32 %1238, 1024
  %1240 = icmp eq i32 %1239, 0
  br i1 %1240, label %1271, label %1241

; <label>:1241                                    ; preds = %1233
  %1242 = add i32 %50, 152
  %1243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1242, i32 undef)  ; BufferLoad(srv,index,wot)
  %1244 = extractvalue %dx.types.ResRet.i32 %1243, 0
  %1245 = and i32 %1244, 255
  %1246 = uitofp i32 %1245 to float
  %1247 = fmul fast float %1246, 0x3F70101020000000
  %1248 = lshr i32 %1244, 8
  %1249 = and i32 %1248, 255
  %1250 = uitofp i32 %1249 to float
  %1251 = fmul fast float %1250, 0x3F70101020000000
  %1252 = lshr i32 %1244, 16
  %1253 = and i32 %1252, 255
  %1254 = uitofp i32 %1253 to float
  %1255 = fmul fast float %1254, 0x3F70101020000000
  %1256 = fmul fast float %1247, %1247
  %1257 = fmul fast float %1251, %1251
  %1258 = fmul fast float %1255, %1255
  %1259 = add i32 %50, 508
  %1260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1261 = extractvalue %dx.types.ResRet.i32 %1260, 0
  %1262 = add i32 %1261, 0
  %1263 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1262, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1264 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1263, %dx.types.Handle %105, float %815, float %816, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1265 = extractvalue %dx.types.ResRet.f32 %1264, 0
  %1266 = extractvalue %dx.types.ResRet.f32 %1264, 1
  %1267 = extractvalue %dx.types.ResRet.f32 %1264, 2
  %1268 = fmul fast float %1256, %1265
  %1269 = fmul fast float %1257, %1266
  %1270 = fmul fast float %1258, %1267
  br label %1271

; <label>:1271                                    ; preds = %1241, %1233
  %1272 = phi float [ %1268, %1241 ], [ 0.000000e+00, %1233 ]
  %1273 = phi float [ %1269, %1241 ], [ 0.000000e+00, %1233 ]
  %1274 = phi float [ %1270, %1241 ], [ 0.000000e+00, %1233 ]
  %1275 = fcmp fast ogt float %1272, 0.000000e+00
  %1276 = fcmp fast ogt float %1273, 0.000000e+00
  %1277 = fcmp fast ogt float %1274, 0.000000e+00
  %1278 = call float @dx.op.unary.f32(i32 23, float %1272)  ; Log(value)
  %1279 = call float @dx.op.unary.f32(i32 23, float %1273)  ; Log(value)
  %1280 = call float @dx.op.unary.f32(i32 23, float %1274)  ; Log(value)
  %1281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.i32 %1281, 0
  %1283 = lshr i32 %1282, 7
  %1284 = and i32 %1283, 32752
  %1285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1284)  ; LegacyF16ToF32(value)
  %1286 = fmul fast float %1278, 0xBFE62E4300000000
  %1287 = fmul fast float %1286, %1285
  %1288 = fmul fast float %1279, 0xBFE62E4300000000
  %1289 = fmul fast float %1288, %1285
  %1290 = fmul fast float %1280, 0xBFE62E4300000000
  %1291 = fmul fast float %1290, %1285
  %1292 = select i1 %1275, float %1287, float 1.270000e+02
  %1293 = select i1 %1276, float %1289, float 1.270000e+02
  %1294 = select i1 %1277, float %1291, float 1.270000e+02
  %1295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %1296 = extractvalue %dx.types.ResRet.i32 %1295, 0
  %1297 = and i32 %1296, 10240
  %1298 = icmp eq i32 %1297, 0
  br i1 %1298, label %1319, label %1299

; <label>:1299                                    ; preds = %1271
  %1300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %1301 = extractvalue %dx.types.ResRet.i32 %1300, 0
  %1302 = and i32 %1301, 2048
  %1303 = icmp eq i32 %1302, 0
  br i1 %1303, label %1319, label %1304

; <label>:1304                                    ; preds = %1299
  %1305 = add i32 %50, 524
  %1306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1305, i32 undef)  ; BufferLoad(srv,index,wot)
  %1307 = extractvalue %dx.types.ResRet.i32 %1306, 0
  %1308 = add i32 %1307, 0
  %1309 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1308, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1310 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1309, %dx.types.Handle %105, float %815, float %816, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1311 = extractvalue %dx.types.ResRet.f32 %1310, 3
  %1312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1313 = extractvalue %dx.types.ResRet.i32 %1312, 0
  %1314 = shl i32 %1313, 4
  %1315 = and i32 %1314, 32752
  %1316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1315)  ; LegacyF16ToF32(value)
  %1317 = fmul fast float %1316, %1311
  %1318 = call float @dx.op.binary.f32(i32 35, float %1317, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1319

; <label>:1319                                    ; preds = %1304, %1299, %1271
  %1320 = phi float [ %1318, %1304 ], [ 0x3F70101020000000, %1299 ], [ 0x3F70101020000000, %1271 ]
  %1321 = add i32 %50, 96
  %1322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1321, i32 undef)  ; BufferLoad(srv,index,wot)
  %1323 = extractvalue %dx.types.ResRet.i32 %1322, 0
  %1324 = and i32 %1323, 255
  %1325 = uitofp i32 %1324 to float
  %1326 = lshr i32 %1323, 8
  %1327 = and i32 %1326, 255
  %1328 = uitofp i32 %1327 to float
  %1329 = call float @dx.op.dot3.f32(i32 55, float %1106, float %1107, float %1108, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1330 = fmul fast float %1328, %1329
  %1331 = fadd fast float %1330, %1325
  %1332 = fmul fast float %1331, 0x3F70101020000000
  %1333 = call float @dx.op.unary.f32(i32 7, float %1332)  ; Saturate(value)
  br label %1334

; <label>:1334                                    ; preds = %1319, %701
  %1335 = phi float [ 0.000000e+00, %701 ], [ %1187, %1319 ]
  %1336 = phi float [ 0.000000e+00, %701 ], [ %1188, %1319 ]
  %1337 = phi float [ 0.000000e+00, %701 ], [ %1106, %1319 ]
  %1338 = phi float [ 0.000000e+00, %701 ], [ %1107, %1319 ]
  %1339 = phi float [ 0.000000e+00, %701 ], [ %1108, %1319 ]
  %1340 = phi float [ 0.000000e+00, %701 ], [ %1234, %1319 ]
  %1341 = phi float [ 0.000000e+00, %701 ], [ %1235, %1319 ]
  %1342 = phi float [ 0.000000e+00, %701 ], [ %1236, %1319 ]
  %1343 = phi float [ 0.000000e+00, %701 ], [ %1292, %1319 ]
  %1344 = phi float [ 0.000000e+00, %701 ], [ %1293, %1319 ]
  %1345 = phi float [ 0.000000e+00, %701 ], [ %1294, %1319 ]
  %1346 = phi float [ 0.000000e+00, %701 ], [ %1092, %1319 ]
  %1347 = phi float [ 0.000000e+00, %701 ], [ %888, %1319 ]
  %1348 = phi float [ 0.000000e+00, %701 ], [ %1186, %1319 ]
  %1349 = phi float [ 0.000000e+00, %701 ], [ %1189, %1319 ]
  %1350 = phi float [ 0.000000e+00, %701 ], [ %1320, %1319 ]
  %1351 = phi float [ 0.000000e+00, %701 ], [ %1333, %1319 ]
  br i1 %649, label %2223, label %1352

; <label>:1352                                    ; preds = %1334
  %1353 = icmp ult i32 %707, 2
  %1354 = add i32 %50, 40
  %1355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %1356 = extractvalue %dx.types.ResRet.i32 %1355, 0
  %1357 = add i32 %50, 44
  %1358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1357, i32 undef)  ; BufferLoad(srv,index,wot)
  %1359 = extractvalue %dx.types.ResRet.i32 %1358, 0
  %1360 = or i32 %1359, %1356
  %1361 = icmp eq i32 %1360, 0
  br i1 %1361, label %2223, label %1362

; <label>:1362                                    ; preds = %1352
  %1363 = and i32 %1356, 262144
  %1364 = icmp ne i32 %1363, 0
  %1365 = select i1 %1364, float %58, float 1.000000e+00
  %1366 = select i1 %1364, float %59, float 0.000000e+00
  %1367 = select i1 %1364, float %60, float 0.000000e+00
  %1368 = select i1 %1364, float %61, float 1.000000e+00
  %1369 = select i1 %1364, float %62, float %86
  %1370 = select i1 %1364, float %63, float %87
  %1371 = add i32 %50, 300
  %1372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1371, i32 undef)  ; BufferLoad(srv,index,wot)
  %1373 = extractvalue %dx.types.ResRet.i32 %1372, 0
  %1374 = lshr i32 %1373, 16
  %1375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1374)  ; LegacyF16ToF32(value)
  %1376 = fmul fast float %1375, 0x3F50624DE0000000
  %1377 = add i32 %50, 104
  %1378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1377, i32 undef)  ; BufferLoad(srv,index,wot)
  %1379 = extractvalue %dx.types.ResRet.i32 %1378, 0
  %1380 = lshr i32 %1379, 16
  %1381 = and i32 %1380, 255
  %1382 = lshr i32 %1379, 24
  %1383 = add i32 %50, 308
  %1384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1383, i32 undef)  ; BufferLoad(srv,index,wot)
  %1385 = extractvalue %dx.types.ResRet.i32 %1384, 0
  %1386 = and i32 %1385, 65535
  %1387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1386)  ; LegacyF16ToF32(value)
  %1388 = lshr i32 %1385, 16
  %1389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1388)  ; LegacyF16ToF32(value)
  %1390 = add i32 %50, 48
  %1391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1390, i32 undef)  ; BufferLoad(srv,index,wot)
  %1392 = extractvalue %dx.types.ResRet.i32 %1391, 0
  %1393 = lshr i32 %1392, 22
  %1394 = shl nuw nsw i32 %1393, 5
  %1395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1394)  ; LegacyF16ToF32(value)
  %1396 = shl i32 %1392, 4
  %1397 = and i32 %1396, 32752
  %1398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1397)  ; LegacyF16ToF32(value)
  %1399 = lshr i32 %1392, 7
  %1400 = and i32 %1399, 32752
  %1401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1400)  ; LegacyF16ToF32(value)
  %1402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1403 = extractvalue %dx.types.CBufRet.f32 %1402, 3
  %1404 = fmul fast float %1403, 1.000000e+03
  %1405 = fmul fast float %1404, %428
  %1406 = call float @dx.op.unary.f32(i32 22, float %1405)  ; Frc(value)
  %1407 = fadd fast float %1406, %416
  %1408 = fmul fast float %1404, %430
  %1409 = call float @dx.op.unary.f32(i32 22, float %1408)  ; Frc(value)
  %1410 = fadd fast float %1409, %417
  %1411 = fmul fast float %1376, %1404
  %1412 = call float @dx.op.unary.f32(i32 22, float %1411)  ; Frc(value)
  %1413 = fmul fast float %1412, 0x401921FB60000000
  %1414 = fadd fast float %1413, %1395
  %1415 = call float @dx.op.unary.f32(i32 13, float %1414)  ; Sin(value)
  %1416 = call float @dx.op.unary.f32(i32 12, float %1414)  ; Cos(value)
  %1417 = fsub fast float -0.000000e+00, %1415
  %1418 = fadd fast float %1369, -5.000000e-01
  %1419 = fadd fast float %1370, -5.000000e-01
  %1420 = fmul fast float %1387, %1418
  %1421 = fmul fast float %1389, %1419
  %1422 = fadd fast float %1420, 5.000000e-01
  %1423 = fadd fast float %1421, 5.000000e-01
  %1424 = fmul fast float %1398, %1422
  %1425 = fmul fast float %1401, %1423
  %1426 = fmul fast float %1416, %1424
  %1427 = call float @dx.op.tertiary.f32(i32 46, float %1417, float %1425, float %1426)  ; FMad(a,b,c)
  %1428 = fmul fast float %1415, %1424
  %1429 = call float @dx.op.tertiary.f32(i32 46, float %1416, float %1425, float %1428)  ; FMad(a,b,c)
  %1430 = fadd fast float %1407, %1427
  %1431 = fadd fast float %1410, %1429
  %1432 = icmp ugt i32 %1381, 1
  %1433 = icmp ugt i32 %1379, 33554431
  %1434 = or i1 %1433, %1432
  br i1 %1434, label %1435, label %1460

; <label>:1435                                    ; preds = %1362
  %1436 = add i32 %50, 244
  %1437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1436, i32 undef)  ; BufferLoad(srv,index,wot)
  %1438 = extractvalue %dx.types.ResRet.i32 %1437, 0
  %1439 = lshr i32 %1438, 16
  %1440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1439)  ; LegacyF16ToF32(value)
  %1441 = fmul fast float %1403, %1440
  %1442 = call float @dx.op.unary.f32(i32 22, float %1441)  ; Frc(value)
  %1443 = mul nuw nsw i32 %1381, %1382
  %1444 = uitofp i32 %1443 to float
  %1445 = fmul fast float %1442, %1444
  %1446 = call float @dx.op.unary.f32(i32 27, float %1445)  ; Round_ni(value)
  %1447 = fptoui float %1446 to i32
  %1448 = urem i32 %1447, %1381
  %1449 = udiv i32 %1447, %1382
  %1450 = call float @dx.op.unary.f32(i32 22, float %1430)  ; Frc(value)
  %1451 = call float @dx.op.unary.f32(i32 22, float %1431)  ; Frc(value)
  %1452 = uitofp i32 %1448 to float
  %1453 = uitofp i32 %1449 to float
  %1454 = fadd fast float %1450, %1452
  %1455 = fadd fast float %1451, %1453
  %1456 = uitofp i32 %1381 to float
  %1457 = uitofp i32 %1382 to float
  %1458 = fdiv fast float %1454, %1456
  %1459 = fdiv fast float %1455, %1457
  br label %1460

; <label>:1460                                    ; preds = %1435, %1362
  %1461 = phi float [ %1458, %1435 ], [ %1430, %1362 ]
  %1462 = phi float [ %1459, %1435 ], [ %1431, %1362 ]
  %1463 = and i32 %1356, 256
  %1464 = icmp eq i32 %1463, 0
  br i1 %1464, label %1511, label %1465

; <label>:1465                                    ; preds = %1460
  %1466 = add i32 %50, 476
  %1467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1466, i32 undef)  ; BufferLoad(srv,index,wot)
  %1468 = extractvalue %dx.types.ResRet.i32 %1467, 0
  %1469 = add i32 %1468, 0
  %1470 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1469, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1471 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1470, %dx.types.Handle %105, float %1461, float %1462, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1472 = extractvalue %dx.types.ResRet.f32 %1471, 0
  %1473 = add i32 %50, 116
  %1474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1473, i32 undef)  ; BufferLoad(srv,index,wot)
  %1475 = extractvalue %dx.types.ResRet.i32 %1474, 0
  %1476 = shl i32 %1475, 4
  %1477 = and i32 %1476, 32752
  %1478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1477)  ; LegacyF16ToF32(value)
  %1479 = lshr i32 %1475, 7
  %1480 = and i32 %1479, 32752
  %1481 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1480)  ; LegacyF16ToF32(value)
  %1482 = fsub fast float 1.000000e+00, %704
  %1483 = call float @dx.op.binary.f32(i32 35, float %1482, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1484 = bitcast float %704 to i32
  %1485 = sitofp i32 %1484 to float
  %1486 = fadd fast float %1485, 0xC1CFBF8940000000
  %1487 = fmul fast float %1481, %1486
  %1488 = fadd fast float %1487, 0x41CFBF8940000000
  %1489 = fptosi float %1488 to i32
  %1490 = bitcast i32 %1489 to float
  %1491 = bitcast float %1483 to i32
  %1492 = sitofp i32 %1491 to float
  %1493 = fadd fast float %1492, 0xC1CFBF8940000000
  %1494 = fmul fast float %1493, %1481
  %1495 = fadd fast float %1494, 0x41CFBF8940000000
  %1496 = fptosi float %1495 to i32
  %1497 = bitcast i32 %1496 to float
  %1498 = fmul fast float %1490, %1478
  %1499 = fmul fast float %1497, %1478
  %1500 = fsub fast float %1483, %1498
  %1501 = fadd fast float %1499, %1483
  %1502 = call float @dx.op.unary.f32(i32 7, float %1500)  ; Saturate(value)
  %1503 = call float @dx.op.unary.f32(i32 7, float %1501)  ; Saturate(value)
  %1504 = fsub fast float %1472, %1502
  %1505 = fsub fast float %1503, %1502
  %1506 = bitcast float %1505 to i32
  %1507 = sub nsw i32 2129859010, %1506
  %1508 = bitcast i32 %1507 to float
  %1509 = fmul fast float %1508, %1504
  %1510 = call float @dx.op.unary.f32(i32 7, float %1509)  ; Saturate(value)
  br label %1511

; <label>:1511                                    ; preds = %1465, %1460
  %1512 = phi float [ %1510, %1465 ], [ %704, %1460 ]
  %1513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %1514 = extractvalue %dx.types.ResRet.i32 %1513, 0
  %1515 = and i32 %1514, 128
  %1516 = icmp eq i32 %1515, 0
  br i1 %1516, label %1533, label %1517

; <label>:1517                                    ; preds = %1511
  %1518 = add i32 %50, 460
  %1519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1518, i32 undef)  ; BufferLoad(srv,index,wot)
  %1520 = extractvalue %dx.types.ResRet.i32 %1519, 0
  %1521 = add i32 %1520, 0
  %1522 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1521, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1523 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1522, %dx.types.Handle %105, float %1461, float %1462, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1524 = extractvalue %dx.types.ResRet.f32 %1523, 0
  %1525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %1526 = extractvalue %dx.types.ResRet.i32 %1525, 0
  %1527 = and i32 %1526, 524288
  %1528 = icmp ne i32 %1527, 0
  %1529 = fcmp fast ogt float %1524, 0x3FE0101020000000
  %1530 = select i1 %1529, float 1.000000e+00, float 0.000000e+00
  %1531 = select i1 %1528, float %1530, float %1524
  %1532 = fmul fast float %1531, %1512
  br label %1533

; <label>:1533                                    ; preds = %1517, %1511
  %1534 = phi float [ %1532, %1517 ], [ %1512, %1511 ]
  %1535 = fcmp fast ult float %1534, 0x3F70101020000000
  br i1 %1535, label %2223, label %1536

; <label>:1536                                    ; preds = %1533
  %1537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %1538 = extractvalue %dx.types.ResRet.i32 %1537, 0
  %1539 = and i32 %1538, 16
  %1540 = icmp eq i32 %1539, 0
  br i1 %1540, label %1739, label %1541

; <label>:1541                                    ; preds = %1536
  %1542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1377, i32 undef)  ; BufferLoad(srv,index,wot)
  %1543 = extractvalue %dx.types.ResRet.i32 %1542, 0
  %1544 = add i32 %50, 412
  %1545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1544, i32 undef)  ; BufferLoad(srv,index,wot)
  %1546 = extractvalue %dx.types.ResRet.i32 %1545, 0
  %1547 = add i32 %1546, 0
  %1548 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1547, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1549 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1548, %dx.types.Handle %104, float %1461, float %1462, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1550 = extractvalue %dx.types.ResRet.f32 %1549, 0
  %1551 = extractvalue %dx.types.ResRet.f32 %1549, 1
  %1552 = extractvalue %dx.types.ResRet.f32 %1549, 2
  %1553 = extractvalue %dx.types.ResRet.f32 %1549, 3
  %1554 = and i32 %1543, 255
  %1555 = uitofp i32 %1554 to float
  %1556 = lshr i32 %1543, 8
  %1557 = and i32 %1556, 255
  %1558 = uitofp i32 %1557 to float
  %1559 = fmul fast float %1553, %1555
  %1560 = fadd fast float %1559, %1558
  %1561 = fmul fast float %1560, 0x3F70101000000000
  %1562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %1563 = extractvalue %dx.types.ResRet.i32 %1562, 0
  %1564 = and i32 %1563, 512
  %1565 = icmp eq i32 %1564, 0
  br i1 %1565, label %1574, label %1566

; <label>:1566                                    ; preds = %1541
  %1567 = add i32 %50, 496
  %1568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1567, i32 undef)  ; BufferLoad(srv,index,wot)
  %1569 = extractvalue %dx.types.ResRet.i32 %1568, 0
  %1570 = add i32 %1569, 0
  %1571 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1570, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1572 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1571, %dx.types.Handle %105, float %1461, float %1462, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1573 = extractvalue %dx.types.ResRet.f32 %1572, 0
  br label %1574

; <label>:1574                                    ; preds = %1566, %1541
  %1575 = phi float [ %1573, %1566 ], [ 1.000000e+00, %1541 ]
  %1576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %1577 = extractvalue %dx.types.ResRet.i32 %1576, 0
  %1578 = and i32 %1577, 33554432
  %1579 = icmp eq i32 %1578, 0
  br i1 %1579, label %1686, label %1580

; <label>:1580                                    ; preds = %1574
  %1581 = add i32 %50, 240
  %1582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1581, i32 undef)  ; BufferLoad(srv,index,wot)
  %1583 = extractvalue %dx.types.ResRet.i32 %1582, 0
  %1584 = and i32 %1583, 65535
  %1585 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1584)  ; LegacyF16ToF32(value)
  %1586 = lshr i32 %1583, 16
  %1587 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1586)  ; LegacyF16ToF32(value)
  %1588 = add i32 %50, 244
  %1589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1588, i32 undef)  ; BufferLoad(srv,index,wot)
  %1590 = extractvalue %dx.types.ResRet.i32 %1589, 0
  %1591 = and i32 %1590, 65535
  %1592 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1591)  ; LegacyF16ToF32(value)
  %1593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %1594 = extractvalue %dx.types.ResRet.i32 %1593, 0
  %1595 = lshr i32 %1594, 24
  %1596 = uitofp i32 %1595 to float
  %1597 = fmul fast float %1596, 0x3F70101020000000
  %1598 = and i32 %1594, 255
  %1599 = uitofp i32 %1598 to float
  %1600 = fmul fast float %1599, 0x3F70101020000000
  %1601 = lshr i32 %1594, 8
  %1602 = and i32 %1601, 255
  %1603 = uitofp i32 %1602 to float
  %1604 = fmul fast float %1603, 0x3F70101020000000
  %1605 = lshr i32 %1594, 16
  %1606 = and i32 %1605, 255
  %1607 = uitofp i32 %1606 to float
  %1608 = fmul fast float %1607, 0x3F70101020000000
  %1609 = add i32 %50, 236
  %1610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1609, i32 undef)  ; BufferLoad(srv,index,wot)
  %1611 = extractvalue %dx.types.ResRet.i32 %1610, 0
  %1612 = lshr i32 %1611, 24
  %1613 = uitofp i32 %1612 to float
  %1614 = fmul fast float %1613, 0x3F70101020000000
  %1615 = and i32 %1611, 255
  %1616 = uitofp i32 %1615 to float
  %1617 = fmul fast float %1616, 0x3F70101020000000
  %1618 = lshr i32 %1611, 8
  %1619 = and i32 %1618, 255
  %1620 = uitofp i32 %1619 to float
  %1621 = fmul fast float %1620, 0x3F70101020000000
  %1622 = lshr i32 %1611, 16
  %1623 = and i32 %1622, 255
  %1624 = uitofp i32 %1623 to float
  %1625 = fmul fast float %1624, 0x3F70101020000000
  %1626 = bitcast float %1550 to i32
  %1627 = ashr i32 %1626, 1
  %1628 = sub nsw i32 1597463174, %1627
  %1629 = bitcast i32 %1628 to float
  %1630 = fmul fast float %1550, 5.000000e-01
  %1631 = fmul fast float %1629, %1629
  %1632 = fmul fast float %1631, %1630
  %1633 = fsub fast float 1.500000e+00, %1632
  %1634 = fmul fast float %1629, %1550
  %1635 = fmul fast float %1634, %1633
  %1636 = bitcast float %1551 to i32
  %1637 = ashr i32 %1636, 1
  %1638 = sub nsw i32 1597463174, %1637
  %1639 = bitcast i32 %1638 to float
  %1640 = fmul fast float %1551, 5.000000e-01
  %1641 = fmul fast float %1639, %1639
  %1642 = fmul fast float %1641, %1640
  %1643 = fsub fast float 1.500000e+00, %1642
  %1644 = fmul fast float %1639, %1551
  %1645 = fmul fast float %1644, %1643
  %1646 = bitcast float %1552 to i32
  %1647 = ashr i32 %1646, 1
  %1648 = sub nsw i32 1597463174, %1647
  %1649 = bitcast i32 %1648 to float
  %1650 = fmul fast float %1552, 5.000000e-01
  %1651 = fmul fast float %1649, %1649
  %1652 = fmul fast float %1651, %1650
  %1653 = fsub fast float 1.500000e+00, %1652
  %1654 = fmul fast float %1649, %1552
  %1655 = fmul fast float %1654, %1653
  %1656 = fsub fast float %1635, %1617
  %1657 = fsub fast float %1645, %1621
  %1658 = fsub fast float %1655, %1625
  %1659 = fmul fast float %1656, %1585
  %1660 = fmul fast float %1657, %1587
  %1661 = fmul fast float %1658, %1592
  %1662 = fadd fast float %1659, %1600
  %1663 = fadd fast float %1660, %1604
  %1664 = fadd fast float %1661, %1608
  %1665 = call float @dx.op.unary.f32(i32 7, float %1662)  ; Saturate(value)
  %1666 = call float @dx.op.unary.f32(i32 7, float %1663)  ; Saturate(value)
  %1667 = call float @dx.op.unary.f32(i32 7, float %1664)  ; Saturate(value)
  %1668 = fmul fast float %1665, %1665
  %1669 = fmul fast float %1666, %1666
  %1670 = fmul fast float %1667, %1667
  %1671 = fsub fast float %1668, %1550
  %1672 = fsub fast float %1669, %1551
  %1673 = fsub fast float %1670, %1552
  %1674 = fmul fast float %1671, %1575
  %1675 = fmul fast float %1672, %1575
  %1676 = fmul fast float %1673, %1575
  %1677 = fadd fast float %1674, %1550
  %1678 = fadd fast float %1675, %1551
  %1679 = fadd fast float %1676, %1552
  %1680 = fadd fast float %1597, %1561
  %1681 = fsub fast float %1680, %1614
  %1682 = call float @dx.op.unary.f32(i32 7, float %1681)  ; Saturate(value)
  %1683 = fsub fast float %1682, %1561
  %1684 = fmul fast float %1683, %1575
  %1685 = fadd fast float %1684, %1561
  br label %1739

; <label>:1686                                    ; preds = %1574
  %1687 = and i32 %1577, 134217728
  %1688 = icmp eq i32 %1687, 0
  br i1 %1688, label %1723, label %1689

; <label>:1689                                    ; preds = %1686
  %1690 = call float @dx.op.unary.f32(i32 24, float %404)  ; Sqrt(value)
  %1691 = call float @dx.op.unary.f32(i32 24, float %405)  ; Sqrt(value)
  %1692 = call float @dx.op.unary.f32(i32 24, float %406)  ; Sqrt(value)
  %1693 = fadd fast float %1690, -5.000000e-01
  %1694 = fadd fast float %1691, -5.000000e-01
  %1695 = fadd fast float %1692, -5.000000e-01
  %1696 = fmul fast float %1693, %1575
  %1697 = fmul fast float %1694, %1575
  %1698 = fmul fast float %1695, %1575
  %1699 = fadd fast float %1696, 5.000000e-01
  %1700 = fadd fast float %1697, 5.000000e-01
  %1701 = fadd fast float %1698, 5.000000e-01
  %1702 = call float @dx.op.unary.f32(i32 24, float %1550)  ; Sqrt(value)
  %1703 = call float @dx.op.unary.f32(i32 24, float %1551)  ; Sqrt(value)
  %1704 = call float @dx.op.unary.f32(i32 24, float %1552)  ; Sqrt(value)
  %1705 = fmul fast float %1699, 2.000000e+00
  %1706 = fsub fast float 1.000000e+00, %1705
  %1707 = fmul fast float %1706, %1702
  %1708 = fadd fast float %1707, %1705
  %1709 = fmul fast float %1708, %1702
  %1710 = fmul fast float %1700, 2.000000e+00
  %1711 = fsub fast float 1.000000e+00, %1710
  %1712 = fmul fast float %1711, %1703
  %1713 = fadd fast float %1712, %1710
  %1714 = fmul fast float %1713, %1703
  %1715 = fmul fast float %1701, 2.000000e+00
  %1716 = fsub fast float 1.000000e+00, %1715
  %1717 = fmul fast float %1716, %1704
  %1718 = fadd fast float %1717, %1715
  %1719 = fmul fast float %1718, %1704
  %1720 = fmul fast float %1709, %1709
  %1721 = fmul fast float %1714, %1714
  %1722 = fmul fast float %1719, %1719
  br label %1739

; <label>:1723                                    ; preds = %1686
  %1724 = fmul fast float %404, %404
  %1725 = fmul fast float %405, %405
  %1726 = fmul fast float %406, %406
  %1727 = fadd fast float %1724, -1.000000e+00
  %1728 = fadd fast float %1725, -1.000000e+00
  %1729 = fadd fast float %1726, -1.000000e+00
  %1730 = fmul fast float %1575, %1727
  %1731 = fmul fast float %1575, %1728
  %1732 = fmul fast float %1575, %1729
  %1733 = fadd fast float %1730, 1.000000e+00
  %1734 = fadd fast float %1731, 1.000000e+00
  %1735 = fadd fast float %1732, 1.000000e+00
  %1736 = fmul fast float %1733, %1550
  %1737 = fmul fast float %1734, %1551
  %1738 = fmul fast float %1735, %1552
  br label %1739

; <label>:1739                                    ; preds = %1723, %1689, %1580, %1536
  %1740 = phi float [ %1685, %1580 ], [ %1561, %1689 ], [ %1561, %1723 ], [ 0x3FA23C0BE0000000, %1536 ]
  %1741 = phi float [ %1677, %1580 ], [ %1720, %1689 ], [ %1736, %1723 ], [ 1.000000e+00, %1536 ]
  %1742 = phi float [ %1678, %1580 ], [ %1721, %1689 ], [ %1737, %1723 ], [ 1.000000e+00, %1536 ]
  %1743 = phi float [ %1679, %1580 ], [ %1722, %1689 ], [ %1738, %1723 ], [ 1.000000e+00, %1536 ]
  %1744 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1745 = extractvalue %dx.types.CBufRet.i32 %1744, 1
  %1746 = and i32 %1745, 1
  %1747 = icmp ne i32 %1746, 0
  %1748 = add i32 %50, 356
  %1749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1748, i32 undef)  ; BufferLoad(srv,index,wot)
  %1750 = extractvalue %dx.types.ResRet.i32 %1749, 0
  %1751 = and i32 %1750, 32
  %1752 = icmp ne i32 %1751, 0
  %1753 = and i1 %1747, %1752
  %1754 = select i1 %1753, float 1.000000e+00, float %1741
  %1755 = select i1 %1753, float 0x3FD3333340000000, float %1742
  %1756 = select i1 %1753, float 0x3FD3333340000000, float %1743
  %1757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %1758 = extractvalue %dx.types.ResRet.i32 %1757, 0
  %1759 = and i32 %1758, 32
  %1760 = icmp eq i32 %1759, 0
  br i1 %1760, label %1833, label %1761

; <label>:1761                                    ; preds = %1739
  %1762 = add i32 %50, 108
  %1763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1762, i32 undef)  ; BufferLoad(srv,index,wot)
  %1764 = extractvalue %dx.types.ResRet.i32 %1763, 0
  %1765 = add i32 %50, 428
  %1766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %1767 = extractvalue %dx.types.ResRet.i32 %1766, 0
  %1768 = add i32 %1767, 0
  %1769 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1768, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1770 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1769, %dx.types.Handle %104, float %1461, float %1462, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1771 = extractvalue %dx.types.ResRet.f32 %1770, 0
  %1772 = extractvalue %dx.types.ResRet.f32 %1770, 1
  %1773 = extractvalue %dx.types.ResRet.f32 %1770, 2
  %1774 = extractvalue %dx.types.ResRet.f32 %1770, 3
  %1775 = and i32 %1764, 255
  %1776 = uitofp i32 %1775 to float
  %1777 = lshr i32 %1764, 8
  %1778 = and i32 %1777, 255
  %1779 = uitofp i32 %1778 to float
  %1780 = lshr i32 %1764, 16
  %1781 = and i32 %1780, 255
  %1782 = uitofp i32 %1781 to float
  %1783 = fmul fast float %1782, 0x3F70101000000000
  %1784 = fmul fast float %1771, %1776
  %1785 = fadd fast float %1784, %1779
  %1786 = fmul fast float %1785, 0x3F70101000000000
  %1787 = fadd fast float %1772, -5.000000e-01
  %1788 = fadd fast float %1774, -5.000000e-01
  %1789 = fmul fast float %1787, %1783
  %1790 = fmul fast float %1788, %1783
  %1791 = fadd fast float %1789, 5.000000e-01
  %1792 = fadd fast float %1790, 5.000000e-01
  %1793 = fmul fast float %1791, 2.000000e+00
  %1794 = fadd fast float %1793, -1.000000e+00
  %1795 = fmul fast float %1792, 2.000000e+00
  %1796 = fadd fast float %1795, -1.000000e+00
  %1797 = fadd fast float %1794, %1796
  %1798 = fmul fast float %1797, 5.000000e-01
  %1799 = fsub fast float %1794, %1796
  %1800 = fmul fast float %1799, 5.000000e-01
  %1801 = call float @dx.op.unary.f32(i32 6, float %1798)  ; FAbs(value)
  %1802 = fsub fast float 1.000000e+00, %1801
  %1803 = call float @dx.op.unary.f32(i32 6, float %1800)  ; FAbs(value)
  %1804 = fsub fast float %1802, %1803
  %1805 = call float @dx.op.dot3.f32(i32 55, float %1798, float %1800, float %1804, float %1798, float %1800, float %1804)  ; Dot3(ax,ay,az,bx,by,bz)
  %1806 = call float @dx.op.unary.f32(i32 25, float %1805)  ; Rsqrt(value)
  %1807 = fmul fast float %1798, %1806
  %1808 = fmul fast float %1800, %1806
  %1809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %1810 = extractvalue %dx.types.ResRet.i32 %1809, 0
  %1811 = and i32 %1810, 67108864
  %1812 = icmp eq i32 %1811, 0
  br i1 %1812, label %1829, label %1813

; <label>:1813                                    ; preds = %1761
  %1814 = add i32 %50, 296
  %1815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1814, i32 undef)  ; BufferLoad(srv,index,wot)
  %1816 = extractvalue %dx.types.ResRet.i32 %1815, 0
  %1817 = and i32 %1816, 65535
  %1818 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1817)  ; LegacyF16ToF32(value)
  %1819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1371, i32 undef)  ; BufferLoad(srv,index,wot)
  %1820 = extractvalue %dx.types.ResRet.i32 %1819, 0
  %1821 = and i32 %1820, 65535
  %1822 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1821)  ; LegacyF16ToF32(value)
  %1823 = lshr i32 %1816, 16
  %1824 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1823)  ; LegacyF16ToF32(value)
  %1825 = fsub fast float %1786, %1824
  %1826 = fmul fast float %1825, %1818
  %1827 = fadd fast float %1826, %1822
  %1828 = call float @dx.op.unary.f32(i32 7, float %1827)  ; Saturate(value)
  br label %1829

; <label>:1829                                    ; preds = %1813, %1761
  %1830 = phi float [ %1828, %1813 ], [ %1786, %1761 ]
  %1831 = call float @dx.op.dot2.f32(i32 54, float %1807, float %1808, float %1365, float %1366)  ; Dot2(ax,ay,bx,by)
  %1832 = call float @dx.op.dot2.f32(i32 54, float %1807, float %1808, float %1367, float %1368)  ; Dot2(ax,ay,bx,by)
  br label %1833

; <label>:1833                                    ; preds = %1829, %1739
  %1834 = phi float [ %1830, %1829 ], [ 0x3FD6666660000000, %1739 ]
  %1835 = phi float [ %1831, %1829 ], [ 0.000000e+00, %1739 ]
  %1836 = phi float [ %1832, %1829 ], [ 0.000000e+00, %1739 ]
  %1837 = phi float [ %1773, %1829 ], [ 1.000000e+00, %1739 ]
  %1838 = add i32 %50, 176
  %1839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1838, i32 undef)  ; BufferLoad(srv,index,wot)
  %1840 = extractvalue %dx.types.ResRet.i32 %1839, 0
  %1841 = lshr i32 %1840, 22
  %1842 = shl nuw nsw i32 %1841, 5
  %1843 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1842)  ; LegacyF16ToF32(value)
  %1844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %1845 = extractvalue %dx.types.ResRet.i32 %1844, 0
  %1846 = and i32 %1845, 64
  %1847 = icmp eq i32 %1846, 0
  br i1 %1847, label %1881, label %1848

; <label>:1848                                    ; preds = %1833
  %1849 = add i32 %50, 444
  %1850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1849, i32 undef)  ; BufferLoad(srv,index,wot)
  %1851 = extractvalue %dx.types.ResRet.i32 %1850, 0
  %1852 = add i32 %1851, 0
  %1853 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1852, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %1855 = extractvalue %dx.types.ResRet.i32 %1854, 0
  %1856 = and i32 %1855, 131072
  %1857 = icmp eq i32 %1856, 0
  %1858 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1853, %dx.types.Handle %104, float %1461, float %1462, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1859 = extractvalue %dx.types.ResRet.f32 %1858, 0
  %1860 = extractvalue %dx.types.ResRet.f32 %1858, 1
  %1861 = extractvalue %dx.types.ResRet.f32 %1858, 2
  %1862 = fmul fast float %387, %1859
  %1863 = fmul fast float %388, %1860
  %1864 = fmul fast float %389, %1861
  br i1 %1857, label %1871, label %1865

; <label>:1865                                    ; preds = %1848
  %1866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1867 = extractvalue %dx.types.CBufRet.f32 %1866, 0
  %1868 = fmul fast float %1867, %1862
  %1869 = fmul fast float %1867, %1863
  %1870 = fmul fast float %1867, %1864
  br label %1871

; <label>:1871                                    ; preds = %1865, %1848
  %1872 = phi float [ %1868, %1865 ], [ %1862, %1848 ]
  %1873 = phi float [ %1869, %1865 ], [ %1863, %1848 ]
  %1874 = phi float [ %1870, %1865 ], [ %1864, %1848 ]
  %1875 = fmul fast float %1872, %1843
  %1876 = select i1 %269, float %1875, float %1872
  %1877 = call float @dx.op.dot3.f32(i32 55, float %1876, float %1873, float %1874, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1878 = select i1 %269, float 0.000000e+00, float %1872
  %1879 = select i1 %269, float %1877, float %1873
  %1880 = select i1 %269, float 0.000000e+00, float %1874
  br label %1881

; <label>:1881                                    ; preds = %1871, %1833
  %1882 = phi float [ %1878, %1871 ], [ 0.000000e+00, %1833 ]
  %1883 = phi float [ %1879, %1871 ], [ 0.000000e+00, %1833 ]
  %1884 = phi float [ %1880, %1871 ], [ 0.000000e+00, %1833 ]
  %1885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %1886 = extractvalue %dx.types.ResRet.i32 %1885, 0
  %1887 = and i32 %1886, 1024
  %1888 = icmp eq i32 %1887, 0
  br i1 %1888, label %1919, label %1889

; <label>:1889                                    ; preds = %1881
  %1890 = add i32 %50, 168
  %1891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1890, i32 undef)  ; BufferLoad(srv,index,wot)
  %1892 = extractvalue %dx.types.ResRet.i32 %1891, 0
  %1893 = and i32 %1892, 255
  %1894 = uitofp i32 %1893 to float
  %1895 = fmul fast float %1894, 0x3F70101020000000
  %1896 = lshr i32 %1892, 8
  %1897 = and i32 %1896, 255
  %1898 = uitofp i32 %1897 to float
  %1899 = fmul fast float %1898, 0x3F70101020000000
  %1900 = lshr i32 %1892, 16
  %1901 = and i32 %1900, 255
  %1902 = uitofp i32 %1901 to float
  %1903 = fmul fast float %1902, 0x3F70101020000000
  %1904 = fmul fast float %1895, %1895
  %1905 = fmul fast float %1899, %1899
  %1906 = fmul fast float %1903, %1903
  %1907 = add i32 %50, 512
  %1908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1907, i32 undef)  ; BufferLoad(srv,index,wot)
  %1909 = extractvalue %dx.types.ResRet.i32 %1908, 0
  %1910 = add i32 %1909, 0
  %1911 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1910, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1912 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1911, %dx.types.Handle %105, float %1461, float %1462, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1913 = extractvalue %dx.types.ResRet.f32 %1912, 0
  %1914 = extractvalue %dx.types.ResRet.f32 %1912, 1
  %1915 = extractvalue %dx.types.ResRet.f32 %1912, 2
  %1916 = fmul fast float %1904, %1913
  %1917 = fmul fast float %1905, %1914
  %1918 = fmul fast float %1906, %1915
  br label %1919

; <label>:1919                                    ; preds = %1889, %1881
  %1920 = phi float [ %1916, %1889 ], [ 0.000000e+00, %1881 ]
  %1921 = phi float [ %1917, %1889 ], [ 0.000000e+00, %1881 ]
  %1922 = phi float [ %1918, %1889 ], [ 0.000000e+00, %1881 ]
  %1923 = fcmp fast ogt float %1920, 0.000000e+00
  %1924 = fcmp fast ogt float %1921, 0.000000e+00
  %1925 = fcmp fast ogt float %1922, 0.000000e+00
  %1926 = call float @dx.op.unary.f32(i32 23, float %1920)  ; Log(value)
  %1927 = call float @dx.op.unary.f32(i32 23, float %1921)  ; Log(value)
  %1928 = call float @dx.op.unary.f32(i32 23, float %1922)  ; Log(value)
  %1929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1838, i32 undef)  ; BufferLoad(srv,index,wot)
  %1930 = extractvalue %dx.types.ResRet.i32 %1929, 0
  %1931 = lshr i32 %1930, 7
  %1932 = and i32 %1931, 32752
  %1933 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1932)  ; LegacyF16ToF32(value)
  %1934 = fmul fast float %1926, 0xBFE62E4300000000
  %1935 = fmul fast float %1934, %1933
  %1936 = fmul fast float %1927, 0xBFE62E4300000000
  %1937 = fmul fast float %1936, %1933
  %1938 = fmul fast float %1928, 0xBFE62E4300000000
  %1939 = fmul fast float %1938, %1933
  %1940 = select i1 %1923, float %1935, float 1.270000e+02
  %1941 = select i1 %1924, float %1937, float 1.270000e+02
  %1942 = select i1 %1925, float %1939, float 1.270000e+02
  %1943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %1944 = extractvalue %dx.types.ResRet.i32 %1943, 0
  %1945 = and i32 %1944, 10240
  %1946 = icmp eq i32 %1945, 0
  br i1 %1946, label %1967, label %1947

; <label>:1947                                    ; preds = %1919
  %1948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %1949 = extractvalue %dx.types.ResRet.i32 %1948, 0
  %1950 = and i32 %1949, 2048
  %1951 = icmp eq i32 %1950, 0
  br i1 %1951, label %1967, label %1952

; <label>:1952                                    ; preds = %1947
  %1953 = add i32 %50, 528
  %1954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1953, i32 undef)  ; BufferLoad(srv,index,wot)
  %1955 = extractvalue %dx.types.ResRet.i32 %1954, 0
  %1956 = add i32 %1955, 0
  %1957 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1956, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1958 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1957, %dx.types.Handle %105, float %1461, float %1462, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1959 = extractvalue %dx.types.ResRet.f32 %1958, 3
  %1960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1838, i32 undef)  ; BufferLoad(srv,index,wot)
  %1961 = extractvalue %dx.types.ResRet.i32 %1960, 0
  %1962 = shl i32 %1961, 4
  %1963 = and i32 %1962, 32752
  %1964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1963)  ; LegacyF16ToF32(value)
  %1965 = fmul fast float %1964, %1959
  %1966 = call float @dx.op.binary.f32(i32 35, float %1965, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1967

; <label>:1967                                    ; preds = %1952, %1947, %1919
  %1968 = phi float [ %1966, %1952 ], [ 0x3F70101020000000, %1947 ], [ 0x3F70101020000000, %1919 ]
  %1969 = add i32 %50, 112
  %1970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1971 = extractvalue %dx.types.ResRet.i32 %1970, 0
  %1972 = and i32 %1971, 255
  %1973 = uitofp i32 %1972 to float
  %1974 = lshr i32 %1971, 8
  %1975 = and i32 %1974, 255
  %1976 = uitofp i32 %1975 to float
  %1977 = call float @dx.op.dot3.f32(i32 55, float %1754, float %1755, float %1756, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1978 = fmul fast float %1976, %1977
  %1979 = fadd fast float %1978, %1973
  %1980 = fmul fast float %1979, 0x3F70101020000000
  %1981 = call float @dx.op.unary.f32(i32 7, float %1980)  ; Saturate(value)
  br i1 %1353, label %1982, label %2017

; <label>:1982                                    ; preds = %1967
  %1983 = fmul fast float %1968, 2.000000e+00
  %1984 = fcmp fast olt float %1940, 1.270000e+02
  %1985 = fcmp fast olt float %1941, 1.270000e+02
  %1986 = fcmp fast olt float %1942, 1.270000e+02
  %1987 = fmul fast float %1940, 0xBFF7154760000000
  %1988 = fmul fast float %1987, %1983
  %1989 = fmul fast float %1941, 0xBFF7154760000000
  %1990 = fmul fast float %1989, %1983
  %1991 = fmul fast float %1942, 0xBFF7154760000000
  %1992 = fmul fast float %1991, %1983
  %1993 = call float @dx.op.unary.f32(i32 21, float %1988)  ; Exp(value)
  %1994 = call float @dx.op.unary.f32(i32 21, float %1990)  ; Exp(value)
  %1995 = call float @dx.op.unary.f32(i32 21, float %1992)  ; Exp(value)
  %1996 = call float @dx.op.unary.f32(i32 7, float %1993)  ; Saturate(value)
  %1997 = call float @dx.op.unary.f32(i32 7, float %1994)  ; Saturate(value)
  %1998 = call float @dx.op.unary.f32(i32 7, float %1995)  ; Saturate(value)
  %1999 = fadd fast float %1996, -1.000000e+00
  %2000 = select i1 %1984, float %1999, float -1.000000e+00
  %2001 = fadd fast float %1997, -1.000000e+00
  %2002 = select i1 %1985, float %2001, float -1.000000e+00
  %2003 = fadd fast float %1998, -1.000000e+00
  %2004 = select i1 %1986, float %2003, float -1.000000e+00
  %2005 = fmul fast float %2000, %1534
  %2006 = fmul fast float %2002, %1534
  %2007 = fmul fast float %2004, %1534
  %2008 = fadd fast float %2005, 1.000000e+00
  %2009 = fadd fast float %2006, 1.000000e+00
  %2010 = fadd fast float %2007, 1.000000e+00
  %2011 = fmul fast float %2008, %1337
  %2012 = fmul fast float %2009, %1338
  %2013 = fmul fast float %2010, %1339
  %2014 = fmul fast float %2008, %1340
  %2015 = fmul fast float %2009, %1341
  %2016 = fmul fast float %2010, %1342
  br label %2017

; <label>:2017                                    ; preds = %1982, %1967
  %2018 = phi float [ %2011, %1982 ], [ %1337, %1967 ]
  %2019 = phi float [ %2012, %1982 ], [ %1338, %1967 ]
  %2020 = phi float [ %2013, %1982 ], [ %1339, %1967 ]
  %2021 = phi float [ %2014, %1982 ], [ %1340, %1967 ]
  %2022 = phi float [ %2015, %1982 ], [ %1341, %1967 ]
  %2023 = phi float [ %2016, %1982 ], [ %1342, %1967 ]
  %2024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %2025 = extractvalue %dx.types.ResRet.i32 %2024, 0
  %2026 = and i32 %2025, 3
  %2027 = icmp eq i32 %2026, 3
  br i1 %2027, label %2106, label %2028

; <label>:2028                                    ; preds = %2017
  %2029 = and i32 %2025, 16
  %2030 = icmp ne i32 %2029, 0
  %2031 = select i1 %2030, float %1534, float 0.000000e+00
  %2032 = icmp eq i32 %2026, 0
  br i1 %2032, label %2033, label %2061

; <label>:2033                                    ; preds = %2028
  %2034 = and i32 %2025, 64
  %2035 = icmp ne i32 %2034, 0
  %2036 = select i1 %2035, float %1534, float 0.000000e+00
  %2037 = fsub fast float %1754, %2018
  %2038 = fsub fast float %1755, %2019
  %2039 = fsub fast float %1756, %2020
  %2040 = fmul fast float %2031, %2037
  %2041 = fmul fast float %2031, %2038
  %2042 = fmul fast float %2031, %2039
  %2043 = fadd fast float %2040, %2018
  %2044 = fadd fast float %2041, %2019
  %2045 = fadd fast float %2042, %2020
  %2046 = fsub fast float %1740, %1346
  %2047 = fmul fast float %2031, %2046
  %2048 = fadd fast float %2047, %1346
  %2049 = fsub fast float %1882, %2021
  %2050 = fsub fast float %1883, %2022
  %2051 = fsub fast float %1884, %2023
  %2052 = fmul fast float %2036, %2049
  %2053 = fmul fast float %2036, %2050
  %2054 = fmul fast float %2036, %2051
  %2055 = fadd fast float %2052, %2021
  %2056 = fadd fast float %2053, %2022
  %2057 = fadd fast float %2054, %2023
  %2058 = fsub fast float %1981, %1351
  %2059 = fmul fast float %2031, %2058
  %2060 = fadd fast float %2059, %1351
  br label %2106

; <label>:2061                                    ; preds = %2028
  %2062 = icmp eq i32 %2026, 1
  br i1 %2062, label %2063, label %2076

; <label>:2063                                    ; preds = %2061
  %2064 = fadd fast float %1754, -1.000000e+00
  %2065 = fadd fast float %1755, -1.000000e+00
  %2066 = fadd fast float %1756, -1.000000e+00
  %2067 = fmul fast float %2031, %2064
  %2068 = fmul fast float %2031, %2065
  %2069 = fmul fast float %2031, %2066
  %2070 = fadd fast float %2067, 1.000000e+00
  %2071 = fadd fast float %2068, 1.000000e+00
  %2072 = fadd fast float %2069, 1.000000e+00
  %2073 = fmul fast float %2070, %2018
  %2074 = fmul fast float %2071, %2019
  %2075 = fmul fast float %2072, %2020
  br label %2106

; <label>:2076                                    ; preds = %2061
  %2077 = icmp eq i32 %2026, 2
  br i1 %2077, label %2078, label %2106

; <label>:2078                                    ; preds = %2076
  %2079 = call float @dx.op.unary.f32(i32 24, float %1754)  ; Sqrt(value)
  %2080 = call float @dx.op.unary.f32(i32 24, float %1755)  ; Sqrt(value)
  %2081 = call float @dx.op.unary.f32(i32 24, float %1756)  ; Sqrt(value)
  %2082 = fadd fast float %2079, -5.000000e-01
  %2083 = fadd fast float %2080, -5.000000e-01
  %2084 = fadd fast float %2081, -5.000000e-01
  %2085 = fmul fast float %2082, %2031
  %2086 = fmul fast float %2083, %2031
  %2087 = fmul fast float %2084, %2031
  %2088 = fadd fast float %2085, 5.000000e-01
  %2089 = fadd fast float %2086, 5.000000e-01
  %2090 = fadd fast float %2087, 5.000000e-01
  %2091 = fmul fast float %2088, 2.000000e+00
  %2092 = fsub fast float 1.000000e+00, %2091
  %2093 = fmul fast float %2092, %2018
  %2094 = fadd fast float %2093, %2091
  %2095 = fmul fast float %2094, %2018
  %2096 = fmul fast float %2089, 2.000000e+00
  %2097 = fsub fast float 1.000000e+00, %2096
  %2098 = fmul fast float %2097, %2019
  %2099 = fadd fast float %2098, %2096
  %2100 = fmul fast float %2099, %2019
  %2101 = fmul fast float %2090, 2.000000e+00
  %2102 = fsub fast float 1.000000e+00, %2101
  %2103 = fmul fast float %2102, %2020
  %2104 = fadd fast float %2103, %2101
  %2105 = fmul fast float %2104, %2020
  br label %2106

; <label>:2106                                    ; preds = %2078, %2076, %2063, %2033, %2017
  %2107 = phi float [ %2018, %2017 ], [ %2095, %2078 ], [ %2018, %2076 ], [ %2073, %2063 ], [ %2043, %2033 ]
  %2108 = phi float [ %2019, %2017 ], [ %2100, %2078 ], [ %2019, %2076 ], [ %2074, %2063 ], [ %2044, %2033 ]
  %2109 = phi float [ %2020, %2017 ], [ %2105, %2078 ], [ %2020, %2076 ], [ %2075, %2063 ], [ %2045, %2033 ]
  %2110 = phi float [ %2021, %2017 ], [ %2021, %2078 ], [ %2021, %2076 ], [ %2021, %2063 ], [ %2055, %2033 ]
  %2111 = phi float [ %2022, %2017 ], [ %2022, %2078 ], [ %2022, %2076 ], [ %2022, %2063 ], [ %2056, %2033 ]
  %2112 = phi float [ %2023, %2017 ], [ %2023, %2078 ], [ %2023, %2076 ], [ %2023, %2063 ], [ %2057, %2033 ]
  %2113 = phi float [ %1346, %2017 ], [ %1346, %2078 ], [ %1346, %2076 ], [ %1346, %2063 ], [ %2048, %2033 ]
  %2114 = phi float [ %1351, %2017 ], [ %1351, %2078 ], [ %1351, %2076 ], [ %1351, %2063 ], [ %2060, %2033 ]
  %2115 = and i32 %2025, 12
  %2116 = icmp eq i32 %2115, 12
  br i1 %2116, label %2223, label %2117

; <label>:2117                                    ; preds = %2106
  %2118 = and i32 %2025, 2097184
  %2119 = icmp eq i32 %2118, 2097184
  %2120 = select i1 %2119, float %1534, float 0.000000e+00
  %2121 = and i32 %2025, 4194336
  %2122 = icmp eq i32 %2121, 4194336
  %2123 = select i1 %2122, float %1534, float 0.000000e+00
  %2124 = and i32 %2025, 8388640
  %2125 = icmp eq i32 %2124, 8388640
  %2126 = select i1 %2125, float %1534, float 0.000000e+00
  %2127 = and i32 %2025, 1024
  %2128 = icmp ne i32 %2127, 0
  %2129 = select i1 %2128, float %1534, float 0.000000e+00
  %2130 = and i32 %2025, 2048
  %2131 = icmp ne i32 %2130, 0
  %2132 = select i1 %2131, float %1534, float 0.000000e+00
  %2133 = icmp eq i32 %2115, 0
  br i1 %2133, label %2134, label %2159

; <label>:2134                                    ; preds = %2117
  %2135 = fsub fast float %1835, %1335
  %2136 = fsub fast float %1836, %1336
  %2137 = fmul fast float %2120, %2135
  %2138 = fmul fast float %2120, %2136
  %2139 = fadd fast float %2137, %1335
  %2140 = fadd fast float %2138, %1336
  %2141 = fsub fast float %1837, %1349
  %2142 = fmul fast float %2123, %2141
  %2143 = fadd fast float %2142, %1349
  %2144 = fsub fast float %1834, %1348
  %2145 = fmul fast float %2126, %2144
  %2146 = fadd fast float %2145, %1348
  %2147 = fsub fast float %1940, %1343
  %2148 = fsub fast float %1941, %1344
  %2149 = fsub fast float %1942, %1345
  %2150 = fmul fast float %2129, %2147
  %2151 = fmul fast float %2129, %2148
  %2152 = fmul fast float %2129, %2149
  %2153 = fadd fast float %2150, %1343
  %2154 = fadd fast float %2151, %1344
  %2155 = fadd fast float %2152, %1345
  %2156 = fsub fast float %1968, %1350
  %2157 = fmul fast float %2132, %2156
  %2158 = fadd fast float %2157, %1350
  br label %2223

; <label>:2159                                    ; preds = %2117
  %2160 = icmp eq i32 %2115, 4
  br i1 %2160, label %2161, label %2201

; <label>:2161                                    ; preds = %2159
  %2162 = fmul fast float %2120, %1835
  %2163 = fmul fast float %2120, %1836
  %2164 = fadd fast float %2162, %1335
  %2165 = fadd fast float %2163, %1336
  %2166 = call float @dx.op.binary.f32(i32 36, float %1349, float %1837)  ; FMin(a,b)
  %2167 = fsub fast float %2166, %1349
  %2168 = fmul fast float %2167, %2123
  %2169 = fadd fast float %2168, %1349
  %2170 = fadd fast float %1834, %1348
  %2171 = fmul fast float %2170, 0x3FF337FAE0000000
  %2172 = fmul fast float %1348, %1348
  %2173 = fmul fast float %1834, %1834
  %2174 = fadd fast float %2173, %2172
  %2175 = fmul fast float %2174, 0x3FE5152B00000000
  %2176 = fmul fast float %1348, 0xBFCC1F85E0000000
  %2177 = fmul fast float %2176, %1834
  %2178 = fadd fast float %2177, 0xBFE1363700000000
  %2179 = fadd fast float %2178, %2171
  %2180 = fsub fast float %2179, %2175
  %2181 = fmul fast float %2170, 0x3FBA6F0D00000000
  %2182 = fmul fast float %2174, 0x3FD0432880000000
  %2183 = fmul fast float %1348, 0xBFEF110800000000
  %2184 = fmul fast float %2183, %1834
  %2185 = fadd fast float %2184, 1.000000e+00
  %2186 = fsub fast float %2185, %2181
  %2187 = fadd fast float %2186, %2182
  %2188 = fdiv fast float %2180, %2187
  %2189 = call float @dx.op.unary.f32(i32 7, float %2188)  ; Saturate(value)
  %2190 = fsub fast float %2189, %1348
  %2191 = fmul fast float %2190, %2126
  %2192 = fadd fast float %2191, %1348
  %2193 = fmul fast float %2129, %1940
  %2194 = fmul fast float %2129, %1941
  %2195 = fmul fast float %2129, %1942
  %2196 = fadd fast float %2193, %1343
  %2197 = fadd fast float %2194, %1344
  %2198 = fadd fast float %2195, %1345
  %2199 = fmul fast float %2132, %1968
  %2200 = fadd fast float %2199, %1350
  br label %2223

; <label>:2201                                    ; preds = %2159
  %2202 = icmp eq i32 %2115, 8
  br i1 %2202, label %2203, label %2223

; <label>:2203                                    ; preds = %2201
  %2204 = fmul fast float %2120, %1835
  %2205 = fmul fast float %2120, %1836
  %2206 = fadd fast float %2204, %1335
  %2207 = fadd fast float %2205, %1336
  %2208 = call float @dx.op.binary.f32(i32 36, float %1349, float %1837)  ; FMin(a,b)
  %2209 = fsub fast float %2208, %1349
  %2210 = fmul fast float %2209, %2123
  %2211 = fadd fast float %2210, %1349
  %2212 = fsub fast float %1834, %1348
  %2213 = fmul fast float %2126, %2212
  %2214 = fadd fast float %2213, %1348
  %2215 = fmul fast float %2129, %1940
  %2216 = fmul fast float %2129, %1941
  %2217 = fmul fast float %2129, %1942
  %2218 = fadd fast float %2215, %1343
  %2219 = fadd fast float %2216, %1344
  %2220 = fadd fast float %2217, %1345
  %2221 = fmul fast float %2132, %1968
  %2222 = fadd fast float %2221, %1350
  br label %2223

; <label>:2223                                    ; preds = %2203, %2201, %2161, %2134, %2106, %1533, %1352, %1334
  %2224 = phi float [ %1335, %2106 ], [ %1335, %1533 ], [ %1335, %1334 ], [ %2206, %2203 ], [ %1335, %2201 ], [ %2164, %2161 ], [ %2139, %2134 ], [ %1335, %1352 ]
  %2225 = phi float [ %1336, %2106 ], [ %1336, %1533 ], [ %1336, %1334 ], [ %2207, %2203 ], [ %1336, %2201 ], [ %2165, %2161 ], [ %2140, %2134 ], [ %1336, %1352 ]
  %2226 = phi float [ %2107, %2106 ], [ %1337, %1533 ], [ %1337, %1334 ], [ %2107, %2203 ], [ %2107, %2201 ], [ %2107, %2161 ], [ %2107, %2134 ], [ %1337, %1352 ]
  %2227 = phi float [ %2108, %2106 ], [ %1338, %1533 ], [ %1338, %1334 ], [ %2108, %2203 ], [ %2108, %2201 ], [ %2108, %2161 ], [ %2108, %2134 ], [ %1338, %1352 ]
  %2228 = phi float [ %2109, %2106 ], [ %1339, %1533 ], [ %1339, %1334 ], [ %2109, %2203 ], [ %2109, %2201 ], [ %2109, %2161 ], [ %2109, %2134 ], [ %1339, %1352 ]
  %2229 = phi float [ %2110, %2106 ], [ %1340, %1533 ], [ %1340, %1334 ], [ %2110, %2203 ], [ %2110, %2201 ], [ %2110, %2161 ], [ %2110, %2134 ], [ %1340, %1352 ]
  %2230 = phi float [ %2111, %2106 ], [ %1341, %1533 ], [ %1341, %1334 ], [ %2111, %2203 ], [ %2111, %2201 ], [ %2111, %2161 ], [ %2111, %2134 ], [ %1341, %1352 ]
  %2231 = phi float [ %2112, %2106 ], [ %1342, %1533 ], [ %1342, %1334 ], [ %2112, %2203 ], [ %2112, %2201 ], [ %2112, %2161 ], [ %2112, %2134 ], [ %1342, %1352 ]
  %2232 = phi float [ %1343, %2106 ], [ %1343, %1533 ], [ %1343, %1334 ], [ %2218, %2203 ], [ %1343, %2201 ], [ %2196, %2161 ], [ %2153, %2134 ], [ %1343, %1352 ]
  %2233 = phi float [ %1344, %2106 ], [ %1344, %1533 ], [ %1344, %1334 ], [ %2219, %2203 ], [ %1344, %2201 ], [ %2197, %2161 ], [ %2154, %2134 ], [ %1344, %1352 ]
  %2234 = phi float [ %1345, %2106 ], [ %1345, %1533 ], [ %1345, %1334 ], [ %2220, %2203 ], [ %1345, %2201 ], [ %2198, %2161 ], [ %2155, %2134 ], [ %1345, %1352 ]
  %2235 = phi float [ %2113, %2106 ], [ %1346, %1533 ], [ %1346, %1334 ], [ %2113, %2203 ], [ %2113, %2201 ], [ %2113, %2161 ], [ %2113, %2134 ], [ %1346, %1352 ]
  %2236 = phi float [ %1348, %2106 ], [ %1348, %1533 ], [ %1348, %1334 ], [ %2214, %2203 ], [ %1348, %2201 ], [ %2192, %2161 ], [ %2146, %2134 ], [ %1348, %1352 ]
  %2237 = phi float [ %1349, %2106 ], [ %1349, %1533 ], [ %1349, %1334 ], [ %2211, %2203 ], [ %1349, %2201 ], [ %2169, %2161 ], [ %2143, %2134 ], [ %1349, %1352 ]
  %2238 = phi float [ %1350, %2106 ], [ %1350, %1533 ], [ %1350, %1334 ], [ %2222, %2203 ], [ %1350, %2201 ], [ %2200, %2161 ], [ %2158, %2134 ], [ %1350, %1352 ]
  %2239 = phi float [ %2114, %2106 ], [ %1351, %1533 ], [ %1351, %1334 ], [ %2114, %2203 ], [ %2114, %2201 ], [ %2114, %2161 ], [ %2114, %2134 ], [ %1351, %1352 ]
  br i1 %651, label %3111, label %2240

; <label>:2240                                    ; preds = %2223
  %2241 = icmp ult i32 %707, 3
  %2242 = add i32 %50, 56
  %2243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2244 = extractvalue %dx.types.ResRet.i32 %2243, 0
  %2245 = add i32 %50, 60
  %2246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2245, i32 undef)  ; BufferLoad(srv,index,wot)
  %2247 = extractvalue %dx.types.ResRet.i32 %2246, 0
  %2248 = or i32 %2247, %2244
  %2249 = icmp eq i32 %2248, 0
  br i1 %2249, label %3111, label %2250

; <label>:2250                                    ; preds = %2240
  %2251 = and i32 %2244, 262144
  %2252 = icmp ne i32 %2251, 0
  %2253 = select i1 %2252, float %58, float 1.000000e+00
  %2254 = select i1 %2252, float %59, float 0.000000e+00
  %2255 = select i1 %2252, float %60, float 0.000000e+00
  %2256 = select i1 %2252, float %61, float 1.000000e+00
  %2257 = select i1 %2252, float %62, float %86
  %2258 = select i1 %2252, float %63, float %87
  %2259 = add i32 %50, 316
  %2260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2259, i32 undef)  ; BufferLoad(srv,index,wot)
  %2261 = extractvalue %dx.types.ResRet.i32 %2260, 0
  %2262 = lshr i32 %2261, 16
  %2263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2262)  ; LegacyF16ToF32(value)
  %2264 = fmul fast float %2263, 0x3F50624DE0000000
  %2265 = add i32 %50, 120
  %2266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2265, i32 undef)  ; BufferLoad(srv,index,wot)
  %2267 = extractvalue %dx.types.ResRet.i32 %2266, 0
  %2268 = lshr i32 %2267, 16
  %2269 = and i32 %2268, 255
  %2270 = lshr i32 %2267, 24
  %2271 = add i32 %50, 324
  %2272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2271, i32 undef)  ; BufferLoad(srv,index,wot)
  %2273 = extractvalue %dx.types.ResRet.i32 %2272, 0
  %2274 = and i32 %2273, 65535
  %2275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2274)  ; LegacyF16ToF32(value)
  %2276 = lshr i32 %2273, 16
  %2277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2276)  ; LegacyF16ToF32(value)
  %2278 = add i32 %50, 64
  %2279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2278, i32 undef)  ; BufferLoad(srv,index,wot)
  %2280 = extractvalue %dx.types.ResRet.i32 %2279, 0
  %2281 = lshr i32 %2280, 22
  %2282 = shl nuw nsw i32 %2281, 5
  %2283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2282)  ; LegacyF16ToF32(value)
  %2284 = shl i32 %2280, 4
  %2285 = and i32 %2284, 32752
  %2286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2285)  ; LegacyF16ToF32(value)
  %2287 = lshr i32 %2280, 7
  %2288 = and i32 %2287, 32752
  %2289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2288)  ; LegacyF16ToF32(value)
  %2290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2291 = extractvalue %dx.types.CBufRet.f32 %2290, 3
  %2292 = fmul fast float %2291, 1.000000e+03
  %2293 = fmul fast float %2292, %535
  %2294 = call float @dx.op.unary.f32(i32 22, float %2293)  ; Frc(value)
  %2295 = fadd fast float %2294, %523
  %2296 = fmul fast float %2292, %537
  %2297 = call float @dx.op.unary.f32(i32 22, float %2296)  ; Frc(value)
  %2298 = fadd fast float %2297, %524
  %2299 = fmul fast float %2264, %2292
  %2300 = call float @dx.op.unary.f32(i32 22, float %2299)  ; Frc(value)
  %2301 = fmul fast float %2300, 0x401921FB60000000
  %2302 = fadd fast float %2301, %2283
  %2303 = call float @dx.op.unary.f32(i32 13, float %2302)  ; Sin(value)
  %2304 = call float @dx.op.unary.f32(i32 12, float %2302)  ; Cos(value)
  %2305 = fsub fast float -0.000000e+00, %2303
  %2306 = fadd fast float %2257, -5.000000e-01
  %2307 = fadd fast float %2258, -5.000000e-01
  %2308 = fmul fast float %2275, %2306
  %2309 = fmul fast float %2277, %2307
  %2310 = fadd fast float %2308, 5.000000e-01
  %2311 = fadd fast float %2309, 5.000000e-01
  %2312 = fmul fast float %2286, %2310
  %2313 = fmul fast float %2289, %2311
  %2314 = fmul fast float %2304, %2312
  %2315 = call float @dx.op.tertiary.f32(i32 46, float %2305, float %2313, float %2314)  ; FMad(a,b,c)
  %2316 = fmul fast float %2303, %2312
  %2317 = call float @dx.op.tertiary.f32(i32 46, float %2304, float %2313, float %2316)  ; FMad(a,b,c)
  %2318 = fadd fast float %2295, %2315
  %2319 = fadd fast float %2298, %2317
  %2320 = icmp ugt i32 %2269, 1
  %2321 = icmp ugt i32 %2267, 33554431
  %2322 = or i1 %2321, %2320
  br i1 %2322, label %2323, label %2348

; <label>:2323                                    ; preds = %2250
  %2324 = add i32 %50, 260
  %2325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2324, i32 undef)  ; BufferLoad(srv,index,wot)
  %2326 = extractvalue %dx.types.ResRet.i32 %2325, 0
  %2327 = lshr i32 %2326, 16
  %2328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2327)  ; LegacyF16ToF32(value)
  %2329 = fmul fast float %2291, %2328
  %2330 = call float @dx.op.unary.f32(i32 22, float %2329)  ; Frc(value)
  %2331 = mul nuw nsw i32 %2269, %2270
  %2332 = uitofp i32 %2331 to float
  %2333 = fmul fast float %2330, %2332
  %2334 = call float @dx.op.unary.f32(i32 27, float %2333)  ; Round_ni(value)
  %2335 = fptoui float %2334 to i32
  %2336 = urem i32 %2335, %2269
  %2337 = udiv i32 %2335, %2270
  %2338 = call float @dx.op.unary.f32(i32 22, float %2318)  ; Frc(value)
  %2339 = call float @dx.op.unary.f32(i32 22, float %2319)  ; Frc(value)
  %2340 = uitofp i32 %2336 to float
  %2341 = uitofp i32 %2337 to float
  %2342 = fadd fast float %2338, %2340
  %2343 = fadd fast float %2339, %2341
  %2344 = uitofp i32 %2269 to float
  %2345 = uitofp i32 %2270 to float
  %2346 = fdiv fast float %2342, %2344
  %2347 = fdiv fast float %2343, %2345
  br label %2348

; <label>:2348                                    ; preds = %2323, %2250
  %2349 = phi float [ %2346, %2323 ], [ %2318, %2250 ]
  %2350 = phi float [ %2347, %2323 ], [ %2319, %2250 ]
  %2351 = and i32 %2244, 256
  %2352 = icmp eq i32 %2351, 0
  br i1 %2352, label %2399, label %2353

; <label>:2353                                    ; preds = %2348
  %2354 = add i32 %50, 480
  %2355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %2356 = extractvalue %dx.types.ResRet.i32 %2355, 0
  %2357 = add i32 %2356, 0
  %2358 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2357, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2359 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2358, %dx.types.Handle %105, float %2349, float %2350, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2360 = extractvalue %dx.types.ResRet.f32 %2359, 0
  %2361 = add i32 %50, 132
  %2362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2361, i32 undef)  ; BufferLoad(srv,index,wot)
  %2363 = extractvalue %dx.types.ResRet.i32 %2362, 0
  %2364 = shl i32 %2363, 4
  %2365 = and i32 %2364, 32752
  %2366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2365)  ; LegacyF16ToF32(value)
  %2367 = lshr i32 %2363, 7
  %2368 = and i32 %2367, 32752
  %2369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2368)  ; LegacyF16ToF32(value)
  %2370 = fsub fast float 1.000000e+00, %703
  %2371 = call float @dx.op.binary.f32(i32 35, float %2370, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2372 = bitcast float %703 to i32
  %2373 = sitofp i32 %2372 to float
  %2374 = fadd fast float %2373, 0xC1CFBF8940000000
  %2375 = fmul fast float %2369, %2374
  %2376 = fadd fast float %2375, 0x41CFBF8940000000
  %2377 = fptosi float %2376 to i32
  %2378 = bitcast i32 %2377 to float
  %2379 = bitcast float %2371 to i32
  %2380 = sitofp i32 %2379 to float
  %2381 = fadd fast float %2380, 0xC1CFBF8940000000
  %2382 = fmul fast float %2381, %2369
  %2383 = fadd fast float %2382, 0x41CFBF8940000000
  %2384 = fptosi float %2383 to i32
  %2385 = bitcast i32 %2384 to float
  %2386 = fmul fast float %2378, %2366
  %2387 = fmul fast float %2385, %2366
  %2388 = fsub fast float %2371, %2386
  %2389 = fadd fast float %2387, %2371
  %2390 = call float @dx.op.unary.f32(i32 7, float %2388)  ; Saturate(value)
  %2391 = call float @dx.op.unary.f32(i32 7, float %2389)  ; Saturate(value)
  %2392 = fsub fast float %2360, %2390
  %2393 = fsub fast float %2391, %2390
  %2394 = bitcast float %2393 to i32
  %2395 = sub nsw i32 2129859010, %2394
  %2396 = bitcast i32 %2395 to float
  %2397 = fmul fast float %2396, %2392
  %2398 = call float @dx.op.unary.f32(i32 7, float %2397)  ; Saturate(value)
  br label %2399

; <label>:2399                                    ; preds = %2353, %2348
  %2400 = phi float [ %2398, %2353 ], [ %703, %2348 ]
  %2401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2402 = extractvalue %dx.types.ResRet.i32 %2401, 0
  %2403 = and i32 %2402, 128
  %2404 = icmp eq i32 %2403, 0
  br i1 %2404, label %2421, label %2405

; <label>:2405                                    ; preds = %2399
  %2406 = add i32 %50, 464
  %2407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2406, i32 undef)  ; BufferLoad(srv,index,wot)
  %2408 = extractvalue %dx.types.ResRet.i32 %2407, 0
  %2409 = add i32 %2408, 0
  %2410 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2409, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2411 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2410, %dx.types.Handle %105, float %2349, float %2350, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2412 = extractvalue %dx.types.ResRet.f32 %2411, 0
  %2413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2414 = extractvalue %dx.types.ResRet.i32 %2413, 0
  %2415 = and i32 %2414, 524288
  %2416 = icmp ne i32 %2415, 0
  %2417 = fcmp fast ogt float %2412, 0x3FE0101020000000
  %2418 = select i1 %2417, float 1.000000e+00, float 0.000000e+00
  %2419 = select i1 %2416, float %2418, float %2412
  %2420 = fmul fast float %2419, %2400
  br label %2421

; <label>:2421                                    ; preds = %2405, %2399
  %2422 = phi float [ %2420, %2405 ], [ %2400, %2399 ]
  %2423 = fcmp fast ult float %2422, 0x3F70101020000000
  br i1 %2423, label %3111, label %2424

; <label>:2424                                    ; preds = %2421
  %2425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2426 = extractvalue %dx.types.ResRet.i32 %2425, 0
  %2427 = and i32 %2426, 16
  %2428 = icmp eq i32 %2427, 0
  br i1 %2428, label %2627, label %2429

; <label>:2429                                    ; preds = %2424
  %2430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2265, i32 undef)  ; BufferLoad(srv,index,wot)
  %2431 = extractvalue %dx.types.ResRet.i32 %2430, 0
  %2432 = add i32 %50, 416
  %2433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2432, i32 undef)  ; BufferLoad(srv,index,wot)
  %2434 = extractvalue %dx.types.ResRet.i32 %2433, 0
  %2435 = add i32 %2434, 0
  %2436 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2435, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2437 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2436, %dx.types.Handle %104, float %2349, float %2350, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2438 = extractvalue %dx.types.ResRet.f32 %2437, 0
  %2439 = extractvalue %dx.types.ResRet.f32 %2437, 1
  %2440 = extractvalue %dx.types.ResRet.f32 %2437, 2
  %2441 = extractvalue %dx.types.ResRet.f32 %2437, 3
  %2442 = and i32 %2431, 255
  %2443 = uitofp i32 %2442 to float
  %2444 = lshr i32 %2431, 8
  %2445 = and i32 %2444, 255
  %2446 = uitofp i32 %2445 to float
  %2447 = fmul fast float %2441, %2443
  %2448 = fadd fast float %2447, %2446
  %2449 = fmul fast float %2448, 0x3F70101000000000
  %2450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2451 = extractvalue %dx.types.ResRet.i32 %2450, 0
  %2452 = and i32 %2451, 512
  %2453 = icmp eq i32 %2452, 0
  br i1 %2453, label %2462, label %2454

; <label>:2454                                    ; preds = %2429
  %2455 = add i32 %50, 500
  %2456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2455, i32 undef)  ; BufferLoad(srv,index,wot)
  %2457 = extractvalue %dx.types.ResRet.i32 %2456, 0
  %2458 = add i32 %2457, 0
  %2459 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2458, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2460 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2459, %dx.types.Handle %105, float %2349, float %2350, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2461 = extractvalue %dx.types.ResRet.f32 %2460, 0
  br label %2462

; <label>:2462                                    ; preds = %2454, %2429
  %2463 = phi float [ %2461, %2454 ], [ 1.000000e+00, %2429 ]
  %2464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2465 = extractvalue %dx.types.ResRet.i32 %2464, 0
  %2466 = and i32 %2465, 33554432
  %2467 = icmp eq i32 %2466, 0
  br i1 %2467, label %2574, label %2468

; <label>:2468                                    ; preds = %2462
  %2469 = add i32 %50, 256
  %2470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2469, i32 undef)  ; BufferLoad(srv,index,wot)
  %2471 = extractvalue %dx.types.ResRet.i32 %2470, 0
  %2472 = and i32 %2471, 65535
  %2473 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2472)  ; LegacyF16ToF32(value)
  %2474 = lshr i32 %2471, 16
  %2475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2474)  ; LegacyF16ToF32(value)
  %2476 = add i32 %50, 260
  %2477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2476, i32 undef)  ; BufferLoad(srv,index,wot)
  %2478 = extractvalue %dx.types.ResRet.i32 %2477, 0
  %2479 = and i32 %2478, 65535
  %2480 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2479)  ; LegacyF16ToF32(value)
  %2481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %2482 = extractvalue %dx.types.ResRet.i32 %2481, 0
  %2483 = lshr i32 %2482, 24
  %2484 = uitofp i32 %2483 to float
  %2485 = fmul fast float %2484, 0x3F70101020000000
  %2486 = and i32 %2482, 255
  %2487 = uitofp i32 %2486 to float
  %2488 = fmul fast float %2487, 0x3F70101020000000
  %2489 = lshr i32 %2482, 8
  %2490 = and i32 %2489, 255
  %2491 = uitofp i32 %2490 to float
  %2492 = fmul fast float %2491, 0x3F70101020000000
  %2493 = lshr i32 %2482, 16
  %2494 = and i32 %2493, 255
  %2495 = uitofp i32 %2494 to float
  %2496 = fmul fast float %2495, 0x3F70101020000000
  %2497 = add i32 %50, 252
  %2498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2497, i32 undef)  ; BufferLoad(srv,index,wot)
  %2499 = extractvalue %dx.types.ResRet.i32 %2498, 0
  %2500 = lshr i32 %2499, 24
  %2501 = uitofp i32 %2500 to float
  %2502 = fmul fast float %2501, 0x3F70101020000000
  %2503 = and i32 %2499, 255
  %2504 = uitofp i32 %2503 to float
  %2505 = fmul fast float %2504, 0x3F70101020000000
  %2506 = lshr i32 %2499, 8
  %2507 = and i32 %2506, 255
  %2508 = uitofp i32 %2507 to float
  %2509 = fmul fast float %2508, 0x3F70101020000000
  %2510 = lshr i32 %2499, 16
  %2511 = and i32 %2510, 255
  %2512 = uitofp i32 %2511 to float
  %2513 = fmul fast float %2512, 0x3F70101020000000
  %2514 = bitcast float %2438 to i32
  %2515 = ashr i32 %2514, 1
  %2516 = sub nsw i32 1597463174, %2515
  %2517 = bitcast i32 %2516 to float
  %2518 = fmul fast float %2438, 5.000000e-01
  %2519 = fmul fast float %2517, %2517
  %2520 = fmul fast float %2519, %2518
  %2521 = fsub fast float 1.500000e+00, %2520
  %2522 = fmul fast float %2517, %2438
  %2523 = fmul fast float %2522, %2521
  %2524 = bitcast float %2439 to i32
  %2525 = ashr i32 %2524, 1
  %2526 = sub nsw i32 1597463174, %2525
  %2527 = bitcast i32 %2526 to float
  %2528 = fmul fast float %2439, 5.000000e-01
  %2529 = fmul fast float %2527, %2527
  %2530 = fmul fast float %2529, %2528
  %2531 = fsub fast float 1.500000e+00, %2530
  %2532 = fmul fast float %2527, %2439
  %2533 = fmul fast float %2532, %2531
  %2534 = bitcast float %2440 to i32
  %2535 = ashr i32 %2534, 1
  %2536 = sub nsw i32 1597463174, %2535
  %2537 = bitcast i32 %2536 to float
  %2538 = fmul fast float %2440, 5.000000e-01
  %2539 = fmul fast float %2537, %2537
  %2540 = fmul fast float %2539, %2538
  %2541 = fsub fast float 1.500000e+00, %2540
  %2542 = fmul fast float %2537, %2440
  %2543 = fmul fast float %2542, %2541
  %2544 = fsub fast float %2523, %2505
  %2545 = fsub fast float %2533, %2509
  %2546 = fsub fast float %2543, %2513
  %2547 = fmul fast float %2544, %2473
  %2548 = fmul fast float %2545, %2475
  %2549 = fmul fast float %2546, %2480
  %2550 = fadd fast float %2547, %2488
  %2551 = fadd fast float %2548, %2492
  %2552 = fadd fast float %2549, %2496
  %2553 = call float @dx.op.unary.f32(i32 7, float %2550)  ; Saturate(value)
  %2554 = call float @dx.op.unary.f32(i32 7, float %2551)  ; Saturate(value)
  %2555 = call float @dx.op.unary.f32(i32 7, float %2552)  ; Saturate(value)
  %2556 = fmul fast float %2553, %2553
  %2557 = fmul fast float %2554, %2554
  %2558 = fmul fast float %2555, %2555
  %2559 = fsub fast float %2556, %2438
  %2560 = fsub fast float %2557, %2439
  %2561 = fsub fast float %2558, %2440
  %2562 = fmul fast float %2559, %2463
  %2563 = fmul fast float %2560, %2463
  %2564 = fmul fast float %2561, %2463
  %2565 = fadd fast float %2562, %2438
  %2566 = fadd fast float %2563, %2439
  %2567 = fadd fast float %2564, %2440
  %2568 = fadd fast float %2485, %2449
  %2569 = fsub fast float %2568, %2502
  %2570 = call float @dx.op.unary.f32(i32 7, float %2569)  ; Saturate(value)
  %2571 = fsub fast float %2570, %2449
  %2572 = fmul fast float %2571, %2463
  %2573 = fadd fast float %2572, %2449
  br label %2627

; <label>:2574                                    ; preds = %2462
  %2575 = and i32 %2465, 134217728
  %2576 = icmp eq i32 %2575, 0
  br i1 %2576, label %2611, label %2577

; <label>:2577                                    ; preds = %2574
  %2578 = call float @dx.op.unary.f32(i32 24, float %511)  ; Sqrt(value)
  %2579 = call float @dx.op.unary.f32(i32 24, float %512)  ; Sqrt(value)
  %2580 = call float @dx.op.unary.f32(i32 24, float %513)  ; Sqrt(value)
  %2581 = fadd fast float %2578, -5.000000e-01
  %2582 = fadd fast float %2579, -5.000000e-01
  %2583 = fadd fast float %2580, -5.000000e-01
  %2584 = fmul fast float %2581, %2463
  %2585 = fmul fast float %2582, %2463
  %2586 = fmul fast float %2583, %2463
  %2587 = fadd fast float %2584, 5.000000e-01
  %2588 = fadd fast float %2585, 5.000000e-01
  %2589 = fadd fast float %2586, 5.000000e-01
  %2590 = call float @dx.op.unary.f32(i32 24, float %2438)  ; Sqrt(value)
  %2591 = call float @dx.op.unary.f32(i32 24, float %2439)  ; Sqrt(value)
  %2592 = call float @dx.op.unary.f32(i32 24, float %2440)  ; Sqrt(value)
  %2593 = fmul fast float %2587, 2.000000e+00
  %2594 = fsub fast float 1.000000e+00, %2593
  %2595 = fmul fast float %2594, %2590
  %2596 = fadd fast float %2595, %2593
  %2597 = fmul fast float %2596, %2590
  %2598 = fmul fast float %2588, 2.000000e+00
  %2599 = fsub fast float 1.000000e+00, %2598
  %2600 = fmul fast float %2599, %2591
  %2601 = fadd fast float %2600, %2598
  %2602 = fmul fast float %2601, %2591
  %2603 = fmul fast float %2589, 2.000000e+00
  %2604 = fsub fast float 1.000000e+00, %2603
  %2605 = fmul fast float %2604, %2592
  %2606 = fadd fast float %2605, %2603
  %2607 = fmul fast float %2606, %2592
  %2608 = fmul fast float %2597, %2597
  %2609 = fmul fast float %2602, %2602
  %2610 = fmul fast float %2607, %2607
  br label %2627

; <label>:2611                                    ; preds = %2574
  %2612 = fmul fast float %511, %511
  %2613 = fmul fast float %512, %512
  %2614 = fmul fast float %513, %513
  %2615 = fadd fast float %2612, -1.000000e+00
  %2616 = fadd fast float %2613, -1.000000e+00
  %2617 = fadd fast float %2614, -1.000000e+00
  %2618 = fmul fast float %2463, %2615
  %2619 = fmul fast float %2463, %2616
  %2620 = fmul fast float %2463, %2617
  %2621 = fadd fast float %2618, 1.000000e+00
  %2622 = fadd fast float %2619, 1.000000e+00
  %2623 = fadd fast float %2620, 1.000000e+00
  %2624 = fmul fast float %2621, %2438
  %2625 = fmul fast float %2622, %2439
  %2626 = fmul fast float %2623, %2440
  br label %2627

; <label>:2627                                    ; preds = %2611, %2577, %2468, %2424
  %2628 = phi float [ %2573, %2468 ], [ %2449, %2577 ], [ %2449, %2611 ], [ 0x3FA23C0BE0000000, %2424 ]
  %2629 = phi float [ %2565, %2468 ], [ %2608, %2577 ], [ %2624, %2611 ], [ 1.000000e+00, %2424 ]
  %2630 = phi float [ %2566, %2468 ], [ %2609, %2577 ], [ %2625, %2611 ], [ 1.000000e+00, %2424 ]
  %2631 = phi float [ %2567, %2468 ], [ %2610, %2577 ], [ %2626, %2611 ], [ 1.000000e+00, %2424 ]
  %2632 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2633 = extractvalue %dx.types.CBufRet.i32 %2632, 1
  %2634 = and i32 %2633, 1
  %2635 = icmp ne i32 %2634, 0
  %2636 = add i32 %50, 356
  %2637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2636, i32 undef)  ; BufferLoad(srv,index,wot)
  %2638 = extractvalue %dx.types.ResRet.i32 %2637, 0
  %2639 = and i32 %2638, 32
  %2640 = icmp ne i32 %2639, 0
  %2641 = and i1 %2635, %2640
  %2642 = select i1 %2641, float 1.000000e+00, float %2629
  %2643 = select i1 %2641, float 0x3FD3333340000000, float %2630
  %2644 = select i1 %2641, float 0x3FD3333340000000, float %2631
  %2645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2646 = extractvalue %dx.types.ResRet.i32 %2645, 0
  %2647 = and i32 %2646, 32
  %2648 = icmp eq i32 %2647, 0
  br i1 %2648, label %2721, label %2649

; <label>:2649                                    ; preds = %2627
  %2650 = add i32 %50, 124
  %2651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2650, i32 undef)  ; BufferLoad(srv,index,wot)
  %2652 = extractvalue %dx.types.ResRet.i32 %2651, 0
  %2653 = add i32 %50, 432
  %2654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2653, i32 undef)  ; BufferLoad(srv,index,wot)
  %2655 = extractvalue %dx.types.ResRet.i32 %2654, 0
  %2656 = add i32 %2655, 0
  %2657 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2656, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2658 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2657, %dx.types.Handle %104, float %2349, float %2350, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2659 = extractvalue %dx.types.ResRet.f32 %2658, 0
  %2660 = extractvalue %dx.types.ResRet.f32 %2658, 1
  %2661 = extractvalue %dx.types.ResRet.f32 %2658, 2
  %2662 = extractvalue %dx.types.ResRet.f32 %2658, 3
  %2663 = and i32 %2652, 255
  %2664 = uitofp i32 %2663 to float
  %2665 = lshr i32 %2652, 8
  %2666 = and i32 %2665, 255
  %2667 = uitofp i32 %2666 to float
  %2668 = lshr i32 %2652, 16
  %2669 = and i32 %2668, 255
  %2670 = uitofp i32 %2669 to float
  %2671 = fmul fast float %2670, 0x3F70101000000000
  %2672 = fmul fast float %2659, %2664
  %2673 = fadd fast float %2672, %2667
  %2674 = fmul fast float %2673, 0x3F70101000000000
  %2675 = fadd fast float %2660, -5.000000e-01
  %2676 = fadd fast float %2662, -5.000000e-01
  %2677 = fmul fast float %2675, %2671
  %2678 = fmul fast float %2676, %2671
  %2679 = fadd fast float %2677, 5.000000e-01
  %2680 = fadd fast float %2678, 5.000000e-01
  %2681 = fmul fast float %2679, 2.000000e+00
  %2682 = fadd fast float %2681, -1.000000e+00
  %2683 = fmul fast float %2680, 2.000000e+00
  %2684 = fadd fast float %2683, -1.000000e+00
  %2685 = fadd fast float %2682, %2684
  %2686 = fmul fast float %2685, 5.000000e-01
  %2687 = fsub fast float %2682, %2684
  %2688 = fmul fast float %2687, 5.000000e-01
  %2689 = call float @dx.op.unary.f32(i32 6, float %2686)  ; FAbs(value)
  %2690 = fsub fast float 1.000000e+00, %2689
  %2691 = call float @dx.op.unary.f32(i32 6, float %2688)  ; FAbs(value)
  %2692 = fsub fast float %2690, %2691
  %2693 = call float @dx.op.dot3.f32(i32 55, float %2686, float %2688, float %2692, float %2686, float %2688, float %2692)  ; Dot3(ax,ay,az,bx,by,bz)
  %2694 = call float @dx.op.unary.f32(i32 25, float %2693)  ; Rsqrt(value)
  %2695 = fmul fast float %2686, %2694
  %2696 = fmul fast float %2688, %2694
  %2697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2698 = extractvalue %dx.types.ResRet.i32 %2697, 0
  %2699 = and i32 %2698, 67108864
  %2700 = icmp eq i32 %2699, 0
  br i1 %2700, label %2717, label %2701

; <label>:2701                                    ; preds = %2649
  %2702 = add i32 %50, 312
  %2703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2702, i32 undef)  ; BufferLoad(srv,index,wot)
  %2704 = extractvalue %dx.types.ResRet.i32 %2703, 0
  %2705 = and i32 %2704, 65535
  %2706 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2705)  ; LegacyF16ToF32(value)
  %2707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2259, i32 undef)  ; BufferLoad(srv,index,wot)
  %2708 = extractvalue %dx.types.ResRet.i32 %2707, 0
  %2709 = and i32 %2708, 65535
  %2710 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2709)  ; LegacyF16ToF32(value)
  %2711 = lshr i32 %2704, 16
  %2712 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2711)  ; LegacyF16ToF32(value)
  %2713 = fsub fast float %2674, %2712
  %2714 = fmul fast float %2713, %2706
  %2715 = fadd fast float %2714, %2710
  %2716 = call float @dx.op.unary.f32(i32 7, float %2715)  ; Saturate(value)
  br label %2717

; <label>:2717                                    ; preds = %2701, %2649
  %2718 = phi float [ %2716, %2701 ], [ %2674, %2649 ]
  %2719 = call float @dx.op.dot2.f32(i32 54, float %2695, float %2696, float %2253, float %2254)  ; Dot2(ax,ay,bx,by)
  %2720 = call float @dx.op.dot2.f32(i32 54, float %2695, float %2696, float %2255, float %2256)  ; Dot2(ax,ay,bx,by)
  br label %2721

; <label>:2721                                    ; preds = %2717, %2627
  %2722 = phi float [ %2718, %2717 ], [ 0x3FD6666660000000, %2627 ]
  %2723 = phi float [ %2719, %2717 ], [ 0.000000e+00, %2627 ]
  %2724 = phi float [ %2720, %2717 ], [ 0.000000e+00, %2627 ]
  %2725 = phi float [ %2661, %2717 ], [ 1.000000e+00, %2627 ]
  %2726 = add i32 %50, 192
  %2727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2726, i32 undef)  ; BufferLoad(srv,index,wot)
  %2728 = extractvalue %dx.types.ResRet.i32 %2727, 0
  %2729 = lshr i32 %2728, 22
  %2730 = shl nuw nsw i32 %2729, 5
  %2731 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2730)  ; LegacyF16ToF32(value)
  %2732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2733 = extractvalue %dx.types.ResRet.i32 %2732, 0
  %2734 = and i32 %2733, 64
  %2735 = icmp eq i32 %2734, 0
  br i1 %2735, label %2769, label %2736

; <label>:2736                                    ; preds = %2721
  %2737 = add i32 %50, 448
  %2738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2737, i32 undef)  ; BufferLoad(srv,index,wot)
  %2739 = extractvalue %dx.types.ResRet.i32 %2738, 0
  %2740 = add i32 %2739, 0
  %2741 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2740, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2743 = extractvalue %dx.types.ResRet.i32 %2742, 0
  %2744 = and i32 %2743, 131072
  %2745 = icmp eq i32 %2744, 0
  %2746 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2741, %dx.types.Handle %104, float %2349, float %2350, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2747 = extractvalue %dx.types.ResRet.f32 %2746, 0
  %2748 = extractvalue %dx.types.ResRet.f32 %2746, 1
  %2749 = extractvalue %dx.types.ResRet.f32 %2746, 2
  %2750 = fmul fast float %494, %2747
  %2751 = fmul fast float %495, %2748
  %2752 = fmul fast float %496, %2749
  br i1 %2745, label %2759, label %2753

; <label>:2753                                    ; preds = %2736
  %2754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2755 = extractvalue %dx.types.CBufRet.f32 %2754, 0
  %2756 = fmul fast float %2755, %2750
  %2757 = fmul fast float %2755, %2751
  %2758 = fmul fast float %2755, %2752
  br label %2759

; <label>:2759                                    ; preds = %2753, %2736
  %2760 = phi float [ %2756, %2753 ], [ %2750, %2736 ]
  %2761 = phi float [ %2757, %2753 ], [ %2751, %2736 ]
  %2762 = phi float [ %2758, %2753 ], [ %2752, %2736 ]
  %2763 = fmul fast float %2760, %2731
  %2764 = select i1 %269, float %2763, float %2760
  %2765 = call float @dx.op.dot3.f32(i32 55, float %2764, float %2761, float %2762, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2766 = select i1 %269, float 0.000000e+00, float %2760
  %2767 = select i1 %269, float %2765, float %2761
  %2768 = select i1 %269, float 0.000000e+00, float %2762
  br label %2769

; <label>:2769                                    ; preds = %2759, %2721
  %2770 = phi float [ %2766, %2759 ], [ 0.000000e+00, %2721 ]
  %2771 = phi float [ %2767, %2759 ], [ 0.000000e+00, %2721 ]
  %2772 = phi float [ %2768, %2759 ], [ 0.000000e+00, %2721 ]
  %2773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2774 = extractvalue %dx.types.ResRet.i32 %2773, 0
  %2775 = and i32 %2774, 1024
  %2776 = icmp eq i32 %2775, 0
  br i1 %2776, label %2807, label %2777

; <label>:2777                                    ; preds = %2769
  %2778 = add i32 %50, 184
  %2779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2778, i32 undef)  ; BufferLoad(srv,index,wot)
  %2780 = extractvalue %dx.types.ResRet.i32 %2779, 0
  %2781 = and i32 %2780, 255
  %2782 = uitofp i32 %2781 to float
  %2783 = fmul fast float %2782, 0x3F70101020000000
  %2784 = lshr i32 %2780, 8
  %2785 = and i32 %2784, 255
  %2786 = uitofp i32 %2785 to float
  %2787 = fmul fast float %2786, 0x3F70101020000000
  %2788 = lshr i32 %2780, 16
  %2789 = and i32 %2788, 255
  %2790 = uitofp i32 %2789 to float
  %2791 = fmul fast float %2790, 0x3F70101020000000
  %2792 = fmul fast float %2783, %2783
  %2793 = fmul fast float %2787, %2787
  %2794 = fmul fast float %2791, %2791
  %2795 = add i32 %50, 516
  %2796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2795, i32 undef)  ; BufferLoad(srv,index,wot)
  %2797 = extractvalue %dx.types.ResRet.i32 %2796, 0
  %2798 = add i32 %2797, 0
  %2799 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2798, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2800 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2799, %dx.types.Handle %105, float %2349, float %2350, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2801 = extractvalue %dx.types.ResRet.f32 %2800, 0
  %2802 = extractvalue %dx.types.ResRet.f32 %2800, 1
  %2803 = extractvalue %dx.types.ResRet.f32 %2800, 2
  %2804 = fmul fast float %2792, %2801
  %2805 = fmul fast float %2793, %2802
  %2806 = fmul fast float %2794, %2803
  br label %2807

; <label>:2807                                    ; preds = %2777, %2769
  %2808 = phi float [ %2804, %2777 ], [ 0.000000e+00, %2769 ]
  %2809 = phi float [ %2805, %2777 ], [ 0.000000e+00, %2769 ]
  %2810 = phi float [ %2806, %2777 ], [ 0.000000e+00, %2769 ]
  %2811 = fcmp fast ogt float %2808, 0.000000e+00
  %2812 = fcmp fast ogt float %2809, 0.000000e+00
  %2813 = fcmp fast ogt float %2810, 0.000000e+00
  %2814 = call float @dx.op.unary.f32(i32 23, float %2808)  ; Log(value)
  %2815 = call float @dx.op.unary.f32(i32 23, float %2809)  ; Log(value)
  %2816 = call float @dx.op.unary.f32(i32 23, float %2810)  ; Log(value)
  %2817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2726, i32 undef)  ; BufferLoad(srv,index,wot)
  %2818 = extractvalue %dx.types.ResRet.i32 %2817, 0
  %2819 = lshr i32 %2818, 7
  %2820 = and i32 %2819, 32752
  %2821 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2820)  ; LegacyF16ToF32(value)
  %2822 = fmul fast float %2814, 0xBFE62E4300000000
  %2823 = fmul fast float %2822, %2821
  %2824 = fmul fast float %2815, 0xBFE62E4300000000
  %2825 = fmul fast float %2824, %2821
  %2826 = fmul fast float %2816, 0xBFE62E4300000000
  %2827 = fmul fast float %2826, %2821
  %2828 = select i1 %2811, float %2823, float 1.270000e+02
  %2829 = select i1 %2812, float %2825, float 1.270000e+02
  %2830 = select i1 %2813, float %2827, float 1.270000e+02
  %2831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2832 = extractvalue %dx.types.ResRet.i32 %2831, 0
  %2833 = and i32 %2832, 10240
  %2834 = icmp eq i32 %2833, 0
  br i1 %2834, label %2855, label %2835

; <label>:2835                                    ; preds = %2807
  %2836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2837 = extractvalue %dx.types.ResRet.i32 %2836, 0
  %2838 = and i32 %2837, 2048
  %2839 = icmp eq i32 %2838, 0
  br i1 %2839, label %2855, label %2840

; <label>:2840                                    ; preds = %2835
  %2841 = add i32 %50, 532
  %2842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2841, i32 undef)  ; BufferLoad(srv,index,wot)
  %2843 = extractvalue %dx.types.ResRet.i32 %2842, 0
  %2844 = add i32 %2843, 0
  %2845 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2844, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2846 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2845, %dx.types.Handle %105, float %2349, float %2350, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2847 = extractvalue %dx.types.ResRet.f32 %2846, 3
  %2848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2726, i32 undef)  ; BufferLoad(srv,index,wot)
  %2849 = extractvalue %dx.types.ResRet.i32 %2848, 0
  %2850 = shl i32 %2849, 4
  %2851 = and i32 %2850, 32752
  %2852 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2851)  ; LegacyF16ToF32(value)
  %2853 = fmul fast float %2852, %2847
  %2854 = call float @dx.op.binary.f32(i32 35, float %2853, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2855

; <label>:2855                                    ; preds = %2840, %2835, %2807
  %2856 = phi float [ %2854, %2840 ], [ 0x3F70101020000000, %2835 ], [ 0x3F70101020000000, %2807 ]
  %2857 = add i32 %50, 128
  %2858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %2859 = extractvalue %dx.types.ResRet.i32 %2858, 0
  %2860 = and i32 %2859, 255
  %2861 = uitofp i32 %2860 to float
  %2862 = lshr i32 %2859, 8
  %2863 = and i32 %2862, 255
  %2864 = uitofp i32 %2863 to float
  %2865 = call float @dx.op.dot3.f32(i32 55, float %2642, float %2643, float %2644, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2866 = fmul fast float %2864, %2865
  %2867 = fadd fast float %2866, %2861
  %2868 = fmul fast float %2867, 0x3F70101020000000
  %2869 = call float @dx.op.unary.f32(i32 7, float %2868)  ; Saturate(value)
  br i1 %2241, label %2870, label %2905

; <label>:2870                                    ; preds = %2855
  %2871 = fmul fast float %2856, 2.000000e+00
  %2872 = fcmp fast olt float %2828, 1.270000e+02
  %2873 = fcmp fast olt float %2829, 1.270000e+02
  %2874 = fcmp fast olt float %2830, 1.270000e+02
  %2875 = fmul fast float %2828, 0xBFF7154760000000
  %2876 = fmul fast float %2875, %2871
  %2877 = fmul fast float %2829, 0xBFF7154760000000
  %2878 = fmul fast float %2877, %2871
  %2879 = fmul fast float %2830, 0xBFF7154760000000
  %2880 = fmul fast float %2879, %2871
  %2881 = call float @dx.op.unary.f32(i32 21, float %2876)  ; Exp(value)
  %2882 = call float @dx.op.unary.f32(i32 21, float %2878)  ; Exp(value)
  %2883 = call float @dx.op.unary.f32(i32 21, float %2880)  ; Exp(value)
  %2884 = call float @dx.op.unary.f32(i32 7, float %2881)  ; Saturate(value)
  %2885 = call float @dx.op.unary.f32(i32 7, float %2882)  ; Saturate(value)
  %2886 = call float @dx.op.unary.f32(i32 7, float %2883)  ; Saturate(value)
  %2887 = fadd fast float %2884, -1.000000e+00
  %2888 = select i1 %2872, float %2887, float -1.000000e+00
  %2889 = fadd fast float %2885, -1.000000e+00
  %2890 = select i1 %2873, float %2889, float -1.000000e+00
  %2891 = fadd fast float %2886, -1.000000e+00
  %2892 = select i1 %2874, float %2891, float -1.000000e+00
  %2893 = fmul fast float %2888, %2422
  %2894 = fmul fast float %2890, %2422
  %2895 = fmul fast float %2892, %2422
  %2896 = fadd fast float %2893, 1.000000e+00
  %2897 = fadd fast float %2894, 1.000000e+00
  %2898 = fadd fast float %2895, 1.000000e+00
  %2899 = fmul fast float %2896, %2226
  %2900 = fmul fast float %2897, %2227
  %2901 = fmul fast float %2898, %2228
  %2902 = fmul fast float %2896, %2229
  %2903 = fmul fast float %2897, %2230
  %2904 = fmul fast float %2898, %2231
  br label %2905

; <label>:2905                                    ; preds = %2870, %2855
  %2906 = phi float [ %2899, %2870 ], [ %2226, %2855 ]
  %2907 = phi float [ %2900, %2870 ], [ %2227, %2855 ]
  %2908 = phi float [ %2901, %2870 ], [ %2228, %2855 ]
  %2909 = phi float [ %2902, %2870 ], [ %2229, %2855 ]
  %2910 = phi float [ %2903, %2870 ], [ %2230, %2855 ]
  %2911 = phi float [ %2904, %2870 ], [ %2231, %2855 ]
  %2912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2913 = extractvalue %dx.types.ResRet.i32 %2912, 0
  %2914 = and i32 %2913, 3
  %2915 = icmp eq i32 %2914, 3
  br i1 %2915, label %2994, label %2916

; <label>:2916                                    ; preds = %2905
  %2917 = and i32 %2913, 16
  %2918 = icmp ne i32 %2917, 0
  %2919 = select i1 %2918, float %2422, float 0.000000e+00
  %2920 = icmp eq i32 %2914, 0
  br i1 %2920, label %2921, label %2949

; <label>:2921                                    ; preds = %2916
  %2922 = and i32 %2913, 64
  %2923 = icmp ne i32 %2922, 0
  %2924 = select i1 %2923, float %2422, float 0.000000e+00
  %2925 = fsub fast float %2642, %2906
  %2926 = fsub fast float %2643, %2907
  %2927 = fsub fast float %2644, %2908
  %2928 = fmul fast float %2919, %2925
  %2929 = fmul fast float %2919, %2926
  %2930 = fmul fast float %2919, %2927
  %2931 = fadd fast float %2928, %2906
  %2932 = fadd fast float %2929, %2907
  %2933 = fadd fast float %2930, %2908
  %2934 = fsub fast float %2628, %2235
  %2935 = fmul fast float %2919, %2934
  %2936 = fadd fast float %2935, %2235
  %2937 = fsub fast float %2770, %2909
  %2938 = fsub fast float %2771, %2910
  %2939 = fsub fast float %2772, %2911
  %2940 = fmul fast float %2924, %2937
  %2941 = fmul fast float %2924, %2938
  %2942 = fmul fast float %2924, %2939
  %2943 = fadd fast float %2940, %2909
  %2944 = fadd fast float %2941, %2910
  %2945 = fadd fast float %2942, %2911
  %2946 = fsub fast float %2869, %2239
  %2947 = fmul fast float %2919, %2946
  %2948 = fadd fast float %2947, %2239
  br label %2994

; <label>:2949                                    ; preds = %2916
  %2950 = icmp eq i32 %2914, 1
  br i1 %2950, label %2951, label %2964

; <label>:2951                                    ; preds = %2949
  %2952 = fadd fast float %2642, -1.000000e+00
  %2953 = fadd fast float %2643, -1.000000e+00
  %2954 = fadd fast float %2644, -1.000000e+00
  %2955 = fmul fast float %2919, %2952
  %2956 = fmul fast float %2919, %2953
  %2957 = fmul fast float %2919, %2954
  %2958 = fadd fast float %2955, 1.000000e+00
  %2959 = fadd fast float %2956, 1.000000e+00
  %2960 = fadd fast float %2957, 1.000000e+00
  %2961 = fmul fast float %2958, %2906
  %2962 = fmul fast float %2959, %2907
  %2963 = fmul fast float %2960, %2908
  br label %2994

; <label>:2964                                    ; preds = %2949
  %2965 = icmp eq i32 %2914, 2
  br i1 %2965, label %2966, label %2994

; <label>:2966                                    ; preds = %2964
  %2967 = call float @dx.op.unary.f32(i32 24, float %2642)  ; Sqrt(value)
  %2968 = call float @dx.op.unary.f32(i32 24, float %2643)  ; Sqrt(value)
  %2969 = call float @dx.op.unary.f32(i32 24, float %2644)  ; Sqrt(value)
  %2970 = fadd fast float %2967, -5.000000e-01
  %2971 = fadd fast float %2968, -5.000000e-01
  %2972 = fadd fast float %2969, -5.000000e-01
  %2973 = fmul fast float %2970, %2919
  %2974 = fmul fast float %2971, %2919
  %2975 = fmul fast float %2972, %2919
  %2976 = fadd fast float %2973, 5.000000e-01
  %2977 = fadd fast float %2974, 5.000000e-01
  %2978 = fadd fast float %2975, 5.000000e-01
  %2979 = fmul fast float %2976, 2.000000e+00
  %2980 = fsub fast float 1.000000e+00, %2979
  %2981 = fmul fast float %2980, %2906
  %2982 = fadd fast float %2981, %2979
  %2983 = fmul fast float %2982, %2906
  %2984 = fmul fast float %2977, 2.000000e+00
  %2985 = fsub fast float 1.000000e+00, %2984
  %2986 = fmul fast float %2985, %2907
  %2987 = fadd fast float %2986, %2984
  %2988 = fmul fast float %2987, %2907
  %2989 = fmul fast float %2978, 2.000000e+00
  %2990 = fsub fast float 1.000000e+00, %2989
  %2991 = fmul fast float %2990, %2908
  %2992 = fadd fast float %2991, %2989
  %2993 = fmul fast float %2992, %2908
  br label %2994

; <label>:2994                                    ; preds = %2966, %2964, %2951, %2921, %2905
  %2995 = phi float [ %2906, %2905 ], [ %2983, %2966 ], [ %2906, %2964 ], [ %2961, %2951 ], [ %2931, %2921 ]
  %2996 = phi float [ %2907, %2905 ], [ %2988, %2966 ], [ %2907, %2964 ], [ %2962, %2951 ], [ %2932, %2921 ]
  %2997 = phi float [ %2908, %2905 ], [ %2993, %2966 ], [ %2908, %2964 ], [ %2963, %2951 ], [ %2933, %2921 ]
  %2998 = phi float [ %2909, %2905 ], [ %2909, %2966 ], [ %2909, %2964 ], [ %2909, %2951 ], [ %2943, %2921 ]
  %2999 = phi float [ %2910, %2905 ], [ %2910, %2966 ], [ %2910, %2964 ], [ %2910, %2951 ], [ %2944, %2921 ]
  %3000 = phi float [ %2911, %2905 ], [ %2911, %2966 ], [ %2911, %2964 ], [ %2911, %2951 ], [ %2945, %2921 ]
  %3001 = phi float [ %2235, %2905 ], [ %2235, %2966 ], [ %2235, %2964 ], [ %2235, %2951 ], [ %2936, %2921 ]
  %3002 = phi float [ %2239, %2905 ], [ %2239, %2966 ], [ %2239, %2964 ], [ %2239, %2951 ], [ %2948, %2921 ]
  %3003 = and i32 %2913, 12
  %3004 = icmp eq i32 %3003, 12
  br i1 %3004, label %3111, label %3005

; <label>:3005                                    ; preds = %2994
  %3006 = and i32 %2913, 2097184
  %3007 = icmp eq i32 %3006, 2097184
  %3008 = select i1 %3007, float %2422, float 0.000000e+00
  %3009 = and i32 %2913, 4194336
  %3010 = icmp eq i32 %3009, 4194336
  %3011 = select i1 %3010, float %2422, float 0.000000e+00
  %3012 = and i32 %2913, 8388640
  %3013 = icmp eq i32 %3012, 8388640
  %3014 = select i1 %3013, float %2422, float 0.000000e+00
  %3015 = and i32 %2913, 1024
  %3016 = icmp ne i32 %3015, 0
  %3017 = select i1 %3016, float %2422, float 0.000000e+00
  %3018 = and i32 %2913, 2048
  %3019 = icmp ne i32 %3018, 0
  %3020 = select i1 %3019, float %2422, float 0.000000e+00
  %3021 = icmp eq i32 %3003, 0
  br i1 %3021, label %3022, label %3047

; <label>:3022                                    ; preds = %3005
  %3023 = fsub fast float %2723, %2224
  %3024 = fsub fast float %2724, %2225
  %3025 = fmul fast float %3008, %3023
  %3026 = fmul fast float %3008, %3024
  %3027 = fadd fast float %3025, %2224
  %3028 = fadd fast float %3026, %2225
  %3029 = fsub fast float %2725, %2237
  %3030 = fmul fast float %3011, %3029
  %3031 = fadd fast float %3030, %2237
  %3032 = fsub fast float %2722, %2236
  %3033 = fmul fast float %3014, %3032
  %3034 = fadd fast float %3033, %2236
  %3035 = fsub fast float %2828, %2232
  %3036 = fsub fast float %2829, %2233
  %3037 = fsub fast float %2830, %2234
  %3038 = fmul fast float %3017, %3035
  %3039 = fmul fast float %3017, %3036
  %3040 = fmul fast float %3017, %3037
  %3041 = fadd fast float %3038, %2232
  %3042 = fadd fast float %3039, %2233
  %3043 = fadd fast float %3040, %2234
  %3044 = fsub fast float %2856, %2238
  %3045 = fmul fast float %3020, %3044
  %3046 = fadd fast float %3045, %2238
  br label %3111

; <label>:3047                                    ; preds = %3005
  %3048 = icmp eq i32 %3003, 4
  br i1 %3048, label %3049, label %3089

; <label>:3049                                    ; preds = %3047
  %3050 = fmul fast float %3008, %2723
  %3051 = fmul fast float %3008, %2724
  %3052 = fadd fast float %3050, %2224
  %3053 = fadd fast float %3051, %2225
  %3054 = call float @dx.op.binary.f32(i32 36, float %2237, float %2725)  ; FMin(a,b)
  %3055 = fsub fast float %3054, %2237
  %3056 = fmul fast float %3055, %3011
  %3057 = fadd fast float %3056, %2237
  %3058 = fadd fast float %2722, %2236
  %3059 = fmul fast float %3058, 0x3FF337FAE0000000
  %3060 = fmul fast float %2236, %2236
  %3061 = fmul fast float %2722, %2722
  %3062 = fadd fast float %3061, %3060
  %3063 = fmul fast float %3062, 0x3FE5152B00000000
  %3064 = fmul fast float %2236, 0xBFCC1F85E0000000
  %3065 = fmul fast float %3064, %2722
  %3066 = fadd fast float %3065, 0xBFE1363700000000
  %3067 = fadd fast float %3066, %3059
  %3068 = fsub fast float %3067, %3063
  %3069 = fmul fast float %3058, 0x3FBA6F0D00000000
  %3070 = fmul fast float %3062, 0x3FD0432880000000
  %3071 = fmul fast float %2236, 0xBFEF110800000000
  %3072 = fmul fast float %3071, %2722
  %3073 = fadd fast float %3072, 1.000000e+00
  %3074 = fsub fast float %3073, %3069
  %3075 = fadd fast float %3074, %3070
  %3076 = fdiv fast float %3068, %3075
  %3077 = call float @dx.op.unary.f32(i32 7, float %3076)  ; Saturate(value)
  %3078 = fsub fast float %3077, %2236
  %3079 = fmul fast float %3078, %3014
  %3080 = fadd fast float %3079, %2236
  %3081 = fmul fast float %3017, %2828
  %3082 = fmul fast float %3017, %2829
  %3083 = fmul fast float %3017, %2830
  %3084 = fadd fast float %3081, %2232
  %3085 = fadd fast float %3082, %2233
  %3086 = fadd fast float %3083, %2234
  %3087 = fmul fast float %3020, %2856
  %3088 = fadd fast float %3087, %2238
  br label %3111

; <label>:3089                                    ; preds = %3047
  %3090 = icmp eq i32 %3003, 8
  br i1 %3090, label %3091, label %3111

; <label>:3091                                    ; preds = %3089
  %3092 = fmul fast float %3008, %2723
  %3093 = fmul fast float %3008, %2724
  %3094 = fadd fast float %3092, %2224
  %3095 = fadd fast float %3093, %2225
  %3096 = call float @dx.op.binary.f32(i32 36, float %2237, float %2725)  ; FMin(a,b)
  %3097 = fsub fast float %3096, %2237
  %3098 = fmul fast float %3097, %3011
  %3099 = fadd fast float %3098, %2237
  %3100 = fsub fast float %2722, %2236
  %3101 = fmul fast float %3014, %3100
  %3102 = fadd fast float %3101, %2236
  %3103 = fmul fast float %3017, %2828
  %3104 = fmul fast float %3017, %2829
  %3105 = fmul fast float %3017, %2830
  %3106 = fadd fast float %3103, %2232
  %3107 = fadd fast float %3104, %2233
  %3108 = fadd fast float %3105, %2234
  %3109 = fmul fast float %3020, %2856
  %3110 = fadd fast float %3109, %2238
  br label %3111

; <label>:3111                                    ; preds = %3091, %3089, %3049, %3022, %2994, %2421, %2240, %2223
  %3112 = phi float [ %2224, %2994 ], [ %2224, %2421 ], [ %2224, %2223 ], [ %3094, %3091 ], [ %2224, %3089 ], [ %3052, %3049 ], [ %3027, %3022 ], [ %2224, %2240 ]
  %3113 = phi float [ %2225, %2994 ], [ %2225, %2421 ], [ %2225, %2223 ], [ %3095, %3091 ], [ %2225, %3089 ], [ %3053, %3049 ], [ %3028, %3022 ], [ %2225, %2240 ]
  %3114 = phi float [ %2995, %2994 ], [ %2226, %2421 ], [ %2226, %2223 ], [ %2995, %3091 ], [ %2995, %3089 ], [ %2995, %3049 ], [ %2995, %3022 ], [ %2226, %2240 ]
  %3115 = phi float [ %2996, %2994 ], [ %2227, %2421 ], [ %2227, %2223 ], [ %2996, %3091 ], [ %2996, %3089 ], [ %2996, %3049 ], [ %2996, %3022 ], [ %2227, %2240 ]
  %3116 = phi float [ %2997, %2994 ], [ %2228, %2421 ], [ %2228, %2223 ], [ %2997, %3091 ], [ %2997, %3089 ], [ %2997, %3049 ], [ %2997, %3022 ], [ %2228, %2240 ]
  %3117 = phi float [ %2998, %2994 ], [ %2229, %2421 ], [ %2229, %2223 ], [ %2998, %3091 ], [ %2998, %3089 ], [ %2998, %3049 ], [ %2998, %3022 ], [ %2229, %2240 ]
  %3118 = phi float [ %2999, %2994 ], [ %2230, %2421 ], [ %2230, %2223 ], [ %2999, %3091 ], [ %2999, %3089 ], [ %2999, %3049 ], [ %2999, %3022 ], [ %2230, %2240 ]
  %3119 = phi float [ %3000, %2994 ], [ %2231, %2421 ], [ %2231, %2223 ], [ %3000, %3091 ], [ %3000, %3089 ], [ %3000, %3049 ], [ %3000, %3022 ], [ %2231, %2240 ]
  %3120 = phi float [ %2232, %2994 ], [ %2232, %2421 ], [ %2232, %2223 ], [ %3106, %3091 ], [ %2232, %3089 ], [ %3084, %3049 ], [ %3041, %3022 ], [ %2232, %2240 ]
  %3121 = phi float [ %2233, %2994 ], [ %2233, %2421 ], [ %2233, %2223 ], [ %3107, %3091 ], [ %2233, %3089 ], [ %3085, %3049 ], [ %3042, %3022 ], [ %2233, %2240 ]
  %3122 = phi float [ %2234, %2994 ], [ %2234, %2421 ], [ %2234, %2223 ], [ %3108, %3091 ], [ %2234, %3089 ], [ %3086, %3049 ], [ %3043, %3022 ], [ %2234, %2240 ]
  %3123 = phi float [ %3001, %2994 ], [ %2235, %2421 ], [ %2235, %2223 ], [ %3001, %3091 ], [ %3001, %3089 ], [ %3001, %3049 ], [ %3001, %3022 ], [ %2235, %2240 ]
  %3124 = phi float [ %2236, %2994 ], [ %2236, %2421 ], [ %2236, %2223 ], [ %3102, %3091 ], [ %2236, %3089 ], [ %3080, %3049 ], [ %3034, %3022 ], [ %2236, %2240 ]
  %3125 = phi float [ %2237, %2994 ], [ %2237, %2421 ], [ %2237, %2223 ], [ %3099, %3091 ], [ %2237, %3089 ], [ %3057, %3049 ], [ %3031, %3022 ], [ %2237, %2240 ]
  %3126 = phi float [ %2238, %2994 ], [ %2238, %2421 ], [ %2238, %2223 ], [ %3110, %3091 ], [ %2238, %3089 ], [ %3088, %3049 ], [ %3046, %3022 ], [ %2238, %2240 ]
  %3127 = phi float [ %3002, %2994 ], [ %2239, %2421 ], [ %2239, %2223 ], [ %3002, %3091 ], [ %3002, %3089 ], [ %3002, %3049 ], [ %3002, %3022 ], [ %2239, %2240 ]
  br i1 %653, label %3999, label %3128

; <label>:3128                                    ; preds = %3111
  %3129 = icmp ult i32 %707, 4
  %3130 = add i32 %50, 72
  %3131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3132 = extractvalue %dx.types.ResRet.i32 %3131, 0
  %3133 = add i32 %50, 76
  %3134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3133, i32 undef)  ; BufferLoad(srv,index,wot)
  %3135 = extractvalue %dx.types.ResRet.i32 %3134, 0
  %3136 = or i32 %3135, %3132
  %3137 = icmp eq i32 %3136, 0
  br i1 %3137, label %3999, label %3138

; <label>:3138                                    ; preds = %3128
  %3139 = and i32 %3132, 262144
  %3140 = icmp ne i32 %3139, 0
  %3141 = select i1 %3140, float %58, float 1.000000e+00
  %3142 = select i1 %3140, float %59, float 0.000000e+00
  %3143 = select i1 %3140, float %60, float 0.000000e+00
  %3144 = select i1 %3140, float %61, float 1.000000e+00
  %3145 = select i1 %3140, float %62, float %86
  %3146 = select i1 %3140, float %63, float %87
  %3147 = add i32 %50, 332
  %3148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3147, i32 undef)  ; BufferLoad(srv,index,wot)
  %3149 = extractvalue %dx.types.ResRet.i32 %3148, 0
  %3150 = lshr i32 %3149, 16
  %3151 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3150)  ; LegacyF16ToF32(value)
  %3152 = fmul fast float %3151, 0x3F50624DE0000000
  %3153 = add i32 %50, 136
  %3154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3153, i32 undef)  ; BufferLoad(srv,index,wot)
  %3155 = extractvalue %dx.types.ResRet.i32 %3154, 0
  %3156 = lshr i32 %3155, 16
  %3157 = and i32 %3156, 255
  %3158 = lshr i32 %3155, 24
  %3159 = add i32 %50, 340
  %3160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3159, i32 undef)  ; BufferLoad(srv,index,wot)
  %3161 = extractvalue %dx.types.ResRet.i32 %3160, 0
  %3162 = and i32 %3161, 65535
  %3163 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3162)  ; LegacyF16ToF32(value)
  %3164 = lshr i32 %3161, 16
  %3165 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3164)  ; LegacyF16ToF32(value)
  %3166 = add i32 %50, 80
  %3167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3166, i32 undef)  ; BufferLoad(srv,index,wot)
  %3168 = extractvalue %dx.types.ResRet.i32 %3167, 0
  %3169 = lshr i32 %3168, 22
  %3170 = shl nuw nsw i32 %3169, 5
  %3171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3170)  ; LegacyF16ToF32(value)
  %3172 = shl i32 %3168, 4
  %3173 = and i32 %3172, 32752
  %3174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3173)  ; LegacyF16ToF32(value)
  %3175 = lshr i32 %3168, 7
  %3176 = and i32 %3175, 32752
  %3177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3176)  ; LegacyF16ToF32(value)
  %3178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3179 = extractvalue %dx.types.CBufRet.f32 %3178, 3
  %3180 = fmul fast float %3179, 1.000000e+03
  %3181 = fmul fast float %3180, %642
  %3182 = call float @dx.op.unary.f32(i32 22, float %3181)  ; Frc(value)
  %3183 = fadd fast float %3182, %630
  %3184 = fmul fast float %3180, %644
  %3185 = call float @dx.op.unary.f32(i32 22, float %3184)  ; Frc(value)
  %3186 = fadd fast float %3185, %631
  %3187 = fmul fast float %3152, %3180
  %3188 = call float @dx.op.unary.f32(i32 22, float %3187)  ; Frc(value)
  %3189 = fmul fast float %3188, 0x401921FB60000000
  %3190 = fadd fast float %3189, %3171
  %3191 = call float @dx.op.unary.f32(i32 13, float %3190)  ; Sin(value)
  %3192 = call float @dx.op.unary.f32(i32 12, float %3190)  ; Cos(value)
  %3193 = fsub fast float -0.000000e+00, %3191
  %3194 = fadd fast float %3145, -5.000000e-01
  %3195 = fadd fast float %3146, -5.000000e-01
  %3196 = fmul fast float %3163, %3194
  %3197 = fmul fast float %3165, %3195
  %3198 = fadd fast float %3196, 5.000000e-01
  %3199 = fadd fast float %3197, 5.000000e-01
  %3200 = fmul fast float %3174, %3198
  %3201 = fmul fast float %3177, %3199
  %3202 = fmul fast float %3192, %3200
  %3203 = call float @dx.op.tertiary.f32(i32 46, float %3193, float %3201, float %3202)  ; FMad(a,b,c)
  %3204 = fmul fast float %3191, %3200
  %3205 = call float @dx.op.tertiary.f32(i32 46, float %3192, float %3201, float %3204)  ; FMad(a,b,c)
  %3206 = fadd fast float %3183, %3203
  %3207 = fadd fast float %3186, %3205
  %3208 = icmp ugt i32 %3157, 1
  %3209 = icmp ugt i32 %3155, 33554431
  %3210 = or i1 %3209, %3208
  br i1 %3210, label %3211, label %3236

; <label>:3211                                    ; preds = %3138
  %3212 = add i32 %50, 276
  %3213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3212, i32 undef)  ; BufferLoad(srv,index,wot)
  %3214 = extractvalue %dx.types.ResRet.i32 %3213, 0
  %3215 = lshr i32 %3214, 16
  %3216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3215)  ; LegacyF16ToF32(value)
  %3217 = fmul fast float %3179, %3216
  %3218 = call float @dx.op.unary.f32(i32 22, float %3217)  ; Frc(value)
  %3219 = mul nuw nsw i32 %3157, %3158
  %3220 = uitofp i32 %3219 to float
  %3221 = fmul fast float %3218, %3220
  %3222 = call float @dx.op.unary.f32(i32 27, float %3221)  ; Round_ni(value)
  %3223 = fptoui float %3222 to i32
  %3224 = urem i32 %3223, %3157
  %3225 = udiv i32 %3223, %3158
  %3226 = call float @dx.op.unary.f32(i32 22, float %3206)  ; Frc(value)
  %3227 = call float @dx.op.unary.f32(i32 22, float %3207)  ; Frc(value)
  %3228 = uitofp i32 %3224 to float
  %3229 = uitofp i32 %3225 to float
  %3230 = fadd fast float %3226, %3228
  %3231 = fadd fast float %3227, %3229
  %3232 = uitofp i32 %3157 to float
  %3233 = uitofp i32 %3158 to float
  %3234 = fdiv fast float %3230, %3232
  %3235 = fdiv fast float %3231, %3233
  br label %3236

; <label>:3236                                    ; preds = %3211, %3138
  %3237 = phi float [ %3234, %3211 ], [ %3206, %3138 ]
  %3238 = phi float [ %3235, %3211 ], [ %3207, %3138 ]
  %3239 = and i32 %3132, 256
  %3240 = icmp eq i32 %3239, 0
  br i1 %3240, label %3287, label %3241

; <label>:3241                                    ; preds = %3236
  %3242 = add i32 %50, 484
  %3243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3242, i32 undef)  ; BufferLoad(srv,index,wot)
  %3244 = extractvalue %dx.types.ResRet.i32 %3243, 0
  %3245 = add i32 %3244, 0
  %3246 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3245, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3247 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3246, %dx.types.Handle %105, float %3237, float %3238, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3248 = extractvalue %dx.types.ResRet.f32 %3247, 0
  %3249 = add i32 %50, 148
  %3250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3249, i32 undef)  ; BufferLoad(srv,index,wot)
  %3251 = extractvalue %dx.types.ResRet.i32 %3250, 0
  %3252 = shl i32 %3251, 4
  %3253 = and i32 %3252, 32752
  %3254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3253)  ; LegacyF16ToF32(value)
  %3255 = lshr i32 %3251, 7
  %3256 = and i32 %3255, 32752
  %3257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3256)  ; LegacyF16ToF32(value)
  %3258 = fsub fast float 1.000000e+00, %702
  %3259 = call float @dx.op.binary.f32(i32 35, float %3258, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3260 = bitcast float %702 to i32
  %3261 = sitofp i32 %3260 to float
  %3262 = fadd fast float %3261, 0xC1CFBF8940000000
  %3263 = fmul fast float %3257, %3262
  %3264 = fadd fast float %3263, 0x41CFBF8940000000
  %3265 = fptosi float %3264 to i32
  %3266 = bitcast i32 %3265 to float
  %3267 = bitcast float %3259 to i32
  %3268 = sitofp i32 %3267 to float
  %3269 = fadd fast float %3268, 0xC1CFBF8940000000
  %3270 = fmul fast float %3269, %3257
  %3271 = fadd fast float %3270, 0x41CFBF8940000000
  %3272 = fptosi float %3271 to i32
  %3273 = bitcast i32 %3272 to float
  %3274 = fmul fast float %3266, %3254
  %3275 = fmul fast float %3273, %3254
  %3276 = fsub fast float %3259, %3274
  %3277 = fadd fast float %3275, %3259
  %3278 = call float @dx.op.unary.f32(i32 7, float %3276)  ; Saturate(value)
  %3279 = call float @dx.op.unary.f32(i32 7, float %3277)  ; Saturate(value)
  %3280 = fsub fast float %3248, %3278
  %3281 = fsub fast float %3279, %3278
  %3282 = bitcast float %3281 to i32
  %3283 = sub nsw i32 2129859010, %3282
  %3284 = bitcast i32 %3283 to float
  %3285 = fmul fast float %3284, %3280
  %3286 = call float @dx.op.unary.f32(i32 7, float %3285)  ; Saturate(value)
  br label %3287

; <label>:3287                                    ; preds = %3241, %3236
  %3288 = phi float [ %3286, %3241 ], [ %702, %3236 ]
  %3289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3290 = extractvalue %dx.types.ResRet.i32 %3289, 0
  %3291 = and i32 %3290, 128
  %3292 = icmp eq i32 %3291, 0
  br i1 %3292, label %3309, label %3293

; <label>:3293                                    ; preds = %3287
  %3294 = add i32 %50, 468
  %3295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3294, i32 undef)  ; BufferLoad(srv,index,wot)
  %3296 = extractvalue %dx.types.ResRet.i32 %3295, 0
  %3297 = add i32 %3296, 0
  %3298 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3297, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3299 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3298, %dx.types.Handle %105, float %3237, float %3238, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3300 = extractvalue %dx.types.ResRet.f32 %3299, 0
  %3301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3302 = extractvalue %dx.types.ResRet.i32 %3301, 0
  %3303 = and i32 %3302, 524288
  %3304 = icmp ne i32 %3303, 0
  %3305 = fcmp fast ogt float %3300, 0x3FE0101020000000
  %3306 = select i1 %3305, float 1.000000e+00, float 0.000000e+00
  %3307 = select i1 %3304, float %3306, float %3300
  %3308 = fmul fast float %3307, %3288
  br label %3309

; <label>:3309                                    ; preds = %3293, %3287
  %3310 = phi float [ %3308, %3293 ], [ %3288, %3287 ]
  %3311 = fcmp fast ult float %3310, 0x3F70101020000000
  br i1 %3311, label %3999, label %3312

; <label>:3312                                    ; preds = %3309
  %3313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3314 = extractvalue %dx.types.ResRet.i32 %3313, 0
  %3315 = and i32 %3314, 16
  %3316 = icmp eq i32 %3315, 0
  br i1 %3316, label %3515, label %3317

; <label>:3317                                    ; preds = %3312
  %3318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3153, i32 undef)  ; BufferLoad(srv,index,wot)
  %3319 = extractvalue %dx.types.ResRet.i32 %3318, 0
  %3320 = add i32 %50, 420
  %3321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3320, i32 undef)  ; BufferLoad(srv,index,wot)
  %3322 = extractvalue %dx.types.ResRet.i32 %3321, 0
  %3323 = add i32 %3322, 0
  %3324 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3323, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3325 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3324, %dx.types.Handle %104, float %3237, float %3238, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3326 = extractvalue %dx.types.ResRet.f32 %3325, 0
  %3327 = extractvalue %dx.types.ResRet.f32 %3325, 1
  %3328 = extractvalue %dx.types.ResRet.f32 %3325, 2
  %3329 = extractvalue %dx.types.ResRet.f32 %3325, 3
  %3330 = and i32 %3319, 255
  %3331 = uitofp i32 %3330 to float
  %3332 = lshr i32 %3319, 8
  %3333 = and i32 %3332, 255
  %3334 = uitofp i32 %3333 to float
  %3335 = fmul fast float %3329, %3331
  %3336 = fadd fast float %3335, %3334
  %3337 = fmul fast float %3336, 0x3F70101000000000
  %3338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3339 = extractvalue %dx.types.ResRet.i32 %3338, 0
  %3340 = and i32 %3339, 512
  %3341 = icmp eq i32 %3340, 0
  br i1 %3341, label %3350, label %3342

; <label>:3342                                    ; preds = %3317
  %3343 = add i32 %50, 504
  %3344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3343, i32 undef)  ; BufferLoad(srv,index,wot)
  %3345 = extractvalue %dx.types.ResRet.i32 %3344, 0
  %3346 = add i32 %3345, 0
  %3347 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3346, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3348 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3347, %dx.types.Handle %105, float %3237, float %3238, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3349 = extractvalue %dx.types.ResRet.f32 %3348, 0
  br label %3350

; <label>:3350                                    ; preds = %3342, %3317
  %3351 = phi float [ %3349, %3342 ], [ 1.000000e+00, %3317 ]
  %3352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3353 = extractvalue %dx.types.ResRet.i32 %3352, 0
  %3354 = and i32 %3353, 33554432
  %3355 = icmp eq i32 %3354, 0
  br i1 %3355, label %3462, label %3356

; <label>:3356                                    ; preds = %3350
  %3357 = add i32 %50, 272
  %3358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3357, i32 undef)  ; BufferLoad(srv,index,wot)
  %3359 = extractvalue %dx.types.ResRet.i32 %3358, 0
  %3360 = and i32 %3359, 65535
  %3361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3360)  ; LegacyF16ToF32(value)
  %3362 = lshr i32 %3359, 16
  %3363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3362)  ; LegacyF16ToF32(value)
  %3364 = add i32 %50, 276
  %3365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %3366 = extractvalue %dx.types.ResRet.i32 %3365, 0
  %3367 = and i32 %3366, 65535
  %3368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3367)  ; LegacyF16ToF32(value)
  %3369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %554, i32 undef)  ; BufferLoad(srv,index,wot)
  %3370 = extractvalue %dx.types.ResRet.i32 %3369, 0
  %3371 = lshr i32 %3370, 24
  %3372 = uitofp i32 %3371 to float
  %3373 = fmul fast float %3372, 0x3F70101020000000
  %3374 = and i32 %3370, 255
  %3375 = uitofp i32 %3374 to float
  %3376 = fmul fast float %3375, 0x3F70101020000000
  %3377 = lshr i32 %3370, 8
  %3378 = and i32 %3377, 255
  %3379 = uitofp i32 %3378 to float
  %3380 = fmul fast float %3379, 0x3F70101020000000
  %3381 = lshr i32 %3370, 16
  %3382 = and i32 %3381, 255
  %3383 = uitofp i32 %3382 to float
  %3384 = fmul fast float %3383, 0x3F70101020000000
  %3385 = add i32 %50, 268
  %3386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3385, i32 undef)  ; BufferLoad(srv,index,wot)
  %3387 = extractvalue %dx.types.ResRet.i32 %3386, 0
  %3388 = lshr i32 %3387, 24
  %3389 = uitofp i32 %3388 to float
  %3390 = fmul fast float %3389, 0x3F70101020000000
  %3391 = and i32 %3387, 255
  %3392 = uitofp i32 %3391 to float
  %3393 = fmul fast float %3392, 0x3F70101020000000
  %3394 = lshr i32 %3387, 8
  %3395 = and i32 %3394, 255
  %3396 = uitofp i32 %3395 to float
  %3397 = fmul fast float %3396, 0x3F70101020000000
  %3398 = lshr i32 %3387, 16
  %3399 = and i32 %3398, 255
  %3400 = uitofp i32 %3399 to float
  %3401 = fmul fast float %3400, 0x3F70101020000000
  %3402 = bitcast float %3326 to i32
  %3403 = ashr i32 %3402, 1
  %3404 = sub nsw i32 1597463174, %3403
  %3405 = bitcast i32 %3404 to float
  %3406 = fmul fast float %3326, 5.000000e-01
  %3407 = fmul fast float %3405, %3405
  %3408 = fmul fast float %3407, %3406
  %3409 = fsub fast float 1.500000e+00, %3408
  %3410 = fmul fast float %3405, %3326
  %3411 = fmul fast float %3410, %3409
  %3412 = bitcast float %3327 to i32
  %3413 = ashr i32 %3412, 1
  %3414 = sub nsw i32 1597463174, %3413
  %3415 = bitcast i32 %3414 to float
  %3416 = fmul fast float %3327, 5.000000e-01
  %3417 = fmul fast float %3415, %3415
  %3418 = fmul fast float %3417, %3416
  %3419 = fsub fast float 1.500000e+00, %3418
  %3420 = fmul fast float %3415, %3327
  %3421 = fmul fast float %3420, %3419
  %3422 = bitcast float %3328 to i32
  %3423 = ashr i32 %3422, 1
  %3424 = sub nsw i32 1597463174, %3423
  %3425 = bitcast i32 %3424 to float
  %3426 = fmul fast float %3328, 5.000000e-01
  %3427 = fmul fast float %3425, %3425
  %3428 = fmul fast float %3427, %3426
  %3429 = fsub fast float 1.500000e+00, %3428
  %3430 = fmul fast float %3425, %3328
  %3431 = fmul fast float %3430, %3429
  %3432 = fsub fast float %3411, %3393
  %3433 = fsub fast float %3421, %3397
  %3434 = fsub fast float %3431, %3401
  %3435 = fmul fast float %3432, %3361
  %3436 = fmul fast float %3433, %3363
  %3437 = fmul fast float %3434, %3368
  %3438 = fadd fast float %3435, %3376
  %3439 = fadd fast float %3436, %3380
  %3440 = fadd fast float %3437, %3384
  %3441 = call float @dx.op.unary.f32(i32 7, float %3438)  ; Saturate(value)
  %3442 = call float @dx.op.unary.f32(i32 7, float %3439)  ; Saturate(value)
  %3443 = call float @dx.op.unary.f32(i32 7, float %3440)  ; Saturate(value)
  %3444 = fmul fast float %3441, %3441
  %3445 = fmul fast float %3442, %3442
  %3446 = fmul fast float %3443, %3443
  %3447 = fsub fast float %3444, %3326
  %3448 = fsub fast float %3445, %3327
  %3449 = fsub fast float %3446, %3328
  %3450 = fmul fast float %3447, %3351
  %3451 = fmul fast float %3448, %3351
  %3452 = fmul fast float %3449, %3351
  %3453 = fadd fast float %3450, %3326
  %3454 = fadd fast float %3451, %3327
  %3455 = fadd fast float %3452, %3328
  %3456 = fadd fast float %3373, %3337
  %3457 = fsub fast float %3456, %3390
  %3458 = call float @dx.op.unary.f32(i32 7, float %3457)  ; Saturate(value)
  %3459 = fsub fast float %3458, %3337
  %3460 = fmul fast float %3459, %3351
  %3461 = fadd fast float %3460, %3337
  br label %3515

; <label>:3462                                    ; preds = %3350
  %3463 = and i32 %3353, 134217728
  %3464 = icmp eq i32 %3463, 0
  br i1 %3464, label %3499, label %3465

; <label>:3465                                    ; preds = %3462
  %3466 = call float @dx.op.unary.f32(i32 24, float %618)  ; Sqrt(value)
  %3467 = call float @dx.op.unary.f32(i32 24, float %619)  ; Sqrt(value)
  %3468 = call float @dx.op.unary.f32(i32 24, float %620)  ; Sqrt(value)
  %3469 = fadd fast float %3466, -5.000000e-01
  %3470 = fadd fast float %3467, -5.000000e-01
  %3471 = fadd fast float %3468, -5.000000e-01
  %3472 = fmul fast float %3469, %3351
  %3473 = fmul fast float %3470, %3351
  %3474 = fmul fast float %3471, %3351
  %3475 = fadd fast float %3472, 5.000000e-01
  %3476 = fadd fast float %3473, 5.000000e-01
  %3477 = fadd fast float %3474, 5.000000e-01
  %3478 = call float @dx.op.unary.f32(i32 24, float %3326)  ; Sqrt(value)
  %3479 = call float @dx.op.unary.f32(i32 24, float %3327)  ; Sqrt(value)
  %3480 = call float @dx.op.unary.f32(i32 24, float %3328)  ; Sqrt(value)
  %3481 = fmul fast float %3475, 2.000000e+00
  %3482 = fsub fast float 1.000000e+00, %3481
  %3483 = fmul fast float %3482, %3478
  %3484 = fadd fast float %3483, %3481
  %3485 = fmul fast float %3484, %3478
  %3486 = fmul fast float %3476, 2.000000e+00
  %3487 = fsub fast float 1.000000e+00, %3486
  %3488 = fmul fast float %3487, %3479
  %3489 = fadd fast float %3488, %3486
  %3490 = fmul fast float %3489, %3479
  %3491 = fmul fast float %3477, 2.000000e+00
  %3492 = fsub fast float 1.000000e+00, %3491
  %3493 = fmul fast float %3492, %3480
  %3494 = fadd fast float %3493, %3491
  %3495 = fmul fast float %3494, %3480
  %3496 = fmul fast float %3485, %3485
  %3497 = fmul fast float %3490, %3490
  %3498 = fmul fast float %3495, %3495
  br label %3515

; <label>:3499                                    ; preds = %3462
  %3500 = fmul fast float %618, %618
  %3501 = fmul fast float %619, %619
  %3502 = fmul fast float %620, %620
  %3503 = fadd fast float %3500, -1.000000e+00
  %3504 = fadd fast float %3501, -1.000000e+00
  %3505 = fadd fast float %3502, -1.000000e+00
  %3506 = fmul fast float %3351, %3503
  %3507 = fmul fast float %3351, %3504
  %3508 = fmul fast float %3351, %3505
  %3509 = fadd fast float %3506, 1.000000e+00
  %3510 = fadd fast float %3507, 1.000000e+00
  %3511 = fadd fast float %3508, 1.000000e+00
  %3512 = fmul fast float %3509, %3326
  %3513 = fmul fast float %3510, %3327
  %3514 = fmul fast float %3511, %3328
  br label %3515

; <label>:3515                                    ; preds = %3499, %3465, %3356, %3312
  %3516 = phi float [ %3461, %3356 ], [ %3337, %3465 ], [ %3337, %3499 ], [ 0x3FA23C0BE0000000, %3312 ]
  %3517 = phi float [ %3453, %3356 ], [ %3496, %3465 ], [ %3512, %3499 ], [ 1.000000e+00, %3312 ]
  %3518 = phi float [ %3454, %3356 ], [ %3497, %3465 ], [ %3513, %3499 ], [ 1.000000e+00, %3312 ]
  %3519 = phi float [ %3455, %3356 ], [ %3498, %3465 ], [ %3514, %3499 ], [ 1.000000e+00, %3312 ]
  %3520 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3521 = extractvalue %dx.types.CBufRet.i32 %3520, 1
  %3522 = and i32 %3521, 1
  %3523 = icmp ne i32 %3522, 0
  %3524 = add i32 %50, 356
  %3525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3524, i32 undef)  ; BufferLoad(srv,index,wot)
  %3526 = extractvalue %dx.types.ResRet.i32 %3525, 0
  %3527 = and i32 %3526, 32
  %3528 = icmp ne i32 %3527, 0
  %3529 = and i1 %3523, %3528
  %3530 = select i1 %3529, float 1.000000e+00, float %3517
  %3531 = select i1 %3529, float 0x3FD3333340000000, float %3518
  %3532 = select i1 %3529, float 0x3FD3333340000000, float %3519
  %3533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3534 = extractvalue %dx.types.ResRet.i32 %3533, 0
  %3535 = and i32 %3534, 32
  %3536 = icmp eq i32 %3535, 0
  br i1 %3536, label %3609, label %3537

; <label>:3537                                    ; preds = %3515
  %3538 = add i32 %50, 140
  %3539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3538, i32 undef)  ; BufferLoad(srv,index,wot)
  %3540 = extractvalue %dx.types.ResRet.i32 %3539, 0
  %3541 = add i32 %50, 436
  %3542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3541, i32 undef)  ; BufferLoad(srv,index,wot)
  %3543 = extractvalue %dx.types.ResRet.i32 %3542, 0
  %3544 = add i32 %3543, 0
  %3545 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3544, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3546 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3545, %dx.types.Handle %104, float %3237, float %3238, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3547 = extractvalue %dx.types.ResRet.f32 %3546, 0
  %3548 = extractvalue %dx.types.ResRet.f32 %3546, 1
  %3549 = extractvalue %dx.types.ResRet.f32 %3546, 2
  %3550 = extractvalue %dx.types.ResRet.f32 %3546, 3
  %3551 = and i32 %3540, 255
  %3552 = uitofp i32 %3551 to float
  %3553 = lshr i32 %3540, 8
  %3554 = and i32 %3553, 255
  %3555 = uitofp i32 %3554 to float
  %3556 = lshr i32 %3540, 16
  %3557 = and i32 %3556, 255
  %3558 = uitofp i32 %3557 to float
  %3559 = fmul fast float %3558, 0x3F70101000000000
  %3560 = fmul fast float %3547, %3552
  %3561 = fadd fast float %3560, %3555
  %3562 = fmul fast float %3561, 0x3F70101000000000
  %3563 = fadd fast float %3548, -5.000000e-01
  %3564 = fadd fast float %3550, -5.000000e-01
  %3565 = fmul fast float %3563, %3559
  %3566 = fmul fast float %3564, %3559
  %3567 = fadd fast float %3565, 5.000000e-01
  %3568 = fadd fast float %3566, 5.000000e-01
  %3569 = fmul fast float %3567, 2.000000e+00
  %3570 = fadd fast float %3569, -1.000000e+00
  %3571 = fmul fast float %3568, 2.000000e+00
  %3572 = fadd fast float %3571, -1.000000e+00
  %3573 = fadd fast float %3570, %3572
  %3574 = fmul fast float %3573, 5.000000e-01
  %3575 = fsub fast float %3570, %3572
  %3576 = fmul fast float %3575, 5.000000e-01
  %3577 = call float @dx.op.unary.f32(i32 6, float %3574)  ; FAbs(value)
  %3578 = fsub fast float 1.000000e+00, %3577
  %3579 = call float @dx.op.unary.f32(i32 6, float %3576)  ; FAbs(value)
  %3580 = fsub fast float %3578, %3579
  %3581 = call float @dx.op.dot3.f32(i32 55, float %3574, float %3576, float %3580, float %3574, float %3576, float %3580)  ; Dot3(ax,ay,az,bx,by,bz)
  %3582 = call float @dx.op.unary.f32(i32 25, float %3581)  ; Rsqrt(value)
  %3583 = fmul fast float %3574, %3582
  %3584 = fmul fast float %3576, %3582
  %3585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3586 = extractvalue %dx.types.ResRet.i32 %3585, 0
  %3587 = and i32 %3586, 67108864
  %3588 = icmp eq i32 %3587, 0
  br i1 %3588, label %3605, label %3589

; <label>:3589                                    ; preds = %3537
  %3590 = add i32 %50, 328
  %3591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3590, i32 undef)  ; BufferLoad(srv,index,wot)
  %3592 = extractvalue %dx.types.ResRet.i32 %3591, 0
  %3593 = and i32 %3592, 65535
  %3594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3593)  ; LegacyF16ToF32(value)
  %3595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3147, i32 undef)  ; BufferLoad(srv,index,wot)
  %3596 = extractvalue %dx.types.ResRet.i32 %3595, 0
  %3597 = and i32 %3596, 65535
  %3598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3597)  ; LegacyF16ToF32(value)
  %3599 = lshr i32 %3592, 16
  %3600 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3599)  ; LegacyF16ToF32(value)
  %3601 = fsub fast float %3562, %3600
  %3602 = fmul fast float %3601, %3594
  %3603 = fadd fast float %3602, %3598
  %3604 = call float @dx.op.unary.f32(i32 7, float %3603)  ; Saturate(value)
  br label %3605

; <label>:3605                                    ; preds = %3589, %3537
  %3606 = phi float [ %3604, %3589 ], [ %3562, %3537 ]
  %3607 = call float @dx.op.dot2.f32(i32 54, float %3583, float %3584, float %3141, float %3142)  ; Dot2(ax,ay,bx,by)
  %3608 = call float @dx.op.dot2.f32(i32 54, float %3583, float %3584, float %3143, float %3144)  ; Dot2(ax,ay,bx,by)
  br label %3609

; <label>:3609                                    ; preds = %3605, %3515
  %3610 = phi float [ %3606, %3605 ], [ 0x3FD6666660000000, %3515 ]
  %3611 = phi float [ %3607, %3605 ], [ 0.000000e+00, %3515 ]
  %3612 = phi float [ %3608, %3605 ], [ 0.000000e+00, %3515 ]
  %3613 = phi float [ %3549, %3605 ], [ 1.000000e+00, %3515 ]
  %3614 = add i32 %50, 208
  %3615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3614, i32 undef)  ; BufferLoad(srv,index,wot)
  %3616 = extractvalue %dx.types.ResRet.i32 %3615, 0
  %3617 = lshr i32 %3616, 22
  %3618 = shl nuw nsw i32 %3617, 5
  %3619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3618)  ; LegacyF16ToF32(value)
  %3620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3621 = extractvalue %dx.types.ResRet.i32 %3620, 0
  %3622 = and i32 %3621, 64
  %3623 = icmp eq i32 %3622, 0
  br i1 %3623, label %3657, label %3624

; <label>:3624                                    ; preds = %3609
  %3625 = add i32 %50, 452
  %3626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3625, i32 undef)  ; BufferLoad(srv,index,wot)
  %3627 = extractvalue %dx.types.ResRet.i32 %3626, 0
  %3628 = add i32 %3627, 0
  %3629 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3628, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3631 = extractvalue %dx.types.ResRet.i32 %3630, 0
  %3632 = and i32 %3631, 131072
  %3633 = icmp eq i32 %3632, 0
  %3634 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3629, %dx.types.Handle %104, float %3237, float %3238, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3635 = extractvalue %dx.types.ResRet.f32 %3634, 0
  %3636 = extractvalue %dx.types.ResRet.f32 %3634, 1
  %3637 = extractvalue %dx.types.ResRet.f32 %3634, 2
  %3638 = fmul fast float %601, %3635
  %3639 = fmul fast float %602, %3636
  %3640 = fmul fast float %603, %3637
  br i1 %3633, label %3647, label %3641

; <label>:3641                                    ; preds = %3624
  %3642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3643 = extractvalue %dx.types.CBufRet.f32 %3642, 0
  %3644 = fmul fast float %3643, %3638
  %3645 = fmul fast float %3643, %3639
  %3646 = fmul fast float %3643, %3640
  br label %3647

; <label>:3647                                    ; preds = %3641, %3624
  %3648 = phi float [ %3644, %3641 ], [ %3638, %3624 ]
  %3649 = phi float [ %3645, %3641 ], [ %3639, %3624 ]
  %3650 = phi float [ %3646, %3641 ], [ %3640, %3624 ]
  %3651 = fmul fast float %3648, %3619
  %3652 = select i1 %269, float %3651, float %3648
  %3653 = call float @dx.op.dot3.f32(i32 55, float %3652, float %3649, float %3650, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3654 = select i1 %269, float 0.000000e+00, float %3648
  %3655 = select i1 %269, float %3653, float %3649
  %3656 = select i1 %269, float 0.000000e+00, float %3650
  br label %3657

; <label>:3657                                    ; preds = %3647, %3609
  %3658 = phi float [ %3654, %3647 ], [ 0.000000e+00, %3609 ]
  %3659 = phi float [ %3655, %3647 ], [ 0.000000e+00, %3609 ]
  %3660 = phi float [ %3656, %3647 ], [ 0.000000e+00, %3609 ]
  %3661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3662 = extractvalue %dx.types.ResRet.i32 %3661, 0
  %3663 = and i32 %3662, 1024
  %3664 = icmp eq i32 %3663, 0
  br i1 %3664, label %3695, label %3665

; <label>:3665                                    ; preds = %3657
  %3666 = add i32 %50, 200
  %3667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3666, i32 undef)  ; BufferLoad(srv,index,wot)
  %3668 = extractvalue %dx.types.ResRet.i32 %3667, 0
  %3669 = and i32 %3668, 255
  %3670 = uitofp i32 %3669 to float
  %3671 = fmul fast float %3670, 0x3F70101020000000
  %3672 = lshr i32 %3668, 8
  %3673 = and i32 %3672, 255
  %3674 = uitofp i32 %3673 to float
  %3675 = fmul fast float %3674, 0x3F70101020000000
  %3676 = lshr i32 %3668, 16
  %3677 = and i32 %3676, 255
  %3678 = uitofp i32 %3677 to float
  %3679 = fmul fast float %3678, 0x3F70101020000000
  %3680 = fmul fast float %3671, %3671
  %3681 = fmul fast float %3675, %3675
  %3682 = fmul fast float %3679, %3679
  %3683 = add i32 %50, 520
  %3684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3683, i32 undef)  ; BufferLoad(srv,index,wot)
  %3685 = extractvalue %dx.types.ResRet.i32 %3684, 0
  %3686 = add i32 %3685, 0
  %3687 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3686, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3688 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3687, %dx.types.Handle %105, float %3237, float %3238, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3689 = extractvalue %dx.types.ResRet.f32 %3688, 0
  %3690 = extractvalue %dx.types.ResRet.f32 %3688, 1
  %3691 = extractvalue %dx.types.ResRet.f32 %3688, 2
  %3692 = fmul fast float %3680, %3689
  %3693 = fmul fast float %3681, %3690
  %3694 = fmul fast float %3682, %3691
  br label %3695

; <label>:3695                                    ; preds = %3665, %3657
  %3696 = phi float [ %3692, %3665 ], [ 0.000000e+00, %3657 ]
  %3697 = phi float [ %3693, %3665 ], [ 0.000000e+00, %3657 ]
  %3698 = phi float [ %3694, %3665 ], [ 0.000000e+00, %3657 ]
  %3699 = fcmp fast ogt float %3696, 0.000000e+00
  %3700 = fcmp fast ogt float %3697, 0.000000e+00
  %3701 = fcmp fast ogt float %3698, 0.000000e+00
  %3702 = call float @dx.op.unary.f32(i32 23, float %3696)  ; Log(value)
  %3703 = call float @dx.op.unary.f32(i32 23, float %3697)  ; Log(value)
  %3704 = call float @dx.op.unary.f32(i32 23, float %3698)  ; Log(value)
  %3705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3614, i32 undef)  ; BufferLoad(srv,index,wot)
  %3706 = extractvalue %dx.types.ResRet.i32 %3705, 0
  %3707 = lshr i32 %3706, 7
  %3708 = and i32 %3707, 32752
  %3709 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3708)  ; LegacyF16ToF32(value)
  %3710 = fmul fast float %3702, 0xBFE62E4300000000
  %3711 = fmul fast float %3710, %3709
  %3712 = fmul fast float %3703, 0xBFE62E4300000000
  %3713 = fmul fast float %3712, %3709
  %3714 = fmul fast float %3704, 0xBFE62E4300000000
  %3715 = fmul fast float %3714, %3709
  %3716 = select i1 %3699, float %3711, float 1.270000e+02
  %3717 = select i1 %3700, float %3713, float 1.270000e+02
  %3718 = select i1 %3701, float %3715, float 1.270000e+02
  %3719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3720 = extractvalue %dx.types.ResRet.i32 %3719, 0
  %3721 = and i32 %3720, 10240
  %3722 = icmp eq i32 %3721, 0
  br i1 %3722, label %3743, label %3723

; <label>:3723                                    ; preds = %3695
  %3724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3725 = extractvalue %dx.types.ResRet.i32 %3724, 0
  %3726 = and i32 %3725, 2048
  %3727 = icmp eq i32 %3726, 0
  br i1 %3727, label %3743, label %3728

; <label>:3728                                    ; preds = %3723
  %3729 = add i32 %50, 536
  %3730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3729, i32 undef)  ; BufferLoad(srv,index,wot)
  %3731 = extractvalue %dx.types.ResRet.i32 %3730, 0
  %3732 = add i32 %3731, 0
  %3733 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3732, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3734 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3733, %dx.types.Handle %105, float %3237, float %3238, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3735 = extractvalue %dx.types.ResRet.f32 %3734, 3
  %3736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3614, i32 undef)  ; BufferLoad(srv,index,wot)
  %3737 = extractvalue %dx.types.ResRet.i32 %3736, 0
  %3738 = shl i32 %3737, 4
  %3739 = and i32 %3738, 32752
  %3740 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3739)  ; LegacyF16ToF32(value)
  %3741 = fmul fast float %3740, %3735
  %3742 = call float @dx.op.binary.f32(i32 35, float %3741, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3743

; <label>:3743                                    ; preds = %3728, %3723, %3695
  %3744 = phi float [ %3742, %3728 ], [ 0x3F70101020000000, %3723 ], [ 0x3F70101020000000, %3695 ]
  %3745 = add i32 %50, 144
  %3746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3745, i32 undef)  ; BufferLoad(srv,index,wot)
  %3747 = extractvalue %dx.types.ResRet.i32 %3746, 0
  %3748 = and i32 %3747, 255
  %3749 = uitofp i32 %3748 to float
  %3750 = lshr i32 %3747, 8
  %3751 = and i32 %3750, 255
  %3752 = uitofp i32 %3751 to float
  %3753 = call float @dx.op.dot3.f32(i32 55, float %3530, float %3531, float %3532, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3754 = fmul fast float %3752, %3753
  %3755 = fadd fast float %3754, %3749
  %3756 = fmul fast float %3755, 0x3F70101020000000
  %3757 = call float @dx.op.unary.f32(i32 7, float %3756)  ; Saturate(value)
  br i1 %3129, label %3758, label %3793

; <label>:3758                                    ; preds = %3743
  %3759 = fmul fast float %3744, 2.000000e+00
  %3760 = fcmp fast olt float %3716, 1.270000e+02
  %3761 = fcmp fast olt float %3717, 1.270000e+02
  %3762 = fcmp fast olt float %3718, 1.270000e+02
  %3763 = fmul fast float %3716, 0xBFF7154760000000
  %3764 = fmul fast float %3763, %3759
  %3765 = fmul fast float %3717, 0xBFF7154760000000
  %3766 = fmul fast float %3765, %3759
  %3767 = fmul fast float %3718, 0xBFF7154760000000
  %3768 = fmul fast float %3767, %3759
  %3769 = call float @dx.op.unary.f32(i32 21, float %3764)  ; Exp(value)
  %3770 = call float @dx.op.unary.f32(i32 21, float %3766)  ; Exp(value)
  %3771 = call float @dx.op.unary.f32(i32 21, float %3768)  ; Exp(value)
  %3772 = call float @dx.op.unary.f32(i32 7, float %3769)  ; Saturate(value)
  %3773 = call float @dx.op.unary.f32(i32 7, float %3770)  ; Saturate(value)
  %3774 = call float @dx.op.unary.f32(i32 7, float %3771)  ; Saturate(value)
  %3775 = fadd fast float %3772, -1.000000e+00
  %3776 = select i1 %3760, float %3775, float -1.000000e+00
  %3777 = fadd fast float %3773, -1.000000e+00
  %3778 = select i1 %3761, float %3777, float -1.000000e+00
  %3779 = fadd fast float %3774, -1.000000e+00
  %3780 = select i1 %3762, float %3779, float -1.000000e+00
  %3781 = fmul fast float %3776, %3310
  %3782 = fmul fast float %3778, %3310
  %3783 = fmul fast float %3780, %3310
  %3784 = fadd fast float %3781, 1.000000e+00
  %3785 = fadd fast float %3782, 1.000000e+00
  %3786 = fadd fast float %3783, 1.000000e+00
  %3787 = fmul fast float %3784, %3114
  %3788 = fmul fast float %3785, %3115
  %3789 = fmul fast float %3786, %3116
  %3790 = fmul fast float %3784, %3117
  %3791 = fmul fast float %3785, %3118
  %3792 = fmul fast float %3786, %3119
  br label %3793

; <label>:3793                                    ; preds = %3758, %3743
  %3794 = phi float [ %3787, %3758 ], [ %3114, %3743 ]
  %3795 = phi float [ %3788, %3758 ], [ %3115, %3743 ]
  %3796 = phi float [ %3789, %3758 ], [ %3116, %3743 ]
  %3797 = phi float [ %3790, %3758 ], [ %3117, %3743 ]
  %3798 = phi float [ %3791, %3758 ], [ %3118, %3743 ]
  %3799 = phi float [ %3792, %3758 ], [ %3119, %3743 ]
  %3800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3801 = extractvalue %dx.types.ResRet.i32 %3800, 0
  %3802 = and i32 %3801, 3
  %3803 = icmp eq i32 %3802, 3
  br i1 %3803, label %3882, label %3804

; <label>:3804                                    ; preds = %3793
  %3805 = and i32 %3801, 16
  %3806 = icmp ne i32 %3805, 0
  %3807 = select i1 %3806, float %3310, float 0.000000e+00
  %3808 = icmp eq i32 %3802, 0
  br i1 %3808, label %3809, label %3837

; <label>:3809                                    ; preds = %3804
  %3810 = and i32 %3801, 64
  %3811 = icmp ne i32 %3810, 0
  %3812 = select i1 %3811, float %3310, float 0.000000e+00
  %3813 = fsub fast float %3530, %3794
  %3814 = fsub fast float %3531, %3795
  %3815 = fsub fast float %3532, %3796
  %3816 = fmul fast float %3807, %3813
  %3817 = fmul fast float %3807, %3814
  %3818 = fmul fast float %3807, %3815
  %3819 = fadd fast float %3816, %3794
  %3820 = fadd fast float %3817, %3795
  %3821 = fadd fast float %3818, %3796
  %3822 = fsub fast float %3516, %3123
  %3823 = fmul fast float %3807, %3822
  %3824 = fadd fast float %3823, %3123
  %3825 = fsub fast float %3658, %3797
  %3826 = fsub fast float %3659, %3798
  %3827 = fsub fast float %3660, %3799
  %3828 = fmul fast float %3812, %3825
  %3829 = fmul fast float %3812, %3826
  %3830 = fmul fast float %3812, %3827
  %3831 = fadd fast float %3828, %3797
  %3832 = fadd fast float %3829, %3798
  %3833 = fadd fast float %3830, %3799
  %3834 = fsub fast float %3757, %3127
  %3835 = fmul fast float %3807, %3834
  %3836 = fadd fast float %3835, %3127
  br label %3882

; <label>:3837                                    ; preds = %3804
  %3838 = icmp eq i32 %3802, 1
  br i1 %3838, label %3839, label %3852

; <label>:3839                                    ; preds = %3837
  %3840 = fadd fast float %3530, -1.000000e+00
  %3841 = fadd fast float %3531, -1.000000e+00
  %3842 = fadd fast float %3532, -1.000000e+00
  %3843 = fmul fast float %3807, %3840
  %3844 = fmul fast float %3807, %3841
  %3845 = fmul fast float %3807, %3842
  %3846 = fadd fast float %3843, 1.000000e+00
  %3847 = fadd fast float %3844, 1.000000e+00
  %3848 = fadd fast float %3845, 1.000000e+00
  %3849 = fmul fast float %3846, %3794
  %3850 = fmul fast float %3847, %3795
  %3851 = fmul fast float %3848, %3796
  br label %3882

; <label>:3852                                    ; preds = %3837
  %3853 = icmp eq i32 %3802, 2
  br i1 %3853, label %3854, label %3882

; <label>:3854                                    ; preds = %3852
  %3855 = call float @dx.op.unary.f32(i32 24, float %3530)  ; Sqrt(value)
  %3856 = call float @dx.op.unary.f32(i32 24, float %3531)  ; Sqrt(value)
  %3857 = call float @dx.op.unary.f32(i32 24, float %3532)  ; Sqrt(value)
  %3858 = fadd fast float %3855, -5.000000e-01
  %3859 = fadd fast float %3856, -5.000000e-01
  %3860 = fadd fast float %3857, -5.000000e-01
  %3861 = fmul fast float %3858, %3807
  %3862 = fmul fast float %3859, %3807
  %3863 = fmul fast float %3860, %3807
  %3864 = fadd fast float %3861, 5.000000e-01
  %3865 = fadd fast float %3862, 5.000000e-01
  %3866 = fadd fast float %3863, 5.000000e-01
  %3867 = fmul fast float %3864, 2.000000e+00
  %3868 = fsub fast float 1.000000e+00, %3867
  %3869 = fmul fast float %3868, %3794
  %3870 = fadd fast float %3869, %3867
  %3871 = fmul fast float %3870, %3794
  %3872 = fmul fast float %3865, 2.000000e+00
  %3873 = fsub fast float 1.000000e+00, %3872
  %3874 = fmul fast float %3873, %3795
  %3875 = fadd fast float %3874, %3872
  %3876 = fmul fast float %3875, %3795
  %3877 = fmul fast float %3866, 2.000000e+00
  %3878 = fsub fast float 1.000000e+00, %3877
  %3879 = fmul fast float %3878, %3796
  %3880 = fadd fast float %3879, %3877
  %3881 = fmul fast float %3880, %3796
  br label %3882

; <label>:3882                                    ; preds = %3854, %3852, %3839, %3809, %3793
  %3883 = phi float [ %3794, %3793 ], [ %3871, %3854 ], [ %3794, %3852 ], [ %3849, %3839 ], [ %3819, %3809 ]
  %3884 = phi float [ %3795, %3793 ], [ %3876, %3854 ], [ %3795, %3852 ], [ %3850, %3839 ], [ %3820, %3809 ]
  %3885 = phi float [ %3796, %3793 ], [ %3881, %3854 ], [ %3796, %3852 ], [ %3851, %3839 ], [ %3821, %3809 ]
  %3886 = phi float [ %3797, %3793 ], [ %3797, %3854 ], [ %3797, %3852 ], [ %3797, %3839 ], [ %3831, %3809 ]
  %3887 = phi float [ %3798, %3793 ], [ %3798, %3854 ], [ %3798, %3852 ], [ %3798, %3839 ], [ %3832, %3809 ]
  %3888 = phi float [ %3799, %3793 ], [ %3799, %3854 ], [ %3799, %3852 ], [ %3799, %3839 ], [ %3833, %3809 ]
  %3889 = phi float [ %3123, %3793 ], [ %3123, %3854 ], [ %3123, %3852 ], [ %3123, %3839 ], [ %3824, %3809 ]
  %3890 = phi float [ %3127, %3793 ], [ %3127, %3854 ], [ %3127, %3852 ], [ %3127, %3839 ], [ %3836, %3809 ]
  %3891 = and i32 %3801, 12
  %3892 = icmp eq i32 %3891, 12
  br i1 %3892, label %3999, label %3893

; <label>:3893                                    ; preds = %3882
  %3894 = and i32 %3801, 2097184
  %3895 = icmp eq i32 %3894, 2097184
  %3896 = select i1 %3895, float %3310, float 0.000000e+00
  %3897 = and i32 %3801, 4194336
  %3898 = icmp eq i32 %3897, 4194336
  %3899 = select i1 %3898, float %3310, float 0.000000e+00
  %3900 = and i32 %3801, 8388640
  %3901 = icmp eq i32 %3900, 8388640
  %3902 = select i1 %3901, float %3310, float 0.000000e+00
  %3903 = and i32 %3801, 1024
  %3904 = icmp ne i32 %3903, 0
  %3905 = select i1 %3904, float %3310, float 0.000000e+00
  %3906 = and i32 %3801, 2048
  %3907 = icmp ne i32 %3906, 0
  %3908 = select i1 %3907, float %3310, float 0.000000e+00
  %3909 = icmp eq i32 %3891, 0
  br i1 %3909, label %3910, label %3935

; <label>:3910                                    ; preds = %3893
  %3911 = fsub fast float %3611, %3112
  %3912 = fsub fast float %3612, %3113
  %3913 = fmul fast float %3896, %3911
  %3914 = fmul fast float %3896, %3912
  %3915 = fadd fast float %3913, %3112
  %3916 = fadd fast float %3914, %3113
  %3917 = fsub fast float %3613, %3125
  %3918 = fmul fast float %3899, %3917
  %3919 = fadd fast float %3918, %3125
  %3920 = fsub fast float %3610, %3124
  %3921 = fmul fast float %3902, %3920
  %3922 = fadd fast float %3921, %3124
  %3923 = fsub fast float %3716, %3120
  %3924 = fsub fast float %3717, %3121
  %3925 = fsub fast float %3718, %3122
  %3926 = fmul fast float %3905, %3923
  %3927 = fmul fast float %3905, %3924
  %3928 = fmul fast float %3905, %3925
  %3929 = fadd fast float %3926, %3120
  %3930 = fadd fast float %3927, %3121
  %3931 = fadd fast float %3928, %3122
  %3932 = fsub fast float %3744, %3126
  %3933 = fmul fast float %3908, %3932
  %3934 = fadd fast float %3933, %3126
  br label %3999

; <label>:3935                                    ; preds = %3893
  %3936 = icmp eq i32 %3891, 4
  br i1 %3936, label %3937, label %3977

; <label>:3937                                    ; preds = %3935
  %3938 = fmul fast float %3896, %3611
  %3939 = fmul fast float %3896, %3612
  %3940 = fadd fast float %3938, %3112
  %3941 = fadd fast float %3939, %3113
  %3942 = call float @dx.op.binary.f32(i32 36, float %3125, float %3613)  ; FMin(a,b)
  %3943 = fsub fast float %3942, %3125
  %3944 = fmul fast float %3943, %3899
  %3945 = fadd fast float %3944, %3125
  %3946 = fadd fast float %3610, %3124
  %3947 = fmul fast float %3946, 0x3FF337FAE0000000
  %3948 = fmul fast float %3124, %3124
  %3949 = fmul fast float %3610, %3610
  %3950 = fadd fast float %3949, %3948
  %3951 = fmul fast float %3950, 0x3FE5152B00000000
  %3952 = fmul fast float %3124, 0xBFCC1F85E0000000
  %3953 = fmul fast float %3952, %3610
  %3954 = fadd fast float %3953, 0xBFE1363700000000
  %3955 = fadd fast float %3954, %3947
  %3956 = fsub fast float %3955, %3951
  %3957 = fmul fast float %3946, 0x3FBA6F0D00000000
  %3958 = fmul fast float %3950, 0x3FD0432880000000
  %3959 = fmul fast float %3124, 0xBFEF110800000000
  %3960 = fmul fast float %3959, %3610
  %3961 = fadd fast float %3960, 1.000000e+00
  %3962 = fsub fast float %3961, %3957
  %3963 = fadd fast float %3962, %3958
  %3964 = fdiv fast float %3956, %3963
  %3965 = call float @dx.op.unary.f32(i32 7, float %3964)  ; Saturate(value)
  %3966 = fsub fast float %3965, %3124
  %3967 = fmul fast float %3966, %3902
  %3968 = fadd fast float %3967, %3124
  %3969 = fmul fast float %3905, %3716
  %3970 = fmul fast float %3905, %3717
  %3971 = fmul fast float %3905, %3718
  %3972 = fadd fast float %3969, %3120
  %3973 = fadd fast float %3970, %3121
  %3974 = fadd fast float %3971, %3122
  %3975 = fmul fast float %3908, %3744
  %3976 = fadd fast float %3975, %3126
  br label %3999

; <label>:3977                                    ; preds = %3935
  %3978 = icmp eq i32 %3891, 8
  br i1 %3978, label %3979, label %3999

; <label>:3979                                    ; preds = %3977
  %3980 = fmul fast float %3896, %3611
  %3981 = fmul fast float %3896, %3612
  %3982 = fadd fast float %3980, %3112
  %3983 = fadd fast float %3981, %3113
  %3984 = call float @dx.op.binary.f32(i32 36, float %3125, float %3613)  ; FMin(a,b)
  %3985 = fsub fast float %3984, %3125
  %3986 = fmul fast float %3985, %3899
  %3987 = fadd fast float %3986, %3125
  %3988 = fsub fast float %3610, %3124
  %3989 = fmul fast float %3902, %3988
  %3990 = fadd fast float %3989, %3124
  %3991 = fmul fast float %3905, %3716
  %3992 = fmul fast float %3905, %3717
  %3993 = fmul fast float %3905, %3718
  %3994 = fadd fast float %3991, %3120
  %3995 = fadd fast float %3992, %3121
  %3996 = fadd fast float %3993, %3122
  %3997 = fmul fast float %3908, %3744
  %3998 = fadd fast float %3997, %3126
  br label %3999

; <label>:3999                                    ; preds = %3979, %3977, %3937, %3910, %3882, %3309, %3128, %3111
  %4000 = phi float [ %3112, %3882 ], [ %3112, %3309 ], [ %3112, %3111 ], [ %3112, %3128 ], [ %3915, %3910 ], [ %3940, %3937 ], [ %3112, %3977 ], [ %3982, %3979 ]
  %4001 = phi float [ %3113, %3882 ], [ %3113, %3309 ], [ %3113, %3111 ], [ %3113, %3128 ], [ %3916, %3910 ], [ %3941, %3937 ], [ %3113, %3977 ], [ %3983, %3979 ]
  %4002 = phi float [ %3883, %3882 ], [ %3114, %3309 ], [ %3114, %3111 ], [ %3114, %3128 ], [ %3883, %3910 ], [ %3883, %3937 ], [ %3883, %3977 ], [ %3883, %3979 ]
  %4003 = phi float [ %3884, %3882 ], [ %3115, %3309 ], [ %3115, %3111 ], [ %3115, %3128 ], [ %3884, %3910 ], [ %3884, %3937 ], [ %3884, %3977 ], [ %3884, %3979 ]
  %4004 = phi float [ %3885, %3882 ], [ %3116, %3309 ], [ %3116, %3111 ], [ %3116, %3128 ], [ %3885, %3910 ], [ %3885, %3937 ], [ %3885, %3977 ], [ %3885, %3979 ]
  %4005 = phi float [ %3886, %3882 ], [ %3117, %3309 ], [ %3117, %3111 ], [ %3117, %3128 ], [ %3886, %3910 ], [ %3886, %3937 ], [ %3886, %3977 ], [ %3886, %3979 ]
  %4006 = phi float [ %3887, %3882 ], [ %3118, %3309 ], [ %3118, %3111 ], [ %3118, %3128 ], [ %3887, %3910 ], [ %3887, %3937 ], [ %3887, %3977 ], [ %3887, %3979 ]
  %4007 = phi float [ %3888, %3882 ], [ %3119, %3309 ], [ %3119, %3111 ], [ %3119, %3128 ], [ %3888, %3910 ], [ %3888, %3937 ], [ %3888, %3977 ], [ %3888, %3979 ]
  %4008 = phi float [ %3120, %3882 ], [ %3120, %3309 ], [ %3120, %3111 ], [ %3120, %3128 ], [ %3929, %3910 ], [ %3972, %3937 ], [ %3120, %3977 ], [ %3994, %3979 ]
  %4009 = phi float [ %3121, %3882 ], [ %3121, %3309 ], [ %3121, %3111 ], [ %3121, %3128 ], [ %3930, %3910 ], [ %3973, %3937 ], [ %3121, %3977 ], [ %3995, %3979 ]
  %4010 = phi float [ %3122, %3882 ], [ %3122, %3309 ], [ %3122, %3111 ], [ %3122, %3128 ], [ %3931, %3910 ], [ %3974, %3937 ], [ %3122, %3977 ], [ %3996, %3979 ]
  %4011 = phi float [ %3889, %3882 ], [ %3123, %3309 ], [ %3123, %3111 ], [ %3123, %3128 ], [ %3889, %3910 ], [ %3889, %3937 ], [ %3889, %3977 ], [ %3889, %3979 ]
  %4012 = phi float [ %3124, %3882 ], [ %3124, %3309 ], [ %3124, %3111 ], [ %3124, %3128 ], [ %3922, %3910 ], [ %3968, %3937 ], [ %3124, %3977 ], [ %3990, %3979 ]
  %4013 = phi float [ %3125, %3882 ], [ %3125, %3309 ], [ %3125, %3111 ], [ %3125, %3128 ], [ %3919, %3910 ], [ %3945, %3937 ], [ %3125, %3977 ], [ %3987, %3979 ]
  %4014 = phi float [ %3126, %3882 ], [ %3126, %3309 ], [ %3126, %3111 ], [ %3126, %3128 ], [ %3934, %3910 ], [ %3976, %3937 ], [ %3126, %3977 ], [ %3998, %3979 ]
  %4015 = phi float [ %3890, %3882 ], [ %3127, %3309 ], [ %3127, %3111 ], [ %3127, %3128 ], [ %3890, %3910 ], [ %3890, %3937 ], [ %3890, %3977 ], [ %3890, %3979 ]
  %4016 = add i32 %50, 360
  %4017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4016, i32 undef)  ; BufferLoad(srv,index,wot)
  %4018 = extractvalue %dx.types.ResRet.i32 %4017, 0
  %4019 = extractvalue %dx.types.ResRet.i32 %4017, 1
  %4020 = bitcast i32 %4018 to float
  %4021 = bitcast i32 %4019 to float
  %4022 = fcmp fast oge float %4020, 0.000000e+00
  %4023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4024 = extractvalue %dx.types.CBufRet.f32 %4023, 0
  %4025 = select i1 %4022, float %4020, float %4024
  %4026 = fadd fast float %4025, %209
  %4027 = fmul fast float %4021, %210
  %4028 = add i32 %50, 488
  %4029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4028, i32 undef)  ; BufferLoad(srv,index,wot)
  %4030 = extractvalue %dx.types.ResRet.i32 %4029, 0
  %4031 = add i32 %4030, 0
  %4032 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4031, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4033 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4032, %dx.types.Handle %105, float %86, float %87, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4034 = extractvalue %dx.types.ResRet.f32 %4033, 0
  %4035 = fmul fast float %4027, %4034
  %4036 = fadd fast float %4026, %4035
  %4037 = and i32 %201, 65535
  %4038 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4037)  ; LegacyF16ToF32(value)
  %4039 = lshr i32 %201, 16
  %4040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4039)  ; LegacyF16ToF32(value)
  %4041 = and i32 %202, 65535
  %4042 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4041)  ; LegacyF16ToF32(value)
  %4043 = fmul fast float %4038, %4002
  %4044 = fmul fast float %4040, %4003
  %4045 = fmul fast float %4042, %4004
  %4046 = shl i32 %203, 4
  %4047 = and i32 %4046, 32752
  %4048 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4047)  ; LegacyF16ToF32(value)
  %4049 = lshr i32 %203, 7
  %4050 = and i32 %4049, 32752
  %4051 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4050)  ; LegacyF16ToF32(value)
  %4052 = lshr i32 %203, 22
  %4053 = shl nuw nsw i32 %4052, 5
  %4054 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4053)  ; LegacyF16ToF32(value)
  %4055 = and i32 %204, 65535
  %4056 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4055)  ; LegacyF16ToF32(value)
  %4057 = fmul fast float %4048, %4005
  %4058 = fmul fast float %4057, %4056
  %4059 = fmul fast float %4051, %4006
  %4060 = fmul fast float %4059, %4056
  %4061 = fmul fast float %4054, %4007
  %4062 = fmul fast float %4061, %4056
  %4063 = call float @dx.op.dot2.f32(i32 54, float %4000, float %4001, float %4000, float %4001)  ; Dot2(ax,ay,bx,by)
  %4064 = fmul fast float %4063, 0x3FE3333340000000
  %4065 = fsub fast float 1.000000e+00, %4064
  %4066 = call float @dx.op.dot3.f32(i32 55, float %4000, float %4001, float %4065, float %4000, float %4001, float %4065)  ; Dot3(ax,ay,az,bx,by,bz)
  %4067 = call float @dx.op.unary.f32(i32 25, float %4066)  ; Rsqrt(value)
  %4068 = fmul fast float %4067, %4000
  %4069 = fmul fast float %4067, %4001
  %4070 = fmul fast float %4065, %4067
  %4071 = fmul fast float %4070, %115
  %4072 = fmul fast float %4070, %116
  %4073 = fmul fast float %4070, %117
  %4074 = fmul fast float %4068, %79
  %4075 = fmul fast float %4068, %80
  %4076 = fmul fast float %4068, %81
  %4077 = fadd fast float %4071, %4074
  %4078 = fadd fast float %4072, %4075
  %4079 = fadd fast float %4073, %4076
  %4080 = fmul fast float %127, %4069
  %4081 = fmul fast float %128, %4069
  %4082 = fmul fast float %129, %4069
  %4083 = fadd fast float %4077, %4080
  %4084 = fadd fast float %4078, %4081
  %4085 = fadd fast float %4079, %4082
  %4086 = call float @dx.op.dot3.f32(i32 55, float %4083, float %4084, float %4085, float %4083, float %4084, float %4085)  ; Dot3(ax,ay,az,bx,by,bz)
  %4087 = call float @dx.op.unary.f32(i32 25, float %4086)  ; Rsqrt(value)
  %4088 = fmul fast float %4083, %4087
  %4089 = fmul fast float %4084, %4087
  %4090 = fmul fast float %4085, %4087
  %4091 = icmp eq i32 %53, 65535
  br i1 %4091, label %4637, label %4092

; <label>:4092                                    ; preds = %3999
  %4093 = call float @dx.op.unary.f32(i32 83, float %54)  ; DerivCoarseX(value)
  %4094 = call float @dx.op.unary.f32(i32 83, float %55)  ; DerivCoarseX(value)
  %4095 = call float @dx.op.unary.f32(i32 83, float %56)  ; DerivCoarseX(value)
  %4096 = call float @dx.op.unary.f32(i32 84, float %54)  ; DerivCoarseY(value)
  %4097 = call float @dx.op.unary.f32(i32 84, float %55)  ; DerivCoarseY(value)
  %4098 = call float @dx.op.unary.f32(i32 84, float %56)  ; DerivCoarseY(value)
  %4099 = fadd fast float %4093, %54
  %4100 = fadd fast float %4094, %55
  %4101 = fadd fast float %4095, %56
  %4102 = fadd fast float %4096, %54
  %4103 = fadd fast float %4097, %55
  %4104 = fadd fast float %4098, %56
  %4105 = mul i32 %53, 48
  %4106 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4105, i32 undef)  ; BufferLoad(srv,index,wot)
  %4107 = extractvalue %dx.types.ResRet.f32 %4106, 0
  %4108 = extractvalue %dx.types.ResRet.f32 %4106, 1
  %4109 = extractvalue %dx.types.ResRet.f32 %4106, 2
  %4110 = add i32 %4105, 16
  %4111 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4110, i32 undef)  ; BufferLoad(srv,index,wot)
  %4112 = extractvalue %dx.types.ResRet.f32 %4111, 0
  %4113 = extractvalue %dx.types.ResRet.f32 %4111, 1
  %4114 = extractvalue %dx.types.ResRet.f32 %4111, 2
  %4115 = add i32 %4105, 32
  %4116 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4115, i32 undef)  ; BufferLoad(srv,index,wot)
  %4117 = extractvalue %dx.types.ResRet.f32 %4116, 0
  %4118 = extractvalue %dx.types.ResRet.f32 %4116, 1
  %4119 = extractvalue %dx.types.ResRet.f32 %4116, 2
  %4120 = extractvalue %dx.types.ResRet.f32 %4116, 3
  %4121 = bitcast float %4120 to i32
  %4122 = fmul fast float %4107, %54
  %4123 = fmul fast float %4108, %55
  %4124 = fmul fast float %4109, %56
  %4125 = fsub fast float %4122, %4112
  %4126 = fsub fast float %4123, %4113
  %4127 = fsub fast float %4124, %4114
  %4128 = call float @dx.op.unary.f32(i32 7, float %4125)  ; Saturate(value)
  %4129 = call float @dx.op.unary.f32(i32 7, float %4126)  ; Saturate(value)
  %4130 = call float @dx.op.unary.f32(i32 7, float %4127)  ; Saturate(value)
  %4131 = fmul fast float %4128, %4117
  %4132 = fmul fast float %4129, %4118
  %4133 = fmul fast float %4130, %4119
  %4134 = fadd fast float %4117, -1.000000e+00
  %4135 = fadd fast float %4118, -1.000000e+00
  %4136 = fadd fast float %4119, -1.000000e+00
  %4137 = call float @dx.op.unary.f32(i32 27, float %4131)  ; Round_ni(value)
  %4138 = call float @dx.op.unary.f32(i32 27, float %4132)  ; Round_ni(value)
  %4139 = call float @dx.op.unary.f32(i32 27, float %4133)  ; Round_ni(value)
  %4140 = call float @dx.op.binary.f32(i32 36, float %4137, float %4134)  ; FMin(a,b)
  %4141 = call float @dx.op.binary.f32(i32 36, float %4138, float %4135)  ; FMin(a,b)
  %4142 = call float @dx.op.binary.f32(i32 36, float %4139, float %4136)  ; FMin(a,b)
  %4143 = fmul fast float %4142, %4118
  %4144 = fadd fast float %4143, %4141
  %4145 = fmul fast float %4144, %4117
  %4146 = fadd fast float %4145, %4140
  %4147 = fptosi float %4146 to i32
  %4148 = add nsw i32 %4147, %4121
  %4149 = shl nsw i32 %4148, 2
  %4150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4149, i32 undef)  ; BufferLoad(srv,index,wot)
  %4151 = extractvalue %dx.types.ResRet.i32 %4150, 0
  %4152 = lshr i32 %4151, 16
  %4153 = icmp eq i32 %4152, 0
  br i1 %4153, label %4603, label %4154

; <label>:4154                                    ; preds = %4092
  br label %4155

; <label>:4155                                    ; preds = %4279, %4154
  %4156 = phi i32 [ %4181, %4279 ], [ %4152, %4154 ]
  %4157 = phi float [ %4280, %4279 ], [ 0.000000e+00, %4154 ]
  %4158 = phi float [ %4281, %4279 ], [ %4036, %4154 ]
  %4159 = phi float [ %4282, %4279 ], [ %4015, %4154 ]
  %4160 = phi float [ %4283, %4279 ], [ %4008, %4154 ]
  %4161 = phi float [ %4284, %4279 ], [ %4009, %4154 ]
  %4162 = phi float [ %4285, %4279 ], [ %4010, %4154 ]
  %4163 = phi float [ %4286, %4279 ], [ 0.000000e+00, %4154 ]
  %4164 = phi float [ %4287, %4279 ], [ 0.000000e+00, %4154 ]
  %4165 = phi float [ %4288, %4279 ], [ %4058, %4154 ]
  %4166 = phi float [ %4289, %4279 ], [ %4060, %4154 ]
  %4167 = phi float [ %4290, %4279 ], [ %4062, %4154 ]
  %4168 = phi float [ %4291, %4279 ], [ %4088, %4154 ]
  %4169 = phi float [ %4292, %4279 ], [ %4089, %4154 ]
  %4170 = phi float [ %4293, %4279 ], [ %4090, %4154 ]
  %4171 = phi float [ %4294, %4279 ], [ %4013, %4154 ]
  %4172 = phi float [ %4295, %4279 ], [ %4012, %4154 ]
  %4173 = phi float [ %4296, %4279 ], [ 0.000000e+00, %4154 ]
  %4174 = phi float [ %4297, %4279 ], [ %4011, %4154 ]
  %4175 = phi float [ %4298, %4279 ], [ %4043, %4154 ]
  %4176 = phi float [ %4299, %4279 ], [ %4044, %4154 ]
  %4177 = phi float [ %4300, %4279 ], [ %4045, %4154 ]
  %4178 = shl nuw nsw i32 %4156, 2
  %4179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4178, i32 undef)  ; BufferLoad(srv,index,wot)
  %4180 = extractvalue %dx.types.ResRet.i32 %4179, 0
  %4181 = lshr i32 %4180, 16
  %4182 = shl i32 %4180, 8
  %4183 = and i32 %4182, 16776960
  %4184 = or i32 %4183, 48
  %4185 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4184, i32 undef)  ; BufferLoad(srv,index,wot)
  %4186 = extractvalue %dx.types.ResRet.f32 %4185, 0
  %4187 = extractvalue %dx.types.ResRet.f32 %4185, 1
  %4188 = extractvalue %dx.types.ResRet.f32 %4185, 2
  %4189 = or i32 %4183, 64
  %4190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4189, i32 undef)  ; BufferLoad(srv,index,wot)
  %4191 = extractvalue %dx.types.ResRet.i32 %4190, 0
  %4192 = extractvalue %dx.types.ResRet.i32 %4190, 1
  %4193 = or i32 %4183, 80
  %4194 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4193, i32 undef)  ; BufferLoad(srv,index,wot)
  %4195 = extractvalue %dx.types.ResRet.f32 %4194, 2
  %4196 = extractvalue %dx.types.ResRet.f32 %4194, 3
  %4197 = or i32 %4183, 96
  %4198 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4197, i32 undef)  ; BufferLoad(srv,index,wot)
  %4199 = extractvalue %dx.types.ResRet.f32 %4198, 0
  %4200 = extractvalue %dx.types.ResRet.f32 %4198, 1
  %4201 = extractvalue %dx.types.ResRet.f32 %4198, 2
  %4202 = extractvalue %dx.types.ResRet.f32 %4198, 3
  %4203 = or i32 %4183, 112
  %4204 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4203, i32 undef)  ; BufferLoad(srv,index,wot)
  %4205 = extractvalue %dx.types.ResRet.f32 %4204, 2
  %4206 = or i32 %4183, 128
  %4207 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4206, i32 undef)  ; BufferLoad(srv,index,wot)
  %4208 = extractvalue %dx.types.ResRet.f32 %4207, 0
  %4209 = extractvalue %dx.types.ResRet.f32 %4207, 1
  %4210 = extractvalue %dx.types.ResRet.f32 %4207, 2
  %4211 = extractvalue %dx.types.ResRet.f32 %4207, 3
  %4212 = or i32 %4183, 144
  %4213 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4212, i32 undef)  ; BufferLoad(srv,index,wot)
  %4214 = extractvalue %dx.types.ResRet.f32 %4213, 0
  %4215 = extractvalue %dx.types.ResRet.f32 %4213, 1
  %4216 = extractvalue %dx.types.ResRet.f32 %4213, 2
  %4217 = extractvalue %dx.types.ResRet.f32 %4213, 3
  %4218 = or i32 %4183, 160
  %4219 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4218, i32 undef)  ; BufferLoad(srv,index,wot)
  %4220 = extractvalue %dx.types.ResRet.f32 %4219, 0
  %4221 = extractvalue %dx.types.ResRet.f32 %4219, 1
  %4222 = extractvalue %dx.types.ResRet.f32 %4219, 2
  %4223 = extractvalue %dx.types.ResRet.f32 %4219, 3
  %4224 = or i32 %4183, 192
  %4225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4224, i32 undef)  ; BufferLoad(srv,index,wot)
  %4226 = extractvalue %dx.types.ResRet.i32 %4225, 0
  %4227 = or i32 %4183, 208
  %4228 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4227, i32 undef)  ; BufferLoad(srv,index,wot)
  %4229 = extractvalue %dx.types.ResRet.f32 %4228, 0
  %4230 = or i32 %4183, 248
  %4231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4230, i32 undef)  ; BufferLoad(srv,index,wot)
  %4232 = extractvalue %dx.types.ResRet.f32 %4231, 0
  %4233 = extractvalue %dx.types.ResRet.f32 %4231, 1
  %4234 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4183, i32 undef)  ; BufferLoad(srv,index,wot)
  %4235 = extractvalue %dx.types.ResRet.f32 %4234, 0
  %4236 = extractvalue %dx.types.ResRet.f32 %4234, 1
  %4237 = extractvalue %dx.types.ResRet.f32 %4234, 2
  %4238 = extractvalue %dx.types.ResRet.f32 %4234, 3
  %4239 = call float @dx.op.dot4.f32(i32 56, float %4235, float %4236, float %4237, float %4238, float %54, float %55, float %56, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4240 = or i32 %4183, 16
  %4241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4240, i32 undef)  ; BufferLoad(srv,index,wot)
  %4242 = extractvalue %dx.types.ResRet.f32 %4241, 0
  %4243 = extractvalue %dx.types.ResRet.f32 %4241, 1
  %4244 = extractvalue %dx.types.ResRet.f32 %4241, 2
  %4245 = extractvalue %dx.types.ResRet.f32 %4241, 3
  %4246 = call float @dx.op.dot4.f32(i32 56, float %4242, float %4243, float %4244, float %4245, float %54, float %55, float %56, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4247 = or i32 %4183, 32
  %4248 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4247, i32 undef)  ; BufferLoad(srv,index,wot)
  %4249 = extractvalue %dx.types.ResRet.f32 %4248, 0
  %4250 = extractvalue %dx.types.ResRet.f32 %4248, 1
  %4251 = extractvalue %dx.types.ResRet.f32 %4248, 2
  %4252 = extractvalue %dx.types.ResRet.f32 %4248, 3
  %4253 = call float @dx.op.dot4.f32(i32 56, float %4249, float %4250, float %4251, float %4252, float %54, float %55, float %56, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4254 = call float @dx.op.unary.f32(i32 27, float %4239)  ; Round_ni(value)
  %4255 = call float @dx.op.unary.f32(i32 6, float %4254)  ; FAbs(value)
  %4256 = call float @dx.op.unary.f32(i32 27, float %4246)  ; Round_ni(value)
  %4257 = call float @dx.op.unary.f32(i32 6, float %4256)  ; FAbs(value)
  %4258 = call float @dx.op.unary.f32(i32 6, float %4253)  ; FAbs(value)
  %4259 = call float @dx.op.unary.f32(i32 27, float %4258)  ; Round_ni(value)
  %4260 = fadd fast float %4257, %4255
  %4261 = fadd fast float %4260, %4259
  %4262 = fcmp fast oeq float %4261, 0.000000e+00
  %4263 = call float @dx.op.dot4.f32(i32 56, float %4235, float %4236, float %4237, float %4238, float %4099, float %4100, float %4101, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4264 = call float @dx.op.dot4.f32(i32 56, float %4242, float %4243, float %4244, float %4245, float %4099, float %4100, float %4101, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4265 = call float @dx.op.dot4.f32(i32 56, float %4235, float %4236, float %4237, float %4238, float %4102, float %4103, float %4104, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4266 = call float @dx.op.dot4.f32(i32 56, float %4242, float %4243, float %4244, float %4245, float %4102, float %4103, float %4104, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4267 = fsub fast float %4263, %4239
  %4268 = fsub fast float %4265, %4239
  %4269 = fsub fast float %4264, %4246
  %4270 = fsub fast float %4266, %4246
  %4271 = call float @dx.op.dot3.f32(i32 55, float %4186, float %4187, float %4188, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %4272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4273 = extractvalue %dx.types.CBufRet.f32 %4272, 2
  %4274 = fadd fast float %4273, %4271
  %4275 = call float @dx.op.unary.f32(i32 7, float %4274)  ; Saturate(value)
  %4276 = extractvalue %dx.types.CBufRet.f32 %4272, 0
  %4277 = fcmp fast ogt float %4275, %4276
  %4278 = and i1 %4262, %4277
  br i1 %4278, label %4302, label %4279

; <label>:4279                                    ; preds = %4589, %4385, %4302, %4155
  %4280 = phi float [ %4157, %4302 ], [ %4388, %4385 ], [ %4388, %4589 ], [ %4157, %4155 ]
  %4281 = phi float [ %4158, %4302 ], [ %4158, %4385 ], [ %4565, %4589 ], [ %4158, %4155 ]
  %4282 = phi float [ %4159, %4302 ], [ %4159, %4385 ], [ %4563, %4589 ], [ %4159, %4155 ]
  %4283 = phi float [ %4160, %4302 ], [ %4160, %4385 ], [ %4541, %4589 ], [ %4160, %4155 ]
  %4284 = phi float [ %4161, %4302 ], [ %4161, %4385 ], [ %4542, %4589 ], [ %4161, %4155 ]
  %4285 = phi float [ %4162, %4302 ], [ %4162, %4385 ], [ %4543, %4589 ], [ %4162, %4155 ]
  %4286 = phi float [ %4163, %4302 ], [ %4163, %4385 ], [ %4512, %4589 ], [ %4163, %4155 ]
  %4287 = phi float [ %4164, %4302 ], [ %4164, %4385 ], [ %4510, %4589 ], [ %4164, %4155 ]
  %4288 = phi float [ %4165, %4302 ], [ %4165, %4385 ], [ %4599, %4589 ], [ %4165, %4155 ]
  %4289 = phi float [ %4166, %4302 ], [ %4166, %4385 ], [ %4600, %4589 ], [ %4166, %4155 ]
  %4290 = phi float [ %4167, %4302 ], [ %4167, %4385 ], [ %4601, %4589 ], [ %4167, %4155 ]
  %4291 = phi float [ %4168, %4302 ], [ %4168, %4385 ], [ %4491, %4589 ], [ %4168, %4155 ]
  %4292 = phi float [ %4169, %4302 ], [ %4169, %4385 ], [ %4492, %4589 ], [ %4169, %4155 ]
  %4293 = phi float [ %4170, %4302 ], [ %4170, %4385 ], [ %4493, %4589 ], [ %4170, %4155 ]
  %4294 = phi float [ %4171, %4302 ], [ %4171, %4385 ], [ %4521, %4589 ], [ %4171, %4155 ]
  %4295 = phi float [ %4172, %4302 ], [ %4172, %4385 ], [ %4518, %4589 ], [ %4172, %4155 ]
  %4296 = phi float [ %4173, %4302 ], [ %4173, %4385 ], [ %4515, %4589 ], [ %4173, %4155 ]
  %4297 = phi float [ %4174, %4302 ], [ %4174, %4385 ], [ %4508, %4589 ], [ %4174, %4155 ]
  %4298 = phi float [ %4175, %4302 ], [ %4175, %4385 ], [ %4503, %4589 ], [ %4175, %4155 ]
  %4299 = phi float [ %4176, %4302 ], [ %4176, %4385 ], [ %4504, %4589 ], [ %4176, %4155 ]
  %4300 = phi float [ %4177, %4302 ], [ %4177, %4385 ], [ %4505, %4589 ], [ %4177, %4155 ]
  %4301 = icmp eq i32 %4181, 0
  br i1 %4301, label %4602, label %4155

; <label>:4302                                    ; preds = %4155
  %4303 = extractvalue %dx.types.ResRet.f32 %4185, 3
  %4304 = extractvalue %dx.types.ResRet.f32 %4204, 3
  %4305 = extractvalue %dx.types.ResRet.f32 %4204, 1
  %4306 = extractvalue %dx.types.ResRet.f32 %4204, 0
  %4307 = extractvalue %dx.types.ResRet.f32 %4194, 1
  %4308 = extractvalue %dx.types.ResRet.f32 %4194, 0
  %4309 = extractvalue %dx.types.ResRet.i32 %4190, 3
  %4310 = extractvalue %dx.types.ResRet.i32 %4190, 2
  %4311 = bitcast float %4303 to i32
  %4312 = add i32 %4309, 0
  %4313 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4312, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4314 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4315 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4313, %dx.types.Handle %4314, float %4239, float %4246, float undef, float undef, i32 0, i32 0, i32 undef, float %4267, float %4269, float undef, float %4268, float %4270, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4316 = extractvalue %dx.types.ResRet.f32 %4315, 0
  %4317 = fmul fast float %4316, %4308
  %4318 = fadd fast float %4317, %4307
  %4319 = call float @dx.op.unary.f32(i32 7, float %4318)  ; Saturate(value)
  %4320 = fmul fast float %4239, %4199
  %4321 = call float @dx.op.tertiary.f32(i32 46, float %4200, float %4246, float %4320)  ; FMad(a,b,c)
  %4322 = fadd fast float %4321, %4306
  %4323 = fmul fast float %4239, %4201
  %4324 = call float @dx.op.tertiary.f32(i32 46, float %4202, float %4246, float %4323)  ; FMad(a,b,c)
  %4325 = fadd fast float %4324, %4305
  %4326 = fmul fast float %4267, %4199
  %4327 = call float @dx.op.tertiary.f32(i32 46, float %4200, float %4269, float %4326)  ; FMad(a,b,c)
  %4328 = fmul fast float %4267, %4201
  %4329 = call float @dx.op.tertiary.f32(i32 46, float %4202, float %4269, float %4328)  ; FMad(a,b,c)
  %4330 = fmul fast float %4268, %4199
  %4331 = call float @dx.op.tertiary.f32(i32 46, float %4200, float %4270, float %4330)  ; FMad(a,b,c)
  %4332 = fmul fast float %4268, %4201
  %4333 = call float @dx.op.tertiary.f32(i32 46, float %4202, float %4270, float %4332)  ; FMad(a,b,c)
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
  %4346 = fmul fast float %4239, 2.000000e+00
  %4347 = fadd fast float %4346, -1.000000e+00
  %4348 = call float @dx.op.unary.f32(i32 6, float %4347)  ; FAbs(value)
  %4349 = fmul fast float %4348, %4232
  %4350 = fsub fast float %4349, %4232
  %4351 = call float @dx.op.unary.f32(i32 7, float %4350)  ; Saturate(value)
  %4352 = fmul fast float %4246, 2.000000e+00
  %4353 = fadd fast float %4352, -1.000000e+00
  %4354 = call float @dx.op.unary.f32(i32 6, float %4353)  ; FAbs(value)
  %4355 = fmul fast float %4354, %4233
  %4356 = fsub fast float %4355, %4233
  %4357 = call float @dx.op.unary.f32(i32 7, float %4356)  ; Saturate(value)
  %4358 = fmul fast float %4258, %4195
  %4359 = fsub fast float %4358, %4195
  %4360 = call float @dx.op.unary.f32(i32 7, float %4359)  ; Saturate(value)
  %4361 = fmul fast float %4319, %4345
  %4362 = fmul fast float %4361, %4316
  %4363 = fmul fast float %4362, %4351
  %4364 = fmul fast float %4363, %4342
  %4365 = fmul fast float %4364, %4357
  %4366 = fmul fast float %4365, %4360
  %4367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4368 = extractvalue %dx.types.CBufRet.f32 %4367, 1
  %4369 = extractvalue %dx.types.CBufRet.f32 %4367, 0
  %4370 = fsub fast float %4275, %4369
  %4371 = fmul fast float %4370, %4368
  %4372 = call float @dx.op.unary.f32(i32 7, float %4371)  ; Saturate(value)
  %4373 = fmul fast float %4366, %4196
  %4374 = fadd fast float %4366, %4196
  %4375 = fmul fast float %4374, %4205
  %4376 = fsub fast float %4375, %4205
  %4377 = call float @dx.op.unary.f32(i32 7, float %4376)  ; Saturate(value)
  %4378 = and i32 %4311, 128
  %4379 = icmp ne i32 %4378, 0
  %4380 = select i1 %4379, float %4377, float %4373
  %4381 = fmul fast float %4380, %4372
  %4382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4383 = extractvalue %dx.types.CBufRet.f32 %4382, 0
  %4384 = fcmp fast ugt float %4381, %4383
  br i1 %4384, label %4385, label %4279

; <label>:4385                                    ; preds = %4302
  %4386 = select i1 %4344, float %4381, float 0.000000e+00
  %4387 = fadd fast float %4386, %4157
  %4388 = call float @dx.op.unary.f32(i32 7, float %4387)  ; Saturate(value)
  br i1 %4344, label %4279, label %4389

; <label>:4389                                    ; preds = %4385
  %4390 = and i32 %4311, 4
  %4391 = and i32 %4311, 8
  %4392 = add i32 %4191, 0
  %4393 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4392, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4394 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4395 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4393, %dx.types.Handle %4394, float %4322, float %4325, float undef, float undef, i32 0, i32 0, i32 undef, float %4327, float %4329, float undef, float %4331, float %4333, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4396 = extractvalue %dx.types.ResRet.f32 %4395, 0
  %4397 = extractvalue %dx.types.ResRet.f32 %4395, 1
  %4398 = extractvalue %dx.types.ResRet.f32 %4395, 2
  %4399 = extractvalue %dx.types.ResRet.f32 %4395, 3
  %4400 = bitcast float %4217 to i32
  %4401 = and i32 %4400, 255
  %4402 = uitofp i32 %4401 to float
  %4403 = lshr i32 %4400, 8
  %4404 = and i32 %4403, 255
  %4405 = uitofp i32 %4404 to float
  %4406 = fmul fast float %4399, %4402
  %4407 = fadd fast float %4406, %4405
  %4408 = fmul fast float %4407, 0x3F70101000000000
  %4409 = add i32 %4192, 0
  %4410 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4409, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4411 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4410, %dx.types.Handle %4394, float %4322, float %4325, float undef, float undef, i32 0, i32 0, i32 undef, float %4327, float %4329, float undef, float %4331, float %4333, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4412 = extractvalue %dx.types.ResRet.f32 %4411, 0
  %4413 = extractvalue %dx.types.ResRet.f32 %4411, 1
  %4414 = extractvalue %dx.types.ResRet.f32 %4411, 2
  %4415 = extractvalue %dx.types.ResRet.f32 %4411, 3
  %4416 = bitcast float %4211 to i32
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
  %4435 = fmul fast float %4396, %4220
  %4436 = fmul fast float %4397, %4221
  %4437 = fmul fast float %4398, %4222
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
  %4455 = fmul fast float %4454, %4186
  %4456 = fmul fast float %4454, %4187
  %4457 = fmul fast float %4454, %4188
  %4458 = fmul fast float %4452, %4208
  %4459 = fmul fast float %4452, %4209
  %4460 = fmul fast float %4452, %4210
  %4461 = fadd fast float %4458, %4455
  %4462 = fadd fast float %4459, %4456
  %4463 = fadd fast float %4460, %4457
  %4464 = fmul fast float %4453, %4214
  %4465 = fmul fast float %4453, %4215
  %4466 = fmul fast float %4453, %4216
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
  %4481 = fsub fast float %4472, %4168
  %4482 = fsub fast float %4473, %4169
  %4483 = fsub fast float %4474, %4170
  br label %4484

; <label>:4484                                    ; preds = %4480, %4389
  %4485 = phi float [ %4481, %4480 ], [ %4472, %4389 ]
  %4486 = phi float [ %4482, %4480 ], [ %4473, %4389 ]
  %4487 = phi float [ %4483, %4480 ], [ %4474, %4389 ]
  %4488 = fmul float %4487, %4477
  %4489 = fmul float %4486, %4477
  %4490 = fmul float %4485, %4477
  %4491 = fadd fast float %4490, %4168
  %4492 = fadd fast float %4489, %4169
  %4493 = fadd fast float %4488, %4170
  %4494 = icmp ne i32 %4390, 0
  %4495 = select i1 %4494, float 1.000000e+00, float 0.000000e+00
  %4496 = fmul fast float %4381, %4495
  %4497 = fsub fast float %4435, %4175
  %4498 = fsub fast float %4436, %4176
  %4499 = fsub fast float %4437, %4177
  %4500 = fmul fast float %4497, %4496
  %4501 = fmul fast float %4498, %4496
  %4502 = fmul fast float %4499, %4496
  %4503 = fadd fast float %4500, %4175
  %4504 = fadd fast float %4501, %4176
  %4505 = fadd fast float %4502, %4177
  %4506 = fsub fast float %4408, %4174
  %4507 = fmul fast float %4506, %4496
  %4508 = fadd fast float %4507, %4174
  %4509 = fmul fast float %4496, %4164
  %4510 = fsub fast float %4164, %4509
  %4511 = fmul fast float %4496, %4163
  %4512 = fsub fast float %4163, %4511
  %4513 = bitcast float %4229 to i32
  %4514 = fadd fast float %4381, %4173
  %4515 = call float @dx.op.unary.f32(i32 7, float %4514)  ; Saturate(value)
  %4516 = fsub fast float %4428, %4172
  %4517 = fmul fast float %4516, %4477
  %4518 = fadd fast float %4517, %4172
  %4519 = fsub fast float %4414, %4171
  %4520 = fmul fast float %4519, %4477
  %4521 = fadd fast float %4520, %4171
  br i1 %4479, label %4530, label %4522

; <label>:4522                                    ; preds = %4484
  %4523 = and i32 %4311, 32768
  %4524 = icmp eq i32 %4523, 0
  br i1 %4524, label %4540, label %4525

; <label>:4525                                    ; preds = %4522
  %4526 = fmul fast float %4477, 1.270000e+02
  %4527 = fadd fast float %4526, %4160
  %4528 = fadd fast float %4526, %4161
  %4529 = fadd fast float %4526, %4162
  br label %4540

; <label>:4530                                    ; preds = %4484
  %4531 = fsub fast float 1.270000e+02, %4160
  %4532 = fsub fast float 1.270000e+02, %4161
  %4533 = fsub fast float 1.270000e+02, %4162
  %4534 = fmul fast float %4477, %4531
  %4535 = fmul fast float %4477, %4532
  %4536 = fmul fast float %4477, %4533
  %4537 = fadd fast float %4534, %4160
  %4538 = fadd fast float %4535, %4161
  %4539 = fadd fast float %4536, %4162
  br label %4540

; <label>:4540                                    ; preds = %4530, %4525, %4522
  %4541 = phi float [ %4527, %4525 ], [ %4160, %4522 ], [ %4537, %4530 ]
  %4542 = phi float [ %4528, %4525 ], [ %4161, %4522 ], [ %4538, %4530 ]
  %4543 = phi float [ %4529, %4525 ], [ %4162, %4522 ], [ %4539, %4530 ]
  %4544 = call float @dx.op.dot3.f32(i32 55, float %4435, float %4436, float %4437, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4546 = extractvalue %dx.types.CBufRet.f32 %4545, 0
  %4547 = extractvalue %dx.types.CBufRet.f32 %4545, 1
  %4548 = fmul fast float %4547, %4544
  %4549 = fadd fast float %4548, %4546
  %4550 = call float @dx.op.unary.f32(i32 7, float %4549)  ; Saturate(value)
  %4551 = bitcast float %4223 to i32
  %4552 = and i32 %4551, 65535
  %4553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4552)  ; LegacyF16ToF32(value)
  %4554 = lshr i32 %4551, 16
  %4555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4554)  ; LegacyF16ToF32(value)
  %4556 = fcmp fast oge float %4553, 0.000000e+00
  %4557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4558 = extractvalue %dx.types.CBufRet.f32 %4557, 0
  %4559 = select i1 %4556, float %4553, float %4558
  %4560 = fadd fast float %4559, %4555
  %4561 = fsub fast float %4550, %4159
  %4562 = fmul fast float %4561, %4381
  %4563 = fadd fast float %4562, %4159
  %4564 = fmul fast float %4560, %4381
  %4565 = call float @dx.op.binary.f32(i32 35, float %4158, float %4564)  ; FMax(a,b)
  %4566 = and i32 %4311, 16
  %4567 = icmp eq i32 %4566, 0
  br i1 %4567, label %4589, label %4568

; <label>:4568                                    ; preds = %4540
  %4569 = add i32 %4226, 0
  %4570 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4569, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4571 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4570, %dx.types.Handle %4394, float %4322, float %4325, float undef, float undef, i32 0, i32 0, i32 undef, float %4327, float %4329, float undef, float %4331, float %4333, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4572 = extractvalue %dx.types.ResRet.f32 %4571, 0
  %4573 = extractvalue %dx.types.ResRet.f32 %4571, 1
  %4574 = extractvalue %dx.types.ResRet.f32 %4571, 2
  %4575 = and i32 %4513, 65535
  %4576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4575)  ; LegacyF16ToF32(value)
  %4577 = fmul fast float %4572, %4220
  %4578 = fmul fast float %4573, %4221
  %4579 = fmul fast float %4574, %4222
  %4580 = and i32 %4311, 16384
  %4581 = icmp ne i32 %4580, 0
  %4582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4583 = extractvalue %dx.types.CBufRet.f32 %4582, 0
  %4584 = select i1 %4581, float %4583, float 1.000000e+00
  %4585 = fmul fast float %4584, %4576
  %4586 = fmul fast float %4577, %4585
  %4587 = fmul fast float %4578, %4585
  %4588 = fmul fast float %4579, %4585
  br label %4589

; <label>:4589                                    ; preds = %4568, %4540
  %4590 = phi float [ %4586, %4568 ], [ 0.000000e+00, %4540 ]
  %4591 = phi float [ %4587, %4568 ], [ 0.000000e+00, %4540 ]
  %4592 = phi float [ %4588, %4568 ], [ 0.000000e+00, %4540 ]
  %4593 = fsub fast float %4590, %4165
  %4594 = fsub fast float %4591, %4166
  %4595 = fsub fast float %4592, %4167
  %4596 = fmul fast float %4593, %4381
  %4597 = fmul fast float %4594, %4381
  %4598 = fmul fast float %4595, %4381
  %4599 = fadd fast float %4596, %4165
  %4600 = fadd fast float %4597, %4166
  %4601 = fadd fast float %4598, %4167
  br label %4279

; <label>:4602                                    ; preds = %4279
  br label %4603

; <label>:4603                                    ; preds = %4602, %4092
  %4604 = phi float [ 0.000000e+00, %4092 ], [ %4280, %4602 ]
  %4605 = phi float [ %4036, %4092 ], [ %4281, %4602 ]
  %4606 = phi float [ %4015, %4092 ], [ %4282, %4602 ]
  %4607 = phi float [ %4008, %4092 ], [ %4283, %4602 ]
  %4608 = phi float [ %4009, %4092 ], [ %4284, %4602 ]
  %4609 = phi float [ %4010, %4092 ], [ %4285, %4602 ]
  %4610 = phi float [ 0.000000e+00, %4092 ], [ %4286, %4602 ]
  %4611 = phi float [ 0.000000e+00, %4092 ], [ %4287, %4602 ]
  %4612 = phi float [ %4058, %4092 ], [ %4288, %4602 ]
  %4613 = phi float [ %4060, %4092 ], [ %4289, %4602 ]
  %4614 = phi float [ %4062, %4092 ], [ %4290, %4602 ]
  %4615 = phi float [ %4088, %4092 ], [ %4291, %4602 ]
  %4616 = phi float [ %4089, %4092 ], [ %4292, %4602 ]
  %4617 = phi float [ %4090, %4092 ], [ %4293, %4602 ]
  %4618 = phi float [ %4013, %4092 ], [ %4294, %4602 ]
  %4619 = phi float [ %4012, %4092 ], [ %4295, %4602 ]
  %4620 = phi float [ 0.000000e+00, %4092 ], [ %4296, %4602 ]
  %4621 = phi float [ %4011, %4092 ], [ %4297, %4602 ]
  %4622 = phi float [ %4043, %4092 ], [ %4298, %4602 ]
  %4623 = phi float [ %4044, %4092 ], [ %4299, %4602 ]
  %4624 = phi float [ %4045, %4092 ], [ %4300, %4602 ]
  %4625 = call float @dx.op.dot3.f32(i32 55, float %4615, float %4616, float %4617, float %4615, float %4616, float %4617)  ; Dot3(ax,ay,az,bx,by,bz)
  %4626 = call float @dx.op.unary.f32(i32 25, float %4625)  ; Rsqrt(value)
  %4627 = fmul fast float %4626, %4615
  %4628 = fmul fast float %4626, %4616
  %4629 = fmul fast float %4626, %4617
  %4630 = fadd fast float %4620, %1347
  %4631 = call float @dx.op.unary.f32(i32 7, float %4630)  ; Saturate(value)
  %4632 = call float @dx.op.dot3.f32(i32 55, float %4627, float %4628, float %4629, float %4627, float %4628, float %4629)  ; Dot3(ax,ay,az,bx,by,bz)
  %4633 = call float @dx.op.unary.f32(i32 25, float %4632)  ; Rsqrt(value)
  %4634 = fmul fast float %4633, %4627
  %4635 = fmul fast float %4633, %4628
  %4636 = fmul fast float %4633, %4629
  br label %4637

; <label>:4637                                    ; preds = %4603, %3999
  %4638 = phi float [ %4634, %4603 ], [ %4088, %3999 ]
  %4639 = phi float [ %4635, %4603 ], [ %4089, %3999 ]
  %4640 = phi float [ %4636, %4603 ], [ %4090, %3999 ]
  %4641 = phi float [ %4612, %4603 ], [ %4058, %3999 ]
  %4642 = phi float [ %4613, %4603 ], [ %4060, %3999 ]
  %4643 = phi float [ %4614, %4603 ], [ %4062, %3999 ]
  %4644 = phi float [ %4622, %4603 ], [ %4043, %3999 ]
  %4645 = phi float [ %4623, %4603 ], [ %4044, %3999 ]
  %4646 = phi float [ %4624, %4603 ], [ %4045, %3999 ]
  %4647 = phi float [ %4607, %4603 ], [ %4008, %3999 ]
  %4648 = phi float [ %4608, %4603 ], [ %4009, %3999 ]
  %4649 = phi float [ %4609, %4603 ], [ %4010, %3999 ]
  %4650 = phi float [ %4621, %4603 ], [ %4011, %3999 ]
  %4651 = phi float [ %4631, %4603 ], [ %1347, %3999 ]
  %4652 = phi float [ %4619, %4603 ], [ %4012, %3999 ]
  %4653 = phi float [ %4618, %4603 ], [ %4013, %3999 ]
  %4654 = phi float [ %4611, %4603 ], [ 0.000000e+00, %3999 ]
  %4655 = phi float [ %4610, %4603 ], [ 0.000000e+00, %3999 ]
  %4656 = phi float [ %4604, %4603 ], [ 0.000000e+00, %3999 ]
  %4657 = phi float [ %4605, %4603 ], [ %4036, %3999 ]
  %4658 = phi float [ %4606, %4603 ], [ %4015, %3999 ]
  %4659 = fadd fast float %4650, 0xBFB99999A0000000
  %4660 = call float @dx.op.unary.f32(i32 7, float %4659)  ; Saturate(value)
  %4661 = fmul fast float %4660, 0x3FF1C71C80000000
  %4662 = call float @dx.op.binary.f32(i32 36, float %4650, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4663 = fsub fast float 1.000000e+00, %4661
  %4664 = call float @dx.op.unary.f32(i32 7, float %4663)  ; Saturate(value)
  %4665 = fmul fast float %4664, %4644
  %4666 = fmul fast float %4664, %4645
  %4667 = fmul fast float %4664, %4646
  %4668 = call float @dx.op.unary.f32(i32 7, float %4665)  ; Saturate(value)
  %4669 = call float @dx.op.unary.f32(i32 7, float %4666)  ; Saturate(value)
  %4670 = call float @dx.op.unary.f32(i32 7, float %4667)  ; Saturate(value)
  %4671 = fmul fast float %4661, %4644
  %4672 = fmul fast float %4661, %4645
  %4673 = fmul fast float %4661, %4646
  %4674 = fadd fast float %4671, %4662
  %4675 = fadd fast float %4672, %4662
  %4676 = fadd fast float %4673, %4662
  %4677 = call float @dx.op.unary.f32(i32 7, float %4674)  ; Saturate(value)
  %4678 = call float @dx.op.unary.f32(i32 7, float %4675)  ; Saturate(value)
  %4679 = call float @dx.op.unary.f32(i32 7, float %4676)  ; Saturate(value)
  %4680 = call float @dx.op.unary.f32(i32 7, float %4652)  ; Saturate(value)
  %4681 = call float @dx.op.binary.f32(i32 36, float %4647, float 1.270000e+02)  ; FMin(a,b)
  %4682 = call float @dx.op.binary.f32(i32 36, float %4648, float 1.270000e+02)  ; FMin(a,b)
  %4683 = call float @dx.op.binary.f32(i32 36, float %4649, float 1.270000e+02)  ; FMin(a,b)
  %4684 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4685 = extractvalue %dx.types.CBufRet.i32 %4684, 3
  %4686 = and i32 %4685, 8
  %4687 = icmp ne i32 %4686, 0
  %4688 = call float @dx.op.binary.f32(i32 35, float %4668, float %4644)  ; FMax(a,b)
  %4689 = call float @dx.op.binary.f32(i32 35, float %4669, float %4644)  ; FMax(a,b)
  %4690 = call float @dx.op.binary.f32(i32 35, float %4670, float %4644)  ; FMax(a,b)
  %4691 = call float @dx.op.dot3.f32(i32 55, float %4668, float %4669, float %4670, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4692 = select i1 %269, float %4644, float %4668
  %4693 = select i1 %269, float %4691, float %4669
  %4694 = select i1 %269, float 1.000000e+00, float %4670
  %4695 = select i1 %4687, float %4688, float %4692
  %4696 = select i1 %4687, float %4689, float %4693
  %4697 = select i1 %4687, float %4690, float %4694
  %4698 = and i32 %245, 3
  %4699 = select i1 %239, i32 %4698, i32 0
  %4700 = icmp eq i32 %4699, 1
  br i1 %4700, label %4701, label %4777

; <label>:4701                                    ; preds = %4637
  %4702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4703 = extractvalue %dx.types.CBufRet.f32 %4702, 0
  %4704 = extractvalue %dx.types.CBufRet.f32 %4702, 1
  %4705 = fadd fast float %4703, %195
  %4706 = fadd fast float %4704, %196
  %4707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4708 = extractvalue %dx.types.CBufRet.f32 %4707, 0
  %4709 = extractvalue %dx.types.CBufRet.f32 %4707, 1
  %4710 = fsub fast float %4705, %4708
  %4711 = fsub fast float %4706, %4709
  %4712 = fmul fast float %4710, %4710
  %4713 = fmul fast float %4711, %4711
  %4714 = fadd fast float %4712, %4713
  %4715 = call float @dx.op.unary.f32(i32 24, float %4714)  ; Sqrt(value)
  %4716 = extractvalue %dx.types.CBufRet.f32 %4707, 2
  %4717 = fcmp fast olt float %4715, %4716
  br i1 %4717, label %4718, label %4771

; <label>:4718                                    ; preds = %4701
  %4719 = extractvalue %dx.types.CBufRet.f32 %4702, 2
  %4720 = fadd fast float %4719, %197
  %4721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4722 = extractvalue %dx.types.CBufRet.f32 %4721, 0
  %4723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4724 = extractvalue %dx.types.CBufRet.f32 %4723, 0
  %4725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4726 = extractvalue %dx.types.CBufRet.f32 %4725, 0
  %4727 = extractvalue %dx.types.CBufRet.f32 %4721, 1
  %4728 = extractvalue %dx.types.CBufRet.f32 %4723, 1
  %4729 = extractvalue %dx.types.CBufRet.f32 %4725, 1
  %4730 = extractvalue %dx.types.CBufRet.f32 %4721, 3
  %4731 = extractvalue %dx.types.CBufRet.f32 %4723, 3
  %4732 = extractvalue %dx.types.CBufRet.f32 %4725, 3
  %4733 = fadd fast float %4730, %4705
  %4734 = fadd fast float %4731, %4706
  %4735 = fadd fast float %4720, %4732
  %4736 = fmul fast float %4733, %4722
  %4737 = call float @dx.op.tertiary.f32(i32 46, float %4734, float %4724, float %4736)  ; FMad(a,b,c)
  %4738 = call float @dx.op.tertiary.f32(i32 46, float %4735, float %4726, float %4737)  ; FMad(a,b,c)
  %4739 = fmul fast float %4733, %4727
  %4740 = call float @dx.op.tertiary.f32(i32 46, float %4734, float %4728, float %4739)  ; FMad(a,b,c)
  %4741 = call float @dx.op.tertiary.f32(i32 46, float %4735, float %4729, float %4740)  ; FMad(a,b,c)
  %4742 = fsub fast float %4738, %4730
  %4743 = fsub fast float %4741, %4731
  %4744 = fsub fast float %4742, %4708
  %4745 = fadd fast float %4744, %4716
  %4746 = fsub fast float %4743, %4709
  %4747 = fadd fast float %4746, %4716
  %4748 = extractvalue %dx.types.CBufRet.f32 %4707, 3
  %4749 = fmul fast float %4745, %4748
  %4750 = fmul fast float %4747, %4748
  %4751 = call float @dx.op.unary.f32(i32 7, float %4749)  ; Saturate(value)
  %4752 = call float @dx.op.unary.f32(i32 7, float %4750)  ; Saturate(value)
  %4753 = fsub fast float 1.000000e+00, %4751
  %4754 = fsub fast float 1.000000e+00, %4752
  %4755 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %44, float %4753, float %4754, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4756 = extractvalue %dx.types.ResRet.f32 %4755, 0
  %4757 = fcmp fast ugt float %4756, 0.000000e+00
  br i1 %4757, label %4758, label %4771

; <label>:4758                                    ; preds = %4718
  %4759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4760 = extractvalue %dx.types.CBufRet.f32 %4759, 2
  %4761 = fmul fast float %4760, %4756
  %4762 = extractvalue %dx.types.CBufRet.f32 %4759, 3
  %4763 = fadd fast float %4762, %4761
  %4764 = extractvalue %dx.types.CBufRet.f32 %4725, 2
  %4765 = fadd fast float %4763, %4732
  %4766 = fmul fast float %4738, %4726
  %4767 = call float @dx.op.tertiary.f32(i32 46, float %4741, float %4729, float %4766)  ; FMad(a,b,c)
  %4768 = call float @dx.op.tertiary.f32(i32 46, float %4765, float %4764, float %4767)  ; FMad(a,b,c)
  %4769 = fsub fast float %4768, %4732
  %4770 = fsub fast float %4769, %4719
  br label %4771

; <label>:4771                                    ; preds = %4758, %4718, %4701
  %4772 = phi i1 [ true, %4758 ], [ false, %4718 ], [ false, %4701 ]
  %4773 = phi float [ %4770, %4758 ], [ -1.310720e+05, %4718 ], [ -1.310720e+05, %4701 ]
  %4774 = fsub fast float %4773, %197
  %4775 = call float @dx.op.unary.f32(i32 7, float %4774)  ; Saturate(value)
  %4776 = select i1 %4772, float %4775, float 1.000000e+00
  br label %4777

; <label>:4777                                    ; preds = %4771, %4637
  %4778 = phi float [ %4776, %4771 ], [ 0.000000e+00, %4637 ]
  %4779 = icmp eq i32 %4699, 3
  %4780 = select i1 %4779, float 1.000000e+00, float %4778
  %4781 = call float @dx.op.binary.f32(i32 35, float %4656, float %4780)  ; FMax(a,b)
  %4782 = fcmp fast olt float %4780, 1.000000e+00
  %4783 = fcmp uge float %68, 0.000000e+00
  %4784 = and i1 %4783, %4782
  br i1 %4784, label %4785, label %4795

; <label>:4785                                    ; preds = %4777
  %4786 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %42, float %68, float %69, float %70, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4787 = extractvalue %dx.types.ResRet.f32 %4786, 0
  %4788 = extractvalue %dx.types.ResRet.f32 %4786, 1
  %4789 = extractvalue %dx.types.ResRet.f32 %4786, 2
  %4790 = fadd fast float %4787, %4781
  %4791 = fcmp ule float %67, 0.000000e+00
  %4792 = call float @dx.op.dot3.f32(i32 55, float %64, float %65, float %66, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4793 = select i1 %4791, float %4792, float 1.000000e+00
  %4794 = fmul fast float %4793, %4789
  br label %4795

; <label>:4795                                    ; preds = %4785, %4777
  %4796 = phi float [ %4790, %4785 ], [ %4781, %4777 ]
  %4797 = phi float [ %4788, %4785 ], [ 0.000000e+00, %4777 ]
  %4798 = phi float [ %4794, %4785 ], [ 0.000000e+00, %4777 ]
  %4799 = call float @dx.op.unary.f32(i32 7, float %4796)  ; Saturate(value)
  %4800 = call float @dx.op.unary.f32(i32 7, float %4797)  ; Saturate(value)
  %4801 = call float @dx.op.unary.f32(i32 7, float %4798)  ; Saturate(value)
  %4802 = fcmp fast une float %4800, 0.000000e+00
  %4803 = fcmp fast une float %4801, 0.000000e+00
  %4804 = or i1 %4802, %4803
  br i1 %4804, label %4805, label %5364

; <label>:4805                                    ; preds = %4795
  br i1 %4802, label %4806, label %5079

; <label>:4806                                    ; preds = %4805
  %4807 = call float @dx.op.unary.f32(i32 23, float %4653)  ; Log(value)
  %4808 = fmul fast float %4807, 4.000000e+00
  %4809 = call float @dx.op.unary.f32(i32 21, float %4808)  ; Exp(value)
  %4810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4811 = extractvalue %dx.types.CBufRet.f32 %4810, 0
  %4812 = fmul fast float %4811, %54
  %4813 = fmul fast float %4811, %55
  %4814 = fmul fast float %4811, %56
  %4815 = call float @dx.op.unary.f32(i32 6, float %64)  ; FAbs(value)
  %4816 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %4817 = call float @dx.op.unary.f32(i32 6, float %66)  ; FAbs(value)
  %4818 = call float @dx.op.unary.f32(i32 23, float %4815)  ; Log(value)
  %4819 = call float @dx.op.unary.f32(i32 23, float %4816)  ; Log(value)
  %4820 = call float @dx.op.unary.f32(i32 23, float %4817)  ; Log(value)
  %4821 = fmul fast float %4818, 4.000000e+00
  %4822 = fmul fast float %4819, 4.000000e+00
  %4823 = fmul fast float %4820, 4.000000e+00
  %4824 = call float @dx.op.unary.f32(i32 21, float %4821)  ; Exp(value)
  %4825 = call float @dx.op.unary.f32(i32 21, float %4822)  ; Exp(value)
  %4826 = call float @dx.op.unary.f32(i32 21, float %4823)  ; Exp(value)
  %4827 = fadd fast float %4825, %4824
  %4828 = fadd fast float %4827, %4826
  %4829 = fdiv fast float 1.000000e+00, %4828
  %4830 = fmul fast float %4829, %4824
  %4831 = fcmp fast ogt float %64, 0.000000e+00
  %4832 = fcmp fast ogt float %65, 0.000000e+00
  %4833 = fcmp fast ogt float %66, 0.000000e+00
  %4834 = fcmp fast olt float %64, 0.000000e+00
  %4835 = fcmp fast olt float %65, 0.000000e+00
  %4836 = fcmp fast olt float %66, 0.000000e+00
  %4837 = zext i1 %4831 to i32
  %4838 = zext i1 %4832 to i32
  %4839 = zext i1 %4833 to i32
  %4840 = zext i1 %4834 to i32
  %4841 = zext i1 %4835 to i32
  %4842 = zext i1 %4836 to i32
  %4843 = sub nsw i32 %4837, %4840
  %4844 = sub nsw i32 %4838, %4841
  %4845 = sub nsw i32 %4839, %4842
  %4846 = call float @dx.op.unary.f32(i32 83, float %4812)  ; DerivCoarseX(value)
  %4847 = call float @dx.op.unary.f32(i32 83, float %4813)  ; DerivCoarseX(value)
  %4848 = call float @dx.op.unary.f32(i32 83, float %4814)  ; DerivCoarseX(value)
  %4849 = call float @dx.op.unary.f32(i32 84, float %4812)  ; DerivCoarseY(value)
  %4850 = call float @dx.op.unary.f32(i32 84, float %4813)  ; DerivCoarseY(value)
  %4851 = call float @dx.op.unary.f32(i32 84, float %4814)  ; DerivCoarseY(value)
  %4852 = fcmp fast ole float %280, %4830
  %4853 = fmul fast float %4829, %4827
  %4854 = fcmp fast ole float %280, %4853
  %4855 = select i1 %4854, float %4814, float %4812
  %4856 = select i1 %4854, float %4812, float %4813
  %4857 = select i1 %4852, float %4813, float %4855
  %4858 = select i1 %4852, float %4814, float %4856
  %4859 = select i1 %4854, float %4848, float %4846
  %4860 = select i1 %4854, float %4846, float %4847
  %4861 = select i1 %4852, float %4847, float %4859
  %4862 = select i1 %4852, float %4848, float %4860
  %4863 = select i1 %4854, float %4851, float %4849
  %4864 = select i1 %4854, float %4849, float %4850
  %4865 = select i1 %4852, float %4850, float %4863
  %4866 = select i1 %4852, float %4851, float %4864
  %4867 = call float @dx.op.unary.f32(i32 27, float %4857)  ; Round_ni(value)
  %4868 = call float @dx.op.unary.f32(i32 27, float %4858)  ; Round_ni(value)
  %4869 = fptosi float %4867 to i32
  %4870 = fptosi float %4868 to i32
  %4871 = xor i32 %4870, %4869
  %4872 = sitofp i32 %4871 to float
  %4873 = fptosi float %4872 to i32
  %4874 = sitofp i32 %4873 to float
  %4875 = fmul fast float %4874, 0x3FE3C6EF40000000
  %4876 = frem fast float %4867, 2.560000e+02
  %4877 = frem fast float %4868, 2.560000e+02
  %4878 = fptoui float %4876 to i32
  %4879 = fptoui float %4877 to i32
  %4880 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %4878, i32 %4879, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4881 = extractvalue %dx.types.ResRet.f32 %4880, 0
  %4882 = extractvalue %dx.types.ResRet.f32 %4880, 1
  %4883 = extractvalue %dx.types.ResRet.f32 %4880, 2
  %4884 = fadd fast float %4881, %4875
  %4885 = fadd fast float %4882, %4875
  %4886 = fadd fast float %4883, %4875
  %4887 = call float @dx.op.unary.f32(i32 22, float %4884)  ; Frc(value)
  %4888 = call float @dx.op.unary.f32(i32 22, float %4885)  ; Frc(value)
  %4889 = call float @dx.op.unary.f32(i32 22, float %4886)  ; Frc(value)
  %4890 = fmul fast float %4889, 0x401921FB60000000
  %4891 = call float @dx.op.unary.f32(i32 13, float %4890)  ; Sin(value)
  %4892 = call float @dx.op.unary.f32(i32 12, float %4890)  ; Cos(value)
  %4893 = fsub fast float -0.000000e+00, %4892
  %4894 = fmul fast float %4892, %4857
  %4895 = call float @dx.op.tertiary.f32(i32 46, float %4891, float %4858, float %4894)  ; FMad(a,b,c)
  %4896 = fmul fast float %4891, %4857
  %4897 = call float @dx.op.tertiary.f32(i32 46, float %4893, float %4858, float %4896)  ; FMad(a,b,c)
  %4898 = fadd fast float %4895, %4887
  %4899 = fadd fast float %4897, %4888
  %4900 = extractvalue %dx.types.CBufRet.f32 %4810, 3
  %4901 = bitcast float %4900 to i32
  %4902 = icmp eq i32 %4901, 0
  br i1 %4902, label %4941, label %4903

; <label>:4903                                    ; preds = %4806
  %4904 = add i32 %4901, 0
  %4905 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4904, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4906 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4905, %dx.types.Handle %105, float %4898, float %4899, float undef, float undef, i32 0, i32 0, i32 undef, float %4861, float %4862, float undef, float %4865, float %4866, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4907 = extractvalue %dx.types.ResRet.f32 %4906, 0
  %4908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4909 = extractvalue %dx.types.CBufRet.f32 %4908, 1
  %4910 = extractvalue %dx.types.CBufRet.f32 %4908, 2
  %4911 = fsub fast float 1.000000e+00, %4800
  %4912 = call float @dx.op.binary.f32(i32 35, float %4911, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4913 = bitcast float %4800 to i32
  %4914 = sitofp i32 %4913 to float
  %4915 = fadd fast float %4914, 0xC1CFBF8940000000
  %4916 = fmul fast float %4910, %4915
  %4917 = fadd fast float %4916, 0x41CFBF8940000000
  %4918 = fptosi float %4917 to i32
  %4919 = bitcast i32 %4918 to float
  %4920 = bitcast float %4912 to i32
  %4921 = sitofp i32 %4920 to float
  %4922 = fadd fast float %4921, 0xC1CFBF8940000000
  %4923 = fmul fast float %4922, %4910
  %4924 = fadd fast float %4923, 0x41CFBF8940000000
  %4925 = fptosi float %4924 to i32
  %4926 = bitcast i32 %4925 to float
  %4927 = fmul fast float %4919, %4909
  %4928 = fmul fast float %4926, %4909
  %4929 = fsub fast float %4912, %4927
  %4930 = fadd fast float %4928, %4912
  %4931 = call float @dx.op.unary.f32(i32 7, float %4929)  ; Saturate(value)
  %4932 = call float @dx.op.unary.f32(i32 7, float %4930)  ; Saturate(value)
  %4933 = fsub fast float %4907, %4931
  %4934 = fsub fast float %4932, %4931
  %4935 = bitcast float %4934 to i32
  %4936 = sub nsw i32 2129859010, %4935
  %4937 = bitcast i32 %4936 to float
  %4938 = fmul fast float %4937, %4933
  %4939 = call float @dx.op.unary.f32(i32 7, float %4938)  ; Saturate(value)
  %4940 = fcmp fast olt float %4939, 0x3F70101020000000
  br i1 %4940, label %5079, label %4941

; <label>:4941                                    ; preds = %4903, %4806
  %4942 = phi float [ %4939, %4903 ], [ %4800, %4806 ]
  %4943 = fmul fast float %4942, %4809
  %4944 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4945 = extractvalue %dx.types.CBufRet.i32 %4944, 1
  %4946 = extractvalue %dx.types.CBufRet.i32 %4944, 0
  %4947 = add i32 %4946, 0
  %4948 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4947, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4949 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4948, %dx.types.Handle %104, float %4898, float %4899, float undef, float undef, i32 0, i32 0, i32 undef, float %4861, float %4862, float undef, float %4865, float %4866, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4950 = extractvalue %dx.types.ResRet.f32 %4949, 0
  %4951 = extractvalue %dx.types.ResRet.f32 %4949, 1
  %4952 = extractvalue %dx.types.ResRet.f32 %4949, 2
  %4953 = extractvalue %dx.types.ResRet.f32 %4949, 3
  %4954 = and i32 %4945, 255
  %4955 = uitofp i32 %4954 to float
  %4956 = lshr i32 %4945, 8
  %4957 = and i32 %4956, 255
  %4958 = uitofp i32 %4957 to float
  %4959 = fmul fast float %4953, %4955
  %4960 = fadd fast float %4959, %4958
  %4961 = fmul fast float %4960, 0x3F70101000000000
  %4962 = fadd fast float %4961, 0xBFB99999A0000000
  %4963 = call float @dx.op.unary.f32(i32 7, float %4962)  ; Saturate(value)
  %4964 = fmul fast float %4963, 0x3FF1C71C80000000
  %4965 = call float @dx.op.binary.f32(i32 36, float %4961, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4966 = fsub fast float 1.000000e+00, %4964
  %4967 = call float @dx.op.unary.f32(i32 7, float %4966)  ; Saturate(value)
  %4968 = fmul fast float %4967, %4950
  %4969 = fmul fast float %4967, %4951
  %4970 = fmul fast float %4967, %4952
  %4971 = call float @dx.op.unary.f32(i32 7, float %4968)  ; Saturate(value)
  %4972 = call float @dx.op.unary.f32(i32 7, float %4969)  ; Saturate(value)
  %4973 = call float @dx.op.unary.f32(i32 7, float %4970)  ; Saturate(value)
  %4974 = fmul fast float %4964, %4950
  %4975 = fmul fast float %4964, %4951
  %4976 = fmul fast float %4964, %4952
  %4977 = fadd fast float %4974, %4965
  %4978 = fadd fast float %4975, %4965
  %4979 = fadd fast float %4976, %4965
  %4980 = call float @dx.op.unary.f32(i32 7, float %4977)  ; Saturate(value)
  %4981 = call float @dx.op.unary.f32(i32 7, float %4978)  ; Saturate(value)
  %4982 = call float @dx.op.unary.f32(i32 7, float %4979)  ; Saturate(value)
  %4983 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4984 = extractvalue %dx.types.CBufRet.i32 %4983, 3
  %4985 = extractvalue %dx.types.CBufRet.i32 %4983, 2
  %4986 = add i32 %4985, 0
  %4987 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4986, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4988 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4987, %dx.types.Handle %104, float %4898, float %4899, float undef, float undef, i32 0, i32 0, i32 undef, float %4861, float %4862, float undef, float %4865, float %4866, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4989 = extractvalue %dx.types.ResRet.f32 %4988, 0
  %4990 = extractvalue %dx.types.ResRet.f32 %4988, 1
  %4991 = extractvalue %dx.types.ResRet.f32 %4988, 2
  %4992 = extractvalue %dx.types.ResRet.f32 %4988, 3
  %4993 = and i32 %4984, 255
  %4994 = uitofp i32 %4993 to float
  %4995 = lshr i32 %4984, 8
  %4996 = and i32 %4995, 255
  %4997 = uitofp i32 %4996 to float
  %4998 = lshr i32 %4984, 16
  %4999 = and i32 %4998, 255
  %5000 = uitofp i32 %4999 to float
  %5001 = fmul fast float %5000, 0x3F70101000000000
  %5002 = fmul fast float %4989, %4994
  %5003 = fadd fast float %5002, %4997
  %5004 = fmul fast float %5003, 0x3F70101000000000
  %5005 = fadd fast float %4990, -5.000000e-01
  %5006 = fadd fast float %4992, -5.000000e-01
  %5007 = fmul fast float %5005, %5001
  %5008 = fmul fast float %5006, %5001
  %5009 = fadd fast float %5007, 5.000000e-01
  %5010 = fadd fast float %5008, 5.000000e-01
  %5011 = fmul fast float %5009, 2.000000e+00
  %5012 = fadd fast float %5011, -1.000000e+00
  %5013 = fmul fast float %5010, 2.000000e+00
  %5014 = fadd fast float %5013, -1.000000e+00
  %5015 = fadd fast float %5012, %5014
  %5016 = fmul fast float %5015, 5.000000e-01
  %5017 = fsub fast float %5012, %5014
  %5018 = fmul fast float %5017, 5.000000e-01
  %5019 = call float @dx.op.unary.f32(i32 6, float %5016)  ; FAbs(value)
  %5020 = fsub fast float 1.000000e+00, %5019
  %5021 = call float @dx.op.unary.f32(i32 6, float %5018)  ; FAbs(value)
  %5022 = fsub fast float %5020, %5021
  %5023 = call float @dx.op.dot3.f32(i32 55, float %5016, float %5018, float %5022, float %5016, float %5018, float %5022)  ; Dot3(ax,ay,az,bx,by,bz)
  %5024 = call float @dx.op.unary.f32(i32 25, float %5023)  ; Rsqrt(value)
  %5025 = fmul fast float %5016, %5024
  %5026 = fmul fast float %5018, %5024
  %5027 = select i1 %4854, i32 %4844, i32 %4845
  %5028 = select i1 %4852, i32 %4843, i32 %5027
  %5029 = sitofp i32 %5028 to float
  %5030 = fmul fast float %5022, %5029
  %5031 = fmul fast float %5030, %5024
  %5032 = select i1 %4854, float %5031, float %5026
  %5033 = select i1 %4854, float %5026, float %5031
  %5034 = select i1 %4852, float %5031, float %5025
  %5035 = select i1 %4852, float %5026, float %5032
  %5036 = select i1 %4852, float %5025, float %5033
  %5037 = fsub fast float %4971, %4695
  %5038 = fsub fast float %4972, %4696
  %5039 = fsub fast float %4973, %4697
  %5040 = fmul fast float %5037, %4943
  %5041 = fmul fast float %5038, %4943
  %5042 = fmul fast float %5039, %4943
  %5043 = fadd fast float %5040, %4695
  %5044 = fadd fast float %5041, %4696
  %5045 = fadd fast float %5042, %4697
  %5046 = fsub fast float %4980, %4677
  %5047 = fsub fast float %4981, %4678
  %5048 = fsub fast float %4982, %4679
  %5049 = fmul fast float %5046, %4943
  %5050 = fmul fast float %5047, %4943
  %5051 = fmul fast float %5048, %4943
  %5052 = fadd fast float %5049, %4677
  %5053 = fadd fast float %5050, %4678
  %5054 = fadd fast float %5051, %4679
  %5055 = fadd fast float %5034, %4638
  %5056 = fadd fast float %5035, %4639
  %5057 = fadd fast float %5036, %4640
  %5058 = call float @dx.op.dot3.f32(i32 55, float %5055, float %5056, float %5057, float %5055, float %5056, float %5057)  ; Dot3(ax,ay,az,bx,by,bz)
  %5059 = call float @dx.op.unary.f32(i32 25, float %5058)  ; Rsqrt(value)
  %5060 = fmul fast float %5055, %5059
  %5061 = fmul fast float %5056, %5059
  %5062 = fmul fast float %5057, %5059
  %5063 = fsub fast float %5060, %4638
  %5064 = fsub fast float %5061, %4639
  %5065 = fsub fast float %5062, %4640
  %5066 = fmul fast float %5063, %4943
  %5067 = fmul fast float %5064, %4943
  %5068 = fmul fast float %5065, %4943
  %5069 = fadd fast float %5066, %4638
  %5070 = fadd fast float %5067, %4639
  %5071 = fadd fast float %5068, %4640
  %5072 = call float @dx.op.binary.f32(i32 36, float %4653, float %4991)  ; FMin(a,b)
  %5073 = fsub fast float %5072, %4653
  %5074 = fmul fast float %5073, %4943
  %5075 = fadd fast float %5074, %4653
  %5076 = fsub fast float %5004, %4680
  %5077 = fmul fast float %5076, %4943
  %5078 = fadd fast float %5077, %4680
  br label %5079

; <label>:5079                                    ; preds = %4941, %4903, %4805
  %5080 = phi float [ %5052, %4941 ], [ %4677, %4903 ], [ %4677, %4805 ]
  %5081 = phi float [ %5053, %4941 ], [ %4678, %4903 ], [ %4678, %4805 ]
  %5082 = phi float [ %5054, %4941 ], [ %4679, %4903 ], [ %4679, %4805 ]
  %5083 = phi float [ %5043, %4941 ], [ %4695, %4903 ], [ %4695, %4805 ]
  %5084 = phi float [ %5044, %4941 ], [ %4696, %4903 ], [ %4696, %4805 ]
  %5085 = phi float [ %5045, %4941 ], [ %4697, %4903 ], [ %4697, %4805 ]
  %5086 = phi float [ %5069, %4941 ], [ %4638, %4903 ], [ %4638, %4805 ]
  %5087 = phi float [ %5070, %4941 ], [ %4639, %4903 ], [ %4639, %4805 ]
  %5088 = phi float [ %5071, %4941 ], [ %4640, %4903 ], [ %4640, %4805 ]
  %5089 = phi float [ %5078, %4941 ], [ %4680, %4903 ], [ %4680, %4805 ]
  %5090 = phi float [ %5075, %4941 ], [ %4653, %4903 ], [ %4653, %4805 ]
  br i1 %4803, label %5091, label %5364

; <label>:5091                                    ; preds = %5079
  %5092 = call float @dx.op.unary.f32(i32 23, float %5090)  ; Log(value)
  %5093 = fmul fast float %5092, 4.000000e+00
  %5094 = call float @dx.op.unary.f32(i32 21, float %5093)  ; Exp(value)
  %5095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5096 = extractvalue %dx.types.CBufRet.f32 %5095, 0
  %5097 = fmul fast float %5096, %54
  %5098 = fmul fast float %5096, %55
  %5099 = fmul fast float %5096, %56
  %5100 = call float @dx.op.unary.f32(i32 6, float %64)  ; FAbs(value)
  %5101 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %5102 = call float @dx.op.unary.f32(i32 6, float %66)  ; FAbs(value)
  %5103 = call float @dx.op.unary.f32(i32 23, float %5100)  ; Log(value)
  %5104 = call float @dx.op.unary.f32(i32 23, float %5101)  ; Log(value)
  %5105 = call float @dx.op.unary.f32(i32 23, float %5102)  ; Log(value)
  %5106 = fmul fast float %5103, 4.000000e+00
  %5107 = fmul fast float %5104, 4.000000e+00
  %5108 = fmul fast float %5105, 4.000000e+00
  %5109 = call float @dx.op.unary.f32(i32 21, float %5106)  ; Exp(value)
  %5110 = call float @dx.op.unary.f32(i32 21, float %5107)  ; Exp(value)
  %5111 = call float @dx.op.unary.f32(i32 21, float %5108)  ; Exp(value)
  %5112 = fadd fast float %5110, %5109
  %5113 = fadd fast float %5112, %5111
  %5114 = fdiv fast float 1.000000e+00, %5113
  %5115 = fmul fast float %5114, %5109
  %5116 = fcmp fast ogt float %64, 0.000000e+00
  %5117 = fcmp fast ogt float %65, 0.000000e+00
  %5118 = fcmp fast ogt float %66, 0.000000e+00
  %5119 = fcmp fast olt float %64, 0.000000e+00
  %5120 = fcmp fast olt float %65, 0.000000e+00
  %5121 = fcmp fast olt float %66, 0.000000e+00
  %5122 = zext i1 %5116 to i32
  %5123 = zext i1 %5117 to i32
  %5124 = zext i1 %5118 to i32
  %5125 = zext i1 %5119 to i32
  %5126 = zext i1 %5120 to i32
  %5127 = zext i1 %5121 to i32
  %5128 = sub nsw i32 %5122, %5125
  %5129 = sub nsw i32 %5123, %5126
  %5130 = sub nsw i32 %5124, %5127
  %5131 = call float @dx.op.unary.f32(i32 83, float %5097)  ; DerivCoarseX(value)
  %5132 = call float @dx.op.unary.f32(i32 83, float %5098)  ; DerivCoarseX(value)
  %5133 = call float @dx.op.unary.f32(i32 83, float %5099)  ; DerivCoarseX(value)
  %5134 = call float @dx.op.unary.f32(i32 84, float %5097)  ; DerivCoarseY(value)
  %5135 = call float @dx.op.unary.f32(i32 84, float %5098)  ; DerivCoarseY(value)
  %5136 = call float @dx.op.unary.f32(i32 84, float %5099)  ; DerivCoarseY(value)
  %5137 = fcmp fast ole float %280, %5115
  %5138 = fmul fast float %5114, %5112
  %5139 = fcmp fast ole float %280, %5138
  %5140 = select i1 %5139, float %5099, float %5097
  %5141 = select i1 %5139, float %5097, float %5098
  %5142 = select i1 %5137, float %5098, float %5140
  %5143 = select i1 %5137, float %5099, float %5141
  %5144 = select i1 %5139, float %5133, float %5131
  %5145 = select i1 %5139, float %5131, float %5132
  %5146 = select i1 %5137, float %5132, float %5144
  %5147 = select i1 %5137, float %5133, float %5145
  %5148 = select i1 %5139, float %5136, float %5134
  %5149 = select i1 %5139, float %5134, float %5135
  %5150 = select i1 %5137, float %5135, float %5148
  %5151 = select i1 %5137, float %5136, float %5149
  %5152 = call float @dx.op.unary.f32(i32 27, float %5142)  ; Round_ni(value)
  %5153 = call float @dx.op.unary.f32(i32 27, float %5143)  ; Round_ni(value)
  %5154 = fptosi float %5152 to i32
  %5155 = fptosi float %5153 to i32
  %5156 = xor i32 %5155, %5154
  %5157 = sitofp i32 %5156 to float
  %5158 = fptosi float %5157 to i32
  %5159 = sitofp i32 %5158 to float
  %5160 = fmul fast float %5159, 0x3FE3C6EF40000000
  %5161 = frem fast float %5152, 2.560000e+02
  %5162 = frem fast float %5153, 2.560000e+02
  %5163 = fptoui float %5161 to i32
  %5164 = fptoui float %5162 to i32
  %5165 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %5163, i32 %5164, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5166 = extractvalue %dx.types.ResRet.f32 %5165, 0
  %5167 = extractvalue %dx.types.ResRet.f32 %5165, 1
  %5168 = extractvalue %dx.types.ResRet.f32 %5165, 2
  %5169 = fadd fast float %5166, %5160
  %5170 = fadd fast float %5167, %5160
  %5171 = fadd fast float %5168, %5160
  %5172 = call float @dx.op.unary.f32(i32 22, float %5169)  ; Frc(value)
  %5173 = call float @dx.op.unary.f32(i32 22, float %5170)  ; Frc(value)
  %5174 = call float @dx.op.unary.f32(i32 22, float %5171)  ; Frc(value)
  %5175 = fmul fast float %5174, 0x401921FB60000000
  %5176 = call float @dx.op.unary.f32(i32 13, float %5175)  ; Sin(value)
  %5177 = call float @dx.op.unary.f32(i32 12, float %5175)  ; Cos(value)
  %5178 = fsub fast float -0.000000e+00, %5177
  %5179 = fmul fast float %5177, %5142
  %5180 = call float @dx.op.tertiary.f32(i32 46, float %5176, float %5143, float %5179)  ; FMad(a,b,c)
  %5181 = fmul fast float %5176, %5142
  %5182 = call float @dx.op.tertiary.f32(i32 46, float %5178, float %5143, float %5181)  ; FMad(a,b,c)
  %5183 = fadd fast float %5180, %5172
  %5184 = fadd fast float %5182, %5173
  %5185 = extractvalue %dx.types.CBufRet.f32 %5095, 3
  %5186 = bitcast float %5185 to i32
  %5187 = icmp eq i32 %5186, 0
  br i1 %5187, label %5226, label %5188

; <label>:5188                                    ; preds = %5091
  %5189 = add i32 %5186, 0
  %5190 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5189, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5191 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5190, %dx.types.Handle %105, float %5183, float %5184, float undef, float undef, i32 0, i32 0, i32 undef, float %5146, float %5147, float undef, float %5150, float %5151, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5192 = extractvalue %dx.types.ResRet.f32 %5191, 0
  %5193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5194 = extractvalue %dx.types.CBufRet.f32 %5193, 1
  %5195 = extractvalue %dx.types.CBufRet.f32 %5193, 2
  %5196 = fsub fast float 1.000000e+00, %4801
  %5197 = call float @dx.op.binary.f32(i32 35, float %5196, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5198 = bitcast float %4801 to i32
  %5199 = sitofp i32 %5198 to float
  %5200 = fadd fast float %5199, 0xC1CFBF8940000000
  %5201 = fmul fast float %5195, %5200
  %5202 = fadd fast float %5201, 0x41CFBF8940000000
  %5203 = fptosi float %5202 to i32
  %5204 = bitcast i32 %5203 to float
  %5205 = bitcast float %5197 to i32
  %5206 = sitofp i32 %5205 to float
  %5207 = fadd fast float %5206, 0xC1CFBF8940000000
  %5208 = fmul fast float %5207, %5195
  %5209 = fadd fast float %5208, 0x41CFBF8940000000
  %5210 = fptosi float %5209 to i32
  %5211 = bitcast i32 %5210 to float
  %5212 = fmul fast float %5204, %5194
  %5213 = fmul fast float %5211, %5194
  %5214 = fsub fast float %5197, %5212
  %5215 = fadd fast float %5213, %5197
  %5216 = call float @dx.op.unary.f32(i32 7, float %5214)  ; Saturate(value)
  %5217 = call float @dx.op.unary.f32(i32 7, float %5215)  ; Saturate(value)
  %5218 = fsub fast float %5192, %5216
  %5219 = fsub fast float %5217, %5216
  %5220 = bitcast float %5219 to i32
  %5221 = sub nsw i32 2129859010, %5220
  %5222 = bitcast i32 %5221 to float
  %5223 = fmul fast float %5222, %5218
  %5224 = call float @dx.op.unary.f32(i32 7, float %5223)  ; Saturate(value)
  %5225 = fcmp fast olt float %5224, 0x3F70101020000000
  br i1 %5225, label %5364, label %5226

; <label>:5226                                    ; preds = %5188, %5091
  %5227 = phi float [ %5224, %5188 ], [ %4801, %5091 ]
  %5228 = fmul fast float %5227, %5094
  %5229 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5230 = extractvalue %dx.types.CBufRet.i32 %5229, 1
  %5231 = extractvalue %dx.types.CBufRet.i32 %5229, 0
  %5232 = add i32 %5231, 0
  %5233 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5232, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5234 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5233, %dx.types.Handle %104, float %5183, float %5184, float undef, float undef, i32 0, i32 0, i32 undef, float %5146, float %5147, float undef, float %5150, float %5151, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5235 = extractvalue %dx.types.ResRet.f32 %5234, 0
  %5236 = extractvalue %dx.types.ResRet.f32 %5234, 1
  %5237 = extractvalue %dx.types.ResRet.f32 %5234, 2
  %5238 = extractvalue %dx.types.ResRet.f32 %5234, 3
  %5239 = and i32 %5230, 255
  %5240 = uitofp i32 %5239 to float
  %5241 = lshr i32 %5230, 8
  %5242 = and i32 %5241, 255
  %5243 = uitofp i32 %5242 to float
  %5244 = fmul fast float %5238, %5240
  %5245 = fadd fast float %5244, %5243
  %5246 = fmul fast float %5245, 0x3F70101000000000
  %5247 = fadd fast float %5246, 0xBFB99999A0000000
  %5248 = call float @dx.op.unary.f32(i32 7, float %5247)  ; Saturate(value)
  %5249 = fmul fast float %5248, 0x3FF1C71C80000000
  %5250 = call float @dx.op.binary.f32(i32 36, float %5246, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5251 = fsub fast float 1.000000e+00, %5249
  %5252 = call float @dx.op.unary.f32(i32 7, float %5251)  ; Saturate(value)
  %5253 = fmul fast float %5252, %5235
  %5254 = fmul fast float %5252, %5236
  %5255 = fmul fast float %5252, %5237
  %5256 = call float @dx.op.unary.f32(i32 7, float %5253)  ; Saturate(value)
  %5257 = call float @dx.op.unary.f32(i32 7, float %5254)  ; Saturate(value)
  %5258 = call float @dx.op.unary.f32(i32 7, float %5255)  ; Saturate(value)
  %5259 = fmul fast float %5249, %5235
  %5260 = fmul fast float %5249, %5236
  %5261 = fmul fast float %5249, %5237
  %5262 = fadd fast float %5259, %5250
  %5263 = fadd fast float %5260, %5250
  %5264 = fadd fast float %5261, %5250
  %5265 = call float @dx.op.unary.f32(i32 7, float %5262)  ; Saturate(value)
  %5266 = call float @dx.op.unary.f32(i32 7, float %5263)  ; Saturate(value)
  %5267 = call float @dx.op.unary.f32(i32 7, float %5264)  ; Saturate(value)
  %5268 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5269 = extractvalue %dx.types.CBufRet.i32 %5268, 3
  %5270 = extractvalue %dx.types.CBufRet.i32 %5268, 2
  %5271 = add i32 %5270, 0
  %5272 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5271, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5273 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5272, %dx.types.Handle %104, float %5183, float %5184, float undef, float undef, i32 0, i32 0, i32 undef, float %5146, float %5147, float undef, float %5150, float %5151, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5274 = extractvalue %dx.types.ResRet.f32 %5273, 0
  %5275 = extractvalue %dx.types.ResRet.f32 %5273, 1
  %5276 = extractvalue %dx.types.ResRet.f32 %5273, 2
  %5277 = extractvalue %dx.types.ResRet.f32 %5273, 3
  %5278 = and i32 %5269, 255
  %5279 = uitofp i32 %5278 to float
  %5280 = lshr i32 %5269, 8
  %5281 = and i32 %5280, 255
  %5282 = uitofp i32 %5281 to float
  %5283 = lshr i32 %5269, 16
  %5284 = and i32 %5283, 255
  %5285 = uitofp i32 %5284 to float
  %5286 = fmul fast float %5285, 0x3F70101000000000
  %5287 = fmul fast float %5274, %5279
  %5288 = fadd fast float %5287, %5282
  %5289 = fmul fast float %5288, 0x3F70101000000000
  %5290 = fadd fast float %5275, -5.000000e-01
  %5291 = fadd fast float %5277, -5.000000e-01
  %5292 = fmul fast float %5290, %5286
  %5293 = fmul fast float %5291, %5286
  %5294 = fadd fast float %5292, 5.000000e-01
  %5295 = fadd fast float %5293, 5.000000e-01
  %5296 = fmul fast float %5294, 2.000000e+00
  %5297 = fadd fast float %5296, -1.000000e+00
  %5298 = fmul fast float %5295, 2.000000e+00
  %5299 = fadd fast float %5298, -1.000000e+00
  %5300 = fadd fast float %5297, %5299
  %5301 = fmul fast float %5300, 5.000000e-01
  %5302 = fsub fast float %5297, %5299
  %5303 = fmul fast float %5302, 5.000000e-01
  %5304 = call float @dx.op.unary.f32(i32 6, float %5301)  ; FAbs(value)
  %5305 = fsub fast float 1.000000e+00, %5304
  %5306 = call float @dx.op.unary.f32(i32 6, float %5303)  ; FAbs(value)
  %5307 = fsub fast float %5305, %5306
  %5308 = call float @dx.op.dot3.f32(i32 55, float %5301, float %5303, float %5307, float %5301, float %5303, float %5307)  ; Dot3(ax,ay,az,bx,by,bz)
  %5309 = call float @dx.op.unary.f32(i32 25, float %5308)  ; Rsqrt(value)
  %5310 = fmul fast float %5301, %5309
  %5311 = fmul fast float %5303, %5309
  %5312 = select i1 %5139, i32 %5129, i32 %5130
  %5313 = select i1 %5137, i32 %5128, i32 %5312
  %5314 = sitofp i32 %5313 to float
  %5315 = fmul fast float %5307, %5314
  %5316 = fmul fast float %5315, %5309
  %5317 = select i1 %5139, float %5316, float %5311
  %5318 = select i1 %5139, float %5311, float %5316
  %5319 = select i1 %5137, float %5316, float %5310
  %5320 = select i1 %5137, float %5311, float %5317
  %5321 = select i1 %5137, float %5310, float %5318
  %5322 = fsub fast float %5256, %5083
  %5323 = fsub fast float %5257, %5084
  %5324 = fsub fast float %5258, %5085
  %5325 = fmul fast float %5322, %5228
  %5326 = fmul fast float %5323, %5228
  %5327 = fmul fast float %5324, %5228
  %5328 = fadd fast float %5325, %5083
  %5329 = fadd fast float %5326, %5084
  %5330 = fadd fast float %5327, %5085
  %5331 = fsub fast float %5265, %5080
  %5332 = fsub fast float %5266, %5081
  %5333 = fsub fast float %5267, %5082
  %5334 = fmul fast float %5331, %5228
  %5335 = fmul fast float %5332, %5228
  %5336 = fmul fast float %5333, %5228
  %5337 = fadd fast float %5334, %5080
  %5338 = fadd fast float %5335, %5081
  %5339 = fadd fast float %5336, %5082
  %5340 = fadd fast float %5319, %5086
  %5341 = fadd fast float %5320, %5087
  %5342 = fadd fast float %5321, %5088
  %5343 = call float @dx.op.dot3.f32(i32 55, float %5340, float %5341, float %5342, float %5340, float %5341, float %5342)  ; Dot3(ax,ay,az,bx,by,bz)
  %5344 = call float @dx.op.unary.f32(i32 25, float %5343)  ; Rsqrt(value)
  %5345 = fmul fast float %5340, %5344
  %5346 = fmul fast float %5341, %5344
  %5347 = fmul fast float %5342, %5344
  %5348 = fsub fast float %5345, %5086
  %5349 = fsub fast float %5346, %5087
  %5350 = fsub fast float %5347, %5088
  %5351 = fmul fast float %5348, %5228
  %5352 = fmul fast float %5349, %5228
  %5353 = fmul fast float %5350, %5228
  %5354 = fadd fast float %5351, %5086
  %5355 = fadd fast float %5352, %5087
  %5356 = fadd fast float %5353, %5088
  %5357 = call float @dx.op.binary.f32(i32 36, float %5090, float %5276)  ; FMin(a,b)
  %5358 = fsub fast float %5357, %5090
  %5359 = fmul fast float %5358, %5228
  %5360 = fadd fast float %5359, %5090
  %5361 = fsub fast float %5289, %5089
  %5362 = fmul fast float %5361, %5228
  %5363 = fadd fast float %5362, %5089
  br label %5364

; <label>:5364                                    ; preds = %5226, %5188, %5079, %4795
  %5365 = phi float [ %5337, %5226 ], [ %5080, %5188 ], [ %5080, %5079 ], [ %4677, %4795 ]
  %5366 = phi float [ %5338, %5226 ], [ %5081, %5188 ], [ %5081, %5079 ], [ %4678, %4795 ]
  %5367 = phi float [ %5339, %5226 ], [ %5082, %5188 ], [ %5082, %5079 ], [ %4679, %4795 ]
  %5368 = phi float [ %5328, %5226 ], [ %5083, %5188 ], [ %5083, %5079 ], [ %4695, %4795 ]
  %5369 = phi float [ %5329, %5226 ], [ %5084, %5188 ], [ %5084, %5079 ], [ %4696, %4795 ]
  %5370 = phi float [ %5330, %5226 ], [ %5085, %5188 ], [ %5085, %5079 ], [ %4697, %4795 ]
  %5371 = phi float [ %5354, %5226 ], [ %5086, %5188 ], [ %5086, %5079 ], [ %4638, %4795 ]
  %5372 = phi float [ %5355, %5226 ], [ %5087, %5188 ], [ %5087, %5079 ], [ %4639, %4795 ]
  %5373 = phi float [ %5356, %5226 ], [ %5088, %5188 ], [ %5088, %5079 ], [ %4640, %4795 ]
  %5374 = phi float [ %5363, %5226 ], [ %5089, %5188 ], [ %5089, %5079 ], [ %4680, %4795 ]
  %5375 = phi float [ %5360, %5226 ], [ %5090, %5188 ], [ %5090, %5079 ], [ %4653, %4795 ]
  %5376 = fcmp fast une float %4799, 0.000000e+00
  br i1 %5376, label %5377, label %5546

; <label>:5377                                    ; preds = %5364
  %5378 = call float @dx.op.dot3.f32(i32 55, float %195, float %196, float %197, float %195, float %196, float %197)  ; Dot3(ax,ay,az,bx,by,bz)
  %5379 = call float @dx.op.unary.f32(i32 25, float %5378)  ; Rsqrt(value)
  %5380 = fmul fast float %195, %5379
  %5381 = fsub fast float -0.000000e+00, %5380
  %5382 = fmul fast float %196, %5379
  %5383 = fsub fast float -0.000000e+00, %5382
  %5384 = fmul fast float %197, %5379
  %5385 = fsub fast float -0.000000e+00, %5384
  %5386 = call float @dx.op.dot3.f32(i32 55, float %5381, float %5383, float %5385, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %5387 = fmul fast float %4799, 2.500000e+00
  %5388 = call float @dx.op.unary.f32(i32 7, float %5387)  ; Saturate(value)
  %5389 = fmul fast float %4799, 0x4013FFFFE0000000
  %5390 = fadd fast float %5389, 0xBFFFFFFFE0000000
  %5391 = call float @dx.op.unary.f32(i32 7, float %5390)  ; Saturate(value)
  %5392 = fmul fast float %4799, 0x4004000020000000
  %5393 = fadd fast float %5392, 0xBFF8000040000000
  %5394 = call float @dx.op.unary.f32(i32 7, float %5393)  ; Saturate(value)
  %5395 = fmul fast float %4659, 1.000000e+01
  %5396 = call float @dx.op.unary.f32(i32 7, float %5395)  ; Saturate(value)
  %5397 = fmul fast float %5396, 2.000000e+00
  %5398 = fsub fast float 3.000000e+00, %5397
  %5399 = fmul fast float %5396, %5396
  %5400 = fmul fast float %5399, %5398
  %5401 = fsub fast float 1.000000e+00, %5400
  %5402 = fsub fast float 0x3FE3333340000000, %5374
  %5403 = fmul fast float %5402, 0x400AAAAAA0000000
  %5404 = call float @dx.op.unary.f32(i32 7, float %5403)  ; Saturate(value)
  %5405 = fmul fast float %5401, %5404
  %5406 = fmul fast float %5368, 0x3FEA2B8620000000
  %5407 = fmul fast float %5369, 0x3FEA2B8620000000
  %5408 = fmul fast float %5370, 0x3FEA2B8620000000
  %5409 = fadd fast float %5406, 0x3FC81DFBA0000000
  %5410 = fmul fast float %5409, %5368
  %5411 = fadd fast float %5410, 0x3F910E6020000000
  %5412 = fadd fast float %5407, 0x3FC81DFBA0000000
  %5413 = fmul fast float %5412, %5369
  %5414 = fadd fast float %5413, 0x3F910E6020000000
  %5415 = fadd fast float %5408, 0x3FC81DFBA0000000
  %5416 = fmul fast float %5415, %5370
  %5417 = fadd fast float %5416, 0x3F910E6020000000
  %5418 = call float @dx.op.unary.f32(i32 7, float %5411)  ; Saturate(value)
  %5419 = call float @dx.op.unary.f32(i32 7, float %5414)  ; Saturate(value)
  %5420 = call float @dx.op.unary.f32(i32 7, float %5417)  ; Saturate(value)
  %5421 = fsub fast float %5418, %5368
  %5422 = fsub fast float %5419, %5369
  %5423 = fsub fast float %5420, %5370
  %5424 = fmul fast float %5421, %5388
  %5425 = fmul fast float %5424, %5405
  %5426 = fmul fast float %5422, %5388
  %5427 = fmul fast float %5426, %5405
  %5428 = fmul fast float %5423, %5388
  %5429 = fmul fast float %5428, %5405
  %5430 = fadd fast float %5425, %5368
  %5431 = fadd fast float %5427, %5369
  %5432 = fadd fast float %5429, %5370
  %5433 = fmul fast float %5375, %5375
  %5434 = fmul fast float %5433, %5433
  %5435 = fadd fast float %5391, 1.000000e+00
  %5436 = fsub fast float %5435, %5405
  %5437 = call float @dx.op.unary.f32(i32 7, float %5436)  ; Saturate(value)
  %5438 = call float @dx.op.dot3.f32(i32 55, float %115, float %116, float %117, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5439 = call float @dx.op.unary.f32(i32 7, float %5438)  ; Saturate(value)
  %5440 = fsub fast float 1.000000e+00, %5434
  %5441 = call float @dx.op.binary.f32(i32 36, float %5437, float %5440)  ; FMin(a,b)
  %5442 = call float @dx.op.unary.f32(i32 7, float %5394)  ; Saturate(value)
  %5443 = call float @dx.op.binary.f32(i32 35, float %5441, float %5442)  ; FMax(a,b)
  %5444 = fadd fast float %5439, 0xBFE4CCCCC0000000
  %5445 = fmul fast float %5444, 0x4006DB6DA0000000
  %5446 = call float @dx.op.unary.f32(i32 7, float %5445)  ; Saturate(value)
  %5447 = fmul fast float %5446, 2.000000e+00
  %5448 = fsub fast float 3.000000e+00, %5447
  %5449 = bitcast float %5365 to i32
  %5450 = ashr i32 %5449, 1
  %5451 = add nsw i32 %5450, 532487669
  %5452 = bitcast i32 %5451 to float
  %5453 = fsub fast float 1.000000e+00, %5452
  %5454 = bitcast float %5453 to i32
  %5455 = sub nsw i32 2129859010, %5454
  %5456 = bitcast i32 %5455 to float
  %5457 = fmul fast float %5456, 2.000000e+00
  %5458 = bitcast float %5366 to i32
  %5459 = ashr i32 %5458, 1
  %5460 = add nsw i32 %5459, 532487669
  %5461 = bitcast i32 %5460 to float
  %5462 = fsub fast float 1.000000e+00, %5461
  %5463 = bitcast float %5462 to i32
  %5464 = sub nsw i32 2129859010, %5463
  %5465 = bitcast i32 %5464 to float
  %5466 = fmul fast float %5465, 2.000000e+00
  %5467 = bitcast float %5367 to i32
  %5468 = ashr i32 %5467, 1
  %5469 = add nsw i32 %5468, 532487669
  %5470 = bitcast i32 %5469 to float
  %5471 = fsub fast float 1.000000e+00, %5470
  %5472 = bitcast float %5471 to i32
  %5473 = sub nsw i32 2129859010, %5472
  %5474 = bitcast i32 %5473 to float
  %5475 = fmul fast float %5474, 2.000000e+00
  %5476 = fsub fast float 0x4002A9FBE0000000, %5457
  %5477 = fadd fast float %5457, 0x3FD54FDF00000000
  %5478 = bitcast float %5477 to i32
  %5479 = sub nsw i32 2129859010, %5478
  %5480 = bitcast i32 %5479 to float
  %5481 = fmul fast float %5480, %5476
  %5482 = fmul fast float %5481, %5481
  %5483 = fsub fast float 0x4002A9FBE0000000, %5466
  %5484 = fadd fast float %5466, 0x3FD54FDF00000000
  %5485 = bitcast float %5484 to i32
  %5486 = sub nsw i32 2129859010, %5485
  %5487 = bitcast i32 %5486 to float
  %5488 = fmul fast float %5487, %5483
  %5489 = fmul fast float %5488, %5488
  %5490 = fsub fast float 0x4002A9FBE0000000, %5475
  %5491 = fadd fast float %5475, 0x3FD54FDF00000000
  %5492 = bitcast float %5491 to i32
  %5493 = sub nsw i32 2129859010, %5492
  %5494 = bitcast i32 %5493 to float
  %5495 = fmul fast float %5494, %5490
  %5496 = fmul fast float %5495, %5495
  %5497 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5482)  ; FMax(a,b)
  %5498 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5489)  ; FMax(a,b)
  %5499 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5496)  ; FMax(a,b)
  %5500 = fsub fast float 1.000000e+00, %5386
  %5501 = fadd fast float %5500, %5401
  %5502 = call float @dx.op.unary.f32(i32 7, float %5501)  ; Saturate(value)
  %5503 = fsub fast float 1.000000e+00, %4780
  %5504 = fmul fast float %5443, %5503
  %5505 = fmul fast float %5446, %5446
  %5506 = fmul fast float %5505, %5504
  %5507 = fmul fast float %5506, %5448
  %5508 = fmul fast float %5503, 0xBFE99999A0000000
  %5509 = fmul fast float %5508, %5388
  %5510 = fmul fast float %5509, %5405
  %5511 = fadd fast float %5510, 1.000000e+00
  %5512 = fadd fast float %5374, -1.000000e+00
  %5513 = fmul fast float %5511, %5512
  %5514 = fadd fast float %5513, 1.000000e+00
  %5515 = fsub fast float %5497, %5365
  %5516 = fsub fast float %5498, %5366
  %5517 = fsub fast float %5499, %5367
  %5518 = fmul fast float %5507, %5515
  %5519 = fmul fast float %5507, %5516
  %5520 = fmul fast float %5507, %5517
  %5521 = fadd fast float %5518, %5365
  %5522 = fadd fast float %5519, %5366
  %5523 = fadd fast float %5520, %5367
  %5524 = fsub fast float %115, %5371
  %5525 = fsub fast float %116, %5372
  %5526 = fsub fast float %117, %5373
  %5527 = fmul fast float %5507, %5524
  %5528 = fmul fast float %5507, %5525
  %5529 = fmul fast float %5507, %5526
  %5530 = fadd fast float %5527, %5371
  %5531 = fadd fast float %5528, %5372
  %5532 = fadd fast float %5529, %5373
  %5533 = fmul fast float %5507, %5502
  %5534 = call float @dx.op.unary.f32(i32 7, float %5514)  ; Saturate(value)
  %5535 = fsub fast float 1.000000e+00, %5534
  %5536 = fmul fast float %5533, %5535
  %5537 = fadd fast float %5536, %5534
  %5538 = fsub fast float 1.000000e+00, %5375
  %5539 = fmul fast float %5507, %5538
  %5540 = fadd fast float %5539, %5375
  %5541 = call float @dx.op.dot3.f32(i32 55, float %5530, float %5531, float %5532, float %5530, float %5531, float %5532)  ; Dot3(ax,ay,az,bx,by,bz)
  %5542 = call float @dx.op.unary.f32(i32 25, float %5541)  ; Rsqrt(value)
  %5543 = fmul fast float %5530, %5542
  %5544 = fmul fast float %5531, %5542
  %5545 = fmul fast float %5532, %5542
  br label %5546

; <label>:5546                                    ; preds = %5377, %5364
  %5547 = phi float [ %5521, %5377 ], [ %5365, %5364 ]
  %5548 = phi float [ %5522, %5377 ], [ %5366, %5364 ]
  %5549 = phi float [ %5523, %5377 ], [ %5367, %5364 ]
  %5550 = phi float [ %5430, %5377 ], [ %5368, %5364 ]
  %5551 = phi float [ %5431, %5377 ], [ %5369, %5364 ]
  %5552 = phi float [ %5432, %5377 ], [ %5370, %5364 ]
  %5553 = phi float [ %5543, %5377 ], [ %5371, %5364 ]
  %5554 = phi float [ %5544, %5377 ], [ %5372, %5364 ]
  %5555 = phi float [ %5545, %5377 ], [ %5373, %5364 ]
  %5556 = phi float [ %5537, %5377 ], [ %5374, %5364 ]
  %5557 = phi float [ %5540, %5377 ], [ %5375, %5364 ]
  %5558 = icmp eq i32 %52, 0
  br i1 %5558, label %5589, label %5559

; <label>:5559                                    ; preds = %5546
  %5560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5561 = extractvalue %dx.types.CBufRet.f32 %5560, 2
  %5562 = extractvalue %dx.types.CBufRet.f32 %5560, 3
  %5563 = fmul fast float %5561, %108
  %5564 = fmul fast float %5562, %109
  %5565 = fmul fast float %5563, 1.024000e+03
  %5566 = fmul fast float %5564, 1.024000e+03
  %5567 = fadd fast float %5565, -5.120000e+02
  %5568 = fadd fast float %5566, -5.120000e+02
  %5569 = fmul fast float %5563, 0x4081BEDF00000000
  %5570 = fadd fast float %5569, 0xC071BEDF00000000
  %5571 = call float @dx.op.unary.f32(i32 22, float %5570)  ; Frc(value)
  %5572 = fmul fast float %5567, %5571
  %5573 = fadd fast float %5572, %5568
  %5574 = fmul fast float %5564, 0x4073BEBE20000000
  %5575 = fadd fast float %5574, 0xC063BEBE20000000
  %5576 = call float @dx.op.unary.f32(i32 22, float %5575)  ; Frc(value)
  %5577 = fmul fast float %5568, %5576
  %5578 = fadd fast float %5577, %5567
  %5579 = fmul fast float %5573, %5578
  %5580 = call float @dx.op.unary.f32(i32 22, float %5579)  ; Frc(value)
  %5581 = add i32 %323, 12
  %5582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %5581, i32 undef)  ; BufferLoad(srv,index,wot)
  %5583 = extractvalue %dx.types.ResRet.i32 %5582, 0
  %5584 = and i32 %5583, 255
  %5585 = uitofp i32 %5584 to float
  %5586 = fmul fast float %5585, 0x3F70101020000000
  %5587 = fcmp fast olt float %5580, %5586
  br i1 %5587, label %5588, label %5589

; <label>:5588                                    ; preds = %5559
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %5589

; <label>:5589                                    ; preds = %5588, %5559, %5546
  %5590 = call float @dx.op.dot3.f32(i32 55, float %195, float %196, float %197, float %195, float %196, float %197)  ; Dot3(ax,ay,az,bx,by,bz)
  %5591 = call float @dx.op.unary.f32(i32 25, float %5590)  ; Rsqrt(value)
  %5592 = fmul fast float %5591, %195
  %5593 = fmul fast float %5591, %196
  %5594 = fmul fast float %5591, %197
  %5595 = fsub fast float -0.000000e+00, %5592
  %5596 = fsub fast float -0.000000e+00, %5593
  %5597 = fsub fast float -0.000000e+00, %5594
  %5598 = select i1 %269, float 0.000000e+00, float %5549
  %5599 = call float @dx.op.dot3.f32(i32 55, float %5553, float %5554, float %5555, float %5595, float %5596, float %5597)  ; Dot3(ax,ay,az,bx,by,bz)
  %5600 = call float @dx.op.unary.f32(i32 7, float %5599)  ; Saturate(value)
  %5601 = call float @dx.op.dot3.f32(i32 55, float %5592, float %5593, float %5594, float %5553, float %5554, float %5555)  ; Dot3(ax,ay,az,bx,by,bz)
  %5602 = fmul fast float %5601, 2.000000e+00
  %5603 = fmul fast float %5602, %5553
  %5604 = fmul fast float %5602, %5554
  %5605 = fmul fast float %5602, %5555
  %5606 = fsub fast float %5592, %5603
  %5607 = fsub fast float %5593, %5604
  %5608 = fsub fast float %5594, %5605
  %5609 = call float @dx.op.binary.f32(i32 36, float %5557, float 1.000000e+00)  ; FMin(a,b)
  %5610 = fsub fast float 1.000000e+00, %5609
  %5611 = bitcast float %5610 to i32
  %5612 = ashr i32 %5611, 1
  %5613 = add nsw i32 %5612, 532487669
  %5614 = bitcast i32 %5613 to float
  %5615 = fsub fast float 1.000000e+00, %5556
  %5616 = call float @dx.op.binary.f32(i32 35, float %5615, float 0x3F847AE140000000)  ; FMax(a,b)
  %5617 = fmul fast float %5616, %5616
  %5618 = fmul fast float %5617, %5617
  %5619 = call float @dx.op.unary.f32(i32 7, float %5600)  ; Saturate(value)
  %5620 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %44, float %5614, float %5618, float %5619, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5621 = extractvalue %dx.types.ResRet.f32 %5620, 0
  %5622 = fsub fast float 1.000000e+00, %5557
  %5623 = bitcast float %5622 to i32
  %5624 = sub nsw i32 2129859010, %5623
  %5625 = bitcast i32 %5624 to float
  %5626 = fsub fast float 1.000000e+00, %75
  %5627 = call float @dx.op.dot3.f32(i32 55, float %135, float %136, float %137, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %5628 = call float @dx.op.binary.f32(i32 35, float %5627, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5629 = fdiv fast float %5626, %5628
  %5630 = call float @dx.op.dot3.f32(i32 55, float %5553, float %5554, float %5555, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %5631 = call float @dx.op.unary.f32(i32 7, float %5630)  ; Saturate(value)
  %5632 = fmul fast float %5631, 5.000000e-01
  %5633 = fadd fast float %5632, 5.000000e-01
  %5634 = fmul fast float %5633, %75
  %5635 = call float @dx.op.dot3.f32(i32 55, float %5553, float %5554, float %5555, float %135, float %136, float %137)  ; Dot3(ax,ay,az,bx,by,bz)
  %5636 = call float @dx.op.unary.f32(i32 7, float %5635)  ; Saturate(value)
  %5637 = fmul fast float %5636, %5629
  %5638 = fadd fast float %5634, %5637
  %5639 = fsub fast float 5.000000e-01, %5632
  %5640 = fmul fast float %5639, %5550
  %5641 = fmul fast float %5639, %5551
  %5642 = fmul fast float %5639, %5552
  %5643 = fadd fast float %5638, %5640
  %5644 = fadd fast float %5638, %5641
  %5645 = fadd fast float %5638, %5642
  %5646 = call float @dx.op.dot3.f32(i32 55, float %5606, float %5607, float %5608, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %5647 = call float @dx.op.unary.f32(i32 7, float %5646)  ; Saturate(value)
  %5648 = fmul fast float %5647, 5.000000e-01
  %5649 = fadd fast float %5648, 5.000000e-01
  %5650 = fmul fast float %5649, %75
  %5651 = call float @dx.op.dot3.f32(i32 55, float %5606, float %5607, float %5608, float %135, float %136, float %137)  ; Dot3(ax,ay,az,bx,by,bz)
  %5652 = call float @dx.op.unary.f32(i32 7, float %5651)  ; Saturate(value)
  %5653 = fmul fast float %5652, %5629
  %5654 = fadd fast float %5650, %5653
  %5655 = fsub fast float 5.000000e-01, %5648
  %5656 = fmul fast float %5655, %5550
  %5657 = fmul fast float %5655, %5551
  %5658 = fmul fast float %5655, %5552
  %5659 = fadd fast float %5654, %5656
  %5660 = fadd fast float %5654, %5657
  %5661 = fadd fast float %5654, %5658
  %5662 = call float @dx.op.dot3.f32(i32 55, float %76, float %77, float %78, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5664 = extractvalue %dx.types.CBufRet.f32 %5663, 0
  %5665 = call float @dx.op.binary.f32(i32 36, float %5550, float %5664)  ; FMin(a,b)
  %5666 = fmul fast float %5665, %5610
  %5667 = fsub fast float 1.000000e+00, %5666
  %5668 = bitcast float %5667 to i32
  %5669 = sub nsw i32 2129859010, %5668
  %5670 = bitcast i32 %5669 to float
  %5671 = call float @dx.op.binary.f32(i32 36, float %5551, float %5664)  ; FMin(a,b)
  %5672 = fmul fast float %5671, %5610
  %5673 = fsub fast float 1.000000e+00, %5672
  %5674 = bitcast float %5673 to i32
  %5675 = sub nsw i32 2129859010, %5674
  %5676 = bitcast i32 %5675 to float
  %5677 = call float @dx.op.binary.f32(i32 36, float %5552, float %5664)  ; FMin(a,b)
  %5678 = fmul fast float %5677, %5610
  %5679 = fsub fast float 1.000000e+00, %5678
  %5680 = bitcast float %5679 to i32
  %5681 = sub nsw i32 2129859010, %5680
  %5682 = bitcast i32 %5681 to float
  %5683 = fmul fast float %5609, %76
  %5684 = fmul fast float %5683, %5643
  %5685 = fmul fast float %5684, %5670
  %5686 = fmul fast float %5609, %77
  %5687 = fmul fast float %5686, %5644
  %5688 = fmul fast float %5687, %5676
  %5689 = fmul fast float %5609, %78
  %5690 = fmul fast float %5689, %5645
  %5691 = fmul fast float %5690, %5682
  %5692 = call float @dx.op.binary.f32(i32 36, float %5547, float %5664)  ; FMin(a,b)
  %5693 = fmul fast float %5692, %5610
  %5694 = fsub fast float 1.000000e+00, %5693
  %5695 = bitcast float %5694 to i32
  %5696 = sub nsw i32 2129859010, %5695
  %5697 = bitcast i32 %5696 to float
  %5698 = call float @dx.op.binary.f32(i32 36, float %5548, float %5664)  ; FMin(a,b)
  %5699 = fmul fast float %5698, %5610
  %5700 = fsub fast float 1.000000e+00, %5699
  %5701 = bitcast float %5700 to i32
  %5702 = sub nsw i32 2129859010, %5701
  %5703 = bitcast i32 %5702 to float
  %5704 = call float @dx.op.binary.f32(i32 36, float %5598, float %5664)  ; FMin(a,b)
  %5705 = fmul fast float %5704, %5610
  %5706 = fsub fast float 1.000000e+00, %5705
  %5707 = bitcast float %5706 to i32
  %5708 = sub nsw i32 2129859010, %5707
  %5709 = bitcast i32 %5708 to float
  %5710 = fmul fast float %5683, %5659
  %5711 = fmul fast float %5710, %5697
  %5712 = fmul fast float %5686, %5660
  %5713 = fmul fast float %5712, %5703
  %5714 = fmul fast float %5689, %5661
  %5715 = fmul fast float %5714, %5709
  %5716 = call float @dx.op.dot3.f32(i32 55, float %5685, float %5688, float %5691, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5717 = select i1 %269, float 0.000000e+00, float %5685
  %5718 = select i1 %269, float %5716, float %5688
  %5719 = select i1 %269, float 0.000000e+00, float %5691
  %5720 = call float @dx.op.dot3.f32(i32 55, float %5711, float %5713, float %5715, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5721 = select i1 %269, float 0.000000e+00, float %5711
  %5722 = select i1 %269, float %5720, float %5713
  %5723 = select i1 %269, float 0.000000e+00, float %5715
  %5724 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %5725 = fmul fast float %5724, %5717
  %5726 = fmul fast float %5724, %5718
  %5727 = fmul fast float %5719, %5724
  %5728 = fmul fast float %4014, %4014
  %5729 = call float @dx.op.unary.f32(i32 7, float %5728)  ; Saturate(value)
  %5730 = fmul fast float %5600, 9.843750e-01
  %5731 = fmul fast float %5556, 9.843750e-01
  %5732 = fadd fast float %5730, 7.812500e-03
  %5733 = fadd fast float %5731, 7.812500e-03
  %5734 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %44, float %5732, float %5733, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5735 = extractvalue %dx.types.ResRet.f32 %5734, 0
  %5736 = extractvalue %dx.types.ResRet.f32 %5734, 1
  %5737 = extractvalue %dx.types.ResRet.f32 %5734, 2
  %5738 = extractvalue %dx.types.ResRet.f32 %5734, 3
  %5739 = fsub fast float 1.000000e+00, %5729
  %5740 = fsub fast float %5737, %5735
  %5741 = fsub fast float %5738, %5736
  %5742 = fmul fast float %5740, %5739
  %5743 = fmul fast float %5741, %5739
  %5744 = fadd fast float %5742, %5735
  %5745 = fadd fast float %5743, %5736
  %5746 = fmul fast float %5744, %5547
  %5747 = fmul fast float %5744, %5548
  %5748 = fmul fast float %5744, %5598
  %5749 = fadd fast float %5746, %5745
  %5750 = fadd fast float %5747, %5745
  %5751 = fadd fast float %5748, %5745
  %5752 = fcmp fast ogt float %4654, 0.000000e+00
  br i1 %5752, label %5753, label %5779

; <label>:5753                                    ; preds = %5589
  %5754 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %44, float %4654, float %5600, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5755 = extractvalue %dx.types.ResRet.f32 %5754, 0
  %5756 = extractvalue %dx.types.ResRet.f32 %5754, 1
  %5757 = extractvalue %dx.types.ResRet.f32 %5754, 2
  %5758 = fadd fast float %5755, -5.000000e-01
  %5759 = fadd fast float %5756, -5.000000e-01
  %5760 = fadd fast float %5757, -5.000000e-01
  %5761 = fsub fast float 1.000000e+00, %5547
  %5762 = fsub fast float 1.000000e+00, %5548
  %5763 = fsub fast float 1.000000e+00, %5598
  %5764 = fmul fast float %5547, 4.000000e+00
  %5765 = fmul fast float %5764, %5761
  %5766 = fmul fast float %5765, %5758
  %5767 = fmul fast float %5548, 4.000000e+00
  %5768 = fmul fast float %5767, %5762
  %5769 = fmul fast float %5768, %5759
  %5770 = fmul fast float %5598, 4.000000e+00
  %5771 = fmul fast float %5770, %5763
  %5772 = fmul fast float %5771, %5760
  %5773 = fadd fast float %5766, %5749
  %5774 = fadd fast float %5769, %5750
  %5775 = fadd fast float %5772, %5751
  %5776 = call float @dx.op.unary.f32(i32 7, float %5773)  ; Saturate(value)
  %5777 = call float @dx.op.unary.f32(i32 7, float %5774)  ; Saturate(value)
  %5778 = call float @dx.op.unary.f32(i32 7, float %5775)  ; Saturate(value)
  br label %5779

; <label>:5779                                    ; preds = %5753, %5589
  %5780 = phi float [ %5776, %5753 ], [ %5749, %5589 ]
  %5781 = phi float [ %5777, %5753 ], [ %5750, %5589 ]
  %5782 = phi float [ %5778, %5753 ], [ %5751, %5589 ]
  %5783 = call float @dx.op.binary.f32(i32 35, float %5781, float %5782)  ; FMax(a,b)
  %5784 = call float @dx.op.binary.f32(i32 35, float %5780, float %5783)  ; FMax(a,b)
  %5785 = fsub fast float 1.000000e+00, %5784
  %5786 = fmul fast float %5784, %5556
  %5787 = fadd fast float %5786, %5556
  %5788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5789 = extractvalue %dx.types.CBufRet.f32 %5788, 2
  %5790 = extractvalue %dx.types.CBufRet.f32 %5788, 3
  %5791 = fmul fast float %5787, %5789
  %5792 = fadd fast float %5791, %5790
  %5793 = call float @dx.op.unary.f32(i32 7, float %5792)  ; Saturate(value)
  %5794 = fsub fast float 1.000000e+00, %5621
  %5795 = fadd fast float %5794, %5793
  %5796 = call float @dx.op.unary.f32(i32 7, float %5795)  ; Saturate(value)
  %5797 = fcmp fast olt float %5796, 1.000000e+00
  br i1 %5797, label %5798, label %6246

; <label>:5798                                    ; preds = %5779
  %5799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5800 = extractvalue %dx.types.CBufRet.f32 %5799, 2
  %5801 = extractvalue %dx.types.CBufRet.f32 %5799, 3
  %5802 = fmul fast float %5800, %108
  %5803 = fmul fast float %5801, %109
  %5804 = fptoui float %5802 to i32
  %5805 = fptoui float %5803 to i32
  %5806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5807 = extractvalue %dx.types.CBufRet.f32 %5806, 0
  %5808 = extractvalue %dx.types.CBufRet.f32 %5806, 2
  %5809 = extractvalue %dx.types.CBufRet.f32 %5806, 3
  %5810 = fadd fast float %95, -4.000000e+00
  %5811 = call float @dx.op.binary.f32(i32 35, float %5810, float 0.000000e+00)  ; FMax(a,b)
  %5812 = fadd fast float %5811, %5807
  %5813 = fmul fast float %5812, %5808
  %5814 = call float @dx.op.unary.f32(i32 23, float %5813)  ; Log(value)
  %5815 = fmul fast float %5814, %5809
  %5816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5817 = extractvalue %dx.types.CBufRet.f32 %5816, 2
  %5818 = fmul fast float %5815, %5817
  %5819 = call float @dx.op.unary.f32(i32 7, float %5818)  ; Saturate(value)
  %5820 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5821 = extractvalue %dx.types.CBufRet.i32 %5820, 1
  %5822 = add i32 %5821, -1
  %5823 = uitofp i32 %5821 to float
  %5824 = fmul fast float %5823, %5819
  %5825 = fptoui float %5824 to i32
  %5826 = call i32 @dx.op.binary.i32(i32 40, i32 %5825, i32 %5822)  ; UMin(a,b)
  %5827 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5828 = extractvalue %dx.types.CBufRet.i32 %5827, 2
  %5829 = extractvalue %dx.types.CBufRet.i32 %5827, 3
  %5830 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5805, i32 %5828, i32 %5804)  ; UMad(a,b,c)
  %5831 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5826, i32 %5829, i32 %5830)  ; UMad(a,b,c)
  %5832 = call float @dx.op.binary.f32(i32 35, float %95, float 0.000000e+00)  ; FMax(a,b)
  %5833 = fptoui float %5832 to i32
  %5834 = lshr i32 %5833, 5
  %5835 = call i32 @dx.op.binary.i32(i32 40, i32 %5834, i32 8191)  ; UMin(a,b)
  br i1 false, label %5836, label %5843

; <label>:5836                                    ; preds = %5798
  %5837 = fadd fast float 0.000000e+00, %5608
  %5838 = call float @dx.op.dot3.f32(i32 55, float %5606, float %5607, float %5837, float %5606, float %5607, float %5837)  ; Dot3(ax,ay,az,bx,by,bz)
  %5839 = call float @dx.op.unary.f32(i32 25, float %5838)  ; Rsqrt(value)
  %5840 = fmul fast float %5839, %5606
  %5841 = fmul fast float %5839, %5607
  %5842 = fmul fast float %5837, %5839
  br label %5843

; <label>:5843                                    ; preds = %5836, %5798
  %5844 = phi float [ %5840, %5836 ], [ %5606, %5798 ]
  %5845 = phi float [ %5841, %5836 ], [ %5607, %5798 ]
  %5846 = phi float [ %5842, %5836 ], [ %5608, %5798 ]
  %5847 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5848 = extractvalue %dx.types.CBufRet.i32 %5847, 2
  %5849 = add nsw i32 %5848, -1
  %5850 = call i32 @dx.op.binary.i32(i32 37, i32 %5849, i32 0)  ; IMax(a,b)
  %5851 = shl i32 %5835, 2
  %5852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5851, i32 undef)  ; BufferLoad(srv,index,wot)
  %5853 = extractvalue %dx.types.ResRet.i32 %5852, 0
  %5854 = lshr i32 %5853, 16
  %5855 = and i32 %5853, 65535
  %5856 = lshr i32 %5853, 21
  %5857 = lshr i32 %5855, 5
  %5858 = call i32 @dx.op.binary.i32(i32 40, i32 %5857, i32 %5850)  ; UMin(a,b)
  %5859 = icmp ugt i32 %5856, %5858
  br i1 %5859, label %6222, label %5860

; <label>:5860                                    ; preds = %5843
  br label %5861

; <label>:5861                                    ; preds = %6214, %5860
  %5862 = phi float [ %6215, %6214 ], [ 0.000000e+00, %5860 ]
  %5863 = phi float [ %6216, %6214 ], [ 0.000000e+00, %5860 ]
  %5864 = phi float [ %6217, %6214 ], [ 0.000000e+00, %5860 ]
  %5865 = phi float [ %6218, %6214 ], [ 1.000000e+00, %5860 ]
  %5866 = phi i32 [ %6219, %6214 ], [ %5856, %5860 ]
  %5867 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5868 = extractvalue %dx.types.CBufRet.i32 %5867, 2
  %5869 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5831, i32 %5868, i32 %5866)  ; UMad(a,b,c)
  %5870 = shl i32 %5869, 2
  %5871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %5870, i32 undef)  ; BufferLoad(srv,index,wot)
  %5872 = extractvalue %dx.types.ResRet.i32 %5871, 0
  %5873 = shl i32 %5866, 5
  %5874 = sub nsw i32 %5854, %5873
  %5875 = call i32 @dx.op.binary.i32(i32 37, i32 %5874, i32 0)  ; IMax(a,b)
  %5876 = call i32 @dx.op.binary.i32(i32 38, i32 %5875, i32 31)  ; IMin(a,b)
  %5877 = sub nsw i32 1, %5854
  %5878 = add nsw i32 %5877, %5855
  %5879 = call i32 @dx.op.binary.i32(i32 37, i32 %5878, i32 0)  ; IMax(a,b)
  %5880 = call i32 @dx.op.binary.i32(i32 38, i32 %5879, i32 32)  ; IMin(a,b)
  %5881 = and i32 %5880, 31
  %5882 = shl i32 -1, %5881
  %5883 = xor i32 %5882, -1
  %5884 = and i32 %5876, 31
  %5885 = shl i32 %5883, %5884
  %5886 = icmp eq i32 %5880, 32
  %5887 = select i1 %5886, i32 -1, i32 %5885
  %5888 = and i32 %5887, %5872
  %5889 = icmp eq i32 %5888, 0
  br i1 %5889, label %6214, label %5890

; <label>:5890                                    ; preds = %5861
  br label %5891

; <label>:5891                                    ; preds = %5997, %5890
  %5892 = phi float [ %5998, %5997 ], [ %5862, %5890 ]
  %5893 = phi float [ %5999, %5997 ], [ %5863, %5890 ]
  %5894 = phi float [ %6000, %5997 ], [ %5864, %5890 ]
  %5895 = phi float [ %6001, %5997 ], [ %5865, %5890 ]
  %5896 = phi i32 [ %5901, %5997 ], [ %5888, %5890 ]
  %5897 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5896)  ; FirstbitLo(value)
  %5898 = add i32 %5897, %5873
  %5899 = and i32 %5897, 31
  %5900 = shl i32 1, %5899
  %5901 = xor i32 %5900, %5896
  %5902 = mul i32 %5898, 72
  %5903 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5902, i32 undef)  ; BufferLoad(srv,index,wot)
  %5904 = extractvalue %dx.types.ResRet.f32 %5903, 0
  %5905 = extractvalue %dx.types.ResRet.f32 %5903, 1
  %5906 = extractvalue %dx.types.ResRet.f32 %5903, 2
  %5907 = add i32 %5902, 12
  %5908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %5907, i32 undef)  ; BufferLoad(srv,index,wot)
  %5909 = extractvalue %dx.types.ResRet.i32 %5908, 0
  %5910 = add i32 %5902, 16
  %5911 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5910, i32 undef)  ; BufferLoad(srv,index,wot)
  %5912 = extractvalue %dx.types.ResRet.f32 %5911, 0
  %5913 = extractvalue %dx.types.ResRet.f32 %5911, 1
  %5914 = extractvalue %dx.types.ResRet.f32 %5911, 2
  %5915 = add i32 %5902, 28
  %5916 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5915, i32 undef)  ; BufferLoad(srv,index,wot)
  %5917 = extractvalue %dx.types.ResRet.f32 %5916, 0
  %5918 = add i32 %5902, 32
  %5919 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5918, i32 undef)  ; BufferLoad(srv,index,wot)
  %5920 = extractvalue %dx.types.ResRet.f32 %5919, 0
  %5921 = extractvalue %dx.types.ResRet.f32 %5919, 1
  %5922 = extractvalue %dx.types.ResRet.f32 %5919, 2
  %5923 = extractvalue %dx.types.ResRet.f32 %5919, 3
  %5924 = add i32 %5902, 48
  %5925 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5924, i32 undef)  ; BufferLoad(srv,index,wot)
  %5926 = extractvalue %dx.types.ResRet.f32 %5925, 0
  %5927 = extractvalue %dx.types.ResRet.f32 %5925, 1
  %5928 = add i32 %5902, 56
  %5929 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5928, i32 undef)  ; BufferLoad(srv,index,wot)
  %5930 = extractvalue %dx.types.ResRet.f32 %5929, 0
  %5931 = extractvalue %dx.types.ResRet.f32 %5929, 1
  %5932 = add i32 %5902, 64
  %5933 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5932, i32 undef)  ; BufferLoad(srv,index,wot)
  %5934 = extractvalue %dx.types.ResRet.f32 %5933, 0
  %5935 = extractvalue %dx.types.ResRet.f32 %5933, 1
  %5936 = mul i32 %5898, 60
  %5937 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5936, i32 undef)  ; BufferLoad(srv,index,wot)
  %5938 = extractvalue %dx.types.ResRet.f32 %5937, 0
  %5939 = extractvalue %dx.types.ResRet.f32 %5937, 1
  %5940 = extractvalue %dx.types.ResRet.f32 %5937, 2
  %5941 = add i32 %5936, 12
  %5942 = add i32 %5936, 48
  %5943 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5942, i32 undef)  ; BufferLoad(srv,index,wot)
  %5944 = extractvalue %dx.types.ResRet.f32 %5943, 0
  %5945 = extractvalue %dx.types.ResRet.f32 %5943, 1
  %5946 = extractvalue %dx.types.ResRet.f32 %5943, 2
  %5947 = and i32 %5909, 32767
  %5948 = bitcast float %5904 to i32
  %5949 = icmp eq i32 %5948, -1
  %5950 = bitcast float %5905 to i32
  %5951 = and i32 %5909, 32768
  %5952 = icmp ne i32 %5951, 0
  %5953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5954 = extractvalue %dx.types.CBufRet.f32 %5953, 0
  %5955 = extractvalue %dx.types.CBufRet.f32 %5953, 1
  %5956 = extractvalue %dx.types.CBufRet.f32 %5953, 2
  %5957 = fsub fast float %5938, %5954
  %5958 = fsub fast float %5939, %5955
  %5959 = fsub fast float %5940, %5956
  %5960 = fsub fast float %195, %5957
  %5961 = fsub fast float %196, %5958
  %5962 = fsub fast float %197, %5959
  %5963 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5941, i32 undef)  ; BufferLoad(srv,index,wot)
  %5964 = extractvalue %dx.types.ResRet.f32 %5963, 0
  %5965 = extractvalue %dx.types.ResRet.f32 %5963, 1
  %5966 = extractvalue %dx.types.ResRet.f32 %5963, 2
  %5967 = call float @dx.op.dot3.f32(i32 55, float %5960, float %5961, float %5962, float %5964, float %5965, float %5966)  ; Dot3(ax,ay,az,bx,by,bz)
  %5968 = add i32 %5936, 24
  %5969 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5968, i32 undef)  ; BufferLoad(srv,index,wot)
  %5970 = extractvalue %dx.types.ResRet.f32 %5969, 0
  %5971 = extractvalue %dx.types.ResRet.f32 %5969, 1
  %5972 = extractvalue %dx.types.ResRet.f32 %5969, 2
  %5973 = call float @dx.op.dot3.f32(i32 55, float %5960, float %5961, float %5962, float %5970, float %5971, float %5972)  ; Dot3(ax,ay,az,bx,by,bz)
  %5974 = add i32 %5936, 36
  %5975 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5974, i32 undef)  ; BufferLoad(srv,index,wot)
  %5976 = extractvalue %dx.types.ResRet.f32 %5975, 0
  %5977 = extractvalue %dx.types.ResRet.f32 %5975, 1
  %5978 = extractvalue %dx.types.ResRet.f32 %5975, 2
  %5979 = call float @dx.op.dot3.f32(i32 55, float %5960, float %5961, float %5962, float %5976, float %5977, float %5978)  ; Dot3(ax,ay,az,bx,by,bz)
  %5980 = call float @dx.op.unary.f32(i32 6, float %5967)  ; FAbs(value)
  %5981 = call float @dx.op.unary.f32(i32 6, float %5973)  ; FAbs(value)
  %5982 = call float @dx.op.unary.f32(i32 6, float %5979)  ; FAbs(value)
  %5983 = fsub fast float %5944, %5980
  %5984 = fsub fast float %5945, %5981
  %5985 = fsub fast float %5946, %5982
  %5986 = fmul fast float %5983, %5912
  %5987 = fmul fast float %5984, %5913
  %5988 = fmul fast float %5985, %5914
  %5989 = call float @dx.op.binary.f32(i32 36, float %5987, float %5988)  ; FMin(a,b)
  %5990 = call float @dx.op.binary.f32(i32 36, float %5986, float %5989)  ; FMin(a,b)
  %5991 = call float @dx.op.unary.f32(i32 7, float %5990)  ; Saturate(value)
  %5992 = call float @dx.op.binary.f32(i32 36, float %5895, float %5991)  ; FMin(a,b)
  %5993 = uitofp i1 %5952 to float
  %5994 = fsub fast float 1.000000e+00, %5993
  %5995 = fmul fast float %5992, %5994
  %5996 = fcmp fast ogt float %5995, 0.000000e+00
  br i1 %5996, label %6003, label %5997

; <label>:5997                                    ; preds = %6145, %5891
  %5998 = phi float [ %6209, %6145 ], [ %5892, %5891 ]
  %5999 = phi float [ %6210, %6145 ], [ %5893, %5891 ]
  %6000 = phi float [ %6211, %6145 ], [ %5894, %5891 ]
  %6001 = phi float [ %6212, %6145 ], [ %5895, %5891 ]
  %6002 = icmp eq i32 %5896, %5900
  br i1 %6002, label %6213, label %5891

; <label>:6003                                    ; preds = %5891
  br i1 %5949, label %6061, label %6004

; <label>:6004                                    ; preds = %6003
  %6005 = fsub fast float -0.000000e+00, %5964
  %6006 = fsub fast float -0.000000e+00, %5965
  %6007 = fsub fast float -0.000000e+00, %5966
  %6008 = call float @dx.op.dot3.f32(i32 55, float %5844, float %5845, float %5846, float %6005, float %6006, float %6007)  ; Dot3(ax,ay,az,bx,by,bz)
  %6009 = fsub fast float -0.000000e+00, %6008
  %6010 = call float @dx.op.dot3.f32(i32 55, float %5960, float %5961, float %5962, float %6005, float %6006, float %6007)  ; Dot3(ax,ay,az,bx,by,bz)
  %6011 = fadd fast float %6010, %5927
  %6012 = fadd fast float %5926, %6010
  %6013 = fsub fast float -0.000000e+00, %6012
  %6014 = fcmp ogt float %6008, -0.000000e+00
  %6015 = select i1 %6014, float %6013, float %6011
  %6016 = call float @dx.op.unary.f32(i32 6, float %6009)  ; FAbs(value)
  %6017 = fdiv fast float 1.000000e+00, %6016
  %6018 = fmul fast float %6015, %6017
  %6019 = call float @dx.op.binary.f32(i32 35, float %6018, float 0.000000e+00)  ; FMax(a,b)
  %6020 = fsub fast float -0.000000e+00, %5970
  %6021 = fsub fast float -0.000000e+00, %5971
  %6022 = fsub fast float -0.000000e+00, %5972
  %6023 = call float @dx.op.dot3.f32(i32 55, float %5844, float %5845, float %5846, float %6020, float %6021, float %6022)  ; Dot3(ax,ay,az,bx,by,bz)
  %6024 = fsub fast float -0.000000e+00, %6023
  %6025 = call float @dx.op.dot3.f32(i32 55, float %5960, float %5961, float %5962, float %6020, float %6021, float %6022)  ; Dot3(ax,ay,az,bx,by,bz)
  %6026 = fadd fast float %6025, %5931
  %6027 = fadd fast float %5930, %6025
  %6028 = fsub fast float -0.000000e+00, %6027
  %6029 = fcmp ogt float %6023, -0.000000e+00
  %6030 = select i1 %6029, float %6028, float %6026
  %6031 = call float @dx.op.unary.f32(i32 6, float %6024)  ; FAbs(value)
  %6032 = fdiv fast float 1.000000e+00, %6031
  %6033 = fmul fast float %6030, %6032
  %6034 = call float @dx.op.binary.f32(i32 35, float %6033, float 0.000000e+00)  ; FMax(a,b)
  %6035 = fsub fast float -0.000000e+00, %5976
  %6036 = fsub fast float -0.000000e+00, %5977
  %6037 = fsub fast float -0.000000e+00, %5978
  %6038 = call float @dx.op.dot3.f32(i32 55, float %5844, float %5845, float %5846, float %6035, float %6036, float %6037)  ; Dot3(ax,ay,az,bx,by,bz)
  %6039 = fsub fast float -0.000000e+00, %6038
  %6040 = call float @dx.op.dot3.f32(i32 55, float %5960, float %5961, float %5962, float %6035, float %6036, float %6037)  ; Dot3(ax,ay,az,bx,by,bz)
  %6041 = fadd fast float %6040, %5935
  %6042 = fadd fast float %5934, %6040
  %6043 = fsub fast float -0.000000e+00, %6042
  %6044 = fcmp ogt float %6038, -0.000000e+00
  %6045 = select i1 %6044, float %6043, float %6041
  %6046 = call float @dx.op.unary.f32(i32 6, float %6039)  ; FAbs(value)
  %6047 = fdiv fast float 1.000000e+00, %6046
  %6048 = fmul fast float %6045, %6047
  %6049 = call float @dx.op.binary.f32(i32 35, float %6048, float 0.000000e+00)  ; FMax(a,b)
  %6050 = call float @dx.op.binary.f32(i32 36, float %6034, float %6049)  ; FMin(a,b)
  %6051 = call float @dx.op.binary.f32(i32 36, float %6019, float %6050)  ; FMin(a,b)
  %6052 = fmul fast float %6051, %5844
  %6053 = fmul fast float %6051, %5845
  %6054 = fmul fast float %6051, %5846
  %6055 = fadd fast float %6052, %195
  %6056 = fadd fast float %6053, %196
  %6057 = fadd fast float %6054, %197
  %6058 = fsub fast float %6055, %5904
  %6059 = fsub fast float %6056, %5905
  %6060 = fsub fast float %6057, %5906
  br label %6068

; <label>:6061                                    ; preds = %6003
  %6062 = fmul fast float %5844, 8.096000e+03
  %6063 = fmul fast float %5845, 8.096000e+03
  %6064 = fmul fast float %5846, 8.096000e+03
  %6065 = fadd fast float %6062, %195
  %6066 = fadd fast float %6063, %196
  %6067 = fadd fast float %6064, %197
  br label %6068

; <label>:6068                                    ; preds = %6061, %6004
  %6069 = phi float [ %5844, %6061 ], [ %6058, %6004 ]
  %6070 = phi float [ %5845, %6061 ], [ %6059, %6004 ]
  %6071 = phi float [ %5846, %6061 ], [ %6060, %6004 ]
  %6072 = phi float [ %6065, %6061 ], [ %6055, %6004 ]
  %6073 = phi float [ %6066, %6061 ], [ %6056, %6004 ]
  %6074 = phi float [ %6067, %6061 ], [ %6057, %6004 ]
  %6075 = fcmp fast olt float %5923, 1.000000e+00
  br i1 %6075, label %6076, label %6107, !dx.controlflow.hints !93

; <label>:6076                                    ; preds = %6068
  %6077 = fmul fast float %6071, %5921
  %6078 = fmul fast float %6070, %5922
  %6079 = fsub fast float %6077, %6078
  %6080 = fmul fast float %6069, %5922
  %6081 = fmul fast float %6071, %5920
  %6082 = fsub fast float %6080, %6081
  %6083 = fmul fast float %6070, %5920
  %6084 = fmul fast float %6069, %5921
  %6085 = fsub fast float %6083, %6084
  %6086 = fmul fast float %6079, 2.000000e+00
  %6087 = fmul fast float %6082, 2.000000e+00
  %6088 = fmul fast float %6085, 2.000000e+00
  %6089 = fmul fast float %6086, %5923
  %6090 = fmul fast float %6087, %5923
  %6091 = fmul fast float %6088, %5923
  %6092 = fmul fast float %6088, %5921
  %6093 = fmul fast float %6087, %5922
  %6094 = fmul fast float %6086, %5922
  %6095 = fmul fast float %6088, %5920
  %6096 = fmul fast float %6087, %5920
  %6097 = fmul fast float %6086, %5921
  %6098 = fadd fast float %6092, %6069
  %6099 = fadd fast float %6098, %6089
  %6100 = fsub fast float %6099, %6093
  %6101 = fsub fast float %6070, %6095
  %6102 = fadd fast float %6101, %6090
  %6103 = fadd fast float %6102, %6094
  %6104 = fadd fast float %6091, %6071
  %6105 = fsub fast float %6104, %6097
  %6106 = fadd fast float %6105, %6096
  br label %6107

; <label>:6107                                    ; preds = %6076, %6068
  %6108 = phi float [ %6100, %6076 ], [ %6069, %6068 ]
  %6109 = phi float [ %6103, %6076 ], [ %6070, %6068 ]
  %6110 = phi float [ %6106, %6076 ], [ %6071, %6068 ]
  br i1 %5949, label %6142, label %6111

; <label>:6111                                    ; preds = %6107
  %6112 = fmul fast float %5556, 0x400187C840000000
  %6113 = fadd fast float %6112, 0xC00EFC2120000000
  %6114 = fmul fast float %6113, %5556
  %6115 = fadd fast float %6114, 0x3FE5D16340000000
  %6116 = fmul fast float %6115, %5556
  %6117 = fadd fast float %6116, 1.000000e+00
  %6118 = call float @dx.op.unary.f32(i32 7, float %6117)  ; Saturate(value)
  %6119 = fsub fast float %6072, %195
  %6120 = fsub fast float %6073, %196
  %6121 = fsub fast float %6074, %197
  %6122 = fsub fast float %6072, %5904
  %6123 = fsub fast float %6073, %5905
  %6124 = fsub fast float %6074, %5906
  %6125 = call float @dx.op.dot3.f32(i32 55, float %6119, float %6120, float %6121, float %6119, float %6120, float %6121)  ; Dot3(ax,ay,az,bx,by,bz)
  %6126 = call float @dx.op.dot3.f32(i32 55, float %6122, float %6123, float %6124, float %6122, float %6123, float %6124)  ; Dot3(ax,ay,az,bx,by,bz)
  %6127 = fadd fast float %6126, 0x3EE4F8B580000000
  %6128 = fdiv fast float %6125, %6127
  %6129 = bitcast float %6128 to i32
  %6130 = ashr i32 %6129, 1
  %6131 = add nsw i32 %6130, 532487669
  %6132 = bitcast i32 %6131 to float
  %6133 = fmul fast float %6132, %6118
  %6134 = call float @dx.op.unary.f32(i32 7, float %6133)  ; Saturate(value)
  %6135 = fmul fast float %6134, 0x4009981AE0000000
  %6136 = fsub fast float 0x40111BBD80000000, %6135
  %6137 = fmul fast float %6136, %6134
  %6138 = fadd fast float %6137, 0xC0009F6020000000
  %6139 = fmul fast float %6138, %6134
  %6140 = fadd fast float %6139, 1.000000e+00
  %6141 = call float @dx.op.unary.f32(i32 7, float %6140)  ; Saturate(value)
  br label %6145

; <label>:6142                                    ; preds = %6107
  %6143 = icmp ne i32 %5950, -1
  %6144 = zext i1 %6143 to i32
  br label %6145

; <label>:6145                                    ; preds = %6142, %6111
  %6146 = phi float [ %5556, %6142 ], [ %6141, %6111 ]
  %6147 = phi i32 [ %6144, %6142 ], [ 0, %6111 ]
  %6148 = fmul float %6146, 5.000000e+00
  %6149 = fsub float 5.000000e+00, %6148
  %6150 = icmp ne i32 %6147, 0
  %6151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6152 = extractvalue %dx.types.CBufRet.f32 %6151, 3
  %6153 = fadd fast float %6152, %6149
  %6154 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6153)  ; FMax(a,b)
  %6155 = call float @dx.op.unary.f32(i32 6, float %6108)  ; FAbs(value)
  %6156 = call float @dx.op.unary.f32(i32 6, float %6109)  ; FAbs(value)
  %6157 = fadd fast float %6156, %6155
  %6158 = call float @dx.op.unary.f32(i32 6, float %6110)  ; FAbs(value)
  %6159 = fadd fast float %6157, %6158
  %6160 = fcmp fast oeq float %6159, 0.000000e+00
  %6161 = fdiv fast float 1.000000e+00, %6159
  %6162 = select i1 %6160, float 1.000000e+00, float %6161
  %6163 = fmul fast float %6162, %6108
  %6164 = fmul fast float %6162, %6109
  %6165 = call float @dx.op.unary.f32(i32 6, float %6164)  ; FAbs(value)
  %6166 = call float @dx.op.unary.f32(i32 6, float %6163)  ; FAbs(value)
  %6167 = fsub fast float 1.000000e+00, %6165
  %6168 = fsub fast float 1.000000e+00, %6166
  %6169 = fcmp fast oge float %6163, 0.000000e+00
  %6170 = fcmp fast oge float %6164, 0.000000e+00
  %6171 = select i1 %6169, float 1.000000e+00, float -1.000000e+00
  %6172 = select i1 %6170, float 1.000000e+00, float -1.000000e+00
  %6173 = fcmp fast ole float %6110, 0.000000e+00
  %6174 = fmul fast float %6171, %6167
  %6175 = fmul fast float %6172, %6168
  %6176 = select i1 %6173, float %6174, float %6163
  %6177 = select i1 %6173, float %6175, float %6164
  %6178 = fmul fast float %6176, 5.000000e-01
  %6179 = fmul fast float %6177, 5.000000e-01
  %6180 = fadd fast float %6178, 5.000000e-01
  %6181 = fadd fast float %6179, 5.000000e-01
  %6182 = uitofp i32 %5947 to float
  %6183 = call float @dx.op.binary.f32(i32 36, float %6154, float 3.000000e+00)  ; FMin(a,b)
  %6184 = fadd fast float %6183, 2.000000e+00
  %6185 = call float @dx.op.unary.f32(i32 21, float %6184)  ; Exp(value)
  %6186 = extractvalue %dx.types.CBufRet.f32 %6151, 1
  %6187 = fmul fast float %6186, %6185
  %6188 = fmul fast float %6187, 2.000000e+00
  %6189 = fsub fast float 1.000000e+00, %6188
  %6190 = fmul fast float %6180, %6189
  %6191 = fmul fast float %6181, %6189
  %6192 = fadd fast float %6190, %6187
  %6193 = fadd fast float %6191, %6187
  %6194 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %42, float %6192, float %6193, float %6182, float undef, i32 0, i32 0, i32 undef, float %6154)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6195 = extractvalue %dx.types.ResRet.f32 %6194, 0
  %6196 = extractvalue %dx.types.ResRet.f32 %6194, 1
  %6197 = extractvalue %dx.types.ResRet.f32 %6194, 2
  %6198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6199 = extractvalue %dx.types.CBufRet.f32 %6198, 3
  %6200 = fmul fast float %6199, %5917
  %6201 = call float @dx.op.binary.f32(i32 36, float %5662, float %6200)  ; FMin(a,b)
  %6202 = select i1 %6150, float %6201, float %6200
  %6203 = fmul fast float %6195, %5995
  %6204 = fmul fast float %6203, %6202
  %6205 = fmul fast float %6196, %5995
  %6206 = fmul fast float %6205, %6202
  %6207 = fmul fast float %6197, %5995
  %6208 = fmul fast float %6207, %6202
  %6209 = fadd fast float %6204, %5892
  %6210 = fadd fast float %6206, %5893
  %6211 = fadd fast float %6208, %5894
  %6212 = fsub fast float %5895, %5995
  br label %5997

; <label>:6213                                    ; preds = %5997
  br label %6214

; <label>:6214                                    ; preds = %6213, %5861
  %6215 = phi float [ %5862, %5861 ], [ %5998, %6213 ]
  %6216 = phi float [ %5863, %5861 ], [ %5999, %6213 ]
  %6217 = phi float [ %5864, %5861 ], [ %6000, %6213 ]
  %6218 = phi float [ %5865, %5861 ], [ %6001, %6213 ]
  %6219 = add i32 %5866, 1
  %6220 = icmp ugt i32 %6219, %5858
  br i1 %6220, label %6221, label %5861, !llvm.loop !94

; <label>:6221                                    ; preds = %6214
  br label %6222

; <label>:6222                                    ; preds = %6221, %5843
  %6223 = phi float [ 0.000000e+00, %5843 ], [ %6215, %6221 ]
  %6224 = phi float [ 0.000000e+00, %5843 ], [ %6216, %6221 ]
  %6225 = phi float [ 0.000000e+00, %5843 ], [ %6217, %6221 ]
  %6226 = call float @dx.op.dot3.f32(i32 55, float %6223, float %6224, float %6225, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6227 = select i1 %269, float 0.000000e+00, float %6223
  %6228 = select i1 %269, float %6226, float %6224
  %6229 = select i1 %269, float 0.000000e+00, float %6225
  %6230 = fcmp fast olt float %5796, 0.000000e+00
  %6231 = call float @dx.op.unary.f32(i32 6, float %5796)  ; FAbs(value)
  %6232 = fmul fast float %6231, %5721
  %6233 = fmul fast float %6231, %5722
  %6234 = fmul fast float %6231, %5723
  %6235 = select i1 %6230, float %5721, float %6232
  %6236 = select i1 %6230, float %5722, float %6233
  %6237 = select i1 %6230, float %5723, float %6234
  %6238 = fsub fast float 1.000000e+00, %6231
  %6239 = call float @dx.op.unary.f32(i32 7, float %6238)  ; Saturate(value)
  %6240 = fmul fast float %6239, %6227
  %6241 = fmul fast float %6239, %6228
  %6242 = fmul fast float %6239, %6229
  %6243 = fadd fast float %6235, %6240
  %6244 = fadd fast float %6236, %6241
  %6245 = fadd fast float %6237, %6242
  br label %6246

; <label>:6246                                    ; preds = %6222, %5779
  %6247 = phi float [ %6243, %6222 ], [ %5721, %5779 ]
  %6248 = phi float [ %6244, %6222 ], [ %5722, %5779 ]
  %6249 = phi float [ %6245, %6222 ], [ %5723, %5779 ]
  %6250 = fmul fast float %195, %195
  %6251 = fmul fast float %196, %196
  %6252 = fadd fast float %6251, %6250
  %6253 = fmul fast float %197, %197
  %6254 = fadd fast float %6252, %6253
  %6255 = call float @dx.op.unary.f32(i32 24, float %6254)  ; Sqrt(value)
  %6256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6257 = extractvalue %dx.types.CBufRet.f32 %6256, 1
  %6258 = fsub fast float %6255, %6257
  %6259 = extractvalue %dx.types.CBufRet.f32 %6256, 2
  %6260 = fmul fast float %6258, %6259
  %6261 = call float @dx.op.unary.f32(i32 7, float %6260)  ; Saturate(value)
  %6262 = extractvalue %dx.types.CBufRet.f32 %6256, 0
  %6263 = extractvalue %dx.types.CBufRet.f32 %6256, 3
  %6264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %6265 = extractvalue %dx.types.ResRet.i32 %6264, 0
  %6266 = and i32 %6265, 4194304
  %6267 = icmp ne i32 %6266, 0
  %6268 = and i32 %6265, 8388608
  %6269 = icmp ne i32 %6268, 0
  %6270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %6271 = extractvalue %dx.types.CBufRet.f32 %6270, 0
  %6272 = extractvalue %dx.types.CBufRet.f32 %6270, 1
  %6273 = extractvalue %dx.types.CBufRet.f32 %6270, 2
  %6274 = extractvalue %dx.types.CBufRet.f32 %6270, 3
  %6275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %6276 = extractvalue %dx.types.CBufRet.f32 %6275, 0
  %6277 = extractvalue %dx.types.CBufRet.f32 %6275, 1
  %6278 = extractvalue %dx.types.CBufRet.f32 %6275, 2
  %6279 = extractvalue %dx.types.CBufRet.f32 %6275, 3
  %6280 = select i1 %6267, float %6271, float %6276
  %6281 = select i1 %6267, float %6272, float %6277
  %6282 = select i1 %6267, float %6273, float %6278
  %6283 = select i1 %6267, float %6274, float %6279
  %6284 = select i1 %6269, float 0.000000e+00, float %6283
  %6285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %6286 = extractvalue %dx.types.CBufRet.f32 %6285, 0
  %6287 = extractvalue %dx.types.CBufRet.f32 %6285, 1
  %6288 = select i1 %6267, float %6286, float %6287
  %6289 = select i1 %6269, float 0.000000e+00, float %6288
  %6290 = extractvalue %dx.types.CBufRet.f32 %6285, 2
  %6291 = extractvalue %dx.types.CBufRet.f32 %6285, 3
  %6292 = select i1 %6267, float %6290, float %6291
  %6293 = select i1 %6269, float 0.000000e+00, float %6292
  %6294 = fmul fast float %6261, %57
  %6295 = fmul fast float %6294, %6262
  %6296 = fmul fast float %6295, %6289
  %6297 = fmul fast float %6294, %6263
  %6298 = fmul fast float %6297, %6293
  %6299 = fadd fast float %6298, 1.000000e+00
  %6300 = fmul fast float %5785, %5725
  %6301 = fmul fast float %6300, %6299
  %6302 = fmul fast float %5785, %5726
  %6303 = fmul fast float %6302, %6299
  %6304 = fmul fast float %5785, %5727
  %6305 = fmul fast float %6304, %6299
  %6306 = call float @dx.op.dot3.f32(i32 55, float %5550, float %5551, float %5552, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6307 = fcmp fast ogt float %6306, 0x3E7FF19E20000000
  %6308 = fdiv fast float 1.000000e+00, %6306
  %6309 = select i1 %6307, float %6308, float 0.000000e+00
  %6310 = fmul fast float %6309, %5550
  %6311 = fmul fast float %6309, %5551
  %6312 = fmul fast float %6309, %5552
  %6313 = fadd fast float %6310, -1.000000e+00
  %6314 = fadd fast float %6311, -1.000000e+00
  %6315 = fadd fast float %6312, -1.000000e+00
  %6316 = fmul fast float %6313, 5.000000e-01
  %6317 = fmul fast float %6314, 5.000000e-01
  %6318 = fmul fast float %6315, 5.000000e-01
  %6319 = fadd fast float %6316, 1.000000e+00
  %6320 = fadd fast float %6317, 1.000000e+00
  %6321 = fadd fast float %6318, 1.000000e+00
  %6322 = fadd fast float %6296, %4655
  %6323 = fsub fast float %6280, %6319
  %6324 = fsub fast float %6281, %6320
  %6325 = fsub fast float %6282, %6321
  %6326 = fmul fast float %6323, %6284
  %6327 = fmul fast float %6324, %6284
  %6328 = fmul fast float %6325, %6284
  %6329 = fadd fast float %6326, %6319
  %6330 = fadd fast float %6327, %6320
  %6331 = fadd fast float %6328, %6321
  %6332 = call float @dx.op.binary.f32(i32 35, float %5600, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6333 = fdiv fast float %4014, %6332
  %6334 = fcmp fast olt float %4681, 1.270000e+02
  %6335 = fcmp fast olt float %4682, 1.270000e+02
  %6336 = fcmp fast olt float %4683, 1.270000e+02
  %6337 = fmul fast float %4681, 0xBFF7154760000000
  %6338 = fmul fast float %6337, %6333
  %6339 = fmul fast float %4682, 0xBFF7154760000000
  %6340 = fmul fast float %6339, %6333
  %6341 = fmul fast float %4683, 0xBFF7154760000000
  %6342 = fmul fast float %6341, %6333
  %6343 = call float @dx.op.unary.f32(i32 21, float %6338)  ; Exp(value)
  %6344 = call float @dx.op.unary.f32(i32 21, float %6340)  ; Exp(value)
  %6345 = call float @dx.op.unary.f32(i32 21, float %6342)  ; Exp(value)
  %6346 = call float @dx.op.unary.f32(i32 7, float %6343)  ; Saturate(value)
  %6347 = call float @dx.op.unary.f32(i32 7, float %6344)  ; Saturate(value)
  %6348 = call float @dx.op.unary.f32(i32 7, float %6345)  ; Saturate(value)
  %6349 = select i1 %6334, float %6346, float 0.000000e+00
  %6350 = select i1 %6335, float %6347, float 0.000000e+00
  %6351 = select i1 %6336, float %6348, float 0.000000e+00
  %6352 = fmul fast float %6349, %5785
  %6353 = fmul fast float %6350, %5785
  %6354 = fmul fast float %6351, %5785
  %6355 = fadd fast float %6352, -1.000000e+00
  %6356 = fadd fast float %6353, -1.000000e+00
  %6357 = fadd fast float %6354, -1.000000e+00
  %6358 = fmul fast float %6247, %5780
  %6359 = fmul fast float %6248, %5781
  %6360 = fmul fast float %6249, %5782
  %6361 = fsub fast float 1.000000e+00, %5600
  %6362 = bitcast float %6361 to i32
  %6363 = sitofp i32 %6362 to float
  %6364 = fmul fast float %6363, 5.000000e+00
  %6365 = fadd fast float %6364, 0xC1EFBF8940000000
  %6366 = fptosi float %6365 to i32
  %6367 = bitcast i32 %6366 to float
  %6368 = fmul fast float %6322, %6367
  %6369 = fmul fast float %6300, %6368
  %6370 = fmul fast float %6369, %6329
  %6371 = fmul fast float %6302, %6368
  %6372 = fmul fast float %6371, %6330
  %6373 = fmul fast float %6304, %6368
  %6374 = fmul fast float %6373, %6331
  %6375 = fmul fast float %6301, %4651
  %6376 = fmul fast float %6303, %4651
  %6377 = fmul fast float %6305, %4651
  %6378 = fadd fast float %6358, %4641
  %6379 = fadd fast float %6378, %6370
  %6380 = fmul fast float %6379, %4651
  %6381 = fadd fast float %6359, %4642
  %6382 = fadd fast float %6381, %6372
  %6383 = fmul fast float %6382, %4651
  %6384 = fadd fast float %6360, %4643
  %6385 = fadd fast float %6384, %6374
  %6386 = fmul fast float %6385, %4651
  %6387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6388 = extractvalue %dx.types.CBufRet.f32 %6387, 3
  %6389 = fcmp fast oeq float %6388, 0.000000e+00
  br i1 %6389, label %8030, label %6390

; <label>:6390                                    ; preds = %6246
  %6391 = extractvalue %dx.types.CBufRet.f32 %6387, 0
  %6392 = extractvalue %dx.types.CBufRet.f32 %6387, 1
  %6393 = extractvalue %dx.types.CBufRet.f32 %6387, 2
  %6394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6395 = extractvalue %dx.types.CBufRet.f32 %6394, 0
  %6396 = extractvalue %dx.types.CBufRet.f32 %6394, 1
  %6397 = extractvalue %dx.types.CBufRet.f32 %6394, 2
  %6398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6399 = extractvalue %dx.types.CBufRet.f32 %6398, 0
  %6400 = extractvalue %dx.types.CBufRet.f32 %6398, 1
  %6401 = call float @dx.op.dot3.f32(i32 55, float %6395, float %6396, float %6397, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6402 = select i1 %269, float %6399, float %6395
  %6403 = select i1 %269, float %6401, float %6396
  %6404 = select i1 %269, float %6400, float %6397
  %6405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6406 = extractvalue %dx.types.CBufRet.f32 %6405, 2
  %6407 = fmul fast float %6406, %115
  %6408 = fmul fast float %6406, %116
  %6409 = fmul fast float %6406, %117
  %6410 = fadd fast float %6407, %195
  %6411 = fadd fast float %6408, %196
  %6412 = fadd fast float %6409, %197
  %6413 = fcmp fast olt float %6388, 0.000000e+00
  br i1 %6413, label %7671, label %6414

; <label>:6414                                    ; preds = %6390
  %6415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6416 = extractvalue %dx.types.CBufRet.f32 %6415, 0
  %6417 = extractvalue %dx.types.CBufRet.f32 %6415, 1
  %6418 = extractvalue %dx.types.CBufRet.f32 %6415, 2
  %6419 = extractvalue %dx.types.CBufRet.f32 %6415, 3
  %6420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6421 = extractvalue %dx.types.CBufRet.f32 %6420, 0
  %6422 = extractvalue %dx.types.CBufRet.f32 %6420, 1
  %6423 = extractvalue %dx.types.CBufRet.f32 %6420, 2
  %6424 = extractvalue %dx.types.CBufRet.f32 %6420, 3
  %6425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6426 = extractvalue %dx.types.CBufRet.f32 %6425, 0
  %6427 = extractvalue %dx.types.CBufRet.f32 %6425, 1
  %6428 = extractvalue %dx.types.CBufRet.f32 %6425, 2
  %6429 = extractvalue %dx.types.CBufRet.f32 %6425, 3
  %6430 = fmul fast float %6416, %6410
  %6431 = call float @dx.op.tertiary.f32(i32 46, float %6411, float %6417, float %6430)  ; FMad(a,b,c)
  %6432 = call float @dx.op.tertiary.f32(i32 46, float %6412, float %6418, float %6431)  ; FMad(a,b,c)
  %6433 = fadd fast float %6432, %6419
  %6434 = fmul fast float %6421, %6410
  %6435 = call float @dx.op.tertiary.f32(i32 46, float %6411, float %6422, float %6434)  ; FMad(a,b,c)
  %6436 = call float @dx.op.tertiary.f32(i32 46, float %6412, float %6423, float %6435)  ; FMad(a,b,c)
  %6437 = fadd fast float %6436, %6424
  %6438 = fmul fast float %6426, %6410
  %6439 = call float @dx.op.tertiary.f32(i32 46, float %6411, float %6427, float %6438)  ; FMad(a,b,c)
  %6440 = call float @dx.op.tertiary.f32(i32 46, float %6412, float %6428, float %6439)  ; FMad(a,b,c)
  %6441 = fadd fast float %6440, %6429
  %6442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6443 = extractvalue %dx.types.CBufRet.f32 %6442, 0
  %6444 = fcmp fast une float %6443, 0.000000e+00
  %6445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6446 = extractvalue %dx.types.CBufRet.f32 %6445, 0
  %6447 = extractvalue %dx.types.CBufRet.f32 %6445, 1
  %6448 = extractvalue %dx.types.CBufRet.f32 %6445, 3
  %6449 = fmul fast float %6448, %6433
  %6450 = fmul fast float %6448, %6437
  %6451 = fadd fast float %6449, %6446
  %6452 = fadd fast float %6450, %6447
  %6453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6454 = extractvalue %dx.types.CBufRet.f32 %6453, 0
  %6455 = extractvalue %dx.types.CBufRet.f32 %6453, 1
  %6456 = extractvalue %dx.types.CBufRet.f32 %6453, 3
  %6457 = fmul fast float %6456, %6433
  %6458 = fmul fast float %6456, %6437
  %6459 = fadd fast float %6457, %6454
  %6460 = fadd fast float %6458, %6455
  %6461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6462 = extractvalue %dx.types.CBufRet.f32 %6461, 1
  %6463 = fsub fast float %6462, %6441
  %6464 = extractvalue %dx.types.CBufRet.f32 %6461, 2
  %6465 = fmul fast float %6463, %6464
  %6466 = fsub fast float 1.000000e+00, %6465
  %6467 = call float @dx.op.unary.f32(i32 7, float %6466)  ; Saturate(value)
  br i1 %6444, label %6528, label %6468

; <label>:6468                                    ; preds = %6414
  %6469 = extractvalue %dx.types.CBufRet.f32 %6453, 2
  %6470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6471 = extractvalue %dx.types.CBufRet.f32 %6470, 2
  %6472 = fadd fast float %6471, %6469
  %6473 = fcmp fast ogt float %6472, 0.000000e+00
  br i1 %6473, label %6474, label %6498

; <label>:6474                                    ; preds = %6468
  %6475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6476 = extractvalue %dx.types.CBufRet.f32 %6475, 0
  %6477 = extractvalue %dx.types.CBufRet.f32 %6475, 1
  %6478 = fsub fast float %6459, %6476
  %6479 = fsub fast float %6460, %6477
  %6480 = fcmp fast olt float %6478, 0.000000e+00
  %6481 = fcmp fast olt float %6479, 0.000000e+00
  %6482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6483 = extractvalue %dx.types.CBufRet.f32 %6482, 0
  %6484 = extractvalue %dx.types.CBufRet.f32 %6482, 1
  %6485 = extractvalue %dx.types.CBufRet.f32 %6482, 2
  %6486 = extractvalue %dx.types.CBufRet.f32 %6482, 3
  %6487 = select i1 %6480, float %6483, float %6485
  %6488 = select i1 %6481, float %6484, float %6486
  %6489 = fmul fast float %6487, %6478
  %6490 = fmul fast float %6488, %6479
  %6491 = call float @dx.op.unary.f32(i32 6, float %6489)  ; FAbs(value)
  %6492 = call float @dx.op.unary.f32(i32 6, float %6490)  ; FAbs(value)
  %6493 = extractvalue %dx.types.CBufRet.f32 %6405, 0
  %6494 = call float @dx.op.binary.f32(i32 35, float %6491, float %6492)  ; FMax(a,b)
  %6495 = fsub fast float %6493, %6494
  %6496 = call float @dx.op.unary.f32(i32 7, float %6495)  ; Saturate(value)
  %6497 = fmul fast float %6496, %6467
  br label %6498

; <label>:6498                                    ; preds = %6474, %6468
  %6499 = phi float [ %6497, %6474 ], [ 0.000000e+00, %6468 ]
  %6500 = extractvalue %dx.types.CBufRet.f32 %6445, 2
  %6501 = extractvalue %dx.types.CBufRet.f32 %6470, 1
  %6502 = fadd fast float %6501, %6500
  %6503 = fcmp fast ogt float %6502, 0.000000e+00
  br i1 %6503, label %6504, label %6528

; <label>:6504                                    ; preds = %6498
  %6505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6506 = extractvalue %dx.types.CBufRet.f32 %6505, 0
  %6507 = extractvalue %dx.types.CBufRet.f32 %6505, 1
  %6508 = fsub fast float %6451, %6506
  %6509 = fsub fast float %6452, %6507
  %6510 = fcmp fast olt float %6508, 0.000000e+00
  %6511 = fcmp fast olt float %6509, 0.000000e+00
  %6512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6513 = extractvalue %dx.types.CBufRet.f32 %6512, 0
  %6514 = extractvalue %dx.types.CBufRet.f32 %6512, 1
  %6515 = extractvalue %dx.types.CBufRet.f32 %6512, 2
  %6516 = extractvalue %dx.types.CBufRet.f32 %6512, 3
  %6517 = select i1 %6510, float %6513, float %6515
  %6518 = select i1 %6511, float %6514, float %6516
  %6519 = fmul fast float %6517, %6508
  %6520 = fmul fast float %6518, %6509
  %6521 = call float @dx.op.unary.f32(i32 6, float %6519)  ; FAbs(value)
  %6522 = call float @dx.op.unary.f32(i32 6, float %6520)  ; FAbs(value)
  %6523 = extractvalue %dx.types.CBufRet.f32 %6405, 0
  %6524 = call float @dx.op.binary.f32(i32 35, float %6521, float %6522)  ; FMax(a,b)
  %6525 = fsub fast float %6523, %6524
  %6526 = call float @dx.op.unary.f32(i32 7, float %6525)  ; Saturate(value)
  %6527 = fmul fast float %6526, %6467
  br label %6528

; <label>:6528                                    ; preds = %6504, %6498, %6414
  %6529 = phi float [ 0.000000e+00, %6414 ], [ %6527, %6504 ], [ 0.000000e+00, %6498 ]
  %6530 = phi float [ 0.000000e+00, %6414 ], [ %6499, %6504 ], [ %6499, %6498 ]
  %6531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6532 = extractvalue %dx.types.CBufRet.f32 %6531, 1
  %6533 = call float @dx.op.unary.f32(i32 7, float %6532)  ; Saturate(value)
  %6534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6535 = extractvalue %dx.types.CBufRet.f32 %6534, 0
  %6536 = extractvalue %dx.types.CBufRet.f32 %6534, 1
  %6537 = fsub fast float %6433, %6535
  %6538 = fsub fast float %6437, %6536
  %6539 = fcmp fast olt float %6537, 0.000000e+00
  %6540 = fcmp fast olt float %6538, 0.000000e+00
  %6541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6542 = extractvalue %dx.types.CBufRet.f32 %6541, 0
  %6543 = extractvalue %dx.types.CBufRet.f32 %6541, 1
  %6544 = extractvalue %dx.types.CBufRet.f32 %6541, 2
  %6545 = extractvalue %dx.types.CBufRet.f32 %6541, 3
  %6546 = select i1 %6539, float %6542, float %6544
  %6547 = select i1 %6540, float %6543, float %6545
  %6548 = fmul fast float %6546, %6537
  %6549 = fmul fast float %6547, %6538
  %6550 = call float @dx.op.unary.f32(i32 6, float %6548)  ; FAbs(value)
  %6551 = call float @dx.op.unary.f32(i32 6, float %6549)  ; FAbs(value)
  %6552 = extractvalue %dx.types.CBufRet.f32 %6405, 0
  %6553 = call float @dx.op.binary.f32(i32 35, float %6550, float %6551)  ; FMax(a,b)
  %6554 = fsub fast float %6552, %6553
  %6555 = call float @dx.op.unary.f32(i32 7, float %6554)  ; Saturate(value)
  %6556 = call float @dx.op.binary.f32(i32 36, float %6555, float %6533)  ; FMin(a,b)
  %6557 = fmul fast float %6556, %6467
  %6558 = fsub fast float %6529, %6557
  %6559 = fsub fast float %6530, %6529
  %6560 = fsub fast float %6559, %6557
  %6561 = call float @dx.op.binary.f32(i32 35, float %6529, float %6530)  ; FMax(a,b)
  %6562 = call float @dx.op.binary.f32(i32 35, float %6557, float %6561)  ; FMax(a,b)
  %6563 = fcmp fast olt float %6562, 1.000000e+00
  br i1 %6563, label %6564, label %6962, !dx.controlflow.hints !96

; <label>:6564                                    ; preds = %6528
  %6565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6566 = extractvalue %dx.types.CBufRet.f32 %6565, 0
  %6567 = fcmp fast une float %6566, 0.000000e+00
  br i1 %6567, label %6568, label %6962, !dx.controlflow.hints !97

; <label>:6568                                    ; preds = %6564
  %6569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6570 = extractvalue %dx.types.CBufRet.f32 %6569, 0
  %6571 = extractvalue %dx.types.CBufRet.f32 %6569, 1
  %6572 = extractvalue %dx.types.CBufRet.f32 %6569, 2
  %6573 = extractvalue %dx.types.CBufRet.f32 %6569, 3
  %6574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6575 = extractvalue %dx.types.CBufRet.f32 %6574, 0
  %6576 = extractvalue %dx.types.CBufRet.f32 %6574, 1
  %6577 = extractvalue %dx.types.CBufRet.f32 %6574, 2
  %6578 = extractvalue %dx.types.CBufRet.f32 %6574, 3
  %6579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6580 = extractvalue %dx.types.CBufRet.f32 %6579, 0
  %6581 = extractvalue %dx.types.CBufRet.f32 %6579, 1
  %6582 = extractvalue %dx.types.CBufRet.f32 %6579, 2
  %6583 = extractvalue %dx.types.CBufRet.f32 %6579, 3
  %6584 = fmul fast float %6570, %6410
  %6585 = call float @dx.op.tertiary.f32(i32 46, float %6411, float %6571, float %6584)  ; FMad(a,b,c)
  %6586 = call float @dx.op.tertiary.f32(i32 46, float %6412, float %6572, float %6585)  ; FMad(a,b,c)
  %6587 = fadd fast float %6586, %6573
  %6588 = fmul fast float %6575, %6410
  %6589 = call float @dx.op.tertiary.f32(i32 46, float %6411, float %6576, float %6588)  ; FMad(a,b,c)
  %6590 = call float @dx.op.tertiary.f32(i32 46, float %6412, float %6577, float %6589)  ; FMad(a,b,c)
  %6591 = fadd fast float %6590, %6578
  %6592 = fmul fast float %6580, %6410
  %6593 = call float @dx.op.tertiary.f32(i32 46, float %6411, float %6581, float %6592)  ; FMad(a,b,c)
  %6594 = call float @dx.op.tertiary.f32(i32 46, float %6412, float %6582, float %6593)  ; FMad(a,b,c)
  %6595 = fadd fast float %6594, %6583
  %6596 = fcmp fast oge float %6587, 1.000000e+00
  %6597 = fcmp fast oge float %6591, 1.000000e+00
  %6598 = or i1 %6596, %6597
  %6599 = fcmp fast olt float %6587, 0.000000e+00
  %6600 = fcmp fast olt float %6591, 0.000000e+00
  %6601 = or i1 %6599, %6600
  %6602 = or i1 %6598, %6601
  br i1 %6602, label %6962, label %6603, !dx.controlflow.hints !98

; <label>:6603                                    ; preds = %6568
  %6604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6605 = extractvalue %dx.types.CBufRet.f32 %6604, 0
  %6606 = extractvalue %dx.types.CBufRet.f32 %6604, 1
  %6607 = extractvalue %dx.types.CBufRet.f32 %6604, 2
  %6608 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6609 = extractvalue %dx.types.CBufRet.i32 %6608, 2
  %6610 = uitofp i32 %6609 to float
  %6611 = extractvalue %dx.types.CBufRet.i32 %6608, 3
  %6612 = uitofp i32 %6611 to float
  %6613 = extractvalue %dx.types.CBufRet.f32 %6604, 3
  %6614 = fmul fast float %6613, 2.000000e+00
  %6615 = fsub fast float %6587, %6605
  %6616 = fsub fast float %6591, %6606
  %6617 = fmul fast float %6614, %6615
  %6618 = fmul fast float %6614, %6616
  %6619 = fdiv fast float 1.000000e+00, %6393
  %6620 = fmul fast float %6618, %6619
  %6621 = call float @dx.op.unary.f32(i32 6, float %6620)  ; FAbs(value)
  %6622 = fmul fast float %6607, %6412
  %6623 = fmul fast float %6622, %6614
  %6624 = call float @dx.op.unary.f32(i32 6, float %6623)  ; FAbs(value)
  %6625 = call float @dx.op.unary.f32(i32 6, float %6617)  ; FAbs(value)
  %6626 = call float @dx.op.binary.f32(i32 35, float %6624, float %6621)  ; FMax(a,b)
  %6627 = call float @dx.op.binary.f32(i32 35, float %6625, float %6626)  ; FMax(a,b)
  %6628 = fmul fast float %6627, 2.000000e+00
  %6629 = call float @dx.op.unary.f32(i32 23, float %6628)  ; Log(value)
  %6630 = call float @dx.op.binary.f32(i32 35, float %6629, float %6610)  ; FMax(a,b)
  %6631 = call float @dx.op.unary.f32(i32 22, float %6630)  ; Frc(value)
  %6632 = fadd fast float %6631, 0xBFEA666660000000
  %6633 = fmul fast float %6632, 8.000000e+00
  %6634 = call float @dx.op.unary.f32(i32 7, float %6633)  ; Saturate(value)
  %6635 = call float @dx.op.unary.f32(i32 27, float %6630)  ; Round_ni(value)
  %6636 = fadd fast float %6635, %6634
  %6637 = call float @dx.op.binary.f32(i32 36, float %6636, float %6612)  ; FMin(a,b)
  %6638 = call float @dx.op.unary.f32(i32 27, float %6637)  ; Round_ni(value)
  %6639 = fsub fast float -0.000000e+00, %6638
  %6640 = call float @dx.op.unary.f32(i32 21, float %6639)  ; Exp(value)
  %6641 = fmul fast float %6640, %6614
  %6642 = fmul fast float %6641, %6587
  %6643 = fmul fast float %6641, %6591
  %6644 = fmul fast float %6642, 2.500000e-01
  %6645 = fmul fast float %6643, 2.500000e-01
  %6646 = fadd fast float %6644, 5.000000e-01
  %6647 = fadd fast float %6645, 5.000000e-01
  %6648 = fsub fast float %6612, %6610
  %6649 = fptoui float %6648 to i32
  %6650 = add i32 %6649, 320
  %6651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %6650)  ; CBufferLoadLegacy(handle,regIndex)
  %6652 = extractvalue %dx.types.CBufRet.f32 %6651, 0
  %6653 = extractvalue %dx.types.CBufRet.f32 %6651, 1
  %6654 = fcmp fast une float %6637, %6612
  %6655 = fsub fast float %6587, %6652
  %6656 = fsub fast float %6591, %6653
  %6657 = call float @dx.op.unary.f32(i32 6, float %6655)  ; FAbs(value)
  %6658 = call float @dx.op.unary.f32(i32 6, float %6656)  ; FAbs(value)
  %6659 = fmul fast float %6657, %6641
  %6660 = fmul fast float %6658, %6641
  %6661 = fcmp fast olt float %6659, 1.000000e+00
  %6662 = fcmp fast olt float %6660, 1.000000e+00
  %6663 = and i1 %6661, %6662
  %6664 = or i1 %6654, %6663
  br i1 %6664, label %6665, label %6962, !dx.controlflow.hints !99

; <label>:6665                                    ; preds = %6603
  %6666 = fmul fast float %6643, 5.000000e-01
  %6667 = fmul fast float %6642, 5.000000e-01
  %6668 = fadd fast float %6666, 5.000000e-01
  %6669 = fadd fast float %6667, 5.000000e-01
  %6670 = sitofp i32 %6609 to float
  %6671 = fsub fast float %6637, %6670
  %6672 = call float @dx.op.unary.f32(i32 27, float %6671)  ; Round_ni(value)
  %6673 = call float @dx.op.unary.f32(i32 22, float %6637)  ; Frc(value)
  %6674 = call float @dx.op.unary.f32(i32 22, float %6669)  ; Frc(value)
  %6675 = call float @dx.op.unary.f32(i32 22, float %6668)  ; Frc(value)
  %6676 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %43, float %6674, float %6675, float %6672, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6677 = extractvalue %dx.types.ResRet.f32 %6676, 0
  %6678 = extractvalue %dx.types.ResRet.f32 %6676, 1
  %6679 = extractvalue %dx.types.ResRet.f32 %6676, 2
  %6680 = extractvalue %dx.types.ResRet.f32 %6676, 3
  %6681 = fcmp fast ogt float %6673, 0.000000e+00
  br i1 %6681, label %6682, label %6703, !dx.controlflow.hints !100

; <label>:6682                                    ; preds = %6665
  %6683 = fadd fast float %6672, 1.000000e+00
  %6684 = call float @dx.op.unary.f32(i32 22, float %6646)  ; Frc(value)
  %6685 = call float @dx.op.unary.f32(i32 22, float %6647)  ; Frc(value)
  %6686 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %43, float %6684, float %6685, float %6683, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6687 = extractvalue %dx.types.ResRet.f32 %6686, 0
  %6688 = extractvalue %dx.types.ResRet.f32 %6686, 1
  %6689 = extractvalue %dx.types.ResRet.f32 %6686, 2
  %6690 = extractvalue %dx.types.ResRet.f32 %6686, 3
  %6691 = fsub fast float %6687, %6677
  %6692 = fsub fast float %6688, %6678
  %6693 = fsub fast float %6689, %6679
  %6694 = fsub fast float %6690, %6680
  %6695 = fmul fast float %6691, %6673
  %6696 = fmul fast float %6692, %6673
  %6697 = fmul fast float %6693, %6673
  %6698 = fmul fast float %6694, %6673
  %6699 = fadd fast float %6695, %6677
  %6700 = fadd fast float %6696, %6678
  %6701 = fadd fast float %6697, %6679
  %6702 = fadd fast float %6698, %6680
  br label %6703

; <label>:6703                                    ; preds = %6682, %6665
  %6704 = phi float [ %6699, %6682 ], [ %6677, %6665 ]
  %6705 = phi float [ %6700, %6682 ], [ %6678, %6665 ]
  %6706 = phi float [ %6701, %6682 ], [ %6679, %6665 ]
  %6707 = phi float [ %6702, %6682 ], [ %6680, %6665 ]
  %6708 = fadd fast float %6704, -5.000000e-01
  %6709 = fadd fast float %6706, -5.000000e-01
  %6710 = fmul fast float %6708, 0xBFD5555560000000
  %6711 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6709, float %6710)  ; FMad(a,b,c)
  %6712 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6705, float 0.000000e+00)  ; FMad(a,b,c)
  %6713 = fadd fast float %6712, %6707
  %6714 = fmul fast float %6708, -7.500000e-01
  %6715 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6709, float %6714)  ; FMad(a,b,c)
  %6716 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6705, float 0.000000e+00)  ; FMad(a,b,c)
  %6717 = fadd fast float %6716, %6707
  %6718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6719 = extractvalue %dx.types.CBufRet.f32 %6718, 0
  %6720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6721 = extractvalue %dx.types.CBufRet.f32 %6720, 0
  %6722 = extractvalue %dx.types.CBufRet.f32 %6720, 1
  %6723 = extractvalue %dx.types.CBufRet.f32 %6720, 2
  %6724 = extractvalue %dx.types.CBufRet.f32 %6720, 3
  %6725 = fsub fast float %6721, %6711
  %6726 = fsub fast float %6722, %6713
  %6727 = fsub fast float %6723, %6715
  %6728 = fsub fast float %6724, %6717
  %6729 = fmul fast float %6725, %6719
  %6730 = fmul fast float %6726, %6719
  %6731 = fmul fast float %6727, %6719
  %6732 = fmul fast float %6728, %6719
  %6733 = fadd fast float %6729, %6711
  %6734 = fadd fast float %6730, %6713
  %6735 = fadd fast float %6731, %6715
  %6736 = fadd fast float %6732, %6717
  %6737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6738 = extractvalue %dx.types.ResRet.i32 %6737, 0
  %6739 = and i32 %6738, 536870911
  %6740 = uitofp i32 %6739 to float
  %6741 = fmul fast float %6740, %6587
  %6742 = fmul fast float %6740, %6591
  %6743 = fptoui float %6741 to i32
  %6744 = fptoui float %6742 to i32
  %6745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6746 = extractvalue %dx.types.ResRet.i32 %6745, 0
  %6747 = and i32 %6746, 31
  %6748 = lshr i32 %6743, %6747
  %6749 = lshr i32 %6744, %6747
  %6750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6751 = extractvalue %dx.types.ResRet.i32 %6750, 0
  %6752 = and i32 %6751, 31
  %6753 = shl i32 1, %6752
  %6754 = call i32 @dx.op.binary.i32(i32 40, i32 %6753, i32 4)  ; UMin(a,b)
  %6755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6756 = extractvalue %dx.types.ResRet.i32 %6755, 0
  %6757 = extractvalue %dx.types.ResRet.i32 %6755, 1
  %6758 = icmp eq i32 %6754, 0
  br i1 %6758, label %6800, label %6759

; <label>:6759                                    ; preds = %6703
  br label %6760

; <label>:6760                                    ; preds = %6788, %6759
  %6761 = phi i32 [ %6791, %6788 ], [ 0, %6759 ]
  %6762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6763 = extractvalue %dx.types.ResRet.i32 %6762, 0
  %6764 = lshr i32 %6763, 16
  %6765 = and i32 %6764, 31
  %6766 = shl i32 %6749, %6765
  %6767 = add i32 %6766, %6748
  %6768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6769 = extractvalue %dx.types.ResRet.i32 %6768, 0
  %6770 = and i32 %6769, 31
  %6771 = shl i32 %6767, %6770
  %6772 = add i32 %6771, %6761
  %6773 = shl i32 %6772, 2
  %6774 = add i32 %6773, 32
  %6775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6774, i32 undef)  ; BufferLoad(srv,index,wot)
  %6776 = extractvalue %dx.types.ResRet.i32 %6775, 0
  %6777 = icmp slt i32 %6776, 0
  %6778 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %6761
  %6779 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %6761
  %6780 = bitcast float* %6778 to i32*
  %6781 = bitcast float* %6779 to i32*
  br i1 %6777, label %6782, label %6788

; <label>:6782                                    ; preds = %6760
  %6783 = and i32 %6776, 1073741823
  %6784 = add nuw nsw i32 %6783, 20
  %6785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6784, i32 undef)  ; BufferLoad(srv,index,wot)
  %6786 = extractvalue %dx.types.ResRet.i32 %6785, 0
  %6787 = extractvalue %dx.types.ResRet.i32 %6785, 1
  br label %6788

; <label>:6788                                    ; preds = %6782, %6760
  %6789 = phi i32 [ %6786, %6782 ], [ %6756, %6760 ]
  %6790 = phi i32 [ %6787, %6782 ], [ %6757, %6760 ]
  store i32 %6789, i32* %6780, align 4
  store i32 %6790, i32* %6781, align 4
  %6791 = add nuw i32 %6761, 1
  %6792 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6793 = extractvalue %dx.types.CBufRet.i32 %6792, 2
  %6794 = icmp eq i32 %6793, 0
  %6795 = icmp ugt i32 %6776, -1073741825
  %6796 = and i1 %6795, %6794
  %6797 = icmp ult i32 %6791, %6754
  %6798 = and i1 %6796, %6797
  br i1 %6798, label %6760, label %6799

; <label>:6799                                    ; preds = %6788
  br label %6800

; <label>:6800                                    ; preds = %6799, %6703
  %6801 = phi i32 [ 0, %6703 ], [ %6791, %6799 ]
  %6802 = extractvalue %dx.types.CBufRet.f32 %6565, 2
  %6803 = fptoui float %6802 to i32
  %6804 = icmp eq i32 %6803, 0
  br i1 %6804, label %6856, label %6805

; <label>:6805                                    ; preds = %6800
  br label %6806

; <label>:6806                                    ; preds = %6851, %6805
  %6807 = phi i32 [ %6852, %6851 ], [ %6801, %6805 ]
  %6808 = phi i32 [ %6853, %6851 ], [ 0, %6805 ]
  %6809 = lshr i32 %6808, 2
  %6810 = and i32 %6808, 3
  %6811 = add nuw nsw i32 %6809, 83
  %6812 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 %6811)  ; CBufferLoadLegacy(handle,regIndex)
  %6813 = extractvalue %dx.types.CBufRet.i32 %6812, 0
  %6814 = extractvalue %dx.types.CBufRet.i32 %6812, 1
  %6815 = extractvalue %dx.types.CBufRet.i32 %6812, 2
  %6816 = extractvalue %dx.types.CBufRet.i32 %6812, 3
  %6817 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 0
  store i32 %6813, i32* %6817, align 4
  %6818 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 1
  store i32 %6814, i32* %6818, align 4
  %6819 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 2
  store i32 %6815, i32* %6819, align 4
  %6820 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 3
  store i32 %6816, i32* %6820, align 4
  %6821 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 %6810
  %6822 = load i32, i32* %6821, align 4, !tbaa !101, !noalias !105
  %6823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6824 = extractvalue %dx.types.ResRet.i32 %6823, 0
  %6825 = lshr i32 %6824, 16
  %6826 = and i32 %6825, 31
  %6827 = shl i32 %6749, %6826
  %6828 = add i32 %6827, %6748
  %6829 = shl i32 %6828, 2
  %6830 = add i32 %6829, %6822
  %6831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6830, i32 undef)  ; BufferLoad(srv,index,wot)
  %6832 = extractvalue %dx.types.ResRet.i32 %6831, 0
  %6833 = icmp eq i32 %6832, 0
  br i1 %6833, label %6851, label %6834

; <label>:6834                                    ; preds = %6806
  %6835 = icmp slt i32 %6832, 0
  %6836 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %6807
  %6837 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %6807
  %6838 = bitcast float* %6836 to i32*
  %6839 = bitcast float* %6837 to i32*
  br i1 %6835, label %6840, label %6847

; <label>:6840                                    ; preds = %6834
  %6841 = and i32 %6832, 1073741823
  %6842 = add i32 %6822, 20
  %6843 = add i32 %6842, %6841
  %6844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6843, i32 undef)  ; BufferLoad(srv,index,wot)
  %6845 = extractvalue %dx.types.ResRet.i32 %6844, 0
  %6846 = extractvalue %dx.types.ResRet.i32 %6844, 1
  br label %6847

; <label>:6847                                    ; preds = %6840, %6834
  %6848 = phi i32 [ %6845, %6840 ], [ %6756, %6834 ]
  %6849 = phi i32 [ %6846, %6840 ], [ %6757, %6834 ]
  store i32 %6848, i32* %6838, align 4
  store i32 %6849, i32* %6839, align 4
  %6850 = add i32 %6807, 1
  br label %6851

; <label>:6851                                    ; preds = %6847, %6806
  %6852 = phi i32 [ %6807, %6806 ], [ %6850, %6847 ]
  %6853 = add nuw i32 %6808, 1
  %6854 = icmp eq i32 %6853, %6803
  br i1 %6854, label %6855, label %6806

; <label>:6855                                    ; preds = %6851
  br label %6856

; <label>:6856                                    ; preds = %6855, %6800
  %6857 = phi i32 [ %6801, %6800 ], [ %6852, %6855 ]
  %6858 = icmp eq i32 %6857, 1
  %6859 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 0
  %6860 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 0
  br i1 %6858, label %6861, label %6864

; <label>:6861                                    ; preds = %6856
  %6862 = load float, float* %6859, align 4
  %6863 = load float, float* %6860, align 4
  br label %6891

; <label>:6864                                    ; preds = %6856
  %6865 = load float, float* %6859, align 4
  %6866 = load float, float* %6860, align 4
  %6867 = fdiv fast float 1.000000e+00, %6866
  %6868 = fsub fast float %6865, %6867
  %6869 = icmp ugt i32 %6857, 1
  br i1 %6869, label %6870, label %6886

; <label>:6870                                    ; preds = %6864
  br label %6871

; <label>:6871                                    ; preds = %6871, %6870
  %6872 = phi float [ %6881, %6871 ], [ %6868, %6870 ]
  %6873 = phi float [ %6882, %6871 ], [ %6865, %6870 ]
  %6874 = phi i32 [ %6883, %6871 ], [ 1, %6870 ]
  %6875 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %6874
  %6876 = load float, float* %6875, align 4
  %6877 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %6874
  %6878 = load float, float* %6877, align 4
  %6879 = fdiv fast float 1.000000e+00, %6878
  %6880 = fsub fast float %6876, %6879
  %6881 = call float @dx.op.binary.f32(i32 36, float %6872, float %6880)  ; FMin(a,b)
  %6882 = call float @dx.op.binary.f32(i32 35, float %6873, float %6876)  ; FMax(a,b)
  %6883 = add nuw i32 %6874, 1
  %6884 = icmp eq i32 %6883, %6857
  br i1 %6884, label %6885, label %6871

; <label>:6885                                    ; preds = %6871
  br label %6886

; <label>:6886                                    ; preds = %6885, %6864
  %6887 = phi float [ %6868, %6864 ], [ %6881, %6885 ]
  %6888 = phi float [ %6865, %6864 ], [ %6882, %6885 ]
  %6889 = fsub fast float %6888, %6887
  %6890 = fdiv fast float 1.000000e+00, %6889
  br label %6891

; <label>:6891                                    ; preds = %6886, %6861
  %6892 = phi float [ %6862, %6861 ], [ %6888, %6886 ]
  %6893 = phi float [ %6863, %6861 ], [ %6890, %6886 ]
  %6894 = fadd fast float %6595, %6892
  %6895 = fmul fast float %6894, %6893
  %6896 = call float @dx.op.unary.f32(i32 7, float %6895)  ; Saturate(value)
  %6897 = fmul fast float %6896, 2.000000e+00
  %6898 = fsub fast float 1.000000e+00, %6897
  %6899 = fmul fast float %6733, %6733
  %6900 = fsub fast float %6734, %6899
  %6901 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6900)  ; FMax(a,b)
  %6902 = fdiv fast float 1.000000e+00, %6901
  %6903 = fmul fast float %6734, %6733
  %6904 = fsub fast float %6735, %6903
  %6905 = fsub fast float %6898, %6733
  %6906 = fmul fast float %6898, %6898
  %6907 = fsub fast float %6906, %6734
  %6908 = fmul fast float %6902, %6904
  %6909 = fmul fast float %6908, %6905
  %6910 = fsub fast float %6907, %6909
  %6911 = fmul fast float %6734, %6734
  %6912 = fsub fast float %6736, %6911
  %6913 = fmul fast float %6904, %6904
  %6914 = fmul fast float %6913, %6902
  %6915 = fsub fast float %6912, %6914
  %6916 = fdiv fast float %6910, %6915
  %6917 = fmul fast float %6916, %6904
  %6918 = fsub fast float %6905, %6917
  %6919 = fmul fast float %6918, %6902
  %6920 = fmul fast float %6919, %6733
  %6921 = fsub fast float 1.000000e+00, %6920
  %6922 = fmul fast float %6916, %6734
  %6923 = fsub fast float %6921, %6922
  %6924 = fmul fast float %6919, %6919
  %6925 = fmul fast float %6916, 4.000000e+00
  %6926 = fmul fast float %6925, %6923
  %6927 = fsub fast float %6924, %6926
  %6928 = call float @dx.op.unary.f32(i32 24, float %6927)  ; Sqrt(value)
  %6929 = fcmp fast oge float %6919, 0.000000e+00
  %6930 = fsub fast float -0.000000e+00, %6928
  %6931 = select i1 %6929, float %6930, float %6928
  %6932 = fsub fast float %6931, %6919
  %6933 = fdiv fast float %6932, %6916
  %6934 = fdiv fast float %6923, %6932
  %6935 = fmul fast float %6933, 5.000000e-01
  %6936 = fmul fast float %6934, 2.000000e+00
  %6937 = select i1 %6929, float %6935, float %6936
  %6938 = select i1 %6929, float %6936, float %6935
  %6939 = call float @dx.op.binary.f32(i32 35, float %6937, float %6938)  ; FMax(a,b)
  %6940 = call float @dx.op.binary.f32(i32 36, float %6937, float %6938)  ; FMin(a,b)
  %6941 = fcmp fast ogt float %6898, %6939
  %6942 = fsub fast float %6898, %6940
  %6943 = fsub fast float %6898, %6939
  %6944 = fsub fast float %6939, %6940
  %6945 = select i1 %6941, float %6943, float %6944
  %6946 = fmul float %6942, %6945
  %6947 = select i1 %6941, float %6940, float %6898
  %6948 = fcmp fast ogt float %6898, %6940
  %6949 = fmul fast float %6947, %6939
  %6950 = fadd fast float %6947, %6939
  %6951 = fmul fast float %6950, %6733
  %6952 = fadd fast float %6949, %6734
  %6953 = fsub fast float %6952, %6951
  %6954 = fdiv fast float %6953, %6946
  %6955 = select i1 %6948, float %6954, float 0.000000e+00
  %6956 = fsub fast float 1.000000e+00, %6955
  %6957 = select i1 %6941, float %6956, float %6955
  %6958 = call float @dx.op.unary.f32(i32 7, float %6957)  ; Saturate(value)
  %6959 = extractvalue %dx.types.CBufRet.f32 %6718, 3
  %6960 = fmul fast float %6959, %6958
  %6961 = fsub fast float 1.000000e+00, %6960
  br label %6962

; <label>:6962                                    ; preds = %6891, %6603, %6568, %6564, %6528
  %6963 = phi float [ 1.000000e+00, %6528 ], [ %6961, %6891 ], [ 1.000000e+00, %6568 ], [ 1.000000e+00, %6603 ], [ 1.000000e+00, %6564 ]
  %6964 = fcmp fast ogt float %6560, 0.000000e+00
  br i1 %6964, label %6965, label %7129, !dx.controlflow.hints !114

; <label>:6965                                    ; preds = %6962
  %6966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6967 = extractvalue %dx.types.CBufRet.f32 %6966, 2
  %6968 = fadd fast float %6967, %6441
  %6969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6970 = extractvalue %dx.types.CBufRet.f32 %6969, 2
  %6971 = extractvalue %dx.types.CBufRet.f32 %6969, 3
  %6972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6973 = extractvalue %dx.types.CBufRet.f32 %6972, 2
  %6974 = call float @dx.op.binary.f32(i32 35, float %6968, float 0.000000e+00)  ; FMax(a,b)
  %6975 = fadd fast float %6974, 0x3F10000000000000
  %6976 = fcmp fast oeq float %6973, 0.000000e+00
  br i1 %6976, label %6977, label %7044

; <label>:6977                                    ; preds = %6965
  %6978 = extractvalue %dx.types.CBufRet.f32 %6969, 1
  %6979 = extractvalue %dx.types.CBufRet.f32 %6969, 0
  %6980 = fmul fast float %6979, %6459
  %6981 = fmul fast float %6978, %6460
  %6982 = fadd fast float %6980, 5.000000e-01
  %6983 = call float @dx.op.unary.f32(i32 27, float %6982)  ; Round_ni(value)
  %6984 = fadd fast float %6981, 5.000000e-01
  %6985 = call float @dx.op.unary.f32(i32 27, float %6984)  ; Round_ni(value)
  %6986 = fsub fast float %6982, %6983
  %6987 = fsub fast float %6984, %6985
  %6988 = fadd fast float %6983, -5.000000e-01
  %6989 = fadd fast float %6985, -5.000000e-01
  %6990 = fmul fast float %6986, 2.000000e+00
  %6991 = fsub fast float 3.000000e+00, %6990
  %6992 = fadd fast float %6990, 1.000000e+00
  %6993 = fsub fast float 2.000000e+00, %6986
  %6994 = bitcast float %6991 to i32
  %6995 = sub nsw i32 2129859010, %6994
  %6996 = bitcast i32 %6995 to float
  %6997 = fmul fast float %6996, %6993
  %6998 = fadd fast float %6997, -1.000000e+00
  %6999 = bitcast float %6992 to i32
  %7000 = sub nsw i32 2129859010, %6999
  %7001 = bitcast i32 %7000 to float
  %7002 = fmul fast float %7001, %6986
  %7003 = fadd fast float %7002, 1.000000e+00
  %7004 = fmul fast float %6987, 2.000000e+00
  %7005 = fsub fast float 3.000000e+00, %7004
  %7006 = fadd fast float %7004, 1.000000e+00
  %7007 = fsub fast float 2.000000e+00, %6987
  %7008 = bitcast float %7005 to i32
  %7009 = sub nsw i32 2129859010, %7008
  %7010 = bitcast i32 %7009 to float
  %7011 = fmul fast float %7010, %7007
  %7012 = fadd fast float %7011, -1.000000e+00
  %7013 = bitcast float %7006 to i32
  %7014 = sub nsw i32 2129859010, %7013
  %7015 = bitcast i32 %7014 to float
  %7016 = fmul fast float %7015, %6987
  %7017 = fadd fast float %7016, 1.000000e+00
  %7018 = fadd fast float %6998, %6988
  %7019 = fmul fast float %7018, %6970
  %7020 = fadd fast float %7012, %6989
  %7021 = fmul fast float %7020, %6971
  %7022 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %46, float %7019, float %7021, float undef, float undef, i32 0, i32 0, i32 undef, float %6975)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7023 = extractvalue %dx.types.ResRet.f32 %7022, 0
  %7024 = fmul fast float %7023, %6991
  %7025 = fadd fast float %7003, %6988
  %7026 = fmul fast float %7025, %6970
  %7027 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %46, float %7026, float %7021, float undef, float undef, i32 0, i32 0, i32 undef, float %6975)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7028 = extractvalue %dx.types.ResRet.f32 %7027, 0
  %7029 = fmul fast float %7028, %6992
  %7030 = fadd fast float %7017, %6989
  %7031 = fmul fast float %7030, %6971
  %7032 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %46, float %7019, float %7031, float undef, float undef, i32 0, i32 0, i32 undef, float %6975)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7033 = extractvalue %dx.types.ResRet.f32 %7032, 0
  %7034 = fmul fast float %7033, %6991
  %7035 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %46, float %7026, float %7031, float undef, float undef, i32 0, i32 0, i32 undef, float %6975)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7036 = extractvalue %dx.types.ResRet.f32 %7035, 0
  %7037 = fmul fast float %7036, %6992
  %7038 = fadd fast float %7037, %7034
  %7039 = fmul fast float %7038, %7006
  %7040 = fadd fast float %7029, %7024
  %7041 = fmul fast float %7040, %7005
  %7042 = fadd fast float %7041, %7039
  %7043 = fmul fast float %7042, 6.250000e-02
  br label %7129

; <label>:7044                                    ; preds = %6965
  %7045 = fmul fast float %280, 0x401921FB60000000
  %7046 = call float @dx.op.unary.f32(i32 13, float %7045)  ; Sin(value)
  %7047 = call float @dx.op.unary.f32(i32 12, float %7045)  ; Cos(value)
  %7048 = fsub fast float -0.000000e+00, %7046
  br label %7049

; <label>:7049                                    ; preds = %7098, %7044
  %7050 = phi float [ 0.000000e+00, %7044 ], [ %7093, %7098 ]
  %7051 = phi float [ 0.000000e+00, %7044 ], [ %7095, %7098 ]
  %7052 = phi i32 [ 0, %7044 ], [ %7099, %7098 ]
  %7053 = mul i32 %7052, 2
  %7054 = add i32 0, %7053
  %7055 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7054
  %7056 = load float, float* %7055, align 4
  %7057 = mul i32 %7052, 2
  %7058 = add i32 1, %7057
  %7059 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7058
  %7060 = load float, float* %7059, align 4
  %7061 = fmul fast float %7056, %7047
  %7062 = call float @dx.op.tertiary.f32(i32 46, float %7060, float %7048, float %7061)  ; FMad(a,b,c)
  %7063 = fmul fast float %7056, %7046
  %7064 = call float @dx.op.tertiary.f32(i32 46, float %7060, float %7047, float %7063)  ; FMad(a,b,c)
  %7065 = fmul fast float %7062, %6973
  %7066 = fmul fast float %7064, %6973
  %7067 = fadd fast float %7065, %6459
  %7068 = fadd fast float %7066, %6460
  %7069 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %45, float %7067, float %7068, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7070 = extractvalue %dx.types.ResRet.f32 %7069, 0
  %7071 = extractvalue %dx.types.ResRet.f32 %7069, 1
  %7072 = extractvalue %dx.types.ResRet.f32 %7069, 2
  %7073 = extractvalue %dx.types.ResRet.f32 %7069, 3
  %7074 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 0
  store float %7070, float* %7074, align 4
  %7075 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 1
  store float %7071, float* %7075, align 4
  %7076 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 2
  store float %7072, float* %7076, align 4
  %7077 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 3
  store float %7073, float* %7077, align 4
  %7078 = fsub fast float %7070, %6975
  %7079 = fcmp fast olt float %7078, 0.000000e+00
  %7080 = select i1 %7079, float 0.000000e+00, float 1.000000e+00
  %7081 = fadd fast float %7080, %7050
  %7082 = fmul fast float %7080, %7078
  %7083 = fadd fast float %7082, %7051
  br label %7084

; <label>:7084                                    ; preds = %7084, %7049
  %7085 = phi i32 [ 1, %7049 ], [ %7096, %7084 ]
  %7086 = phi float [ %7083, %7049 ], [ %7095, %7084 ]
  %7087 = phi float [ %7081, %7049 ], [ %7093, %7084 ]
  %7088 = getelementptr [4 x float], [4 x float]* %101, i32 0, i32 %7085
  %7089 = load float, float* %7088, align 4, !tbaa !115, !noalias !105
  %7090 = fsub fast float %7089, %6975
  %7091 = fcmp fast olt float %7090, 0.000000e+00
  %7092 = select i1 %7091, float 0.000000e+00, float 1.000000e+00
  %7093 = fadd fast float %7092, %7087
  %7094 = fmul fast float %7092, %7090
  %7095 = fadd fast float %7094, %7086
  %7096 = add nuw nsw i32 %7085, 1
  %7097 = icmp eq i32 %7096, 4
  br i1 %7097, label %7098, label %7084, !llvm.loop !117

; <label>:7098                                    ; preds = %7084
  %7099 = add nuw nsw i32 %7052, 1
  %7100 = icmp eq i32 %7099, 8
  br i1 %7100, label %7101, label %7049, !llvm.loop !118

; <label>:7101                                    ; preds = %7098
  %7102 = fdiv fast float 1.000000e+00, %7093
  %7103 = fmul fast float %7102, %7095
  %7104 = fdiv fast float 1.000000e+00, %6975
  %7105 = fmul fast float %7103, %7104
  %7106 = call float @dx.op.unary.f32(i32 7, float %7105)  ; Saturate(value)
  %7107 = call float @dx.op.binary.f32(i32 35, float %7106, float 0.000000e+00)  ; FMax(a,b)
  %7108 = fmul fast float %7093, 3.125000e-02
  %7109 = call float @dx.op.unary.f32(i32 7, float %7108)  ; Saturate(value)
  %7110 = fmul fast float %7109, 2.000000e+00
  %7111 = fadd fast float %7110, -1.000000e+00
  %7112 = fcmp fast ogt float %7111, 0.000000e+00
  %7113 = fcmp fast olt float %7111, 0.000000e+00
  %7114 = zext i1 %7112 to i32
  %7115 = zext i1 %7113 to i32
  %7116 = sub nsw i32 %7114, %7115
  %7117 = sitofp i32 %7116 to float
  %7118 = fmul fast float %7117, %7111
  %7119 = fsub fast float 1.000000e+00, %7118
  %7120 = fmul fast float %7119, %7119
  %7121 = fmul fast float %7120, %7119
  %7122 = fsub fast float %7119, %7121
  %7123 = fmul fast float %7122, %7107
  %7124 = fsub fast float 1.000000e+00, %7121
  %7125 = fsub fast float %7124, %7123
  %7126 = fmul fast float %7117, 5.000000e-01
  %7127 = fmul fast float %7126, %7125
  %7128 = fsub fast float 5.000000e-01, %7127
  br label %7129

; <label>:7129                                    ; preds = %7101, %6977, %6962
  %7130 = phi float [ 1.000000e+00, %6962 ], [ %7043, %6977 ], [ %7128, %7101 ]
  %7131 = fcmp fast ogt float %6558, 0.000000e+00
  br i1 %7131, label %7132, label %7296, !dx.controlflow.hints !119

; <label>:7132                                    ; preds = %7129
  %7133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7134 = extractvalue %dx.types.CBufRet.f32 %7133, 1
  %7135 = fadd fast float %7134, %6441
  %7136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7137 = extractvalue %dx.types.CBufRet.f32 %7136, 2
  %7138 = extractvalue %dx.types.CBufRet.f32 %7136, 3
  %7139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7140 = extractvalue %dx.types.CBufRet.f32 %7139, 1
  %7141 = call float @dx.op.binary.f32(i32 35, float %7135, float 0.000000e+00)  ; FMax(a,b)
  %7142 = fadd fast float %7141, 0x3F10000000000000
  %7143 = fcmp fast oeq float %7140, 0.000000e+00
  br i1 %7143, label %7144, label %7211

; <label>:7144                                    ; preds = %7132
  %7145 = extractvalue %dx.types.CBufRet.f32 %7136, 1
  %7146 = extractvalue %dx.types.CBufRet.f32 %7136, 0
  %7147 = fmul fast float %7146, %6451
  %7148 = fmul fast float %7145, %6452
  %7149 = fadd fast float %7147, 5.000000e-01
  %7150 = call float @dx.op.unary.f32(i32 27, float %7149)  ; Round_ni(value)
  %7151 = fadd fast float %7148, 5.000000e-01
  %7152 = call float @dx.op.unary.f32(i32 27, float %7151)  ; Round_ni(value)
  %7153 = fsub fast float %7149, %7150
  %7154 = fsub fast float %7151, %7152
  %7155 = fadd fast float %7150, -5.000000e-01
  %7156 = fadd fast float %7152, -5.000000e-01
  %7157 = fmul fast float %7153, 2.000000e+00
  %7158 = fsub fast float 3.000000e+00, %7157
  %7159 = fadd fast float %7157, 1.000000e+00
  %7160 = fsub fast float 2.000000e+00, %7153
  %7161 = bitcast float %7158 to i32
  %7162 = sub nsw i32 2129859010, %7161
  %7163 = bitcast i32 %7162 to float
  %7164 = fmul fast float %7163, %7160
  %7165 = fadd fast float %7164, -1.000000e+00
  %7166 = bitcast float %7159 to i32
  %7167 = sub nsw i32 2129859010, %7166
  %7168 = bitcast i32 %7167 to float
  %7169 = fmul fast float %7168, %7153
  %7170 = fadd fast float %7169, 1.000000e+00
  %7171 = fmul fast float %7154, 2.000000e+00
  %7172 = fsub fast float 3.000000e+00, %7171
  %7173 = fadd fast float %7171, 1.000000e+00
  %7174 = fsub fast float 2.000000e+00, %7154
  %7175 = bitcast float %7172 to i32
  %7176 = sub nsw i32 2129859010, %7175
  %7177 = bitcast i32 %7176 to float
  %7178 = fmul fast float %7177, %7174
  %7179 = fadd fast float %7178, -1.000000e+00
  %7180 = bitcast float %7173 to i32
  %7181 = sub nsw i32 2129859010, %7180
  %7182 = bitcast i32 %7181 to float
  %7183 = fmul fast float %7182, %7154
  %7184 = fadd fast float %7183, 1.000000e+00
  %7185 = fadd fast float %7165, %7155
  %7186 = fmul fast float %7185, %7137
  %7187 = fadd fast float %7179, %7156
  %7188 = fmul fast float %7187, %7138
  %7189 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %46, float %7186, float %7188, float undef, float undef, i32 0, i32 0, i32 undef, float %7142)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7190 = extractvalue %dx.types.ResRet.f32 %7189, 0
  %7191 = fmul fast float %7190, %7158
  %7192 = fadd fast float %7170, %7155
  %7193 = fmul fast float %7192, %7137
  %7194 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %46, float %7193, float %7188, float undef, float undef, i32 0, i32 0, i32 undef, float %7142)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7195 = extractvalue %dx.types.ResRet.f32 %7194, 0
  %7196 = fmul fast float %7195, %7159
  %7197 = fadd fast float %7184, %7156
  %7198 = fmul fast float %7197, %7138
  %7199 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %46, float %7186, float %7198, float undef, float undef, i32 0, i32 0, i32 undef, float %7142)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7200 = extractvalue %dx.types.ResRet.f32 %7199, 0
  %7201 = fmul fast float %7200, %7158
  %7202 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %46, float %7193, float %7198, float undef, float undef, i32 0, i32 0, i32 undef, float %7142)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7203 = extractvalue %dx.types.ResRet.f32 %7202, 0
  %7204 = fmul fast float %7203, %7159
  %7205 = fadd fast float %7204, %7201
  %7206 = fmul fast float %7205, %7173
  %7207 = fadd fast float %7196, %7191
  %7208 = fmul fast float %7207, %7172
  %7209 = fadd fast float %7208, %7206
  %7210 = fmul fast float %7209, 6.250000e-02
  br label %7296

; <label>:7211                                    ; preds = %7132
  %7212 = fmul fast float %280, 0x401921FB60000000
  %7213 = call float @dx.op.unary.f32(i32 13, float %7212)  ; Sin(value)
  %7214 = call float @dx.op.unary.f32(i32 12, float %7212)  ; Cos(value)
  %7215 = fsub fast float -0.000000e+00, %7213
  br label %7216

; <label>:7216                                    ; preds = %7265, %7211
  %7217 = phi float [ 0.000000e+00, %7211 ], [ %7260, %7265 ]
  %7218 = phi float [ 0.000000e+00, %7211 ], [ %7262, %7265 ]
  %7219 = phi i32 [ 0, %7211 ], [ %7266, %7265 ]
  %7220 = mul i32 %7219, 2
  %7221 = add i32 0, %7220
  %7222 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7221
  %7223 = load float, float* %7222, align 4
  %7224 = mul i32 %7219, 2
  %7225 = add i32 1, %7224
  %7226 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7225
  %7227 = load float, float* %7226, align 4
  %7228 = fmul fast float %7223, %7214
  %7229 = call float @dx.op.tertiary.f32(i32 46, float %7227, float %7215, float %7228)  ; FMad(a,b,c)
  %7230 = fmul fast float %7223, %7213
  %7231 = call float @dx.op.tertiary.f32(i32 46, float %7227, float %7214, float %7230)  ; FMad(a,b,c)
  %7232 = fmul fast float %7229, %7140
  %7233 = fmul fast float %7231, %7140
  %7234 = fadd fast float %7232, %6451
  %7235 = fadd fast float %7233, %6452
  %7236 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %45, float %7234, float %7235, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7237 = extractvalue %dx.types.ResRet.f32 %7236, 0
  %7238 = extractvalue %dx.types.ResRet.f32 %7236, 1
  %7239 = extractvalue %dx.types.ResRet.f32 %7236, 2
  %7240 = extractvalue %dx.types.ResRet.f32 %7236, 3
  %7241 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 0
  store float %7237, float* %7241, align 4
  %7242 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 1
  store float %7238, float* %7242, align 4
  %7243 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 2
  store float %7239, float* %7243, align 4
  %7244 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 3
  store float %7240, float* %7244, align 4
  %7245 = fsub fast float %7237, %7142
  %7246 = fcmp fast olt float %7245, 0.000000e+00
  %7247 = select i1 %7246, float 0.000000e+00, float 1.000000e+00
  %7248 = fadd fast float %7247, %7217
  %7249 = fmul fast float %7247, %7245
  %7250 = fadd fast float %7249, %7218
  br label %7251

; <label>:7251                                    ; preds = %7251, %7216
  %7252 = phi i32 [ 1, %7216 ], [ %7263, %7251 ]
  %7253 = phi float [ %7250, %7216 ], [ %7262, %7251 ]
  %7254 = phi float [ %7248, %7216 ], [ %7260, %7251 ]
  %7255 = getelementptr [4 x float], [4 x float]* %100, i32 0, i32 %7252
  %7256 = load float, float* %7255, align 4, !tbaa !115, !noalias !105
  %7257 = fsub fast float %7256, %7142
  %7258 = fcmp fast olt float %7257, 0.000000e+00
  %7259 = select i1 %7258, float 0.000000e+00, float 1.000000e+00
  %7260 = fadd fast float %7259, %7254
  %7261 = fmul fast float %7259, %7257
  %7262 = fadd fast float %7261, %7253
  %7263 = add nuw nsw i32 %7252, 1
  %7264 = icmp eq i32 %7263, 4
  br i1 %7264, label %7265, label %7251, !llvm.loop !117

; <label>:7265                                    ; preds = %7251
  %7266 = add nuw nsw i32 %7219, 1
  %7267 = icmp eq i32 %7266, 8
  br i1 %7267, label %7268, label %7216, !llvm.loop !118

; <label>:7268                                    ; preds = %7265
  %7269 = fdiv fast float 1.000000e+00, %7260
  %7270 = fmul fast float %7269, %7262
  %7271 = fdiv fast float 1.000000e+00, %7142
  %7272 = fmul fast float %7270, %7271
  %7273 = call float @dx.op.unary.f32(i32 7, float %7272)  ; Saturate(value)
  %7274 = call float @dx.op.binary.f32(i32 35, float %7273, float 0.000000e+00)  ; FMax(a,b)
  %7275 = fmul fast float %7260, 3.125000e-02
  %7276 = call float @dx.op.unary.f32(i32 7, float %7275)  ; Saturate(value)
  %7277 = fmul fast float %7276, 2.000000e+00
  %7278 = fadd fast float %7277, -1.000000e+00
  %7279 = fcmp fast ogt float %7278, 0.000000e+00
  %7280 = fcmp fast olt float %7278, 0.000000e+00
  %7281 = zext i1 %7279 to i32
  %7282 = zext i1 %7280 to i32
  %7283 = sub nsw i32 %7281, %7282
  %7284 = sitofp i32 %7283 to float
  %7285 = fmul fast float %7284, %7278
  %7286 = fsub fast float 1.000000e+00, %7285
  %7287 = fmul fast float %7286, %7286
  %7288 = fmul fast float %7287, %7286
  %7289 = fsub fast float %7286, %7288
  %7290 = fmul fast float %7289, %7274
  %7291 = fsub fast float 1.000000e+00, %7288
  %7292 = fsub fast float %7291, %7290
  %7293 = fmul fast float %7284, 5.000000e-01
  %7294 = fmul fast float %7293, %7292
  %7295 = fsub fast float 5.000000e-01, %7294
  br label %7296

; <label>:7296                                    ; preds = %7268, %7144, %7129
  %7297 = phi float [ 1.000000e+00, %7129 ], [ %7210, %7144 ], [ %7295, %7268 ]
  %7298 = fcmp fast ogt float %6557, 0.000000e+00
  br i1 %7298, label %7299, label %7617, !dx.controlflow.hints !120

; <label>:7299                                    ; preds = %7296
  %7300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7301 = extractvalue %dx.types.CBufRet.f32 %7300, 0
  %7302 = fadd fast float %7301, %6441
  %7303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7304 = extractvalue %dx.types.CBufRet.f32 %7303, 2
  %7305 = extractvalue %dx.types.CBufRet.f32 %7303, 3
  %7306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7307 = extractvalue %dx.types.CBufRet.f32 %7306, 0
  %7308 = call float @dx.op.binary.f32(i32 35, float %7302, float 0.000000e+00)  ; FMax(a,b)
  %7309 = fadd fast float %7308, 0x3F10000000000000
  %7310 = fcmp fast oeq float %7307, 0.000000e+00
  br i1 %6444, label %7311, label %7464, !dx.controlflow.hints !121

; <label>:7311                                    ; preds = %7299
  br i1 %7310, label %7312, label %7379

; <label>:7312                                    ; preds = %7311
  %7313 = extractvalue %dx.types.CBufRet.f32 %7303, 1
  %7314 = extractvalue %dx.types.CBufRet.f32 %7303, 0
  %7315 = fmul fast float %7314, %6433
  %7316 = fmul fast float %7313, %6437
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
  %7354 = fmul fast float %7353, %7304
  %7355 = fadd fast float %7347, %7324
  %7356 = fmul fast float %7355, %7305
  %7357 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %46, float %7354, float %7356, float undef, float undef, i32 0, i32 0, i32 undef, float %7309)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7358 = extractvalue %dx.types.ResRet.f32 %7357, 0
  %7359 = fmul fast float %7358, %7326
  %7360 = fadd fast float %7338, %7323
  %7361 = fmul fast float %7360, %7304
  %7362 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %46, float %7361, float %7356, float undef, float undef, i32 0, i32 0, i32 undef, float %7309)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7363 = extractvalue %dx.types.ResRet.f32 %7362, 0
  %7364 = fmul fast float %7363, %7327
  %7365 = fadd fast float %7352, %7324
  %7366 = fmul fast float %7365, %7305
  %7367 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %46, float %7354, float %7366, float undef, float undef, i32 0, i32 0, i32 undef, float %7309)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7368 = extractvalue %dx.types.ResRet.f32 %7367, 0
  %7369 = fmul fast float %7368, %7326
  %7370 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %46, float %7361, float %7366, float undef, float undef, i32 0, i32 0, i32 undef, float %7309)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7371 = extractvalue %dx.types.ResRet.f32 %7370, 0
  %7372 = fmul fast float %7371, %7327
  %7373 = fadd fast float %7372, %7369
  %7374 = fmul fast float %7373, %7341
  %7375 = fadd fast float %7364, %7359
  %7376 = fmul fast float %7375, %7340
  %7377 = fadd fast float %7376, %7374
  %7378 = fmul fast float %7377, 6.250000e-02
  br label %7617

; <label>:7379                                    ; preds = %7311
  %7380 = fmul fast float %280, 0x401921FB60000000
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
  %7400 = fmul fast float %7397, %7307
  %7401 = fmul fast float %7399, %7307
  %7402 = fadd fast float %7400, %6433
  %7403 = fadd fast float %7401, %6437
  %7404 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %45, float %7402, float %7403, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
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
  %7413 = fsub fast float %7405, %7309
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
  %7424 = load float, float* %7423, align 4, !tbaa !115, !noalias !105
  %7425 = fsub fast float %7424, %7309
  %7426 = fcmp fast olt float %7425, 0.000000e+00
  %7427 = select i1 %7426, float 0.000000e+00, float 1.000000e+00
  %7428 = fadd fast float %7427, %7422
  %7429 = fmul fast float %7427, %7425
  %7430 = fadd fast float %7429, %7421
  %7431 = add nuw nsw i32 %7420, 1
  %7432 = icmp eq i32 %7431, 4
  br i1 %7432, label %7433, label %7419, !llvm.loop !117

; <label>:7433                                    ; preds = %7419
  %7434 = add nuw nsw i32 %7387, 1
  %7435 = icmp eq i32 %7434, 8
  br i1 %7435, label %7436, label %7384, !llvm.loop !118

; <label>:7436                                    ; preds = %7433
  %7437 = fdiv fast float 1.000000e+00, %7428
  %7438 = fmul fast float %7437, %7430
  %7439 = fdiv fast float 1.000000e+00, %7309
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
  br label %7617

; <label>:7464                                    ; preds = %7299
  br i1 %7310, label %7465, label %7532

; <label>:7465                                    ; preds = %7464
  %7466 = extractvalue %dx.types.CBufRet.f32 %7303, 1
  %7467 = extractvalue %dx.types.CBufRet.f32 %7303, 0
  %7468 = fmul fast float %7467, %6433
  %7469 = fmul fast float %7466, %6437
  %7470 = fadd fast float %7468, 5.000000e-01
  %7471 = call float @dx.op.unary.f32(i32 27, float %7470)  ; Round_ni(value)
  %7472 = fadd fast float %7469, 5.000000e-01
  %7473 = call float @dx.op.unary.f32(i32 27, float %7472)  ; Round_ni(value)
  %7474 = fsub fast float %7470, %7471
  %7475 = fsub fast float %7472, %7473
  %7476 = fadd fast float %7471, -5.000000e-01
  %7477 = fadd fast float %7473, -5.000000e-01
  %7478 = fmul fast float %7474, 2.000000e+00
  %7479 = fsub fast float 3.000000e+00, %7478
  %7480 = fadd fast float %7478, 1.000000e+00
  %7481 = fsub fast float 2.000000e+00, %7474
  %7482 = bitcast float %7479 to i32
  %7483 = sub nsw i32 2129859010, %7482
  %7484 = bitcast i32 %7483 to float
  %7485 = fmul fast float %7484, %7481
  %7486 = fadd fast float %7485, -1.000000e+00
  %7487 = bitcast float %7480 to i32
  %7488 = sub nsw i32 2129859010, %7487
  %7489 = bitcast i32 %7488 to float
  %7490 = fmul fast float %7489, %7474
  %7491 = fadd fast float %7490, 1.000000e+00
  %7492 = fmul fast float %7475, 2.000000e+00
  %7493 = fsub fast float 3.000000e+00, %7492
  %7494 = fadd fast float %7492, 1.000000e+00
  %7495 = fsub fast float 2.000000e+00, %7475
  %7496 = bitcast float %7493 to i32
  %7497 = sub nsw i32 2129859010, %7496
  %7498 = bitcast i32 %7497 to float
  %7499 = fmul fast float %7498, %7495
  %7500 = fadd fast float %7499, -1.000000e+00
  %7501 = bitcast float %7494 to i32
  %7502 = sub nsw i32 2129859010, %7501
  %7503 = bitcast i32 %7502 to float
  %7504 = fmul fast float %7503, %7475
  %7505 = fadd fast float %7504, 1.000000e+00
  %7506 = fadd fast float %7486, %7476
  %7507 = fmul fast float %7506, %7304
  %7508 = fadd fast float %7500, %7477
  %7509 = fmul fast float %7508, %7305
  %7510 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %7507, float %7509, float undef, float undef, i32 0, i32 0, i32 undef, float %7309)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7511 = extractvalue %dx.types.ResRet.f32 %7510, 0
  %7512 = fmul fast float %7511, %7479
  %7513 = fadd fast float %7491, %7476
  %7514 = fmul fast float %7513, %7304
  %7515 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %7514, float %7509, float undef, float undef, i32 0, i32 0, i32 undef, float %7309)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7516 = extractvalue %dx.types.ResRet.f32 %7515, 0
  %7517 = fmul fast float %7516, %7480
  %7518 = fadd fast float %7505, %7477
  %7519 = fmul fast float %7518, %7305
  %7520 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %7507, float %7519, float undef, float undef, i32 0, i32 0, i32 undef, float %7309)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7521 = extractvalue %dx.types.ResRet.f32 %7520, 0
  %7522 = fmul fast float %7521, %7479
  %7523 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %7514, float %7519, float undef, float undef, i32 0, i32 0, i32 undef, float %7309)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7524 = extractvalue %dx.types.ResRet.f32 %7523, 0
  %7525 = fmul fast float %7524, %7480
  %7526 = fadd fast float %7525, %7522
  %7527 = fmul fast float %7526, %7494
  %7528 = fadd fast float %7517, %7512
  %7529 = fmul fast float %7528, %7493
  %7530 = fadd fast float %7529, %7527
  %7531 = fmul fast float %7530, 6.250000e-02
  br label %7617

; <label>:7532                                    ; preds = %7464
  %7533 = fmul fast float %280, 0x401921FB60000000
  %7534 = call float @dx.op.unary.f32(i32 13, float %7533)  ; Sin(value)
  %7535 = call float @dx.op.unary.f32(i32 12, float %7533)  ; Cos(value)
  %7536 = fsub fast float -0.000000e+00, %7534
  br label %7537

; <label>:7537                                    ; preds = %7586, %7532
  %7538 = phi float [ 0.000000e+00, %7532 ], [ %7581, %7586 ]
  %7539 = phi float [ 0.000000e+00, %7532 ], [ %7583, %7586 ]
  %7540 = phi i32 [ 0, %7532 ], [ %7587, %7586 ]
  %7541 = mul i32 %7540, 2
  %7542 = add i32 0, %7541
  %7543 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7542
  %7544 = load float, float* %7543, align 4
  %7545 = mul i32 %7540, 2
  %7546 = add i32 1, %7545
  %7547 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7546
  %7548 = load float, float* %7547, align 4
  %7549 = fmul fast float %7544, %7535
  %7550 = call float @dx.op.tertiary.f32(i32 46, float %7548, float %7536, float %7549)  ; FMad(a,b,c)
  %7551 = fmul fast float %7544, %7534
  %7552 = call float @dx.op.tertiary.f32(i32 46, float %7548, float %7535, float %7551)  ; FMad(a,b,c)
  %7553 = fmul fast float %7550, %7307
  %7554 = fmul fast float %7552, %7307
  %7555 = fadd fast float %7553, %6433
  %7556 = fadd fast float %7554, %6437
  %7557 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %45, float %7555, float %7556, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7558 = extractvalue %dx.types.ResRet.f32 %7557, 0
  %7559 = extractvalue %dx.types.ResRet.f32 %7557, 1
  %7560 = extractvalue %dx.types.ResRet.f32 %7557, 2
  %7561 = extractvalue %dx.types.ResRet.f32 %7557, 3
  %7562 = getelementptr inbounds [4 x float], [4 x float]* %98, i32 0, i32 0
  store float %7558, float* %7562, align 4
  %7563 = getelementptr inbounds [4 x float], [4 x float]* %98, i32 0, i32 1
  store float %7559, float* %7563, align 4
  %7564 = getelementptr inbounds [4 x float], [4 x float]* %98, i32 0, i32 2
  store float %7560, float* %7564, align 4
  %7565 = getelementptr inbounds [4 x float], [4 x float]* %98, i32 0, i32 3
  store float %7561, float* %7565, align 4
  %7566 = fsub fast float %7558, %7309
  %7567 = fcmp fast olt float %7566, 0.000000e+00
  %7568 = select i1 %7567, float 0.000000e+00, float 1.000000e+00
  %7569 = fadd fast float %7568, %7538
  %7570 = fmul fast float %7568, %7566
  %7571 = fadd fast float %7570, %7539
  br label %7572

; <label>:7572                                    ; preds = %7572, %7537
  %7573 = phi i32 [ 1, %7537 ], [ %7584, %7572 ]
  %7574 = phi float [ %7571, %7537 ], [ %7583, %7572 ]
  %7575 = phi float [ %7569, %7537 ], [ %7581, %7572 ]
  %7576 = getelementptr [4 x float], [4 x float]* %98, i32 0, i32 %7573
  %7577 = load float, float* %7576, align 4, !tbaa !115, !noalias !105
  %7578 = fsub fast float %7577, %7309
  %7579 = fcmp fast olt float %7578, 0.000000e+00
  %7580 = select i1 %7579, float 0.000000e+00, float 1.000000e+00
  %7581 = fadd fast float %7580, %7575
  %7582 = fmul fast float %7580, %7578
  %7583 = fadd fast float %7582, %7574
  %7584 = add nuw nsw i32 %7573, 1
  %7585 = icmp eq i32 %7584, 4
  br i1 %7585, label %7586, label %7572, !llvm.loop !117

; <label>:7586                                    ; preds = %7572
  %7587 = add nuw nsw i32 %7540, 1
  %7588 = icmp eq i32 %7587, 8
  br i1 %7588, label %7589, label %7537, !llvm.loop !118

; <label>:7589                                    ; preds = %7586
  %7590 = fdiv fast float 1.000000e+00, %7581
  %7591 = fmul fast float %7590, %7583
  %7592 = fdiv fast float 1.000000e+00, %7309
  %7593 = fmul fast float %7591, %7592
  %7594 = call float @dx.op.unary.f32(i32 7, float %7593)  ; Saturate(value)
  %7595 = call float @dx.op.binary.f32(i32 35, float %7594, float 0.000000e+00)  ; FMax(a,b)
  %7596 = fmul fast float %7581, 3.125000e-02
  %7597 = call float @dx.op.unary.f32(i32 7, float %7596)  ; Saturate(value)
  %7598 = fmul fast float %7597, 2.000000e+00
  %7599 = fadd fast float %7598, -1.000000e+00
  %7600 = fcmp fast ogt float %7599, 0.000000e+00
  %7601 = fcmp fast olt float %7599, 0.000000e+00
  %7602 = zext i1 %7600 to i32
  %7603 = zext i1 %7601 to i32
  %7604 = sub nsw i32 %7602, %7603
  %7605 = sitofp i32 %7604 to float
  %7606 = fmul fast float %7605, %7599
  %7607 = fsub fast float 1.000000e+00, %7606
  %7608 = fmul fast float %7607, %7607
  %7609 = fmul fast float %7608, %7607
  %7610 = fsub fast float %7607, %7609
  %7611 = fmul fast float %7610, %7595
  %7612 = fsub fast float 1.000000e+00, %7609
  %7613 = fsub fast float %7612, %7611
  %7614 = fmul fast float %7605, 5.000000e-01
  %7615 = fmul fast float %7614, %7613
  %7616 = fsub fast float 5.000000e-01, %7615
  br label %7617

; <label>:7617                                    ; preds = %7589, %7465, %7436, %7312, %7296
  %7618 = phi float [ 1.000000e+00, %7296 ], [ %7378, %7312 ], [ %7463, %7436 ], [ %7531, %7465 ], [ %7616, %7589 ]
  %7619 = fsub fast float %7130, %6963
  %7620 = fmul fast float %7619, %6530
  %7621 = fadd fast float %7620, %6963
  %7622 = fsub fast float %7297, %7621
  %7623 = fmul fast float %7622, %6529
  %7624 = fadd fast float %7623, %7621
  %7625 = fsub fast float %7618, %7624
  %7626 = fmul fast float %7625, %6557
  %7627 = fadd fast float %7626, %7624
  %7628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7629 = extractvalue %dx.types.CBufRet.f32 %7628, 2
  %7630 = fcmp fast ogt float %7629, 0.000000e+00
  br i1 %7630, label %7631, label %7671, !dx.controlflow.hints !122

; <label>:7631                                    ; preds = %7617
  %7632 = fcmp fast ugt float %7629, 0.000000e+00
  br i1 %7632, label %7633, label %7668

; <label>:7633                                    ; preds = %7631
  %7634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7635 = extractvalue %dx.types.CBufRet.f32 %7634, 0
  %7636 = extractvalue %dx.types.CBufRet.f32 %7634, 1
  %7637 = extractvalue %dx.types.CBufRet.f32 %7634, 2
  %7638 = extractvalue %dx.types.CBufRet.f32 %7634, 3
  %7639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7640 = extractvalue %dx.types.CBufRet.f32 %7639, 0
  %7641 = extractvalue %dx.types.CBufRet.f32 %7639, 1
  %7642 = extractvalue %dx.types.CBufRet.f32 %7639, 2
  %7643 = extractvalue %dx.types.CBufRet.f32 %7639, 3
  %7644 = extractvalue %dx.types.CBufRet.f32 %7628, 0
  %7645 = extractvalue %dx.types.CBufRet.f32 %7628, 1
  %7646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7647 = extractvalue %dx.types.CBufRet.f32 %7646, 0
  %7648 = extractvalue %dx.types.CBufRet.f32 %7646, 1
  %7649 = extractvalue %dx.types.CBufRet.f32 %7646, 2
  %7650 = fadd fast float %7647, %6410
  %7651 = fadd fast float %7648, %6411
  %7652 = fadd fast float %7649, %6412
  %7653 = fmul fast float %7650, %7635
  %7654 = call float @dx.op.tertiary.f32(i32 46, float %7636, float %7651, float %7653)  ; FMad(a,b,c)
  %7655 = call float @dx.op.tertiary.f32(i32 46, float %7637, float %7652, float %7654)  ; FMad(a,b,c)
  %7656 = fadd fast float %7655, %7638
  %7657 = fmul fast float %7650, %7640
  %7658 = call float @dx.op.tertiary.f32(i32 46, float %7641, float %7651, float %7657)  ; FMad(a,b,c)
  %7659 = call float @dx.op.tertiary.f32(i32 46, float %7642, float %7652, float %7658)  ; FMad(a,b,c)
  %7660 = fadd fast float %7659, %7643
  %7661 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %41, float %7656, float %7660, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7662 = extractvalue %dx.types.ResRet.f32 %7661, 0
  %7663 = fmul fast float %7662, %7645
  %7664 = fadd fast float %7663, %7644
  %7665 = call float @dx.op.unary.f32(i32 7, float %7664)  ; Saturate(value)
  %7666 = fmul fast float %7665, %7629
  %7667 = fsub fast float 1.000000e+00, %7666
  br label %7668

; <label>:7668                                    ; preds = %7633, %7631
  %7669 = phi float [ %7667, %7633 ], [ 1.000000e+00, %7631 ]
  %7670 = fmul fast float %7669, %7627
  br label %7671

; <label>:7671                                    ; preds = %7668, %7617, %6390
  %7672 = phi float [ 1.000000e+00, %6390 ], [ %7670, %7668 ], [ %7627, %7617 ]
  %7673 = call float @dx.op.binary.f32(i32 36, float %7672, float %7672)  ; FMin(a,b)
  %7674 = call float @dx.op.binary.f32(i32 36, float %7672, float %7673)  ; FMin(a,b)
  %7675 = fcmp fast ogt float %7674, 0.000000e+00
  br i1 %7675, label %7676, label %7842, !dx.controlflow.hints !123

; <label>:7676                                    ; preds = %7671
  %7677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7678 = extractvalue %dx.types.CBufRet.f32 %7677, 0
  %7679 = extractvalue %dx.types.CBufRet.f32 %7677, 1
  %7680 = extractvalue %dx.types.CBufRet.f32 %7677, 2
  %7681 = extractvalue %dx.types.CBufRet.f32 %7677, 3
  %7682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7683 = extractvalue %dx.types.CBufRet.f32 %7682, 0
  %7684 = extractvalue %dx.types.CBufRet.f32 %7682, 1
  %7685 = extractvalue %dx.types.CBufRet.f32 %7682, 2
  %7686 = extractvalue %dx.types.CBufRet.f32 %7682, 3
  %7687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7688 = extractvalue %dx.types.CBufRet.f32 %7687, 0
  %7689 = extractvalue %dx.types.CBufRet.f32 %7687, 1
  %7690 = extractvalue %dx.types.CBufRet.f32 %7687, 2
  %7691 = extractvalue %dx.types.CBufRet.f32 %7687, 3
  %7692 = fmul fast float %7678, %6410
  %7693 = call float @dx.op.tertiary.f32(i32 46, float %6411, float %7679, float %7692)  ; FMad(a,b,c)
  %7694 = call float @dx.op.tertiary.f32(i32 46, float %6412, float %7680, float %7693)  ; FMad(a,b,c)
  %7695 = fadd fast float %7694, %7681
  %7696 = fmul fast float %7683, %6410
  %7697 = call float @dx.op.tertiary.f32(i32 46, float %6411, float %7684, float %7696)  ; FMad(a,b,c)
  %7698 = call float @dx.op.tertiary.f32(i32 46, float %6412, float %7685, float %7697)  ; FMad(a,b,c)
  %7699 = fadd fast float %7698, %7686
  %7700 = fmul fast float %7688, %6410
  %7701 = call float @dx.op.tertiary.f32(i32 46, float %6411, float %7689, float %7700)  ; FMad(a,b,c)
  %7702 = call float @dx.op.tertiary.f32(i32 46, float %6412, float %7690, float %7701)  ; FMad(a,b,c)
  %7703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7704 = extractvalue %dx.types.CBufRet.f32 %7703, 0
  %7705 = extractvalue %dx.types.CBufRet.f32 %7703, 1
  %7706 = extractvalue %dx.types.CBufRet.f32 %7703, 3
  %7707 = fmul fast float %7706, %7695
  %7708 = fmul fast float %7706, %7699
  %7709 = fadd fast float %7707, %7704
  %7710 = fadd fast float %7708, %7705
  %7711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7712 = extractvalue %dx.types.CBufRet.f32 %7711, 0
  %7713 = extractvalue %dx.types.CBufRet.f32 %7711, 1
  %7714 = fsub fast float %7709, %7712
  %7715 = fsub fast float %7710, %7713
  %7716 = fcmp fast olt float %7714, 0.000000e+00
  %7717 = fcmp fast olt float %7715, 0.000000e+00
  %7718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7719 = extractvalue %dx.types.CBufRet.f32 %7718, 0
  %7720 = extractvalue %dx.types.CBufRet.f32 %7718, 1
  %7721 = extractvalue %dx.types.CBufRet.f32 %7718, 2
  %7722 = extractvalue %dx.types.CBufRet.f32 %7718, 3
  %7723 = select i1 %7716, float %7719, float %7721
  %7724 = select i1 %7717, float %7720, float %7722
  %7725 = fmul fast float %7723, %7714
  %7726 = fmul fast float %7724, %7715
  %7727 = call float @dx.op.unary.f32(i32 6, float %7725)  ; FAbs(value)
  %7728 = call float @dx.op.unary.f32(i32 6, float %7726)  ; FAbs(value)
  %7729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7730 = extractvalue %dx.types.CBufRet.f32 %7729, 0
  %7731 = call float @dx.op.binary.f32(i32 35, float %7727, float %7728)  ; FMax(a,b)
  %7732 = fsub fast float %7730, %7731
  %7733 = call float @dx.op.unary.f32(i32 7, float %7732)  ; Saturate(value)
  %7734 = fcmp fast ogt float %7733, 0.000000e+00
  br i1 %7734, label %7735, label %7776, !dx.controlflow.hints !124

; <label>:7735                                    ; preds = %7676
  %7736 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %44, float %7709, float %7710, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7737 = extractvalue %dx.types.ResRet.f32 %7736, 1
  %7738 = fcmp fast ogt float %7737, 0.000000e+00
  br i1 %7738, label %7739, label %7771

; <label>:7739                                    ; preds = %7735
  %7740 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %44, float %7709, float %7710, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7741 = extractvalue %dx.types.ResRet.f32 %7740, 0
  %7742 = extractvalue %dx.types.ResRet.f32 %7740, 1
  %7743 = extractvalue %dx.types.ResRet.f32 %7740, 2
  %7744 = extractvalue %dx.types.ResRet.f32 %7740, 3
  %7745 = fsub fast float 1.000000e+00, %7691
  %7746 = fsub fast float %7745, %7702
  %7747 = fmul fast float %7746, 0x400921FB60000000
  %7748 = fadd fast float %7747, 0x3FF921FB60000000
  %7749 = call float @dx.op.unary.f32(i32 13, float %7748)  ; Sin(value)
  %7750 = fadd fast float %7749, -1.000000e+00
  %7751 = fmul fast float %7750, 0x3FD45F3060000000
  %7752 = fmul fast float %7746, 0x401921FB60000000
  %7753 = fadd fast float %7752, 0x400921FB60000000
  %7754 = call float @dx.op.unary.f32(i32 13, float %7753)  ; Sin(value)
  %7755 = fadd fast float %7754, 0x3E7777A5C0000000
  %7756 = fmul fast float %7755, 0x3FC45F3060000000
  %7757 = fmul fast float %7746, 0x4022D97C80000000
  %7758 = fadd fast float %7757, 0x4012D97C80000000
  %7759 = call float @dx.op.unary.f32(i32 13, float %7758)  ; Sin(value)
  %7760 = fadd fast float %7759, 1.000000e+00
  %7761 = fmul fast float %7760, 0x3FBB2995E0000000
  %7762 = fmul fast float %7746, 0x402921FB60000000
  %7763 = fadd fast float %7762, 0x401921FB60000000
  %7764 = call float @dx.op.unary.f32(i32 13, float %7763)  ; Sin(value)
  %7765 = fadd fast float %7764, 0xBE8777A5C0000000
  %7766 = fmul fast float %7765, 0x3FB45F3060000000
  %7767 = call float @dx.op.dot4.f32(i32 56, float %7741, float %7742, float %7743, float %7744, float %7751, float %7756, float %7761, float %7766)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7768 = fmul fast float %7767, 0xBFF7154760000000
  %7769 = call float @dx.op.unary.f32(i32 21, float %7768)  ; Exp(value)
  %7770 = call float @dx.op.unary.f32(i32 7, float %7769)  ; Saturate(value)
  br label %7771

; <label>:7771                                    ; preds = %7739, %7735
  %7772 = phi float [ %7770, %7739 ], [ 1.000000e+00, %7735 ]
  %7773 = fadd fast float %7772, -1.000000e+00
  %7774 = fmul fast float %7773, %7733
  %7775 = fadd fast float %7774, 1.000000e+00
  br label %7776

; <label>:7776                                    ; preds = %7771, %7676
  %7777 = phi float [ %7775, %7771 ], [ 1.000000e+00, %7676 ]
  %7778 = fmul fast float %7777, %7672
  %7779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7780 = extractvalue %dx.types.CBufRet.f32 %7779, 0
  %7781 = extractvalue %dx.types.CBufRet.f32 %7779, 1
  %7782 = extractvalue %dx.types.CBufRet.f32 %7779, 2
  %7783 = fadd fast float %7780, %195
  %7784 = fadd fast float %7781, %196
  %7785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7786 = extractvalue %dx.types.CBufRet.f32 %7785, 1
  %7787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7788 = extractvalue %dx.types.CBufRet.f32 %7787, 0
  %7789 = extractvalue %dx.types.CBufRet.f32 %7787, 1
  %7790 = extractvalue %dx.types.CBufRet.f32 %7787, 2
  %7791 = fsub fast float -0.000000e+00, %7783
  %7792 = fsub fast float -0.000000e+00, %7784
  %7793 = fsub fast float -0.000000e+00, %197
  %7794 = fsub fast float %7793, %7782
  %7795 = fadd fast float %7794, %7786
  %7796 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7791, float %7792, float %7795)  ; Dot3(ax,ay,az,bx,by,bz)
  %7797 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7788, float %7789, float %7790)  ; Dot3(ax,ay,az,bx,by,bz)
  %7798 = fdiv fast float 1.000000e+00, %7797
  %7799 = fmul fast float %7798, %7796
  %7800 = fmul fast float %7788, %7799
  %7801 = fmul fast float %7789, %7799
  %7802 = fadd fast float %7800, %7783
  %7803 = fadd fast float %7801, %7784
  %7804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7805 = extractvalue %dx.types.CBufRet.f32 %7804, 0
  %7806 = extractvalue %dx.types.CBufRet.f32 %7804, 1
  %7807 = fsub fast float %7802, %7805
  %7808 = fsub fast float %7803, %7806
  %7809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7810 = extractvalue %dx.types.CBufRet.f32 %7809, 2
  %7811 = extractvalue %dx.types.CBufRet.f32 %7809, 3
  %7812 = fmul fast float %7807, %7810
  %7813 = fmul fast float %7808, %7811
  %7814 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7815 = extractvalue %dx.types.CBufRet.i32 %7814, 3
  %7816 = icmp eq i32 %7815, 0
  br i1 %7816, label %7822, label %7817

; <label>:7817                                    ; preds = %7776
  %7818 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %7812, float %7813, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7819 = extractvalue %dx.types.ResRet.f32 %7818, 0
  %7820 = extractvalue %dx.types.ResRet.f32 %7818, 1
  %7821 = extractvalue %dx.types.ResRet.f32 %7818, 2
  br label %7827

; <label>:7822                                    ; preds = %7776
  %7823 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %7812, float %7813, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7824 = extractvalue %dx.types.ResRet.f32 %7823, 0
  %7825 = extractvalue %dx.types.ResRet.f32 %7823, 1
  %7826 = extractvalue %dx.types.ResRet.f32 %7823, 2
  br label %7827

; <label>:7827                                    ; preds = %7822, %7817
  %7828 = phi float [ %7819, %7817 ], [ %7824, %7822 ]
  %7829 = phi float [ %7820, %7817 ], [ %7825, %7822 ]
  %7830 = phi float [ %7821, %7817 ], [ %7826, %7822 ]
  %7831 = extractvalue %dx.types.CBufRet.f32 %7785, 2
  %7832 = fmul fast float %7831, %7828
  %7833 = extractvalue %dx.types.CBufRet.f32 %7785, 0
  %7834 = fsub fast float %7799, %7833
  %7835 = fsub fast float %7834, %7832
  %7836 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7835)  ; FMax(a,b)
  %7837 = fmul fast float %7836, %7829
  %7838 = call float @dx.op.binary.f32(i32 36, float %7830, float %7837)  ; FMin(a,b)
  %7839 = fmul fast float %7838, 0xBFF7154760000000
  %7840 = call float @dx.op.unary.f32(i32 21, float %7839)  ; Exp(value)
  %7841 = fmul fast float %7778, %7840
  br label %7842

; <label>:7842                                    ; preds = %7827, %7671
  %7843 = phi float [ %7841, %7827 ], [ %7672, %7671 ]
  %7844 = call float @dx.op.binary.f32(i32 36, float %7843, float %7843)  ; FMin(a,b)
  %7845 = call float @dx.op.binary.f32(i32 36, float %7843, float %7844)  ; FMin(a,b)
  %7846 = fcmp fast ogt float %7845, 0.000000e+00
  br i1 %7846, label %7847, label %8030, !dx.controlflow.hints !125

; <label>:7847                                    ; preds = %7842
  %7848 = fmul fast float %7843, %6402
  %7849 = fmul fast float %7843, %6403
  %7850 = fmul fast float %7843, %6404
  %7851 = fsub fast float %6391, %5592
  %7852 = fsub fast float %6392, %5593
  %7853 = fsub fast float %6393, %5594
  %7854 = call float @dx.op.dot3.f32(i32 55, float %7851, float %7852, float %7853, float %7851, float %7852, float %7853)  ; Dot3(ax,ay,az,bx,by,bz)
  %7855 = call float @dx.op.unary.f32(i32 25, float %7854)  ; Rsqrt(value)
  %7856 = fmul fast float %7855, %7851
  %7857 = fmul fast float %7855, %7852
  %7858 = fmul fast float %7855, %7853
  %7859 = call float @dx.op.dot3.f32(i32 55, float %6391, float %6392, float %6393, float %5553, float %5554, float %5555)  ; Dot3(ax,ay,az,bx,by,bz)
  %7860 = call float @dx.op.dot3.f32(i32 55, float %5595, float %5596, float %5597, float %7856, float %7857, float %7858)  ; Dot3(ax,ay,az,bx,by,bz)
  %7861 = call float @dx.op.unary.f32(i32 7, float %7859)  ; Saturate(value)
  %7862 = fmul fast float %7861, %7861
  %7863 = fmul fast float %7862, %5625
  %7864 = call float @dx.op.unary.f32(i32 7, float %7863)  ; Saturate(value)
  %7865 = fmul fast float %7864, %7861
  %7866 = call float @dx.op.dot3.f32(i32 55, float %5553, float %5554, float %5555, float %7856, float %7857, float %7858)  ; Dot3(ax,ay,az,bx,by,bz)
  %7867 = fmul fast float %7866, %7866
  %7868 = call float @dx.op.unary.f32(i32 6, float %7859)  ; FAbs(value)
  %7869 = fsub fast float 1.000000e+00, %5618
  %7870 = fmul fast float %5600, %5600
  %7871 = fmul fast float %7870, %7869
  %7872 = fadd fast float %7871, %5618
  %7873 = bitcast float %7872 to i32
  %7874 = ashr i32 %7873, 1
  %7875 = add nsw i32 %7874, 532487669
  %7876 = bitcast i32 %7875 to float
  %7877 = fadd fast float %7876, %5600
  %7878 = fmul fast float %5618, %7867
  %7879 = fsub fast float 1.000000e+00, %7867
  %7880 = fadd fast float %7879, %7878
  %7881 = fmul fast float %7868, %7868
  %7882 = fmul fast float %7881, %7869
  %7883 = fadd fast float %7882, %5618
  %7884 = bitcast float %7883 to i32
  %7885 = ashr i32 %7884, 1
  %7886 = add nsw i32 %7885, 532487669
  %7887 = bitcast i32 %7886 to float
  %7888 = fadd fast float %7887, %7868
  %7889 = fmul fast float %7880, %7880
  %7890 = fmul fast float %7889, %7877
  %7891 = fmul fast float %7890, %7888
  %7892 = fdiv fast float 0x3FF0A00000000000, %7891
  %7893 = fmul fast float %7892, %5618
  %7894 = fmul fast float %5729, 0x3FF9999980000000
  %7895 = fsub fast float 5.000000e+00, %7894
  %7896 = call float @dx.op.unary.f32(i32 6, float %7860)  ; FAbs(value)
  %7897 = fsub fast float 1.000000e+00, %7896
  %7898 = fmul fast float %5729, 0x41D9660740000000
  %7899 = fadd fast float %7898, 0xC1EFBF8940000000
  %7900 = bitcast float %7897 to i32
  %7901 = sitofp i32 %7900 to float
  %7902 = fmul fast float %7901, %7895
  %7903 = fadd fast float %7899, %7902
  %7904 = fptosi float %7903 to i32
  %7905 = bitcast i32 %7904 to float
  %7906 = fsub fast float 1.000000e+00, %5547
  %7907 = fsub fast float 1.000000e+00, %5548
  %7908 = fsub fast float 1.000000e+00, %5598
  %7909 = fmul fast float %7905, %7906
  %7910 = fmul fast float %7905, %7907
  %7911 = fmul fast float %7905, %7908
  %7912 = fadd fast float %7909, %5547
  %7913 = fadd fast float %7910, %5548
  %7914 = fadd fast float %7911, %5598
  br i1 %5752, label %7915, label %7938

; <label>:7915                                    ; preds = %7847
  %7916 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %44, float %4654, float %7896, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7917 = extractvalue %dx.types.ResRet.f32 %7916, 0
  %7918 = extractvalue %dx.types.ResRet.f32 %7916, 1
  %7919 = extractvalue %dx.types.ResRet.f32 %7916, 2
  %7920 = fadd fast float %7917, -5.000000e-01
  %7921 = fadd fast float %7918, -5.000000e-01
  %7922 = fadd fast float %7919, -5.000000e-01
  %7923 = fmul fast float %5547, 4.000000e+00
  %7924 = fmul fast float %7923, %7906
  %7925 = fmul fast float %7924, %7920
  %7926 = fmul fast float %5548, 4.000000e+00
  %7927 = fmul fast float %7926, %7907
  %7928 = fmul fast float %7927, %7921
  %7929 = fmul fast float %5598, 4.000000e+00
  %7930 = fmul fast float %7929, %7908
  %7931 = fmul fast float %7930, %7922
  %7932 = fadd fast float %7925, %7912
  %7933 = fadd fast float %7928, %7913
  %7934 = fadd fast float %7931, %7914
  %7935 = call float @dx.op.unary.f32(i32 7, float %7932)  ; Saturate(value)
  %7936 = call float @dx.op.unary.f32(i32 7, float %7933)  ; Saturate(value)
  %7937 = call float @dx.op.unary.f32(i32 7, float %7934)  ; Saturate(value)
  br label %7938

; <label>:7938                                    ; preds = %7915, %7847
  %7939 = phi float [ %7935, %7915 ], [ %7912, %7847 ]
  %7940 = phi float [ %7936, %7915 ], [ %7913, %7847 ]
  %7941 = phi float [ %7937, %7915 ], [ %7914, %7847 ]
  %7942 = fmul fast float %7859, 9.843750e-01
  %7943 = fadd fast float %7942, 7.812500e-03
  %7944 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %44, float %7943, float %5733, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7945 = extractvalue %dx.types.ResRet.f32 %7944, 0
  %7946 = extractvalue %dx.types.ResRet.f32 %7944, 1
  %7947 = extractvalue %dx.types.ResRet.f32 %7944, 2
  %7948 = extractvalue %dx.types.ResRet.f32 %7944, 3
  %7949 = fsub fast float %7947, %7945
  %7950 = fsub fast float %7948, %7946
  %7951 = fmul fast float %7949, %5739
  %7952 = fmul fast float %7950, %5739
  %7953 = fadd fast float %7951, %7945
  %7954 = fadd fast float %7952, %7946
  %7955 = fmul fast float %7953, %5547
  %7956 = fmul fast float %7953, %5548
  %7957 = fmul fast float %7953, %5598
  %7958 = fadd fast float %7955, %7954
  %7959 = fadd fast float %7956, %7954
  %7960 = fadd fast float %7957, %7954
  br i1 %5752, label %7961, label %7984

; <label>:7961                                    ; preds = %7938
  %7962 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %44, float %4654, float %7859, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7963 = extractvalue %dx.types.ResRet.f32 %7962, 0
  %7964 = extractvalue %dx.types.ResRet.f32 %7962, 1
  %7965 = extractvalue %dx.types.ResRet.f32 %7962, 2
  %7966 = fadd fast float %7963, -5.000000e-01
  %7967 = fadd fast float %7964, -5.000000e-01
  %7968 = fadd fast float %7965, -5.000000e-01
  %7969 = fmul fast float %5547, 4.000000e+00
  %7970 = fmul fast float %7969, %7906
  %7971 = fmul fast float %7970, %7966
  %7972 = fmul fast float %5548, 4.000000e+00
  %7973 = fmul fast float %7972, %7907
  %7974 = fmul fast float %7973, %7967
  %7975 = fmul fast float %5598, 4.000000e+00
  %7976 = fmul fast float %7975, %7908
  %7977 = fmul fast float %7976, %7968
  %7978 = fadd fast float %7971, %7958
  %7979 = fadd fast float %7974, %7959
  %7980 = fadd fast float %7977, %7960
  %7981 = call float @dx.op.unary.f32(i32 7, float %7978)  ; Saturate(value)
  %7982 = call float @dx.op.unary.f32(i32 7, float %7979)  ; Saturate(value)
  %7983 = call float @dx.op.unary.f32(i32 7, float %7980)  ; Saturate(value)
  br label %7984

; <label>:7984                                    ; preds = %7961, %7938
  %7985 = phi float [ %7981, %7961 ], [ %7958, %7938 ]
  %7986 = phi float [ %7982, %7961 ], [ %7959, %7938 ]
  %7987 = phi float [ %7983, %7961 ], [ %7960, %7938 ]
  %7988 = call float @dx.op.binary.f32(i32 35, float %7986, float %7987)  ; FMax(a,b)
  %7989 = call float @dx.op.binary.f32(i32 35, float %7985, float %7988)  ; FMax(a,b)
  %7990 = fsub fast float 1.000000e+00, %7989
  %7991 = fmul fast float %7939, %7893
  %7992 = fmul fast float %7940, %7893
  %7993 = fmul fast float %7941, %7893
  %7994 = fsub fast float 1.000000e+00, %7860
  %7995 = bitcast float %7994 to i32
  %7996 = sitofp i32 %7995 to float
  %7997 = fmul fast float %7996, 5.000000e+00
  %7998 = fadd fast float %7997, 0xC1EFBF8940000000
  %7999 = fptosi float %7998 to i32
  %8000 = bitcast i32 %7999 to float
  %8001 = fmul fast float %8000, %4655
  %8002 = fmul fast float %7990, %8001
  %8003 = fmul fast float %8002, %6319
  %8004 = fmul fast float %8002, %6320
  %8005 = fmul fast float %8002, %6321
  %8006 = fadd fast float %8003, %7991
  %8007 = fadd fast float %8004, %7992
  %8008 = fadd fast float %8005, %7993
  %8009 = fmul fast float %7865, %7848
  %8010 = fmul fast float %8009, %7990
  %8011 = fmul fast float %7865, %7849
  %8012 = fmul fast float %8011, %7990
  %8013 = fmul fast float %7865, %7850
  %8014 = fmul fast float %8013, %7990
  %8015 = fmul fast float %8009, %8006
  %8016 = fmul fast float %8011, %8007
  %8017 = fmul fast float %8013, %8008
  %8018 = fadd fast float %8010, %6301
  %8019 = fmul fast float %8018, %4651
  %8020 = fadd fast float %8012, %6303
  %8021 = fmul fast float %8020, %4651
  %8022 = fadd fast float %8014, %6305
  %8023 = fmul fast float %8022, %4651
  %8024 = fadd fast float %8015, %6379
  %8025 = fmul fast float %8024, %4651
  %8026 = fadd fast float %8016, %6382
  %8027 = fmul fast float %8026, %4651
  %8028 = fadd fast float %8017, %6385
  %8029 = fmul fast float %8028, %4651
  br label %8030

; <label>:8030                                    ; preds = %7984, %7842, %6246
  %8031 = phi float [ %6380, %6246 ], [ %6380, %7842 ], [ %8025, %7984 ]
  %8032 = phi float [ %6383, %6246 ], [ %6383, %7842 ], [ %8027, %7984 ]
  %8033 = phi float [ %6386, %6246 ], [ %6386, %7842 ], [ %8029, %7984 ]
  %8034 = phi float [ %6375, %6246 ], [ %6375, %7842 ], [ %8019, %7984 ]
  %8035 = phi float [ %6376, %6246 ], [ %6376, %7842 ], [ %8021, %7984 ]
  %8036 = phi float [ %6377, %6246 ], [ %6377, %7842 ], [ %8023, %7984 ]
  %8037 = fmul fast float %4651, %4651
  %8038 = fmul fast float %8037, %6355
  %8039 = fsub fast float -0.000000e+00, %8038
  %8040 = fmul fast float %8037, %6356
  %8041 = fsub fast float -0.000000e+00, %8040
  %8042 = fmul fast float %8037, %6357
  %8043 = fsub fast float -0.000000e+00, %8042
  %8044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8045 = extractvalue %dx.types.CBufRet.f32 %8044, 0
  %8046 = fmul fast float %8045, %6361
  %8047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8048 = extractvalue %dx.types.CBufRet.f32 %8047, 3
  %8049 = fsub fast float 1.000000e+00, %4658
  %8050 = call float @dx.op.unary.f32(i32 7, float %8049)  ; Saturate(value)
  %8051 = fadd fast float %8036, %4657
  %8052 = fmul fast float %8051, %4658
  %8053 = fmul fast float %8050, %8048
  %8054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8055 = extractvalue %dx.types.CBufRet.f32 %8054, 3
  %8056 = fmul fast float %8034, %5550
  %8057 = fmul fast float %8035, %5551
  %8058 = fmul fast float %8036, %5552
  %8059 = fcmp fast ogt float %95, %230
  %8060 = and i1 %8059, %4700
  %8061 = or i1 %4779, %8060
  %8062 = icmp eq i32 %4699, 2
  %8063 = fcmp fast ole float %95, %230
  %8064 = and i1 %8063, %8062
  %8065 = or i1 %8064, %8061
  br i1 %8060, label %8066, label %8323

; <label>:8066                                    ; preds = %8030
  %8067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8068 = extractvalue %dx.types.CBufRet.f32 %8067, 2
  %8069 = extractvalue %dx.types.CBufRet.f32 %8067, 3
  %8070 = fmul fast float %8068, %108
  %8071 = fmul fast float %8069, %109
  %8072 = call float @dx.op.unary.f32(i32 7, float %8070)  ; Saturate(value)
  %8073 = call float @dx.op.unary.f32(i32 7, float %8071)  ; Saturate(value)
  %8074 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %8072, float %8073, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8075 = extractvalue %dx.types.ResRet.f32 %8074, 0
  %8076 = extractvalue %dx.types.ResRet.f32 %8074, 1
  %8077 = extractvalue %dx.types.ResRet.f32 %8074, 2
  %8078 = extractvalue %dx.types.ResRet.f32 %8074, 3
  %8079 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %8072, float %8073, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8080 = extractvalue %dx.types.ResRet.f32 %8079, 0
  %8081 = extractvalue %dx.types.ResRet.f32 %8079, 1
  %8082 = extractvalue %dx.types.ResRet.f32 %8079, 2
  %8083 = extractvalue %dx.types.ResRet.f32 %8079, 3
  %8084 = call float @dx.op.binary.f32(i32 35, float %8076, float %8077)  ; FMax(a,b)
  %8085 = call float @dx.op.binary.f32(i32 35, float %8075, float %8084)  ; FMax(a,b)
  %8086 = call float @dx.op.binary.f32(i32 35, float %8085, float %8078)  ; FMax(a,b)
  %8087 = call float @dx.op.binary.f32(i32 36, float %8081, float %8082)  ; FMin(a,b)
  %8088 = call float @dx.op.binary.f32(i32 36, float %8080, float %8087)  ; FMin(a,b)
  %8089 = call float @dx.op.binary.f32(i32 36, float %8088, float %8083)  ; FMin(a,b)
  %8090 = fmul fast float %8086, 2.550000e+02
  %8091 = fadd fast float %8090, 0x3F70101020000000
  %8092 = fptoui float %8091 to i32
  %8093 = fmul fast float %8089, 2.550000e+02
  %8094 = fadd fast float %8093, 0x3F70101020000000
  %8095 = fptoui float %8094 to i32
  %8096 = icmp ult i32 %8092, %8095
  br i1 %8096, label %8097, label %8265

; <label>:8097                                    ; preds = %8066
  %8098 = fcmp fast ogt float %94, 9.843750e-01
  %8099 = fadd fast float %95, -4.000000e+00
  %8100 = select i1 %8098, float -4.000000e+00, float %8099
  %8101 = call float @dx.op.binary.f32(i32 35, float %8100, float 0.000000e+00)  ; FMax(a,b)
  %8102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8103 = extractvalue %dx.types.CBufRet.f32 %8102, 0
  %8104 = fadd fast float %8103, %8101
  %8105 = extractvalue %dx.types.CBufRet.f32 %8102, 2
  %8106 = fmul fast float %8104, %8105
  %8107 = call float @dx.op.unary.f32(i32 23, float %8106)  ; Log(value)
  %8108 = extractvalue %dx.types.CBufRet.f32 %8102, 3
  %8109 = fmul fast float %8108, %8107
  %8110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8111 = extractvalue %dx.types.CBufRet.f32 %8110, 2
  %8112 = fmul fast float %8109, %8111
  %8113 = call float @dx.op.unary.f32(i32 7, float %8112)  ; Saturate(value)
  %8114 = uitofp i32 %8092 to float
  %8115 = uitofp i32 %8095 to float
  %8116 = fadd fast float %8114, 5.000000e-01
  %8117 = fadd fast float %8115, 5.000000e-01
  %8118 = fmul fast float %8111, %8116
  %8119 = fmul fast float %8111, %8117
  %8120 = fadd fast float %8118, 0x3F0FFB4800000000
  %8121 = fadd fast float %8119, 0xBF0FFB4800000000
  %8122 = call float @dx.op.binary.f32(i32 35, float %8113, float %8120)  ; FMax(a,b)
  %8123 = call float @dx.op.binary.f32(i32 36, float %8122, float %8121)  ; FMin(a,b)
  %8124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8125 = extractvalue %dx.types.CBufRet.f32 %8124, 1
  %8126 = extractvalue %dx.types.CBufRet.f32 %8124, 2
  %8127 = extractvalue %dx.types.CBufRet.f32 %8124, 0
  %8128 = fmul fast float %8125, %8123
  %8129 = fadd fast float %8127, %8128
  %8130 = fadd fast float %8127, %8126
  %8131 = fsub fast float %8125, %8126
  %8132 = fadd fast float %8131, %8127
  %8133 = call float @dx.op.binary.f32(i32 35, float %8129, float %8130)  ; FMax(a,b)
  %8134 = call float @dx.op.binary.f32(i32 36, float %8133, float %8132)  ; FMin(a,b)
  %8135 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %42, float %8072, float %8073, float %8134, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8136 = extractvalue %dx.types.ResRet.f32 %8135, 0
  %8137 = extractvalue %dx.types.ResRet.f32 %8135, 1
  %8138 = extractvalue %dx.types.ResRet.f32 %8135, 2
  %8139 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8140 = extractvalue %dx.types.CBufRet.i32 %8139, 0
  %8141 = extractvalue %dx.types.CBufRet.i32 %8139, 1
  %8142 = uitofp i32 %8140 to float
  %8143 = uitofp i32 %8141 to float
  %8144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8145 = extractvalue %dx.types.CBufRet.f32 %8144, 0
  %8146 = extractvalue %dx.types.CBufRet.f32 %8144, 1
  %8147 = fmul fast float %8142, %8072
  %8148 = fmul fast float %8143, %8073
  %8149 = fadd fast float %8147, -5.000000e-01
  %8150 = fadd fast float %8148, -5.000000e-01
  %8151 = call float @dx.op.unary.f32(i32 22, float %8149)  ; Frc(value)
  %8152 = call float @dx.op.unary.f32(i32 22, float %8150)  ; Frc(value)
  %8153 = fmul fast float %8151, %8151
  %8154 = fmul fast float %8153, %8151
  %8155 = fsub fast float 3.000000e+00, %8151
  %8156 = fmul fast float %8153, %8155
  %8157 = fmul fast float %8151, 3.000000e+00
  %8158 = fmul fast float %8154, 3.000000e+00
  %8159 = fmul fast float %8153, 6.000000e+00
  %8160 = fsub fast float %8158, %8159
  %8161 = fadd fast float %8160, 4.000000e+00
  %8162 = fmul fast float %8161, 0x3FC5555560000000
  %8163 = fmul fast float %8154, -3.000000e+00
  %8164 = fadd fast float %8153, %8151
  %8165 = fmul fast float %8164, 3.000000e+00
  %8166 = fadd fast float %8163, 1.000000e+00
  %8167 = fadd fast float %8166, %8165
  %8168 = fmul fast float %8154, 0x3FC5555560000000
  %8169 = fmul fast float %8152, %8152
  %8170 = fmul fast float %8169, %8152
  %8171 = fsub fast float 3.000000e+00, %8152
  %8172 = fmul fast float %8169, %8171
  %8173 = fmul fast float %8152, 3.000000e+00
  %8174 = fmul fast float %8170, 3.000000e+00
  %8175 = fmul fast float %8169, 6.000000e+00
  %8176 = fsub fast float %8174, %8175
  %8177 = fadd fast float %8176, 4.000000e+00
  %8178 = fmul fast float %8177, 0x3FC5555560000000
  %8179 = fmul fast float %8170, -3.000000e+00
  %8180 = fadd fast float %8169, %8152
  %8181 = fmul fast float %8180, 3.000000e+00
  %8182 = fadd fast float %8179, 1.000000e+00
  %8183 = fadd fast float %8182, %8181
  %8184 = fmul fast float %8170, 0x3FC5555560000000
  %8185 = fadd fast float %8151, 1.000000e+00
  %8186 = fsub fast float 1.000000e+00, %8157
  %8187 = fadd fast float %8186, %8156
  %8188 = fadd fast float %8187, %8161
  %8189 = fmul fast float %8188, 0x3FC5555560000000
  %8190 = fdiv fast float %8162, %8189
  %8191 = fsub fast float %8185, %8190
  %8192 = fsub fast float 1.000000e+00, %8151
  %8193 = fadd fast float %8167, %8154
  %8194 = fmul fast float %8193, 0x3FC5555560000000
  %8195 = fdiv fast float %8168, %8194
  %8196 = fadd fast float %8192, %8195
  %8197 = fadd fast float %8152, 1.000000e+00
  %8198 = fsub fast float 1.000000e+00, %8173
  %8199 = fadd fast float %8198, %8172
  %8200 = fadd fast float %8199, %8177
  %8201 = fmul fast float %8200, 0x3FC5555560000000
  %8202 = fdiv fast float %8178, %8201
  %8203 = fsub fast float %8197, %8202
  %8204 = fsub fast float 1.000000e+00, %8152
  %8205 = fadd fast float %8183, %8170
  %8206 = fmul fast float %8205, 0x3FC5555560000000
  %8207 = fdiv fast float %8184, %8206
  %8208 = fadd fast float %8207, %8204
  %8209 = fmul fast float %8191, %8145
  %8210 = fsub fast float %8072, %8209
  %8211 = fmul fast float %8196, %8145
  %8212 = fadd fast float %8211, %8072
  %8213 = fmul fast float %8208, %8146
  %8214 = fadd fast float %8213, %8073
  %8215 = fmul fast float %8203, %8146
  %8216 = fsub fast float %8073, %8215
  %8217 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %8210, float %8216, float %8134, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8218 = extractvalue %dx.types.ResRet.f32 %8217, 0
  %8219 = extractvalue %dx.types.ResRet.f32 %8217, 1
  %8220 = extractvalue %dx.types.ResRet.f32 %8217, 2
  %8221 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %8212, float %8216, float %8134, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8222 = extractvalue %dx.types.ResRet.f32 %8221, 0
  %8223 = extractvalue %dx.types.ResRet.f32 %8221, 1
  %8224 = extractvalue %dx.types.ResRet.f32 %8221, 2
  %8225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %8210, float %8214, float %8134, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8226 = extractvalue %dx.types.ResRet.f32 %8225, 0
  %8227 = extractvalue %dx.types.ResRet.f32 %8225, 1
  %8228 = extractvalue %dx.types.ResRet.f32 %8225, 2
  %8229 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %8212, float %8214, float %8134, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8230 = extractvalue %dx.types.ResRet.f32 %8229, 0
  %8231 = extractvalue %dx.types.ResRet.f32 %8229, 1
  %8232 = extractvalue %dx.types.ResRet.f32 %8229, 2
  %8233 = fsub fast float %8226, %8218
  %8234 = fsub fast float %8227, %8219
  %8235 = fsub fast float %8228, %8220
  %8236 = fmul fast float %8233, %8206
  %8237 = fmul fast float %8234, %8206
  %8238 = fmul fast float %8235, %8206
  %8239 = fadd fast float %8236, %8218
  %8240 = fadd fast float %8237, %8219
  %8241 = fadd fast float %8238, %8220
  %8242 = fsub fast float %8230, %8222
  %8243 = fsub fast float %8231, %8223
  %8244 = fsub fast float %8232, %8224
  %8245 = fmul fast float %8242, %8206
  %8246 = fmul fast float %8243, %8206
  %8247 = fmul fast float %8244, %8206
  %8248 = fsub fast float %8222, %8239
  %8249 = fadd fast float %8248, %8245
  %8250 = fsub fast float %8223, %8240
  %8251 = fadd fast float %8250, %8246
  %8252 = fsub fast float %8224, %8241
  %8253 = fadd fast float %8252, %8247
  %8254 = fmul fast float %8249, %8194
  %8255 = fmul fast float %8251, %8194
  %8256 = fmul fast float %8253, %8194
  %8257 = fadd fast float %8254, %8239
  %8258 = fadd fast float %8255, %8240
  %8259 = fadd fast float %8256, %8241
  %8260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8261 = extractvalue %dx.types.CBufRet.f32 %8260, 1
  %8262 = fmul fast float %8257, %8261
  %8263 = fmul fast float %8258, %8261
  %8264 = fmul fast float %8259, %8261
  br label %8265

; <label>:8265                                    ; preds = %8097, %8066
  %8266 = phi float [ %8136, %8097 ], [ 1.000000e+00, %8066 ]
  %8267 = phi float [ %8137, %8097 ], [ 1.000000e+00, %8066 ]
  %8268 = phi float [ %8138, %8097 ], [ 1.000000e+00, %8066 ]
  %8269 = phi float [ %8262, %8097 ], [ 0.000000e+00, %8066 ]
  %8270 = phi float [ %8263, %8097 ], [ 0.000000e+00, %8066 ]
  %8271 = phi float [ %8264, %8097 ], [ 0.000000e+00, %8066 ]
  %8272 = fmul fast float %8269, %8039
  %8273 = fmul fast float %8270, %8041
  %8274 = fmul fast float %8271, %8043
  %8275 = call float @dx.op.dot3.f32(i32 55, float %8266, float %8267, float %8268, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8276 = call float @dx.op.dot3.f32(i32 55, float %8272, float %8273, float %8274, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8277 = select i1 %269, float %8275, float %8266
  %8278 = select i1 %269, float %8275, float %8267
  %8279 = select i1 %269, float 1.000000e+00, float %8268
  %8280 = select i1 %269, float %8276, float %8272
  %8281 = select i1 %269, float 0.000000e+00, float %8273
  %8282 = select i1 %269, float 0.000000e+00, float %8274
  %8283 = fmul fast float %8277, %8056
  %8284 = fmul fast float %8278, %8057
  %8285 = fmul fast float %8279, %8058
  %8286 = fadd fast float %8283, %8280
  %8287 = fadd fast float %8284, %8281
  %8288 = fadd fast float %8282, %8285
  %8289 = fmul fast float %8277, %8031
  %8290 = fmul fast float %8278, %8032
  %8291 = fmul fast float %8279, %8033
  %8292 = fmul fast float %144, %8068
  %8293 = fmul fast float %146, %8069
  %8294 = fsub fast float 1.000000e+00, %8292
  %8295 = fsub fast float 1.000000e+00, %8293
  %8296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8297 = extractvalue %dx.types.CBufRet.f32 %8296, 0
  %8298 = extractvalue %dx.types.CBufRet.f32 %8296, 1
  %8299 = extractvalue %dx.types.CBufRet.f32 %8296, 2
  %8300 = fmul fast float %8294, %8297
  %8301 = fmul fast float %8294, %8298
  %8302 = fmul fast float %8294, %8299
  %8303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8304 = extractvalue %dx.types.CBufRet.f32 %8303, 0
  %8305 = extractvalue %dx.types.CBufRet.f32 %8303, 1
  %8306 = extractvalue %dx.types.CBufRet.f32 %8303, 2
  %8307 = fmul fast float %8295, %8304
  %8308 = fmul fast float %8295, %8305
  %8309 = fmul fast float %8295, %8306
  %8310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8311 = extractvalue %dx.types.CBufRet.f32 %8310, 0
  %8312 = extractvalue %dx.types.CBufRet.f32 %8310, 1
  %8313 = extractvalue %dx.types.CBufRet.f32 %8310, 2
  %8314 = fadd fast float %8307, %8311
  %8315 = fadd fast float %8314, %8300
  %8316 = fadd fast float %8308, %8312
  %8317 = fadd fast float %8316, %8301
  %8318 = fadd fast float %8309, %8313
  %8319 = fadd fast float %8318, %8302
  %8320 = fmul fast float %8315, %230
  %8321 = fmul fast float %8317, %230
  %8322 = fmul fast float %8319, %230
  br label %8323

; <label>:8323                                    ; preds = %8265, %8030
  %8324 = phi float [ %8320, %8265 ], [ %195, %8030 ]
  %8325 = phi float [ %8321, %8265 ], [ %196, %8030 ]
  %8326 = phi float [ %8322, %8265 ], [ %197, %8030 ]
  %8327 = phi float [ %230, %8265 ], [ %95, %8030 ]
  %8328 = phi float [ %8286, %8265 ], [ %8056, %8030 ]
  %8329 = phi float [ %8287, %8265 ], [ %8057, %8030 ]
  %8330 = phi float [ %8288, %8265 ], [ %8058, %8030 ]
  %8331 = phi float [ %8289, %8265 ], [ %8031, %8030 ]
  %8332 = phi float [ %8290, %8265 ], [ %8032, %8030 ]
  %8333 = phi float [ %8291, %8265 ], [ %8033, %8030 ]
  %8334 = phi float [ %8266, %8265 ], [ 1.000000e+00, %8030 ]
  br i1 %8065, label %9489, label %8335

; <label>:8335                                    ; preds = %8323
  %8336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8337 = extractvalue %dx.types.CBufRet.f32 %8336, 0
  %8338 = extractvalue %dx.types.CBufRet.f32 %8336, 1
  %8339 = extractvalue %dx.types.CBufRet.f32 %8336, 2
  %8340 = extractvalue %dx.types.CBufRet.f32 %8336, 3
  %8341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8342 = extractvalue %dx.types.CBufRet.f32 %8341, 0
  %8343 = extractvalue %dx.types.CBufRet.f32 %8341, 1
  %8344 = extractvalue %dx.types.CBufRet.f32 %8341, 2
  %8345 = extractvalue %dx.types.CBufRet.f32 %8341, 3
  %8346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8347 = extractvalue %dx.types.CBufRet.f32 %8346, 0
  %8348 = extractvalue %dx.types.CBufRet.f32 %8346, 1
  %8349 = extractvalue %dx.types.CBufRet.f32 %8346, 2
  %8350 = extractvalue %dx.types.CBufRet.f32 %8346, 3
  %8351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8352 = extractvalue %dx.types.CBufRet.f32 %8351, 0
  %8353 = extractvalue %dx.types.CBufRet.f32 %8351, 1
  %8354 = extractvalue %dx.types.CBufRet.f32 %8351, 2
  %8355 = extractvalue %dx.types.CBufRet.f32 %8351, 3
  %8356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8357 = extractvalue %dx.types.CBufRet.f32 %8356, 3
  %8358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8359 = extractvalue %dx.types.CBufRet.f32 %8358, 3
  %8360 = extractvalue %dx.types.CBufRet.f32 %8358, 0
  %8361 = extractvalue %dx.types.CBufRet.f32 %8358, 1
  %8362 = extractvalue %dx.types.CBufRet.f32 %8358, 2
  %8363 = fcmp fast olt float %8362, -5.000000e-01
  %8364 = call float @dx.op.dot3.f32(i32 55, float %8324, float %8325, float %8326, float %8324, float %8325, float %8326)  ; Dot3(ax,ay,az,bx,by,bz)
  %8365 = call float @dx.op.unary.f32(i32 25, float %8364)  ; Rsqrt(value)
  %8366 = fmul fast float %8365, %8364
  %8367 = fmul fast float %8365, %8324
  %8368 = fmul fast float %8365, %8325
  %8369 = fmul fast float %8365, %8326
  %8370 = fadd fast float %8366, %8340
  %8371 = call float @dx.op.dot3.f32(i32 55, float %8367, float %8368, float %8369, float %8337, float %8338, float %8339)  ; Dot3(ax,ay,az,bx,by,bz)
  %8372 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8373 = extractvalue %dx.types.CBufRet.i32 %8372, 1
  %8374 = and i32 %8373, 1
  %8375 = icmp ne i32 %8374, 0
  %8376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8377 = extractvalue %dx.types.CBufRet.f32 %8376, 2
  %8378 = fcmp fast ogt float %8377, 0.000000e+00
  %8379 = and i1 %8375, %8378
  br i1 %8379, label %8380, label %8786, !dx.controlflow.hints !126

; <label>:8380                                    ; preds = %8335
  %8381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8382 = extractvalue %dx.types.CBufRet.f32 %8381, 3
  %8383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8384 = extractvalue %dx.types.CBufRet.f32 %8383, 2
  %8385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8386 = extractvalue %dx.types.CBufRet.f32 %8385, 2
  %8387 = fsub fast float %8384, %8386
  %8388 = and i32 %8373, 2
  %8389 = extractvalue %dx.types.CBufRet.i32 %8372, 0
  %8390 = call i32 @dx.op.binary.i32(i32 40, i32 %8389, i32 3)  ; UMin(a,b)
  %8391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8392 = extractvalue %dx.types.CBufRet.f32 %8391, 0
  %8393 = extractvalue %dx.types.CBufRet.f32 %8391, 1
  %8394 = extractvalue %dx.types.CBufRet.f32 %8385, 0
  %8395 = extractvalue %dx.types.CBufRet.f32 %8385, 1
  %8396 = fsub fast float %8392, %8394
  %8397 = fsub fast float %8393, %8395
  %8398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8399 = extractvalue %dx.types.CBufRet.f32 %8398, 0
  %8400 = fcmp fast ogt float %8399, 0.000000e+00
  %8401 = fsub fast float -0.000000e+00, %8396
  %8402 = fsub fast float -0.000000e+00, %8397
  %8403 = call float @dx.op.dot2.f32(i32 54, float %8367, float %8368, float %8367, float %8368)  ; Dot2(ax,ay,bx,by)
  %8404 = call float @dx.op.dot2.f32(i32 54, float %8367, float %8368, float %8401, float %8402)  ; Dot2(ax,ay,bx,by)
  %8405 = fmul fast float %8404, 2.000000e+00
  %8406 = call float @dx.op.dot2.f32(i32 54, float %8401, float %8402, float %8401, float %8402)  ; Dot2(ax,ay,bx,by)
  %8407 = fmul fast float %8399, %8399
  %8408 = fsub fast float %8406, %8407
  %8409 = fmul fast float %8405, %8405
  %8410 = fmul fast float %8403, 4.000000e+00
  %8411 = fmul fast float %8410, %8408
  %8412 = fsub fast float %8409, %8411
  %8413 = fcmp fast ogt float %8412, 0.000000e+00
  br i1 %8413, label %8414, label %8429

; <label>:8414                                    ; preds = %8380
  %8415 = fcmp fast ogt float %8405, 0.000000e+00
  %8416 = call float @dx.op.unary.f32(i32 24, float %8412)  ; Sqrt(value)
  %8417 = fsub fast float -0.000000e+00, %8416
  %8418 = select i1 %8415, float %8416, float %8417
  %8419 = fadd fast float %8418, %8405
  %8420 = fmul float %8419, -5.000000e-01
  %8421 = fdiv fast float %8420, %8403
  %8422 = call float @dx.op.binary.f32(i32 35, float %8421, float 0.000000e+00)  ; FMax(a,b)
  %8423 = call float @dx.op.binary.f32(i32 36, float %8366, float %8422)  ; FMin(a,b)
  %8424 = fdiv fast float %8408, %8420
  %8425 = call float @dx.op.binary.f32(i32 35, float %8424, float 0.000000e+00)  ; FMax(a,b)
  %8426 = call float @dx.op.binary.f32(i32 36, float %8366, float %8425)  ; FMin(a,b)
  %8427 = call float @dx.op.binary.f32(i32 36, float %8423, float %8426)  ; FMin(a,b)
  %8428 = call float @dx.op.binary.f32(i32 35, float %8423, float %8426)  ; FMax(a,b)
  br label %8429

; <label>:8429                                    ; preds = %8414, %8380
  %8430 = phi float [ %8428, %8414 ], [ -1.000000e+00, %8380 ]
  %8431 = phi float [ %8427, %8414 ], [ -1.000000e+00, %8380 ]
  %8432 = phi i1 [ true, %8414 ], [ false, %8380 ]
  %8433 = and i1 %8400, %8432
  br i1 %8433, label %8434, label %8436

; <label>:8434                                    ; preds = %8429
  %8435 = fcmp fast oeq float %8431, %8430
  br i1 %8435, label %8739, label %8437

; <label>:8436                                    ; preds = %8429
  br i1 %8400, label %8739, label %8437

; <label>:8437                                    ; preds = %8436, %8434
  %8438 = phi float [ %8366, %8436 ], [ %8430, %8434 ]
  %8439 = phi float [ 0.000000e+00, %8436 ], [ %8431, %8434 ]
  %8440 = icmp ne i32 %8388, 0
  %8441 = fmul fast float %8438, %8369
  %8442 = fadd fast float %8441, %8382
  %8443 = fmul fast float %8442, %8438
  %8444 = select i1 %8440, float 0.000000e+00, float %8443
  %8445 = fcmp fast oeq float %8369, 0.000000e+00
  %8446 = fdiv fast float %8387, %8369
  %8447 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8446)  ; FMax(a,b)
  %8448 = select i1 %8445, float %8438, float %8447
  %8449 = call float @dx.op.binary.f32(i32 36, float %8438, float %8448)  ; FMin(a,b)
  %8450 = fcmp fast ogt float %8369, 0.000000e+00
  %8451 = fcmp fast olt float %8387, 0.000000e+00
  br i1 %8450, label %8452, label %8509

; <label>:8452                                    ; preds = %8437
  %8453 = icmp eq i32 %8388, 0
  br i1 %8451, label %8454, label %8498

; <label>:8454                                    ; preds = %8452
  %8455 = select i1 %8453, float %8438, float 0.000000e+00
  %8456 = fsub fast float -0.000000e+00, %8455
  %8457 = call float @dx.op.unary.f32(i32 6, float %8456)  ; FAbs(value)
  %8458 = fmul fast float %8455, %8369
  %8459 = fadd fast float %8458, %8382
  %8460 = fmul fast float %8457, %8459
  %8461 = fsub fast float %8444, %8460
  %8462 = fsub fast float %8438, %8457
  %8463 = select i1 %8453, float %8462, float 0.000000e+00
  %8464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8465 = extractvalue %dx.types.CBufRet.f32 %8464, 0
  %8466 = extractvalue %dx.types.CBufRet.f32 %8464, 1
  %8467 = extractvalue %dx.types.CBufRet.f32 %8464, 2
  %8468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8469 = extractvalue %dx.types.CBufRet.f32 %8468, 0
  %8470 = extractvalue %dx.types.CBufRet.f32 %8468, 1
  %8471 = extractvalue %dx.types.CBufRet.f32 %8468, 2
  %8472 = extractvalue %dx.types.CBufRet.f32 %8468, 3
  %8473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8474 = extractvalue %dx.types.CBufRet.f32 %8473, 3
  %8475 = call float @dx.op.binary.f32(i32 36, float %8461, float %8474)  ; FMin(a,b)
  %8476 = fmul fast float %8472, %8463
  %8477 = call float @dx.op.unary.f32(i32 7, float %8476)  ; Saturate(value)
  %8478 = fsub fast float %8469, %8465
  %8479 = fsub fast float %8470, %8466
  %8480 = fsub fast float %8471, %8467
  %8481 = fmul fast float %8477, %8478
  %8482 = fmul fast float %8477, %8479
  %8483 = fmul fast float %8477, %8480
  %8484 = fadd fast float %8481, %8465
  %8485 = fadd fast float %8482, %8466
  %8486 = fadd fast float %8483, %8467
  %8487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8488 = extractvalue %dx.types.CBufRet.f32 %8487, 0
  %8489 = extractvalue %dx.types.CBufRet.f32 %8487, 1
  %8490 = fadd fast float %8489, %8488
  %8491 = call float @dx.op.unary.f32(i32 7, float %8490)  ; Saturate(value)
  %8492 = extractvalue %dx.types.CBufRet.f32 %8487, 2
  %8493 = extractvalue %dx.types.CBufRet.f32 %8487, 3
  %8494 = fadd fast float %8493, %8492
  %8495 = call float @dx.op.unary.f32(i32 7, float %8494)  ; Saturate(value)
  %8496 = fmul fast float %8491, %8475
  %8497 = fmul fast float %8496, %8495
  br label %8739

; <label>:8498                                    ; preds = %8452
  br i1 %8453, label %8499, label %8520

; <label>:8499                                    ; preds = %8498
  %8500 = call float @dx.op.binary.f32(i32 36, float %8449, float %8439)  ; FMin(a,b)
  %8501 = fsub fast float %8449, %8500
  %8502 = fsub fast float %8501, %8438
  %8503 = call float @dx.op.unary.f32(i32 6, float %8502)  ; FAbs(value)
  %8504 = fadd fast float %8501, %8438
  %8505 = fmul fast float %8504, %8369
  %8506 = fadd fast float %8505, %8382
  %8507 = fmul fast float %8506, %8503
  %8508 = fsub fast float %8444, %8507
  br label %8520

; <label>:8509                                    ; preds = %8437
  br i1 %8451, label %8510, label %8520

; <label>:8510                                    ; preds = %8509
  %8511 = call float @dx.op.binary.f32(i32 35, float %8439, float %8449)  ; FMax(a,b)
  %8512 = icmp eq i32 %8388, 0
  %8513 = select i1 %8512, float %8449, float 0.000000e+00
  %8514 = fsub fast float -0.000000e+00, %8513
  %8515 = call float @dx.op.unary.f32(i32 6, float %8514)  ; FAbs(value)
  %8516 = fmul fast float %8513, %8369
  %8517 = fadd fast float %8516, %8382
  %8518 = fmul fast float %8515, %8517
  %8519 = fsub fast float %8444, %8518
  br label %8520

; <label>:8520                                    ; preds = %8510, %8509, %8499, %8498
  %8521 = phi float [ %8439, %8498 ], [ %8439, %8499 ], [ %8511, %8510 ], [ %8439, %8509 ]
  %8522 = phi float [ 0.000000e+00, %8498 ], [ %8503, %8499 ], [ %8515, %8510 ], [ 0.000000e+00, %8509 ]
  %8523 = phi float [ %8444, %8498 ], [ %8508, %8499 ], [ %8519, %8510 ], [ %8444, %8509 ]
  %8524 = phi float [ %8449, %8498 ], [ %8449, %8499 ], [ %8438, %8510 ], [ %8438, %8509 ]
  %8525 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 0
  store float -1.000000e+00, float* %8525, align 4, !tbaa !115, !noalias !127
  %8526 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 1
  store float -1.000000e+00, float* %8526, align 4, !tbaa !115, !noalias !127
  %8527 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 2
  store float -1.000000e+00, float* %8527, align 4, !tbaa !115, !noalias !127
  %8528 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 0
  store float -1.000000e+00, float* %8528, align 4, !tbaa !115, !noalias !127
  %8529 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 1
  store float -1.000000e+00, float* %8529, align 4, !tbaa !115, !noalias !127
  %8530 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 2
  store float -1.000000e+00, float* %8530, align 4, !tbaa !115, !noalias !127
  %8531 = icmp sgt i32 %8390, 0
  br i1 %8531, label %8532, label %8593

; <label>:8532                                    ; preds = %8520
  br label %8533

; <label>:8533                                    ; preds = %8582, %8532
  %8534 = phi i32 [ %8583, %8582 ], [ 0, %8532 ]
  %8535 = phi i32 [ %8584, %8582 ], [ 0, %8532 ]
  %8536 = add nuw i32 %8535, 171
  %8537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %8536)  ; CBufferLoadLegacy(handle,regIndex)
  %8538 = extractvalue %dx.types.CBufRet.f32 %8537, 0
  %8539 = extractvalue %dx.types.CBufRet.f32 %8537, 1
  %8540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8541 = extractvalue %dx.types.CBufRet.f32 %8540, 0
  %8542 = extractvalue %dx.types.CBufRet.f32 %8540, 1
  %8543 = fsub fast float %8538, %8541
  %8544 = fsub fast float %8539, %8542
  %8545 = extractvalue %dx.types.CBufRet.f32 %8537, 2
  %8546 = fsub fast float -0.000000e+00, %8543
  %8547 = fsub fast float -0.000000e+00, %8544
  %8548 = call float @dx.op.dot2.f32(i32 54, float %8367, float %8368, float %8546, float %8547)  ; Dot2(ax,ay,bx,by)
  %8549 = fmul fast float %8548, 2.000000e+00
  %8550 = call float @dx.op.dot2.f32(i32 54, float %8546, float %8547, float %8546, float %8547)  ; Dot2(ax,ay,bx,by)
  %8551 = fmul fast float %8545, %8545
  %8552 = fsub fast float %8550, %8551
  %8553 = fmul fast float %8549, %8549
  %8554 = fmul fast float %8410, %8552
  %8555 = fsub fast float %8553, %8554
  %8556 = fcmp fast ogt float %8555, 0.000000e+00
  br i1 %8556, label %8557, label %8572

; <label>:8557                                    ; preds = %8533
  %8558 = fcmp fast ogt float %8549, 0.000000e+00
  %8559 = call float @dx.op.unary.f32(i32 24, float %8555)  ; Sqrt(value)
  %8560 = fsub fast float -0.000000e+00, %8559
  %8561 = select i1 %8558, float %8559, float %8560
  %8562 = fadd fast float %8561, %8549
  %8563 = fmul float %8562, -5.000000e-01
  %8564 = fdiv fast float %8563, %8403
  %8565 = call float @dx.op.binary.f32(i32 35, float %8564, float 0.000000e+00)  ; FMax(a,b)
  %8566 = call float @dx.op.binary.f32(i32 36, float %8438, float %8565)  ; FMin(a,b)
  %8567 = fdiv fast float %8552, %8563
  %8568 = call float @dx.op.binary.f32(i32 35, float %8567, float 0.000000e+00)  ; FMax(a,b)
  %8569 = call float @dx.op.binary.f32(i32 36, float %8438, float %8568)  ; FMin(a,b)
  %8570 = call float @dx.op.binary.f32(i32 36, float %8566, float %8569)  ; FMin(a,b)
  %8571 = call float @dx.op.binary.f32(i32 35, float %8566, float %8569)  ; FMax(a,b)
  br label %8572

; <label>:8572                                    ; preds = %8557, %8533
  %8573 = phi float [ %8571, %8557 ], [ -1.000000e+00, %8533 ]
  %8574 = phi float [ %8570, %8557 ], [ -1.000000e+00, %8533 ]
  %8575 = phi i1 [ true, %8557 ], [ false, %8533 ]
  br i1 %8575, label %8576, label %8582

; <label>:8576                                    ; preds = %8572
  %8577 = call float @dx.op.binary.f32(i32 35, float %8521, float %8574)  ; FMax(a,b)
  %8578 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 %8535
  store float %8577, float* %8578, align 4, !tbaa !115, !noalias !127
  %8579 = call float @dx.op.binary.f32(i32 35, float %8521, float %8573)  ; FMax(a,b)
  %8580 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %8535
  store float %8579, float* %8580, align 4, !tbaa !115, !noalias !127
  %8581 = add nsw i32 %8534, 1
  br label %8582

; <label>:8582                                    ; preds = %8576, %8572
  %8583 = phi i32 [ %8581, %8576 ], [ %8534, %8572 ]
  %8584 = add nuw nsw i32 %8535, 1
  %8585 = icmp eq i32 %8584, %8390
  br i1 %8585, label %8586, label %8533

; <label>:8586                                    ; preds = %8582
  %8587 = load float, float* %8527, align 4, !tbaa !115, !alias.scope !143, !noalias !146
  %8588 = load float, float* %8526, align 4, !tbaa !115, !alias.scope !149, !noalias !150
  %8589 = load float, float* %8525, align 4, !tbaa !115, !alias.scope !151, !noalias !152
  %8590 = load float, float* %8530, align 4, !tbaa !115, !alias.scope !153, !noalias !156
  %8591 = load float, float* %8529, align 4, !tbaa !115, !alias.scope !159, !noalias !160
  %8592 = load float, float* %8528, align 4, !tbaa !115, !alias.scope !161, !noalias !162
  br label %8593

; <label>:8593                                    ; preds = %8586, %8520
  %8594 = phi float [ -1.000000e+00, %8520 ], [ %8592, %8586 ]
  %8595 = phi float [ -1.000000e+00, %8520 ], [ %8591, %8586 ]
  %8596 = phi float [ -1.000000e+00, %8520 ], [ %8590, %8586 ]
  %8597 = phi float [ -1.000000e+00, %8520 ], [ %8589, %8586 ]
  %8598 = phi float [ -1.000000e+00, %8520 ], [ %8588, %8586 ]
  %8599 = phi float [ -1.000000e+00, %8520 ], [ %8587, %8586 ]
  %8600 = phi i32 [ 0, %8520 ], [ %8583, %8586 ]
  %8601 = call float @dx.op.binary.f32(i32 36, float %8598, float %8599)  ; FMin(a,b)
  %8602 = call float @dx.op.binary.f32(i32 36, float %8597, float %8601)  ; FMin(a,b)
  %8603 = call float @dx.op.binary.f32(i32 35, float %8597, float %8598)  ; FMax(a,b)
  %8604 = call float @dx.op.binary.f32(i32 36, float %8603, float %8599)  ; FMin(a,b)
  %8605 = call float @dx.op.binary.f32(i32 36, float %8597, float %8598)  ; FMin(a,b)
  %8606 = call float @dx.op.binary.f32(i32 35, float %8605, float %8604)  ; FMax(a,b)
  %8607 = call float @dx.op.binary.f32(i32 35, float %8598, float %8599)  ; FMax(a,b)
  %8608 = call float @dx.op.binary.f32(i32 35, float %8597, float %8607)  ; FMax(a,b)
  store float %8602, float* %8525, align 4, !tbaa !115, !alias.scope !151, !noalias !152
  store float %8606, float* %8526, align 4, !tbaa !115, !alias.scope !149, !noalias !150
  store float %8608, float* %8527, align 4, !tbaa !115, !alias.scope !143, !noalias !146
  %8609 = call float @dx.op.binary.f32(i32 36, float %8595, float %8596)  ; FMin(a,b)
  %8610 = call float @dx.op.binary.f32(i32 36, float %8594, float %8609)  ; FMin(a,b)
  %8611 = call float @dx.op.binary.f32(i32 35, float %8594, float %8595)  ; FMax(a,b)
  %8612 = call float @dx.op.binary.f32(i32 36, float %8611, float %8596)  ; FMin(a,b)
  %8613 = call float @dx.op.binary.f32(i32 36, float %8594, float %8595)  ; FMin(a,b)
  %8614 = call float @dx.op.binary.f32(i32 35, float %8613, float %8612)  ; FMax(a,b)
  %8615 = call float @dx.op.binary.f32(i32 35, float %8595, float %8596)  ; FMax(a,b)
  %8616 = call float @dx.op.binary.f32(i32 35, float %8594, float %8615)  ; FMax(a,b)
  store float %8610, float* %8528, align 4, !tbaa !115, !alias.scope !161, !noalias !162
  store float %8614, float* %8529, align 4, !tbaa !115, !alias.scope !159, !noalias !160
  store float %8616, float* %8530, align 4, !tbaa !115, !alias.scope !153, !noalias !156
  %8617 = sub nsw i32 3, %8600
  %8618 = icmp sgt i32 %8617, 2
  br i1 %8618, label %8619, label %8657

; <label>:8619                                    ; preds = %8593
  %8620 = icmp eq i32 %8388, 0
  %8621 = fsub fast float %8438, %8522
  %8622 = select i1 %8620, float %8621, float %8522
  %8623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8624 = extractvalue %dx.types.CBufRet.f32 %8623, 0
  %8625 = extractvalue %dx.types.CBufRet.f32 %8623, 1
  %8626 = extractvalue %dx.types.CBufRet.f32 %8623, 2
  %8627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8628 = extractvalue %dx.types.CBufRet.f32 %8627, 0
  %8629 = extractvalue %dx.types.CBufRet.f32 %8627, 1
  %8630 = extractvalue %dx.types.CBufRet.f32 %8627, 2
  %8631 = extractvalue %dx.types.CBufRet.f32 %8627, 3
  %8632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8633 = extractvalue %dx.types.CBufRet.f32 %8632, 3
  %8634 = call float @dx.op.binary.f32(i32 36, float %8523, float %8633)  ; FMin(a,b)
  %8635 = fmul fast float %8631, %8622
  %8636 = call float @dx.op.unary.f32(i32 7, float %8635)  ; Saturate(value)
  %8637 = fsub fast float %8628, %8624
  %8638 = fsub fast float %8629, %8625
  %8639 = fsub fast float %8630, %8626
  %8640 = fmul fast float %8636, %8637
  %8641 = fmul fast float %8636, %8638
  %8642 = fmul fast float %8636, %8639
  %8643 = fadd fast float %8640, %8624
  %8644 = fadd fast float %8641, %8625
  %8645 = fadd fast float %8642, %8626
  %8646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8647 = extractvalue %dx.types.CBufRet.f32 %8646, 0
  %8648 = extractvalue %dx.types.CBufRet.f32 %8646, 1
  %8649 = fadd fast float %8648, %8647
  %8650 = call float @dx.op.unary.f32(i32 7, float %8649)  ; Saturate(value)
  %8651 = extractvalue %dx.types.CBufRet.f32 %8646, 2
  %8652 = extractvalue %dx.types.CBufRet.f32 %8646, 3
  %8653 = fadd fast float %8652, %8651
  %8654 = call float @dx.op.unary.f32(i32 7, float %8653)  ; Saturate(value)
  %8655 = fmul fast float %8650, %8634
  %8656 = fmul fast float %8655, %8654
  br label %8739

; <label>:8657                                    ; preds = %8593
  %8658 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 %8617
  %8659 = load float, float* %8658, align 4, !tbaa !115, !noalias !127
  %8660 = fcmp fast olt float %8659, %8524
  %8661 = icmp sgt i32 %8600, 0
  %8662 = and i1 %8661, %8660
  br i1 %8662, label %8663, label %8700

; <label>:8663                                    ; preds = %8657
  br label %8664

; <label>:8664                                    ; preds = %8693, %8663
  %8665 = phi float [ %8694, %8693 ], [ %8522, %8663 ]
  %8666 = phi float [ %8695, %8693 ], [ %8523, %8663 ]
  %8667 = phi float [ %8675, %8693 ], [ %8659, %8663 ]
  %8668 = phi i32 [ %8672, %8693 ], [ %8617, %8663 ]
  %8669 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %8668
  %8670 = load float, float* %8669, align 4, !tbaa !115, !noalias !127
  %8671 = icmp slt i32 %8668, 2
  %8672 = add nsw i32 %8668, 1
  %8673 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 %8672
  %8674 = load float, float* %8673, align 4, !tbaa !115, !noalias !127
  %8675 = select i1 %8671, float %8674, float %8438
  %8676 = call float @dx.op.binary.f32(i32 36, float %8675, float %8670)  ; FMin(a,b)
  %8677 = call float @dx.op.binary.f32(i32 36, float %8524, float %8676)  ; FMin(a,b)
  %8678 = icmp eq i32 %8388, 0
  %8679 = fadd fast float %8677, %8667
  %8680 = fmul fast float %8679, %8369
  %8681 = fadd fast float %8680, %8382
  br i1 %8678, label %8687, label %8682

; <label>:8682                                    ; preds = %8664
  %8683 = fsub fast float %8677, %8667
  %8684 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8683)  ; FMax(a,b)
  %8685 = fmul fast float %8684, %8681
  %8686 = fadd fast float %8685, %8666
  br label %8693

; <label>:8687                                    ; preds = %8664
  %8688 = fsub fast float %8667, %8677
  %8689 = call float @dx.op.unary.f32(i32 6, float %8688)  ; FAbs(value)
  %8690 = fadd fast float %8689, %8665
  %8691 = fmul fast float %8689, %8681
  %8692 = fsub fast float %8666, %8691
  br label %8693

; <label>:8693                                    ; preds = %8687, %8682
  %8694 = phi float [ %8684, %8682 ], [ %8690, %8687 ]
  %8695 = phi float [ %8686, %8682 ], [ %8692, %8687 ]
  %8696 = fcmp fast olt float %8675, %8524
  %8697 = icmp slt i32 %8672, 3
  %8698 = and i1 %8697, %8696
  br i1 %8698, label %8664, label %8699

; <label>:8699                                    ; preds = %8693
  br label %8700

; <label>:8700                                    ; preds = %8699, %8657
  %8701 = phi float [ %8522, %8657 ], [ %8694, %8699 ]
  %8702 = phi float [ %8523, %8657 ], [ %8695, %8699 ]
  %8703 = fsub fast float %8438, %8701
  %8704 = select i1 %8440, float %8701, float %8703
  %8705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8706 = extractvalue %dx.types.CBufRet.f32 %8705, 0
  %8707 = extractvalue %dx.types.CBufRet.f32 %8705, 1
  %8708 = extractvalue %dx.types.CBufRet.f32 %8705, 2
  %8709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8710 = extractvalue %dx.types.CBufRet.f32 %8709, 0
  %8711 = extractvalue %dx.types.CBufRet.f32 %8709, 1
  %8712 = extractvalue %dx.types.CBufRet.f32 %8709, 2
  %8713 = extractvalue %dx.types.CBufRet.f32 %8709, 3
  %8714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8715 = extractvalue %dx.types.CBufRet.f32 %8714, 3
  %8716 = call float @dx.op.binary.f32(i32 36, float %8702, float %8715)  ; FMin(a,b)
  %8717 = fmul fast float %8713, %8704
  %8718 = call float @dx.op.unary.f32(i32 7, float %8717)  ; Saturate(value)
  %8719 = fsub fast float %8710, %8706
  %8720 = fsub fast float %8711, %8707
  %8721 = fsub fast float %8712, %8708
  %8722 = fmul fast float %8718, %8719
  %8723 = fmul fast float %8718, %8720
  %8724 = fmul fast float %8718, %8721
  %8725 = fadd fast float %8722, %8706
  %8726 = fadd fast float %8723, %8707
  %8727 = fadd fast float %8724, %8708
  %8728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8729 = extractvalue %dx.types.CBufRet.f32 %8728, 0
  %8730 = extractvalue %dx.types.CBufRet.f32 %8728, 1
  %8731 = fadd fast float %8730, %8729
  %8732 = call float @dx.op.unary.f32(i32 7, float %8731)  ; Saturate(value)
  %8733 = extractvalue %dx.types.CBufRet.f32 %8728, 2
  %8734 = extractvalue %dx.types.CBufRet.f32 %8728, 3
  %8735 = fadd fast float %8734, %8733
  %8736 = call float @dx.op.unary.f32(i32 7, float %8735)  ; Saturate(value)
  %8737 = fmul fast float %8732, %8716
  %8738 = fmul fast float %8737, %8736
  br label %8739

; <label>:8739                                    ; preds = %8700, %8619, %8454, %8436, %8434
  %8740 = phi float [ %8463, %8454 ], [ %8622, %8619 ], [ %8704, %8700 ], [ 0.000000e+00, %8434 ], [ 0.000000e+00, %8436 ]
  %8741 = phi float [ %8497, %8454 ], [ %8656, %8619 ], [ %8738, %8700 ], [ 0.000000e+00, %8434 ], [ 0.000000e+00, %8436 ]
  %8742 = phi float [ %8484, %8454 ], [ %8643, %8619 ], [ %8725, %8700 ], [ 0.000000e+00, %8434 ], [ 0.000000e+00, %8436 ]
  %8743 = phi float [ %8485, %8454 ], [ %8644, %8619 ], [ %8726, %8700 ], [ 0.000000e+00, %8434 ], [ 0.000000e+00, %8436 ]
  %8744 = phi float [ %8486, %8454 ], [ %8645, %8619 ], [ %8727, %8700 ], [ 0.000000e+00, %8434 ], [ 0.000000e+00, %8436 ]
  %8745 = fmul fast float %8377, %8741
  %8746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8747 = extractvalue %dx.types.CBufRet.f32 %8746, 2
  %8748 = fsub fast float %8384, %8747
  %8749 = fcmp fast olt float %8745, -2.000000e+01
  %8750 = call float @dx.op.unary.f32(i32 21, float %8745)  ; Exp(value)
  %8751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8752 = extractvalue %dx.types.CBufRet.f32 %8751, 2
  %8753 = extractvalue %dx.types.CBufRet.f32 %8751, 3
  %8754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8755 = extractvalue %dx.types.CBufRet.f32 %8754, 2
  %8756 = fmul fast float %8753, %8748
  %8757 = call float @dx.op.unary.f32(i32 7, float %8756)  ; Saturate(value)
  %8758 = fsub fast float 1.000000e+00, %8757
  %8759 = fmul fast float %8369, 5.000000e-01
  %8760 = fadd fast float %8759, 5.000000e-01
  %8761 = call float @dx.op.unary.f32(i32 7, float %8760)  ; Saturate(value)
  %8762 = fsub fast float 1.000000e+00, %8761
  %8763 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8758)  ; FMax(a,b)
  %8764 = fdiv fast float %8762, %8763
  %8765 = fsub fast float %8748, %8326
  %8766 = call float @dx.op.unary.f32(i32 6, float %8765)  ; FAbs(value)
  %8767 = fmul fast float %8766, %8752
  %8768 = call float @dx.op.unary.f32(i32 7, float %8764)  ; Saturate(value)
  %8769 = fsub fast float 1.000000e+00, %8767
  %8770 = fmul fast float %8769, %8768
  %8771 = fadd fast float %8770, %8767
  %8772 = fmul fast float %8755, %8748
  %8773 = call float @dx.op.unary.f32(i32 7, float %8772)  ; Saturate(value)
  %8774 = fsub fast float 1.000000e+00, %8771
  %8775 = fmul fast float %8774, %8773
  %8776 = fadd fast float %8775, %8771
  %8777 = call float @dx.op.unary.f32(i32 7, float %8776)  ; Saturate(value)
  %8778 = fadd fast float %8750, -1.000000e+00
  %8779 = select i1 %8749, float -1.000000e+00, float %8778
  %8780 = fmul fast float %8777, %8779
  %8781 = fadd fast float %8780, 1.000000e+00
  %8782 = fsub fast float -0.000000e+00, %8780
  %8783 = fmul fast float %8742, %8782
  %8784 = fmul fast float %8743, %8782
  %8785 = fmul fast float %8744, %8782
  br label %8786

; <label>:8786                                    ; preds = %8739, %8335
  %8787 = phi float [ %8740, %8739 ], [ 0.000000e+00, %8335 ]
  %8788 = phi float [ %8781, %8739 ], [ 1.000000e+00, %8335 ]
  %8789 = phi float [ %8783, %8739 ], [ 0.000000e+00, %8335 ]
  %8790 = phi float [ %8784, %8739 ], [ 0.000000e+00, %8335 ]
  %8791 = phi float [ %8785, %8739 ], [ 0.000000e+00, %8335 ]
  %8792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8793 = extractvalue %dx.types.CBufRet.f32 %8792, 1
  %8794 = fsub fast float 1.000000e+00, %8788
  %8795 = fmul fast float %8794, %8370
  %8796 = fmul fast float %8795, %8793
  %8797 = fsub fast float %8370, %8796
  br i1 %8363, label %8798, label %8827, !dx.controlflow.hints !163

; <label>:8798                                    ; preds = %8786
  %8799 = fmul fast float %8371, %8360
  %8800 = fadd fast float %8799, %8361
  %8801 = call float @dx.op.unary.f32(i32 7, float %8800)  ; Saturate(value)
  %8802 = fmul fast float %8342, %8797
  %8803 = fsub fast float -0.000000e+00, %8802
  %8804 = fmul fast float %8343, %8797
  %8805 = fsub fast float -0.000000e+00, %8804
  %8806 = call float @dx.op.unary.f32(i32 21, float %8803)  ; Exp(value)
  %8807 = call float @dx.op.unary.f32(i32 21, float %8805)  ; Exp(value)
  %8808 = call float @dx.op.binary.f32(i32 35, float %8350, float %8806)  ; FMax(a,b)
  %8809 = call float @dx.op.binary.f32(i32 35, float %8350, float %8807)  ; FMax(a,b)
  %8810 = fsub fast float %8809, %8808
  %8811 = fmul fast float %8810, %8801
  %8812 = fadd fast float %8811, %8808
  %8813 = call float @dx.op.unary.f32(i32 7, float %8812)  ; Saturate(value)
  %8814 = fsub fast float %8347, %8352
  %8815 = fsub fast float %8348, %8353
  %8816 = fsub fast float %8349, %8354
  %8817 = fmul fast float %8801, %8814
  %8818 = fmul fast float %8801, %8815
  %8819 = fmul fast float %8801, %8816
  %8820 = fadd fast float %8817, %8352
  %8821 = fadd fast float %8818, %8353
  %8822 = fadd fast float %8819, %8354
  %8823 = fsub fast float 1.000000e+00, %8813
  %8824 = fmul fast float %8823, %8820
  %8825 = fmul fast float %8823, %8821
  %8826 = fmul fast float %8823, %8822
  br label %8886

; <label>:8827                                    ; preds = %8786
  %8828 = fmul fast float %8797, %8359
  %8829 = call float @dx.op.unary.f32(i32 7, float %8828)  ; Saturate(value)
  %8830 = fsub fast float 2.000000e+00, %8829
  %8831 = fmul fast float %8829, 9.921875e-01
  %8832 = fmul fast float %8831, %8830
  %8833 = fadd fast float %8832, 3.906250e-03
  %8834 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %44, float %8833, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8835 = extractvalue %dx.types.ResRet.f32 %8834, 0
  %8836 = fsub fast float %8829, %8835
  %8837 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8836)  ; FMax(a,b)
  %8838 = fmul fast float %8345, %8326
  %8839 = call float @dx.op.unary.f32(i32 6, float %8838)  ; FAbs(value)
  %8840 = fcmp fast ogt float %8839, 0x3EB0C6F7A0000000
  br i1 %8840, label %8841, label %8847, !dx.controlflow.hints !164

; <label>:8841                                    ; preds = %8827
  %8842 = fmul fast float %8838, 0xBFF7154760000000
  %8843 = call float @dx.op.unary.f32(i32 21, float %8842)  ; Exp(value)
  %8844 = fsub fast float 1.000000e+00, %8843
  %8845 = fdiv fast float %8844, %8838
  %8846 = fmul fast float %8845, %8355
  br label %8847

; <label>:8847                                    ; preds = %8841, %8827
  %8848 = phi float [ %8846, %8841 ], [ %8355, %8827 ]
  %8849 = fadd fast float %8848, %8357
  %8850 = fmul fast float %8849, %8837
  %8851 = fmul fast float %8342, %8850
  %8852 = fsub fast float -0.000000e+00, %8851
  %8853 = fmul fast float %8343, %8850
  %8854 = fsub fast float -0.000000e+00, %8853
  %8855 = fmul fast float %8344, %8850
  %8856 = fsub fast float -0.000000e+00, %8855
  %8857 = call float @dx.op.unary.f32(i32 21, float %8852)  ; Exp(value)
  %8858 = call float @dx.op.unary.f32(i32 21, float %8854)  ; Exp(value)
  %8859 = call float @dx.op.unary.f32(i32 21, float %8856)  ; Exp(value)
  %8860 = fmul fast float %8371, %8371
  %8861 = fadd fast float %8860, 1.000000e+00
  %8862 = fmul fast float %8861, 0x3FAE8EC8A0000000
  %8863 = fmul fast float %8862, %8352
  %8864 = fmul fast float %8862, %8353
  %8865 = fmul fast float %8862, %8354
  %8866 = fmul fast float %8371, %8350
  %8867 = fsub fast float 1.000000e+00, %8866
  %8868 = fmul fast float %8350, %8350
  %8869 = fsub fast float 1.000000e+00, %8868
  %8870 = fmul fast float %8869, 0x3FB45F3060000000
  %8871 = fmul fast float %8867, %8867
  %8872 = fdiv fast float 1.000000e+00, %8871
  %8873 = fmul fast float %8870, %8872
  %8874 = fmul fast float %8873, %8347
  %8875 = fmul fast float %8873, %8348
  %8876 = fmul fast float %8873, %8349
  %8877 = fadd fast float %8874, %8863
  %8878 = fadd fast float %8875, %8864
  %8879 = fadd fast float %8876, %8865
  %8880 = fsub fast float 1.000000e+00, %8857
  %8881 = fsub fast float 1.000000e+00, %8858
  %8882 = fsub fast float 1.000000e+00, %8859
  %8883 = fmul fast float %8877, %8880
  %8884 = fmul fast float %8878, %8881
  %8885 = fmul fast float %8879, %8882
  br label %8886

; <label>:8886                                    ; preds = %8847, %8798
  %8887 = phi float [ %8824, %8798 ], [ %8883, %8847 ]
  %8888 = phi float [ %8825, %8798 ], [ %8884, %8847 ]
  %8889 = phi float [ %8826, %8798 ], [ %8885, %8847 ]
  %8890 = phi float [ %8813, %8798 ], [ %8857, %8847 ]
  %8891 = phi float [ %8813, %8798 ], [ %8858, %8847 ]
  %8892 = phi float [ %8813, %8798 ], [ %8859, %8847 ]
  br i1 %8379, label %8893, label %9091, !dx.controlflow.hints !165

; <label>:8893                                    ; preds = %8886
  %8894 = extractvalue %dx.types.CBufRet.f32 %8792, 0
  %8895 = fmul fast float %8894, %8794
  %8896 = fsub fast float %8789, %8887
  %8897 = fsub fast float %8790, %8888
  %8898 = fsub fast float %8791, %8889
  %8899 = fmul fast float %8895, %8896
  %8900 = fmul fast float %8895, %8897
  %8901 = fmul fast float %8895, %8898
  %8902 = fadd fast float %8899, %8887
  %8903 = fadd fast float %8900, %8888
  %8904 = fadd fast float %8901, %8889
  %8905 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8890)  ; FMax(a,b)
  %8906 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8891)  ; FMax(a,b)
  %8907 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8892)  ; FMax(a,b)
  %8908 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8788)  ; FMax(a,b)
  %8909 = call float @dx.op.binary.f32(i32 35, float %8787, float %8797)  ; FMax(a,b)
  %8910 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8909)  ; FMax(a,b)
  %8911 = fdiv fast float %8787, %8910
  %8912 = call float @dx.op.unary.f32(i32 7, float %8911)  ; Saturate(value)
  %8913 = fdiv fast float %8797, %8910
  %8914 = call float @dx.op.unary.f32(i32 7, float %8913)  ; Saturate(value)
  %8915 = fcmp fast une float %8908, 1.000000e+00
  br i1 %8915, label %8916, label %8929, !dx.controlflow.hints !166

; <label>:8916                                    ; preds = %8893
  %8917 = call float @dx.op.unary.f32(i32 23, float %8908)  ; Log(value)
  %8918 = fmul fast float %8917, 0x3FE62E4300000000
  %8919 = fmul fast float %8789, %8918
  %8920 = fsub fast float -0.000000e+00, %8919
  %8921 = fmul fast float %8790, %8918
  %8922 = fsub fast float -0.000000e+00, %8921
  %8923 = fmul fast float %8791, %8918
  %8924 = fsub fast float -0.000000e+00, %8923
  %8925 = fsub fast float 1.000000e+00, %8908
  %8926 = fdiv fast float %8920, %8925
  %8927 = fdiv fast float %8922, %8925
  %8928 = fdiv fast float %8924, %8925
  br label %8929

; <label>:8929                                    ; preds = %8916, %8893
  %8930 = phi float [ %8926, %8916 ], [ %8789, %8893 ]
  %8931 = phi float [ %8927, %8916 ], [ %8790, %8893 ]
  %8932 = phi float [ %8928, %8916 ], [ %8791, %8893 ]
  %8933 = phi float [ %8918, %8916 ], [ 0.000000e+00, %8893 ]
  %8934 = fcmp fast une float %8905, 1.000000e+00
  br i1 %8934, label %8935, label %8942, !dx.controlflow.hints !167

; <label>:8935                                    ; preds = %8929
  %8936 = call float @dx.op.unary.f32(i32 23, float %8905)  ; Log(value)
  %8937 = fmul fast float %8936, 0x3FE62E4300000000
  %8938 = fmul fast float %8902, %8937
  %8939 = fsub fast float -0.000000e+00, %8938
  %8940 = fsub fast float 1.000000e+00, %8905
  %8941 = fdiv fast float %8939, %8940
  br label %8942

; <label>:8942                                    ; preds = %8935, %8929
  %8943 = phi float [ %8941, %8935 ], [ %8902, %8929 ]
  %8944 = phi float [ %8937, %8935 ], [ 0.000000e+00, %8929 ]
  %8945 = fcmp fast une float %8906, 1.000000e+00
  br i1 %8945, label %8946, label %8953, !dx.controlflow.hints !167

; <label>:8946                                    ; preds = %8942
  %8947 = call float @dx.op.unary.f32(i32 23, float %8906)  ; Log(value)
  %8948 = fmul fast float %8947, 0x3FE62E4300000000
  %8949 = fmul fast float %8903, %8948
  %8950 = fsub fast float -0.000000e+00, %8949
  %8951 = fsub fast float 1.000000e+00, %8906
  %8952 = fdiv fast float %8950, %8951
  br label %8953

; <label>:8953                                    ; preds = %8946, %8942
  %8954 = phi float [ %8952, %8946 ], [ %8903, %8942 ]
  %8955 = phi float [ %8948, %8946 ], [ 0.000000e+00, %8942 ]
  %8956 = fcmp fast une float %8907, 1.000000e+00
  br i1 %8956, label %8957, label %8964, !dx.controlflow.hints !167

; <label>:8957                                    ; preds = %8953
  %8958 = call float @dx.op.unary.f32(i32 23, float %8907)  ; Log(value)
  %8959 = fmul fast float %8958, 0x3FE62E4300000000
  %8960 = fmul fast float %8904, %8959
  %8961 = fsub fast float -0.000000e+00, %8960
  %8962 = fsub fast float 1.000000e+00, %8907
  %8963 = fdiv fast float %8961, %8962
  br label %8964

; <label>:8964                                    ; preds = %8957, %8953
  %8965 = phi float [ %8963, %8957 ], [ %8904, %8953 ]
  %8966 = phi float [ %8959, %8957 ], [ 0.000000e+00, %8953 ]
  %8967 = fmul fast float %8930, %8914
  %8968 = fmul fast float %8931, %8914
  %8969 = fmul fast float %8932, %8914
  %8970 = fmul fast float %8933, %8914
  %8971 = fmul fast float %8943, %8912
  %8972 = fmul fast float %8954, %8912
  %8973 = fmul fast float %8965, %8912
  %8974 = fmul fast float %8944, %8912
  %8975 = fmul fast float %8955, %8912
  %8976 = fmul fast float %8966, %8912
  %8977 = fadd fast float %8971, %8967
  %8978 = fadd fast float %8972, %8968
  %8979 = fadd fast float %8973, %8969
  %8980 = fadd fast float %8974, %8970
  %8981 = fadd fast float %8975, %8970
  %8982 = fadd fast float %8976, %8970
  %8983 = fcmp fast une float %8980, 0.000000e+00
  br i1 %8983, label %8984, label %8991, !dx.controlflow.hints !168

; <label>:8984                                    ; preds = %8964
  %8985 = fmul fast float %8980, 0x3FF7154760000000
  %8986 = call float @dx.op.unary.f32(i32 21, float %8985)  ; Exp(value)
  %8987 = fsub fast float 1.000000e+00, %8986
  %8988 = fmul fast float %8977, %8987
  %8989 = fsub fast float -0.000000e+00, %8988
  %8990 = fdiv fast float %8989, %8980
  br label %8991

; <label>:8991                                    ; preds = %8984, %8964
  %8992 = phi float [ %8986, %8984 ], [ 1.000000e+00, %8964 ]
  %8993 = phi float [ %8990, %8984 ], [ %8977, %8964 ]
  %8994 = fcmp fast une float %8981, 0.000000e+00
  br i1 %8994, label %8995, label %9002, !dx.controlflow.hints !168

; <label>:8995                                    ; preds = %8991
  %8996 = fmul fast float %8981, 0x3FF7154760000000
  %8997 = call float @dx.op.unary.f32(i32 21, float %8996)  ; Exp(value)
  %8998 = fsub fast float 1.000000e+00, %8997
  %8999 = fmul fast float %8978, %8998
  %9000 = fsub fast float -0.000000e+00, %8999
  %9001 = fdiv fast float %9000, %8981
  br label %9002

; <label>:9002                                    ; preds = %8995, %8991
  %9003 = phi float [ %8997, %8995 ], [ 1.000000e+00, %8991 ]
  %9004 = phi float [ %9001, %8995 ], [ %8978, %8991 ]
  %9005 = fcmp fast une float %8982, 0.000000e+00
  br i1 %9005, label %9006, label %9013, !dx.controlflow.hints !168

; <label>:9006                                    ; preds = %9002
  %9007 = fmul fast float %8982, 0x3FF7154760000000
  %9008 = call float @dx.op.unary.f32(i32 21, float %9007)  ; Exp(value)
  %9009 = fsub fast float 1.000000e+00, %9008
  %9010 = fmul fast float %8979, %9009
  %9011 = fsub fast float -0.000000e+00, %9010
  %9012 = fdiv fast float %9011, %8982
  br label %9013

; <label>:9013                                    ; preds = %9006, %9002
  %9014 = phi float [ %9008, %9006 ], [ 1.000000e+00, %9002 ]
  %9015 = phi float [ %9012, %9006 ], [ %8979, %9002 ]
  %9016 = fcmp fast ogt float %8912, %8914
  br i1 %9016, label %9017, label %9037

; <label>:9017                                    ; preds = %9013
  %9018 = fsub fast float 1.000000e+00, %8914
  %9019 = fmul fast float %8930, %9018
  %9020 = fmul fast float %8931, %9018
  %9021 = fmul fast float %8932, %9018
  %9022 = fmul fast float %8933, %9018
  %9023 = fcmp fast une float %9022, 0.000000e+00
  br i1 %9023, label %9024, label %9075, !dx.controlflow.hints !169

; <label>:9024                                    ; preds = %9017
  %9025 = fmul fast float %9022, 0x3FF7154760000000
  %9026 = call float @dx.op.unary.f32(i32 21, float %9025)  ; Exp(value)
  %9027 = fsub fast float 1.000000e+00, %9026
  %9028 = fmul fast float %9019, %9027
  %9029 = fsub fast float -0.000000e+00, %9028
  %9030 = fmul fast float %9020, %9027
  %9031 = fsub fast float -0.000000e+00, %9030
  %9032 = fmul fast float %9021, %9027
  %9033 = fsub fast float -0.000000e+00, %9032
  %9034 = fdiv fast float %9029, %9022
  %9035 = fdiv fast float %9031, %9022
  %9036 = fdiv fast float %9033, %9022
  br label %9075

; <label>:9037                                    ; preds = %9013
  %9038 = fsub fast float 1.000000e+00, %8912
  %9039 = fmul fast float %8943, %9038
  %9040 = fmul fast float %8954, %9038
  %9041 = fmul fast float %8965, %9038
  %9042 = fmul fast float %8944, %9038
  %9043 = fmul fast float %8955, %9038
  %9044 = fmul fast float %8966, %9038
  %9045 = fcmp fast une float %9042, 0.000000e+00
  br i1 %9045, label %9046, label %9053, !dx.controlflow.hints !168

; <label>:9046                                    ; preds = %9037
  %9047 = fmul fast float %9042, 0x3FF7154760000000
  %9048 = call float @dx.op.unary.f32(i32 21, float %9047)  ; Exp(value)
  %9049 = fsub fast float 1.000000e+00, %9048
  %9050 = fmul fast float %9039, %9049
  %9051 = fsub fast float -0.000000e+00, %9050
  %9052 = fdiv fast float %9051, %9042
  br label %9053

; <label>:9053                                    ; preds = %9046, %9037
  %9054 = phi float [ %9052, %9046 ], [ %9039, %9037 ]
  %9055 = phi float [ %9048, %9046 ], [ 1.000000e+00, %9037 ]
  %9056 = fcmp fast une float %9043, 0.000000e+00
  br i1 %9056, label %9057, label %9064, !dx.controlflow.hints !168

; <label>:9057                                    ; preds = %9053
  %9058 = fmul fast float %9043, 0x3FF7154760000000
  %9059 = call float @dx.op.unary.f32(i32 21, float %9058)  ; Exp(value)
  %9060 = fsub fast float 1.000000e+00, %9059
  %9061 = fmul fast float %9040, %9060
  %9062 = fsub fast float -0.000000e+00, %9061
  %9063 = fdiv fast float %9062, %9043
  br label %9064

; <label>:9064                                    ; preds = %9057, %9053
  %9065 = phi float [ %9063, %9057 ], [ %9040, %9053 ]
  %9066 = phi float [ %9059, %9057 ], [ 1.000000e+00, %9053 ]
  %9067 = fcmp fast une float %9044, 0.000000e+00
  br i1 %9067, label %9068, label %9075, !dx.controlflow.hints !168

; <label>:9068                                    ; preds = %9064
  %9069 = fmul fast float %9044, 0x3FF7154760000000
  %9070 = call float @dx.op.unary.f32(i32 21, float %9069)  ; Exp(value)
  %9071 = fsub fast float 1.000000e+00, %9070
  %9072 = fmul fast float %9041, %9071
  %9073 = fsub fast float -0.000000e+00, %9072
  %9074 = fdiv fast float %9073, %9044
  br label %9075

; <label>:9075                                    ; preds = %9068, %9064, %9024, %9017
  %9076 = phi float [ %9074, %9068 ], [ %9036, %9024 ], [ %9021, %9017 ], [ %9041, %9064 ]
  %9077 = phi float [ %9065, %9068 ], [ %9035, %9024 ], [ %9020, %9017 ], [ %9065, %9064 ]
  %9078 = phi float [ %9054, %9068 ], [ %9034, %9024 ], [ %9019, %9017 ], [ %9054, %9064 ]
  %9079 = phi float [ %9070, %9068 ], [ %9026, %9024 ], [ 1.000000e+00, %9017 ], [ 1.000000e+00, %9064 ]
  %9080 = phi float [ %9066, %9068 ], [ %9026, %9024 ], [ 1.000000e+00, %9017 ], [ %9066, %9064 ]
  %9081 = phi float [ %9055, %9068 ], [ %9026, %9024 ], [ 1.000000e+00, %9017 ], [ %9055, %9064 ]
  %9082 = fmul fast float %9081, %8993
  %9083 = fmul fast float %9080, %9004
  %9084 = fmul fast float %9079, %9015
  %9085 = fadd fast float %9082, %9078
  %9086 = fadd fast float %9083, %9077
  %9087 = fadd fast float %9084, %9076
  %9088 = fmul fast float %9081, %8992
  %9089 = fmul fast float %9080, %9003
  %9090 = fmul fast float %9079, %9014
  br label %9091

; <label>:9091                                    ; preds = %9075, %8886
  %9092 = phi float [ %9090, %9075 ], [ %8892, %8886 ]
  %9093 = phi float [ %9089, %9075 ], [ %8891, %8886 ]
  %9094 = phi float [ %9088, %9075 ], [ %8890, %8886 ]
  %9095 = phi float [ %9087, %9075 ], [ %8889, %8886 ]
  %9096 = phi float [ %9086, %9075 ], [ %8888, %8886 ]
  %9097 = phi float [ %9085, %9075 ], [ %8887, %8886 ]
  %9098 = fmul fast float %9097, %8039
  %9099 = fmul fast float %9096, %8041
  %9100 = fmul fast float %9095, %8043
  %9101 = fmul fast float %9094, %8334
  %9102 = call float @dx.op.dot3.f32(i32 55, float %9094, float %9093, float %9092, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9103 = call float @dx.op.dot3.f32(i32 55, float %9098, float %9099, float %9100, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9104 = select i1 %269, float %9102, float %9094
  %9105 = select i1 %269, float %9102, float %9093
  %9106 = select i1 %269, float 1.000000e+00, float %9092
  %9107 = select i1 %269, float %9103, float %9098
  %9108 = select i1 %269, float 0.000000e+00, float %9099
  %9109 = select i1 %269, float 0.000000e+00, float %9100
  %9110 = fmul fast float %9104, %8328
  %9111 = fmul fast float %9105, %8329
  %9112 = fmul fast float %9106, %8330
  %9113 = fadd fast float %9110, %9107
  %9114 = fadd fast float %9111, %9108
  %9115 = fadd fast float %9109, %9112
  %9116 = fmul fast float %9104, %8331
  %9117 = fmul fast float %9105, %8332
  %9118 = fmul fast float %9106, %8333
  %9119 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9120 = extractvalue %dx.types.CBufRet.i32 %9119, 0
  %9121 = icmp eq i32 %9120, 0
  br i1 %9121, label %9489, label %9122, !dx.controlflow.hints !170

; <label>:9122                                    ; preds = %9091
  %9123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9124 = extractvalue %dx.types.CBufRet.f32 %9123, 2
  %9125 = extractvalue %dx.types.CBufRet.f32 %9123, 3
  %9126 = fmul fast float %9124, %108
  %9127 = fmul fast float %9125, %109
  %9128 = fmul fast float %9126, 2.000000e+00
  %9129 = fmul fast float %9127, 2.000000e+00
  %9130 = fsub fast float 1.000000e+00, %9128
  %9131 = fsub fast float 1.000000e+00, %9129
  %9132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9133 = extractvalue %dx.types.CBufRet.f32 %9132, 0
  %9134 = extractvalue %dx.types.CBufRet.f32 %9132, 1
  %9135 = extractvalue %dx.types.CBufRet.f32 %9132, 2
  %9136 = fmul fast float %9130, %9133
  %9137 = fmul fast float %9130, %9134
  %9138 = fmul fast float %9130, %9135
  %9139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9140 = extractvalue %dx.types.CBufRet.f32 %9139, 0
  %9141 = extractvalue %dx.types.CBufRet.f32 %9139, 1
  %9142 = extractvalue %dx.types.CBufRet.f32 %9139, 2
  %9143 = fmul fast float %9131, %9140
  %9144 = fmul fast float %9131, %9141
  %9145 = fmul fast float %9131, %9142
  %9146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9147 = extractvalue %dx.types.CBufRet.f32 %9146, 0
  %9148 = extractvalue %dx.types.CBufRet.f32 %9146, 1
  %9149 = extractvalue %dx.types.CBufRet.f32 %9146, 2
  %9150 = fadd fast float %9143, %9147
  %9151 = fadd fast float %9150, %9136
  %9152 = fadd fast float %9144, %9148
  %9153 = fadd fast float %9152, %9137
  %9154 = fadd fast float %9145, %9149
  %9155 = fadd fast float %9154, %9138
  %9156 = fmul fast float %9151, %8327
  %9157 = fmul fast float %9153, %8327
  %9158 = fmul fast float %9155, %8327
  %9159 = fmul fast float %9156, %9156
  %9160 = fmul fast float %9157, %9157
  %9161 = fadd fast float %9159, %9160
  %9162 = fmul fast float %9158, %9158
  %9163 = fadd fast float %9161, %9162
  %9164 = call float @dx.op.unary.f32(i32 24, float %9163)  ; Sqrt(value)
  %9165 = extractvalue %dx.types.CBufRet.f32 %8054, 0
  %9166 = fsub fast float %9164, %9165
  %9167 = extractvalue %dx.types.CBufRet.f32 %8054, 2
  %9168 = fmul fast float %9166, %9167
  %9169 = call float @dx.op.unary.f32(i32 7, float %9168)  ; Saturate(value)
  %9170 = fadd fast float %9169, -5.000000e-01
  %9171 = fmul fast float %9170, 2.000000e+00
  %9172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9173 = extractvalue %dx.types.CBufRet.f32 %9172, 2
  %9174 = call float @dx.op.binary.f32(i32 36, float %9173, float %9171)  ; FMin(a,b)
  %9175 = fsub fast float -0.000000e+00, %9173
  %9176 = fcmp fast ogt float %9174, %9175
  br i1 %9176, label %9177, label %9489, !dx.controlflow.hints !171

; <label>:9177                                    ; preds = %9122
  %9178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9179 = extractvalue %dx.types.CBufRet.f32 %9178, 3
  %9180 = fcmp fast ogt float %9179, 0.000000e+00
  br i1 %9180, label %9181, label %9256, !dx.controlflow.hints !172

; <label>:9181                                    ; preds = %9177
  %9182 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %9183 = extractvalue %dx.types.Dimensions %9182, 0
  %9184 = sitofp i32 %9183 to float
  %9185 = extractvalue %dx.types.Dimensions %9182, 1
  %9186 = sitofp i32 %9185 to float
  %9187 = fmul fast float %9126, %9184
  %9188 = fmul fast float %9127, %9186
  %9189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9190 = extractvalue %dx.types.CBufRet.f32 %9189, 1
  %9191 = fsub fast float -0.000000e+00, %9190
  %9192 = fptoui float %9191 to i32
  %9193 = fptoui float %9187 to i32
  %9194 = fptoui float %9188 to i32
  %9195 = and i32 %9192, 31
  %9196 = lshr i32 %9193, %9195
  %9197 = lshr i32 %9194, %9195
  %9198 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %25, i32 %9192, i32 %9196, i32 %9197, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9199 = extractvalue %dx.types.ResRet.f32 %9198, 0
  %9200 = fcmp fast olt float %9199, -1.000000e+00
  %9201 = fcmp fast ogt float %9199, -1.000000e+00
  %9202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9203 = extractvalue %dx.types.CBufRet.f32 %9202, 1
  %9204 = select i1 %9201, float %9203, float 1.000000e+00
  %9205 = fadd fast float %9199, 1.000000e+00
  %9206 = fmul fast float %9204, %9205
  %9207 = call float @dx.op.unary.f32(i32 6, float %9206)  ; FAbs(value)
  %9208 = extractvalue %dx.types.CBufRet.f32 %9202, 3
  %9209 = fcmp fast oge float %9207, %9208
  %9210 = select i1 %9209, float 0x4197782600000000, float %9207
  %9211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9212 = extractvalue %dx.types.CBufRet.f32 %9211, 0
  %9213 = extractvalue %dx.types.CBufRet.f32 %9211, 1
  %9214 = extractvalue %dx.types.CBufRet.f32 %9211, 2
  %9215 = select i1 %9200, float %9212, float %9133
  %9216 = select i1 %9200, float %9213, float %9134
  %9217 = select i1 %9200, float %9214, float %9135
  %9218 = fmul fast float %9215, %9130
  %9219 = fmul fast float %9216, %9130
  %9220 = fmul fast float %9217, %9130
  %9221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9222 = extractvalue %dx.types.CBufRet.f32 %9221, 0
  %9223 = extractvalue %dx.types.CBufRet.f32 %9221, 1
  %9224 = extractvalue %dx.types.CBufRet.f32 %9221, 2
  %9225 = select i1 %9200, float %9222, float %9140
  %9226 = select i1 %9200, float %9223, float %9141
  %9227 = select i1 %9200, float %9224, float %9142
  %9228 = fmul fast float %9225, %9131
  %9229 = fmul fast float %9226, %9131
  %9230 = fmul fast float %9227, %9131
  %9231 = fadd fast float %9228, %9218
  %9232 = fadd fast float %9229, %9219
  %9233 = fadd fast float %9230, %9220
  %9234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9235 = extractvalue %dx.types.CBufRet.f32 %9234, 0
  %9236 = extractvalue %dx.types.CBufRet.f32 %9234, 1
  %9237 = extractvalue %dx.types.CBufRet.f32 %9234, 2
  %9238 = select i1 %9200, float %9235, float %9147
  %9239 = select i1 %9200, float %9236, float %9148
  %9240 = select i1 %9200, float %9237, float %9149
  %9241 = fadd fast float %9231, %9238
  %9242 = fadd fast float %9232, %9239
  %9243 = fadd fast float %9233, %9240
  %9244 = fmul fast float %9241, %9210
  %9245 = fmul fast float %9242, %9210
  %9246 = fmul fast float %9243, %9210
  %9247 = fmul fast float %9244, %9244
  %9248 = fmul fast float %9245, %9245
  %9249 = fadd fast float %9247, %9248
  %9250 = fmul fast float %9246, %9246
  %9251 = fadd fast float %9249, %9250
  %9252 = call float @dx.op.unary.f32(i32 24, float %9251)  ; Sqrt(value)
  %9253 = fsub fast float %9252, %9165
  %9254 = fmul fast float %9253, %9167
  %9255 = call float @dx.op.unary.f32(i32 7, float %9254)  ; Saturate(value)
  br label %9256

; <label>:9256                                    ; preds = %9181, %9177
  %9257 = phi float [ %9255, %9181 ], [ 1.000000e+00, %9177 ]
  %9258 = fmul fast float %9174, 5.000000e-01
  %9259 = fadd fast float %9258, 5.000000e-01
  %9260 = call float @dx.op.unary.f32(i32 22, float %9259)  ; Frc(value)
  %9261 = call float @dx.op.unary.f32(i32 27, float %9260)  ; Round_ni(value)
  %9262 = call float @dx.op.unary.f32(i32 22, float %9260)  ; Frc(value)
  %9263 = fmul fast float %9262, 2.000000e+00
  %9264 = fadd fast float %9263, -1.000000e+00
  %9265 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %44, float %9126, float %9127, float %9261, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9266 = extractvalue %dx.types.ResRet.f32 %9265, 0
  %9267 = extractvalue %dx.types.ResRet.f32 %9265, 1
  %9268 = extractvalue %dx.types.ResRet.f32 %9265, 2
  %9269 = extractvalue %dx.types.ResRet.f32 %9265, 3
  %9270 = fadd fast float %9266, -5.000000e-01
  %9271 = fadd fast float %9268, -5.000000e-01
  %9272 = fmul fast float %9270, 0xBFD5555560000000
  %9273 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9271, float %9272)  ; FMad(a,b,c)
  %9274 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9267, float 0.000000e+00)  ; FMad(a,b,c)
  %9275 = fadd fast float %9274, %9269
  %9276 = fmul fast float %9270, -7.500000e-01
  %9277 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9271, float %9276)  ; FMad(a,b,c)
  %9278 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9267, float 0.000000e+00)  ; FMad(a,b,c)
  %9279 = fadd fast float %9278, %9269
  %9280 = call float @dx.op.binary.f32(i32 35, float %9273, float -1.000000e+00)  ; FMax(a,b)
  %9281 = call float @dx.op.binary.f32(i32 35, float %9275, float -1.000000e+00)  ; FMax(a,b)
  %9282 = call float @dx.op.binary.f32(i32 35, float %9277, float -1.000000e+00)  ; FMax(a,b)
  %9283 = call float @dx.op.binary.f32(i32 35, float %9279, float -1.000000e+00)  ; FMax(a,b)
  %9284 = call float @dx.op.binary.f32(i32 36, float %9280, float 1.000000e+00)  ; FMin(a,b)
  %9285 = call float @dx.op.binary.f32(i32 36, float %9281, float 1.000000e+00)  ; FMin(a,b)
  %9286 = call float @dx.op.binary.f32(i32 36, float %9282, float 1.000000e+00)  ; FMin(a,b)
  %9287 = call float @dx.op.binary.f32(i32 36, float %9283, float 1.000000e+00)  ; FMin(a,b)
  %9288 = fcmp fast olt float %9284, 0x3FEFFF8020000000
  br i1 %9288, label %9289, label %9404, !dx.controlflow.hints !173

; <label>:9289                                    ; preds = %9256
  %9290 = extractvalue %dx.types.CBufRet.f32 %9172, 3
  %9291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9292 = extractvalue %dx.types.CBufRet.f32 %9291, 0
  %9293 = extractvalue %dx.types.CBufRet.f32 %9291, 1
  %9294 = extractvalue %dx.types.CBufRet.f32 %9291, 2
  %9295 = extractvalue %dx.types.CBufRet.f32 %9291, 3
  %9296 = fsub fast float %9292, %9284
  %9297 = fsub fast float %9293, %9285
  %9298 = fsub fast float %9294, %9286
  %9299 = fsub fast float %9295, %9287
  %9300 = fmul fast float %9296, %9290
  %9301 = fmul fast float %9297, %9290
  %9302 = fmul fast float %9298, %9290
  %9303 = fmul fast float %9299, %9290
  %9304 = fadd fast float %9300, %9284
  %9305 = fadd fast float %9301, %9285
  %9306 = fsub fast float -0.000000e+00, %9305
  %9307 = fadd fast float %9302, %9286
  %9308 = fadd fast float %9303, %9287
  %9309 = fmul fast float %9304, %9304
  %9310 = fsub fast float %9305, %9309
  %9311 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9310)  ; FMax(a,b)
  %9312 = fdiv fast float 1.000000e+00, %9311
  %9313 = fmul fast float %9305, %9304
  %9314 = fsub fast float %9307, %9313
  %9315 = fsub fast float %9264, %9304
  %9316 = fmul fast float %9264, %9264
  %9317 = fsub fast float %9316, %9305
  %9318 = fmul fast float %9315, %9312
  %9319 = fmul fast float %9318, %9314
  %9320 = fsub fast float %9317, %9319
  %9321 = fmul fast float %9305, %9305
  %9322 = fsub fast float %9308, %9321
  %9323 = fmul fast float %9314, %9314
  %9324 = fmul fast float %9323, %9312
  %9325 = fsub fast float %9322, %9324
  %9326 = fdiv fast float %9320, %9325
  %9327 = fmul fast float %9314, %9326
  %9328 = fsub fast float %9315, %9327
  %9329 = fmul fast float %9328, %9312
  %9330 = fmul fast float %9329, %9304
  %9331 = fsub fast float 1.000000e+00, %9330
  %9332 = fmul fast float %9305, %9326
  %9333 = fsub fast float %9331, %9332
  %9334 = fmul fast float %9329, %9329
  %9335 = fmul fast float %9326, 4.000000e+00
  %9336 = fmul fast float %9335, %9333
  %9337 = fsub fast float %9334, %9336
  %9338 = call float @dx.op.unary.f32(i32 24, float %9337)  ; Sqrt(value)
  %9339 = fcmp fast oge float %9329, 0.000000e+00
  %9340 = fsub fast float -0.000000e+00, %9338
  %9341 = select i1 %9339, float %9340, float %9338
  %9342 = fsub fast float %9341, %9329
  %9343 = fdiv fast float %9342, %9326
  %9344 = fdiv fast float %9333, %9342
  %9345 = fmul fast float %9343, 5.000000e-01
  %9346 = fmul fast float %9344, 2.000000e+00
  %9347 = select i1 %9339, float %9345, float %9346
  %9348 = select i1 %9339, float %9346, float %9345
  %9349 = call float @dx.op.binary.f32(i32 35, float %9347, float %9348)  ; FMax(a,b)
  %9350 = call float @dx.op.binary.f32(i32 36, float %9347, float %9348)  ; FMin(a,b)
  %9351 = fcmp fast ogt float %9264, %9350
  br i1 %9351, label %9352, label %9362

; <label>:9352                                    ; preds = %9289
  %9353 = fsub fast float %9264, %9350
  %9354 = fsub fast float %9349, %9350
  %9355 = fmul fast float %9353, %9354
  %9356 = fmul fast float %9349, %9264
  %9357 = fadd fast float %9349, %9264
  %9358 = fmul fast float %9357, %9304
  %9359 = fadd fast float %9356, %9305
  %9360 = fsub fast float %9359, %9358
  %9361 = fdiv fast float %9360, %9355
  br label %9362

; <label>:9362                                    ; preds = %9352, %9289
  %9363 = phi float [ %9361, %9352 ], [ 0.000000e+00, %9289 ]
  %9364 = fcmp fast ogt float %9264, %9349
  %9365 = fsub fast float %9264, %9349
  br i1 %9364, label %9366, label %9376

; <label>:9366                                    ; preds = %9362
  %9367 = fsub fast float %9349, %9350
  %9368 = fmul fast float %9367, %9365
  %9369 = fmul fast float %9350, %9264
  %9370 = fadd fast float %9350, %9264
  %9371 = fmul fast float %9370, %9304
  %9372 = fsub fast float %9306, %9369
  %9373 = fadd fast float %9372, %9371
  %9374 = fdiv fast float %9373, %9368
  %9375 = fadd fast float %9374, %9363
  br label %9376

; <label>:9376                                    ; preds = %9366, %9362
  %9377 = phi float [ %9375, %9366 ], [ %9363, %9362 ]
  %9378 = fsub fast float %9264, %9350
  %9379 = fmul fast float %9378, %9365
  %9380 = fmul fast float %9350, %9349
  %9381 = fadd fast float %9350, %9349
  %9382 = fmul fast float %9381, %9304
  %9383 = fadd fast float %9380, %9305
  %9384 = fsub fast float %9383, %9382
  %9385 = fdiv fast float %9384, %9379
  %9386 = call float @dx.op.unary.f32(i32 7, float %9377)  ; Saturate(value)
  %9387 = fcmp fast oeq float %8055, 0.000000e+00
  %9388 = extractvalue %dx.types.CBufRet.f32 %9172, 0
  %9389 = fcmp fast oeq float %9388, 0.000000e+00
  %9390 = or i1 %9387, %9389
  %9391 = fmul fast float %9388, 2.000000e+00
  %9392 = fadd fast float %9173, %9174
  %9393 = fdiv fast float %9392, %9391
  %9394 = call float @dx.op.unary.f32(i32 7, float %9393)  ; Saturate(value)
  %9395 = fmul fast float %9394, 2.000000e+00
  %9396 = fsub fast float 3.000000e+00, %9395
  %9397 = fmul fast float %9394, %9394
  %9398 = fmul fast float %9397, %9396
  %9399 = select i1 %9390, float 1.000000e+00, float %9398
  %9400 = fmul fast float %9385, %8055
  %9401 = fadd fast float %9386, %9400
  %9402 = call float @dx.op.unary.f32(i32 7, float %9401)  ; Saturate(value)
  %9403 = fmul fast float %9399, %9402
  br label %9404

; <label>:9404                                    ; preds = %9376, %9256
  %9405 = phi float [ %9403, %9376 ], [ 0.000000e+00, %9256 ]
  %9406 = fsub fast float 1.000000e+00, %9405
  %9407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %44, float %9126, float %9127, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9408 = extractvalue %dx.types.ResRet.f32 %9407, 0
  %9409 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9410 = extractvalue %dx.types.CBufRet.i32 %9409, 2
  %9411 = icmp eq i32 %9410, 0
  br i1 %9411, label %9417, label %9412

; <label>:9412                                    ; preds = %9404
  %9413 = call float @dx.op.unary.f32(i32 7, float %9405)  ; Saturate(value)
  %9414 = fadd fast float %9408, -1.000000e+00
  %9415 = fmul fast float %9413, %9414
  %9416 = fadd fast float %9415, 1.000000e+00
  br label %9417

; <label>:9417                                    ; preds = %9412, %9404
  %9418 = phi float [ %9416, %9412 ], [ %9406, %9404 ]
  br i1 %9180, label %9419, label %9437

; <label>:9419                                    ; preds = %9417
  %9420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9421 = extractvalue %dx.types.CBufRet.f32 %9420, 1
  %9422 = fsub fast float %9257, %9421
  %9423 = call float @dx.op.unary.f32(i32 7, float %9422)  ; Saturate(value)
  %9424 = fsub fast float %9257, %9179
  %9425 = call float @dx.op.unary.f32(i32 7, float %9424)  ; Saturate(value)
  %9426 = fsub fast float %9423, %9425
  %9427 = fsub fast float %9259, %9425
  %9428 = fdiv fast float %9427, %9426
  %9429 = call float @dx.op.unary.f32(i32 7, float %9428)  ; Saturate(value)
  %9430 = fmul fast float %9429, 2.000000e+00
  %9431 = fsub fast float 3.000000e+00, %9430
  %9432 = fsub fast float %9408, %9418
  %9433 = fmul fast float %9429, %9429
  %9434 = fmul fast float %9433, %9432
  %9435 = fmul fast float %9434, %9431
  %9436 = fadd fast float %9435, %9418
  br label %9437

; <label>:9437                                    ; preds = %9419, %9417
  %9438 = phi float [ %9436, %9419 ], [ %9418, %9417 ]
  %9439 = call float @dx.op.binary.f32(i32 35, float %9408, float %9438)  ; FMax(a,b)
  %9440 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9441 = extractvalue %dx.types.CBufRet.i32 %9440, 2
  %9442 = and i32 %9441, 1
  %9443 = icmp eq i32 %9442, 0
  %9444 = fcmp fast une float %9439, 1.000000e+00
  %9445 = and i1 %9444, %9443
  br i1 %9445, label %9446, label %9465

; <label>:9446                                    ; preds = %9437
  %9447 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %9126, float %9127, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9448 = extractvalue %dx.types.ResRet.f32 %9447, 0
  %9449 = extractvalue %dx.types.ResRet.f32 %9447, 1
  %9450 = extractvalue %dx.types.ResRet.f32 %9447, 2
  %9451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9452 = extractvalue %dx.types.CBufRet.f32 %9451, 1
  %9453 = fmul fast float %9452, %9448
  %9454 = fmul fast float %9452, %9449
  %9455 = fmul fast float %9452, %9450
  %9456 = fcmp fast ogt float %9408, 0x3FEFFF2E40000000
  %9457 = fsub fast float 1.000000e+00, %9439
  %9458 = fsub fast float 1.000000e+00, %9408
  %9459 = fdiv fast float %9457, %9458
  %9460 = call float @dx.op.unary.f32(i32 7, float %9459)  ; Saturate(value)
  %9461 = select i1 %9456, float 0.000000e+00, float %9460
  %9462 = fmul fast float %9453, %9461
  %9463 = fmul fast float %9454, %9461
  %9464 = fmul fast float %9455, %9461
  br label %9465

; <label>:9465                                    ; preds = %9446, %9437
  %9466 = phi float [ 0.000000e+00, %9437 ], [ %9462, %9446 ]
  %9467 = phi float [ 0.000000e+00, %9437 ], [ %9463, %9446 ]
  %9468 = phi float [ 0.000000e+00, %9437 ], [ %9464, %9446 ]
  %9469 = fmul fast float %9466, %8039
  %9470 = fmul fast float %9467, %8041
  %9471 = fmul fast float %9468, %8043
  %9472 = fmul fast float %9439, %9101
  %9473 = call float @dx.op.dot3.f32(i32 55, float %9439, float %9439, float %9439, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9474 = call float @dx.op.dot3.f32(i32 55, float %9469, float %9470, float %9471, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9475 = select i1 %269, float %9473, float %9439
  %9476 = select i1 %269, float 1.000000e+00, float %9439
  %9477 = select i1 %269, float %9474, float %9469
  %9478 = select i1 %269, float 0.000000e+00, float %9470
  %9479 = select i1 %269, float 0.000000e+00, float %9471
  %9480 = fmul fast float %9475, %9113
  %9481 = fmul fast float %9475, %9114
  %9482 = fmul fast float %9476, %9115
  %9483 = fadd fast float %9480, %9477
  %9484 = fadd fast float %9481, %9478
  %9485 = fadd fast float %9479, %9482
  %9486 = fmul fast float %9475, %9116
  %9487 = fmul fast float %9475, %9117
  %9488 = fmul fast float %9476, %9118
  br label %9489

; <label>:9489                                    ; preds = %9465, %9122, %9091, %8323
  %9490 = phi float [ %8328, %8323 ], [ %9113, %9091 ], [ %9483, %9465 ], [ %9113, %9122 ]
  %9491 = phi float [ %8329, %8323 ], [ %9114, %9091 ], [ %9484, %9465 ], [ %9114, %9122 ]
  %9492 = phi float [ %8330, %8323 ], [ %9115, %9091 ], [ %9485, %9465 ], [ %9115, %9122 ]
  %9493 = phi float [ %8331, %8323 ], [ %9116, %9091 ], [ %9486, %9465 ], [ %9116, %9122 ]
  %9494 = phi float [ %8332, %8323 ], [ %9117, %9091 ], [ %9487, %9465 ], [ %9117, %9122 ]
  %9495 = phi float [ %8333, %8323 ], [ %9118, %9091 ], [ %9488, %9465 ], [ %9118, %9122 ]
  %9496 = phi float [ %8334, %8323 ], [ %9101, %9091 ], [ %9472, %9465 ], [ %9101, %9122 ]
  %9497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9498 = extractvalue %dx.types.CBufRet.f32 %9497, 2
  %9499 = extractvalue %dx.types.CBufRet.f32 %9497, 3
  %9500 = fmul fast float %9498, %108
  %9501 = fmul fast float %9499, %109
  %9502 = call float @dx.op.unary.f32(i32 7, float %9500)  ; Saturate(value)
  %9503 = call float @dx.op.unary.f32(i32 7, float %9501)  ; Saturate(value)
  %9504 = select i1 %8065, i32 2, i32 0
  %9505 = or i32 %9504, 1
  %9506 = uitofp i32 %9505 to float
  %9507 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %9502, float %9503, float %9506, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9508 = extractvalue %dx.types.ResRet.f32 %9507, 0
  %9509 = extractvalue %dx.types.ResRet.f32 %9507, 1
  %9510 = extractvalue %dx.types.ResRet.f32 %9507, 2
  %9511 = extractvalue %dx.types.ResRet.f32 %9507, 3
  %9512 = add nuw nsw i32 %9504, 2
  %9513 = uitofp i32 %9512 to float
  %9514 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %9502, float %9503, float %9513, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9515 = extractvalue %dx.types.ResRet.f32 %9514, 0
  %9516 = extractvalue %dx.types.ResRet.f32 %9514, 1
  %9517 = extractvalue %dx.types.ResRet.f32 %9514, 2
  %9518 = extractvalue %dx.types.ResRet.f32 %9514, 3
  %9519 = call float @dx.op.binary.f32(i32 35, float %9509, float %9510)  ; FMax(a,b)
  %9520 = call float @dx.op.binary.f32(i32 35, float %9508, float %9519)  ; FMax(a,b)
  %9521 = call float @dx.op.binary.f32(i32 35, float %9520, float %9511)  ; FMax(a,b)
  %9522 = call float @dx.op.binary.f32(i32 36, float %9516, float %9517)  ; FMin(a,b)
  %9523 = call float @dx.op.binary.f32(i32 36, float %9515, float %9522)  ; FMin(a,b)
  %9524 = call float @dx.op.binary.f32(i32 36, float %9523, float %9518)  ; FMin(a,b)
  %9525 = fmul fast float %9521, 2.550000e+02
  %9526 = fadd fast float %9525, 0x3F70101020000000
  %9527 = fptoui float %9526 to i32
  %9528 = fmul fast float %9524, 2.550000e+02
  %9529 = fadd fast float %9528, 0x3F70101020000000
  %9530 = fptoui float %9529 to i32
  %9531 = icmp ult i32 %9527, %9530
  br i1 %9531, label %9532, label %9701

; <label>:9532                                    ; preds = %9489
  %9533 = fcmp fast ogt float %94, 9.843750e-01
  %9534 = fadd fast float %8327, -4.000000e+00
  %9535 = select i1 %9533, float -4.000000e+00, float %9534
  %9536 = call float @dx.op.binary.f32(i32 35, float %9535, float 0.000000e+00)  ; FMax(a,b)
  %9537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9538 = extractvalue %dx.types.CBufRet.f32 %9537, 0
  %9539 = fadd fast float %9538, %9536
  %9540 = extractvalue %dx.types.CBufRet.f32 %9537, 2
  %9541 = fmul fast float %9539, %9540
  %9542 = call float @dx.op.unary.f32(i32 23, float %9541)  ; Log(value)
  %9543 = extractvalue %dx.types.CBufRet.f32 %9537, 3
  %9544 = fmul fast float %9543, %9542
  %9545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9546 = extractvalue %dx.types.CBufRet.f32 %9545, 2
  %9547 = fmul fast float %9544, %9546
  %9548 = call float @dx.op.unary.f32(i32 7, float %9547)  ; Saturate(value)
  %9549 = uitofp i32 %9527 to float
  %9550 = uitofp i32 %9530 to float
  %9551 = fadd fast float %9549, 5.000000e-01
  %9552 = fadd fast float %9550, 5.000000e-01
  %9553 = fmul fast float %9546, %9551
  %9554 = fmul fast float %9546, %9552
  %9555 = fadd fast float %9553, 0x3F0FFB4800000000
  %9556 = fadd fast float %9554, 0xBF0FFB4800000000
  %9557 = call float @dx.op.binary.f32(i32 35, float %9548, float %9555)  ; FMax(a,b)
  %9558 = call float @dx.op.binary.f32(i32 36, float %9557, float %9556)  ; FMin(a,b)
  %9559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9560 = extractvalue %dx.types.CBufRet.f32 %9559, 1
  %9561 = extractvalue %dx.types.CBufRet.f32 %9559, 2
  %9562 = extractvalue %dx.types.CBufRet.f32 %9559, 0
  %9563 = select i1 %8065, float %9562, float 0.000000e+00
  %9564 = fmul fast float %9560, %9558
  %9565 = fadd fast float %9563, %9564
  %9566 = fadd fast float %9563, %9561
  %9567 = fsub fast float %9560, %9561
  %9568 = fadd fast float %9567, %9563
  %9569 = call float @dx.op.binary.f32(i32 35, float %9565, float %9566)  ; FMax(a,b)
  %9570 = call float @dx.op.binary.f32(i32 36, float %9569, float %9568)  ; FMin(a,b)
  %9571 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %42, float %9502, float %9503, float %9570, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9572 = extractvalue %dx.types.ResRet.f32 %9571, 0
  %9573 = extractvalue %dx.types.ResRet.f32 %9571, 1
  %9574 = extractvalue %dx.types.ResRet.f32 %9571, 2
  %9575 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9576 = extractvalue %dx.types.CBufRet.i32 %9575, 0
  %9577 = extractvalue %dx.types.CBufRet.i32 %9575, 1
  %9578 = uitofp i32 %9576 to float
  %9579 = uitofp i32 %9577 to float
  %9580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9581 = extractvalue %dx.types.CBufRet.f32 %9580, 0
  %9582 = extractvalue %dx.types.CBufRet.f32 %9580, 1
  %9583 = fmul fast float %9578, %9502
  %9584 = fmul fast float %9579, %9503
  %9585 = fadd fast float %9583, -5.000000e-01
  %9586 = fadd fast float %9584, -5.000000e-01
  %9587 = call float @dx.op.unary.f32(i32 22, float %9585)  ; Frc(value)
  %9588 = call float @dx.op.unary.f32(i32 22, float %9586)  ; Frc(value)
  %9589 = fmul fast float %9587, %9587
  %9590 = fmul fast float %9589, %9587
  %9591 = fsub fast float 3.000000e+00, %9587
  %9592 = fmul fast float %9589, %9591
  %9593 = fmul fast float %9587, 3.000000e+00
  %9594 = fmul fast float %9590, 3.000000e+00
  %9595 = fmul fast float %9589, 6.000000e+00
  %9596 = fsub fast float %9594, %9595
  %9597 = fadd fast float %9596, 4.000000e+00
  %9598 = fmul fast float %9597, 0x3FC5555560000000
  %9599 = fmul fast float %9590, -3.000000e+00
  %9600 = fadd fast float %9589, %9587
  %9601 = fmul fast float %9600, 3.000000e+00
  %9602 = fadd fast float %9599, 1.000000e+00
  %9603 = fadd fast float %9602, %9601
  %9604 = fmul fast float %9590, 0x3FC5555560000000
  %9605 = fmul fast float %9588, %9588
  %9606 = fmul fast float %9605, %9588
  %9607 = fsub fast float 3.000000e+00, %9588
  %9608 = fmul fast float %9605, %9607
  %9609 = fmul fast float %9588, 3.000000e+00
  %9610 = fmul fast float %9606, 3.000000e+00
  %9611 = fmul fast float %9605, 6.000000e+00
  %9612 = fsub fast float %9610, %9611
  %9613 = fadd fast float %9612, 4.000000e+00
  %9614 = fmul fast float %9613, 0x3FC5555560000000
  %9615 = fmul fast float %9606, -3.000000e+00
  %9616 = fadd fast float %9605, %9588
  %9617 = fmul fast float %9616, 3.000000e+00
  %9618 = fadd fast float %9615, 1.000000e+00
  %9619 = fadd fast float %9618, %9617
  %9620 = fmul fast float %9606, 0x3FC5555560000000
  %9621 = fadd fast float %9587, 1.000000e+00
  %9622 = fsub fast float 1.000000e+00, %9593
  %9623 = fadd fast float %9622, %9592
  %9624 = fadd fast float %9623, %9597
  %9625 = fmul fast float %9624, 0x3FC5555560000000
  %9626 = fdiv fast float %9598, %9625
  %9627 = fsub fast float %9621, %9626
  %9628 = fsub fast float 1.000000e+00, %9587
  %9629 = fadd fast float %9603, %9590
  %9630 = fmul fast float %9629, 0x3FC5555560000000
  %9631 = fdiv fast float %9604, %9630
  %9632 = fadd fast float %9628, %9631
  %9633 = fadd fast float %9588, 1.000000e+00
  %9634 = fsub fast float 1.000000e+00, %9609
  %9635 = fadd fast float %9634, %9608
  %9636 = fadd fast float %9635, %9613
  %9637 = fmul fast float %9636, 0x3FC5555560000000
  %9638 = fdiv fast float %9614, %9637
  %9639 = fsub fast float %9633, %9638
  %9640 = fsub fast float 1.000000e+00, %9588
  %9641 = fadd fast float %9619, %9606
  %9642 = fmul fast float %9641, 0x3FC5555560000000
  %9643 = fdiv fast float %9620, %9642
  %9644 = fadd fast float %9643, %9640
  %9645 = fmul fast float %9627, %9581
  %9646 = fsub fast float %9502, %9645
  %9647 = fmul fast float %9632, %9581
  %9648 = fadd fast float %9647, %9502
  %9649 = fmul fast float %9644, %9582
  %9650 = fadd fast float %9649, %9503
  %9651 = fmul fast float %9639, %9582
  %9652 = fsub fast float %9503, %9651
  %9653 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %9646, float %9652, float %9570, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9654 = extractvalue %dx.types.ResRet.f32 %9653, 0
  %9655 = extractvalue %dx.types.ResRet.f32 %9653, 1
  %9656 = extractvalue %dx.types.ResRet.f32 %9653, 2
  %9657 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %9648, float %9652, float %9570, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9658 = extractvalue %dx.types.ResRet.f32 %9657, 0
  %9659 = extractvalue %dx.types.ResRet.f32 %9657, 1
  %9660 = extractvalue %dx.types.ResRet.f32 %9657, 2
  %9661 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %9646, float %9650, float %9570, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9662 = extractvalue %dx.types.ResRet.f32 %9661, 0
  %9663 = extractvalue %dx.types.ResRet.f32 %9661, 1
  %9664 = extractvalue %dx.types.ResRet.f32 %9661, 2
  %9665 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %9648, float %9650, float %9570, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9666 = extractvalue %dx.types.ResRet.f32 %9665, 0
  %9667 = extractvalue %dx.types.ResRet.f32 %9665, 1
  %9668 = extractvalue %dx.types.ResRet.f32 %9665, 2
  %9669 = fsub fast float %9662, %9654
  %9670 = fsub fast float %9663, %9655
  %9671 = fsub fast float %9664, %9656
  %9672 = fmul fast float %9669, %9642
  %9673 = fmul fast float %9670, %9642
  %9674 = fmul fast float %9671, %9642
  %9675 = fadd fast float %9672, %9654
  %9676 = fadd fast float %9673, %9655
  %9677 = fadd fast float %9674, %9656
  %9678 = fsub fast float %9666, %9658
  %9679 = fsub fast float %9667, %9659
  %9680 = fsub fast float %9668, %9660
  %9681 = fmul fast float %9678, %9642
  %9682 = fmul fast float %9679, %9642
  %9683 = fmul fast float %9680, %9642
  %9684 = fsub fast float %9658, %9675
  %9685 = fadd fast float %9684, %9681
  %9686 = fsub fast float %9659, %9676
  %9687 = fadd fast float %9686, %9682
  %9688 = fsub fast float %9660, %9677
  %9689 = fadd fast float %9688, %9683
  %9690 = fmul fast float %9685, %9630
  %9691 = fmul fast float %9687, %9630
  %9692 = fmul fast float %9689, %9630
  %9693 = fadd fast float %9690, %9675
  %9694 = fadd fast float %9691, %9676
  %9695 = fadd fast float %9692, %9677
  %9696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9697 = extractvalue %dx.types.CBufRet.f32 %9696, 1
  %9698 = fmul fast float %9693, %9697
  %9699 = fmul fast float %9694, %9697
  %9700 = fmul fast float %9695, %9697
  br label %9701

; <label>:9701                                    ; preds = %9532, %9489
  %9702 = phi float [ %9572, %9532 ], [ 1.000000e+00, %9489 ]
  %9703 = phi float [ %9573, %9532 ], [ 1.000000e+00, %9489 ]
  %9704 = phi float [ %9574, %9532 ], [ 1.000000e+00, %9489 ]
  %9705 = phi float [ %9698, %9532 ], [ 0.000000e+00, %9489 ]
  %9706 = phi float [ %9699, %9532 ], [ 0.000000e+00, %9489 ]
  %9707 = phi float [ %9700, %9532 ], [ 0.000000e+00, %9489 ]
  %9708 = fmul fast float %9705, %8039
  %9709 = fmul fast float %9706, %8041
  %9710 = fmul fast float %9707, %8043
  %9711 = fmul fast float %9702, %9496
  %9712 = call float @dx.op.dot3.f32(i32 55, float %9702, float %9703, float %9704, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9713 = call float @dx.op.dot3.f32(i32 55, float %9708, float %9709, float %9710, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9714 = select i1 %269, float %9712, float %9702
  %9715 = select i1 %269, float %9712, float %9703
  %9716 = select i1 %269, float 1.000000e+00, float %9704
  %9717 = select i1 %269, float %9713, float %9708
  %9718 = select i1 %269, float 0.000000e+00, float %9709
  %9719 = select i1 %269, float 0.000000e+00, float %9710
  %9720 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9721 = extractvalue %dx.types.CBufRet.i32 %9720, 3
  %9722 = and i32 %9721, 3
  %9723 = icmp ne i32 %9722, 0
  %9724 = and i32 %9721, 4
  %9725 = icmp ne i32 %9724, 0
  %9726 = and i1 %9723, %9725
  %9727 = and i1 %269, %9726
  br i1 %9727, label %9728, label %9734

; <label>:9728                                    ; preds = %9701
  %9729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9730 = extractvalue %dx.types.CBufRet.f32 %9729, 1
  %9731 = fadd fast float %9711, -1.000000e+00
  %9732 = fmul fast float %9730, %9731
  %9733 = fadd fast float %9732, 1.000000e+00
  br label %9734

; <label>:9734                                    ; preds = %9728, %9701
  %9735 = phi float [ %9733, %9728 ], [ %9711, %9701 ]
  %9736 = fadd fast float %9493, %9490
  %9737 = fmul fast float %9714, %9736
  %9738 = fadd fast float %9737, %9717
  %9739 = fadd fast float %9494, %9491
  %9740 = fmul fast float %9715, %9739
  %9741 = fadd fast float %9740, %9718
  %9742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9743 = extractvalue %dx.types.CBufRet.f32 %9742, 0
  br i1 %269, label %9744, label %9759

; <label>:9744                                    ; preds = %9734
  %9745 = fadd fast float %9738, %9741
  %9746 = fmul fast float %9743, %9745
  %9747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9748 = extractvalue %dx.types.CBufRet.f32 %9747, 3
  %9749 = extractvalue %dx.types.CBufRet.f32 %8047, 1
  %9750 = fsub fast float %8052, %8046
  %9751 = fadd fast float %9750, %8053
  %9752 = fsub fast float %9751, %9749
  %9753 = extractvalue %dx.types.CBufRet.f32 %8047, 2
  %9754 = fmul fast float %9752, %9753
  %9755 = call float @dx.op.unary.f32(i32 7, float %9754)  ; Saturate(value)
  %9756 = fsub fast float %9755, %9748
  %9757 = fmul fast float %9756, %9735
  %9758 = fadd fast float %9757, %9748
  br label %9785

; <label>:9759                                    ; preds = %9734
  %9760 = fadd fast float %9495, %9492
  %9761 = fmul fast float %9716, %9760
  %9762 = fadd fast float %9761, %9719
  %9763 = fmul fast float %9743, %9738
  %9764 = fmul fast float %9743, %9741
  %9765 = fmul fast float %9743, %9762
  %9766 = call float @dx.op.binary.f32(i32 35, float %9764, float %9765)  ; FMax(a,b)
  %9767 = call float @dx.op.binary.f32(i32 35, float %9763, float %9766)  ; FMax(a,b)
  %9768 = call float @dx.op.binary.f32(i32 35, float %8041, float %8043)  ; FMax(a,b)
  %9769 = call float @dx.op.binary.f32(i32 35, float %8039, float %9768)  ; FMax(a,b)
  %9770 = call float @dx.op.binary.f32(i32 35, float %9767, float %9769)  ; FMax(a,b)
  %9771 = fcmp fast ugt float %9770, 0x3F10000000000000
  br i1 %9771, label %9773, label %9772

; <label>:9772                                    ; preds = %9759
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9773

; <label>:9773                                    ; preds = %9772, %9759
  %9774 = add i32 %50, 356
  %9775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %9774, i32 undef)  ; BufferLoad(srv,index,wot)
  %9776 = extractvalue %dx.types.ResRet.i32 %9775, 0
  %9777 = and i32 %9776, 32
  %9778 = icmp eq i32 %9777, 0
  br i1 %9778, label %9785, label %9779

; <label>:9779                                    ; preds = %9773
  %9780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9781 = extractvalue %dx.types.CBufRet.f32 %9780, 0
  %9782 = fmul fast float %9781, 0x3FE99999A0000000
  %9783 = fadd fast float %9781, %9763
  %9784 = fadd fast float %9782, %9765
  br label %9785

; <label>:9785                                    ; preds = %9779, %9773, %9744
  %9786 = phi float [ 1.000000e+00, %9744 ], [ %8041, %9779 ], [ %8041, %9773 ]
  %9787 = phi float [ 1.000000e+00, %9744 ], [ %8043, %9779 ], [ %8043, %9773 ]
  %9788 = phi float [ %9746, %9744 ], [ %9783, %9779 ], [ %9763, %9773 ]
  %9789 = phi float [ %9758, %9744 ], [ %9764, %9779 ], [ %9764, %9773 ]
  %9790 = phi float [ 1.000000e+00, %9744 ], [ %9784, %9779 ], [ %9765, %9773 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9791 = call float @dx.op.binary.f32(i32 36, float %9788, float 3.225500e+04)  ; FMin(a,b)
  %9792 = call float @dx.op.binary.f32(i32 36, float %9789, float 3.225500e+04)  ; FMin(a,b)
  %9793 = call float @dx.op.binary.f32(i32 36, float %9790, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9791)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9792)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9793)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9794 = call float @dx.op.binary.f32(i32 36, float %8039, float 3.225500e+04)  ; FMin(a,b)
  %9795 = call float @dx.op.binary.f32(i32 36, float %9786, float 3.225500e+04)  ; FMin(a,b)
  %9796 = call float @dx.op.binary.f32(i32 36, float %9787, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %9794)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9795)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9796)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!62}
!dx.entryPoints = !{!63}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !51, !54}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !33, !34, !35, !36, !37, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 9, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 22, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 52, i32 1, i32 4, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!19 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 18, i32 1, i32 11, i32 0, null}
!20 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 19, i32 1, i32 11, i32 0, null}
!21 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 20, i32 1, i32 11, i32 0, null}
!22 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 21, i32 1, i32 11, i32 0, null}
!23 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!24 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
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
!53 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!54 = !{!55, !56, !57, !58, !59, !60, !61}
!55 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!56 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!57 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!58 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!59 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!60 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!61 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!62 = !{[58 x i32] [i32 56, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 0, i32 119, i32 0, i32 0, i32 0]}
!63 = !{void ()* @ps_main, !"ps_main", !64, !4, !92}
!64 = !{!65, !88, null}
!65 = !{!66, !69, !70, !72, !74, !75, !76, !77, !79, !80, !81, !82, !83, !84, !85, !86, !87}
!66 = !{i32 0, !"SV_Position", i8 9, i8 3, !67, i8 4, i32 1, i8 4, i32 0, i8 0, !68}
!67 = !{i32 0}
!68 = !{i32 3, i32 15}
!69 = !{i32 1, !"COLOR", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 1, i8 0, !68}
!70 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 2, i8 0, !71}
!71 = !{i32 3, i32 3}
!72 = !{i32 3, !"NORMAL", i8 9, i8 0, !67, i8 2, i32 1, i8 3, i32 3, i8 0, !73}
!73 = !{i32 3, i32 7}
!74 = !{i32 4, !"TANGENT", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 4, i8 0, !68}
!75 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !67, i8 2, i32 1, i8 3, i32 5, i8 0, !73}
!76 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 6, i8 0, !68}
!77 = !{i32 7, !"COMP_FACTOR", i8 9, i8 0, !67, i8 2, i32 1, i8 1, i32 3, i8 3, !78}
!78 = !{i32 3, i32 1}
!79 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !67, i8 2, i32 1, i8 3, i32 7, i8 0, !73}
!80 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 8, i8 0, !68}
!81 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !67, i8 2, i32 1, i8 2, i32 9, i8 0, !71}
!82 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 10, i8 0, !68}
!83 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 11, i8 0, !68}
!84 = !{i32 13, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !67, i8 1, i32 1, i8 1, i32 12, i8 0, !78}
!85 = !{i32 14, !"ENTITY_IDS", i8 5, i8 0, !67, i8 1, i32 1, i8 2, i32 12, i8 1, !71}
!86 = !{i32 15, !"PACKED_TRI_DATA", i8 5, i8 0, !67, i8 1, i32 1, i8 4, i32 13, i8 0, !78}
!87 = !{i32 16, !"SV_SampleIndex", i8 5, i8 12, !67, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!88 = !{!89, !90}
!89 = !{i32 0, !"SV_Target", i8 9, i8 16, !67, i8 0, i32 1, i8 4, i32 0, i8 0, !68}
!90 = !{i32 1, !"SV_Target", i8 9, i8 16, !91, i8 0, i32 1, i8 4, i32 1, i8 0, !68}
!91 = !{i32 1}
!92 = !{i32 0, i64 16}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !95}
!95 = !{!"llvm.loop.unroll.disable"}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = !{!102, !102, i64 0}
!102 = !{!"int", !103, i64 0}
!103 = !{!"omnipotent char", !104, i64 0}
!104 = !{!"Simple C/C++ TBAA"}
!105 = !{!106, !108, !110, !112}
!106 = distinct !{!106, !107, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!107 = distinct !{!107, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!108 = distinct !{!108, !109, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!109 = distinct !{!109, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!110 = distinct !{!110, !111, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!111 = distinct !{!111, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!112 = distinct !{!112, !113, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!113 = distinct !{!113, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = !{!116, !116, i64 0}
!116 = !{!"float", !103, i64 0}
!117 = distinct !{!117, !95}
!118 = distinct !{!118, !95}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = !{!128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!128 = distinct !{!128, !129, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!129 = distinct !{!129, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!130 = distinct !{!130, !131, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!131 = distinct !{!131, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!132 = distinct !{!132, !131, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!133 = distinct !{!133, !134, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!134 = distinct !{!134, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!135 = distinct !{!135, !134, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!136 = distinct !{!136, !134, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!137 = distinct !{!137, !138, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!138 = distinct !{!138, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!139 = distinct !{!139, !138, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!140 = distinct !{!140, !138, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!141 = distinct !{!141, !142, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!142 = distinct !{!142, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!143 = !{!144}
!144 = distinct !{!144, !145, !"\01?sort@@YAXAIAM00@Z: %c"}
!145 = distinct !{!145, !"\01?sort@@YAXAIAM00@Z"}
!146 = !{!147, !148, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!147 = distinct !{!147, !145, !"\01?sort@@YAXAIAM00@Z: %a"}
!148 = distinct !{!148, !145, !"\01?sort@@YAXAIAM00@Z: %b"}
!149 = !{!148}
!150 = !{!147, !144, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!151 = !{!147}
!152 = !{!148, !144, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!153 = !{!154}
!154 = distinct !{!154, !155, !"\01?sort@@YAXAIAM00@Z: %c"}
!155 = distinct !{!155, !"\01?sort@@YAXAIAM00@Z"}
!156 = !{!157, !158, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!157 = distinct !{!157, !155, !"\01?sort@@YAXAIAM00@Z: %a"}
!158 = distinct !{!158, !155, !"\01?sort@@YAXAIAM00@Z: %b"}
!159 = !{!158}
!160 = !{!157, !154, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!161 = !{!157}
!162 = !{!158, !154, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 2}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}

