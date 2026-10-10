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
; shader hash: b6f5db92ce9872d450251a1f807b0db8
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
  %4028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4029 = extractvalue %dx.types.CBufRet.f32 %4028, 0
  %4030 = and i32 %196, 65535
  %4031 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4030)  ; LegacyF16ToF32(value)
  %4032 = lshr i32 %196, 16
  %4033 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4032)  ; LegacyF16ToF32(value)
  %4034 = and i32 %197, 65535
  %4035 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4034)  ; LegacyF16ToF32(value)
  %4036 = fmul fast float %4031, %3990
  %4037 = fmul fast float %4033, %3991
  %4038 = fmul fast float %4035, %3992
  %4039 = shl i32 %198, 4
  %4040 = and i32 %4039, 32752
  %4041 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4040)  ; LegacyF16ToF32(value)
  %4042 = lshr i32 %198, 7
  %4043 = and i32 %4042, 32752
  %4044 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4043)  ; LegacyF16ToF32(value)
  %4045 = lshr i32 %198, 22
  %4046 = shl nuw nsw i32 %4045, 5
  %4047 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4046)  ; LegacyF16ToF32(value)
  %4048 = and i32 %199, 65535
  %4049 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4048)  ; LegacyF16ToF32(value)
  %4050 = fmul fast float %4029, %3999
  %4051 = fmul fast float %4050, %4041
  %4052 = fmul fast float %4051, %4049
  %4053 = fmul fast float %4029, %4000
  %4054 = fmul fast float %4053, %4044
  %4055 = fmul fast float %4054, %4049
  %4056 = fmul fast float %4029, %4001
  %4057 = fmul fast float %4056, %4047
  %4058 = fmul fast float %4057, %4049
  %4059 = call float @dx.op.dot2.f32(i32 54, float %3988, float %3989, float %3988, float %3989)  ; Dot2(ax,ay,bx,by)
  %4060 = fmul fast float %4059, 0x3FE3333340000000
  %4061 = fsub fast float 1.000000e+00, %4060
  %4062 = call float @dx.op.dot3.f32(i32 55, float %3988, float %3989, float %4061, float %3988, float %3989, float %4061)  ; Dot3(ax,ay,az,bx,by,bz)
  %4063 = call float @dx.op.unary.f32(i32 25, float %4062)  ; Rsqrt(value)
  %4064 = fmul fast float %4063, %3988
  %4065 = fmul fast float %4063, %3989
  %4066 = fmul fast float %4061, %4063
  %4067 = fmul fast float %4066, %118
  %4068 = fmul fast float %4066, %119
  %4069 = fmul fast float %4066, %120
  %4070 = fmul fast float %4064, %82
  %4071 = fmul fast float %4064, %83
  %4072 = fmul fast float %4064, %84
  %4073 = fadd fast float %4067, %4070
  %4074 = fadd fast float %4068, %4071
  %4075 = fadd fast float %4069, %4072
  %4076 = fmul fast float %130, %4065
  %4077 = fmul fast float %131, %4065
  %4078 = fmul fast float %132, %4065
  %4079 = fadd fast float %4073, %4076
  %4080 = fadd fast float %4074, %4077
  %4081 = fadd fast float %4075, %4078
  %4082 = call float @dx.op.dot3.f32(i32 55, float %4079, float %4080, float %4081, float %4079, float %4080, float %4081)  ; Dot3(ax,ay,az,bx,by,bz)
  %4083 = call float @dx.op.unary.f32(i32 25, float %4082)  ; Rsqrt(value)
  %4084 = fmul fast float %4079, %4083
  %4085 = fmul fast float %4080, %4083
  %4086 = fmul fast float %4081, %4083
  %4087 = icmp eq i32 %53, 65535
  br i1 %4087, label %4686, label %4088

; <label>:4088                                    ; preds = %3987
  %4089 = call float @dx.op.unary.f32(i32 83, float %54)  ; DerivCoarseX(value)
  %4090 = call float @dx.op.unary.f32(i32 83, float %55)  ; DerivCoarseX(value)
  %4091 = call float @dx.op.unary.f32(i32 83, float %56)  ; DerivCoarseX(value)
  %4092 = call float @dx.op.unary.f32(i32 84, float %54)  ; DerivCoarseY(value)
  %4093 = call float @dx.op.unary.f32(i32 84, float %55)  ; DerivCoarseY(value)
  %4094 = call float @dx.op.unary.f32(i32 84, float %56)  ; DerivCoarseY(value)
  %4095 = fadd fast float %4089, %54
  %4096 = fadd fast float %4090, %55
  %4097 = fadd fast float %4091, %56
  %4098 = fadd fast float %4092, %54
  %4099 = fadd fast float %4093, %55
  %4100 = fadd fast float %4094, %56
  %4101 = mul i32 %53, 48
  %4102 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4101, i32 undef)  ; BufferLoad(srv,index,wot)
  %4103 = extractvalue %dx.types.ResRet.f32 %4102, 0
  %4104 = extractvalue %dx.types.ResRet.f32 %4102, 1
  %4105 = extractvalue %dx.types.ResRet.f32 %4102, 2
  %4106 = add i32 %4101, 16
  %4107 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4106, i32 undef)  ; BufferLoad(srv,index,wot)
  %4108 = extractvalue %dx.types.ResRet.f32 %4107, 0
  %4109 = extractvalue %dx.types.ResRet.f32 %4107, 1
  %4110 = extractvalue %dx.types.ResRet.f32 %4107, 2
  %4111 = add i32 %4101, 32
  %4112 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4111, i32 undef)  ; BufferLoad(srv,index,wot)
  %4113 = extractvalue %dx.types.ResRet.f32 %4112, 0
  %4114 = extractvalue %dx.types.ResRet.f32 %4112, 1
  %4115 = extractvalue %dx.types.ResRet.f32 %4112, 2
  %4116 = extractvalue %dx.types.ResRet.f32 %4112, 3
  %4117 = bitcast float %4116 to i32
  %4118 = fmul fast float %4103, %54
  %4119 = fmul fast float %4104, %55
  %4120 = fmul fast float %4105, %56
  %4121 = fsub fast float %4118, %4108
  %4122 = fsub fast float %4119, %4109
  %4123 = fsub fast float %4120, %4110
  %4124 = call float @dx.op.unary.f32(i32 7, float %4121)  ; Saturate(value)
  %4125 = call float @dx.op.unary.f32(i32 7, float %4122)  ; Saturate(value)
  %4126 = call float @dx.op.unary.f32(i32 7, float %4123)  ; Saturate(value)
  %4127 = fmul fast float %4124, %4113
  %4128 = fmul fast float %4125, %4114
  %4129 = fmul fast float %4126, %4115
  %4130 = fadd fast float %4113, -1.000000e+00
  %4131 = fadd fast float %4114, -1.000000e+00
  %4132 = fadd fast float %4115, -1.000000e+00
  %4133 = call float @dx.op.unary.f32(i32 27, float %4127)  ; Round_ni(value)
  %4134 = call float @dx.op.unary.f32(i32 27, float %4128)  ; Round_ni(value)
  %4135 = call float @dx.op.unary.f32(i32 27, float %4129)  ; Round_ni(value)
  %4136 = call float @dx.op.binary.f32(i32 36, float %4133, float %4130)  ; FMin(a,b)
  %4137 = call float @dx.op.binary.f32(i32 36, float %4134, float %4131)  ; FMin(a,b)
  %4138 = call float @dx.op.binary.f32(i32 36, float %4135, float %4132)  ; FMin(a,b)
  %4139 = fmul fast float %4138, %4114
  %4140 = fadd fast float %4139, %4137
  %4141 = fmul fast float %4140, %4113
  %4142 = fadd fast float %4141, %4136
  %4143 = fptosi float %4142 to i32
  %4144 = add nsw i32 %4143, %4117
  %4145 = shl nsw i32 %4144, 2
  %4146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4145, i32 undef)  ; BufferLoad(srv,index,wot)
  %4147 = extractvalue %dx.types.ResRet.i32 %4146, 0
  %4148 = lshr i32 %4147, 16
  %4149 = icmp eq i32 %4148, 0
  br i1 %4149, label %4649, label %4150

; <label>:4150                                    ; preds = %4088
  br label %4151

; <label>:4151                                    ; preds = %4278, %4150
  %4152 = phi i32 [ %4180, %4278 ], [ %4148, %4150 ]
  %4153 = phi float [ %4279, %4278 ], [ 0.000000e+00, %4150 ]
  %4154 = phi float [ %4280, %4278 ], [ %4027, %4150 ]
  %4155 = phi float [ %4281, %4278 ], [ %4006, %4150 ]
  %4156 = phi float [ %4282, %4278 ], [ %3996, %4150 ]
  %4157 = phi float [ %4283, %4278 ], [ %3997, %4150 ]
  %4158 = phi float [ %4284, %4278 ], [ %3998, %4150 ]
  %4159 = phi float [ %4285, %4278 ], [ 0.000000e+00, %4150 ]
  %4160 = phi float [ %4286, %4278 ], [ 0.000000e+00, %4150 ]
  %4161 = phi float [ %4287, %4278 ], [ %3993, %4150 ]
  %4162 = phi float [ %4288, %4278 ], [ %3994, %4150 ]
  %4163 = phi float [ %4289, %4278 ], [ %3995, %4150 ]
  %4164 = phi float [ %4290, %4278 ], [ %4052, %4150 ]
  %4165 = phi float [ %4291, %4278 ], [ %4055, %4150 ]
  %4166 = phi float [ %4292, %4278 ], [ %4058, %4150 ]
  %4167 = phi float [ %4293, %4278 ], [ %4084, %4150 ]
  %4168 = phi float [ %4294, %4278 ], [ %4085, %4150 ]
  %4169 = phi float [ %4295, %4278 ], [ %4086, %4150 ]
  %4170 = phi float [ %4296, %4278 ], [ %4004, %4150 ]
  %4171 = phi float [ %4297, %4278 ], [ %4003, %4150 ]
  %4172 = phi float [ %4298, %4278 ], [ 0.000000e+00, %4150 ]
  %4173 = phi float [ %4299, %4278 ], [ %4002, %4150 ]
  %4174 = phi float [ %4300, %4278 ], [ %4036, %4150 ]
  %4175 = phi float [ %4301, %4278 ], [ %4037, %4150 ]
  %4176 = phi float [ %4302, %4278 ], [ %4038, %4150 ]
  %4177 = shl nuw nsw i32 %4152, 2
  %4178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4177, i32 undef)  ; BufferLoad(srv,index,wot)
  %4179 = extractvalue %dx.types.ResRet.i32 %4178, 0
  %4180 = lshr i32 %4179, 16
  %4181 = shl i32 %4179, 8
  %4182 = and i32 %4181, 16776960
  %4183 = or i32 %4182, 48
  %4184 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4183, i32 undef)  ; BufferLoad(srv,index,wot)
  %4185 = extractvalue %dx.types.ResRet.f32 %4184, 0
  %4186 = extractvalue %dx.types.ResRet.f32 %4184, 1
  %4187 = extractvalue %dx.types.ResRet.f32 %4184, 2
  %4188 = or i32 %4182, 64
  %4189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4188, i32 undef)  ; BufferLoad(srv,index,wot)
  %4190 = extractvalue %dx.types.ResRet.i32 %4189, 0
  %4191 = extractvalue %dx.types.ResRet.i32 %4189, 1
  %4192 = or i32 %4182, 80
  %4193 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4192, i32 undef)  ; BufferLoad(srv,index,wot)
  %4194 = extractvalue %dx.types.ResRet.f32 %4193, 2
  %4195 = extractvalue %dx.types.ResRet.f32 %4193, 3
  %4196 = or i32 %4182, 96
  %4197 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4196, i32 undef)  ; BufferLoad(srv,index,wot)
  %4198 = extractvalue %dx.types.ResRet.f32 %4197, 0
  %4199 = extractvalue %dx.types.ResRet.f32 %4197, 1
  %4200 = extractvalue %dx.types.ResRet.f32 %4197, 2
  %4201 = extractvalue %dx.types.ResRet.f32 %4197, 3
  %4202 = or i32 %4182, 112
  %4203 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4202, i32 undef)  ; BufferLoad(srv,index,wot)
  %4204 = extractvalue %dx.types.ResRet.f32 %4203, 2
  %4205 = or i32 %4182, 128
  %4206 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4205, i32 undef)  ; BufferLoad(srv,index,wot)
  %4207 = extractvalue %dx.types.ResRet.f32 %4206, 0
  %4208 = extractvalue %dx.types.ResRet.f32 %4206, 1
  %4209 = extractvalue %dx.types.ResRet.f32 %4206, 2
  %4210 = extractvalue %dx.types.ResRet.f32 %4206, 3
  %4211 = or i32 %4182, 144
  %4212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4211, i32 undef)  ; BufferLoad(srv,index,wot)
  %4213 = extractvalue %dx.types.ResRet.f32 %4212, 0
  %4214 = extractvalue %dx.types.ResRet.f32 %4212, 1
  %4215 = extractvalue %dx.types.ResRet.f32 %4212, 2
  %4216 = extractvalue %dx.types.ResRet.f32 %4212, 3
  %4217 = or i32 %4182, 160
  %4218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4217, i32 undef)  ; BufferLoad(srv,index,wot)
  %4219 = extractvalue %dx.types.ResRet.f32 %4218, 0
  %4220 = extractvalue %dx.types.ResRet.f32 %4218, 1
  %4221 = extractvalue %dx.types.ResRet.f32 %4218, 2
  %4222 = extractvalue %dx.types.ResRet.f32 %4218, 3
  %4223 = or i32 %4182, 192
  %4224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4223, i32 undef)  ; BufferLoad(srv,index,wot)
  %4225 = extractvalue %dx.types.ResRet.i32 %4224, 0
  %4226 = or i32 %4182, 208
  %4227 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4226, i32 undef)  ; BufferLoad(srv,index,wot)
  %4228 = extractvalue %dx.types.ResRet.f32 %4227, 0
  %4229 = or i32 %4182, 248
  %4230 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4229, i32 undef)  ; BufferLoad(srv,index,wot)
  %4231 = extractvalue %dx.types.ResRet.f32 %4230, 0
  %4232 = extractvalue %dx.types.ResRet.f32 %4230, 1
  %4233 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4182, i32 undef)  ; BufferLoad(srv,index,wot)
  %4234 = extractvalue %dx.types.ResRet.f32 %4233, 0
  %4235 = extractvalue %dx.types.ResRet.f32 %4233, 1
  %4236 = extractvalue %dx.types.ResRet.f32 %4233, 2
  %4237 = extractvalue %dx.types.ResRet.f32 %4233, 3
  %4238 = call float @dx.op.dot4.f32(i32 56, float %4234, float %4235, float %4236, float %4237, float %54, float %55, float %56, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4239 = or i32 %4182, 16
  %4240 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4239, i32 undef)  ; BufferLoad(srv,index,wot)
  %4241 = extractvalue %dx.types.ResRet.f32 %4240, 0
  %4242 = extractvalue %dx.types.ResRet.f32 %4240, 1
  %4243 = extractvalue %dx.types.ResRet.f32 %4240, 2
  %4244 = extractvalue %dx.types.ResRet.f32 %4240, 3
  %4245 = call float @dx.op.dot4.f32(i32 56, float %4241, float %4242, float %4243, float %4244, float %54, float %55, float %56, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4246 = or i32 %4182, 32
  %4247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4246, i32 undef)  ; BufferLoad(srv,index,wot)
  %4248 = extractvalue %dx.types.ResRet.f32 %4247, 0
  %4249 = extractvalue %dx.types.ResRet.f32 %4247, 1
  %4250 = extractvalue %dx.types.ResRet.f32 %4247, 2
  %4251 = extractvalue %dx.types.ResRet.f32 %4247, 3
  %4252 = call float @dx.op.dot4.f32(i32 56, float %4248, float %4249, float %4250, float %4251, float %54, float %55, float %56, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4253 = call float @dx.op.unary.f32(i32 27, float %4238)  ; Round_ni(value)
  %4254 = call float @dx.op.unary.f32(i32 6, float %4253)  ; FAbs(value)
  %4255 = call float @dx.op.unary.f32(i32 27, float %4245)  ; Round_ni(value)
  %4256 = call float @dx.op.unary.f32(i32 6, float %4255)  ; FAbs(value)
  %4257 = call float @dx.op.unary.f32(i32 6, float %4252)  ; FAbs(value)
  %4258 = call float @dx.op.unary.f32(i32 27, float %4257)  ; Round_ni(value)
  %4259 = fadd fast float %4256, %4254
  %4260 = fadd fast float %4259, %4258
  %4261 = fcmp fast oeq float %4260, 0.000000e+00
  %4262 = call float @dx.op.dot4.f32(i32 56, float %4234, float %4235, float %4236, float %4237, float %4095, float %4096, float %4097, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4263 = call float @dx.op.dot4.f32(i32 56, float %4241, float %4242, float %4243, float %4244, float %4095, float %4096, float %4097, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4264 = call float @dx.op.dot4.f32(i32 56, float %4234, float %4235, float %4236, float %4237, float %4098, float %4099, float %4100, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4265 = call float @dx.op.dot4.f32(i32 56, float %4241, float %4242, float %4243, float %4244, float %4098, float %4099, float %4100, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4266 = fsub fast float %4262, %4238
  %4267 = fsub fast float %4264, %4238
  %4268 = fsub fast float %4263, %4245
  %4269 = fsub fast float %4265, %4245
  %4270 = call float @dx.op.dot3.f32(i32 55, float %4185, float %4186, float %4187, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %4271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4272 = extractvalue %dx.types.CBufRet.f32 %4271, 2
  %4273 = fadd fast float %4272, %4270
  %4274 = call float @dx.op.unary.f32(i32 7, float %4273)  ; Saturate(value)
  %4275 = extractvalue %dx.types.CBufRet.f32 %4271, 0
  %4276 = fcmp fast ogt float %4274, %4275
  %4277 = and i1 %4261, %4276
  br i1 %4277, label %4304, label %4278

; <label>:4278                                    ; preds = %4635, %4387, %4304, %4151
  %4279 = phi float [ %4153, %4304 ], [ %4390, %4387 ], [ %4390, %4635 ], [ %4153, %4151 ]
  %4280 = phi float [ %4154, %4304 ], [ %4154, %4387 ], [ %4611, %4635 ], [ %4154, %4151 ]
  %4281 = phi float [ %4155, %4304 ], [ %4155, %4387 ], [ %4609, %4635 ], [ %4155, %4151 ]
  %4282 = phi float [ %4156, %4304 ], [ %4156, %4387 ], [ %4587, %4635 ], [ %4156, %4151 ]
  %4283 = phi float [ %4157, %4304 ], [ %4157, %4387 ], [ %4588, %4635 ], [ %4157, %4151 ]
  %4284 = phi float [ %4158, %4304 ], [ %4158, %4387 ], [ %4589, %4635 ], [ %4158, %4151 ]
  %4285 = phi float [ %4159, %4304 ], [ %4159, %4387 ], [ %4514, %4635 ], [ %4159, %4151 ]
  %4286 = phi float [ %4160, %4304 ], [ %4160, %4387 ], [ %4512, %4635 ], [ %4160, %4151 ]
  %4287 = phi float [ %4161, %4304 ], [ %4161, %4387 ], [ %4557, %4635 ], [ %4161, %4151 ]
  %4288 = phi float [ %4162, %4304 ], [ %4162, %4387 ], [ %4558, %4635 ], [ %4162, %4151 ]
  %4289 = phi float [ %4163, %4304 ], [ %4163, %4387 ], [ %4559, %4635 ], [ %4163, %4151 ]
  %4290 = phi float [ %4164, %4304 ], [ %4164, %4387 ], [ %4645, %4635 ], [ %4164, %4151 ]
  %4291 = phi float [ %4165, %4304 ], [ %4165, %4387 ], [ %4646, %4635 ], [ %4165, %4151 ]
  %4292 = phi float [ %4166, %4304 ], [ %4166, %4387 ], [ %4647, %4635 ], [ %4166, %4151 ]
  %4293 = phi float [ %4167, %4304 ], [ %4167, %4387 ], [ %4493, %4635 ], [ %4167, %4151 ]
  %4294 = phi float [ %4168, %4304 ], [ %4168, %4387 ], [ %4494, %4635 ], [ %4168, %4151 ]
  %4295 = phi float [ %4169, %4304 ], [ %4169, %4387 ], [ %4495, %4635 ], [ %4169, %4151 ]
  %4296 = phi float [ %4170, %4304 ], [ %4170, %4387 ], [ %4567, %4635 ], [ %4170, %4151 ]
  %4297 = phi float [ %4171, %4304 ], [ %4171, %4387 ], [ %4564, %4635 ], [ %4171, %4151 ]
  %4298 = phi float [ %4172, %4304 ], [ %4172, %4387 ], [ %4561, %4635 ], [ %4172, %4151 ]
  %4299 = phi float [ %4173, %4304 ], [ %4173, %4387 ], [ %4510, %4635 ], [ %4173, %4151 ]
  %4300 = phi float [ %4174, %4304 ], [ %4174, %4387 ], [ %4505, %4635 ], [ %4174, %4151 ]
  %4301 = phi float [ %4175, %4304 ], [ %4175, %4387 ], [ %4506, %4635 ], [ %4175, %4151 ]
  %4302 = phi float [ %4176, %4304 ], [ %4176, %4387 ], [ %4507, %4635 ], [ %4176, %4151 ]
  %4303 = icmp eq i32 %4180, 0
  br i1 %4303, label %4648, label %4151

; <label>:4304                                    ; preds = %4151
  %4305 = extractvalue %dx.types.ResRet.f32 %4184, 3
  %4306 = extractvalue %dx.types.ResRet.f32 %4203, 3
  %4307 = extractvalue %dx.types.ResRet.f32 %4203, 1
  %4308 = extractvalue %dx.types.ResRet.f32 %4203, 0
  %4309 = extractvalue %dx.types.ResRet.f32 %4193, 1
  %4310 = extractvalue %dx.types.ResRet.f32 %4193, 0
  %4311 = extractvalue %dx.types.ResRet.i32 %4189, 3
  %4312 = extractvalue %dx.types.ResRet.i32 %4189, 2
  %4313 = bitcast float %4305 to i32
  %4314 = add i32 %4311, 0
  %4315 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4314, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4316 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4317 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4315, %dx.types.Handle %4316, float %4238, float %4245, float undef, float undef, i32 0, i32 0, i32 undef, float %4266, float %4268, float undef, float %4267, float %4269, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4318 = extractvalue %dx.types.ResRet.f32 %4317, 0
  %4319 = fmul fast float %4318, %4310
  %4320 = fadd fast float %4319, %4309
  %4321 = call float @dx.op.unary.f32(i32 7, float %4320)  ; Saturate(value)
  %4322 = fmul fast float %4238, %4198
  %4323 = call float @dx.op.tertiary.f32(i32 46, float %4199, float %4245, float %4322)  ; FMad(a,b,c)
  %4324 = fadd fast float %4323, %4308
  %4325 = fmul fast float %4238, %4200
  %4326 = call float @dx.op.tertiary.f32(i32 46, float %4201, float %4245, float %4325)  ; FMad(a,b,c)
  %4327 = fadd fast float %4326, %4307
  %4328 = fmul fast float %4266, %4198
  %4329 = call float @dx.op.tertiary.f32(i32 46, float %4199, float %4268, float %4328)  ; FMad(a,b,c)
  %4330 = fmul fast float %4266, %4200
  %4331 = call float @dx.op.tertiary.f32(i32 46, float %4201, float %4268, float %4330)  ; FMad(a,b,c)
  %4332 = fmul fast float %4267, %4198
  %4333 = call float @dx.op.tertiary.f32(i32 46, float %4199, float %4269, float %4332)  ; FMad(a,b,c)
  %4334 = fmul fast float %4267, %4200
  %4335 = call float @dx.op.tertiary.f32(i32 46, float %4201, float %4269, float %4334)  ; FMad(a,b,c)
  %4336 = add i32 %4312, 0
  %4337 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4336, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4338 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4337, %dx.types.Handle %4316, float %4324, float %4327, float undef, float undef, i32 0, i32 0, i32 undef, float %4329, float %4331, float undef, float %4333, float %4335, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4339 = extractvalue %dx.types.ResRet.f32 %4338, 0
  %4340 = and i32 %4313, 1024
  %4341 = icmp ne i32 %4340, 0
  %4342 = fcmp fast ogt float %4339, 0x3FE0101020000000
  %4343 = uitofp i1 %4342 to float
  %4344 = select i1 %4341, float %4343, float %4339
  %4345 = and i32 %4313, 8192
  %4346 = icmp ne i32 %4345, 0
  %4347 = select i1 %4346, float %4306, float 1.000000e+00
  %4348 = fmul fast float %4238, 2.000000e+00
  %4349 = fadd fast float %4348, -1.000000e+00
  %4350 = call float @dx.op.unary.f32(i32 6, float %4349)  ; FAbs(value)
  %4351 = fmul fast float %4350, %4231
  %4352 = fsub fast float %4351, %4231
  %4353 = call float @dx.op.unary.f32(i32 7, float %4352)  ; Saturate(value)
  %4354 = fmul fast float %4245, 2.000000e+00
  %4355 = fadd fast float %4354, -1.000000e+00
  %4356 = call float @dx.op.unary.f32(i32 6, float %4355)  ; FAbs(value)
  %4357 = fmul fast float %4356, %4232
  %4358 = fsub fast float %4357, %4232
  %4359 = call float @dx.op.unary.f32(i32 7, float %4358)  ; Saturate(value)
  %4360 = fmul fast float %4257, %4194
  %4361 = fsub fast float %4360, %4194
  %4362 = call float @dx.op.unary.f32(i32 7, float %4361)  ; Saturate(value)
  %4363 = fmul fast float %4321, %4347
  %4364 = fmul fast float %4363, %4318
  %4365 = fmul fast float %4364, %4353
  %4366 = fmul fast float %4365, %4344
  %4367 = fmul fast float %4366, %4359
  %4368 = fmul fast float %4367, %4362
  %4369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4370 = extractvalue %dx.types.CBufRet.f32 %4369, 1
  %4371 = extractvalue %dx.types.CBufRet.f32 %4369, 0
  %4372 = fsub fast float %4274, %4371
  %4373 = fmul fast float %4372, %4370
  %4374 = call float @dx.op.unary.f32(i32 7, float %4373)  ; Saturate(value)
  %4375 = fmul fast float %4368, %4195
  %4376 = fadd fast float %4368, %4195
  %4377 = fmul fast float %4376, %4204
  %4378 = fsub fast float %4377, %4204
  %4379 = call float @dx.op.unary.f32(i32 7, float %4378)  ; Saturate(value)
  %4380 = and i32 %4313, 128
  %4381 = icmp ne i32 %4380, 0
  %4382 = select i1 %4381, float %4379, float %4375
  %4383 = fmul fast float %4382, %4374
  %4384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4385 = extractvalue %dx.types.CBufRet.f32 %4384, 0
  %4386 = fcmp fast ugt float %4383, %4385
  br i1 %4386, label %4387, label %4278

; <label>:4387                                    ; preds = %4304
  %4388 = select i1 %4346, float %4383, float 0.000000e+00
  %4389 = fadd fast float %4388, %4153
  %4390 = call float @dx.op.unary.f32(i32 7, float %4389)  ; Saturate(value)
  br i1 %4346, label %4278, label %4391

; <label>:4391                                    ; preds = %4387
  %4392 = and i32 %4313, 4
  %4393 = and i32 %4313, 8
  %4394 = add i32 %4190, 0
  %4395 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4394, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4396 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4397 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4395, %dx.types.Handle %4396, float %4324, float %4327, float undef, float undef, i32 0, i32 0, i32 undef, float %4329, float %4331, float undef, float %4333, float %4335, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4398 = extractvalue %dx.types.ResRet.f32 %4397, 0
  %4399 = extractvalue %dx.types.ResRet.f32 %4397, 1
  %4400 = extractvalue %dx.types.ResRet.f32 %4397, 2
  %4401 = extractvalue %dx.types.ResRet.f32 %4397, 3
  %4402 = bitcast float %4216 to i32
  %4403 = and i32 %4402, 255
  %4404 = uitofp i32 %4403 to float
  %4405 = lshr i32 %4402, 8
  %4406 = and i32 %4405, 255
  %4407 = uitofp i32 %4406 to float
  %4408 = fmul fast float %4401, %4404
  %4409 = fadd fast float %4408, %4407
  %4410 = fmul fast float %4409, 0x3F70101000000000
  %4411 = add i32 %4191, 0
  %4412 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4411, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4413 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4412, %dx.types.Handle %4396, float %4324, float %4327, float undef, float undef, i32 0, i32 0, i32 undef, float %4329, float %4331, float undef, float %4333, float %4335, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4414 = extractvalue %dx.types.ResRet.f32 %4413, 0
  %4415 = extractvalue %dx.types.ResRet.f32 %4413, 1
  %4416 = extractvalue %dx.types.ResRet.f32 %4413, 2
  %4417 = extractvalue %dx.types.ResRet.f32 %4413, 3
  %4418 = bitcast float %4210 to i32
  %4419 = and i32 %4418, 255
  %4420 = uitofp i32 %4419 to float
  %4421 = lshr i32 %4418, 8
  %4422 = and i32 %4421, 255
  %4423 = uitofp i32 %4422 to float
  %4424 = lshr i32 %4418, 16
  %4425 = and i32 %4424, 255
  %4426 = uitofp i32 %4425 to float
  %4427 = fmul fast float %4426, 0x3F70101000000000
  %4428 = fmul fast float %4414, %4420
  %4429 = fadd fast float %4428, %4423
  %4430 = fmul fast float %4429, 0x3F70101000000000
  %4431 = fadd fast float %4415, -5.000000e-01
  %4432 = fadd fast float %4417, -5.000000e-01
  %4433 = fmul fast float %4431, %4427
  %4434 = fmul fast float %4432, %4427
  %4435 = fadd fast float %4433, 5.000000e-01
  %4436 = fadd fast float %4434, 5.000000e-01
  %4437 = fmul fast float %4398, %4219
  %4438 = fmul fast float %4399, %4220
  %4439 = fmul fast float %4400, %4221
  %4440 = fmul fast float %4435, 2.000000e+00
  %4441 = fadd fast float %4440, -1.000000e+00
  %4442 = fmul fast float %4436, 2.000000e+00
  %4443 = fadd fast float %4442, -1.000000e+00
  %4444 = fadd fast float %4441, %4443
  %4445 = fmul fast float %4444, 5.000000e-01
  %4446 = fsub fast float %4441, %4443
  %4447 = fmul fast float %4446, 5.000000e-01
  %4448 = call float @dx.op.unary.f32(i32 6, float %4445)  ; FAbs(value)
  %4449 = fsub fast float 1.000000e+00, %4448
  %4450 = call float @dx.op.unary.f32(i32 6, float %4447)  ; FAbs(value)
  %4451 = fsub fast float %4449, %4450
  %4452 = call float @dx.op.dot3.f32(i32 55, float %4445, float %4447, float %4451, float %4445, float %4447, float %4451)  ; Dot3(ax,ay,az,bx,by,bz)
  %4453 = call float @dx.op.unary.f32(i32 25, float %4452)  ; Rsqrt(value)
  %4454 = fmul fast float %4445, %4453
  %4455 = fmul fast float %4447, %4453
  %4456 = fmul fast float %4453, %4451
  %4457 = fmul fast float %4456, %4185
  %4458 = fmul fast float %4456, %4186
  %4459 = fmul fast float %4456, %4187
  %4460 = fmul fast float %4454, %4207
  %4461 = fmul fast float %4454, %4208
  %4462 = fmul fast float %4454, %4209
  %4463 = fadd fast float %4460, %4457
  %4464 = fadd fast float %4461, %4458
  %4465 = fadd fast float %4462, %4459
  %4466 = fmul fast float %4455, %4213
  %4467 = fmul fast float %4455, %4214
  %4468 = fmul fast float %4455, %4215
  %4469 = fadd fast float %4463, %4466
  %4470 = fadd fast float %4464, %4467
  %4471 = fadd fast float %4465, %4468
  %4472 = call float @dx.op.dot3.f32(i32 55, float %4469, float %4470, float %4471, float %4469, float %4470, float %4471)  ; Dot3(ax,ay,az,bx,by,bz)
  %4473 = call float @dx.op.unary.f32(i32 25, float %4472)  ; Rsqrt(value)
  %4474 = fmul fast float %4469, %4473
  %4475 = fmul fast float %4470, %4473
  %4476 = fmul fast float %4471, %4473
  %4477 = icmp ne i32 %4393, 0
  %4478 = select i1 %4477, float 1.000000e+00, float 0.000000e+00
  %4479 = fmul fast float %4383, %4478
  %4480 = and i32 %4313, 1
  %4481 = icmp eq i32 %4480, 0
  br i1 %4481, label %4482, label %4486

; <label>:4482                                    ; preds = %4391
  %4483 = fsub fast float %4474, %4167
  %4484 = fsub fast float %4475, %4168
  %4485 = fsub fast float %4476, %4169
  br label %4486

; <label>:4486                                    ; preds = %4482, %4391
  %4487 = phi float [ %4483, %4482 ], [ %4474, %4391 ]
  %4488 = phi float [ %4484, %4482 ], [ %4475, %4391 ]
  %4489 = phi float [ %4485, %4482 ], [ %4476, %4391 ]
  %4490 = fmul float %4489, %4479
  %4491 = fmul float %4488, %4479
  %4492 = fmul float %4487, %4479
  %4493 = fadd fast float %4492, %4167
  %4494 = fadd fast float %4491, %4168
  %4495 = fadd fast float %4490, %4169
  %4496 = icmp ne i32 %4392, 0
  %4497 = select i1 %4496, float 1.000000e+00, float 0.000000e+00
  %4498 = fmul fast float %4383, %4497
  %4499 = fsub fast float %4437, %4174
  %4500 = fsub fast float %4438, %4175
  %4501 = fsub fast float %4439, %4176
  %4502 = fmul fast float %4499, %4498
  %4503 = fmul fast float %4500, %4498
  %4504 = fmul fast float %4501, %4498
  %4505 = fadd fast float %4502, %4174
  %4506 = fadd fast float %4503, %4175
  %4507 = fadd fast float %4504, %4176
  %4508 = fsub fast float %4410, %4173
  %4509 = fmul fast float %4508, %4498
  %4510 = fadd fast float %4509, %4173
  %4511 = fmul fast float %4498, %4160
  %4512 = fsub fast float %4160, %4511
  %4513 = fmul fast float %4498, %4159
  %4514 = fsub fast float %4159, %4513
  %4515 = bitcast float %4228 to i32
  %4516 = lshr i32 %4515, 16
  %4517 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4516)  ; LegacyF16ToF32(value)
  %4518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %4519 = extractvalue %dx.types.ResRet.i32 %4518, 0
  %4520 = and i32 %4519, 1
  %4521 = icmp eq i32 %4520, 0
  br i1 %4521, label %4522, label %4547

; <label>:4522                                    ; preds = %4486
  %4523 = fadd fast float %4410, 0xBFB99999A0000000
  %4524 = call float @dx.op.unary.f32(i32 7, float %4523)  ; Saturate(value)
  %4525 = fmul fast float %4524, 0x3FF1C71C80000000
  %4526 = fsub fast float 1.000000e+00, %4525
  %4527 = call float @dx.op.unary.f32(i32 7, float %4526)  ; Saturate(value)
  %4528 = fmul fast float %4527, %4437
  %4529 = fmul fast float %4527, %4438
  %4530 = fmul fast float %4527, %4439
  %4531 = call float @dx.op.unary.f32(i32 7, float %4528)  ; Saturate(value)
  %4532 = call float @dx.op.unary.f32(i32 7, float %4529)  ; Saturate(value)
  %4533 = call float @dx.op.unary.f32(i32 7, float %4530)  ; Saturate(value)
  %4534 = call float @dx.op.binary.f32(i32 35, float %4532, float %4533)  ; FMax(a,b)
  %4535 = call float @dx.op.binary.f32(i32 35, float %4531, float %4534)  ; FMax(a,b)
  %4536 = fcmp fast ogt float %4535, 0.000000e+00
  %4537 = bitcast float %4535 to i32
  %4538 = sub nsw i32 2129859010, %4537
  %4539 = bitcast i32 %4538 to float
  %4540 = select i1 %4536, float %4539, float 0.000000e+00
  %4541 = fmul fast float %4531, %4517
  %4542 = fmul fast float %4532, %4517
  %4543 = fmul fast float %4533, %4517
  %4544 = fmul fast float %4541, %4540
  %4545 = fmul fast float %4542, %4540
  %4546 = fmul fast float %4543, %4540
  br label %4547

; <label>:4547                                    ; preds = %4522, %4486
  %4548 = phi float [ %4517, %4486 ], [ %4544, %4522 ]
  %4549 = phi float [ %4517, %4486 ], [ %4545, %4522 ]
  %4550 = phi float [ %4517, %4486 ], [ %4546, %4522 ]
  %4551 = fsub fast float %4548, %4161
  %4552 = fsub fast float %4549, %4162
  %4553 = fsub fast float %4550, %4163
  %4554 = fmul fast float %4551, %4498
  %4555 = fmul fast float %4552, %4498
  %4556 = fmul fast float %4553, %4498
  %4557 = fadd fast float %4554, %4161
  %4558 = fadd fast float %4555, %4162
  %4559 = fadd fast float %4556, %4163
  %4560 = fadd fast float %4383, %4172
  %4561 = call float @dx.op.unary.f32(i32 7, float %4560)  ; Saturate(value)
  %4562 = fsub fast float %4430, %4171
  %4563 = fmul fast float %4562, %4479
  %4564 = fadd fast float %4563, %4171
  %4565 = fsub fast float %4416, %4170
  %4566 = fmul fast float %4565, %4479
  %4567 = fadd fast float %4566, %4170
  br i1 %4481, label %4576, label %4568

; <label>:4568                                    ; preds = %4547
  %4569 = and i32 %4313, 32768
  %4570 = icmp eq i32 %4569, 0
  br i1 %4570, label %4586, label %4571

; <label>:4571                                    ; preds = %4568
  %4572 = fmul fast float %4479, 1.270000e+02
  %4573 = fadd fast float %4572, %4156
  %4574 = fadd fast float %4572, %4157
  %4575 = fadd fast float %4572, %4158
  br label %4586

; <label>:4576                                    ; preds = %4547
  %4577 = fsub fast float 1.270000e+02, %4156
  %4578 = fsub fast float 1.270000e+02, %4157
  %4579 = fsub fast float 1.270000e+02, %4158
  %4580 = fmul fast float %4479, %4577
  %4581 = fmul fast float %4479, %4578
  %4582 = fmul fast float %4479, %4579
  %4583 = fadd fast float %4580, %4156
  %4584 = fadd fast float %4581, %4157
  %4585 = fadd fast float %4582, %4158
  br label %4586

; <label>:4586                                    ; preds = %4576, %4571, %4568
  %4587 = phi float [ %4573, %4571 ], [ %4156, %4568 ], [ %4583, %4576 ]
  %4588 = phi float [ %4574, %4571 ], [ %4157, %4568 ], [ %4584, %4576 ]
  %4589 = phi float [ %4575, %4571 ], [ %4158, %4568 ], [ %4585, %4576 ]
  %4590 = call float @dx.op.dot3.f32(i32 55, float %4437, float %4438, float %4439, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4592 = extractvalue %dx.types.CBufRet.f32 %4591, 0
  %4593 = extractvalue %dx.types.CBufRet.f32 %4591, 1
  %4594 = fmul fast float %4593, %4590
  %4595 = fadd fast float %4594, %4592
  %4596 = call float @dx.op.unary.f32(i32 7, float %4595)  ; Saturate(value)
  %4597 = bitcast float %4222 to i32
  %4598 = and i32 %4597, 65535
  %4599 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4598)  ; LegacyF16ToF32(value)
  %4600 = lshr i32 %4597, 16
  %4601 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4600)  ; LegacyF16ToF32(value)
  %4602 = fcmp fast oge float %4599, 0.000000e+00
  %4603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4604 = extractvalue %dx.types.CBufRet.f32 %4603, 0
  %4605 = select i1 %4602, float %4599, float %4604
  %4606 = fadd fast float %4605, %4601
  %4607 = fsub fast float %4596, %4155
  %4608 = fmul fast float %4607, %4383
  %4609 = fadd fast float %4608, %4155
  %4610 = fmul fast float %4606, %4383
  %4611 = call float @dx.op.binary.f32(i32 35, float %4154, float %4610)  ; FMax(a,b)
  %4612 = and i32 %4313, 16
  %4613 = icmp eq i32 %4612, 0
  br i1 %4613, label %4635, label %4614

; <label>:4614                                    ; preds = %4586
  %4615 = add i32 %4225, 0
  %4616 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4615, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4617 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4616, %dx.types.Handle %4396, float %4324, float %4327, float undef, float undef, i32 0, i32 0, i32 undef, float %4329, float %4331, float undef, float %4333, float %4335, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4618 = extractvalue %dx.types.ResRet.f32 %4617, 0
  %4619 = extractvalue %dx.types.ResRet.f32 %4617, 1
  %4620 = extractvalue %dx.types.ResRet.f32 %4617, 2
  %4621 = and i32 %4515, 65535
  %4622 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4621)  ; LegacyF16ToF32(value)
  %4623 = fmul fast float %4618, %4219
  %4624 = fmul fast float %4619, %4220
  %4625 = fmul fast float %4620, %4221
  %4626 = and i32 %4313, 16384
  %4627 = icmp ne i32 %4626, 0
  %4628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4629 = extractvalue %dx.types.CBufRet.f32 %4628, 0
  %4630 = select i1 %4627, float %4629, float 1.000000e+00
  %4631 = fmul fast float %4630, %4622
  %4632 = fmul fast float %4623, %4631
  %4633 = fmul fast float %4624, %4631
  %4634 = fmul fast float %4625, %4631
  br label %4635

; <label>:4635                                    ; preds = %4614, %4586
  %4636 = phi float [ %4632, %4614 ], [ 0.000000e+00, %4586 ]
  %4637 = phi float [ %4633, %4614 ], [ 0.000000e+00, %4586 ]
  %4638 = phi float [ %4634, %4614 ], [ 0.000000e+00, %4586 ]
  %4639 = fsub fast float %4636, %4164
  %4640 = fsub fast float %4637, %4165
  %4641 = fsub fast float %4638, %4166
  %4642 = fmul fast float %4639, %4383
  %4643 = fmul fast float %4640, %4383
  %4644 = fmul fast float %4641, %4383
  %4645 = fadd fast float %4642, %4164
  %4646 = fadd fast float %4643, %4165
  %4647 = fadd fast float %4644, %4166
  br label %4278

; <label>:4648                                    ; preds = %4278
  br label %4649

; <label>:4649                                    ; preds = %4648, %4088
  %4650 = phi float [ 0.000000e+00, %4088 ], [ %4279, %4648 ]
  %4651 = phi float [ %4027, %4088 ], [ %4280, %4648 ]
  %4652 = phi float [ %4006, %4088 ], [ %4281, %4648 ]
  %4653 = phi float [ %3996, %4088 ], [ %4282, %4648 ]
  %4654 = phi float [ %3997, %4088 ], [ %4283, %4648 ]
  %4655 = phi float [ %3998, %4088 ], [ %4284, %4648 ]
  %4656 = phi float [ 0.000000e+00, %4088 ], [ %4285, %4648 ]
  %4657 = phi float [ 0.000000e+00, %4088 ], [ %4286, %4648 ]
  %4658 = phi float [ %3993, %4088 ], [ %4287, %4648 ]
  %4659 = phi float [ %3994, %4088 ], [ %4288, %4648 ]
  %4660 = phi float [ %3995, %4088 ], [ %4289, %4648 ]
  %4661 = phi float [ %4052, %4088 ], [ %4290, %4648 ]
  %4662 = phi float [ %4055, %4088 ], [ %4291, %4648 ]
  %4663 = phi float [ %4058, %4088 ], [ %4292, %4648 ]
  %4664 = phi float [ %4084, %4088 ], [ %4293, %4648 ]
  %4665 = phi float [ %4085, %4088 ], [ %4294, %4648 ]
  %4666 = phi float [ %4086, %4088 ], [ %4295, %4648 ]
  %4667 = phi float [ %4004, %4088 ], [ %4296, %4648 ]
  %4668 = phi float [ %4003, %4088 ], [ %4297, %4648 ]
  %4669 = phi float [ 0.000000e+00, %4088 ], [ %4298, %4648 ]
  %4670 = phi float [ %4002, %4088 ], [ %4299, %4648 ]
  %4671 = phi float [ %4036, %4088 ], [ %4300, %4648 ]
  %4672 = phi float [ %4037, %4088 ], [ %4301, %4648 ]
  %4673 = phi float [ %4038, %4088 ], [ %4302, %4648 ]
  %4674 = call float @dx.op.dot3.f32(i32 55, float %4664, float %4665, float %4666, float %4664, float %4665, float %4666)  ; Dot3(ax,ay,az,bx,by,bz)
  %4675 = call float @dx.op.unary.f32(i32 25, float %4674)  ; Rsqrt(value)
  %4676 = fmul fast float %4675, %4664
  %4677 = fmul fast float %4675, %4665
  %4678 = fmul fast float %4675, %4666
  %4679 = fadd fast float %4669, %1176
  %4680 = call float @dx.op.unary.f32(i32 7, float %4679)  ; Saturate(value)
  %4681 = call float @dx.op.dot3.f32(i32 55, float %4676, float %4677, float %4678, float %4676, float %4677, float %4678)  ; Dot3(ax,ay,az,bx,by,bz)
  %4682 = call float @dx.op.unary.f32(i32 25, float %4681)  ; Rsqrt(value)
  %4683 = fmul fast float %4682, %4676
  %4684 = fmul fast float %4682, %4677
  %4685 = fmul fast float %4682, %4678
  br label %4686

; <label>:4686                                    ; preds = %4649, %3987
  %4687 = phi float [ %4683, %4649 ], [ %4084, %3987 ]
  %4688 = phi float [ %4684, %4649 ], [ %4085, %3987 ]
  %4689 = phi float [ %4685, %4649 ], [ %4086, %3987 ]
  %4690 = phi float [ %4671, %4649 ], [ %4036, %3987 ]
  %4691 = phi float [ %4672, %4649 ], [ %4037, %3987 ]
  %4692 = phi float [ %4673, %4649 ], [ %4038, %3987 ]
  %4693 = phi float [ %4661, %4649 ], [ %4052, %3987 ]
  %4694 = phi float [ %4662, %4649 ], [ %4055, %3987 ]
  %4695 = phi float [ %4663, %4649 ], [ %4058, %3987 ]
  %4696 = phi float [ %4658, %4649 ], [ %3993, %3987 ]
  %4697 = phi float [ %4659, %4649 ], [ %3994, %3987 ]
  %4698 = phi float [ %4660, %4649 ], [ %3995, %3987 ]
  %4699 = phi float [ %4653, %4649 ], [ %3996, %3987 ]
  %4700 = phi float [ %4654, %4649 ], [ %3997, %3987 ]
  %4701 = phi float [ %4655, %4649 ], [ %3998, %3987 ]
  %4702 = phi float [ %4670, %4649 ], [ %4002, %3987 ]
  %4703 = phi float [ %4680, %4649 ], [ %1176, %3987 ]
  %4704 = phi float [ %4668, %4649 ], [ %4003, %3987 ]
  %4705 = phi float [ %4667, %4649 ], [ %4004, %3987 ]
  %4706 = phi float [ %4657, %4649 ], [ 0.000000e+00, %3987 ]
  %4707 = phi float [ %4656, %4649 ], [ 0.000000e+00, %3987 ]
  %4708 = phi float [ %4650, %4649 ], [ 0.000000e+00, %3987 ]
  %4709 = phi float [ %4651, %4649 ], [ %4027, %3987 ]
  %4710 = phi float [ %4652, %4649 ], [ %4006, %3987 ]
  %4711 = fadd fast float %4702, 0xBFB99999A0000000
  %4712 = call float @dx.op.unary.f32(i32 7, float %4711)  ; Saturate(value)
  %4713 = fmul fast float %4712, 0x3FF1C71C80000000
  %4714 = call float @dx.op.binary.f32(i32 36, float %4702, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4715 = fsub fast float 1.000000e+00, %4713
  %4716 = call float @dx.op.unary.f32(i32 7, float %4715)  ; Saturate(value)
  %4717 = fmul fast float %4716, %4690
  %4718 = fmul fast float %4716, %4691
  %4719 = fmul fast float %4716, %4692
  %4720 = call float @dx.op.unary.f32(i32 7, float %4717)  ; Saturate(value)
  %4721 = call float @dx.op.unary.f32(i32 7, float %4718)  ; Saturate(value)
  %4722 = call float @dx.op.unary.f32(i32 7, float %4719)  ; Saturate(value)
  %4723 = fmul fast float %4713, %4690
  %4724 = fmul fast float %4713, %4691
  %4725 = fmul fast float %4713, %4692
  %4726 = fadd fast float %4723, %4714
  %4727 = fadd fast float %4724, %4714
  %4728 = fadd fast float %4725, %4714
  %4729 = call float @dx.op.unary.f32(i32 7, float %4726)  ; Saturate(value)
  %4730 = call float @dx.op.unary.f32(i32 7, float %4727)  ; Saturate(value)
  %4731 = call float @dx.op.unary.f32(i32 7, float %4728)  ; Saturate(value)
  %4732 = call float @dx.op.unary.f32(i32 7, float %4704)  ; Saturate(value)
  %4733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %4734 = extractvalue %dx.types.ResRet.i32 %4733, 0
  %4735 = and i32 %4734, 1
  %4736 = icmp eq i32 %4735, 0
  br i1 %4736, label %4751, label %4737

; <label>:4737                                    ; preds = %4686
  %4738 = call float @dx.op.binary.f32(i32 35, float %4721, float %4722)  ; FMax(a,b)
  %4739 = call float @dx.op.binary.f32(i32 35, float %4720, float %4738)  ; FMax(a,b)
  %4740 = fcmp fast ogt float %4739, 0.000000e+00
  %4741 = bitcast float %4739 to i32
  %4742 = sub nsw i32 2129859010, %4741
  %4743 = bitcast i32 %4742 to float
  %4744 = select i1 %4740, float %4743, float 0.000000e+00
  %4745 = fmul fast float %4720, %4696
  %4746 = fmul fast float %4721, %4697
  %4747 = fmul fast float %4722, %4698
  %4748 = fmul fast float %4745, %4744
  %4749 = fmul fast float %4746, %4744
  %4750 = fmul fast float %4747, %4744
  br label %4751

; <label>:4751                                    ; preds = %4737, %4686
  %4752 = phi float [ %4748, %4737 ], [ %4696, %4686 ]
  %4753 = phi float [ %4749, %4737 ], [ %4697, %4686 ]
  %4754 = phi float [ %4750, %4737 ], [ %4698, %4686 ]
  %4755 = call float @dx.op.binary.f32(i32 36, float %4699, float 1.270000e+02)  ; FMin(a,b)
  %4756 = call float @dx.op.binary.f32(i32 36, float %4700, float 1.270000e+02)  ; FMin(a,b)
  %4757 = call float @dx.op.binary.f32(i32 36, float %4701, float 1.270000e+02)  ; FMin(a,b)
  %4758 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4759 = extractvalue %dx.types.CBufRet.i32 %4758, 3
  %4760 = and i32 %4759, 8
  %4761 = icmp ne i32 %4760, 0
  %4762 = call float @dx.op.binary.f32(i32 35, float %4720, float %4690)  ; FMax(a,b)
  %4763 = call float @dx.op.binary.f32(i32 35, float %4721, float %4690)  ; FMax(a,b)
  %4764 = call float @dx.op.binary.f32(i32 35, float %4722, float %4690)  ; FMax(a,b)
  %4765 = call float @dx.op.dot3.f32(i32 55, float %4720, float %4721, float %4722, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4766 = select i1 %264, float %4690, float %4720
  %4767 = select i1 %264, float %4765, float %4721
  %4768 = select i1 %264, float 1.000000e+00, float %4722
  %4769 = select i1 %4761, float %4762, float %4766
  %4770 = select i1 %4761, float %4763, float %4767
  %4771 = select i1 %4761, float %4764, float %4768
  %4772 = call float @dx.op.dot3.f32(i32 55, float %4752, float %4753, float %4754, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4773 = select i1 %264, float %4772, float %4752
  %4774 = select i1 %264, float %4772, float %4753
  %4775 = select i1 %264, float %4772, float %4754
  %4776 = and i32 %240, 3
  %4777 = select i1 %234, i32 %4776, i32 0
  %4778 = icmp eq i32 %4777, 1
  br i1 %4778, label %4779, label %4855

; <label>:4779                                    ; preds = %4751
  %4780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4781 = extractvalue %dx.types.CBufRet.f32 %4780, 0
  %4782 = extractvalue %dx.types.CBufRet.f32 %4780, 1
  %4783 = fadd fast float %4781, %190
  %4784 = fadd fast float %4782, %191
  %4785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4786 = extractvalue %dx.types.CBufRet.f32 %4785, 0
  %4787 = extractvalue %dx.types.CBufRet.f32 %4785, 1
  %4788 = fsub fast float %4783, %4786
  %4789 = fsub fast float %4784, %4787
  %4790 = fmul fast float %4788, %4788
  %4791 = fmul fast float %4789, %4789
  %4792 = fadd fast float %4790, %4791
  %4793 = call float @dx.op.unary.f32(i32 24, float %4792)  ; Sqrt(value)
  %4794 = extractvalue %dx.types.CBufRet.f32 %4785, 2
  %4795 = fcmp fast olt float %4793, %4794
  br i1 %4795, label %4796, label %4849

; <label>:4796                                    ; preds = %4779
  %4797 = extractvalue %dx.types.CBufRet.f32 %4780, 2
  %4798 = fadd fast float %4797, %192
  %4799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4800 = extractvalue %dx.types.CBufRet.f32 %4799, 0
  %4801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4802 = extractvalue %dx.types.CBufRet.f32 %4801, 0
  %4803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4804 = extractvalue %dx.types.CBufRet.f32 %4803, 0
  %4805 = extractvalue %dx.types.CBufRet.f32 %4799, 1
  %4806 = extractvalue %dx.types.CBufRet.f32 %4801, 1
  %4807 = extractvalue %dx.types.CBufRet.f32 %4803, 1
  %4808 = extractvalue %dx.types.CBufRet.f32 %4799, 3
  %4809 = extractvalue %dx.types.CBufRet.f32 %4801, 3
  %4810 = extractvalue %dx.types.CBufRet.f32 %4803, 3
  %4811 = fadd fast float %4808, %4783
  %4812 = fadd fast float %4809, %4784
  %4813 = fadd fast float %4798, %4810
  %4814 = fmul fast float %4811, %4800
  %4815 = call float @dx.op.tertiary.f32(i32 46, float %4812, float %4802, float %4814)  ; FMad(a,b,c)
  %4816 = call float @dx.op.tertiary.f32(i32 46, float %4813, float %4804, float %4815)  ; FMad(a,b,c)
  %4817 = fmul fast float %4811, %4805
  %4818 = call float @dx.op.tertiary.f32(i32 46, float %4812, float %4806, float %4817)  ; FMad(a,b,c)
  %4819 = call float @dx.op.tertiary.f32(i32 46, float %4813, float %4807, float %4818)  ; FMad(a,b,c)
  %4820 = fsub fast float %4816, %4808
  %4821 = fsub fast float %4819, %4809
  %4822 = fsub fast float %4820, %4786
  %4823 = fadd fast float %4822, %4794
  %4824 = fsub fast float %4821, %4787
  %4825 = fadd fast float %4824, %4794
  %4826 = extractvalue %dx.types.CBufRet.f32 %4785, 3
  %4827 = fmul fast float %4823, %4826
  %4828 = fmul fast float %4825, %4826
  %4829 = call float @dx.op.unary.f32(i32 7, float %4827)  ; Saturate(value)
  %4830 = call float @dx.op.unary.f32(i32 7, float %4828)  ; Saturate(value)
  %4831 = fsub fast float 1.000000e+00, %4829
  %4832 = fsub fast float 1.000000e+00, %4830
  %4833 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %45, float %4831, float %4832, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4834 = extractvalue %dx.types.ResRet.f32 %4833, 0
  %4835 = fcmp fast ugt float %4834, 0.000000e+00
  br i1 %4835, label %4836, label %4849

; <label>:4836                                    ; preds = %4796
  %4837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4838 = extractvalue %dx.types.CBufRet.f32 %4837, 2
  %4839 = fmul fast float %4838, %4834
  %4840 = extractvalue %dx.types.CBufRet.f32 %4837, 3
  %4841 = fadd fast float %4840, %4839
  %4842 = extractvalue %dx.types.CBufRet.f32 %4803, 2
  %4843 = fadd fast float %4841, %4810
  %4844 = fmul fast float %4816, %4804
  %4845 = call float @dx.op.tertiary.f32(i32 46, float %4819, float %4807, float %4844)  ; FMad(a,b,c)
  %4846 = call float @dx.op.tertiary.f32(i32 46, float %4843, float %4842, float %4845)  ; FMad(a,b,c)
  %4847 = fsub fast float %4846, %4810
  %4848 = fsub fast float %4847, %4797
  br label %4849

; <label>:4849                                    ; preds = %4836, %4796, %4779
  %4850 = phi i1 [ true, %4836 ], [ false, %4796 ], [ false, %4779 ]
  %4851 = phi float [ %4848, %4836 ], [ -1.310720e+05, %4796 ], [ -1.310720e+05, %4779 ]
  %4852 = fsub fast float %4851, %192
  %4853 = call float @dx.op.unary.f32(i32 7, float %4852)  ; Saturate(value)
  %4854 = select i1 %4850, float %4853, float 1.000000e+00
  br label %4855

; <label>:4855                                    ; preds = %4849, %4751
  %4856 = phi float [ %4854, %4849 ], [ 0.000000e+00, %4751 ]
  %4857 = icmp eq i32 %4777, 3
  %4858 = select i1 %4857, float 1.000000e+00, float %4856
  %4859 = call float @dx.op.binary.f32(i32 35, float %4708, float %4858)  ; FMax(a,b)
  %4860 = fcmp fast olt float %4858, 1.000000e+00
  br i1 %4860, label %4861, label %5034

; <label>:4861                                    ; preds = %4855
  %4862 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %4863 = extractvalue %dx.types.CBufRet.i32 %4862, 0
  %4864 = and i32 %4863, 7
  %4865 = icmp eq i32 %4864, 0
  br i1 %4865, label %4937, label %4866

; <label>:4866                                    ; preds = %4861
  %4867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4868 = extractvalue %dx.types.CBufRet.f32 %4867, 0
  %4869 = extractvalue %dx.types.CBufRet.f32 %4867, 1
  %4870 = extractvalue %dx.types.CBufRet.f32 %4867, 2
  %4871 = fadd fast float %4868, %190
  %4872 = fadd fast float %4869, %191
  %4873 = fadd fast float %4870, %192
  %4874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 151)  ; CBufferLoadLegacy(handle,regIndex)
  %4875 = extractvalue %dx.types.CBufRet.f32 %4874, 0
  %4876 = extractvalue %dx.types.CBufRet.f32 %4874, 1
  %4877 = extractvalue %dx.types.CBufRet.f32 %4874, 2
  %4878 = extractvalue %dx.types.CBufRet.f32 %4874, 3
  %4879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 152)  ; CBufferLoadLegacy(handle,regIndex)
  %4880 = extractvalue %dx.types.CBufRet.f32 %4879, 0
  %4881 = extractvalue %dx.types.CBufRet.f32 %4879, 1
  %4882 = extractvalue %dx.types.CBufRet.f32 %4879, 2
  %4883 = extractvalue %dx.types.CBufRet.f32 %4879, 3
  %4884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 153)  ; CBufferLoadLegacy(handle,regIndex)
  %4885 = extractvalue %dx.types.CBufRet.f32 %4884, 0
  %4886 = extractvalue %dx.types.CBufRet.f32 %4884, 1
  %4887 = extractvalue %dx.types.CBufRet.f32 %4884, 2
  %4888 = extractvalue %dx.types.CBufRet.f32 %4884, 3
  %4889 = fmul fast float %4871, %4875
  %4890 = call float @dx.op.tertiary.f32(i32 46, float %4872, float %4876, float %4889)  ; FMad(a,b,c)
  %4891 = call float @dx.op.tertiary.f32(i32 46, float %4873, float %4877, float %4890)  ; FMad(a,b,c)
  %4892 = fadd fast float %4891, %4878
  %4893 = fmul fast float %4880, %4871
  %4894 = call float @dx.op.tertiary.f32(i32 46, float %4872, float %4881, float %4893)  ; FMad(a,b,c)
  %4895 = call float @dx.op.tertiary.f32(i32 46, float %4873, float %4882, float %4894)  ; FMad(a,b,c)
  %4896 = fadd fast float %4895, %4883
  %4897 = fmul fast float %4885, %4871
  %4898 = call float @dx.op.tertiary.f32(i32 46, float %4872, float %4886, float %4897)  ; FMad(a,b,c)
  %4899 = call float @dx.op.tertiary.f32(i32 46, float %4873, float %4887, float %4898)  ; FMad(a,b,c)
  %4900 = fadd fast float %4899, %4888
  %4901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 155)  ; CBufferLoadLegacy(handle,regIndex)
  %4902 = extractvalue %dx.types.CBufRet.f32 %4901, 1
  %4903 = extractvalue %dx.types.CBufRet.f32 %4901, 0
  %4904 = fmul fast float %4903, %275
  %4905 = fadd fast float %4900, %4904
  %4906 = fmul fast float %275, 0x401921FB60000000
  %4907 = call float @dx.op.unary.f32(i32 13, float %4906)  ; Sin(value)
  %4908 = call float @dx.op.unary.f32(i32 12, float %4906)  ; Cos(value)
  %4909 = fmul fast float %4908, %4902
  %4910 = call float @dx.op.tertiary.f32(i32 46, float %4907, float %4902, float 0.000000e+00)  ; FMad(a,b,c)
  %4911 = fmul fast float %4902, %4907
  %4912 = fsub fast float -0.000000e+00, %4911
  %4913 = call float @dx.op.tertiary.f32(i32 46, float %4908, float %4902, float 0.000000e+00)  ; FMad(a,b,c)
  br label %4914

; <label>:4914                                    ; preds = %4914, %4866
  %4915 = phi float [ 0.000000e+00, %4866 ], [ %4929, %4914 ]
  %4916 = phi i32 [ 0, %4866 ], [ %4930, %4914 ]
  %4917 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.0, i32 0, i32 %4916
  %4918 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.1, i32 0, i32 %4916
  %4919 = load float, float* %4917, align 4
  %4920 = load float, float* %4918, align 4
  %4921 = fmul fast float %4909, %4919
  %4922 = call float @dx.op.tertiary.f32(i32 46, float %4920, float %4912, float %4921)  ; FMad(a,b,c)
  %4923 = fmul fast float %4919, %4910
  %4924 = call float @dx.op.tertiary.f32(i32 46, float %4920, float %4913, float %4923)  ; FMad(a,b,c)
  %4925 = fadd fast float %4892, %4922
  %4926 = fadd fast float %4896, %4924
  %4927 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %2, %dx.types.Handle %47, float %4925, float %4926, float undef, float undef, i32 0, i32 0, i32 undef, float %4905)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4928 = extractvalue %dx.types.ResRet.f32 %4927, 0
  %4929 = fadd fast float %4928, %4915
  %4930 = add nuw nsw i32 %4916, 1
  %4931 = icmp eq i32 %4930, 4
  br i1 %4931, label %4932, label %4914

; <label>:4932                                    ; preds = %4914
  %4933 = fmul fast float %4929, 2.500000e-01
  %4934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %4935 = extractvalue %dx.types.CBufRet.f32 %4934, 1
  %4936 = fmul fast float %4935, %4933
  br label %4937

; <label>:4937                                    ; preds = %4932, %4861
  %4938 = phi float [ %4933, %4932 ], [ 0.000000e+00, %4861 ]
  %4939 = phi float [ %4936, %4932 ], [ 0.000000e+00, %4861 ]
  %4940 = fcmp uge float %67, 0.000000e+00
  br i1 %4940, label %4941, label %4952

; <label>:4941                                    ; preds = %4937
  %4942 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %43, float %67, float %68, float %69, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4943 = extractvalue %dx.types.ResRet.f32 %4942, 0
  %4944 = extractvalue %dx.types.ResRet.f32 %4942, 1
  %4945 = extractvalue %dx.types.ResRet.f32 %4942, 2
  %4946 = fadd fast float %4943, %4859
  %4947 = fcmp fast ogt float %66, 0.000000e+00
  %4948 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4949 = select i1 %4947, float 1.000000e+00, float %4948
  %4950 = fmul fast float %4949, %4945
  %4951 = select i1 %4947, float 0.000000e+00, float %4939
  br label %5034

; <label>:4952                                    ; preds = %4937
  %4953 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %4954 = extractvalue %dx.types.CBufRet.i32 %4953, 0
  %4955 = and i32 %4954, 7
  %4956 = icmp eq i32 %4955, 0
  br i1 %4956, label %5034, label %4957

; <label>:4957                                    ; preds = %4952
  %4958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %4959 = extractvalue %dx.types.CBufRet.f32 %4958, 0
  %4960 = fmul fast float %4959, %4938
  %4961 = fadd fast float %4960, %4859
  %4962 = extractvalue %dx.types.CBufRet.f32 %4958, 2
  %4963 = fmul fast float %4962, %4938
  %4964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 371)  ; CBufferLoadLegacy(handle,regIndex)
  %4965 = extractvalue %dx.types.CBufRet.f32 %4964, 0
  %4966 = fmul fast float %4965, %4938
  %4967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4968 = and i32 %4954, 8
  %4969 = icmp eq i32 %4968, 0
  br i1 %4969, label %5034, label %4970

; <label>:4970                                    ; preds = %4957
  %4971 = extractvalue %dx.types.CBufRet.f32 %4967, 2
  %4972 = fadd fast float %4971, %192
  %4973 = extractvalue %dx.types.CBufRet.f32 %4967, 1
  %4974 = fadd fast float %4973, %191
  %4975 = extractvalue %dx.types.CBufRet.f32 %4967, 0
  %4976 = fadd fast float %4975, %190
  %4977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 377)  ; CBufferLoadLegacy(handle,regIndex)
  %4978 = extractvalue %dx.types.CBufRet.f32 %4977, 0
  %4979 = extractvalue %dx.types.CBufRet.f32 %4977, 1
  %4980 = extractvalue %dx.types.CBufRet.f32 %4977, 2
  %4981 = fsub fast float %4976, %4978
  %4982 = fsub fast float %4974, %4979
  %4983 = fsub fast float %4972, %4980
  %4984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 378)  ; CBufferLoadLegacy(handle,regIndex)
  %4985 = extractvalue %dx.types.CBufRet.f32 %4984, 0
  %4986 = extractvalue %dx.types.CBufRet.f32 %4984, 1
  %4987 = extractvalue %dx.types.CBufRet.f32 %4984, 2
  %4988 = fmul fast float %4981, %4985
  %4989 = fmul fast float %4982, %4986
  %4990 = fmul fast float %4983, %4987
  %4991 = fcmp fast oge float %4988, 0.000000e+00
  %4992 = fcmp fast oge float %4989, 0.000000e+00
  %4993 = fcmp fast oge float %4990, 0.000000e+00
  %4994 = and i1 %4991, %4992
  %4995 = and i1 %4993, %4994
  %4996 = fcmp fast ole float %4988, 1.000000e+00
  %4997 = fcmp fast ole float %4989, 1.000000e+00
  %4998 = fcmp fast ole float %4990, 1.000000e+00
  %4999 = and i1 %4996, %4997
  %5000 = and i1 %4998, %4999
  %5001 = and i1 %4995, %5000
  br i1 %5001, label %5002, label %5034

; <label>:5002                                    ; preds = %4970
  %5003 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %5004 = extractvalue %dx.types.CBufRet.i32 %5003, 0
  %5005 = icmp eq i32 %5004, 0
  br i1 %5005, label %5012, label %5006

; <label>:5006                                    ; preds = %5002
  %5007 = add i32 %5004, 0
  %5008 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5007, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5009 = fsub fast float -0.000000e+00, %4989
  %5010 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5008, %dx.types.Handle %108, float %4988, float %5009, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5011 = extractvalue %dx.types.ResRet.f32 %5010, 0
  br label %5012

; <label>:5012                                    ; preds = %5006, %5002
  %5013 = phi float [ %5011, %5006 ], [ 1.000000e+00, %5002 ]
  %5014 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %5015 = extractvalue %dx.types.CBufRet.i32 %5014, 0
  %5016 = and i32 %5015, 32
  %5017 = icmp ne i32 %5016, 0
  %5018 = fmul fast float %5013, %4938
  %5019 = select i1 %5017, float %5013, float %5018
  %5020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %5021 = extractvalue %dx.types.CBufRet.f32 %5020, 1
  %5022 = fmul fast float %5019, %5021
  %5023 = fadd fast float %5022, %4961
  %5024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 380)  ; CBufferLoadLegacy(handle,regIndex)
  %5025 = extractvalue %dx.types.CBufRet.f32 %5024, 0
  %5026 = fmul fast float %5019, %5025
  %5027 = fadd fast float %5026, %4939
  %5028 = extractvalue %dx.types.CBufRet.f32 %5024, 1
  %5029 = fmul fast float %5019, %5028
  %5030 = fadd fast float %5029, %4963
  %5031 = extractvalue %dx.types.CBufRet.f32 %5024, 2
  %5032 = fmul fast float %5031, %5019
  %5033 = fadd fast float %5032, %4966
  br label %5034

; <label>:5034                                    ; preds = %5012, %4970, %4957, %4952, %4941, %4855
  %5035 = phi float [ %4859, %4952 ], [ %4859, %4855 ], [ %4946, %4941 ], [ %5023, %5012 ], [ %4961, %4970 ], [ %4961, %4957 ]
  %5036 = phi float [ %4939, %4952 ], [ 0.000000e+00, %4855 ], [ %4951, %4941 ], [ %5027, %5012 ], [ %4939, %4970 ], [ %4939, %4957 ]
  %5037 = phi float [ 0.000000e+00, %4952 ], [ 0.000000e+00, %4855 ], [ %4944, %4941 ], [ %5030, %5012 ], [ %4963, %4970 ], [ %4963, %4957 ]
  %5038 = phi float [ 0.000000e+00, %4952 ], [ 0.000000e+00, %4855 ], [ %4950, %4941 ], [ %5033, %5012 ], [ %4966, %4970 ], [ %4966, %4957 ]
  %5039 = call float @dx.op.unary.f32(i32 7, float %5035)  ; Saturate(value)
  %5040 = call float @dx.op.unary.f32(i32 7, float %5036)  ; Saturate(value)
  %5041 = call float @dx.op.unary.f32(i32 7, float %5037)  ; Saturate(value)
  %5042 = call float @dx.op.unary.f32(i32 7, float %5038)  ; Saturate(value)
  %5043 = fcmp fast une float %5041, 0.000000e+00
  %5044 = fcmp fast une float %5042, 0.000000e+00
  %5045 = or i1 %5043, %5044
  br i1 %5045, label %5046, label %5621

; <label>:5046                                    ; preds = %5034
  br i1 %5043, label %5047, label %5320

; <label>:5047                                    ; preds = %5046
  %5048 = call float @dx.op.unary.f32(i32 23, float %4705)  ; Log(value)
  %5049 = fmul fast float %5048, 4.000000e+00
  %5050 = call float @dx.op.unary.f32(i32 21, float %5049)  ; Exp(value)
  %5051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5052 = extractvalue %dx.types.CBufRet.f32 %5051, 0
  %5053 = fmul fast float %5052, %54
  %5054 = fmul fast float %5052, %55
  %5055 = fmul fast float %5052, %56
  %5056 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %5057 = call float @dx.op.unary.f32(i32 6, float %64)  ; FAbs(value)
  %5058 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %5059 = call float @dx.op.unary.f32(i32 23, float %5056)  ; Log(value)
  %5060 = call float @dx.op.unary.f32(i32 23, float %5057)  ; Log(value)
  %5061 = call float @dx.op.unary.f32(i32 23, float %5058)  ; Log(value)
  %5062 = fmul fast float %5059, 4.000000e+00
  %5063 = fmul fast float %5060, 4.000000e+00
  %5064 = fmul fast float %5061, 4.000000e+00
  %5065 = call float @dx.op.unary.f32(i32 21, float %5062)  ; Exp(value)
  %5066 = call float @dx.op.unary.f32(i32 21, float %5063)  ; Exp(value)
  %5067 = call float @dx.op.unary.f32(i32 21, float %5064)  ; Exp(value)
  %5068 = fadd fast float %5066, %5065
  %5069 = fadd fast float %5068, %5067
  %5070 = fdiv fast float 1.000000e+00, %5069
  %5071 = fmul fast float %5070, %5065
  %5072 = fcmp fast ogt float %63, 0.000000e+00
  %5073 = fcmp fast ogt float %64, 0.000000e+00
  %5074 = fcmp fast ogt float %65, 0.000000e+00
  %5075 = fcmp fast olt float %63, 0.000000e+00
  %5076 = fcmp fast olt float %64, 0.000000e+00
  %5077 = fcmp fast olt float %65, 0.000000e+00
  %5078 = zext i1 %5072 to i32
  %5079 = zext i1 %5073 to i32
  %5080 = zext i1 %5074 to i32
  %5081 = zext i1 %5075 to i32
  %5082 = zext i1 %5076 to i32
  %5083 = zext i1 %5077 to i32
  %5084 = sub nsw i32 %5078, %5081
  %5085 = sub nsw i32 %5079, %5082
  %5086 = sub nsw i32 %5080, %5083
  %5087 = call float @dx.op.unary.f32(i32 83, float %5053)  ; DerivCoarseX(value)
  %5088 = call float @dx.op.unary.f32(i32 83, float %5054)  ; DerivCoarseX(value)
  %5089 = call float @dx.op.unary.f32(i32 83, float %5055)  ; DerivCoarseX(value)
  %5090 = call float @dx.op.unary.f32(i32 84, float %5053)  ; DerivCoarseY(value)
  %5091 = call float @dx.op.unary.f32(i32 84, float %5054)  ; DerivCoarseY(value)
  %5092 = call float @dx.op.unary.f32(i32 84, float %5055)  ; DerivCoarseY(value)
  %5093 = fcmp fast ole float %275, %5071
  %5094 = fmul fast float %5070, %5068
  %5095 = fcmp fast ole float %275, %5094
  %5096 = select i1 %5095, float %5055, float %5053
  %5097 = select i1 %5095, float %5053, float %5054
  %5098 = select i1 %5093, float %5054, float %5096
  %5099 = select i1 %5093, float %5055, float %5097
  %5100 = select i1 %5095, float %5089, float %5087
  %5101 = select i1 %5095, float %5087, float %5088
  %5102 = select i1 %5093, float %5088, float %5100
  %5103 = select i1 %5093, float %5089, float %5101
  %5104 = select i1 %5095, float %5092, float %5090
  %5105 = select i1 %5095, float %5090, float %5091
  %5106 = select i1 %5093, float %5091, float %5104
  %5107 = select i1 %5093, float %5092, float %5105
  %5108 = call float @dx.op.unary.f32(i32 27, float %5098)  ; Round_ni(value)
  %5109 = call float @dx.op.unary.f32(i32 27, float %5099)  ; Round_ni(value)
  %5110 = fptosi float %5108 to i32
  %5111 = fptosi float %5109 to i32
  %5112 = xor i32 %5111, %5110
  %5113 = sitofp i32 %5112 to float
  %5114 = fptosi float %5113 to i32
  %5115 = sitofp i32 %5114 to float
  %5116 = fmul fast float %5115, 0x3FE3C6EF40000000
  %5117 = frem fast float %5108, 2.560000e+02
  %5118 = frem fast float %5109, 2.560000e+02
  %5119 = fptoui float %5117 to i32
  %5120 = fptoui float %5118 to i32
  %5121 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %28, i32 0, i32 %5119, i32 %5120, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5122 = extractvalue %dx.types.ResRet.f32 %5121, 0
  %5123 = extractvalue %dx.types.ResRet.f32 %5121, 1
  %5124 = extractvalue %dx.types.ResRet.f32 %5121, 2
  %5125 = fadd fast float %5122, %5116
  %5126 = fadd fast float %5123, %5116
  %5127 = fadd fast float %5124, %5116
  %5128 = call float @dx.op.unary.f32(i32 22, float %5125)  ; Frc(value)
  %5129 = call float @dx.op.unary.f32(i32 22, float %5126)  ; Frc(value)
  %5130 = call float @dx.op.unary.f32(i32 22, float %5127)  ; Frc(value)
  %5131 = fmul fast float %5130, 0x401921FB60000000
  %5132 = call float @dx.op.unary.f32(i32 13, float %5131)  ; Sin(value)
  %5133 = call float @dx.op.unary.f32(i32 12, float %5131)  ; Cos(value)
  %5134 = fsub fast float -0.000000e+00, %5133
  %5135 = fmul fast float %5133, %5098
  %5136 = call float @dx.op.tertiary.f32(i32 46, float %5132, float %5099, float %5135)  ; FMad(a,b,c)
  %5137 = fmul fast float %5132, %5098
  %5138 = call float @dx.op.tertiary.f32(i32 46, float %5134, float %5099, float %5137)  ; FMad(a,b,c)
  %5139 = fadd fast float %5136, %5128
  %5140 = fadd fast float %5138, %5129
  %5141 = extractvalue %dx.types.CBufRet.f32 %5051, 3
  %5142 = bitcast float %5141 to i32
  %5143 = icmp eq i32 %5142, 0
  br i1 %5143, label %5182, label %5144

; <label>:5144                                    ; preds = %5047
  %5145 = add i32 %5142, 0
  %5146 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5145, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5147 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5146, %dx.types.Handle %108, float %5139, float %5140, float undef, float undef, i32 0, i32 0, i32 undef, float %5102, float %5103, float undef, float %5106, float %5107, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5148 = extractvalue %dx.types.ResRet.f32 %5147, 0
  %5149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5150 = extractvalue %dx.types.CBufRet.f32 %5149, 1
  %5151 = extractvalue %dx.types.CBufRet.f32 %5149, 2
  %5152 = fsub fast float 1.000000e+00, %5041
  %5153 = call float @dx.op.binary.f32(i32 35, float %5152, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5154 = bitcast float %5041 to i32
  %5155 = sitofp i32 %5154 to float
  %5156 = fadd fast float %5155, 0xC1CFBF8940000000
  %5157 = fmul fast float %5151, %5156
  %5158 = fadd fast float %5157, 0x41CFBF8940000000
  %5159 = fptosi float %5158 to i32
  %5160 = bitcast i32 %5159 to float
  %5161 = bitcast float %5153 to i32
  %5162 = sitofp i32 %5161 to float
  %5163 = fadd fast float %5162, 0xC1CFBF8940000000
  %5164 = fmul fast float %5163, %5151
  %5165 = fadd fast float %5164, 0x41CFBF8940000000
  %5166 = fptosi float %5165 to i32
  %5167 = bitcast i32 %5166 to float
  %5168 = fmul fast float %5160, %5150
  %5169 = fmul fast float %5167, %5150
  %5170 = fsub fast float %5153, %5168
  %5171 = fadd fast float %5169, %5153
  %5172 = call float @dx.op.unary.f32(i32 7, float %5170)  ; Saturate(value)
  %5173 = call float @dx.op.unary.f32(i32 7, float %5171)  ; Saturate(value)
  %5174 = fsub fast float %5148, %5172
  %5175 = fsub fast float %5173, %5172
  %5176 = bitcast float %5175 to i32
  %5177 = sub nsw i32 2129859010, %5176
  %5178 = bitcast i32 %5177 to float
  %5179 = fmul fast float %5178, %5174
  %5180 = call float @dx.op.unary.f32(i32 7, float %5179)  ; Saturate(value)
  %5181 = fcmp fast olt float %5180, 0x3F70101020000000
  br i1 %5181, label %5320, label %5182

; <label>:5182                                    ; preds = %5144, %5047
  %5183 = phi float [ %5180, %5144 ], [ %5041, %5047 ]
  %5184 = fmul fast float %5183, %5050
  %5185 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5186 = extractvalue %dx.types.CBufRet.i32 %5185, 1
  %5187 = extractvalue %dx.types.CBufRet.i32 %5185, 0
  %5188 = add i32 %5187, 0
  %5189 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5188, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5190 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5189, %dx.types.Handle %107, float %5139, float %5140, float undef, float undef, i32 0, i32 0, i32 undef, float %5102, float %5103, float undef, float %5106, float %5107, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5191 = extractvalue %dx.types.ResRet.f32 %5190, 0
  %5192 = extractvalue %dx.types.ResRet.f32 %5190, 1
  %5193 = extractvalue %dx.types.ResRet.f32 %5190, 2
  %5194 = extractvalue %dx.types.ResRet.f32 %5190, 3
  %5195 = and i32 %5186, 255
  %5196 = uitofp i32 %5195 to float
  %5197 = lshr i32 %5186, 8
  %5198 = and i32 %5197, 255
  %5199 = uitofp i32 %5198 to float
  %5200 = fmul fast float %5194, %5196
  %5201 = fadd fast float %5200, %5199
  %5202 = fmul fast float %5201, 0x3F70101000000000
  %5203 = fadd fast float %5202, 0xBFB99999A0000000
  %5204 = call float @dx.op.unary.f32(i32 7, float %5203)  ; Saturate(value)
  %5205 = fmul fast float %5204, 0x3FF1C71C80000000
  %5206 = call float @dx.op.binary.f32(i32 36, float %5202, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5207 = fsub fast float 1.000000e+00, %5205
  %5208 = call float @dx.op.unary.f32(i32 7, float %5207)  ; Saturate(value)
  %5209 = fmul fast float %5208, %5191
  %5210 = fmul fast float %5208, %5192
  %5211 = fmul fast float %5208, %5193
  %5212 = call float @dx.op.unary.f32(i32 7, float %5209)  ; Saturate(value)
  %5213 = call float @dx.op.unary.f32(i32 7, float %5210)  ; Saturate(value)
  %5214 = call float @dx.op.unary.f32(i32 7, float %5211)  ; Saturate(value)
  %5215 = fmul fast float %5205, %5191
  %5216 = fmul fast float %5205, %5192
  %5217 = fmul fast float %5205, %5193
  %5218 = fadd fast float %5215, %5206
  %5219 = fadd fast float %5216, %5206
  %5220 = fadd fast float %5217, %5206
  %5221 = call float @dx.op.unary.f32(i32 7, float %5218)  ; Saturate(value)
  %5222 = call float @dx.op.unary.f32(i32 7, float %5219)  ; Saturate(value)
  %5223 = call float @dx.op.unary.f32(i32 7, float %5220)  ; Saturate(value)
  %5224 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5225 = extractvalue %dx.types.CBufRet.i32 %5224, 3
  %5226 = extractvalue %dx.types.CBufRet.i32 %5224, 2
  %5227 = add i32 %5226, 0
  %5228 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5227, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5229 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5228, %dx.types.Handle %107, float %5139, float %5140, float undef, float undef, i32 0, i32 0, i32 undef, float %5102, float %5103, float undef, float %5106, float %5107, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5230 = extractvalue %dx.types.ResRet.f32 %5229, 0
  %5231 = extractvalue %dx.types.ResRet.f32 %5229, 1
  %5232 = extractvalue %dx.types.ResRet.f32 %5229, 2
  %5233 = extractvalue %dx.types.ResRet.f32 %5229, 3
  %5234 = and i32 %5225, 255
  %5235 = uitofp i32 %5234 to float
  %5236 = lshr i32 %5225, 8
  %5237 = and i32 %5236, 255
  %5238 = uitofp i32 %5237 to float
  %5239 = lshr i32 %5225, 16
  %5240 = and i32 %5239, 255
  %5241 = uitofp i32 %5240 to float
  %5242 = fmul fast float %5241, 0x3F70101000000000
  %5243 = fmul fast float %5230, %5235
  %5244 = fadd fast float %5243, %5238
  %5245 = fmul fast float %5244, 0x3F70101000000000
  %5246 = fadd fast float %5231, -5.000000e-01
  %5247 = fadd fast float %5233, -5.000000e-01
  %5248 = fmul fast float %5246, %5242
  %5249 = fmul fast float %5247, %5242
  %5250 = fadd fast float %5248, 5.000000e-01
  %5251 = fadd fast float %5249, 5.000000e-01
  %5252 = fmul fast float %5250, 2.000000e+00
  %5253 = fadd fast float %5252, -1.000000e+00
  %5254 = fmul fast float %5251, 2.000000e+00
  %5255 = fadd fast float %5254, -1.000000e+00
  %5256 = fadd fast float %5253, %5255
  %5257 = fmul fast float %5256, 5.000000e-01
  %5258 = fsub fast float %5253, %5255
  %5259 = fmul fast float %5258, 5.000000e-01
  %5260 = call float @dx.op.unary.f32(i32 6, float %5257)  ; FAbs(value)
  %5261 = fsub fast float 1.000000e+00, %5260
  %5262 = call float @dx.op.unary.f32(i32 6, float %5259)  ; FAbs(value)
  %5263 = fsub fast float %5261, %5262
  %5264 = call float @dx.op.dot3.f32(i32 55, float %5257, float %5259, float %5263, float %5257, float %5259, float %5263)  ; Dot3(ax,ay,az,bx,by,bz)
  %5265 = call float @dx.op.unary.f32(i32 25, float %5264)  ; Rsqrt(value)
  %5266 = fmul fast float %5257, %5265
  %5267 = fmul fast float %5259, %5265
  %5268 = select i1 %5095, i32 %5085, i32 %5086
  %5269 = select i1 %5093, i32 %5084, i32 %5268
  %5270 = sitofp i32 %5269 to float
  %5271 = fmul fast float %5263, %5270
  %5272 = fmul fast float %5271, %5265
  %5273 = select i1 %5095, float %5272, float %5267
  %5274 = select i1 %5095, float %5267, float %5272
  %5275 = select i1 %5093, float %5272, float %5266
  %5276 = select i1 %5093, float %5267, float %5273
  %5277 = select i1 %5093, float %5266, float %5274
  %5278 = fsub fast float %5212, %4769
  %5279 = fsub fast float %5213, %4770
  %5280 = fsub fast float %5214, %4771
  %5281 = fmul fast float %5278, %5184
  %5282 = fmul fast float %5279, %5184
  %5283 = fmul fast float %5280, %5184
  %5284 = fadd fast float %5281, %4769
  %5285 = fadd fast float %5282, %4770
  %5286 = fadd fast float %5283, %4771
  %5287 = fsub fast float %5221, %4729
  %5288 = fsub fast float %5222, %4730
  %5289 = fsub fast float %5223, %4731
  %5290 = fmul fast float %5287, %5184
  %5291 = fmul fast float %5288, %5184
  %5292 = fmul fast float %5289, %5184
  %5293 = fadd fast float %5290, %4729
  %5294 = fadd fast float %5291, %4730
  %5295 = fadd fast float %5292, %4731
  %5296 = fadd fast float %5275, %4687
  %5297 = fadd fast float %5276, %4688
  %5298 = fadd fast float %5277, %4689
  %5299 = call float @dx.op.dot3.f32(i32 55, float %5296, float %5297, float %5298, float %5296, float %5297, float %5298)  ; Dot3(ax,ay,az,bx,by,bz)
  %5300 = call float @dx.op.unary.f32(i32 25, float %5299)  ; Rsqrt(value)
  %5301 = fmul fast float %5296, %5300
  %5302 = fmul fast float %5297, %5300
  %5303 = fmul fast float %5298, %5300
  %5304 = fsub fast float %5301, %4687
  %5305 = fsub fast float %5302, %4688
  %5306 = fsub fast float %5303, %4689
  %5307 = fmul fast float %5304, %5184
  %5308 = fmul fast float %5305, %5184
  %5309 = fmul fast float %5306, %5184
  %5310 = fadd fast float %5307, %4687
  %5311 = fadd fast float %5308, %4688
  %5312 = fadd fast float %5309, %4689
  %5313 = call float @dx.op.binary.f32(i32 36, float %4705, float %5232)  ; FMin(a,b)
  %5314 = fsub fast float %5313, %4705
  %5315 = fmul fast float %5314, %5184
  %5316 = fadd fast float %5315, %4705
  %5317 = fsub fast float %5245, %4732
  %5318 = fmul fast float %5317, %5184
  %5319 = fadd fast float %5318, %4732
  br label %5320

; <label>:5320                                    ; preds = %5182, %5144, %5046
  %5321 = phi float [ %5284, %5182 ], [ %4769, %5144 ], [ %4769, %5046 ]
  %5322 = phi float [ %5285, %5182 ], [ %4770, %5144 ], [ %4770, %5046 ]
  %5323 = phi float [ %5286, %5182 ], [ %4771, %5144 ], [ %4771, %5046 ]
  %5324 = phi float [ %5293, %5182 ], [ %4729, %5144 ], [ %4729, %5046 ]
  %5325 = phi float [ %5294, %5182 ], [ %4730, %5144 ], [ %4730, %5046 ]
  %5326 = phi float [ %5295, %5182 ], [ %4731, %5144 ], [ %4731, %5046 ]
  %5327 = phi float [ %5310, %5182 ], [ %4687, %5144 ], [ %4687, %5046 ]
  %5328 = phi float [ %5311, %5182 ], [ %4688, %5144 ], [ %4688, %5046 ]
  %5329 = phi float [ %5312, %5182 ], [ %4689, %5144 ], [ %4689, %5046 ]
  %5330 = phi float [ %5319, %5182 ], [ %4732, %5144 ], [ %4732, %5046 ]
  %5331 = phi float [ %5316, %5182 ], [ %4705, %5144 ], [ %4705, %5046 ]
  br i1 %5044, label %5332, label %5621

; <label>:5332                                    ; preds = %5320
  %5333 = call float @dx.op.unary.f32(i32 23, float %5331)  ; Log(value)
  %5334 = fmul fast float %5333, 4.000000e+00
  %5335 = call float @dx.op.unary.f32(i32 21, float %5334)  ; Exp(value)
  %5336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5337 = extractvalue %dx.types.CBufRet.f32 %5336, 0
  %5338 = fmul fast float %5337, %54
  %5339 = fmul fast float %5337, %55
  %5340 = fmul fast float %5337, %56
  %5341 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %5342 = call float @dx.op.unary.f32(i32 6, float %64)  ; FAbs(value)
  %5343 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %5344 = call float @dx.op.unary.f32(i32 23, float %5341)  ; Log(value)
  %5345 = call float @dx.op.unary.f32(i32 23, float %5342)  ; Log(value)
  %5346 = call float @dx.op.unary.f32(i32 23, float %5343)  ; Log(value)
  %5347 = fmul fast float %5344, 4.000000e+00
  %5348 = fmul fast float %5345, 4.000000e+00
  %5349 = fmul fast float %5346, 4.000000e+00
  %5350 = call float @dx.op.unary.f32(i32 21, float %5347)  ; Exp(value)
  %5351 = call float @dx.op.unary.f32(i32 21, float %5348)  ; Exp(value)
  %5352 = call float @dx.op.unary.f32(i32 21, float %5349)  ; Exp(value)
  %5353 = fadd fast float %5351, %5350
  %5354 = fadd fast float %5353, %5352
  %5355 = fdiv fast float 1.000000e+00, %5354
  %5356 = fmul fast float %5355, %5350
  %5357 = fcmp fast ogt float %63, 0.000000e+00
  %5358 = fcmp fast ogt float %64, 0.000000e+00
  %5359 = fcmp fast ogt float %65, 0.000000e+00
  %5360 = fcmp fast olt float %63, 0.000000e+00
  %5361 = fcmp fast olt float %64, 0.000000e+00
  %5362 = fcmp fast olt float %65, 0.000000e+00
  %5363 = zext i1 %5357 to i32
  %5364 = zext i1 %5358 to i32
  %5365 = zext i1 %5359 to i32
  %5366 = zext i1 %5360 to i32
  %5367 = zext i1 %5361 to i32
  %5368 = zext i1 %5362 to i32
  %5369 = sub nsw i32 %5363, %5366
  %5370 = sub nsw i32 %5364, %5367
  %5371 = sub nsw i32 %5365, %5368
  %5372 = call float @dx.op.unary.f32(i32 83, float %5338)  ; DerivCoarseX(value)
  %5373 = call float @dx.op.unary.f32(i32 83, float %5339)  ; DerivCoarseX(value)
  %5374 = call float @dx.op.unary.f32(i32 83, float %5340)  ; DerivCoarseX(value)
  %5375 = call float @dx.op.unary.f32(i32 84, float %5338)  ; DerivCoarseY(value)
  %5376 = call float @dx.op.unary.f32(i32 84, float %5339)  ; DerivCoarseY(value)
  %5377 = call float @dx.op.unary.f32(i32 84, float %5340)  ; DerivCoarseY(value)
  %5378 = fcmp fast ole float %275, %5356
  %5379 = fmul fast float %5355, %5353
  %5380 = fcmp fast ole float %275, %5379
  %5381 = select i1 %5380, float %5340, float %5338
  %5382 = select i1 %5380, float %5338, float %5339
  %5383 = select i1 %5378, float %5339, float %5381
  %5384 = select i1 %5378, float %5340, float %5382
  %5385 = select i1 %5380, float %5374, float %5372
  %5386 = select i1 %5380, float %5372, float %5373
  %5387 = select i1 %5378, float %5373, float %5385
  %5388 = select i1 %5378, float %5374, float %5386
  %5389 = select i1 %5380, float %5377, float %5375
  %5390 = select i1 %5380, float %5375, float %5376
  %5391 = select i1 %5378, float %5376, float %5389
  %5392 = select i1 %5378, float %5377, float %5390
  %5393 = call float @dx.op.unary.f32(i32 27, float %5383)  ; Round_ni(value)
  %5394 = call float @dx.op.unary.f32(i32 27, float %5384)  ; Round_ni(value)
  %5395 = fptosi float %5393 to i32
  %5396 = fptosi float %5394 to i32
  %5397 = xor i32 %5396, %5395
  %5398 = sitofp i32 %5397 to float
  %5399 = fptosi float %5398 to i32
  %5400 = sitofp i32 %5399 to float
  %5401 = fmul fast float %5400, 0x3FE3C6EF40000000
  %5402 = frem fast float %5393, 2.560000e+02
  %5403 = frem fast float %5394, 2.560000e+02
  %5404 = fptoui float %5402 to i32
  %5405 = fptoui float %5403 to i32
  %5406 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %28, i32 0, i32 %5404, i32 %5405, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5407 = extractvalue %dx.types.ResRet.f32 %5406, 0
  %5408 = extractvalue %dx.types.ResRet.f32 %5406, 1
  %5409 = extractvalue %dx.types.ResRet.f32 %5406, 2
  %5410 = fadd fast float %5407, %5401
  %5411 = fadd fast float %5408, %5401
  %5412 = fadd fast float %5409, %5401
  %5413 = call float @dx.op.unary.f32(i32 22, float %5410)  ; Frc(value)
  %5414 = call float @dx.op.unary.f32(i32 22, float %5411)  ; Frc(value)
  %5415 = call float @dx.op.unary.f32(i32 22, float %5412)  ; Frc(value)
  %5416 = fmul fast float %5415, 0x401921FB60000000
  %5417 = call float @dx.op.unary.f32(i32 13, float %5416)  ; Sin(value)
  %5418 = call float @dx.op.unary.f32(i32 12, float %5416)  ; Cos(value)
  %5419 = fsub fast float -0.000000e+00, %5418
  %5420 = fmul fast float %5418, %5383
  %5421 = call float @dx.op.tertiary.f32(i32 46, float %5417, float %5384, float %5420)  ; FMad(a,b,c)
  %5422 = fmul fast float %5417, %5383
  %5423 = call float @dx.op.tertiary.f32(i32 46, float %5419, float %5384, float %5422)  ; FMad(a,b,c)
  %5424 = fadd fast float %5421, %5413
  %5425 = fadd fast float %5423, %5414
  %5426 = extractvalue %dx.types.CBufRet.f32 %5336, 3
  %5427 = bitcast float %5426 to i32
  %5428 = icmp eq i32 %5427, 0
  br i1 %5428, label %5467, label %5429

; <label>:5429                                    ; preds = %5332
  %5430 = add i32 %5427, 0
  %5431 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5430, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5432 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5431, %dx.types.Handle %108, float %5424, float %5425, float undef, float undef, i32 0, i32 0, i32 undef, float %5387, float %5388, float undef, float %5391, float %5392, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5433 = extractvalue %dx.types.ResRet.f32 %5432, 0
  %5434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5435 = extractvalue %dx.types.CBufRet.f32 %5434, 1
  %5436 = extractvalue %dx.types.CBufRet.f32 %5434, 2
  %5437 = fsub fast float 1.000000e+00, %5042
  %5438 = call float @dx.op.binary.f32(i32 35, float %5437, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5439 = bitcast float %5042 to i32
  %5440 = sitofp i32 %5439 to float
  %5441 = fadd fast float %5440, 0xC1CFBF8940000000
  %5442 = fmul fast float %5436, %5441
  %5443 = fadd fast float %5442, 0x41CFBF8940000000
  %5444 = fptosi float %5443 to i32
  %5445 = bitcast i32 %5444 to float
  %5446 = bitcast float %5438 to i32
  %5447 = sitofp i32 %5446 to float
  %5448 = fadd fast float %5447, 0xC1CFBF8940000000
  %5449 = fmul fast float %5448, %5436
  %5450 = fadd fast float %5449, 0x41CFBF8940000000
  %5451 = fptosi float %5450 to i32
  %5452 = bitcast i32 %5451 to float
  %5453 = fmul fast float %5445, %5435
  %5454 = fmul fast float %5452, %5435
  %5455 = fsub fast float %5438, %5453
  %5456 = fadd fast float %5454, %5438
  %5457 = call float @dx.op.unary.f32(i32 7, float %5455)  ; Saturate(value)
  %5458 = call float @dx.op.unary.f32(i32 7, float %5456)  ; Saturate(value)
  %5459 = fsub fast float %5433, %5457
  %5460 = fsub fast float %5458, %5457
  %5461 = bitcast float %5460 to i32
  %5462 = sub nsw i32 2129859010, %5461
  %5463 = bitcast i32 %5462 to float
  %5464 = fmul fast float %5463, %5459
  %5465 = call float @dx.op.unary.f32(i32 7, float %5464)  ; Saturate(value)
  %5466 = fcmp fast olt float %5465, 0x3F70101020000000
  br i1 %5466, label %5621, label %5467

; <label>:5467                                    ; preds = %5429, %5332
  %5468 = phi float [ %5465, %5429 ], [ %5042, %5332 ]
  %5469 = fmul fast float %5468, %5335
  %5470 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5471 = extractvalue %dx.types.CBufRet.i32 %5470, 1
  %5472 = extractvalue %dx.types.CBufRet.i32 %5470, 0
  %5473 = add i32 %5472, 0
  %5474 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5473, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5475 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5474, %dx.types.Handle %107, float %5424, float %5425, float undef, float undef, i32 0, i32 0, i32 undef, float %5387, float %5388, float undef, float %5391, float %5392, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5476 = extractvalue %dx.types.ResRet.f32 %5475, 0
  %5477 = extractvalue %dx.types.ResRet.f32 %5475, 1
  %5478 = extractvalue %dx.types.ResRet.f32 %5475, 2
  %5479 = extractvalue %dx.types.ResRet.f32 %5475, 3
  %5480 = and i32 %5471, 255
  %5481 = uitofp i32 %5480 to float
  %5482 = lshr i32 %5471, 8
  %5483 = and i32 %5482, 255
  %5484 = uitofp i32 %5483 to float
  %5485 = fmul fast float %5479, %5481
  %5486 = fadd fast float %5485, %5484
  %5487 = fmul fast float %5486, 0x3F70101000000000
  %5488 = fadd fast float %5487, 0xBFB99999A0000000
  %5489 = call float @dx.op.unary.f32(i32 7, float %5488)  ; Saturate(value)
  %5490 = fmul fast float %5489, 0x3FF1C71C80000000
  %5491 = call float @dx.op.binary.f32(i32 36, float %5487, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5492 = fsub fast float 1.000000e+00, %5490
  %5493 = call float @dx.op.unary.f32(i32 7, float %5492)  ; Saturate(value)
  %5494 = fmul fast float %5493, %5476
  %5495 = fmul fast float %5493, %5477
  %5496 = fmul fast float %5493, %5478
  %5497 = call float @dx.op.unary.f32(i32 7, float %5494)  ; Saturate(value)
  %5498 = call float @dx.op.unary.f32(i32 7, float %5495)  ; Saturate(value)
  %5499 = call float @dx.op.unary.f32(i32 7, float %5496)  ; Saturate(value)
  %5500 = fmul fast float %5490, %5476
  %5501 = fmul fast float %5490, %5477
  %5502 = fmul fast float %5490, %5478
  %5503 = fadd fast float %5500, %5491
  %5504 = fadd fast float %5501, %5491
  %5505 = fadd fast float %5502, %5491
  %5506 = call float @dx.op.unary.f32(i32 7, float %5503)  ; Saturate(value)
  %5507 = call float @dx.op.unary.f32(i32 7, float %5504)  ; Saturate(value)
  %5508 = call float @dx.op.unary.f32(i32 7, float %5505)  ; Saturate(value)
  %5509 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5510 = extractvalue %dx.types.CBufRet.i32 %5509, 3
  %5511 = extractvalue %dx.types.CBufRet.i32 %5509, 2
  %5512 = add i32 %5511, 0
  %5513 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5512, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5514 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5513, %dx.types.Handle %107, float %5424, float %5425, float undef, float undef, i32 0, i32 0, i32 undef, float %5387, float %5388, float undef, float %5391, float %5392, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5515 = extractvalue %dx.types.ResRet.f32 %5514, 0
  %5516 = extractvalue %dx.types.ResRet.f32 %5514, 1
  %5517 = extractvalue %dx.types.ResRet.f32 %5514, 2
  %5518 = extractvalue %dx.types.ResRet.f32 %5514, 3
  %5519 = and i32 %5510, 255
  %5520 = uitofp i32 %5519 to float
  %5521 = lshr i32 %5510, 8
  %5522 = and i32 %5521, 255
  %5523 = uitofp i32 %5522 to float
  %5524 = lshr i32 %5510, 16
  %5525 = and i32 %5524, 255
  %5526 = uitofp i32 %5525 to float
  %5527 = fmul fast float %5526, 0x3F70101000000000
  %5528 = fmul fast float %5515, %5520
  %5529 = fadd fast float %5528, %5523
  %5530 = fmul fast float %5529, 0x3F70101000000000
  %5531 = fadd fast float %5516, -5.000000e-01
  %5532 = fadd fast float %5518, -5.000000e-01
  %5533 = fmul fast float %5531, %5527
  %5534 = fmul fast float %5532, %5527
  %5535 = fadd fast float %5533, 5.000000e-01
  %5536 = fadd fast float %5534, 5.000000e-01
  %5537 = fmul fast float %5535, 2.000000e+00
  %5538 = fadd fast float %5537, -1.000000e+00
  %5539 = fmul fast float %5536, 2.000000e+00
  %5540 = fadd fast float %5539, -1.000000e+00
  %5541 = fadd fast float %5538, %5540
  %5542 = fmul fast float %5541, 5.000000e-01
  %5543 = fsub fast float %5538, %5540
  %5544 = fmul fast float %5543, 5.000000e-01
  %5545 = call float @dx.op.unary.f32(i32 6, float %5542)  ; FAbs(value)
  %5546 = fsub fast float 1.000000e+00, %5545
  %5547 = call float @dx.op.unary.f32(i32 6, float %5544)  ; FAbs(value)
  %5548 = fsub fast float %5546, %5547
  %5549 = call float @dx.op.dot3.f32(i32 55, float %5542, float %5544, float %5548, float %5542, float %5544, float %5548)  ; Dot3(ax,ay,az,bx,by,bz)
  %5550 = call float @dx.op.unary.f32(i32 25, float %5549)  ; Rsqrt(value)
  %5551 = fmul fast float %5542, %5550
  %5552 = fmul fast float %5544, %5550
  %5553 = select i1 %5380, i32 %5370, i32 %5371
  %5554 = select i1 %5378, i32 %5369, i32 %5553
  %5555 = sitofp i32 %5554 to float
  %5556 = fmul fast float %5548, %5555
  %5557 = fmul fast float %5556, %5550
  %5558 = select i1 %5380, float %5557, float %5552
  %5559 = select i1 %5380, float %5552, float %5557
  %5560 = select i1 %5378, float %5557, float %5551
  %5561 = select i1 %5378, float %5552, float %5558
  %5562 = select i1 %5378, float %5551, float %5559
  %5563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 375)  ; CBufferLoadLegacy(handle,regIndex)
  %5564 = extractvalue %dx.types.CBufRet.f32 %5563, 0
  %5565 = fptoui float %5564 to i32
  %5566 = add i32 %5565, 0
  %5567 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5566, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5568 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5567, %dx.types.Handle %107, float %5424, float %5425, float undef, float undef, i32 0, i32 0, i32 undef, float %5387, float %5388, float undef, float %5391, float %5392, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5569 = extractvalue %dx.types.ResRet.f32 %5568, 0
  %5570 = fsub fast float %5497, %5321
  %5571 = fsub fast float %5498, %5322
  %5572 = fsub fast float %5499, %5323
  %5573 = fmul fast float %5570, %5469
  %5574 = fmul fast float %5571, %5469
  %5575 = fmul fast float %5572, %5469
  %5576 = fadd fast float %5573, %5321
  %5577 = fadd fast float %5574, %5322
  %5578 = fadd fast float %5575, %5323
  %5579 = fsub fast float %5506, %5324
  %5580 = fsub fast float %5507, %5325
  %5581 = fsub fast float %5508, %5326
  %5582 = fmul fast float %5579, %5469
  %5583 = fmul fast float %5580, %5469
  %5584 = fmul fast float %5581, %5469
  %5585 = fadd fast float %5582, %5324
  %5586 = fadd fast float %5583, %5325
  %5587 = fadd fast float %5584, %5326
  %5588 = fadd fast float %5560, %5327
  %5589 = fadd fast float %5561, %5328
  %5590 = fadd fast float %5562, %5329
  %5591 = call float @dx.op.dot3.f32(i32 55, float %5588, float %5589, float %5590, float %5588, float %5589, float %5590)  ; Dot3(ax,ay,az,bx,by,bz)
  %5592 = call float @dx.op.unary.f32(i32 25, float %5591)  ; Rsqrt(value)
  %5593 = fmul fast float %5592, %5588
  %5594 = fmul fast float %5592, %5589
  %5595 = fmul fast float %5592, %5590
  %5596 = fsub fast float %5593, %5327
  %5597 = fsub fast float %5594, %5328
  %5598 = fsub fast float %5595, %5329
  %5599 = fmul fast float %5596, %5469
  %5600 = fmul fast float %5597, %5469
  %5601 = fmul fast float %5598, %5469
  %5602 = fadd fast float %5599, %5327
  %5603 = fadd fast float %5600, %5328
  %5604 = fadd fast float %5601, %5329
  %5605 = call float @dx.op.binary.f32(i32 36, float %5331, float %5517)  ; FMin(a,b)
  %5606 = fsub fast float %5605, %5331
  %5607 = fmul fast float %5606, %5469
  %5608 = fadd fast float %5607, %5331
  %5609 = fsub fast float %5530, %5330
  %5610 = fmul fast float %5609, %5469
  %5611 = fadd fast float %5610, %5330
  %5612 = fsub fast float %5569, %4773
  %5613 = fsub fast float %5569, %4774
  %5614 = fsub fast float %5569, %4775
  %5615 = fmul fast float %5612, %5469
  %5616 = fmul fast float %5613, %5469
  %5617 = fmul fast float %5614, %5469
  %5618 = fadd fast float %5615, %4773
  %5619 = fadd fast float %5616, %4774
  %5620 = fadd fast float %5617, %4775
  br label %5621

; <label>:5621                                    ; preds = %5467, %5429, %5320, %5034
  %5622 = phi float [ %5576, %5467 ], [ %5321, %5429 ], [ %5321, %5320 ], [ %4769, %5034 ]
  %5623 = phi float [ %5577, %5467 ], [ %5322, %5429 ], [ %5322, %5320 ], [ %4770, %5034 ]
  %5624 = phi float [ %5578, %5467 ], [ %5323, %5429 ], [ %5323, %5320 ], [ %4771, %5034 ]
  %5625 = phi float [ %5585, %5467 ], [ %5324, %5429 ], [ %5324, %5320 ], [ %4729, %5034 ]
  %5626 = phi float [ %5586, %5467 ], [ %5325, %5429 ], [ %5325, %5320 ], [ %4730, %5034 ]
  %5627 = phi float [ %5587, %5467 ], [ %5326, %5429 ], [ %5326, %5320 ], [ %4731, %5034 ]
  %5628 = phi float [ %5602, %5467 ], [ %5327, %5429 ], [ %5327, %5320 ], [ %4687, %5034 ]
  %5629 = phi float [ %5603, %5467 ], [ %5328, %5429 ], [ %5328, %5320 ], [ %4688, %5034 ]
  %5630 = phi float [ %5604, %5467 ], [ %5329, %5429 ], [ %5329, %5320 ], [ %4689, %5034 ]
  %5631 = phi float [ %5618, %5467 ], [ %4773, %5429 ], [ %4773, %5320 ], [ %4773, %5034 ]
  %5632 = phi float [ %5619, %5467 ], [ %4774, %5429 ], [ %4774, %5320 ], [ %4774, %5034 ]
  %5633 = phi float [ %5620, %5467 ], [ %4775, %5429 ], [ %4775, %5320 ], [ %4775, %5034 ]
  %5634 = phi float [ %5611, %5467 ], [ %5330, %5429 ], [ %5330, %5320 ], [ %4732, %5034 ]
  %5635 = phi float [ %5608, %5467 ], [ %5331, %5429 ], [ %5331, %5320 ], [ %4705, %5034 ]
  %5636 = fcmp fast une float %5039, 0.000000e+00
  %5637 = call float @dx.op.dot3.f32(i32 55, float %190, float %191, float %192, float %190, float %191, float %192)  ; Dot3(ax,ay,az,bx,by,bz)
  %5638 = call float @dx.op.unary.f32(i32 25, float %5637)  ; Rsqrt(value)
  br i1 %5636, label %5646, label %5639

; <label>:5639                                    ; preds = %5621
  %5640 = fmul fast float %5638, %190
  %5641 = fmul fast float %5638, %191
  %5642 = fmul fast float %5638, %192
  %5643 = fsub fast float -0.000000e+00, %5640
  %5644 = fsub fast float -0.000000e+00, %5641
  %5645 = fsub fast float -0.000000e+00, %5642
  br label %6006

; <label>:5646                                    ; preds = %5621
  %5647 = fmul fast float %190, %5638
  %5648 = fsub fast float -0.000000e+00, %5647
  %5649 = fmul fast float %191, %5638
  %5650 = fsub fast float -0.000000e+00, %5649
  %5651 = fmul fast float %192, %5638
  %5652 = fsub fast float -0.000000e+00, %5651
  %5653 = call float @dx.op.dot3.f32(i32 55, float %5648, float %5650, float %5652, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %5654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5655 = fmul fast float %5039, 2.500000e+00
  %5656 = call float @dx.op.unary.f32(i32 7, float %5655)  ; Saturate(value)
  %5657 = fmul fast float %5039, 0x4013FFFFE0000000
  %5658 = fadd fast float %5657, 0xBFFFFFFFE0000000
  %5659 = call float @dx.op.unary.f32(i32 7, float %5658)  ; Saturate(value)
  %5660 = fmul fast float %5039, 0x4004000020000000
  %5661 = fadd fast float %5660, 0xBFF8000040000000
  %5662 = call float @dx.op.unary.f32(i32 7, float %5661)  ; Saturate(value)
  %5663 = fmul fast float %4711, 1.000000e+01
  %5664 = call float @dx.op.unary.f32(i32 7, float %5663)  ; Saturate(value)
  %5665 = fmul fast float %5664, 2.000000e+00
  %5666 = fsub fast float 3.000000e+00, %5665
  %5667 = fmul fast float %5664, %5664
  %5668 = fmul fast float %5667, %5666
  %5669 = fsub fast float 1.000000e+00, %5668
  %5670 = fsub fast float 0x3FE3333340000000, %5634
  %5671 = fmul fast float %5670, 0x400AAAAAA0000000
  %5672 = call float @dx.op.unary.f32(i32 7, float %5671)  ; Saturate(value)
  %5673 = fmul fast float %5669, %5672
  %5674 = fmul fast float %5622, 0x3FEA2B8620000000
  %5675 = fmul fast float %5623, 0x3FEA2B8620000000
  %5676 = fmul fast float %5624, 0x3FEA2B8620000000
  %5677 = fadd fast float %5674, 0x3FC81DFBA0000000
  %5678 = fmul fast float %5677, %5622
  %5679 = fadd fast float %5678, 0x3F910E6020000000
  %5680 = fadd fast float %5675, 0x3FC81DFBA0000000
  %5681 = fmul fast float %5680, %5623
  %5682 = fadd fast float %5681, 0x3F910E6020000000
  %5683 = fadd fast float %5676, 0x3FC81DFBA0000000
  %5684 = fmul fast float %5683, %5624
  %5685 = fadd fast float %5684, 0x3F910E6020000000
  %5686 = call float @dx.op.unary.f32(i32 7, float %5679)  ; Saturate(value)
  %5687 = call float @dx.op.unary.f32(i32 7, float %5682)  ; Saturate(value)
  %5688 = call float @dx.op.unary.f32(i32 7, float %5685)  ; Saturate(value)
  %5689 = fsub fast float %5686, %5622
  %5690 = fsub fast float %5687, %5623
  %5691 = fsub fast float %5688, %5624
  %5692 = fmul fast float %5689, %5656
  %5693 = fmul fast float %5692, %5673
  %5694 = fmul fast float %5690, %5656
  %5695 = fmul fast float %5694, %5673
  %5696 = fmul fast float %5691, %5656
  %5697 = fmul fast float %5696, %5673
  %5698 = fadd fast float %5693, %5622
  %5699 = fadd fast float %5695, %5623
  %5700 = fadd fast float %5697, %5624
  %5701 = fmul fast float %5635, %5635
  %5702 = fmul fast float %5701, %5701
  %5703 = fadd fast float %5659, 1.000000e+00
  %5704 = fsub fast float %5703, %5673
  %5705 = call float @dx.op.unary.f32(i32 7, float %5704)  ; Saturate(value)
  %5706 = call float @dx.op.dot3.f32(i32 55, float %118, float %119, float %120, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5707 = call float @dx.op.unary.f32(i32 7, float %5706)  ; Saturate(value)
  %5708 = fsub fast float 1.000000e+00, %5702
  %5709 = call float @dx.op.binary.f32(i32 36, float %5705, float %5708)  ; FMin(a,b)
  %5710 = call float @dx.op.unary.f32(i32 7, float %5662)  ; Saturate(value)
  %5711 = call float @dx.op.binary.f32(i32 35, float %5709, float %5710)  ; FMax(a,b)
  %5712 = fadd fast float %5707, 0xBFE4CCCCC0000000
  %5713 = fmul fast float %5712, 0x4006DB6DA0000000
  %5714 = call float @dx.op.unary.f32(i32 7, float %5713)  ; Saturate(value)
  %5715 = fmul fast float %5714, 2.000000e+00
  %5716 = fsub fast float 3.000000e+00, %5715
  %5717 = bitcast float %5625 to i32
  %5718 = ashr i32 %5717, 1
  %5719 = add nsw i32 %5718, 532487669
  %5720 = bitcast i32 %5719 to float
  %5721 = fsub fast float 1.000000e+00, %5720
  %5722 = bitcast float %5721 to i32
  %5723 = sub nsw i32 2129859010, %5722
  %5724 = bitcast i32 %5723 to float
  %5725 = fmul fast float %5724, 2.000000e+00
  %5726 = bitcast float %5626 to i32
  %5727 = ashr i32 %5726, 1
  %5728 = add nsw i32 %5727, 532487669
  %5729 = bitcast i32 %5728 to float
  %5730 = fsub fast float 1.000000e+00, %5729
  %5731 = bitcast float %5730 to i32
  %5732 = sub nsw i32 2129859010, %5731
  %5733 = bitcast i32 %5732 to float
  %5734 = fmul fast float %5733, 2.000000e+00
  %5735 = bitcast float %5627 to i32
  %5736 = ashr i32 %5735, 1
  %5737 = add nsw i32 %5736, 532487669
  %5738 = bitcast i32 %5737 to float
  %5739 = fsub fast float 1.000000e+00, %5738
  %5740 = bitcast float %5739 to i32
  %5741 = sub nsw i32 2129859010, %5740
  %5742 = bitcast i32 %5741 to float
  %5743 = fmul fast float %5742, 2.000000e+00
  %5744 = fsub fast float 0x4002A9FBE0000000, %5725
  %5745 = fadd fast float %5725, 0x3FD54FDF00000000
  %5746 = bitcast float %5745 to i32
  %5747 = sub nsw i32 2129859010, %5746
  %5748 = bitcast i32 %5747 to float
  %5749 = fmul fast float %5748, %5744
  %5750 = fmul fast float %5749, %5749
  %5751 = fsub fast float 0x4002A9FBE0000000, %5734
  %5752 = fadd fast float %5734, 0x3FD54FDF00000000
  %5753 = bitcast float %5752 to i32
  %5754 = sub nsw i32 2129859010, %5753
  %5755 = bitcast i32 %5754 to float
  %5756 = fmul fast float %5755, %5751
  %5757 = fmul fast float %5756, %5756
  %5758 = fsub fast float 0x4002A9FBE0000000, %5743
  %5759 = fadd fast float %5743, 0x3FD54FDF00000000
  %5760 = bitcast float %5759 to i32
  %5761 = sub nsw i32 2129859010, %5760
  %5762 = bitcast i32 %5761 to float
  %5763 = fmul fast float %5762, %5758
  %5764 = fmul fast float %5763, %5763
  %5765 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5750)  ; FMax(a,b)
  %5766 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5757)  ; FMax(a,b)
  %5767 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5764)  ; FMax(a,b)
  %5768 = fsub fast float 1.000000e+00, %5653
  %5769 = fadd fast float %5768, %5669
  %5770 = call float @dx.op.unary.f32(i32 7, float %5769)  ; Saturate(value)
  %5771 = fsub fast float 1.000000e+00, %4858
  %5772 = fmul fast float %5711, %5771
  %5773 = fmul fast float %5714, %5714
  %5774 = fmul fast float %5773, %5772
  %5775 = fmul fast float %5774, %5716
  %5776 = fmul fast float %5771, 0xBFE99999A0000000
  %5777 = fmul fast float %5776, %5656
  %5778 = fmul fast float %5777, %5673
  %5779 = fadd fast float %5778, 1.000000e+00
  %5780 = fadd fast float %5634, -1.000000e+00
  %5781 = fmul fast float %5779, %5780
  %5782 = fadd fast float %5781, 1.000000e+00
  %5783 = fsub fast float %5765, %5625
  %5784 = fsub fast float %5766, %5626
  %5785 = fsub fast float %5767, %5627
  %5786 = fmul fast float %5775, %5783
  %5787 = fmul fast float %5775, %5784
  %5788 = fmul fast float %5775, %5785
  %5789 = fadd fast float %5786, %5625
  %5790 = fadd fast float %5787, %5626
  %5791 = fadd fast float %5788, %5627
  %5792 = fsub fast float %118, %5628
  %5793 = fsub fast float %119, %5629
  %5794 = fsub fast float %120, %5630
  %5795 = fmul fast float %5775, %5792
  %5796 = fmul fast float %5775, %5793
  %5797 = fmul fast float %5775, %5794
  %5798 = fadd fast float %5795, %5628
  %5799 = fadd fast float %5796, %5629
  %5800 = fadd fast float %5797, %5630
  %5801 = fmul fast float %5775, %5770
  %5802 = call float @dx.op.unary.f32(i32 7, float %5782)  ; Saturate(value)
  %5803 = fsub fast float 1.000000e+00, %5802
  %5804 = fmul fast float %5801, %5803
  %5805 = fadd fast float %5804, %5802
  %5806 = fsub fast float 1.000000e+00, %5635
  %5807 = fmul fast float %5775, %5806
  %5808 = fadd fast float %5807, %5635
  %5809 = fcmp fast une float %5040, 0.000000e+00
  %5810 = fcmp fast ogt float %5707, 0x3FE4CCCCC0000000
  %5811 = and i1 %5809, %5810
  br i1 %5811, label %5812, label %5998

; <label>:5812                                    ; preds = %5646
  %5813 = extractvalue %dx.types.CBufRet.f32 %5654, 1
  %5814 = fadd fast float %5813, %191
  %5815 = extractvalue %dx.types.CBufRet.f32 %5654, 0
  %5816 = fadd fast float %5815, %190
  %5817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %5818 = extractvalue %dx.types.CBufRet.f32 %5817, 3
  %5819 = fadd fast float %5818, 0x3FC0A3D700000000
  %5820 = fmul fast float %5819, 0x3FF6666660000000
  %5821 = fmul fast float %5818, 0x3FF2978D40000000
  %5822 = fmul fast float %5818, 0x3FF5BA5E40000000
  %5823 = fmul fast float %5818, 0x3FF94FDF40000000
  %5824 = call float @dx.op.unary.f32(i32 6, float %5816)  ; FAbs(value)
  %5825 = call float @dx.op.unary.f32(i32 6, float %5814)  ; FAbs(value)
  %5826 = fmul fast float %5824, 0x3F8EB851E0000000
  %5827 = fmul fast float %5825, 0x3F8EB851E0000000
  %5828 = fmul fast float %5040, 4.000000e+00
  %5829 = call float @dx.op.unary.f32(i32 7, float %5828)  ; Saturate(value)
  %5830 = fadd fast float %5826, 2.500000e-01
  %5831 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %5830, float %5827, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5832 = extractvalue %dx.types.ResRet.f32 %5831, 0
  %5833 = extractvalue %dx.types.ResRet.f32 %5831, 1
  %5834 = extractvalue %dx.types.ResRet.f32 %5831, 2
  %5835 = extractvalue %dx.types.ResRet.f32 %5831, 3
  %5836 = fmul fast float %5833, 2.000000e+00
  %5837 = fmul fast float %5834, 2.000000e+00
  %5838 = fadd fast float %5836, -1.000000e+00
  %5839 = fadd fast float %5837, -1.000000e+00
  %5840 = fsub fast float 1.000000e+00, %5829
  %5841 = fmul fast float %5840, 8.000000e+00
  %5842 = call float @dx.op.unary.f32(i32 21, float %5841)  ; Exp(value)
  %5843 = fmul fast float %5835, %5842
  %5844 = fadd fast float %5820, -1.000000e+00
  %5845 = fadd fast float %5844, %5835
  %5846 = fadd fast float %5845, %5843
  %5847 = frem fast float %5846, %5842
  %5848 = fcmp fast ole float %5847, 1.000000e+00
  %5849 = call float @dx.op.unary.f32(i32 22, float %5847)  ; Frc(value)
  %5850 = select i1 %5848, float %5849, float 0.000000e+00
  %5851 = fadd fast float %5832, -1.000000e+00
  %5852 = fadd fast float %5851, %5850
  %5853 = fsub fast float 1.000000e+00, %5850
  %5854 = call float @dx.op.unary.f32(i32 7, float %5853)  ; Saturate(value)
  %5855 = fmul fast float %5854, %5832
  %5856 = fmul fast float %5852, 8.000000e+00
  %5857 = call float @dx.op.binary.f32(i32 35, float %5856, float 0.000000e+00)  ; FMax(a,b)
  %5858 = call float @dx.op.binary.f32(i32 36, float %5857, float 4.000000e+00)  ; FMin(a,b)
  %5859 = fmul fast float %5858, 0x400921FB60000000
  %5860 = call float @dx.op.unary.f32(i32 13, float %5859)  ; Sin(value)
  %5861 = fadd fast float %5850, -1.000000e+00
  %5862 = fmul fast float %5855, %5861
  %5863 = fmul fast float %5862, %5860
  %5864 = fmul fast float %5863, %5838
  %5865 = fmul fast float %5863, %5839
  %5866 = fadd fast float %5828, -1.000000e+00
  %5867 = call float @dx.op.unary.f32(i32 7, float %5866)  ; Saturate(value)
  %5868 = fadd fast float %5826, 0xBFE19999A0000000
  %5869 = fadd fast float %5827, 0x3FD3D70A40000000
  %5870 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %5868, float %5869, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5871 = extractvalue %dx.types.ResRet.f32 %5870, 0
  %5872 = extractvalue %dx.types.ResRet.f32 %5870, 1
  %5873 = extractvalue %dx.types.ResRet.f32 %5870, 2
  %5874 = extractvalue %dx.types.ResRet.f32 %5870, 3
  %5875 = fmul fast float %5872, 2.000000e+00
  %5876 = fmul fast float %5873, 2.000000e+00
  %5877 = fadd fast float %5875, -1.000000e+00
  %5878 = fadd fast float %5876, -1.000000e+00
  %5879 = fsub fast float 1.000000e+00, %5867
  %5880 = fmul fast float %5879, 8.000000e+00
  %5881 = call float @dx.op.unary.f32(i32 21, float %5880)  ; Exp(value)
  %5882 = fmul fast float %5874, %5881
  %5883 = fadd fast float %5821, 0xBFE5B22D00000000
  %5884 = fadd fast float %5883, %5874
  %5885 = fadd fast float %5884, %5882
  %5886 = frem fast float %5885, %5881
  %5887 = fcmp fast ole float %5886, 1.000000e+00
  %5888 = call float @dx.op.unary.f32(i32 22, float %5886)  ; Frc(value)
  %5889 = select i1 %5887, float %5888, float 0.000000e+00
  %5890 = fadd fast float %5871, -1.000000e+00
  %5891 = fadd fast float %5890, %5889
  %5892 = fsub fast float 1.000000e+00, %5889
  %5893 = call float @dx.op.unary.f32(i32 7, float %5892)  ; Saturate(value)
  %5894 = fmul fast float %5893, %5871
  %5895 = fmul fast float %5891, 8.000000e+00
  %5896 = call float @dx.op.binary.f32(i32 35, float %5895, float 0.000000e+00)  ; FMax(a,b)
  %5897 = call float @dx.op.binary.f32(i32 36, float %5896, float 4.000000e+00)  ; FMin(a,b)
  %5898 = fmul fast float %5897, 0x400921FB60000000
  %5899 = call float @dx.op.unary.f32(i32 13, float %5898)  ; Sin(value)
  %5900 = fadd fast float %5889, -1.000000e+00
  %5901 = fmul fast float %5894, %5900
  %5902 = fmul fast float %5901, %5899
  %5903 = fmul fast float %5902, %5877
  %5904 = fmul fast float %5902, %5878
  %5905 = fadd fast float %5828, -2.000000e+00
  %5906 = call float @dx.op.unary.f32(i32 7, float %5905)  ; Saturate(value)
  %5907 = fadd fast float %5826, 0x3FE3333340000000
  %5908 = fadd fast float %5827, 0x3FEB333340000000
  %5909 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %5907, float %5908, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5910 = extractvalue %dx.types.ResRet.f32 %5909, 0
  %5911 = extractvalue %dx.types.ResRet.f32 %5909, 1
  %5912 = extractvalue %dx.types.ResRet.f32 %5909, 2
  %5913 = extractvalue %dx.types.ResRet.f32 %5909, 3
  %5914 = fmul fast float %5911, 2.000000e+00
  %5915 = fmul fast float %5912, 2.000000e+00
  %5916 = fadd fast float %5914, -1.000000e+00
  %5917 = fadd fast float %5915, -1.000000e+00
  %5918 = fsub fast float 1.000000e+00, %5906
  %5919 = fmul fast float %5918, 8.000000e+00
  %5920 = call float @dx.op.unary.f32(i32 21, float %5919)  ; Exp(value)
  %5921 = fmul fast float %5913, %5920
  %5922 = fadd fast float %5822, 0xBFD5E35400000000
  %5923 = fadd fast float %5922, %5913
  %5924 = fadd fast float %5923, %5921
  %5925 = frem fast float %5924, %5920
  %5926 = fcmp fast ole float %5925, 1.000000e+00
  %5927 = call float @dx.op.unary.f32(i32 22, float %5925)  ; Frc(value)
  %5928 = select i1 %5926, float %5927, float 0.000000e+00
  %5929 = fadd fast float %5910, -1.000000e+00
  %5930 = fadd fast float %5929, %5928
  %5931 = fsub fast float 1.000000e+00, %5928
  %5932 = call float @dx.op.unary.f32(i32 7, float %5931)  ; Saturate(value)
  %5933 = fmul fast float %5932, %5910
  %5934 = fmul fast float %5930, 8.000000e+00
  %5935 = call float @dx.op.binary.f32(i32 35, float %5934, float 0.000000e+00)  ; FMax(a,b)
  %5936 = call float @dx.op.binary.f32(i32 36, float %5935, float 4.000000e+00)  ; FMin(a,b)
  %5937 = fmul fast float %5936, 0x400921FB60000000
  %5938 = call float @dx.op.unary.f32(i32 13, float %5937)  ; Sin(value)
  %5939 = fadd fast float %5928, -1.000000e+00
  %5940 = fmul fast float %5933, %5939
  %5941 = fmul fast float %5940, %5938
  %5942 = fmul fast float %5941, %5916
  %5943 = fmul fast float %5941, %5917
  %5944 = fadd fast float %5828, -3.000000e+00
  %5945 = call float @dx.op.unary.f32(i32 7, float %5944)  ; Saturate(value)
  %5946 = fadd fast float %5826, 5.000000e-01
  %5947 = fadd fast float %5827, -7.500000e-01
  %5948 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %5946, float %5947, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5949 = extractvalue %dx.types.ResRet.f32 %5948, 0
  %5950 = extractvalue %dx.types.ResRet.f32 %5948, 1
  %5951 = extractvalue %dx.types.ResRet.f32 %5948, 2
  %5952 = extractvalue %dx.types.ResRet.f32 %5948, 3
  %5953 = fmul fast float %5950, 2.000000e+00
  %5954 = fmul fast float %5951, 2.000000e+00
  %5955 = fadd fast float %5953, -1.000000e+00
  %5956 = fadd fast float %5954, -1.000000e+00
  %5957 = fsub fast float 1.000000e+00, %5945
  %5958 = fmul fast float %5957, 8.000000e+00
  %5959 = call float @dx.op.unary.f32(i32 21, float %5958)  ; Exp(value)
  %5960 = fmul fast float %5952, %5959
  %5961 = fadd fast float %5823, 0xBF78938000000000
  %5962 = fadd fast float %5961, %5952
  %5963 = fadd fast float %5962, %5960
  %5964 = frem fast float %5963, %5959
  %5965 = fcmp fast ole float %5964, 1.000000e+00
  %5966 = call float @dx.op.unary.f32(i32 22, float %5964)  ; Frc(value)
  %5967 = select i1 %5965, float %5966, float 0.000000e+00
  %5968 = fadd fast float %5949, -1.000000e+00
  %5969 = fadd fast float %5968, %5967
  %5970 = fsub fast float 1.000000e+00, %5967
  %5971 = call float @dx.op.unary.f32(i32 7, float %5970)  ; Saturate(value)
  %5972 = fmul fast float %5971, %5949
  %5973 = fmul fast float %5969, 8.000000e+00
  %5974 = call float @dx.op.binary.f32(i32 35, float %5973, float 0.000000e+00)  ; FMax(a,b)
  %5975 = call float @dx.op.binary.f32(i32 36, float %5974, float 4.000000e+00)  ; FMin(a,b)
  %5976 = fmul fast float %5975, 0x400921FB60000000
  %5977 = call float @dx.op.unary.f32(i32 13, float %5976)  ; Sin(value)
  %5978 = fadd fast float %5967, -1.000000e+00
  %5979 = fmul fast float %5972, %5978
  %5980 = fmul fast float %5979, %5977
  %5981 = fmul fast float %5980, %5955
  %5982 = fmul fast float %5980, %5956
  %5983 = fadd fast float %5903, %5864
  %5984 = fadd fast float %5904, %5865
  %5985 = fadd fast float %5983, %5942
  %5986 = fadd fast float %5984, %5943
  %5987 = fadd fast float %5985, %5981
  %5988 = fadd fast float %5986, %5982
  %5989 = fmul fast float %5707, 0x4006DB6DA0000000
  %5990 = fadd fast float %5989, 0xBFFDB6DB40000000
  %5991 = call float @dx.op.unary.f32(i32 7, float %5990)  ; Saturate(value)
  %5992 = fmul fast float %5991, %5656
  %5993 = fmul fast float %5992, %5771
  %5994 = fmul fast float %5993, %5987
  %5995 = fmul fast float %5993, %5988
  %5996 = fadd fast float %5994, %5798
  %5997 = fadd fast float %5995, %5799
  br label %5998

; <label>:5998                                    ; preds = %5812, %5646
  %5999 = phi float [ %5798, %5646 ], [ %5996, %5812 ]
  %6000 = phi float [ %5799, %5646 ], [ %5997, %5812 ]
  %6001 = call float @dx.op.dot3.f32(i32 55, float %5999, float %6000, float %5800, float %5999, float %6000, float %5800)  ; Dot3(ax,ay,az,bx,by,bz)
  %6002 = call float @dx.op.unary.f32(i32 25, float %6001)  ; Rsqrt(value)
  %6003 = fmul fast float %6002, %5999
  %6004 = fmul fast float %6002, %6000
  %6005 = fmul fast float %6002, %5800
  br label %6006

; <label>:6006                                    ; preds = %5998, %5639
  %6007 = phi float [ %5645, %5639 ], [ %5652, %5998 ]
  %6008 = phi float [ %5644, %5639 ], [ %5650, %5998 ]
  %6009 = phi float [ %5643, %5639 ], [ %5648, %5998 ]
  %6010 = phi float [ %5642, %5639 ], [ %5651, %5998 ]
  %6011 = phi float [ %5641, %5639 ], [ %5649, %5998 ]
  %6012 = phi float [ %5640, %5639 ], [ %5647, %5998 ]
  %6013 = phi float [ %5622, %5639 ], [ %5698, %5998 ]
  %6014 = phi float [ %5623, %5639 ], [ %5699, %5998 ]
  %6015 = phi float [ %5624, %5639 ], [ %5700, %5998 ]
  %6016 = phi float [ %5625, %5639 ], [ %5789, %5998 ]
  %6017 = phi float [ %5626, %5639 ], [ %5790, %5998 ]
  %6018 = phi float [ %5627, %5639 ], [ %5791, %5998 ]
  %6019 = phi float [ %5628, %5639 ], [ %6003, %5998 ]
  %6020 = phi float [ %5629, %5639 ], [ %6004, %5998 ]
  %6021 = phi float [ %5630, %5639 ], [ %6005, %5998 ]
  %6022 = phi float [ %5634, %5639 ], [ %5805, %5998 ]
  %6023 = phi float [ %5635, %5639 ], [ %5808, %5998 ]
  %6024 = select i1 %264, float 0.000000e+00, float %6018
  %6025 = call float @dx.op.dot3.f32(i32 55, float %6019, float %6020, float %6021, float %6009, float %6008, float %6007)  ; Dot3(ax,ay,az,bx,by,bz)
  %6026 = call float @dx.op.unary.f32(i32 7, float %6025)  ; Saturate(value)
  %6027 = call float @dx.op.dot3.f32(i32 55, float %6012, float %6011, float %6010, float %6019, float %6020, float %6021)  ; Dot3(ax,ay,az,bx,by,bz)
  %6028 = fmul fast float %6027, 2.000000e+00
  %6029 = fmul fast float %6028, %6019
  %6030 = fmul fast float %6028, %6020
  %6031 = fmul fast float %6028, %6021
  %6032 = fsub fast float %6012, %6029
  %6033 = fsub fast float %6011, %6030
  %6034 = fsub fast float %6010, %6031
  %6035 = call float @dx.op.binary.f32(i32 36, float %6023, float 1.000000e+00)  ; FMin(a,b)
  %6036 = fsub fast float 1.000000e+00, %6035
  %6037 = bitcast float %6036 to i32
  %6038 = ashr i32 %6037, 1
  %6039 = add nsw i32 %6038, 532487669
  %6040 = bitcast i32 %6039 to float
  %6041 = fsub fast float 1.000000e+00, %6022
  %6042 = call float @dx.op.binary.f32(i32 35, float %6041, float 0x3F847AE140000000)  ; FMax(a,b)
  %6043 = fmul fast float %6042, %6042
  %6044 = fmul fast float %6043, %6043
  %6045 = call float @dx.op.unary.f32(i32 7, float %6026)  ; Saturate(value)
  %6046 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %45, float %6040, float %6044, float %6045, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6047 = extractvalue %dx.types.ResRet.f32 %6046, 0
  %6048 = fsub fast float 1.000000e+00, %6023
  %6049 = bitcast float %6048 to i32
  %6050 = sub nsw i32 2129859010, %6049
  %6051 = bitcast i32 %6050 to float
  %6052 = call float @dx.op.dot3.f32(i32 55, float %78, float %74, float %70, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6053 = fmul fast float %6052, 0x3FD20DD760000000
  %6054 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %78)  ; FMax(a,b)
  %6055 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %6056 = fcmp fast oeq float %6055, 0.000000e+00
  %6057 = fcmp fast oeq float %6054, 0.000000e+00
  %6058 = or i1 %6057, %6056
  br i1 %6058, label %6088, label %6059

; <label>:6059                                    ; preds = %6006
  %6060 = fsub fast float -0.000000e+00, %81
  %6061 = fsub fast float -0.000000e+00, %79
  %6062 = call float @dx.op.unary.f32(i32 24, float %6055)  ; Sqrt(value)
  %6063 = fdiv fast float %6062, %6054
  %6064 = fcmp fast ogt float %6063, 0x3FFB6F8900000000
  %6065 = select i1 %6064, float 0x3FFB6F8900000000, float %6063
  %6066 = fmul fast float %6065, 0x3FE8A23460000000
  %6067 = call float @dx.op.unary.f32(i32 7, float %6066)  ; Saturate(value)
  %6068 = call float @dx.op.binary.f32(i32 35, float %6065, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %6069 = fmul fast float %6067, %6054
  %6070 = fmul fast float %6068, 0x3FF279A740000000
  %6071 = fadd fast float %6070, -1.000000e+00
  %6072 = call float @dx.op.dot3.f32(i32 55, float %6060, float %6061, float %80, float %6060, float %6061, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %6073 = call float @dx.op.unary.f32(i32 25, float %6072)  ; Rsqrt(value)
  %6074 = fmul fast float %6073, %6060
  %6075 = fmul fast float %6073, %6061
  %6076 = fmul fast float %6073, %80
  %6077 = fmul fast float %6071, %6071
  %6078 = fsub fast float 1.000000e+00, %6077
  %6079 = fmul fast float %6068, 0x40005F8BE0000000
  %6080 = fsub fast float 0x400C5BF8A0000000, %6079
  %6081 = fdiv fast float %6069, %6080
  %6082 = fmul fast float %6081, 0x3FEE31C3C0000000
  %6083 = fmul fast float %6082, %6078
  %6084 = fmul fast float %6068, 0x3FDACB7480000000
  %6085 = fadd fast float %6084, 0xBFD7347680000000
  %6086 = fmul fast float %6085, %6081
  %6087 = fmul fast float %6086, %6078
  br label %6088

; <label>:6088                                    ; preds = %6059, %6006
  %6089 = phi float [ %6074, %6059 ], [ 0.000000e+00, %6006 ]
  %6090 = phi float [ %6075, %6059 ], [ 0.000000e+00, %6006 ]
  %6091 = phi float [ %6076, %6059 ], [ 0.000000e+00, %6006 ]
  %6092 = phi float [ %6083, %6059 ], [ 0.000000e+00, %6006 ]
  %6093 = phi float [ %6087, %6059 ], [ 0.000000e+00, %6006 ]
  %6094 = call float @dx.op.dot3.f32(i32 55, float %6089, float %6090, float %6091, float %6019, float %6020, float %6021)  ; Dot3(ax,ay,az,bx,by,bz)
  %6095 = fmul fast float %6094, 0x3FDF454380000000
  %6096 = fmul fast float %6094, %6094
  %6097 = fmul fast float %6096, 0x3FEE471020000000
  %6098 = fadd fast float %6097, 0xBFD42F6020000000
  %6099 = fmul fast float %6054, 0x3FD20DD760000000
  %6100 = fmul fast float %6098, %6093
  %6101 = fadd fast float %6100, %6099
  %6102 = fmul fast float %6095, %6092
  %6103 = fadd fast float %6101, %6102
  %6104 = fsub fast float %6101, %6102
  %6105 = call float @dx.op.dot3.f32(i32 55, float %6089, float %6090, float %6091, float %6032, float %6033, float %6034)  ; Dot3(ax,ay,az,bx,by,bz)
  %6106 = fmul fast float %6105, 0x3FDF454380000000
  %6107 = fmul fast float %6105, %6105
  %6108 = fmul fast float %6107, 0x3FEE471020000000
  %6109 = fadd fast float %6108, 0xBFD42F6020000000
  %6110 = call float @dx.op.dot3.f32(i32 55, float %6054, float %6092, float %6093, float 0x3FD20DD760000000, float %6106, float %6109)  ; Dot3(ax,ay,az,bx,by,bz)
  %6111 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %74)  ; FMax(a,b)
  %6112 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %6113 = fcmp fast oeq float %6112, 0.000000e+00
  %6114 = fcmp fast oeq float %6111, 0.000000e+00
  %6115 = or i1 %6114, %6113
  br i1 %6115, label %6145, label %6116

; <label>:6116                                    ; preds = %6088
  %6117 = fsub fast float -0.000000e+00, %77
  %6118 = fsub fast float -0.000000e+00, %75
  %6119 = call float @dx.op.unary.f32(i32 24, float %6112)  ; Sqrt(value)
  %6120 = fdiv fast float %6119, %6111
  %6121 = fcmp fast ogt float %6120, 0x3FFB6F8900000000
  %6122 = select i1 %6121, float 0x3FFB6F8900000000, float %6120
  %6123 = fmul fast float %6122, 0x3FE8A23460000000
  %6124 = call float @dx.op.unary.f32(i32 7, float %6123)  ; Saturate(value)
  %6125 = call float @dx.op.binary.f32(i32 35, float %6122, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %6126 = fmul fast float %6124, %6111
  %6127 = fmul fast float %6125, 0x3FF279A740000000
  %6128 = fadd fast float %6127, -1.000000e+00
  %6129 = call float @dx.op.dot3.f32(i32 55, float %6117, float %6118, float %76, float %6117, float %6118, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %6130 = call float @dx.op.unary.f32(i32 25, float %6129)  ; Rsqrt(value)
  %6131 = fmul fast float %6130, %6117
  %6132 = fmul fast float %6130, %6118
  %6133 = fmul fast float %6130, %76
  %6134 = fmul fast float %6128, %6128
  %6135 = fsub fast float 1.000000e+00, %6134
  %6136 = fmul fast float %6125, 0x40005F8BE0000000
  %6137 = fsub fast float 0x400C5BF8A0000000, %6136
  %6138 = fdiv fast float %6126, %6137
  %6139 = fmul fast float %6138, 0x3FEE31C3C0000000
  %6140 = fmul fast float %6139, %6135
  %6141 = fmul fast float %6125, 0x3FDACB7480000000
  %6142 = fadd fast float %6141, 0xBFD7347680000000
  %6143 = fmul fast float %6142, %6138
  %6144 = fmul fast float %6143, %6135
  br label %6145

; <label>:6145                                    ; preds = %6116, %6088
  %6146 = phi float [ %6131, %6116 ], [ 0.000000e+00, %6088 ]
  %6147 = phi float [ %6132, %6116 ], [ 0.000000e+00, %6088 ]
  %6148 = phi float [ %6133, %6116 ], [ 0.000000e+00, %6088 ]
  %6149 = phi float [ %6140, %6116 ], [ 0.000000e+00, %6088 ]
  %6150 = phi float [ %6144, %6116 ], [ 0.000000e+00, %6088 ]
  %6151 = call float @dx.op.dot3.f32(i32 55, float %6146, float %6147, float %6148, float %6019, float %6020, float %6021)  ; Dot3(ax,ay,az,bx,by,bz)
  %6152 = fmul fast float %6151, 0x3FDF454380000000
  %6153 = fmul fast float %6151, %6151
  %6154 = fmul fast float %6153, 0x3FEE471020000000
  %6155 = fadd fast float %6154, 0xBFD42F6020000000
  %6156 = fmul fast float %6111, 0x3FD20DD760000000
  %6157 = fmul fast float %6155, %6150
  %6158 = fadd fast float %6157, %6156
  %6159 = fmul fast float %6152, %6149
  %6160 = fadd fast float %6158, %6159
  %6161 = fsub fast float %6158, %6159
  %6162 = call float @dx.op.dot3.f32(i32 55, float %6146, float %6147, float %6148, float %6032, float %6033, float %6034)  ; Dot3(ax,ay,az,bx,by,bz)
  %6163 = fmul fast float %6162, 0x3FDF454380000000
  %6164 = fmul fast float %6162, %6162
  %6165 = fmul fast float %6164, 0x3FEE471020000000
  %6166 = fadd fast float %6165, 0xBFD42F6020000000
  %6167 = call float @dx.op.dot3.f32(i32 55, float %6111, float %6149, float %6150, float 0x3FD20DD760000000, float %6163, float %6166)  ; Dot3(ax,ay,az,bx,by,bz)
  %6168 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %70)  ; FMax(a,b)
  %6169 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float %71, float %72, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %6170 = fcmp fast oeq float %6169, 0.000000e+00
  %6171 = fcmp fast oeq float %6168, 0.000000e+00
  %6172 = or i1 %6171, %6170
  br i1 %6172, label %6202, label %6173

; <label>:6173                                    ; preds = %6145
  %6174 = fsub fast float -0.000000e+00, %73
  %6175 = fsub fast float -0.000000e+00, %71
  %6176 = call float @dx.op.unary.f32(i32 24, float %6169)  ; Sqrt(value)
  %6177 = fdiv fast float %6176, %6168
  %6178 = fcmp fast ogt float %6177, 0x3FFB6F8900000000
  %6179 = select i1 %6178, float 0x3FFB6F8900000000, float %6177
  %6180 = fmul fast float %6179, 0x3FE8A23460000000
  %6181 = call float @dx.op.unary.f32(i32 7, float %6180)  ; Saturate(value)
  %6182 = call float @dx.op.binary.f32(i32 35, float %6179, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %6183 = fmul fast float %6181, %6168
  %6184 = fmul fast float %6182, 0x3FF279A740000000
  %6185 = fadd fast float %6184, -1.000000e+00
  %6186 = call float @dx.op.dot3.f32(i32 55, float %6174, float %6175, float %72, float %6174, float %6175, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %6187 = call float @dx.op.unary.f32(i32 25, float %6186)  ; Rsqrt(value)
  %6188 = fmul fast float %6187, %6174
  %6189 = fmul fast float %6187, %6175
  %6190 = fmul fast float %6187, %72
  %6191 = fmul fast float %6185, %6185
  %6192 = fsub fast float 1.000000e+00, %6191
  %6193 = fmul fast float %6182, 0x40005F8BE0000000
  %6194 = fsub fast float 0x400C5BF8A0000000, %6193
  %6195 = fdiv fast float %6183, %6194
  %6196 = fmul fast float %6195, 0x3FEE31C3C0000000
  %6197 = fmul fast float %6196, %6192
  %6198 = fmul fast float %6182, 0x3FDACB7480000000
  %6199 = fadd fast float %6198, 0xBFD7347680000000
  %6200 = fmul fast float %6199, %6195
  %6201 = fmul fast float %6200, %6192
  br label %6202

; <label>:6202                                    ; preds = %6173, %6145
  %6203 = phi float [ %6188, %6173 ], [ 0.000000e+00, %6145 ]
  %6204 = phi float [ %6189, %6173 ], [ 0.000000e+00, %6145 ]
  %6205 = phi float [ %6190, %6173 ], [ 0.000000e+00, %6145 ]
  %6206 = phi float [ %6197, %6173 ], [ 0.000000e+00, %6145 ]
  %6207 = phi float [ %6201, %6173 ], [ 0.000000e+00, %6145 ]
  %6208 = call float @dx.op.dot3.f32(i32 55, float %6203, float %6204, float %6205, float %6019, float %6020, float %6021)  ; Dot3(ax,ay,az,bx,by,bz)
  %6209 = fmul fast float %6208, 0x3FDF454380000000
  %6210 = fmul fast float %6208, %6208
  %6211 = fmul fast float %6210, 0x3FEE471020000000
  %6212 = fadd fast float %6211, 0xBFD42F6020000000
  %6213 = fmul fast float %6168, 0x3FD20DD760000000
  %6214 = fmul fast float %6212, %6207
  %6215 = fadd fast float %6214, %6213
  %6216 = fmul fast float %6209, %6206
  %6217 = fadd fast float %6215, %6216
  %6218 = fsub fast float %6215, %6216
  %6219 = call float @dx.op.dot3.f32(i32 55, float %6203, float %6204, float %6205, float %6032, float %6033, float %6034)  ; Dot3(ax,ay,az,bx,by,bz)
  %6220 = fmul fast float %6219, 0x3FDF454380000000
  %6221 = fmul fast float %6219, %6219
  %6222 = fmul fast float %6221, 0x3FEE471020000000
  %6223 = fadd fast float %6222, 0xBFD42F6020000000
  %6224 = call float @dx.op.dot3.f32(i32 55, float %6168, float %6206, float %6207, float 0x3FD20DD760000000, float %6220, float %6223)  ; Dot3(ax,ay,az,bx,by,bz)
  %6225 = call float @dx.op.binary.f32(i32 35, float %6103, float 0.000000e+00)  ; FMax(a,b)
  %6226 = call float @dx.op.binary.f32(i32 35, float %6160, float 0.000000e+00)  ; FMax(a,b)
  %6227 = call float @dx.op.binary.f32(i32 35, float %6217, float 0.000000e+00)  ; FMax(a,b)
  %6228 = call float @dx.op.binary.f32(i32 35, float %6104, float 0.000000e+00)  ; FMax(a,b)
  %6229 = call float @dx.op.binary.f32(i32 35, float %6161, float 0.000000e+00)  ; FMax(a,b)
  %6230 = call float @dx.op.binary.f32(i32 35, float %6218, float 0.000000e+00)  ; FMax(a,b)
  %6231 = call float @dx.op.binary.f32(i32 35, float %6110, float 0.000000e+00)  ; FMax(a,b)
  %6232 = call float @dx.op.binary.f32(i32 35, float %6167, float 0.000000e+00)  ; FMax(a,b)
  %6233 = call float @dx.op.binary.f32(i32 35, float %6224, float 0.000000e+00)  ; FMax(a,b)
  %6234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %6235 = extractvalue %dx.types.CBufRet.f32 %6234, 0
  %6236 = call float @dx.op.binary.f32(i32 36, float %6013, float %6235)  ; FMin(a,b)
  %6237 = fmul fast float %6236, %6036
  %6238 = fsub fast float 1.000000e+00, %6237
  %6239 = bitcast float %6238 to i32
  %6240 = sub nsw i32 2129859010, %6239
  %6241 = bitcast i32 %6240 to float
  %6242 = call float @dx.op.binary.f32(i32 36, float %6014, float %6235)  ; FMin(a,b)
  %6243 = fmul fast float %6242, %6036
  %6244 = fsub fast float 1.000000e+00, %6243
  %6245 = bitcast float %6244 to i32
  %6246 = sub nsw i32 2129859010, %6245
  %6247 = bitcast i32 %6246 to float
  %6248 = call float @dx.op.binary.f32(i32 36, float %6015, float %6235)  ; FMin(a,b)
  %6249 = fmul fast float %6248, %6036
  %6250 = fsub fast float 1.000000e+00, %6249
  %6251 = bitcast float %6250 to i32
  %6252 = sub nsw i32 2129859010, %6251
  %6253 = bitcast i32 %6252 to float
  %6254 = fmul fast float %6225, %6035
  %6255 = fmul fast float %6254, %6241
  %6256 = fmul fast float %6226, %6035
  %6257 = fmul fast float %6256, %6247
  %6258 = fmul fast float %6227, %6035
  %6259 = fmul fast float %6258, %6253
  %6260 = call float @dx.op.binary.f32(i32 36, float %6016, float %6235)  ; FMin(a,b)
  %6261 = fmul fast float %6260, %6036
  %6262 = fsub fast float 1.000000e+00, %6261
  %6263 = bitcast float %6262 to i32
  %6264 = sub nsw i32 2129859010, %6263
  %6265 = bitcast i32 %6264 to float
  %6266 = call float @dx.op.binary.f32(i32 36, float %6017, float %6235)  ; FMin(a,b)
  %6267 = fmul fast float %6266, %6036
  %6268 = fsub fast float 1.000000e+00, %6267
  %6269 = bitcast float %6268 to i32
  %6270 = sub nsw i32 2129859010, %6269
  %6271 = bitcast i32 %6270 to float
  %6272 = call float @dx.op.binary.f32(i32 36, float %6024, float %6235)  ; FMin(a,b)
  %6273 = fmul fast float %6272, %6036
  %6274 = fsub fast float 1.000000e+00, %6273
  %6275 = bitcast float %6274 to i32
  %6276 = sub nsw i32 2129859010, %6275
  %6277 = bitcast i32 %6276 to float
  %6278 = fmul fast float %6231, %6035
  %6279 = fmul fast float %6278, %6265
  %6280 = fmul fast float %6232, %6035
  %6281 = fmul fast float %6280, %6271
  %6282 = fmul fast float %6233, %6035
  %6283 = fmul fast float %6282, %6277
  %6284 = call float @dx.op.dot3.f32(i32 55, float %6255, float %6257, float %6259, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6285 = select i1 %264, float 0.000000e+00, float %6255
  %6286 = select i1 %264, float %6284, float %6257
  %6287 = select i1 %264, float 0.000000e+00, float %6259
  %6288 = call float @dx.op.dot3.f32(i32 55, float %6228, float %6229, float %6230, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6289 = select i1 %264, float 0.000000e+00, float %6228
  %6290 = select i1 %264, float %6288, float %6229
  %6291 = select i1 %264, float 0.000000e+00, float %6230
  %6292 = call float @dx.op.dot3.f32(i32 55, float %6279, float %6281, float %6283, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6293 = select i1 %264, float 0.000000e+00, float %6279
  %6294 = select i1 %264, float %6292, float %6281
  %6295 = select i1 %264, float 0.000000e+00, float %6283
  %6296 = fmul fast float %4005, %4005
  %6297 = call float @dx.op.unary.f32(i32 7, float %6296)  ; Saturate(value)
  %6298 = fmul fast float %6026, 9.843750e-01
  %6299 = fmul fast float %6022, 9.843750e-01
  %6300 = fadd fast float %6298, 7.812500e-03
  %6301 = fadd fast float %6299, 7.812500e-03
  %6302 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %45, float %6300, float %6301, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6303 = extractvalue %dx.types.ResRet.f32 %6302, 0
  %6304 = extractvalue %dx.types.ResRet.f32 %6302, 1
  %6305 = extractvalue %dx.types.ResRet.f32 %6302, 2
  %6306 = extractvalue %dx.types.ResRet.f32 %6302, 3
  %6307 = fsub fast float 1.000000e+00, %6297
  %6308 = fsub fast float %6305, %6303
  %6309 = fsub fast float %6306, %6304
  %6310 = fmul fast float %6308, %6307
  %6311 = fmul fast float %6309, %6307
  %6312 = fadd fast float %6310, %6303
  %6313 = fadd fast float %6311, %6304
  %6314 = fmul fast float %6312, %6016
  %6315 = fmul fast float %6312, %6017
  %6316 = fmul fast float %6312, %6024
  %6317 = fadd fast float %6314, %6313
  %6318 = fadd fast float %6315, %6313
  %6319 = fadd fast float %6316, %6313
  %6320 = fcmp fast ogt float %4706, 0.000000e+00
  br i1 %6320, label %6321, label %6347

; <label>:6321                                    ; preds = %6202
  %6322 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %4706, float %6026, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6323 = extractvalue %dx.types.ResRet.f32 %6322, 0
  %6324 = extractvalue %dx.types.ResRet.f32 %6322, 1
  %6325 = extractvalue %dx.types.ResRet.f32 %6322, 2
  %6326 = fadd fast float %6323, -5.000000e-01
  %6327 = fadd fast float %6324, -5.000000e-01
  %6328 = fadd fast float %6325, -5.000000e-01
  %6329 = fsub fast float 1.000000e+00, %6016
  %6330 = fsub fast float 1.000000e+00, %6017
  %6331 = fsub fast float 1.000000e+00, %6024
  %6332 = fmul fast float %6016, 4.000000e+00
  %6333 = fmul fast float %6332, %6329
  %6334 = fmul fast float %6333, %6326
  %6335 = fmul fast float %6017, 4.000000e+00
  %6336 = fmul fast float %6335, %6330
  %6337 = fmul fast float %6336, %6327
  %6338 = fmul fast float %6024, 4.000000e+00
  %6339 = fmul fast float %6338, %6331
  %6340 = fmul fast float %6339, %6328
  %6341 = fadd fast float %6334, %6317
  %6342 = fadd fast float %6337, %6318
  %6343 = fadd fast float %6340, %6319
  %6344 = call float @dx.op.unary.f32(i32 7, float %6341)  ; Saturate(value)
  %6345 = call float @dx.op.unary.f32(i32 7, float %6342)  ; Saturate(value)
  %6346 = call float @dx.op.unary.f32(i32 7, float %6343)  ; Saturate(value)
  br label %6347

; <label>:6347                                    ; preds = %6321, %6202
  %6348 = phi float [ %6344, %6321 ], [ %6317, %6202 ]
  %6349 = phi float [ %6345, %6321 ], [ %6318, %6202 ]
  %6350 = phi float [ %6346, %6321 ], [ %6319, %6202 ]
  %6351 = call float @dx.op.binary.f32(i32 35, float %6349, float %6350)  ; FMax(a,b)
  %6352 = call float @dx.op.binary.f32(i32 35, float %6348, float %6351)  ; FMax(a,b)
  %6353 = fsub fast float 1.000000e+00, %6352
  %6354 = fmul fast float %6352, %6022
  %6355 = fadd fast float %6354, %6022
  %6356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %6357 = extractvalue %dx.types.CBufRet.f32 %6356, 2
  %6358 = extractvalue %dx.types.CBufRet.f32 %6356, 3
  %6359 = fmul fast float %6355, %6357
  %6360 = fadd fast float %6359, %6358
  %6361 = call float @dx.op.unary.f32(i32 7, float %6360)  ; Saturate(value)
  %6362 = fsub fast float 1.000000e+00, %6047
  %6363 = fadd fast float %6362, %6361
  %6364 = call float @dx.op.unary.f32(i32 7, float %6363)  ; Saturate(value)
  %6365 = fcmp fast olt float %6364, 1.000000e+00
  br i1 %6365, label %6366, label %6814

; <label>:6366                                    ; preds = %6347
  %6367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6368 = extractvalue %dx.types.CBufRet.f32 %6367, 2
  %6369 = extractvalue %dx.types.CBufRet.f32 %6367, 3
  %6370 = fmul fast float %6368, %111
  %6371 = fmul fast float %6369, %112
  %6372 = fptoui float %6370 to i32
  %6373 = fptoui float %6371 to i32
  %6374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6375 = extractvalue %dx.types.CBufRet.f32 %6374, 0
  %6376 = extractvalue %dx.types.CBufRet.f32 %6374, 2
  %6377 = extractvalue %dx.types.CBufRet.f32 %6374, 3
  %6378 = fadd fast float %98, -4.000000e+00
  %6379 = call float @dx.op.binary.f32(i32 35, float %6378, float 0.000000e+00)  ; FMax(a,b)
  %6380 = fadd fast float %6379, %6375
  %6381 = fmul fast float %6380, %6376
  %6382 = call float @dx.op.unary.f32(i32 23, float %6381)  ; Log(value)
  %6383 = fmul fast float %6382, %6377
  %6384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6385 = extractvalue %dx.types.CBufRet.f32 %6384, 2
  %6386 = fmul fast float %6383, %6385
  %6387 = call float @dx.op.unary.f32(i32 7, float %6386)  ; Saturate(value)
  %6388 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6389 = extractvalue %dx.types.CBufRet.i32 %6388, 1
  %6390 = add i32 %6389, -1
  %6391 = uitofp i32 %6389 to float
  %6392 = fmul fast float %6391, %6387
  %6393 = fptoui float %6392 to i32
  %6394 = call i32 @dx.op.binary.i32(i32 40, i32 %6393, i32 %6390)  ; UMin(a,b)
  %6395 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6396 = extractvalue %dx.types.CBufRet.i32 %6395, 2
  %6397 = extractvalue %dx.types.CBufRet.i32 %6395, 3
  %6398 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6373, i32 %6396, i32 %6372)  ; UMad(a,b,c)
  %6399 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6394, i32 %6397, i32 %6398)  ; UMad(a,b,c)
  %6400 = call float @dx.op.binary.f32(i32 35, float %98, float 0.000000e+00)  ; FMax(a,b)
  %6401 = fptoui float %6400 to i32
  %6402 = lshr i32 %6401, 5
  %6403 = call i32 @dx.op.binary.i32(i32 40, i32 %6402, i32 8191)  ; UMin(a,b)
  br i1 false, label %6404, label %6411

; <label>:6404                                    ; preds = %6366
  %6405 = fadd fast float 0.000000e+00, %6034
  %6406 = call float @dx.op.dot3.f32(i32 55, float %6032, float %6033, float %6405, float %6032, float %6033, float %6405)  ; Dot3(ax,ay,az,bx,by,bz)
  %6407 = call float @dx.op.unary.f32(i32 25, float %6406)  ; Rsqrt(value)
  %6408 = fmul fast float %6407, %6032
  %6409 = fmul fast float %6407, %6033
  %6410 = fmul fast float %6405, %6407
  br label %6411

; <label>:6411                                    ; preds = %6404, %6366
  %6412 = phi float [ %6408, %6404 ], [ %6032, %6366 ]
  %6413 = phi float [ %6409, %6404 ], [ %6033, %6366 ]
  %6414 = phi float [ %6410, %6404 ], [ %6034, %6366 ]
  %6415 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6416 = extractvalue %dx.types.CBufRet.i32 %6415, 2
  %6417 = add nsw i32 %6416, -1
  %6418 = call i32 @dx.op.binary.i32(i32 37, i32 %6417, i32 0)  ; IMax(a,b)
  %6419 = shl i32 %6403, 2
  %6420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %6419, i32 undef)  ; BufferLoad(srv,index,wot)
  %6421 = extractvalue %dx.types.ResRet.i32 %6420, 0
  %6422 = lshr i32 %6421, 16
  %6423 = and i32 %6421, 65535
  %6424 = lshr i32 %6421, 21
  %6425 = lshr i32 %6423, 5
  %6426 = call i32 @dx.op.binary.i32(i32 40, i32 %6425, i32 %6418)  ; UMin(a,b)
  %6427 = icmp ugt i32 %6424, %6426
  br i1 %6427, label %6790, label %6428

; <label>:6428                                    ; preds = %6411
  br label %6429

; <label>:6429                                    ; preds = %6782, %6428
  %6430 = phi float [ %6783, %6782 ], [ 0.000000e+00, %6428 ]
  %6431 = phi float [ %6784, %6782 ], [ 0.000000e+00, %6428 ]
  %6432 = phi float [ %6785, %6782 ], [ 0.000000e+00, %6428 ]
  %6433 = phi float [ %6786, %6782 ], [ 1.000000e+00, %6428 ]
  %6434 = phi i32 [ %6787, %6782 ], [ %6424, %6428 ]
  %6435 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6436 = extractvalue %dx.types.CBufRet.i32 %6435, 2
  %6437 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6399, i32 %6436, i32 %6434)  ; UMad(a,b,c)
  %6438 = shl i32 %6437, 2
  %6439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %6438, i32 undef)  ; BufferLoad(srv,index,wot)
  %6440 = extractvalue %dx.types.ResRet.i32 %6439, 0
  %6441 = shl i32 %6434, 5
  %6442 = sub nsw i32 %6422, %6441
  %6443 = call i32 @dx.op.binary.i32(i32 37, i32 %6442, i32 0)  ; IMax(a,b)
  %6444 = call i32 @dx.op.binary.i32(i32 38, i32 %6443, i32 31)  ; IMin(a,b)
  %6445 = sub nsw i32 1, %6422
  %6446 = add nsw i32 %6445, %6423
  %6447 = call i32 @dx.op.binary.i32(i32 37, i32 %6446, i32 0)  ; IMax(a,b)
  %6448 = call i32 @dx.op.binary.i32(i32 38, i32 %6447, i32 32)  ; IMin(a,b)
  %6449 = and i32 %6448, 31
  %6450 = shl i32 -1, %6449
  %6451 = xor i32 %6450, -1
  %6452 = and i32 %6444, 31
  %6453 = shl i32 %6451, %6452
  %6454 = icmp eq i32 %6448, 32
  %6455 = select i1 %6454, i32 -1, i32 %6453
  %6456 = and i32 %6455, %6440
  %6457 = icmp eq i32 %6456, 0
  br i1 %6457, label %6782, label %6458

; <label>:6458                                    ; preds = %6429
  br label %6459

; <label>:6459                                    ; preds = %6565, %6458
  %6460 = phi float [ %6566, %6565 ], [ %6430, %6458 ]
  %6461 = phi float [ %6567, %6565 ], [ %6431, %6458 ]
  %6462 = phi float [ %6568, %6565 ], [ %6432, %6458 ]
  %6463 = phi float [ %6569, %6565 ], [ %6433, %6458 ]
  %6464 = phi i32 [ %6469, %6565 ], [ %6456, %6458 ]
  %6465 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6464)  ; FirstbitLo(value)
  %6466 = add i32 %6465, %6441
  %6467 = and i32 %6465, 31
  %6468 = shl i32 1, %6467
  %6469 = xor i32 %6468, %6464
  %6470 = mul i32 %6466, 72
  %6471 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6470, i32 undef)  ; BufferLoad(srv,index,wot)
  %6472 = extractvalue %dx.types.ResRet.f32 %6471, 0
  %6473 = extractvalue %dx.types.ResRet.f32 %6471, 1
  %6474 = extractvalue %dx.types.ResRet.f32 %6471, 2
  %6475 = add i32 %6470, 12
  %6476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %6475, i32 undef)  ; BufferLoad(srv,index,wot)
  %6477 = extractvalue %dx.types.ResRet.i32 %6476, 0
  %6478 = add i32 %6470, 16
  %6479 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6478, i32 undef)  ; BufferLoad(srv,index,wot)
  %6480 = extractvalue %dx.types.ResRet.f32 %6479, 0
  %6481 = extractvalue %dx.types.ResRet.f32 %6479, 1
  %6482 = extractvalue %dx.types.ResRet.f32 %6479, 2
  %6483 = add i32 %6470, 28
  %6484 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6483, i32 undef)  ; BufferLoad(srv,index,wot)
  %6485 = extractvalue %dx.types.ResRet.f32 %6484, 0
  %6486 = add i32 %6470, 32
  %6487 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6486, i32 undef)  ; BufferLoad(srv,index,wot)
  %6488 = extractvalue %dx.types.ResRet.f32 %6487, 0
  %6489 = extractvalue %dx.types.ResRet.f32 %6487, 1
  %6490 = extractvalue %dx.types.ResRet.f32 %6487, 2
  %6491 = extractvalue %dx.types.ResRet.f32 %6487, 3
  %6492 = add i32 %6470, 48
  %6493 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6492, i32 undef)  ; BufferLoad(srv,index,wot)
  %6494 = extractvalue %dx.types.ResRet.f32 %6493, 0
  %6495 = extractvalue %dx.types.ResRet.f32 %6493, 1
  %6496 = add i32 %6470, 56
  %6497 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6496, i32 undef)  ; BufferLoad(srv,index,wot)
  %6498 = extractvalue %dx.types.ResRet.f32 %6497, 0
  %6499 = extractvalue %dx.types.ResRet.f32 %6497, 1
  %6500 = add i32 %6470, 64
  %6501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6500, i32 undef)  ; BufferLoad(srv,index,wot)
  %6502 = extractvalue %dx.types.ResRet.f32 %6501, 0
  %6503 = extractvalue %dx.types.ResRet.f32 %6501, 1
  %6504 = mul i32 %6466, 60
  %6505 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6504, i32 undef)  ; BufferLoad(srv,index,wot)
  %6506 = extractvalue %dx.types.ResRet.f32 %6505, 0
  %6507 = extractvalue %dx.types.ResRet.f32 %6505, 1
  %6508 = extractvalue %dx.types.ResRet.f32 %6505, 2
  %6509 = add i32 %6504, 12
  %6510 = add i32 %6504, 48
  %6511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6510, i32 undef)  ; BufferLoad(srv,index,wot)
  %6512 = extractvalue %dx.types.ResRet.f32 %6511, 0
  %6513 = extractvalue %dx.types.ResRet.f32 %6511, 1
  %6514 = extractvalue %dx.types.ResRet.f32 %6511, 2
  %6515 = and i32 %6477, 32767
  %6516 = bitcast float %6472 to i32
  %6517 = icmp eq i32 %6516, -1
  %6518 = bitcast float %6473 to i32
  %6519 = and i32 %6477, 32768
  %6520 = icmp ne i32 %6519, 0
  %6521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6522 = extractvalue %dx.types.CBufRet.f32 %6521, 0
  %6523 = extractvalue %dx.types.CBufRet.f32 %6521, 1
  %6524 = extractvalue %dx.types.CBufRet.f32 %6521, 2
  %6525 = fsub fast float %6506, %6522
  %6526 = fsub fast float %6507, %6523
  %6527 = fsub fast float %6508, %6524
  %6528 = fsub fast float %190, %6525
  %6529 = fsub fast float %191, %6526
  %6530 = fsub fast float %192, %6527
  %6531 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6509, i32 undef)  ; BufferLoad(srv,index,wot)
  %6532 = extractvalue %dx.types.ResRet.f32 %6531, 0
  %6533 = extractvalue %dx.types.ResRet.f32 %6531, 1
  %6534 = extractvalue %dx.types.ResRet.f32 %6531, 2
  %6535 = call float @dx.op.dot3.f32(i32 55, float %6528, float %6529, float %6530, float %6532, float %6533, float %6534)  ; Dot3(ax,ay,az,bx,by,bz)
  %6536 = add i32 %6504, 24
  %6537 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6536, i32 undef)  ; BufferLoad(srv,index,wot)
  %6538 = extractvalue %dx.types.ResRet.f32 %6537, 0
  %6539 = extractvalue %dx.types.ResRet.f32 %6537, 1
  %6540 = extractvalue %dx.types.ResRet.f32 %6537, 2
  %6541 = call float @dx.op.dot3.f32(i32 55, float %6528, float %6529, float %6530, float %6538, float %6539, float %6540)  ; Dot3(ax,ay,az,bx,by,bz)
  %6542 = add i32 %6504, 36
  %6543 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6542, i32 undef)  ; BufferLoad(srv,index,wot)
  %6544 = extractvalue %dx.types.ResRet.f32 %6543, 0
  %6545 = extractvalue %dx.types.ResRet.f32 %6543, 1
  %6546 = extractvalue %dx.types.ResRet.f32 %6543, 2
  %6547 = call float @dx.op.dot3.f32(i32 55, float %6528, float %6529, float %6530, float %6544, float %6545, float %6546)  ; Dot3(ax,ay,az,bx,by,bz)
  %6548 = call float @dx.op.unary.f32(i32 6, float %6535)  ; FAbs(value)
  %6549 = call float @dx.op.unary.f32(i32 6, float %6541)  ; FAbs(value)
  %6550 = call float @dx.op.unary.f32(i32 6, float %6547)  ; FAbs(value)
  %6551 = fsub fast float %6512, %6548
  %6552 = fsub fast float %6513, %6549
  %6553 = fsub fast float %6514, %6550
  %6554 = fmul fast float %6551, %6480
  %6555 = fmul fast float %6552, %6481
  %6556 = fmul fast float %6553, %6482
  %6557 = call float @dx.op.binary.f32(i32 36, float %6555, float %6556)  ; FMin(a,b)
  %6558 = call float @dx.op.binary.f32(i32 36, float %6554, float %6557)  ; FMin(a,b)
  %6559 = call float @dx.op.unary.f32(i32 7, float %6558)  ; Saturate(value)
  %6560 = call float @dx.op.binary.f32(i32 36, float %6463, float %6559)  ; FMin(a,b)
  %6561 = uitofp i1 %6520 to float
  %6562 = fsub fast float 1.000000e+00, %6561
  %6563 = fmul fast float %6560, %6562
  %6564 = fcmp fast ogt float %6563, 0.000000e+00
  br i1 %6564, label %6571, label %6565

; <label>:6565                                    ; preds = %6713, %6459
  %6566 = phi float [ %6777, %6713 ], [ %6460, %6459 ]
  %6567 = phi float [ %6778, %6713 ], [ %6461, %6459 ]
  %6568 = phi float [ %6779, %6713 ], [ %6462, %6459 ]
  %6569 = phi float [ %6780, %6713 ], [ %6463, %6459 ]
  %6570 = icmp eq i32 %6464, %6468
  br i1 %6570, label %6781, label %6459

; <label>:6571                                    ; preds = %6459
  br i1 %6517, label %6629, label %6572

; <label>:6572                                    ; preds = %6571
  %6573 = fsub fast float -0.000000e+00, %6532
  %6574 = fsub fast float -0.000000e+00, %6533
  %6575 = fsub fast float -0.000000e+00, %6534
  %6576 = call float @dx.op.dot3.f32(i32 55, float %6412, float %6413, float %6414, float %6573, float %6574, float %6575)  ; Dot3(ax,ay,az,bx,by,bz)
  %6577 = fsub fast float -0.000000e+00, %6576
  %6578 = call float @dx.op.dot3.f32(i32 55, float %6528, float %6529, float %6530, float %6573, float %6574, float %6575)  ; Dot3(ax,ay,az,bx,by,bz)
  %6579 = fadd fast float %6578, %6495
  %6580 = fadd fast float %6494, %6578
  %6581 = fsub fast float -0.000000e+00, %6580
  %6582 = fcmp ogt float %6576, -0.000000e+00
  %6583 = select i1 %6582, float %6581, float %6579
  %6584 = call float @dx.op.unary.f32(i32 6, float %6577)  ; FAbs(value)
  %6585 = fdiv fast float 1.000000e+00, %6584
  %6586 = fmul fast float %6583, %6585
  %6587 = call float @dx.op.binary.f32(i32 35, float %6586, float 0.000000e+00)  ; FMax(a,b)
  %6588 = fsub fast float -0.000000e+00, %6538
  %6589 = fsub fast float -0.000000e+00, %6539
  %6590 = fsub fast float -0.000000e+00, %6540
  %6591 = call float @dx.op.dot3.f32(i32 55, float %6412, float %6413, float %6414, float %6588, float %6589, float %6590)  ; Dot3(ax,ay,az,bx,by,bz)
  %6592 = fsub fast float -0.000000e+00, %6591
  %6593 = call float @dx.op.dot3.f32(i32 55, float %6528, float %6529, float %6530, float %6588, float %6589, float %6590)  ; Dot3(ax,ay,az,bx,by,bz)
  %6594 = fadd fast float %6593, %6499
  %6595 = fadd fast float %6498, %6593
  %6596 = fsub fast float -0.000000e+00, %6595
  %6597 = fcmp ogt float %6591, -0.000000e+00
  %6598 = select i1 %6597, float %6596, float %6594
  %6599 = call float @dx.op.unary.f32(i32 6, float %6592)  ; FAbs(value)
  %6600 = fdiv fast float 1.000000e+00, %6599
  %6601 = fmul fast float %6598, %6600
  %6602 = call float @dx.op.binary.f32(i32 35, float %6601, float 0.000000e+00)  ; FMax(a,b)
  %6603 = fsub fast float -0.000000e+00, %6544
  %6604 = fsub fast float -0.000000e+00, %6545
  %6605 = fsub fast float -0.000000e+00, %6546
  %6606 = call float @dx.op.dot3.f32(i32 55, float %6412, float %6413, float %6414, float %6603, float %6604, float %6605)  ; Dot3(ax,ay,az,bx,by,bz)
  %6607 = fsub fast float -0.000000e+00, %6606
  %6608 = call float @dx.op.dot3.f32(i32 55, float %6528, float %6529, float %6530, float %6603, float %6604, float %6605)  ; Dot3(ax,ay,az,bx,by,bz)
  %6609 = fadd fast float %6608, %6503
  %6610 = fadd fast float %6502, %6608
  %6611 = fsub fast float -0.000000e+00, %6610
  %6612 = fcmp ogt float %6606, -0.000000e+00
  %6613 = select i1 %6612, float %6611, float %6609
  %6614 = call float @dx.op.unary.f32(i32 6, float %6607)  ; FAbs(value)
  %6615 = fdiv fast float 1.000000e+00, %6614
  %6616 = fmul fast float %6613, %6615
  %6617 = call float @dx.op.binary.f32(i32 35, float %6616, float 0.000000e+00)  ; FMax(a,b)
  %6618 = call float @dx.op.binary.f32(i32 36, float %6602, float %6617)  ; FMin(a,b)
  %6619 = call float @dx.op.binary.f32(i32 36, float %6587, float %6618)  ; FMin(a,b)
  %6620 = fmul fast float %6619, %6412
  %6621 = fmul fast float %6619, %6413
  %6622 = fmul fast float %6619, %6414
  %6623 = fadd fast float %6620, %190
  %6624 = fadd fast float %6621, %191
  %6625 = fadd fast float %6622, %192
  %6626 = fsub fast float %6623, %6472
  %6627 = fsub fast float %6624, %6473
  %6628 = fsub fast float %6625, %6474
  br label %6636

; <label>:6629                                    ; preds = %6571
  %6630 = fmul fast float %6412, 8.096000e+03
  %6631 = fmul fast float %6413, 8.096000e+03
  %6632 = fmul fast float %6414, 8.096000e+03
  %6633 = fadd fast float %6630, %190
  %6634 = fadd fast float %6631, %191
  %6635 = fadd fast float %6632, %192
  br label %6636

; <label>:6636                                    ; preds = %6629, %6572
  %6637 = phi float [ %6412, %6629 ], [ %6626, %6572 ]
  %6638 = phi float [ %6413, %6629 ], [ %6627, %6572 ]
  %6639 = phi float [ %6414, %6629 ], [ %6628, %6572 ]
  %6640 = phi float [ %6633, %6629 ], [ %6623, %6572 ]
  %6641 = phi float [ %6634, %6629 ], [ %6624, %6572 ]
  %6642 = phi float [ %6635, %6629 ], [ %6625, %6572 ]
  %6643 = fcmp fast olt float %6491, 1.000000e+00
  br i1 %6643, label %6644, label %6675, !dx.controlflow.hints !94

; <label>:6644                                    ; preds = %6636
  %6645 = fmul fast float %6639, %6489
  %6646 = fmul fast float %6638, %6490
  %6647 = fsub fast float %6645, %6646
  %6648 = fmul fast float %6637, %6490
  %6649 = fmul fast float %6639, %6488
  %6650 = fsub fast float %6648, %6649
  %6651 = fmul fast float %6638, %6488
  %6652 = fmul fast float %6637, %6489
  %6653 = fsub fast float %6651, %6652
  %6654 = fmul fast float %6647, 2.000000e+00
  %6655 = fmul fast float %6650, 2.000000e+00
  %6656 = fmul fast float %6653, 2.000000e+00
  %6657 = fmul fast float %6654, %6491
  %6658 = fmul fast float %6655, %6491
  %6659 = fmul fast float %6656, %6491
  %6660 = fmul fast float %6656, %6489
  %6661 = fmul fast float %6655, %6490
  %6662 = fmul fast float %6654, %6490
  %6663 = fmul fast float %6656, %6488
  %6664 = fmul fast float %6655, %6488
  %6665 = fmul fast float %6654, %6489
  %6666 = fadd fast float %6660, %6637
  %6667 = fadd fast float %6666, %6657
  %6668 = fsub fast float %6667, %6661
  %6669 = fsub fast float %6638, %6663
  %6670 = fadd fast float %6669, %6658
  %6671 = fadd fast float %6670, %6662
  %6672 = fadd fast float %6659, %6639
  %6673 = fsub fast float %6672, %6665
  %6674 = fadd fast float %6673, %6664
  br label %6675

; <label>:6675                                    ; preds = %6644, %6636
  %6676 = phi float [ %6668, %6644 ], [ %6637, %6636 ]
  %6677 = phi float [ %6671, %6644 ], [ %6638, %6636 ]
  %6678 = phi float [ %6674, %6644 ], [ %6639, %6636 ]
  br i1 %6517, label %6710, label %6679

; <label>:6679                                    ; preds = %6675
  %6680 = fmul fast float %6022, 0x400187C840000000
  %6681 = fadd fast float %6680, 0xC00EFC2120000000
  %6682 = fmul fast float %6681, %6022
  %6683 = fadd fast float %6682, 0x3FE5D16340000000
  %6684 = fmul fast float %6683, %6022
  %6685 = fadd fast float %6684, 1.000000e+00
  %6686 = call float @dx.op.unary.f32(i32 7, float %6685)  ; Saturate(value)
  %6687 = fsub fast float %6640, %190
  %6688 = fsub fast float %6641, %191
  %6689 = fsub fast float %6642, %192
  %6690 = fsub fast float %6640, %6472
  %6691 = fsub fast float %6641, %6473
  %6692 = fsub fast float %6642, %6474
  %6693 = call float @dx.op.dot3.f32(i32 55, float %6687, float %6688, float %6689, float %6687, float %6688, float %6689)  ; Dot3(ax,ay,az,bx,by,bz)
  %6694 = call float @dx.op.dot3.f32(i32 55, float %6690, float %6691, float %6692, float %6690, float %6691, float %6692)  ; Dot3(ax,ay,az,bx,by,bz)
  %6695 = fadd fast float %6694, 0x3EE4F8B580000000
  %6696 = fdiv fast float %6693, %6695
  %6697 = bitcast float %6696 to i32
  %6698 = ashr i32 %6697, 1
  %6699 = add nsw i32 %6698, 532487669
  %6700 = bitcast i32 %6699 to float
  %6701 = fmul fast float %6700, %6686
  %6702 = call float @dx.op.unary.f32(i32 7, float %6701)  ; Saturate(value)
  %6703 = fmul fast float %6702, 0x4009981AE0000000
  %6704 = fsub fast float 0x40111BBD80000000, %6703
  %6705 = fmul fast float %6704, %6702
  %6706 = fadd fast float %6705, 0xC0009F6020000000
  %6707 = fmul fast float %6706, %6702
  %6708 = fadd fast float %6707, 1.000000e+00
  %6709 = call float @dx.op.unary.f32(i32 7, float %6708)  ; Saturate(value)
  br label %6713

; <label>:6710                                    ; preds = %6675
  %6711 = icmp ne i32 %6518, -1
  %6712 = zext i1 %6711 to i32
  br label %6713

; <label>:6713                                    ; preds = %6710, %6679
  %6714 = phi float [ %6022, %6710 ], [ %6709, %6679 ]
  %6715 = phi i32 [ %6712, %6710 ], [ 0, %6679 ]
  %6716 = fmul float %6714, 5.000000e+00
  %6717 = fsub float 5.000000e+00, %6716
  %6718 = icmp ne i32 %6715, 0
  %6719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6720 = extractvalue %dx.types.CBufRet.f32 %6719, 3
  %6721 = fadd fast float %6720, %6717
  %6722 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6721)  ; FMax(a,b)
  %6723 = call float @dx.op.unary.f32(i32 6, float %6676)  ; FAbs(value)
  %6724 = call float @dx.op.unary.f32(i32 6, float %6677)  ; FAbs(value)
  %6725 = fadd fast float %6724, %6723
  %6726 = call float @dx.op.unary.f32(i32 6, float %6678)  ; FAbs(value)
  %6727 = fadd fast float %6725, %6726
  %6728 = fcmp fast oeq float %6727, 0.000000e+00
  %6729 = fdiv fast float 1.000000e+00, %6727
  %6730 = select i1 %6728, float 1.000000e+00, float %6729
  %6731 = fmul fast float %6730, %6676
  %6732 = fmul fast float %6730, %6677
  %6733 = call float @dx.op.unary.f32(i32 6, float %6732)  ; FAbs(value)
  %6734 = call float @dx.op.unary.f32(i32 6, float %6731)  ; FAbs(value)
  %6735 = fsub fast float 1.000000e+00, %6733
  %6736 = fsub fast float 1.000000e+00, %6734
  %6737 = fcmp fast oge float %6731, 0.000000e+00
  %6738 = fcmp fast oge float %6732, 0.000000e+00
  %6739 = select i1 %6737, float 1.000000e+00, float -1.000000e+00
  %6740 = select i1 %6738, float 1.000000e+00, float -1.000000e+00
  %6741 = fcmp fast ole float %6678, 0.000000e+00
  %6742 = fmul fast float %6739, %6735
  %6743 = fmul fast float %6740, %6736
  %6744 = select i1 %6741, float %6742, float %6731
  %6745 = select i1 %6741, float %6743, float %6732
  %6746 = fmul fast float %6744, 5.000000e-01
  %6747 = fmul fast float %6745, 5.000000e-01
  %6748 = fadd fast float %6746, 5.000000e-01
  %6749 = fadd fast float %6747, 5.000000e-01
  %6750 = uitofp i32 %6515 to float
  %6751 = call float @dx.op.binary.f32(i32 36, float %6722, float 3.000000e+00)  ; FMin(a,b)
  %6752 = fadd fast float %6751, 2.000000e+00
  %6753 = call float @dx.op.unary.f32(i32 21, float %6752)  ; Exp(value)
  %6754 = extractvalue %dx.types.CBufRet.f32 %6719, 1
  %6755 = fmul fast float %6754, %6753
  %6756 = fmul fast float %6755, 2.000000e+00
  %6757 = fsub fast float 1.000000e+00, %6756
  %6758 = fmul fast float %6748, %6757
  %6759 = fmul fast float %6749, %6757
  %6760 = fadd fast float %6758, %6755
  %6761 = fadd fast float %6759, %6755
  %6762 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %43, float %6760, float %6761, float %6750, float undef, i32 0, i32 0, i32 undef, float %6722)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6763 = extractvalue %dx.types.ResRet.f32 %6762, 0
  %6764 = extractvalue %dx.types.ResRet.f32 %6762, 1
  %6765 = extractvalue %dx.types.ResRet.f32 %6762, 2
  %6766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6767 = extractvalue %dx.types.CBufRet.f32 %6766, 3
  %6768 = fmul fast float %6767, %6485
  %6769 = call float @dx.op.binary.f32(i32 36, float %6053, float %6768)  ; FMin(a,b)
  %6770 = select i1 %6718, float %6769, float %6768
  %6771 = fmul fast float %6763, %6563
  %6772 = fmul fast float %6771, %6770
  %6773 = fmul fast float %6764, %6563
  %6774 = fmul fast float %6773, %6770
  %6775 = fmul fast float %6765, %6563
  %6776 = fmul fast float %6775, %6770
  %6777 = fadd fast float %6772, %6460
  %6778 = fadd fast float %6774, %6461
  %6779 = fadd fast float %6776, %6462
  %6780 = fsub fast float %6463, %6563
  br label %6565

; <label>:6781                                    ; preds = %6565
  br label %6782

; <label>:6782                                    ; preds = %6781, %6429
  %6783 = phi float [ %6430, %6429 ], [ %6566, %6781 ]
  %6784 = phi float [ %6431, %6429 ], [ %6567, %6781 ]
  %6785 = phi float [ %6432, %6429 ], [ %6568, %6781 ]
  %6786 = phi float [ %6433, %6429 ], [ %6569, %6781 ]
  %6787 = add i32 %6434, 1
  %6788 = icmp ugt i32 %6787, %6426
  br i1 %6788, label %6789, label %6429, !llvm.loop !95

; <label>:6789                                    ; preds = %6782
  br label %6790

; <label>:6790                                    ; preds = %6789, %6411
  %6791 = phi float [ 0.000000e+00, %6411 ], [ %6783, %6789 ]
  %6792 = phi float [ 0.000000e+00, %6411 ], [ %6784, %6789 ]
  %6793 = phi float [ 0.000000e+00, %6411 ], [ %6785, %6789 ]
  %6794 = call float @dx.op.dot3.f32(i32 55, float %6791, float %6792, float %6793, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6795 = select i1 %264, float 0.000000e+00, float %6791
  %6796 = select i1 %264, float %6794, float %6792
  %6797 = select i1 %264, float 0.000000e+00, float %6793
  %6798 = fcmp fast olt float %6364, 0.000000e+00
  %6799 = call float @dx.op.unary.f32(i32 6, float %6364)  ; FAbs(value)
  %6800 = fmul fast float %6799, %6293
  %6801 = fmul fast float %6799, %6294
  %6802 = fmul fast float %6799, %6295
  %6803 = select i1 %6798, float %6293, float %6800
  %6804 = select i1 %6798, float %6294, float %6801
  %6805 = select i1 %6798, float %6295, float %6802
  %6806 = fsub fast float 1.000000e+00, %6799
  %6807 = call float @dx.op.unary.f32(i32 7, float %6806)  ; Saturate(value)
  %6808 = fmul fast float %6807, %6795
  %6809 = fmul fast float %6807, %6796
  %6810 = fmul fast float %6807, %6797
  %6811 = fadd fast float %6803, %6808
  %6812 = fadd fast float %6804, %6809
  %6813 = fadd fast float %6805, %6810
  br label %6814

; <label>:6814                                    ; preds = %6790, %6347
  %6815 = phi float [ %6293, %6347 ], [ %6811, %6790 ]
  %6816 = phi float [ %6294, %6347 ], [ %6812, %6790 ]
  %6817 = phi float [ %6295, %6347 ], [ %6813, %6790 ]
  %6818 = call float @dx.op.dot3.f32(i32 55, float %6013, float %6014, float %6015, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6819 = fcmp fast ogt float %6818, 0x3E7FF19E20000000
  %6820 = fdiv fast float 1.000000e+00, %6818
  %6821 = select i1 %6819, float %6820, float 0.000000e+00
  %6822 = fmul fast float %6821, %6013
  %6823 = fmul fast float %6821, %6014
  %6824 = fmul fast float %6821, %6015
  %6825 = fadd fast float %6822, -1.000000e+00
  %6826 = fadd fast float %6823, -1.000000e+00
  %6827 = fadd fast float %6824, -1.000000e+00
  %6828 = fmul fast float %6825, 5.000000e-01
  %6829 = fmul fast float %6826, 5.000000e-01
  %6830 = fmul fast float %6827, 5.000000e-01
  %6831 = fadd fast float %6828, 1.000000e+00
  %6832 = fadd fast float %6829, 1.000000e+00
  %6833 = fadd fast float %6830, 1.000000e+00
  %6834 = call float @dx.op.binary.f32(i32 35, float %6026, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6835 = fdiv fast float %4005, %6834
  %6836 = fcmp fast olt float %4755, 1.270000e+02
  %6837 = fcmp fast olt float %4756, 1.270000e+02
  %6838 = fcmp fast olt float %4757, 1.270000e+02
  %6839 = fmul fast float %4755, 0xBFF7154760000000
  %6840 = fmul fast float %6839, %6835
  %6841 = fmul fast float %4756, 0xBFF7154760000000
  %6842 = fmul fast float %6841, %6835
  %6843 = fmul fast float %4757, 0xBFF7154760000000
  %6844 = fmul fast float %6843, %6835
  %6845 = call float @dx.op.unary.f32(i32 21, float %6840)  ; Exp(value)
  %6846 = call float @dx.op.unary.f32(i32 21, float %6842)  ; Exp(value)
  %6847 = call float @dx.op.unary.f32(i32 21, float %6844)  ; Exp(value)
  %6848 = call float @dx.op.unary.f32(i32 7, float %6845)  ; Saturate(value)
  %6849 = call float @dx.op.unary.f32(i32 7, float %6846)  ; Saturate(value)
  %6850 = call float @dx.op.unary.f32(i32 7, float %6847)  ; Saturate(value)
  %6851 = select i1 %6836, float %6848, float 0.000000e+00
  %6852 = select i1 %6837, float %6849, float 0.000000e+00
  %6853 = select i1 %6838, float %6850, float 0.000000e+00
  %6854 = fmul fast float %6851, %6353
  %6855 = fmul fast float %6852, %6353
  %6856 = fmul fast float %6853, %6353
  %6857 = fadd fast float %6854, -1.000000e+00
  %6858 = fadd fast float %6855, -1.000000e+00
  %6859 = fadd fast float %6856, -1.000000e+00
  %6860 = fmul fast float %6857, %4703
  %6861 = fmul fast float %6858, %4703
  %6862 = fmul fast float %6859, %4703
  %6863 = fmul fast float %6815, %6348
  %6864 = fmul fast float %6816, %6349
  %6865 = fmul fast float %6817, %6350
  %6866 = fsub fast float 1.000000e+00, %6026
  %6867 = bitcast float %6866 to i32
  %6868 = sitofp i32 %6867 to float
  %6869 = fmul fast float %6868, 5.000000e+00
  %6870 = fadd fast float %6869, 0xC1EFBF8940000000
  %6871 = fptosi float %6870 to i32
  %6872 = bitcast i32 %6871 to float
  %6873 = fmul fast float %6872, %4707
  %6874 = fmul fast float %6285, %6873
  %6875 = fmul fast float %6874, %6353
  %6876 = fmul fast float %6875, %6831
  %6877 = fmul fast float %6286, %6873
  %6878 = fmul fast float %6877, %6353
  %6879 = fmul fast float %6878, %6832
  %6880 = fmul fast float %6287, %6873
  %6881 = fmul fast float %6880, %6353
  %6882 = fmul fast float %6881, %6833
  %6883 = fadd fast float %6863, %4693
  %6884 = fadd fast float %6883, %6876
  %6885 = fmul fast float %6884, %4703
  %6886 = fadd fast float %6864, %4694
  %6887 = fadd fast float %6886, %6879
  %6888 = fmul fast float %6887, %4703
  %6889 = fadd fast float %6865, %4695
  %6890 = fadd fast float %6889, %6882
  %6891 = fmul fast float %6890, %4703
  %6892 = fmul fast float %6017, 0x4012D0A400000000
  %6893 = fadd fast float %6862, 1.000000e+00
  %6894 = fadd fast float %6861, 1.000000e+00
  %6895 = fadd fast float %6860, 1.000000e+00
  %6896 = fmul fast float %6353, %6287
  %6897 = fmul fast float %6353, %6286
  %6898 = fmul fast float %6353, %6285
  %6899 = fmul fast float %6041, %4703
  %6900 = fsub fast float 1.000000e+00, %6899
  %6901 = call float @dx.op.unary.f32(i32 7, float %6900)  ; Saturate(value)
  %6902 = fsub fast float 1.000000e+00, %6901
  %6903 = fadd fast float %6892, 0x3FDB6377A0000000
  %6904 = fmul fast float %6902, %6903
  %6905 = call float @dx.op.dot3.f32(i32 55, float %5631, float %5632, float %5633, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6906 = fadd fast float %6904, %6905
  %6907 = call float @dx.op.unary.f32(i32 7, float %6906)  ; Saturate(value)
  %6908 = call float @dx.op.binary.f32(i32 35, float %6907, float 0x3F847AE140000000)  ; FMax(a,b)
  %6909 = fmul fast float %6908, %6908
  %6910 = fmul fast float %6909, %6909
  %6911 = fmul fast float %6910, 0xC00A935000000000
  %6912 = call float @dx.op.unary.f32(i32 21, float %6911)  ; Exp(value)
  %6913 = fsub fast float 1.000000e+00, %6912
  %6914 = fmul fast float %6895, %6289
  %6915 = fmul fast float %6914, %6913
  %6916 = fmul fast float %6894, %6290
  %6917 = fmul fast float %6916, %6913
  %6918 = fmul fast float %6893, %6291
  %6919 = fmul fast float %6918, %6913
  %6920 = fadd fast float %6915, %6898
  %6921 = fmul fast float %6920, %4703
  %6922 = fadd fast float %6917, %6897
  %6923 = fmul fast float %6922, %4703
  %6924 = fadd fast float %6919, %6896
  %6925 = fmul fast float %6924, %4703
  %6926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6927 = extractvalue %dx.types.CBufRet.f32 %6926, 3
  %6928 = fcmp fast oeq float %6927, 0.000000e+00
  br i1 %6928, label %8693, label %6929

; <label>:6929                                    ; preds = %6814
  %6930 = extractvalue %dx.types.CBufRet.f32 %6926, 0
  %6931 = extractvalue %dx.types.CBufRet.f32 %6926, 1
  %6932 = extractvalue %dx.types.CBufRet.f32 %6926, 2
  %6933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6934 = extractvalue %dx.types.CBufRet.f32 %6933, 0
  %6935 = extractvalue %dx.types.CBufRet.f32 %6933, 1
  %6936 = extractvalue %dx.types.CBufRet.f32 %6933, 2
  %6937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6938 = extractvalue %dx.types.CBufRet.f32 %6937, 0
  %6939 = extractvalue %dx.types.CBufRet.f32 %6937, 1
  %6940 = call float @dx.op.dot3.f32(i32 55, float %6934, float %6935, float %6936, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6941 = select i1 %264, float %6938, float %6934
  %6942 = select i1 %264, float %6940, float %6935
  %6943 = select i1 %264, float %6939, float %6936
  %6944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6945 = extractvalue %dx.types.CBufRet.f32 %6944, 2
  %6946 = fmul fast float %6945, %118
  %6947 = fmul fast float %6945, %119
  %6948 = fmul fast float %6945, %120
  %6949 = fadd fast float %6946, %190
  %6950 = fadd fast float %6947, %191
  %6951 = fadd fast float %6948, %192
  %6952 = fcmp fast olt float %6927, 0.000000e+00
  br i1 %6952, label %8210, label %6953

; <label>:6953                                    ; preds = %6929
  %6954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6955 = extractvalue %dx.types.CBufRet.f32 %6954, 0
  %6956 = extractvalue %dx.types.CBufRet.f32 %6954, 1
  %6957 = extractvalue %dx.types.CBufRet.f32 %6954, 2
  %6958 = extractvalue %dx.types.CBufRet.f32 %6954, 3
  %6959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6960 = extractvalue %dx.types.CBufRet.f32 %6959, 0
  %6961 = extractvalue %dx.types.CBufRet.f32 %6959, 1
  %6962 = extractvalue %dx.types.CBufRet.f32 %6959, 2
  %6963 = extractvalue %dx.types.CBufRet.f32 %6959, 3
  %6964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6965 = extractvalue %dx.types.CBufRet.f32 %6964, 0
  %6966 = extractvalue %dx.types.CBufRet.f32 %6964, 1
  %6967 = extractvalue %dx.types.CBufRet.f32 %6964, 2
  %6968 = extractvalue %dx.types.CBufRet.f32 %6964, 3
  %6969 = fmul fast float %6955, %6949
  %6970 = call float @dx.op.tertiary.f32(i32 46, float %6950, float %6956, float %6969)  ; FMad(a,b,c)
  %6971 = call float @dx.op.tertiary.f32(i32 46, float %6951, float %6957, float %6970)  ; FMad(a,b,c)
  %6972 = fadd fast float %6971, %6958
  %6973 = fmul fast float %6960, %6949
  %6974 = call float @dx.op.tertiary.f32(i32 46, float %6950, float %6961, float %6973)  ; FMad(a,b,c)
  %6975 = call float @dx.op.tertiary.f32(i32 46, float %6951, float %6962, float %6974)  ; FMad(a,b,c)
  %6976 = fadd fast float %6975, %6963
  %6977 = fmul fast float %6965, %6949
  %6978 = call float @dx.op.tertiary.f32(i32 46, float %6950, float %6966, float %6977)  ; FMad(a,b,c)
  %6979 = call float @dx.op.tertiary.f32(i32 46, float %6951, float %6967, float %6978)  ; FMad(a,b,c)
  %6980 = fadd fast float %6979, %6968
  %6981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6982 = extractvalue %dx.types.CBufRet.f32 %6981, 0
  %6983 = fcmp fast une float %6982, 0.000000e+00
  %6984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6985 = extractvalue %dx.types.CBufRet.f32 %6984, 0
  %6986 = extractvalue %dx.types.CBufRet.f32 %6984, 1
  %6987 = extractvalue %dx.types.CBufRet.f32 %6984, 3
  %6988 = fmul fast float %6987, %6972
  %6989 = fmul fast float %6987, %6976
  %6990 = fadd fast float %6988, %6985
  %6991 = fadd fast float %6989, %6986
  %6992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6993 = extractvalue %dx.types.CBufRet.f32 %6992, 0
  %6994 = extractvalue %dx.types.CBufRet.f32 %6992, 1
  %6995 = extractvalue %dx.types.CBufRet.f32 %6992, 3
  %6996 = fmul fast float %6995, %6972
  %6997 = fmul fast float %6995, %6976
  %6998 = fadd fast float %6996, %6993
  %6999 = fadd fast float %6997, %6994
  %7000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %7001 = extractvalue %dx.types.CBufRet.f32 %7000, 1
  %7002 = fsub fast float %7001, %6980
  %7003 = extractvalue %dx.types.CBufRet.f32 %7000, 2
  %7004 = fmul fast float %7002, %7003
  %7005 = fsub fast float 1.000000e+00, %7004
  %7006 = call float @dx.op.unary.f32(i32 7, float %7005)  ; Saturate(value)
  br i1 %6983, label %7067, label %7007

; <label>:7007                                    ; preds = %6953
  %7008 = extractvalue %dx.types.CBufRet.f32 %6992, 2
  %7009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7010 = extractvalue %dx.types.CBufRet.f32 %7009, 2
  %7011 = fadd fast float %7010, %7008
  %7012 = fcmp fast ogt float %7011, 0.000000e+00
  br i1 %7012, label %7013, label %7037

; <label>:7013                                    ; preds = %7007
  %7014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %7015 = extractvalue %dx.types.CBufRet.f32 %7014, 0
  %7016 = extractvalue %dx.types.CBufRet.f32 %7014, 1
  %7017 = fsub fast float %6998, %7015
  %7018 = fsub fast float %6999, %7016
  %7019 = fcmp fast olt float %7017, 0.000000e+00
  %7020 = fcmp fast olt float %7018, 0.000000e+00
  %7021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %7022 = extractvalue %dx.types.CBufRet.f32 %7021, 0
  %7023 = extractvalue %dx.types.CBufRet.f32 %7021, 1
  %7024 = extractvalue %dx.types.CBufRet.f32 %7021, 2
  %7025 = extractvalue %dx.types.CBufRet.f32 %7021, 3
  %7026 = select i1 %7019, float %7022, float %7024
  %7027 = select i1 %7020, float %7023, float %7025
  %7028 = fmul fast float %7026, %7017
  %7029 = fmul fast float %7027, %7018
  %7030 = call float @dx.op.unary.f32(i32 6, float %7028)  ; FAbs(value)
  %7031 = call float @dx.op.unary.f32(i32 6, float %7029)  ; FAbs(value)
  %7032 = extractvalue %dx.types.CBufRet.f32 %6944, 0
  %7033 = call float @dx.op.binary.f32(i32 35, float %7030, float %7031)  ; FMax(a,b)
  %7034 = fsub fast float %7032, %7033
  %7035 = call float @dx.op.unary.f32(i32 7, float %7034)  ; Saturate(value)
  %7036 = fmul fast float %7035, %7006
  br label %7037

; <label>:7037                                    ; preds = %7013, %7007
  %7038 = phi float [ %7036, %7013 ], [ 0.000000e+00, %7007 ]
  %7039 = extractvalue %dx.types.CBufRet.f32 %6984, 2
  %7040 = extractvalue %dx.types.CBufRet.f32 %7009, 1
  %7041 = fadd fast float %7040, %7039
  %7042 = fcmp fast ogt float %7041, 0.000000e+00
  br i1 %7042, label %7043, label %7067

; <label>:7043                                    ; preds = %7037
  %7044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %7045 = extractvalue %dx.types.CBufRet.f32 %7044, 0
  %7046 = extractvalue %dx.types.CBufRet.f32 %7044, 1
  %7047 = fsub fast float %6990, %7045
  %7048 = fsub fast float %6991, %7046
  %7049 = fcmp fast olt float %7047, 0.000000e+00
  %7050 = fcmp fast olt float %7048, 0.000000e+00
  %7051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %7052 = extractvalue %dx.types.CBufRet.f32 %7051, 0
  %7053 = extractvalue %dx.types.CBufRet.f32 %7051, 1
  %7054 = extractvalue %dx.types.CBufRet.f32 %7051, 2
  %7055 = extractvalue %dx.types.CBufRet.f32 %7051, 3
  %7056 = select i1 %7049, float %7052, float %7054
  %7057 = select i1 %7050, float %7053, float %7055
  %7058 = fmul fast float %7056, %7047
  %7059 = fmul fast float %7057, %7048
  %7060 = call float @dx.op.unary.f32(i32 6, float %7058)  ; FAbs(value)
  %7061 = call float @dx.op.unary.f32(i32 6, float %7059)  ; FAbs(value)
  %7062 = extractvalue %dx.types.CBufRet.f32 %6944, 0
  %7063 = call float @dx.op.binary.f32(i32 35, float %7060, float %7061)  ; FMax(a,b)
  %7064 = fsub fast float %7062, %7063
  %7065 = call float @dx.op.unary.f32(i32 7, float %7064)  ; Saturate(value)
  %7066 = fmul fast float %7065, %7006
  br label %7067

; <label>:7067                                    ; preds = %7043, %7037, %6953
  %7068 = phi float [ 0.000000e+00, %6953 ], [ %7066, %7043 ], [ 0.000000e+00, %7037 ]
  %7069 = phi float [ 0.000000e+00, %6953 ], [ %7038, %7043 ], [ %7038, %7037 ]
  %7070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %7071 = extractvalue %dx.types.CBufRet.f32 %7070, 1
  %7072 = call float @dx.op.unary.f32(i32 7, float %7071)  ; Saturate(value)
  %7073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %7074 = extractvalue %dx.types.CBufRet.f32 %7073, 0
  %7075 = extractvalue %dx.types.CBufRet.f32 %7073, 1
  %7076 = fsub fast float %6972, %7074
  %7077 = fsub fast float %6976, %7075
  %7078 = fcmp fast olt float %7076, 0.000000e+00
  %7079 = fcmp fast olt float %7077, 0.000000e+00
  %7080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %7081 = extractvalue %dx.types.CBufRet.f32 %7080, 0
  %7082 = extractvalue %dx.types.CBufRet.f32 %7080, 1
  %7083 = extractvalue %dx.types.CBufRet.f32 %7080, 2
  %7084 = extractvalue %dx.types.CBufRet.f32 %7080, 3
  %7085 = select i1 %7078, float %7081, float %7083
  %7086 = select i1 %7079, float %7082, float %7084
  %7087 = fmul fast float %7085, %7076
  %7088 = fmul fast float %7086, %7077
  %7089 = call float @dx.op.unary.f32(i32 6, float %7087)  ; FAbs(value)
  %7090 = call float @dx.op.unary.f32(i32 6, float %7088)  ; FAbs(value)
  %7091 = extractvalue %dx.types.CBufRet.f32 %6944, 0
  %7092 = call float @dx.op.binary.f32(i32 35, float %7089, float %7090)  ; FMax(a,b)
  %7093 = fsub fast float %7091, %7092
  %7094 = call float @dx.op.unary.f32(i32 7, float %7093)  ; Saturate(value)
  %7095 = call float @dx.op.binary.f32(i32 36, float %7094, float %7072)  ; FMin(a,b)
  %7096 = fmul fast float %7095, %7006
  %7097 = fsub fast float %7068, %7096
  %7098 = fsub fast float %7069, %7068
  %7099 = fsub fast float %7098, %7096
  %7100 = call float @dx.op.binary.f32(i32 35, float %7068, float %7069)  ; FMax(a,b)
  %7101 = call float @dx.op.binary.f32(i32 35, float %7096, float %7100)  ; FMax(a,b)
  %7102 = fcmp fast olt float %7101, 1.000000e+00
  br i1 %7102, label %7103, label %7501, !dx.controlflow.hints !97

; <label>:7103                                    ; preds = %7067
  %7104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %7105 = extractvalue %dx.types.CBufRet.f32 %7104, 0
  %7106 = fcmp fast une float %7105, 0.000000e+00
  br i1 %7106, label %7107, label %7501, !dx.controlflow.hints !98

; <label>:7107                                    ; preds = %7103
  %7108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %7109 = extractvalue %dx.types.CBufRet.f32 %7108, 0
  %7110 = extractvalue %dx.types.CBufRet.f32 %7108, 1
  %7111 = extractvalue %dx.types.CBufRet.f32 %7108, 2
  %7112 = extractvalue %dx.types.CBufRet.f32 %7108, 3
  %7113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %7114 = extractvalue %dx.types.CBufRet.f32 %7113, 0
  %7115 = extractvalue %dx.types.CBufRet.f32 %7113, 1
  %7116 = extractvalue %dx.types.CBufRet.f32 %7113, 2
  %7117 = extractvalue %dx.types.CBufRet.f32 %7113, 3
  %7118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %7119 = extractvalue %dx.types.CBufRet.f32 %7118, 0
  %7120 = extractvalue %dx.types.CBufRet.f32 %7118, 1
  %7121 = extractvalue %dx.types.CBufRet.f32 %7118, 2
  %7122 = extractvalue %dx.types.CBufRet.f32 %7118, 3
  %7123 = fmul fast float %7109, %6949
  %7124 = call float @dx.op.tertiary.f32(i32 46, float %6950, float %7110, float %7123)  ; FMad(a,b,c)
  %7125 = call float @dx.op.tertiary.f32(i32 46, float %6951, float %7111, float %7124)  ; FMad(a,b,c)
  %7126 = fadd fast float %7125, %7112
  %7127 = fmul fast float %7114, %6949
  %7128 = call float @dx.op.tertiary.f32(i32 46, float %6950, float %7115, float %7127)  ; FMad(a,b,c)
  %7129 = call float @dx.op.tertiary.f32(i32 46, float %6951, float %7116, float %7128)  ; FMad(a,b,c)
  %7130 = fadd fast float %7129, %7117
  %7131 = fmul fast float %7119, %6949
  %7132 = call float @dx.op.tertiary.f32(i32 46, float %6950, float %7120, float %7131)  ; FMad(a,b,c)
  %7133 = call float @dx.op.tertiary.f32(i32 46, float %6951, float %7121, float %7132)  ; FMad(a,b,c)
  %7134 = fadd fast float %7133, %7122
  %7135 = fcmp fast oge float %7126, 1.000000e+00
  %7136 = fcmp fast oge float %7130, 1.000000e+00
  %7137 = or i1 %7135, %7136
  %7138 = fcmp fast olt float %7126, 0.000000e+00
  %7139 = fcmp fast olt float %7130, 0.000000e+00
  %7140 = or i1 %7138, %7139
  %7141 = or i1 %7137, %7140
  br i1 %7141, label %7501, label %7142, !dx.controlflow.hints !99

; <label>:7142                                    ; preds = %7107
  %7143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %7144 = extractvalue %dx.types.CBufRet.f32 %7143, 0
  %7145 = extractvalue %dx.types.CBufRet.f32 %7143, 1
  %7146 = extractvalue %dx.types.CBufRet.f32 %7143, 2
  %7147 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %7148 = extractvalue %dx.types.CBufRet.i32 %7147, 2
  %7149 = uitofp i32 %7148 to float
  %7150 = extractvalue %dx.types.CBufRet.i32 %7147, 3
  %7151 = uitofp i32 %7150 to float
  %7152 = extractvalue %dx.types.CBufRet.f32 %7143, 3
  %7153 = fmul fast float %7152, 2.000000e+00
  %7154 = fsub fast float %7126, %7144
  %7155 = fsub fast float %7130, %7145
  %7156 = fmul fast float %7153, %7154
  %7157 = fmul fast float %7153, %7155
  %7158 = fdiv fast float 1.000000e+00, %6932
  %7159 = fmul fast float %7157, %7158
  %7160 = call float @dx.op.unary.f32(i32 6, float %7159)  ; FAbs(value)
  %7161 = fmul fast float %7146, %6951
  %7162 = fmul fast float %7161, %7153
  %7163 = call float @dx.op.unary.f32(i32 6, float %7162)  ; FAbs(value)
  %7164 = call float @dx.op.unary.f32(i32 6, float %7156)  ; FAbs(value)
  %7165 = call float @dx.op.binary.f32(i32 35, float %7163, float %7160)  ; FMax(a,b)
  %7166 = call float @dx.op.binary.f32(i32 35, float %7164, float %7165)  ; FMax(a,b)
  %7167 = fmul fast float %7166, 2.000000e+00
  %7168 = call float @dx.op.unary.f32(i32 23, float %7167)  ; Log(value)
  %7169 = call float @dx.op.binary.f32(i32 35, float %7168, float %7149)  ; FMax(a,b)
  %7170 = call float @dx.op.unary.f32(i32 22, float %7169)  ; Frc(value)
  %7171 = fadd fast float %7170, 0xBFEA666660000000
  %7172 = fmul fast float %7171, 8.000000e+00
  %7173 = call float @dx.op.unary.f32(i32 7, float %7172)  ; Saturate(value)
  %7174 = call float @dx.op.unary.f32(i32 27, float %7169)  ; Round_ni(value)
  %7175 = fadd fast float %7174, %7173
  %7176 = call float @dx.op.binary.f32(i32 36, float %7175, float %7151)  ; FMin(a,b)
  %7177 = call float @dx.op.unary.f32(i32 27, float %7176)  ; Round_ni(value)
  %7178 = fsub fast float -0.000000e+00, %7177
  %7179 = call float @dx.op.unary.f32(i32 21, float %7178)  ; Exp(value)
  %7180 = fmul fast float %7179, %7153
  %7181 = fmul fast float %7180, %7126
  %7182 = fmul fast float %7180, %7130
  %7183 = fmul fast float %7181, 2.500000e-01
  %7184 = fmul fast float %7182, 2.500000e-01
  %7185 = fadd fast float %7183, 5.000000e-01
  %7186 = fadd fast float %7184, 5.000000e-01
  %7187 = fsub fast float %7151, %7149
  %7188 = fptoui float %7187 to i32
  %7189 = add i32 %7188, 320
  %7190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %7189)  ; CBufferLoadLegacy(handle,regIndex)
  %7191 = extractvalue %dx.types.CBufRet.f32 %7190, 0
  %7192 = extractvalue %dx.types.CBufRet.f32 %7190, 1
  %7193 = fcmp fast une float %7176, %7151
  %7194 = fsub fast float %7126, %7191
  %7195 = fsub fast float %7130, %7192
  %7196 = call float @dx.op.unary.f32(i32 6, float %7194)  ; FAbs(value)
  %7197 = call float @dx.op.unary.f32(i32 6, float %7195)  ; FAbs(value)
  %7198 = fmul fast float %7196, %7180
  %7199 = fmul fast float %7197, %7180
  %7200 = fcmp fast olt float %7198, 1.000000e+00
  %7201 = fcmp fast olt float %7199, 1.000000e+00
  %7202 = and i1 %7200, %7201
  %7203 = or i1 %7193, %7202
  br i1 %7203, label %7204, label %7501, !dx.controlflow.hints !100

; <label>:7204                                    ; preds = %7142
  %7205 = fmul fast float %7182, 5.000000e-01
  %7206 = fmul fast float %7181, 5.000000e-01
  %7207 = fadd fast float %7205, 5.000000e-01
  %7208 = fadd fast float %7206, 5.000000e-01
  %7209 = sitofp i32 %7148 to float
  %7210 = fsub fast float %7176, %7209
  %7211 = call float @dx.op.unary.f32(i32 27, float %7210)  ; Round_ni(value)
  %7212 = call float @dx.op.unary.f32(i32 22, float %7176)  ; Frc(value)
  %7213 = call float @dx.op.unary.f32(i32 22, float %7208)  ; Frc(value)
  %7214 = call float @dx.op.unary.f32(i32 22, float %7207)  ; Frc(value)
  %7215 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %44, float %7213, float %7214, float %7211, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7216 = extractvalue %dx.types.ResRet.f32 %7215, 0
  %7217 = extractvalue %dx.types.ResRet.f32 %7215, 1
  %7218 = extractvalue %dx.types.ResRet.f32 %7215, 2
  %7219 = extractvalue %dx.types.ResRet.f32 %7215, 3
  %7220 = fcmp fast ogt float %7212, 0.000000e+00
  br i1 %7220, label %7221, label %7242, !dx.controlflow.hints !101

; <label>:7221                                    ; preds = %7204
  %7222 = fadd fast float %7211, 1.000000e+00
  %7223 = call float @dx.op.unary.f32(i32 22, float %7185)  ; Frc(value)
  %7224 = call float @dx.op.unary.f32(i32 22, float %7186)  ; Frc(value)
  %7225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %44, float %7223, float %7224, float %7222, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7226 = extractvalue %dx.types.ResRet.f32 %7225, 0
  %7227 = extractvalue %dx.types.ResRet.f32 %7225, 1
  %7228 = extractvalue %dx.types.ResRet.f32 %7225, 2
  %7229 = extractvalue %dx.types.ResRet.f32 %7225, 3
  %7230 = fsub fast float %7226, %7216
  %7231 = fsub fast float %7227, %7217
  %7232 = fsub fast float %7228, %7218
  %7233 = fsub fast float %7229, %7219
  %7234 = fmul fast float %7230, %7212
  %7235 = fmul fast float %7231, %7212
  %7236 = fmul fast float %7232, %7212
  %7237 = fmul fast float %7233, %7212
  %7238 = fadd fast float %7234, %7216
  %7239 = fadd fast float %7235, %7217
  %7240 = fadd fast float %7236, %7218
  %7241 = fadd fast float %7237, %7219
  br label %7242

; <label>:7242                                    ; preds = %7221, %7204
  %7243 = phi float [ %7238, %7221 ], [ %7216, %7204 ]
  %7244 = phi float [ %7239, %7221 ], [ %7217, %7204 ]
  %7245 = phi float [ %7240, %7221 ], [ %7218, %7204 ]
  %7246 = phi float [ %7241, %7221 ], [ %7219, %7204 ]
  %7247 = fadd fast float %7243, -5.000000e-01
  %7248 = fadd fast float %7245, -5.000000e-01
  %7249 = fmul fast float %7247, 0xBFD5555560000000
  %7250 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7248, float %7249)  ; FMad(a,b,c)
  %7251 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7244, float 0.000000e+00)  ; FMad(a,b,c)
  %7252 = fadd fast float %7251, %7246
  %7253 = fmul fast float %7247, -7.500000e-01
  %7254 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7248, float %7253)  ; FMad(a,b,c)
  %7255 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7244, float 0.000000e+00)  ; FMad(a,b,c)
  %7256 = fadd fast float %7255, %7246
  %7257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %7258 = extractvalue %dx.types.CBufRet.f32 %7257, 0
  %7259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %7260 = extractvalue %dx.types.CBufRet.f32 %7259, 0
  %7261 = extractvalue %dx.types.CBufRet.f32 %7259, 1
  %7262 = extractvalue %dx.types.CBufRet.f32 %7259, 2
  %7263 = extractvalue %dx.types.CBufRet.f32 %7259, 3
  %7264 = fsub fast float %7260, %7250
  %7265 = fsub fast float %7261, %7252
  %7266 = fsub fast float %7262, %7254
  %7267 = fsub fast float %7263, %7256
  %7268 = fmul fast float %7264, %7258
  %7269 = fmul fast float %7265, %7258
  %7270 = fmul fast float %7266, %7258
  %7271 = fmul fast float %7267, %7258
  %7272 = fadd fast float %7268, %7250
  %7273 = fadd fast float %7269, %7252
  %7274 = fadd fast float %7270, %7254
  %7275 = fadd fast float %7271, %7256
  %7276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %7277 = extractvalue %dx.types.ResRet.i32 %7276, 0
  %7278 = and i32 %7277, 536870911
  %7279 = uitofp i32 %7278 to float
  %7280 = fmul fast float %7279, %7126
  %7281 = fmul fast float %7279, %7130
  %7282 = fptoui float %7280 to i32
  %7283 = fptoui float %7281 to i32
  %7284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7285 = extractvalue %dx.types.ResRet.i32 %7284, 0
  %7286 = and i32 %7285, 31
  %7287 = lshr i32 %7282, %7286
  %7288 = lshr i32 %7283, %7286
  %7289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7290 = extractvalue %dx.types.ResRet.i32 %7289, 0
  %7291 = and i32 %7290, 31
  %7292 = shl i32 1, %7291
  %7293 = call i32 @dx.op.binary.i32(i32 40, i32 %7292, i32 4)  ; UMin(a,b)
  %7294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %7295 = extractvalue %dx.types.ResRet.i32 %7294, 0
  %7296 = extractvalue %dx.types.ResRet.i32 %7294, 1
  %7297 = icmp eq i32 %7293, 0
  br i1 %7297, label %7339, label %7298

; <label>:7298                                    ; preds = %7242
  br label %7299

; <label>:7299                                    ; preds = %7327, %7298
  %7300 = phi i32 [ %7330, %7327 ], [ 0, %7298 ]
  %7301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7302 = extractvalue %dx.types.ResRet.i32 %7301, 0
  %7303 = lshr i32 %7302, 16
  %7304 = and i32 %7303, 31
  %7305 = shl i32 %7288, %7304
  %7306 = add i32 %7305, %7287
  %7307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7308 = extractvalue %dx.types.ResRet.i32 %7307, 0
  %7309 = and i32 %7308, 31
  %7310 = shl i32 %7306, %7309
  %7311 = add i32 %7310, %7300
  %7312 = shl i32 %7311, 2
  %7313 = add i32 %7312, 32
  %7314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7313, i32 undef)  ; BufferLoad(srv,index,wot)
  %7315 = extractvalue %dx.types.ResRet.i32 %7314, 0
  %7316 = icmp slt i32 %7315, 0
  %7317 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7300
  %7318 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7300
  %7319 = bitcast float* %7317 to i32*
  %7320 = bitcast float* %7318 to i32*
  br i1 %7316, label %7321, label %7327

; <label>:7321                                    ; preds = %7299
  %7322 = and i32 %7315, 1073741823
  %7323 = add nuw nsw i32 %7322, 20
  %7324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7323, i32 undef)  ; BufferLoad(srv,index,wot)
  %7325 = extractvalue %dx.types.ResRet.i32 %7324, 0
  %7326 = extractvalue %dx.types.ResRet.i32 %7324, 1
  br label %7327

; <label>:7327                                    ; preds = %7321, %7299
  %7328 = phi i32 [ %7325, %7321 ], [ %7295, %7299 ]
  %7329 = phi i32 [ %7326, %7321 ], [ %7296, %7299 ]
  store i32 %7328, i32* %7319, align 4
  store i32 %7329, i32* %7320, align 4
  %7330 = add nuw i32 %7300, 1
  %7331 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %7332 = extractvalue %dx.types.CBufRet.i32 %7331, 2
  %7333 = icmp eq i32 %7332, 0
  %7334 = icmp ugt i32 %7315, -1073741825
  %7335 = and i1 %7334, %7333
  %7336 = icmp ult i32 %7330, %7293
  %7337 = and i1 %7335, %7336
  br i1 %7337, label %7299, label %7338

; <label>:7338                                    ; preds = %7327
  br label %7339

; <label>:7339                                    ; preds = %7338, %7242
  %7340 = phi i32 [ 0, %7242 ], [ %7330, %7338 ]
  %7341 = extractvalue %dx.types.CBufRet.f32 %7104, 2
  %7342 = fptoui float %7341 to i32
  %7343 = icmp eq i32 %7342, 0
  br i1 %7343, label %7395, label %7344

; <label>:7344                                    ; preds = %7339
  br label %7345

; <label>:7345                                    ; preds = %7390, %7344
  %7346 = phi i32 [ %7391, %7390 ], [ %7340, %7344 ]
  %7347 = phi i32 [ %7392, %7390 ], [ 0, %7344 ]
  %7348 = lshr i32 %7347, 2
  %7349 = and i32 %7347, 3
  %7350 = add nuw nsw i32 %7348, 83
  %7351 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 %7350)  ; CBufferLoadLegacy(handle,regIndex)
  %7352 = extractvalue %dx.types.CBufRet.i32 %7351, 0
  %7353 = extractvalue %dx.types.CBufRet.i32 %7351, 1
  %7354 = extractvalue %dx.types.CBufRet.i32 %7351, 2
  %7355 = extractvalue %dx.types.CBufRet.i32 %7351, 3
  %7356 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 0
  store i32 %7352, i32* %7356, align 4
  %7357 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 1
  store i32 %7353, i32* %7357, align 4
  %7358 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 2
  store i32 %7354, i32* %7358, align 4
  %7359 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 3
  store i32 %7355, i32* %7359, align 4
  %7360 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 %7349
  %7361 = load i32, i32* %7360, align 4, !tbaa !102, !noalias !106
  %7362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7363 = extractvalue %dx.types.ResRet.i32 %7362, 0
  %7364 = lshr i32 %7363, 16
  %7365 = and i32 %7364, 31
  %7366 = shl i32 %7288, %7365
  %7367 = add i32 %7366, %7287
  %7368 = shl i32 %7367, 2
  %7369 = add i32 %7368, %7361
  %7370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7369, i32 undef)  ; BufferLoad(srv,index,wot)
  %7371 = extractvalue %dx.types.ResRet.i32 %7370, 0
  %7372 = icmp eq i32 %7371, 0
  br i1 %7372, label %7390, label %7373

; <label>:7373                                    ; preds = %7345
  %7374 = icmp slt i32 %7371, 0
  %7375 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7346
  %7376 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7346
  %7377 = bitcast float* %7375 to i32*
  %7378 = bitcast float* %7376 to i32*
  br i1 %7374, label %7379, label %7386

; <label>:7379                                    ; preds = %7373
  %7380 = and i32 %7371, 1073741823
  %7381 = add i32 %7361, 20
  %7382 = add i32 %7381, %7380
  %7383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7382, i32 undef)  ; BufferLoad(srv,index,wot)
  %7384 = extractvalue %dx.types.ResRet.i32 %7383, 0
  %7385 = extractvalue %dx.types.ResRet.i32 %7383, 1
  br label %7386

; <label>:7386                                    ; preds = %7379, %7373
  %7387 = phi i32 [ %7384, %7379 ], [ %7295, %7373 ]
  %7388 = phi i32 [ %7385, %7379 ], [ %7296, %7373 ]
  store i32 %7387, i32* %7377, align 4
  store i32 %7388, i32* %7378, align 4
  %7389 = add i32 %7346, 1
  br label %7390

; <label>:7390                                    ; preds = %7386, %7345
  %7391 = phi i32 [ %7346, %7345 ], [ %7389, %7386 ]
  %7392 = add nuw i32 %7347, 1
  %7393 = icmp eq i32 %7392, %7342
  br i1 %7393, label %7394, label %7345

; <label>:7394                                    ; preds = %7390
  br label %7395

; <label>:7395                                    ; preds = %7394, %7339
  %7396 = phi i32 [ %7340, %7339 ], [ %7391, %7394 ]
  %7397 = icmp eq i32 %7396, 1
  %7398 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 0
  %7399 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 0
  br i1 %7397, label %7400, label %7403

; <label>:7400                                    ; preds = %7395
  %7401 = load float, float* %7398, align 4
  %7402 = load float, float* %7399, align 4
  br label %7430

; <label>:7403                                    ; preds = %7395
  %7404 = load float, float* %7398, align 4
  %7405 = load float, float* %7399, align 4
  %7406 = fdiv fast float 1.000000e+00, %7405
  %7407 = fsub fast float %7404, %7406
  %7408 = icmp ugt i32 %7396, 1
  br i1 %7408, label %7409, label %7425

; <label>:7409                                    ; preds = %7403
  br label %7410

; <label>:7410                                    ; preds = %7410, %7409
  %7411 = phi float [ %7420, %7410 ], [ %7407, %7409 ]
  %7412 = phi float [ %7421, %7410 ], [ %7404, %7409 ]
  %7413 = phi i32 [ %7422, %7410 ], [ 1, %7409 ]
  %7414 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7413
  %7415 = load float, float* %7414, align 4
  %7416 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7413
  %7417 = load float, float* %7416, align 4
  %7418 = fdiv fast float 1.000000e+00, %7417
  %7419 = fsub fast float %7415, %7418
  %7420 = call float @dx.op.binary.f32(i32 36, float %7411, float %7419)  ; FMin(a,b)
  %7421 = call float @dx.op.binary.f32(i32 35, float %7412, float %7415)  ; FMax(a,b)
  %7422 = add nuw i32 %7413, 1
  %7423 = icmp eq i32 %7422, %7396
  br i1 %7423, label %7424, label %7410

; <label>:7424                                    ; preds = %7410
  br label %7425

; <label>:7425                                    ; preds = %7424, %7403
  %7426 = phi float [ %7407, %7403 ], [ %7420, %7424 ]
  %7427 = phi float [ %7404, %7403 ], [ %7421, %7424 ]
  %7428 = fsub fast float %7427, %7426
  %7429 = fdiv fast float 1.000000e+00, %7428
  br label %7430

; <label>:7430                                    ; preds = %7425, %7400
  %7431 = phi float [ %7401, %7400 ], [ %7427, %7425 ]
  %7432 = phi float [ %7402, %7400 ], [ %7429, %7425 ]
  %7433 = fadd fast float %7134, %7431
  %7434 = fmul fast float %7433, %7432
  %7435 = call float @dx.op.unary.f32(i32 7, float %7434)  ; Saturate(value)
  %7436 = fmul fast float %7435, 2.000000e+00
  %7437 = fsub fast float 1.000000e+00, %7436
  %7438 = fmul fast float %7272, %7272
  %7439 = fsub fast float %7273, %7438
  %7440 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7439)  ; FMax(a,b)
  %7441 = fdiv fast float 1.000000e+00, %7440
  %7442 = fmul fast float %7273, %7272
  %7443 = fsub fast float %7274, %7442
  %7444 = fsub fast float %7437, %7272
  %7445 = fmul fast float %7437, %7437
  %7446 = fsub fast float %7445, %7273
  %7447 = fmul fast float %7441, %7443
  %7448 = fmul fast float %7447, %7444
  %7449 = fsub fast float %7446, %7448
  %7450 = fmul fast float %7273, %7273
  %7451 = fsub fast float %7275, %7450
  %7452 = fmul fast float %7443, %7443
  %7453 = fmul fast float %7452, %7441
  %7454 = fsub fast float %7451, %7453
  %7455 = fdiv fast float %7449, %7454
  %7456 = fmul fast float %7455, %7443
  %7457 = fsub fast float %7444, %7456
  %7458 = fmul fast float %7457, %7441
  %7459 = fmul fast float %7458, %7272
  %7460 = fsub fast float 1.000000e+00, %7459
  %7461 = fmul fast float %7455, %7273
  %7462 = fsub fast float %7460, %7461
  %7463 = fmul fast float %7458, %7458
  %7464 = fmul fast float %7455, 4.000000e+00
  %7465 = fmul fast float %7464, %7462
  %7466 = fsub fast float %7463, %7465
  %7467 = call float @dx.op.unary.f32(i32 24, float %7466)  ; Sqrt(value)
  %7468 = fcmp fast oge float %7458, 0.000000e+00
  %7469 = fsub fast float -0.000000e+00, %7467
  %7470 = select i1 %7468, float %7469, float %7467
  %7471 = fsub fast float %7470, %7458
  %7472 = fdiv fast float %7471, %7455
  %7473 = fdiv fast float %7462, %7471
  %7474 = fmul fast float %7472, 5.000000e-01
  %7475 = fmul fast float %7473, 2.000000e+00
  %7476 = select i1 %7468, float %7474, float %7475
  %7477 = select i1 %7468, float %7475, float %7474
  %7478 = call float @dx.op.binary.f32(i32 35, float %7476, float %7477)  ; FMax(a,b)
  %7479 = call float @dx.op.binary.f32(i32 36, float %7476, float %7477)  ; FMin(a,b)
  %7480 = fcmp fast ogt float %7437, %7478
  %7481 = fsub fast float %7437, %7479
  %7482 = fsub fast float %7437, %7478
  %7483 = fsub fast float %7478, %7479
  %7484 = select i1 %7480, float %7482, float %7483
  %7485 = fmul float %7481, %7484
  %7486 = select i1 %7480, float %7479, float %7437
  %7487 = fcmp fast ogt float %7437, %7479
  %7488 = fmul fast float %7486, %7478
  %7489 = fadd fast float %7486, %7478
  %7490 = fmul fast float %7489, %7272
  %7491 = fadd fast float %7488, %7273
  %7492 = fsub fast float %7491, %7490
  %7493 = fdiv fast float %7492, %7485
  %7494 = select i1 %7487, float %7493, float 0.000000e+00
  %7495 = fsub fast float 1.000000e+00, %7494
  %7496 = select i1 %7480, float %7495, float %7494
  %7497 = call float @dx.op.unary.f32(i32 7, float %7496)  ; Saturate(value)
  %7498 = extractvalue %dx.types.CBufRet.f32 %7257, 3
  %7499 = fmul fast float %7498, %7497
  %7500 = fsub fast float 1.000000e+00, %7499
  br label %7501

; <label>:7501                                    ; preds = %7430, %7142, %7107, %7103, %7067
  %7502 = phi float [ 1.000000e+00, %7067 ], [ %7500, %7430 ], [ 1.000000e+00, %7107 ], [ 1.000000e+00, %7142 ], [ 1.000000e+00, %7103 ]
  %7503 = fcmp fast ogt float %7099, 0.000000e+00
  br i1 %7503, label %7504, label %7668, !dx.controlflow.hints !115

; <label>:7504                                    ; preds = %7501
  %7505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7506 = extractvalue %dx.types.CBufRet.f32 %7505, 2
  %7507 = fadd fast float %7506, %6980
  %7508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7509 = extractvalue %dx.types.CBufRet.f32 %7508, 2
  %7510 = extractvalue %dx.types.CBufRet.f32 %7508, 3
  %7511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7512 = extractvalue %dx.types.CBufRet.f32 %7511, 2
  %7513 = call float @dx.op.binary.f32(i32 35, float %7507, float 0.000000e+00)  ; FMax(a,b)
  %7514 = fadd fast float %7513, 0x3F10000000000000
  %7515 = fcmp fast oeq float %7512, 0.000000e+00
  br i1 %7515, label %7516, label %7583

; <label>:7516                                    ; preds = %7504
  %7517 = extractvalue %dx.types.CBufRet.f32 %7508, 1
  %7518 = extractvalue %dx.types.CBufRet.f32 %7508, 0
  %7519 = fmul fast float %7518, %6998
  %7520 = fmul fast float %7517, %6999
  %7521 = fadd fast float %7519, 5.000000e-01
  %7522 = call float @dx.op.unary.f32(i32 27, float %7521)  ; Round_ni(value)
  %7523 = fadd fast float %7520, 5.000000e-01
  %7524 = call float @dx.op.unary.f32(i32 27, float %7523)  ; Round_ni(value)
  %7525 = fsub fast float %7521, %7522
  %7526 = fsub fast float %7523, %7524
  %7527 = fadd fast float %7522, -5.000000e-01
  %7528 = fadd fast float %7524, -5.000000e-01
  %7529 = fmul fast float %7525, 2.000000e+00
  %7530 = fsub fast float 3.000000e+00, %7529
  %7531 = fadd fast float %7529, 1.000000e+00
  %7532 = fsub fast float 2.000000e+00, %7525
  %7533 = bitcast float %7530 to i32
  %7534 = sub nsw i32 2129859010, %7533
  %7535 = bitcast i32 %7534 to float
  %7536 = fmul fast float %7535, %7532
  %7537 = fadd fast float %7536, -1.000000e+00
  %7538 = bitcast float %7531 to i32
  %7539 = sub nsw i32 2129859010, %7538
  %7540 = bitcast i32 %7539 to float
  %7541 = fmul fast float %7540, %7525
  %7542 = fadd fast float %7541, 1.000000e+00
  %7543 = fmul fast float %7526, 2.000000e+00
  %7544 = fsub fast float 3.000000e+00, %7543
  %7545 = fadd fast float %7543, 1.000000e+00
  %7546 = fsub fast float 2.000000e+00, %7526
  %7547 = bitcast float %7544 to i32
  %7548 = sub nsw i32 2129859010, %7547
  %7549 = bitcast i32 %7548 to float
  %7550 = fmul fast float %7549, %7546
  %7551 = fadd fast float %7550, -1.000000e+00
  %7552 = bitcast float %7545 to i32
  %7553 = sub nsw i32 2129859010, %7552
  %7554 = bitcast i32 %7553 to float
  %7555 = fmul fast float %7554, %7526
  %7556 = fadd fast float %7555, 1.000000e+00
  %7557 = fadd fast float %7537, %7527
  %7558 = fmul fast float %7557, %7509
  %7559 = fadd fast float %7551, %7528
  %7560 = fmul fast float %7559, %7510
  %7561 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %47, float %7558, float %7560, float undef, float undef, i32 0, i32 0, i32 undef, float %7514)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7562 = extractvalue %dx.types.ResRet.f32 %7561, 0
  %7563 = fmul fast float %7562, %7530
  %7564 = fadd fast float %7542, %7527
  %7565 = fmul fast float %7564, %7509
  %7566 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %47, float %7565, float %7560, float undef, float undef, i32 0, i32 0, i32 undef, float %7514)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7567 = extractvalue %dx.types.ResRet.f32 %7566, 0
  %7568 = fmul fast float %7567, %7531
  %7569 = fadd fast float %7556, %7528
  %7570 = fmul fast float %7569, %7510
  %7571 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %47, float %7558, float %7570, float undef, float undef, i32 0, i32 0, i32 undef, float %7514)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7572 = extractvalue %dx.types.ResRet.f32 %7571, 0
  %7573 = fmul fast float %7572, %7530
  %7574 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %47, float %7565, float %7570, float undef, float undef, i32 0, i32 0, i32 undef, float %7514)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7575 = extractvalue %dx.types.ResRet.f32 %7574, 0
  %7576 = fmul fast float %7575, %7531
  %7577 = fadd fast float %7576, %7573
  %7578 = fmul fast float %7577, %7545
  %7579 = fadd fast float %7568, %7563
  %7580 = fmul fast float %7579, %7544
  %7581 = fadd fast float %7580, %7578
  %7582 = fmul fast float %7581, 6.250000e-02
  br label %7668

; <label>:7583                                    ; preds = %7504
  %7584 = fmul fast float %275, 0x401921FB60000000
  %7585 = call float @dx.op.unary.f32(i32 13, float %7584)  ; Sin(value)
  %7586 = call float @dx.op.unary.f32(i32 12, float %7584)  ; Cos(value)
  %7587 = fsub fast float -0.000000e+00, %7585
  br label %7588

; <label>:7588                                    ; preds = %7637, %7583
  %7589 = phi float [ 0.000000e+00, %7583 ], [ %7632, %7637 ]
  %7590 = phi float [ 0.000000e+00, %7583 ], [ %7634, %7637 ]
  %7591 = phi i32 [ 0, %7583 ], [ %7638, %7637 ]
  %7592 = mul i32 %7591, 2
  %7593 = add i32 0, %7592
  %7594 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7593
  %7595 = load float, float* %7594, align 4
  %7596 = mul i32 %7591, 2
  %7597 = add i32 1, %7596
  %7598 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7597
  %7599 = load float, float* %7598, align 4
  %7600 = fmul fast float %7595, %7586
  %7601 = call float @dx.op.tertiary.f32(i32 46, float %7599, float %7587, float %7600)  ; FMad(a,b,c)
  %7602 = fmul fast float %7595, %7585
  %7603 = call float @dx.op.tertiary.f32(i32 46, float %7599, float %7586, float %7602)  ; FMad(a,b,c)
  %7604 = fmul fast float %7601, %7512
  %7605 = fmul fast float %7603, %7512
  %7606 = fadd fast float %7604, %6998
  %7607 = fadd fast float %7605, %6999
  %7608 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %46, float %7606, float %7607, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7609 = extractvalue %dx.types.ResRet.f32 %7608, 0
  %7610 = extractvalue %dx.types.ResRet.f32 %7608, 1
  %7611 = extractvalue %dx.types.ResRet.f32 %7608, 2
  %7612 = extractvalue %dx.types.ResRet.f32 %7608, 3
  %7613 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 0
  store float %7609, float* %7613, align 4
  %7614 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 1
  store float %7610, float* %7614, align 4
  %7615 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 2
  store float %7611, float* %7615, align 4
  %7616 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 3
  store float %7612, float* %7616, align 4
  %7617 = fsub fast float %7609, %7514
  %7618 = fcmp fast olt float %7617, 0.000000e+00
  %7619 = select i1 %7618, float 0.000000e+00, float 1.000000e+00
  %7620 = fadd fast float %7619, %7589
  %7621 = fmul fast float %7619, %7617
  %7622 = fadd fast float %7621, %7590
  br label %7623

; <label>:7623                                    ; preds = %7623, %7588
  %7624 = phi i32 [ 1, %7588 ], [ %7635, %7623 ]
  %7625 = phi float [ %7622, %7588 ], [ %7634, %7623 ]
  %7626 = phi float [ %7620, %7588 ], [ %7632, %7623 ]
  %7627 = getelementptr [4 x float], [4 x float]* %104, i32 0, i32 %7624
  %7628 = load float, float* %7627, align 4, !tbaa !116, !noalias !106
  %7629 = fsub fast float %7628, %7514
  %7630 = fcmp fast olt float %7629, 0.000000e+00
  %7631 = select i1 %7630, float 0.000000e+00, float 1.000000e+00
  %7632 = fadd fast float %7631, %7626
  %7633 = fmul fast float %7631, %7629
  %7634 = fadd fast float %7633, %7625
  %7635 = add nuw nsw i32 %7624, 1
  %7636 = icmp eq i32 %7635, 4
  br i1 %7636, label %7637, label %7623, !llvm.loop !118

; <label>:7637                                    ; preds = %7623
  %7638 = add nuw nsw i32 %7591, 1
  %7639 = icmp eq i32 %7638, 8
  br i1 %7639, label %7640, label %7588, !llvm.loop !119

; <label>:7640                                    ; preds = %7637
  %7641 = fdiv fast float 1.000000e+00, %7632
  %7642 = fmul fast float %7641, %7634
  %7643 = fdiv fast float 1.000000e+00, %7514
  %7644 = fmul fast float %7642, %7643
  %7645 = call float @dx.op.unary.f32(i32 7, float %7644)  ; Saturate(value)
  %7646 = call float @dx.op.binary.f32(i32 35, float %7645, float 0.000000e+00)  ; FMax(a,b)
  %7647 = fmul fast float %7632, 3.125000e-02
  %7648 = call float @dx.op.unary.f32(i32 7, float %7647)  ; Saturate(value)
  %7649 = fmul fast float %7648, 2.000000e+00
  %7650 = fadd fast float %7649, -1.000000e+00
  %7651 = fcmp fast ogt float %7650, 0.000000e+00
  %7652 = fcmp fast olt float %7650, 0.000000e+00
  %7653 = zext i1 %7651 to i32
  %7654 = zext i1 %7652 to i32
  %7655 = sub nsw i32 %7653, %7654
  %7656 = sitofp i32 %7655 to float
  %7657 = fmul fast float %7656, %7650
  %7658 = fsub fast float 1.000000e+00, %7657
  %7659 = fmul fast float %7658, %7658
  %7660 = fmul fast float %7659, %7658
  %7661 = fsub fast float %7658, %7660
  %7662 = fmul fast float %7661, %7646
  %7663 = fsub fast float 1.000000e+00, %7660
  %7664 = fsub fast float %7663, %7662
  %7665 = fmul fast float %7656, 5.000000e-01
  %7666 = fmul fast float %7665, %7664
  %7667 = fsub fast float 5.000000e-01, %7666
  br label %7668

; <label>:7668                                    ; preds = %7640, %7516, %7501
  %7669 = phi float [ 1.000000e+00, %7501 ], [ %7582, %7516 ], [ %7667, %7640 ]
  %7670 = fcmp fast ogt float %7097, 0.000000e+00
  br i1 %7670, label %7671, label %7835, !dx.controlflow.hints !120

; <label>:7671                                    ; preds = %7668
  %7672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7673 = extractvalue %dx.types.CBufRet.f32 %7672, 1
  %7674 = fadd fast float %7673, %6980
  %7675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7676 = extractvalue %dx.types.CBufRet.f32 %7675, 2
  %7677 = extractvalue %dx.types.CBufRet.f32 %7675, 3
  %7678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7679 = extractvalue %dx.types.CBufRet.f32 %7678, 1
  %7680 = call float @dx.op.binary.f32(i32 35, float %7674, float 0.000000e+00)  ; FMax(a,b)
  %7681 = fadd fast float %7680, 0x3F10000000000000
  %7682 = fcmp fast oeq float %7679, 0.000000e+00
  br i1 %7682, label %7683, label %7750

; <label>:7683                                    ; preds = %7671
  %7684 = extractvalue %dx.types.CBufRet.f32 %7675, 1
  %7685 = extractvalue %dx.types.CBufRet.f32 %7675, 0
  %7686 = fmul fast float %7685, %6990
  %7687 = fmul fast float %7684, %6991
  %7688 = fadd fast float %7686, 5.000000e-01
  %7689 = call float @dx.op.unary.f32(i32 27, float %7688)  ; Round_ni(value)
  %7690 = fadd fast float %7687, 5.000000e-01
  %7691 = call float @dx.op.unary.f32(i32 27, float %7690)  ; Round_ni(value)
  %7692 = fsub fast float %7688, %7689
  %7693 = fsub fast float %7690, %7691
  %7694 = fadd fast float %7689, -5.000000e-01
  %7695 = fadd fast float %7691, -5.000000e-01
  %7696 = fmul fast float %7692, 2.000000e+00
  %7697 = fsub fast float 3.000000e+00, %7696
  %7698 = fadd fast float %7696, 1.000000e+00
  %7699 = fsub fast float 2.000000e+00, %7692
  %7700 = bitcast float %7697 to i32
  %7701 = sub nsw i32 2129859010, %7700
  %7702 = bitcast i32 %7701 to float
  %7703 = fmul fast float %7702, %7699
  %7704 = fadd fast float %7703, -1.000000e+00
  %7705 = bitcast float %7698 to i32
  %7706 = sub nsw i32 2129859010, %7705
  %7707 = bitcast i32 %7706 to float
  %7708 = fmul fast float %7707, %7692
  %7709 = fadd fast float %7708, 1.000000e+00
  %7710 = fmul fast float %7693, 2.000000e+00
  %7711 = fsub fast float 3.000000e+00, %7710
  %7712 = fadd fast float %7710, 1.000000e+00
  %7713 = fsub fast float 2.000000e+00, %7693
  %7714 = bitcast float %7711 to i32
  %7715 = sub nsw i32 2129859010, %7714
  %7716 = bitcast i32 %7715 to float
  %7717 = fmul fast float %7716, %7713
  %7718 = fadd fast float %7717, -1.000000e+00
  %7719 = bitcast float %7712 to i32
  %7720 = sub nsw i32 2129859010, %7719
  %7721 = bitcast i32 %7720 to float
  %7722 = fmul fast float %7721, %7693
  %7723 = fadd fast float %7722, 1.000000e+00
  %7724 = fadd fast float %7704, %7694
  %7725 = fmul fast float %7724, %7676
  %7726 = fadd fast float %7718, %7695
  %7727 = fmul fast float %7726, %7677
  %7728 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %47, float %7725, float %7727, float undef, float undef, i32 0, i32 0, i32 undef, float %7681)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7729 = extractvalue %dx.types.ResRet.f32 %7728, 0
  %7730 = fmul fast float %7729, %7697
  %7731 = fadd fast float %7709, %7694
  %7732 = fmul fast float %7731, %7676
  %7733 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %47, float %7732, float %7727, float undef, float undef, i32 0, i32 0, i32 undef, float %7681)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7734 = extractvalue %dx.types.ResRet.f32 %7733, 0
  %7735 = fmul fast float %7734, %7698
  %7736 = fadd fast float %7723, %7695
  %7737 = fmul fast float %7736, %7677
  %7738 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %47, float %7725, float %7737, float undef, float undef, i32 0, i32 0, i32 undef, float %7681)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7739 = extractvalue %dx.types.ResRet.f32 %7738, 0
  %7740 = fmul fast float %7739, %7697
  %7741 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %47, float %7732, float %7737, float undef, float undef, i32 0, i32 0, i32 undef, float %7681)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7742 = extractvalue %dx.types.ResRet.f32 %7741, 0
  %7743 = fmul fast float %7742, %7698
  %7744 = fadd fast float %7743, %7740
  %7745 = fmul fast float %7744, %7712
  %7746 = fadd fast float %7735, %7730
  %7747 = fmul fast float %7746, %7711
  %7748 = fadd fast float %7747, %7745
  %7749 = fmul fast float %7748, 6.250000e-02
  br label %7835

; <label>:7750                                    ; preds = %7671
  %7751 = fmul fast float %275, 0x401921FB60000000
  %7752 = call float @dx.op.unary.f32(i32 13, float %7751)  ; Sin(value)
  %7753 = call float @dx.op.unary.f32(i32 12, float %7751)  ; Cos(value)
  %7754 = fsub fast float -0.000000e+00, %7752
  br label %7755

; <label>:7755                                    ; preds = %7804, %7750
  %7756 = phi float [ 0.000000e+00, %7750 ], [ %7799, %7804 ]
  %7757 = phi float [ 0.000000e+00, %7750 ], [ %7801, %7804 ]
  %7758 = phi i32 [ 0, %7750 ], [ %7805, %7804 ]
  %7759 = mul i32 %7758, 2
  %7760 = add i32 0, %7759
  %7761 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7760
  %7762 = load float, float* %7761, align 4
  %7763 = mul i32 %7758, 2
  %7764 = add i32 1, %7763
  %7765 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7764
  %7766 = load float, float* %7765, align 4
  %7767 = fmul fast float %7762, %7753
  %7768 = call float @dx.op.tertiary.f32(i32 46, float %7766, float %7754, float %7767)  ; FMad(a,b,c)
  %7769 = fmul fast float %7762, %7752
  %7770 = call float @dx.op.tertiary.f32(i32 46, float %7766, float %7753, float %7769)  ; FMad(a,b,c)
  %7771 = fmul fast float %7768, %7679
  %7772 = fmul fast float %7770, %7679
  %7773 = fadd fast float %7771, %6990
  %7774 = fadd fast float %7772, %6991
  %7775 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %46, float %7773, float %7774, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7776 = extractvalue %dx.types.ResRet.f32 %7775, 0
  %7777 = extractvalue %dx.types.ResRet.f32 %7775, 1
  %7778 = extractvalue %dx.types.ResRet.f32 %7775, 2
  %7779 = extractvalue %dx.types.ResRet.f32 %7775, 3
  %7780 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 0
  store float %7776, float* %7780, align 4
  %7781 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 1
  store float %7777, float* %7781, align 4
  %7782 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 2
  store float %7778, float* %7782, align 4
  %7783 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 3
  store float %7779, float* %7783, align 4
  %7784 = fsub fast float %7776, %7681
  %7785 = fcmp fast olt float %7784, 0.000000e+00
  %7786 = select i1 %7785, float 0.000000e+00, float 1.000000e+00
  %7787 = fadd fast float %7786, %7756
  %7788 = fmul fast float %7786, %7784
  %7789 = fadd fast float %7788, %7757
  br label %7790

; <label>:7790                                    ; preds = %7790, %7755
  %7791 = phi i32 [ 1, %7755 ], [ %7802, %7790 ]
  %7792 = phi float [ %7789, %7755 ], [ %7801, %7790 ]
  %7793 = phi float [ %7787, %7755 ], [ %7799, %7790 ]
  %7794 = getelementptr [4 x float], [4 x float]* %103, i32 0, i32 %7791
  %7795 = load float, float* %7794, align 4, !tbaa !116, !noalias !106
  %7796 = fsub fast float %7795, %7681
  %7797 = fcmp fast olt float %7796, 0.000000e+00
  %7798 = select i1 %7797, float 0.000000e+00, float 1.000000e+00
  %7799 = fadd fast float %7798, %7793
  %7800 = fmul fast float %7798, %7796
  %7801 = fadd fast float %7800, %7792
  %7802 = add nuw nsw i32 %7791, 1
  %7803 = icmp eq i32 %7802, 4
  br i1 %7803, label %7804, label %7790, !llvm.loop !118

; <label>:7804                                    ; preds = %7790
  %7805 = add nuw nsw i32 %7758, 1
  %7806 = icmp eq i32 %7805, 8
  br i1 %7806, label %7807, label %7755, !llvm.loop !119

; <label>:7807                                    ; preds = %7804
  %7808 = fdiv fast float 1.000000e+00, %7799
  %7809 = fmul fast float %7808, %7801
  %7810 = fdiv fast float 1.000000e+00, %7681
  %7811 = fmul fast float %7809, %7810
  %7812 = call float @dx.op.unary.f32(i32 7, float %7811)  ; Saturate(value)
  %7813 = call float @dx.op.binary.f32(i32 35, float %7812, float 0.000000e+00)  ; FMax(a,b)
  %7814 = fmul fast float %7799, 3.125000e-02
  %7815 = call float @dx.op.unary.f32(i32 7, float %7814)  ; Saturate(value)
  %7816 = fmul fast float %7815, 2.000000e+00
  %7817 = fadd fast float %7816, -1.000000e+00
  %7818 = fcmp fast ogt float %7817, 0.000000e+00
  %7819 = fcmp fast olt float %7817, 0.000000e+00
  %7820 = zext i1 %7818 to i32
  %7821 = zext i1 %7819 to i32
  %7822 = sub nsw i32 %7820, %7821
  %7823 = sitofp i32 %7822 to float
  %7824 = fmul fast float %7823, %7817
  %7825 = fsub fast float 1.000000e+00, %7824
  %7826 = fmul fast float %7825, %7825
  %7827 = fmul fast float %7826, %7825
  %7828 = fsub fast float %7825, %7827
  %7829 = fmul fast float %7828, %7813
  %7830 = fsub fast float 1.000000e+00, %7827
  %7831 = fsub fast float %7830, %7829
  %7832 = fmul fast float %7823, 5.000000e-01
  %7833 = fmul fast float %7832, %7831
  %7834 = fsub fast float 5.000000e-01, %7833
  br label %7835

; <label>:7835                                    ; preds = %7807, %7683, %7668
  %7836 = phi float [ 1.000000e+00, %7668 ], [ %7749, %7683 ], [ %7834, %7807 ]
  %7837 = fcmp fast ogt float %7096, 0.000000e+00
  br i1 %7837, label %7838, label %8156, !dx.controlflow.hints !121

; <label>:7838                                    ; preds = %7835
  %7839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7840 = extractvalue %dx.types.CBufRet.f32 %7839, 0
  %7841 = fadd fast float %7840, %6980
  %7842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7843 = extractvalue %dx.types.CBufRet.f32 %7842, 2
  %7844 = extractvalue %dx.types.CBufRet.f32 %7842, 3
  %7845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7846 = extractvalue %dx.types.CBufRet.f32 %7845, 0
  %7847 = call float @dx.op.binary.f32(i32 35, float %7841, float 0.000000e+00)  ; FMax(a,b)
  %7848 = fadd fast float %7847, 0x3F10000000000000
  %7849 = fcmp fast oeq float %7846, 0.000000e+00
  br i1 %6983, label %7850, label %8003, !dx.controlflow.hints !122

; <label>:7850                                    ; preds = %7838
  br i1 %7849, label %7851, label %7918

; <label>:7851                                    ; preds = %7850
  %7852 = extractvalue %dx.types.CBufRet.f32 %7842, 1
  %7853 = extractvalue %dx.types.CBufRet.f32 %7842, 0
  %7854 = fmul fast float %7853, %6972
  %7855 = fmul fast float %7852, %6976
  %7856 = fadd fast float %7854, 5.000000e-01
  %7857 = call float @dx.op.unary.f32(i32 27, float %7856)  ; Round_ni(value)
  %7858 = fadd fast float %7855, 5.000000e-01
  %7859 = call float @dx.op.unary.f32(i32 27, float %7858)  ; Round_ni(value)
  %7860 = fsub fast float %7856, %7857
  %7861 = fsub fast float %7858, %7859
  %7862 = fadd fast float %7857, -5.000000e-01
  %7863 = fadd fast float %7859, -5.000000e-01
  %7864 = fmul fast float %7860, 2.000000e+00
  %7865 = fsub fast float 3.000000e+00, %7864
  %7866 = fadd fast float %7864, 1.000000e+00
  %7867 = fsub fast float 2.000000e+00, %7860
  %7868 = bitcast float %7865 to i32
  %7869 = sub nsw i32 2129859010, %7868
  %7870 = bitcast i32 %7869 to float
  %7871 = fmul fast float %7870, %7867
  %7872 = fadd fast float %7871, -1.000000e+00
  %7873 = bitcast float %7866 to i32
  %7874 = sub nsw i32 2129859010, %7873
  %7875 = bitcast i32 %7874 to float
  %7876 = fmul fast float %7875, %7860
  %7877 = fadd fast float %7876, 1.000000e+00
  %7878 = fmul fast float %7861, 2.000000e+00
  %7879 = fsub fast float 3.000000e+00, %7878
  %7880 = fadd fast float %7878, 1.000000e+00
  %7881 = fsub fast float 2.000000e+00, %7861
  %7882 = bitcast float %7879 to i32
  %7883 = sub nsw i32 2129859010, %7882
  %7884 = bitcast i32 %7883 to float
  %7885 = fmul fast float %7884, %7881
  %7886 = fadd fast float %7885, -1.000000e+00
  %7887 = bitcast float %7880 to i32
  %7888 = sub nsw i32 2129859010, %7887
  %7889 = bitcast i32 %7888 to float
  %7890 = fmul fast float %7889, %7861
  %7891 = fadd fast float %7890, 1.000000e+00
  %7892 = fadd fast float %7872, %7862
  %7893 = fmul fast float %7892, %7843
  %7894 = fadd fast float %7886, %7863
  %7895 = fmul fast float %7894, %7844
  %7896 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %47, float %7893, float %7895, float undef, float undef, i32 0, i32 0, i32 undef, float %7848)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7897 = extractvalue %dx.types.ResRet.f32 %7896, 0
  %7898 = fmul fast float %7897, %7865
  %7899 = fadd fast float %7877, %7862
  %7900 = fmul fast float %7899, %7843
  %7901 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %47, float %7900, float %7895, float undef, float undef, i32 0, i32 0, i32 undef, float %7848)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7902 = extractvalue %dx.types.ResRet.f32 %7901, 0
  %7903 = fmul fast float %7902, %7866
  %7904 = fadd fast float %7891, %7863
  %7905 = fmul fast float %7904, %7844
  %7906 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %47, float %7893, float %7905, float undef, float undef, i32 0, i32 0, i32 undef, float %7848)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7907 = extractvalue %dx.types.ResRet.f32 %7906, 0
  %7908 = fmul fast float %7907, %7865
  %7909 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %47, float %7900, float %7905, float undef, float undef, i32 0, i32 0, i32 undef, float %7848)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7910 = extractvalue %dx.types.ResRet.f32 %7909, 0
  %7911 = fmul fast float %7910, %7866
  %7912 = fadd fast float %7911, %7908
  %7913 = fmul fast float %7912, %7880
  %7914 = fadd fast float %7903, %7898
  %7915 = fmul fast float %7914, %7879
  %7916 = fadd fast float %7915, %7913
  %7917 = fmul fast float %7916, 6.250000e-02
  br label %8156

; <label>:7918                                    ; preds = %7850
  %7919 = fmul fast float %275, 0x401921FB60000000
  %7920 = call float @dx.op.unary.f32(i32 13, float %7919)  ; Sin(value)
  %7921 = call float @dx.op.unary.f32(i32 12, float %7919)  ; Cos(value)
  %7922 = fsub fast float -0.000000e+00, %7920
  br label %7923

; <label>:7923                                    ; preds = %7972, %7918
  %7924 = phi float [ 0.000000e+00, %7918 ], [ %7967, %7972 ]
  %7925 = phi float [ 0.000000e+00, %7918 ], [ %7969, %7972 ]
  %7926 = phi i32 [ 0, %7918 ], [ %7973, %7972 ]
  %7927 = mul i32 %7926, 2
  %7928 = add i32 0, %7927
  %7929 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7928
  %7930 = load float, float* %7929, align 4
  %7931 = mul i32 %7926, 2
  %7932 = add i32 1, %7931
  %7933 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7932
  %7934 = load float, float* %7933, align 4
  %7935 = fmul fast float %7930, %7921
  %7936 = call float @dx.op.tertiary.f32(i32 46, float %7934, float %7922, float %7935)  ; FMad(a,b,c)
  %7937 = fmul fast float %7930, %7920
  %7938 = call float @dx.op.tertiary.f32(i32 46, float %7934, float %7921, float %7937)  ; FMad(a,b,c)
  %7939 = fmul fast float %7936, %7846
  %7940 = fmul fast float %7938, %7846
  %7941 = fadd fast float %7939, %6972
  %7942 = fadd fast float %7940, %6976
  %7943 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %46, float %7941, float %7942, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7944 = extractvalue %dx.types.ResRet.f32 %7943, 0
  %7945 = extractvalue %dx.types.ResRet.f32 %7943, 1
  %7946 = extractvalue %dx.types.ResRet.f32 %7943, 2
  %7947 = extractvalue %dx.types.ResRet.f32 %7943, 3
  %7948 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %7944, float* %7948, align 4
  %7949 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %7945, float* %7949, align 4
  %7950 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %7946, float* %7950, align 4
  %7951 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %7947, float* %7951, align 4
  %7952 = fsub fast float %7944, %7848
  %7953 = fcmp fast olt float %7952, 0.000000e+00
  %7954 = select i1 %7953, float 0.000000e+00, float 1.000000e+00
  %7955 = fadd fast float %7954, %7924
  %7956 = fmul fast float %7954, %7952
  %7957 = fadd fast float %7956, %7925
  br label %7958

; <label>:7958                                    ; preds = %7958, %7923
  %7959 = phi i32 [ 1, %7923 ], [ %7970, %7958 ]
  %7960 = phi float [ %7957, %7923 ], [ %7969, %7958 ]
  %7961 = phi float [ %7955, %7923 ], [ %7967, %7958 ]
  %7962 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %7959
  %7963 = load float, float* %7962, align 4, !tbaa !116, !noalias !106
  %7964 = fsub fast float %7963, %7848
  %7965 = fcmp fast olt float %7964, 0.000000e+00
  %7966 = select i1 %7965, float 0.000000e+00, float 1.000000e+00
  %7967 = fadd fast float %7966, %7961
  %7968 = fmul fast float %7966, %7964
  %7969 = fadd fast float %7968, %7960
  %7970 = add nuw nsw i32 %7959, 1
  %7971 = icmp eq i32 %7970, 4
  br i1 %7971, label %7972, label %7958, !llvm.loop !118

; <label>:7972                                    ; preds = %7958
  %7973 = add nuw nsw i32 %7926, 1
  %7974 = icmp eq i32 %7973, 8
  br i1 %7974, label %7975, label %7923, !llvm.loop !119

; <label>:7975                                    ; preds = %7972
  %7976 = fdiv fast float 1.000000e+00, %7967
  %7977 = fmul fast float %7976, %7969
  %7978 = fdiv fast float 1.000000e+00, %7848
  %7979 = fmul fast float %7977, %7978
  %7980 = call float @dx.op.unary.f32(i32 7, float %7979)  ; Saturate(value)
  %7981 = call float @dx.op.binary.f32(i32 35, float %7980, float 0.000000e+00)  ; FMax(a,b)
  %7982 = fmul fast float %7967, 3.125000e-02
  %7983 = call float @dx.op.unary.f32(i32 7, float %7982)  ; Saturate(value)
  %7984 = fmul fast float %7983, 2.000000e+00
  %7985 = fadd fast float %7984, -1.000000e+00
  %7986 = fcmp fast ogt float %7985, 0.000000e+00
  %7987 = fcmp fast olt float %7985, 0.000000e+00
  %7988 = zext i1 %7986 to i32
  %7989 = zext i1 %7987 to i32
  %7990 = sub nsw i32 %7988, %7989
  %7991 = sitofp i32 %7990 to float
  %7992 = fmul fast float %7991, %7985
  %7993 = fsub fast float 1.000000e+00, %7992
  %7994 = fmul fast float %7993, %7993
  %7995 = fmul fast float %7994, %7993
  %7996 = fsub fast float %7993, %7995
  %7997 = fmul fast float %7996, %7981
  %7998 = fsub fast float 1.000000e+00, %7995
  %7999 = fsub fast float %7998, %7997
  %8000 = fmul fast float %7991, 5.000000e-01
  %8001 = fmul fast float %8000, %7999
  %8002 = fsub fast float 5.000000e-01, %8001
  br label %8156

; <label>:8003                                    ; preds = %7838
  br i1 %7849, label %8004, label %8071

; <label>:8004                                    ; preds = %8003
  %8005 = extractvalue %dx.types.CBufRet.f32 %7842, 1
  %8006 = extractvalue %dx.types.CBufRet.f32 %7842, 0
  %8007 = fmul fast float %8006, %6972
  %8008 = fmul fast float %8005, %6976
  %8009 = fadd fast float %8007, 5.000000e-01
  %8010 = call float @dx.op.unary.f32(i32 27, float %8009)  ; Round_ni(value)
  %8011 = fadd fast float %8008, 5.000000e-01
  %8012 = call float @dx.op.unary.f32(i32 27, float %8011)  ; Round_ni(value)
  %8013 = fsub fast float %8009, %8010
  %8014 = fsub fast float %8011, %8012
  %8015 = fadd fast float %8010, -5.000000e-01
  %8016 = fadd fast float %8012, -5.000000e-01
  %8017 = fmul fast float %8013, 2.000000e+00
  %8018 = fsub fast float 3.000000e+00, %8017
  %8019 = fadd fast float %8017, 1.000000e+00
  %8020 = fsub fast float 2.000000e+00, %8013
  %8021 = bitcast float %8018 to i32
  %8022 = sub nsw i32 2129859010, %8021
  %8023 = bitcast i32 %8022 to float
  %8024 = fmul fast float %8023, %8020
  %8025 = fadd fast float %8024, -1.000000e+00
  %8026 = bitcast float %8019 to i32
  %8027 = sub nsw i32 2129859010, %8026
  %8028 = bitcast i32 %8027 to float
  %8029 = fmul fast float %8028, %8013
  %8030 = fadd fast float %8029, 1.000000e+00
  %8031 = fmul fast float %8014, 2.000000e+00
  %8032 = fsub fast float 3.000000e+00, %8031
  %8033 = fadd fast float %8031, 1.000000e+00
  %8034 = fsub fast float 2.000000e+00, %8014
  %8035 = bitcast float %8032 to i32
  %8036 = sub nsw i32 2129859010, %8035
  %8037 = bitcast i32 %8036 to float
  %8038 = fmul fast float %8037, %8034
  %8039 = fadd fast float %8038, -1.000000e+00
  %8040 = bitcast float %8033 to i32
  %8041 = sub nsw i32 2129859010, %8040
  %8042 = bitcast i32 %8041 to float
  %8043 = fmul fast float %8042, %8014
  %8044 = fadd fast float %8043, 1.000000e+00
  %8045 = fadd fast float %8025, %8015
  %8046 = fmul fast float %8045, %7843
  %8047 = fadd fast float %8039, %8016
  %8048 = fmul fast float %8047, %7844
  %8049 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %47, float %8046, float %8048, float undef, float undef, i32 0, i32 0, i32 undef, float %7848)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8050 = extractvalue %dx.types.ResRet.f32 %8049, 0
  %8051 = fmul fast float %8050, %8018
  %8052 = fadd fast float %8030, %8015
  %8053 = fmul fast float %8052, %7843
  %8054 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %47, float %8053, float %8048, float undef, float undef, i32 0, i32 0, i32 undef, float %7848)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8055 = extractvalue %dx.types.ResRet.f32 %8054, 0
  %8056 = fmul fast float %8055, %8019
  %8057 = fadd fast float %8044, %8016
  %8058 = fmul fast float %8057, %7844
  %8059 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %47, float %8046, float %8058, float undef, float undef, i32 0, i32 0, i32 undef, float %7848)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8060 = extractvalue %dx.types.ResRet.f32 %8059, 0
  %8061 = fmul fast float %8060, %8018
  %8062 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %47, float %8053, float %8058, float undef, float undef, i32 0, i32 0, i32 undef, float %7848)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8063 = extractvalue %dx.types.ResRet.f32 %8062, 0
  %8064 = fmul fast float %8063, %8019
  %8065 = fadd fast float %8064, %8061
  %8066 = fmul fast float %8065, %8033
  %8067 = fadd fast float %8056, %8051
  %8068 = fmul fast float %8067, %8032
  %8069 = fadd fast float %8068, %8066
  %8070 = fmul fast float %8069, 6.250000e-02
  br label %8156

; <label>:8071                                    ; preds = %8003
  %8072 = fmul fast float %275, 0x401921FB60000000
  %8073 = call float @dx.op.unary.f32(i32 13, float %8072)  ; Sin(value)
  %8074 = call float @dx.op.unary.f32(i32 12, float %8072)  ; Cos(value)
  %8075 = fsub fast float -0.000000e+00, %8073
  br label %8076

; <label>:8076                                    ; preds = %8125, %8071
  %8077 = phi float [ 0.000000e+00, %8071 ], [ %8120, %8125 ]
  %8078 = phi float [ 0.000000e+00, %8071 ], [ %8122, %8125 ]
  %8079 = phi i32 [ 0, %8071 ], [ %8126, %8125 ]
  %8080 = mul i32 %8079, 2
  %8081 = add i32 0, %8080
  %8082 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8081
  %8083 = load float, float* %8082, align 4
  %8084 = mul i32 %8079, 2
  %8085 = add i32 1, %8084
  %8086 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8085
  %8087 = load float, float* %8086, align 4
  %8088 = fmul fast float %8083, %8074
  %8089 = call float @dx.op.tertiary.f32(i32 46, float %8087, float %8075, float %8088)  ; FMad(a,b,c)
  %8090 = fmul fast float %8083, %8073
  %8091 = call float @dx.op.tertiary.f32(i32 46, float %8087, float %8074, float %8090)  ; FMad(a,b,c)
  %8092 = fmul fast float %8089, %7846
  %8093 = fmul fast float %8091, %7846
  %8094 = fadd fast float %8092, %6972
  %8095 = fadd fast float %8093, %6976
  %8096 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %46, float %8094, float %8095, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8097 = extractvalue %dx.types.ResRet.f32 %8096, 0
  %8098 = extractvalue %dx.types.ResRet.f32 %8096, 1
  %8099 = extractvalue %dx.types.ResRet.f32 %8096, 2
  %8100 = extractvalue %dx.types.ResRet.f32 %8096, 3
  %8101 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 0
  store float %8097, float* %8101, align 4
  %8102 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 1
  store float %8098, float* %8102, align 4
  %8103 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 2
  store float %8099, float* %8103, align 4
  %8104 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 3
  store float %8100, float* %8104, align 4
  %8105 = fsub fast float %8097, %7848
  %8106 = fcmp fast olt float %8105, 0.000000e+00
  %8107 = select i1 %8106, float 0.000000e+00, float 1.000000e+00
  %8108 = fadd fast float %8107, %8077
  %8109 = fmul fast float %8107, %8105
  %8110 = fadd fast float %8109, %8078
  br label %8111

; <label>:8111                                    ; preds = %8111, %8076
  %8112 = phi i32 [ 1, %8076 ], [ %8123, %8111 ]
  %8113 = phi float [ %8110, %8076 ], [ %8122, %8111 ]
  %8114 = phi float [ %8108, %8076 ], [ %8120, %8111 ]
  %8115 = getelementptr [4 x float], [4 x float]* %101, i32 0, i32 %8112
  %8116 = load float, float* %8115, align 4, !tbaa !116, !noalias !106
  %8117 = fsub fast float %8116, %7848
  %8118 = fcmp fast olt float %8117, 0.000000e+00
  %8119 = select i1 %8118, float 0.000000e+00, float 1.000000e+00
  %8120 = fadd fast float %8119, %8114
  %8121 = fmul fast float %8119, %8117
  %8122 = fadd fast float %8121, %8113
  %8123 = add nuw nsw i32 %8112, 1
  %8124 = icmp eq i32 %8123, 4
  br i1 %8124, label %8125, label %8111, !llvm.loop !118

; <label>:8125                                    ; preds = %8111
  %8126 = add nuw nsw i32 %8079, 1
  %8127 = icmp eq i32 %8126, 8
  br i1 %8127, label %8128, label %8076, !llvm.loop !119

; <label>:8128                                    ; preds = %8125
  %8129 = fdiv fast float 1.000000e+00, %8120
  %8130 = fmul fast float %8129, %8122
  %8131 = fdiv fast float 1.000000e+00, %7848
  %8132 = fmul fast float %8130, %8131
  %8133 = call float @dx.op.unary.f32(i32 7, float %8132)  ; Saturate(value)
  %8134 = call float @dx.op.binary.f32(i32 35, float %8133, float 0.000000e+00)  ; FMax(a,b)
  %8135 = fmul fast float %8120, 3.125000e-02
  %8136 = call float @dx.op.unary.f32(i32 7, float %8135)  ; Saturate(value)
  %8137 = fmul fast float %8136, 2.000000e+00
  %8138 = fadd fast float %8137, -1.000000e+00
  %8139 = fcmp fast ogt float %8138, 0.000000e+00
  %8140 = fcmp fast olt float %8138, 0.000000e+00
  %8141 = zext i1 %8139 to i32
  %8142 = zext i1 %8140 to i32
  %8143 = sub nsw i32 %8141, %8142
  %8144 = sitofp i32 %8143 to float
  %8145 = fmul fast float %8144, %8138
  %8146 = fsub fast float 1.000000e+00, %8145
  %8147 = fmul fast float %8146, %8146
  %8148 = fmul fast float %8147, %8146
  %8149 = fsub fast float %8146, %8148
  %8150 = fmul fast float %8149, %8134
  %8151 = fsub fast float 1.000000e+00, %8148
  %8152 = fsub fast float %8151, %8150
  %8153 = fmul fast float %8144, 5.000000e-01
  %8154 = fmul fast float %8153, %8152
  %8155 = fsub fast float 5.000000e-01, %8154
  br label %8156

; <label>:8156                                    ; preds = %8128, %8004, %7975, %7851, %7835
  %8157 = phi float [ 1.000000e+00, %7835 ], [ %7917, %7851 ], [ %8002, %7975 ], [ %8070, %8004 ], [ %8155, %8128 ]
  %8158 = fsub fast float %7669, %7502
  %8159 = fmul fast float %8158, %7069
  %8160 = fadd fast float %8159, %7502
  %8161 = fsub fast float %7836, %8160
  %8162 = fmul fast float %8161, %7068
  %8163 = fadd fast float %8162, %8160
  %8164 = fsub fast float %8157, %8163
  %8165 = fmul fast float %8164, %7096
  %8166 = fadd fast float %8165, %8163
  %8167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %8168 = extractvalue %dx.types.CBufRet.f32 %8167, 2
  %8169 = fcmp fast ogt float %8168, 0.000000e+00
  br i1 %8169, label %8170, label %8210, !dx.controlflow.hints !123

; <label>:8170                                    ; preds = %8156
  %8171 = fcmp fast ugt float %8168, 0.000000e+00
  br i1 %8171, label %8172, label %8207

; <label>:8172                                    ; preds = %8170
  %8173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %8174 = extractvalue %dx.types.CBufRet.f32 %8173, 0
  %8175 = extractvalue %dx.types.CBufRet.f32 %8173, 1
  %8176 = extractvalue %dx.types.CBufRet.f32 %8173, 2
  %8177 = extractvalue %dx.types.CBufRet.f32 %8173, 3
  %8178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %8179 = extractvalue %dx.types.CBufRet.f32 %8178, 0
  %8180 = extractvalue %dx.types.CBufRet.f32 %8178, 1
  %8181 = extractvalue %dx.types.CBufRet.f32 %8178, 2
  %8182 = extractvalue %dx.types.CBufRet.f32 %8178, 3
  %8183 = extractvalue %dx.types.CBufRet.f32 %8167, 0
  %8184 = extractvalue %dx.types.CBufRet.f32 %8167, 1
  %8185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %8186 = extractvalue %dx.types.CBufRet.f32 %8185, 0
  %8187 = extractvalue %dx.types.CBufRet.f32 %8185, 1
  %8188 = extractvalue %dx.types.CBufRet.f32 %8185, 2
  %8189 = fadd fast float %8186, %6949
  %8190 = fadd fast float %8187, %6950
  %8191 = fadd fast float %8188, %6951
  %8192 = fmul fast float %8189, %8174
  %8193 = call float @dx.op.tertiary.f32(i32 46, float %8175, float %8190, float %8192)  ; FMad(a,b,c)
  %8194 = call float @dx.op.tertiary.f32(i32 46, float %8176, float %8191, float %8193)  ; FMad(a,b,c)
  %8195 = fadd fast float %8194, %8177
  %8196 = fmul fast float %8189, %8179
  %8197 = call float @dx.op.tertiary.f32(i32 46, float %8180, float %8190, float %8196)  ; FMad(a,b,c)
  %8198 = call float @dx.op.tertiary.f32(i32 46, float %8181, float %8191, float %8197)  ; FMad(a,b,c)
  %8199 = fadd fast float %8198, %8182
  %8200 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %42, float %8195, float %8199, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %8201 = extractvalue %dx.types.ResRet.f32 %8200, 0
  %8202 = fmul fast float %8201, %8184
  %8203 = fadd fast float %8202, %8183
  %8204 = call float @dx.op.unary.f32(i32 7, float %8203)  ; Saturate(value)
  %8205 = fmul fast float %8204, %8168
  %8206 = fsub fast float 1.000000e+00, %8205
  br label %8207

; <label>:8207                                    ; preds = %8172, %8170
  %8208 = phi float [ %8206, %8172 ], [ 1.000000e+00, %8170 ]
  %8209 = fmul fast float %8208, %8166
  br label %8210

; <label>:8210                                    ; preds = %8207, %8156, %6929
  %8211 = phi float [ 1.000000e+00, %6929 ], [ %8209, %8207 ], [ %8166, %8156 ]
  %8212 = call float @dx.op.binary.f32(i32 36, float %8211, float %8211)  ; FMin(a,b)
  %8213 = call float @dx.op.binary.f32(i32 36, float %8211, float %8212)  ; FMin(a,b)
  %8214 = fcmp fast ogt float %8213, 0.000000e+00
  br i1 %8214, label %8215, label %8381, !dx.controlflow.hints !124

; <label>:8215                                    ; preds = %8210
  %8216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %8217 = extractvalue %dx.types.CBufRet.f32 %8216, 0
  %8218 = extractvalue %dx.types.CBufRet.f32 %8216, 1
  %8219 = extractvalue %dx.types.CBufRet.f32 %8216, 2
  %8220 = extractvalue %dx.types.CBufRet.f32 %8216, 3
  %8221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %8222 = extractvalue %dx.types.CBufRet.f32 %8221, 0
  %8223 = extractvalue %dx.types.CBufRet.f32 %8221, 1
  %8224 = extractvalue %dx.types.CBufRet.f32 %8221, 2
  %8225 = extractvalue %dx.types.CBufRet.f32 %8221, 3
  %8226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %8227 = extractvalue %dx.types.CBufRet.f32 %8226, 0
  %8228 = extractvalue %dx.types.CBufRet.f32 %8226, 1
  %8229 = extractvalue %dx.types.CBufRet.f32 %8226, 2
  %8230 = extractvalue %dx.types.CBufRet.f32 %8226, 3
  %8231 = fmul fast float %8217, %6949
  %8232 = call float @dx.op.tertiary.f32(i32 46, float %6950, float %8218, float %8231)  ; FMad(a,b,c)
  %8233 = call float @dx.op.tertiary.f32(i32 46, float %6951, float %8219, float %8232)  ; FMad(a,b,c)
  %8234 = fadd fast float %8233, %8220
  %8235 = fmul fast float %8222, %6949
  %8236 = call float @dx.op.tertiary.f32(i32 46, float %6950, float %8223, float %8235)  ; FMad(a,b,c)
  %8237 = call float @dx.op.tertiary.f32(i32 46, float %6951, float %8224, float %8236)  ; FMad(a,b,c)
  %8238 = fadd fast float %8237, %8225
  %8239 = fmul fast float %8227, %6949
  %8240 = call float @dx.op.tertiary.f32(i32 46, float %6950, float %8228, float %8239)  ; FMad(a,b,c)
  %8241 = call float @dx.op.tertiary.f32(i32 46, float %6951, float %8229, float %8240)  ; FMad(a,b,c)
  %8242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %8243 = extractvalue %dx.types.CBufRet.f32 %8242, 0
  %8244 = extractvalue %dx.types.CBufRet.f32 %8242, 1
  %8245 = extractvalue %dx.types.CBufRet.f32 %8242, 3
  %8246 = fmul fast float %8245, %8234
  %8247 = fmul fast float %8245, %8238
  %8248 = fadd fast float %8246, %8243
  %8249 = fadd fast float %8247, %8244
  %8250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %8251 = extractvalue %dx.types.CBufRet.f32 %8250, 0
  %8252 = extractvalue %dx.types.CBufRet.f32 %8250, 1
  %8253 = fsub fast float %8248, %8251
  %8254 = fsub fast float %8249, %8252
  %8255 = fcmp fast olt float %8253, 0.000000e+00
  %8256 = fcmp fast olt float %8254, 0.000000e+00
  %8257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %8258 = extractvalue %dx.types.CBufRet.f32 %8257, 0
  %8259 = extractvalue %dx.types.CBufRet.f32 %8257, 1
  %8260 = extractvalue %dx.types.CBufRet.f32 %8257, 2
  %8261 = extractvalue %dx.types.CBufRet.f32 %8257, 3
  %8262 = select i1 %8255, float %8258, float %8260
  %8263 = select i1 %8256, float %8259, float %8261
  %8264 = fmul fast float %8262, %8253
  %8265 = fmul fast float %8263, %8254
  %8266 = call float @dx.op.unary.f32(i32 6, float %8264)  ; FAbs(value)
  %8267 = call float @dx.op.unary.f32(i32 6, float %8265)  ; FAbs(value)
  %8268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %8269 = extractvalue %dx.types.CBufRet.f32 %8268, 0
  %8270 = call float @dx.op.binary.f32(i32 35, float %8266, float %8267)  ; FMax(a,b)
  %8271 = fsub fast float %8269, %8270
  %8272 = call float @dx.op.unary.f32(i32 7, float %8271)  ; Saturate(value)
  %8273 = fcmp fast ogt float %8272, 0.000000e+00
  br i1 %8273, label %8274, label %8315, !dx.controlflow.hints !125

; <label>:8274                                    ; preds = %8215
  %8275 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %45, float %8248, float %8249, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8276 = extractvalue %dx.types.ResRet.f32 %8275, 1
  %8277 = fcmp fast ogt float %8276, 0.000000e+00
  br i1 %8277, label %8278, label %8310

; <label>:8278                                    ; preds = %8274
  %8279 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %45, float %8248, float %8249, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8280 = extractvalue %dx.types.ResRet.f32 %8279, 0
  %8281 = extractvalue %dx.types.ResRet.f32 %8279, 1
  %8282 = extractvalue %dx.types.ResRet.f32 %8279, 2
  %8283 = extractvalue %dx.types.ResRet.f32 %8279, 3
  %8284 = fsub fast float 1.000000e+00, %8230
  %8285 = fsub fast float %8284, %8241
  %8286 = fmul fast float %8285, 0x400921FB60000000
  %8287 = fadd fast float %8286, 0x3FF921FB60000000
  %8288 = call float @dx.op.unary.f32(i32 13, float %8287)  ; Sin(value)
  %8289 = fadd fast float %8288, -1.000000e+00
  %8290 = fmul fast float %8289, 0x3FD45F3060000000
  %8291 = fmul fast float %8285, 0x401921FB60000000
  %8292 = fadd fast float %8291, 0x400921FB60000000
  %8293 = call float @dx.op.unary.f32(i32 13, float %8292)  ; Sin(value)
  %8294 = fadd fast float %8293, 0x3E7777A5C0000000
  %8295 = fmul fast float %8294, 0x3FC45F3060000000
  %8296 = fmul fast float %8285, 0x4022D97C80000000
  %8297 = fadd fast float %8296, 0x4012D97C80000000
  %8298 = call float @dx.op.unary.f32(i32 13, float %8297)  ; Sin(value)
  %8299 = fadd fast float %8298, 1.000000e+00
  %8300 = fmul fast float %8299, 0x3FBB2995E0000000
  %8301 = fmul fast float %8285, 0x402921FB60000000
  %8302 = fadd fast float %8301, 0x401921FB60000000
  %8303 = call float @dx.op.unary.f32(i32 13, float %8302)  ; Sin(value)
  %8304 = fadd fast float %8303, 0xBE8777A5C0000000
  %8305 = fmul fast float %8304, 0x3FB45F3060000000
  %8306 = call float @dx.op.dot4.f32(i32 56, float %8280, float %8281, float %8282, float %8283, float %8290, float %8295, float %8300, float %8305)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %8307 = fmul fast float %8306, 0xBFF7154760000000
  %8308 = call float @dx.op.unary.f32(i32 21, float %8307)  ; Exp(value)
  %8309 = call float @dx.op.unary.f32(i32 7, float %8308)  ; Saturate(value)
  br label %8310

; <label>:8310                                    ; preds = %8278, %8274
  %8311 = phi float [ %8309, %8278 ], [ 1.000000e+00, %8274 ]
  %8312 = fadd fast float %8311, -1.000000e+00
  %8313 = fmul fast float %8312, %8272
  %8314 = fadd fast float %8313, 1.000000e+00
  br label %8315

; <label>:8315                                    ; preds = %8310, %8215
  %8316 = phi float [ %8314, %8310 ], [ 1.000000e+00, %8215 ]
  %8317 = fmul fast float %8316, %8211
  %8318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %8319 = extractvalue %dx.types.CBufRet.f32 %8318, 0
  %8320 = extractvalue %dx.types.CBufRet.f32 %8318, 1
  %8321 = extractvalue %dx.types.CBufRet.f32 %8318, 2
  %8322 = fadd fast float %8319, %190
  %8323 = fadd fast float %8320, %191
  %8324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %8325 = extractvalue %dx.types.CBufRet.f32 %8324, 1
  %8326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %8327 = extractvalue %dx.types.CBufRet.f32 %8326, 0
  %8328 = extractvalue %dx.types.CBufRet.f32 %8326, 1
  %8329 = extractvalue %dx.types.CBufRet.f32 %8326, 2
  %8330 = fsub fast float -0.000000e+00, %8322
  %8331 = fsub fast float -0.000000e+00, %8323
  %8332 = fsub fast float -0.000000e+00, %192
  %8333 = fsub fast float %8332, %8321
  %8334 = fadd fast float %8333, %8325
  %8335 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8330, float %8331, float %8334)  ; Dot3(ax,ay,az,bx,by,bz)
  %8336 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8327, float %8328, float %8329)  ; Dot3(ax,ay,az,bx,by,bz)
  %8337 = fdiv fast float 1.000000e+00, %8336
  %8338 = fmul fast float %8337, %8335
  %8339 = fmul fast float %8327, %8338
  %8340 = fmul fast float %8328, %8338
  %8341 = fadd fast float %8339, %8322
  %8342 = fadd fast float %8340, %8323
  %8343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %8344 = extractvalue %dx.types.CBufRet.f32 %8343, 0
  %8345 = extractvalue %dx.types.CBufRet.f32 %8343, 1
  %8346 = fsub fast float %8341, %8344
  %8347 = fsub fast float %8342, %8345
  %8348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %8349 = extractvalue %dx.types.CBufRet.f32 %8348, 2
  %8350 = extractvalue %dx.types.CBufRet.f32 %8348, 3
  %8351 = fmul fast float %8346, %8349
  %8352 = fmul fast float %8347, %8350
  %8353 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %8354 = extractvalue %dx.types.CBufRet.i32 %8353, 3
  %8355 = icmp eq i32 %8354, 0
  br i1 %8355, label %8361, label %8356

; <label>:8356                                    ; preds = %8315
  %8357 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %44, float %8351, float %8352, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8358 = extractvalue %dx.types.ResRet.f32 %8357, 0
  %8359 = extractvalue %dx.types.ResRet.f32 %8357, 1
  %8360 = extractvalue %dx.types.ResRet.f32 %8357, 2
  br label %8366

; <label>:8361                                    ; preds = %8315
  %8362 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %45, float %8351, float %8352, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8363 = extractvalue %dx.types.ResRet.f32 %8362, 0
  %8364 = extractvalue %dx.types.ResRet.f32 %8362, 1
  %8365 = extractvalue %dx.types.ResRet.f32 %8362, 2
  br label %8366

; <label>:8366                                    ; preds = %8361, %8356
  %8367 = phi float [ %8358, %8356 ], [ %8363, %8361 ]
  %8368 = phi float [ %8359, %8356 ], [ %8364, %8361 ]
  %8369 = phi float [ %8360, %8356 ], [ %8365, %8361 ]
  %8370 = extractvalue %dx.types.CBufRet.f32 %8324, 2
  %8371 = fmul fast float %8370, %8367
  %8372 = extractvalue %dx.types.CBufRet.f32 %8324, 0
  %8373 = fsub fast float %8338, %8372
  %8374 = fsub fast float %8373, %8371
  %8375 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8374)  ; FMax(a,b)
  %8376 = fmul fast float %8375, %8368
  %8377 = call float @dx.op.binary.f32(i32 36, float %8369, float %8376)  ; FMin(a,b)
  %8378 = fmul fast float %8377, 0xBFF7154760000000
  %8379 = call float @dx.op.unary.f32(i32 21, float %8378)  ; Exp(value)
  %8380 = fmul fast float %8317, %8379
  br label %8381

; <label>:8381                                    ; preds = %8366, %8210
  %8382 = phi float [ %8380, %8366 ], [ %8211, %8210 ]
  %8383 = call float @dx.op.binary.f32(i32 36, float %8382, float %8382)  ; FMin(a,b)
  %8384 = call float @dx.op.binary.f32(i32 36, float %8382, float %8383)  ; FMin(a,b)
  %8385 = fcmp fast ogt float %8384, 0.000000e+00
  br i1 %8385, label %8386, label %8693, !dx.controlflow.hints !126

; <label>:8386                                    ; preds = %8381
  %8387 = fmul fast float %8382, %6941
  %8388 = fmul fast float %8382, %6942
  %8389 = fmul fast float %8382, %6943
  %8390 = fsub fast float %6930, %6012
  %8391 = fsub fast float %6931, %6011
  %8392 = fsub fast float %6932, %6010
  %8393 = call float @dx.op.dot3.f32(i32 55, float %8390, float %8391, float %8392, float %8390, float %8391, float %8392)  ; Dot3(ax,ay,az,bx,by,bz)
  %8394 = call float @dx.op.unary.f32(i32 25, float %8393)  ; Rsqrt(value)
  %8395 = fmul fast float %8394, %8390
  %8396 = fmul fast float %8394, %8391
  %8397 = fmul fast float %8394, %8392
  %8398 = call float @dx.op.dot3.f32(i32 55, float %6930, float %6931, float %6932, float %6019, float %6020, float %6021)  ; Dot3(ax,ay,az,bx,by,bz)
  %8399 = call float @dx.op.dot3.f32(i32 55, float %6009, float %6008, float %6007, float %8395, float %8396, float %8397)  ; Dot3(ax,ay,az,bx,by,bz)
  %8400 = call float @dx.op.unary.f32(i32 7, float %8398)  ; Saturate(value)
  %8401 = fmul fast float %8400, %8400
  %8402 = fmul fast float %8401, %6051
  %8403 = call float @dx.op.unary.f32(i32 7, float %8402)  ; Saturate(value)
  %8404 = fmul fast float %8403, %8400
  %8405 = call float @dx.op.dot3.f32(i32 55, float %6019, float %6020, float %6021, float %8395, float %8396, float %8397)  ; Dot3(ax,ay,az,bx,by,bz)
  %8406 = fmul fast float %8405, %8405
  %8407 = call float @dx.op.unary.f32(i32 6, float %8398)  ; FAbs(value)
  %8408 = fsub fast float 1.000000e+00, %6044
  %8409 = fmul fast float %6026, %6026
  %8410 = fmul fast float %8409, %8408
  %8411 = fadd fast float %8410, %6044
  %8412 = bitcast float %8411 to i32
  %8413 = ashr i32 %8412, 1
  %8414 = add nsw i32 %8413, 532487669
  %8415 = bitcast i32 %8414 to float
  %8416 = fadd fast float %8415, %6026
  %8417 = fmul fast float %6044, %8406
  %8418 = fsub fast float 1.000000e+00, %8406
  %8419 = fadd fast float %8418, %8417
  %8420 = fmul fast float %8407, %8407
  %8421 = fmul fast float %8420, %8408
  %8422 = fadd fast float %8421, %6044
  %8423 = bitcast float %8422 to i32
  %8424 = ashr i32 %8423, 1
  %8425 = add nsw i32 %8424, 532487669
  %8426 = bitcast i32 %8425 to float
  %8427 = fadd fast float %8426, %8407
  %8428 = fmul fast float %8419, %8419
  %8429 = fmul fast float %8428, %8416
  %8430 = fmul fast float %8429, %8427
  %8431 = fdiv fast float 0x3FF0A00000000000, %8430
  %8432 = fmul fast float %8431, %6044
  %8433 = fmul fast float %6297, 0x3FF9999980000000
  %8434 = fsub fast float 5.000000e+00, %8433
  %8435 = call float @dx.op.unary.f32(i32 6, float %8399)  ; FAbs(value)
  %8436 = fsub fast float 1.000000e+00, %8435
  %8437 = fmul fast float %6297, 0x41D9660740000000
  %8438 = fadd fast float %8437, 0xC1EFBF8940000000
  %8439 = bitcast float %8436 to i32
  %8440 = sitofp i32 %8439 to float
  %8441 = fmul fast float %8440, %8434
  %8442 = fadd fast float %8438, %8441
  %8443 = fptosi float %8442 to i32
  %8444 = bitcast i32 %8443 to float
  %8445 = fsub fast float 1.000000e+00, %6016
  %8446 = fsub fast float 1.000000e+00, %6017
  %8447 = fsub fast float 1.000000e+00, %6024
  %8448 = fmul fast float %8444, %8445
  %8449 = fmul fast float %8444, %8446
  %8450 = fmul fast float %8444, %8447
  %8451 = fadd fast float %8448, %6016
  %8452 = fadd fast float %8449, %6017
  %8453 = fadd fast float %8450, %6024
  br i1 %6320, label %8454, label %8477

; <label>:8454                                    ; preds = %8386
  %8455 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %4706, float %8435, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8456 = extractvalue %dx.types.ResRet.f32 %8455, 0
  %8457 = extractvalue %dx.types.ResRet.f32 %8455, 1
  %8458 = extractvalue %dx.types.ResRet.f32 %8455, 2
  %8459 = fadd fast float %8456, -5.000000e-01
  %8460 = fadd fast float %8457, -5.000000e-01
  %8461 = fadd fast float %8458, -5.000000e-01
  %8462 = fmul fast float %6016, 4.000000e+00
  %8463 = fmul fast float %8462, %8445
  %8464 = fmul fast float %8463, %8459
  %8465 = fmul fast float %6017, 4.000000e+00
  %8466 = fmul fast float %8465, %8446
  %8467 = fmul fast float %8466, %8460
  %8468 = fmul fast float %6024, 4.000000e+00
  %8469 = fmul fast float %8468, %8447
  %8470 = fmul fast float %8469, %8461
  %8471 = fadd fast float %8464, %8451
  %8472 = fadd fast float %8467, %8452
  %8473 = fadd fast float %8470, %8453
  %8474 = call float @dx.op.unary.f32(i32 7, float %8471)  ; Saturate(value)
  %8475 = call float @dx.op.unary.f32(i32 7, float %8472)  ; Saturate(value)
  %8476 = call float @dx.op.unary.f32(i32 7, float %8473)  ; Saturate(value)
  br label %8477

; <label>:8477                                    ; preds = %8454, %8386
  %8478 = phi float [ %8474, %8454 ], [ %8451, %8386 ]
  %8479 = phi float [ %8475, %8454 ], [ %8452, %8386 ]
  %8480 = phi float [ %8476, %8454 ], [ %8453, %8386 ]
  %8481 = fmul fast float %8398, 9.843750e-01
  %8482 = fadd fast float %8481, 7.812500e-03
  %8483 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %45, float %8482, float %6301, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8484 = extractvalue %dx.types.ResRet.f32 %8483, 0
  %8485 = extractvalue %dx.types.ResRet.f32 %8483, 1
  %8486 = extractvalue %dx.types.ResRet.f32 %8483, 2
  %8487 = extractvalue %dx.types.ResRet.f32 %8483, 3
  %8488 = fsub fast float %8486, %8484
  %8489 = fsub fast float %8487, %8485
  %8490 = fmul fast float %8488, %6307
  %8491 = fmul fast float %8489, %6307
  %8492 = fadd fast float %8490, %8484
  %8493 = fadd fast float %8491, %8485
  %8494 = fmul fast float %8492, %6016
  %8495 = fmul fast float %8492, %6017
  %8496 = fmul fast float %8492, %6024
  %8497 = fadd fast float %8494, %8493
  %8498 = fadd fast float %8495, %8493
  %8499 = fadd fast float %8496, %8493
  br i1 %6320, label %8500, label %8523

; <label>:8500                                    ; preds = %8477
  %8501 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %4706, float %8398, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8502 = extractvalue %dx.types.ResRet.f32 %8501, 0
  %8503 = extractvalue %dx.types.ResRet.f32 %8501, 1
  %8504 = extractvalue %dx.types.ResRet.f32 %8501, 2
  %8505 = fadd fast float %8502, -5.000000e-01
  %8506 = fadd fast float %8503, -5.000000e-01
  %8507 = fadd fast float %8504, -5.000000e-01
  %8508 = fmul fast float %6016, 4.000000e+00
  %8509 = fmul fast float %8508, %8445
  %8510 = fmul fast float %8509, %8505
  %8511 = fmul fast float %6017, 4.000000e+00
  %8512 = fmul fast float %8511, %8446
  %8513 = fmul fast float %8512, %8506
  %8514 = fmul fast float %6024, 4.000000e+00
  %8515 = fmul fast float %8514, %8447
  %8516 = fmul fast float %8515, %8507
  %8517 = fadd fast float %8510, %8497
  %8518 = fadd fast float %8513, %8498
  %8519 = fadd fast float %8516, %8499
  %8520 = call float @dx.op.unary.f32(i32 7, float %8517)  ; Saturate(value)
  %8521 = call float @dx.op.unary.f32(i32 7, float %8518)  ; Saturate(value)
  %8522 = call float @dx.op.unary.f32(i32 7, float %8519)  ; Saturate(value)
  br label %8523

; <label>:8523                                    ; preds = %8500, %8477
  %8524 = phi float [ %8520, %8500 ], [ %8497, %8477 ]
  %8525 = phi float [ %8521, %8500 ], [ %8498, %8477 ]
  %8526 = phi float [ %8522, %8500 ], [ %8499, %8477 ]
  %8527 = call float @dx.op.binary.f32(i32 35, float %8525, float %8526)  ; FMax(a,b)
  %8528 = call float @dx.op.binary.f32(i32 35, float %8524, float %8527)  ; FMax(a,b)
  %8529 = fsub fast float 1.000000e+00, %8528
  %8530 = call float @dx.op.binary.f32(i32 35, float %8407, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8531 = fdiv fast float %4005, %8530
  %8532 = fmul fast float %6839, %8531
  %8533 = fmul fast float %6841, %8531
  %8534 = fmul fast float %6843, %8531
  %8535 = call float @dx.op.unary.f32(i32 21, float %8532)  ; Exp(value)
  %8536 = call float @dx.op.unary.f32(i32 21, float %8533)  ; Exp(value)
  %8537 = call float @dx.op.unary.f32(i32 21, float %8534)  ; Exp(value)
  %8538 = call float @dx.op.unary.f32(i32 7, float %8535)  ; Saturate(value)
  %8539 = call float @dx.op.unary.f32(i32 7, float %8536)  ; Saturate(value)
  %8540 = call float @dx.op.unary.f32(i32 7, float %8537)  ; Saturate(value)
  %8541 = select i1 %6836, float %8538, float 0.000000e+00
  %8542 = select i1 %6837, float %8539, float 0.000000e+00
  %8543 = select i1 %6838, float %8540, float 0.000000e+00
  %8544 = fsub fast float -0.000000e+00, %6019
  %8545 = fsub fast float -0.000000e+00, %6020
  %8546 = fsub fast float -0.000000e+00, %6021
  %8547 = call float @dx.op.dot3.f32(i32 55, float %6930, float %6931, float %6932, float %8544, float %8545, float %8546)  ; Dot3(ax,ay,az,bx,by,bz)
  %8548 = call float @dx.op.unary.f32(i32 7, float %8547)  ; Saturate(value)
  %8549 = fmul fast float %8548, 9.843750e-01
  %8550 = fadd fast float %8549, 7.812500e-03
  %8551 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %45, float %8550, float %6301, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8552 = extractvalue %dx.types.ResRet.f32 %8551, 0
  %8553 = extractvalue %dx.types.ResRet.f32 %8551, 1
  %8554 = extractvalue %dx.types.ResRet.f32 %8551, 2
  %8555 = extractvalue %dx.types.ResRet.f32 %8551, 3
  %8556 = fsub fast float %8554, %8552
  %8557 = fsub fast float %8555, %8553
  %8558 = fmul fast float %8556, %6307
  %8559 = fmul fast float %8557, %6307
  %8560 = fadd fast float %8558, %8552
  %8561 = fadd fast float %8559, %8553
  %8562 = fmul fast float %8560, %6016
  %8563 = fmul fast float %8560, %6017
  %8564 = fmul fast float %8560, %6024
  %8565 = fadd fast float %8562, %8561
  %8566 = fadd fast float %8563, %8561
  %8567 = fadd fast float %8564, %8561
  br i1 %6320, label %8568, label %8591

; <label>:8568                                    ; preds = %8523
  %8569 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %4706, float %8548, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8570 = extractvalue %dx.types.ResRet.f32 %8569, 0
  %8571 = extractvalue %dx.types.ResRet.f32 %8569, 1
  %8572 = extractvalue %dx.types.ResRet.f32 %8569, 2
  %8573 = fadd fast float %8570, -5.000000e-01
  %8574 = fadd fast float %8571, -5.000000e-01
  %8575 = fadd fast float %8572, -5.000000e-01
  %8576 = fmul fast float %6016, 4.000000e+00
  %8577 = fmul fast float %8576, %8445
  %8578 = fmul fast float %8577, %8573
  %8579 = fmul fast float %6017, 4.000000e+00
  %8580 = fmul fast float %8579, %8446
  %8581 = fmul fast float %8580, %8574
  %8582 = fmul fast float %6024, 4.000000e+00
  %8583 = fmul fast float %8582, %8447
  %8584 = fmul fast float %8583, %8575
  %8585 = fadd fast float %8578, %8565
  %8586 = fadd fast float %8581, %8566
  %8587 = fadd fast float %8584, %8567
  %8588 = call float @dx.op.unary.f32(i32 7, float %8585)  ; Saturate(value)
  %8589 = call float @dx.op.unary.f32(i32 7, float %8586)  ; Saturate(value)
  %8590 = call float @dx.op.unary.f32(i32 7, float %8587)  ; Saturate(value)
  br label %8591

; <label>:8591                                    ; preds = %8568, %8523
  %8592 = phi float [ %8588, %8568 ], [ %8565, %8523 ]
  %8593 = phi float [ %8589, %8568 ], [ %8566, %8523 ]
  %8594 = phi float [ %8590, %8568 ], [ %8567, %8523 ]
  %8595 = call float @dx.op.binary.f32(i32 35, float %8593, float %8594)  ; FMax(a,b)
  %8596 = call float @dx.op.binary.f32(i32 35, float %8592, float %8595)  ; FMax(a,b)
  %8597 = fsub fast float 1.000000e+00, %8596
  %8598 = fmul fast float %6041, %6903
  %8599 = fadd fast float %6905, %8598
  %8600 = call float @dx.op.unary.f32(i32 7, float %8599)  ; Saturate(value)
  %8601 = fsub fast float %6930, %6032
  %8602 = fsub fast float %6931, %6033
  %8603 = fsub fast float %6932, %6034
  %8604 = call float @dx.op.dot3.f32(i32 55, float %8601, float %8602, float %8603, float %8601, float %8602, float %8603)  ; Dot3(ax,ay,az,bx,by,bz)
  %8605 = call float @dx.op.unary.f32(i32 25, float %8604)  ; Rsqrt(value)
  %8606 = fmul fast float %8605, %8601
  %8607 = fmul fast float %8605, %8602
  %8608 = fmul fast float %8605, %8603
  %8609 = call float @dx.op.dot3.f32(i32 55, float %8544, float %8545, float %8546, float %8606, float %8607, float %8608)  ; Dot3(ax,ay,az,bx,by,bz)
  %8610 = fmul fast float %8609, %8609
  %8611 = call float @dx.op.unary.f32(i32 6, float %8548)  ; FAbs(value)
  %8612 = call float @dx.op.binary.f32(i32 35, float %8600, float 0x3F847AE140000000)  ; FMax(a,b)
  %8613 = fmul fast float %8612, %8612
  %8614 = fmul fast float %8613, %8613
  %8615 = fsub fast float 1.000000e+00, %8614
  %8616 = fmul fast float %8409, %8615
  %8617 = fadd fast float %8616, %8614
  %8618 = bitcast float %8617 to i32
  %8619 = ashr i32 %8618, 1
  %8620 = add nsw i32 %8619, 532487669
  %8621 = bitcast i32 %8620 to float
  %8622 = fadd fast float %8621, %6026
  %8623 = fmul fast float %8614, %8610
  %8624 = fsub fast float 1.000000e+00, %8610
  %8625 = fadd fast float %8624, %8623
  %8626 = fmul fast float %8611, %8611
  %8627 = fmul fast float %8626, %8615
  %8628 = fadd fast float %8627, %8614
  %8629 = bitcast float %8628 to i32
  %8630 = ashr i32 %8629, 1
  %8631 = add nsw i32 %8630, 532487669
  %8632 = bitcast i32 %8631 to float
  %8633 = fadd fast float %8632, %8611
  %8634 = fmul fast float %8625, %8625
  %8635 = fmul fast float %8634, %8622
  %8636 = fmul fast float %8635, %8633
  %8637 = fdiv fast float 0x3FF0A00000000000, %8636
  %8638 = fmul fast float %8637, %8614
  %8639 = fmul fast float %8548, %8541
  %8640 = fmul fast float %8548, %8542
  %8641 = fmul fast float %8548, %8543
  %8642 = fmul fast float %8639, %8597
  %8643 = fmul fast float %8642, %8638
  %8644 = fmul fast float %8640, %8597
  %8645 = fmul fast float %8644, %8638
  %8646 = fmul fast float %8641, %8597
  %8647 = fmul fast float %8646, %8638
  %8648 = fmul fast float %8478, %8432
  %8649 = fmul fast float %8479, %8432
  %8650 = fmul fast float %8480, %8432
  %8651 = fsub fast float 1.000000e+00, %8399
  %8652 = bitcast float %8651 to i32
  %8653 = sitofp i32 %8652 to float
  %8654 = fmul fast float %8653, 5.000000e+00
  %8655 = fadd fast float %8654, 0xC1EFBF8940000000
  %8656 = fptosi float %8655 to i32
  %8657 = bitcast i32 %8656 to float
  %8658 = fmul fast float %8657, %4707
  %8659 = fmul fast float %8529, %8658
  %8660 = fmul fast float %8659, %6831
  %8661 = fmul fast float %8659, %6832
  %8662 = fmul fast float %8659, %6833
  %8663 = fadd fast float %8660, %8648
  %8664 = fadd fast float %8661, %8649
  %8665 = fadd fast float %8662, %8650
  %8666 = fmul fast float %8663, %8404
  %8667 = fmul fast float %8664, %8404
  %8668 = fmul fast float %8665, %8404
  %8669 = fmul fast float %8404, %8387
  %8670 = fmul fast float %8669, %8529
  %8671 = fmul fast float %8404, %8388
  %8672 = fmul fast float %8671, %8529
  %8673 = fmul fast float %8404, %8389
  %8674 = fmul fast float %8673, %8529
  %8675 = fadd fast float %8666, %8643
  %8676 = fadd fast float %8667, %8645
  %8677 = fadd fast float %8668, %8647
  %8678 = fmul fast float %8675, %8387
  %8679 = fmul fast float %8676, %8388
  %8680 = fmul fast float %8677, %8389
  %8681 = fadd fast float %8670, %6920
  %8682 = fmul fast float %8681, %4703
  %8683 = fadd fast float %8672, %6922
  %8684 = fmul fast float %8683, %4703
  %8685 = fadd fast float %8674, %6924
  %8686 = fmul fast float %8685, %4703
  %8687 = fadd fast float %8678, %6884
  %8688 = fmul fast float %8687, %4703
  %8689 = fadd fast float %8679, %6887
  %8690 = fmul fast float %8689, %4703
  %8691 = fadd fast float %8680, %6890
  %8692 = fmul fast float %8691, %4703
  br label %8693

; <label>:8693                                    ; preds = %8591, %8381, %6814
  %8694 = phi float [ %6885, %6814 ], [ %6885, %8381 ], [ %8688, %8591 ]
  %8695 = phi float [ %6888, %6814 ], [ %6888, %8381 ], [ %8690, %8591 ]
  %8696 = phi float [ %6891, %6814 ], [ %6891, %8381 ], [ %8692, %8591 ]
  %8697 = phi float [ %6921, %6814 ], [ %6921, %8381 ], [ %8682, %8591 ]
  %8698 = phi float [ %6923, %6814 ], [ %6923, %8381 ], [ %8684, %8591 ]
  %8699 = phi float [ %6925, %6814 ], [ %6925, %8381 ], [ %8686, %8591 ]
  %8700 = fmul fast float %4703, %6860
  %8701 = fsub fast float -0.000000e+00, %8700
  %8702 = fmul fast float %4703, %6861
  %8703 = fsub fast float -0.000000e+00, %8702
  %8704 = fmul fast float %4703, %6862
  %8705 = fsub fast float -0.000000e+00, %8704
  %8706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8707 = extractvalue %dx.types.CBufRet.f32 %8706, 0
  %8708 = fmul fast float %8707, %6866
  %8709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8710 = extractvalue %dx.types.CBufRet.f32 %8709, 3
  %8711 = fsub fast float 1.000000e+00, %4710
  %8712 = call float @dx.op.unary.f32(i32 7, float %8711)  ; Saturate(value)
  %8713 = fadd fast float %8699, %4709
  %8714 = fmul fast float %8713, %4710
  %8715 = fmul fast float %8712, %8710
  %8716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8717 = extractvalue %dx.types.CBufRet.f32 %8716, 3
  %8718 = fmul fast float %8697, %6013
  %8719 = fmul fast float %8698, %6014
  %8720 = fmul fast float %8699, %6015
  %8721 = fcmp fast ogt float %98, %225
  %8722 = and i1 %8721, %4778
  %8723 = or i1 %4857, %8722
  %8724 = icmp eq i32 %4777, 2
  %8725 = fcmp fast ole float %98, %225
  %8726 = and i1 %8725, %8724
  %8727 = or i1 %8726, %8723
  br i1 %8722, label %8728, label %8985

; <label>:8728                                    ; preds = %8693
  %8729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8730 = extractvalue %dx.types.CBufRet.f32 %8729, 2
  %8731 = extractvalue %dx.types.CBufRet.f32 %8729, 3
  %8732 = fmul fast float %8730, %111
  %8733 = fmul fast float %8731, %112
  %8734 = call float @dx.op.unary.f32(i32 7, float %8732)  ; Saturate(value)
  %8735 = call float @dx.op.unary.f32(i32 7, float %8733)  ; Saturate(value)
  %8736 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %45, float %8734, float %8735, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8737 = extractvalue %dx.types.ResRet.f32 %8736, 0
  %8738 = extractvalue %dx.types.ResRet.f32 %8736, 1
  %8739 = extractvalue %dx.types.ResRet.f32 %8736, 2
  %8740 = extractvalue %dx.types.ResRet.f32 %8736, 3
  %8741 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %45, float %8734, float %8735, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8742 = extractvalue %dx.types.ResRet.f32 %8741, 0
  %8743 = extractvalue %dx.types.ResRet.f32 %8741, 1
  %8744 = extractvalue %dx.types.ResRet.f32 %8741, 2
  %8745 = extractvalue %dx.types.ResRet.f32 %8741, 3
  %8746 = call float @dx.op.binary.f32(i32 35, float %8738, float %8739)  ; FMax(a,b)
  %8747 = call float @dx.op.binary.f32(i32 35, float %8737, float %8746)  ; FMax(a,b)
  %8748 = call float @dx.op.binary.f32(i32 35, float %8747, float %8740)  ; FMax(a,b)
  %8749 = call float @dx.op.binary.f32(i32 36, float %8743, float %8744)  ; FMin(a,b)
  %8750 = call float @dx.op.binary.f32(i32 36, float %8742, float %8749)  ; FMin(a,b)
  %8751 = call float @dx.op.binary.f32(i32 36, float %8750, float %8745)  ; FMin(a,b)
  %8752 = fmul fast float %8748, 2.550000e+02
  %8753 = fadd fast float %8752, 0x3F70101020000000
  %8754 = fptoui float %8753 to i32
  %8755 = fmul fast float %8751, 2.550000e+02
  %8756 = fadd fast float %8755, 0x3F70101020000000
  %8757 = fptoui float %8756 to i32
  %8758 = icmp ult i32 %8754, %8757
  br i1 %8758, label %8759, label %8927

; <label>:8759                                    ; preds = %8728
  %8760 = fcmp fast ogt float %97, 9.843750e-01
  %8761 = fadd fast float %98, -4.000000e+00
  %8762 = select i1 %8760, float -4.000000e+00, float %8761
  %8763 = call float @dx.op.binary.f32(i32 35, float %8762, float 0.000000e+00)  ; FMax(a,b)
  %8764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8765 = extractvalue %dx.types.CBufRet.f32 %8764, 0
  %8766 = fadd fast float %8765, %8763
  %8767 = extractvalue %dx.types.CBufRet.f32 %8764, 2
  %8768 = fmul fast float %8766, %8767
  %8769 = call float @dx.op.unary.f32(i32 23, float %8768)  ; Log(value)
  %8770 = extractvalue %dx.types.CBufRet.f32 %8764, 3
  %8771 = fmul fast float %8770, %8769
  %8772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8773 = extractvalue %dx.types.CBufRet.f32 %8772, 2
  %8774 = fmul fast float %8771, %8773
  %8775 = call float @dx.op.unary.f32(i32 7, float %8774)  ; Saturate(value)
  %8776 = uitofp i32 %8754 to float
  %8777 = uitofp i32 %8757 to float
  %8778 = fadd fast float %8776, 5.000000e-01
  %8779 = fadd fast float %8777, 5.000000e-01
  %8780 = fmul fast float %8773, %8778
  %8781 = fmul fast float %8773, %8779
  %8782 = fadd fast float %8780, 0x3F0FFB4800000000
  %8783 = fadd fast float %8781, 0xBF0FFB4800000000
  %8784 = call float @dx.op.binary.f32(i32 35, float %8775, float %8782)  ; FMax(a,b)
  %8785 = call float @dx.op.binary.f32(i32 36, float %8784, float %8783)  ; FMin(a,b)
  %8786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8787 = extractvalue %dx.types.CBufRet.f32 %8786, 1
  %8788 = extractvalue %dx.types.CBufRet.f32 %8786, 2
  %8789 = extractvalue %dx.types.CBufRet.f32 %8786, 0
  %8790 = fmul fast float %8787, %8785
  %8791 = fadd fast float %8789, %8790
  %8792 = fadd fast float %8789, %8788
  %8793 = fsub fast float %8787, %8788
  %8794 = fadd fast float %8793, %8789
  %8795 = call float @dx.op.binary.f32(i32 35, float %8791, float %8792)  ; FMax(a,b)
  %8796 = call float @dx.op.binary.f32(i32 36, float %8795, float %8794)  ; FMin(a,b)
  %8797 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %43, float %8734, float %8735, float %8796, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8798 = extractvalue %dx.types.ResRet.f32 %8797, 0
  %8799 = extractvalue %dx.types.ResRet.f32 %8797, 1
  %8800 = extractvalue %dx.types.ResRet.f32 %8797, 2
  %8801 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8802 = extractvalue %dx.types.CBufRet.i32 %8801, 0
  %8803 = extractvalue %dx.types.CBufRet.i32 %8801, 1
  %8804 = uitofp i32 %8802 to float
  %8805 = uitofp i32 %8803 to float
  %8806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8807 = extractvalue %dx.types.CBufRet.f32 %8806, 0
  %8808 = extractvalue %dx.types.CBufRet.f32 %8806, 1
  %8809 = fmul fast float %8804, %8734
  %8810 = fmul fast float %8805, %8735
  %8811 = fadd fast float %8809, -5.000000e-01
  %8812 = fadd fast float %8810, -5.000000e-01
  %8813 = call float @dx.op.unary.f32(i32 22, float %8811)  ; Frc(value)
  %8814 = call float @dx.op.unary.f32(i32 22, float %8812)  ; Frc(value)
  %8815 = fmul fast float %8813, %8813
  %8816 = fmul fast float %8815, %8813
  %8817 = fsub fast float 3.000000e+00, %8813
  %8818 = fmul fast float %8815, %8817
  %8819 = fmul fast float %8813, 3.000000e+00
  %8820 = fmul fast float %8816, 3.000000e+00
  %8821 = fmul fast float %8815, 6.000000e+00
  %8822 = fsub fast float %8820, %8821
  %8823 = fadd fast float %8822, 4.000000e+00
  %8824 = fmul fast float %8823, 0x3FC5555560000000
  %8825 = fmul fast float %8816, -3.000000e+00
  %8826 = fadd fast float %8815, %8813
  %8827 = fmul fast float %8826, 3.000000e+00
  %8828 = fadd fast float %8825, 1.000000e+00
  %8829 = fadd fast float %8828, %8827
  %8830 = fmul fast float %8816, 0x3FC5555560000000
  %8831 = fmul fast float %8814, %8814
  %8832 = fmul fast float %8831, %8814
  %8833 = fsub fast float 3.000000e+00, %8814
  %8834 = fmul fast float %8831, %8833
  %8835 = fmul fast float %8814, 3.000000e+00
  %8836 = fmul fast float %8832, 3.000000e+00
  %8837 = fmul fast float %8831, 6.000000e+00
  %8838 = fsub fast float %8836, %8837
  %8839 = fadd fast float %8838, 4.000000e+00
  %8840 = fmul fast float %8839, 0x3FC5555560000000
  %8841 = fmul fast float %8832, -3.000000e+00
  %8842 = fadd fast float %8831, %8814
  %8843 = fmul fast float %8842, 3.000000e+00
  %8844 = fadd fast float %8841, 1.000000e+00
  %8845 = fadd fast float %8844, %8843
  %8846 = fmul fast float %8832, 0x3FC5555560000000
  %8847 = fadd fast float %8813, 1.000000e+00
  %8848 = fsub fast float 1.000000e+00, %8819
  %8849 = fadd fast float %8848, %8818
  %8850 = fadd fast float %8849, %8823
  %8851 = fmul fast float %8850, 0x3FC5555560000000
  %8852 = fdiv fast float %8824, %8851
  %8853 = fsub fast float %8847, %8852
  %8854 = fsub fast float 1.000000e+00, %8813
  %8855 = fadd fast float %8829, %8816
  %8856 = fmul fast float %8855, 0x3FC5555560000000
  %8857 = fdiv fast float %8830, %8856
  %8858 = fadd fast float %8854, %8857
  %8859 = fadd fast float %8814, 1.000000e+00
  %8860 = fsub fast float 1.000000e+00, %8835
  %8861 = fadd fast float %8860, %8834
  %8862 = fadd fast float %8861, %8839
  %8863 = fmul fast float %8862, 0x3FC5555560000000
  %8864 = fdiv fast float %8840, %8863
  %8865 = fsub fast float %8859, %8864
  %8866 = fsub fast float 1.000000e+00, %8814
  %8867 = fadd fast float %8845, %8832
  %8868 = fmul fast float %8867, 0x3FC5555560000000
  %8869 = fdiv fast float %8846, %8868
  %8870 = fadd fast float %8869, %8866
  %8871 = fmul fast float %8853, %8807
  %8872 = fsub fast float %8734, %8871
  %8873 = fmul fast float %8858, %8807
  %8874 = fadd fast float %8873, %8734
  %8875 = fmul fast float %8870, %8808
  %8876 = fadd fast float %8875, %8735
  %8877 = fmul fast float %8865, %8808
  %8878 = fsub fast float %8735, %8877
  %8879 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %8872, float %8878, float %8796, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8880 = extractvalue %dx.types.ResRet.f32 %8879, 0
  %8881 = extractvalue %dx.types.ResRet.f32 %8879, 1
  %8882 = extractvalue %dx.types.ResRet.f32 %8879, 2
  %8883 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %8874, float %8878, float %8796, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8884 = extractvalue %dx.types.ResRet.f32 %8883, 0
  %8885 = extractvalue %dx.types.ResRet.f32 %8883, 1
  %8886 = extractvalue %dx.types.ResRet.f32 %8883, 2
  %8887 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %8872, float %8876, float %8796, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8888 = extractvalue %dx.types.ResRet.f32 %8887, 0
  %8889 = extractvalue %dx.types.ResRet.f32 %8887, 1
  %8890 = extractvalue %dx.types.ResRet.f32 %8887, 2
  %8891 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %8874, float %8876, float %8796, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8892 = extractvalue %dx.types.ResRet.f32 %8891, 0
  %8893 = extractvalue %dx.types.ResRet.f32 %8891, 1
  %8894 = extractvalue %dx.types.ResRet.f32 %8891, 2
  %8895 = fsub fast float %8888, %8880
  %8896 = fsub fast float %8889, %8881
  %8897 = fsub fast float %8890, %8882
  %8898 = fmul fast float %8895, %8868
  %8899 = fmul fast float %8896, %8868
  %8900 = fmul fast float %8897, %8868
  %8901 = fadd fast float %8898, %8880
  %8902 = fadd fast float %8899, %8881
  %8903 = fadd fast float %8900, %8882
  %8904 = fsub fast float %8892, %8884
  %8905 = fsub fast float %8893, %8885
  %8906 = fsub fast float %8894, %8886
  %8907 = fmul fast float %8904, %8868
  %8908 = fmul fast float %8905, %8868
  %8909 = fmul fast float %8906, %8868
  %8910 = fsub fast float %8884, %8901
  %8911 = fadd fast float %8910, %8907
  %8912 = fsub fast float %8885, %8902
  %8913 = fadd fast float %8912, %8908
  %8914 = fsub fast float %8886, %8903
  %8915 = fadd fast float %8914, %8909
  %8916 = fmul fast float %8911, %8856
  %8917 = fmul fast float %8913, %8856
  %8918 = fmul fast float %8915, %8856
  %8919 = fadd fast float %8916, %8901
  %8920 = fadd fast float %8917, %8902
  %8921 = fadd fast float %8918, %8903
  %8922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8923 = extractvalue %dx.types.CBufRet.f32 %8922, 1
  %8924 = fmul fast float %8919, %8923
  %8925 = fmul fast float %8920, %8923
  %8926 = fmul fast float %8921, %8923
  br label %8927

; <label>:8927                                    ; preds = %8759, %8728
  %8928 = phi float [ %8798, %8759 ], [ 1.000000e+00, %8728 ]
  %8929 = phi float [ %8799, %8759 ], [ 1.000000e+00, %8728 ]
  %8930 = phi float [ %8800, %8759 ], [ 1.000000e+00, %8728 ]
  %8931 = phi float [ %8924, %8759 ], [ 0.000000e+00, %8728 ]
  %8932 = phi float [ %8925, %8759 ], [ 0.000000e+00, %8728 ]
  %8933 = phi float [ %8926, %8759 ], [ 0.000000e+00, %8728 ]
  %8934 = fmul fast float %8931, %8701
  %8935 = fmul fast float %8932, %8703
  %8936 = fmul fast float %8933, %8705
  %8937 = call float @dx.op.dot3.f32(i32 55, float %8928, float %8929, float %8930, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8938 = call float @dx.op.dot3.f32(i32 55, float %8934, float %8935, float %8936, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8939 = select i1 %264, float %8937, float %8928
  %8940 = select i1 %264, float %8937, float %8929
  %8941 = select i1 %264, float 1.000000e+00, float %8930
  %8942 = select i1 %264, float %8938, float %8934
  %8943 = select i1 %264, float 0.000000e+00, float %8935
  %8944 = select i1 %264, float 0.000000e+00, float %8936
  %8945 = fmul fast float %8939, %8718
  %8946 = fmul fast float %8940, %8719
  %8947 = fmul fast float %8941, %8720
  %8948 = fadd fast float %8945, %8942
  %8949 = fadd fast float %8946, %8943
  %8950 = fadd fast float %8944, %8947
  %8951 = fmul fast float %8939, %8694
  %8952 = fmul fast float %8940, %8695
  %8953 = fmul fast float %8941, %8696
  %8954 = fmul fast float %139, %8730
  %8955 = fmul fast float %141, %8731
  %8956 = fsub fast float 1.000000e+00, %8954
  %8957 = fsub fast float 1.000000e+00, %8955
  %8958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8959 = extractvalue %dx.types.CBufRet.f32 %8958, 0
  %8960 = extractvalue %dx.types.CBufRet.f32 %8958, 1
  %8961 = extractvalue %dx.types.CBufRet.f32 %8958, 2
  %8962 = fmul fast float %8956, %8959
  %8963 = fmul fast float %8956, %8960
  %8964 = fmul fast float %8956, %8961
  %8965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8966 = extractvalue %dx.types.CBufRet.f32 %8965, 0
  %8967 = extractvalue %dx.types.CBufRet.f32 %8965, 1
  %8968 = extractvalue %dx.types.CBufRet.f32 %8965, 2
  %8969 = fmul fast float %8957, %8966
  %8970 = fmul fast float %8957, %8967
  %8971 = fmul fast float %8957, %8968
  %8972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8973 = extractvalue %dx.types.CBufRet.f32 %8972, 0
  %8974 = extractvalue %dx.types.CBufRet.f32 %8972, 1
  %8975 = extractvalue %dx.types.CBufRet.f32 %8972, 2
  %8976 = fadd fast float %8969, %8973
  %8977 = fadd fast float %8976, %8962
  %8978 = fadd fast float %8970, %8974
  %8979 = fadd fast float %8978, %8963
  %8980 = fadd fast float %8971, %8975
  %8981 = fadd fast float %8980, %8964
  %8982 = fmul fast float %8977, %225
  %8983 = fmul fast float %8979, %225
  %8984 = fmul fast float %8981, %225
  br label %8985

; <label>:8985                                    ; preds = %8927, %8693
  %8986 = phi float [ %8982, %8927 ], [ %190, %8693 ]
  %8987 = phi float [ %8983, %8927 ], [ %191, %8693 ]
  %8988 = phi float [ %8984, %8927 ], [ %192, %8693 ]
  %8989 = phi float [ %225, %8927 ], [ %98, %8693 ]
  %8990 = phi float [ %8948, %8927 ], [ %8718, %8693 ]
  %8991 = phi float [ %8949, %8927 ], [ %8719, %8693 ]
  %8992 = phi float [ %8950, %8927 ], [ %8720, %8693 ]
  %8993 = phi float [ %8951, %8927 ], [ %8694, %8693 ]
  %8994 = phi float [ %8952, %8927 ], [ %8695, %8693 ]
  %8995 = phi float [ %8953, %8927 ], [ %8696, %8693 ]
  %8996 = phi float [ %8928, %8927 ], [ 1.000000e+00, %8693 ]
  br i1 %8727, label %10151, label %8997

; <label>:8997                                    ; preds = %8985
  %8998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8999 = extractvalue %dx.types.CBufRet.f32 %8998, 0
  %9000 = extractvalue %dx.types.CBufRet.f32 %8998, 1
  %9001 = extractvalue %dx.types.CBufRet.f32 %8998, 2
  %9002 = extractvalue %dx.types.CBufRet.f32 %8998, 3
  %9003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %9004 = extractvalue %dx.types.CBufRet.f32 %9003, 0
  %9005 = extractvalue %dx.types.CBufRet.f32 %9003, 1
  %9006 = extractvalue %dx.types.CBufRet.f32 %9003, 2
  %9007 = extractvalue %dx.types.CBufRet.f32 %9003, 3
  %9008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %9009 = extractvalue %dx.types.CBufRet.f32 %9008, 0
  %9010 = extractvalue %dx.types.CBufRet.f32 %9008, 1
  %9011 = extractvalue %dx.types.CBufRet.f32 %9008, 2
  %9012 = extractvalue %dx.types.CBufRet.f32 %9008, 3
  %9013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %9014 = extractvalue %dx.types.CBufRet.f32 %9013, 0
  %9015 = extractvalue %dx.types.CBufRet.f32 %9013, 1
  %9016 = extractvalue %dx.types.CBufRet.f32 %9013, 2
  %9017 = extractvalue %dx.types.CBufRet.f32 %9013, 3
  %9018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %9019 = extractvalue %dx.types.CBufRet.f32 %9018, 3
  %9020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %9021 = extractvalue %dx.types.CBufRet.f32 %9020, 3
  %9022 = extractvalue %dx.types.CBufRet.f32 %9020, 0
  %9023 = extractvalue %dx.types.CBufRet.f32 %9020, 1
  %9024 = extractvalue %dx.types.CBufRet.f32 %9020, 2
  %9025 = fcmp fast olt float %9024, -5.000000e-01
  %9026 = call float @dx.op.dot3.f32(i32 55, float %8986, float %8987, float %8988, float %8986, float %8987, float %8988)  ; Dot3(ax,ay,az,bx,by,bz)
  %9027 = call float @dx.op.unary.f32(i32 25, float %9026)  ; Rsqrt(value)
  %9028 = fmul fast float %9027, %9026
  %9029 = fmul fast float %9027, %8986
  %9030 = fmul fast float %9027, %8987
  %9031 = fmul fast float %9027, %8988
  %9032 = fadd fast float %9028, %9002
  %9033 = call float @dx.op.dot3.f32(i32 55, float %9029, float %9030, float %9031, float %8999, float %9000, float %9001)  ; Dot3(ax,ay,az,bx,by,bz)
  %9034 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9035 = extractvalue %dx.types.CBufRet.i32 %9034, 1
  %9036 = and i32 %9035, 1
  %9037 = icmp ne i32 %9036, 0
  %9038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %9039 = extractvalue %dx.types.CBufRet.f32 %9038, 2
  %9040 = fcmp fast ogt float %9039, 0.000000e+00
  %9041 = and i1 %9037, %9040
  br i1 %9041, label %9042, label %9448, !dx.controlflow.hints !127

; <label>:9042                                    ; preds = %8997
  %9043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %9044 = extractvalue %dx.types.CBufRet.f32 %9043, 3
  %9045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9046 = extractvalue %dx.types.CBufRet.f32 %9045, 2
  %9047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9048 = extractvalue %dx.types.CBufRet.f32 %9047, 2
  %9049 = fsub fast float %9046, %9048
  %9050 = and i32 %9035, 2
  %9051 = extractvalue %dx.types.CBufRet.i32 %9034, 0
  %9052 = call i32 @dx.op.binary.i32(i32 40, i32 %9051, i32 3)  ; UMin(a,b)
  %9053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %9054 = extractvalue %dx.types.CBufRet.f32 %9053, 0
  %9055 = extractvalue %dx.types.CBufRet.f32 %9053, 1
  %9056 = extractvalue %dx.types.CBufRet.f32 %9047, 0
  %9057 = extractvalue %dx.types.CBufRet.f32 %9047, 1
  %9058 = fsub fast float %9054, %9056
  %9059 = fsub fast float %9055, %9057
  %9060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %9061 = extractvalue %dx.types.CBufRet.f32 %9060, 0
  %9062 = fcmp fast ogt float %9061, 0.000000e+00
  %9063 = fsub fast float -0.000000e+00, %9058
  %9064 = fsub fast float -0.000000e+00, %9059
  %9065 = call float @dx.op.dot2.f32(i32 54, float %9029, float %9030, float %9029, float %9030)  ; Dot2(ax,ay,bx,by)
  %9066 = call float @dx.op.dot2.f32(i32 54, float %9029, float %9030, float %9063, float %9064)  ; Dot2(ax,ay,bx,by)
  %9067 = fmul fast float %9066, 2.000000e+00
  %9068 = call float @dx.op.dot2.f32(i32 54, float %9063, float %9064, float %9063, float %9064)  ; Dot2(ax,ay,bx,by)
  %9069 = fmul fast float %9061, %9061
  %9070 = fsub fast float %9068, %9069
  %9071 = fmul fast float %9067, %9067
  %9072 = fmul fast float %9065, 4.000000e+00
  %9073 = fmul fast float %9072, %9070
  %9074 = fsub fast float %9071, %9073
  %9075 = fcmp fast ogt float %9074, 0.000000e+00
  br i1 %9075, label %9076, label %9091

; <label>:9076                                    ; preds = %9042
  %9077 = fcmp fast ogt float %9067, 0.000000e+00
  %9078 = call float @dx.op.unary.f32(i32 24, float %9074)  ; Sqrt(value)
  %9079 = fsub fast float -0.000000e+00, %9078
  %9080 = select i1 %9077, float %9078, float %9079
  %9081 = fadd fast float %9080, %9067
  %9082 = fmul float %9081, -5.000000e-01
  %9083 = fdiv fast float %9082, %9065
  %9084 = call float @dx.op.binary.f32(i32 35, float %9083, float 0.000000e+00)  ; FMax(a,b)
  %9085 = call float @dx.op.binary.f32(i32 36, float %9028, float %9084)  ; FMin(a,b)
  %9086 = fdiv fast float %9070, %9082
  %9087 = call float @dx.op.binary.f32(i32 35, float %9086, float 0.000000e+00)  ; FMax(a,b)
  %9088 = call float @dx.op.binary.f32(i32 36, float %9028, float %9087)  ; FMin(a,b)
  %9089 = call float @dx.op.binary.f32(i32 36, float %9085, float %9088)  ; FMin(a,b)
  %9090 = call float @dx.op.binary.f32(i32 35, float %9085, float %9088)  ; FMax(a,b)
  br label %9091

; <label>:9091                                    ; preds = %9076, %9042
  %9092 = phi float [ %9090, %9076 ], [ -1.000000e+00, %9042 ]
  %9093 = phi float [ %9089, %9076 ], [ -1.000000e+00, %9042 ]
  %9094 = phi i1 [ true, %9076 ], [ false, %9042 ]
  %9095 = and i1 %9062, %9094
  br i1 %9095, label %9096, label %9098

; <label>:9096                                    ; preds = %9091
  %9097 = fcmp fast oeq float %9093, %9092
  br i1 %9097, label %9401, label %9099

; <label>:9098                                    ; preds = %9091
  br i1 %9062, label %9401, label %9099

; <label>:9099                                    ; preds = %9098, %9096
  %9100 = phi float [ %9028, %9098 ], [ %9092, %9096 ]
  %9101 = phi float [ 0.000000e+00, %9098 ], [ %9093, %9096 ]
  %9102 = icmp ne i32 %9050, 0
  %9103 = fmul fast float %9100, %9031
  %9104 = fadd fast float %9103, %9044
  %9105 = fmul fast float %9104, %9100
  %9106 = select i1 %9102, float 0.000000e+00, float %9105
  %9107 = fcmp fast oeq float %9031, 0.000000e+00
  %9108 = fdiv fast float %9049, %9031
  %9109 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9108)  ; FMax(a,b)
  %9110 = select i1 %9107, float %9100, float %9109
  %9111 = call float @dx.op.binary.f32(i32 36, float %9100, float %9110)  ; FMin(a,b)
  %9112 = fcmp fast ogt float %9031, 0.000000e+00
  %9113 = fcmp fast olt float %9049, 0.000000e+00
  br i1 %9112, label %9114, label %9171

; <label>:9114                                    ; preds = %9099
  %9115 = icmp eq i32 %9050, 0
  br i1 %9113, label %9116, label %9160

; <label>:9116                                    ; preds = %9114
  %9117 = select i1 %9115, float %9100, float 0.000000e+00
  %9118 = fsub fast float -0.000000e+00, %9117
  %9119 = call float @dx.op.unary.f32(i32 6, float %9118)  ; FAbs(value)
  %9120 = fmul fast float %9117, %9031
  %9121 = fadd fast float %9120, %9044
  %9122 = fmul fast float %9119, %9121
  %9123 = fsub fast float %9106, %9122
  %9124 = fsub fast float %9100, %9119
  %9125 = select i1 %9115, float %9124, float 0.000000e+00
  %9126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9127 = extractvalue %dx.types.CBufRet.f32 %9126, 0
  %9128 = extractvalue %dx.types.CBufRet.f32 %9126, 1
  %9129 = extractvalue %dx.types.CBufRet.f32 %9126, 2
  %9130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9131 = extractvalue %dx.types.CBufRet.f32 %9130, 0
  %9132 = extractvalue %dx.types.CBufRet.f32 %9130, 1
  %9133 = extractvalue %dx.types.CBufRet.f32 %9130, 2
  %9134 = extractvalue %dx.types.CBufRet.f32 %9130, 3
  %9135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9136 = extractvalue %dx.types.CBufRet.f32 %9135, 3
  %9137 = call float @dx.op.binary.f32(i32 36, float %9123, float %9136)  ; FMin(a,b)
  %9138 = fmul fast float %9134, %9125
  %9139 = call float @dx.op.unary.f32(i32 7, float %9138)  ; Saturate(value)
  %9140 = fsub fast float %9131, %9127
  %9141 = fsub fast float %9132, %9128
  %9142 = fsub fast float %9133, %9129
  %9143 = fmul fast float %9139, %9140
  %9144 = fmul fast float %9139, %9141
  %9145 = fmul fast float %9139, %9142
  %9146 = fadd fast float %9143, %9127
  %9147 = fadd fast float %9144, %9128
  %9148 = fadd fast float %9145, %9129
  %9149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9150 = extractvalue %dx.types.CBufRet.f32 %9149, 0
  %9151 = extractvalue %dx.types.CBufRet.f32 %9149, 1
  %9152 = fadd fast float %9151, %9150
  %9153 = call float @dx.op.unary.f32(i32 7, float %9152)  ; Saturate(value)
  %9154 = extractvalue %dx.types.CBufRet.f32 %9149, 2
  %9155 = extractvalue %dx.types.CBufRet.f32 %9149, 3
  %9156 = fadd fast float %9155, %9154
  %9157 = call float @dx.op.unary.f32(i32 7, float %9156)  ; Saturate(value)
  %9158 = fmul fast float %9153, %9137
  %9159 = fmul fast float %9158, %9157
  br label %9401

; <label>:9160                                    ; preds = %9114
  br i1 %9115, label %9161, label %9182

; <label>:9161                                    ; preds = %9160
  %9162 = call float @dx.op.binary.f32(i32 36, float %9111, float %9101)  ; FMin(a,b)
  %9163 = fsub fast float %9111, %9162
  %9164 = fsub fast float %9163, %9100
  %9165 = call float @dx.op.unary.f32(i32 6, float %9164)  ; FAbs(value)
  %9166 = fadd fast float %9163, %9100
  %9167 = fmul fast float %9166, %9031
  %9168 = fadd fast float %9167, %9044
  %9169 = fmul fast float %9168, %9165
  %9170 = fsub fast float %9106, %9169
  br label %9182

; <label>:9171                                    ; preds = %9099
  br i1 %9113, label %9172, label %9182

; <label>:9172                                    ; preds = %9171
  %9173 = call float @dx.op.binary.f32(i32 35, float %9101, float %9111)  ; FMax(a,b)
  %9174 = icmp eq i32 %9050, 0
  %9175 = select i1 %9174, float %9111, float 0.000000e+00
  %9176 = fsub fast float -0.000000e+00, %9175
  %9177 = call float @dx.op.unary.f32(i32 6, float %9176)  ; FAbs(value)
  %9178 = fmul fast float %9175, %9031
  %9179 = fadd fast float %9178, %9044
  %9180 = fmul fast float %9177, %9179
  %9181 = fsub fast float %9106, %9180
  br label %9182

; <label>:9182                                    ; preds = %9172, %9171, %9161, %9160
  %9183 = phi float [ %9101, %9160 ], [ %9101, %9161 ], [ %9173, %9172 ], [ %9101, %9171 ]
  %9184 = phi float [ 0.000000e+00, %9160 ], [ %9165, %9161 ], [ %9177, %9172 ], [ 0.000000e+00, %9171 ]
  %9185 = phi float [ %9106, %9160 ], [ %9170, %9161 ], [ %9181, %9172 ], [ %9106, %9171 ]
  %9186 = phi float [ %9111, %9160 ], [ %9111, %9161 ], [ %9100, %9172 ], [ %9100, %9171 ]
  %9187 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 0
  store float -1.000000e+00, float* %9187, align 4, !tbaa !116, !noalias !128
  %9188 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 1
  store float -1.000000e+00, float* %9188, align 4, !tbaa !116, !noalias !128
  %9189 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 2
  store float -1.000000e+00, float* %9189, align 4, !tbaa !116, !noalias !128
  %9190 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 0
  store float -1.000000e+00, float* %9190, align 4, !tbaa !116, !noalias !128
  %9191 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 1
  store float -1.000000e+00, float* %9191, align 4, !tbaa !116, !noalias !128
  %9192 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 2
  store float -1.000000e+00, float* %9192, align 4, !tbaa !116, !noalias !128
  %9193 = icmp sgt i32 %9052, 0
  br i1 %9193, label %9194, label %9255

; <label>:9194                                    ; preds = %9182
  br label %9195

; <label>:9195                                    ; preds = %9244, %9194
  %9196 = phi i32 [ %9245, %9244 ], [ 0, %9194 ]
  %9197 = phi i32 [ %9246, %9244 ], [ 0, %9194 ]
  %9198 = add nuw i32 %9197, 171
  %9199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %9198)  ; CBufferLoadLegacy(handle,regIndex)
  %9200 = extractvalue %dx.types.CBufRet.f32 %9199, 0
  %9201 = extractvalue %dx.types.CBufRet.f32 %9199, 1
  %9202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9203 = extractvalue %dx.types.CBufRet.f32 %9202, 0
  %9204 = extractvalue %dx.types.CBufRet.f32 %9202, 1
  %9205 = fsub fast float %9200, %9203
  %9206 = fsub fast float %9201, %9204
  %9207 = extractvalue %dx.types.CBufRet.f32 %9199, 2
  %9208 = fsub fast float -0.000000e+00, %9205
  %9209 = fsub fast float -0.000000e+00, %9206
  %9210 = call float @dx.op.dot2.f32(i32 54, float %9029, float %9030, float %9208, float %9209)  ; Dot2(ax,ay,bx,by)
  %9211 = fmul fast float %9210, 2.000000e+00
  %9212 = call float @dx.op.dot2.f32(i32 54, float %9208, float %9209, float %9208, float %9209)  ; Dot2(ax,ay,bx,by)
  %9213 = fmul fast float %9207, %9207
  %9214 = fsub fast float %9212, %9213
  %9215 = fmul fast float %9211, %9211
  %9216 = fmul fast float %9072, %9214
  %9217 = fsub fast float %9215, %9216
  %9218 = fcmp fast ogt float %9217, 0.000000e+00
  br i1 %9218, label %9219, label %9234

; <label>:9219                                    ; preds = %9195
  %9220 = fcmp fast ogt float %9211, 0.000000e+00
  %9221 = call float @dx.op.unary.f32(i32 24, float %9217)  ; Sqrt(value)
  %9222 = fsub fast float -0.000000e+00, %9221
  %9223 = select i1 %9220, float %9221, float %9222
  %9224 = fadd fast float %9223, %9211
  %9225 = fmul float %9224, -5.000000e-01
  %9226 = fdiv fast float %9225, %9065
  %9227 = call float @dx.op.binary.f32(i32 35, float %9226, float 0.000000e+00)  ; FMax(a,b)
  %9228 = call float @dx.op.binary.f32(i32 36, float %9100, float %9227)  ; FMin(a,b)
  %9229 = fdiv fast float %9214, %9225
  %9230 = call float @dx.op.binary.f32(i32 35, float %9229, float 0.000000e+00)  ; FMax(a,b)
  %9231 = call float @dx.op.binary.f32(i32 36, float %9100, float %9230)  ; FMin(a,b)
  %9232 = call float @dx.op.binary.f32(i32 36, float %9228, float %9231)  ; FMin(a,b)
  %9233 = call float @dx.op.binary.f32(i32 35, float %9228, float %9231)  ; FMax(a,b)
  br label %9234

; <label>:9234                                    ; preds = %9219, %9195
  %9235 = phi float [ %9233, %9219 ], [ -1.000000e+00, %9195 ]
  %9236 = phi float [ %9232, %9219 ], [ -1.000000e+00, %9195 ]
  %9237 = phi i1 [ true, %9219 ], [ false, %9195 ]
  br i1 %9237, label %9238, label %9244

; <label>:9238                                    ; preds = %9234
  %9239 = call float @dx.op.binary.f32(i32 35, float %9183, float %9236)  ; FMax(a,b)
  %9240 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9197
  store float %9239, float* %9240, align 4, !tbaa !116, !noalias !128
  %9241 = call float @dx.op.binary.f32(i32 35, float %9183, float %9235)  ; FMax(a,b)
  %9242 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %9197
  store float %9241, float* %9242, align 4, !tbaa !116, !noalias !128
  %9243 = add nsw i32 %9196, 1
  br label %9244

; <label>:9244                                    ; preds = %9238, %9234
  %9245 = phi i32 [ %9243, %9238 ], [ %9196, %9234 ]
  %9246 = add nuw nsw i32 %9197, 1
  %9247 = icmp eq i32 %9246, %9052
  br i1 %9247, label %9248, label %9195

; <label>:9248                                    ; preds = %9244
  %9249 = load float, float* %9189, align 4, !tbaa !116, !alias.scope !144, !noalias !147
  %9250 = load float, float* %9188, align 4, !tbaa !116, !alias.scope !150, !noalias !151
  %9251 = load float, float* %9187, align 4, !tbaa !116, !alias.scope !152, !noalias !153
  %9252 = load float, float* %9192, align 4, !tbaa !116, !alias.scope !154, !noalias !157
  %9253 = load float, float* %9191, align 4, !tbaa !116, !alias.scope !160, !noalias !161
  %9254 = load float, float* %9190, align 4, !tbaa !116, !alias.scope !162, !noalias !163
  br label %9255

; <label>:9255                                    ; preds = %9248, %9182
  %9256 = phi float [ -1.000000e+00, %9182 ], [ %9254, %9248 ]
  %9257 = phi float [ -1.000000e+00, %9182 ], [ %9253, %9248 ]
  %9258 = phi float [ -1.000000e+00, %9182 ], [ %9252, %9248 ]
  %9259 = phi float [ -1.000000e+00, %9182 ], [ %9251, %9248 ]
  %9260 = phi float [ -1.000000e+00, %9182 ], [ %9250, %9248 ]
  %9261 = phi float [ -1.000000e+00, %9182 ], [ %9249, %9248 ]
  %9262 = phi i32 [ 0, %9182 ], [ %9245, %9248 ]
  %9263 = call float @dx.op.binary.f32(i32 36, float %9260, float %9261)  ; FMin(a,b)
  %9264 = call float @dx.op.binary.f32(i32 36, float %9259, float %9263)  ; FMin(a,b)
  %9265 = call float @dx.op.binary.f32(i32 35, float %9259, float %9260)  ; FMax(a,b)
  %9266 = call float @dx.op.binary.f32(i32 36, float %9265, float %9261)  ; FMin(a,b)
  %9267 = call float @dx.op.binary.f32(i32 36, float %9259, float %9260)  ; FMin(a,b)
  %9268 = call float @dx.op.binary.f32(i32 35, float %9267, float %9266)  ; FMax(a,b)
  %9269 = call float @dx.op.binary.f32(i32 35, float %9260, float %9261)  ; FMax(a,b)
  %9270 = call float @dx.op.binary.f32(i32 35, float %9259, float %9269)  ; FMax(a,b)
  store float %9264, float* %9187, align 4, !tbaa !116, !alias.scope !152, !noalias !153
  store float %9268, float* %9188, align 4, !tbaa !116, !alias.scope !150, !noalias !151
  store float %9270, float* %9189, align 4, !tbaa !116, !alias.scope !144, !noalias !147
  %9271 = call float @dx.op.binary.f32(i32 36, float %9257, float %9258)  ; FMin(a,b)
  %9272 = call float @dx.op.binary.f32(i32 36, float %9256, float %9271)  ; FMin(a,b)
  %9273 = call float @dx.op.binary.f32(i32 35, float %9256, float %9257)  ; FMax(a,b)
  %9274 = call float @dx.op.binary.f32(i32 36, float %9273, float %9258)  ; FMin(a,b)
  %9275 = call float @dx.op.binary.f32(i32 36, float %9256, float %9257)  ; FMin(a,b)
  %9276 = call float @dx.op.binary.f32(i32 35, float %9275, float %9274)  ; FMax(a,b)
  %9277 = call float @dx.op.binary.f32(i32 35, float %9257, float %9258)  ; FMax(a,b)
  %9278 = call float @dx.op.binary.f32(i32 35, float %9256, float %9277)  ; FMax(a,b)
  store float %9272, float* %9190, align 4, !tbaa !116, !alias.scope !162, !noalias !163
  store float %9276, float* %9191, align 4, !tbaa !116, !alias.scope !160, !noalias !161
  store float %9278, float* %9192, align 4, !tbaa !116, !alias.scope !154, !noalias !157
  %9279 = sub nsw i32 3, %9262
  %9280 = icmp sgt i32 %9279, 2
  br i1 %9280, label %9281, label %9319

; <label>:9281                                    ; preds = %9255
  %9282 = icmp eq i32 %9050, 0
  %9283 = fsub fast float %9100, %9184
  %9284 = select i1 %9282, float %9283, float %9184
  %9285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9286 = extractvalue %dx.types.CBufRet.f32 %9285, 0
  %9287 = extractvalue %dx.types.CBufRet.f32 %9285, 1
  %9288 = extractvalue %dx.types.CBufRet.f32 %9285, 2
  %9289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9290 = extractvalue %dx.types.CBufRet.f32 %9289, 0
  %9291 = extractvalue %dx.types.CBufRet.f32 %9289, 1
  %9292 = extractvalue %dx.types.CBufRet.f32 %9289, 2
  %9293 = extractvalue %dx.types.CBufRet.f32 %9289, 3
  %9294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9295 = extractvalue %dx.types.CBufRet.f32 %9294, 3
  %9296 = call float @dx.op.binary.f32(i32 36, float %9185, float %9295)  ; FMin(a,b)
  %9297 = fmul fast float %9293, %9284
  %9298 = call float @dx.op.unary.f32(i32 7, float %9297)  ; Saturate(value)
  %9299 = fsub fast float %9290, %9286
  %9300 = fsub fast float %9291, %9287
  %9301 = fsub fast float %9292, %9288
  %9302 = fmul fast float %9298, %9299
  %9303 = fmul fast float %9298, %9300
  %9304 = fmul fast float %9298, %9301
  %9305 = fadd fast float %9302, %9286
  %9306 = fadd fast float %9303, %9287
  %9307 = fadd fast float %9304, %9288
  %9308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9309 = extractvalue %dx.types.CBufRet.f32 %9308, 0
  %9310 = extractvalue %dx.types.CBufRet.f32 %9308, 1
  %9311 = fadd fast float %9310, %9309
  %9312 = call float @dx.op.unary.f32(i32 7, float %9311)  ; Saturate(value)
  %9313 = extractvalue %dx.types.CBufRet.f32 %9308, 2
  %9314 = extractvalue %dx.types.CBufRet.f32 %9308, 3
  %9315 = fadd fast float %9314, %9313
  %9316 = call float @dx.op.unary.f32(i32 7, float %9315)  ; Saturate(value)
  %9317 = fmul fast float %9312, %9296
  %9318 = fmul fast float %9317, %9316
  br label %9401

; <label>:9319                                    ; preds = %9255
  %9320 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9279
  %9321 = load float, float* %9320, align 4, !tbaa !116, !noalias !128
  %9322 = fcmp fast olt float %9321, %9186
  %9323 = icmp sgt i32 %9262, 0
  %9324 = and i1 %9323, %9322
  br i1 %9324, label %9325, label %9362

; <label>:9325                                    ; preds = %9319
  br label %9326

; <label>:9326                                    ; preds = %9355, %9325
  %9327 = phi float [ %9356, %9355 ], [ %9184, %9325 ]
  %9328 = phi float [ %9357, %9355 ], [ %9185, %9325 ]
  %9329 = phi float [ %9337, %9355 ], [ %9321, %9325 ]
  %9330 = phi i32 [ %9334, %9355 ], [ %9279, %9325 ]
  %9331 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %9330
  %9332 = load float, float* %9331, align 4, !tbaa !116, !noalias !128
  %9333 = icmp slt i32 %9330, 2
  %9334 = add nsw i32 %9330, 1
  %9335 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9334
  %9336 = load float, float* %9335, align 4, !tbaa !116, !noalias !128
  %9337 = select i1 %9333, float %9336, float %9100
  %9338 = call float @dx.op.binary.f32(i32 36, float %9337, float %9332)  ; FMin(a,b)
  %9339 = call float @dx.op.binary.f32(i32 36, float %9186, float %9338)  ; FMin(a,b)
  %9340 = icmp eq i32 %9050, 0
  %9341 = fadd fast float %9339, %9329
  %9342 = fmul fast float %9341, %9031
  %9343 = fadd fast float %9342, %9044
  br i1 %9340, label %9349, label %9344

; <label>:9344                                    ; preds = %9326
  %9345 = fsub fast float %9339, %9329
  %9346 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9345)  ; FMax(a,b)
  %9347 = fmul fast float %9346, %9343
  %9348 = fadd fast float %9347, %9328
  br label %9355

; <label>:9349                                    ; preds = %9326
  %9350 = fsub fast float %9329, %9339
  %9351 = call float @dx.op.unary.f32(i32 6, float %9350)  ; FAbs(value)
  %9352 = fadd fast float %9351, %9327
  %9353 = fmul fast float %9351, %9343
  %9354 = fsub fast float %9328, %9353
  br label %9355

; <label>:9355                                    ; preds = %9349, %9344
  %9356 = phi float [ %9346, %9344 ], [ %9352, %9349 ]
  %9357 = phi float [ %9348, %9344 ], [ %9354, %9349 ]
  %9358 = fcmp fast olt float %9337, %9186
  %9359 = icmp slt i32 %9334, 3
  %9360 = and i1 %9359, %9358
  br i1 %9360, label %9326, label %9361

; <label>:9361                                    ; preds = %9355
  br label %9362

; <label>:9362                                    ; preds = %9361, %9319
  %9363 = phi float [ %9184, %9319 ], [ %9356, %9361 ]
  %9364 = phi float [ %9185, %9319 ], [ %9357, %9361 ]
  %9365 = fsub fast float %9100, %9363
  %9366 = select i1 %9102, float %9363, float %9365
  %9367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9368 = extractvalue %dx.types.CBufRet.f32 %9367, 0
  %9369 = extractvalue %dx.types.CBufRet.f32 %9367, 1
  %9370 = extractvalue %dx.types.CBufRet.f32 %9367, 2
  %9371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9372 = extractvalue %dx.types.CBufRet.f32 %9371, 0
  %9373 = extractvalue %dx.types.CBufRet.f32 %9371, 1
  %9374 = extractvalue %dx.types.CBufRet.f32 %9371, 2
  %9375 = extractvalue %dx.types.CBufRet.f32 %9371, 3
  %9376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9377 = extractvalue %dx.types.CBufRet.f32 %9376, 3
  %9378 = call float @dx.op.binary.f32(i32 36, float %9364, float %9377)  ; FMin(a,b)
  %9379 = fmul fast float %9375, %9366
  %9380 = call float @dx.op.unary.f32(i32 7, float %9379)  ; Saturate(value)
  %9381 = fsub fast float %9372, %9368
  %9382 = fsub fast float %9373, %9369
  %9383 = fsub fast float %9374, %9370
  %9384 = fmul fast float %9380, %9381
  %9385 = fmul fast float %9380, %9382
  %9386 = fmul fast float %9380, %9383
  %9387 = fadd fast float %9384, %9368
  %9388 = fadd fast float %9385, %9369
  %9389 = fadd fast float %9386, %9370
  %9390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9391 = extractvalue %dx.types.CBufRet.f32 %9390, 0
  %9392 = extractvalue %dx.types.CBufRet.f32 %9390, 1
  %9393 = fadd fast float %9392, %9391
  %9394 = call float @dx.op.unary.f32(i32 7, float %9393)  ; Saturate(value)
  %9395 = extractvalue %dx.types.CBufRet.f32 %9390, 2
  %9396 = extractvalue %dx.types.CBufRet.f32 %9390, 3
  %9397 = fadd fast float %9396, %9395
  %9398 = call float @dx.op.unary.f32(i32 7, float %9397)  ; Saturate(value)
  %9399 = fmul fast float %9394, %9378
  %9400 = fmul fast float %9399, %9398
  br label %9401

; <label>:9401                                    ; preds = %9362, %9281, %9116, %9098, %9096
  %9402 = phi float [ %9125, %9116 ], [ %9284, %9281 ], [ %9366, %9362 ], [ 0.000000e+00, %9096 ], [ 0.000000e+00, %9098 ]
  %9403 = phi float [ %9159, %9116 ], [ %9318, %9281 ], [ %9400, %9362 ], [ 0.000000e+00, %9096 ], [ 0.000000e+00, %9098 ]
  %9404 = phi float [ %9146, %9116 ], [ %9305, %9281 ], [ %9387, %9362 ], [ 0.000000e+00, %9096 ], [ 0.000000e+00, %9098 ]
  %9405 = phi float [ %9147, %9116 ], [ %9306, %9281 ], [ %9388, %9362 ], [ 0.000000e+00, %9096 ], [ 0.000000e+00, %9098 ]
  %9406 = phi float [ %9148, %9116 ], [ %9307, %9281 ], [ %9389, %9362 ], [ 0.000000e+00, %9096 ], [ 0.000000e+00, %9098 ]
  %9407 = fmul fast float %9039, %9403
  %9408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9409 = extractvalue %dx.types.CBufRet.f32 %9408, 2
  %9410 = fsub fast float %9046, %9409
  %9411 = fcmp fast olt float %9407, -2.000000e+01
  %9412 = call float @dx.op.unary.f32(i32 21, float %9407)  ; Exp(value)
  %9413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9414 = extractvalue %dx.types.CBufRet.f32 %9413, 2
  %9415 = extractvalue %dx.types.CBufRet.f32 %9413, 3
  %9416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9417 = extractvalue %dx.types.CBufRet.f32 %9416, 2
  %9418 = fmul fast float %9415, %9410
  %9419 = call float @dx.op.unary.f32(i32 7, float %9418)  ; Saturate(value)
  %9420 = fsub fast float 1.000000e+00, %9419
  %9421 = fmul fast float %9031, 5.000000e-01
  %9422 = fadd fast float %9421, 5.000000e-01
  %9423 = call float @dx.op.unary.f32(i32 7, float %9422)  ; Saturate(value)
  %9424 = fsub fast float 1.000000e+00, %9423
  %9425 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9420)  ; FMax(a,b)
  %9426 = fdiv fast float %9424, %9425
  %9427 = fsub fast float %9410, %8988
  %9428 = call float @dx.op.unary.f32(i32 6, float %9427)  ; FAbs(value)
  %9429 = fmul fast float %9428, %9414
  %9430 = call float @dx.op.unary.f32(i32 7, float %9426)  ; Saturate(value)
  %9431 = fsub fast float 1.000000e+00, %9429
  %9432 = fmul fast float %9431, %9430
  %9433 = fadd fast float %9432, %9429
  %9434 = fmul fast float %9417, %9410
  %9435 = call float @dx.op.unary.f32(i32 7, float %9434)  ; Saturate(value)
  %9436 = fsub fast float 1.000000e+00, %9433
  %9437 = fmul fast float %9436, %9435
  %9438 = fadd fast float %9437, %9433
  %9439 = call float @dx.op.unary.f32(i32 7, float %9438)  ; Saturate(value)
  %9440 = fadd fast float %9412, -1.000000e+00
  %9441 = select i1 %9411, float -1.000000e+00, float %9440
  %9442 = fmul fast float %9439, %9441
  %9443 = fadd fast float %9442, 1.000000e+00
  %9444 = fsub fast float -0.000000e+00, %9442
  %9445 = fmul fast float %9404, %9444
  %9446 = fmul fast float %9405, %9444
  %9447 = fmul fast float %9406, %9444
  br label %9448

; <label>:9448                                    ; preds = %9401, %8997
  %9449 = phi float [ %9402, %9401 ], [ 0.000000e+00, %8997 ]
  %9450 = phi float [ %9443, %9401 ], [ 1.000000e+00, %8997 ]
  %9451 = phi float [ %9445, %9401 ], [ 0.000000e+00, %8997 ]
  %9452 = phi float [ %9446, %9401 ], [ 0.000000e+00, %8997 ]
  %9453 = phi float [ %9447, %9401 ], [ 0.000000e+00, %8997 ]
  %9454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9455 = extractvalue %dx.types.CBufRet.f32 %9454, 1
  %9456 = fsub fast float 1.000000e+00, %9450
  %9457 = fmul fast float %9456, %9032
  %9458 = fmul fast float %9457, %9455
  %9459 = fsub fast float %9032, %9458
  br i1 %9025, label %9460, label %9489, !dx.controlflow.hints !164

; <label>:9460                                    ; preds = %9448
  %9461 = fmul fast float %9033, %9022
  %9462 = fadd fast float %9461, %9023
  %9463 = call float @dx.op.unary.f32(i32 7, float %9462)  ; Saturate(value)
  %9464 = fmul fast float %9004, %9459
  %9465 = fsub fast float -0.000000e+00, %9464
  %9466 = fmul fast float %9005, %9459
  %9467 = fsub fast float -0.000000e+00, %9466
  %9468 = call float @dx.op.unary.f32(i32 21, float %9465)  ; Exp(value)
  %9469 = call float @dx.op.unary.f32(i32 21, float %9467)  ; Exp(value)
  %9470 = call float @dx.op.binary.f32(i32 35, float %9012, float %9468)  ; FMax(a,b)
  %9471 = call float @dx.op.binary.f32(i32 35, float %9012, float %9469)  ; FMax(a,b)
  %9472 = fsub fast float %9471, %9470
  %9473 = fmul fast float %9472, %9463
  %9474 = fadd fast float %9473, %9470
  %9475 = call float @dx.op.unary.f32(i32 7, float %9474)  ; Saturate(value)
  %9476 = fsub fast float %9009, %9014
  %9477 = fsub fast float %9010, %9015
  %9478 = fsub fast float %9011, %9016
  %9479 = fmul fast float %9463, %9476
  %9480 = fmul fast float %9463, %9477
  %9481 = fmul fast float %9463, %9478
  %9482 = fadd fast float %9479, %9014
  %9483 = fadd fast float %9480, %9015
  %9484 = fadd fast float %9481, %9016
  %9485 = fsub fast float 1.000000e+00, %9475
  %9486 = fmul fast float %9485, %9482
  %9487 = fmul fast float %9485, %9483
  %9488 = fmul fast float %9485, %9484
  br label %9548

; <label>:9489                                    ; preds = %9448
  %9490 = fmul fast float %9459, %9021
  %9491 = call float @dx.op.unary.f32(i32 7, float %9490)  ; Saturate(value)
  %9492 = fsub fast float 2.000000e+00, %9491
  %9493 = fmul fast float %9491, 9.921875e-01
  %9494 = fmul fast float %9493, %9492
  %9495 = fadd fast float %9494, 3.906250e-03
  %9496 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %45, float %9495, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9497 = extractvalue %dx.types.ResRet.f32 %9496, 0
  %9498 = fsub fast float %9491, %9497
  %9499 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9498)  ; FMax(a,b)
  %9500 = fmul fast float %9007, %8988
  %9501 = call float @dx.op.unary.f32(i32 6, float %9500)  ; FAbs(value)
  %9502 = fcmp fast ogt float %9501, 0x3EB0C6F7A0000000
  br i1 %9502, label %9503, label %9509, !dx.controlflow.hints !165

; <label>:9503                                    ; preds = %9489
  %9504 = fmul fast float %9500, 0xBFF7154760000000
  %9505 = call float @dx.op.unary.f32(i32 21, float %9504)  ; Exp(value)
  %9506 = fsub fast float 1.000000e+00, %9505
  %9507 = fdiv fast float %9506, %9500
  %9508 = fmul fast float %9507, %9017
  br label %9509

; <label>:9509                                    ; preds = %9503, %9489
  %9510 = phi float [ %9508, %9503 ], [ %9017, %9489 ]
  %9511 = fadd fast float %9510, %9019
  %9512 = fmul fast float %9511, %9499
  %9513 = fmul fast float %9004, %9512
  %9514 = fsub fast float -0.000000e+00, %9513
  %9515 = fmul fast float %9005, %9512
  %9516 = fsub fast float -0.000000e+00, %9515
  %9517 = fmul fast float %9006, %9512
  %9518 = fsub fast float -0.000000e+00, %9517
  %9519 = call float @dx.op.unary.f32(i32 21, float %9514)  ; Exp(value)
  %9520 = call float @dx.op.unary.f32(i32 21, float %9516)  ; Exp(value)
  %9521 = call float @dx.op.unary.f32(i32 21, float %9518)  ; Exp(value)
  %9522 = fmul fast float %9033, %9033
  %9523 = fadd fast float %9522, 1.000000e+00
  %9524 = fmul fast float %9523, 0x3FAE8EC8A0000000
  %9525 = fmul fast float %9524, %9014
  %9526 = fmul fast float %9524, %9015
  %9527 = fmul fast float %9524, %9016
  %9528 = fmul fast float %9033, %9012
  %9529 = fsub fast float 1.000000e+00, %9528
  %9530 = fmul fast float %9012, %9012
  %9531 = fsub fast float 1.000000e+00, %9530
  %9532 = fmul fast float %9531, 0x3FB45F3060000000
  %9533 = fmul fast float %9529, %9529
  %9534 = fdiv fast float 1.000000e+00, %9533
  %9535 = fmul fast float %9532, %9534
  %9536 = fmul fast float %9535, %9009
  %9537 = fmul fast float %9535, %9010
  %9538 = fmul fast float %9535, %9011
  %9539 = fadd fast float %9536, %9525
  %9540 = fadd fast float %9537, %9526
  %9541 = fadd fast float %9538, %9527
  %9542 = fsub fast float 1.000000e+00, %9519
  %9543 = fsub fast float 1.000000e+00, %9520
  %9544 = fsub fast float 1.000000e+00, %9521
  %9545 = fmul fast float %9539, %9542
  %9546 = fmul fast float %9540, %9543
  %9547 = fmul fast float %9541, %9544
  br label %9548

; <label>:9548                                    ; preds = %9509, %9460
  %9549 = phi float [ %9486, %9460 ], [ %9545, %9509 ]
  %9550 = phi float [ %9487, %9460 ], [ %9546, %9509 ]
  %9551 = phi float [ %9488, %9460 ], [ %9547, %9509 ]
  %9552 = phi float [ %9475, %9460 ], [ %9519, %9509 ]
  %9553 = phi float [ %9475, %9460 ], [ %9520, %9509 ]
  %9554 = phi float [ %9475, %9460 ], [ %9521, %9509 ]
  br i1 %9041, label %9555, label %9753, !dx.controlflow.hints !166

; <label>:9555                                    ; preds = %9548
  %9556 = extractvalue %dx.types.CBufRet.f32 %9454, 0
  %9557 = fmul fast float %9556, %9456
  %9558 = fsub fast float %9451, %9549
  %9559 = fsub fast float %9452, %9550
  %9560 = fsub fast float %9453, %9551
  %9561 = fmul fast float %9557, %9558
  %9562 = fmul fast float %9557, %9559
  %9563 = fmul fast float %9557, %9560
  %9564 = fadd fast float %9561, %9549
  %9565 = fadd fast float %9562, %9550
  %9566 = fadd fast float %9563, %9551
  %9567 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9552)  ; FMax(a,b)
  %9568 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9553)  ; FMax(a,b)
  %9569 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9554)  ; FMax(a,b)
  %9570 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9450)  ; FMax(a,b)
  %9571 = call float @dx.op.binary.f32(i32 35, float %9449, float %9459)  ; FMax(a,b)
  %9572 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9571)  ; FMax(a,b)
  %9573 = fdiv fast float %9449, %9572
  %9574 = call float @dx.op.unary.f32(i32 7, float %9573)  ; Saturate(value)
  %9575 = fdiv fast float %9459, %9572
  %9576 = call float @dx.op.unary.f32(i32 7, float %9575)  ; Saturate(value)
  %9577 = fcmp fast une float %9570, 1.000000e+00
  br i1 %9577, label %9578, label %9591, !dx.controlflow.hints !167

; <label>:9578                                    ; preds = %9555
  %9579 = call float @dx.op.unary.f32(i32 23, float %9570)  ; Log(value)
  %9580 = fmul fast float %9579, 0x3FE62E4300000000
  %9581 = fmul fast float %9451, %9580
  %9582 = fsub fast float -0.000000e+00, %9581
  %9583 = fmul fast float %9452, %9580
  %9584 = fsub fast float -0.000000e+00, %9583
  %9585 = fmul fast float %9453, %9580
  %9586 = fsub fast float -0.000000e+00, %9585
  %9587 = fsub fast float 1.000000e+00, %9570
  %9588 = fdiv fast float %9582, %9587
  %9589 = fdiv fast float %9584, %9587
  %9590 = fdiv fast float %9586, %9587
  br label %9591

; <label>:9591                                    ; preds = %9578, %9555
  %9592 = phi float [ %9588, %9578 ], [ %9451, %9555 ]
  %9593 = phi float [ %9589, %9578 ], [ %9452, %9555 ]
  %9594 = phi float [ %9590, %9578 ], [ %9453, %9555 ]
  %9595 = phi float [ %9580, %9578 ], [ 0.000000e+00, %9555 ]
  %9596 = fcmp fast une float %9567, 1.000000e+00
  br i1 %9596, label %9597, label %9604, !dx.controlflow.hints !168

; <label>:9597                                    ; preds = %9591
  %9598 = call float @dx.op.unary.f32(i32 23, float %9567)  ; Log(value)
  %9599 = fmul fast float %9598, 0x3FE62E4300000000
  %9600 = fmul fast float %9564, %9599
  %9601 = fsub fast float -0.000000e+00, %9600
  %9602 = fsub fast float 1.000000e+00, %9567
  %9603 = fdiv fast float %9601, %9602
  br label %9604

; <label>:9604                                    ; preds = %9597, %9591
  %9605 = phi float [ %9603, %9597 ], [ %9564, %9591 ]
  %9606 = phi float [ %9599, %9597 ], [ 0.000000e+00, %9591 ]
  %9607 = fcmp fast une float %9568, 1.000000e+00
  br i1 %9607, label %9608, label %9615, !dx.controlflow.hints !168

; <label>:9608                                    ; preds = %9604
  %9609 = call float @dx.op.unary.f32(i32 23, float %9568)  ; Log(value)
  %9610 = fmul fast float %9609, 0x3FE62E4300000000
  %9611 = fmul fast float %9565, %9610
  %9612 = fsub fast float -0.000000e+00, %9611
  %9613 = fsub fast float 1.000000e+00, %9568
  %9614 = fdiv fast float %9612, %9613
  br label %9615

; <label>:9615                                    ; preds = %9608, %9604
  %9616 = phi float [ %9614, %9608 ], [ %9565, %9604 ]
  %9617 = phi float [ %9610, %9608 ], [ 0.000000e+00, %9604 ]
  %9618 = fcmp fast une float %9569, 1.000000e+00
  br i1 %9618, label %9619, label %9626, !dx.controlflow.hints !168

; <label>:9619                                    ; preds = %9615
  %9620 = call float @dx.op.unary.f32(i32 23, float %9569)  ; Log(value)
  %9621 = fmul fast float %9620, 0x3FE62E4300000000
  %9622 = fmul fast float %9566, %9621
  %9623 = fsub fast float -0.000000e+00, %9622
  %9624 = fsub fast float 1.000000e+00, %9569
  %9625 = fdiv fast float %9623, %9624
  br label %9626

; <label>:9626                                    ; preds = %9619, %9615
  %9627 = phi float [ %9625, %9619 ], [ %9566, %9615 ]
  %9628 = phi float [ %9621, %9619 ], [ 0.000000e+00, %9615 ]
  %9629 = fmul fast float %9592, %9576
  %9630 = fmul fast float %9593, %9576
  %9631 = fmul fast float %9594, %9576
  %9632 = fmul fast float %9595, %9576
  %9633 = fmul fast float %9605, %9574
  %9634 = fmul fast float %9616, %9574
  %9635 = fmul fast float %9627, %9574
  %9636 = fmul fast float %9606, %9574
  %9637 = fmul fast float %9617, %9574
  %9638 = fmul fast float %9628, %9574
  %9639 = fadd fast float %9633, %9629
  %9640 = fadd fast float %9634, %9630
  %9641 = fadd fast float %9635, %9631
  %9642 = fadd fast float %9636, %9632
  %9643 = fadd fast float %9637, %9632
  %9644 = fadd fast float %9638, %9632
  %9645 = fcmp fast une float %9642, 0.000000e+00
  br i1 %9645, label %9646, label %9653, !dx.controlflow.hints !169

; <label>:9646                                    ; preds = %9626
  %9647 = fmul fast float %9642, 0x3FF7154760000000
  %9648 = call float @dx.op.unary.f32(i32 21, float %9647)  ; Exp(value)
  %9649 = fsub fast float 1.000000e+00, %9648
  %9650 = fmul fast float %9639, %9649
  %9651 = fsub fast float -0.000000e+00, %9650
  %9652 = fdiv fast float %9651, %9642
  br label %9653

; <label>:9653                                    ; preds = %9646, %9626
  %9654 = phi float [ %9648, %9646 ], [ 1.000000e+00, %9626 ]
  %9655 = phi float [ %9652, %9646 ], [ %9639, %9626 ]
  %9656 = fcmp fast une float %9643, 0.000000e+00
  br i1 %9656, label %9657, label %9664, !dx.controlflow.hints !169

; <label>:9657                                    ; preds = %9653
  %9658 = fmul fast float %9643, 0x3FF7154760000000
  %9659 = call float @dx.op.unary.f32(i32 21, float %9658)  ; Exp(value)
  %9660 = fsub fast float 1.000000e+00, %9659
  %9661 = fmul fast float %9640, %9660
  %9662 = fsub fast float -0.000000e+00, %9661
  %9663 = fdiv fast float %9662, %9643
  br label %9664

; <label>:9664                                    ; preds = %9657, %9653
  %9665 = phi float [ %9659, %9657 ], [ 1.000000e+00, %9653 ]
  %9666 = phi float [ %9663, %9657 ], [ %9640, %9653 ]
  %9667 = fcmp fast une float %9644, 0.000000e+00
  br i1 %9667, label %9668, label %9675, !dx.controlflow.hints !169

; <label>:9668                                    ; preds = %9664
  %9669 = fmul fast float %9644, 0x3FF7154760000000
  %9670 = call float @dx.op.unary.f32(i32 21, float %9669)  ; Exp(value)
  %9671 = fsub fast float 1.000000e+00, %9670
  %9672 = fmul fast float %9641, %9671
  %9673 = fsub fast float -0.000000e+00, %9672
  %9674 = fdiv fast float %9673, %9644
  br label %9675

; <label>:9675                                    ; preds = %9668, %9664
  %9676 = phi float [ %9670, %9668 ], [ 1.000000e+00, %9664 ]
  %9677 = phi float [ %9674, %9668 ], [ %9641, %9664 ]
  %9678 = fcmp fast ogt float %9574, %9576
  br i1 %9678, label %9679, label %9699

; <label>:9679                                    ; preds = %9675
  %9680 = fsub fast float 1.000000e+00, %9576
  %9681 = fmul fast float %9592, %9680
  %9682 = fmul fast float %9593, %9680
  %9683 = fmul fast float %9594, %9680
  %9684 = fmul fast float %9595, %9680
  %9685 = fcmp fast une float %9684, 0.000000e+00
  br i1 %9685, label %9686, label %9737, !dx.controlflow.hints !170

; <label>:9686                                    ; preds = %9679
  %9687 = fmul fast float %9684, 0x3FF7154760000000
  %9688 = call float @dx.op.unary.f32(i32 21, float %9687)  ; Exp(value)
  %9689 = fsub fast float 1.000000e+00, %9688
  %9690 = fmul fast float %9681, %9689
  %9691 = fsub fast float -0.000000e+00, %9690
  %9692 = fmul fast float %9682, %9689
  %9693 = fsub fast float -0.000000e+00, %9692
  %9694 = fmul fast float %9683, %9689
  %9695 = fsub fast float -0.000000e+00, %9694
  %9696 = fdiv fast float %9691, %9684
  %9697 = fdiv fast float %9693, %9684
  %9698 = fdiv fast float %9695, %9684
  br label %9737

; <label>:9699                                    ; preds = %9675
  %9700 = fsub fast float 1.000000e+00, %9574
  %9701 = fmul fast float %9605, %9700
  %9702 = fmul fast float %9616, %9700
  %9703 = fmul fast float %9627, %9700
  %9704 = fmul fast float %9606, %9700
  %9705 = fmul fast float %9617, %9700
  %9706 = fmul fast float %9628, %9700
  %9707 = fcmp fast une float %9704, 0.000000e+00
  br i1 %9707, label %9708, label %9715, !dx.controlflow.hints !169

; <label>:9708                                    ; preds = %9699
  %9709 = fmul fast float %9704, 0x3FF7154760000000
  %9710 = call float @dx.op.unary.f32(i32 21, float %9709)  ; Exp(value)
  %9711 = fsub fast float 1.000000e+00, %9710
  %9712 = fmul fast float %9701, %9711
  %9713 = fsub fast float -0.000000e+00, %9712
  %9714 = fdiv fast float %9713, %9704
  br label %9715

; <label>:9715                                    ; preds = %9708, %9699
  %9716 = phi float [ %9714, %9708 ], [ %9701, %9699 ]
  %9717 = phi float [ %9710, %9708 ], [ 1.000000e+00, %9699 ]
  %9718 = fcmp fast une float %9705, 0.000000e+00
  br i1 %9718, label %9719, label %9726, !dx.controlflow.hints !169

; <label>:9719                                    ; preds = %9715
  %9720 = fmul fast float %9705, 0x3FF7154760000000
  %9721 = call float @dx.op.unary.f32(i32 21, float %9720)  ; Exp(value)
  %9722 = fsub fast float 1.000000e+00, %9721
  %9723 = fmul fast float %9702, %9722
  %9724 = fsub fast float -0.000000e+00, %9723
  %9725 = fdiv fast float %9724, %9705
  br label %9726

; <label>:9726                                    ; preds = %9719, %9715
  %9727 = phi float [ %9725, %9719 ], [ %9702, %9715 ]
  %9728 = phi float [ %9721, %9719 ], [ 1.000000e+00, %9715 ]
  %9729 = fcmp fast une float %9706, 0.000000e+00
  br i1 %9729, label %9730, label %9737, !dx.controlflow.hints !169

; <label>:9730                                    ; preds = %9726
  %9731 = fmul fast float %9706, 0x3FF7154760000000
  %9732 = call float @dx.op.unary.f32(i32 21, float %9731)  ; Exp(value)
  %9733 = fsub fast float 1.000000e+00, %9732
  %9734 = fmul fast float %9703, %9733
  %9735 = fsub fast float -0.000000e+00, %9734
  %9736 = fdiv fast float %9735, %9706
  br label %9737

; <label>:9737                                    ; preds = %9730, %9726, %9686, %9679
  %9738 = phi float [ %9736, %9730 ], [ %9698, %9686 ], [ %9683, %9679 ], [ %9703, %9726 ]
  %9739 = phi float [ %9727, %9730 ], [ %9697, %9686 ], [ %9682, %9679 ], [ %9727, %9726 ]
  %9740 = phi float [ %9716, %9730 ], [ %9696, %9686 ], [ %9681, %9679 ], [ %9716, %9726 ]
  %9741 = phi float [ %9732, %9730 ], [ %9688, %9686 ], [ 1.000000e+00, %9679 ], [ 1.000000e+00, %9726 ]
  %9742 = phi float [ %9728, %9730 ], [ %9688, %9686 ], [ 1.000000e+00, %9679 ], [ %9728, %9726 ]
  %9743 = phi float [ %9717, %9730 ], [ %9688, %9686 ], [ 1.000000e+00, %9679 ], [ %9717, %9726 ]
  %9744 = fmul fast float %9743, %9655
  %9745 = fmul fast float %9742, %9666
  %9746 = fmul fast float %9741, %9677
  %9747 = fadd fast float %9744, %9740
  %9748 = fadd fast float %9745, %9739
  %9749 = fadd fast float %9746, %9738
  %9750 = fmul fast float %9743, %9654
  %9751 = fmul fast float %9742, %9665
  %9752 = fmul fast float %9741, %9676
  br label %9753

; <label>:9753                                    ; preds = %9737, %9548
  %9754 = phi float [ %9752, %9737 ], [ %9554, %9548 ]
  %9755 = phi float [ %9751, %9737 ], [ %9553, %9548 ]
  %9756 = phi float [ %9750, %9737 ], [ %9552, %9548 ]
  %9757 = phi float [ %9749, %9737 ], [ %9551, %9548 ]
  %9758 = phi float [ %9748, %9737 ], [ %9550, %9548 ]
  %9759 = phi float [ %9747, %9737 ], [ %9549, %9548 ]
  %9760 = fmul fast float %9759, %8701
  %9761 = fmul fast float %9758, %8703
  %9762 = fmul fast float %9757, %8705
  %9763 = fmul fast float %9756, %8996
  %9764 = call float @dx.op.dot3.f32(i32 55, float %9756, float %9755, float %9754, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9765 = call float @dx.op.dot3.f32(i32 55, float %9760, float %9761, float %9762, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9766 = select i1 %264, float %9764, float %9756
  %9767 = select i1 %264, float %9764, float %9755
  %9768 = select i1 %264, float 1.000000e+00, float %9754
  %9769 = select i1 %264, float %9765, float %9760
  %9770 = select i1 %264, float 0.000000e+00, float %9761
  %9771 = select i1 %264, float 0.000000e+00, float %9762
  %9772 = fmul fast float %9766, %8990
  %9773 = fmul fast float %9767, %8991
  %9774 = fmul fast float %9768, %8992
  %9775 = fadd fast float %9772, %9769
  %9776 = fadd fast float %9773, %9770
  %9777 = fadd fast float %9771, %9774
  %9778 = fmul fast float %9766, %8993
  %9779 = fmul fast float %9767, %8994
  %9780 = fmul fast float %9768, %8995
  %9781 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9782 = extractvalue %dx.types.CBufRet.i32 %9781, 0
  %9783 = icmp eq i32 %9782, 0
  br i1 %9783, label %10151, label %9784, !dx.controlflow.hints !171

; <label>:9784                                    ; preds = %9753
  %9785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9786 = extractvalue %dx.types.CBufRet.f32 %9785, 2
  %9787 = extractvalue %dx.types.CBufRet.f32 %9785, 3
  %9788 = fmul fast float %9786, %111
  %9789 = fmul fast float %9787, %112
  %9790 = fmul fast float %9788, 2.000000e+00
  %9791 = fmul fast float %9789, 2.000000e+00
  %9792 = fsub fast float 1.000000e+00, %9790
  %9793 = fsub fast float 1.000000e+00, %9791
  %9794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9795 = extractvalue %dx.types.CBufRet.f32 %9794, 0
  %9796 = extractvalue %dx.types.CBufRet.f32 %9794, 1
  %9797 = extractvalue %dx.types.CBufRet.f32 %9794, 2
  %9798 = fmul fast float %9792, %9795
  %9799 = fmul fast float %9792, %9796
  %9800 = fmul fast float %9792, %9797
  %9801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9802 = extractvalue %dx.types.CBufRet.f32 %9801, 0
  %9803 = extractvalue %dx.types.CBufRet.f32 %9801, 1
  %9804 = extractvalue %dx.types.CBufRet.f32 %9801, 2
  %9805 = fmul fast float %9793, %9802
  %9806 = fmul fast float %9793, %9803
  %9807 = fmul fast float %9793, %9804
  %9808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9809 = extractvalue %dx.types.CBufRet.f32 %9808, 0
  %9810 = extractvalue %dx.types.CBufRet.f32 %9808, 1
  %9811 = extractvalue %dx.types.CBufRet.f32 %9808, 2
  %9812 = fadd fast float %9805, %9809
  %9813 = fadd fast float %9812, %9798
  %9814 = fadd fast float %9806, %9810
  %9815 = fadd fast float %9814, %9799
  %9816 = fadd fast float %9807, %9811
  %9817 = fadd fast float %9816, %9800
  %9818 = fmul fast float %9813, %8989
  %9819 = fmul fast float %9815, %8989
  %9820 = fmul fast float %9817, %8989
  %9821 = fmul fast float %9818, %9818
  %9822 = fmul fast float %9819, %9819
  %9823 = fadd fast float %9821, %9822
  %9824 = fmul fast float %9820, %9820
  %9825 = fadd fast float %9823, %9824
  %9826 = call float @dx.op.unary.f32(i32 24, float %9825)  ; Sqrt(value)
  %9827 = extractvalue %dx.types.CBufRet.f32 %8716, 0
  %9828 = fsub fast float %9826, %9827
  %9829 = extractvalue %dx.types.CBufRet.f32 %8716, 2
  %9830 = fmul fast float %9828, %9829
  %9831 = call float @dx.op.unary.f32(i32 7, float %9830)  ; Saturate(value)
  %9832 = fadd fast float %9831, -5.000000e-01
  %9833 = fmul fast float %9832, 2.000000e+00
  %9834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9835 = extractvalue %dx.types.CBufRet.f32 %9834, 2
  %9836 = call float @dx.op.binary.f32(i32 36, float %9835, float %9833)  ; FMin(a,b)
  %9837 = fsub fast float -0.000000e+00, %9835
  %9838 = fcmp fast ogt float %9836, %9837
  br i1 %9838, label %9839, label %10151, !dx.controlflow.hints !172

; <label>:9839                                    ; preds = %9784
  %9840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9841 = extractvalue %dx.types.CBufRet.f32 %9840, 3
  %9842 = fcmp fast ogt float %9841, 0.000000e+00
  br i1 %9842, label %9843, label %9918, !dx.controlflow.hints !173

; <label>:9843                                    ; preds = %9839
  %9844 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %27, i32 0)  ; GetDimensions(handle,mipLevel)
  %9845 = extractvalue %dx.types.Dimensions %9844, 0
  %9846 = sitofp i32 %9845 to float
  %9847 = extractvalue %dx.types.Dimensions %9844, 1
  %9848 = sitofp i32 %9847 to float
  %9849 = fmul fast float %9788, %9846
  %9850 = fmul fast float %9789, %9848
  %9851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9852 = extractvalue %dx.types.CBufRet.f32 %9851, 1
  %9853 = fsub fast float -0.000000e+00, %9852
  %9854 = fptoui float %9853 to i32
  %9855 = fptoui float %9849 to i32
  %9856 = fptoui float %9850 to i32
  %9857 = and i32 %9854, 31
  %9858 = lshr i32 %9855, %9857
  %9859 = lshr i32 %9856, %9857
  %9860 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %27, i32 %9854, i32 %9858, i32 %9859, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9861 = extractvalue %dx.types.ResRet.f32 %9860, 0
  %9862 = fcmp fast olt float %9861, -1.000000e+00
  %9863 = fcmp fast ogt float %9861, -1.000000e+00
  %9864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9865 = extractvalue %dx.types.CBufRet.f32 %9864, 1
  %9866 = select i1 %9863, float %9865, float 1.000000e+00
  %9867 = fadd fast float %9861, 1.000000e+00
  %9868 = fmul fast float %9866, %9867
  %9869 = call float @dx.op.unary.f32(i32 6, float %9868)  ; FAbs(value)
  %9870 = extractvalue %dx.types.CBufRet.f32 %9864, 3
  %9871 = fcmp fast oge float %9869, %9870
  %9872 = select i1 %9871, float 0x4197782600000000, float %9869
  %9873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9874 = extractvalue %dx.types.CBufRet.f32 %9873, 0
  %9875 = extractvalue %dx.types.CBufRet.f32 %9873, 1
  %9876 = extractvalue %dx.types.CBufRet.f32 %9873, 2
  %9877 = select i1 %9862, float %9874, float %9795
  %9878 = select i1 %9862, float %9875, float %9796
  %9879 = select i1 %9862, float %9876, float %9797
  %9880 = fmul fast float %9877, %9792
  %9881 = fmul fast float %9878, %9792
  %9882 = fmul fast float %9879, %9792
  %9883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9884 = extractvalue %dx.types.CBufRet.f32 %9883, 0
  %9885 = extractvalue %dx.types.CBufRet.f32 %9883, 1
  %9886 = extractvalue %dx.types.CBufRet.f32 %9883, 2
  %9887 = select i1 %9862, float %9884, float %9802
  %9888 = select i1 %9862, float %9885, float %9803
  %9889 = select i1 %9862, float %9886, float %9804
  %9890 = fmul fast float %9887, %9793
  %9891 = fmul fast float %9888, %9793
  %9892 = fmul fast float %9889, %9793
  %9893 = fadd fast float %9890, %9880
  %9894 = fadd fast float %9891, %9881
  %9895 = fadd fast float %9892, %9882
  %9896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9897 = extractvalue %dx.types.CBufRet.f32 %9896, 0
  %9898 = extractvalue %dx.types.CBufRet.f32 %9896, 1
  %9899 = extractvalue %dx.types.CBufRet.f32 %9896, 2
  %9900 = select i1 %9862, float %9897, float %9809
  %9901 = select i1 %9862, float %9898, float %9810
  %9902 = select i1 %9862, float %9899, float %9811
  %9903 = fadd fast float %9893, %9900
  %9904 = fadd fast float %9894, %9901
  %9905 = fadd fast float %9895, %9902
  %9906 = fmul fast float %9903, %9872
  %9907 = fmul fast float %9904, %9872
  %9908 = fmul fast float %9905, %9872
  %9909 = fmul fast float %9906, %9906
  %9910 = fmul fast float %9907, %9907
  %9911 = fadd fast float %9909, %9910
  %9912 = fmul fast float %9908, %9908
  %9913 = fadd fast float %9911, %9912
  %9914 = call float @dx.op.unary.f32(i32 24, float %9913)  ; Sqrt(value)
  %9915 = fsub fast float %9914, %9827
  %9916 = fmul fast float %9915, %9829
  %9917 = call float @dx.op.unary.f32(i32 7, float %9916)  ; Saturate(value)
  br label %9918

; <label>:9918                                    ; preds = %9843, %9839
  %9919 = phi float [ %9917, %9843 ], [ 1.000000e+00, %9839 ]
  %9920 = fmul fast float %9836, 5.000000e-01
  %9921 = fadd fast float %9920, 5.000000e-01
  %9922 = call float @dx.op.unary.f32(i32 22, float %9921)  ; Frc(value)
  %9923 = call float @dx.op.unary.f32(i32 27, float %9922)  ; Round_ni(value)
  %9924 = call float @dx.op.unary.f32(i32 22, float %9922)  ; Frc(value)
  %9925 = fmul fast float %9924, 2.000000e+00
  %9926 = fadd fast float %9925, -1.000000e+00
  %9927 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %45, float %9788, float %9789, float %9923, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9928 = extractvalue %dx.types.ResRet.f32 %9927, 0
  %9929 = extractvalue %dx.types.ResRet.f32 %9927, 1
  %9930 = extractvalue %dx.types.ResRet.f32 %9927, 2
  %9931 = extractvalue %dx.types.ResRet.f32 %9927, 3
  %9932 = fadd fast float %9928, -5.000000e-01
  %9933 = fadd fast float %9930, -5.000000e-01
  %9934 = fmul fast float %9932, 0xBFD5555560000000
  %9935 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9933, float %9934)  ; FMad(a,b,c)
  %9936 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9929, float 0.000000e+00)  ; FMad(a,b,c)
  %9937 = fadd fast float %9936, %9931
  %9938 = fmul fast float %9932, -7.500000e-01
  %9939 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9933, float %9938)  ; FMad(a,b,c)
  %9940 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9929, float 0.000000e+00)  ; FMad(a,b,c)
  %9941 = fadd fast float %9940, %9931
  %9942 = call float @dx.op.binary.f32(i32 35, float %9935, float -1.000000e+00)  ; FMax(a,b)
  %9943 = call float @dx.op.binary.f32(i32 35, float %9937, float -1.000000e+00)  ; FMax(a,b)
  %9944 = call float @dx.op.binary.f32(i32 35, float %9939, float -1.000000e+00)  ; FMax(a,b)
  %9945 = call float @dx.op.binary.f32(i32 35, float %9941, float -1.000000e+00)  ; FMax(a,b)
  %9946 = call float @dx.op.binary.f32(i32 36, float %9942, float 1.000000e+00)  ; FMin(a,b)
  %9947 = call float @dx.op.binary.f32(i32 36, float %9943, float 1.000000e+00)  ; FMin(a,b)
  %9948 = call float @dx.op.binary.f32(i32 36, float %9944, float 1.000000e+00)  ; FMin(a,b)
  %9949 = call float @dx.op.binary.f32(i32 36, float %9945, float 1.000000e+00)  ; FMin(a,b)
  %9950 = fcmp fast olt float %9946, 0x3FEFFF8020000000
  br i1 %9950, label %9951, label %10066, !dx.controlflow.hints !174

; <label>:9951                                    ; preds = %9918
  %9952 = extractvalue %dx.types.CBufRet.f32 %9834, 3
  %9953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9954 = extractvalue %dx.types.CBufRet.f32 %9953, 0
  %9955 = extractvalue %dx.types.CBufRet.f32 %9953, 1
  %9956 = extractvalue %dx.types.CBufRet.f32 %9953, 2
  %9957 = extractvalue %dx.types.CBufRet.f32 %9953, 3
  %9958 = fsub fast float %9954, %9946
  %9959 = fsub fast float %9955, %9947
  %9960 = fsub fast float %9956, %9948
  %9961 = fsub fast float %9957, %9949
  %9962 = fmul fast float %9958, %9952
  %9963 = fmul fast float %9959, %9952
  %9964 = fmul fast float %9960, %9952
  %9965 = fmul fast float %9961, %9952
  %9966 = fadd fast float %9962, %9946
  %9967 = fadd fast float %9963, %9947
  %9968 = fsub fast float -0.000000e+00, %9967
  %9969 = fadd fast float %9964, %9948
  %9970 = fadd fast float %9965, %9949
  %9971 = fmul fast float %9966, %9966
  %9972 = fsub fast float %9967, %9971
  %9973 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9972)  ; FMax(a,b)
  %9974 = fdiv fast float 1.000000e+00, %9973
  %9975 = fmul fast float %9967, %9966
  %9976 = fsub fast float %9969, %9975
  %9977 = fsub fast float %9926, %9966
  %9978 = fmul fast float %9926, %9926
  %9979 = fsub fast float %9978, %9967
  %9980 = fmul fast float %9977, %9974
  %9981 = fmul fast float %9980, %9976
  %9982 = fsub fast float %9979, %9981
  %9983 = fmul fast float %9967, %9967
  %9984 = fsub fast float %9970, %9983
  %9985 = fmul fast float %9976, %9976
  %9986 = fmul fast float %9985, %9974
  %9987 = fsub fast float %9984, %9986
  %9988 = fdiv fast float %9982, %9987
  %9989 = fmul fast float %9976, %9988
  %9990 = fsub fast float %9977, %9989
  %9991 = fmul fast float %9990, %9974
  %9992 = fmul fast float %9991, %9966
  %9993 = fsub fast float 1.000000e+00, %9992
  %9994 = fmul fast float %9967, %9988
  %9995 = fsub fast float %9993, %9994
  %9996 = fmul fast float %9991, %9991
  %9997 = fmul fast float %9988, 4.000000e+00
  %9998 = fmul fast float %9997, %9995
  %9999 = fsub fast float %9996, %9998
  %10000 = call float @dx.op.unary.f32(i32 24, float %9999)  ; Sqrt(value)
  %10001 = fcmp fast oge float %9991, 0.000000e+00
  %10002 = fsub fast float -0.000000e+00, %10000
  %10003 = select i1 %10001, float %10002, float %10000
  %10004 = fsub fast float %10003, %9991
  %10005 = fdiv fast float %10004, %9988
  %10006 = fdiv fast float %9995, %10004
  %10007 = fmul fast float %10005, 5.000000e-01
  %10008 = fmul fast float %10006, 2.000000e+00
  %10009 = select i1 %10001, float %10007, float %10008
  %10010 = select i1 %10001, float %10008, float %10007
  %10011 = call float @dx.op.binary.f32(i32 35, float %10009, float %10010)  ; FMax(a,b)
  %10012 = call float @dx.op.binary.f32(i32 36, float %10009, float %10010)  ; FMin(a,b)
  %10013 = fcmp fast ogt float %9926, %10012
  br i1 %10013, label %10014, label %10024

; <label>:10014                                   ; preds = %9951
  %10015 = fsub fast float %9926, %10012
  %10016 = fsub fast float %10011, %10012
  %10017 = fmul fast float %10015, %10016
  %10018 = fmul fast float %10011, %9926
  %10019 = fadd fast float %10011, %9926
  %10020 = fmul fast float %10019, %9966
  %10021 = fadd fast float %10018, %9967
  %10022 = fsub fast float %10021, %10020
  %10023 = fdiv fast float %10022, %10017
  br label %10024

; <label>:10024                                   ; preds = %10014, %9951
  %10025 = phi float [ %10023, %10014 ], [ 0.000000e+00, %9951 ]
  %10026 = fcmp fast ogt float %9926, %10011
  %10027 = fsub fast float %9926, %10011
  br i1 %10026, label %10028, label %10038

; <label>:10028                                   ; preds = %10024
  %10029 = fsub fast float %10011, %10012
  %10030 = fmul fast float %10029, %10027
  %10031 = fmul fast float %10012, %9926
  %10032 = fadd fast float %10012, %9926
  %10033 = fmul fast float %10032, %9966
  %10034 = fsub fast float %9968, %10031
  %10035 = fadd fast float %10034, %10033
  %10036 = fdiv fast float %10035, %10030
  %10037 = fadd fast float %10036, %10025
  br label %10038

; <label>:10038                                   ; preds = %10028, %10024
  %10039 = phi float [ %10037, %10028 ], [ %10025, %10024 ]
  %10040 = fsub fast float %9926, %10012
  %10041 = fmul fast float %10040, %10027
  %10042 = fmul fast float %10012, %10011
  %10043 = fadd fast float %10012, %10011
  %10044 = fmul fast float %10043, %9966
  %10045 = fadd fast float %10042, %9967
  %10046 = fsub fast float %10045, %10044
  %10047 = fdiv fast float %10046, %10041
  %10048 = call float @dx.op.unary.f32(i32 7, float %10039)  ; Saturate(value)
  %10049 = fcmp fast oeq float %8717, 0.000000e+00
  %10050 = extractvalue %dx.types.CBufRet.f32 %9834, 0
  %10051 = fcmp fast oeq float %10050, 0.000000e+00
  %10052 = or i1 %10049, %10051
  %10053 = fmul fast float %10050, 2.000000e+00
  %10054 = fadd fast float %9835, %9836
  %10055 = fdiv fast float %10054, %10053
  %10056 = call float @dx.op.unary.f32(i32 7, float %10055)  ; Saturate(value)
  %10057 = fmul fast float %10056, 2.000000e+00
  %10058 = fsub fast float 3.000000e+00, %10057
  %10059 = fmul fast float %10056, %10056
  %10060 = fmul fast float %10059, %10058
  %10061 = select i1 %10052, float 1.000000e+00, float %10060
  %10062 = fmul fast float %10047, %8717
  %10063 = fadd fast float %10048, %10062
  %10064 = call float @dx.op.unary.f32(i32 7, float %10063)  ; Saturate(value)
  %10065 = fmul fast float %10061, %10064
  br label %10066

; <label>:10066                                   ; preds = %10038, %9918
  %10067 = phi float [ %10065, %10038 ], [ 0.000000e+00, %9918 ]
  %10068 = fsub fast float 1.000000e+00, %10067
  %10069 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %45, float %9788, float %9789, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10070 = extractvalue %dx.types.ResRet.f32 %10069, 0
  %10071 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %10072 = extractvalue %dx.types.CBufRet.i32 %10071, 2
  %10073 = icmp eq i32 %10072, 0
  br i1 %10073, label %10079, label %10074

; <label>:10074                                   ; preds = %10066
  %10075 = call float @dx.op.unary.f32(i32 7, float %10067)  ; Saturate(value)
  %10076 = fadd fast float %10070, -1.000000e+00
  %10077 = fmul fast float %10075, %10076
  %10078 = fadd fast float %10077, 1.000000e+00
  br label %10079

; <label>:10079                                   ; preds = %10074, %10066
  %10080 = phi float [ %10078, %10074 ], [ %10068, %10066 ]
  br i1 %9842, label %10081, label %10099

; <label>:10081                                   ; preds = %10079
  %10082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10083 = extractvalue %dx.types.CBufRet.f32 %10082, 1
  %10084 = fsub fast float %9919, %10083
  %10085 = call float @dx.op.unary.f32(i32 7, float %10084)  ; Saturate(value)
  %10086 = fsub fast float %9919, %9841
  %10087 = call float @dx.op.unary.f32(i32 7, float %10086)  ; Saturate(value)
  %10088 = fsub fast float %10085, %10087
  %10089 = fsub fast float %9921, %10087
  %10090 = fdiv fast float %10089, %10088
  %10091 = call float @dx.op.unary.f32(i32 7, float %10090)  ; Saturate(value)
  %10092 = fmul fast float %10091, 2.000000e+00
  %10093 = fsub fast float 3.000000e+00, %10092
  %10094 = fsub fast float %10070, %10080
  %10095 = fmul fast float %10091, %10091
  %10096 = fmul fast float %10095, %10094
  %10097 = fmul fast float %10096, %10093
  %10098 = fadd fast float %10097, %10080
  br label %10099

; <label>:10099                                   ; preds = %10081, %10079
  %10100 = phi float [ %10098, %10081 ], [ %10080, %10079 ]
  %10101 = call float @dx.op.binary.f32(i32 35, float %10070, float %10100)  ; FMax(a,b)
  %10102 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %10103 = extractvalue %dx.types.CBufRet.i32 %10102, 2
  %10104 = and i32 %10103, 1
  %10105 = icmp eq i32 %10104, 0
  %10106 = fcmp fast une float %10101, 1.000000e+00
  %10107 = and i1 %10106, %10105
  br i1 %10107, label %10108, label %10127

; <label>:10108                                   ; preds = %10099
  %10109 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %45, float %9788, float %9789, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10110 = extractvalue %dx.types.ResRet.f32 %10109, 0
  %10111 = extractvalue %dx.types.ResRet.f32 %10109, 1
  %10112 = extractvalue %dx.types.ResRet.f32 %10109, 2
  %10113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10114 = extractvalue %dx.types.CBufRet.f32 %10113, 1
  %10115 = fmul fast float %10114, %10110
  %10116 = fmul fast float %10114, %10111
  %10117 = fmul fast float %10114, %10112
  %10118 = fcmp fast ogt float %10070, 0x3FEFFF2E40000000
  %10119 = fsub fast float 1.000000e+00, %10101
  %10120 = fsub fast float 1.000000e+00, %10070
  %10121 = fdiv fast float %10119, %10120
  %10122 = call float @dx.op.unary.f32(i32 7, float %10121)  ; Saturate(value)
  %10123 = select i1 %10118, float 0.000000e+00, float %10122
  %10124 = fmul fast float %10115, %10123
  %10125 = fmul fast float %10116, %10123
  %10126 = fmul fast float %10117, %10123
  br label %10127

; <label>:10127                                   ; preds = %10108, %10099
  %10128 = phi float [ 0.000000e+00, %10099 ], [ %10124, %10108 ]
  %10129 = phi float [ 0.000000e+00, %10099 ], [ %10125, %10108 ]
  %10130 = phi float [ 0.000000e+00, %10099 ], [ %10126, %10108 ]
  %10131 = fmul fast float %10128, %8701
  %10132 = fmul fast float %10129, %8703
  %10133 = fmul fast float %10130, %8705
  %10134 = fmul fast float %10101, %9763
  %10135 = call float @dx.op.dot3.f32(i32 55, float %10101, float %10101, float %10101, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10136 = call float @dx.op.dot3.f32(i32 55, float %10131, float %10132, float %10133, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10137 = select i1 %264, float %10135, float %10101
  %10138 = select i1 %264, float 1.000000e+00, float %10101
  %10139 = select i1 %264, float %10136, float %10131
  %10140 = select i1 %264, float 0.000000e+00, float %10132
  %10141 = select i1 %264, float 0.000000e+00, float %10133
  %10142 = fmul fast float %10137, %9775
  %10143 = fmul fast float %10137, %9776
  %10144 = fmul fast float %10138, %9777
  %10145 = fadd fast float %10142, %10139
  %10146 = fadd fast float %10143, %10140
  %10147 = fadd fast float %10141, %10144
  %10148 = fmul fast float %10137, %9778
  %10149 = fmul fast float %10137, %9779
  %10150 = fmul fast float %10138, %9780
  br label %10151

; <label>:10151                                   ; preds = %10127, %9784, %9753, %8985
  %10152 = phi float [ %8990, %8985 ], [ %9775, %9753 ], [ %10145, %10127 ], [ %9775, %9784 ]
  %10153 = phi float [ %8991, %8985 ], [ %9776, %9753 ], [ %10146, %10127 ], [ %9776, %9784 ]
  %10154 = phi float [ %8992, %8985 ], [ %9777, %9753 ], [ %10147, %10127 ], [ %9777, %9784 ]
  %10155 = phi float [ %8993, %8985 ], [ %9778, %9753 ], [ %10148, %10127 ], [ %9778, %9784 ]
  %10156 = phi float [ %8994, %8985 ], [ %9779, %9753 ], [ %10149, %10127 ], [ %9779, %9784 ]
  %10157 = phi float [ %8995, %8985 ], [ %9780, %9753 ], [ %10150, %10127 ], [ %9780, %9784 ]
  %10158 = phi float [ %8996, %8985 ], [ %9763, %9753 ], [ %10134, %10127 ], [ %9763, %9784 ]
  %10159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10160 = extractvalue %dx.types.CBufRet.f32 %10159, 2
  %10161 = extractvalue %dx.types.CBufRet.f32 %10159, 3
  %10162 = fmul fast float %10160, %111
  %10163 = fmul fast float %10161, %112
  %10164 = call float @dx.op.unary.f32(i32 7, float %10162)  ; Saturate(value)
  %10165 = call float @dx.op.unary.f32(i32 7, float %10163)  ; Saturate(value)
  %10166 = select i1 %8727, i32 2, i32 0
  %10167 = or i32 %10166, 1
  %10168 = uitofp i32 %10167 to float
  %10169 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %45, float %10164, float %10165, float %10168, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10170 = extractvalue %dx.types.ResRet.f32 %10169, 0
  %10171 = extractvalue %dx.types.ResRet.f32 %10169, 1
  %10172 = extractvalue %dx.types.ResRet.f32 %10169, 2
  %10173 = extractvalue %dx.types.ResRet.f32 %10169, 3
  %10174 = add nuw nsw i32 %10166, 2
  %10175 = uitofp i32 %10174 to float
  %10176 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %45, float %10164, float %10165, float %10175, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10177 = extractvalue %dx.types.ResRet.f32 %10176, 0
  %10178 = extractvalue %dx.types.ResRet.f32 %10176, 1
  %10179 = extractvalue %dx.types.ResRet.f32 %10176, 2
  %10180 = extractvalue %dx.types.ResRet.f32 %10176, 3
  %10181 = call float @dx.op.binary.f32(i32 35, float %10171, float %10172)  ; FMax(a,b)
  %10182 = call float @dx.op.binary.f32(i32 35, float %10170, float %10181)  ; FMax(a,b)
  %10183 = call float @dx.op.binary.f32(i32 35, float %10182, float %10173)  ; FMax(a,b)
  %10184 = call float @dx.op.binary.f32(i32 36, float %10178, float %10179)  ; FMin(a,b)
  %10185 = call float @dx.op.binary.f32(i32 36, float %10177, float %10184)  ; FMin(a,b)
  %10186 = call float @dx.op.binary.f32(i32 36, float %10185, float %10180)  ; FMin(a,b)
  %10187 = fmul fast float %10183, 2.550000e+02
  %10188 = fadd fast float %10187, 0x3F70101020000000
  %10189 = fptoui float %10188 to i32
  %10190 = fmul fast float %10186, 2.550000e+02
  %10191 = fadd fast float %10190, 0x3F70101020000000
  %10192 = fptoui float %10191 to i32
  %10193 = icmp ult i32 %10189, %10192
  br i1 %10193, label %10194, label %10363

; <label>:10194                                   ; preds = %10151
  %10195 = fcmp fast ogt float %97, 9.843750e-01
  %10196 = fadd fast float %8989, -4.000000e+00
  %10197 = select i1 %10195, float -4.000000e+00, float %10196
  %10198 = call float @dx.op.binary.f32(i32 35, float %10197, float 0.000000e+00)  ; FMax(a,b)
  %10199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10200 = extractvalue %dx.types.CBufRet.f32 %10199, 0
  %10201 = fadd fast float %10200, %10198
  %10202 = extractvalue %dx.types.CBufRet.f32 %10199, 2
  %10203 = fmul fast float %10201, %10202
  %10204 = call float @dx.op.unary.f32(i32 23, float %10203)  ; Log(value)
  %10205 = extractvalue %dx.types.CBufRet.f32 %10199, 3
  %10206 = fmul fast float %10205, %10204
  %10207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10208 = extractvalue %dx.types.CBufRet.f32 %10207, 2
  %10209 = fmul fast float %10206, %10208
  %10210 = call float @dx.op.unary.f32(i32 7, float %10209)  ; Saturate(value)
  %10211 = uitofp i32 %10189 to float
  %10212 = uitofp i32 %10192 to float
  %10213 = fadd fast float %10211, 5.000000e-01
  %10214 = fadd fast float %10212, 5.000000e-01
  %10215 = fmul fast float %10208, %10213
  %10216 = fmul fast float %10208, %10214
  %10217 = fadd fast float %10215, 0x3F0FFB4800000000
  %10218 = fadd fast float %10216, 0xBF0FFB4800000000
  %10219 = call float @dx.op.binary.f32(i32 35, float %10210, float %10217)  ; FMax(a,b)
  %10220 = call float @dx.op.binary.f32(i32 36, float %10219, float %10218)  ; FMin(a,b)
  %10221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10222 = extractvalue %dx.types.CBufRet.f32 %10221, 1
  %10223 = extractvalue %dx.types.CBufRet.f32 %10221, 2
  %10224 = extractvalue %dx.types.CBufRet.f32 %10221, 0
  %10225 = select i1 %8727, float %10224, float 0.000000e+00
  %10226 = fmul fast float %10222, %10220
  %10227 = fadd fast float %10225, %10226
  %10228 = fadd fast float %10225, %10223
  %10229 = fsub fast float %10222, %10223
  %10230 = fadd fast float %10229, %10225
  %10231 = call float @dx.op.binary.f32(i32 35, float %10227, float %10228)  ; FMax(a,b)
  %10232 = call float @dx.op.binary.f32(i32 36, float %10231, float %10230)  ; FMin(a,b)
  %10233 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %43, float %10164, float %10165, float %10232, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10234 = extractvalue %dx.types.ResRet.f32 %10233, 0
  %10235 = extractvalue %dx.types.ResRet.f32 %10233, 1
  %10236 = extractvalue %dx.types.ResRet.f32 %10233, 2
  %10237 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10238 = extractvalue %dx.types.CBufRet.i32 %10237, 0
  %10239 = extractvalue %dx.types.CBufRet.i32 %10237, 1
  %10240 = uitofp i32 %10238 to float
  %10241 = uitofp i32 %10239 to float
  %10242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10243 = extractvalue %dx.types.CBufRet.f32 %10242, 0
  %10244 = extractvalue %dx.types.CBufRet.f32 %10242, 1
  %10245 = fmul fast float %10240, %10164
  %10246 = fmul fast float %10241, %10165
  %10247 = fadd fast float %10245, -5.000000e-01
  %10248 = fadd fast float %10246, -5.000000e-01
  %10249 = call float @dx.op.unary.f32(i32 22, float %10247)  ; Frc(value)
  %10250 = call float @dx.op.unary.f32(i32 22, float %10248)  ; Frc(value)
  %10251 = fmul fast float %10249, %10249
  %10252 = fmul fast float %10251, %10249
  %10253 = fsub fast float 3.000000e+00, %10249
  %10254 = fmul fast float %10251, %10253
  %10255 = fmul fast float %10249, 3.000000e+00
  %10256 = fmul fast float %10252, 3.000000e+00
  %10257 = fmul fast float %10251, 6.000000e+00
  %10258 = fsub fast float %10256, %10257
  %10259 = fadd fast float %10258, 4.000000e+00
  %10260 = fmul fast float %10259, 0x3FC5555560000000
  %10261 = fmul fast float %10252, -3.000000e+00
  %10262 = fadd fast float %10251, %10249
  %10263 = fmul fast float %10262, 3.000000e+00
  %10264 = fadd fast float %10261, 1.000000e+00
  %10265 = fadd fast float %10264, %10263
  %10266 = fmul fast float %10252, 0x3FC5555560000000
  %10267 = fmul fast float %10250, %10250
  %10268 = fmul fast float %10267, %10250
  %10269 = fsub fast float 3.000000e+00, %10250
  %10270 = fmul fast float %10267, %10269
  %10271 = fmul fast float %10250, 3.000000e+00
  %10272 = fmul fast float %10268, 3.000000e+00
  %10273 = fmul fast float %10267, 6.000000e+00
  %10274 = fsub fast float %10272, %10273
  %10275 = fadd fast float %10274, 4.000000e+00
  %10276 = fmul fast float %10275, 0x3FC5555560000000
  %10277 = fmul fast float %10268, -3.000000e+00
  %10278 = fadd fast float %10267, %10250
  %10279 = fmul fast float %10278, 3.000000e+00
  %10280 = fadd fast float %10277, 1.000000e+00
  %10281 = fadd fast float %10280, %10279
  %10282 = fmul fast float %10268, 0x3FC5555560000000
  %10283 = fadd fast float %10249, 1.000000e+00
  %10284 = fsub fast float 1.000000e+00, %10255
  %10285 = fadd fast float %10284, %10254
  %10286 = fadd fast float %10285, %10259
  %10287 = fmul fast float %10286, 0x3FC5555560000000
  %10288 = fdiv fast float %10260, %10287
  %10289 = fsub fast float %10283, %10288
  %10290 = fsub fast float 1.000000e+00, %10249
  %10291 = fadd fast float %10265, %10252
  %10292 = fmul fast float %10291, 0x3FC5555560000000
  %10293 = fdiv fast float %10266, %10292
  %10294 = fadd fast float %10290, %10293
  %10295 = fadd fast float %10250, 1.000000e+00
  %10296 = fsub fast float 1.000000e+00, %10271
  %10297 = fadd fast float %10296, %10270
  %10298 = fadd fast float %10297, %10275
  %10299 = fmul fast float %10298, 0x3FC5555560000000
  %10300 = fdiv fast float %10276, %10299
  %10301 = fsub fast float %10295, %10300
  %10302 = fsub fast float 1.000000e+00, %10250
  %10303 = fadd fast float %10281, %10268
  %10304 = fmul fast float %10303, 0x3FC5555560000000
  %10305 = fdiv fast float %10282, %10304
  %10306 = fadd fast float %10305, %10302
  %10307 = fmul fast float %10289, %10243
  %10308 = fsub fast float %10164, %10307
  %10309 = fmul fast float %10294, %10243
  %10310 = fadd fast float %10309, %10164
  %10311 = fmul fast float %10306, %10244
  %10312 = fadd fast float %10311, %10165
  %10313 = fmul fast float %10301, %10244
  %10314 = fsub fast float %10165, %10313
  %10315 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %10308, float %10314, float %10232, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10316 = extractvalue %dx.types.ResRet.f32 %10315, 0
  %10317 = extractvalue %dx.types.ResRet.f32 %10315, 1
  %10318 = extractvalue %dx.types.ResRet.f32 %10315, 2
  %10319 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %10310, float %10314, float %10232, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10320 = extractvalue %dx.types.ResRet.f32 %10319, 0
  %10321 = extractvalue %dx.types.ResRet.f32 %10319, 1
  %10322 = extractvalue %dx.types.ResRet.f32 %10319, 2
  %10323 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %10308, float %10312, float %10232, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10324 = extractvalue %dx.types.ResRet.f32 %10323, 0
  %10325 = extractvalue %dx.types.ResRet.f32 %10323, 1
  %10326 = extractvalue %dx.types.ResRet.f32 %10323, 2
  %10327 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %10310, float %10312, float %10232, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10328 = extractvalue %dx.types.ResRet.f32 %10327, 0
  %10329 = extractvalue %dx.types.ResRet.f32 %10327, 1
  %10330 = extractvalue %dx.types.ResRet.f32 %10327, 2
  %10331 = fsub fast float %10324, %10316
  %10332 = fsub fast float %10325, %10317
  %10333 = fsub fast float %10326, %10318
  %10334 = fmul fast float %10331, %10304
  %10335 = fmul fast float %10332, %10304
  %10336 = fmul fast float %10333, %10304
  %10337 = fadd fast float %10334, %10316
  %10338 = fadd fast float %10335, %10317
  %10339 = fadd fast float %10336, %10318
  %10340 = fsub fast float %10328, %10320
  %10341 = fsub fast float %10329, %10321
  %10342 = fsub fast float %10330, %10322
  %10343 = fmul fast float %10340, %10304
  %10344 = fmul fast float %10341, %10304
  %10345 = fmul fast float %10342, %10304
  %10346 = fsub fast float %10320, %10337
  %10347 = fadd fast float %10346, %10343
  %10348 = fsub fast float %10321, %10338
  %10349 = fadd fast float %10348, %10344
  %10350 = fsub fast float %10322, %10339
  %10351 = fadd fast float %10350, %10345
  %10352 = fmul fast float %10347, %10292
  %10353 = fmul fast float %10349, %10292
  %10354 = fmul fast float %10351, %10292
  %10355 = fadd fast float %10352, %10337
  %10356 = fadd fast float %10353, %10338
  %10357 = fadd fast float %10354, %10339
  %10358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10359 = extractvalue %dx.types.CBufRet.f32 %10358, 1
  %10360 = fmul fast float %10355, %10359
  %10361 = fmul fast float %10356, %10359
  %10362 = fmul fast float %10357, %10359
  br label %10363

; <label>:10363                                   ; preds = %10194, %10151
  %10364 = phi float [ %10234, %10194 ], [ 1.000000e+00, %10151 ]
  %10365 = phi float [ %10235, %10194 ], [ 1.000000e+00, %10151 ]
  %10366 = phi float [ %10236, %10194 ], [ 1.000000e+00, %10151 ]
  %10367 = phi float [ %10360, %10194 ], [ 0.000000e+00, %10151 ]
  %10368 = phi float [ %10361, %10194 ], [ 0.000000e+00, %10151 ]
  %10369 = phi float [ %10362, %10194 ], [ 0.000000e+00, %10151 ]
  %10370 = fmul fast float %10367, %8701
  %10371 = fmul fast float %10368, %8703
  %10372 = fmul fast float %10369, %8705
  %10373 = fmul fast float %10364, %10158
  %10374 = call float @dx.op.dot3.f32(i32 55, float %10364, float %10365, float %10366, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10375 = call float @dx.op.dot3.f32(i32 55, float %10370, float %10371, float %10372, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10376 = select i1 %264, float %10374, float %10364
  %10377 = select i1 %264, float %10374, float %10365
  %10378 = select i1 %264, float 1.000000e+00, float %10366
  %10379 = select i1 %264, float %10375, float %10370
  %10380 = select i1 %264, float 0.000000e+00, float %10371
  %10381 = select i1 %264, float 0.000000e+00, float %10372
  %10382 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10383 = extractvalue %dx.types.CBufRet.i32 %10382, 3
  %10384 = and i32 %10383, 3
  %10385 = icmp ne i32 %10384, 0
  %10386 = and i32 %10383, 4
  %10387 = icmp ne i32 %10386, 0
  %10388 = and i1 %10385, %10387
  %10389 = and i1 %264, %10388
  br i1 %10389, label %10390, label %10396

; <label>:10390                                   ; preds = %10363
  %10391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10392 = extractvalue %dx.types.CBufRet.f32 %10391, 1
  %10393 = fadd fast float %10373, -1.000000e+00
  %10394 = fmul fast float %10392, %10393
  %10395 = fadd fast float %10394, 1.000000e+00
  br label %10396

; <label>:10396                                   ; preds = %10390, %10363
  %10397 = phi float [ %10395, %10390 ], [ %10373, %10363 ]
  %10398 = fadd fast float %10155, %10152
  %10399 = fmul fast float %10376, %10398
  %10400 = fadd fast float %10399, %10379
  %10401 = fadd fast float %10156, %10153
  %10402 = fmul fast float %10377, %10401
  %10403 = fadd fast float %10402, %10380
  %10404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10405 = extractvalue %dx.types.CBufRet.f32 %10404, 0
  br i1 %264, label %10406, label %10421

; <label>:10406                                   ; preds = %10396
  %10407 = fadd fast float %10400, %10403
  %10408 = fmul fast float %10405, %10407
  %10409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10410 = extractvalue %dx.types.CBufRet.f32 %10409, 3
  %10411 = extractvalue %dx.types.CBufRet.f32 %8709, 1
  %10412 = fsub fast float %8714, %8708
  %10413 = fadd fast float %10412, %8715
  %10414 = fsub fast float %10413, %10411
  %10415 = extractvalue %dx.types.CBufRet.f32 %8709, 2
  %10416 = fmul fast float %10414, %10415
  %10417 = call float @dx.op.unary.f32(i32 7, float %10416)  ; Saturate(value)
  %10418 = fsub fast float %10417, %10410
  %10419 = fmul fast float %10418, %10397
  %10420 = fadd fast float %10419, %10410
  br label %10447

; <label>:10421                                   ; preds = %10396
  %10422 = fadd fast float %10157, %10154
  %10423 = fmul fast float %10378, %10422
  %10424 = fadd fast float %10423, %10381
  %10425 = fmul fast float %10405, %10400
  %10426 = fmul fast float %10405, %10403
  %10427 = fmul fast float %10405, %10424
  %10428 = call float @dx.op.binary.f32(i32 35, float %10426, float %10427)  ; FMax(a,b)
  %10429 = call float @dx.op.binary.f32(i32 35, float %10425, float %10428)  ; FMax(a,b)
  %10430 = call float @dx.op.binary.f32(i32 35, float %8703, float %8705)  ; FMax(a,b)
  %10431 = call float @dx.op.binary.f32(i32 35, float %8701, float %10430)  ; FMax(a,b)
  %10432 = call float @dx.op.binary.f32(i32 35, float %10429, float %10431)  ; FMax(a,b)
  %10433 = fcmp fast ugt float %10432, 0x3F10000000000000
  br i1 %10433, label %10435, label %10434

; <label>:10434                                   ; preds = %10421
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10435

; <label>:10435                                   ; preds = %10434, %10421
  %10436 = add i32 %51, 356
  %10437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %10436, i32 undef)  ; BufferLoad(srv,index,wot)
  %10438 = extractvalue %dx.types.ResRet.i32 %10437, 0
  %10439 = and i32 %10438, 32
  %10440 = icmp eq i32 %10439, 0
  br i1 %10440, label %10447, label %10441

; <label>:10441                                   ; preds = %10435
  %10442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10443 = extractvalue %dx.types.CBufRet.f32 %10442, 0
  %10444 = fmul fast float %10443, 0x3FE99999A0000000
  %10445 = fadd fast float %10443, %10425
  %10446 = fadd fast float %10444, %10427
  br label %10447

; <label>:10447                                   ; preds = %10441, %10435, %10406
  %10448 = phi float [ 1.000000e+00, %10406 ], [ %8703, %10441 ], [ %8703, %10435 ]
  %10449 = phi float [ 1.000000e+00, %10406 ], [ %8705, %10441 ], [ %8705, %10435 ]
  %10450 = phi float [ %10408, %10406 ], [ %10445, %10441 ], [ %10425, %10435 ]
  %10451 = phi float [ %10420, %10406 ], [ %10426, %10441 ], [ %10426, %10435 ]
  %10452 = phi float [ 1.000000e+00, %10406 ], [ %10446, %10441 ], [ %10427, %10435 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10453 = call float @dx.op.binary.f32(i32 36, float %10450, float 3.225500e+04)  ; FMin(a,b)
  %10454 = call float @dx.op.binary.f32(i32 36, float %10451, float 3.225500e+04)  ; FMin(a,b)
  %10455 = call float @dx.op.binary.f32(i32 36, float %10452, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10453)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10454)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10455)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10456 = call float @dx.op.binary.f32(i32 36, float %8701, float 3.225500e+04)  ; FMin(a,b)
  %10457 = call float @dx.op.binary.f32(i32 36, float %10448, float 3.225500e+04)  ; FMin(a,b)
  %10458 = call float @dx.op.binary.f32(i32 36, float %10449, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %10456)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %10457)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %10458)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

