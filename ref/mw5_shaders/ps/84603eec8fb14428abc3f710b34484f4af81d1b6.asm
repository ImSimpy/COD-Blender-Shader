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
; shader hash: a4119262cee943fd0f80c0c63a25ae98
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
;                                   texture     f32     2darray      T2      t0,space6unbounded
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
;                                   texture     f32          2d     T18     t59,space2     1
;                                   texture     f32          2d     T19     t60,space2     1
;                                   texture    byte         r/o     T20     t45,space1     1
;                                   texture    byte         r/o     T21     t46,space1     1
;                                   texture    byte         r/o     T22     t47,space1     1
;                                   texture    byte         r/o     T23     t48,space1     1
;                                   texture     f32          2d     T24     t57,space2     1
;                                   texture    byte         r/o     T25     t69,space1     1
;                                   texture     u32          2d     T26     t56,space2     1
;                                   texture     f32     2darray     T27     t35,space2     1
;                                   texture     f32          2d     T28     t34,space2     1
;                                   texture     f32          3d     T29     t31,space2     1
;                                   texture    byte         r/o     T30     t10,space1     1
;                                   texture    byte         r/o     T31      t1,space1     1
;                                   texture     f32          1d     T32     t32,space2     1
;                                   texture     f32     2darray     T33      t8,space2     1
;                                   texture     f32          2d     T34      t1,space2     1
;                                   texture     f32          2d     T35      t2,space2     1
;                                   texture     f32          2d     T36      t3,space2     1
;                                   texture     f32          2d     T37      t4,space2     1
;                                   textureunorm_f32     2darray     T38     t80,space2     1
;                                   texture    byte         r/o     T39     t67,space1     1
;                                   texture     f32          2d     T40      t7,space2     1
;                                   texture     f32          2d     T41      t6,space2     1
;                                   texture     f32          2d     T42      t5,space2     1
;                                   texture     f32          2d     T43     t38,space2     1
;                                   texture    byte         r/o     T44     t12,space1     1
;                                   texture    byte         r/o     T45     t13,space1     1
;                                   texture     f32          1d     T46     t30,space2     1
;                                   texture     f32          3d     T47     t44,space2     1
;                                   texture     f32          3d     T48     t45,space2     1
;                                   texture     f32     2darray     T49     t47,space2     1
;                                   textureunorm_f32     2darray     T50     t85,space2     1
;                                   texture     f32          2d     T51     t83,space2     1
;                                   texture     f32          2d     T52     t86,space2     1
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
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 52, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 51, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 50, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 49, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %59 = alloca [4 x i32], align 4
  %60 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %100 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %101 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %102 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %103 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %104 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %105 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %106 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %107 = alloca [12 x float], align 4
  %108 = alloca [12 x float], align 4
  %109 = alloca [4 x float], align 4
  %110 = alloca [4 x float], align 4
  %111 = alloca [4 x float], align 4
  %112 = alloca [4 x float], align 4
  %113 = alloca [3 x float], align 4
  %114 = alloca [3 x float], align 4
  %115 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %116 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %118 = extractvalue %dx.types.CBufRet.f32 %117, 0
  %119 = fmul fast float %118, %103
  %120 = fmul fast float %118, %104
  %121 = call float @dx.op.dot3.f32(i32 55, float %94, float %95, float %96, float %94, float %95, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %122 = bitcast float %121 to i32
  %123 = ashr i32 %122, 1
  %124 = sub nsw i32 1597250115, %123
  %125 = bitcast i32 %124 to float
  %126 = fmul fast float %125, %94
  %127 = fmul fast float %125, %95
  %128 = fmul fast float %125, %96
  %129 = fmul fast float %95, %92
  %130 = fmul fast float %96, %91
  %131 = fsub fast float %129, %130
  %132 = fmul fast float %96, %90
  %133 = fmul fast float %94, %92
  %134 = fsub fast float %132, %133
  %135 = fmul fast float %94, %91
  %136 = fmul fast float %95, %90
  %137 = fsub fast float %135, %136
  %138 = fmul fast float %131, %93
  %139 = fmul fast float %134, %93
  %140 = fmul fast float %137, %93
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.f32 %141, 0
  %143 = fcmp fast une float %142, 0.000000e+00
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 2
  %146 = extractvalue %dx.types.CBufRet.f32 %144, 3
  %147 = fmul fast float %119, 2.000000e+00
  %148 = fmul fast float %147, %145
  %149 = fmul fast float %120, 2.000000e+00
  %150 = fmul fast float %149, %146
  %151 = fsub fast float 1.000000e+00, %148
  %152 = fsub fast float 1.000000e+00, %150
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 0
  %155 = extractvalue %dx.types.CBufRet.f32 %153, 1
  %156 = extractvalue %dx.types.CBufRet.f32 %153, 2
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 0
  %159 = extractvalue %dx.types.CBufRet.f32 %157, 1
  %160 = extractvalue %dx.types.CBufRet.f32 %157, 2
  %161 = select i1 %143, float %154, float %158
  %162 = select i1 %143, float %155, float %159
  %163 = select i1 %143, float %156, float %160
  %164 = fmul fast float %161, %151
  %165 = fmul fast float %162, %151
  %166 = fmul fast float %163, %151
  %167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.f32 %167, 0
  %169 = extractvalue %dx.types.CBufRet.f32 %167, 1
  %170 = extractvalue %dx.types.CBufRet.f32 %167, 2
  %171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.f32 %171, 0
  %173 = extractvalue %dx.types.CBufRet.f32 %171, 1
  %174 = extractvalue %dx.types.CBufRet.f32 %171, 2
  %175 = select i1 %143, float %168, float %172
  %176 = select i1 %143, float %169, float %173
  %177 = select i1 %143, float %170, float %174
  %178 = fmul fast float %175, %152
  %179 = fmul fast float %176, %152
  %180 = fmul fast float %177, %152
  %181 = fadd fast float %178, %164
  %182 = fadd fast float %179, %165
  %183 = fadd fast float %180, %166
  %184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %185 = extractvalue %dx.types.CBufRet.f32 %184, 0
  %186 = extractvalue %dx.types.CBufRet.f32 %184, 1
  %187 = extractvalue %dx.types.CBufRet.f32 %184, 2
  %188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = extractvalue %dx.types.CBufRet.f32 %188, 0
  %190 = extractvalue %dx.types.CBufRet.f32 %188, 1
  %191 = extractvalue %dx.types.CBufRet.f32 %188, 2
  %192 = select i1 %143, float %185, float %189
  %193 = select i1 %143, float %186, float %190
  %194 = select i1 %143, float %187, float %191
  %195 = fadd fast float %181, %192
  %196 = fadd fast float %182, %193
  %197 = fadd fast float %183, %194
  %198 = fmul fast float %195, %106
  %199 = fmul fast float %196, %106
  %200 = fmul fast float %197, %106
  %201 = add i32 %60, 360
  %202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %201, i32 undef)  ; BufferLoad(srv,index,wot)
  %203 = extractvalue %dx.types.ResRet.i32 %202, 0
  %204 = extractvalue %dx.types.ResRet.i32 %202, 1
  %205 = extractvalue %dx.types.ResRet.i32 %202, 2
  %206 = extractvalue %dx.types.ResRet.i32 %202, 3
  %207 = bitcast i32 %203 to float
  %208 = bitcast i32 %204 to float
  %209 = bitcast i32 %205 to float
  %210 = bitcast i32 %206 to float
  %211 = call float @dx.op.dot3.f32(i32 55, float %126, float %127, float %128, float %126, float %127, float %128)  ; Dot3(ax,ay,az,bx,by,bz)
  %212 = call float @dx.op.unary.f32(i32 25, float %211)  ; Rsqrt(value)
  %213 = fmul fast float %212, %126
  %214 = fmul fast float %212, %127
  %215 = fmul fast float %212, %128
  %216 = call float @dx.op.dot3.f32(i32 55, float %198, float %199, float %200, float %198, float %199, float %200)  ; Dot3(ax,ay,az,bx,by,bz)
  %217 = call float @dx.op.unary.f32(i32 25, float %216)  ; Rsqrt(value)
  %218 = fmul fast float %217, %198
  %219 = fmul fast float %217, %199
  %220 = fmul fast float %217, %200
  %221 = call float @dx.op.dot3.f32(i32 55, float %218, float %219, float %220, float %213, float %214, float %215)  ; Dot3(ax,ay,az,bx,by,bz)
  %222 = fmul fast float %221, %221
  %223 = fmul fast float %222, %209
  %224 = fadd fast float %223, %210
  %225 = call float @dx.op.unary.f32(i32 7, float %224)  ; Saturate(value)
  %226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %227 = extractvalue %dx.types.CBufRet.f32 %226, 3
  %228 = fmul fast float %227, %216
  %229 = fsub fast float %207, %228
  %230 = fmul fast float %229, %208
  %231 = call float @dx.op.unary.f32(i32 7, float %230)  ; Saturate(value)
  %232 = fmul fast float %231, %225
  %233 = fmul fast float %119, 5.000000e-01
  %234 = fmul fast float %120, 5.000000e-01
  %235 = fptosi float %233 to i32
  %236 = fptosi float %234 to i32
  %237 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %27, i32 0, i32 %235, i32 %236, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %238 = extractvalue %dx.types.ResRet.i32 %237, 0
  %239 = lshr i32 %238, 18
  %240 = uitofp i32 %239 to float
  %241 = fmul fast float %240, 0x3F4C00EBA0000000
  %242 = call float @dx.op.unary.f32(i32 21, float %241)  ; Exp(value)
  %243 = fadd fast float %242, -1.000000e+00
  %244 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %27, i32 0)  ; GetDimensions(handle,mipLevel)
  %245 = extractvalue %dx.types.Dimensions %244, 0
  %246 = sitofp i32 %245 to float
  %247 = extractvalue %dx.types.Dimensions %244, 1
  %248 = sitofp i32 %247 to float
  %249 = fcmp fast oge float %233, %246
  %250 = fcmp fast oge float %234, %248
  %251 = or i1 %249, %250
  %252 = select i1 %251, float 0x4197782600000000, float %243
  %253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.f32 %253, 2
  %255 = extractvalue %dx.types.CBufRet.f32 %253, 3
  %256 = fmul fast float %254, %119
  %257 = fmul fast float %255, %120
  %258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.i32 %258, 0
  %260 = and i32 %259, 114688
  %261 = icmp ne i32 %260, 0
  %262 = select i1 %261, float %256, float 0.000000e+00
  %263 = select i1 %261, float %257, float 0.000000e+00
  %264 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %55, float %262, float %263, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %265 = extractvalue %dx.types.ResRet.f32 %264, 0
  %266 = fmul fast float %265, 2.550000e+02
  %267 = fptoui float %266 to i32
  %268 = select i1 %261, i32 %267, i32 0
  %269 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %270 = extractvalue %dx.types.CBufRet.i32 %269, 3
  %271 = and i32 %270, 3
  %272 = icmp ne i32 %271, 0
  %273 = and i32 %270, 4
  %274 = icmp ne i32 %273, 0
  %275 = and i1 %272, %274
  br i1 %275, label %276, label %285

; <label>:276                                     ; preds = %0
  %277 = fmul fast float %146, %120
  %278 = fmul fast float %145, %119
  %279 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %54, float %278, float %277, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %280 = extractvalue %dx.types.ResRet.f32 %279, 0
  %281 = fsub fast float 1.000000e+00, %280
  %282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %283 = extractvalue %dx.types.CBufRet.f32 %282, 0
  %284 = fcmp fast olt float %281, %283
  br label %288

; <label>:285                                     ; preds = %0
  %286 = icmp eq i32 %273, 0
  %287 = and i1 %272, %286
  br label %288

; <label>:288                                     ; preds = %285, %276
  %289 = phi i1 [ %284, %276 ], [ %287, %285 ]
  %290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %291 = extractvalue %dx.types.CBufRet.f32 %290, 2
  %292 = fmul fast float %291, 0x3FE3C6EF40000000
  %293 = frem fast float %119, 2.560000e+02
  %294 = frem fast float %120, 2.560000e+02
  %295 = fptoui float %293 to i32
  %296 = fptoui float %294 to i32
  %297 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %295, i32 %296, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %298 = extractvalue %dx.types.ResRet.f32 %297, 0
  %299 = fadd fast float %298, %292
  %300 = call float @dx.op.unary.f32(i32 22, float %299)  ; Frc(value)
  %301 = add i32 %60, 156
  %302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %301, i32 undef)  ; BufferLoad(srv,index,wot)
  %303 = extractvalue %dx.types.ResRet.i32 %302, 0
  %304 = shl i32 %303, 4
  %305 = and i32 %304, 32752
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = lshr i32 %303, 7
  %308 = and i32 %307, 32752
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = lshr i32 %303, 22
  %311 = shl nuw nsw i32 %310, 5
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = add i32 %60, 216
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = and i32 %315, 255
  %317 = uitofp i32 %316 to float
  %318 = fmul fast float %317, 0x3F70101020000000
  %319 = lshr i32 %315, 8
  %320 = and i32 %319, 255
  %321 = uitofp i32 %320 to float
  %322 = fmul fast float %321, 0x3F70101020000000
  %323 = lshr i32 %315, 16
  %324 = and i32 %323, 255
  %325 = uitofp i32 %324 to float
  %326 = fmul fast float %325, 0x3F70101020000000
  %327 = add i32 %60, 36
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = and i32 %329, 65535
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = lshr i32 %329, 16
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = add i32 %60, 288
  %335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %336 = extractvalue %dx.types.ResRet.i32 %335, 0
  %337 = and i32 %336, 65535
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = lshr i32 %336, 16
  %340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %339)  ; LegacyF16ToF32(value)
  %341 = fmul fast float %338, 0x3F50624DE0000000
  %342 = fmul fast float %340, 0x3F50624DE0000000
  %343 = add i32 %60, 172
  %344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %343, i32 undef)  ; BufferLoad(srv,index,wot)
  %345 = extractvalue %dx.types.ResRet.i32 %344, 0
  %346 = shl i32 %345, 4
  %347 = and i32 %346, 32752
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = lshr i32 %345, 7
  %350 = and i32 %349, 32752
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = lshr i32 %345, 22
  %353 = shl nuw nsw i32 %352, 5
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = add i32 %60, 232
  %356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.i32 %356, 0
  %358 = and i32 %357, 255
  %359 = uitofp i32 %358 to float
  %360 = fmul fast float %359, 0x3F70101020000000
  %361 = lshr i32 %357, 8
  %362 = and i32 %361, 255
  %363 = uitofp i32 %362 to float
  %364 = fmul fast float %363, 0x3F70101020000000
  %365 = lshr i32 %357, 16
  %366 = and i32 %365, 255
  %367 = uitofp i32 %366 to float
  %368 = fmul fast float %367, 0x3F70101020000000
  %369 = add i32 %60, 52
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.i32 %370, 0
  %372 = and i32 %371, 65535
  %373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %372)  ; LegacyF16ToF32(value)
  %374 = lshr i32 %371, 16
  %375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %374)  ; LegacyF16ToF32(value)
  %376 = add i32 %60, 304
  %377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.i32 %377, 0
  %379 = and i32 %378, 65535
  %380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %379)  ; LegacyF16ToF32(value)
  %381 = lshr i32 %378, 16
  %382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %381)  ; LegacyF16ToF32(value)
  %383 = fmul fast float %380, 0x3F50624DE0000000
  %384 = fmul fast float %382, 0x3F50624DE0000000
  %385 = add i32 %60, 188
  %386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %385, i32 undef)  ; BufferLoad(srv,index,wot)
  %387 = extractvalue %dx.types.ResRet.i32 %386, 0
  %388 = shl i32 %387, 4
  %389 = and i32 %388, 32752
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = lshr i32 %387, 7
  %392 = and i32 %391, 32752
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = lshr i32 %387, 22
  %395 = shl nuw nsw i32 %394, 5
  %396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %395)  ; LegacyF16ToF32(value)
  %397 = add i32 %60, 248
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = and i32 %399, 255
  %401 = uitofp i32 %400 to float
  %402 = fmul fast float %401, 0x3F70101020000000
  %403 = lshr i32 %399, 8
  %404 = and i32 %403, 255
  %405 = uitofp i32 %404 to float
  %406 = fmul fast float %405, 0x3F70101020000000
  %407 = lshr i32 %399, 16
  %408 = and i32 %407, 255
  %409 = uitofp i32 %408 to float
  %410 = fmul fast float %409, 0x3F70101020000000
  %411 = add i32 %60, 68
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = and i32 %413, 65535
  %415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %414)  ; LegacyF16ToF32(value)
  %416 = lshr i32 %413, 16
  %417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %416)  ; LegacyF16ToF32(value)
  %418 = add i32 %60, 320
  %419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.i32 %419, 0
  %421 = and i32 %420, 65535
  %422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %421)  ; LegacyF16ToF32(value)
  %423 = lshr i32 %420, 16
  %424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %423)  ; LegacyF16ToF32(value)
  %425 = fmul fast float %422, 0x3F50624DE0000000
  %426 = fmul fast float %424, 0x3F50624DE0000000
  %427 = add i32 %60, 204
  %428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.i32 %428, 0
  %430 = shl i32 %429, 4
  %431 = and i32 %430, 32752
  %432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %431)  ; LegacyF16ToF32(value)
  %433 = lshr i32 %429, 7
  %434 = and i32 %433, 32752
  %435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %434)  ; LegacyF16ToF32(value)
  %436 = lshr i32 %429, 22
  %437 = shl nuw nsw i32 %436, 5
  %438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %437)  ; LegacyF16ToF32(value)
  %439 = add i32 %60, 264
  %440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.i32 %440, 0
  %442 = and i32 %441, 255
  %443 = uitofp i32 %442 to float
  %444 = fmul fast float %443, 0x3F70101020000000
  %445 = lshr i32 %441, 8
  %446 = and i32 %445, 255
  %447 = uitofp i32 %446 to float
  %448 = fmul fast float %447, 0x3F70101020000000
  %449 = lshr i32 %441, 16
  %450 = and i32 %449, 255
  %451 = uitofp i32 %450 to float
  %452 = fmul fast float %451, 0x3F70101020000000
  %453 = add i32 %60, 84
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = and i32 %455, 65535
  %457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %456)  ; LegacyF16ToF32(value)
  %458 = lshr i32 %455, 16
  %459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %458)  ; LegacyF16ToF32(value)
  %460 = add i32 %60, 336
  %461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.i32 %461, 0
  %463 = and i32 %462, 65535
  %464 = call float @dx.op.legacyF16ToF32(i32 131, i32 %463)  ; LegacyF16ToF32(value)
  %465 = lshr i32 %462, 16
  %466 = call float @dx.op.legacyF16ToF32(i32 131, i32 %465)  ; LegacyF16ToF32(value)
  %467 = fmul fast float %464, 0x3F50624DE0000000
  %468 = fmul fast float %466, 0x3F50624DE0000000
  %469 = add i32 %60, 348
  %470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %471 = extractvalue %dx.types.ResRet.i32 %470, 0
  %472 = and i32 %471, 32
  %473 = icmp eq i32 %472, 0
  %474 = and i32 %471, 64
  %475 = icmp eq i32 %474, 0
  %476 = and i32 %471, 128
  %477 = icmp eq i32 %476, 0
  %478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.i32 %478, 0
  %480 = and i32 %479, 2
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %497, label %482

; <label>:482                                     ; preds = %288
  %483 = add i32 %60, 520
  %484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %485 = extractvalue %dx.types.ResRet.i32 %484, 0
  %486 = add i32 %485, 0
  %487 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %486, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %488 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %487, %dx.types.Handle %116, float %97, float %98, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %489 = extractvalue %dx.types.ResRet.f32 %488, 0
  %490 = extractvalue %dx.types.ResRet.f32 %488, 1
  %491 = extractvalue %dx.types.ResRet.f32 %488, 2
  %492 = extractvalue %dx.types.ResRet.f32 %488, 3
  %493 = fmul fast float %492, %99
  %494 = fmul fast float %489, %100
  %495 = fmul fast float %490, %101
  %496 = fmul fast float %491, %102
  br label %497

; <label>:497                                     ; preds = %482, %288
  %498 = phi float [ %102, %288 ], [ %496, %482 ]
  %499 = phi float [ %101, %288 ], [ %495, %482 ]
  %500 = phi float [ %100, %288 ], [ %494, %482 ]
  %501 = phi float [ %99, %288 ], [ %493, %482 ]
  %502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %503 = extractvalue %dx.types.ResRet.i32 %502, 0
  %504 = and i32 %503, 2
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %525, label %506

; <label>:506                                     ; preds = %497
  %507 = add i32 %60, 44
  %508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %509 = extractvalue %dx.types.ResRet.i32 %508, 0
  %510 = and i32 %509, 1
  %511 = icmp ne i32 %510, 0
  %512 = select i1 %511, float %500, float 1.000000e+00
  %513 = add i32 %60, 60
  %514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %513, i32 undef)  ; BufferLoad(srv,index,wot)
  %515 = extractvalue %dx.types.ResRet.i32 %514, 0
  %516 = and i32 %515, 1
  %517 = icmp ne i32 %516, 0
  %518 = select i1 %517, float %499, float 1.000000e+00
  %519 = add i32 %60, 76
  %520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %519, i32 undef)  ; BufferLoad(srv,index,wot)
  %521 = extractvalue %dx.types.ResRet.i32 %520, 0
  %522 = and i32 %521, 1
  %523 = icmp ne i32 %522, 0
  %524 = select i1 %523, float %498, float 1.000000e+00
  br label %525

; <label>:525                                     ; preds = %506, %497
  %526 = phi float [ %498, %497 ], [ %524, %506 ]
  %527 = phi float [ %499, %497 ], [ %518, %506 ]
  %528 = phi float [ %500, %497 ], [ %512, %506 ]
  %529 = lshr i32 %503, 20
  %530 = and i32 %529, 3
  %531 = add nuw nsw i32 %530, 1
  %532 = add i32 %60, 24
  %533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %534 = extractvalue %dx.types.ResRet.i32 %533, 0
  %535 = add i32 %60, 28
  %536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.i32 %536, 0
  %538 = or i32 %537, %534
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %1127, label %540

; <label>:540                                     ; preds = %525
  %541 = and i32 %534, 262144
  %542 = icmp ne i32 %541, 0
  %543 = select i1 %542, float %65, float 1.000000e+00
  %544 = select i1 %542, float %66, float 0.000000e+00
  %545 = select i1 %542, float %67, float 0.000000e+00
  %546 = select i1 %542, float %68, float 1.000000e+00
  %547 = select i1 %542, float %69, float %97
  %548 = select i1 %542, float %70, float %98
  %549 = add i32 %60, 284
  %550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %549, i32 undef)  ; BufferLoad(srv,index,wot)
  %551 = extractvalue %dx.types.ResRet.i32 %550, 0
  %552 = lshr i32 %551, 16
  %553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %552)  ; LegacyF16ToF32(value)
  %554 = fmul fast float %553, 0x3F50624DE0000000
  %555 = add i32 %60, 88
  %556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %555, i32 undef)  ; BufferLoad(srv,index,wot)
  %557 = extractvalue %dx.types.ResRet.i32 %556, 0
  %558 = lshr i32 %557, 16
  %559 = and i32 %558, 255
  %560 = lshr i32 %557, 24
  %561 = add i32 %60, 292
  %562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %561, i32 undef)  ; BufferLoad(srv,index,wot)
  %563 = extractvalue %dx.types.ResRet.i32 %562, 0
  %564 = and i32 %563, 65535
  %565 = call float @dx.op.legacyF16ToF32(i32 131, i32 %564)  ; LegacyF16ToF32(value)
  %566 = lshr i32 %563, 16
  %567 = call float @dx.op.legacyF16ToF32(i32 131, i32 %566)  ; LegacyF16ToF32(value)
  %568 = add i32 %60, 32
  %569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %568, i32 undef)  ; BufferLoad(srv,index,wot)
  %570 = extractvalue %dx.types.ResRet.i32 %569, 0
  %571 = lshr i32 %570, 22
  %572 = shl nuw nsw i32 %571, 5
  %573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %572)  ; LegacyF16ToF32(value)
  %574 = shl i32 %570, 4
  %575 = and i32 %574, 32752
  %576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %575)  ; LegacyF16ToF32(value)
  %577 = lshr i32 %570, 7
  %578 = and i32 %577, 32752
  %579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %578)  ; LegacyF16ToF32(value)
  %580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %581 = extractvalue %dx.types.CBufRet.f32 %580, 3
  %582 = fmul fast float %581, 1.000000e+03
  %583 = fmul fast float %341, %582
  %584 = call float @dx.op.unary.f32(i32 22, float %583)  ; Frc(value)
  %585 = fadd fast float %584, %331
  %586 = fmul fast float %342, %582
  %587 = call float @dx.op.unary.f32(i32 22, float %586)  ; Frc(value)
  %588 = fadd fast float %587, %333
  %589 = fmul fast float %554, %582
  %590 = call float @dx.op.unary.f32(i32 22, float %589)  ; Frc(value)
  %591 = fmul fast float %590, 0x401921FB60000000
  %592 = fadd fast float %591, %573
  %593 = call float @dx.op.unary.f32(i32 13, float %592)  ; Sin(value)
  %594 = call float @dx.op.unary.f32(i32 12, float %592)  ; Cos(value)
  %595 = fsub fast float -0.000000e+00, %593
  %596 = fadd fast float %547, -5.000000e-01
  %597 = fadd fast float %548, -5.000000e-01
  %598 = fmul fast float %565, %596
  %599 = fmul fast float %567, %597
  %600 = fadd fast float %598, 5.000000e-01
  %601 = fadd fast float %599, 5.000000e-01
  %602 = fmul fast float %576, %600
  %603 = fmul fast float %579, %601
  %604 = fmul fast float %594, %602
  %605 = call float @dx.op.tertiary.f32(i32 46, float %595, float %603, float %604)  ; FMad(a,b,c)
  %606 = fmul fast float %593, %602
  %607 = call float @dx.op.tertiary.f32(i32 46, float %594, float %603, float %606)  ; FMad(a,b,c)
  %608 = fadd fast float %585, %605
  %609 = fadd fast float %588, %607
  %610 = icmp ugt i32 %559, 1
  %611 = icmp ugt i32 %557, 33554431
  %612 = or i1 %611, %610
  br i1 %612, label %613, label %638

; <label>:613                                     ; preds = %540
  %614 = add i32 %60, 228
  %615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %614, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.i32 %615, 0
  %617 = lshr i32 %616, 16
  %618 = call float @dx.op.legacyF16ToF32(i32 131, i32 %617)  ; LegacyF16ToF32(value)
  %619 = fmul fast float %581, %618
  %620 = call float @dx.op.unary.f32(i32 22, float %619)  ; Frc(value)
  %621 = mul nuw nsw i32 %559, %560
  %622 = uitofp i32 %621 to float
  %623 = fmul fast float %620, %622
  %624 = call float @dx.op.unary.f32(i32 27, float %623)  ; Round_ni(value)
  %625 = fptoui float %624 to i32
  %626 = urem i32 %625, %559
  %627 = udiv i32 %625, %560
  %628 = call float @dx.op.unary.f32(i32 22, float %608)  ; Frc(value)
  %629 = call float @dx.op.unary.f32(i32 22, float %609)  ; Frc(value)
  %630 = uitofp i32 %626 to float
  %631 = uitofp i32 %627 to float
  %632 = fadd fast float %628, %630
  %633 = fadd fast float %629, %631
  %634 = uitofp i32 %559 to float
  %635 = uitofp i32 %560 to float
  %636 = fdiv fast float %632, %634
  %637 = fdiv fast float %633, %635
  br label %638

; <label>:638                                     ; preds = %613, %540
  %639 = phi float [ %636, %613 ], [ %608, %540 ]
  %640 = phi float [ %637, %613 ], [ %609, %540 ]
  %641 = and i32 %534, 256
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %689, label %643

; <label>:643                                     ; preds = %638
  %644 = add i32 %60, 472
  %645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %644, i32 undef)  ; BufferLoad(srv,index,wot)
  %646 = extractvalue %dx.types.ResRet.i32 %645, 0
  %647 = add i32 %646, 0
  %648 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %647, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %649 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %648, %dx.types.Handle %116, float %639, float %640, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %650 = extractvalue %dx.types.ResRet.f32 %649, 0
  %651 = add i32 %60, 100
  %652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %651, i32 undef)  ; BufferLoad(srv,index,wot)
  %653 = extractvalue %dx.types.ResRet.i32 %652, 0
  %654 = shl i32 %653, 4
  %655 = and i32 %654, 32752
  %656 = call float @dx.op.legacyF16ToF32(i32 131, i32 %655)  ; LegacyF16ToF32(value)
  %657 = lshr i32 %653, 7
  %658 = and i32 %657, 32752
  %659 = call float @dx.op.legacyF16ToF32(i32 131, i32 %658)  ; LegacyF16ToF32(value)
  %660 = fsub fast float 1.000000e+00, %501
  %661 = call float @dx.op.binary.f32(i32 35, float %660, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %662 = bitcast float %501 to i32
  %663 = sitofp i32 %662 to float
  %664 = fadd fast float %663, 0xC1CFBF8940000000
  %665 = fmul fast float %659, %664
  %666 = fadd fast float %665, 0x41CFBF8940000000
  %667 = fptosi float %666 to i32
  %668 = bitcast i32 %667 to float
  %669 = bitcast float %661 to i32
  %670 = sitofp i32 %669 to float
  %671 = fadd fast float %670, 0xC1CFBF8940000000
  %672 = fmul fast float %671, %659
  %673 = fadd fast float %672, 0x41CFBF8940000000
  %674 = fptosi float %673 to i32
  %675 = bitcast i32 %674 to float
  %676 = fmul fast float %668, %656
  %677 = fmul fast float %675, %656
  %678 = fsub fast float %661, %676
  %679 = fadd fast float %677, %661
  %680 = call float @dx.op.unary.f32(i32 7, float %678)  ; Saturate(value)
  %681 = call float @dx.op.unary.f32(i32 7, float %679)  ; Saturate(value)
  %682 = fsub fast float %650, %680
  %683 = fsub fast float %681, %680
  %684 = bitcast float %683 to i32
  %685 = sub nsw i32 2129859010, %684
  %686 = bitcast i32 %685 to float
  %687 = fmul fast float %686, %682
  %688 = call float @dx.op.unary.f32(i32 7, float %687)  ; Saturate(value)
  br label %689

; <label>:689                                     ; preds = %643, %638
  %690 = phi float [ %688, %643 ], [ %501, %638 ]
  %691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %692 = extractvalue %dx.types.ResRet.i32 %691, 0
  %693 = and i32 %692, 128
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %711, label %695

; <label>:695                                     ; preds = %689
  %696 = add i32 %60, 456
  %697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %696, i32 undef)  ; BufferLoad(srv,index,wot)
  %698 = extractvalue %dx.types.ResRet.i32 %697, 0
  %699 = add i32 %698, 0
  %700 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %699, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %701 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %700, %dx.types.Handle %116, float %639, float %640, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %702 = extractvalue %dx.types.ResRet.f32 %701, 0
  %703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %704 = extractvalue %dx.types.ResRet.i32 %703, 0
  %705 = and i32 %704, 524288
  %706 = icmp ne i32 %705, 0
  %707 = fcmp fast ogt float %702, 0x3FE0101020000000
  %708 = select i1 %707, float 1.000000e+00, float 0.000000e+00
  %709 = select i1 %706, float %708, float %702
  %710 = fmul fast float %709, %690
  br label %711

; <label>:711                                     ; preds = %695, %689
  %712 = phi float [ %710, %695 ], [ %690, %689 ]
  %713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %714 = extractvalue %dx.types.ResRet.i32 %713, 0
  %715 = and i32 %714, 16
  %716 = icmp eq i32 %715, 0
  br i1 %716, label %915, label %717

; <label>:717                                     ; preds = %711
  %718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %555, i32 undef)  ; BufferLoad(srv,index,wot)
  %719 = extractvalue %dx.types.ResRet.i32 %718, 0
  %720 = add i32 %60, 408
  %721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %720, i32 undef)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.i32 %721, 0
  %723 = add i32 %722, 0
  %724 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %723, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %725 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %724, %dx.types.Handle %115, float %639, float %640, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %726 = extractvalue %dx.types.ResRet.f32 %725, 0
  %727 = extractvalue %dx.types.ResRet.f32 %725, 1
  %728 = extractvalue %dx.types.ResRet.f32 %725, 2
  %729 = extractvalue %dx.types.ResRet.f32 %725, 3
  %730 = and i32 %719, 255
  %731 = uitofp i32 %730 to float
  %732 = lshr i32 %719, 8
  %733 = and i32 %732, 255
  %734 = uitofp i32 %733 to float
  %735 = fmul fast float %729, %731
  %736 = fadd fast float %735, %734
  %737 = fmul fast float %736, 0x3F70101000000000
  %738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %739 = extractvalue %dx.types.ResRet.i32 %738, 0
  %740 = and i32 %739, 512
  %741 = icmp eq i32 %740, 0
  br i1 %741, label %750, label %742

; <label>:742                                     ; preds = %717
  %743 = add i32 %60, 488
  %744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %743, i32 undef)  ; BufferLoad(srv,index,wot)
  %745 = extractvalue %dx.types.ResRet.i32 %744, 0
  %746 = add i32 %745, 0
  %747 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %746, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %748 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %747, %dx.types.Handle %116, float %639, float %640, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %749 = extractvalue %dx.types.ResRet.f32 %748, 0
  br label %750

; <label>:750                                     ; preds = %742, %717
  %751 = phi float [ %749, %742 ], [ 1.000000e+00, %717 ]
  %752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %753 = extractvalue %dx.types.ResRet.i32 %752, 0
  %754 = and i32 %753, 33554432
  %755 = icmp eq i32 %754, 0
  br i1 %755, label %862, label %756

; <label>:756                                     ; preds = %750
  %757 = add i32 %60, 224
  %758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %757, i32 undef)  ; BufferLoad(srv,index,wot)
  %759 = extractvalue %dx.types.ResRet.i32 %758, 0
  %760 = and i32 %759, 65535
  %761 = call float @dx.op.legacyF16ToF32(i32 131, i32 %760)  ; LegacyF16ToF32(value)
  %762 = lshr i32 %759, 16
  %763 = call float @dx.op.legacyF16ToF32(i32 131, i32 %762)  ; LegacyF16ToF32(value)
  %764 = add i32 %60, 228
  %765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %764, i32 undef)  ; BufferLoad(srv,index,wot)
  %766 = extractvalue %dx.types.ResRet.i32 %765, 0
  %767 = and i32 %766, 65535
  %768 = call float @dx.op.legacyF16ToF32(i32 131, i32 %767)  ; LegacyF16ToF32(value)
  %769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %770 = extractvalue %dx.types.ResRet.i32 %769, 0
  %771 = lshr i32 %770, 24
  %772 = uitofp i32 %771 to float
  %773 = fmul fast float %772, 0x3F70101020000000
  %774 = and i32 %770, 255
  %775 = uitofp i32 %774 to float
  %776 = fmul fast float %775, 0x3F70101020000000
  %777 = lshr i32 %770, 8
  %778 = and i32 %777, 255
  %779 = uitofp i32 %778 to float
  %780 = fmul fast float %779, 0x3F70101020000000
  %781 = lshr i32 %770, 16
  %782 = and i32 %781, 255
  %783 = uitofp i32 %782 to float
  %784 = fmul fast float %783, 0x3F70101020000000
  %785 = add i32 %60, 220
  %786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %785, i32 undef)  ; BufferLoad(srv,index,wot)
  %787 = extractvalue %dx.types.ResRet.i32 %786, 0
  %788 = lshr i32 %787, 24
  %789 = uitofp i32 %788 to float
  %790 = fmul fast float %789, 0x3F70101020000000
  %791 = and i32 %787, 255
  %792 = uitofp i32 %791 to float
  %793 = fmul fast float %792, 0x3F70101020000000
  %794 = lshr i32 %787, 8
  %795 = and i32 %794, 255
  %796 = uitofp i32 %795 to float
  %797 = fmul fast float %796, 0x3F70101020000000
  %798 = lshr i32 %787, 16
  %799 = and i32 %798, 255
  %800 = uitofp i32 %799 to float
  %801 = fmul fast float %800, 0x3F70101020000000
  %802 = bitcast float %726 to i32
  %803 = ashr i32 %802, 1
  %804 = sub nsw i32 1597463174, %803
  %805 = bitcast i32 %804 to float
  %806 = fmul fast float %726, 5.000000e-01
  %807 = fmul fast float %805, %805
  %808 = fmul fast float %807, %806
  %809 = fsub fast float 1.500000e+00, %808
  %810 = fmul fast float %805, %726
  %811 = fmul fast float %810, %809
  %812 = bitcast float %727 to i32
  %813 = ashr i32 %812, 1
  %814 = sub nsw i32 1597463174, %813
  %815 = bitcast i32 %814 to float
  %816 = fmul fast float %727, 5.000000e-01
  %817 = fmul fast float %815, %815
  %818 = fmul fast float %817, %816
  %819 = fsub fast float 1.500000e+00, %818
  %820 = fmul fast float %815, %727
  %821 = fmul fast float %820, %819
  %822 = bitcast float %728 to i32
  %823 = ashr i32 %822, 1
  %824 = sub nsw i32 1597463174, %823
  %825 = bitcast i32 %824 to float
  %826 = fmul fast float %728, 5.000000e-01
  %827 = fmul fast float %825, %825
  %828 = fmul fast float %827, %826
  %829 = fsub fast float 1.500000e+00, %828
  %830 = fmul fast float %825, %728
  %831 = fmul fast float %830, %829
  %832 = fsub fast float %811, %793
  %833 = fsub fast float %821, %797
  %834 = fsub fast float %831, %801
  %835 = fmul fast float %832, %761
  %836 = fmul fast float %833, %763
  %837 = fmul fast float %834, %768
  %838 = fadd fast float %835, %776
  %839 = fadd fast float %836, %780
  %840 = fadd fast float %837, %784
  %841 = call float @dx.op.unary.f32(i32 7, float %838)  ; Saturate(value)
  %842 = call float @dx.op.unary.f32(i32 7, float %839)  ; Saturate(value)
  %843 = call float @dx.op.unary.f32(i32 7, float %840)  ; Saturate(value)
  %844 = fmul fast float %841, %841
  %845 = fmul fast float %842, %842
  %846 = fmul fast float %843, %843
  %847 = fsub fast float %844, %726
  %848 = fsub fast float %845, %727
  %849 = fsub fast float %846, %728
  %850 = fmul fast float %847, %751
  %851 = fmul fast float %848, %751
  %852 = fmul fast float %849, %751
  %853 = fadd fast float %850, %726
  %854 = fadd fast float %851, %727
  %855 = fadd fast float %852, %728
  %856 = fadd fast float %773, %737
  %857 = fsub fast float %856, %790
  %858 = call float @dx.op.unary.f32(i32 7, float %857)  ; Saturate(value)
  %859 = fsub fast float %858, %737
  %860 = fmul fast float %859, %751
  %861 = fadd fast float %860, %737
  br label %915

; <label>:862                                     ; preds = %750
  %863 = and i32 %753, 134217728
  %864 = icmp eq i32 %863, 0
  br i1 %864, label %899, label %865

; <label>:865                                     ; preds = %862
  %866 = call float @dx.op.unary.f32(i32 24, float %318)  ; Sqrt(value)
  %867 = call float @dx.op.unary.f32(i32 24, float %322)  ; Sqrt(value)
  %868 = call float @dx.op.unary.f32(i32 24, float %326)  ; Sqrt(value)
  %869 = fadd fast float %866, -5.000000e-01
  %870 = fadd fast float %867, -5.000000e-01
  %871 = fadd fast float %868, -5.000000e-01
  %872 = fmul fast float %869, %751
  %873 = fmul fast float %870, %751
  %874 = fmul fast float %871, %751
  %875 = fadd fast float %872, 5.000000e-01
  %876 = fadd fast float %873, 5.000000e-01
  %877 = fadd fast float %874, 5.000000e-01
  %878 = call float @dx.op.unary.f32(i32 24, float %726)  ; Sqrt(value)
  %879 = call float @dx.op.unary.f32(i32 24, float %727)  ; Sqrt(value)
  %880 = call float @dx.op.unary.f32(i32 24, float %728)  ; Sqrt(value)
  %881 = fmul fast float %875, 2.000000e+00
  %882 = fsub fast float 1.000000e+00, %881
  %883 = fmul fast float %882, %878
  %884 = fadd fast float %883, %881
  %885 = fmul fast float %884, %878
  %886 = fmul fast float %876, 2.000000e+00
  %887 = fsub fast float 1.000000e+00, %886
  %888 = fmul fast float %887, %879
  %889 = fadd fast float %888, %886
  %890 = fmul fast float %889, %879
  %891 = fmul fast float %877, 2.000000e+00
  %892 = fsub fast float 1.000000e+00, %891
  %893 = fmul fast float %892, %880
  %894 = fadd fast float %893, %891
  %895 = fmul fast float %894, %880
  %896 = fmul fast float %885, %885
  %897 = fmul fast float %890, %890
  %898 = fmul fast float %895, %895
  br label %915

; <label>:899                                     ; preds = %862
  %900 = fmul fast float %318, %318
  %901 = fmul fast float %322, %322
  %902 = fmul fast float %326, %326
  %903 = fadd fast float %900, -1.000000e+00
  %904 = fadd fast float %901, -1.000000e+00
  %905 = fadd fast float %902, -1.000000e+00
  %906 = fmul fast float %751, %903
  %907 = fmul fast float %751, %904
  %908 = fmul fast float %751, %905
  %909 = fadd fast float %906, 1.000000e+00
  %910 = fadd fast float %907, 1.000000e+00
  %911 = fadd fast float %908, 1.000000e+00
  %912 = fmul fast float %909, %726
  %913 = fmul fast float %910, %727
  %914 = fmul fast float %911, %728
  br label %915

; <label>:915                                     ; preds = %899, %865, %756, %711
  %916 = phi float [ %861, %756 ], [ %737, %865 ], [ %737, %899 ], [ 0x3FA23C0BE0000000, %711 ]
  %917 = phi float [ %853, %756 ], [ %896, %865 ], [ %912, %899 ], [ 1.000000e+00, %711 ]
  %918 = phi float [ %854, %756 ], [ %897, %865 ], [ %913, %899 ], [ 1.000000e+00, %711 ]
  %919 = phi float [ %855, %756 ], [ %898, %865 ], [ %914, %899 ], [ 1.000000e+00, %711 ]
  %920 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %921 = extractvalue %dx.types.CBufRet.i32 %920, 1
  %922 = and i32 %921, 1
  %923 = icmp ne i32 %922, 0
  %924 = add i32 %60, 356
  %925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %924, i32 undef)  ; BufferLoad(srv,index,wot)
  %926 = extractvalue %dx.types.ResRet.i32 %925, 0
  %927 = and i32 %926, 32
  %928 = icmp ne i32 %927, 0
  %929 = and i1 %923, %928
  %930 = select i1 %929, float 1.000000e+00, float %917
  %931 = select i1 %929, float 0x3FD3333340000000, float %918
  %932 = select i1 %929, float 0x3FD3333340000000, float %919
  %933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %934 = extractvalue %dx.types.ResRet.i32 %933, 0
  %935 = and i32 %934, 32
  %936 = icmp eq i32 %935, 0
  br i1 %936, label %1009, label %937

; <label>:937                                     ; preds = %915
  %938 = add i32 %60, 92
  %939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %940 = extractvalue %dx.types.ResRet.i32 %939, 0
  %941 = add i32 %60, 424
  %942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %943 = extractvalue %dx.types.ResRet.i32 %942, 0
  %944 = add i32 %943, 0
  %945 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %944, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %946 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %945, %dx.types.Handle %115, float %639, float %640, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %947 = extractvalue %dx.types.ResRet.f32 %946, 0
  %948 = extractvalue %dx.types.ResRet.f32 %946, 1
  %949 = extractvalue %dx.types.ResRet.f32 %946, 2
  %950 = extractvalue %dx.types.ResRet.f32 %946, 3
  %951 = and i32 %940, 255
  %952 = uitofp i32 %951 to float
  %953 = lshr i32 %940, 8
  %954 = and i32 %953, 255
  %955 = uitofp i32 %954 to float
  %956 = lshr i32 %940, 16
  %957 = and i32 %956, 255
  %958 = uitofp i32 %957 to float
  %959 = fmul fast float %958, 0x3F70101000000000
  %960 = fmul fast float %947, %952
  %961 = fadd fast float %960, %955
  %962 = fmul fast float %961, 0x3F70101000000000
  %963 = fadd fast float %948, -5.000000e-01
  %964 = fadd fast float %950, -5.000000e-01
  %965 = fmul fast float %963, %959
  %966 = fmul fast float %964, %959
  %967 = fadd fast float %965, 5.000000e-01
  %968 = fadd fast float %966, 5.000000e-01
  %969 = fmul fast float %967, 2.000000e+00
  %970 = fadd fast float %969, -1.000000e+00
  %971 = fmul fast float %968, 2.000000e+00
  %972 = fadd fast float %971, -1.000000e+00
  %973 = fadd fast float %970, %972
  %974 = fmul fast float %973, 5.000000e-01
  %975 = fsub fast float %970, %972
  %976 = fmul fast float %975, 5.000000e-01
  %977 = call float @dx.op.unary.f32(i32 6, float %974)  ; FAbs(value)
  %978 = fsub fast float 1.000000e+00, %977
  %979 = call float @dx.op.unary.f32(i32 6, float %976)  ; FAbs(value)
  %980 = fsub fast float %978, %979
  %981 = call float @dx.op.dot3.f32(i32 55, float %974, float %976, float %980, float %974, float %976, float %980)  ; Dot3(ax,ay,az,bx,by,bz)
  %982 = call float @dx.op.unary.f32(i32 25, float %981)  ; Rsqrt(value)
  %983 = fmul fast float %974, %982
  %984 = fmul fast float %976, %982
  %985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %986 = extractvalue %dx.types.ResRet.i32 %985, 0
  %987 = and i32 %986, 67108864
  %988 = icmp eq i32 %987, 0
  br i1 %988, label %1005, label %989

; <label>:989                                     ; preds = %937
  %990 = add i32 %60, 280
  %991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %990, i32 undef)  ; BufferLoad(srv,index,wot)
  %992 = extractvalue %dx.types.ResRet.i32 %991, 0
  %993 = and i32 %992, 65535
  %994 = call float @dx.op.legacyF16ToF32(i32 131, i32 %993)  ; LegacyF16ToF32(value)
  %995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %549, i32 undef)  ; BufferLoad(srv,index,wot)
  %996 = extractvalue %dx.types.ResRet.i32 %995, 0
  %997 = and i32 %996, 65535
  %998 = call float @dx.op.legacyF16ToF32(i32 131, i32 %997)  ; LegacyF16ToF32(value)
  %999 = lshr i32 %992, 16
  %1000 = call float @dx.op.legacyF16ToF32(i32 131, i32 %999)  ; LegacyF16ToF32(value)
  %1001 = fsub fast float %962, %1000
  %1002 = fmul fast float %1001, %994
  %1003 = fadd fast float %1002, %998
  %1004 = call float @dx.op.unary.f32(i32 7, float %1003)  ; Saturate(value)
  br label %1005

; <label>:1005                                    ; preds = %989, %937
  %1006 = phi float [ %1004, %989 ], [ %962, %937 ]
  %1007 = call float @dx.op.dot2.f32(i32 54, float %983, float %984, float %543, float %544)  ; Dot2(ax,ay,bx,by)
  %1008 = call float @dx.op.dot2.f32(i32 54, float %983, float %984, float %545, float %546)  ; Dot2(ax,ay,bx,by)
  br label %1009

; <label>:1009                                    ; preds = %1005, %915
  %1010 = phi float [ %1006, %1005 ], [ 0x3FD6666660000000, %915 ]
  %1011 = phi float [ %1007, %1005 ], [ 0.000000e+00, %915 ]
  %1012 = phi float [ %1008, %1005 ], [ 0.000000e+00, %915 ]
  %1013 = phi float [ %949, %1005 ], [ 1.000000e+00, %915 ]
  %1014 = add i32 %60, 160
  %1015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1014, i32 undef)  ; BufferLoad(srv,index,wot)
  %1016 = extractvalue %dx.types.ResRet.i32 %1015, 0
  %1017 = lshr i32 %1016, 22
  %1018 = shl nuw nsw i32 %1017, 5
  %1019 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1018)  ; LegacyF16ToF32(value)
  %1020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %1021 = extractvalue %dx.types.ResRet.i32 %1020, 0
  %1022 = and i32 %1021, 64
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %1057, label %1024

; <label>:1024                                    ; preds = %1009
  %1025 = add i32 %60, 440
  %1026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1025, i32 undef)  ; BufferLoad(srv,index,wot)
  %1027 = extractvalue %dx.types.ResRet.i32 %1026, 0
  %1028 = add i32 %1027, 0
  %1029 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1028, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %1031 = extractvalue %dx.types.ResRet.i32 %1030, 0
  %1032 = and i32 %1031, 131072
  %1033 = icmp eq i32 %1032, 0
  %1034 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1029, %dx.types.Handle %115, float %639, float %640, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1035 = extractvalue %dx.types.ResRet.f32 %1034, 0
  %1036 = extractvalue %dx.types.ResRet.f32 %1034, 1
  %1037 = extractvalue %dx.types.ResRet.f32 %1034, 2
  %1038 = fmul fast float %1035, %306
  %1039 = fmul fast float %1036, %309
  %1040 = fmul fast float %1037, %312
  br i1 %1033, label %1047, label %1041

; <label>:1041                                    ; preds = %1024
  %1042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1043 = extractvalue %dx.types.CBufRet.f32 %1042, 0
  %1044 = fmul fast float %1043, %1038
  %1045 = fmul fast float %1043, %1039
  %1046 = fmul fast float %1043, %1040
  br label %1047

; <label>:1047                                    ; preds = %1041, %1024
  %1048 = phi float [ %1044, %1041 ], [ %1038, %1024 ]
  %1049 = phi float [ %1045, %1041 ], [ %1039, %1024 ]
  %1050 = phi float [ %1046, %1041 ], [ %1040, %1024 ]
  %1051 = fmul fast float %1048, %1019
  %1052 = select i1 %289, float %1051, float %1048
  %1053 = call float @dx.op.dot3.f32(i32 55, float %1052, float %1049, float %1050, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1054 = select i1 %289, float 0.000000e+00, float %1048
  %1055 = select i1 %289, float %1053, float %1049
  %1056 = select i1 %289, float 0.000000e+00, float %1050
  br label %1057

; <label>:1057                                    ; preds = %1047, %1009
  %1058 = phi float [ %1054, %1047 ], [ 0.000000e+00, %1009 ]
  %1059 = phi float [ %1055, %1047 ], [ 0.000000e+00, %1009 ]
  %1060 = phi float [ %1056, %1047 ], [ 0.000000e+00, %1009 ]
  %1061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %1062 = extractvalue %dx.types.ResRet.i32 %1061, 0
  %1063 = and i32 %1062, 10240
  %1064 = icmp eq i32 %1063, 0
  br i1 %1064, label %1109, label %1065

; <label>:1065                                    ; preds = %1057
  %1066 = add i32 %60, 504
  %1067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1066, i32 undef)  ; BufferLoad(srv,index,wot)
  %1068 = extractvalue %dx.types.ResRet.i32 %1067, 0
  %1069 = add i32 %1068, 0
  %1070 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1069, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1071 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1070, %dx.types.Handle %116, float %639, float %640, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1072 = extractvalue %dx.types.ResRet.f32 %1071, 1
  %1073 = extractvalue %dx.types.ResRet.f32 %1071, 3
  %1074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %1075 = extractvalue %dx.types.ResRet.i32 %1074, 0
  %1076 = and i32 %1075, 1048576
  %1077 = icmp ne i32 %1076, 0
  %1078 = and i32 %1075, 8192
  %1079 = icmp eq i32 %1078, 0
  br i1 %1079, label %1095, label %1080

; <label>:1080                                    ; preds = %1065
  %1081 = extractvalue %dx.types.ResRet.f32 %1071, 2
  %1082 = select i1 %1077, float %1081, float %1072
  %1083 = extractvalue %dx.types.ResRet.f32 %1071, 0
  %1084 = select i1 %1077, float %1083, float %1072
  %1085 = add i32 %60, 96
  %1086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1085, i32 undef)  ; BufferLoad(srv,index,wot)
  %1087 = extractvalue %dx.types.ResRet.i32 %1086, 0
  %1088 = lshr i32 %1087, 16
  %1089 = and i32 %1088, 255
  %1090 = uitofp i32 %1089 to float
  %1091 = fmul fast float %1090, 0x3F80101020000000
  %1092 = fmul fast float %1091, %1084
  %1093 = fmul fast float %1091, %1072
  %1094 = fmul fast float %1091, %1082
  br label %1095

; <label>:1095                                    ; preds = %1080, %1065
  %1096 = phi float [ %1092, %1080 ], [ 0.000000e+00, %1065 ]
  %1097 = phi float [ %1093, %1080 ], [ 0.000000e+00, %1065 ]
  %1098 = phi float [ %1094, %1080 ], [ 0.000000e+00, %1065 ]
  %1099 = and i32 %1075, 2048
  %1100 = icmp eq i32 %1099, 0
  br i1 %1100, label %1109, label %1101

; <label>:1101                                    ; preds = %1095
  %1102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1014, i32 undef)  ; BufferLoad(srv,index,wot)
  %1103 = extractvalue %dx.types.ResRet.i32 %1102, 0
  %1104 = shl i32 %1103, 4
  %1105 = and i32 %1104, 32752
  %1106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1105)  ; LegacyF16ToF32(value)
  %1107 = fmul fast float %1106, %1073
  %1108 = call float @dx.op.binary.f32(i32 35, float %1107, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1109

; <label>:1109                                    ; preds = %1101, %1095, %1057
  %1110 = phi float [ %1096, %1101 ], [ %1096, %1095 ], [ 0.000000e+00, %1057 ]
  %1111 = phi float [ %1097, %1101 ], [ %1097, %1095 ], [ 0.000000e+00, %1057 ]
  %1112 = phi float [ %1098, %1101 ], [ %1098, %1095 ], [ 0.000000e+00, %1057 ]
  %1113 = phi float [ %1108, %1101 ], [ 0x3F70101020000000, %1095 ], [ 0x3F70101020000000, %1057 ]
  %1114 = add i32 %60, 96
  %1115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1114, i32 undef)  ; BufferLoad(srv,index,wot)
  %1116 = extractvalue %dx.types.ResRet.i32 %1115, 0
  %1117 = and i32 %1116, 255
  %1118 = uitofp i32 %1117 to float
  %1119 = lshr i32 %1116, 8
  %1120 = and i32 %1119, 255
  %1121 = uitofp i32 %1120 to float
  %1122 = call float @dx.op.dot3.f32(i32 55, float %930, float %931, float %932, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1123 = fmul fast float %1121, %1122
  %1124 = fadd fast float %1123, %1118
  %1125 = fmul fast float %1124, 0x3F70101020000000
  %1126 = call float @dx.op.unary.f32(i32 7, float %1125)  ; Saturate(value)
  br label %1127

; <label>:1127                                    ; preds = %1109, %525
  %1128 = phi float [ 0.000000e+00, %525 ], [ %1011, %1109 ]
  %1129 = phi float [ 0.000000e+00, %525 ], [ %1012, %1109 ]
  %1130 = phi float [ 0.000000e+00, %525 ], [ %1110, %1109 ]
  %1131 = phi float [ 0.000000e+00, %525 ], [ %1111, %1109 ]
  %1132 = phi float [ 0.000000e+00, %525 ], [ %1112, %1109 ]
  %1133 = phi float [ 0.000000e+00, %525 ], [ %930, %1109 ]
  %1134 = phi float [ 0.000000e+00, %525 ], [ %931, %1109 ]
  %1135 = phi float [ 0.000000e+00, %525 ], [ %932, %1109 ]
  %1136 = phi float [ 0.000000e+00, %525 ], [ %1058, %1109 ]
  %1137 = phi float [ 0.000000e+00, %525 ], [ %1059, %1109 ]
  %1138 = phi float [ 0.000000e+00, %525 ], [ %1060, %1109 ]
  %1139 = phi float [ 0.000000e+00, %525 ], [ %916, %1109 ]
  %1140 = phi float [ 0.000000e+00, %525 ], [ %712, %1109 ]
  %1141 = phi float [ 0.000000e+00, %525 ], [ %1010, %1109 ]
  %1142 = phi float [ 0.000000e+00, %525 ], [ %1013, %1109 ]
  %1143 = phi float [ 0.000000e+00, %525 ], [ %1113, %1109 ]
  %1144 = phi float [ 0.000000e+00, %525 ], [ %1126, %1109 ]
  br i1 %473, label %1958, label %1145

; <label>:1145                                    ; preds = %1127
  %1146 = icmp ult i32 %531, 2
  %1147 = add i32 %60, 40
  %1148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1149 = extractvalue %dx.types.ResRet.i32 %1148, 0
  %1150 = add i32 %60, 44
  %1151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1150, i32 undef)  ; BufferLoad(srv,index,wot)
  %1152 = extractvalue %dx.types.ResRet.i32 %1151, 0
  %1153 = or i32 %1152, %1149
  %1154 = icmp eq i32 %1153, 0
  br i1 %1154, label %1958, label %1155

; <label>:1155                                    ; preds = %1145
  %1156 = and i32 %1149, 262144
  %1157 = icmp ne i32 %1156, 0
  %1158 = select i1 %1157, float %65, float 1.000000e+00
  %1159 = select i1 %1157, float %66, float 0.000000e+00
  %1160 = select i1 %1157, float %67, float 0.000000e+00
  %1161 = select i1 %1157, float %68, float 1.000000e+00
  %1162 = select i1 %1157, float %69, float %97
  %1163 = select i1 %1157, float %70, float %98
  %1164 = add i32 %60, 300
  %1165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1164, i32 undef)  ; BufferLoad(srv,index,wot)
  %1166 = extractvalue %dx.types.ResRet.i32 %1165, 0
  %1167 = lshr i32 %1166, 16
  %1168 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1167)  ; LegacyF16ToF32(value)
  %1169 = fmul fast float %1168, 0x3F50624DE0000000
  %1170 = add i32 %60, 104
  %1171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1170, i32 undef)  ; BufferLoad(srv,index,wot)
  %1172 = extractvalue %dx.types.ResRet.i32 %1171, 0
  %1173 = lshr i32 %1172, 16
  %1174 = and i32 %1173, 255
  %1175 = lshr i32 %1172, 24
  %1176 = add i32 %60, 308
  %1177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1176, i32 undef)  ; BufferLoad(srv,index,wot)
  %1178 = extractvalue %dx.types.ResRet.i32 %1177, 0
  %1179 = and i32 %1178, 65535
  %1180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1179)  ; LegacyF16ToF32(value)
  %1181 = lshr i32 %1178, 16
  %1182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1181)  ; LegacyF16ToF32(value)
  %1183 = add i32 %60, 48
  %1184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1183, i32 undef)  ; BufferLoad(srv,index,wot)
  %1185 = extractvalue %dx.types.ResRet.i32 %1184, 0
  %1186 = lshr i32 %1185, 22
  %1187 = shl nuw nsw i32 %1186, 5
  %1188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1187)  ; LegacyF16ToF32(value)
  %1189 = shl i32 %1185, 4
  %1190 = and i32 %1189, 32752
  %1191 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1190)  ; LegacyF16ToF32(value)
  %1192 = lshr i32 %1185, 7
  %1193 = and i32 %1192, 32752
  %1194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1193)  ; LegacyF16ToF32(value)
  %1195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1196 = extractvalue %dx.types.CBufRet.f32 %1195, 3
  %1197 = fmul fast float %1196, 1.000000e+03
  %1198 = fmul fast float %383, %1197
  %1199 = call float @dx.op.unary.f32(i32 22, float %1198)  ; Frc(value)
  %1200 = fadd fast float %1199, %373
  %1201 = fmul fast float %384, %1197
  %1202 = call float @dx.op.unary.f32(i32 22, float %1201)  ; Frc(value)
  %1203 = fadd fast float %1202, %375
  %1204 = fmul fast float %1169, %1197
  %1205 = call float @dx.op.unary.f32(i32 22, float %1204)  ; Frc(value)
  %1206 = fmul fast float %1205, 0x401921FB60000000
  %1207 = fadd fast float %1206, %1188
  %1208 = call float @dx.op.unary.f32(i32 13, float %1207)  ; Sin(value)
  %1209 = call float @dx.op.unary.f32(i32 12, float %1207)  ; Cos(value)
  %1210 = fsub fast float -0.000000e+00, %1208
  %1211 = fadd fast float %1162, -5.000000e-01
  %1212 = fadd fast float %1163, -5.000000e-01
  %1213 = fmul fast float %1180, %1211
  %1214 = fmul fast float %1182, %1212
  %1215 = fadd fast float %1213, 5.000000e-01
  %1216 = fadd fast float %1214, 5.000000e-01
  %1217 = fmul fast float %1191, %1215
  %1218 = fmul fast float %1194, %1216
  %1219 = fmul fast float %1209, %1217
  %1220 = call float @dx.op.tertiary.f32(i32 46, float %1210, float %1218, float %1219)  ; FMad(a,b,c)
  %1221 = fmul fast float %1208, %1217
  %1222 = call float @dx.op.tertiary.f32(i32 46, float %1209, float %1218, float %1221)  ; FMad(a,b,c)
  %1223 = fadd fast float %1200, %1220
  %1224 = fadd fast float %1203, %1222
  %1225 = icmp ugt i32 %1174, 1
  %1226 = icmp ugt i32 %1172, 33554431
  %1227 = or i1 %1226, %1225
  br i1 %1227, label %1228, label %1253

; <label>:1228                                    ; preds = %1155
  %1229 = add i32 %60, 244
  %1230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1229, i32 undef)  ; BufferLoad(srv,index,wot)
  %1231 = extractvalue %dx.types.ResRet.i32 %1230, 0
  %1232 = lshr i32 %1231, 16
  %1233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1232)  ; LegacyF16ToF32(value)
  %1234 = fmul fast float %1196, %1233
  %1235 = call float @dx.op.unary.f32(i32 22, float %1234)  ; Frc(value)
  %1236 = mul nuw nsw i32 %1174, %1175
  %1237 = uitofp i32 %1236 to float
  %1238 = fmul fast float %1235, %1237
  %1239 = call float @dx.op.unary.f32(i32 27, float %1238)  ; Round_ni(value)
  %1240 = fptoui float %1239 to i32
  %1241 = urem i32 %1240, %1174
  %1242 = udiv i32 %1240, %1175
  %1243 = call float @dx.op.unary.f32(i32 22, float %1223)  ; Frc(value)
  %1244 = call float @dx.op.unary.f32(i32 22, float %1224)  ; Frc(value)
  %1245 = uitofp i32 %1241 to float
  %1246 = uitofp i32 %1242 to float
  %1247 = fadd fast float %1243, %1245
  %1248 = fadd fast float %1244, %1246
  %1249 = uitofp i32 %1174 to float
  %1250 = uitofp i32 %1175 to float
  %1251 = fdiv fast float %1247, %1249
  %1252 = fdiv fast float %1248, %1250
  br label %1253

; <label>:1253                                    ; preds = %1228, %1155
  %1254 = phi float [ %1251, %1228 ], [ %1223, %1155 ]
  %1255 = phi float [ %1252, %1228 ], [ %1224, %1155 ]
  %1256 = and i32 %1149, 256
  %1257 = icmp eq i32 %1256, 0
  br i1 %1257, label %1304, label %1258

; <label>:1258                                    ; preds = %1253
  %1259 = add i32 %60, 476
  %1260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1261 = extractvalue %dx.types.ResRet.i32 %1260, 0
  %1262 = add i32 %1261, 0
  %1263 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1262, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1264 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1263, %dx.types.Handle %116, float %1254, float %1255, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1265 = extractvalue %dx.types.ResRet.f32 %1264, 0
  %1266 = add i32 %60, 116
  %1267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1268 = extractvalue %dx.types.ResRet.i32 %1267, 0
  %1269 = shl i32 %1268, 4
  %1270 = and i32 %1269, 32752
  %1271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1270)  ; LegacyF16ToF32(value)
  %1272 = lshr i32 %1268, 7
  %1273 = and i32 %1272, 32752
  %1274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1273)  ; LegacyF16ToF32(value)
  %1275 = fsub fast float 1.000000e+00, %528
  %1276 = call float @dx.op.binary.f32(i32 35, float %1275, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1277 = bitcast float %528 to i32
  %1278 = sitofp i32 %1277 to float
  %1279 = fadd fast float %1278, 0xC1CFBF8940000000
  %1280 = fmul fast float %1274, %1279
  %1281 = fadd fast float %1280, 0x41CFBF8940000000
  %1282 = fptosi float %1281 to i32
  %1283 = bitcast i32 %1282 to float
  %1284 = bitcast float %1276 to i32
  %1285 = sitofp i32 %1284 to float
  %1286 = fadd fast float %1285, 0xC1CFBF8940000000
  %1287 = fmul fast float %1286, %1274
  %1288 = fadd fast float %1287, 0x41CFBF8940000000
  %1289 = fptosi float %1288 to i32
  %1290 = bitcast i32 %1289 to float
  %1291 = fmul fast float %1283, %1271
  %1292 = fmul fast float %1290, %1271
  %1293 = fsub fast float %1276, %1291
  %1294 = fadd fast float %1292, %1276
  %1295 = call float @dx.op.unary.f32(i32 7, float %1293)  ; Saturate(value)
  %1296 = call float @dx.op.unary.f32(i32 7, float %1294)  ; Saturate(value)
  %1297 = fsub fast float %1265, %1295
  %1298 = fsub fast float %1296, %1295
  %1299 = bitcast float %1298 to i32
  %1300 = sub nsw i32 2129859010, %1299
  %1301 = bitcast i32 %1300 to float
  %1302 = fmul fast float %1301, %1297
  %1303 = call float @dx.op.unary.f32(i32 7, float %1302)  ; Saturate(value)
  br label %1304

; <label>:1304                                    ; preds = %1258, %1253
  %1305 = phi float [ %1303, %1258 ], [ %528, %1253 ]
  %1306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1307 = extractvalue %dx.types.ResRet.i32 %1306, 0
  %1308 = and i32 %1307, 128
  %1309 = icmp eq i32 %1308, 0
  br i1 %1309, label %1326, label %1310

; <label>:1310                                    ; preds = %1304
  %1311 = add i32 %60, 460
  %1312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1311, i32 undef)  ; BufferLoad(srv,index,wot)
  %1313 = extractvalue %dx.types.ResRet.i32 %1312, 0
  %1314 = add i32 %1313, 0
  %1315 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1314, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1316 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1315, %dx.types.Handle %116, float %1254, float %1255, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1317 = extractvalue %dx.types.ResRet.f32 %1316, 0
  %1318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1319 = extractvalue %dx.types.ResRet.i32 %1318, 0
  %1320 = and i32 %1319, 524288
  %1321 = icmp ne i32 %1320, 0
  %1322 = fcmp fast ogt float %1317, 0x3FE0101020000000
  %1323 = select i1 %1322, float 1.000000e+00, float 0.000000e+00
  %1324 = select i1 %1321, float %1323, float %1317
  %1325 = fmul fast float %1324, %1305
  br label %1326

; <label>:1326                                    ; preds = %1310, %1304
  %1327 = phi float [ %1325, %1310 ], [ %1305, %1304 ]
  %1328 = fcmp fast ult float %1327, 0x3F70101020000000
  br i1 %1328, label %1958, label %1329

; <label>:1329                                    ; preds = %1326
  %1330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1331 = extractvalue %dx.types.ResRet.i32 %1330, 0
  %1332 = and i32 %1331, 16
  %1333 = icmp eq i32 %1332, 0
  br i1 %1333, label %1532, label %1334

; <label>:1334                                    ; preds = %1329
  %1335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1170, i32 undef)  ; BufferLoad(srv,index,wot)
  %1336 = extractvalue %dx.types.ResRet.i32 %1335, 0
  %1337 = add i32 %60, 412
  %1338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1337, i32 undef)  ; BufferLoad(srv,index,wot)
  %1339 = extractvalue %dx.types.ResRet.i32 %1338, 0
  %1340 = add i32 %1339, 0
  %1341 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1340, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1342 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1341, %dx.types.Handle %115, float %1254, float %1255, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1343 = extractvalue %dx.types.ResRet.f32 %1342, 0
  %1344 = extractvalue %dx.types.ResRet.f32 %1342, 1
  %1345 = extractvalue %dx.types.ResRet.f32 %1342, 2
  %1346 = extractvalue %dx.types.ResRet.f32 %1342, 3
  %1347 = and i32 %1336, 255
  %1348 = uitofp i32 %1347 to float
  %1349 = lshr i32 %1336, 8
  %1350 = and i32 %1349, 255
  %1351 = uitofp i32 %1350 to float
  %1352 = fmul fast float %1346, %1348
  %1353 = fadd fast float %1352, %1351
  %1354 = fmul fast float %1353, 0x3F70101000000000
  %1355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1356 = extractvalue %dx.types.ResRet.i32 %1355, 0
  %1357 = and i32 %1356, 512
  %1358 = icmp eq i32 %1357, 0
  br i1 %1358, label %1367, label %1359

; <label>:1359                                    ; preds = %1334
  %1360 = add i32 %60, 492
  %1361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1360, i32 undef)  ; BufferLoad(srv,index,wot)
  %1362 = extractvalue %dx.types.ResRet.i32 %1361, 0
  %1363 = add i32 %1362, 0
  %1364 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1363, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1365 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1364, %dx.types.Handle %116, float %1254, float %1255, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1366 = extractvalue %dx.types.ResRet.f32 %1365, 0
  br label %1367

; <label>:1367                                    ; preds = %1359, %1334
  %1368 = phi float [ %1366, %1359 ], [ 1.000000e+00, %1334 ]
  %1369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1370 = extractvalue %dx.types.ResRet.i32 %1369, 0
  %1371 = and i32 %1370, 33554432
  %1372 = icmp eq i32 %1371, 0
  br i1 %1372, label %1479, label %1373

; <label>:1373                                    ; preds = %1367
  %1374 = add i32 %60, 240
  %1375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1374, i32 undef)  ; BufferLoad(srv,index,wot)
  %1376 = extractvalue %dx.types.ResRet.i32 %1375, 0
  %1377 = and i32 %1376, 65535
  %1378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1377)  ; LegacyF16ToF32(value)
  %1379 = lshr i32 %1376, 16
  %1380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1379)  ; LegacyF16ToF32(value)
  %1381 = add i32 %60, 244
  %1382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1381, i32 undef)  ; BufferLoad(srv,index,wot)
  %1383 = extractvalue %dx.types.ResRet.i32 %1382, 0
  %1384 = and i32 %1383, 65535
  %1385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1384)  ; LegacyF16ToF32(value)
  %1386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %1387 = extractvalue %dx.types.ResRet.i32 %1386, 0
  %1388 = lshr i32 %1387, 24
  %1389 = uitofp i32 %1388 to float
  %1390 = fmul fast float %1389, 0x3F70101020000000
  %1391 = and i32 %1387, 255
  %1392 = uitofp i32 %1391 to float
  %1393 = fmul fast float %1392, 0x3F70101020000000
  %1394 = lshr i32 %1387, 8
  %1395 = and i32 %1394, 255
  %1396 = uitofp i32 %1395 to float
  %1397 = fmul fast float %1396, 0x3F70101020000000
  %1398 = lshr i32 %1387, 16
  %1399 = and i32 %1398, 255
  %1400 = uitofp i32 %1399 to float
  %1401 = fmul fast float %1400, 0x3F70101020000000
  %1402 = add i32 %60, 236
  %1403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1402, i32 undef)  ; BufferLoad(srv,index,wot)
  %1404 = extractvalue %dx.types.ResRet.i32 %1403, 0
  %1405 = lshr i32 %1404, 24
  %1406 = uitofp i32 %1405 to float
  %1407 = fmul fast float %1406, 0x3F70101020000000
  %1408 = and i32 %1404, 255
  %1409 = uitofp i32 %1408 to float
  %1410 = fmul fast float %1409, 0x3F70101020000000
  %1411 = lshr i32 %1404, 8
  %1412 = and i32 %1411, 255
  %1413 = uitofp i32 %1412 to float
  %1414 = fmul fast float %1413, 0x3F70101020000000
  %1415 = lshr i32 %1404, 16
  %1416 = and i32 %1415, 255
  %1417 = uitofp i32 %1416 to float
  %1418 = fmul fast float %1417, 0x3F70101020000000
  %1419 = bitcast float %1343 to i32
  %1420 = ashr i32 %1419, 1
  %1421 = sub nsw i32 1597463174, %1420
  %1422 = bitcast i32 %1421 to float
  %1423 = fmul fast float %1343, 5.000000e-01
  %1424 = fmul fast float %1422, %1422
  %1425 = fmul fast float %1424, %1423
  %1426 = fsub fast float 1.500000e+00, %1425
  %1427 = fmul fast float %1422, %1343
  %1428 = fmul fast float %1427, %1426
  %1429 = bitcast float %1344 to i32
  %1430 = ashr i32 %1429, 1
  %1431 = sub nsw i32 1597463174, %1430
  %1432 = bitcast i32 %1431 to float
  %1433 = fmul fast float %1344, 5.000000e-01
  %1434 = fmul fast float %1432, %1432
  %1435 = fmul fast float %1434, %1433
  %1436 = fsub fast float 1.500000e+00, %1435
  %1437 = fmul fast float %1432, %1344
  %1438 = fmul fast float %1437, %1436
  %1439 = bitcast float %1345 to i32
  %1440 = ashr i32 %1439, 1
  %1441 = sub nsw i32 1597463174, %1440
  %1442 = bitcast i32 %1441 to float
  %1443 = fmul fast float %1345, 5.000000e-01
  %1444 = fmul fast float %1442, %1442
  %1445 = fmul fast float %1444, %1443
  %1446 = fsub fast float 1.500000e+00, %1445
  %1447 = fmul fast float %1442, %1345
  %1448 = fmul fast float %1447, %1446
  %1449 = fsub fast float %1428, %1410
  %1450 = fsub fast float %1438, %1414
  %1451 = fsub fast float %1448, %1418
  %1452 = fmul fast float %1449, %1378
  %1453 = fmul fast float %1450, %1380
  %1454 = fmul fast float %1451, %1385
  %1455 = fadd fast float %1452, %1393
  %1456 = fadd fast float %1453, %1397
  %1457 = fadd fast float %1454, %1401
  %1458 = call float @dx.op.unary.f32(i32 7, float %1455)  ; Saturate(value)
  %1459 = call float @dx.op.unary.f32(i32 7, float %1456)  ; Saturate(value)
  %1460 = call float @dx.op.unary.f32(i32 7, float %1457)  ; Saturate(value)
  %1461 = fmul fast float %1458, %1458
  %1462 = fmul fast float %1459, %1459
  %1463 = fmul fast float %1460, %1460
  %1464 = fsub fast float %1461, %1343
  %1465 = fsub fast float %1462, %1344
  %1466 = fsub fast float %1463, %1345
  %1467 = fmul fast float %1464, %1368
  %1468 = fmul fast float %1465, %1368
  %1469 = fmul fast float %1466, %1368
  %1470 = fadd fast float %1467, %1343
  %1471 = fadd fast float %1468, %1344
  %1472 = fadd fast float %1469, %1345
  %1473 = fadd fast float %1390, %1354
  %1474 = fsub fast float %1473, %1407
  %1475 = call float @dx.op.unary.f32(i32 7, float %1474)  ; Saturate(value)
  %1476 = fsub fast float %1475, %1354
  %1477 = fmul fast float %1476, %1368
  %1478 = fadd fast float %1477, %1354
  br label %1532

; <label>:1479                                    ; preds = %1367
  %1480 = and i32 %1370, 134217728
  %1481 = icmp eq i32 %1480, 0
  br i1 %1481, label %1516, label %1482

; <label>:1482                                    ; preds = %1479
  %1483 = call float @dx.op.unary.f32(i32 24, float %360)  ; Sqrt(value)
  %1484 = call float @dx.op.unary.f32(i32 24, float %364)  ; Sqrt(value)
  %1485 = call float @dx.op.unary.f32(i32 24, float %368)  ; Sqrt(value)
  %1486 = fadd fast float %1483, -5.000000e-01
  %1487 = fadd fast float %1484, -5.000000e-01
  %1488 = fadd fast float %1485, -5.000000e-01
  %1489 = fmul fast float %1486, %1368
  %1490 = fmul fast float %1487, %1368
  %1491 = fmul fast float %1488, %1368
  %1492 = fadd fast float %1489, 5.000000e-01
  %1493 = fadd fast float %1490, 5.000000e-01
  %1494 = fadd fast float %1491, 5.000000e-01
  %1495 = call float @dx.op.unary.f32(i32 24, float %1343)  ; Sqrt(value)
  %1496 = call float @dx.op.unary.f32(i32 24, float %1344)  ; Sqrt(value)
  %1497 = call float @dx.op.unary.f32(i32 24, float %1345)  ; Sqrt(value)
  %1498 = fmul fast float %1492, 2.000000e+00
  %1499 = fsub fast float 1.000000e+00, %1498
  %1500 = fmul fast float %1499, %1495
  %1501 = fadd fast float %1500, %1498
  %1502 = fmul fast float %1501, %1495
  %1503 = fmul fast float %1493, 2.000000e+00
  %1504 = fsub fast float 1.000000e+00, %1503
  %1505 = fmul fast float %1504, %1496
  %1506 = fadd fast float %1505, %1503
  %1507 = fmul fast float %1506, %1496
  %1508 = fmul fast float %1494, 2.000000e+00
  %1509 = fsub fast float 1.000000e+00, %1508
  %1510 = fmul fast float %1509, %1497
  %1511 = fadd fast float %1510, %1508
  %1512 = fmul fast float %1511, %1497
  %1513 = fmul fast float %1502, %1502
  %1514 = fmul fast float %1507, %1507
  %1515 = fmul fast float %1512, %1512
  br label %1532

; <label>:1516                                    ; preds = %1479
  %1517 = fmul fast float %360, %360
  %1518 = fmul fast float %364, %364
  %1519 = fmul fast float %368, %368
  %1520 = fadd fast float %1517, -1.000000e+00
  %1521 = fadd fast float %1518, -1.000000e+00
  %1522 = fadd fast float %1519, -1.000000e+00
  %1523 = fmul fast float %1368, %1520
  %1524 = fmul fast float %1368, %1521
  %1525 = fmul fast float %1368, %1522
  %1526 = fadd fast float %1523, 1.000000e+00
  %1527 = fadd fast float %1524, 1.000000e+00
  %1528 = fadd fast float %1525, 1.000000e+00
  %1529 = fmul fast float %1526, %1343
  %1530 = fmul fast float %1527, %1344
  %1531 = fmul fast float %1528, %1345
  br label %1532

; <label>:1532                                    ; preds = %1516, %1482, %1373, %1329
  %1533 = phi float [ %1478, %1373 ], [ %1354, %1482 ], [ %1354, %1516 ], [ 0x3FA23C0BE0000000, %1329 ]
  %1534 = phi float [ %1470, %1373 ], [ %1513, %1482 ], [ %1529, %1516 ], [ 1.000000e+00, %1329 ]
  %1535 = phi float [ %1471, %1373 ], [ %1514, %1482 ], [ %1530, %1516 ], [ 1.000000e+00, %1329 ]
  %1536 = phi float [ %1472, %1373 ], [ %1515, %1482 ], [ %1531, %1516 ], [ 1.000000e+00, %1329 ]
  %1537 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1538 = extractvalue %dx.types.CBufRet.i32 %1537, 1
  %1539 = and i32 %1538, 1
  %1540 = icmp ne i32 %1539, 0
  %1541 = add i32 %60, 356
  %1542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1541, i32 undef)  ; BufferLoad(srv,index,wot)
  %1543 = extractvalue %dx.types.ResRet.i32 %1542, 0
  %1544 = and i32 %1543, 32
  %1545 = icmp ne i32 %1544, 0
  %1546 = and i1 %1540, %1545
  %1547 = select i1 %1546, float 1.000000e+00, float %1534
  %1548 = select i1 %1546, float 0x3FD3333340000000, float %1535
  %1549 = select i1 %1546, float 0x3FD3333340000000, float %1536
  %1550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1551 = extractvalue %dx.types.ResRet.i32 %1550, 0
  %1552 = and i32 %1551, 32
  %1553 = icmp eq i32 %1552, 0
  br i1 %1553, label %1626, label %1554

; <label>:1554                                    ; preds = %1532
  %1555 = add i32 %60, 108
  %1556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1555, i32 undef)  ; BufferLoad(srv,index,wot)
  %1557 = extractvalue %dx.types.ResRet.i32 %1556, 0
  %1558 = add i32 %60, 428
  %1559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1558, i32 undef)  ; BufferLoad(srv,index,wot)
  %1560 = extractvalue %dx.types.ResRet.i32 %1559, 0
  %1561 = add i32 %1560, 0
  %1562 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1561, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1563 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1562, %dx.types.Handle %115, float %1254, float %1255, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1564 = extractvalue %dx.types.ResRet.f32 %1563, 0
  %1565 = extractvalue %dx.types.ResRet.f32 %1563, 1
  %1566 = extractvalue %dx.types.ResRet.f32 %1563, 2
  %1567 = extractvalue %dx.types.ResRet.f32 %1563, 3
  %1568 = and i32 %1557, 255
  %1569 = uitofp i32 %1568 to float
  %1570 = lshr i32 %1557, 8
  %1571 = and i32 %1570, 255
  %1572 = uitofp i32 %1571 to float
  %1573 = lshr i32 %1557, 16
  %1574 = and i32 %1573, 255
  %1575 = uitofp i32 %1574 to float
  %1576 = fmul fast float %1575, 0x3F70101000000000
  %1577 = fmul fast float %1564, %1569
  %1578 = fadd fast float %1577, %1572
  %1579 = fmul fast float %1578, 0x3F70101000000000
  %1580 = fadd fast float %1565, -5.000000e-01
  %1581 = fadd fast float %1567, -5.000000e-01
  %1582 = fmul fast float %1580, %1576
  %1583 = fmul fast float %1581, %1576
  %1584 = fadd fast float %1582, 5.000000e-01
  %1585 = fadd fast float %1583, 5.000000e-01
  %1586 = fmul fast float %1584, 2.000000e+00
  %1587 = fadd fast float %1586, -1.000000e+00
  %1588 = fmul fast float %1585, 2.000000e+00
  %1589 = fadd fast float %1588, -1.000000e+00
  %1590 = fadd fast float %1587, %1589
  %1591 = fmul fast float %1590, 5.000000e-01
  %1592 = fsub fast float %1587, %1589
  %1593 = fmul fast float %1592, 5.000000e-01
  %1594 = call float @dx.op.unary.f32(i32 6, float %1591)  ; FAbs(value)
  %1595 = fsub fast float 1.000000e+00, %1594
  %1596 = call float @dx.op.unary.f32(i32 6, float %1593)  ; FAbs(value)
  %1597 = fsub fast float %1595, %1596
  %1598 = call float @dx.op.dot3.f32(i32 55, float %1591, float %1593, float %1597, float %1591, float %1593, float %1597)  ; Dot3(ax,ay,az,bx,by,bz)
  %1599 = call float @dx.op.unary.f32(i32 25, float %1598)  ; Rsqrt(value)
  %1600 = fmul fast float %1591, %1599
  %1601 = fmul fast float %1593, %1599
  %1602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1603 = extractvalue %dx.types.ResRet.i32 %1602, 0
  %1604 = and i32 %1603, 67108864
  %1605 = icmp eq i32 %1604, 0
  br i1 %1605, label %1622, label %1606

; <label>:1606                                    ; preds = %1554
  %1607 = add i32 %60, 296
  %1608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1607, i32 undef)  ; BufferLoad(srv,index,wot)
  %1609 = extractvalue %dx.types.ResRet.i32 %1608, 0
  %1610 = and i32 %1609, 65535
  %1611 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1610)  ; LegacyF16ToF32(value)
  %1612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1164, i32 undef)  ; BufferLoad(srv,index,wot)
  %1613 = extractvalue %dx.types.ResRet.i32 %1612, 0
  %1614 = and i32 %1613, 65535
  %1615 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1614)  ; LegacyF16ToF32(value)
  %1616 = lshr i32 %1609, 16
  %1617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1616)  ; LegacyF16ToF32(value)
  %1618 = fsub fast float %1579, %1617
  %1619 = fmul fast float %1618, %1611
  %1620 = fadd fast float %1619, %1615
  %1621 = call float @dx.op.unary.f32(i32 7, float %1620)  ; Saturate(value)
  br label %1622

; <label>:1622                                    ; preds = %1606, %1554
  %1623 = phi float [ %1621, %1606 ], [ %1579, %1554 ]
  %1624 = call float @dx.op.dot2.f32(i32 54, float %1600, float %1601, float %1158, float %1159)  ; Dot2(ax,ay,bx,by)
  %1625 = call float @dx.op.dot2.f32(i32 54, float %1600, float %1601, float %1160, float %1161)  ; Dot2(ax,ay,bx,by)
  br label %1626

; <label>:1626                                    ; preds = %1622, %1532
  %1627 = phi float [ %1623, %1622 ], [ 0x3FD6666660000000, %1532 ]
  %1628 = phi float [ %1624, %1622 ], [ 0.000000e+00, %1532 ]
  %1629 = phi float [ %1625, %1622 ], [ 0.000000e+00, %1532 ]
  %1630 = phi float [ %1566, %1622 ], [ 1.000000e+00, %1532 ]
  %1631 = add i32 %60, 176
  %1632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1631, i32 undef)  ; BufferLoad(srv,index,wot)
  %1633 = extractvalue %dx.types.ResRet.i32 %1632, 0
  %1634 = lshr i32 %1633, 22
  %1635 = shl nuw nsw i32 %1634, 5
  %1636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1635)  ; LegacyF16ToF32(value)
  %1637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1638 = extractvalue %dx.types.ResRet.i32 %1637, 0
  %1639 = and i32 %1638, 64
  %1640 = icmp eq i32 %1639, 0
  br i1 %1640, label %1674, label %1641

; <label>:1641                                    ; preds = %1626
  %1642 = add i32 %60, 444
  %1643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1642, i32 undef)  ; BufferLoad(srv,index,wot)
  %1644 = extractvalue %dx.types.ResRet.i32 %1643, 0
  %1645 = add i32 %1644, 0
  %1646 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1645, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1648 = extractvalue %dx.types.ResRet.i32 %1647, 0
  %1649 = and i32 %1648, 131072
  %1650 = icmp eq i32 %1649, 0
  %1651 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1646, %dx.types.Handle %115, float %1254, float %1255, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1652 = extractvalue %dx.types.ResRet.f32 %1651, 0
  %1653 = extractvalue %dx.types.ResRet.f32 %1651, 1
  %1654 = extractvalue %dx.types.ResRet.f32 %1651, 2
  %1655 = fmul fast float %1652, %348
  %1656 = fmul fast float %1653, %351
  %1657 = fmul fast float %1654, %354
  br i1 %1650, label %1664, label %1658

; <label>:1658                                    ; preds = %1641
  %1659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1660 = extractvalue %dx.types.CBufRet.f32 %1659, 0
  %1661 = fmul fast float %1660, %1655
  %1662 = fmul fast float %1660, %1656
  %1663 = fmul fast float %1660, %1657
  br label %1664

; <label>:1664                                    ; preds = %1658, %1641
  %1665 = phi float [ %1661, %1658 ], [ %1655, %1641 ]
  %1666 = phi float [ %1662, %1658 ], [ %1656, %1641 ]
  %1667 = phi float [ %1663, %1658 ], [ %1657, %1641 ]
  %1668 = fmul fast float %1665, %1636
  %1669 = select i1 %289, float %1668, float %1665
  %1670 = call float @dx.op.dot3.f32(i32 55, float %1669, float %1666, float %1667, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1671 = select i1 %289, float 0.000000e+00, float %1665
  %1672 = select i1 %289, float %1670, float %1666
  %1673 = select i1 %289, float 0.000000e+00, float %1667
  br label %1674

; <label>:1674                                    ; preds = %1664, %1626
  %1675 = phi float [ %1671, %1664 ], [ 0.000000e+00, %1626 ]
  %1676 = phi float [ %1672, %1664 ], [ 0.000000e+00, %1626 ]
  %1677 = phi float [ %1673, %1664 ], [ 0.000000e+00, %1626 ]
  %1678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1679 = extractvalue %dx.types.ResRet.i32 %1678, 0
  %1680 = and i32 %1679, 10240
  %1681 = icmp eq i32 %1680, 0
  br i1 %1681, label %1726, label %1682

; <label>:1682                                    ; preds = %1674
  %1683 = add i32 %60, 508
  %1684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1683, i32 undef)  ; BufferLoad(srv,index,wot)
  %1685 = extractvalue %dx.types.ResRet.i32 %1684, 0
  %1686 = add i32 %1685, 0
  %1687 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1686, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1688 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1687, %dx.types.Handle %116, float %1254, float %1255, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1689 = extractvalue %dx.types.ResRet.f32 %1688, 1
  %1690 = extractvalue %dx.types.ResRet.f32 %1688, 3
  %1691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1692 = extractvalue %dx.types.ResRet.i32 %1691, 0
  %1693 = and i32 %1692, 1048576
  %1694 = icmp ne i32 %1693, 0
  %1695 = and i32 %1692, 8192
  %1696 = icmp eq i32 %1695, 0
  br i1 %1696, label %1712, label %1697

; <label>:1697                                    ; preds = %1682
  %1698 = extractvalue %dx.types.ResRet.f32 %1688, 2
  %1699 = select i1 %1694, float %1698, float %1689
  %1700 = extractvalue %dx.types.ResRet.f32 %1688, 0
  %1701 = select i1 %1694, float %1700, float %1689
  %1702 = add i32 %60, 112
  %1703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1702, i32 undef)  ; BufferLoad(srv,index,wot)
  %1704 = extractvalue %dx.types.ResRet.i32 %1703, 0
  %1705 = lshr i32 %1704, 16
  %1706 = and i32 %1705, 255
  %1707 = uitofp i32 %1706 to float
  %1708 = fmul fast float %1707, 0x3F80101020000000
  %1709 = fmul fast float %1708, %1701
  %1710 = fmul fast float %1708, %1689
  %1711 = fmul fast float %1708, %1699
  br label %1712

; <label>:1712                                    ; preds = %1697, %1682
  %1713 = phi float [ %1709, %1697 ], [ 0.000000e+00, %1682 ]
  %1714 = phi float [ %1710, %1697 ], [ 0.000000e+00, %1682 ]
  %1715 = phi float [ %1711, %1697 ], [ 0.000000e+00, %1682 ]
  %1716 = and i32 %1692, 2048
  %1717 = icmp eq i32 %1716, 0
  br i1 %1717, label %1726, label %1718

; <label>:1718                                    ; preds = %1712
  %1719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1631, i32 undef)  ; BufferLoad(srv,index,wot)
  %1720 = extractvalue %dx.types.ResRet.i32 %1719, 0
  %1721 = shl i32 %1720, 4
  %1722 = and i32 %1721, 32752
  %1723 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1722)  ; LegacyF16ToF32(value)
  %1724 = fmul fast float %1723, %1690
  %1725 = call float @dx.op.binary.f32(i32 35, float %1724, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1726

; <label>:1726                                    ; preds = %1718, %1712, %1674
  %1727 = phi float [ %1713, %1718 ], [ %1713, %1712 ], [ 0.000000e+00, %1674 ]
  %1728 = phi float [ %1714, %1718 ], [ %1714, %1712 ], [ 0.000000e+00, %1674 ]
  %1729 = phi float [ %1715, %1718 ], [ %1715, %1712 ], [ 0.000000e+00, %1674 ]
  %1730 = phi float [ %1725, %1718 ], [ 0x3F70101020000000, %1712 ], [ 0x3F70101020000000, %1674 ]
  %1731 = add i32 %60, 112
  %1732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1731, i32 undef)  ; BufferLoad(srv,index,wot)
  %1733 = extractvalue %dx.types.ResRet.i32 %1732, 0
  %1734 = and i32 %1733, 255
  %1735 = uitofp i32 %1734 to float
  %1736 = lshr i32 %1733, 8
  %1737 = and i32 %1736, 255
  %1738 = uitofp i32 %1737 to float
  %1739 = call float @dx.op.dot3.f32(i32 55, float %1547, float %1548, float %1549, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1740 = fmul fast float %1738, %1739
  %1741 = fadd fast float %1740, %1735
  %1742 = fmul fast float %1741, 0x3F70101020000000
  %1743 = call float @dx.op.unary.f32(i32 7, float %1742)  ; Saturate(value)
  br i1 %1146, label %1744, label %1752

; <label>:1744                                    ; preds = %1726
  %1745 = fsub fast float 1.000000e+00, %1327
  %1746 = fmul fast float %1745, %1133
  %1747 = fmul fast float %1745, %1134
  %1748 = fmul fast float %1745, %1135
  %1749 = fmul fast float %1745, %1136
  %1750 = fmul fast float %1745, %1137
  %1751 = fmul fast float %1745, %1138
  br label %1752

; <label>:1752                                    ; preds = %1744, %1726
  %1753 = phi float [ %1746, %1744 ], [ %1133, %1726 ]
  %1754 = phi float [ %1747, %1744 ], [ %1134, %1726 ]
  %1755 = phi float [ %1748, %1744 ], [ %1135, %1726 ]
  %1756 = phi float [ %1749, %1744 ], [ %1136, %1726 ]
  %1757 = phi float [ %1750, %1744 ], [ %1137, %1726 ]
  %1758 = phi float [ %1751, %1744 ], [ %1138, %1726 ]
  %1759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1760 = extractvalue %dx.types.ResRet.i32 %1759, 0
  %1761 = and i32 %1760, 3
  %1762 = icmp eq i32 %1761, 3
  br i1 %1762, label %1841, label %1763

; <label>:1763                                    ; preds = %1752
  %1764 = and i32 %1760, 16
  %1765 = icmp ne i32 %1764, 0
  %1766 = select i1 %1765, float %1327, float 0.000000e+00
  %1767 = icmp eq i32 %1761, 0
  br i1 %1767, label %1768, label %1796

; <label>:1768                                    ; preds = %1763
  %1769 = and i32 %1760, 64
  %1770 = icmp ne i32 %1769, 0
  %1771 = select i1 %1770, float %1327, float 0.000000e+00
  %1772 = fsub fast float %1547, %1753
  %1773 = fsub fast float %1548, %1754
  %1774 = fsub fast float %1549, %1755
  %1775 = fmul fast float %1766, %1772
  %1776 = fmul fast float %1766, %1773
  %1777 = fmul fast float %1766, %1774
  %1778 = fadd fast float %1775, %1753
  %1779 = fadd fast float %1776, %1754
  %1780 = fadd fast float %1777, %1755
  %1781 = fsub fast float %1533, %1139
  %1782 = fmul fast float %1766, %1781
  %1783 = fadd fast float %1782, %1139
  %1784 = fsub fast float %1675, %1756
  %1785 = fsub fast float %1676, %1757
  %1786 = fsub fast float %1677, %1758
  %1787 = fmul fast float %1771, %1784
  %1788 = fmul fast float %1771, %1785
  %1789 = fmul fast float %1771, %1786
  %1790 = fadd fast float %1787, %1756
  %1791 = fadd fast float %1788, %1757
  %1792 = fadd fast float %1789, %1758
  %1793 = fsub fast float %1743, %1144
  %1794 = fmul fast float %1766, %1793
  %1795 = fadd fast float %1794, %1144
  br label %1841

; <label>:1796                                    ; preds = %1763
  %1797 = icmp eq i32 %1761, 1
  br i1 %1797, label %1798, label %1811

; <label>:1798                                    ; preds = %1796
  %1799 = fadd fast float %1547, -1.000000e+00
  %1800 = fadd fast float %1548, -1.000000e+00
  %1801 = fadd fast float %1549, -1.000000e+00
  %1802 = fmul fast float %1766, %1799
  %1803 = fmul fast float %1766, %1800
  %1804 = fmul fast float %1766, %1801
  %1805 = fadd fast float %1802, 1.000000e+00
  %1806 = fadd fast float %1803, 1.000000e+00
  %1807 = fadd fast float %1804, 1.000000e+00
  %1808 = fmul fast float %1805, %1753
  %1809 = fmul fast float %1806, %1754
  %1810 = fmul fast float %1807, %1755
  br label %1841

; <label>:1811                                    ; preds = %1796
  %1812 = icmp eq i32 %1761, 2
  br i1 %1812, label %1813, label %1841

; <label>:1813                                    ; preds = %1811
  %1814 = call float @dx.op.unary.f32(i32 24, float %1547)  ; Sqrt(value)
  %1815 = call float @dx.op.unary.f32(i32 24, float %1548)  ; Sqrt(value)
  %1816 = call float @dx.op.unary.f32(i32 24, float %1549)  ; Sqrt(value)
  %1817 = fadd fast float %1814, -5.000000e-01
  %1818 = fadd fast float %1815, -5.000000e-01
  %1819 = fadd fast float %1816, -5.000000e-01
  %1820 = fmul fast float %1817, %1766
  %1821 = fmul fast float %1818, %1766
  %1822 = fmul fast float %1819, %1766
  %1823 = fadd fast float %1820, 5.000000e-01
  %1824 = fadd fast float %1821, 5.000000e-01
  %1825 = fadd fast float %1822, 5.000000e-01
  %1826 = fmul fast float %1823, 2.000000e+00
  %1827 = fsub fast float 1.000000e+00, %1826
  %1828 = fmul fast float %1827, %1753
  %1829 = fadd fast float %1828, %1826
  %1830 = fmul fast float %1829, %1753
  %1831 = fmul fast float %1824, 2.000000e+00
  %1832 = fsub fast float 1.000000e+00, %1831
  %1833 = fmul fast float %1832, %1754
  %1834 = fadd fast float %1833, %1831
  %1835 = fmul fast float %1834, %1754
  %1836 = fmul fast float %1825, 2.000000e+00
  %1837 = fsub fast float 1.000000e+00, %1836
  %1838 = fmul fast float %1837, %1755
  %1839 = fadd fast float %1838, %1836
  %1840 = fmul fast float %1839, %1755
  br label %1841

; <label>:1841                                    ; preds = %1813, %1811, %1798, %1768, %1752
  %1842 = phi float [ %1753, %1752 ], [ %1830, %1813 ], [ %1753, %1811 ], [ %1808, %1798 ], [ %1778, %1768 ]
  %1843 = phi float [ %1754, %1752 ], [ %1835, %1813 ], [ %1754, %1811 ], [ %1809, %1798 ], [ %1779, %1768 ]
  %1844 = phi float [ %1755, %1752 ], [ %1840, %1813 ], [ %1755, %1811 ], [ %1810, %1798 ], [ %1780, %1768 ]
  %1845 = phi float [ %1756, %1752 ], [ %1756, %1813 ], [ %1756, %1811 ], [ %1756, %1798 ], [ %1790, %1768 ]
  %1846 = phi float [ %1757, %1752 ], [ %1757, %1813 ], [ %1757, %1811 ], [ %1757, %1798 ], [ %1791, %1768 ]
  %1847 = phi float [ %1758, %1752 ], [ %1758, %1813 ], [ %1758, %1811 ], [ %1758, %1798 ], [ %1792, %1768 ]
  %1848 = phi float [ %1139, %1752 ], [ %1139, %1813 ], [ %1139, %1811 ], [ %1139, %1798 ], [ %1783, %1768 ]
  %1849 = phi float [ %1144, %1752 ], [ %1144, %1813 ], [ %1144, %1811 ], [ %1144, %1798 ], [ %1795, %1768 ]
  %1850 = and i32 %1760, 12
  %1851 = icmp eq i32 %1850, 12
  br i1 %1851, label %1958, label %1852

; <label>:1852                                    ; preds = %1841
  %1853 = and i32 %1760, 2097184
  %1854 = icmp eq i32 %1853, 2097184
  %1855 = select i1 %1854, float %1327, float 0.000000e+00
  %1856 = and i32 %1760, 4194336
  %1857 = icmp eq i32 %1856, 4194336
  %1858 = select i1 %1857, float %1327, float 0.000000e+00
  %1859 = and i32 %1760, 8388640
  %1860 = icmp eq i32 %1859, 8388640
  %1861 = select i1 %1860, float %1327, float 0.000000e+00
  %1862 = and i32 %1760, 2048
  %1863 = icmp ne i32 %1862, 0
  %1864 = select i1 %1863, float %1327, float 0.000000e+00
  %1865 = and i32 %1760, 8192
  %1866 = icmp ne i32 %1865, 0
  %1867 = select i1 %1866, float %1327, float 0.000000e+00
  %1868 = icmp eq i32 %1850, 0
  br i1 %1868, label %1869, label %1894

; <label>:1869                                    ; preds = %1852
  %1870 = fsub fast float %1628, %1128
  %1871 = fsub fast float %1629, %1129
  %1872 = fmul fast float %1855, %1870
  %1873 = fmul fast float %1855, %1871
  %1874 = fadd fast float %1872, %1128
  %1875 = fadd fast float %1873, %1129
  %1876 = fsub fast float %1630, %1142
  %1877 = fmul fast float %1858, %1876
  %1878 = fadd fast float %1877, %1142
  %1879 = fsub fast float %1627, %1141
  %1880 = fmul fast float %1861, %1879
  %1881 = fadd fast float %1880, %1141
  %1882 = fsub fast float %1730, %1143
  %1883 = fmul fast float %1864, %1882
  %1884 = fadd fast float %1883, %1143
  %1885 = fsub fast float %1727, %1130
  %1886 = fsub fast float %1728, %1131
  %1887 = fsub fast float %1729, %1132
  %1888 = fmul fast float %1867, %1885
  %1889 = fmul fast float %1867, %1886
  %1890 = fmul fast float %1867, %1887
  %1891 = fadd fast float %1888, %1130
  %1892 = fadd fast float %1889, %1131
  %1893 = fadd fast float %1890, %1132
  br label %1958

; <label>:1894                                    ; preds = %1852
  %1895 = icmp eq i32 %1850, 4
  br i1 %1895, label %1896, label %1936

; <label>:1896                                    ; preds = %1894
  %1897 = fmul fast float %1855, %1628
  %1898 = fmul fast float %1855, %1629
  %1899 = fadd fast float %1897, %1128
  %1900 = fadd fast float %1898, %1129
  %1901 = call float @dx.op.binary.f32(i32 36, float %1142, float %1630)  ; FMin(a,b)
  %1902 = fsub fast float %1901, %1142
  %1903 = fmul fast float %1902, %1858
  %1904 = fadd fast float %1903, %1142
  %1905 = fadd fast float %1627, %1141
  %1906 = fmul fast float %1905, 0x3FF337FAE0000000
  %1907 = fmul fast float %1141, %1141
  %1908 = fmul fast float %1627, %1627
  %1909 = fadd fast float %1908, %1907
  %1910 = fmul fast float %1909, 0x3FE5152B00000000
  %1911 = fmul fast float %1141, 0xBFCC1F85E0000000
  %1912 = fmul fast float %1911, %1627
  %1913 = fadd fast float %1912, 0xBFE1363700000000
  %1914 = fadd fast float %1913, %1906
  %1915 = fsub fast float %1914, %1910
  %1916 = fmul fast float %1905, 0x3FBA6F0D00000000
  %1917 = fmul fast float %1909, 0x3FD0432880000000
  %1918 = fmul fast float %1141, 0xBFEF110800000000
  %1919 = fmul fast float %1918, %1627
  %1920 = fadd fast float %1919, 1.000000e+00
  %1921 = fsub fast float %1920, %1916
  %1922 = fadd fast float %1921, %1917
  %1923 = fdiv fast float %1915, %1922
  %1924 = call float @dx.op.unary.f32(i32 7, float %1923)  ; Saturate(value)
  %1925 = fsub fast float %1924, %1141
  %1926 = fmul fast float %1925, %1861
  %1927 = fadd fast float %1926, %1141
  %1928 = fmul fast float %1864, %1730
  %1929 = fadd fast float %1928, %1143
  %1930 = fmul fast float %1867, %1727
  %1931 = fmul fast float %1867, %1728
  %1932 = fmul fast float %1867, %1729
  %1933 = fadd fast float %1930, %1130
  %1934 = fadd fast float %1931, %1131
  %1935 = fadd fast float %1932, %1132
  br label %1958

; <label>:1936                                    ; preds = %1894
  %1937 = icmp eq i32 %1850, 8
  br i1 %1937, label %1938, label %1958

; <label>:1938                                    ; preds = %1936
  %1939 = fmul fast float %1855, %1628
  %1940 = fmul fast float %1855, %1629
  %1941 = fadd fast float %1939, %1128
  %1942 = fadd fast float %1940, %1129
  %1943 = call float @dx.op.binary.f32(i32 36, float %1142, float %1630)  ; FMin(a,b)
  %1944 = fsub fast float %1943, %1142
  %1945 = fmul fast float %1944, %1858
  %1946 = fadd fast float %1945, %1142
  %1947 = fsub fast float %1627, %1141
  %1948 = fmul fast float %1861, %1947
  %1949 = fadd fast float %1948, %1141
  %1950 = fmul fast float %1864, %1730
  %1951 = fadd fast float %1950, %1143
  %1952 = fmul fast float %1867, %1727
  %1953 = fmul fast float %1867, %1728
  %1954 = fmul fast float %1867, %1729
  %1955 = fadd fast float %1952, %1130
  %1956 = fadd fast float %1953, %1131
  %1957 = fadd fast float %1954, %1132
  br label %1958

; <label>:1958                                    ; preds = %1938, %1936, %1896, %1869, %1841, %1326, %1145, %1127
  %1959 = phi float [ %1128, %1841 ], [ %1128, %1326 ], [ %1128, %1127 ], [ %1941, %1938 ], [ %1128, %1936 ], [ %1899, %1896 ], [ %1874, %1869 ], [ %1128, %1145 ]
  %1960 = phi float [ %1129, %1841 ], [ %1129, %1326 ], [ %1129, %1127 ], [ %1942, %1938 ], [ %1129, %1936 ], [ %1900, %1896 ], [ %1875, %1869 ], [ %1129, %1145 ]
  %1961 = phi float [ %1130, %1841 ], [ %1130, %1326 ], [ %1130, %1127 ], [ %1955, %1938 ], [ %1130, %1936 ], [ %1933, %1896 ], [ %1891, %1869 ], [ %1130, %1145 ]
  %1962 = phi float [ %1131, %1841 ], [ %1131, %1326 ], [ %1131, %1127 ], [ %1956, %1938 ], [ %1131, %1936 ], [ %1934, %1896 ], [ %1892, %1869 ], [ %1131, %1145 ]
  %1963 = phi float [ %1132, %1841 ], [ %1132, %1326 ], [ %1132, %1127 ], [ %1957, %1938 ], [ %1132, %1936 ], [ %1935, %1896 ], [ %1893, %1869 ], [ %1132, %1145 ]
  %1964 = phi float [ %1842, %1841 ], [ %1133, %1326 ], [ %1133, %1127 ], [ %1842, %1938 ], [ %1842, %1936 ], [ %1842, %1896 ], [ %1842, %1869 ], [ %1133, %1145 ]
  %1965 = phi float [ %1843, %1841 ], [ %1134, %1326 ], [ %1134, %1127 ], [ %1843, %1938 ], [ %1843, %1936 ], [ %1843, %1896 ], [ %1843, %1869 ], [ %1134, %1145 ]
  %1966 = phi float [ %1844, %1841 ], [ %1135, %1326 ], [ %1135, %1127 ], [ %1844, %1938 ], [ %1844, %1936 ], [ %1844, %1896 ], [ %1844, %1869 ], [ %1135, %1145 ]
  %1967 = phi float [ %1845, %1841 ], [ %1136, %1326 ], [ %1136, %1127 ], [ %1845, %1938 ], [ %1845, %1936 ], [ %1845, %1896 ], [ %1845, %1869 ], [ %1136, %1145 ]
  %1968 = phi float [ %1846, %1841 ], [ %1137, %1326 ], [ %1137, %1127 ], [ %1846, %1938 ], [ %1846, %1936 ], [ %1846, %1896 ], [ %1846, %1869 ], [ %1137, %1145 ]
  %1969 = phi float [ %1847, %1841 ], [ %1138, %1326 ], [ %1138, %1127 ], [ %1847, %1938 ], [ %1847, %1936 ], [ %1847, %1896 ], [ %1847, %1869 ], [ %1138, %1145 ]
  %1970 = phi float [ %1848, %1841 ], [ %1139, %1326 ], [ %1139, %1127 ], [ %1848, %1938 ], [ %1848, %1936 ], [ %1848, %1896 ], [ %1848, %1869 ], [ %1139, %1145 ]
  %1971 = phi float [ %1141, %1841 ], [ %1141, %1326 ], [ %1141, %1127 ], [ %1949, %1938 ], [ %1141, %1936 ], [ %1927, %1896 ], [ %1881, %1869 ], [ %1141, %1145 ]
  %1972 = phi float [ %1142, %1841 ], [ %1142, %1326 ], [ %1142, %1127 ], [ %1946, %1938 ], [ %1142, %1936 ], [ %1904, %1896 ], [ %1878, %1869 ], [ %1142, %1145 ]
  %1973 = phi float [ %1143, %1841 ], [ %1143, %1326 ], [ %1143, %1127 ], [ %1951, %1938 ], [ %1143, %1936 ], [ %1929, %1896 ], [ %1884, %1869 ], [ %1143, %1145 ]
  %1974 = phi float [ %1849, %1841 ], [ %1144, %1326 ], [ %1144, %1127 ], [ %1849, %1938 ], [ %1849, %1936 ], [ %1849, %1896 ], [ %1849, %1869 ], [ %1144, %1145 ]
  br i1 %475, label %2788, label %1975

; <label>:1975                                    ; preds = %1958
  %1976 = icmp ult i32 %531, 3
  %1977 = add i32 %60, 56
  %1978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1977, i32 undef)  ; BufferLoad(srv,index,wot)
  %1979 = extractvalue %dx.types.ResRet.i32 %1978, 0
  %1980 = add i32 %60, 60
  %1981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1980, i32 undef)  ; BufferLoad(srv,index,wot)
  %1982 = extractvalue %dx.types.ResRet.i32 %1981, 0
  %1983 = or i32 %1982, %1979
  %1984 = icmp eq i32 %1983, 0
  br i1 %1984, label %2788, label %1985

; <label>:1985                                    ; preds = %1975
  %1986 = and i32 %1979, 262144
  %1987 = icmp ne i32 %1986, 0
  %1988 = select i1 %1987, float %65, float 1.000000e+00
  %1989 = select i1 %1987, float %66, float 0.000000e+00
  %1990 = select i1 %1987, float %67, float 0.000000e+00
  %1991 = select i1 %1987, float %68, float 1.000000e+00
  %1992 = select i1 %1987, float %69, float %97
  %1993 = select i1 %1987, float %70, float %98
  %1994 = add i32 %60, 316
  %1995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1994, i32 undef)  ; BufferLoad(srv,index,wot)
  %1996 = extractvalue %dx.types.ResRet.i32 %1995, 0
  %1997 = lshr i32 %1996, 16
  %1998 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1997)  ; LegacyF16ToF32(value)
  %1999 = fmul fast float %1998, 0x3F50624DE0000000
  %2000 = add i32 %60, 120
  %2001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2000, i32 undef)  ; BufferLoad(srv,index,wot)
  %2002 = extractvalue %dx.types.ResRet.i32 %2001, 0
  %2003 = lshr i32 %2002, 16
  %2004 = and i32 %2003, 255
  %2005 = lshr i32 %2002, 24
  %2006 = add i32 %60, 324
  %2007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2006, i32 undef)  ; BufferLoad(srv,index,wot)
  %2008 = extractvalue %dx.types.ResRet.i32 %2007, 0
  %2009 = and i32 %2008, 65535
  %2010 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2009)  ; LegacyF16ToF32(value)
  %2011 = lshr i32 %2008, 16
  %2012 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2011)  ; LegacyF16ToF32(value)
  %2013 = add i32 %60, 64
  %2014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2013, i32 undef)  ; BufferLoad(srv,index,wot)
  %2015 = extractvalue %dx.types.ResRet.i32 %2014, 0
  %2016 = lshr i32 %2015, 22
  %2017 = shl nuw nsw i32 %2016, 5
  %2018 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2017)  ; LegacyF16ToF32(value)
  %2019 = shl i32 %2015, 4
  %2020 = and i32 %2019, 32752
  %2021 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2020)  ; LegacyF16ToF32(value)
  %2022 = lshr i32 %2015, 7
  %2023 = and i32 %2022, 32752
  %2024 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2023)  ; LegacyF16ToF32(value)
  %2025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2026 = extractvalue %dx.types.CBufRet.f32 %2025, 3
  %2027 = fmul fast float %2026, 1.000000e+03
  %2028 = fmul fast float %425, %2027
  %2029 = call float @dx.op.unary.f32(i32 22, float %2028)  ; Frc(value)
  %2030 = fadd fast float %2029, %415
  %2031 = fmul fast float %426, %2027
  %2032 = call float @dx.op.unary.f32(i32 22, float %2031)  ; Frc(value)
  %2033 = fadd fast float %2032, %417
  %2034 = fmul fast float %1999, %2027
  %2035 = call float @dx.op.unary.f32(i32 22, float %2034)  ; Frc(value)
  %2036 = fmul fast float %2035, 0x401921FB60000000
  %2037 = fadd fast float %2036, %2018
  %2038 = call float @dx.op.unary.f32(i32 13, float %2037)  ; Sin(value)
  %2039 = call float @dx.op.unary.f32(i32 12, float %2037)  ; Cos(value)
  %2040 = fsub fast float -0.000000e+00, %2038
  %2041 = fadd fast float %1992, -5.000000e-01
  %2042 = fadd fast float %1993, -5.000000e-01
  %2043 = fmul fast float %2010, %2041
  %2044 = fmul fast float %2012, %2042
  %2045 = fadd fast float %2043, 5.000000e-01
  %2046 = fadd fast float %2044, 5.000000e-01
  %2047 = fmul fast float %2021, %2045
  %2048 = fmul fast float %2024, %2046
  %2049 = fmul fast float %2039, %2047
  %2050 = call float @dx.op.tertiary.f32(i32 46, float %2040, float %2048, float %2049)  ; FMad(a,b,c)
  %2051 = fmul fast float %2038, %2047
  %2052 = call float @dx.op.tertiary.f32(i32 46, float %2039, float %2048, float %2051)  ; FMad(a,b,c)
  %2053 = fadd fast float %2030, %2050
  %2054 = fadd fast float %2033, %2052
  %2055 = icmp ugt i32 %2004, 1
  %2056 = icmp ugt i32 %2002, 33554431
  %2057 = or i1 %2056, %2055
  br i1 %2057, label %2058, label %2083

; <label>:2058                                    ; preds = %1985
  %2059 = add i32 %60, 260
  %2060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2059, i32 undef)  ; BufferLoad(srv,index,wot)
  %2061 = extractvalue %dx.types.ResRet.i32 %2060, 0
  %2062 = lshr i32 %2061, 16
  %2063 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2062)  ; LegacyF16ToF32(value)
  %2064 = fmul fast float %2026, %2063
  %2065 = call float @dx.op.unary.f32(i32 22, float %2064)  ; Frc(value)
  %2066 = mul nuw nsw i32 %2004, %2005
  %2067 = uitofp i32 %2066 to float
  %2068 = fmul fast float %2065, %2067
  %2069 = call float @dx.op.unary.f32(i32 27, float %2068)  ; Round_ni(value)
  %2070 = fptoui float %2069 to i32
  %2071 = urem i32 %2070, %2004
  %2072 = udiv i32 %2070, %2005
  %2073 = call float @dx.op.unary.f32(i32 22, float %2053)  ; Frc(value)
  %2074 = call float @dx.op.unary.f32(i32 22, float %2054)  ; Frc(value)
  %2075 = uitofp i32 %2071 to float
  %2076 = uitofp i32 %2072 to float
  %2077 = fadd fast float %2073, %2075
  %2078 = fadd fast float %2074, %2076
  %2079 = uitofp i32 %2004 to float
  %2080 = uitofp i32 %2005 to float
  %2081 = fdiv fast float %2077, %2079
  %2082 = fdiv fast float %2078, %2080
  br label %2083

; <label>:2083                                    ; preds = %2058, %1985
  %2084 = phi float [ %2081, %2058 ], [ %2053, %1985 ]
  %2085 = phi float [ %2082, %2058 ], [ %2054, %1985 ]
  %2086 = and i32 %1979, 256
  %2087 = icmp eq i32 %2086, 0
  br i1 %2087, label %2134, label %2088

; <label>:2088                                    ; preds = %2083
  %2089 = add i32 %60, 480
  %2090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2089, i32 undef)  ; BufferLoad(srv,index,wot)
  %2091 = extractvalue %dx.types.ResRet.i32 %2090, 0
  %2092 = add i32 %2091, 0
  %2093 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2092, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2094 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2093, %dx.types.Handle %116, float %2084, float %2085, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2095 = extractvalue %dx.types.ResRet.f32 %2094, 0
  %2096 = add i32 %60, 132
  %2097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2096, i32 undef)  ; BufferLoad(srv,index,wot)
  %2098 = extractvalue %dx.types.ResRet.i32 %2097, 0
  %2099 = shl i32 %2098, 4
  %2100 = and i32 %2099, 32752
  %2101 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2100)  ; LegacyF16ToF32(value)
  %2102 = lshr i32 %2098, 7
  %2103 = and i32 %2102, 32752
  %2104 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2103)  ; LegacyF16ToF32(value)
  %2105 = fsub fast float 1.000000e+00, %527
  %2106 = call float @dx.op.binary.f32(i32 35, float %2105, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2107 = bitcast float %527 to i32
  %2108 = sitofp i32 %2107 to float
  %2109 = fadd fast float %2108, 0xC1CFBF8940000000
  %2110 = fmul fast float %2104, %2109
  %2111 = fadd fast float %2110, 0x41CFBF8940000000
  %2112 = fptosi float %2111 to i32
  %2113 = bitcast i32 %2112 to float
  %2114 = bitcast float %2106 to i32
  %2115 = sitofp i32 %2114 to float
  %2116 = fadd fast float %2115, 0xC1CFBF8940000000
  %2117 = fmul fast float %2116, %2104
  %2118 = fadd fast float %2117, 0x41CFBF8940000000
  %2119 = fptosi float %2118 to i32
  %2120 = bitcast i32 %2119 to float
  %2121 = fmul fast float %2113, %2101
  %2122 = fmul fast float %2120, %2101
  %2123 = fsub fast float %2106, %2121
  %2124 = fadd fast float %2122, %2106
  %2125 = call float @dx.op.unary.f32(i32 7, float %2123)  ; Saturate(value)
  %2126 = call float @dx.op.unary.f32(i32 7, float %2124)  ; Saturate(value)
  %2127 = fsub fast float %2095, %2125
  %2128 = fsub fast float %2126, %2125
  %2129 = bitcast float %2128 to i32
  %2130 = sub nsw i32 2129859010, %2129
  %2131 = bitcast i32 %2130 to float
  %2132 = fmul fast float %2131, %2127
  %2133 = call float @dx.op.unary.f32(i32 7, float %2132)  ; Saturate(value)
  br label %2134

; <label>:2134                                    ; preds = %2088, %2083
  %2135 = phi float [ %2133, %2088 ], [ %527, %2083 ]
  %2136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1977, i32 undef)  ; BufferLoad(srv,index,wot)
  %2137 = extractvalue %dx.types.ResRet.i32 %2136, 0
  %2138 = and i32 %2137, 128
  %2139 = icmp eq i32 %2138, 0
  br i1 %2139, label %2156, label %2140

; <label>:2140                                    ; preds = %2134
  %2141 = add i32 %60, 464
  %2142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2141, i32 undef)  ; BufferLoad(srv,index,wot)
  %2143 = extractvalue %dx.types.ResRet.i32 %2142, 0
  %2144 = add i32 %2143, 0
  %2145 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2144, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2146 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2145, %dx.types.Handle %116, float %2084, float %2085, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2147 = extractvalue %dx.types.ResRet.f32 %2146, 0
  %2148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1977, i32 undef)  ; BufferLoad(srv,index,wot)
  %2149 = extractvalue %dx.types.ResRet.i32 %2148, 0
  %2150 = and i32 %2149, 524288
  %2151 = icmp ne i32 %2150, 0
  %2152 = fcmp fast ogt float %2147, 0x3FE0101020000000
  %2153 = select i1 %2152, float 1.000000e+00, float 0.000000e+00
  %2154 = select i1 %2151, float %2153, float %2147
  %2155 = fmul fast float %2154, %2135
  br label %2156

; <label>:2156                                    ; preds = %2140, %2134
  %2157 = phi float [ %2155, %2140 ], [ %2135, %2134 ]
  %2158 = fcmp fast ult float %2157, 0x3F70101020000000
  br i1 %2158, label %2788, label %2159

; <label>:2159                                    ; preds = %2156
  %2160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1977, i32 undef)  ; BufferLoad(srv,index,wot)
  %2161 = extractvalue %dx.types.ResRet.i32 %2160, 0
  %2162 = and i32 %2161, 16
  %2163 = icmp eq i32 %2162, 0
  br i1 %2163, label %2362, label %2164

; <label>:2164                                    ; preds = %2159
  %2165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2000, i32 undef)  ; BufferLoad(srv,index,wot)
  %2166 = extractvalue %dx.types.ResRet.i32 %2165, 0
  %2167 = add i32 %60, 416
  %2168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2167, i32 undef)  ; BufferLoad(srv,index,wot)
  %2169 = extractvalue %dx.types.ResRet.i32 %2168, 0
  %2170 = add i32 %2169, 0
  %2171 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2170, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2172 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2171, %dx.types.Handle %115, float %2084, float %2085, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2173 = extractvalue %dx.types.ResRet.f32 %2172, 0
  %2174 = extractvalue %dx.types.ResRet.f32 %2172, 1
  %2175 = extractvalue %dx.types.ResRet.f32 %2172, 2
  %2176 = extractvalue %dx.types.ResRet.f32 %2172, 3
  %2177 = and i32 %2166, 255
  %2178 = uitofp i32 %2177 to float
  %2179 = lshr i32 %2166, 8
  %2180 = and i32 %2179, 255
  %2181 = uitofp i32 %2180 to float
  %2182 = fmul fast float %2176, %2178
  %2183 = fadd fast float %2182, %2181
  %2184 = fmul fast float %2183, 0x3F70101000000000
  %2185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1977, i32 undef)  ; BufferLoad(srv,index,wot)
  %2186 = extractvalue %dx.types.ResRet.i32 %2185, 0
  %2187 = and i32 %2186, 512
  %2188 = icmp eq i32 %2187, 0
  br i1 %2188, label %2197, label %2189

; <label>:2189                                    ; preds = %2164
  %2190 = add i32 %60, 496
  %2191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2190, i32 undef)  ; BufferLoad(srv,index,wot)
  %2192 = extractvalue %dx.types.ResRet.i32 %2191, 0
  %2193 = add i32 %2192, 0
  %2194 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2193, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2195 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2194, %dx.types.Handle %116, float %2084, float %2085, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2196 = extractvalue %dx.types.ResRet.f32 %2195, 0
  br label %2197

; <label>:2197                                    ; preds = %2189, %2164
  %2198 = phi float [ %2196, %2189 ], [ 1.000000e+00, %2164 ]
  %2199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1977, i32 undef)  ; BufferLoad(srv,index,wot)
  %2200 = extractvalue %dx.types.ResRet.i32 %2199, 0
  %2201 = and i32 %2200, 33554432
  %2202 = icmp eq i32 %2201, 0
  br i1 %2202, label %2309, label %2203

; <label>:2203                                    ; preds = %2197
  %2204 = add i32 %60, 256
  %2205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2204, i32 undef)  ; BufferLoad(srv,index,wot)
  %2206 = extractvalue %dx.types.ResRet.i32 %2205, 0
  %2207 = and i32 %2206, 65535
  %2208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2207)  ; LegacyF16ToF32(value)
  %2209 = lshr i32 %2206, 16
  %2210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2209)  ; LegacyF16ToF32(value)
  %2211 = add i32 %60, 260
  %2212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2211, i32 undef)  ; BufferLoad(srv,index,wot)
  %2213 = extractvalue %dx.types.ResRet.i32 %2212, 0
  %2214 = and i32 %2213, 65535
  %2215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2214)  ; LegacyF16ToF32(value)
  %2216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %2217 = extractvalue %dx.types.ResRet.i32 %2216, 0
  %2218 = lshr i32 %2217, 24
  %2219 = uitofp i32 %2218 to float
  %2220 = fmul fast float %2219, 0x3F70101020000000
  %2221 = and i32 %2217, 255
  %2222 = uitofp i32 %2221 to float
  %2223 = fmul fast float %2222, 0x3F70101020000000
  %2224 = lshr i32 %2217, 8
  %2225 = and i32 %2224, 255
  %2226 = uitofp i32 %2225 to float
  %2227 = fmul fast float %2226, 0x3F70101020000000
  %2228 = lshr i32 %2217, 16
  %2229 = and i32 %2228, 255
  %2230 = uitofp i32 %2229 to float
  %2231 = fmul fast float %2230, 0x3F70101020000000
  %2232 = add i32 %60, 252
  %2233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2232, i32 undef)  ; BufferLoad(srv,index,wot)
  %2234 = extractvalue %dx.types.ResRet.i32 %2233, 0
  %2235 = lshr i32 %2234, 24
  %2236 = uitofp i32 %2235 to float
  %2237 = fmul fast float %2236, 0x3F70101020000000
  %2238 = and i32 %2234, 255
  %2239 = uitofp i32 %2238 to float
  %2240 = fmul fast float %2239, 0x3F70101020000000
  %2241 = lshr i32 %2234, 8
  %2242 = and i32 %2241, 255
  %2243 = uitofp i32 %2242 to float
  %2244 = fmul fast float %2243, 0x3F70101020000000
  %2245 = lshr i32 %2234, 16
  %2246 = and i32 %2245, 255
  %2247 = uitofp i32 %2246 to float
  %2248 = fmul fast float %2247, 0x3F70101020000000
  %2249 = bitcast float %2173 to i32
  %2250 = ashr i32 %2249, 1
  %2251 = sub nsw i32 1597463174, %2250
  %2252 = bitcast i32 %2251 to float
  %2253 = fmul fast float %2173, 5.000000e-01
  %2254 = fmul fast float %2252, %2252
  %2255 = fmul fast float %2254, %2253
  %2256 = fsub fast float 1.500000e+00, %2255
  %2257 = fmul fast float %2252, %2173
  %2258 = fmul fast float %2257, %2256
  %2259 = bitcast float %2174 to i32
  %2260 = ashr i32 %2259, 1
  %2261 = sub nsw i32 1597463174, %2260
  %2262 = bitcast i32 %2261 to float
  %2263 = fmul fast float %2174, 5.000000e-01
  %2264 = fmul fast float %2262, %2262
  %2265 = fmul fast float %2264, %2263
  %2266 = fsub fast float 1.500000e+00, %2265
  %2267 = fmul fast float %2262, %2174
  %2268 = fmul fast float %2267, %2266
  %2269 = bitcast float %2175 to i32
  %2270 = ashr i32 %2269, 1
  %2271 = sub nsw i32 1597463174, %2270
  %2272 = bitcast i32 %2271 to float
  %2273 = fmul fast float %2175, 5.000000e-01
  %2274 = fmul fast float %2272, %2272
  %2275 = fmul fast float %2274, %2273
  %2276 = fsub fast float 1.500000e+00, %2275
  %2277 = fmul fast float %2272, %2175
  %2278 = fmul fast float %2277, %2276
  %2279 = fsub fast float %2258, %2240
  %2280 = fsub fast float %2268, %2244
  %2281 = fsub fast float %2278, %2248
  %2282 = fmul fast float %2279, %2208
  %2283 = fmul fast float %2280, %2210
  %2284 = fmul fast float %2281, %2215
  %2285 = fadd fast float %2282, %2223
  %2286 = fadd fast float %2283, %2227
  %2287 = fadd fast float %2284, %2231
  %2288 = call float @dx.op.unary.f32(i32 7, float %2285)  ; Saturate(value)
  %2289 = call float @dx.op.unary.f32(i32 7, float %2286)  ; Saturate(value)
  %2290 = call float @dx.op.unary.f32(i32 7, float %2287)  ; Saturate(value)
  %2291 = fmul fast float %2288, %2288
  %2292 = fmul fast float %2289, %2289
  %2293 = fmul fast float %2290, %2290
  %2294 = fsub fast float %2291, %2173
  %2295 = fsub fast float %2292, %2174
  %2296 = fsub fast float %2293, %2175
  %2297 = fmul fast float %2294, %2198
  %2298 = fmul fast float %2295, %2198
  %2299 = fmul fast float %2296, %2198
  %2300 = fadd fast float %2297, %2173
  %2301 = fadd fast float %2298, %2174
  %2302 = fadd fast float %2299, %2175
  %2303 = fadd fast float %2220, %2184
  %2304 = fsub fast float %2303, %2237
  %2305 = call float @dx.op.unary.f32(i32 7, float %2304)  ; Saturate(value)
  %2306 = fsub fast float %2305, %2184
  %2307 = fmul fast float %2306, %2198
  %2308 = fadd fast float %2307, %2184
  br label %2362

; <label>:2309                                    ; preds = %2197
  %2310 = and i32 %2200, 134217728
  %2311 = icmp eq i32 %2310, 0
  br i1 %2311, label %2346, label %2312

; <label>:2312                                    ; preds = %2309
  %2313 = call float @dx.op.unary.f32(i32 24, float %402)  ; Sqrt(value)
  %2314 = call float @dx.op.unary.f32(i32 24, float %406)  ; Sqrt(value)
  %2315 = call float @dx.op.unary.f32(i32 24, float %410)  ; Sqrt(value)
  %2316 = fadd fast float %2313, -5.000000e-01
  %2317 = fadd fast float %2314, -5.000000e-01
  %2318 = fadd fast float %2315, -5.000000e-01
  %2319 = fmul fast float %2316, %2198
  %2320 = fmul fast float %2317, %2198
  %2321 = fmul fast float %2318, %2198
  %2322 = fadd fast float %2319, 5.000000e-01
  %2323 = fadd fast float %2320, 5.000000e-01
  %2324 = fadd fast float %2321, 5.000000e-01
  %2325 = call float @dx.op.unary.f32(i32 24, float %2173)  ; Sqrt(value)
  %2326 = call float @dx.op.unary.f32(i32 24, float %2174)  ; Sqrt(value)
  %2327 = call float @dx.op.unary.f32(i32 24, float %2175)  ; Sqrt(value)
  %2328 = fmul fast float %2322, 2.000000e+00
  %2329 = fsub fast float 1.000000e+00, %2328
  %2330 = fmul fast float %2329, %2325
  %2331 = fadd fast float %2330, %2328
  %2332 = fmul fast float %2331, %2325
  %2333 = fmul fast float %2323, 2.000000e+00
  %2334 = fsub fast float 1.000000e+00, %2333
  %2335 = fmul fast float %2334, %2326
  %2336 = fadd fast float %2335, %2333
  %2337 = fmul fast float %2336, %2326
  %2338 = fmul fast float %2324, 2.000000e+00
  %2339 = fsub fast float 1.000000e+00, %2338
  %2340 = fmul fast float %2339, %2327
  %2341 = fadd fast float %2340, %2338
  %2342 = fmul fast float %2341, %2327
  %2343 = fmul fast float %2332, %2332
  %2344 = fmul fast float %2337, %2337
  %2345 = fmul fast float %2342, %2342
  br label %2362

; <label>:2346                                    ; preds = %2309
  %2347 = fmul fast float %402, %402
  %2348 = fmul fast float %406, %406
  %2349 = fmul fast float %410, %410
  %2350 = fadd fast float %2347, -1.000000e+00
  %2351 = fadd fast float %2348, -1.000000e+00
  %2352 = fadd fast float %2349, -1.000000e+00
  %2353 = fmul fast float %2198, %2350
  %2354 = fmul fast float %2198, %2351
  %2355 = fmul fast float %2198, %2352
  %2356 = fadd fast float %2353, 1.000000e+00
  %2357 = fadd fast float %2354, 1.000000e+00
  %2358 = fadd fast float %2355, 1.000000e+00
  %2359 = fmul fast float %2356, %2173
  %2360 = fmul fast float %2357, %2174
  %2361 = fmul fast float %2358, %2175
  br label %2362

; <label>:2362                                    ; preds = %2346, %2312, %2203, %2159
  %2363 = phi float [ %2308, %2203 ], [ %2184, %2312 ], [ %2184, %2346 ], [ 0x3FA23C0BE0000000, %2159 ]
  %2364 = phi float [ %2300, %2203 ], [ %2343, %2312 ], [ %2359, %2346 ], [ 1.000000e+00, %2159 ]
  %2365 = phi float [ %2301, %2203 ], [ %2344, %2312 ], [ %2360, %2346 ], [ 1.000000e+00, %2159 ]
  %2366 = phi float [ %2302, %2203 ], [ %2345, %2312 ], [ %2361, %2346 ], [ 1.000000e+00, %2159 ]
  %2367 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2368 = extractvalue %dx.types.CBufRet.i32 %2367, 1
  %2369 = and i32 %2368, 1
  %2370 = icmp ne i32 %2369, 0
  %2371 = add i32 %60, 356
  %2372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2371, i32 undef)  ; BufferLoad(srv,index,wot)
  %2373 = extractvalue %dx.types.ResRet.i32 %2372, 0
  %2374 = and i32 %2373, 32
  %2375 = icmp ne i32 %2374, 0
  %2376 = and i1 %2370, %2375
  %2377 = select i1 %2376, float 1.000000e+00, float %2364
  %2378 = select i1 %2376, float 0x3FD3333340000000, float %2365
  %2379 = select i1 %2376, float 0x3FD3333340000000, float %2366
  %2380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1977, i32 undef)  ; BufferLoad(srv,index,wot)
  %2381 = extractvalue %dx.types.ResRet.i32 %2380, 0
  %2382 = and i32 %2381, 32
  %2383 = icmp eq i32 %2382, 0
  br i1 %2383, label %2456, label %2384

; <label>:2384                                    ; preds = %2362
  %2385 = add i32 %60, 124
  %2386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2385, i32 undef)  ; BufferLoad(srv,index,wot)
  %2387 = extractvalue %dx.types.ResRet.i32 %2386, 0
  %2388 = add i32 %60, 432
  %2389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2388, i32 undef)  ; BufferLoad(srv,index,wot)
  %2390 = extractvalue %dx.types.ResRet.i32 %2389, 0
  %2391 = add i32 %2390, 0
  %2392 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2391, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2393 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2392, %dx.types.Handle %115, float %2084, float %2085, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2394 = extractvalue %dx.types.ResRet.f32 %2393, 0
  %2395 = extractvalue %dx.types.ResRet.f32 %2393, 1
  %2396 = extractvalue %dx.types.ResRet.f32 %2393, 2
  %2397 = extractvalue %dx.types.ResRet.f32 %2393, 3
  %2398 = and i32 %2387, 255
  %2399 = uitofp i32 %2398 to float
  %2400 = lshr i32 %2387, 8
  %2401 = and i32 %2400, 255
  %2402 = uitofp i32 %2401 to float
  %2403 = lshr i32 %2387, 16
  %2404 = and i32 %2403, 255
  %2405 = uitofp i32 %2404 to float
  %2406 = fmul fast float %2405, 0x3F70101000000000
  %2407 = fmul fast float %2394, %2399
  %2408 = fadd fast float %2407, %2402
  %2409 = fmul fast float %2408, 0x3F70101000000000
  %2410 = fadd fast float %2395, -5.000000e-01
  %2411 = fadd fast float %2397, -5.000000e-01
  %2412 = fmul fast float %2410, %2406
  %2413 = fmul fast float %2411, %2406
  %2414 = fadd fast float %2412, 5.000000e-01
  %2415 = fadd fast float %2413, 5.000000e-01
  %2416 = fmul fast float %2414, 2.000000e+00
  %2417 = fadd fast float %2416, -1.000000e+00
  %2418 = fmul fast float %2415, 2.000000e+00
  %2419 = fadd fast float %2418, -1.000000e+00
  %2420 = fadd fast float %2417, %2419
  %2421 = fmul fast float %2420, 5.000000e-01
  %2422 = fsub fast float %2417, %2419
  %2423 = fmul fast float %2422, 5.000000e-01
  %2424 = call float @dx.op.unary.f32(i32 6, float %2421)  ; FAbs(value)
  %2425 = fsub fast float 1.000000e+00, %2424
  %2426 = call float @dx.op.unary.f32(i32 6, float %2423)  ; FAbs(value)
  %2427 = fsub fast float %2425, %2426
  %2428 = call float @dx.op.dot3.f32(i32 55, float %2421, float %2423, float %2427, float %2421, float %2423, float %2427)  ; Dot3(ax,ay,az,bx,by,bz)
  %2429 = call float @dx.op.unary.f32(i32 25, float %2428)  ; Rsqrt(value)
  %2430 = fmul fast float %2421, %2429
  %2431 = fmul fast float %2423, %2429
  %2432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1977, i32 undef)  ; BufferLoad(srv,index,wot)
  %2433 = extractvalue %dx.types.ResRet.i32 %2432, 0
  %2434 = and i32 %2433, 67108864
  %2435 = icmp eq i32 %2434, 0
  br i1 %2435, label %2452, label %2436

; <label>:2436                                    ; preds = %2384
  %2437 = add i32 %60, 312
  %2438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2437, i32 undef)  ; BufferLoad(srv,index,wot)
  %2439 = extractvalue %dx.types.ResRet.i32 %2438, 0
  %2440 = and i32 %2439, 65535
  %2441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2440)  ; LegacyF16ToF32(value)
  %2442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1994, i32 undef)  ; BufferLoad(srv,index,wot)
  %2443 = extractvalue %dx.types.ResRet.i32 %2442, 0
  %2444 = and i32 %2443, 65535
  %2445 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2444)  ; LegacyF16ToF32(value)
  %2446 = lshr i32 %2439, 16
  %2447 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2446)  ; LegacyF16ToF32(value)
  %2448 = fsub fast float %2409, %2447
  %2449 = fmul fast float %2448, %2441
  %2450 = fadd fast float %2449, %2445
  %2451 = call float @dx.op.unary.f32(i32 7, float %2450)  ; Saturate(value)
  br label %2452

; <label>:2452                                    ; preds = %2436, %2384
  %2453 = phi float [ %2451, %2436 ], [ %2409, %2384 ]
  %2454 = call float @dx.op.dot2.f32(i32 54, float %2430, float %2431, float %1988, float %1989)  ; Dot2(ax,ay,bx,by)
  %2455 = call float @dx.op.dot2.f32(i32 54, float %2430, float %2431, float %1990, float %1991)  ; Dot2(ax,ay,bx,by)
  br label %2456

; <label>:2456                                    ; preds = %2452, %2362
  %2457 = phi float [ %2453, %2452 ], [ 0x3FD6666660000000, %2362 ]
  %2458 = phi float [ %2454, %2452 ], [ 0.000000e+00, %2362 ]
  %2459 = phi float [ %2455, %2452 ], [ 0.000000e+00, %2362 ]
  %2460 = phi float [ %2396, %2452 ], [ 1.000000e+00, %2362 ]
  %2461 = add i32 %60, 192
  %2462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2461, i32 undef)  ; BufferLoad(srv,index,wot)
  %2463 = extractvalue %dx.types.ResRet.i32 %2462, 0
  %2464 = lshr i32 %2463, 22
  %2465 = shl nuw nsw i32 %2464, 5
  %2466 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2465)  ; LegacyF16ToF32(value)
  %2467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1977, i32 undef)  ; BufferLoad(srv,index,wot)
  %2468 = extractvalue %dx.types.ResRet.i32 %2467, 0
  %2469 = and i32 %2468, 64
  %2470 = icmp eq i32 %2469, 0
  br i1 %2470, label %2504, label %2471

; <label>:2471                                    ; preds = %2456
  %2472 = add i32 %60, 448
  %2473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2472, i32 undef)  ; BufferLoad(srv,index,wot)
  %2474 = extractvalue %dx.types.ResRet.i32 %2473, 0
  %2475 = add i32 %2474, 0
  %2476 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2475, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1977, i32 undef)  ; BufferLoad(srv,index,wot)
  %2478 = extractvalue %dx.types.ResRet.i32 %2477, 0
  %2479 = and i32 %2478, 131072
  %2480 = icmp eq i32 %2479, 0
  %2481 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2476, %dx.types.Handle %115, float %2084, float %2085, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2482 = extractvalue %dx.types.ResRet.f32 %2481, 0
  %2483 = extractvalue %dx.types.ResRet.f32 %2481, 1
  %2484 = extractvalue %dx.types.ResRet.f32 %2481, 2
  %2485 = fmul fast float %2482, %390
  %2486 = fmul fast float %2483, %393
  %2487 = fmul fast float %2484, %396
  br i1 %2480, label %2494, label %2488

; <label>:2488                                    ; preds = %2471
  %2489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2490 = extractvalue %dx.types.CBufRet.f32 %2489, 0
  %2491 = fmul fast float %2490, %2485
  %2492 = fmul fast float %2490, %2486
  %2493 = fmul fast float %2490, %2487
  br label %2494

; <label>:2494                                    ; preds = %2488, %2471
  %2495 = phi float [ %2491, %2488 ], [ %2485, %2471 ]
  %2496 = phi float [ %2492, %2488 ], [ %2486, %2471 ]
  %2497 = phi float [ %2493, %2488 ], [ %2487, %2471 ]
  %2498 = fmul fast float %2495, %2466
  %2499 = select i1 %289, float %2498, float %2495
  %2500 = call float @dx.op.dot3.f32(i32 55, float %2499, float %2496, float %2497, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2501 = select i1 %289, float 0.000000e+00, float %2495
  %2502 = select i1 %289, float %2500, float %2496
  %2503 = select i1 %289, float 0.000000e+00, float %2497
  br label %2504

; <label>:2504                                    ; preds = %2494, %2456
  %2505 = phi float [ %2501, %2494 ], [ 0.000000e+00, %2456 ]
  %2506 = phi float [ %2502, %2494 ], [ 0.000000e+00, %2456 ]
  %2507 = phi float [ %2503, %2494 ], [ 0.000000e+00, %2456 ]
  %2508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1977, i32 undef)  ; BufferLoad(srv,index,wot)
  %2509 = extractvalue %dx.types.ResRet.i32 %2508, 0
  %2510 = and i32 %2509, 10240
  %2511 = icmp eq i32 %2510, 0
  br i1 %2511, label %2556, label %2512

; <label>:2512                                    ; preds = %2504
  %2513 = add i32 %60, 512
  %2514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2513, i32 undef)  ; BufferLoad(srv,index,wot)
  %2515 = extractvalue %dx.types.ResRet.i32 %2514, 0
  %2516 = add i32 %2515, 0
  %2517 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2516, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2518 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2517, %dx.types.Handle %116, float %2084, float %2085, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2519 = extractvalue %dx.types.ResRet.f32 %2518, 1
  %2520 = extractvalue %dx.types.ResRet.f32 %2518, 3
  %2521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1977, i32 undef)  ; BufferLoad(srv,index,wot)
  %2522 = extractvalue %dx.types.ResRet.i32 %2521, 0
  %2523 = and i32 %2522, 1048576
  %2524 = icmp ne i32 %2523, 0
  %2525 = and i32 %2522, 8192
  %2526 = icmp eq i32 %2525, 0
  br i1 %2526, label %2542, label %2527

; <label>:2527                                    ; preds = %2512
  %2528 = extractvalue %dx.types.ResRet.f32 %2518, 2
  %2529 = select i1 %2524, float %2528, float %2519
  %2530 = extractvalue %dx.types.ResRet.f32 %2518, 0
  %2531 = select i1 %2524, float %2530, float %2519
  %2532 = add i32 %60, 128
  %2533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2532, i32 undef)  ; BufferLoad(srv,index,wot)
  %2534 = extractvalue %dx.types.ResRet.i32 %2533, 0
  %2535 = lshr i32 %2534, 16
  %2536 = and i32 %2535, 255
  %2537 = uitofp i32 %2536 to float
  %2538 = fmul fast float %2537, 0x3F80101020000000
  %2539 = fmul fast float %2538, %2531
  %2540 = fmul fast float %2538, %2519
  %2541 = fmul fast float %2538, %2529
  br label %2542

; <label>:2542                                    ; preds = %2527, %2512
  %2543 = phi float [ %2539, %2527 ], [ 0.000000e+00, %2512 ]
  %2544 = phi float [ %2540, %2527 ], [ 0.000000e+00, %2512 ]
  %2545 = phi float [ %2541, %2527 ], [ 0.000000e+00, %2512 ]
  %2546 = and i32 %2522, 2048
  %2547 = icmp eq i32 %2546, 0
  br i1 %2547, label %2556, label %2548

; <label>:2548                                    ; preds = %2542
  %2549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2461, i32 undef)  ; BufferLoad(srv,index,wot)
  %2550 = extractvalue %dx.types.ResRet.i32 %2549, 0
  %2551 = shl i32 %2550, 4
  %2552 = and i32 %2551, 32752
  %2553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2552)  ; LegacyF16ToF32(value)
  %2554 = fmul fast float %2553, %2520
  %2555 = call float @dx.op.binary.f32(i32 35, float %2554, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2556

; <label>:2556                                    ; preds = %2548, %2542, %2504
  %2557 = phi float [ %2543, %2548 ], [ %2543, %2542 ], [ 0.000000e+00, %2504 ]
  %2558 = phi float [ %2544, %2548 ], [ %2544, %2542 ], [ 0.000000e+00, %2504 ]
  %2559 = phi float [ %2545, %2548 ], [ %2545, %2542 ], [ 0.000000e+00, %2504 ]
  %2560 = phi float [ %2555, %2548 ], [ 0x3F70101020000000, %2542 ], [ 0x3F70101020000000, %2504 ]
  %2561 = add i32 %60, 128
  %2562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2561, i32 undef)  ; BufferLoad(srv,index,wot)
  %2563 = extractvalue %dx.types.ResRet.i32 %2562, 0
  %2564 = and i32 %2563, 255
  %2565 = uitofp i32 %2564 to float
  %2566 = lshr i32 %2563, 8
  %2567 = and i32 %2566, 255
  %2568 = uitofp i32 %2567 to float
  %2569 = call float @dx.op.dot3.f32(i32 55, float %2377, float %2378, float %2379, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2570 = fmul fast float %2568, %2569
  %2571 = fadd fast float %2570, %2565
  %2572 = fmul fast float %2571, 0x3F70101020000000
  %2573 = call float @dx.op.unary.f32(i32 7, float %2572)  ; Saturate(value)
  br i1 %1976, label %2574, label %2582

; <label>:2574                                    ; preds = %2556
  %2575 = fsub fast float 1.000000e+00, %2157
  %2576 = fmul fast float %2575, %1964
  %2577 = fmul fast float %2575, %1965
  %2578 = fmul fast float %2575, %1966
  %2579 = fmul fast float %2575, %1967
  %2580 = fmul fast float %2575, %1968
  %2581 = fmul fast float %2575, %1969
  br label %2582

; <label>:2582                                    ; preds = %2574, %2556
  %2583 = phi float [ %2576, %2574 ], [ %1964, %2556 ]
  %2584 = phi float [ %2577, %2574 ], [ %1965, %2556 ]
  %2585 = phi float [ %2578, %2574 ], [ %1966, %2556 ]
  %2586 = phi float [ %2579, %2574 ], [ %1967, %2556 ]
  %2587 = phi float [ %2580, %2574 ], [ %1968, %2556 ]
  %2588 = phi float [ %2581, %2574 ], [ %1969, %2556 ]
  %2589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1977, i32 undef)  ; BufferLoad(srv,index,wot)
  %2590 = extractvalue %dx.types.ResRet.i32 %2589, 0
  %2591 = and i32 %2590, 3
  %2592 = icmp eq i32 %2591, 3
  br i1 %2592, label %2671, label %2593

; <label>:2593                                    ; preds = %2582
  %2594 = and i32 %2590, 16
  %2595 = icmp ne i32 %2594, 0
  %2596 = select i1 %2595, float %2157, float 0.000000e+00
  %2597 = icmp eq i32 %2591, 0
  br i1 %2597, label %2598, label %2626

; <label>:2598                                    ; preds = %2593
  %2599 = and i32 %2590, 64
  %2600 = icmp ne i32 %2599, 0
  %2601 = select i1 %2600, float %2157, float 0.000000e+00
  %2602 = fsub fast float %2377, %2583
  %2603 = fsub fast float %2378, %2584
  %2604 = fsub fast float %2379, %2585
  %2605 = fmul fast float %2596, %2602
  %2606 = fmul fast float %2596, %2603
  %2607 = fmul fast float %2596, %2604
  %2608 = fadd fast float %2605, %2583
  %2609 = fadd fast float %2606, %2584
  %2610 = fadd fast float %2607, %2585
  %2611 = fsub fast float %2363, %1970
  %2612 = fmul fast float %2596, %2611
  %2613 = fadd fast float %2612, %1970
  %2614 = fsub fast float %2505, %2586
  %2615 = fsub fast float %2506, %2587
  %2616 = fsub fast float %2507, %2588
  %2617 = fmul fast float %2601, %2614
  %2618 = fmul fast float %2601, %2615
  %2619 = fmul fast float %2601, %2616
  %2620 = fadd fast float %2617, %2586
  %2621 = fadd fast float %2618, %2587
  %2622 = fadd fast float %2619, %2588
  %2623 = fsub fast float %2573, %1974
  %2624 = fmul fast float %2596, %2623
  %2625 = fadd fast float %2624, %1974
  br label %2671

; <label>:2626                                    ; preds = %2593
  %2627 = icmp eq i32 %2591, 1
  br i1 %2627, label %2628, label %2641

; <label>:2628                                    ; preds = %2626
  %2629 = fadd fast float %2377, -1.000000e+00
  %2630 = fadd fast float %2378, -1.000000e+00
  %2631 = fadd fast float %2379, -1.000000e+00
  %2632 = fmul fast float %2596, %2629
  %2633 = fmul fast float %2596, %2630
  %2634 = fmul fast float %2596, %2631
  %2635 = fadd fast float %2632, 1.000000e+00
  %2636 = fadd fast float %2633, 1.000000e+00
  %2637 = fadd fast float %2634, 1.000000e+00
  %2638 = fmul fast float %2635, %2583
  %2639 = fmul fast float %2636, %2584
  %2640 = fmul fast float %2637, %2585
  br label %2671

; <label>:2641                                    ; preds = %2626
  %2642 = icmp eq i32 %2591, 2
  br i1 %2642, label %2643, label %2671

; <label>:2643                                    ; preds = %2641
  %2644 = call float @dx.op.unary.f32(i32 24, float %2377)  ; Sqrt(value)
  %2645 = call float @dx.op.unary.f32(i32 24, float %2378)  ; Sqrt(value)
  %2646 = call float @dx.op.unary.f32(i32 24, float %2379)  ; Sqrt(value)
  %2647 = fadd fast float %2644, -5.000000e-01
  %2648 = fadd fast float %2645, -5.000000e-01
  %2649 = fadd fast float %2646, -5.000000e-01
  %2650 = fmul fast float %2647, %2596
  %2651 = fmul fast float %2648, %2596
  %2652 = fmul fast float %2649, %2596
  %2653 = fadd fast float %2650, 5.000000e-01
  %2654 = fadd fast float %2651, 5.000000e-01
  %2655 = fadd fast float %2652, 5.000000e-01
  %2656 = fmul fast float %2653, 2.000000e+00
  %2657 = fsub fast float 1.000000e+00, %2656
  %2658 = fmul fast float %2657, %2583
  %2659 = fadd fast float %2658, %2656
  %2660 = fmul fast float %2659, %2583
  %2661 = fmul fast float %2654, 2.000000e+00
  %2662 = fsub fast float 1.000000e+00, %2661
  %2663 = fmul fast float %2662, %2584
  %2664 = fadd fast float %2663, %2661
  %2665 = fmul fast float %2664, %2584
  %2666 = fmul fast float %2655, 2.000000e+00
  %2667 = fsub fast float 1.000000e+00, %2666
  %2668 = fmul fast float %2667, %2585
  %2669 = fadd fast float %2668, %2666
  %2670 = fmul fast float %2669, %2585
  br label %2671

; <label>:2671                                    ; preds = %2643, %2641, %2628, %2598, %2582
  %2672 = phi float [ %2583, %2582 ], [ %2660, %2643 ], [ %2583, %2641 ], [ %2638, %2628 ], [ %2608, %2598 ]
  %2673 = phi float [ %2584, %2582 ], [ %2665, %2643 ], [ %2584, %2641 ], [ %2639, %2628 ], [ %2609, %2598 ]
  %2674 = phi float [ %2585, %2582 ], [ %2670, %2643 ], [ %2585, %2641 ], [ %2640, %2628 ], [ %2610, %2598 ]
  %2675 = phi float [ %2586, %2582 ], [ %2586, %2643 ], [ %2586, %2641 ], [ %2586, %2628 ], [ %2620, %2598 ]
  %2676 = phi float [ %2587, %2582 ], [ %2587, %2643 ], [ %2587, %2641 ], [ %2587, %2628 ], [ %2621, %2598 ]
  %2677 = phi float [ %2588, %2582 ], [ %2588, %2643 ], [ %2588, %2641 ], [ %2588, %2628 ], [ %2622, %2598 ]
  %2678 = phi float [ %1970, %2582 ], [ %1970, %2643 ], [ %1970, %2641 ], [ %1970, %2628 ], [ %2613, %2598 ]
  %2679 = phi float [ %1974, %2582 ], [ %1974, %2643 ], [ %1974, %2641 ], [ %1974, %2628 ], [ %2625, %2598 ]
  %2680 = and i32 %2590, 12
  %2681 = icmp eq i32 %2680, 12
  br i1 %2681, label %2788, label %2682

; <label>:2682                                    ; preds = %2671
  %2683 = and i32 %2590, 2097184
  %2684 = icmp eq i32 %2683, 2097184
  %2685 = select i1 %2684, float %2157, float 0.000000e+00
  %2686 = and i32 %2590, 4194336
  %2687 = icmp eq i32 %2686, 4194336
  %2688 = select i1 %2687, float %2157, float 0.000000e+00
  %2689 = and i32 %2590, 8388640
  %2690 = icmp eq i32 %2689, 8388640
  %2691 = select i1 %2690, float %2157, float 0.000000e+00
  %2692 = and i32 %2590, 2048
  %2693 = icmp ne i32 %2692, 0
  %2694 = select i1 %2693, float %2157, float 0.000000e+00
  %2695 = and i32 %2590, 8192
  %2696 = icmp ne i32 %2695, 0
  %2697 = select i1 %2696, float %2157, float 0.000000e+00
  %2698 = icmp eq i32 %2680, 0
  br i1 %2698, label %2699, label %2724

; <label>:2699                                    ; preds = %2682
  %2700 = fsub fast float %2458, %1959
  %2701 = fsub fast float %2459, %1960
  %2702 = fmul fast float %2685, %2700
  %2703 = fmul fast float %2685, %2701
  %2704 = fadd fast float %2702, %1959
  %2705 = fadd fast float %2703, %1960
  %2706 = fsub fast float %2460, %1972
  %2707 = fmul fast float %2688, %2706
  %2708 = fadd fast float %2707, %1972
  %2709 = fsub fast float %2457, %1971
  %2710 = fmul fast float %2691, %2709
  %2711 = fadd fast float %2710, %1971
  %2712 = fsub fast float %2560, %1973
  %2713 = fmul fast float %2694, %2712
  %2714 = fadd fast float %2713, %1973
  %2715 = fsub fast float %2557, %1961
  %2716 = fsub fast float %2558, %1962
  %2717 = fsub fast float %2559, %1963
  %2718 = fmul fast float %2697, %2715
  %2719 = fmul fast float %2697, %2716
  %2720 = fmul fast float %2697, %2717
  %2721 = fadd fast float %2718, %1961
  %2722 = fadd fast float %2719, %1962
  %2723 = fadd fast float %2720, %1963
  br label %2788

; <label>:2724                                    ; preds = %2682
  %2725 = icmp eq i32 %2680, 4
  br i1 %2725, label %2726, label %2766

; <label>:2726                                    ; preds = %2724
  %2727 = fmul fast float %2685, %2458
  %2728 = fmul fast float %2685, %2459
  %2729 = fadd fast float %2727, %1959
  %2730 = fadd fast float %2728, %1960
  %2731 = call float @dx.op.binary.f32(i32 36, float %1972, float %2460)  ; FMin(a,b)
  %2732 = fsub fast float %2731, %1972
  %2733 = fmul fast float %2732, %2688
  %2734 = fadd fast float %2733, %1972
  %2735 = fadd fast float %2457, %1971
  %2736 = fmul fast float %2735, 0x3FF337FAE0000000
  %2737 = fmul fast float %1971, %1971
  %2738 = fmul fast float %2457, %2457
  %2739 = fadd fast float %2738, %2737
  %2740 = fmul fast float %2739, 0x3FE5152B00000000
  %2741 = fmul fast float %1971, 0xBFCC1F85E0000000
  %2742 = fmul fast float %2741, %2457
  %2743 = fadd fast float %2742, 0xBFE1363700000000
  %2744 = fadd fast float %2743, %2736
  %2745 = fsub fast float %2744, %2740
  %2746 = fmul fast float %2735, 0x3FBA6F0D00000000
  %2747 = fmul fast float %2739, 0x3FD0432880000000
  %2748 = fmul fast float %1971, 0xBFEF110800000000
  %2749 = fmul fast float %2748, %2457
  %2750 = fadd fast float %2749, 1.000000e+00
  %2751 = fsub fast float %2750, %2746
  %2752 = fadd fast float %2751, %2747
  %2753 = fdiv fast float %2745, %2752
  %2754 = call float @dx.op.unary.f32(i32 7, float %2753)  ; Saturate(value)
  %2755 = fsub fast float %2754, %1971
  %2756 = fmul fast float %2755, %2691
  %2757 = fadd fast float %2756, %1971
  %2758 = fmul fast float %2694, %2560
  %2759 = fadd fast float %2758, %1973
  %2760 = fmul fast float %2697, %2557
  %2761 = fmul fast float %2697, %2558
  %2762 = fmul fast float %2697, %2559
  %2763 = fadd fast float %2760, %1961
  %2764 = fadd fast float %2761, %1962
  %2765 = fadd fast float %2762, %1963
  br label %2788

; <label>:2766                                    ; preds = %2724
  %2767 = icmp eq i32 %2680, 8
  br i1 %2767, label %2768, label %2788

; <label>:2768                                    ; preds = %2766
  %2769 = fmul fast float %2685, %2458
  %2770 = fmul fast float %2685, %2459
  %2771 = fadd fast float %2769, %1959
  %2772 = fadd fast float %2770, %1960
  %2773 = call float @dx.op.binary.f32(i32 36, float %1972, float %2460)  ; FMin(a,b)
  %2774 = fsub fast float %2773, %1972
  %2775 = fmul fast float %2774, %2688
  %2776 = fadd fast float %2775, %1972
  %2777 = fsub fast float %2457, %1971
  %2778 = fmul fast float %2691, %2777
  %2779 = fadd fast float %2778, %1971
  %2780 = fmul fast float %2694, %2560
  %2781 = fadd fast float %2780, %1973
  %2782 = fmul fast float %2697, %2557
  %2783 = fmul fast float %2697, %2558
  %2784 = fmul fast float %2697, %2559
  %2785 = fadd fast float %2782, %1961
  %2786 = fadd fast float %2783, %1962
  %2787 = fadd fast float %2784, %1963
  br label %2788

; <label>:2788                                    ; preds = %2768, %2766, %2726, %2699, %2671, %2156, %1975, %1958
  %2789 = phi float [ %1959, %2671 ], [ %1959, %2156 ], [ %1959, %1958 ], [ %2771, %2768 ], [ %1959, %2766 ], [ %2729, %2726 ], [ %2704, %2699 ], [ %1959, %1975 ]
  %2790 = phi float [ %1960, %2671 ], [ %1960, %2156 ], [ %1960, %1958 ], [ %2772, %2768 ], [ %1960, %2766 ], [ %2730, %2726 ], [ %2705, %2699 ], [ %1960, %1975 ]
  %2791 = phi float [ %1961, %2671 ], [ %1961, %2156 ], [ %1961, %1958 ], [ %2785, %2768 ], [ %1961, %2766 ], [ %2763, %2726 ], [ %2721, %2699 ], [ %1961, %1975 ]
  %2792 = phi float [ %1962, %2671 ], [ %1962, %2156 ], [ %1962, %1958 ], [ %2786, %2768 ], [ %1962, %2766 ], [ %2764, %2726 ], [ %2722, %2699 ], [ %1962, %1975 ]
  %2793 = phi float [ %1963, %2671 ], [ %1963, %2156 ], [ %1963, %1958 ], [ %2787, %2768 ], [ %1963, %2766 ], [ %2765, %2726 ], [ %2723, %2699 ], [ %1963, %1975 ]
  %2794 = phi float [ %2672, %2671 ], [ %1964, %2156 ], [ %1964, %1958 ], [ %2672, %2768 ], [ %2672, %2766 ], [ %2672, %2726 ], [ %2672, %2699 ], [ %1964, %1975 ]
  %2795 = phi float [ %2673, %2671 ], [ %1965, %2156 ], [ %1965, %1958 ], [ %2673, %2768 ], [ %2673, %2766 ], [ %2673, %2726 ], [ %2673, %2699 ], [ %1965, %1975 ]
  %2796 = phi float [ %2674, %2671 ], [ %1966, %2156 ], [ %1966, %1958 ], [ %2674, %2768 ], [ %2674, %2766 ], [ %2674, %2726 ], [ %2674, %2699 ], [ %1966, %1975 ]
  %2797 = phi float [ %2675, %2671 ], [ %1967, %2156 ], [ %1967, %1958 ], [ %2675, %2768 ], [ %2675, %2766 ], [ %2675, %2726 ], [ %2675, %2699 ], [ %1967, %1975 ]
  %2798 = phi float [ %2676, %2671 ], [ %1968, %2156 ], [ %1968, %1958 ], [ %2676, %2768 ], [ %2676, %2766 ], [ %2676, %2726 ], [ %2676, %2699 ], [ %1968, %1975 ]
  %2799 = phi float [ %2677, %2671 ], [ %1969, %2156 ], [ %1969, %1958 ], [ %2677, %2768 ], [ %2677, %2766 ], [ %2677, %2726 ], [ %2677, %2699 ], [ %1969, %1975 ]
  %2800 = phi float [ %2678, %2671 ], [ %1970, %2156 ], [ %1970, %1958 ], [ %2678, %2768 ], [ %2678, %2766 ], [ %2678, %2726 ], [ %2678, %2699 ], [ %1970, %1975 ]
  %2801 = phi float [ %1971, %2671 ], [ %1971, %2156 ], [ %1971, %1958 ], [ %2779, %2768 ], [ %1971, %2766 ], [ %2757, %2726 ], [ %2711, %2699 ], [ %1971, %1975 ]
  %2802 = phi float [ %1972, %2671 ], [ %1972, %2156 ], [ %1972, %1958 ], [ %2776, %2768 ], [ %1972, %2766 ], [ %2734, %2726 ], [ %2708, %2699 ], [ %1972, %1975 ]
  %2803 = phi float [ %1973, %2671 ], [ %1973, %2156 ], [ %1973, %1958 ], [ %2781, %2768 ], [ %1973, %2766 ], [ %2759, %2726 ], [ %2714, %2699 ], [ %1973, %1975 ]
  %2804 = phi float [ %2679, %2671 ], [ %1974, %2156 ], [ %1974, %1958 ], [ %2679, %2768 ], [ %2679, %2766 ], [ %2679, %2726 ], [ %2679, %2699 ], [ %1974, %1975 ]
  br i1 %477, label %3618, label %2805

; <label>:2805                                    ; preds = %2788
  %2806 = icmp ult i32 %531, 4
  %2807 = add i32 %60, 72
  %2808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2807, i32 undef)  ; BufferLoad(srv,index,wot)
  %2809 = extractvalue %dx.types.ResRet.i32 %2808, 0
  %2810 = add i32 %60, 76
  %2811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2810, i32 undef)  ; BufferLoad(srv,index,wot)
  %2812 = extractvalue %dx.types.ResRet.i32 %2811, 0
  %2813 = or i32 %2812, %2809
  %2814 = icmp eq i32 %2813, 0
  br i1 %2814, label %3618, label %2815

; <label>:2815                                    ; preds = %2805
  %2816 = and i32 %2809, 262144
  %2817 = icmp ne i32 %2816, 0
  %2818 = select i1 %2817, float %65, float 1.000000e+00
  %2819 = select i1 %2817, float %66, float 0.000000e+00
  %2820 = select i1 %2817, float %67, float 0.000000e+00
  %2821 = select i1 %2817, float %68, float 1.000000e+00
  %2822 = select i1 %2817, float %69, float %97
  %2823 = select i1 %2817, float %70, float %98
  %2824 = add i32 %60, 332
  %2825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2824, i32 undef)  ; BufferLoad(srv,index,wot)
  %2826 = extractvalue %dx.types.ResRet.i32 %2825, 0
  %2827 = lshr i32 %2826, 16
  %2828 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2827)  ; LegacyF16ToF32(value)
  %2829 = fmul fast float %2828, 0x3F50624DE0000000
  %2830 = add i32 %60, 136
  %2831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2830, i32 undef)  ; BufferLoad(srv,index,wot)
  %2832 = extractvalue %dx.types.ResRet.i32 %2831, 0
  %2833 = lshr i32 %2832, 16
  %2834 = and i32 %2833, 255
  %2835 = lshr i32 %2832, 24
  %2836 = add i32 %60, 340
  %2837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2836, i32 undef)  ; BufferLoad(srv,index,wot)
  %2838 = extractvalue %dx.types.ResRet.i32 %2837, 0
  %2839 = and i32 %2838, 65535
  %2840 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2839)  ; LegacyF16ToF32(value)
  %2841 = lshr i32 %2838, 16
  %2842 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2841)  ; LegacyF16ToF32(value)
  %2843 = add i32 %60, 80
  %2844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2843, i32 undef)  ; BufferLoad(srv,index,wot)
  %2845 = extractvalue %dx.types.ResRet.i32 %2844, 0
  %2846 = lshr i32 %2845, 22
  %2847 = shl nuw nsw i32 %2846, 5
  %2848 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2847)  ; LegacyF16ToF32(value)
  %2849 = shl i32 %2845, 4
  %2850 = and i32 %2849, 32752
  %2851 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2850)  ; LegacyF16ToF32(value)
  %2852 = lshr i32 %2845, 7
  %2853 = and i32 %2852, 32752
  %2854 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2853)  ; LegacyF16ToF32(value)
  %2855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2856 = extractvalue %dx.types.CBufRet.f32 %2855, 3
  %2857 = fmul fast float %2856, 1.000000e+03
  %2858 = fmul fast float %467, %2857
  %2859 = call float @dx.op.unary.f32(i32 22, float %2858)  ; Frc(value)
  %2860 = fadd fast float %2859, %457
  %2861 = fmul fast float %468, %2857
  %2862 = call float @dx.op.unary.f32(i32 22, float %2861)  ; Frc(value)
  %2863 = fadd fast float %2862, %459
  %2864 = fmul fast float %2829, %2857
  %2865 = call float @dx.op.unary.f32(i32 22, float %2864)  ; Frc(value)
  %2866 = fmul fast float %2865, 0x401921FB60000000
  %2867 = fadd fast float %2866, %2848
  %2868 = call float @dx.op.unary.f32(i32 13, float %2867)  ; Sin(value)
  %2869 = call float @dx.op.unary.f32(i32 12, float %2867)  ; Cos(value)
  %2870 = fsub fast float -0.000000e+00, %2868
  %2871 = fadd fast float %2822, -5.000000e-01
  %2872 = fadd fast float %2823, -5.000000e-01
  %2873 = fmul fast float %2840, %2871
  %2874 = fmul fast float %2842, %2872
  %2875 = fadd fast float %2873, 5.000000e-01
  %2876 = fadd fast float %2874, 5.000000e-01
  %2877 = fmul fast float %2851, %2875
  %2878 = fmul fast float %2854, %2876
  %2879 = fmul fast float %2869, %2877
  %2880 = call float @dx.op.tertiary.f32(i32 46, float %2870, float %2878, float %2879)  ; FMad(a,b,c)
  %2881 = fmul fast float %2868, %2877
  %2882 = call float @dx.op.tertiary.f32(i32 46, float %2869, float %2878, float %2881)  ; FMad(a,b,c)
  %2883 = fadd fast float %2860, %2880
  %2884 = fadd fast float %2863, %2882
  %2885 = icmp ugt i32 %2834, 1
  %2886 = icmp ugt i32 %2832, 33554431
  %2887 = or i1 %2886, %2885
  br i1 %2887, label %2888, label %2913

; <label>:2888                                    ; preds = %2815
  %2889 = add i32 %60, 276
  %2890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2889, i32 undef)  ; BufferLoad(srv,index,wot)
  %2891 = extractvalue %dx.types.ResRet.i32 %2890, 0
  %2892 = lshr i32 %2891, 16
  %2893 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2892)  ; LegacyF16ToF32(value)
  %2894 = fmul fast float %2856, %2893
  %2895 = call float @dx.op.unary.f32(i32 22, float %2894)  ; Frc(value)
  %2896 = mul nuw nsw i32 %2834, %2835
  %2897 = uitofp i32 %2896 to float
  %2898 = fmul fast float %2895, %2897
  %2899 = call float @dx.op.unary.f32(i32 27, float %2898)  ; Round_ni(value)
  %2900 = fptoui float %2899 to i32
  %2901 = urem i32 %2900, %2834
  %2902 = udiv i32 %2900, %2835
  %2903 = call float @dx.op.unary.f32(i32 22, float %2883)  ; Frc(value)
  %2904 = call float @dx.op.unary.f32(i32 22, float %2884)  ; Frc(value)
  %2905 = uitofp i32 %2901 to float
  %2906 = uitofp i32 %2902 to float
  %2907 = fadd fast float %2903, %2905
  %2908 = fadd fast float %2904, %2906
  %2909 = uitofp i32 %2834 to float
  %2910 = uitofp i32 %2835 to float
  %2911 = fdiv fast float %2907, %2909
  %2912 = fdiv fast float %2908, %2910
  br label %2913

; <label>:2913                                    ; preds = %2888, %2815
  %2914 = phi float [ %2911, %2888 ], [ %2883, %2815 ]
  %2915 = phi float [ %2912, %2888 ], [ %2884, %2815 ]
  %2916 = and i32 %2809, 256
  %2917 = icmp eq i32 %2916, 0
  br i1 %2917, label %2964, label %2918

; <label>:2918                                    ; preds = %2913
  %2919 = add i32 %60, 484
  %2920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2919, i32 undef)  ; BufferLoad(srv,index,wot)
  %2921 = extractvalue %dx.types.ResRet.i32 %2920, 0
  %2922 = add i32 %2921, 0
  %2923 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2922, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2924 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2923, %dx.types.Handle %116, float %2914, float %2915, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2925 = extractvalue %dx.types.ResRet.f32 %2924, 0
  %2926 = add i32 %60, 148
  %2927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2926, i32 undef)  ; BufferLoad(srv,index,wot)
  %2928 = extractvalue %dx.types.ResRet.i32 %2927, 0
  %2929 = shl i32 %2928, 4
  %2930 = and i32 %2929, 32752
  %2931 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2930)  ; LegacyF16ToF32(value)
  %2932 = lshr i32 %2928, 7
  %2933 = and i32 %2932, 32752
  %2934 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2933)  ; LegacyF16ToF32(value)
  %2935 = fsub fast float 1.000000e+00, %526
  %2936 = call float @dx.op.binary.f32(i32 35, float %2935, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2937 = bitcast float %526 to i32
  %2938 = sitofp i32 %2937 to float
  %2939 = fadd fast float %2938, 0xC1CFBF8940000000
  %2940 = fmul fast float %2934, %2939
  %2941 = fadd fast float %2940, 0x41CFBF8940000000
  %2942 = fptosi float %2941 to i32
  %2943 = bitcast i32 %2942 to float
  %2944 = bitcast float %2936 to i32
  %2945 = sitofp i32 %2944 to float
  %2946 = fadd fast float %2945, 0xC1CFBF8940000000
  %2947 = fmul fast float %2946, %2934
  %2948 = fadd fast float %2947, 0x41CFBF8940000000
  %2949 = fptosi float %2948 to i32
  %2950 = bitcast i32 %2949 to float
  %2951 = fmul fast float %2943, %2931
  %2952 = fmul fast float %2950, %2931
  %2953 = fsub fast float %2936, %2951
  %2954 = fadd fast float %2952, %2936
  %2955 = call float @dx.op.unary.f32(i32 7, float %2953)  ; Saturate(value)
  %2956 = call float @dx.op.unary.f32(i32 7, float %2954)  ; Saturate(value)
  %2957 = fsub fast float %2925, %2955
  %2958 = fsub fast float %2956, %2955
  %2959 = bitcast float %2958 to i32
  %2960 = sub nsw i32 2129859010, %2959
  %2961 = bitcast i32 %2960 to float
  %2962 = fmul fast float %2961, %2957
  %2963 = call float @dx.op.unary.f32(i32 7, float %2962)  ; Saturate(value)
  br label %2964

; <label>:2964                                    ; preds = %2918, %2913
  %2965 = phi float [ %2963, %2918 ], [ %526, %2913 ]
  %2966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2807, i32 undef)  ; BufferLoad(srv,index,wot)
  %2967 = extractvalue %dx.types.ResRet.i32 %2966, 0
  %2968 = and i32 %2967, 128
  %2969 = icmp eq i32 %2968, 0
  br i1 %2969, label %2986, label %2970

; <label>:2970                                    ; preds = %2964
  %2971 = add i32 %60, 468
  %2972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2971, i32 undef)  ; BufferLoad(srv,index,wot)
  %2973 = extractvalue %dx.types.ResRet.i32 %2972, 0
  %2974 = add i32 %2973, 0
  %2975 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2974, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2976 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2975, %dx.types.Handle %116, float %2914, float %2915, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2977 = extractvalue %dx.types.ResRet.f32 %2976, 0
  %2978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2807, i32 undef)  ; BufferLoad(srv,index,wot)
  %2979 = extractvalue %dx.types.ResRet.i32 %2978, 0
  %2980 = and i32 %2979, 524288
  %2981 = icmp ne i32 %2980, 0
  %2982 = fcmp fast ogt float %2977, 0x3FE0101020000000
  %2983 = select i1 %2982, float 1.000000e+00, float 0.000000e+00
  %2984 = select i1 %2981, float %2983, float %2977
  %2985 = fmul fast float %2984, %2965
  br label %2986

; <label>:2986                                    ; preds = %2970, %2964
  %2987 = phi float [ %2985, %2970 ], [ %2965, %2964 ]
  %2988 = fcmp fast ult float %2987, 0x3F70101020000000
  br i1 %2988, label %3618, label %2989

; <label>:2989                                    ; preds = %2986
  %2990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2807, i32 undef)  ; BufferLoad(srv,index,wot)
  %2991 = extractvalue %dx.types.ResRet.i32 %2990, 0
  %2992 = and i32 %2991, 16
  %2993 = icmp eq i32 %2992, 0
  br i1 %2993, label %3192, label %2994

; <label>:2994                                    ; preds = %2989
  %2995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2830, i32 undef)  ; BufferLoad(srv,index,wot)
  %2996 = extractvalue %dx.types.ResRet.i32 %2995, 0
  %2997 = add i32 %60, 420
  %2998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2997, i32 undef)  ; BufferLoad(srv,index,wot)
  %2999 = extractvalue %dx.types.ResRet.i32 %2998, 0
  %3000 = add i32 %2999, 0
  %3001 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3000, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3002 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3001, %dx.types.Handle %115, float %2914, float %2915, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3003 = extractvalue %dx.types.ResRet.f32 %3002, 0
  %3004 = extractvalue %dx.types.ResRet.f32 %3002, 1
  %3005 = extractvalue %dx.types.ResRet.f32 %3002, 2
  %3006 = extractvalue %dx.types.ResRet.f32 %3002, 3
  %3007 = and i32 %2996, 255
  %3008 = uitofp i32 %3007 to float
  %3009 = lshr i32 %2996, 8
  %3010 = and i32 %3009, 255
  %3011 = uitofp i32 %3010 to float
  %3012 = fmul fast float %3006, %3008
  %3013 = fadd fast float %3012, %3011
  %3014 = fmul fast float %3013, 0x3F70101000000000
  %3015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2807, i32 undef)  ; BufferLoad(srv,index,wot)
  %3016 = extractvalue %dx.types.ResRet.i32 %3015, 0
  %3017 = and i32 %3016, 512
  %3018 = icmp eq i32 %3017, 0
  br i1 %3018, label %3027, label %3019

; <label>:3019                                    ; preds = %2994
  %3020 = add i32 %60, 500
  %3021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3020, i32 undef)  ; BufferLoad(srv,index,wot)
  %3022 = extractvalue %dx.types.ResRet.i32 %3021, 0
  %3023 = add i32 %3022, 0
  %3024 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3023, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3025 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3024, %dx.types.Handle %116, float %2914, float %2915, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3026 = extractvalue %dx.types.ResRet.f32 %3025, 0
  br label %3027

; <label>:3027                                    ; preds = %3019, %2994
  %3028 = phi float [ %3026, %3019 ], [ 1.000000e+00, %2994 ]
  %3029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2807, i32 undef)  ; BufferLoad(srv,index,wot)
  %3030 = extractvalue %dx.types.ResRet.i32 %3029, 0
  %3031 = and i32 %3030, 33554432
  %3032 = icmp eq i32 %3031, 0
  br i1 %3032, label %3139, label %3033

; <label>:3033                                    ; preds = %3027
  %3034 = add i32 %60, 272
  %3035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3034, i32 undef)  ; BufferLoad(srv,index,wot)
  %3036 = extractvalue %dx.types.ResRet.i32 %3035, 0
  %3037 = and i32 %3036, 65535
  %3038 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3037)  ; LegacyF16ToF32(value)
  %3039 = lshr i32 %3036, 16
  %3040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3039)  ; LegacyF16ToF32(value)
  %3041 = add i32 %60, 276
  %3042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3041, i32 undef)  ; BufferLoad(srv,index,wot)
  %3043 = extractvalue %dx.types.ResRet.i32 %3042, 0
  %3044 = and i32 %3043, 65535
  %3045 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3044)  ; LegacyF16ToF32(value)
  %3046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %3047 = extractvalue %dx.types.ResRet.i32 %3046, 0
  %3048 = lshr i32 %3047, 24
  %3049 = uitofp i32 %3048 to float
  %3050 = fmul fast float %3049, 0x3F70101020000000
  %3051 = and i32 %3047, 255
  %3052 = uitofp i32 %3051 to float
  %3053 = fmul fast float %3052, 0x3F70101020000000
  %3054 = lshr i32 %3047, 8
  %3055 = and i32 %3054, 255
  %3056 = uitofp i32 %3055 to float
  %3057 = fmul fast float %3056, 0x3F70101020000000
  %3058 = lshr i32 %3047, 16
  %3059 = and i32 %3058, 255
  %3060 = uitofp i32 %3059 to float
  %3061 = fmul fast float %3060, 0x3F70101020000000
  %3062 = add i32 %60, 268
  %3063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3062, i32 undef)  ; BufferLoad(srv,index,wot)
  %3064 = extractvalue %dx.types.ResRet.i32 %3063, 0
  %3065 = lshr i32 %3064, 24
  %3066 = uitofp i32 %3065 to float
  %3067 = fmul fast float %3066, 0x3F70101020000000
  %3068 = and i32 %3064, 255
  %3069 = uitofp i32 %3068 to float
  %3070 = fmul fast float %3069, 0x3F70101020000000
  %3071 = lshr i32 %3064, 8
  %3072 = and i32 %3071, 255
  %3073 = uitofp i32 %3072 to float
  %3074 = fmul fast float %3073, 0x3F70101020000000
  %3075 = lshr i32 %3064, 16
  %3076 = and i32 %3075, 255
  %3077 = uitofp i32 %3076 to float
  %3078 = fmul fast float %3077, 0x3F70101020000000
  %3079 = bitcast float %3003 to i32
  %3080 = ashr i32 %3079, 1
  %3081 = sub nsw i32 1597463174, %3080
  %3082 = bitcast i32 %3081 to float
  %3083 = fmul fast float %3003, 5.000000e-01
  %3084 = fmul fast float %3082, %3082
  %3085 = fmul fast float %3084, %3083
  %3086 = fsub fast float 1.500000e+00, %3085
  %3087 = fmul fast float %3082, %3003
  %3088 = fmul fast float %3087, %3086
  %3089 = bitcast float %3004 to i32
  %3090 = ashr i32 %3089, 1
  %3091 = sub nsw i32 1597463174, %3090
  %3092 = bitcast i32 %3091 to float
  %3093 = fmul fast float %3004, 5.000000e-01
  %3094 = fmul fast float %3092, %3092
  %3095 = fmul fast float %3094, %3093
  %3096 = fsub fast float 1.500000e+00, %3095
  %3097 = fmul fast float %3092, %3004
  %3098 = fmul fast float %3097, %3096
  %3099 = bitcast float %3005 to i32
  %3100 = ashr i32 %3099, 1
  %3101 = sub nsw i32 1597463174, %3100
  %3102 = bitcast i32 %3101 to float
  %3103 = fmul fast float %3005, 5.000000e-01
  %3104 = fmul fast float %3102, %3102
  %3105 = fmul fast float %3104, %3103
  %3106 = fsub fast float 1.500000e+00, %3105
  %3107 = fmul fast float %3102, %3005
  %3108 = fmul fast float %3107, %3106
  %3109 = fsub fast float %3088, %3070
  %3110 = fsub fast float %3098, %3074
  %3111 = fsub fast float %3108, %3078
  %3112 = fmul fast float %3109, %3038
  %3113 = fmul fast float %3110, %3040
  %3114 = fmul fast float %3111, %3045
  %3115 = fadd fast float %3112, %3053
  %3116 = fadd fast float %3113, %3057
  %3117 = fadd fast float %3114, %3061
  %3118 = call float @dx.op.unary.f32(i32 7, float %3115)  ; Saturate(value)
  %3119 = call float @dx.op.unary.f32(i32 7, float %3116)  ; Saturate(value)
  %3120 = call float @dx.op.unary.f32(i32 7, float %3117)  ; Saturate(value)
  %3121 = fmul fast float %3118, %3118
  %3122 = fmul fast float %3119, %3119
  %3123 = fmul fast float %3120, %3120
  %3124 = fsub fast float %3121, %3003
  %3125 = fsub fast float %3122, %3004
  %3126 = fsub fast float %3123, %3005
  %3127 = fmul fast float %3124, %3028
  %3128 = fmul fast float %3125, %3028
  %3129 = fmul fast float %3126, %3028
  %3130 = fadd fast float %3127, %3003
  %3131 = fadd fast float %3128, %3004
  %3132 = fadd fast float %3129, %3005
  %3133 = fadd fast float %3050, %3014
  %3134 = fsub fast float %3133, %3067
  %3135 = call float @dx.op.unary.f32(i32 7, float %3134)  ; Saturate(value)
  %3136 = fsub fast float %3135, %3014
  %3137 = fmul fast float %3136, %3028
  %3138 = fadd fast float %3137, %3014
  br label %3192

; <label>:3139                                    ; preds = %3027
  %3140 = and i32 %3030, 134217728
  %3141 = icmp eq i32 %3140, 0
  br i1 %3141, label %3176, label %3142

; <label>:3142                                    ; preds = %3139
  %3143 = call float @dx.op.unary.f32(i32 24, float %444)  ; Sqrt(value)
  %3144 = call float @dx.op.unary.f32(i32 24, float %448)  ; Sqrt(value)
  %3145 = call float @dx.op.unary.f32(i32 24, float %452)  ; Sqrt(value)
  %3146 = fadd fast float %3143, -5.000000e-01
  %3147 = fadd fast float %3144, -5.000000e-01
  %3148 = fadd fast float %3145, -5.000000e-01
  %3149 = fmul fast float %3146, %3028
  %3150 = fmul fast float %3147, %3028
  %3151 = fmul fast float %3148, %3028
  %3152 = fadd fast float %3149, 5.000000e-01
  %3153 = fadd fast float %3150, 5.000000e-01
  %3154 = fadd fast float %3151, 5.000000e-01
  %3155 = call float @dx.op.unary.f32(i32 24, float %3003)  ; Sqrt(value)
  %3156 = call float @dx.op.unary.f32(i32 24, float %3004)  ; Sqrt(value)
  %3157 = call float @dx.op.unary.f32(i32 24, float %3005)  ; Sqrt(value)
  %3158 = fmul fast float %3152, 2.000000e+00
  %3159 = fsub fast float 1.000000e+00, %3158
  %3160 = fmul fast float %3159, %3155
  %3161 = fadd fast float %3160, %3158
  %3162 = fmul fast float %3161, %3155
  %3163 = fmul fast float %3153, 2.000000e+00
  %3164 = fsub fast float 1.000000e+00, %3163
  %3165 = fmul fast float %3164, %3156
  %3166 = fadd fast float %3165, %3163
  %3167 = fmul fast float %3166, %3156
  %3168 = fmul fast float %3154, 2.000000e+00
  %3169 = fsub fast float 1.000000e+00, %3168
  %3170 = fmul fast float %3169, %3157
  %3171 = fadd fast float %3170, %3168
  %3172 = fmul fast float %3171, %3157
  %3173 = fmul fast float %3162, %3162
  %3174 = fmul fast float %3167, %3167
  %3175 = fmul fast float %3172, %3172
  br label %3192

; <label>:3176                                    ; preds = %3139
  %3177 = fmul fast float %444, %444
  %3178 = fmul fast float %448, %448
  %3179 = fmul fast float %452, %452
  %3180 = fadd fast float %3177, -1.000000e+00
  %3181 = fadd fast float %3178, -1.000000e+00
  %3182 = fadd fast float %3179, -1.000000e+00
  %3183 = fmul fast float %3028, %3180
  %3184 = fmul fast float %3028, %3181
  %3185 = fmul fast float %3028, %3182
  %3186 = fadd fast float %3183, 1.000000e+00
  %3187 = fadd fast float %3184, 1.000000e+00
  %3188 = fadd fast float %3185, 1.000000e+00
  %3189 = fmul fast float %3186, %3003
  %3190 = fmul fast float %3187, %3004
  %3191 = fmul fast float %3188, %3005
  br label %3192

; <label>:3192                                    ; preds = %3176, %3142, %3033, %2989
  %3193 = phi float [ %3138, %3033 ], [ %3014, %3142 ], [ %3014, %3176 ], [ 0x3FA23C0BE0000000, %2989 ]
  %3194 = phi float [ %3130, %3033 ], [ %3173, %3142 ], [ %3189, %3176 ], [ 1.000000e+00, %2989 ]
  %3195 = phi float [ %3131, %3033 ], [ %3174, %3142 ], [ %3190, %3176 ], [ 1.000000e+00, %2989 ]
  %3196 = phi float [ %3132, %3033 ], [ %3175, %3142 ], [ %3191, %3176 ], [ 1.000000e+00, %2989 ]
  %3197 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3198 = extractvalue %dx.types.CBufRet.i32 %3197, 1
  %3199 = and i32 %3198, 1
  %3200 = icmp ne i32 %3199, 0
  %3201 = add i32 %60, 356
  %3202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3201, i32 undef)  ; BufferLoad(srv,index,wot)
  %3203 = extractvalue %dx.types.ResRet.i32 %3202, 0
  %3204 = and i32 %3203, 32
  %3205 = icmp ne i32 %3204, 0
  %3206 = and i1 %3200, %3205
  %3207 = select i1 %3206, float 1.000000e+00, float %3194
  %3208 = select i1 %3206, float 0x3FD3333340000000, float %3195
  %3209 = select i1 %3206, float 0x3FD3333340000000, float %3196
  %3210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2807, i32 undef)  ; BufferLoad(srv,index,wot)
  %3211 = extractvalue %dx.types.ResRet.i32 %3210, 0
  %3212 = and i32 %3211, 32
  %3213 = icmp eq i32 %3212, 0
  br i1 %3213, label %3286, label %3214

; <label>:3214                                    ; preds = %3192
  %3215 = add i32 %60, 140
  %3216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3215, i32 undef)  ; BufferLoad(srv,index,wot)
  %3217 = extractvalue %dx.types.ResRet.i32 %3216, 0
  %3218 = add i32 %60, 436
  %3219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3218, i32 undef)  ; BufferLoad(srv,index,wot)
  %3220 = extractvalue %dx.types.ResRet.i32 %3219, 0
  %3221 = add i32 %3220, 0
  %3222 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3221, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3223 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3222, %dx.types.Handle %115, float %2914, float %2915, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3224 = extractvalue %dx.types.ResRet.f32 %3223, 0
  %3225 = extractvalue %dx.types.ResRet.f32 %3223, 1
  %3226 = extractvalue %dx.types.ResRet.f32 %3223, 2
  %3227 = extractvalue %dx.types.ResRet.f32 %3223, 3
  %3228 = and i32 %3217, 255
  %3229 = uitofp i32 %3228 to float
  %3230 = lshr i32 %3217, 8
  %3231 = and i32 %3230, 255
  %3232 = uitofp i32 %3231 to float
  %3233 = lshr i32 %3217, 16
  %3234 = and i32 %3233, 255
  %3235 = uitofp i32 %3234 to float
  %3236 = fmul fast float %3235, 0x3F70101000000000
  %3237 = fmul fast float %3224, %3229
  %3238 = fadd fast float %3237, %3232
  %3239 = fmul fast float %3238, 0x3F70101000000000
  %3240 = fadd fast float %3225, -5.000000e-01
  %3241 = fadd fast float %3227, -5.000000e-01
  %3242 = fmul fast float %3240, %3236
  %3243 = fmul fast float %3241, %3236
  %3244 = fadd fast float %3242, 5.000000e-01
  %3245 = fadd fast float %3243, 5.000000e-01
  %3246 = fmul fast float %3244, 2.000000e+00
  %3247 = fadd fast float %3246, -1.000000e+00
  %3248 = fmul fast float %3245, 2.000000e+00
  %3249 = fadd fast float %3248, -1.000000e+00
  %3250 = fadd fast float %3247, %3249
  %3251 = fmul fast float %3250, 5.000000e-01
  %3252 = fsub fast float %3247, %3249
  %3253 = fmul fast float %3252, 5.000000e-01
  %3254 = call float @dx.op.unary.f32(i32 6, float %3251)  ; FAbs(value)
  %3255 = fsub fast float 1.000000e+00, %3254
  %3256 = call float @dx.op.unary.f32(i32 6, float %3253)  ; FAbs(value)
  %3257 = fsub fast float %3255, %3256
  %3258 = call float @dx.op.dot3.f32(i32 55, float %3251, float %3253, float %3257, float %3251, float %3253, float %3257)  ; Dot3(ax,ay,az,bx,by,bz)
  %3259 = call float @dx.op.unary.f32(i32 25, float %3258)  ; Rsqrt(value)
  %3260 = fmul fast float %3251, %3259
  %3261 = fmul fast float %3253, %3259
  %3262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2807, i32 undef)  ; BufferLoad(srv,index,wot)
  %3263 = extractvalue %dx.types.ResRet.i32 %3262, 0
  %3264 = and i32 %3263, 67108864
  %3265 = icmp eq i32 %3264, 0
  br i1 %3265, label %3282, label %3266

; <label>:3266                                    ; preds = %3214
  %3267 = add i32 %60, 328
  %3268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3267, i32 undef)  ; BufferLoad(srv,index,wot)
  %3269 = extractvalue %dx.types.ResRet.i32 %3268, 0
  %3270 = and i32 %3269, 65535
  %3271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3270)  ; LegacyF16ToF32(value)
  %3272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2824, i32 undef)  ; BufferLoad(srv,index,wot)
  %3273 = extractvalue %dx.types.ResRet.i32 %3272, 0
  %3274 = and i32 %3273, 65535
  %3275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3274)  ; LegacyF16ToF32(value)
  %3276 = lshr i32 %3269, 16
  %3277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3276)  ; LegacyF16ToF32(value)
  %3278 = fsub fast float %3239, %3277
  %3279 = fmul fast float %3278, %3271
  %3280 = fadd fast float %3279, %3275
  %3281 = call float @dx.op.unary.f32(i32 7, float %3280)  ; Saturate(value)
  br label %3282

; <label>:3282                                    ; preds = %3266, %3214
  %3283 = phi float [ %3281, %3266 ], [ %3239, %3214 ]
  %3284 = call float @dx.op.dot2.f32(i32 54, float %3260, float %3261, float %2818, float %2819)  ; Dot2(ax,ay,bx,by)
  %3285 = call float @dx.op.dot2.f32(i32 54, float %3260, float %3261, float %2820, float %2821)  ; Dot2(ax,ay,bx,by)
  br label %3286

; <label>:3286                                    ; preds = %3282, %3192
  %3287 = phi float [ %3283, %3282 ], [ 0x3FD6666660000000, %3192 ]
  %3288 = phi float [ %3284, %3282 ], [ 0.000000e+00, %3192 ]
  %3289 = phi float [ %3285, %3282 ], [ 0.000000e+00, %3192 ]
  %3290 = phi float [ %3226, %3282 ], [ 1.000000e+00, %3192 ]
  %3291 = add i32 %60, 208
  %3292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3291, i32 undef)  ; BufferLoad(srv,index,wot)
  %3293 = extractvalue %dx.types.ResRet.i32 %3292, 0
  %3294 = lshr i32 %3293, 22
  %3295 = shl nuw nsw i32 %3294, 5
  %3296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3295)  ; LegacyF16ToF32(value)
  %3297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2807, i32 undef)  ; BufferLoad(srv,index,wot)
  %3298 = extractvalue %dx.types.ResRet.i32 %3297, 0
  %3299 = and i32 %3298, 64
  %3300 = icmp eq i32 %3299, 0
  br i1 %3300, label %3334, label %3301

; <label>:3301                                    ; preds = %3286
  %3302 = add i32 %60, 452
  %3303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3302, i32 undef)  ; BufferLoad(srv,index,wot)
  %3304 = extractvalue %dx.types.ResRet.i32 %3303, 0
  %3305 = add i32 %3304, 0
  %3306 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3305, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2807, i32 undef)  ; BufferLoad(srv,index,wot)
  %3308 = extractvalue %dx.types.ResRet.i32 %3307, 0
  %3309 = and i32 %3308, 131072
  %3310 = icmp eq i32 %3309, 0
  %3311 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3306, %dx.types.Handle %115, float %2914, float %2915, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3312 = extractvalue %dx.types.ResRet.f32 %3311, 0
  %3313 = extractvalue %dx.types.ResRet.f32 %3311, 1
  %3314 = extractvalue %dx.types.ResRet.f32 %3311, 2
  %3315 = fmul fast float %3312, %432
  %3316 = fmul fast float %3313, %435
  %3317 = fmul fast float %3314, %438
  br i1 %3310, label %3324, label %3318

; <label>:3318                                    ; preds = %3301
  %3319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3320 = extractvalue %dx.types.CBufRet.f32 %3319, 0
  %3321 = fmul fast float %3320, %3315
  %3322 = fmul fast float %3320, %3316
  %3323 = fmul fast float %3320, %3317
  br label %3324

; <label>:3324                                    ; preds = %3318, %3301
  %3325 = phi float [ %3321, %3318 ], [ %3315, %3301 ]
  %3326 = phi float [ %3322, %3318 ], [ %3316, %3301 ]
  %3327 = phi float [ %3323, %3318 ], [ %3317, %3301 ]
  %3328 = fmul fast float %3325, %3296
  %3329 = select i1 %289, float %3328, float %3325
  %3330 = call float @dx.op.dot3.f32(i32 55, float %3329, float %3326, float %3327, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3331 = select i1 %289, float 0.000000e+00, float %3325
  %3332 = select i1 %289, float %3330, float %3326
  %3333 = select i1 %289, float 0.000000e+00, float %3327
  br label %3334

; <label>:3334                                    ; preds = %3324, %3286
  %3335 = phi float [ %3331, %3324 ], [ 0.000000e+00, %3286 ]
  %3336 = phi float [ %3332, %3324 ], [ 0.000000e+00, %3286 ]
  %3337 = phi float [ %3333, %3324 ], [ 0.000000e+00, %3286 ]
  %3338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2807, i32 undef)  ; BufferLoad(srv,index,wot)
  %3339 = extractvalue %dx.types.ResRet.i32 %3338, 0
  %3340 = and i32 %3339, 10240
  %3341 = icmp eq i32 %3340, 0
  br i1 %3341, label %3386, label %3342

; <label>:3342                                    ; preds = %3334
  %3343 = add i32 %60, 516
  %3344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3343, i32 undef)  ; BufferLoad(srv,index,wot)
  %3345 = extractvalue %dx.types.ResRet.i32 %3344, 0
  %3346 = add i32 %3345, 0
  %3347 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3346, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3348 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3347, %dx.types.Handle %116, float %2914, float %2915, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3349 = extractvalue %dx.types.ResRet.f32 %3348, 1
  %3350 = extractvalue %dx.types.ResRet.f32 %3348, 3
  %3351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2807, i32 undef)  ; BufferLoad(srv,index,wot)
  %3352 = extractvalue %dx.types.ResRet.i32 %3351, 0
  %3353 = and i32 %3352, 1048576
  %3354 = icmp ne i32 %3353, 0
  %3355 = and i32 %3352, 8192
  %3356 = icmp eq i32 %3355, 0
  br i1 %3356, label %3372, label %3357

; <label>:3357                                    ; preds = %3342
  %3358 = extractvalue %dx.types.ResRet.f32 %3348, 2
  %3359 = select i1 %3354, float %3358, float %3349
  %3360 = extractvalue %dx.types.ResRet.f32 %3348, 0
  %3361 = select i1 %3354, float %3360, float %3349
  %3362 = add i32 %60, 144
  %3363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3362, i32 undef)  ; BufferLoad(srv,index,wot)
  %3364 = extractvalue %dx.types.ResRet.i32 %3363, 0
  %3365 = lshr i32 %3364, 16
  %3366 = and i32 %3365, 255
  %3367 = uitofp i32 %3366 to float
  %3368 = fmul fast float %3367, 0x3F80101020000000
  %3369 = fmul fast float %3368, %3361
  %3370 = fmul fast float %3368, %3349
  %3371 = fmul fast float %3368, %3359
  br label %3372

; <label>:3372                                    ; preds = %3357, %3342
  %3373 = phi float [ %3369, %3357 ], [ 0.000000e+00, %3342 ]
  %3374 = phi float [ %3370, %3357 ], [ 0.000000e+00, %3342 ]
  %3375 = phi float [ %3371, %3357 ], [ 0.000000e+00, %3342 ]
  %3376 = and i32 %3352, 2048
  %3377 = icmp eq i32 %3376, 0
  br i1 %3377, label %3386, label %3378

; <label>:3378                                    ; preds = %3372
  %3379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3291, i32 undef)  ; BufferLoad(srv,index,wot)
  %3380 = extractvalue %dx.types.ResRet.i32 %3379, 0
  %3381 = shl i32 %3380, 4
  %3382 = and i32 %3381, 32752
  %3383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3382)  ; LegacyF16ToF32(value)
  %3384 = fmul fast float %3383, %3350
  %3385 = call float @dx.op.binary.f32(i32 35, float %3384, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3386

; <label>:3386                                    ; preds = %3378, %3372, %3334
  %3387 = phi float [ %3373, %3378 ], [ %3373, %3372 ], [ 0.000000e+00, %3334 ]
  %3388 = phi float [ %3374, %3378 ], [ %3374, %3372 ], [ 0.000000e+00, %3334 ]
  %3389 = phi float [ %3375, %3378 ], [ %3375, %3372 ], [ 0.000000e+00, %3334 ]
  %3390 = phi float [ %3385, %3378 ], [ 0x3F70101020000000, %3372 ], [ 0x3F70101020000000, %3334 ]
  %3391 = add i32 %60, 144
  %3392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3391, i32 undef)  ; BufferLoad(srv,index,wot)
  %3393 = extractvalue %dx.types.ResRet.i32 %3392, 0
  %3394 = and i32 %3393, 255
  %3395 = uitofp i32 %3394 to float
  %3396 = lshr i32 %3393, 8
  %3397 = and i32 %3396, 255
  %3398 = uitofp i32 %3397 to float
  %3399 = call float @dx.op.dot3.f32(i32 55, float %3207, float %3208, float %3209, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3400 = fmul fast float %3398, %3399
  %3401 = fadd fast float %3400, %3395
  %3402 = fmul fast float %3401, 0x3F70101020000000
  %3403 = call float @dx.op.unary.f32(i32 7, float %3402)  ; Saturate(value)
  br i1 %2806, label %3404, label %3412

; <label>:3404                                    ; preds = %3386
  %3405 = fsub fast float 1.000000e+00, %2987
  %3406 = fmul fast float %3405, %2794
  %3407 = fmul fast float %3405, %2795
  %3408 = fmul fast float %3405, %2796
  %3409 = fmul fast float %3405, %2797
  %3410 = fmul fast float %3405, %2798
  %3411 = fmul fast float %3405, %2799
  br label %3412

; <label>:3412                                    ; preds = %3404, %3386
  %3413 = phi float [ %3406, %3404 ], [ %2794, %3386 ]
  %3414 = phi float [ %3407, %3404 ], [ %2795, %3386 ]
  %3415 = phi float [ %3408, %3404 ], [ %2796, %3386 ]
  %3416 = phi float [ %3409, %3404 ], [ %2797, %3386 ]
  %3417 = phi float [ %3410, %3404 ], [ %2798, %3386 ]
  %3418 = phi float [ %3411, %3404 ], [ %2799, %3386 ]
  %3419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2807, i32 undef)  ; BufferLoad(srv,index,wot)
  %3420 = extractvalue %dx.types.ResRet.i32 %3419, 0
  %3421 = and i32 %3420, 3
  %3422 = icmp eq i32 %3421, 3
  br i1 %3422, label %3501, label %3423

; <label>:3423                                    ; preds = %3412
  %3424 = and i32 %3420, 16
  %3425 = icmp ne i32 %3424, 0
  %3426 = select i1 %3425, float %2987, float 0.000000e+00
  %3427 = icmp eq i32 %3421, 0
  br i1 %3427, label %3428, label %3456

; <label>:3428                                    ; preds = %3423
  %3429 = and i32 %3420, 64
  %3430 = icmp ne i32 %3429, 0
  %3431 = select i1 %3430, float %2987, float 0.000000e+00
  %3432 = fsub fast float %3207, %3413
  %3433 = fsub fast float %3208, %3414
  %3434 = fsub fast float %3209, %3415
  %3435 = fmul fast float %3426, %3432
  %3436 = fmul fast float %3426, %3433
  %3437 = fmul fast float %3426, %3434
  %3438 = fadd fast float %3435, %3413
  %3439 = fadd fast float %3436, %3414
  %3440 = fadd fast float %3437, %3415
  %3441 = fsub fast float %3193, %2800
  %3442 = fmul fast float %3426, %3441
  %3443 = fadd fast float %3442, %2800
  %3444 = fsub fast float %3335, %3416
  %3445 = fsub fast float %3336, %3417
  %3446 = fsub fast float %3337, %3418
  %3447 = fmul fast float %3431, %3444
  %3448 = fmul fast float %3431, %3445
  %3449 = fmul fast float %3431, %3446
  %3450 = fadd fast float %3447, %3416
  %3451 = fadd fast float %3448, %3417
  %3452 = fadd fast float %3449, %3418
  %3453 = fsub fast float %3403, %2804
  %3454 = fmul fast float %3426, %3453
  %3455 = fadd fast float %3454, %2804
  br label %3501

; <label>:3456                                    ; preds = %3423
  %3457 = icmp eq i32 %3421, 1
  br i1 %3457, label %3458, label %3471

; <label>:3458                                    ; preds = %3456
  %3459 = fadd fast float %3207, -1.000000e+00
  %3460 = fadd fast float %3208, -1.000000e+00
  %3461 = fadd fast float %3209, -1.000000e+00
  %3462 = fmul fast float %3426, %3459
  %3463 = fmul fast float %3426, %3460
  %3464 = fmul fast float %3426, %3461
  %3465 = fadd fast float %3462, 1.000000e+00
  %3466 = fadd fast float %3463, 1.000000e+00
  %3467 = fadd fast float %3464, 1.000000e+00
  %3468 = fmul fast float %3465, %3413
  %3469 = fmul fast float %3466, %3414
  %3470 = fmul fast float %3467, %3415
  br label %3501

; <label>:3471                                    ; preds = %3456
  %3472 = icmp eq i32 %3421, 2
  br i1 %3472, label %3473, label %3501

; <label>:3473                                    ; preds = %3471
  %3474 = call float @dx.op.unary.f32(i32 24, float %3207)  ; Sqrt(value)
  %3475 = call float @dx.op.unary.f32(i32 24, float %3208)  ; Sqrt(value)
  %3476 = call float @dx.op.unary.f32(i32 24, float %3209)  ; Sqrt(value)
  %3477 = fadd fast float %3474, -5.000000e-01
  %3478 = fadd fast float %3475, -5.000000e-01
  %3479 = fadd fast float %3476, -5.000000e-01
  %3480 = fmul fast float %3477, %3426
  %3481 = fmul fast float %3478, %3426
  %3482 = fmul fast float %3479, %3426
  %3483 = fadd fast float %3480, 5.000000e-01
  %3484 = fadd fast float %3481, 5.000000e-01
  %3485 = fadd fast float %3482, 5.000000e-01
  %3486 = fmul fast float %3483, 2.000000e+00
  %3487 = fsub fast float 1.000000e+00, %3486
  %3488 = fmul fast float %3487, %3413
  %3489 = fadd fast float %3488, %3486
  %3490 = fmul fast float %3489, %3413
  %3491 = fmul fast float %3484, 2.000000e+00
  %3492 = fsub fast float 1.000000e+00, %3491
  %3493 = fmul fast float %3492, %3414
  %3494 = fadd fast float %3493, %3491
  %3495 = fmul fast float %3494, %3414
  %3496 = fmul fast float %3485, 2.000000e+00
  %3497 = fsub fast float 1.000000e+00, %3496
  %3498 = fmul fast float %3497, %3415
  %3499 = fadd fast float %3498, %3496
  %3500 = fmul fast float %3499, %3415
  br label %3501

; <label>:3501                                    ; preds = %3473, %3471, %3458, %3428, %3412
  %3502 = phi float [ %3413, %3412 ], [ %3490, %3473 ], [ %3413, %3471 ], [ %3468, %3458 ], [ %3438, %3428 ]
  %3503 = phi float [ %3414, %3412 ], [ %3495, %3473 ], [ %3414, %3471 ], [ %3469, %3458 ], [ %3439, %3428 ]
  %3504 = phi float [ %3415, %3412 ], [ %3500, %3473 ], [ %3415, %3471 ], [ %3470, %3458 ], [ %3440, %3428 ]
  %3505 = phi float [ %3416, %3412 ], [ %3416, %3473 ], [ %3416, %3471 ], [ %3416, %3458 ], [ %3450, %3428 ]
  %3506 = phi float [ %3417, %3412 ], [ %3417, %3473 ], [ %3417, %3471 ], [ %3417, %3458 ], [ %3451, %3428 ]
  %3507 = phi float [ %3418, %3412 ], [ %3418, %3473 ], [ %3418, %3471 ], [ %3418, %3458 ], [ %3452, %3428 ]
  %3508 = phi float [ %2800, %3412 ], [ %2800, %3473 ], [ %2800, %3471 ], [ %2800, %3458 ], [ %3443, %3428 ]
  %3509 = phi float [ %2804, %3412 ], [ %2804, %3473 ], [ %2804, %3471 ], [ %2804, %3458 ], [ %3455, %3428 ]
  %3510 = and i32 %3420, 12
  %3511 = icmp eq i32 %3510, 12
  br i1 %3511, label %3618, label %3512

; <label>:3512                                    ; preds = %3501
  %3513 = and i32 %3420, 2097184
  %3514 = icmp eq i32 %3513, 2097184
  %3515 = select i1 %3514, float %2987, float 0.000000e+00
  %3516 = and i32 %3420, 4194336
  %3517 = icmp eq i32 %3516, 4194336
  %3518 = select i1 %3517, float %2987, float 0.000000e+00
  %3519 = and i32 %3420, 8388640
  %3520 = icmp eq i32 %3519, 8388640
  %3521 = select i1 %3520, float %2987, float 0.000000e+00
  %3522 = and i32 %3420, 2048
  %3523 = icmp ne i32 %3522, 0
  %3524 = select i1 %3523, float %2987, float 0.000000e+00
  %3525 = and i32 %3420, 8192
  %3526 = icmp ne i32 %3525, 0
  %3527 = select i1 %3526, float %2987, float 0.000000e+00
  %3528 = icmp eq i32 %3510, 0
  br i1 %3528, label %3529, label %3554

; <label>:3529                                    ; preds = %3512
  %3530 = fsub fast float %3288, %2789
  %3531 = fsub fast float %3289, %2790
  %3532 = fmul fast float %3515, %3530
  %3533 = fmul fast float %3515, %3531
  %3534 = fadd fast float %3532, %2789
  %3535 = fadd fast float %3533, %2790
  %3536 = fsub fast float %3290, %2802
  %3537 = fmul fast float %3518, %3536
  %3538 = fadd fast float %3537, %2802
  %3539 = fsub fast float %3287, %2801
  %3540 = fmul fast float %3521, %3539
  %3541 = fadd fast float %3540, %2801
  %3542 = fsub fast float %3390, %2803
  %3543 = fmul fast float %3524, %3542
  %3544 = fadd fast float %3543, %2803
  %3545 = fsub fast float %3387, %2791
  %3546 = fsub fast float %3388, %2792
  %3547 = fsub fast float %3389, %2793
  %3548 = fmul fast float %3527, %3545
  %3549 = fmul fast float %3527, %3546
  %3550 = fmul fast float %3527, %3547
  %3551 = fadd fast float %3548, %2791
  %3552 = fadd fast float %3549, %2792
  %3553 = fadd fast float %3550, %2793
  br label %3618

; <label>:3554                                    ; preds = %3512
  %3555 = icmp eq i32 %3510, 4
  br i1 %3555, label %3556, label %3596

; <label>:3556                                    ; preds = %3554
  %3557 = fmul fast float %3515, %3288
  %3558 = fmul fast float %3515, %3289
  %3559 = fadd fast float %3557, %2789
  %3560 = fadd fast float %3558, %2790
  %3561 = call float @dx.op.binary.f32(i32 36, float %2802, float %3290)  ; FMin(a,b)
  %3562 = fsub fast float %3561, %2802
  %3563 = fmul fast float %3562, %3518
  %3564 = fadd fast float %3563, %2802
  %3565 = fadd fast float %3287, %2801
  %3566 = fmul fast float %3565, 0x3FF337FAE0000000
  %3567 = fmul fast float %2801, %2801
  %3568 = fmul fast float %3287, %3287
  %3569 = fadd fast float %3568, %3567
  %3570 = fmul fast float %3569, 0x3FE5152B00000000
  %3571 = fmul fast float %2801, 0xBFCC1F85E0000000
  %3572 = fmul fast float %3571, %3287
  %3573 = fadd fast float %3572, 0xBFE1363700000000
  %3574 = fadd fast float %3573, %3566
  %3575 = fsub fast float %3574, %3570
  %3576 = fmul fast float %3565, 0x3FBA6F0D00000000
  %3577 = fmul fast float %3569, 0x3FD0432880000000
  %3578 = fmul fast float %2801, 0xBFEF110800000000
  %3579 = fmul fast float %3578, %3287
  %3580 = fadd fast float %3579, 1.000000e+00
  %3581 = fsub fast float %3580, %3576
  %3582 = fadd fast float %3581, %3577
  %3583 = fdiv fast float %3575, %3582
  %3584 = call float @dx.op.unary.f32(i32 7, float %3583)  ; Saturate(value)
  %3585 = fsub fast float %3584, %2801
  %3586 = fmul fast float %3585, %3521
  %3587 = fadd fast float %3586, %2801
  %3588 = fmul fast float %3524, %3390
  %3589 = fadd fast float %3588, %2803
  %3590 = fmul fast float %3527, %3387
  %3591 = fmul fast float %3527, %3388
  %3592 = fmul fast float %3527, %3389
  %3593 = fadd fast float %3590, %2791
  %3594 = fadd fast float %3591, %2792
  %3595 = fadd fast float %3592, %2793
  br label %3618

; <label>:3596                                    ; preds = %3554
  %3597 = icmp eq i32 %3510, 8
  br i1 %3597, label %3598, label %3618

; <label>:3598                                    ; preds = %3596
  %3599 = fmul fast float %3515, %3288
  %3600 = fmul fast float %3515, %3289
  %3601 = fadd fast float %3599, %2789
  %3602 = fadd fast float %3600, %2790
  %3603 = call float @dx.op.binary.f32(i32 36, float %2802, float %3290)  ; FMin(a,b)
  %3604 = fsub fast float %3603, %2802
  %3605 = fmul fast float %3604, %3518
  %3606 = fadd fast float %3605, %2802
  %3607 = fsub fast float %3287, %2801
  %3608 = fmul fast float %3521, %3607
  %3609 = fadd fast float %3608, %2801
  %3610 = fmul fast float %3524, %3390
  %3611 = fadd fast float %3610, %2803
  %3612 = fmul fast float %3527, %3387
  %3613 = fmul fast float %3527, %3388
  %3614 = fmul fast float %3527, %3389
  %3615 = fadd fast float %3612, %2791
  %3616 = fadd fast float %3613, %2792
  %3617 = fadd fast float %3614, %2793
  br label %3618

; <label>:3618                                    ; preds = %3598, %3596, %3556, %3529, %3501, %2986, %2805, %2788
  %3619 = phi float [ %2789, %3501 ], [ %2789, %2986 ], [ %2789, %2788 ], [ %2789, %2805 ], [ %3534, %3529 ], [ %3559, %3556 ], [ %2789, %3596 ], [ %3601, %3598 ]
  %3620 = phi float [ %2790, %3501 ], [ %2790, %2986 ], [ %2790, %2788 ], [ %2790, %2805 ], [ %3535, %3529 ], [ %3560, %3556 ], [ %2790, %3596 ], [ %3602, %3598 ]
  %3621 = phi float [ %2791, %3501 ], [ %2791, %2986 ], [ %2791, %2788 ], [ %2791, %2805 ], [ %3551, %3529 ], [ %3593, %3556 ], [ %2791, %3596 ], [ %3615, %3598 ]
  %3622 = phi float [ %2792, %3501 ], [ %2792, %2986 ], [ %2792, %2788 ], [ %2792, %2805 ], [ %3552, %3529 ], [ %3594, %3556 ], [ %2792, %3596 ], [ %3616, %3598 ]
  %3623 = phi float [ %2793, %3501 ], [ %2793, %2986 ], [ %2793, %2788 ], [ %2793, %2805 ], [ %3553, %3529 ], [ %3595, %3556 ], [ %2793, %3596 ], [ %3617, %3598 ]
  %3624 = phi float [ %3502, %3501 ], [ %2794, %2986 ], [ %2794, %2788 ], [ %2794, %2805 ], [ %3502, %3529 ], [ %3502, %3556 ], [ %3502, %3596 ], [ %3502, %3598 ]
  %3625 = phi float [ %3503, %3501 ], [ %2795, %2986 ], [ %2795, %2788 ], [ %2795, %2805 ], [ %3503, %3529 ], [ %3503, %3556 ], [ %3503, %3596 ], [ %3503, %3598 ]
  %3626 = phi float [ %3504, %3501 ], [ %2796, %2986 ], [ %2796, %2788 ], [ %2796, %2805 ], [ %3504, %3529 ], [ %3504, %3556 ], [ %3504, %3596 ], [ %3504, %3598 ]
  %3627 = phi float [ %3505, %3501 ], [ %2797, %2986 ], [ %2797, %2788 ], [ %2797, %2805 ], [ %3505, %3529 ], [ %3505, %3556 ], [ %3505, %3596 ], [ %3505, %3598 ]
  %3628 = phi float [ %3506, %3501 ], [ %2798, %2986 ], [ %2798, %2788 ], [ %2798, %2805 ], [ %3506, %3529 ], [ %3506, %3556 ], [ %3506, %3596 ], [ %3506, %3598 ]
  %3629 = phi float [ %3507, %3501 ], [ %2799, %2986 ], [ %2799, %2788 ], [ %2799, %2805 ], [ %3507, %3529 ], [ %3507, %3556 ], [ %3507, %3596 ], [ %3507, %3598 ]
  %3630 = phi float [ %3508, %3501 ], [ %2800, %2986 ], [ %2800, %2788 ], [ %2800, %2805 ], [ %3508, %3529 ], [ %3508, %3556 ], [ %3508, %3596 ], [ %3508, %3598 ]
  %3631 = phi float [ %2801, %3501 ], [ %2801, %2986 ], [ %2801, %2788 ], [ %2801, %2805 ], [ %3541, %3529 ], [ %3587, %3556 ], [ %2801, %3596 ], [ %3609, %3598 ]
  %3632 = phi float [ %2802, %3501 ], [ %2802, %2986 ], [ %2802, %2788 ], [ %2802, %2805 ], [ %3538, %3529 ], [ %3564, %3556 ], [ %2802, %3596 ], [ %3606, %3598 ]
  %3633 = phi float [ %2803, %3501 ], [ %2803, %2986 ], [ %2803, %2788 ], [ %2803, %2805 ], [ %3544, %3529 ], [ %3589, %3556 ], [ %2803, %3596 ], [ %3611, %3598 ]
  %3634 = phi float [ %3509, %3501 ], [ %2804, %2986 ], [ %2804, %2788 ], [ %2804, %2805 ], [ %3509, %3529 ], [ %3509, %3556 ], [ %3509, %3596 ], [ %3509, %3598 ]
  %3635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3636 = extractvalue %dx.types.CBufRet.f32 %3635, 0
  %3637 = call float @dx.op.dot2.f32(i32 54, float %3619, float %3620, float %3619, float %3620)  ; Dot2(ax,ay,bx,by)
  %3638 = fmul fast float %3637, 0x3FE3333340000000
  %3639 = fsub fast float 1.000000e+00, %3638
  %3640 = call float @dx.op.dot3.f32(i32 55, float %3619, float %3620, float %3639, float %3619, float %3620, float %3639)  ; Dot3(ax,ay,az,bx,by,bz)
  %3641 = call float @dx.op.unary.f32(i32 25, float %3640)  ; Rsqrt(value)
  %3642 = fmul fast float %3641, %3619
  %3643 = fmul fast float %3641, %3620
  %3644 = fmul fast float %3639, %3641
  %3645 = fmul fast float %3644, %126
  %3646 = fmul fast float %3644, %127
  %3647 = fmul fast float %3644, %128
  %3648 = fmul fast float %3642, %90
  %3649 = fmul fast float %3642, %91
  %3650 = fmul fast float %3642, %92
  %3651 = fadd fast float %3645, %3648
  %3652 = fadd fast float %3646, %3649
  %3653 = fadd fast float %3647, %3650
  %3654 = fmul fast float %138, %3643
  %3655 = fmul fast float %139, %3643
  %3656 = fmul fast float %140, %3643
  %3657 = fadd fast float %3651, %3654
  %3658 = fadd fast float %3652, %3655
  %3659 = fadd fast float %3653, %3656
  %3660 = call float @dx.op.dot3.f32(i32 55, float %3657, float %3658, float %3659, float %3657, float %3658, float %3659)  ; Dot3(ax,ay,az,bx,by,bz)
  %3661 = call float @dx.op.unary.f32(i32 25, float %3660)  ; Rsqrt(value)
  %3662 = fmul fast float %3657, %3661
  %3663 = fmul fast float %3658, %3661
  %3664 = fmul fast float %3659, %3661
  %3665 = icmp eq i32 %61, 65535
  br i1 %3665, label %4233, label %3666

; <label>:3666                                    ; preds = %3618
  %3667 = call float @dx.op.unary.f32(i32 83, float %62)  ; DerivCoarseX(value)
  %3668 = call float @dx.op.unary.f32(i32 83, float %63)  ; DerivCoarseX(value)
  %3669 = call float @dx.op.unary.f32(i32 83, float %64)  ; DerivCoarseX(value)
  %3670 = call float @dx.op.unary.f32(i32 84, float %62)  ; DerivCoarseY(value)
  %3671 = call float @dx.op.unary.f32(i32 84, float %63)  ; DerivCoarseY(value)
  %3672 = call float @dx.op.unary.f32(i32 84, float %64)  ; DerivCoarseY(value)
  %3673 = fadd fast float %3667, %62
  %3674 = fadd fast float %3668, %63
  %3675 = fadd fast float %3669, %64
  %3676 = fadd fast float %3670, %62
  %3677 = fadd fast float %3671, %63
  %3678 = fadd fast float %3672, %64
  %3679 = mul i32 %61, 48
  %3680 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3679, i32 undef)  ; BufferLoad(srv,index,wot)
  %3681 = extractvalue %dx.types.ResRet.f32 %3680, 0
  %3682 = extractvalue %dx.types.ResRet.f32 %3680, 1
  %3683 = extractvalue %dx.types.ResRet.f32 %3680, 2
  %3684 = add i32 %3679, 16
  %3685 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3684, i32 undef)  ; BufferLoad(srv,index,wot)
  %3686 = extractvalue %dx.types.ResRet.f32 %3685, 0
  %3687 = extractvalue %dx.types.ResRet.f32 %3685, 1
  %3688 = extractvalue %dx.types.ResRet.f32 %3685, 2
  %3689 = add i32 %3679, 32
  %3690 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3689, i32 undef)  ; BufferLoad(srv,index,wot)
  %3691 = extractvalue %dx.types.ResRet.f32 %3690, 0
  %3692 = extractvalue %dx.types.ResRet.f32 %3690, 1
  %3693 = extractvalue %dx.types.ResRet.f32 %3690, 2
  %3694 = extractvalue %dx.types.ResRet.f32 %3690, 3
  %3695 = bitcast float %3694 to i32
  %3696 = fmul fast float %3681, %62
  %3697 = fmul fast float %3682, %63
  %3698 = fmul fast float %3683, %64
  %3699 = fsub fast float %3696, %3686
  %3700 = fsub fast float %3697, %3687
  %3701 = fsub fast float %3698, %3688
  %3702 = call float @dx.op.unary.f32(i32 7, float %3699)  ; Saturate(value)
  %3703 = call float @dx.op.unary.f32(i32 7, float %3700)  ; Saturate(value)
  %3704 = call float @dx.op.unary.f32(i32 7, float %3701)  ; Saturate(value)
  %3705 = fmul fast float %3702, %3691
  %3706 = fmul fast float %3703, %3692
  %3707 = fmul fast float %3704, %3693
  %3708 = fadd fast float %3691, -1.000000e+00
  %3709 = fadd fast float %3692, -1.000000e+00
  %3710 = fadd fast float %3693, -1.000000e+00
  %3711 = call float @dx.op.unary.f32(i32 27, float %3705)  ; Round_ni(value)
  %3712 = call float @dx.op.unary.f32(i32 27, float %3706)  ; Round_ni(value)
  %3713 = call float @dx.op.unary.f32(i32 27, float %3707)  ; Round_ni(value)
  %3714 = call float @dx.op.binary.f32(i32 36, float %3711, float %3708)  ; FMin(a,b)
  %3715 = call float @dx.op.binary.f32(i32 36, float %3712, float %3709)  ; FMin(a,b)
  %3716 = call float @dx.op.binary.f32(i32 36, float %3713, float %3710)  ; FMin(a,b)
  %3717 = fmul fast float %3716, %3692
  %3718 = fadd fast float %3717, %3715
  %3719 = fmul fast float %3718, %3691
  %3720 = fadd fast float %3719, %3714
  %3721 = fptosi float %3720 to i32
  %3722 = add nsw i32 %3721, %3695
  %3723 = shl nsw i32 %3722, 2
  %3724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3723, i32 undef)  ; BufferLoad(srv,index,wot)
  %3725 = extractvalue %dx.types.ResRet.i32 %3724, 0
  %3726 = lshr i32 %3725, 16
  %3727 = icmp eq i32 %3726, 0
  br i1 %3727, label %4199, label %3728

; <label>:3728                                    ; preds = %3666
  br label %3729

; <label>:3729                                    ; preds = %3853, %3728
  %3730 = phi i32 [ %3755, %3853 ], [ %3726, %3728 ]
  %3731 = phi float [ %3854, %3853 ], [ 0.000000e+00, %3728 ]
  %3732 = phi float [ %3855, %3853 ], [ %3636, %3728 ]
  %3733 = phi float [ %3856, %3853 ], [ %3634, %3728 ]
  %3734 = phi float [ %3857, %3853 ], [ 0.000000e+00, %3728 ]
  %3735 = phi float [ %3858, %3853 ], [ 0.000000e+00, %3728 ]
  %3736 = phi float [ %3859, %3853 ], [ %3621, %3728 ]
  %3737 = phi float [ %3860, %3853 ], [ %3622, %3728 ]
  %3738 = phi float [ %3861, %3853 ], [ %3623, %3728 ]
  %3739 = phi float [ %3862, %3853 ], [ %3627, %3728 ]
  %3740 = phi float [ %3863, %3853 ], [ %3628, %3728 ]
  %3741 = phi float [ %3864, %3853 ], [ %3629, %3728 ]
  %3742 = phi float [ %3865, %3853 ], [ %3662, %3728 ]
  %3743 = phi float [ %3866, %3853 ], [ %3663, %3728 ]
  %3744 = phi float [ %3867, %3853 ], [ %3664, %3728 ]
  %3745 = phi float [ %3868, %3853 ], [ %3632, %3728 ]
  %3746 = phi float [ %3869, %3853 ], [ %3631, %3728 ]
  %3747 = phi float [ %3870, %3853 ], [ 0.000000e+00, %3728 ]
  %3748 = phi float [ %3871, %3853 ], [ %3630, %3728 ]
  %3749 = phi float [ %3872, %3853 ], [ %3624, %3728 ]
  %3750 = phi float [ %3873, %3853 ], [ %3625, %3728 ]
  %3751 = phi float [ %3874, %3853 ], [ %3626, %3728 ]
  %3752 = shl nuw nsw i32 %3730, 2
  %3753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3752, i32 undef)  ; BufferLoad(srv,index,wot)
  %3754 = extractvalue %dx.types.ResRet.i32 %3753, 0
  %3755 = lshr i32 %3754, 16
  %3756 = shl i32 %3754, 8
  %3757 = and i32 %3756, 16776960
  %3758 = or i32 %3757, 48
  %3759 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3758, i32 undef)  ; BufferLoad(srv,index,wot)
  %3760 = extractvalue %dx.types.ResRet.f32 %3759, 0
  %3761 = extractvalue %dx.types.ResRet.f32 %3759, 1
  %3762 = extractvalue %dx.types.ResRet.f32 %3759, 2
  %3763 = or i32 %3757, 64
  %3764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3763, i32 undef)  ; BufferLoad(srv,index,wot)
  %3765 = extractvalue %dx.types.ResRet.i32 %3764, 0
  %3766 = extractvalue %dx.types.ResRet.i32 %3764, 1
  %3767 = or i32 %3757, 80
  %3768 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3767, i32 undef)  ; BufferLoad(srv,index,wot)
  %3769 = extractvalue %dx.types.ResRet.f32 %3768, 2
  %3770 = extractvalue %dx.types.ResRet.f32 %3768, 3
  %3771 = or i32 %3757, 96
  %3772 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3771, i32 undef)  ; BufferLoad(srv,index,wot)
  %3773 = extractvalue %dx.types.ResRet.f32 %3772, 0
  %3774 = extractvalue %dx.types.ResRet.f32 %3772, 1
  %3775 = extractvalue %dx.types.ResRet.f32 %3772, 2
  %3776 = extractvalue %dx.types.ResRet.f32 %3772, 3
  %3777 = or i32 %3757, 112
  %3778 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3777, i32 undef)  ; BufferLoad(srv,index,wot)
  %3779 = extractvalue %dx.types.ResRet.f32 %3778, 2
  %3780 = or i32 %3757, 128
  %3781 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3780, i32 undef)  ; BufferLoad(srv,index,wot)
  %3782 = extractvalue %dx.types.ResRet.f32 %3781, 0
  %3783 = extractvalue %dx.types.ResRet.f32 %3781, 1
  %3784 = extractvalue %dx.types.ResRet.f32 %3781, 2
  %3785 = extractvalue %dx.types.ResRet.f32 %3781, 3
  %3786 = or i32 %3757, 144
  %3787 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3786, i32 undef)  ; BufferLoad(srv,index,wot)
  %3788 = extractvalue %dx.types.ResRet.f32 %3787, 0
  %3789 = extractvalue %dx.types.ResRet.f32 %3787, 1
  %3790 = extractvalue %dx.types.ResRet.f32 %3787, 2
  %3791 = extractvalue %dx.types.ResRet.f32 %3787, 3
  %3792 = or i32 %3757, 160
  %3793 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3792, i32 undef)  ; BufferLoad(srv,index,wot)
  %3794 = extractvalue %dx.types.ResRet.f32 %3793, 0
  %3795 = extractvalue %dx.types.ResRet.f32 %3793, 1
  %3796 = extractvalue %dx.types.ResRet.f32 %3793, 2
  %3797 = extractvalue %dx.types.ResRet.f32 %3793, 3
  %3798 = or i32 %3757, 192
  %3799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3798, i32 undef)  ; BufferLoad(srv,index,wot)
  %3800 = extractvalue %dx.types.ResRet.i32 %3799, 0
  %3801 = or i32 %3757, 208
  %3802 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3801, i32 undef)  ; BufferLoad(srv,index,wot)
  %3803 = extractvalue %dx.types.ResRet.f32 %3802, 0
  %3804 = or i32 %3757, 248
  %3805 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3804, i32 undef)  ; BufferLoad(srv,index,wot)
  %3806 = extractvalue %dx.types.ResRet.f32 %3805, 0
  %3807 = extractvalue %dx.types.ResRet.f32 %3805, 1
  %3808 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3757, i32 undef)  ; BufferLoad(srv,index,wot)
  %3809 = extractvalue %dx.types.ResRet.f32 %3808, 0
  %3810 = extractvalue %dx.types.ResRet.f32 %3808, 1
  %3811 = extractvalue %dx.types.ResRet.f32 %3808, 2
  %3812 = extractvalue %dx.types.ResRet.f32 %3808, 3
  %3813 = call float @dx.op.dot4.f32(i32 56, float %3809, float %3810, float %3811, float %3812, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3814 = or i32 %3757, 16
  %3815 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3814, i32 undef)  ; BufferLoad(srv,index,wot)
  %3816 = extractvalue %dx.types.ResRet.f32 %3815, 0
  %3817 = extractvalue %dx.types.ResRet.f32 %3815, 1
  %3818 = extractvalue %dx.types.ResRet.f32 %3815, 2
  %3819 = extractvalue %dx.types.ResRet.f32 %3815, 3
  %3820 = call float @dx.op.dot4.f32(i32 56, float %3816, float %3817, float %3818, float %3819, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3821 = or i32 %3757, 32
  %3822 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3821, i32 undef)  ; BufferLoad(srv,index,wot)
  %3823 = extractvalue %dx.types.ResRet.f32 %3822, 0
  %3824 = extractvalue %dx.types.ResRet.f32 %3822, 1
  %3825 = extractvalue %dx.types.ResRet.f32 %3822, 2
  %3826 = extractvalue %dx.types.ResRet.f32 %3822, 3
  %3827 = call float @dx.op.dot4.f32(i32 56, float %3823, float %3824, float %3825, float %3826, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3828 = call float @dx.op.unary.f32(i32 27, float %3813)  ; Round_ni(value)
  %3829 = call float @dx.op.unary.f32(i32 6, float %3828)  ; FAbs(value)
  %3830 = call float @dx.op.unary.f32(i32 27, float %3820)  ; Round_ni(value)
  %3831 = call float @dx.op.unary.f32(i32 6, float %3830)  ; FAbs(value)
  %3832 = call float @dx.op.unary.f32(i32 6, float %3827)  ; FAbs(value)
  %3833 = call float @dx.op.unary.f32(i32 27, float %3832)  ; Round_ni(value)
  %3834 = fadd fast float %3831, %3829
  %3835 = fadd fast float %3834, %3833
  %3836 = fcmp fast oeq float %3835, 0.000000e+00
  %3837 = call float @dx.op.dot4.f32(i32 56, float %3809, float %3810, float %3811, float %3812, float %3673, float %3674, float %3675, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3838 = call float @dx.op.dot4.f32(i32 56, float %3816, float %3817, float %3818, float %3819, float %3673, float %3674, float %3675, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3839 = call float @dx.op.dot4.f32(i32 56, float %3809, float %3810, float %3811, float %3812, float %3676, float %3677, float %3678, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3840 = call float @dx.op.dot4.f32(i32 56, float %3816, float %3817, float %3818, float %3819, float %3676, float %3677, float %3678, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3841 = fsub fast float %3837, %3813
  %3842 = fsub fast float %3839, %3813
  %3843 = fsub fast float %3838, %3820
  %3844 = fsub fast float %3840, %3820
  %3845 = call float @dx.op.dot3.f32(i32 55, float %3760, float %3761, float %3762, float %126, float %127, float %128)  ; Dot3(ax,ay,az,bx,by,bz)
  %3846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3847 = extractvalue %dx.types.CBufRet.f32 %3846, 2
  %3848 = fadd fast float %3847, %3845
  %3849 = call float @dx.op.unary.f32(i32 7, float %3848)  ; Saturate(value)
  %3850 = extractvalue %dx.types.CBufRet.f32 %3846, 0
  %3851 = fcmp fast ogt float %3849, %3850
  %3852 = and i1 %3836, %3851
  br i1 %3852, label %3876, label %3853

; <label>:3853                                    ; preds = %4185, %3959, %3876, %3729
  %3854 = phi float [ %3731, %3876 ], [ %3962, %3959 ], [ %3962, %4185 ], [ %3731, %3729 ]
  %3855 = phi float [ %3732, %3876 ], [ %3732, %3959 ], [ %4161, %4185 ], [ %3732, %3729 ]
  %3856 = phi float [ %3733, %3876 ], [ %3733, %3959 ], [ %4159, %4185 ], [ %3733, %3729 ]
  %3857 = phi float [ %3734, %3876 ], [ %3734, %3959 ], [ %4086, %4185 ], [ %3734, %3729 ]
  %3858 = phi float [ %3735, %3876 ], [ %3735, %3959 ], [ %4084, %4185 ], [ %3735, %3729 ]
  %3859 = phi float [ %3736, %3876 ], [ %3736, %3959 ], [ %4129, %4185 ], [ %3736, %3729 ]
  %3860 = phi float [ %3737, %3876 ], [ %3737, %3959 ], [ %4130, %4185 ], [ %3737, %3729 ]
  %3861 = phi float [ %3738, %3876 ], [ %3738, %3959 ], [ %4131, %4185 ], [ %3738, %3729 ]
  %3862 = phi float [ %3739, %3876 ], [ %3739, %3959 ], [ %4195, %4185 ], [ %3739, %3729 ]
  %3863 = phi float [ %3740, %3876 ], [ %3740, %3959 ], [ %4196, %4185 ], [ %3740, %3729 ]
  %3864 = phi float [ %3741, %3876 ], [ %3741, %3959 ], [ %4197, %4185 ], [ %3741, %3729 ]
  %3865 = phi float [ %3742, %3876 ], [ %3742, %3959 ], [ %4065, %4185 ], [ %3742, %3729 ]
  %3866 = phi float [ %3743, %3876 ], [ %3743, %3959 ], [ %4066, %4185 ], [ %3743, %3729 ]
  %3867 = phi float [ %3744, %3876 ], [ %3744, %3959 ], [ %4067, %4185 ], [ %3744, %3729 ]
  %3868 = phi float [ %3745, %3876 ], [ %3745, %3959 ], [ %4139, %4185 ], [ %3745, %3729 ]
  %3869 = phi float [ %3746, %3876 ], [ %3746, %3959 ], [ %4136, %4185 ], [ %3746, %3729 ]
  %3870 = phi float [ %3747, %3876 ], [ %3747, %3959 ], [ %4133, %4185 ], [ %3747, %3729 ]
  %3871 = phi float [ %3748, %3876 ], [ %3748, %3959 ], [ %4082, %4185 ], [ %3748, %3729 ]
  %3872 = phi float [ %3749, %3876 ], [ %3749, %3959 ], [ %4077, %4185 ], [ %3749, %3729 ]
  %3873 = phi float [ %3750, %3876 ], [ %3750, %3959 ], [ %4078, %4185 ], [ %3750, %3729 ]
  %3874 = phi float [ %3751, %3876 ], [ %3751, %3959 ], [ %4079, %4185 ], [ %3751, %3729 ]
  %3875 = icmp eq i32 %3755, 0
  br i1 %3875, label %4198, label %3729

; <label>:3876                                    ; preds = %3729
  %3877 = extractvalue %dx.types.ResRet.f32 %3759, 3
  %3878 = extractvalue %dx.types.ResRet.f32 %3778, 3
  %3879 = extractvalue %dx.types.ResRet.f32 %3778, 1
  %3880 = extractvalue %dx.types.ResRet.f32 %3778, 0
  %3881 = extractvalue %dx.types.ResRet.f32 %3768, 1
  %3882 = extractvalue %dx.types.ResRet.f32 %3768, 0
  %3883 = extractvalue %dx.types.ResRet.i32 %3764, 3
  %3884 = extractvalue %dx.types.ResRet.i32 %3764, 2
  %3885 = bitcast float %3877 to i32
  %3886 = add i32 %3883, 0
  %3887 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3886, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3888 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3889 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3887, %dx.types.Handle %3888, float %3813, float %3820, float undef, float undef, i32 0, i32 0, i32 undef, float %3841, float %3843, float undef, float %3842, float %3844, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3890 = extractvalue %dx.types.ResRet.f32 %3889, 0
  %3891 = fmul fast float %3890, %3882
  %3892 = fadd fast float %3891, %3881
  %3893 = call float @dx.op.unary.f32(i32 7, float %3892)  ; Saturate(value)
  %3894 = fmul fast float %3813, %3773
  %3895 = call float @dx.op.tertiary.f32(i32 46, float %3774, float %3820, float %3894)  ; FMad(a,b,c)
  %3896 = fadd fast float %3895, %3880
  %3897 = fmul fast float %3813, %3775
  %3898 = call float @dx.op.tertiary.f32(i32 46, float %3776, float %3820, float %3897)  ; FMad(a,b,c)
  %3899 = fadd fast float %3898, %3879
  %3900 = fmul fast float %3841, %3773
  %3901 = call float @dx.op.tertiary.f32(i32 46, float %3774, float %3843, float %3900)  ; FMad(a,b,c)
  %3902 = fmul fast float %3841, %3775
  %3903 = call float @dx.op.tertiary.f32(i32 46, float %3776, float %3843, float %3902)  ; FMad(a,b,c)
  %3904 = fmul fast float %3842, %3773
  %3905 = call float @dx.op.tertiary.f32(i32 46, float %3774, float %3844, float %3904)  ; FMad(a,b,c)
  %3906 = fmul fast float %3842, %3775
  %3907 = call float @dx.op.tertiary.f32(i32 46, float %3776, float %3844, float %3906)  ; FMad(a,b,c)
  %3908 = add i32 %3884, 0
  %3909 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3908, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3910 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3909, %dx.types.Handle %3888, float %3896, float %3899, float undef, float undef, i32 0, i32 0, i32 undef, float %3901, float %3903, float undef, float %3905, float %3907, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3911 = extractvalue %dx.types.ResRet.f32 %3910, 0
  %3912 = and i32 %3885, 1024
  %3913 = icmp ne i32 %3912, 0
  %3914 = fcmp fast ogt float %3911, 0x3FE0101020000000
  %3915 = uitofp i1 %3914 to float
  %3916 = select i1 %3913, float %3915, float %3911
  %3917 = and i32 %3885, 8192
  %3918 = icmp ne i32 %3917, 0
  %3919 = select i1 %3918, float %3878, float 1.000000e+00
  %3920 = fmul fast float %3813, 2.000000e+00
  %3921 = fadd fast float %3920, -1.000000e+00
  %3922 = call float @dx.op.unary.f32(i32 6, float %3921)  ; FAbs(value)
  %3923 = fmul fast float %3922, %3806
  %3924 = fsub fast float %3923, %3806
  %3925 = call float @dx.op.unary.f32(i32 7, float %3924)  ; Saturate(value)
  %3926 = fmul fast float %3820, 2.000000e+00
  %3927 = fadd fast float %3926, -1.000000e+00
  %3928 = call float @dx.op.unary.f32(i32 6, float %3927)  ; FAbs(value)
  %3929 = fmul fast float %3928, %3807
  %3930 = fsub fast float %3929, %3807
  %3931 = call float @dx.op.unary.f32(i32 7, float %3930)  ; Saturate(value)
  %3932 = fmul fast float %3832, %3769
  %3933 = fsub fast float %3932, %3769
  %3934 = call float @dx.op.unary.f32(i32 7, float %3933)  ; Saturate(value)
  %3935 = fmul fast float %3893, %3919
  %3936 = fmul fast float %3935, %3890
  %3937 = fmul fast float %3936, %3925
  %3938 = fmul fast float %3937, %3916
  %3939 = fmul fast float %3938, %3931
  %3940 = fmul fast float %3939, %3934
  %3941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3942 = extractvalue %dx.types.CBufRet.f32 %3941, 1
  %3943 = extractvalue %dx.types.CBufRet.f32 %3941, 0
  %3944 = fsub fast float %3849, %3943
  %3945 = fmul fast float %3944, %3942
  %3946 = call float @dx.op.unary.f32(i32 7, float %3945)  ; Saturate(value)
  %3947 = fmul fast float %3940, %3770
  %3948 = fadd fast float %3940, %3770
  %3949 = fmul fast float %3948, %3779
  %3950 = fsub fast float %3949, %3779
  %3951 = call float @dx.op.unary.f32(i32 7, float %3950)  ; Saturate(value)
  %3952 = and i32 %3885, 128
  %3953 = icmp ne i32 %3952, 0
  %3954 = select i1 %3953, float %3951, float %3947
  %3955 = fmul fast float %3954, %3946
  %3956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3957 = extractvalue %dx.types.CBufRet.f32 %3956, 0
  %3958 = fcmp fast ugt float %3955, %3957
  br i1 %3958, label %3959, label %3853

; <label>:3959                                    ; preds = %3876
  %3960 = select i1 %3918, float %3955, float 0.000000e+00
  %3961 = fadd fast float %3960, %3731
  %3962 = call float @dx.op.unary.f32(i32 7, float %3961)  ; Saturate(value)
  br i1 %3918, label %3853, label %3963

; <label>:3963                                    ; preds = %3959
  %3964 = and i32 %3885, 4
  %3965 = and i32 %3885, 8
  %3966 = add i32 %3765, 0
  %3967 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3966, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3968 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3969 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3967, %dx.types.Handle %3968, float %3896, float %3899, float undef, float undef, i32 0, i32 0, i32 undef, float %3901, float %3903, float undef, float %3905, float %3907, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3970 = extractvalue %dx.types.ResRet.f32 %3969, 0
  %3971 = extractvalue %dx.types.ResRet.f32 %3969, 1
  %3972 = extractvalue %dx.types.ResRet.f32 %3969, 2
  %3973 = extractvalue %dx.types.ResRet.f32 %3969, 3
  %3974 = bitcast float %3791 to i32
  %3975 = and i32 %3974, 255
  %3976 = uitofp i32 %3975 to float
  %3977 = lshr i32 %3974, 8
  %3978 = and i32 %3977, 255
  %3979 = uitofp i32 %3978 to float
  %3980 = fmul fast float %3973, %3976
  %3981 = fadd fast float %3980, %3979
  %3982 = fmul fast float %3981, 0x3F70101000000000
  %3983 = add i32 %3766, 0
  %3984 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3983, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3985 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3984, %dx.types.Handle %3968, float %3896, float %3899, float undef, float undef, i32 0, i32 0, i32 undef, float %3901, float %3903, float undef, float %3905, float %3907, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3986 = extractvalue %dx.types.ResRet.f32 %3985, 0
  %3987 = extractvalue %dx.types.ResRet.f32 %3985, 1
  %3988 = extractvalue %dx.types.ResRet.f32 %3985, 2
  %3989 = extractvalue %dx.types.ResRet.f32 %3985, 3
  %3990 = bitcast float %3785 to i32
  %3991 = and i32 %3990, 255
  %3992 = uitofp i32 %3991 to float
  %3993 = lshr i32 %3990, 8
  %3994 = and i32 %3993, 255
  %3995 = uitofp i32 %3994 to float
  %3996 = lshr i32 %3990, 16
  %3997 = and i32 %3996, 255
  %3998 = uitofp i32 %3997 to float
  %3999 = fmul fast float %3998, 0x3F70101000000000
  %4000 = fmul fast float %3986, %3992
  %4001 = fadd fast float %4000, %3995
  %4002 = fmul fast float %4001, 0x3F70101000000000
  %4003 = fadd fast float %3987, -5.000000e-01
  %4004 = fadd fast float %3989, -5.000000e-01
  %4005 = fmul fast float %4003, %3999
  %4006 = fmul fast float %4004, %3999
  %4007 = fadd fast float %4005, 5.000000e-01
  %4008 = fadd fast float %4006, 5.000000e-01
  %4009 = fmul fast float %3970, %3794
  %4010 = fmul fast float %3971, %3795
  %4011 = fmul fast float %3972, %3796
  %4012 = fmul fast float %4007, 2.000000e+00
  %4013 = fadd fast float %4012, -1.000000e+00
  %4014 = fmul fast float %4008, 2.000000e+00
  %4015 = fadd fast float %4014, -1.000000e+00
  %4016 = fadd fast float %4013, %4015
  %4017 = fmul fast float %4016, 5.000000e-01
  %4018 = fsub fast float %4013, %4015
  %4019 = fmul fast float %4018, 5.000000e-01
  %4020 = call float @dx.op.unary.f32(i32 6, float %4017)  ; FAbs(value)
  %4021 = fsub fast float 1.000000e+00, %4020
  %4022 = call float @dx.op.unary.f32(i32 6, float %4019)  ; FAbs(value)
  %4023 = fsub fast float %4021, %4022
  %4024 = call float @dx.op.dot3.f32(i32 55, float %4017, float %4019, float %4023, float %4017, float %4019, float %4023)  ; Dot3(ax,ay,az,bx,by,bz)
  %4025 = call float @dx.op.unary.f32(i32 25, float %4024)  ; Rsqrt(value)
  %4026 = fmul fast float %4017, %4025
  %4027 = fmul fast float %4019, %4025
  %4028 = fmul fast float %4025, %4023
  %4029 = fmul fast float %4028, %3760
  %4030 = fmul fast float %4028, %3761
  %4031 = fmul fast float %4028, %3762
  %4032 = fmul fast float %4026, %3782
  %4033 = fmul fast float %4026, %3783
  %4034 = fmul fast float %4026, %3784
  %4035 = fadd fast float %4032, %4029
  %4036 = fadd fast float %4033, %4030
  %4037 = fadd fast float %4034, %4031
  %4038 = fmul fast float %4027, %3788
  %4039 = fmul fast float %4027, %3789
  %4040 = fmul fast float %4027, %3790
  %4041 = fadd fast float %4035, %4038
  %4042 = fadd fast float %4036, %4039
  %4043 = fadd fast float %4037, %4040
  %4044 = call float @dx.op.dot3.f32(i32 55, float %4041, float %4042, float %4043, float %4041, float %4042, float %4043)  ; Dot3(ax,ay,az,bx,by,bz)
  %4045 = call float @dx.op.unary.f32(i32 25, float %4044)  ; Rsqrt(value)
  %4046 = fmul fast float %4041, %4045
  %4047 = fmul fast float %4042, %4045
  %4048 = fmul fast float %4043, %4045
  %4049 = icmp ne i32 %3965, 0
  %4050 = select i1 %4049, float 1.000000e+00, float 0.000000e+00
  %4051 = fmul fast float %3955, %4050
  %4052 = and i32 %3885, 1
  %4053 = icmp eq i32 %4052, 0
  br i1 %4053, label %4054, label %4058

; <label>:4054                                    ; preds = %3963
  %4055 = fsub fast float %4046, %3742
  %4056 = fsub fast float %4047, %3743
  %4057 = fsub fast float %4048, %3744
  br label %4058

; <label>:4058                                    ; preds = %4054, %3963
  %4059 = phi float [ %4055, %4054 ], [ %4046, %3963 ]
  %4060 = phi float [ %4056, %4054 ], [ %4047, %3963 ]
  %4061 = phi float [ %4057, %4054 ], [ %4048, %3963 ]
  %4062 = fmul float %4061, %4051
  %4063 = fmul float %4060, %4051
  %4064 = fmul float %4059, %4051
  %4065 = fadd fast float %4064, %3742
  %4066 = fadd fast float %4063, %3743
  %4067 = fadd fast float %4062, %3744
  %4068 = icmp ne i32 %3964, 0
  %4069 = select i1 %4068, float 1.000000e+00, float 0.000000e+00
  %4070 = fmul fast float %3955, %4069
  %4071 = fsub fast float %4009, %3749
  %4072 = fsub fast float %4010, %3750
  %4073 = fsub fast float %4011, %3751
  %4074 = fmul fast float %4071, %4070
  %4075 = fmul fast float %4072, %4070
  %4076 = fmul fast float %4073, %4070
  %4077 = fadd fast float %4074, %3749
  %4078 = fadd fast float %4075, %3750
  %4079 = fadd fast float %4076, %3751
  %4080 = fsub fast float %3982, %3748
  %4081 = fmul fast float %4080, %4070
  %4082 = fadd fast float %4081, %3748
  %4083 = fmul fast float %4070, %3735
  %4084 = fsub fast float %3735, %4083
  %4085 = fmul fast float %4070, %3734
  %4086 = fsub fast float %3734, %4085
  %4087 = bitcast float %3803 to i32
  %4088 = lshr i32 %4087, 16
  %4089 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4088)  ; LegacyF16ToF32(value)
  %4090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %4091 = extractvalue %dx.types.ResRet.i32 %4090, 0
  %4092 = and i32 %4091, 1
  %4093 = icmp eq i32 %4092, 0
  br i1 %4093, label %4094, label %4119

; <label>:4094                                    ; preds = %4058
  %4095 = fadd fast float %3982, 0xBFB99999A0000000
  %4096 = call float @dx.op.unary.f32(i32 7, float %4095)  ; Saturate(value)
  %4097 = fmul fast float %4096, 0x3FF1C71C80000000
  %4098 = fsub fast float 1.000000e+00, %4097
  %4099 = call float @dx.op.unary.f32(i32 7, float %4098)  ; Saturate(value)
  %4100 = fmul fast float %4099, %4009
  %4101 = fmul fast float %4099, %4010
  %4102 = fmul fast float %4099, %4011
  %4103 = call float @dx.op.unary.f32(i32 7, float %4100)  ; Saturate(value)
  %4104 = call float @dx.op.unary.f32(i32 7, float %4101)  ; Saturate(value)
  %4105 = call float @dx.op.unary.f32(i32 7, float %4102)  ; Saturate(value)
  %4106 = call float @dx.op.binary.f32(i32 35, float %4104, float %4105)  ; FMax(a,b)
  %4107 = call float @dx.op.binary.f32(i32 35, float %4103, float %4106)  ; FMax(a,b)
  %4108 = fcmp fast ogt float %4107, 0.000000e+00
  %4109 = bitcast float %4107 to i32
  %4110 = sub nsw i32 2129859010, %4109
  %4111 = bitcast i32 %4110 to float
  %4112 = select i1 %4108, float %4111, float 0.000000e+00
  %4113 = fmul fast float %4103, %4089
  %4114 = fmul fast float %4104, %4089
  %4115 = fmul fast float %4105, %4089
  %4116 = fmul fast float %4113, %4112
  %4117 = fmul fast float %4114, %4112
  %4118 = fmul fast float %4115, %4112
  br label %4119

; <label>:4119                                    ; preds = %4094, %4058
  %4120 = phi float [ %4089, %4058 ], [ %4116, %4094 ]
  %4121 = phi float [ %4089, %4058 ], [ %4117, %4094 ]
  %4122 = phi float [ %4089, %4058 ], [ %4118, %4094 ]
  %4123 = fsub fast float %4120, %3736
  %4124 = fsub fast float %4121, %3737
  %4125 = fsub fast float %4122, %3738
  %4126 = fmul fast float %4123, %4070
  %4127 = fmul fast float %4124, %4070
  %4128 = fmul fast float %4125, %4070
  %4129 = fadd fast float %4126, %3736
  %4130 = fadd fast float %4127, %3737
  %4131 = fadd fast float %4128, %3738
  %4132 = fadd fast float %3955, %3747
  %4133 = call float @dx.op.unary.f32(i32 7, float %4132)  ; Saturate(value)
  %4134 = fsub fast float %4002, %3746
  %4135 = fmul fast float %4134, %4051
  %4136 = fadd fast float %4135, %3746
  %4137 = fsub fast float %3988, %3745
  %4138 = fmul fast float %4137, %4051
  %4139 = fadd fast float %4138, %3745
  %4140 = call float @dx.op.dot3.f32(i32 55, float %4009, float %4010, float %4011, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4142 = extractvalue %dx.types.CBufRet.f32 %4141, 0
  %4143 = extractvalue %dx.types.CBufRet.f32 %4141, 1
  %4144 = fmul fast float %4143, %4140
  %4145 = fadd fast float %4144, %4142
  %4146 = call float @dx.op.unary.f32(i32 7, float %4145)  ; Saturate(value)
  %4147 = bitcast float %3797 to i32
  %4148 = and i32 %4147, 65535
  %4149 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4148)  ; LegacyF16ToF32(value)
  %4150 = lshr i32 %4147, 16
  %4151 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4150)  ; LegacyF16ToF32(value)
  %4152 = fcmp fast oge float %4149, 0.000000e+00
  %4153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4154 = extractvalue %dx.types.CBufRet.f32 %4153, 0
  %4155 = select i1 %4152, float %4149, float %4154
  %4156 = fadd fast float %4155, %4151
  %4157 = fsub fast float %4146, %3733
  %4158 = fmul fast float %4157, %3955
  %4159 = fadd fast float %4158, %3733
  %4160 = fmul fast float %4156, %3955
  %4161 = call float @dx.op.binary.f32(i32 35, float %3732, float %4160)  ; FMax(a,b)
  %4162 = and i32 %3885, 16
  %4163 = icmp eq i32 %4162, 0
  br i1 %4163, label %4185, label %4164

; <label>:4164                                    ; preds = %4119
  %4165 = add i32 %3800, 0
  %4166 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4165, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4167 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4166, %dx.types.Handle %3968, float %3896, float %3899, float undef, float undef, i32 0, i32 0, i32 undef, float %3901, float %3903, float undef, float %3905, float %3907, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4168 = extractvalue %dx.types.ResRet.f32 %4167, 0
  %4169 = extractvalue %dx.types.ResRet.f32 %4167, 1
  %4170 = extractvalue %dx.types.ResRet.f32 %4167, 2
  %4171 = and i32 %4087, 65535
  %4172 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4171)  ; LegacyF16ToF32(value)
  %4173 = fmul fast float %4168, %3794
  %4174 = fmul fast float %4169, %3795
  %4175 = fmul fast float %4170, %3796
  %4176 = and i32 %3885, 16384
  %4177 = icmp ne i32 %4176, 0
  %4178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4179 = extractvalue %dx.types.CBufRet.f32 %4178, 0
  %4180 = select i1 %4177, float %4179, float 1.000000e+00
  %4181 = fmul fast float %4180, %4172
  %4182 = fmul fast float %4173, %4181
  %4183 = fmul fast float %4174, %4181
  %4184 = fmul fast float %4175, %4181
  br label %4185

; <label>:4185                                    ; preds = %4164, %4119
  %4186 = phi float [ %4182, %4164 ], [ 0.000000e+00, %4119 ]
  %4187 = phi float [ %4183, %4164 ], [ 0.000000e+00, %4119 ]
  %4188 = phi float [ %4184, %4164 ], [ 0.000000e+00, %4119 ]
  %4189 = fsub fast float %4186, %3739
  %4190 = fsub fast float %4187, %3740
  %4191 = fsub fast float %4188, %3741
  %4192 = fmul fast float %4189, %3955
  %4193 = fmul fast float %4190, %3955
  %4194 = fmul fast float %4191, %3955
  %4195 = fadd fast float %4192, %3739
  %4196 = fadd fast float %4193, %3740
  %4197 = fadd fast float %4194, %3741
  br label %3853

; <label>:4198                                    ; preds = %3853
  br label %4199

; <label>:4199                                    ; preds = %4198, %3666
  %4200 = phi float [ 0.000000e+00, %3666 ], [ %3854, %4198 ]
  %4201 = phi float [ %3636, %3666 ], [ %3855, %4198 ]
  %4202 = phi float [ %3634, %3666 ], [ %3856, %4198 ]
  %4203 = phi float [ 0.000000e+00, %3666 ], [ %3857, %4198 ]
  %4204 = phi float [ 0.000000e+00, %3666 ], [ %3858, %4198 ]
  %4205 = phi float [ %3621, %3666 ], [ %3859, %4198 ]
  %4206 = phi float [ %3622, %3666 ], [ %3860, %4198 ]
  %4207 = phi float [ %3623, %3666 ], [ %3861, %4198 ]
  %4208 = phi float [ %3627, %3666 ], [ %3862, %4198 ]
  %4209 = phi float [ %3628, %3666 ], [ %3863, %4198 ]
  %4210 = phi float [ %3629, %3666 ], [ %3864, %4198 ]
  %4211 = phi float [ %3662, %3666 ], [ %3865, %4198 ]
  %4212 = phi float [ %3663, %3666 ], [ %3866, %4198 ]
  %4213 = phi float [ %3664, %3666 ], [ %3867, %4198 ]
  %4214 = phi float [ %3632, %3666 ], [ %3868, %4198 ]
  %4215 = phi float [ %3631, %3666 ], [ %3869, %4198 ]
  %4216 = phi float [ 0.000000e+00, %3666 ], [ %3870, %4198 ]
  %4217 = phi float [ %3630, %3666 ], [ %3871, %4198 ]
  %4218 = phi float [ %3624, %3666 ], [ %3872, %4198 ]
  %4219 = phi float [ %3625, %3666 ], [ %3873, %4198 ]
  %4220 = phi float [ %3626, %3666 ], [ %3874, %4198 ]
  %4221 = call float @dx.op.dot3.f32(i32 55, float %4211, float %4212, float %4213, float %4211, float %4212, float %4213)  ; Dot3(ax,ay,az,bx,by,bz)
  %4222 = call float @dx.op.unary.f32(i32 25, float %4221)  ; Rsqrt(value)
  %4223 = fmul fast float %4222, %4211
  %4224 = fmul fast float %4222, %4212
  %4225 = fmul fast float %4222, %4213
  %4226 = fadd fast float %4216, %1140
  %4227 = call float @dx.op.unary.f32(i32 7, float %4226)  ; Saturate(value)
  %4228 = call float @dx.op.dot3.f32(i32 55, float %4223, float %4224, float %4225, float %4223, float %4224, float %4225)  ; Dot3(ax,ay,az,bx,by,bz)
  %4229 = call float @dx.op.unary.f32(i32 25, float %4228)  ; Rsqrt(value)
  %4230 = fmul fast float %4229, %4223
  %4231 = fmul fast float %4229, %4224
  %4232 = fmul fast float %4229, %4225
  br label %4233

; <label>:4233                                    ; preds = %4199, %3618
  %4234 = phi float [ %4230, %4199 ], [ %3662, %3618 ]
  %4235 = phi float [ %4231, %4199 ], [ %3663, %3618 ]
  %4236 = phi float [ %4232, %4199 ], [ %3664, %3618 ]
  %4237 = phi float [ %4218, %4199 ], [ %3624, %3618 ]
  %4238 = phi float [ %4219, %4199 ], [ %3625, %3618 ]
  %4239 = phi float [ %4220, %4199 ], [ %3626, %3618 ]
  %4240 = phi float [ %4208, %4199 ], [ %3627, %3618 ]
  %4241 = phi float [ %4209, %4199 ], [ %3628, %3618 ]
  %4242 = phi float [ %4210, %4199 ], [ %3629, %3618 ]
  %4243 = phi float [ %4205, %4199 ], [ %3621, %3618 ]
  %4244 = phi float [ %4206, %4199 ], [ %3622, %3618 ]
  %4245 = phi float [ %4207, %4199 ], [ %3623, %3618 ]
  %4246 = phi float [ %4217, %4199 ], [ %3630, %3618 ]
  %4247 = phi float [ %4227, %4199 ], [ %1140, %3618 ]
  %4248 = phi float [ %4215, %4199 ], [ %3631, %3618 ]
  %4249 = phi float [ %4214, %4199 ], [ %3632, %3618 ]
  %4250 = phi float [ %4204, %4199 ], [ 0.000000e+00, %3618 ]
  %4251 = phi float [ %4203, %4199 ], [ 0.000000e+00, %3618 ]
  %4252 = phi float [ %4200, %4199 ], [ 0.000000e+00, %3618 ]
  %4253 = phi float [ %4201, %4199 ], [ %3636, %3618 ]
  %4254 = phi float [ %4202, %4199 ], [ %3634, %3618 ]
  %4255 = add i32 %60, 392
  %4256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4255, i32 undef)  ; BufferLoad(srv,index,wot)
  %4257 = extractvalue %dx.types.ResRet.i32 %4256, 0
  %4258 = extractvalue %dx.types.ResRet.i32 %4256, 1
  %4259 = extractvalue %dx.types.ResRet.i32 %4256, 2
  %4260 = extractvalue %dx.types.ResRet.i32 %4256, 3
  %4261 = bitcast i32 %4257 to float
  %4262 = bitcast i32 %4258 to float
  %4263 = bitcast i32 %4259 to float
  %4264 = bitcast i32 %4260 to float
  %4265 = fsub fast float %4237, %4261
  %4266 = fsub fast float %4238, %4262
  %4267 = fsub fast float %4239, %4263
  %4268 = fmul fast float %4265, %232
  %4269 = fmul fast float %4266, %232
  %4270 = fmul fast float %4267, %232
  %4271 = fadd fast float %4268, %4261
  %4272 = fadd fast float %4269, %4262
  %4273 = fadd fast float %4270, %4263
  %4274 = fsub fast float %4247, %4264
  %4275 = fmul fast float %4274, %232
  %4276 = fadd fast float %4275, %4264
  %4277 = fadd fast float %4246, 0xBFB99999A0000000
  %4278 = call float @dx.op.unary.f32(i32 7, float %4277)  ; Saturate(value)
  %4279 = fmul fast float %4278, 0x3FF1C71C80000000
  %4280 = call float @dx.op.binary.f32(i32 36, float %4246, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4281 = fsub fast float 1.000000e+00, %4279
  %4282 = call float @dx.op.unary.f32(i32 7, float %4281)  ; Saturate(value)
  %4283 = fmul fast float %4271, %4282
  %4284 = fmul fast float %4272, %4282
  %4285 = fmul fast float %4273, %4282
  %4286 = call float @dx.op.unary.f32(i32 7, float %4283)  ; Saturate(value)
  %4287 = call float @dx.op.unary.f32(i32 7, float %4284)  ; Saturate(value)
  %4288 = call float @dx.op.unary.f32(i32 7, float %4285)  ; Saturate(value)
  %4289 = fmul fast float %4271, %4279
  %4290 = fmul fast float %4272, %4279
  %4291 = fmul fast float %4273, %4279
  %4292 = fadd fast float %4289, %4280
  %4293 = fadd fast float %4290, %4280
  %4294 = fadd fast float %4291, %4280
  %4295 = call float @dx.op.unary.f32(i32 7, float %4292)  ; Saturate(value)
  %4296 = call float @dx.op.unary.f32(i32 7, float %4293)  ; Saturate(value)
  %4297 = call float @dx.op.unary.f32(i32 7, float %4294)  ; Saturate(value)
  %4298 = call float @dx.op.unary.f32(i32 7, float %4248)  ; Saturate(value)
  %4299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %4300 = extractvalue %dx.types.ResRet.i32 %4299, 0
  %4301 = and i32 %4300, 1
  %4302 = icmp eq i32 %4301, 0
  br i1 %4302, label %4317, label %4303

; <label>:4303                                    ; preds = %4233
  %4304 = call float @dx.op.binary.f32(i32 35, float %4287, float %4288)  ; FMax(a,b)
  %4305 = call float @dx.op.binary.f32(i32 35, float %4286, float %4304)  ; FMax(a,b)
  %4306 = fcmp fast ogt float %4305, 0.000000e+00
  %4307 = bitcast float %4305 to i32
  %4308 = sub nsw i32 2129859010, %4307
  %4309 = bitcast i32 %4308 to float
  %4310 = select i1 %4306, float %4309, float 0.000000e+00
  %4311 = fmul fast float %4286, %4243
  %4312 = fmul fast float %4287, %4244
  %4313 = fmul fast float %4288, %4245
  %4314 = fmul fast float %4311, %4310
  %4315 = fmul fast float %4312, %4310
  %4316 = fmul fast float %4313, %4310
  br label %4317

; <label>:4317                                    ; preds = %4303, %4233
  %4318 = phi float [ %4314, %4303 ], [ %4243, %4233 ]
  %4319 = phi float [ %4315, %4303 ], [ %4244, %4233 ]
  %4320 = phi float [ %4316, %4303 ], [ %4245, %4233 ]
  %4321 = fadd fast float %4286, 0xBFD51EB860000000
  %4322 = fadd fast float %4287, 0xBFD51EB860000000
  %4323 = fadd fast float %4288, 0xBFD51EB860000000
  %4324 = fmul fast float %4321, %4321
  %4325 = fmul fast float %4322, %4322
  %4326 = fmul fast float %4323, %4323
  %4327 = fmul fast float %4324, %4324
  %4328 = fmul fast float %4327, 1.000000e+02
  %4329 = fmul fast float %4325, %4325
  %4330 = fmul fast float %4329, 1.000000e+02
  %4331 = fmul fast float %4326, %4326
  %4332 = fmul fast float %4331, 1.000000e+02
  %4333 = fadd fast float %4328, 3.500000e+00
  %4334 = fadd fast float %4330, 3.500000e+00
  %4335 = fadd fast float %4332, 3.500000e+00
  %4336 = call float @dx.op.binary.f32(i32 35, float %4318, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4337 = call float @dx.op.binary.f32(i32 35, float %4319, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4338 = call float @dx.op.binary.f32(i32 35, float %4320, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4339 = fdiv fast float %4333, %4336
  %4340 = fdiv fast float %4334, %4337
  %4341 = fdiv fast float %4335, %4338
  %4342 = fmul fast float %3633, 0xBFF7154760000000
  %4343 = fmul fast float %4342, %4339
  %4344 = call float @dx.op.unary.f32(i32 21, float %4343)  ; Exp(value)
  %4345 = fmul fast float %4344, 2.500000e-01
  %4346 = fmul fast float %3633, 0xBFDEC709E0000000
  %4347 = fmul fast float %4346, %4339
  %4348 = call float @dx.op.unary.f32(i32 21, float %4347)  ; Exp(value)
  %4349 = fmul fast float %4348, 7.500000e-01
  %4350 = fmul fast float %4342, %4340
  %4351 = call float @dx.op.unary.f32(i32 21, float %4350)  ; Exp(value)
  %4352 = fmul fast float %4351, 2.500000e-01
  %4353 = fmul fast float %4346, %4340
  %4354 = call float @dx.op.unary.f32(i32 21, float %4353)  ; Exp(value)
  %4355 = fmul fast float %4354, 7.500000e-01
  %4356 = fmul fast float %4342, %4341
  %4357 = call float @dx.op.unary.f32(i32 21, float %4356)  ; Exp(value)
  %4358 = fmul fast float %4357, 2.500000e-01
  %4359 = fmul fast float %4346, %4341
  %4360 = call float @dx.op.unary.f32(i32 21, float %4359)  ; Exp(value)
  %4361 = fmul fast float %4360, 7.500000e-01
  %4362 = fadd fast float %4345, %4349
  %4363 = fadd fast float %4352, %4355
  %4364 = fadd fast float %4358, %4361
  %4365 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4366 = extractvalue %dx.types.CBufRet.i32 %4365, 3
  %4367 = and i32 %4366, 8
  %4368 = icmp ne i32 %4367, 0
  %4369 = call float @dx.op.binary.f32(i32 35, float %4286, float %4271)  ; FMax(a,b)
  %4370 = call float @dx.op.binary.f32(i32 35, float %4287, float %4271)  ; FMax(a,b)
  %4371 = call float @dx.op.binary.f32(i32 35, float %4288, float %4271)  ; FMax(a,b)
  %4372 = call float @dx.op.dot3.f32(i32 55, float %4286, float %4287, float %4288, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4373 = select i1 %289, float %4271, float %4286
  %4374 = select i1 %289, float %4372, float %4287
  %4375 = select i1 %289, float 1.000000e+00, float %4288
  %4376 = select i1 %4368, float %4369, float %4373
  %4377 = select i1 %4368, float %4370, float %4374
  %4378 = select i1 %4368, float %4371, float %4375
  %4379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4380 = extractvalue %dx.types.CBufRet.f32 %4379, 0
  %4381 = extractvalue %dx.types.CBufRet.f32 %4379, 1
  %4382 = extractvalue %dx.types.CBufRet.f32 %4379, 2
  %4383 = fadd fast float %4380, %198
  %4384 = fadd fast float %4381, %199
  %4385 = fadd fast float %4382, %200
  %4386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4387 = extractvalue %dx.types.CBufRet.f32 %4386, 0
  %4388 = extractvalue %dx.types.CBufRet.f32 %4386, 1
  %4389 = fsub fast float %4383, %4387
  %4390 = fsub fast float %4384, %4388
  %4391 = fmul fast float %4389, %4389
  %4392 = fmul fast float %4390, %4390
  %4393 = fadd fast float %4391, %4392
  %4394 = call float @dx.op.unary.f32(i32 24, float %4393)  ; Sqrt(value)
  %4395 = extractvalue %dx.types.CBufRet.f32 %4386, 2
  %4396 = fcmp fast olt float %4394, %4395
  br i1 %4396, label %4397, label %4464

; <label>:4397                                    ; preds = %4317
  %4398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4399 = extractvalue %dx.types.CBufRet.f32 %4398, 0
  %4400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4401 = extractvalue %dx.types.CBufRet.f32 %4400, 0
  %4402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4403 = extractvalue %dx.types.CBufRet.f32 %4402, 0
  %4404 = extractvalue %dx.types.CBufRet.f32 %4398, 1
  %4405 = extractvalue %dx.types.CBufRet.f32 %4400, 1
  %4406 = extractvalue %dx.types.CBufRet.f32 %4402, 1
  %4407 = extractvalue %dx.types.CBufRet.f32 %4398, 3
  %4408 = extractvalue %dx.types.CBufRet.f32 %4400, 3
  %4409 = extractvalue %dx.types.CBufRet.f32 %4402, 3
  %4410 = fadd fast float %4407, %4383
  %4411 = fadd fast float %4408, %4384
  %4412 = fadd fast float %4409, %4385
  %4413 = fmul fast float %4410, %4399
  %4414 = call float @dx.op.tertiary.f32(i32 46, float %4411, float %4401, float %4413)  ; FMad(a,b,c)
  %4415 = call float @dx.op.tertiary.f32(i32 46, float %4412, float %4403, float %4414)  ; FMad(a,b,c)
  %4416 = fmul fast float %4410, %4404
  %4417 = call float @dx.op.tertiary.f32(i32 46, float %4411, float %4405, float %4416)  ; FMad(a,b,c)
  %4418 = call float @dx.op.tertiary.f32(i32 46, float %4412, float %4406, float %4417)  ; FMad(a,b,c)
  %4419 = fsub fast float %4415, %4407
  %4420 = fsub fast float %4418, %4408
  %4421 = fsub fast float %4419, %4387
  %4422 = fadd fast float %4421, %4395
  %4423 = fsub fast float %4420, %4388
  %4424 = fadd fast float %4423, %4395
  %4425 = extractvalue %dx.types.CBufRet.f32 %4386, 3
  %4426 = fmul fast float %4422, %4425
  %4427 = fmul fast float %4424, %4425
  %4428 = call float @dx.op.unary.f32(i32 7, float %4426)  ; Saturate(value)
  %4429 = call float @dx.op.unary.f32(i32 7, float %4427)  ; Saturate(value)
  %4430 = fsub fast float 1.000000e+00, %4428
  %4431 = fsub fast float 1.000000e+00, %4429
  %4432 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %54, float %4430, float %4431, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4433 = extractvalue %dx.types.ResRet.f32 %4432, 0
  %4434 = fcmp fast ugt float %4433, 0.000000e+00
  br i1 %4434, label %4435, label %4738

; <label>:4435                                    ; preds = %4397
  %4436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4437 = extractvalue %dx.types.CBufRet.f32 %4436, 2
  %4438 = fmul fast float %4437, %4433
  %4439 = extractvalue %dx.types.CBufRet.f32 %4436, 3
  %4440 = fadd fast float %4439, %4438
  %4441 = extractvalue %dx.types.CBufRet.f32 %4402, 2
  %4442 = fadd fast float %4440, %4409
  %4443 = fmul fast float %4415, %4403
  %4444 = call float @dx.op.tertiary.f32(i32 46, float %4418, float %4406, float %4443)  ; FMad(a,b,c)
  %4445 = call float @dx.op.tertiary.f32(i32 46, float %4442, float %4441, float %4444)  ; FMad(a,b,c)
  %4446 = fsub fast float %4445, %4409
  %4447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4448 = extractvalue %dx.types.CBufRet.f32 %4447, 2
  %4449 = fsub fast float %4446, %4448
  %4450 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %4430, float %4431, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4451 = extractvalue %dx.types.ResRet.f32 %4450, 0
  %4452 = extractvalue %dx.types.ResRet.f32 %4450, 1
  %4453 = extractvalue %dx.types.ResRet.f32 %4450, 2
  %4454 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %4430, float %4431, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4455 = extractvalue %dx.types.ResRet.f32 %4454, 0
  %4456 = extractvalue %dx.types.ResRet.f32 %4454, 1
  %4457 = extractvalue %dx.types.ResRet.f32 %4454, 2
  %4458 = fadd fast float %4455, %4451
  %4459 = fmul fast float %4458, 0x3F847AE140000000
  %4460 = fadd fast float %4456, %4452
  %4461 = fmul fast float %4460, 0x3F847AE140000000
  %4462 = fadd fast float %4457, %4453
  %4463 = fmul fast float %4462, 0x3F847AE140000000
  br label %4738

; <label>:4464                                    ; preds = %4317
  %4465 = and i32 %268, 1
  %4466 = icmp eq i32 %4465, 0
  br i1 %4466, label %4738, label %4467

; <label>:4467                                    ; preds = %4464
  %4468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4469 = extractvalue %dx.types.CBufRet.f32 %4468, 0
  %4470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4471 = extractvalue %dx.types.CBufRet.f32 %4470, 0
  %4472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4473 = extractvalue %dx.types.CBufRet.f32 %4472, 0
  %4474 = extractvalue %dx.types.CBufRet.f32 %4468, 1
  %4475 = extractvalue %dx.types.CBufRet.f32 %4470, 1
  %4476 = extractvalue %dx.types.CBufRet.f32 %4472, 1
  %4477 = extractvalue %dx.types.CBufRet.f32 %4468, 3
  %4478 = extractvalue %dx.types.CBufRet.f32 %4470, 3
  %4479 = extractvalue %dx.types.CBufRet.f32 %4472, 3
  %4480 = fadd fast float %4477, %4383
  %4481 = fadd fast float %4478, %4384
  %4482 = fadd fast float %4479, %4385
  %4483 = fmul fast float %4480, %4469
  %4484 = call float @dx.op.tertiary.f32(i32 46, float %4481, float %4471, float %4483)  ; FMad(a,b,c)
  %4485 = call float @dx.op.tertiary.f32(i32 46, float %4482, float %4473, float %4484)  ; FMad(a,b,c)
  %4486 = fmul fast float %4480, %4474
  %4487 = call float @dx.op.tertiary.f32(i32 46, float %4481, float %4475, float %4486)  ; FMad(a,b,c)
  %4488 = call float @dx.op.tertiary.f32(i32 46, float %4482, float %4476, float %4487)  ; FMad(a,b,c)
  %4489 = fsub fast float %4485, %4477
  %4490 = fsub fast float %4488, %4478
  %4491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4492 = extractvalue %dx.types.CBufRet.f32 %4491, 0
  %4493 = extractvalue %dx.types.CBufRet.f32 %4491, 1
  %4494 = extractvalue %dx.types.CBufRet.f32 %4491, 2
  %4495 = extractvalue %dx.types.CBufRet.f32 %4491, 3
  %4496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4497 = extractvalue %dx.types.CBufRet.f32 %4496, 3
  %4498 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4499 = extractvalue %dx.types.CBufRet.i32 %4498, 0
  %4500 = extractvalue %dx.types.CBufRet.i32 %4498, 1
  %4501 = udiv i32 %4500, %4499
  %4502 = fsub fast float %4489, %4492
  %4503 = fsub fast float %4490, %4493
  %4504 = call float @dx.op.binary.f32(i32 35, float %4502, float 0.000000e+00)  ; FMax(a,b)
  %4505 = call float @dx.op.binary.f32(i32 35, float %4503, float 0.000000e+00)  ; FMax(a,b)
  %4506 = call float @dx.op.binary.f32(i32 36, float %4504, float %4494)  ; FMin(a,b)
  %4507 = call float @dx.op.binary.f32(i32 36, float %4505, float %4495)  ; FMin(a,b)
  %4508 = add i32 %4499, -1
  %4509 = add i32 %4501, -1
  %4510 = fmul fast float %4506, %4497
  %4511 = fmul fast float %4507, %4497
  %4512 = fptoui float %4510 to i32
  %4513 = fptoui float %4511 to i32
  %4514 = call i32 @dx.op.binary.i32(i32 40, i32 %4512, i32 %4508)  ; UMin(a,b)
  %4515 = call i32 @dx.op.binary.i32(i32 40, i32 %4513, i32 %4509)  ; UMin(a,b)
  %4516 = mul i32 %4515, %4499
  %4517 = add i32 %4516, %4514
  %4518 = shl i32 %4517, 2
  %4519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4518, i32 undef)  ; BufferLoad(srv,index,wot)
  %4520 = extractvalue %dx.types.ResRet.i32 %4519, 0
  %4521 = icmp eq i32 %4520, -1
  br i1 %4521, label %4738, label %4522

; <label>:4522                                    ; preds = %4467
  %4523 = mul i32 %4520, 148
  %4524 = add i32 %4523, 4
  %4525 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4524, i32 undef)  ; BufferLoad(srv,index,wot)
  %4526 = extractvalue %dx.types.ResRet.f32 %4525, 0
  %4527 = add i32 %4523, 8
  %4528 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4527, i32 undef)  ; BufferLoad(srv,index,wot)
  %4529 = extractvalue %dx.types.ResRet.f32 %4528, 0
  %4530 = add i32 %4523, 36
  %4531 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4530, i32 undef)  ; BufferLoad(srv,index,wot)
  %4532 = extractvalue %dx.types.ResRet.f32 %4531, 0
  %4533 = add i32 %4523, 60
  %4534 = add i32 %4523, 92
  %4535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4534, i32 undef)  ; BufferLoad(srv,index,wot)
  %4536 = extractvalue %dx.types.ResRet.i32 %4535, 0
  %4537 = add i32 %4523, 116
  %4538 = fsub fast float %4489, %4526
  %4539 = fsub fast float %4490, %4529
  %4540 = fmul fast float %4497, %4538
  %4541 = fmul fast float %4497, %4539
  %4542 = call float @dx.op.unary.f32(i32 7, float %4540)  ; Saturate(value)
  %4543 = call float @dx.op.unary.f32(i32 7, float %4541)  ; Saturate(value)
  %4544 = fsub fast float 1.000000e+00, %4543
  %4545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4546 = extractvalue %dx.types.CBufRet.f32 %4545, 2
  %4547 = call float @dx.op.unary.f32(i32 83, float %4542)  ; DerivCoarseX(value)
  %4548 = call float @dx.op.unary.f32(i32 83, float %4544)  ; DerivCoarseX(value)
  %4549 = call float @dx.op.unary.f32(i32 84, float %4542)  ; DerivCoarseY(value)
  %4550 = call float @dx.op.unary.f32(i32 84, float %4544)  ; DerivCoarseY(value)
  %4551 = fmul fast float %4547, %4546
  %4552 = fmul fast float %4548, %4546
  %4553 = fmul fast float %4549, %4546
  %4554 = fmul fast float %4550, %4546
  %4555 = call float @dx.op.dot2.f32(i32 54, float %4553, float %4554, float %4553, float %4554)  ; Dot2(ax,ay,bx,by)
  %4556 = call float @dx.op.dot2.f32(i32 54, float %4551, float %4552, float %4551, float %4552)  ; Dot2(ax,ay,bx,by)
  %4557 = call float @dx.op.binary.f32(i32 35, float %4556, float %4555)  ; FMax(a,b)
  %4558 = call float @dx.op.unary.f32(i32 23, float %4557)  ; Log(value)
  %4559 = fmul fast float %4558, 5.000000e-01
  %4560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4561 = extractvalue %dx.types.CBufRet.f32 %4560, 1
  %4562 = fadd fast float %4561, %4559
  %4563 = call float @dx.op.binary.f32(i32 35, float %4562, float 0.000000e+00)  ; FMax(a,b)
  %4564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4565 = extractvalue %dx.types.CBufRet.f32 %4564, 3
  %4566 = fadd fast float %4565, %4563
  %4567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4568 = extractvalue %dx.types.CBufRet.f32 %4567, 3
  %4569 = fadd fast float %4566, %4568
  %4570 = add i32 %4536, 0
  %4571 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4570, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4572 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4571, i32 0)  ; GetDimensions(handle,mipLevel)
  %4573 = extractvalue %dx.types.Dimensions %4572, 0
  %4574 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4573)  ; FirstbitLo(value)
  %4575 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4576 = extractvalue %dx.types.CBufRet.i32 %4575, 1
  %4577 = sub nsw i32 %4576, %4574
  %4578 = sitofp i32 %4577 to float
  %4579 = fsub fast float %4569, %4578
  %4580 = call float @dx.op.binary.f32(i32 35, float %4579, float 0.000000e+00)  ; FMax(a,b)
  %4581 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4571, %dx.types.Handle %52, float %4542, float %4544, float %4532, float undef, i32 0, i32 0, i32 undef, float %4580)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4582 = extractvalue %dx.types.ResRet.f32 %4581, 0
  %4583 = fcmp ule float %4582, 0x3FE0101020000000
  %4584 = extractvalue %dx.types.CBufRet.i32 %4575, 0
  %4585 = and i32 %4584, 128
  %4586 = icmp ne i32 %4585, 0
  %4587 = and i1 %4583, %4586
  br i1 %4587, label %4738, label %4588

; <label>:4588                                    ; preds = %4522
  %4589 = add i32 %4523, 20
  %4590 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4589, i32 undef)  ; BufferLoad(srv,index,wot)
  %4591 = extractvalue %dx.types.ResRet.f32 %4590, 0
  %4592 = add i32 %4523, 24
  %4593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4592, i32 undef)  ; BufferLoad(srv,index,wot)
  %4594 = extractvalue %dx.types.ResRet.f32 %4593, 0
  %4595 = add i32 %4523, 40
  %4596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4595, i32 undef)  ; BufferLoad(srv,index,wot)
  %4597 = extractvalue %dx.types.ResRet.f32 %4596, 0
  %4598 = add i32 %4523, 96
  %4599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4598, i32 undef)  ; BufferLoad(srv,index,wot)
  %4600 = extractvalue %dx.types.ResRet.i32 %4599, 0
  %4601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4602 = extractvalue %dx.types.CBufRet.f32 %4601, 2
  %4603 = fmul fast float %4602, %4542
  %4604 = fmul fast float %4602, %4544
  %4605 = extractvalue %dx.types.CBufRet.f32 %4601, 3
  %4606 = fadd fast float %4603, %4605
  %4607 = fadd fast float %4604, %4605
  %4608 = add i32 %4600, 0
  %4609 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4608, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4610 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4609, i32 0)  ; GetDimensions(handle,mipLevel)
  %4611 = extractvalue %dx.types.Dimensions %4610, 0
  %4612 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4611)  ; FirstbitLo(value)
  %4613 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4614 = extractvalue %dx.types.CBufRet.i32 %4613, 1
  %4615 = sub nsw i32 %4614, %4612
  %4616 = sitofp i32 %4615 to float
  %4617 = fsub fast float %4566, %4616
  %4618 = call float @dx.op.binary.f32(i32 35, float %4617, float 0.000000e+00)  ; FMax(a,b)
  %4619 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4609, %dx.types.Handle %52, float %4606, float %4607, float %4597, float undef, i32 0, i32 0, i32 undef, float %4618)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4620 = extractvalue %dx.types.ResRet.f32 %4619, 0
  %4621 = fmul fast float %4620, %4591
  %4622 = fadd fast float %4621, %4594
  %4623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4624 = extractvalue %dx.types.CBufRet.f32 %4623, 0
  %4625 = extractvalue %dx.types.CBufRet.f32 %4623, 1
  %4626 = extractvalue %dx.types.CBufRet.f32 %4623, 2
  %4627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4628 = extractvalue %dx.types.CBufRet.f32 %4627, 3
  %4629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4630 = extractvalue %dx.types.CBufRet.f32 %4629, 3
  %4631 = extractvalue %dx.types.CBufRet.f32 %4623, 3
  %4632 = fadd fast float %4628, %4489
  %4633 = fadd fast float %4630, %4490
  %4634 = fadd fast float %4622, %4631
  %4635 = fmul fast float %4632, %4624
  %4636 = call float @dx.op.tertiary.f32(i32 46, float %4633, float %4625, float %4635)  ; FMad(a,b,c)
  %4637 = call float @dx.op.tertiary.f32(i32 46, float %4634, float %4626, float %4636)  ; FMad(a,b,c)
  %4638 = fsub fast float %4637, %4631
  %4639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4640 = extractvalue %dx.types.CBufRet.f32 %4639, 2
  %4641 = fsub fast float %4638, %4640
  %4642 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4643 = extractvalue %dx.types.CBufRet.i32 %4642, 0
  %4644 = call i32 @dx.op.binary.i32(i32 40, i32 %4520, i32 %4643)  ; UMin(a,b)
  %4645 = mul i32 %4644, 36
  %4646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4645, i32 undef)  ; BufferLoad(srv,index,wot)
  %4647 = extractvalue %dx.types.ResRet.i32 %4646, 0
  %4648 = add i32 %4645, 4
  %4649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4650 = extractvalue %dx.types.CBufRet.f32 %4649, 0
  %4651 = fmul fast float %4650, %4542
  %4652 = fmul fast float %4650, %4544
  %4653 = extractvalue %dx.types.CBufRet.f32 %4649, 1
  %4654 = fadd fast float %4651, %4653
  %4655 = fadd fast float %4652, %4653
  %4656 = icmp eq i32 %4647, 0
  br i1 %4656, label %4725, label %4657

; <label>:4657                                    ; preds = %4588
  br label %4658

; <label>:4658                                    ; preds = %4715, %4657
  %4659 = phi float [ %4716, %4715 ], [ 0.000000e+00, %4657 ]
  %4660 = phi float [ %4717, %4715 ], [ 0.000000e+00, %4657 ]
  %4661 = phi float [ %4718, %4715 ], [ 0.000000e+00, %4657 ]
  %4662 = phi float [ %4719, %4715 ], [ 0.000000e+00, %4657 ]
  %4663 = phi float [ %4720, %4715 ], [ 0.000000e+00, %4657 ]
  %4664 = phi float [ %4721, %4715 ], [ 0.000000e+00, %4657 ]
  %4665 = phi i32 [ %4722, %4715 ], [ 0, %4657 ]
  %4666 = shl i32 %4665, 2
  %4667 = add i32 %4533, %4666
  %4668 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4667, i32 undef)  ; BufferLoad(srv,index,wot)
  %4669 = extractvalue %dx.types.ResRet.f32 %4668, 0
  %4670 = add i32 %4537, %4666
  %4671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4670, i32 undef)  ; BufferLoad(srv,index,wot)
  %4672 = extractvalue %dx.types.ResRet.i32 %4671, 0
  %4673 = add i32 %4672, 0
  %4674 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4673, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4675 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4674, i32 0)  ; GetDimensions(handle,mipLevel)
  %4676 = extractvalue %dx.types.Dimensions %4675, 0
  %4677 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4676)  ; FirstbitLo(value)
  %4678 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4679 = extractvalue %dx.types.CBufRet.i32 %4678, 1
  %4680 = sub nsw i32 %4679, %4677
  %4681 = sitofp i32 %4680 to float
  %4682 = fsub fast float %4566, %4681
  %4683 = call float @dx.op.binary.f32(i32 35, float %4682, float 0.000000e+00)  ; FMax(a,b)
  %4684 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4674, %dx.types.Handle %52, float %4654, float %4655, float %4669, float undef, i32 0, i32 0, i32 undef, float %4683)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4685 = extractvalue %dx.types.ResRet.f32 %4684, 0
  %4686 = fcmp fast ogt float %4685, 0.000000e+00
  br i1 %4686, label %4687, label %4715

; <label>:4687                                    ; preds = %4658
  %4688 = add i32 %4648, %4666
  %4689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4688, i32 undef)  ; BufferLoad(srv,index,wot)
  %4690 = extractvalue %dx.types.ResRet.i32 %4689, 0
  %4691 = and i32 %4690, 32767
  %4692 = mul nuw nsw i32 %4691, 928
  %4693 = add nuw nsw i32 %4692, 48
  %4694 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4693, i32 undef)  ; BufferLoad(srv,index,wot)
  %4695 = extractvalue %dx.types.ResRet.f32 %4694, 0
  %4696 = extractvalue %dx.types.ResRet.f32 %4694, 1
  %4697 = extractvalue %dx.types.ResRet.f32 %4694, 2
  %4698 = add nuw nsw i32 %4692, 60
  %4699 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4698, i32 undef)  ; BufferLoad(srv,index,wot)
  %4700 = extractvalue %dx.types.ResRet.f32 %4699, 0
  %4701 = extractvalue %dx.types.ResRet.f32 %4699, 1
  %4702 = extractvalue %dx.types.ResRet.f32 %4699, 2
  %4703 = fmul fast float %4695, %4685
  %4704 = fmul fast float %4696, %4685
  %4705 = fmul fast float %4697, %4685
  %4706 = fadd fast float %4703, %4659
  %4707 = fadd fast float %4704, %4660
  %4708 = fadd fast float %4705, %4661
  %4709 = fmul fast float %4700, %4685
  %4710 = fmul fast float %4701, %4685
  %4711 = fmul fast float %4702, %4685
  %4712 = fadd fast float %4709, %4662
  %4713 = fadd fast float %4710, %4663
  %4714 = fadd fast float %4711, %4664
  br label %4715

; <label>:4715                                    ; preds = %4687, %4658
  %4716 = phi float [ %4706, %4687 ], [ %4659, %4658 ]
  %4717 = phi float [ %4707, %4687 ], [ %4660, %4658 ]
  %4718 = phi float [ %4708, %4687 ], [ %4661, %4658 ]
  %4719 = phi float [ %4712, %4687 ], [ %4662, %4658 ]
  %4720 = phi float [ %4713, %4687 ], [ %4663, %4658 ]
  %4721 = phi float [ %4714, %4687 ], [ %4664, %4658 ]
  %4722 = add nuw i32 %4665, 1
  %4723 = icmp eq i32 %4722, %4647
  br i1 %4723, label %4724, label %4658

; <label>:4724                                    ; preds = %4715
  br label %4725

; <label>:4725                                    ; preds = %4724, %4588
  %4726 = phi float [ 0.000000e+00, %4588 ], [ %4716, %4724 ]
  %4727 = phi float [ 0.000000e+00, %4588 ], [ %4717, %4724 ]
  %4728 = phi float [ 0.000000e+00, %4588 ], [ %4718, %4724 ]
  %4729 = phi float [ 0.000000e+00, %4588 ], [ %4719, %4724 ]
  %4730 = phi float [ 0.000000e+00, %4588 ], [ %4720, %4724 ]
  %4731 = phi float [ 0.000000e+00, %4588 ], [ %4721, %4724 ]
  %4732 = fadd fast float %4729, %4726
  %4733 = fmul fast float %4732, 0x3F847AE140000000
  %4734 = fadd fast float %4730, %4727
  %4735 = fmul fast float %4734, 0x3F847AE140000000
  %4736 = fadd fast float %4731, %4728
  %4737 = fmul fast float %4736, 0x3F847AE140000000
  br label %4738

; <label>:4738                                    ; preds = %4725, %4522, %4467, %4464, %4435, %4397
  %4739 = phi float [ %4459, %4435 ], [ 0.000000e+00, %4397 ], [ %4733, %4725 ], [ 0.000000e+00, %4467 ], [ 0.000000e+00, %4522 ], [ 0.000000e+00, %4464 ]
  %4740 = phi float [ %4461, %4435 ], [ 0.000000e+00, %4397 ], [ %4735, %4725 ], [ 0.000000e+00, %4467 ], [ 0.000000e+00, %4522 ], [ 0.000000e+00, %4464 ]
  %4741 = phi float [ %4463, %4435 ], [ 0.000000e+00, %4397 ], [ %4737, %4725 ], [ 0.000000e+00, %4467 ], [ 0.000000e+00, %4522 ], [ 0.000000e+00, %4464 ]
  %4742 = phi float [ %4449, %4435 ], [ -1.310720e+05, %4397 ], [ %4641, %4725 ], [ -1.310720e+05, %4467 ], [ -1.310720e+05, %4522 ], [ -1.310720e+05, %4464 ]
  %4743 = phi i1 [ true, %4435 ], [ false, %4397 ], [ true, %4725 ], [ false, %4467 ], [ false, %4522 ], [ false, %4464 ]
  %4744 = and i32 %268, 3
  %4745 = icmp eq i32 %4744, 1
  %4746 = select i1 %4745, float 1.000000e+00, float 0.000000e+00
  %4747 = fsub fast float %4742, %200
  %4748 = call float @dx.op.unary.f32(i32 7, float %4747)  ; Saturate(value)
  %4749 = select i1 %4743, float %4748, float 1.000000e+00
  %4750 = fmul fast float %4749, %4746
  %4751 = icmp eq i32 %4744, 3
  %4752 = select i1 %4751, float 1.000000e+00, float %4750
  %4753 = call float @dx.op.binary.f32(i32 35, float %4252, float %4752)  ; FMax(a,b)
  %4754 = fcmp fast olt float %4752, 1.000000e+00
  %4755 = fcmp uge float %75, 0.000000e+00
  %4756 = and i1 %4755, %4754
  br i1 %4756, label %4757, label %4767

; <label>:4757                                    ; preds = %4738
  %4758 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %52, float %75, float %76, float %77, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4759 = extractvalue %dx.types.ResRet.f32 %4758, 0
  %4760 = extractvalue %dx.types.ResRet.f32 %4758, 1
  %4761 = extractvalue %dx.types.ResRet.f32 %4758, 2
  %4762 = fadd fast float %4759, %4753
  %4763 = fcmp ule float %74, 0.000000e+00
  %4764 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4765 = select i1 %4763, float %4764, float 1.000000e+00
  %4766 = fmul fast float %4765, %4761
  br label %4767

; <label>:4767                                    ; preds = %4757, %4738
  %4768 = phi float [ %4762, %4757 ], [ %4753, %4738 ]
  %4769 = phi float [ %4760, %4757 ], [ 0.000000e+00, %4738 ]
  %4770 = phi float [ %4766, %4757 ], [ 0.000000e+00, %4738 ]
  %4771 = call float @dx.op.unary.f32(i32 7, float %4768)  ; Saturate(value)
  %4772 = call float @dx.op.unary.f32(i32 7, float %4769)  ; Saturate(value)
  %4773 = call float @dx.op.unary.f32(i32 7, float %4770)  ; Saturate(value)
  %4774 = fcmp fast une float %4772, 0.000000e+00
  %4775 = fcmp fast une float %4773, 0.000000e+00
  %4776 = or i1 %4774, %4775
  br i1 %4776, label %4777, label %5336

; <label>:4777                                    ; preds = %4767
  br i1 %4774, label %4778, label %5051

; <label>:4778                                    ; preds = %4777
  %4779 = call float @dx.op.unary.f32(i32 23, float %4249)  ; Log(value)
  %4780 = fmul fast float %4779, 4.000000e+00
  %4781 = call float @dx.op.unary.f32(i32 21, float %4780)  ; Exp(value)
  %4782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4783 = extractvalue %dx.types.CBufRet.f32 %4782, 0
  %4784 = fmul fast float %4783, %62
  %4785 = fmul fast float %4783, %63
  %4786 = fmul fast float %4783, %64
  %4787 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4788 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4789 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4790 = call float @dx.op.unary.f32(i32 23, float %4787)  ; Log(value)
  %4791 = call float @dx.op.unary.f32(i32 23, float %4788)  ; Log(value)
  %4792 = call float @dx.op.unary.f32(i32 23, float %4789)  ; Log(value)
  %4793 = fmul fast float %4790, 4.000000e+00
  %4794 = fmul fast float %4791, 4.000000e+00
  %4795 = fmul fast float %4792, 4.000000e+00
  %4796 = call float @dx.op.unary.f32(i32 21, float %4793)  ; Exp(value)
  %4797 = call float @dx.op.unary.f32(i32 21, float %4794)  ; Exp(value)
  %4798 = call float @dx.op.unary.f32(i32 21, float %4795)  ; Exp(value)
  %4799 = fadd fast float %4797, %4796
  %4800 = fadd fast float %4799, %4798
  %4801 = fdiv fast float 1.000000e+00, %4800
  %4802 = fmul fast float %4801, %4796
  %4803 = fcmp fast ogt float %71, 0.000000e+00
  %4804 = fcmp fast ogt float %72, 0.000000e+00
  %4805 = fcmp fast ogt float %73, 0.000000e+00
  %4806 = fcmp fast olt float %71, 0.000000e+00
  %4807 = fcmp fast olt float %72, 0.000000e+00
  %4808 = fcmp fast olt float %73, 0.000000e+00
  %4809 = zext i1 %4803 to i32
  %4810 = zext i1 %4804 to i32
  %4811 = zext i1 %4805 to i32
  %4812 = zext i1 %4806 to i32
  %4813 = zext i1 %4807 to i32
  %4814 = zext i1 %4808 to i32
  %4815 = sub nsw i32 %4809, %4812
  %4816 = sub nsw i32 %4810, %4813
  %4817 = sub nsw i32 %4811, %4814
  %4818 = call float @dx.op.unary.f32(i32 83, float %4784)  ; DerivCoarseX(value)
  %4819 = call float @dx.op.unary.f32(i32 83, float %4785)  ; DerivCoarseX(value)
  %4820 = call float @dx.op.unary.f32(i32 83, float %4786)  ; DerivCoarseX(value)
  %4821 = call float @dx.op.unary.f32(i32 84, float %4784)  ; DerivCoarseY(value)
  %4822 = call float @dx.op.unary.f32(i32 84, float %4785)  ; DerivCoarseY(value)
  %4823 = call float @dx.op.unary.f32(i32 84, float %4786)  ; DerivCoarseY(value)
  %4824 = fcmp fast ole float %300, %4802
  %4825 = fmul fast float %4801, %4799
  %4826 = fcmp fast ole float %300, %4825
  %4827 = select i1 %4826, float %4786, float %4784
  %4828 = select i1 %4826, float %4784, float %4785
  %4829 = select i1 %4824, float %4785, float %4827
  %4830 = select i1 %4824, float %4786, float %4828
  %4831 = select i1 %4826, float %4820, float %4818
  %4832 = select i1 %4826, float %4818, float %4819
  %4833 = select i1 %4824, float %4819, float %4831
  %4834 = select i1 %4824, float %4820, float %4832
  %4835 = select i1 %4826, float %4823, float %4821
  %4836 = select i1 %4826, float %4821, float %4822
  %4837 = select i1 %4824, float %4822, float %4835
  %4838 = select i1 %4824, float %4823, float %4836
  %4839 = call float @dx.op.unary.f32(i32 27, float %4829)  ; Round_ni(value)
  %4840 = call float @dx.op.unary.f32(i32 27, float %4830)  ; Round_ni(value)
  %4841 = fptosi float %4839 to i32
  %4842 = fptosi float %4840 to i32
  %4843 = xor i32 %4842, %4841
  %4844 = sitofp i32 %4843 to float
  %4845 = fptosi float %4844 to i32
  %4846 = sitofp i32 %4845 to float
  %4847 = fmul fast float %4846, 0x3FE3C6EF40000000
  %4848 = frem fast float %4839, 2.560000e+02
  %4849 = frem fast float %4840, 2.560000e+02
  %4850 = fptoui float %4848 to i32
  %4851 = fptoui float %4849 to i32
  %4852 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4850, i32 %4851, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4853 = extractvalue %dx.types.ResRet.f32 %4852, 0
  %4854 = extractvalue %dx.types.ResRet.f32 %4852, 1
  %4855 = extractvalue %dx.types.ResRet.f32 %4852, 2
  %4856 = fadd fast float %4853, %4847
  %4857 = fadd fast float %4854, %4847
  %4858 = fadd fast float %4855, %4847
  %4859 = call float @dx.op.unary.f32(i32 22, float %4856)  ; Frc(value)
  %4860 = call float @dx.op.unary.f32(i32 22, float %4857)  ; Frc(value)
  %4861 = call float @dx.op.unary.f32(i32 22, float %4858)  ; Frc(value)
  %4862 = fmul fast float %4861, 0x401921FB60000000
  %4863 = call float @dx.op.unary.f32(i32 13, float %4862)  ; Sin(value)
  %4864 = call float @dx.op.unary.f32(i32 12, float %4862)  ; Cos(value)
  %4865 = fsub fast float -0.000000e+00, %4864
  %4866 = fmul fast float %4864, %4829
  %4867 = call float @dx.op.tertiary.f32(i32 46, float %4863, float %4830, float %4866)  ; FMad(a,b,c)
  %4868 = fmul fast float %4863, %4829
  %4869 = call float @dx.op.tertiary.f32(i32 46, float %4865, float %4830, float %4868)  ; FMad(a,b,c)
  %4870 = fadd fast float %4867, %4859
  %4871 = fadd fast float %4869, %4860
  %4872 = extractvalue %dx.types.CBufRet.f32 %4782, 3
  %4873 = bitcast float %4872 to i32
  %4874 = icmp eq i32 %4873, 0
  br i1 %4874, label %4913, label %4875

; <label>:4875                                    ; preds = %4778
  %4876 = add i32 %4873, 0
  %4877 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4876, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4878 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4877, %dx.types.Handle %116, float %4870, float %4871, float undef, float undef, i32 0, i32 0, i32 undef, float %4833, float %4834, float undef, float %4837, float %4838, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4879 = extractvalue %dx.types.ResRet.f32 %4878, 0
  %4880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4881 = extractvalue %dx.types.CBufRet.f32 %4880, 1
  %4882 = extractvalue %dx.types.CBufRet.f32 %4880, 2
  %4883 = fsub fast float 1.000000e+00, %4772
  %4884 = call float @dx.op.binary.f32(i32 35, float %4883, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4885 = bitcast float %4772 to i32
  %4886 = sitofp i32 %4885 to float
  %4887 = fadd fast float %4886, 0xC1CFBF8940000000
  %4888 = fmul fast float %4882, %4887
  %4889 = fadd fast float %4888, 0x41CFBF8940000000
  %4890 = fptosi float %4889 to i32
  %4891 = bitcast i32 %4890 to float
  %4892 = bitcast float %4884 to i32
  %4893 = sitofp i32 %4892 to float
  %4894 = fadd fast float %4893, 0xC1CFBF8940000000
  %4895 = fmul fast float %4894, %4882
  %4896 = fadd fast float %4895, 0x41CFBF8940000000
  %4897 = fptosi float %4896 to i32
  %4898 = bitcast i32 %4897 to float
  %4899 = fmul fast float %4891, %4881
  %4900 = fmul fast float %4898, %4881
  %4901 = fsub fast float %4884, %4899
  %4902 = fadd fast float %4900, %4884
  %4903 = call float @dx.op.unary.f32(i32 7, float %4901)  ; Saturate(value)
  %4904 = call float @dx.op.unary.f32(i32 7, float %4902)  ; Saturate(value)
  %4905 = fsub fast float %4879, %4903
  %4906 = fsub fast float %4904, %4903
  %4907 = bitcast float %4906 to i32
  %4908 = sub nsw i32 2129859010, %4907
  %4909 = bitcast i32 %4908 to float
  %4910 = fmul fast float %4909, %4905
  %4911 = call float @dx.op.unary.f32(i32 7, float %4910)  ; Saturate(value)
  %4912 = fcmp fast olt float %4911, 0x3F70101020000000
  br i1 %4912, label %5051, label %4913

; <label>:4913                                    ; preds = %4875, %4778
  %4914 = phi float [ %4911, %4875 ], [ %4772, %4778 ]
  %4915 = fmul fast float %4914, %4781
  %4916 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4917 = extractvalue %dx.types.CBufRet.i32 %4916, 1
  %4918 = extractvalue %dx.types.CBufRet.i32 %4916, 0
  %4919 = add i32 %4918, 0
  %4920 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4919, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4921 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4920, %dx.types.Handle %115, float %4870, float %4871, float undef, float undef, i32 0, i32 0, i32 undef, float %4833, float %4834, float undef, float %4837, float %4838, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4922 = extractvalue %dx.types.ResRet.f32 %4921, 0
  %4923 = extractvalue %dx.types.ResRet.f32 %4921, 1
  %4924 = extractvalue %dx.types.ResRet.f32 %4921, 2
  %4925 = extractvalue %dx.types.ResRet.f32 %4921, 3
  %4926 = and i32 %4917, 255
  %4927 = uitofp i32 %4926 to float
  %4928 = lshr i32 %4917, 8
  %4929 = and i32 %4928, 255
  %4930 = uitofp i32 %4929 to float
  %4931 = fmul fast float %4925, %4927
  %4932 = fadd fast float %4931, %4930
  %4933 = fmul fast float %4932, 0x3F70101000000000
  %4934 = fadd fast float %4933, 0xBFB99999A0000000
  %4935 = call float @dx.op.unary.f32(i32 7, float %4934)  ; Saturate(value)
  %4936 = fmul fast float %4935, 0x3FF1C71C80000000
  %4937 = call float @dx.op.binary.f32(i32 36, float %4933, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4938 = fsub fast float 1.000000e+00, %4936
  %4939 = call float @dx.op.unary.f32(i32 7, float %4938)  ; Saturate(value)
  %4940 = fmul fast float %4939, %4922
  %4941 = fmul fast float %4939, %4923
  %4942 = fmul fast float %4939, %4924
  %4943 = call float @dx.op.unary.f32(i32 7, float %4940)  ; Saturate(value)
  %4944 = call float @dx.op.unary.f32(i32 7, float %4941)  ; Saturate(value)
  %4945 = call float @dx.op.unary.f32(i32 7, float %4942)  ; Saturate(value)
  %4946 = fmul fast float %4936, %4922
  %4947 = fmul fast float %4936, %4923
  %4948 = fmul fast float %4936, %4924
  %4949 = fadd fast float %4946, %4937
  %4950 = fadd fast float %4947, %4937
  %4951 = fadd fast float %4948, %4937
  %4952 = call float @dx.op.unary.f32(i32 7, float %4949)  ; Saturate(value)
  %4953 = call float @dx.op.unary.f32(i32 7, float %4950)  ; Saturate(value)
  %4954 = call float @dx.op.unary.f32(i32 7, float %4951)  ; Saturate(value)
  %4955 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4956 = extractvalue %dx.types.CBufRet.i32 %4955, 3
  %4957 = extractvalue %dx.types.CBufRet.i32 %4955, 2
  %4958 = add i32 %4957, 0
  %4959 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4958, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4960 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4959, %dx.types.Handle %115, float %4870, float %4871, float undef, float undef, i32 0, i32 0, i32 undef, float %4833, float %4834, float undef, float %4837, float %4838, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4961 = extractvalue %dx.types.ResRet.f32 %4960, 0
  %4962 = extractvalue %dx.types.ResRet.f32 %4960, 1
  %4963 = extractvalue %dx.types.ResRet.f32 %4960, 2
  %4964 = extractvalue %dx.types.ResRet.f32 %4960, 3
  %4965 = and i32 %4956, 255
  %4966 = uitofp i32 %4965 to float
  %4967 = lshr i32 %4956, 8
  %4968 = and i32 %4967, 255
  %4969 = uitofp i32 %4968 to float
  %4970 = lshr i32 %4956, 16
  %4971 = and i32 %4970, 255
  %4972 = uitofp i32 %4971 to float
  %4973 = fmul fast float %4972, 0x3F70101000000000
  %4974 = fmul fast float %4961, %4966
  %4975 = fadd fast float %4974, %4969
  %4976 = fmul fast float %4975, 0x3F70101000000000
  %4977 = fadd fast float %4962, -5.000000e-01
  %4978 = fadd fast float %4964, -5.000000e-01
  %4979 = fmul fast float %4977, %4973
  %4980 = fmul fast float %4978, %4973
  %4981 = fadd fast float %4979, 5.000000e-01
  %4982 = fadd fast float %4980, 5.000000e-01
  %4983 = fmul fast float %4981, 2.000000e+00
  %4984 = fadd fast float %4983, -1.000000e+00
  %4985 = fmul fast float %4982, 2.000000e+00
  %4986 = fadd fast float %4985, -1.000000e+00
  %4987 = fadd fast float %4984, %4986
  %4988 = fmul fast float %4987, 5.000000e-01
  %4989 = fsub fast float %4984, %4986
  %4990 = fmul fast float %4989, 5.000000e-01
  %4991 = call float @dx.op.unary.f32(i32 6, float %4988)  ; FAbs(value)
  %4992 = fsub fast float 1.000000e+00, %4991
  %4993 = call float @dx.op.unary.f32(i32 6, float %4990)  ; FAbs(value)
  %4994 = fsub fast float %4992, %4993
  %4995 = call float @dx.op.dot3.f32(i32 55, float %4988, float %4990, float %4994, float %4988, float %4990, float %4994)  ; Dot3(ax,ay,az,bx,by,bz)
  %4996 = call float @dx.op.unary.f32(i32 25, float %4995)  ; Rsqrt(value)
  %4997 = fmul fast float %4988, %4996
  %4998 = fmul fast float %4990, %4996
  %4999 = select i1 %4826, i32 %4816, i32 %4817
  %5000 = select i1 %4824, i32 %4815, i32 %4999
  %5001 = sitofp i32 %5000 to float
  %5002 = fmul fast float %4994, %5001
  %5003 = fmul fast float %5002, %4996
  %5004 = select i1 %4826, float %5003, float %4998
  %5005 = select i1 %4826, float %4998, float %5003
  %5006 = select i1 %4824, float %5003, float %4997
  %5007 = select i1 %4824, float %4998, float %5004
  %5008 = select i1 %4824, float %4997, float %5005
  %5009 = fsub fast float %4943, %4376
  %5010 = fsub fast float %4944, %4377
  %5011 = fsub fast float %4945, %4378
  %5012 = fmul fast float %5009, %4915
  %5013 = fmul fast float %5010, %4915
  %5014 = fmul fast float %5011, %4915
  %5015 = fadd fast float %5012, %4376
  %5016 = fadd fast float %5013, %4377
  %5017 = fadd fast float %5014, %4378
  %5018 = fsub fast float %4952, %4295
  %5019 = fsub fast float %4953, %4296
  %5020 = fsub fast float %4954, %4297
  %5021 = fmul fast float %5018, %4915
  %5022 = fmul fast float %5019, %4915
  %5023 = fmul fast float %5020, %4915
  %5024 = fadd fast float %5021, %4295
  %5025 = fadd fast float %5022, %4296
  %5026 = fadd fast float %5023, %4297
  %5027 = fadd fast float %5006, %4234
  %5028 = fadd fast float %5007, %4235
  %5029 = fadd fast float %5008, %4236
  %5030 = call float @dx.op.dot3.f32(i32 55, float %5027, float %5028, float %5029, float %5027, float %5028, float %5029)  ; Dot3(ax,ay,az,bx,by,bz)
  %5031 = call float @dx.op.unary.f32(i32 25, float %5030)  ; Rsqrt(value)
  %5032 = fmul fast float %5027, %5031
  %5033 = fmul fast float %5028, %5031
  %5034 = fmul fast float %5029, %5031
  %5035 = fsub fast float %5032, %4234
  %5036 = fsub fast float %5033, %4235
  %5037 = fsub fast float %5034, %4236
  %5038 = fmul fast float %5035, %4915
  %5039 = fmul fast float %5036, %4915
  %5040 = fmul fast float %5037, %4915
  %5041 = fadd fast float %5038, %4234
  %5042 = fadd fast float %5039, %4235
  %5043 = fadd fast float %5040, %4236
  %5044 = call float @dx.op.binary.f32(i32 36, float %4249, float %4963)  ; FMin(a,b)
  %5045 = fsub fast float %5044, %4249
  %5046 = fmul fast float %5045, %4915
  %5047 = fadd fast float %5046, %4249
  %5048 = fsub fast float %4976, %4298
  %5049 = fmul fast float %5048, %4915
  %5050 = fadd fast float %5049, %4298
  br label %5051

; <label>:5051                                    ; preds = %4913, %4875, %4777
  %5052 = phi float [ %5015, %4913 ], [ %4376, %4875 ], [ %4376, %4777 ]
  %5053 = phi float [ %5016, %4913 ], [ %4377, %4875 ], [ %4377, %4777 ]
  %5054 = phi float [ %5017, %4913 ], [ %4378, %4875 ], [ %4378, %4777 ]
  %5055 = phi float [ %5041, %4913 ], [ %4234, %4875 ], [ %4234, %4777 ]
  %5056 = phi float [ %5042, %4913 ], [ %4235, %4875 ], [ %4235, %4777 ]
  %5057 = phi float [ %5043, %4913 ], [ %4236, %4875 ], [ %4236, %4777 ]
  %5058 = phi float [ %5024, %4913 ], [ %4295, %4875 ], [ %4295, %4777 ]
  %5059 = phi float [ %5025, %4913 ], [ %4296, %4875 ], [ %4296, %4777 ]
  %5060 = phi float [ %5026, %4913 ], [ %4297, %4875 ], [ %4297, %4777 ]
  %5061 = phi float [ %5050, %4913 ], [ %4298, %4875 ], [ %4298, %4777 ]
  %5062 = phi float [ %5047, %4913 ], [ %4249, %4875 ], [ %4249, %4777 ]
  br i1 %4775, label %5063, label %5336

; <label>:5063                                    ; preds = %5051
  %5064 = call float @dx.op.unary.f32(i32 23, float %5062)  ; Log(value)
  %5065 = fmul fast float %5064, 4.000000e+00
  %5066 = call float @dx.op.unary.f32(i32 21, float %5065)  ; Exp(value)
  %5067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5068 = extractvalue %dx.types.CBufRet.f32 %5067, 0
  %5069 = fmul fast float %5068, %62
  %5070 = fmul fast float %5068, %63
  %5071 = fmul fast float %5068, %64
  %5072 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %5073 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %5074 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %5075 = call float @dx.op.unary.f32(i32 23, float %5072)  ; Log(value)
  %5076 = call float @dx.op.unary.f32(i32 23, float %5073)  ; Log(value)
  %5077 = call float @dx.op.unary.f32(i32 23, float %5074)  ; Log(value)
  %5078 = fmul fast float %5075, 4.000000e+00
  %5079 = fmul fast float %5076, 4.000000e+00
  %5080 = fmul fast float %5077, 4.000000e+00
  %5081 = call float @dx.op.unary.f32(i32 21, float %5078)  ; Exp(value)
  %5082 = call float @dx.op.unary.f32(i32 21, float %5079)  ; Exp(value)
  %5083 = call float @dx.op.unary.f32(i32 21, float %5080)  ; Exp(value)
  %5084 = fadd fast float %5082, %5081
  %5085 = fadd fast float %5084, %5083
  %5086 = fdiv fast float 1.000000e+00, %5085
  %5087 = fmul fast float %5086, %5081
  %5088 = fcmp fast ogt float %71, 0.000000e+00
  %5089 = fcmp fast ogt float %72, 0.000000e+00
  %5090 = fcmp fast ogt float %73, 0.000000e+00
  %5091 = fcmp fast olt float %71, 0.000000e+00
  %5092 = fcmp fast olt float %72, 0.000000e+00
  %5093 = fcmp fast olt float %73, 0.000000e+00
  %5094 = zext i1 %5088 to i32
  %5095 = zext i1 %5089 to i32
  %5096 = zext i1 %5090 to i32
  %5097 = zext i1 %5091 to i32
  %5098 = zext i1 %5092 to i32
  %5099 = zext i1 %5093 to i32
  %5100 = sub nsw i32 %5094, %5097
  %5101 = sub nsw i32 %5095, %5098
  %5102 = sub nsw i32 %5096, %5099
  %5103 = call float @dx.op.unary.f32(i32 83, float %5069)  ; DerivCoarseX(value)
  %5104 = call float @dx.op.unary.f32(i32 83, float %5070)  ; DerivCoarseX(value)
  %5105 = call float @dx.op.unary.f32(i32 83, float %5071)  ; DerivCoarseX(value)
  %5106 = call float @dx.op.unary.f32(i32 84, float %5069)  ; DerivCoarseY(value)
  %5107 = call float @dx.op.unary.f32(i32 84, float %5070)  ; DerivCoarseY(value)
  %5108 = call float @dx.op.unary.f32(i32 84, float %5071)  ; DerivCoarseY(value)
  %5109 = fcmp fast ole float %300, %5087
  %5110 = fmul fast float %5086, %5084
  %5111 = fcmp fast ole float %300, %5110
  %5112 = select i1 %5111, float %5071, float %5069
  %5113 = select i1 %5111, float %5069, float %5070
  %5114 = select i1 %5109, float %5070, float %5112
  %5115 = select i1 %5109, float %5071, float %5113
  %5116 = select i1 %5111, float %5105, float %5103
  %5117 = select i1 %5111, float %5103, float %5104
  %5118 = select i1 %5109, float %5104, float %5116
  %5119 = select i1 %5109, float %5105, float %5117
  %5120 = select i1 %5111, float %5108, float %5106
  %5121 = select i1 %5111, float %5106, float %5107
  %5122 = select i1 %5109, float %5107, float %5120
  %5123 = select i1 %5109, float %5108, float %5121
  %5124 = call float @dx.op.unary.f32(i32 27, float %5114)  ; Round_ni(value)
  %5125 = call float @dx.op.unary.f32(i32 27, float %5115)  ; Round_ni(value)
  %5126 = fptosi float %5124 to i32
  %5127 = fptosi float %5125 to i32
  %5128 = xor i32 %5127, %5126
  %5129 = sitofp i32 %5128 to float
  %5130 = fptosi float %5129 to i32
  %5131 = sitofp i32 %5130 to float
  %5132 = fmul fast float %5131, 0x3FE3C6EF40000000
  %5133 = frem fast float %5124, 2.560000e+02
  %5134 = frem fast float %5125, 2.560000e+02
  %5135 = fptoui float %5133 to i32
  %5136 = fptoui float %5134 to i32
  %5137 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %5135, i32 %5136, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5138 = extractvalue %dx.types.ResRet.f32 %5137, 0
  %5139 = extractvalue %dx.types.ResRet.f32 %5137, 1
  %5140 = extractvalue %dx.types.ResRet.f32 %5137, 2
  %5141 = fadd fast float %5138, %5132
  %5142 = fadd fast float %5139, %5132
  %5143 = fadd fast float %5140, %5132
  %5144 = call float @dx.op.unary.f32(i32 22, float %5141)  ; Frc(value)
  %5145 = call float @dx.op.unary.f32(i32 22, float %5142)  ; Frc(value)
  %5146 = call float @dx.op.unary.f32(i32 22, float %5143)  ; Frc(value)
  %5147 = fmul fast float %5146, 0x401921FB60000000
  %5148 = call float @dx.op.unary.f32(i32 13, float %5147)  ; Sin(value)
  %5149 = call float @dx.op.unary.f32(i32 12, float %5147)  ; Cos(value)
  %5150 = fsub fast float -0.000000e+00, %5149
  %5151 = fmul fast float %5149, %5114
  %5152 = call float @dx.op.tertiary.f32(i32 46, float %5148, float %5115, float %5151)  ; FMad(a,b,c)
  %5153 = fmul fast float %5148, %5114
  %5154 = call float @dx.op.tertiary.f32(i32 46, float %5150, float %5115, float %5153)  ; FMad(a,b,c)
  %5155 = fadd fast float %5152, %5144
  %5156 = fadd fast float %5154, %5145
  %5157 = extractvalue %dx.types.CBufRet.f32 %5067, 3
  %5158 = bitcast float %5157 to i32
  %5159 = icmp eq i32 %5158, 0
  br i1 %5159, label %5198, label %5160

; <label>:5160                                    ; preds = %5063
  %5161 = add i32 %5158, 0
  %5162 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5161, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5163 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5162, %dx.types.Handle %116, float %5155, float %5156, float undef, float undef, i32 0, i32 0, i32 undef, float %5118, float %5119, float undef, float %5122, float %5123, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5164 = extractvalue %dx.types.ResRet.f32 %5163, 0
  %5165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5166 = extractvalue %dx.types.CBufRet.f32 %5165, 1
  %5167 = extractvalue %dx.types.CBufRet.f32 %5165, 2
  %5168 = fsub fast float 1.000000e+00, %4773
  %5169 = call float @dx.op.binary.f32(i32 35, float %5168, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5170 = bitcast float %4773 to i32
  %5171 = sitofp i32 %5170 to float
  %5172 = fadd fast float %5171, 0xC1CFBF8940000000
  %5173 = fmul fast float %5167, %5172
  %5174 = fadd fast float %5173, 0x41CFBF8940000000
  %5175 = fptosi float %5174 to i32
  %5176 = bitcast i32 %5175 to float
  %5177 = bitcast float %5169 to i32
  %5178 = sitofp i32 %5177 to float
  %5179 = fadd fast float %5178, 0xC1CFBF8940000000
  %5180 = fmul fast float %5179, %5167
  %5181 = fadd fast float %5180, 0x41CFBF8940000000
  %5182 = fptosi float %5181 to i32
  %5183 = bitcast i32 %5182 to float
  %5184 = fmul fast float %5176, %5166
  %5185 = fmul fast float %5183, %5166
  %5186 = fsub fast float %5169, %5184
  %5187 = fadd fast float %5185, %5169
  %5188 = call float @dx.op.unary.f32(i32 7, float %5186)  ; Saturate(value)
  %5189 = call float @dx.op.unary.f32(i32 7, float %5187)  ; Saturate(value)
  %5190 = fsub fast float %5164, %5188
  %5191 = fsub fast float %5189, %5188
  %5192 = bitcast float %5191 to i32
  %5193 = sub nsw i32 2129859010, %5192
  %5194 = bitcast i32 %5193 to float
  %5195 = fmul fast float %5194, %5190
  %5196 = call float @dx.op.unary.f32(i32 7, float %5195)  ; Saturate(value)
  %5197 = fcmp fast olt float %5196, 0x3F70101020000000
  br i1 %5197, label %5336, label %5198

; <label>:5198                                    ; preds = %5160, %5063
  %5199 = phi float [ %5196, %5160 ], [ %4773, %5063 ]
  %5200 = fmul fast float %5199, %5066
  %5201 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5202 = extractvalue %dx.types.CBufRet.i32 %5201, 1
  %5203 = extractvalue %dx.types.CBufRet.i32 %5201, 0
  %5204 = add i32 %5203, 0
  %5205 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5204, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5206 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5205, %dx.types.Handle %115, float %5155, float %5156, float undef, float undef, i32 0, i32 0, i32 undef, float %5118, float %5119, float undef, float %5122, float %5123, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5207 = extractvalue %dx.types.ResRet.f32 %5206, 0
  %5208 = extractvalue %dx.types.ResRet.f32 %5206, 1
  %5209 = extractvalue %dx.types.ResRet.f32 %5206, 2
  %5210 = extractvalue %dx.types.ResRet.f32 %5206, 3
  %5211 = and i32 %5202, 255
  %5212 = uitofp i32 %5211 to float
  %5213 = lshr i32 %5202, 8
  %5214 = and i32 %5213, 255
  %5215 = uitofp i32 %5214 to float
  %5216 = fmul fast float %5210, %5212
  %5217 = fadd fast float %5216, %5215
  %5218 = fmul fast float %5217, 0x3F70101000000000
  %5219 = fadd fast float %5218, 0xBFB99999A0000000
  %5220 = call float @dx.op.unary.f32(i32 7, float %5219)  ; Saturate(value)
  %5221 = fmul fast float %5220, 0x3FF1C71C80000000
  %5222 = call float @dx.op.binary.f32(i32 36, float %5218, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5223 = fsub fast float 1.000000e+00, %5221
  %5224 = call float @dx.op.unary.f32(i32 7, float %5223)  ; Saturate(value)
  %5225 = fmul fast float %5224, %5207
  %5226 = fmul fast float %5224, %5208
  %5227 = fmul fast float %5224, %5209
  %5228 = call float @dx.op.unary.f32(i32 7, float %5225)  ; Saturate(value)
  %5229 = call float @dx.op.unary.f32(i32 7, float %5226)  ; Saturate(value)
  %5230 = call float @dx.op.unary.f32(i32 7, float %5227)  ; Saturate(value)
  %5231 = fmul fast float %5221, %5207
  %5232 = fmul fast float %5221, %5208
  %5233 = fmul fast float %5221, %5209
  %5234 = fadd fast float %5231, %5222
  %5235 = fadd fast float %5232, %5222
  %5236 = fadd fast float %5233, %5222
  %5237 = call float @dx.op.unary.f32(i32 7, float %5234)  ; Saturate(value)
  %5238 = call float @dx.op.unary.f32(i32 7, float %5235)  ; Saturate(value)
  %5239 = call float @dx.op.unary.f32(i32 7, float %5236)  ; Saturate(value)
  %5240 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5241 = extractvalue %dx.types.CBufRet.i32 %5240, 3
  %5242 = extractvalue %dx.types.CBufRet.i32 %5240, 2
  %5243 = add i32 %5242, 0
  %5244 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5243, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5245 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5244, %dx.types.Handle %115, float %5155, float %5156, float undef, float undef, i32 0, i32 0, i32 undef, float %5118, float %5119, float undef, float %5122, float %5123, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5246 = extractvalue %dx.types.ResRet.f32 %5245, 0
  %5247 = extractvalue %dx.types.ResRet.f32 %5245, 1
  %5248 = extractvalue %dx.types.ResRet.f32 %5245, 2
  %5249 = extractvalue %dx.types.ResRet.f32 %5245, 3
  %5250 = and i32 %5241, 255
  %5251 = uitofp i32 %5250 to float
  %5252 = lshr i32 %5241, 8
  %5253 = and i32 %5252, 255
  %5254 = uitofp i32 %5253 to float
  %5255 = lshr i32 %5241, 16
  %5256 = and i32 %5255, 255
  %5257 = uitofp i32 %5256 to float
  %5258 = fmul fast float %5257, 0x3F70101000000000
  %5259 = fmul fast float %5246, %5251
  %5260 = fadd fast float %5259, %5254
  %5261 = fmul fast float %5260, 0x3F70101000000000
  %5262 = fadd fast float %5247, -5.000000e-01
  %5263 = fadd fast float %5249, -5.000000e-01
  %5264 = fmul fast float %5262, %5258
  %5265 = fmul fast float %5263, %5258
  %5266 = fadd fast float %5264, 5.000000e-01
  %5267 = fadd fast float %5265, 5.000000e-01
  %5268 = fmul fast float %5266, 2.000000e+00
  %5269 = fadd fast float %5268, -1.000000e+00
  %5270 = fmul fast float %5267, 2.000000e+00
  %5271 = fadd fast float %5270, -1.000000e+00
  %5272 = fadd fast float %5269, %5271
  %5273 = fmul fast float %5272, 5.000000e-01
  %5274 = fsub fast float %5269, %5271
  %5275 = fmul fast float %5274, 5.000000e-01
  %5276 = call float @dx.op.unary.f32(i32 6, float %5273)  ; FAbs(value)
  %5277 = fsub fast float 1.000000e+00, %5276
  %5278 = call float @dx.op.unary.f32(i32 6, float %5275)  ; FAbs(value)
  %5279 = fsub fast float %5277, %5278
  %5280 = call float @dx.op.dot3.f32(i32 55, float %5273, float %5275, float %5279, float %5273, float %5275, float %5279)  ; Dot3(ax,ay,az,bx,by,bz)
  %5281 = call float @dx.op.unary.f32(i32 25, float %5280)  ; Rsqrt(value)
  %5282 = fmul fast float %5273, %5281
  %5283 = fmul fast float %5275, %5281
  %5284 = select i1 %5111, i32 %5101, i32 %5102
  %5285 = select i1 %5109, i32 %5100, i32 %5284
  %5286 = sitofp i32 %5285 to float
  %5287 = fmul fast float %5279, %5286
  %5288 = fmul fast float %5287, %5281
  %5289 = select i1 %5111, float %5288, float %5283
  %5290 = select i1 %5111, float %5283, float %5288
  %5291 = select i1 %5109, float %5288, float %5282
  %5292 = select i1 %5109, float %5283, float %5289
  %5293 = select i1 %5109, float %5282, float %5290
  %5294 = fsub fast float %5228, %5052
  %5295 = fsub fast float %5229, %5053
  %5296 = fsub fast float %5230, %5054
  %5297 = fmul fast float %5294, %5200
  %5298 = fmul fast float %5295, %5200
  %5299 = fmul fast float %5296, %5200
  %5300 = fadd fast float %5297, %5052
  %5301 = fadd fast float %5298, %5053
  %5302 = fadd fast float %5299, %5054
  %5303 = fsub fast float %5237, %5058
  %5304 = fsub fast float %5238, %5059
  %5305 = fsub fast float %5239, %5060
  %5306 = fmul fast float %5303, %5200
  %5307 = fmul fast float %5304, %5200
  %5308 = fmul fast float %5305, %5200
  %5309 = fadd fast float %5306, %5058
  %5310 = fadd fast float %5307, %5059
  %5311 = fadd fast float %5308, %5060
  %5312 = fadd fast float %5291, %5055
  %5313 = fadd fast float %5292, %5056
  %5314 = fadd fast float %5293, %5057
  %5315 = call float @dx.op.dot3.f32(i32 55, float %5312, float %5313, float %5314, float %5312, float %5313, float %5314)  ; Dot3(ax,ay,az,bx,by,bz)
  %5316 = call float @dx.op.unary.f32(i32 25, float %5315)  ; Rsqrt(value)
  %5317 = fmul fast float %5312, %5316
  %5318 = fmul fast float %5313, %5316
  %5319 = fmul fast float %5314, %5316
  %5320 = fsub fast float %5317, %5055
  %5321 = fsub fast float %5318, %5056
  %5322 = fsub fast float %5319, %5057
  %5323 = fmul fast float %5320, %5200
  %5324 = fmul fast float %5321, %5200
  %5325 = fmul fast float %5322, %5200
  %5326 = fadd fast float %5323, %5055
  %5327 = fadd fast float %5324, %5056
  %5328 = fadd fast float %5325, %5057
  %5329 = call float @dx.op.binary.f32(i32 36, float %5062, float %5248)  ; FMin(a,b)
  %5330 = fsub fast float %5329, %5062
  %5331 = fmul fast float %5330, %5200
  %5332 = fadd fast float %5331, %5062
  %5333 = fsub fast float %5261, %5061
  %5334 = fmul fast float %5333, %5200
  %5335 = fadd fast float %5334, %5061
  br label %5336

; <label>:5336                                    ; preds = %5198, %5160, %5051, %4767
  %5337 = phi float [ %5300, %5198 ], [ %5052, %5160 ], [ %5052, %5051 ], [ %4376, %4767 ]
  %5338 = phi float [ %5301, %5198 ], [ %5053, %5160 ], [ %5053, %5051 ], [ %4377, %4767 ]
  %5339 = phi float [ %5302, %5198 ], [ %5054, %5160 ], [ %5054, %5051 ], [ %4378, %4767 ]
  %5340 = phi float [ %5326, %5198 ], [ %5055, %5160 ], [ %5055, %5051 ], [ %4234, %4767 ]
  %5341 = phi float [ %5327, %5198 ], [ %5056, %5160 ], [ %5056, %5051 ], [ %4235, %4767 ]
  %5342 = phi float [ %5328, %5198 ], [ %5057, %5160 ], [ %5057, %5051 ], [ %4236, %4767 ]
  %5343 = phi float [ %5309, %5198 ], [ %5058, %5160 ], [ %5058, %5051 ], [ %4295, %4767 ]
  %5344 = phi float [ %5310, %5198 ], [ %5059, %5160 ], [ %5059, %5051 ], [ %4296, %4767 ]
  %5345 = phi float [ %5311, %5198 ], [ %5060, %5160 ], [ %5060, %5051 ], [ %4297, %4767 ]
  %5346 = phi float [ %5335, %5198 ], [ %5061, %5160 ], [ %5061, %5051 ], [ %4298, %4767 ]
  %5347 = phi float [ %5332, %5198 ], [ %5062, %5160 ], [ %5062, %5051 ], [ %4249, %4767 ]
  %5348 = fcmp fast une float %4771, 0.000000e+00
  %5349 = fsub fast float -0.000000e+00, %218
  %5350 = fsub fast float -0.000000e+00, %219
  %5351 = fsub fast float -0.000000e+00, %220
  br i1 %5348, label %5352, label %5513

; <label>:5352                                    ; preds = %5336
  %5353 = call float @dx.op.dot3.f32(i32 55, float %5349, float %5350, float %5351, float %126, float %127, float %128)  ; Dot3(ax,ay,az,bx,by,bz)
  %5354 = fmul fast float %4771, 2.500000e+00
  %5355 = call float @dx.op.unary.f32(i32 7, float %5354)  ; Saturate(value)
  %5356 = fmul fast float %4771, 0x4013FFFFE0000000
  %5357 = fadd fast float %5356, 0xBFFFFFFFE0000000
  %5358 = call float @dx.op.unary.f32(i32 7, float %5357)  ; Saturate(value)
  %5359 = fmul fast float %4771, 0x4004000020000000
  %5360 = fadd fast float %5359, 0xBFF8000040000000
  %5361 = call float @dx.op.unary.f32(i32 7, float %5360)  ; Saturate(value)
  %5362 = fmul fast float %4277, 1.000000e+01
  %5363 = call float @dx.op.unary.f32(i32 7, float %5362)  ; Saturate(value)
  %5364 = fmul fast float %5363, 2.000000e+00
  %5365 = fsub fast float 3.000000e+00, %5364
  %5366 = fmul fast float %5363, %5363
  %5367 = fmul fast float %5366, %5365
  %5368 = fsub fast float 1.000000e+00, %5367
  %5369 = fsub fast float 0x3FE3333340000000, %5346
  %5370 = fmul fast float %5369, 0x400AAAAAA0000000
  %5371 = call float @dx.op.unary.f32(i32 7, float %5370)  ; Saturate(value)
  %5372 = fmul fast float %5368, %5371
  %5373 = fmul fast float %5337, 0x3FEA2B8620000000
  %5374 = fmul fast float %5338, 0x3FEA2B8620000000
  %5375 = fmul fast float %5339, 0x3FEA2B8620000000
  %5376 = fadd fast float %5373, 0x3FC81DFBA0000000
  %5377 = fmul fast float %5376, %5337
  %5378 = fadd fast float %5377, 0x3F910E6020000000
  %5379 = fadd fast float %5374, 0x3FC81DFBA0000000
  %5380 = fmul fast float %5379, %5338
  %5381 = fadd fast float %5380, 0x3F910E6020000000
  %5382 = fadd fast float %5375, 0x3FC81DFBA0000000
  %5383 = fmul fast float %5382, %5339
  %5384 = fadd fast float %5383, 0x3F910E6020000000
  %5385 = call float @dx.op.unary.f32(i32 7, float %5378)  ; Saturate(value)
  %5386 = call float @dx.op.unary.f32(i32 7, float %5381)  ; Saturate(value)
  %5387 = call float @dx.op.unary.f32(i32 7, float %5384)  ; Saturate(value)
  %5388 = fsub fast float %5385, %5337
  %5389 = fsub fast float %5386, %5338
  %5390 = fsub fast float %5387, %5339
  %5391 = fmul fast float %5388, %5355
  %5392 = fmul fast float %5391, %5372
  %5393 = fmul fast float %5389, %5355
  %5394 = fmul fast float %5393, %5372
  %5395 = fmul fast float %5390, %5355
  %5396 = fmul fast float %5395, %5372
  %5397 = fadd fast float %5392, %5337
  %5398 = fadd fast float %5394, %5338
  %5399 = fadd fast float %5396, %5339
  %5400 = fmul fast float %5347, %5347
  %5401 = fmul fast float %5400, %5400
  %5402 = fadd fast float %5358, 1.000000e+00
  %5403 = fsub fast float %5402, %5372
  %5404 = call float @dx.op.unary.f32(i32 7, float %5403)  ; Saturate(value)
  %5405 = call float @dx.op.dot3.f32(i32 55, float %126, float %127, float %128, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5406 = call float @dx.op.unary.f32(i32 7, float %5405)  ; Saturate(value)
  %5407 = fsub fast float 1.000000e+00, %5401
  %5408 = call float @dx.op.binary.f32(i32 36, float %5404, float %5407)  ; FMin(a,b)
  %5409 = call float @dx.op.unary.f32(i32 7, float %5361)  ; Saturate(value)
  %5410 = call float @dx.op.binary.f32(i32 35, float %5408, float %5409)  ; FMax(a,b)
  %5411 = fadd fast float %5406, 0xBFE4CCCCC0000000
  %5412 = fmul fast float %5411, 0x4006DB6DA0000000
  %5413 = call float @dx.op.unary.f32(i32 7, float %5412)  ; Saturate(value)
  %5414 = fmul fast float %5413, 2.000000e+00
  %5415 = fsub fast float 3.000000e+00, %5414
  %5416 = bitcast float %5343 to i32
  %5417 = ashr i32 %5416, 1
  %5418 = add nsw i32 %5417, 532487669
  %5419 = bitcast i32 %5418 to float
  %5420 = fsub fast float 1.000000e+00, %5419
  %5421 = bitcast float %5420 to i32
  %5422 = sub nsw i32 2129859010, %5421
  %5423 = bitcast i32 %5422 to float
  %5424 = fmul fast float %5423, 2.000000e+00
  %5425 = bitcast float %5344 to i32
  %5426 = ashr i32 %5425, 1
  %5427 = add nsw i32 %5426, 532487669
  %5428 = bitcast i32 %5427 to float
  %5429 = fsub fast float 1.000000e+00, %5428
  %5430 = bitcast float %5429 to i32
  %5431 = sub nsw i32 2129859010, %5430
  %5432 = bitcast i32 %5431 to float
  %5433 = fmul fast float %5432, 2.000000e+00
  %5434 = bitcast float %5345 to i32
  %5435 = ashr i32 %5434, 1
  %5436 = add nsw i32 %5435, 532487669
  %5437 = bitcast i32 %5436 to float
  %5438 = fsub fast float 1.000000e+00, %5437
  %5439 = bitcast float %5438 to i32
  %5440 = sub nsw i32 2129859010, %5439
  %5441 = bitcast i32 %5440 to float
  %5442 = fmul fast float %5441, 2.000000e+00
  %5443 = fsub fast float 0x4002A9FBE0000000, %5424
  %5444 = fadd fast float %5424, 0x3FD54FDF00000000
  %5445 = bitcast float %5444 to i32
  %5446 = sub nsw i32 2129859010, %5445
  %5447 = bitcast i32 %5446 to float
  %5448 = fmul fast float %5447, %5443
  %5449 = fmul fast float %5448, %5448
  %5450 = fsub fast float 0x4002A9FBE0000000, %5433
  %5451 = fadd fast float %5433, 0x3FD54FDF00000000
  %5452 = bitcast float %5451 to i32
  %5453 = sub nsw i32 2129859010, %5452
  %5454 = bitcast i32 %5453 to float
  %5455 = fmul fast float %5454, %5450
  %5456 = fmul fast float %5455, %5455
  %5457 = fsub fast float 0x4002A9FBE0000000, %5442
  %5458 = fadd fast float %5442, 0x3FD54FDF00000000
  %5459 = bitcast float %5458 to i32
  %5460 = sub nsw i32 2129859010, %5459
  %5461 = bitcast i32 %5460 to float
  %5462 = fmul fast float %5461, %5457
  %5463 = fmul fast float %5462, %5462
  %5464 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5449)  ; FMax(a,b)
  %5465 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5456)  ; FMax(a,b)
  %5466 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5463)  ; FMax(a,b)
  %5467 = fsub fast float 1.000000e+00, %5353
  %5468 = fadd fast float %5467, %5368
  %5469 = call float @dx.op.unary.f32(i32 7, float %5468)  ; Saturate(value)
  %5470 = fsub fast float 1.000000e+00, %4752
  %5471 = fmul fast float %5410, %5470
  %5472 = fmul fast float %5413, %5413
  %5473 = fmul fast float %5472, %5471
  %5474 = fmul fast float %5473, %5415
  %5475 = fmul fast float %5470, 0xBFE99999A0000000
  %5476 = fmul fast float %5475, %5355
  %5477 = fmul fast float %5476, %5372
  %5478 = fadd fast float %5477, 1.000000e+00
  %5479 = fadd fast float %5346, -1.000000e+00
  %5480 = fmul fast float %5478, %5479
  %5481 = fadd fast float %5480, 1.000000e+00
  %5482 = fsub fast float %5464, %5343
  %5483 = fsub fast float %5465, %5344
  %5484 = fsub fast float %5466, %5345
  %5485 = fmul fast float %5474, %5482
  %5486 = fmul fast float %5474, %5483
  %5487 = fmul fast float %5474, %5484
  %5488 = fadd fast float %5485, %5343
  %5489 = fadd fast float %5486, %5344
  %5490 = fadd fast float %5487, %5345
  %5491 = fsub fast float %126, %5340
  %5492 = fsub fast float %127, %5341
  %5493 = fsub fast float %128, %5342
  %5494 = fmul fast float %5474, %5491
  %5495 = fmul fast float %5474, %5492
  %5496 = fmul fast float %5474, %5493
  %5497 = fadd fast float %5494, %5340
  %5498 = fadd fast float %5495, %5341
  %5499 = fadd fast float %5496, %5342
  %5500 = fmul fast float %5474, %5469
  %5501 = call float @dx.op.unary.f32(i32 7, float %5481)  ; Saturate(value)
  %5502 = fsub fast float 1.000000e+00, %5501
  %5503 = fmul fast float %5500, %5502
  %5504 = fadd fast float %5503, %5501
  %5505 = fsub fast float 1.000000e+00, %5347
  %5506 = fmul fast float %5474, %5505
  %5507 = fadd fast float %5506, %5347
  %5508 = call float @dx.op.dot3.f32(i32 55, float %5497, float %5498, float %5499, float %5497, float %5498, float %5499)  ; Dot3(ax,ay,az,bx,by,bz)
  %5509 = call float @dx.op.unary.f32(i32 25, float %5508)  ; Rsqrt(value)
  %5510 = fmul fast float %5497, %5509
  %5511 = fmul fast float %5498, %5509
  %5512 = fmul fast float %5499, %5509
  br label %5513

; <label>:5513                                    ; preds = %5352, %5336
  %5514 = phi float [ %5397, %5352 ], [ %5337, %5336 ]
  %5515 = phi float [ %5398, %5352 ], [ %5338, %5336 ]
  %5516 = phi float [ %5399, %5352 ], [ %5339, %5336 ]
  %5517 = phi float [ %5510, %5352 ], [ %5340, %5336 ]
  %5518 = phi float [ %5511, %5352 ], [ %5341, %5336 ]
  %5519 = phi float [ %5512, %5352 ], [ %5342, %5336 ]
  %5520 = phi float [ %5488, %5352 ], [ %5343, %5336 ]
  %5521 = phi float [ %5489, %5352 ], [ %5344, %5336 ]
  %5522 = phi float [ %5490, %5352 ], [ %5345, %5336 ]
  %5523 = phi float [ %5504, %5352 ], [ %5346, %5336 ]
  %5524 = phi float [ %5507, %5352 ], [ %5347, %5336 ]
  %5525 = fsub fast float -0.000000e+00, %200
  %5526 = select i1 %289, float 0.000000e+00, float %5522
  %5527 = call float @dx.op.dot3.f32(i32 55, float %5517, float %5518, float %5519, float %5349, float %5350, float %5351)  ; Dot3(ax,ay,az,bx,by,bz)
  %5528 = call float @dx.op.unary.f32(i32 7, float %5527)  ; Saturate(value)
  %5529 = call float @dx.op.dot3.f32(i32 55, float %218, float %219, float %220, float %5517, float %5518, float %5519)  ; Dot3(ax,ay,az,bx,by,bz)
  %5530 = fmul fast float %5529, 2.000000e+00
  %5531 = fmul fast float %5530, %5517
  %5532 = fmul fast float %5530, %5518
  %5533 = fmul fast float %5530, %5519
  %5534 = fsub fast float %218, %5531
  %5535 = fsub fast float %219, %5532
  %5536 = fsub fast float %220, %5533
  %5537 = call float @dx.op.binary.f32(i32 36, float %5524, float 1.000000e+00)  ; FMin(a,b)
  %5538 = fsub fast float 1.000000e+00, %5537
  %5539 = bitcast float %5538 to i32
  %5540 = ashr i32 %5539, 1
  %5541 = add nsw i32 %5540, 532487669
  %5542 = bitcast i32 %5541 to float
  %5543 = fsub fast float 1.000000e+00, %5523
  %5544 = call float @dx.op.binary.f32(i32 35, float %5543, float 0x3F847AE140000000)  ; FMax(a,b)
  %5545 = fmul fast float %5544, %5544
  %5546 = fmul fast float %5545, %5545
  %5547 = call float @dx.op.unary.f32(i32 7, float %5528)  ; Saturate(value)
  %5548 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5542, float %5546, float %5547, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5549 = extractvalue %dx.types.ResRet.f32 %5548, 0
  %5550 = fsub fast float 1.000000e+00, %5524
  %5551 = bitcast float %5550 to i32
  %5552 = sub nsw i32 2129859010, %5551
  %5553 = bitcast i32 %5552 to float
  %5554 = call float @dx.op.dot3.f32(i32 55, float %86, float %82, float %78, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5555 = fmul fast float %5554, 0x3FD20DD760000000
  %5556 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %86)  ; FMax(a,b)
  %5557 = call float @dx.op.dot3.f32(i32 55, float %87, float %88, float %89, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %5558 = fcmp fast oeq float %5557, 0.000000e+00
  %5559 = fcmp fast oeq float %5556, 0.000000e+00
  %5560 = or i1 %5559, %5558
  br i1 %5560, label %5590, label %5561

; <label>:5561                                    ; preds = %5513
  %5562 = fsub fast float -0.000000e+00, %89
  %5563 = fsub fast float -0.000000e+00, %87
  %5564 = call float @dx.op.unary.f32(i32 24, float %5557)  ; Sqrt(value)
  %5565 = fdiv fast float %5564, %5556
  %5566 = fcmp fast ogt float %5565, 0x3FFB6F8900000000
  %5567 = select i1 %5566, float 0x3FFB6F8900000000, float %5565
  %5568 = fmul fast float %5567, 0x3FE8A23460000000
  %5569 = call float @dx.op.unary.f32(i32 7, float %5568)  ; Saturate(value)
  %5570 = call float @dx.op.binary.f32(i32 35, float %5567, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5571 = fmul fast float %5569, %5556
  %5572 = fmul fast float %5570, 0x3FF279A740000000
  %5573 = fadd fast float %5572, -1.000000e+00
  %5574 = call float @dx.op.dot3.f32(i32 55, float %5562, float %5563, float %88, float %5562, float %5563, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %5575 = call float @dx.op.unary.f32(i32 25, float %5574)  ; Rsqrt(value)
  %5576 = fmul fast float %5575, %5562
  %5577 = fmul fast float %5575, %5563
  %5578 = fmul fast float %5575, %88
  %5579 = fmul fast float %5573, %5573
  %5580 = fsub fast float 1.000000e+00, %5579
  %5581 = fmul fast float %5570, 0x40005F8BE0000000
  %5582 = fsub fast float 0x400C5BF8A0000000, %5581
  %5583 = fdiv fast float %5571, %5582
  %5584 = fmul fast float %5583, 0x3FEE31C3C0000000
  %5585 = fmul fast float %5584, %5580
  %5586 = fmul fast float %5570, 0x3FDACB7480000000
  %5587 = fadd fast float %5586, 0xBFD7347680000000
  %5588 = fmul fast float %5587, %5583
  %5589 = fmul fast float %5588, %5580
  br label %5590

; <label>:5590                                    ; preds = %5561, %5513
  %5591 = phi float [ %5576, %5561 ], [ 0.000000e+00, %5513 ]
  %5592 = phi float [ %5577, %5561 ], [ 0.000000e+00, %5513 ]
  %5593 = phi float [ %5578, %5561 ], [ 0.000000e+00, %5513 ]
  %5594 = phi float [ %5585, %5561 ], [ 0.000000e+00, %5513 ]
  %5595 = phi float [ %5589, %5561 ], [ 0.000000e+00, %5513 ]
  %5596 = call float @dx.op.dot3.f32(i32 55, float %5591, float %5592, float %5593, float %5517, float %5518, float %5519)  ; Dot3(ax,ay,az,bx,by,bz)
  %5597 = fmul fast float %5596, 0x3FDF454380000000
  %5598 = fmul fast float %5596, %5596
  %5599 = fmul fast float %5598, 0x3FEE471020000000
  %5600 = fadd fast float %5599, 0xBFD42F6020000000
  %5601 = fmul fast float %5556, 0x3FD20DD760000000
  %5602 = fmul fast float %5600, %5595
  %5603 = fadd fast float %5602, %5601
  %5604 = fmul fast float %5597, %5594
  %5605 = fadd fast float %5603, %5604
  %5606 = fsub fast float %5603, %5604
  %5607 = call float @dx.op.dot3.f32(i32 55, float %5591, float %5592, float %5593, float %5534, float %5535, float %5536)  ; Dot3(ax,ay,az,bx,by,bz)
  %5608 = fmul fast float %5607, 0x3FDF454380000000
  %5609 = fmul fast float %5607, %5607
  %5610 = fmul fast float %5609, 0x3FEE471020000000
  %5611 = fadd fast float %5610, 0xBFD42F6020000000
  %5612 = call float @dx.op.dot3.f32(i32 55, float %5556, float %5594, float %5595, float 0x3FD20DD760000000, float %5608, float %5611)  ; Dot3(ax,ay,az,bx,by,bz)
  %5613 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %82)  ; FMax(a,b)
  %5614 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %5615 = fcmp fast oeq float %5614, 0.000000e+00
  %5616 = fcmp fast oeq float %5613, 0.000000e+00
  %5617 = or i1 %5616, %5615
  br i1 %5617, label %5647, label %5618

; <label>:5618                                    ; preds = %5590
  %5619 = fsub fast float -0.000000e+00, %85
  %5620 = fsub fast float -0.000000e+00, %83
  %5621 = call float @dx.op.unary.f32(i32 24, float %5614)  ; Sqrt(value)
  %5622 = fdiv fast float %5621, %5613
  %5623 = fcmp fast ogt float %5622, 0x3FFB6F8900000000
  %5624 = select i1 %5623, float 0x3FFB6F8900000000, float %5622
  %5625 = fmul fast float %5624, 0x3FE8A23460000000
  %5626 = call float @dx.op.unary.f32(i32 7, float %5625)  ; Saturate(value)
  %5627 = call float @dx.op.binary.f32(i32 35, float %5624, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5628 = fmul fast float %5626, %5613
  %5629 = fmul fast float %5627, 0x3FF279A740000000
  %5630 = fadd fast float %5629, -1.000000e+00
  %5631 = call float @dx.op.dot3.f32(i32 55, float %5619, float %5620, float %84, float %5619, float %5620, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %5632 = call float @dx.op.unary.f32(i32 25, float %5631)  ; Rsqrt(value)
  %5633 = fmul fast float %5632, %5619
  %5634 = fmul fast float %5632, %5620
  %5635 = fmul fast float %5632, %84
  %5636 = fmul fast float %5630, %5630
  %5637 = fsub fast float 1.000000e+00, %5636
  %5638 = fmul fast float %5627, 0x40005F8BE0000000
  %5639 = fsub fast float 0x400C5BF8A0000000, %5638
  %5640 = fdiv fast float %5628, %5639
  %5641 = fmul fast float %5640, 0x3FEE31C3C0000000
  %5642 = fmul fast float %5641, %5637
  %5643 = fmul fast float %5627, 0x3FDACB7480000000
  %5644 = fadd fast float %5643, 0xBFD7347680000000
  %5645 = fmul fast float %5644, %5640
  %5646 = fmul fast float %5645, %5637
  br label %5647

; <label>:5647                                    ; preds = %5618, %5590
  %5648 = phi float [ %5633, %5618 ], [ 0.000000e+00, %5590 ]
  %5649 = phi float [ %5634, %5618 ], [ 0.000000e+00, %5590 ]
  %5650 = phi float [ %5635, %5618 ], [ 0.000000e+00, %5590 ]
  %5651 = phi float [ %5642, %5618 ], [ 0.000000e+00, %5590 ]
  %5652 = phi float [ %5646, %5618 ], [ 0.000000e+00, %5590 ]
  %5653 = call float @dx.op.dot3.f32(i32 55, float %5648, float %5649, float %5650, float %5517, float %5518, float %5519)  ; Dot3(ax,ay,az,bx,by,bz)
  %5654 = fmul fast float %5653, 0x3FDF454380000000
  %5655 = fmul fast float %5653, %5653
  %5656 = fmul fast float %5655, 0x3FEE471020000000
  %5657 = fadd fast float %5656, 0xBFD42F6020000000
  %5658 = fmul fast float %5613, 0x3FD20DD760000000
  %5659 = fmul fast float %5657, %5652
  %5660 = fadd fast float %5659, %5658
  %5661 = fmul fast float %5654, %5651
  %5662 = fadd fast float %5660, %5661
  %5663 = fsub fast float %5660, %5661
  %5664 = call float @dx.op.dot3.f32(i32 55, float %5648, float %5649, float %5650, float %5534, float %5535, float %5536)  ; Dot3(ax,ay,az,bx,by,bz)
  %5665 = fmul fast float %5664, 0x3FDF454380000000
  %5666 = fmul fast float %5664, %5664
  %5667 = fmul fast float %5666, 0x3FEE471020000000
  %5668 = fadd fast float %5667, 0xBFD42F6020000000
  %5669 = call float @dx.op.dot3.f32(i32 55, float %5613, float %5651, float %5652, float 0x3FD20DD760000000, float %5665, float %5668)  ; Dot3(ax,ay,az,bx,by,bz)
  %5670 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %78)  ; FMax(a,b)
  %5671 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %5672 = fcmp fast oeq float %5671, 0.000000e+00
  %5673 = fcmp fast oeq float %5670, 0.000000e+00
  %5674 = or i1 %5673, %5672
  br i1 %5674, label %5704, label %5675

; <label>:5675                                    ; preds = %5647
  %5676 = fsub fast float -0.000000e+00, %81
  %5677 = fsub fast float -0.000000e+00, %79
  %5678 = call float @dx.op.unary.f32(i32 24, float %5671)  ; Sqrt(value)
  %5679 = fdiv fast float %5678, %5670
  %5680 = fcmp fast ogt float %5679, 0x3FFB6F8900000000
  %5681 = select i1 %5680, float 0x3FFB6F8900000000, float %5679
  %5682 = fmul fast float %5681, 0x3FE8A23460000000
  %5683 = call float @dx.op.unary.f32(i32 7, float %5682)  ; Saturate(value)
  %5684 = call float @dx.op.binary.f32(i32 35, float %5681, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5685 = fmul fast float %5683, %5670
  %5686 = fmul fast float %5684, 0x3FF279A740000000
  %5687 = fadd fast float %5686, -1.000000e+00
  %5688 = call float @dx.op.dot3.f32(i32 55, float %5676, float %5677, float %80, float %5676, float %5677, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %5689 = call float @dx.op.unary.f32(i32 25, float %5688)  ; Rsqrt(value)
  %5690 = fmul fast float %5689, %5676
  %5691 = fmul fast float %5689, %5677
  %5692 = fmul fast float %5689, %80
  %5693 = fmul fast float %5687, %5687
  %5694 = fsub fast float 1.000000e+00, %5693
  %5695 = fmul fast float %5684, 0x40005F8BE0000000
  %5696 = fsub fast float 0x400C5BF8A0000000, %5695
  %5697 = fdiv fast float %5685, %5696
  %5698 = fmul fast float %5697, 0x3FEE31C3C0000000
  %5699 = fmul fast float %5698, %5694
  %5700 = fmul fast float %5684, 0x3FDACB7480000000
  %5701 = fadd fast float %5700, 0xBFD7347680000000
  %5702 = fmul fast float %5701, %5697
  %5703 = fmul fast float %5702, %5694
  br label %5704

; <label>:5704                                    ; preds = %5675, %5647
  %5705 = phi float [ %5690, %5675 ], [ 0.000000e+00, %5647 ]
  %5706 = phi float [ %5691, %5675 ], [ 0.000000e+00, %5647 ]
  %5707 = phi float [ %5692, %5675 ], [ 0.000000e+00, %5647 ]
  %5708 = phi float [ %5699, %5675 ], [ 0.000000e+00, %5647 ]
  %5709 = phi float [ %5703, %5675 ], [ 0.000000e+00, %5647 ]
  %5710 = call float @dx.op.dot3.f32(i32 55, float %5705, float %5706, float %5707, float %5517, float %5518, float %5519)  ; Dot3(ax,ay,az,bx,by,bz)
  %5711 = fmul fast float %5710, 0x3FDF454380000000
  %5712 = fmul fast float %5710, %5710
  %5713 = fmul fast float %5712, 0x3FEE471020000000
  %5714 = fadd fast float %5713, 0xBFD42F6020000000
  %5715 = fmul fast float %5670, 0x3FD20DD760000000
  %5716 = fmul fast float %5714, %5709
  %5717 = fadd fast float %5716, %5715
  %5718 = fmul fast float %5711, %5708
  %5719 = fadd fast float %5717, %5718
  %5720 = fsub fast float %5717, %5718
  %5721 = call float @dx.op.dot3.f32(i32 55, float %5705, float %5706, float %5707, float %5534, float %5535, float %5536)  ; Dot3(ax,ay,az,bx,by,bz)
  %5722 = fmul fast float %5721, 0x3FDF454380000000
  %5723 = fmul fast float %5721, %5721
  %5724 = fmul fast float %5723, 0x3FEE471020000000
  %5725 = fadd fast float %5724, 0xBFD42F6020000000
  %5726 = call float @dx.op.dot3.f32(i32 55, float %5670, float %5708, float %5709, float 0x3FD20DD760000000, float %5722, float %5725)  ; Dot3(ax,ay,az,bx,by,bz)
  %5727 = call float @dx.op.binary.f32(i32 35, float %5605, float 0.000000e+00)  ; FMax(a,b)
  %5728 = call float @dx.op.binary.f32(i32 35, float %5662, float 0.000000e+00)  ; FMax(a,b)
  %5729 = call float @dx.op.binary.f32(i32 35, float %5719, float 0.000000e+00)  ; FMax(a,b)
  %5730 = call float @dx.op.binary.f32(i32 35, float %5606, float 0.000000e+00)  ; FMax(a,b)
  %5731 = call float @dx.op.binary.f32(i32 35, float %5663, float 0.000000e+00)  ; FMax(a,b)
  %5732 = call float @dx.op.binary.f32(i32 35, float %5720, float 0.000000e+00)  ; FMax(a,b)
  %5733 = call float @dx.op.binary.f32(i32 35, float %5612, float 0.000000e+00)  ; FMax(a,b)
  %5734 = call float @dx.op.binary.f32(i32 35, float %5669, float 0.000000e+00)  ; FMax(a,b)
  %5735 = call float @dx.op.binary.f32(i32 35, float %5726, float 0.000000e+00)  ; FMax(a,b)
  %5736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5737 = extractvalue %dx.types.CBufRet.f32 %5736, 0
  %5738 = call float @dx.op.binary.f32(i32 36, float %5514, float %5737)  ; FMin(a,b)
  %5739 = fmul fast float %5738, %5538
  %5740 = fsub fast float 1.000000e+00, %5739
  %5741 = bitcast float %5740 to i32
  %5742 = sub nsw i32 2129859010, %5741
  %5743 = bitcast i32 %5742 to float
  %5744 = call float @dx.op.binary.f32(i32 36, float %5515, float %5737)  ; FMin(a,b)
  %5745 = fmul fast float %5744, %5538
  %5746 = fsub fast float 1.000000e+00, %5745
  %5747 = bitcast float %5746 to i32
  %5748 = sub nsw i32 2129859010, %5747
  %5749 = bitcast i32 %5748 to float
  %5750 = call float @dx.op.binary.f32(i32 36, float %5516, float %5737)  ; FMin(a,b)
  %5751 = fmul fast float %5750, %5538
  %5752 = fsub fast float 1.000000e+00, %5751
  %5753 = bitcast float %5752 to i32
  %5754 = sub nsw i32 2129859010, %5753
  %5755 = bitcast i32 %5754 to float
  %5756 = fmul fast float %5727, %5537
  %5757 = fmul fast float %5756, %5743
  %5758 = fmul fast float %5728, %5537
  %5759 = fmul fast float %5758, %5749
  %5760 = fmul fast float %5729, %5537
  %5761 = fmul fast float %5760, %5755
  %5762 = call float @dx.op.binary.f32(i32 36, float %5520, float %5737)  ; FMin(a,b)
  %5763 = fmul fast float %5762, %5538
  %5764 = fsub fast float 1.000000e+00, %5763
  %5765 = bitcast float %5764 to i32
  %5766 = sub nsw i32 2129859010, %5765
  %5767 = bitcast i32 %5766 to float
  %5768 = call float @dx.op.binary.f32(i32 36, float %5521, float %5737)  ; FMin(a,b)
  %5769 = fmul fast float %5768, %5538
  %5770 = fsub fast float 1.000000e+00, %5769
  %5771 = bitcast float %5770 to i32
  %5772 = sub nsw i32 2129859010, %5771
  %5773 = bitcast i32 %5772 to float
  %5774 = call float @dx.op.binary.f32(i32 36, float %5526, float %5737)  ; FMin(a,b)
  %5775 = fmul fast float %5774, %5538
  %5776 = fsub fast float 1.000000e+00, %5775
  %5777 = bitcast float %5776 to i32
  %5778 = sub nsw i32 2129859010, %5777
  %5779 = bitcast i32 %5778 to float
  %5780 = fmul fast float %5733, %5537
  %5781 = fmul fast float %5780, %5767
  %5782 = fmul fast float %5734, %5537
  %5783 = fmul fast float %5782, %5773
  %5784 = fmul fast float %5735, %5537
  %5785 = fmul fast float %5784, %5779
  %5786 = call float @dx.op.dot3.f32(i32 55, float %5757, float %5759, float %5761, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5787 = select i1 %289, float 0.000000e+00, float %5757
  %5788 = select i1 %289, float %5786, float %5759
  %5789 = select i1 %289, float 0.000000e+00, float %5761
  %5790 = call float @dx.op.dot3.f32(i32 55, float %5730, float %5731, float %5732, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5791 = select i1 %289, float 0.000000e+00, float %5730
  %5792 = select i1 %289, float %5790, float %5731
  %5793 = select i1 %289, float 0.000000e+00, float %5732
  %5794 = call float @dx.op.dot3.f32(i32 55, float %5781, float %5783, float %5785, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5795 = select i1 %289, float 0.000000e+00, float %5781
  %5796 = select i1 %289, float %5794, float %5783
  %5797 = select i1 %289, float 0.000000e+00, float %5785
  %5798 = fmul fast float %5528, 9.843750e-01
  %5799 = fmul fast float %5523, 9.843750e-01
  %5800 = fadd fast float %5798, 7.812500e-03
  %5801 = fadd fast float %5799, 7.812500e-03
  %5802 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %5800, float %5801, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5803 = extractvalue %dx.types.ResRet.f32 %5802, 2
  %5804 = extractvalue %dx.types.ResRet.f32 %5802, 3
  %5805 = fmul fast float %5803, %5520
  %5806 = fmul fast float %5803, %5521
  %5807 = fmul fast float %5803, %5526
  %5808 = fadd fast float %5805, %5804
  %5809 = fadd fast float %5806, %5804
  %5810 = fadd fast float %5807, %5804
  %5811 = fcmp fast ogt float %4250, 0.000000e+00
  br i1 %5811, label %5812, label %5838

; <label>:5812                                    ; preds = %5704
  %5813 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %4250, float %5528, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5814 = extractvalue %dx.types.ResRet.f32 %5813, 0
  %5815 = extractvalue %dx.types.ResRet.f32 %5813, 1
  %5816 = extractvalue %dx.types.ResRet.f32 %5813, 2
  %5817 = fadd fast float %5814, -5.000000e-01
  %5818 = fadd fast float %5815, -5.000000e-01
  %5819 = fadd fast float %5816, -5.000000e-01
  %5820 = fsub fast float 1.000000e+00, %5520
  %5821 = fsub fast float 1.000000e+00, %5521
  %5822 = fsub fast float 1.000000e+00, %5526
  %5823 = fmul fast float %5520, 4.000000e+00
  %5824 = fmul fast float %5823, %5820
  %5825 = fmul fast float %5824, %5817
  %5826 = fmul fast float %5521, 4.000000e+00
  %5827 = fmul fast float %5826, %5821
  %5828 = fmul fast float %5827, %5818
  %5829 = fmul fast float %5526, 4.000000e+00
  %5830 = fmul fast float %5829, %5822
  %5831 = fmul fast float %5830, %5819
  %5832 = fadd fast float %5825, %5808
  %5833 = fadd fast float %5828, %5809
  %5834 = fadd fast float %5831, %5810
  %5835 = call float @dx.op.unary.f32(i32 7, float %5832)  ; Saturate(value)
  %5836 = call float @dx.op.unary.f32(i32 7, float %5833)  ; Saturate(value)
  %5837 = call float @dx.op.unary.f32(i32 7, float %5834)  ; Saturate(value)
  br label %5838

; <label>:5838                                    ; preds = %5812, %5704
  %5839 = phi float [ %5835, %5812 ], [ %5808, %5704 ]
  %5840 = phi float [ %5836, %5812 ], [ %5809, %5704 ]
  %5841 = phi float [ %5837, %5812 ], [ %5810, %5704 ]
  %5842 = call float @dx.op.binary.f32(i32 35, float %5840, float %5841)  ; FMax(a,b)
  %5843 = call float @dx.op.binary.f32(i32 35, float %5839, float %5842)  ; FMax(a,b)
  %5844 = fsub fast float 1.000000e+00, %5843
  %5845 = fmul fast float %5843, %5523
  %5846 = fadd fast float %5845, %5523
  %5847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5848 = extractvalue %dx.types.CBufRet.f32 %5847, 2
  %5849 = extractvalue %dx.types.CBufRet.f32 %5847, 3
  %5850 = fmul fast float %5846, %5848
  %5851 = fadd fast float %5850, %5849
  %5852 = call float @dx.op.unary.f32(i32 7, float %5851)  ; Saturate(value)
  %5853 = fsub fast float 1.000000e+00, %5549
  %5854 = fadd fast float %5853, %5852
  %5855 = call float @dx.op.unary.f32(i32 7, float %5854)  ; Saturate(value)
  %5856 = fcmp fast olt float %5855, 1.000000e+00
  br i1 %5856, label %5857, label %6333

; <label>:5857                                    ; preds = %5838
  %5858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5859 = extractvalue %dx.types.CBufRet.f32 %5858, 2
  %5860 = extractvalue %dx.types.CBufRet.f32 %5858, 3
  %5861 = fmul fast float %5859, %119
  %5862 = fmul fast float %5860, %120
  %5863 = fptoui float %5861 to i32
  %5864 = fptoui float %5862 to i32
  %5865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5866 = extractvalue %dx.types.CBufRet.f32 %5865, 0
  %5867 = extractvalue %dx.types.CBufRet.f32 %5865, 2
  %5868 = extractvalue %dx.types.CBufRet.f32 %5865, 3
  %5869 = fadd fast float %106, -4.000000e+00
  %5870 = call float @dx.op.binary.f32(i32 35, float %5869, float 0.000000e+00)  ; FMax(a,b)
  %5871 = fadd fast float %5870, %5866
  %5872 = fmul fast float %5871, %5867
  %5873 = call float @dx.op.unary.f32(i32 23, float %5872)  ; Log(value)
  %5874 = fmul fast float %5873, %5868
  %5875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5876 = extractvalue %dx.types.CBufRet.f32 %5875, 2
  %5877 = fmul fast float %5874, %5876
  %5878 = call float @dx.op.unary.f32(i32 7, float %5877)  ; Saturate(value)
  %5879 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5880 = extractvalue %dx.types.CBufRet.i32 %5879, 1
  %5881 = add i32 %5880, -1
  %5882 = uitofp i32 %5880 to float
  %5883 = fmul fast float %5882, %5878
  %5884 = fptoui float %5883 to i32
  %5885 = call i32 @dx.op.binary.i32(i32 40, i32 %5884, i32 %5881)  ; UMin(a,b)
  %5886 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5887 = extractvalue %dx.types.CBufRet.i32 %5886, 2
  %5888 = extractvalue %dx.types.CBufRet.i32 %5886, 3
  %5889 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5864, i32 %5887, i32 %5863)  ; UMad(a,b,c)
  %5890 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5885, i32 %5888, i32 %5889)  ; UMad(a,b,c)
  %5891 = call float @dx.op.binary.f32(i32 35, float %106, float 0.000000e+00)  ; FMax(a,b)
  %5892 = fptoui float %5891 to i32
  %5893 = lshr i32 %5892, 5
  %5894 = call i32 @dx.op.binary.i32(i32 40, i32 %5893, i32 8191)  ; UMin(a,b)
  %5895 = fsub fast float %4742, %200
  %5896 = call float @dx.op.unary.f32(i32 7, float %5895)  ; Saturate(value)
  %5897 = fcmp fast ogt float %5896, 0.000000e+00
  %5898 = fcmp fast ogt float %5536, 0.000000e+00
  %5899 = and i1 %5898, %5897
  br i1 %5899, label %5900, label %5929

; <label>:5900                                    ; preds = %5857
  %5901 = call float @dx.op.dot3.f32(i32 55, float %5534, float %5535, float %5536, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5902 = call float @dx.op.binary.f32(i32 35, float %5901, float -1.000000e+00)  ; FMax(a,b)
  %5903 = call float @dx.op.binary.f32(i32 36, float %5902, float 1.000000e+00)  ; FMin(a,b)
  %5904 = fmul fast float %5903, %5903
  %5905 = fsub fast float 1.000000e+00, %5904
  %5906 = fmul fast float %5905, 0x3FFC6E2300000000
  %5907 = fsub fast float 1.000000e+00, %5906
  %5908 = fcmp fast ogt float %5907, 0.000000e+00
  %5909 = call float @dx.op.unary.f32(i32 24, float %5907)  ; Sqrt(value)
  %5910 = fsub fast float 1.000000e+00, %5909
  %5911 = call float @dx.op.unary.f32(i32 23, float %5910)  ; Log(value)
  %5912 = fmul fast float %5911, 5.000000e+00
  %5913 = call float @dx.op.unary.f32(i32 21, float %5912)  ; Exp(value)
  %5914 = fmul fast float %5913, 0x3FEF591A60000000
  %5915 = fadd fast float %5914, 0x3F94DCB540000000
  %5916 = select i1 %5908, float %5915, float 1.000000e+00
  %5917 = fcmp fast oge float %5916, 1.000000e+00
  %5918 = fmul fast float %5901, 2.000000e+00
  %5919 = fadd fast float %5918, %5536
  %5920 = select i1 %5917, float %5919, float %5536
  %5921 = fsub fast float %5920, %5536
  %5922 = fmul fast float %5921, %5896
  %5923 = fadd fast float %5922, %5536
  %5924 = call float @dx.op.dot3.f32(i32 55, float %5534, float %5535, float %5923, float %5534, float %5535, float %5923)  ; Dot3(ax,ay,az,bx,by,bz)
  %5925 = call float @dx.op.unary.f32(i32 25, float %5924)  ; Rsqrt(value)
  %5926 = fmul fast float %5925, %5534
  %5927 = fmul fast float %5925, %5535
  %5928 = fmul fast float %5923, %5925
  br label %5929

; <label>:5929                                    ; preds = %5900, %5857
  %5930 = phi float [ %5926, %5900 ], [ %5534, %5857 ]
  %5931 = phi float [ %5927, %5900 ], [ %5535, %5857 ]
  %5932 = phi float [ %5928, %5900 ], [ %5536, %5857 ]
  %5933 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5934 = extractvalue %dx.types.CBufRet.i32 %5933, 2
  %5935 = add nsw i32 %5934, -1
  %5936 = call i32 @dx.op.binary.i32(i32 37, i32 %5935, i32 0)  ; IMax(a,b)
  %5937 = shl i32 %5894, 2
  %5938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %5937, i32 undef)  ; BufferLoad(srv,index,wot)
  %5939 = extractvalue %dx.types.ResRet.i32 %5938, 0
  %5940 = lshr i32 %5939, 16
  %5941 = and i32 %5939, 65535
  %5942 = lshr i32 %5939, 21
  %5943 = lshr i32 %5941, 5
  %5944 = call i32 @dx.op.binary.i32(i32 40, i32 %5943, i32 %5936)  ; UMin(a,b)
  %5945 = icmp ugt i32 %5942, %5944
  br i1 %5945, label %6309, label %5946

; <label>:5946                                    ; preds = %5929
  br label %5947

; <label>:5947                                    ; preds = %6301, %5946
  %5948 = phi float [ %6302, %6301 ], [ 0.000000e+00, %5946 ]
  %5949 = phi float [ %6303, %6301 ], [ 0.000000e+00, %5946 ]
  %5950 = phi float [ %6304, %6301 ], [ 0.000000e+00, %5946 ]
  %5951 = phi float [ %6305, %6301 ], [ 1.000000e+00, %5946 ]
  %5952 = phi i32 [ %6306, %6301 ], [ %5942, %5946 ]
  %5953 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5954 = extractvalue %dx.types.CBufRet.i32 %5953, 2
  %5955 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5890, i32 %5954, i32 %5952)  ; UMad(a,b,c)
  %5956 = shl i32 %5955, 2
  %5957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5956, i32 undef)  ; BufferLoad(srv,index,wot)
  %5958 = extractvalue %dx.types.ResRet.i32 %5957, 0
  %5959 = shl i32 %5952, 5
  %5960 = sub nsw i32 %5940, %5959
  %5961 = call i32 @dx.op.binary.i32(i32 37, i32 %5960, i32 0)  ; IMax(a,b)
  %5962 = call i32 @dx.op.binary.i32(i32 38, i32 %5961, i32 31)  ; IMin(a,b)
  %5963 = sub nsw i32 1, %5940
  %5964 = add nsw i32 %5963, %5941
  %5965 = call i32 @dx.op.binary.i32(i32 37, i32 %5964, i32 0)  ; IMax(a,b)
  %5966 = call i32 @dx.op.binary.i32(i32 38, i32 %5965, i32 32)  ; IMin(a,b)
  %5967 = and i32 %5966, 31
  %5968 = shl i32 -1, %5967
  %5969 = xor i32 %5968, -1
  %5970 = and i32 %5962, 31
  %5971 = shl i32 %5969, %5970
  %5972 = icmp eq i32 %5966, 32
  %5973 = select i1 %5972, i32 -1, i32 %5971
  %5974 = and i32 %5973, %5958
  %5975 = icmp eq i32 %5974, 0
  br i1 %5975, label %6301, label %5976

; <label>:5976                                    ; preds = %5947
  br label %5977

; <label>:5977                                    ; preds = %6084, %5976
  %5978 = phi float [ %6085, %6084 ], [ %5948, %5976 ]
  %5979 = phi float [ %6086, %6084 ], [ %5949, %5976 ]
  %5980 = phi float [ %6087, %6084 ], [ %5950, %5976 ]
  %5981 = phi float [ %6088, %6084 ], [ %5951, %5976 ]
  %5982 = phi i32 [ %5987, %6084 ], [ %5974, %5976 ]
  %5983 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5982)  ; FirstbitLo(value)
  %5984 = add i32 %5983, %5959
  %5985 = and i32 %5983, 31
  %5986 = shl i32 1, %5985
  %5987 = xor i32 %5986, %5982
  %5988 = mul i32 %5984, 72
  %5989 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5988, i32 undef)  ; BufferLoad(srv,index,wot)
  %5990 = extractvalue %dx.types.ResRet.f32 %5989, 0
  %5991 = extractvalue %dx.types.ResRet.f32 %5989, 1
  %5992 = extractvalue %dx.types.ResRet.f32 %5989, 2
  %5993 = add i32 %5988, 12
  %5994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %5993, i32 undef)  ; BufferLoad(srv,index,wot)
  %5995 = extractvalue %dx.types.ResRet.i32 %5994, 0
  %5996 = add i32 %5988, 16
  %5997 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5996, i32 undef)  ; BufferLoad(srv,index,wot)
  %5998 = extractvalue %dx.types.ResRet.f32 %5997, 0
  %5999 = extractvalue %dx.types.ResRet.f32 %5997, 1
  %6000 = extractvalue %dx.types.ResRet.f32 %5997, 2
  %6001 = add i32 %5988, 28
  %6002 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6001, i32 undef)  ; BufferLoad(srv,index,wot)
  %6003 = extractvalue %dx.types.ResRet.f32 %6002, 0
  %6004 = add i32 %5988, 32
  %6005 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6004, i32 undef)  ; BufferLoad(srv,index,wot)
  %6006 = extractvalue %dx.types.ResRet.f32 %6005, 0
  %6007 = extractvalue %dx.types.ResRet.f32 %6005, 1
  %6008 = extractvalue %dx.types.ResRet.f32 %6005, 2
  %6009 = extractvalue %dx.types.ResRet.f32 %6005, 3
  %6010 = add i32 %5988, 48
  %6011 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6010, i32 undef)  ; BufferLoad(srv,index,wot)
  %6012 = extractvalue %dx.types.ResRet.f32 %6011, 0
  %6013 = extractvalue %dx.types.ResRet.f32 %6011, 1
  %6014 = add i32 %5988, 56
  %6015 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6014, i32 undef)  ; BufferLoad(srv,index,wot)
  %6016 = extractvalue %dx.types.ResRet.f32 %6015, 0
  %6017 = extractvalue %dx.types.ResRet.f32 %6015, 1
  %6018 = add i32 %5988, 64
  %6019 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6018, i32 undef)  ; BufferLoad(srv,index,wot)
  %6020 = extractvalue %dx.types.ResRet.f32 %6019, 0
  %6021 = extractvalue %dx.types.ResRet.f32 %6019, 1
  %6022 = mul i32 %5984, 60
  %6023 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %6022, i32 undef)  ; BufferLoad(srv,index,wot)
  %6024 = extractvalue %dx.types.ResRet.f32 %6023, 0
  %6025 = extractvalue %dx.types.ResRet.f32 %6023, 1
  %6026 = extractvalue %dx.types.ResRet.f32 %6023, 2
  %6027 = add i32 %6022, 12
  %6028 = add i32 %6022, 48
  %6029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %6028, i32 undef)  ; BufferLoad(srv,index,wot)
  %6030 = extractvalue %dx.types.ResRet.f32 %6029, 0
  %6031 = extractvalue %dx.types.ResRet.f32 %6029, 1
  %6032 = extractvalue %dx.types.ResRet.f32 %6029, 2
  %6033 = and i32 %5995, 32767
  %6034 = bitcast float %5990 to i32
  %6035 = icmp eq i32 %6034, -1
  %6036 = bitcast float %5991 to i32
  %6037 = and i32 %5995, 32768
  %6038 = icmp ne i32 %6037, 0
  %6039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6040 = extractvalue %dx.types.CBufRet.f32 %6039, 0
  %6041 = extractvalue %dx.types.CBufRet.f32 %6039, 1
  %6042 = extractvalue %dx.types.CBufRet.f32 %6039, 2
  %6043 = fsub fast float %6024, %6040
  %6044 = fsub fast float %6025, %6041
  %6045 = fsub fast float %6026, %6042
  %6046 = fsub fast float %198, %6043
  %6047 = fsub fast float %199, %6044
  %6048 = fsub fast float %200, %6045
  %6049 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %6027, i32 undef)  ; BufferLoad(srv,index,wot)
  %6050 = extractvalue %dx.types.ResRet.f32 %6049, 0
  %6051 = extractvalue %dx.types.ResRet.f32 %6049, 1
  %6052 = extractvalue %dx.types.ResRet.f32 %6049, 2
  %6053 = call float @dx.op.dot3.f32(i32 55, float %6046, float %6047, float %6048, float %6050, float %6051, float %6052)  ; Dot3(ax,ay,az,bx,by,bz)
  %6054 = add i32 %6022, 24
  %6055 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %6054, i32 undef)  ; BufferLoad(srv,index,wot)
  %6056 = extractvalue %dx.types.ResRet.f32 %6055, 0
  %6057 = extractvalue %dx.types.ResRet.f32 %6055, 1
  %6058 = extractvalue %dx.types.ResRet.f32 %6055, 2
  %6059 = call float @dx.op.dot3.f32(i32 55, float %6046, float %6047, float %6048, float %6056, float %6057, float %6058)  ; Dot3(ax,ay,az,bx,by,bz)
  %6060 = add i32 %6022, 36
  %6061 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %6060, i32 undef)  ; BufferLoad(srv,index,wot)
  %6062 = extractvalue %dx.types.ResRet.f32 %6061, 0
  %6063 = extractvalue %dx.types.ResRet.f32 %6061, 1
  %6064 = extractvalue %dx.types.ResRet.f32 %6061, 2
  %6065 = call float @dx.op.dot3.f32(i32 55, float %6046, float %6047, float %6048, float %6062, float %6063, float %6064)  ; Dot3(ax,ay,az,bx,by,bz)
  %6066 = call float @dx.op.unary.f32(i32 6, float %6053)  ; FAbs(value)
  %6067 = call float @dx.op.unary.f32(i32 6, float %6059)  ; FAbs(value)
  %6068 = call float @dx.op.unary.f32(i32 6, float %6065)  ; FAbs(value)
  %6069 = fsub fast float %6030, %6066
  %6070 = fsub fast float %6031, %6067
  %6071 = fsub fast float %6032, %6068
  %6072 = fmul fast float %6069, %5998
  %6073 = fmul fast float %6070, %5999
  %6074 = fmul fast float %6071, %6000
  %6075 = call float @dx.op.binary.f32(i32 36, float %6073, float %6074)  ; FMin(a,b)
  %6076 = call float @dx.op.binary.f32(i32 36, float %6072, float %6075)  ; FMin(a,b)
  %6077 = call float @dx.op.unary.f32(i32 7, float %6076)  ; Saturate(value)
  %6078 = call float @dx.op.binary.f32(i32 36, float %5981, float %6077)  ; FMin(a,b)
  %6079 = uitofp i1 %6038 to float
  %6080 = fadd fast float %5896, 1.000000e+00
  %6081 = fsub fast float %6080, %6079
  %6082 = fmul fast float %6078, %6081
  %6083 = fcmp fast ogt float %6082, 0.000000e+00
  br i1 %6083, label %6090, label %6084

; <label>:6084                                    ; preds = %6232, %5977
  %6085 = phi float [ %6296, %6232 ], [ %5978, %5977 ]
  %6086 = phi float [ %6297, %6232 ], [ %5979, %5977 ]
  %6087 = phi float [ %6298, %6232 ], [ %5980, %5977 ]
  %6088 = phi float [ %6299, %6232 ], [ %5981, %5977 ]
  %6089 = icmp eq i32 %5982, %5986
  br i1 %6089, label %6300, label %5977

; <label>:6090                                    ; preds = %5977
  br i1 %6035, label %6148, label %6091

; <label>:6091                                    ; preds = %6090
  %6092 = fsub fast float -0.000000e+00, %6050
  %6093 = fsub fast float -0.000000e+00, %6051
  %6094 = fsub fast float -0.000000e+00, %6052
  %6095 = call float @dx.op.dot3.f32(i32 55, float %5930, float %5931, float %5932, float %6092, float %6093, float %6094)  ; Dot3(ax,ay,az,bx,by,bz)
  %6096 = fsub fast float -0.000000e+00, %6095
  %6097 = call float @dx.op.dot3.f32(i32 55, float %6046, float %6047, float %6048, float %6092, float %6093, float %6094)  ; Dot3(ax,ay,az,bx,by,bz)
  %6098 = fadd fast float %6097, %6013
  %6099 = fadd fast float %6012, %6097
  %6100 = fsub fast float -0.000000e+00, %6099
  %6101 = fcmp ogt float %6095, -0.000000e+00
  %6102 = select i1 %6101, float %6100, float %6098
  %6103 = call float @dx.op.unary.f32(i32 6, float %6096)  ; FAbs(value)
  %6104 = fdiv fast float 1.000000e+00, %6103
  %6105 = fmul fast float %6102, %6104
  %6106 = call float @dx.op.binary.f32(i32 35, float %6105, float 0.000000e+00)  ; FMax(a,b)
  %6107 = fsub fast float -0.000000e+00, %6056
  %6108 = fsub fast float -0.000000e+00, %6057
  %6109 = fsub fast float -0.000000e+00, %6058
  %6110 = call float @dx.op.dot3.f32(i32 55, float %5930, float %5931, float %5932, float %6107, float %6108, float %6109)  ; Dot3(ax,ay,az,bx,by,bz)
  %6111 = fsub fast float -0.000000e+00, %6110
  %6112 = call float @dx.op.dot3.f32(i32 55, float %6046, float %6047, float %6048, float %6107, float %6108, float %6109)  ; Dot3(ax,ay,az,bx,by,bz)
  %6113 = fadd fast float %6112, %6017
  %6114 = fadd fast float %6016, %6112
  %6115 = fsub fast float -0.000000e+00, %6114
  %6116 = fcmp ogt float %6110, -0.000000e+00
  %6117 = select i1 %6116, float %6115, float %6113
  %6118 = call float @dx.op.unary.f32(i32 6, float %6111)  ; FAbs(value)
  %6119 = fdiv fast float 1.000000e+00, %6118
  %6120 = fmul fast float %6117, %6119
  %6121 = call float @dx.op.binary.f32(i32 35, float %6120, float 0.000000e+00)  ; FMax(a,b)
  %6122 = fsub fast float -0.000000e+00, %6062
  %6123 = fsub fast float -0.000000e+00, %6063
  %6124 = fsub fast float -0.000000e+00, %6064
  %6125 = call float @dx.op.dot3.f32(i32 55, float %5930, float %5931, float %5932, float %6122, float %6123, float %6124)  ; Dot3(ax,ay,az,bx,by,bz)
  %6126 = fsub fast float -0.000000e+00, %6125
  %6127 = call float @dx.op.dot3.f32(i32 55, float %6046, float %6047, float %6048, float %6122, float %6123, float %6124)  ; Dot3(ax,ay,az,bx,by,bz)
  %6128 = fadd fast float %6127, %6021
  %6129 = fadd fast float %6020, %6127
  %6130 = fsub fast float -0.000000e+00, %6129
  %6131 = fcmp ogt float %6125, -0.000000e+00
  %6132 = select i1 %6131, float %6130, float %6128
  %6133 = call float @dx.op.unary.f32(i32 6, float %6126)  ; FAbs(value)
  %6134 = fdiv fast float 1.000000e+00, %6133
  %6135 = fmul fast float %6132, %6134
  %6136 = call float @dx.op.binary.f32(i32 35, float %6135, float 0.000000e+00)  ; FMax(a,b)
  %6137 = call float @dx.op.binary.f32(i32 36, float %6121, float %6136)  ; FMin(a,b)
  %6138 = call float @dx.op.binary.f32(i32 36, float %6106, float %6137)  ; FMin(a,b)
  %6139 = fmul fast float %6138, %5930
  %6140 = fmul fast float %6138, %5931
  %6141 = fmul fast float %6138, %5932
  %6142 = fadd fast float %6139, %198
  %6143 = fadd fast float %6140, %199
  %6144 = fadd fast float %6141, %200
  %6145 = fsub fast float %6142, %5990
  %6146 = fsub fast float %6143, %5991
  %6147 = fsub fast float %6144, %5992
  br label %6155

; <label>:6148                                    ; preds = %6090
  %6149 = fmul fast float %5930, 8.096000e+03
  %6150 = fmul fast float %5931, 8.096000e+03
  %6151 = fmul fast float %5932, 8.096000e+03
  %6152 = fadd fast float %6149, %198
  %6153 = fadd fast float %6150, %199
  %6154 = fadd fast float %6151, %200
  br label %6155

; <label>:6155                                    ; preds = %6148, %6091
  %6156 = phi float [ %5930, %6148 ], [ %6145, %6091 ]
  %6157 = phi float [ %5931, %6148 ], [ %6146, %6091 ]
  %6158 = phi float [ %5932, %6148 ], [ %6147, %6091 ]
  %6159 = phi float [ %6152, %6148 ], [ %6142, %6091 ]
  %6160 = phi float [ %6153, %6148 ], [ %6143, %6091 ]
  %6161 = phi float [ %6154, %6148 ], [ %6144, %6091 ]
  %6162 = fcmp fast olt float %6009, 1.000000e+00
  br i1 %6162, label %6163, label %6194, !dx.controlflow.hints !103

; <label>:6163                                    ; preds = %6155
  %6164 = fmul fast float %6158, %6007
  %6165 = fmul fast float %6157, %6008
  %6166 = fsub fast float %6164, %6165
  %6167 = fmul fast float %6156, %6008
  %6168 = fmul fast float %6158, %6006
  %6169 = fsub fast float %6167, %6168
  %6170 = fmul fast float %6157, %6006
  %6171 = fmul fast float %6156, %6007
  %6172 = fsub fast float %6170, %6171
  %6173 = fmul fast float %6166, 2.000000e+00
  %6174 = fmul fast float %6169, 2.000000e+00
  %6175 = fmul fast float %6172, 2.000000e+00
  %6176 = fmul fast float %6173, %6009
  %6177 = fmul fast float %6174, %6009
  %6178 = fmul fast float %6175, %6009
  %6179 = fmul fast float %6175, %6007
  %6180 = fmul fast float %6174, %6008
  %6181 = fmul fast float %6173, %6008
  %6182 = fmul fast float %6175, %6006
  %6183 = fmul fast float %6174, %6006
  %6184 = fmul fast float %6173, %6007
  %6185 = fadd fast float %6179, %6156
  %6186 = fadd fast float %6185, %6176
  %6187 = fsub fast float %6186, %6180
  %6188 = fsub fast float %6157, %6182
  %6189 = fadd fast float %6188, %6177
  %6190 = fadd fast float %6189, %6181
  %6191 = fadd fast float %6178, %6158
  %6192 = fsub fast float %6191, %6184
  %6193 = fadd fast float %6192, %6183
  br label %6194

; <label>:6194                                    ; preds = %6163, %6155
  %6195 = phi float [ %6187, %6163 ], [ %6156, %6155 ]
  %6196 = phi float [ %6190, %6163 ], [ %6157, %6155 ]
  %6197 = phi float [ %6193, %6163 ], [ %6158, %6155 ]
  br i1 %6035, label %6229, label %6198

; <label>:6198                                    ; preds = %6194
  %6199 = fmul fast float %5523, 0x400187C840000000
  %6200 = fadd fast float %6199, 0xC00EFC2120000000
  %6201 = fmul fast float %6200, %5523
  %6202 = fadd fast float %6201, 0x3FE5D16340000000
  %6203 = fmul fast float %6202, %5523
  %6204 = fadd fast float %6203, 1.000000e+00
  %6205 = call float @dx.op.unary.f32(i32 7, float %6204)  ; Saturate(value)
  %6206 = fsub fast float %6159, %198
  %6207 = fsub fast float %6160, %199
  %6208 = fsub fast float %6161, %200
  %6209 = fsub fast float %6159, %5990
  %6210 = fsub fast float %6160, %5991
  %6211 = fsub fast float %6161, %5992
  %6212 = call float @dx.op.dot3.f32(i32 55, float %6206, float %6207, float %6208, float %6206, float %6207, float %6208)  ; Dot3(ax,ay,az,bx,by,bz)
  %6213 = call float @dx.op.dot3.f32(i32 55, float %6209, float %6210, float %6211, float %6209, float %6210, float %6211)  ; Dot3(ax,ay,az,bx,by,bz)
  %6214 = fadd fast float %6213, 0x3EE4F8B580000000
  %6215 = fdiv fast float %6212, %6214
  %6216 = bitcast float %6215 to i32
  %6217 = ashr i32 %6216, 1
  %6218 = add nsw i32 %6217, 532487669
  %6219 = bitcast i32 %6218 to float
  %6220 = fmul fast float %6219, %6205
  %6221 = call float @dx.op.unary.f32(i32 7, float %6220)  ; Saturate(value)
  %6222 = fmul fast float %6221, 0x4009981AE0000000
  %6223 = fsub fast float 0x40111BBD80000000, %6222
  %6224 = fmul fast float %6223, %6221
  %6225 = fadd fast float %6224, 0xC0009F6020000000
  %6226 = fmul fast float %6225, %6221
  %6227 = fadd fast float %6226, 1.000000e+00
  %6228 = call float @dx.op.unary.f32(i32 7, float %6227)  ; Saturate(value)
  br label %6232

; <label>:6229                                    ; preds = %6194
  %6230 = icmp ne i32 %6036, -1
  %6231 = zext i1 %6230 to i32
  br label %6232

; <label>:6232                                    ; preds = %6229, %6198
  %6233 = phi float [ %5523, %6229 ], [ %6228, %6198 ]
  %6234 = phi i32 [ %6231, %6229 ], [ 0, %6198 ]
  %6235 = fmul float %6233, 5.000000e+00
  %6236 = fsub float 5.000000e+00, %6235
  %6237 = icmp ne i32 %6234, 0
  %6238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6239 = extractvalue %dx.types.CBufRet.f32 %6238, 3
  %6240 = fadd fast float %6239, %6236
  %6241 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6240)  ; FMax(a,b)
  %6242 = call float @dx.op.unary.f32(i32 6, float %6195)  ; FAbs(value)
  %6243 = call float @dx.op.unary.f32(i32 6, float %6196)  ; FAbs(value)
  %6244 = fadd fast float %6243, %6242
  %6245 = call float @dx.op.unary.f32(i32 6, float %6197)  ; FAbs(value)
  %6246 = fadd fast float %6244, %6245
  %6247 = fcmp fast oeq float %6246, 0.000000e+00
  %6248 = fdiv fast float 1.000000e+00, %6246
  %6249 = select i1 %6247, float 1.000000e+00, float %6248
  %6250 = fmul fast float %6249, %6195
  %6251 = fmul fast float %6249, %6196
  %6252 = call float @dx.op.unary.f32(i32 6, float %6251)  ; FAbs(value)
  %6253 = call float @dx.op.unary.f32(i32 6, float %6250)  ; FAbs(value)
  %6254 = fsub fast float 1.000000e+00, %6252
  %6255 = fsub fast float 1.000000e+00, %6253
  %6256 = fcmp fast oge float %6250, 0.000000e+00
  %6257 = fcmp fast oge float %6251, 0.000000e+00
  %6258 = select i1 %6256, float 1.000000e+00, float -1.000000e+00
  %6259 = select i1 %6257, float 1.000000e+00, float -1.000000e+00
  %6260 = fcmp fast ole float %6197, 0.000000e+00
  %6261 = fmul fast float %6258, %6254
  %6262 = fmul fast float %6259, %6255
  %6263 = select i1 %6260, float %6261, float %6250
  %6264 = select i1 %6260, float %6262, float %6251
  %6265 = fmul fast float %6263, 5.000000e-01
  %6266 = fmul fast float %6264, 5.000000e-01
  %6267 = fadd fast float %6265, 5.000000e-01
  %6268 = fadd fast float %6266, 5.000000e-01
  %6269 = uitofp i32 %6033 to float
  %6270 = call float @dx.op.binary.f32(i32 36, float %6241, float 3.000000e+00)  ; FMin(a,b)
  %6271 = fadd fast float %6270, 2.000000e+00
  %6272 = call float @dx.op.unary.f32(i32 21, float %6271)  ; Exp(value)
  %6273 = extractvalue %dx.types.CBufRet.f32 %6238, 1
  %6274 = fmul fast float %6273, %6272
  %6275 = fmul fast float %6274, 2.000000e+00
  %6276 = fsub fast float 1.000000e+00, %6275
  %6277 = fmul fast float %6267, %6276
  %6278 = fmul fast float %6268, %6276
  %6279 = fadd fast float %6277, %6274
  %6280 = fadd fast float %6278, %6274
  %6281 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %52, float %6279, float %6280, float %6269, float undef, i32 0, i32 0, i32 undef, float %6241)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6282 = extractvalue %dx.types.ResRet.f32 %6281, 0
  %6283 = extractvalue %dx.types.ResRet.f32 %6281, 1
  %6284 = extractvalue %dx.types.ResRet.f32 %6281, 2
  %6285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6286 = extractvalue %dx.types.CBufRet.f32 %6285, 3
  %6287 = fmul fast float %6286, %6003
  %6288 = call float @dx.op.binary.f32(i32 36, float %5555, float %6287)  ; FMin(a,b)
  %6289 = select i1 %6237, float %6288, float %6287
  %6290 = fmul fast float %6282, %6082
  %6291 = fmul fast float %6290, %6289
  %6292 = fmul fast float %6283, %6082
  %6293 = fmul fast float %6292, %6289
  %6294 = fmul fast float %6284, %6082
  %6295 = fmul fast float %6294, %6289
  %6296 = fadd fast float %6291, %5978
  %6297 = fadd fast float %6293, %5979
  %6298 = fadd fast float %6295, %5980
  %6299 = fsub fast float %5981, %6082
  br label %6084

; <label>:6300                                    ; preds = %6084
  br label %6301

; <label>:6301                                    ; preds = %6300, %5947
  %6302 = phi float [ %5948, %5947 ], [ %6085, %6300 ]
  %6303 = phi float [ %5949, %5947 ], [ %6086, %6300 ]
  %6304 = phi float [ %5950, %5947 ], [ %6087, %6300 ]
  %6305 = phi float [ %5951, %5947 ], [ %6088, %6300 ]
  %6306 = add i32 %5952, 1
  %6307 = icmp ugt i32 %6306, %5944
  br i1 %6307, label %6308, label %5947, !llvm.loop !104

; <label>:6308                                    ; preds = %6301
  br label %6309

; <label>:6309                                    ; preds = %6308, %5929
  %6310 = phi float [ 0.000000e+00, %5929 ], [ %6302, %6308 ]
  %6311 = phi float [ 0.000000e+00, %5929 ], [ %6303, %6308 ]
  %6312 = phi float [ 0.000000e+00, %5929 ], [ %6304, %6308 ]
  %6313 = call float @dx.op.dot3.f32(i32 55, float %6310, float %6311, float %6312, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6314 = select i1 %289, float 0.000000e+00, float %6310
  %6315 = select i1 %289, float %6313, float %6311
  %6316 = select i1 %289, float 0.000000e+00, float %6312
  %6317 = fcmp fast olt float %5855, 0.000000e+00
  %6318 = call float @dx.op.unary.f32(i32 6, float %5855)  ; FAbs(value)
  %6319 = fmul fast float %6318, %5795
  %6320 = fmul fast float %6318, %5796
  %6321 = fmul fast float %6318, %5797
  %6322 = select i1 %6317, float %5795, float %6319
  %6323 = select i1 %6317, float %5796, float %6320
  %6324 = select i1 %6317, float %5797, float %6321
  %6325 = fsub fast float 1.000000e+00, %6318
  %6326 = call float @dx.op.unary.f32(i32 7, float %6325)  ; Saturate(value)
  %6327 = fmul fast float %6326, %6314
  %6328 = fmul fast float %6326, %6315
  %6329 = fmul fast float %6326, %6316
  %6330 = fadd fast float %6322, %6327
  %6331 = fadd fast float %6323, %6328
  %6332 = fadd fast float %6324, %6329
  br label %6333

; <label>:6333                                    ; preds = %6309, %5838
  %6334 = phi float [ %5795, %5838 ], [ %6330, %6309 ]
  %6335 = phi float [ %5796, %5838 ], [ %6331, %6309 ]
  %6336 = phi float [ %5797, %5838 ], [ %6332, %6309 ]
  %6337 = call float @dx.op.dot3.f32(i32 55, float %5514, float %5515, float %5516, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6338 = fcmp fast ogt float %6337, 0x3E7FF19E20000000
  %6339 = fdiv fast float 1.000000e+00, %6337
  %6340 = select i1 %6338, float %6339, float 0.000000e+00
  %6341 = fmul fast float %6340, %5514
  %6342 = fmul fast float %6340, %5515
  %6343 = fmul fast float %6340, %5516
  %6344 = fadd fast float %6341, -1.000000e+00
  %6345 = fadd fast float %6342, -1.000000e+00
  %6346 = fadd fast float %6343, -1.000000e+00
  %6347 = fmul fast float %6344, 5.000000e-01
  %6348 = fmul fast float %6345, 5.000000e-01
  %6349 = fmul fast float %6346, 5.000000e-01
  %6350 = fadd fast float %6347, 1.000000e+00
  %6351 = fadd fast float %6348, 1.000000e+00
  %6352 = fadd fast float %6349, 1.000000e+00
  %6353 = fmul fast float %5844, %4362
  %6354 = fmul fast float %5844, %4363
  %6355 = fmul fast float %5844, %4364
  %6356 = fadd fast float %6353, -1.000000e+00
  %6357 = fadd fast float %6354, -1.000000e+00
  %6358 = fadd fast float %6355, -1.000000e+00
  %6359 = fmul fast float %6356, %4276
  %6360 = fmul fast float %6357, %4276
  %6361 = fmul fast float %6358, %4276
  %6362 = fmul fast float %6334, %5839
  %6363 = fmul fast float %6335, %5840
  %6364 = fmul fast float %6336, %5841
  %6365 = fsub fast float 1.000000e+00, %5528
  %6366 = bitcast float %6365 to i32
  %6367 = sitofp i32 %6366 to float
  %6368 = fmul fast float %6367, 5.000000e+00
  %6369 = fadd fast float %6368, 0xC1EFBF8940000000
  %6370 = fptosi float %6369 to i32
  %6371 = bitcast i32 %6370 to float
  %6372 = fmul fast float %6371, %4251
  %6373 = fmul fast float %5787, %6372
  %6374 = fmul fast float %6373, %5844
  %6375 = fmul fast float %6374, %6350
  %6376 = fmul fast float %5788, %6372
  %6377 = fmul fast float %6376, %5844
  %6378 = fmul fast float %6377, %6351
  %6379 = fmul fast float %5789, %6372
  %6380 = fmul fast float %6379, %5844
  %6381 = fmul fast float %6380, %6352
  %6382 = fadd fast float %6362, %4240
  %6383 = fadd fast float %6382, %6375
  %6384 = fmul fast float %6383, %4276
  %6385 = fadd fast float %6363, %4241
  %6386 = fadd fast float %6385, %6378
  %6387 = fmul fast float %6386, %4276
  %6388 = fadd fast float %6364, %4242
  %6389 = fadd fast float %6388, %6381
  %6390 = fmul fast float %6389, %4276
  %6391 = fadd fast float %6361, 1.000000e+00
  %6392 = fadd fast float %6360, 1.000000e+00
  %6393 = fadd fast float %6359, 1.000000e+00
  %6394 = fmul fast float %5844, %5789
  %6395 = fmul fast float %5844, %5788
  %6396 = fmul fast float %5844, %5787
  %6397 = fmul fast float %6393, %5791
  %6398 = fmul fast float %6392, %5792
  %6399 = fmul fast float %6391, %5793
  %6400 = fadd fast float %6397, %6396
  %6401 = fmul fast float %6400, %4276
  %6402 = fadd fast float %6398, %6395
  %6403 = fmul fast float %6402, %4276
  %6404 = fadd fast float %6399, %6394
  %6405 = fmul fast float %6404, %4276
  %6406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6407 = extractvalue %dx.types.CBufRet.f32 %6406, 3
  %6408 = fcmp fast oeq float %6407, 0.000000e+00
  br i1 %6408, label %8166, label %6409

; <label>:6409                                    ; preds = %6333
  %6410 = extractvalue %dx.types.CBufRet.f32 %6406, 0
  %6411 = extractvalue %dx.types.CBufRet.f32 %6406, 1
  %6412 = extractvalue %dx.types.CBufRet.f32 %6406, 2
  %6413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6414 = extractvalue %dx.types.CBufRet.f32 %6413, 0
  %6415 = extractvalue %dx.types.CBufRet.f32 %6413, 1
  %6416 = extractvalue %dx.types.CBufRet.f32 %6413, 2
  %6417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6418 = extractvalue %dx.types.CBufRet.f32 %6417, 0
  %6419 = extractvalue %dx.types.CBufRet.f32 %6417, 1
  %6420 = call float @dx.op.dot3.f32(i32 55, float %6414, float %6415, float %6416, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6421 = select i1 %289, float %6418, float %6414
  %6422 = select i1 %289, float %6420, float %6415
  %6423 = select i1 %289, float %6419, float %6416
  %6424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6425 = extractvalue %dx.types.CBufRet.f32 %6424, 2
  %6426 = fmul fast float %6425, %126
  %6427 = fmul fast float %6425, %127
  %6428 = fmul fast float %6425, %128
  %6429 = fadd fast float %6426, %198
  %6430 = fadd fast float %6427, %199
  %6431 = fadd fast float %6428, %200
  %6432 = fcmp fast olt float %6407, 0.000000e+00
  br i1 %6432, label %7690, label %6433

; <label>:6433                                    ; preds = %6409
  %6434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6435 = extractvalue %dx.types.CBufRet.f32 %6434, 0
  %6436 = extractvalue %dx.types.CBufRet.f32 %6434, 1
  %6437 = extractvalue %dx.types.CBufRet.f32 %6434, 2
  %6438 = extractvalue %dx.types.CBufRet.f32 %6434, 3
  %6439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6440 = extractvalue %dx.types.CBufRet.f32 %6439, 0
  %6441 = extractvalue %dx.types.CBufRet.f32 %6439, 1
  %6442 = extractvalue %dx.types.CBufRet.f32 %6439, 2
  %6443 = extractvalue %dx.types.CBufRet.f32 %6439, 3
  %6444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6445 = extractvalue %dx.types.CBufRet.f32 %6444, 0
  %6446 = extractvalue %dx.types.CBufRet.f32 %6444, 1
  %6447 = extractvalue %dx.types.CBufRet.f32 %6444, 2
  %6448 = extractvalue %dx.types.CBufRet.f32 %6444, 3
  %6449 = fmul fast float %6435, %6429
  %6450 = call float @dx.op.tertiary.f32(i32 46, float %6430, float %6436, float %6449)  ; FMad(a,b,c)
  %6451 = call float @dx.op.tertiary.f32(i32 46, float %6431, float %6437, float %6450)  ; FMad(a,b,c)
  %6452 = fadd fast float %6451, %6438
  %6453 = fmul fast float %6440, %6429
  %6454 = call float @dx.op.tertiary.f32(i32 46, float %6430, float %6441, float %6453)  ; FMad(a,b,c)
  %6455 = call float @dx.op.tertiary.f32(i32 46, float %6431, float %6442, float %6454)  ; FMad(a,b,c)
  %6456 = fadd fast float %6455, %6443
  %6457 = fmul fast float %6445, %6429
  %6458 = call float @dx.op.tertiary.f32(i32 46, float %6430, float %6446, float %6457)  ; FMad(a,b,c)
  %6459 = call float @dx.op.tertiary.f32(i32 46, float %6431, float %6447, float %6458)  ; FMad(a,b,c)
  %6460 = fadd fast float %6459, %6448
  %6461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6462 = extractvalue %dx.types.CBufRet.f32 %6461, 0
  %6463 = fcmp fast une float %6462, 0.000000e+00
  %6464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6465 = extractvalue %dx.types.CBufRet.f32 %6464, 0
  %6466 = extractvalue %dx.types.CBufRet.f32 %6464, 1
  %6467 = extractvalue %dx.types.CBufRet.f32 %6464, 3
  %6468 = fmul fast float %6467, %6452
  %6469 = fmul fast float %6467, %6456
  %6470 = fadd fast float %6468, %6465
  %6471 = fadd fast float %6469, %6466
  %6472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6473 = extractvalue %dx.types.CBufRet.f32 %6472, 0
  %6474 = extractvalue %dx.types.CBufRet.f32 %6472, 1
  %6475 = extractvalue %dx.types.CBufRet.f32 %6472, 3
  %6476 = fmul fast float %6475, %6452
  %6477 = fmul fast float %6475, %6456
  %6478 = fadd fast float %6476, %6473
  %6479 = fadd fast float %6477, %6474
  %6480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6481 = extractvalue %dx.types.CBufRet.f32 %6480, 1
  %6482 = fsub fast float %6481, %6460
  %6483 = extractvalue %dx.types.CBufRet.f32 %6480, 2
  %6484 = fmul fast float %6482, %6483
  %6485 = fsub fast float 1.000000e+00, %6484
  %6486 = call float @dx.op.unary.f32(i32 7, float %6485)  ; Saturate(value)
  br i1 %6463, label %6547, label %6487

; <label>:6487                                    ; preds = %6433
  %6488 = extractvalue %dx.types.CBufRet.f32 %6472, 2
  %6489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6490 = extractvalue %dx.types.CBufRet.f32 %6489, 2
  %6491 = fadd fast float %6490, %6488
  %6492 = fcmp fast ogt float %6491, 0.000000e+00
  br i1 %6492, label %6493, label %6517

; <label>:6493                                    ; preds = %6487
  %6494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6495 = extractvalue %dx.types.CBufRet.f32 %6494, 0
  %6496 = extractvalue %dx.types.CBufRet.f32 %6494, 1
  %6497 = fsub fast float %6478, %6495
  %6498 = fsub fast float %6479, %6496
  %6499 = fcmp fast olt float %6497, 0.000000e+00
  %6500 = fcmp fast olt float %6498, 0.000000e+00
  %6501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6502 = extractvalue %dx.types.CBufRet.f32 %6501, 0
  %6503 = extractvalue %dx.types.CBufRet.f32 %6501, 1
  %6504 = extractvalue %dx.types.CBufRet.f32 %6501, 2
  %6505 = extractvalue %dx.types.CBufRet.f32 %6501, 3
  %6506 = select i1 %6499, float %6502, float %6504
  %6507 = select i1 %6500, float %6503, float %6505
  %6508 = fmul fast float %6506, %6497
  %6509 = fmul fast float %6507, %6498
  %6510 = call float @dx.op.unary.f32(i32 6, float %6508)  ; FAbs(value)
  %6511 = call float @dx.op.unary.f32(i32 6, float %6509)  ; FAbs(value)
  %6512 = extractvalue %dx.types.CBufRet.f32 %6424, 0
  %6513 = call float @dx.op.binary.f32(i32 35, float %6510, float %6511)  ; FMax(a,b)
  %6514 = fsub fast float %6512, %6513
  %6515 = call float @dx.op.unary.f32(i32 7, float %6514)  ; Saturate(value)
  %6516 = fmul fast float %6515, %6486
  br label %6517

; <label>:6517                                    ; preds = %6493, %6487
  %6518 = phi float [ %6516, %6493 ], [ 0.000000e+00, %6487 ]
  %6519 = extractvalue %dx.types.CBufRet.f32 %6464, 2
  %6520 = extractvalue %dx.types.CBufRet.f32 %6489, 1
  %6521 = fadd fast float %6520, %6519
  %6522 = fcmp fast ogt float %6521, 0.000000e+00
  br i1 %6522, label %6523, label %6547

; <label>:6523                                    ; preds = %6517
  %6524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6525 = extractvalue %dx.types.CBufRet.f32 %6524, 0
  %6526 = extractvalue %dx.types.CBufRet.f32 %6524, 1
  %6527 = fsub fast float %6470, %6525
  %6528 = fsub fast float %6471, %6526
  %6529 = fcmp fast olt float %6527, 0.000000e+00
  %6530 = fcmp fast olt float %6528, 0.000000e+00
  %6531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6532 = extractvalue %dx.types.CBufRet.f32 %6531, 0
  %6533 = extractvalue %dx.types.CBufRet.f32 %6531, 1
  %6534 = extractvalue %dx.types.CBufRet.f32 %6531, 2
  %6535 = extractvalue %dx.types.CBufRet.f32 %6531, 3
  %6536 = select i1 %6529, float %6532, float %6534
  %6537 = select i1 %6530, float %6533, float %6535
  %6538 = fmul fast float %6536, %6527
  %6539 = fmul fast float %6537, %6528
  %6540 = call float @dx.op.unary.f32(i32 6, float %6538)  ; FAbs(value)
  %6541 = call float @dx.op.unary.f32(i32 6, float %6539)  ; FAbs(value)
  %6542 = extractvalue %dx.types.CBufRet.f32 %6424, 0
  %6543 = call float @dx.op.binary.f32(i32 35, float %6540, float %6541)  ; FMax(a,b)
  %6544 = fsub fast float %6542, %6543
  %6545 = call float @dx.op.unary.f32(i32 7, float %6544)  ; Saturate(value)
  %6546 = fmul fast float %6545, %6486
  br label %6547

; <label>:6547                                    ; preds = %6523, %6517, %6433
  %6548 = phi float [ 0.000000e+00, %6433 ], [ %6546, %6523 ], [ 0.000000e+00, %6517 ]
  %6549 = phi float [ 0.000000e+00, %6433 ], [ %6518, %6523 ], [ %6518, %6517 ]
  %6550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6551 = extractvalue %dx.types.CBufRet.f32 %6550, 1
  %6552 = call float @dx.op.unary.f32(i32 7, float %6551)  ; Saturate(value)
  %6553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6554 = extractvalue %dx.types.CBufRet.f32 %6553, 0
  %6555 = extractvalue %dx.types.CBufRet.f32 %6553, 1
  %6556 = fsub fast float %6452, %6554
  %6557 = fsub fast float %6456, %6555
  %6558 = fcmp fast olt float %6556, 0.000000e+00
  %6559 = fcmp fast olt float %6557, 0.000000e+00
  %6560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6561 = extractvalue %dx.types.CBufRet.f32 %6560, 0
  %6562 = extractvalue %dx.types.CBufRet.f32 %6560, 1
  %6563 = extractvalue %dx.types.CBufRet.f32 %6560, 2
  %6564 = extractvalue %dx.types.CBufRet.f32 %6560, 3
  %6565 = select i1 %6558, float %6561, float %6563
  %6566 = select i1 %6559, float %6562, float %6564
  %6567 = fmul fast float %6565, %6556
  %6568 = fmul fast float %6566, %6557
  %6569 = call float @dx.op.unary.f32(i32 6, float %6567)  ; FAbs(value)
  %6570 = call float @dx.op.unary.f32(i32 6, float %6568)  ; FAbs(value)
  %6571 = extractvalue %dx.types.CBufRet.f32 %6424, 0
  %6572 = call float @dx.op.binary.f32(i32 35, float %6569, float %6570)  ; FMax(a,b)
  %6573 = fsub fast float %6571, %6572
  %6574 = call float @dx.op.unary.f32(i32 7, float %6573)  ; Saturate(value)
  %6575 = call float @dx.op.binary.f32(i32 36, float %6574, float %6552)  ; FMin(a,b)
  %6576 = fmul fast float %6575, %6486
  %6577 = fsub fast float %6548, %6576
  %6578 = fsub fast float %6549, %6548
  %6579 = fsub fast float %6578, %6576
  %6580 = call float @dx.op.binary.f32(i32 35, float %6548, float %6549)  ; FMax(a,b)
  %6581 = call float @dx.op.binary.f32(i32 35, float %6576, float %6580)  ; FMax(a,b)
  %6582 = fcmp fast olt float %6581, 1.000000e+00
  br i1 %6582, label %6583, label %6981, !dx.controlflow.hints !106

; <label>:6583                                    ; preds = %6547
  %6584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6585 = extractvalue %dx.types.CBufRet.f32 %6584, 0
  %6586 = fcmp fast une float %6585, 0.000000e+00
  br i1 %6586, label %6587, label %6981, !dx.controlflow.hints !107

; <label>:6587                                    ; preds = %6583
  %6588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6589 = extractvalue %dx.types.CBufRet.f32 %6588, 0
  %6590 = extractvalue %dx.types.CBufRet.f32 %6588, 1
  %6591 = extractvalue %dx.types.CBufRet.f32 %6588, 2
  %6592 = extractvalue %dx.types.CBufRet.f32 %6588, 3
  %6593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6594 = extractvalue %dx.types.CBufRet.f32 %6593, 0
  %6595 = extractvalue %dx.types.CBufRet.f32 %6593, 1
  %6596 = extractvalue %dx.types.CBufRet.f32 %6593, 2
  %6597 = extractvalue %dx.types.CBufRet.f32 %6593, 3
  %6598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6599 = extractvalue %dx.types.CBufRet.f32 %6598, 0
  %6600 = extractvalue %dx.types.CBufRet.f32 %6598, 1
  %6601 = extractvalue %dx.types.CBufRet.f32 %6598, 2
  %6602 = extractvalue %dx.types.CBufRet.f32 %6598, 3
  %6603 = fmul fast float %6589, %6429
  %6604 = call float @dx.op.tertiary.f32(i32 46, float %6430, float %6590, float %6603)  ; FMad(a,b,c)
  %6605 = call float @dx.op.tertiary.f32(i32 46, float %6431, float %6591, float %6604)  ; FMad(a,b,c)
  %6606 = fadd fast float %6605, %6592
  %6607 = fmul fast float %6594, %6429
  %6608 = call float @dx.op.tertiary.f32(i32 46, float %6430, float %6595, float %6607)  ; FMad(a,b,c)
  %6609 = call float @dx.op.tertiary.f32(i32 46, float %6431, float %6596, float %6608)  ; FMad(a,b,c)
  %6610 = fadd fast float %6609, %6597
  %6611 = fmul fast float %6599, %6429
  %6612 = call float @dx.op.tertiary.f32(i32 46, float %6430, float %6600, float %6611)  ; FMad(a,b,c)
  %6613 = call float @dx.op.tertiary.f32(i32 46, float %6431, float %6601, float %6612)  ; FMad(a,b,c)
  %6614 = fadd fast float %6613, %6602
  %6615 = fcmp fast oge float %6606, 1.000000e+00
  %6616 = fcmp fast oge float %6610, 1.000000e+00
  %6617 = or i1 %6615, %6616
  %6618 = fcmp fast olt float %6606, 0.000000e+00
  %6619 = fcmp fast olt float %6610, 0.000000e+00
  %6620 = or i1 %6618, %6619
  %6621 = or i1 %6617, %6620
  br i1 %6621, label %6981, label %6622, !dx.controlflow.hints !108

; <label>:6622                                    ; preds = %6587
  %6623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6624 = extractvalue %dx.types.CBufRet.f32 %6623, 0
  %6625 = extractvalue %dx.types.CBufRet.f32 %6623, 1
  %6626 = extractvalue %dx.types.CBufRet.f32 %6623, 2
  %6627 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6628 = extractvalue %dx.types.CBufRet.i32 %6627, 2
  %6629 = uitofp i32 %6628 to float
  %6630 = extractvalue %dx.types.CBufRet.i32 %6627, 3
  %6631 = uitofp i32 %6630 to float
  %6632 = extractvalue %dx.types.CBufRet.f32 %6623, 3
  %6633 = fmul fast float %6632, 2.000000e+00
  %6634 = fsub fast float %6606, %6624
  %6635 = fsub fast float %6610, %6625
  %6636 = fmul fast float %6633, %6634
  %6637 = fmul fast float %6633, %6635
  %6638 = fdiv fast float 1.000000e+00, %6412
  %6639 = fmul fast float %6637, %6638
  %6640 = call float @dx.op.unary.f32(i32 6, float %6639)  ; FAbs(value)
  %6641 = fmul fast float %6626, %6431
  %6642 = fmul fast float %6641, %6633
  %6643 = call float @dx.op.unary.f32(i32 6, float %6642)  ; FAbs(value)
  %6644 = call float @dx.op.unary.f32(i32 6, float %6636)  ; FAbs(value)
  %6645 = call float @dx.op.binary.f32(i32 35, float %6643, float %6640)  ; FMax(a,b)
  %6646 = call float @dx.op.binary.f32(i32 35, float %6644, float %6645)  ; FMax(a,b)
  %6647 = fmul fast float %6646, 2.000000e+00
  %6648 = call float @dx.op.unary.f32(i32 23, float %6647)  ; Log(value)
  %6649 = call float @dx.op.binary.f32(i32 35, float %6648, float %6629)  ; FMax(a,b)
  %6650 = call float @dx.op.unary.f32(i32 22, float %6649)  ; Frc(value)
  %6651 = fadd fast float %6650, 0xBFEA666660000000
  %6652 = fmul fast float %6651, 8.000000e+00
  %6653 = call float @dx.op.unary.f32(i32 7, float %6652)  ; Saturate(value)
  %6654 = call float @dx.op.unary.f32(i32 27, float %6649)  ; Round_ni(value)
  %6655 = fadd fast float %6654, %6653
  %6656 = call float @dx.op.binary.f32(i32 36, float %6655, float %6631)  ; FMin(a,b)
  %6657 = call float @dx.op.unary.f32(i32 27, float %6656)  ; Round_ni(value)
  %6658 = fsub fast float -0.000000e+00, %6657
  %6659 = call float @dx.op.unary.f32(i32 21, float %6658)  ; Exp(value)
  %6660 = fmul fast float %6659, %6633
  %6661 = fmul fast float %6660, %6606
  %6662 = fmul fast float %6660, %6610
  %6663 = fmul fast float %6661, 2.500000e-01
  %6664 = fmul fast float %6662, 2.500000e-01
  %6665 = fadd fast float %6663, 5.000000e-01
  %6666 = fadd fast float %6664, 5.000000e-01
  %6667 = fsub fast float %6631, %6629
  %6668 = fptoui float %6667 to i32
  %6669 = add i32 %6668, 320
  %6670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %6669)  ; CBufferLoadLegacy(handle,regIndex)
  %6671 = extractvalue %dx.types.CBufRet.f32 %6670, 0
  %6672 = extractvalue %dx.types.CBufRet.f32 %6670, 1
  %6673 = fcmp fast une float %6656, %6631
  %6674 = fsub fast float %6606, %6671
  %6675 = fsub fast float %6610, %6672
  %6676 = call float @dx.op.unary.f32(i32 6, float %6674)  ; FAbs(value)
  %6677 = call float @dx.op.unary.f32(i32 6, float %6675)  ; FAbs(value)
  %6678 = fmul fast float %6676, %6660
  %6679 = fmul fast float %6677, %6660
  %6680 = fcmp fast olt float %6678, 1.000000e+00
  %6681 = fcmp fast olt float %6679, 1.000000e+00
  %6682 = and i1 %6680, %6681
  %6683 = or i1 %6673, %6682
  br i1 %6683, label %6684, label %6981, !dx.controlflow.hints !109

; <label>:6684                                    ; preds = %6622
  %6685 = fmul fast float %6662, 5.000000e-01
  %6686 = fmul fast float %6661, 5.000000e-01
  %6687 = fadd fast float %6685, 5.000000e-01
  %6688 = fadd fast float %6686, 5.000000e-01
  %6689 = sitofp i32 %6628 to float
  %6690 = fsub fast float %6656, %6689
  %6691 = call float @dx.op.unary.f32(i32 27, float %6690)  ; Round_ni(value)
  %6692 = call float @dx.op.unary.f32(i32 22, float %6656)  ; Frc(value)
  %6693 = call float @dx.op.unary.f32(i32 22, float %6688)  ; Frc(value)
  %6694 = call float @dx.op.unary.f32(i32 22, float %6687)  ; Frc(value)
  %6695 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6693, float %6694, float %6691, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6696 = extractvalue %dx.types.ResRet.f32 %6695, 0
  %6697 = extractvalue %dx.types.ResRet.f32 %6695, 1
  %6698 = extractvalue %dx.types.ResRet.f32 %6695, 2
  %6699 = extractvalue %dx.types.ResRet.f32 %6695, 3
  %6700 = fcmp fast ogt float %6692, 0.000000e+00
  br i1 %6700, label %6701, label %6722, !dx.controlflow.hints !110

; <label>:6701                                    ; preds = %6684
  %6702 = fadd fast float %6691, 1.000000e+00
  %6703 = call float @dx.op.unary.f32(i32 22, float %6665)  ; Frc(value)
  %6704 = call float @dx.op.unary.f32(i32 22, float %6666)  ; Frc(value)
  %6705 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6703, float %6704, float %6702, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6706 = extractvalue %dx.types.ResRet.f32 %6705, 0
  %6707 = extractvalue %dx.types.ResRet.f32 %6705, 1
  %6708 = extractvalue %dx.types.ResRet.f32 %6705, 2
  %6709 = extractvalue %dx.types.ResRet.f32 %6705, 3
  %6710 = fsub fast float %6706, %6696
  %6711 = fsub fast float %6707, %6697
  %6712 = fsub fast float %6708, %6698
  %6713 = fsub fast float %6709, %6699
  %6714 = fmul fast float %6710, %6692
  %6715 = fmul fast float %6711, %6692
  %6716 = fmul fast float %6712, %6692
  %6717 = fmul fast float %6713, %6692
  %6718 = fadd fast float %6714, %6696
  %6719 = fadd fast float %6715, %6697
  %6720 = fadd fast float %6716, %6698
  %6721 = fadd fast float %6717, %6699
  br label %6722

; <label>:6722                                    ; preds = %6701, %6684
  %6723 = phi float [ %6718, %6701 ], [ %6696, %6684 ]
  %6724 = phi float [ %6719, %6701 ], [ %6697, %6684 ]
  %6725 = phi float [ %6720, %6701 ], [ %6698, %6684 ]
  %6726 = phi float [ %6721, %6701 ], [ %6699, %6684 ]
  %6727 = fadd fast float %6723, -5.000000e-01
  %6728 = fadd fast float %6725, -5.000000e-01
  %6729 = fmul fast float %6727, 0xBFD5555560000000
  %6730 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6728, float %6729)  ; FMad(a,b,c)
  %6731 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6724, float 0.000000e+00)  ; FMad(a,b,c)
  %6732 = fadd fast float %6731, %6726
  %6733 = fmul fast float %6727, -7.500000e-01
  %6734 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6728, float %6733)  ; FMad(a,b,c)
  %6735 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6724, float 0.000000e+00)  ; FMad(a,b,c)
  %6736 = fadd fast float %6735, %6726
  %6737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6738 = extractvalue %dx.types.CBufRet.f32 %6737, 0
  %6739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6740 = extractvalue %dx.types.CBufRet.f32 %6739, 0
  %6741 = extractvalue %dx.types.CBufRet.f32 %6739, 1
  %6742 = extractvalue %dx.types.CBufRet.f32 %6739, 2
  %6743 = extractvalue %dx.types.CBufRet.f32 %6739, 3
  %6744 = fsub fast float %6740, %6730
  %6745 = fsub fast float %6741, %6732
  %6746 = fsub fast float %6742, %6734
  %6747 = fsub fast float %6743, %6736
  %6748 = fmul fast float %6744, %6738
  %6749 = fmul fast float %6745, %6738
  %6750 = fmul fast float %6746, %6738
  %6751 = fmul fast float %6747, %6738
  %6752 = fadd fast float %6748, %6730
  %6753 = fadd fast float %6749, %6732
  %6754 = fadd fast float %6750, %6734
  %6755 = fadd fast float %6751, %6736
  %6756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6757 = extractvalue %dx.types.ResRet.i32 %6756, 0
  %6758 = and i32 %6757, 536870911
  %6759 = uitofp i32 %6758 to float
  %6760 = fmul fast float %6759, %6606
  %6761 = fmul fast float %6759, %6610
  %6762 = fptoui float %6760 to i32
  %6763 = fptoui float %6761 to i32
  %6764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6765 = extractvalue %dx.types.ResRet.i32 %6764, 0
  %6766 = and i32 %6765, 31
  %6767 = lshr i32 %6762, %6766
  %6768 = lshr i32 %6763, %6766
  %6769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6770 = extractvalue %dx.types.ResRet.i32 %6769, 0
  %6771 = and i32 %6770, 31
  %6772 = shl i32 1, %6771
  %6773 = call i32 @dx.op.binary.i32(i32 40, i32 %6772, i32 4)  ; UMin(a,b)
  %6774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6775 = extractvalue %dx.types.ResRet.i32 %6774, 0
  %6776 = extractvalue %dx.types.ResRet.i32 %6774, 1
  %6777 = icmp eq i32 %6773, 0
  br i1 %6777, label %6819, label %6778

; <label>:6778                                    ; preds = %6722
  br label %6779

; <label>:6779                                    ; preds = %6807, %6778
  %6780 = phi i32 [ %6810, %6807 ], [ 0, %6778 ]
  %6781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6782 = extractvalue %dx.types.ResRet.i32 %6781, 0
  %6783 = lshr i32 %6782, 16
  %6784 = and i32 %6783, 31
  %6785 = shl i32 %6768, %6784
  %6786 = add i32 %6785, %6767
  %6787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6788 = extractvalue %dx.types.ResRet.i32 %6787, 0
  %6789 = and i32 %6788, 31
  %6790 = shl i32 %6786, %6789
  %6791 = add i32 %6790, %6780
  %6792 = shl i32 %6791, 2
  %6793 = add i32 %6792, 32
  %6794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6793, i32 undef)  ; BufferLoad(srv,index,wot)
  %6795 = extractvalue %dx.types.ResRet.i32 %6794, 0
  %6796 = icmp slt i32 %6795, 0
  %6797 = getelementptr [12 x float], [12 x float]* %107, i32 0, i32 %6780
  %6798 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6780
  %6799 = bitcast float* %6797 to i32*
  %6800 = bitcast float* %6798 to i32*
  br i1 %6796, label %6801, label %6807

; <label>:6801                                    ; preds = %6779
  %6802 = and i32 %6795, 1073741823
  %6803 = add nuw nsw i32 %6802, 20
  %6804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6803, i32 undef)  ; BufferLoad(srv,index,wot)
  %6805 = extractvalue %dx.types.ResRet.i32 %6804, 0
  %6806 = extractvalue %dx.types.ResRet.i32 %6804, 1
  br label %6807

; <label>:6807                                    ; preds = %6801, %6779
  %6808 = phi i32 [ %6805, %6801 ], [ %6775, %6779 ]
  %6809 = phi i32 [ %6806, %6801 ], [ %6776, %6779 ]
  store i32 %6808, i32* %6799, align 4
  store i32 %6809, i32* %6800, align 4
  %6810 = add nuw i32 %6780, 1
  %6811 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6812 = extractvalue %dx.types.CBufRet.i32 %6811, 2
  %6813 = icmp eq i32 %6812, 0
  %6814 = icmp ugt i32 %6795, -1073741825
  %6815 = and i1 %6814, %6813
  %6816 = icmp ult i32 %6810, %6773
  %6817 = and i1 %6815, %6816
  br i1 %6817, label %6779, label %6818

; <label>:6818                                    ; preds = %6807
  br label %6819

; <label>:6819                                    ; preds = %6818, %6722
  %6820 = phi i32 [ 0, %6722 ], [ %6810, %6818 ]
  %6821 = extractvalue %dx.types.CBufRet.f32 %6584, 2
  %6822 = fptoui float %6821 to i32
  %6823 = icmp eq i32 %6822, 0
  br i1 %6823, label %6875, label %6824

; <label>:6824                                    ; preds = %6819
  br label %6825

; <label>:6825                                    ; preds = %6870, %6824
  %6826 = phi i32 [ %6871, %6870 ], [ %6820, %6824 ]
  %6827 = phi i32 [ %6872, %6870 ], [ 0, %6824 ]
  %6828 = lshr i32 %6827, 2
  %6829 = and i32 %6827, 3
  %6830 = add nuw nsw i32 %6828, 83
  %6831 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %6830)  ; CBufferLoadLegacy(handle,regIndex)
  %6832 = extractvalue %dx.types.CBufRet.i32 %6831, 0
  %6833 = extractvalue %dx.types.CBufRet.i32 %6831, 1
  %6834 = extractvalue %dx.types.CBufRet.i32 %6831, 2
  %6835 = extractvalue %dx.types.CBufRet.i32 %6831, 3
  %6836 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %6832, i32* %6836, align 4
  %6837 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %6833, i32* %6837, align 4
  %6838 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %6834, i32* %6838, align 4
  %6839 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %6835, i32* %6839, align 4
  %6840 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %6829
  %6841 = load i32, i32* %6840, align 4, !tbaa !111, !noalias !115
  %6842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6843 = extractvalue %dx.types.ResRet.i32 %6842, 0
  %6844 = lshr i32 %6843, 16
  %6845 = and i32 %6844, 31
  %6846 = shl i32 %6768, %6845
  %6847 = add i32 %6846, %6767
  %6848 = shl i32 %6847, 2
  %6849 = add i32 %6848, %6841
  %6850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6849, i32 undef)  ; BufferLoad(srv,index,wot)
  %6851 = extractvalue %dx.types.ResRet.i32 %6850, 0
  %6852 = icmp eq i32 %6851, 0
  br i1 %6852, label %6870, label %6853

; <label>:6853                                    ; preds = %6825
  %6854 = icmp slt i32 %6851, 0
  %6855 = getelementptr [12 x float], [12 x float]* %107, i32 0, i32 %6826
  %6856 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6826
  %6857 = bitcast float* %6855 to i32*
  %6858 = bitcast float* %6856 to i32*
  br i1 %6854, label %6859, label %6866

; <label>:6859                                    ; preds = %6853
  %6860 = and i32 %6851, 1073741823
  %6861 = add i32 %6841, 20
  %6862 = add i32 %6861, %6860
  %6863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6862, i32 undef)  ; BufferLoad(srv,index,wot)
  %6864 = extractvalue %dx.types.ResRet.i32 %6863, 0
  %6865 = extractvalue %dx.types.ResRet.i32 %6863, 1
  br label %6866

; <label>:6866                                    ; preds = %6859, %6853
  %6867 = phi i32 [ %6864, %6859 ], [ %6775, %6853 ]
  %6868 = phi i32 [ %6865, %6859 ], [ %6776, %6853 ]
  store i32 %6867, i32* %6857, align 4
  store i32 %6868, i32* %6858, align 4
  %6869 = add i32 %6826, 1
  br label %6870

; <label>:6870                                    ; preds = %6866, %6825
  %6871 = phi i32 [ %6826, %6825 ], [ %6869, %6866 ]
  %6872 = add nuw i32 %6827, 1
  %6873 = icmp eq i32 %6872, %6822
  br i1 %6873, label %6874, label %6825

; <label>:6874                                    ; preds = %6870
  br label %6875

; <label>:6875                                    ; preds = %6874, %6819
  %6876 = phi i32 [ %6820, %6819 ], [ %6871, %6874 ]
  %6877 = icmp eq i32 %6876, 1
  %6878 = getelementptr [12 x float], [12 x float]* %107, i32 0, i32 0
  %6879 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 0
  br i1 %6877, label %6880, label %6883

; <label>:6880                                    ; preds = %6875
  %6881 = load float, float* %6878, align 4
  %6882 = load float, float* %6879, align 4
  br label %6910

; <label>:6883                                    ; preds = %6875
  %6884 = load float, float* %6878, align 4
  %6885 = load float, float* %6879, align 4
  %6886 = fdiv fast float 1.000000e+00, %6885
  %6887 = fsub fast float %6884, %6886
  %6888 = icmp ugt i32 %6876, 1
  br i1 %6888, label %6889, label %6905

; <label>:6889                                    ; preds = %6883
  br label %6890

; <label>:6890                                    ; preds = %6890, %6889
  %6891 = phi float [ %6900, %6890 ], [ %6887, %6889 ]
  %6892 = phi float [ %6901, %6890 ], [ %6884, %6889 ]
  %6893 = phi i32 [ %6902, %6890 ], [ 1, %6889 ]
  %6894 = getelementptr [12 x float], [12 x float]* %107, i32 0, i32 %6893
  %6895 = load float, float* %6894, align 4
  %6896 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6893
  %6897 = load float, float* %6896, align 4
  %6898 = fdiv fast float 1.000000e+00, %6897
  %6899 = fsub fast float %6895, %6898
  %6900 = call float @dx.op.binary.f32(i32 36, float %6891, float %6899)  ; FMin(a,b)
  %6901 = call float @dx.op.binary.f32(i32 35, float %6892, float %6895)  ; FMax(a,b)
  %6902 = add nuw i32 %6893, 1
  %6903 = icmp eq i32 %6902, %6876
  br i1 %6903, label %6904, label %6890

; <label>:6904                                    ; preds = %6890
  br label %6905

; <label>:6905                                    ; preds = %6904, %6883
  %6906 = phi float [ %6887, %6883 ], [ %6900, %6904 ]
  %6907 = phi float [ %6884, %6883 ], [ %6901, %6904 ]
  %6908 = fsub fast float %6907, %6906
  %6909 = fdiv fast float 1.000000e+00, %6908
  br label %6910

; <label>:6910                                    ; preds = %6905, %6880
  %6911 = phi float [ %6881, %6880 ], [ %6907, %6905 ]
  %6912 = phi float [ %6882, %6880 ], [ %6909, %6905 ]
  %6913 = fadd fast float %6614, %6911
  %6914 = fmul fast float %6913, %6912
  %6915 = call float @dx.op.unary.f32(i32 7, float %6914)  ; Saturate(value)
  %6916 = fmul fast float %6915, 2.000000e+00
  %6917 = fsub fast float 1.000000e+00, %6916
  %6918 = fmul fast float %6752, %6752
  %6919 = fsub fast float %6753, %6918
  %6920 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6919)  ; FMax(a,b)
  %6921 = fdiv fast float 1.000000e+00, %6920
  %6922 = fmul fast float %6753, %6752
  %6923 = fsub fast float %6754, %6922
  %6924 = fsub fast float %6917, %6752
  %6925 = fmul fast float %6917, %6917
  %6926 = fsub fast float %6925, %6753
  %6927 = fmul fast float %6921, %6923
  %6928 = fmul fast float %6927, %6924
  %6929 = fsub fast float %6926, %6928
  %6930 = fmul fast float %6753, %6753
  %6931 = fsub fast float %6755, %6930
  %6932 = fmul fast float %6923, %6923
  %6933 = fmul fast float %6932, %6921
  %6934 = fsub fast float %6931, %6933
  %6935 = fdiv fast float %6929, %6934
  %6936 = fmul fast float %6935, %6923
  %6937 = fsub fast float %6924, %6936
  %6938 = fmul fast float %6937, %6921
  %6939 = fmul fast float %6938, %6752
  %6940 = fsub fast float 1.000000e+00, %6939
  %6941 = fmul fast float %6935, %6753
  %6942 = fsub fast float %6940, %6941
  %6943 = fmul fast float %6938, %6938
  %6944 = fmul fast float %6935, 4.000000e+00
  %6945 = fmul fast float %6944, %6942
  %6946 = fsub fast float %6943, %6945
  %6947 = call float @dx.op.unary.f32(i32 24, float %6946)  ; Sqrt(value)
  %6948 = fcmp fast oge float %6938, 0.000000e+00
  %6949 = fsub fast float -0.000000e+00, %6947
  %6950 = select i1 %6948, float %6949, float %6947
  %6951 = fsub fast float %6950, %6938
  %6952 = fdiv fast float %6951, %6935
  %6953 = fdiv fast float %6942, %6951
  %6954 = fmul fast float %6952, 5.000000e-01
  %6955 = fmul fast float %6953, 2.000000e+00
  %6956 = select i1 %6948, float %6954, float %6955
  %6957 = select i1 %6948, float %6955, float %6954
  %6958 = call float @dx.op.binary.f32(i32 35, float %6956, float %6957)  ; FMax(a,b)
  %6959 = call float @dx.op.binary.f32(i32 36, float %6956, float %6957)  ; FMin(a,b)
  %6960 = fcmp fast ogt float %6917, %6958
  %6961 = fsub fast float %6917, %6959
  %6962 = fsub fast float %6917, %6958
  %6963 = fsub fast float %6958, %6959
  %6964 = select i1 %6960, float %6962, float %6963
  %6965 = fmul float %6961, %6964
  %6966 = select i1 %6960, float %6959, float %6917
  %6967 = fcmp fast ogt float %6917, %6959
  %6968 = fmul fast float %6966, %6958
  %6969 = fadd fast float %6966, %6958
  %6970 = fmul fast float %6969, %6752
  %6971 = fadd fast float %6968, %6753
  %6972 = fsub fast float %6971, %6970
  %6973 = fdiv fast float %6972, %6965
  %6974 = select i1 %6967, float %6973, float 0.000000e+00
  %6975 = fsub fast float 1.000000e+00, %6974
  %6976 = select i1 %6960, float %6975, float %6974
  %6977 = call float @dx.op.unary.f32(i32 7, float %6976)  ; Saturate(value)
  %6978 = extractvalue %dx.types.CBufRet.f32 %6737, 3
  %6979 = fmul fast float %6978, %6977
  %6980 = fsub fast float 1.000000e+00, %6979
  br label %6981

; <label>:6981                                    ; preds = %6910, %6622, %6587, %6583, %6547
  %6982 = phi float [ 1.000000e+00, %6547 ], [ %6980, %6910 ], [ 1.000000e+00, %6587 ], [ 1.000000e+00, %6622 ], [ 1.000000e+00, %6583 ]
  %6983 = fcmp fast ogt float %6579, 0.000000e+00
  br i1 %6983, label %6984, label %7148, !dx.controlflow.hints !124

; <label>:6984                                    ; preds = %6981
  %6985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6986 = extractvalue %dx.types.CBufRet.f32 %6985, 2
  %6987 = fadd fast float %6986, %6460
  %6988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6989 = extractvalue %dx.types.CBufRet.f32 %6988, 2
  %6990 = extractvalue %dx.types.CBufRet.f32 %6988, 3
  %6991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6992 = extractvalue %dx.types.CBufRet.f32 %6991, 2
  %6993 = call float @dx.op.binary.f32(i32 35, float %6987, float 0.000000e+00)  ; FMax(a,b)
  %6994 = fadd fast float %6993, 0x3F10000000000000
  %6995 = fcmp fast oeq float %6992, 0.000000e+00
  br i1 %6995, label %6996, label %7063

; <label>:6996                                    ; preds = %6984
  %6997 = extractvalue %dx.types.CBufRet.f32 %6988, 1
  %6998 = extractvalue %dx.types.CBufRet.f32 %6988, 0
  %6999 = fmul fast float %6998, %6478
  %7000 = fmul fast float %6997, %6479
  %7001 = fadd fast float %6999, 5.000000e-01
  %7002 = call float @dx.op.unary.f32(i32 27, float %7001)  ; Round_ni(value)
  %7003 = fadd fast float %7000, 5.000000e-01
  %7004 = call float @dx.op.unary.f32(i32 27, float %7003)  ; Round_ni(value)
  %7005 = fsub fast float %7001, %7002
  %7006 = fsub fast float %7003, %7004
  %7007 = fadd fast float %7002, -5.000000e-01
  %7008 = fadd fast float %7004, -5.000000e-01
  %7009 = fmul fast float %7005, 2.000000e+00
  %7010 = fsub fast float 3.000000e+00, %7009
  %7011 = fadd fast float %7009, 1.000000e+00
  %7012 = fsub fast float 2.000000e+00, %7005
  %7013 = bitcast float %7010 to i32
  %7014 = sub nsw i32 2129859010, %7013
  %7015 = bitcast i32 %7014 to float
  %7016 = fmul fast float %7015, %7012
  %7017 = fadd fast float %7016, -1.000000e+00
  %7018 = bitcast float %7011 to i32
  %7019 = sub nsw i32 2129859010, %7018
  %7020 = bitcast i32 %7019 to float
  %7021 = fmul fast float %7020, %7005
  %7022 = fadd fast float %7021, 1.000000e+00
  %7023 = fmul fast float %7006, 2.000000e+00
  %7024 = fsub fast float 3.000000e+00, %7023
  %7025 = fadd fast float %7023, 1.000000e+00
  %7026 = fsub fast float 2.000000e+00, %7006
  %7027 = bitcast float %7024 to i32
  %7028 = sub nsw i32 2129859010, %7027
  %7029 = bitcast i32 %7028 to float
  %7030 = fmul fast float %7029, %7026
  %7031 = fadd fast float %7030, -1.000000e+00
  %7032 = bitcast float %7025 to i32
  %7033 = sub nsw i32 2129859010, %7032
  %7034 = bitcast i32 %7033 to float
  %7035 = fmul fast float %7034, %7006
  %7036 = fadd fast float %7035, 1.000000e+00
  %7037 = fadd fast float %7017, %7007
  %7038 = fmul fast float %7037, %6989
  %7039 = fadd fast float %7031, %7008
  %7040 = fmul fast float %7039, %6990
  %7041 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7038, float %7040, float undef, float undef, i32 0, i32 0, i32 undef, float %6994)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7042 = extractvalue %dx.types.ResRet.f32 %7041, 0
  %7043 = fmul fast float %7042, %7010
  %7044 = fadd fast float %7022, %7007
  %7045 = fmul fast float %7044, %6989
  %7046 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7045, float %7040, float undef, float undef, i32 0, i32 0, i32 undef, float %6994)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7047 = extractvalue %dx.types.ResRet.f32 %7046, 0
  %7048 = fmul fast float %7047, %7011
  %7049 = fadd fast float %7036, %7008
  %7050 = fmul fast float %7049, %6990
  %7051 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7038, float %7050, float undef, float undef, i32 0, i32 0, i32 undef, float %6994)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7052 = extractvalue %dx.types.ResRet.f32 %7051, 0
  %7053 = fmul fast float %7052, %7010
  %7054 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7045, float %7050, float undef, float undef, i32 0, i32 0, i32 undef, float %6994)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7055 = extractvalue %dx.types.ResRet.f32 %7054, 0
  %7056 = fmul fast float %7055, %7011
  %7057 = fadd fast float %7056, %7053
  %7058 = fmul fast float %7057, %7025
  %7059 = fadd fast float %7048, %7043
  %7060 = fmul fast float %7059, %7024
  %7061 = fadd fast float %7060, %7058
  %7062 = fmul fast float %7061, 6.250000e-02
  br label %7148

; <label>:7063                                    ; preds = %6984
  %7064 = fmul fast float %300, 0x401921FB60000000
  %7065 = call float @dx.op.unary.f32(i32 13, float %7064)  ; Sin(value)
  %7066 = call float @dx.op.unary.f32(i32 12, float %7064)  ; Cos(value)
  %7067 = fsub fast float -0.000000e+00, %7065
  br label %7068

; <label>:7068                                    ; preds = %7117, %7063
  %7069 = phi float [ 0.000000e+00, %7063 ], [ %7112, %7117 ]
  %7070 = phi float [ 0.000000e+00, %7063 ], [ %7114, %7117 ]
  %7071 = phi i32 [ 0, %7063 ], [ %7118, %7117 ]
  %7072 = mul i32 %7071, 2
  %7073 = add i32 0, %7072
  %7074 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7073
  %7075 = load float, float* %7074, align 4
  %7076 = mul i32 %7071, 2
  %7077 = add i32 1, %7076
  %7078 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7077
  %7079 = load float, float* %7078, align 4
  %7080 = fmul fast float %7075, %7066
  %7081 = call float @dx.op.tertiary.f32(i32 46, float %7079, float %7067, float %7080)  ; FMad(a,b,c)
  %7082 = fmul fast float %7075, %7065
  %7083 = call float @dx.op.tertiary.f32(i32 46, float %7079, float %7066, float %7082)  ; FMad(a,b,c)
  %7084 = fmul fast float %7081, %6992
  %7085 = fmul fast float %7083, %6992
  %7086 = fadd fast float %7084, %6478
  %7087 = fadd fast float %7085, %6479
  %7088 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %7086, float %7087, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7089 = extractvalue %dx.types.ResRet.f32 %7088, 0
  %7090 = extractvalue %dx.types.ResRet.f32 %7088, 1
  %7091 = extractvalue %dx.types.ResRet.f32 %7088, 2
  %7092 = extractvalue %dx.types.ResRet.f32 %7088, 3
  %7093 = getelementptr inbounds [4 x float], [4 x float]* %112, i32 0, i32 0
  store float %7089, float* %7093, align 4
  %7094 = getelementptr inbounds [4 x float], [4 x float]* %112, i32 0, i32 1
  store float %7090, float* %7094, align 4
  %7095 = getelementptr inbounds [4 x float], [4 x float]* %112, i32 0, i32 2
  store float %7091, float* %7095, align 4
  %7096 = getelementptr inbounds [4 x float], [4 x float]* %112, i32 0, i32 3
  store float %7092, float* %7096, align 4
  %7097 = fsub fast float %7089, %6994
  %7098 = fcmp fast olt float %7097, 0.000000e+00
  %7099 = select i1 %7098, float 0.000000e+00, float 1.000000e+00
  %7100 = fadd fast float %7099, %7069
  %7101 = fmul fast float %7099, %7097
  %7102 = fadd fast float %7101, %7070
  br label %7103

; <label>:7103                                    ; preds = %7103, %7068
  %7104 = phi i32 [ 1, %7068 ], [ %7115, %7103 ]
  %7105 = phi float [ %7102, %7068 ], [ %7114, %7103 ]
  %7106 = phi float [ %7100, %7068 ], [ %7112, %7103 ]
  %7107 = getelementptr [4 x float], [4 x float]* %112, i32 0, i32 %7104
  %7108 = load float, float* %7107, align 4, !tbaa !125, !noalias !115
  %7109 = fsub fast float %7108, %6994
  %7110 = fcmp fast olt float %7109, 0.000000e+00
  %7111 = select i1 %7110, float 0.000000e+00, float 1.000000e+00
  %7112 = fadd fast float %7111, %7106
  %7113 = fmul fast float %7111, %7109
  %7114 = fadd fast float %7113, %7105
  %7115 = add nuw nsw i32 %7104, 1
  %7116 = icmp eq i32 %7115, 4
  br i1 %7116, label %7117, label %7103, !llvm.loop !127

; <label>:7117                                    ; preds = %7103
  %7118 = add nuw nsw i32 %7071, 1
  %7119 = icmp eq i32 %7118, 8
  br i1 %7119, label %7120, label %7068, !llvm.loop !128

; <label>:7120                                    ; preds = %7117
  %7121 = fdiv fast float 1.000000e+00, %7112
  %7122 = fmul fast float %7121, %7114
  %7123 = fdiv fast float 1.000000e+00, %6994
  %7124 = fmul fast float %7122, %7123
  %7125 = call float @dx.op.unary.f32(i32 7, float %7124)  ; Saturate(value)
  %7126 = call float @dx.op.binary.f32(i32 35, float %7125, float 0.000000e+00)  ; FMax(a,b)
  %7127 = fmul fast float %7112, 3.125000e-02
  %7128 = call float @dx.op.unary.f32(i32 7, float %7127)  ; Saturate(value)
  %7129 = fmul fast float %7128, 2.000000e+00
  %7130 = fadd fast float %7129, -1.000000e+00
  %7131 = fcmp fast ogt float %7130, 0.000000e+00
  %7132 = fcmp fast olt float %7130, 0.000000e+00
  %7133 = zext i1 %7131 to i32
  %7134 = zext i1 %7132 to i32
  %7135 = sub nsw i32 %7133, %7134
  %7136 = sitofp i32 %7135 to float
  %7137 = fmul fast float %7136, %7130
  %7138 = fsub fast float 1.000000e+00, %7137
  %7139 = fmul fast float %7138, %7138
  %7140 = fmul fast float %7139, %7138
  %7141 = fsub fast float %7138, %7140
  %7142 = fmul fast float %7141, %7126
  %7143 = fsub fast float 1.000000e+00, %7140
  %7144 = fsub fast float %7143, %7142
  %7145 = fmul fast float %7136, 5.000000e-01
  %7146 = fmul fast float %7145, %7144
  %7147 = fsub fast float 5.000000e-01, %7146
  br label %7148

; <label>:7148                                    ; preds = %7120, %6996, %6981
  %7149 = phi float [ 1.000000e+00, %6981 ], [ %7062, %6996 ], [ %7147, %7120 ]
  %7150 = fcmp fast ogt float %6577, 0.000000e+00
  br i1 %7150, label %7151, label %7315, !dx.controlflow.hints !129

; <label>:7151                                    ; preds = %7148
  %7152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7153 = extractvalue %dx.types.CBufRet.f32 %7152, 1
  %7154 = fadd fast float %7153, %6460
  %7155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7156 = extractvalue %dx.types.CBufRet.f32 %7155, 2
  %7157 = extractvalue %dx.types.CBufRet.f32 %7155, 3
  %7158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7159 = extractvalue %dx.types.CBufRet.f32 %7158, 1
  %7160 = call float @dx.op.binary.f32(i32 35, float %7154, float 0.000000e+00)  ; FMax(a,b)
  %7161 = fadd fast float %7160, 0x3F10000000000000
  %7162 = fcmp fast oeq float %7159, 0.000000e+00
  br i1 %7162, label %7163, label %7230

; <label>:7163                                    ; preds = %7151
  %7164 = extractvalue %dx.types.CBufRet.f32 %7155, 1
  %7165 = extractvalue %dx.types.CBufRet.f32 %7155, 0
  %7166 = fmul fast float %7165, %6470
  %7167 = fmul fast float %7164, %6471
  %7168 = fadd fast float %7166, 5.000000e-01
  %7169 = call float @dx.op.unary.f32(i32 27, float %7168)  ; Round_ni(value)
  %7170 = fadd fast float %7167, 5.000000e-01
  %7171 = call float @dx.op.unary.f32(i32 27, float %7170)  ; Round_ni(value)
  %7172 = fsub fast float %7168, %7169
  %7173 = fsub fast float %7170, %7171
  %7174 = fadd fast float %7169, -5.000000e-01
  %7175 = fadd fast float %7171, -5.000000e-01
  %7176 = fmul fast float %7172, 2.000000e+00
  %7177 = fsub fast float 3.000000e+00, %7176
  %7178 = fadd fast float %7176, 1.000000e+00
  %7179 = fsub fast float 2.000000e+00, %7172
  %7180 = bitcast float %7177 to i32
  %7181 = sub nsw i32 2129859010, %7180
  %7182 = bitcast i32 %7181 to float
  %7183 = fmul fast float %7182, %7179
  %7184 = fadd fast float %7183, -1.000000e+00
  %7185 = bitcast float %7178 to i32
  %7186 = sub nsw i32 2129859010, %7185
  %7187 = bitcast i32 %7186 to float
  %7188 = fmul fast float %7187, %7172
  %7189 = fadd fast float %7188, 1.000000e+00
  %7190 = fmul fast float %7173, 2.000000e+00
  %7191 = fsub fast float 3.000000e+00, %7190
  %7192 = fadd fast float %7190, 1.000000e+00
  %7193 = fsub fast float 2.000000e+00, %7173
  %7194 = bitcast float %7191 to i32
  %7195 = sub nsw i32 2129859010, %7194
  %7196 = bitcast i32 %7195 to float
  %7197 = fmul fast float %7196, %7193
  %7198 = fadd fast float %7197, -1.000000e+00
  %7199 = bitcast float %7192 to i32
  %7200 = sub nsw i32 2129859010, %7199
  %7201 = bitcast i32 %7200 to float
  %7202 = fmul fast float %7201, %7173
  %7203 = fadd fast float %7202, 1.000000e+00
  %7204 = fadd fast float %7184, %7174
  %7205 = fmul fast float %7204, %7156
  %7206 = fadd fast float %7198, %7175
  %7207 = fmul fast float %7206, %7157
  %7208 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7205, float %7207, float undef, float undef, i32 0, i32 0, i32 undef, float %7161)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7209 = extractvalue %dx.types.ResRet.f32 %7208, 0
  %7210 = fmul fast float %7209, %7177
  %7211 = fadd fast float %7189, %7174
  %7212 = fmul fast float %7211, %7156
  %7213 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7212, float %7207, float undef, float undef, i32 0, i32 0, i32 undef, float %7161)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7214 = extractvalue %dx.types.ResRet.f32 %7213, 0
  %7215 = fmul fast float %7214, %7178
  %7216 = fadd fast float %7203, %7175
  %7217 = fmul fast float %7216, %7157
  %7218 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7205, float %7217, float undef, float undef, i32 0, i32 0, i32 undef, float %7161)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7219 = extractvalue %dx.types.ResRet.f32 %7218, 0
  %7220 = fmul fast float %7219, %7177
  %7221 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7212, float %7217, float undef, float undef, i32 0, i32 0, i32 undef, float %7161)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7222 = extractvalue %dx.types.ResRet.f32 %7221, 0
  %7223 = fmul fast float %7222, %7178
  %7224 = fadd fast float %7223, %7220
  %7225 = fmul fast float %7224, %7192
  %7226 = fadd fast float %7215, %7210
  %7227 = fmul fast float %7226, %7191
  %7228 = fadd fast float %7227, %7225
  %7229 = fmul fast float %7228, 6.250000e-02
  br label %7315

; <label>:7230                                    ; preds = %7151
  %7231 = fmul fast float %300, 0x401921FB60000000
  %7232 = call float @dx.op.unary.f32(i32 13, float %7231)  ; Sin(value)
  %7233 = call float @dx.op.unary.f32(i32 12, float %7231)  ; Cos(value)
  %7234 = fsub fast float -0.000000e+00, %7232
  br label %7235

; <label>:7235                                    ; preds = %7284, %7230
  %7236 = phi float [ 0.000000e+00, %7230 ], [ %7279, %7284 ]
  %7237 = phi float [ 0.000000e+00, %7230 ], [ %7281, %7284 ]
  %7238 = phi i32 [ 0, %7230 ], [ %7285, %7284 ]
  %7239 = mul i32 %7238, 2
  %7240 = add i32 0, %7239
  %7241 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7240
  %7242 = load float, float* %7241, align 4
  %7243 = mul i32 %7238, 2
  %7244 = add i32 1, %7243
  %7245 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7244
  %7246 = load float, float* %7245, align 4
  %7247 = fmul fast float %7242, %7233
  %7248 = call float @dx.op.tertiary.f32(i32 46, float %7246, float %7234, float %7247)  ; FMad(a,b,c)
  %7249 = fmul fast float %7242, %7232
  %7250 = call float @dx.op.tertiary.f32(i32 46, float %7246, float %7233, float %7249)  ; FMad(a,b,c)
  %7251 = fmul fast float %7248, %7159
  %7252 = fmul fast float %7250, %7159
  %7253 = fadd fast float %7251, %6470
  %7254 = fadd fast float %7252, %6471
  %7255 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %7253, float %7254, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7256 = extractvalue %dx.types.ResRet.f32 %7255, 0
  %7257 = extractvalue %dx.types.ResRet.f32 %7255, 1
  %7258 = extractvalue %dx.types.ResRet.f32 %7255, 2
  %7259 = extractvalue %dx.types.ResRet.f32 %7255, 3
  %7260 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 0
  store float %7256, float* %7260, align 4
  %7261 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 1
  store float %7257, float* %7261, align 4
  %7262 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 2
  store float %7258, float* %7262, align 4
  %7263 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 3
  store float %7259, float* %7263, align 4
  %7264 = fsub fast float %7256, %7161
  %7265 = fcmp fast olt float %7264, 0.000000e+00
  %7266 = select i1 %7265, float 0.000000e+00, float 1.000000e+00
  %7267 = fadd fast float %7266, %7236
  %7268 = fmul fast float %7266, %7264
  %7269 = fadd fast float %7268, %7237
  br label %7270

; <label>:7270                                    ; preds = %7270, %7235
  %7271 = phi i32 [ 1, %7235 ], [ %7282, %7270 ]
  %7272 = phi float [ %7269, %7235 ], [ %7281, %7270 ]
  %7273 = phi float [ %7267, %7235 ], [ %7279, %7270 ]
  %7274 = getelementptr [4 x float], [4 x float]* %111, i32 0, i32 %7271
  %7275 = load float, float* %7274, align 4, !tbaa !125, !noalias !115
  %7276 = fsub fast float %7275, %7161
  %7277 = fcmp fast olt float %7276, 0.000000e+00
  %7278 = select i1 %7277, float 0.000000e+00, float 1.000000e+00
  %7279 = fadd fast float %7278, %7273
  %7280 = fmul fast float %7278, %7276
  %7281 = fadd fast float %7280, %7272
  %7282 = add nuw nsw i32 %7271, 1
  %7283 = icmp eq i32 %7282, 4
  br i1 %7283, label %7284, label %7270, !llvm.loop !127

; <label>:7284                                    ; preds = %7270
  %7285 = add nuw nsw i32 %7238, 1
  %7286 = icmp eq i32 %7285, 8
  br i1 %7286, label %7287, label %7235, !llvm.loop !128

; <label>:7287                                    ; preds = %7284
  %7288 = fdiv fast float 1.000000e+00, %7279
  %7289 = fmul fast float %7288, %7281
  %7290 = fdiv fast float 1.000000e+00, %7161
  %7291 = fmul fast float %7289, %7290
  %7292 = call float @dx.op.unary.f32(i32 7, float %7291)  ; Saturate(value)
  %7293 = call float @dx.op.binary.f32(i32 35, float %7292, float 0.000000e+00)  ; FMax(a,b)
  %7294 = fmul fast float %7279, 3.125000e-02
  %7295 = call float @dx.op.unary.f32(i32 7, float %7294)  ; Saturate(value)
  %7296 = fmul fast float %7295, 2.000000e+00
  %7297 = fadd fast float %7296, -1.000000e+00
  %7298 = fcmp fast ogt float %7297, 0.000000e+00
  %7299 = fcmp fast olt float %7297, 0.000000e+00
  %7300 = zext i1 %7298 to i32
  %7301 = zext i1 %7299 to i32
  %7302 = sub nsw i32 %7300, %7301
  %7303 = sitofp i32 %7302 to float
  %7304 = fmul fast float %7303, %7297
  %7305 = fsub fast float 1.000000e+00, %7304
  %7306 = fmul fast float %7305, %7305
  %7307 = fmul fast float %7306, %7305
  %7308 = fsub fast float %7305, %7307
  %7309 = fmul fast float %7308, %7293
  %7310 = fsub fast float 1.000000e+00, %7307
  %7311 = fsub fast float %7310, %7309
  %7312 = fmul fast float %7303, 5.000000e-01
  %7313 = fmul fast float %7312, %7311
  %7314 = fsub fast float 5.000000e-01, %7313
  br label %7315

; <label>:7315                                    ; preds = %7287, %7163, %7148
  %7316 = phi float [ 1.000000e+00, %7148 ], [ %7229, %7163 ], [ %7314, %7287 ]
  %7317 = fcmp fast ogt float %6576, 0.000000e+00
  br i1 %7317, label %7318, label %7636, !dx.controlflow.hints !130

; <label>:7318                                    ; preds = %7315
  %7319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7320 = extractvalue %dx.types.CBufRet.f32 %7319, 0
  %7321 = fadd fast float %7320, %6460
  %7322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7323 = extractvalue %dx.types.CBufRet.f32 %7322, 2
  %7324 = extractvalue %dx.types.CBufRet.f32 %7322, 3
  %7325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7326 = extractvalue %dx.types.CBufRet.f32 %7325, 0
  %7327 = call float @dx.op.binary.f32(i32 35, float %7321, float 0.000000e+00)  ; FMax(a,b)
  %7328 = fadd fast float %7327, 0x3F10000000000000
  %7329 = fcmp fast oeq float %7326, 0.000000e+00
  br i1 %6463, label %7330, label %7483, !dx.controlflow.hints !131

; <label>:7330                                    ; preds = %7318
  br i1 %7329, label %7331, label %7398

; <label>:7331                                    ; preds = %7330
  %7332 = extractvalue %dx.types.CBufRet.f32 %7322, 1
  %7333 = extractvalue %dx.types.CBufRet.f32 %7322, 0
  %7334 = fmul fast float %7333, %6452
  %7335 = fmul fast float %7332, %6456
  %7336 = fadd fast float %7334, 5.000000e-01
  %7337 = call float @dx.op.unary.f32(i32 27, float %7336)  ; Round_ni(value)
  %7338 = fadd fast float %7335, 5.000000e-01
  %7339 = call float @dx.op.unary.f32(i32 27, float %7338)  ; Round_ni(value)
  %7340 = fsub fast float %7336, %7337
  %7341 = fsub fast float %7338, %7339
  %7342 = fadd fast float %7337, -5.000000e-01
  %7343 = fadd fast float %7339, -5.000000e-01
  %7344 = fmul fast float %7340, 2.000000e+00
  %7345 = fsub fast float 3.000000e+00, %7344
  %7346 = fadd fast float %7344, 1.000000e+00
  %7347 = fsub fast float 2.000000e+00, %7340
  %7348 = bitcast float %7345 to i32
  %7349 = sub nsw i32 2129859010, %7348
  %7350 = bitcast i32 %7349 to float
  %7351 = fmul fast float %7350, %7347
  %7352 = fadd fast float %7351, -1.000000e+00
  %7353 = bitcast float %7346 to i32
  %7354 = sub nsw i32 2129859010, %7353
  %7355 = bitcast i32 %7354 to float
  %7356 = fmul fast float %7355, %7340
  %7357 = fadd fast float %7356, 1.000000e+00
  %7358 = fmul fast float %7341, 2.000000e+00
  %7359 = fsub fast float 3.000000e+00, %7358
  %7360 = fadd fast float %7358, 1.000000e+00
  %7361 = fsub fast float 2.000000e+00, %7341
  %7362 = bitcast float %7359 to i32
  %7363 = sub nsw i32 2129859010, %7362
  %7364 = bitcast i32 %7363 to float
  %7365 = fmul fast float %7364, %7361
  %7366 = fadd fast float %7365, -1.000000e+00
  %7367 = bitcast float %7360 to i32
  %7368 = sub nsw i32 2129859010, %7367
  %7369 = bitcast i32 %7368 to float
  %7370 = fmul fast float %7369, %7341
  %7371 = fadd fast float %7370, 1.000000e+00
  %7372 = fadd fast float %7352, %7342
  %7373 = fmul fast float %7372, %7323
  %7374 = fadd fast float %7366, %7343
  %7375 = fmul fast float %7374, %7324
  %7376 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %7373, float %7375, float undef, float undef, i32 0, i32 0, i32 undef, float %7328)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7377 = extractvalue %dx.types.ResRet.f32 %7376, 0
  %7378 = fmul fast float %7377, %7345
  %7379 = fadd fast float %7357, %7342
  %7380 = fmul fast float %7379, %7323
  %7381 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %7380, float %7375, float undef, float undef, i32 0, i32 0, i32 undef, float %7328)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7382 = extractvalue %dx.types.ResRet.f32 %7381, 0
  %7383 = fmul fast float %7382, %7346
  %7384 = fadd fast float %7371, %7343
  %7385 = fmul fast float %7384, %7324
  %7386 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %7373, float %7385, float undef, float undef, i32 0, i32 0, i32 undef, float %7328)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7387 = extractvalue %dx.types.ResRet.f32 %7386, 0
  %7388 = fmul fast float %7387, %7345
  %7389 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %7380, float %7385, float undef, float undef, i32 0, i32 0, i32 undef, float %7328)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7390 = extractvalue %dx.types.ResRet.f32 %7389, 0
  %7391 = fmul fast float %7390, %7346
  %7392 = fadd fast float %7391, %7388
  %7393 = fmul fast float %7392, %7360
  %7394 = fadd fast float %7383, %7378
  %7395 = fmul fast float %7394, %7359
  %7396 = fadd fast float %7395, %7393
  %7397 = fmul fast float %7396, 6.250000e-02
  br label %7636

; <label>:7398                                    ; preds = %7330
  %7399 = fmul fast float %300, 0x401921FB60000000
  %7400 = call float @dx.op.unary.f32(i32 13, float %7399)  ; Sin(value)
  %7401 = call float @dx.op.unary.f32(i32 12, float %7399)  ; Cos(value)
  %7402 = fsub fast float -0.000000e+00, %7400
  br label %7403

; <label>:7403                                    ; preds = %7452, %7398
  %7404 = phi float [ 0.000000e+00, %7398 ], [ %7447, %7452 ]
  %7405 = phi float [ 0.000000e+00, %7398 ], [ %7449, %7452 ]
  %7406 = phi i32 [ 0, %7398 ], [ %7453, %7452 ]
  %7407 = mul i32 %7406, 2
  %7408 = add i32 0, %7407
  %7409 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7408
  %7410 = load float, float* %7409, align 4
  %7411 = mul i32 %7406, 2
  %7412 = add i32 1, %7411
  %7413 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7412
  %7414 = load float, float* %7413, align 4
  %7415 = fmul fast float %7410, %7401
  %7416 = call float @dx.op.tertiary.f32(i32 46, float %7414, float %7402, float %7415)  ; FMad(a,b,c)
  %7417 = fmul fast float %7410, %7400
  %7418 = call float @dx.op.tertiary.f32(i32 46, float %7414, float %7401, float %7417)  ; FMad(a,b,c)
  %7419 = fmul fast float %7416, %7326
  %7420 = fmul fast float %7418, %7326
  %7421 = fadd fast float %7419, %6452
  %7422 = fadd fast float %7420, %6456
  %7423 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %55, float %7421, float %7422, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7424 = extractvalue %dx.types.ResRet.f32 %7423, 0
  %7425 = extractvalue %dx.types.ResRet.f32 %7423, 1
  %7426 = extractvalue %dx.types.ResRet.f32 %7423, 2
  %7427 = extractvalue %dx.types.ResRet.f32 %7423, 3
  %7428 = getelementptr inbounds [4 x float], [4 x float]* %110, i32 0, i32 0
  store float %7424, float* %7428, align 4
  %7429 = getelementptr inbounds [4 x float], [4 x float]* %110, i32 0, i32 1
  store float %7425, float* %7429, align 4
  %7430 = getelementptr inbounds [4 x float], [4 x float]* %110, i32 0, i32 2
  store float %7426, float* %7430, align 4
  %7431 = getelementptr inbounds [4 x float], [4 x float]* %110, i32 0, i32 3
  store float %7427, float* %7431, align 4
  %7432 = fsub fast float %7424, %7328
  %7433 = fcmp fast olt float %7432, 0.000000e+00
  %7434 = select i1 %7433, float 0.000000e+00, float 1.000000e+00
  %7435 = fadd fast float %7434, %7404
  %7436 = fmul fast float %7434, %7432
  %7437 = fadd fast float %7436, %7405
  br label %7438

; <label>:7438                                    ; preds = %7438, %7403
  %7439 = phi i32 [ 1, %7403 ], [ %7450, %7438 ]
  %7440 = phi float [ %7437, %7403 ], [ %7449, %7438 ]
  %7441 = phi float [ %7435, %7403 ], [ %7447, %7438 ]
  %7442 = getelementptr [4 x float], [4 x float]* %110, i32 0, i32 %7439
  %7443 = load float, float* %7442, align 4, !tbaa !125, !noalias !115
  %7444 = fsub fast float %7443, %7328
  %7445 = fcmp fast olt float %7444, 0.000000e+00
  %7446 = select i1 %7445, float 0.000000e+00, float 1.000000e+00
  %7447 = fadd fast float %7446, %7441
  %7448 = fmul fast float %7446, %7444
  %7449 = fadd fast float %7448, %7440
  %7450 = add nuw nsw i32 %7439, 1
  %7451 = icmp eq i32 %7450, 4
  br i1 %7451, label %7452, label %7438, !llvm.loop !127

; <label>:7452                                    ; preds = %7438
  %7453 = add nuw nsw i32 %7406, 1
  %7454 = icmp eq i32 %7453, 8
  br i1 %7454, label %7455, label %7403, !llvm.loop !128

; <label>:7455                                    ; preds = %7452
  %7456 = fdiv fast float 1.000000e+00, %7447
  %7457 = fmul fast float %7456, %7449
  %7458 = fdiv fast float 1.000000e+00, %7328
  %7459 = fmul fast float %7457, %7458
  %7460 = call float @dx.op.unary.f32(i32 7, float %7459)  ; Saturate(value)
  %7461 = call float @dx.op.binary.f32(i32 35, float %7460, float 0.000000e+00)  ; FMax(a,b)
  %7462 = fmul fast float %7447, 3.125000e-02
  %7463 = call float @dx.op.unary.f32(i32 7, float %7462)  ; Saturate(value)
  %7464 = fmul fast float %7463, 2.000000e+00
  %7465 = fadd fast float %7464, -1.000000e+00
  %7466 = fcmp fast ogt float %7465, 0.000000e+00
  %7467 = fcmp fast olt float %7465, 0.000000e+00
  %7468 = zext i1 %7466 to i32
  %7469 = zext i1 %7467 to i32
  %7470 = sub nsw i32 %7468, %7469
  %7471 = sitofp i32 %7470 to float
  %7472 = fmul fast float %7471, %7465
  %7473 = fsub fast float 1.000000e+00, %7472
  %7474 = fmul fast float %7473, %7473
  %7475 = fmul fast float %7474, %7473
  %7476 = fsub fast float %7473, %7475
  %7477 = fmul fast float %7476, %7461
  %7478 = fsub fast float 1.000000e+00, %7475
  %7479 = fsub fast float %7478, %7477
  %7480 = fmul fast float %7471, 5.000000e-01
  %7481 = fmul fast float %7480, %7479
  %7482 = fsub fast float 5.000000e-01, %7481
  br label %7636

; <label>:7483                                    ; preds = %7318
  br i1 %7329, label %7484, label %7551

; <label>:7484                                    ; preds = %7483
  %7485 = extractvalue %dx.types.CBufRet.f32 %7322, 1
  %7486 = extractvalue %dx.types.CBufRet.f32 %7322, 0
  %7487 = fmul fast float %7486, %6452
  %7488 = fmul fast float %7485, %6456
  %7489 = fadd fast float %7487, 5.000000e-01
  %7490 = call float @dx.op.unary.f32(i32 27, float %7489)  ; Round_ni(value)
  %7491 = fadd fast float %7488, 5.000000e-01
  %7492 = call float @dx.op.unary.f32(i32 27, float %7491)  ; Round_ni(value)
  %7493 = fsub fast float %7489, %7490
  %7494 = fsub fast float %7491, %7492
  %7495 = fadd fast float %7490, -5.000000e-01
  %7496 = fadd fast float %7492, -5.000000e-01
  %7497 = fmul fast float %7493, 2.000000e+00
  %7498 = fsub fast float 3.000000e+00, %7497
  %7499 = fadd fast float %7497, 1.000000e+00
  %7500 = fsub fast float 2.000000e+00, %7493
  %7501 = bitcast float %7498 to i32
  %7502 = sub nsw i32 2129859010, %7501
  %7503 = bitcast i32 %7502 to float
  %7504 = fmul fast float %7503, %7500
  %7505 = fadd fast float %7504, -1.000000e+00
  %7506 = bitcast float %7499 to i32
  %7507 = sub nsw i32 2129859010, %7506
  %7508 = bitcast i32 %7507 to float
  %7509 = fmul fast float %7508, %7493
  %7510 = fadd fast float %7509, 1.000000e+00
  %7511 = fmul fast float %7494, 2.000000e+00
  %7512 = fsub fast float 3.000000e+00, %7511
  %7513 = fadd fast float %7511, 1.000000e+00
  %7514 = fsub fast float 2.000000e+00, %7494
  %7515 = bitcast float %7512 to i32
  %7516 = sub nsw i32 2129859010, %7515
  %7517 = bitcast i32 %7516 to float
  %7518 = fmul fast float %7517, %7514
  %7519 = fadd fast float %7518, -1.000000e+00
  %7520 = bitcast float %7513 to i32
  %7521 = sub nsw i32 2129859010, %7520
  %7522 = bitcast i32 %7521 to float
  %7523 = fmul fast float %7522, %7494
  %7524 = fadd fast float %7523, 1.000000e+00
  %7525 = fadd fast float %7505, %7495
  %7526 = fmul fast float %7525, %7323
  %7527 = fadd fast float %7519, %7496
  %7528 = fmul fast float %7527, %7324
  %7529 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7526, float %7528, float undef, float undef, i32 0, i32 0, i32 undef, float %7328)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7530 = extractvalue %dx.types.ResRet.f32 %7529, 0
  %7531 = fmul fast float %7530, %7498
  %7532 = fadd fast float %7510, %7495
  %7533 = fmul fast float %7532, %7323
  %7534 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7533, float %7528, float undef, float undef, i32 0, i32 0, i32 undef, float %7328)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7535 = extractvalue %dx.types.ResRet.f32 %7534, 0
  %7536 = fmul fast float %7535, %7499
  %7537 = fadd fast float %7524, %7496
  %7538 = fmul fast float %7537, %7324
  %7539 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7526, float %7538, float undef, float undef, i32 0, i32 0, i32 undef, float %7328)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7540 = extractvalue %dx.types.ResRet.f32 %7539, 0
  %7541 = fmul fast float %7540, %7498
  %7542 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7533, float %7538, float undef, float undef, i32 0, i32 0, i32 undef, float %7328)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7543 = extractvalue %dx.types.ResRet.f32 %7542, 0
  %7544 = fmul fast float %7543, %7499
  %7545 = fadd fast float %7544, %7541
  %7546 = fmul fast float %7545, %7513
  %7547 = fadd fast float %7536, %7531
  %7548 = fmul fast float %7547, %7512
  %7549 = fadd fast float %7548, %7546
  %7550 = fmul fast float %7549, 6.250000e-02
  br label %7636

; <label>:7551                                    ; preds = %7483
  %7552 = fmul fast float %300, 0x401921FB60000000
  %7553 = call float @dx.op.unary.f32(i32 13, float %7552)  ; Sin(value)
  %7554 = call float @dx.op.unary.f32(i32 12, float %7552)  ; Cos(value)
  %7555 = fsub fast float -0.000000e+00, %7553
  br label %7556

; <label>:7556                                    ; preds = %7605, %7551
  %7557 = phi float [ 0.000000e+00, %7551 ], [ %7600, %7605 ]
  %7558 = phi float [ 0.000000e+00, %7551 ], [ %7602, %7605 ]
  %7559 = phi i32 [ 0, %7551 ], [ %7606, %7605 ]
  %7560 = mul i32 %7559, 2
  %7561 = add i32 0, %7560
  %7562 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7561
  %7563 = load float, float* %7562, align 4
  %7564 = mul i32 %7559, 2
  %7565 = add i32 1, %7564
  %7566 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7565
  %7567 = load float, float* %7566, align 4
  %7568 = fmul fast float %7563, %7554
  %7569 = call float @dx.op.tertiary.f32(i32 46, float %7567, float %7555, float %7568)  ; FMad(a,b,c)
  %7570 = fmul fast float %7563, %7553
  %7571 = call float @dx.op.tertiary.f32(i32 46, float %7567, float %7554, float %7570)  ; FMad(a,b,c)
  %7572 = fmul fast float %7569, %7326
  %7573 = fmul fast float %7571, %7326
  %7574 = fadd fast float %7572, %6452
  %7575 = fadd fast float %7573, %6456
  %7576 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %7574, float %7575, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7577 = extractvalue %dx.types.ResRet.f32 %7576, 0
  %7578 = extractvalue %dx.types.ResRet.f32 %7576, 1
  %7579 = extractvalue %dx.types.ResRet.f32 %7576, 2
  %7580 = extractvalue %dx.types.ResRet.f32 %7576, 3
  %7581 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 0
  store float %7577, float* %7581, align 4
  %7582 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 1
  store float %7578, float* %7582, align 4
  %7583 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 2
  store float %7579, float* %7583, align 4
  %7584 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 3
  store float %7580, float* %7584, align 4
  %7585 = fsub fast float %7577, %7328
  %7586 = fcmp fast olt float %7585, 0.000000e+00
  %7587 = select i1 %7586, float 0.000000e+00, float 1.000000e+00
  %7588 = fadd fast float %7587, %7557
  %7589 = fmul fast float %7587, %7585
  %7590 = fadd fast float %7589, %7558
  br label %7591

; <label>:7591                                    ; preds = %7591, %7556
  %7592 = phi i32 [ 1, %7556 ], [ %7603, %7591 ]
  %7593 = phi float [ %7590, %7556 ], [ %7602, %7591 ]
  %7594 = phi float [ %7588, %7556 ], [ %7600, %7591 ]
  %7595 = getelementptr [4 x float], [4 x float]* %109, i32 0, i32 %7592
  %7596 = load float, float* %7595, align 4, !tbaa !125, !noalias !115
  %7597 = fsub fast float %7596, %7328
  %7598 = fcmp fast olt float %7597, 0.000000e+00
  %7599 = select i1 %7598, float 0.000000e+00, float 1.000000e+00
  %7600 = fadd fast float %7599, %7594
  %7601 = fmul fast float %7599, %7597
  %7602 = fadd fast float %7601, %7593
  %7603 = add nuw nsw i32 %7592, 1
  %7604 = icmp eq i32 %7603, 4
  br i1 %7604, label %7605, label %7591, !llvm.loop !127

; <label>:7605                                    ; preds = %7591
  %7606 = add nuw nsw i32 %7559, 1
  %7607 = icmp eq i32 %7606, 8
  br i1 %7607, label %7608, label %7556, !llvm.loop !128

; <label>:7608                                    ; preds = %7605
  %7609 = fdiv fast float 1.000000e+00, %7600
  %7610 = fmul fast float %7609, %7602
  %7611 = fdiv fast float 1.000000e+00, %7328
  %7612 = fmul fast float %7610, %7611
  %7613 = call float @dx.op.unary.f32(i32 7, float %7612)  ; Saturate(value)
  %7614 = call float @dx.op.binary.f32(i32 35, float %7613, float 0.000000e+00)  ; FMax(a,b)
  %7615 = fmul fast float %7600, 3.125000e-02
  %7616 = call float @dx.op.unary.f32(i32 7, float %7615)  ; Saturate(value)
  %7617 = fmul fast float %7616, 2.000000e+00
  %7618 = fadd fast float %7617, -1.000000e+00
  %7619 = fcmp fast ogt float %7618, 0.000000e+00
  %7620 = fcmp fast olt float %7618, 0.000000e+00
  %7621 = zext i1 %7619 to i32
  %7622 = zext i1 %7620 to i32
  %7623 = sub nsw i32 %7621, %7622
  %7624 = sitofp i32 %7623 to float
  %7625 = fmul fast float %7624, %7618
  %7626 = fsub fast float 1.000000e+00, %7625
  %7627 = fmul fast float %7626, %7626
  %7628 = fmul fast float %7627, %7626
  %7629 = fsub fast float %7626, %7628
  %7630 = fmul fast float %7629, %7614
  %7631 = fsub fast float 1.000000e+00, %7628
  %7632 = fsub fast float %7631, %7630
  %7633 = fmul fast float %7624, 5.000000e-01
  %7634 = fmul fast float %7633, %7632
  %7635 = fsub fast float 5.000000e-01, %7634
  br label %7636

; <label>:7636                                    ; preds = %7608, %7484, %7455, %7331, %7315
  %7637 = phi float [ 1.000000e+00, %7315 ], [ %7397, %7331 ], [ %7482, %7455 ], [ %7550, %7484 ], [ %7635, %7608 ]
  %7638 = fsub fast float %7149, %6982
  %7639 = fmul fast float %7638, %6549
  %7640 = fadd fast float %7639, %6982
  %7641 = fsub fast float %7316, %7640
  %7642 = fmul fast float %7641, %6548
  %7643 = fadd fast float %7642, %7640
  %7644 = fsub fast float %7637, %7643
  %7645 = fmul fast float %7644, %6576
  %7646 = fadd fast float %7645, %7643
  %7647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7648 = extractvalue %dx.types.CBufRet.f32 %7647, 2
  %7649 = fcmp fast ogt float %7648, 0.000000e+00
  br i1 %7649, label %7650, label %7690, !dx.controlflow.hints !132

; <label>:7650                                    ; preds = %7636
  %7651 = fcmp fast ugt float %7648, 0.000000e+00
  br i1 %7651, label %7652, label %7687

; <label>:7652                                    ; preds = %7650
  %7653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7654 = extractvalue %dx.types.CBufRet.f32 %7653, 0
  %7655 = extractvalue %dx.types.CBufRet.f32 %7653, 1
  %7656 = extractvalue %dx.types.CBufRet.f32 %7653, 2
  %7657 = extractvalue %dx.types.CBufRet.f32 %7653, 3
  %7658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7659 = extractvalue %dx.types.CBufRet.f32 %7658, 0
  %7660 = extractvalue %dx.types.CBufRet.f32 %7658, 1
  %7661 = extractvalue %dx.types.CBufRet.f32 %7658, 2
  %7662 = extractvalue %dx.types.CBufRet.f32 %7658, 3
  %7663 = extractvalue %dx.types.CBufRet.f32 %7647, 0
  %7664 = extractvalue %dx.types.CBufRet.f32 %7647, 1
  %7665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7666 = extractvalue %dx.types.CBufRet.f32 %7665, 0
  %7667 = extractvalue %dx.types.CBufRet.f32 %7665, 1
  %7668 = extractvalue %dx.types.CBufRet.f32 %7665, 2
  %7669 = fadd fast float %7666, %6429
  %7670 = fadd fast float %7667, %6430
  %7671 = fadd fast float %7668, %6431
  %7672 = fmul fast float %7669, %7654
  %7673 = call float @dx.op.tertiary.f32(i32 46, float %7655, float %7670, float %7672)  ; FMad(a,b,c)
  %7674 = call float @dx.op.tertiary.f32(i32 46, float %7656, float %7671, float %7673)  ; FMad(a,b,c)
  %7675 = fadd fast float %7674, %7657
  %7676 = fmul fast float %7669, %7659
  %7677 = call float @dx.op.tertiary.f32(i32 46, float %7660, float %7670, float %7676)  ; FMad(a,b,c)
  %7678 = call float @dx.op.tertiary.f32(i32 46, float %7661, float %7671, float %7677)  ; FMad(a,b,c)
  %7679 = fadd fast float %7678, %7662
  %7680 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %7675, float %7679, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7681 = extractvalue %dx.types.ResRet.f32 %7680, 0
  %7682 = fmul fast float %7681, %7664
  %7683 = fadd fast float %7682, %7663
  %7684 = call float @dx.op.unary.f32(i32 7, float %7683)  ; Saturate(value)
  %7685 = fmul fast float %7684, %7648
  %7686 = fsub fast float 1.000000e+00, %7685
  br label %7687

; <label>:7687                                    ; preds = %7652, %7650
  %7688 = phi float [ %7686, %7652 ], [ 1.000000e+00, %7650 ]
  %7689 = fmul fast float %7688, %7646
  br label %7690

; <label>:7690                                    ; preds = %7687, %7636, %6409
  %7691 = phi float [ 1.000000e+00, %6409 ], [ %7689, %7687 ], [ %7646, %7636 ]
  %7692 = call float @dx.op.binary.f32(i32 36, float %7691, float %7691)  ; FMin(a,b)
  %7693 = call float @dx.op.binary.f32(i32 36, float %7691, float %7692)  ; FMin(a,b)
  %7694 = fcmp fast ogt float %7693, 0.000000e+00
  br i1 %7694, label %7695, label %7860, !dx.controlflow.hints !133

; <label>:7695                                    ; preds = %7690
  %7696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7697 = extractvalue %dx.types.CBufRet.f32 %7696, 0
  %7698 = extractvalue %dx.types.CBufRet.f32 %7696, 1
  %7699 = extractvalue %dx.types.CBufRet.f32 %7696, 2
  %7700 = extractvalue %dx.types.CBufRet.f32 %7696, 3
  %7701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7702 = extractvalue %dx.types.CBufRet.f32 %7701, 0
  %7703 = extractvalue %dx.types.CBufRet.f32 %7701, 1
  %7704 = extractvalue %dx.types.CBufRet.f32 %7701, 2
  %7705 = extractvalue %dx.types.CBufRet.f32 %7701, 3
  %7706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7707 = extractvalue %dx.types.CBufRet.f32 %7706, 0
  %7708 = extractvalue %dx.types.CBufRet.f32 %7706, 1
  %7709 = extractvalue %dx.types.CBufRet.f32 %7706, 2
  %7710 = extractvalue %dx.types.CBufRet.f32 %7706, 3
  %7711 = fmul fast float %7697, %6429
  %7712 = call float @dx.op.tertiary.f32(i32 46, float %6430, float %7698, float %7711)  ; FMad(a,b,c)
  %7713 = call float @dx.op.tertiary.f32(i32 46, float %6431, float %7699, float %7712)  ; FMad(a,b,c)
  %7714 = fadd fast float %7713, %7700
  %7715 = fmul fast float %7702, %6429
  %7716 = call float @dx.op.tertiary.f32(i32 46, float %6430, float %7703, float %7715)  ; FMad(a,b,c)
  %7717 = call float @dx.op.tertiary.f32(i32 46, float %6431, float %7704, float %7716)  ; FMad(a,b,c)
  %7718 = fadd fast float %7717, %7705
  %7719 = fmul fast float %7707, %6429
  %7720 = call float @dx.op.tertiary.f32(i32 46, float %6430, float %7708, float %7719)  ; FMad(a,b,c)
  %7721 = call float @dx.op.tertiary.f32(i32 46, float %6431, float %7709, float %7720)  ; FMad(a,b,c)
  %7722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7723 = extractvalue %dx.types.CBufRet.f32 %7722, 0
  %7724 = extractvalue %dx.types.CBufRet.f32 %7722, 1
  %7725 = extractvalue %dx.types.CBufRet.f32 %7722, 3
  %7726 = fmul fast float %7725, %7714
  %7727 = fmul fast float %7725, %7718
  %7728 = fadd fast float %7726, %7723
  %7729 = fadd fast float %7727, %7724
  %7730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7731 = extractvalue %dx.types.CBufRet.f32 %7730, 0
  %7732 = extractvalue %dx.types.CBufRet.f32 %7730, 1
  %7733 = fsub fast float %7728, %7731
  %7734 = fsub fast float %7729, %7732
  %7735 = fcmp fast olt float %7733, 0.000000e+00
  %7736 = fcmp fast olt float %7734, 0.000000e+00
  %7737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7738 = extractvalue %dx.types.CBufRet.f32 %7737, 0
  %7739 = extractvalue %dx.types.CBufRet.f32 %7737, 1
  %7740 = extractvalue %dx.types.CBufRet.f32 %7737, 2
  %7741 = extractvalue %dx.types.CBufRet.f32 %7737, 3
  %7742 = select i1 %7735, float %7738, float %7740
  %7743 = select i1 %7736, float %7739, float %7741
  %7744 = fmul fast float %7742, %7733
  %7745 = fmul fast float %7743, %7734
  %7746 = call float @dx.op.unary.f32(i32 6, float %7744)  ; FAbs(value)
  %7747 = call float @dx.op.unary.f32(i32 6, float %7745)  ; FAbs(value)
  %7748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7749 = extractvalue %dx.types.CBufRet.f32 %7748, 0
  %7750 = call float @dx.op.binary.f32(i32 35, float %7746, float %7747)  ; FMax(a,b)
  %7751 = fsub fast float %7749, %7750
  %7752 = call float @dx.op.unary.f32(i32 7, float %7751)  ; Saturate(value)
  %7753 = fcmp fast ogt float %7752, 0.000000e+00
  br i1 %7753, label %7754, label %7795, !dx.controlflow.hints !134

; <label>:7754                                    ; preds = %7695
  %7755 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %7728, float %7729, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7756 = extractvalue %dx.types.ResRet.f32 %7755, 1
  %7757 = fcmp fast ogt float %7756, 0.000000e+00
  br i1 %7757, label %7758, label %7790

; <label>:7758                                    ; preds = %7754
  %7759 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %7728, float %7729, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7760 = extractvalue %dx.types.ResRet.f32 %7759, 0
  %7761 = extractvalue %dx.types.ResRet.f32 %7759, 1
  %7762 = extractvalue %dx.types.ResRet.f32 %7759, 2
  %7763 = extractvalue %dx.types.ResRet.f32 %7759, 3
  %7764 = fsub fast float 1.000000e+00, %7710
  %7765 = fsub fast float %7764, %7721
  %7766 = fmul fast float %7765, 0x400921FB60000000
  %7767 = fadd fast float %7766, 0x3FF921FB60000000
  %7768 = call float @dx.op.unary.f32(i32 13, float %7767)  ; Sin(value)
  %7769 = fadd fast float %7768, -1.000000e+00
  %7770 = fmul fast float %7769, 0x3FD45F3060000000
  %7771 = fmul fast float %7765, 0x401921FB60000000
  %7772 = fadd fast float %7771, 0x400921FB60000000
  %7773 = call float @dx.op.unary.f32(i32 13, float %7772)  ; Sin(value)
  %7774 = fadd fast float %7773, 0x3E7777A5C0000000
  %7775 = fmul fast float %7774, 0x3FC45F3060000000
  %7776 = fmul fast float %7765, 0x4022D97C80000000
  %7777 = fadd fast float %7776, 0x4012D97C80000000
  %7778 = call float @dx.op.unary.f32(i32 13, float %7777)  ; Sin(value)
  %7779 = fadd fast float %7778, 1.000000e+00
  %7780 = fmul fast float %7779, 0x3FBB2995E0000000
  %7781 = fmul fast float %7765, 0x402921FB60000000
  %7782 = fadd fast float %7781, 0x401921FB60000000
  %7783 = call float @dx.op.unary.f32(i32 13, float %7782)  ; Sin(value)
  %7784 = fadd fast float %7783, 0xBE8777A5C0000000
  %7785 = fmul fast float %7784, 0x3FB45F3060000000
  %7786 = call float @dx.op.dot4.f32(i32 56, float %7760, float %7761, float %7762, float %7763, float %7770, float %7775, float %7780, float %7785)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7787 = fmul fast float %7786, 0xBFF7154760000000
  %7788 = call float @dx.op.unary.f32(i32 21, float %7787)  ; Exp(value)
  %7789 = call float @dx.op.unary.f32(i32 7, float %7788)  ; Saturate(value)
  br label %7790

; <label>:7790                                    ; preds = %7758, %7754
  %7791 = phi float [ %7789, %7758 ], [ 1.000000e+00, %7754 ]
  %7792 = fadd fast float %7791, -1.000000e+00
  %7793 = fmul fast float %7792, %7752
  %7794 = fadd fast float %7793, 1.000000e+00
  br label %7795

; <label>:7795                                    ; preds = %7790, %7695
  %7796 = phi float [ %7794, %7790 ], [ 1.000000e+00, %7695 ]
  %7797 = fmul fast float %7796, %7691
  %7798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7799 = extractvalue %dx.types.CBufRet.f32 %7798, 0
  %7800 = extractvalue %dx.types.CBufRet.f32 %7798, 1
  %7801 = extractvalue %dx.types.CBufRet.f32 %7798, 2
  %7802 = fadd fast float %7799, %198
  %7803 = fadd fast float %7800, %199
  %7804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7805 = extractvalue %dx.types.CBufRet.f32 %7804, 1
  %7806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7807 = extractvalue %dx.types.CBufRet.f32 %7806, 0
  %7808 = extractvalue %dx.types.CBufRet.f32 %7806, 1
  %7809 = extractvalue %dx.types.CBufRet.f32 %7806, 2
  %7810 = fsub fast float -0.000000e+00, %7802
  %7811 = fsub fast float -0.000000e+00, %7803
  %7812 = fsub fast float %5525, %7801
  %7813 = fadd fast float %7812, %7805
  %7814 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7810, float %7811, float %7813)  ; Dot3(ax,ay,az,bx,by,bz)
  %7815 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7807, float %7808, float %7809)  ; Dot3(ax,ay,az,bx,by,bz)
  %7816 = fdiv fast float 1.000000e+00, %7815
  %7817 = fmul fast float %7816, %7814
  %7818 = fmul fast float %7807, %7817
  %7819 = fmul fast float %7808, %7817
  %7820 = fadd fast float %7818, %7802
  %7821 = fadd fast float %7819, %7803
  %7822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7823 = extractvalue %dx.types.CBufRet.f32 %7822, 0
  %7824 = extractvalue %dx.types.CBufRet.f32 %7822, 1
  %7825 = fsub fast float %7820, %7823
  %7826 = fsub fast float %7821, %7824
  %7827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7828 = extractvalue %dx.types.CBufRet.f32 %7827, 2
  %7829 = extractvalue %dx.types.CBufRet.f32 %7827, 3
  %7830 = fmul fast float %7825, %7828
  %7831 = fmul fast float %7826, %7829
  %7832 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7833 = extractvalue %dx.types.CBufRet.i32 %7832, 3
  %7834 = icmp eq i32 %7833, 0
  br i1 %7834, label %7840, label %7835

; <label>:7835                                    ; preds = %7795
  %7836 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %7830, float %7831, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7837 = extractvalue %dx.types.ResRet.f32 %7836, 0
  %7838 = extractvalue %dx.types.ResRet.f32 %7836, 1
  %7839 = extractvalue %dx.types.ResRet.f32 %7836, 2
  br label %7845

; <label>:7840                                    ; preds = %7795
  %7841 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7830, float %7831, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7842 = extractvalue %dx.types.ResRet.f32 %7841, 0
  %7843 = extractvalue %dx.types.ResRet.f32 %7841, 1
  %7844 = extractvalue %dx.types.ResRet.f32 %7841, 2
  br label %7845

; <label>:7845                                    ; preds = %7840, %7835
  %7846 = phi float [ %7837, %7835 ], [ %7842, %7840 ]
  %7847 = phi float [ %7838, %7835 ], [ %7843, %7840 ]
  %7848 = phi float [ %7839, %7835 ], [ %7844, %7840 ]
  %7849 = extractvalue %dx.types.CBufRet.f32 %7804, 2
  %7850 = fmul fast float %7849, %7846
  %7851 = extractvalue %dx.types.CBufRet.f32 %7804, 0
  %7852 = fsub fast float %7817, %7851
  %7853 = fsub fast float %7852, %7850
  %7854 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7853)  ; FMax(a,b)
  %7855 = fmul fast float %7854, %7847
  %7856 = call float @dx.op.binary.f32(i32 36, float %7848, float %7855)  ; FMin(a,b)
  %7857 = fmul fast float %7856, 0xBFF7154760000000
  %7858 = call float @dx.op.unary.f32(i32 21, float %7857)  ; Exp(value)
  %7859 = fmul fast float %7797, %7858
  br label %7860

; <label>:7860                                    ; preds = %7845, %7690
  %7861 = phi float [ %7859, %7845 ], [ %7691, %7690 ]
  %7862 = call float @dx.op.binary.f32(i32 36, float %7861, float %7861)  ; FMin(a,b)
  %7863 = call float @dx.op.binary.f32(i32 36, float %7861, float %7862)  ; FMin(a,b)
  %7864 = fcmp fast ogt float %7863, 0.000000e+00
  br i1 %7864, label %7865, label %8166, !dx.controlflow.hints !135

; <label>:7865                                    ; preds = %7860
  %7866 = fmul fast float %7861, %6421
  %7867 = fmul fast float %7861, %6422
  %7868 = fmul fast float %7861, %6423
  %7869 = fsub fast float %200, %4742
  %7870 = fcmp fast ogt float %7869, 0.000000e+00
  %7871 = fmul fast float %6410, 5.120000e+02
  %7872 = fmul fast float %6411, 5.120000e+02
  %7873 = fmul fast float %6412, 5.120000e+02
  %7874 = fadd fast float %7873, %200
  %7875 = fsub fast float %4742, %7874
  %7876 = fmul fast float %7875, 2.000000e+00
  %7877 = fadd fast float %7876, %7874
  %7878 = select i1 %7870, float %7877, float %7874
  %7879 = fsub fast float %7878, %200
  %7880 = call float @dx.op.dot3.f32(i32 55, float %7871, float %7872, float %7879, float %7871, float %7872, float %7879)  ; Dot3(ax,ay,az,bx,by,bz)
  %7881 = call float @dx.op.unary.f32(i32 25, float %7880)  ; Rsqrt(value)
  %7882 = fmul fast float %7881, %7871
  %7883 = fmul fast float %7881, %7872
  %7884 = fmul fast float %7881, %7879
  %7885 = fsub fast float %4742, %200
  %7886 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7885)  ; Dot3(ax,ay,az,bx,by,bz)
  %7887 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7882, float %7883, float %7884)  ; Dot3(ax,ay,az,bx,by,bz)
  %7888 = fdiv fast float 1.000000e+00, %7887
  %7889 = fmul fast float %7888, %7886
  %7890 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7869, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7891 = fcmp fast ogt float %7890, 0.000000e+00
  %7892 = fcmp fast olt float %7890, 0.000000e+00
  %7893 = zext i1 %7891 to i32
  %7894 = zext i1 %7892 to i32
  %7895 = sub nsw i32 %7893, %7894
  %7896 = sitofp i32 %7895 to float
  %7897 = fsub fast float %7878, %4742
  %7898 = call float @dx.op.dot3.f32(i32 55, float %7871, float %7872, float %7897, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7899 = fcmp fast ogt float %7898, 0.000000e+00
  %7900 = fcmp fast olt float %7898, 0.000000e+00
  %7901 = zext i1 %7899 to i32
  %7902 = zext i1 %7900 to i32
  %7903 = sub nsw i32 %7901, %7902
  %7904 = sitofp i32 %7903 to float
  %7905 = fcmp fast une float %7896, %7904
  br i1 %7905, label %7906, label %7916

; <label>:7906                                    ; preds = %7865
  %7907 = fmul fast float %7889, %7884
  %7908 = fmul fast float %7889, %7883
  %7909 = fmul fast float %7889, %7882
  %7910 = fmul fast float %7909, %7909
  %7911 = fmul fast float %7908, %7908
  %7912 = fadd fast float %7910, %7911
  %7913 = fmul fast float %7907, %7907
  %7914 = fadd fast float %7912, %7913
  %7915 = call float @dx.op.unary.f32(i32 24, float %7914)  ; Sqrt(value)
  br label %7926

; <label>:7916                                    ; preds = %7865
  %7917 = icmp slt i32 %7895, 0
  br i1 %7917, label %7918, label %7926

; <label>:7918                                    ; preds = %7916
  %7919 = fsub fast float %200, %7878
  %7920 = fmul fast float %7871, %7871
  %7921 = fmul fast float %7872, %7872
  %7922 = fadd fast float %7920, %7921
  %7923 = fmul fast float %7919, %7919
  %7924 = fadd fast float %7922, %7923
  %7925 = call float @dx.op.unary.f32(i32 24, float %7924)  ; Sqrt(value)
  br label %7926

; <label>:7926                                    ; preds = %7918, %7916, %7906
  %7927 = phi float [ %7915, %7906 ], [ %7925, %7918 ], [ 0.000000e+00, %7916 ]
  %7928 = fsub fast float -0.000000e+00, %7927
  %7929 = select i1 %7870, float -0.000000e+00, float %7928
  %7930 = fmul fast float %4739, 0x3FF7154760000000
  %7931 = fmul fast float %7930, %7929
  %7932 = fmul fast float %4740, 0x3FF7154760000000
  %7933 = fmul fast float %7932, %7929
  %7934 = fmul fast float %4741, 0x3FF7154760000000
  %7935 = fmul fast float %7934, %7929
  %7936 = call float @dx.op.unary.f32(i32 21, float %7931)  ; Exp(value)
  %7937 = call float @dx.op.unary.f32(i32 21, float %7933)  ; Exp(value)
  %7938 = call float @dx.op.unary.f32(i32 21, float %7935)  ; Exp(value)
  %7939 = call float @dx.op.unary.f32(i32 7, float %7936)  ; Saturate(value)
  %7940 = call float @dx.op.unary.f32(i32 7, float %7937)  ; Saturate(value)
  %7941 = call float @dx.op.unary.f32(i32 7, float %7938)  ; Saturate(value)
  %7942 = fmul fast float %7866, %7939
  %7943 = fmul fast float %7867, %7940
  %7944 = fmul fast float %7868, %7941
  %7945 = fsub fast float %6410, %218
  %7946 = fsub fast float %6411, %219
  %7947 = fsub fast float %6412, %220
  %7948 = call float @dx.op.dot3.f32(i32 55, float %7945, float %7946, float %7947, float %7945, float %7946, float %7947)  ; Dot3(ax,ay,az,bx,by,bz)
  %7949 = call float @dx.op.unary.f32(i32 25, float %7948)  ; Rsqrt(value)
  %7950 = fmul fast float %7949, %7945
  %7951 = fmul fast float %7949, %7946
  %7952 = fmul fast float %7949, %7947
  %7953 = call float @dx.op.dot3.f32(i32 55, float %6410, float %6411, float %6412, float %5517, float %5518, float %5519)  ; Dot3(ax,ay,az,bx,by,bz)
  %7954 = call float @dx.op.dot3.f32(i32 55, float %5349, float %5350, float %5351, float %7950, float %7951, float %7952)  ; Dot3(ax,ay,az,bx,by,bz)
  %7955 = call float @dx.op.unary.f32(i32 7, float %7953)  ; Saturate(value)
  %7956 = fmul fast float %7955, %7955
  %7957 = fmul fast float %7956, %5553
  %7958 = call float @dx.op.unary.f32(i32 7, float %7957)  ; Saturate(value)
  %7959 = fmul fast float %7958, %7955
  %7960 = call float @dx.op.dot3.f32(i32 55, float %5517, float %5518, float %5519, float %7950, float %7951, float %7952)  ; Dot3(ax,ay,az,bx,by,bz)
  %7961 = fmul fast float %7960, %7960
  %7962 = call float @dx.op.unary.f32(i32 6, float %7953)  ; FAbs(value)
  %7963 = fsub fast float 1.000000e+00, %5546
  %7964 = fmul fast float %5528, %5528
  %7965 = fmul fast float %7964, %7963
  %7966 = fadd fast float %7965, %5546
  %7967 = bitcast float %7966 to i32
  %7968 = ashr i32 %7967, 1
  %7969 = add nsw i32 %7968, 532487669
  %7970 = bitcast i32 %7969 to float
  %7971 = fadd fast float %7970, %5528
  %7972 = fmul fast float %5546, %7961
  %7973 = fsub fast float 1.000000e+00, %7961
  %7974 = fadd fast float %7973, %7972
  %7975 = fmul fast float %7962, %7962
  %7976 = fmul fast float %7975, %7963
  %7977 = fadd fast float %7976, %5546
  %7978 = bitcast float %7977 to i32
  %7979 = ashr i32 %7978, 1
  %7980 = add nsw i32 %7979, 532487669
  %7981 = bitcast i32 %7980 to float
  %7982 = fadd fast float %7981, %7962
  %7983 = fmul fast float %7974, %7974
  %7984 = fmul fast float %7983, %7971
  %7985 = fmul fast float %7984, %7982
  %7986 = fdiv fast float 0x3FF0A00000000000, %7985
  %7987 = fmul fast float %7986, %5546
  %7988 = call float @dx.op.unary.f32(i32 6, float %7954)  ; FAbs(value)
  %7989 = fsub fast float 1.000000e+00, %7988
  %7990 = bitcast float %7989 to i32
  %7991 = sitofp i32 %7990 to float
  %7992 = fmul fast float %7991, 5.000000e+00
  %7993 = fadd fast float %7992, 0xC1EFBF8940000000
  %7994 = fptosi float %7993 to i32
  %7995 = bitcast i32 %7994 to float
  %7996 = fsub fast float 1.000000e+00, %5520
  %7997 = fsub fast float 1.000000e+00, %5521
  %7998 = fsub fast float 1.000000e+00, %5526
  %7999 = fmul fast float %7995, %7996
  %8000 = fmul fast float %7995, %7997
  %8001 = fmul fast float %7995, %7998
  %8002 = fadd fast float %7999, %5520
  %8003 = fadd fast float %8000, %5521
  %8004 = fadd fast float %8001, %5526
  br i1 %5811, label %8005, label %8028

; <label>:8005                                    ; preds = %7926
  %8006 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %4250, float %7988, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8007 = extractvalue %dx.types.ResRet.f32 %8006, 0
  %8008 = extractvalue %dx.types.ResRet.f32 %8006, 1
  %8009 = extractvalue %dx.types.ResRet.f32 %8006, 2
  %8010 = fadd fast float %8007, -5.000000e-01
  %8011 = fadd fast float %8008, -5.000000e-01
  %8012 = fadd fast float %8009, -5.000000e-01
  %8013 = fmul fast float %5520, 4.000000e+00
  %8014 = fmul fast float %8013, %7996
  %8015 = fmul fast float %8014, %8010
  %8016 = fmul fast float %5521, 4.000000e+00
  %8017 = fmul fast float %8016, %7997
  %8018 = fmul fast float %8017, %8011
  %8019 = fmul fast float %5526, 4.000000e+00
  %8020 = fmul fast float %8019, %7998
  %8021 = fmul fast float %8020, %8012
  %8022 = fadd fast float %8015, %8002
  %8023 = fadd fast float %8018, %8003
  %8024 = fadd fast float %8021, %8004
  %8025 = call float @dx.op.unary.f32(i32 7, float %8022)  ; Saturate(value)
  %8026 = call float @dx.op.unary.f32(i32 7, float %8023)  ; Saturate(value)
  %8027 = call float @dx.op.unary.f32(i32 7, float %8024)  ; Saturate(value)
  br label %8028

; <label>:8028                                    ; preds = %8005, %7926
  %8029 = phi float [ %8025, %8005 ], [ %8002, %7926 ]
  %8030 = phi float [ %8026, %8005 ], [ %8003, %7926 ]
  %8031 = phi float [ %8027, %8005 ], [ %8004, %7926 ]
  %8032 = fmul fast float %7953, 9.843750e-01
  %8033 = fadd fast float %8032, 7.812500e-03
  %8034 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %8033, float %5801, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8035 = extractvalue %dx.types.ResRet.f32 %8034, 2
  %8036 = extractvalue %dx.types.ResRet.f32 %8034, 3
  %8037 = fmul fast float %8035, %5520
  %8038 = fmul fast float %8035, %5521
  %8039 = fmul fast float %8035, %5526
  %8040 = fadd fast float %8037, %8036
  %8041 = fadd fast float %8038, %8036
  %8042 = fadd fast float %8039, %8036
  br i1 %5811, label %8043, label %8066

; <label>:8043                                    ; preds = %8028
  %8044 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %4250, float %7953, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8045 = extractvalue %dx.types.ResRet.f32 %8044, 0
  %8046 = extractvalue %dx.types.ResRet.f32 %8044, 1
  %8047 = extractvalue %dx.types.ResRet.f32 %8044, 2
  %8048 = fadd fast float %8045, -5.000000e-01
  %8049 = fadd fast float %8046, -5.000000e-01
  %8050 = fadd fast float %8047, -5.000000e-01
  %8051 = fmul fast float %5520, 4.000000e+00
  %8052 = fmul fast float %8051, %7996
  %8053 = fmul fast float %8052, %8048
  %8054 = fmul fast float %5521, 4.000000e+00
  %8055 = fmul fast float %8054, %7997
  %8056 = fmul fast float %8055, %8049
  %8057 = fmul fast float %5526, 4.000000e+00
  %8058 = fmul fast float %8057, %7998
  %8059 = fmul fast float %8058, %8050
  %8060 = fadd fast float %8053, %8040
  %8061 = fadd fast float %8056, %8041
  %8062 = fadd fast float %8059, %8042
  %8063 = call float @dx.op.unary.f32(i32 7, float %8060)  ; Saturate(value)
  %8064 = call float @dx.op.unary.f32(i32 7, float %8061)  ; Saturate(value)
  %8065 = call float @dx.op.unary.f32(i32 7, float %8062)  ; Saturate(value)
  br label %8066

; <label>:8066                                    ; preds = %8043, %8028
  %8067 = phi float [ %8063, %8043 ], [ %8040, %8028 ]
  %8068 = phi float [ %8064, %8043 ], [ %8041, %8028 ]
  %8069 = phi float [ %8065, %8043 ], [ %8042, %8028 ]
  %8070 = call float @dx.op.binary.f32(i32 35, float %8068, float %8069)  ; FMax(a,b)
  %8071 = call float @dx.op.binary.f32(i32 35, float %8067, float %8070)  ; FMax(a,b)
  %8072 = fsub fast float 1.000000e+00, %8071
  %8073 = fsub fast float -0.000000e+00, %5517
  %8074 = fsub fast float -0.000000e+00, %5518
  %8075 = fsub fast float -0.000000e+00, %5519
  %8076 = call float @dx.op.dot3.f32(i32 55, float %6410, float %6411, float %6412, float %8073, float %8074, float %8075)  ; Dot3(ax,ay,az,bx,by,bz)
  %8077 = call float @dx.op.unary.f32(i32 7, float %8076)  ; Saturate(value)
  %8078 = fmul fast float %8077, 9.843750e-01
  %8079 = fadd fast float %8078, 7.812500e-03
  %8080 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %8079, float %5801, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8081 = extractvalue %dx.types.ResRet.f32 %8080, 2
  %8082 = extractvalue %dx.types.ResRet.f32 %8080, 3
  %8083 = fmul fast float %8081, %5520
  %8084 = fmul fast float %8081, %5521
  %8085 = fmul fast float %8081, %5526
  %8086 = fadd fast float %8083, %8082
  %8087 = fadd fast float %8084, %8082
  %8088 = fadd fast float %8085, %8082
  br i1 %5811, label %8089, label %8112

; <label>:8089                                    ; preds = %8066
  %8090 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %4250, float %8077, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8091 = extractvalue %dx.types.ResRet.f32 %8090, 0
  %8092 = extractvalue %dx.types.ResRet.f32 %8090, 1
  %8093 = extractvalue %dx.types.ResRet.f32 %8090, 2
  %8094 = fadd fast float %8091, -5.000000e-01
  %8095 = fadd fast float %8092, -5.000000e-01
  %8096 = fadd fast float %8093, -5.000000e-01
  %8097 = fmul fast float %5520, 4.000000e+00
  %8098 = fmul fast float %8097, %7996
  %8099 = fmul fast float %8098, %8094
  %8100 = fmul fast float %5521, 4.000000e+00
  %8101 = fmul fast float %8100, %7997
  %8102 = fmul fast float %8101, %8095
  %8103 = fmul fast float %5526, 4.000000e+00
  %8104 = fmul fast float %8103, %7998
  %8105 = fmul fast float %8104, %8096
  %8106 = fadd fast float %8099, %8086
  %8107 = fadd fast float %8102, %8087
  %8108 = fadd fast float %8105, %8088
  %8109 = call float @dx.op.unary.f32(i32 7, float %8106)  ; Saturate(value)
  %8110 = call float @dx.op.unary.f32(i32 7, float %8107)  ; Saturate(value)
  %8111 = call float @dx.op.unary.f32(i32 7, float %8108)  ; Saturate(value)
  br label %8112

; <label>:8112                                    ; preds = %8089, %8066
  %8113 = phi float [ %8109, %8089 ], [ %8086, %8066 ]
  %8114 = phi float [ %8110, %8089 ], [ %8087, %8066 ]
  %8115 = phi float [ %8111, %8089 ], [ %8088, %8066 ]
  %8116 = call float @dx.op.binary.f32(i32 35, float %8114, float %8115)  ; FMax(a,b)
  %8117 = call float @dx.op.binary.f32(i32 35, float %8113, float %8116)  ; FMax(a,b)
  %8118 = fsub fast float 1.000000e+00, %8117
  %8119 = fmul fast float %8118, %8077
  %8120 = fmul fast float %8119, %4362
  %8121 = fmul fast float %8119, %4363
  %8122 = fmul fast float %8119, %4364
  %8123 = fmul fast float %8029, %7987
  %8124 = fmul fast float %8030, %7987
  %8125 = fmul fast float %8031, %7987
  %8126 = fsub fast float 1.000000e+00, %7954
  %8127 = bitcast float %8126 to i32
  %8128 = sitofp i32 %8127 to float
  %8129 = fmul fast float %8128, 5.000000e+00
  %8130 = fadd fast float %8129, 0xC1EFBF8940000000
  %8131 = fptosi float %8130 to i32
  %8132 = bitcast i32 %8131 to float
  %8133 = fmul fast float %8132, %4251
  %8134 = fmul fast float %8072, %8133
  %8135 = fmul fast float %8134, %6350
  %8136 = fmul fast float %8134, %6351
  %8137 = fmul fast float %8134, %6352
  %8138 = fmul fast float %8072, %7959
  %8139 = fadd fast float %8135, %8123
  %8140 = fadd fast float %8136, %8124
  %8141 = fadd fast float %8137, %8125
  %8142 = fadd fast float %8120, %8138
  %8143 = fadd fast float %8121, %8138
  %8144 = fadd fast float %8122, %8138
  %8145 = fmul fast float %8142, %7942
  %8146 = fmul fast float %8143, %7943
  %8147 = fmul fast float %8144, %7944
  %8148 = fmul fast float %7959, %7942
  %8149 = fmul fast float %8148, %8139
  %8150 = fmul fast float %7959, %7943
  %8151 = fmul fast float %8150, %8140
  %8152 = fmul fast float %7959, %7944
  %8153 = fmul fast float %8152, %8141
  %8154 = fadd fast float %8145, %6400
  %8155 = fmul fast float %8154, %4276
  %8156 = fadd fast float %8146, %6402
  %8157 = fmul fast float %8156, %4276
  %8158 = fadd fast float %8147, %6404
  %8159 = fmul fast float %8158, %4276
  %8160 = fadd fast float %8149, %6383
  %8161 = fmul fast float %8160, %4276
  %8162 = fadd fast float %8151, %6386
  %8163 = fmul fast float %8162, %4276
  %8164 = fadd fast float %8153, %6389
  %8165 = fmul fast float %8164, %4276
  br label %8166

; <label>:8166                                    ; preds = %8112, %7860, %6333
  %8167 = phi float [ %6384, %6333 ], [ %6384, %7860 ], [ %8161, %8112 ]
  %8168 = phi float [ %6387, %6333 ], [ %6387, %7860 ], [ %8163, %8112 ]
  %8169 = phi float [ %6390, %6333 ], [ %6390, %7860 ], [ %8165, %8112 ]
  %8170 = phi float [ %6401, %6333 ], [ %6401, %7860 ], [ %8155, %8112 ]
  %8171 = phi float [ %6403, %6333 ], [ %6403, %7860 ], [ %8157, %8112 ]
  %8172 = phi float [ %6405, %6333 ], [ %6405, %7860 ], [ %8159, %8112 ]
  %8173 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8174 = extractvalue %dx.types.CBufRet.i32 %8173, 0
  %8175 = icmp eq i32 %8174, 0
  br i1 %8175, label %8893, label %8176

; <label>:8176                                    ; preds = %8166
  %8177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %8178 = extractvalue %dx.types.CBufRet.f32 %8177, 2
  %8179 = extractvalue %dx.types.CBufRet.f32 %8177, 3
  %8180 = fmul fast float %8178, %119
  %8181 = fmul fast float %8179, %120
  %8182 = fptoui float %8180 to i32
  %8183 = fptoui float %8181 to i32
  %8184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8185 = extractvalue %dx.types.CBufRet.f32 %8184, 0
  %8186 = extractvalue %dx.types.CBufRet.f32 %8184, 2
  %8187 = extractvalue %dx.types.CBufRet.f32 %8184, 3
  %8188 = fadd fast float %106, -4.000000e+00
  %8189 = call float @dx.op.binary.f32(i32 35, float %8188, float 0.000000e+00)  ; FMax(a,b)
  %8190 = fadd fast float %8189, %8185
  %8191 = fmul fast float %8190, %8186
  %8192 = call float @dx.op.unary.f32(i32 23, float %8191)  ; Log(value)
  %8193 = fmul fast float %8192, %8187
  %8194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8195 = extractvalue %dx.types.CBufRet.f32 %8194, 2
  %8196 = fmul fast float %8193, %8195
  %8197 = call float @dx.op.unary.f32(i32 7, float %8196)  ; Saturate(value)
  %8198 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8199 = extractvalue %dx.types.CBufRet.i32 %8198, 1
  %8200 = add i32 %8199, -1
  %8201 = uitofp i32 %8199 to float
  %8202 = fmul fast float %8201, %8197
  %8203 = fptoui float %8202 to i32
  %8204 = call i32 @dx.op.binary.i32(i32 40, i32 %8203, i32 %8200)  ; UMin(a,b)
  %8205 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %8206 = extractvalue %dx.types.CBufRet.i32 %8205, 2
  %8207 = extractvalue %dx.types.CBufRet.i32 %8205, 3
  %8208 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8183, i32 %8206, i32 %8182)  ; UMad(a,b,c)
  %8209 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8204, i32 %8207, i32 %8208)  ; UMad(a,b,c)
  %8210 = add nsw i32 %8174, -1
  %8211 = call i32 @dx.op.binary.i32(i32 37, i32 %8210, i32 0)  ; IMax(a,b)
  %8212 = call float @dx.op.binary.f32(i32 35, float %106, float 0.000000e+00)  ; FMax(a,b)
  %8213 = fptoui float %8212 to i32
  %8214 = lshr i32 %8213, 5
  %8215 = call i32 @dx.op.binary.i32(i32 40, i32 %8214, i32 8191)  ; UMin(a,b)
  %8216 = shl i32 %8215, 2
  %8217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %8216, i32 undef)  ; BufferLoad(srv,index,wot)
  %8218 = extractvalue %dx.types.ResRet.i32 %8217, 0
  %8219 = lshr i32 %8218, 16
  %8220 = and i32 %8218, 65535
  %8221 = lshr i32 %8218, 21
  %8222 = lshr i32 %8220, 5
  %8223 = call i32 @dx.op.binary.i32(i32 40, i32 %8222, i32 %8211)  ; UMin(a,b)
  %8224 = icmp ugt i32 %8221, %8223
  br i1 %8224, label %8893, label %8225

; <label>:8225                                    ; preds = %8176
  br label %8226

; <label>:8226                                    ; preds = %8883, %8225
  %8227 = phi i32 [ %8890, %8883 ], [ %8221, %8225 ]
  %8228 = phi float [ %8884, %8883 ], [ %8167, %8225 ]
  %8229 = phi float [ %8885, %8883 ], [ %8168, %8225 ]
  %8230 = phi float [ %8886, %8883 ], [ %8169, %8225 ]
  %8231 = phi float [ %8887, %8883 ], [ %8170, %8225 ]
  %8232 = phi float [ %8888, %8883 ], [ %8171, %8225 ]
  %8233 = phi float [ %8889, %8883 ], [ %8172, %8225 ]
  %8234 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8235 = extractvalue %dx.types.CBufRet.i32 %8234, 0
  %8236 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8209, i32 %8235, i32 %8227)  ; UMad(a,b,c)
  %8237 = shl i32 %8236, 2
  %8238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %8237, i32 undef)  ; BufferLoad(srv,index,wot)
  %8239 = extractvalue %dx.types.ResRet.i32 %8238, 0
  %8240 = shl i32 %8227, 5
  %8241 = sub nsw i32 %8219, %8240
  %8242 = call i32 @dx.op.binary.i32(i32 37, i32 %8241, i32 0)  ; IMax(a,b)
  %8243 = call i32 @dx.op.binary.i32(i32 38, i32 %8242, i32 31)  ; IMin(a,b)
  %8244 = sub nsw i32 1, %8219
  %8245 = add nsw i32 %8244, %8220
  %8246 = call i32 @dx.op.binary.i32(i32 37, i32 %8245, i32 0)  ; IMax(a,b)
  %8247 = call i32 @dx.op.binary.i32(i32 38, i32 %8246, i32 32)  ; IMin(a,b)
  %8248 = and i32 %8247, 31
  %8249 = shl i32 -1, %8248
  %8250 = xor i32 %8249, -1
  %8251 = and i32 %8243, 31
  %8252 = shl i32 %8250, %8251
  %8253 = icmp eq i32 %8247, 32
  %8254 = select i1 %8253, i32 -1, i32 %8252
  %8255 = and i32 %8254, %8239
  %8256 = icmp eq i32 %8255, 0
  br i1 %8256, label %8883, label %8257

; <label>:8257                                    ; preds = %8226
  br label %8258

; <label>:8258                                    ; preds = %8392, %8257
  %8259 = phi i32 [ %8270, %8392 ], [ %8255, %8257 ]
  %8260 = phi float [ %8393, %8392 ], [ %8228, %8257 ]
  %8261 = phi float [ %8394, %8392 ], [ %8229, %8257 ]
  %8262 = phi float [ %8395, %8392 ], [ %8230, %8257 ]
  %8263 = phi float [ %8396, %8392 ], [ %8231, %8257 ]
  %8264 = phi float [ %8397, %8392 ], [ %8232, %8257 ]
  %8265 = phi float [ %8398, %8392 ], [ %8233, %8257 ]
  %8266 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %8259)  ; FirstbitLo(value)
  %8267 = add i32 %8266, %8240
  %8268 = and i32 %8266, 31
  %8269 = shl i32 1, %8268
  %8270 = xor i32 %8269, %8259
  %8271 = mul i32 %8267, 112
  %8272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8271, i32 undef)  ; BufferLoad(srv,index,wot)
  %8273 = extractvalue %dx.types.ResRet.f32 %8272, 0
  %8274 = extractvalue %dx.types.ResRet.f32 %8272, 1
  %8275 = extractvalue %dx.types.ResRet.f32 %8272, 2
  %8276 = or i32 %8271, 12
  %8277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8276, i32 undef)  ; BufferLoad(srv,index,wot)
  %8278 = extractvalue %dx.types.ResRet.f32 %8277, 0
  %8279 = add i32 %8271, 16
  %8280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8279, i32 undef)  ; BufferLoad(srv,index,wot)
  %8281 = extractvalue %dx.types.ResRet.f32 %8280, 0
  %8282 = extractvalue %dx.types.ResRet.f32 %8280, 1
  %8283 = extractvalue %dx.types.ResRet.f32 %8280, 2
  %8284 = add i32 %8271, 28
  %8285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %8284, i32 undef)  ; BufferLoad(srv,index,wot)
  %8286 = extractvalue %dx.types.ResRet.i32 %8285, 0
  %8287 = add i32 %8271, 44
  %8288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8287, i32 undef)  ; BufferLoad(srv,index,wot)
  %8289 = extractvalue %dx.types.ResRet.f32 %8288, 0
  %8290 = add i32 %8271, 48
  %8291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8290, i32 undef)  ; BufferLoad(srv,index,wot)
  %8292 = extractvalue %dx.types.ResRet.f32 %8291, 0
  %8293 = extractvalue %dx.types.ResRet.f32 %8291, 1
  %8294 = extractvalue %dx.types.ResRet.f32 %8291, 2
  %8295 = extractvalue %dx.types.ResRet.f32 %8291, 3
  %8296 = add i32 %8271, 64
  %8297 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8296, i32 undef)  ; BufferLoad(srv,index,wot)
  %8298 = extractvalue %dx.types.ResRet.f32 %8297, 0
  %8299 = extractvalue %dx.types.ResRet.f32 %8297, 1
  %8300 = extractvalue %dx.types.ResRet.f32 %8297, 2
  %8301 = extractvalue %dx.types.ResRet.f32 %8297, 3
  %8302 = add i32 %8271, 80
  %8303 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8302, i32 undef)  ; BufferLoad(srv,index,wot)
  %8304 = extractvalue %dx.types.ResRet.f32 %8303, 1
  %8305 = extractvalue %dx.types.ResRet.f32 %8303, 2
  %8306 = add i32 %8271, 92
  %8307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %8306, i32 undef)  ; BufferLoad(srv,index,wot)
  %8308 = extractvalue %dx.types.ResRet.i32 %8307, 0
  %8309 = call float @dx.op.dot3.f32(i32 55, float %8273, float %8274, float %8275, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8310 = select i1 %289, float %8304, float %8273
  %8311 = select i1 %289, float %8309, float %8274
  %8312 = select i1 %289, float %8305, float %8275
  %8313 = and i32 %8308, 65535
  %8314 = uitofp i32 %8313 to float
  %8315 = lshr i32 %8308, 16
  %8316 = uitofp i32 %8315 to float
  %8317 = and i32 %8286, 65535
  %8318 = and i32 %8286, 50331648
  %8319 = icmp eq i32 %8318, 33554432
  %8320 = fsub fast float %8292, %198
  %8321 = fsub fast float %8293, %199
  %8322 = fsub fast float %8294, %200
  %8323 = call float @dx.op.dot3.f32(i32 55, float %8320, float %8321, float %8322, float %8320, float %8321, float %8322)  ; Dot3(ax,ay,az,bx,by,bz)
  %8324 = call float @dx.op.unary.f32(i32 24, float %8323)  ; Sqrt(value)
  %8325 = fdiv fast float 1.000000e+00, %8324
  %8326 = fmul fast float %8325, %8320
  %8327 = fmul fast float %8325, %8321
  %8328 = fmul fast float %8325, %8322
  %8329 = fadd fast float %8324, %8278
  %8330 = fdiv fast float 1.000000e+00, %8329
  %8331 = fmul float %8289, %8330
  %8332 = fmul float %8331, %8331
  %8333 = call float @dx.op.unary.f32(i32 7, float %8332)  ; Saturate(value)
  br i1 %8319, label %8334, label %8355

; <label>:8334                                    ; preds = %8258
  %8335 = fmul fast float %8300, %8281
  %8336 = fmul fast float %8300, %8282
  %8337 = fmul fast float %8300, %8283
  %8338 = fadd fast float %8320, %8335
  %8339 = fadd fast float %8321, %8336
  %8340 = fadd fast float %8322, %8337
  %8341 = call float @dx.op.dot3.f32(i32 55, float %8338, float %8339, float %8340, float %8338, float %8339, float %8340)  ; Dot3(ax,ay,az,bx,by,bz)
  %8342 = call float @dx.op.unary.f32(i32 25, float %8341)  ; Rsqrt(value)
  %8343 = fmul fast float %8342, %8338
  %8344 = fmul fast float %8342, %8339
  %8345 = fmul fast float %8342, %8340
  %8346 = fsub fast float %198, %8292
  %8347 = fsub fast float %199, %8293
  %8348 = fsub fast float %200, %8294
  %8349 = fsub fast float -0.000000e+00, %8346
  %8350 = fsub fast float -0.000000e+00, %8347
  %8351 = fsub fast float -0.000000e+00, %8348
  %8352 = call float @dx.op.dot3.f32(i32 55, float %8349, float %8350, float %8351, float %8281, float %8282, float %8283)  ; Dot3(ax,ay,az,bx,by,bz)
  %8353 = fcmp fast ogt float %8352, 0.000000e+00
  %8354 = uitofp i1 %8353 to float
  br label %8355

; <label>:8355                                    ; preds = %8334, %8258
  %8356 = phi float [ %8354, %8334 ], [ 1.000000e+00, %8258 ]
  %8357 = phi float [ %8343, %8334 ], [ %8326, %8258 ]
  %8358 = phi float [ %8344, %8334 ], [ %8327, %8258 ]
  %8359 = phi float [ %8345, %8334 ], [ %8328, %8258 ]
  %8360 = call float @dx.op.dot3.f32(i32 55, float %8281, float %8282, float %8283, float %8357, float %8358, float %8359)  ; Dot3(ax,ay,az,bx,by,bz)
  %8361 = fmul fast float %8360, %8360
  %8362 = call float @dx.op.unary.f32(i32 7, float %8361)  ; Saturate(value)
  %8363 = fsub fast float 1.000000e+00, %8362
  %8364 = fmul fast float %8363, 5.000000e-01
  %8365 = fcmp fast ogt float %8360, 0.000000e+00
  %8366 = fsub fast float 1.000000e+00, %8364
  %8367 = select i1 %8365, float %8364, float %8366
  %8368 = fmul fast float %8367, %8316
  %8369 = fadd fast float %8368, %8314
  %8370 = fmul fast float %8369, 0x3EF0001000000000
  %8371 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %54, float %8370, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8372 = extractvalue %dx.types.ResRet.f32 %8371, 0
  %8373 = fmul fast float %8360, %8298
  %8374 = fadd fast float %8373, %8299
  %8375 = call float @dx.op.unary.f32(i32 7, float %8374)  ; Saturate(value)
  %8376 = select i1 %8319, float 1.000000e+00, float %8375
  %8377 = select i1 %8319, float %8375, float 1.000000e+00
  %8378 = fmul fast float %8324, %8295
  %8379 = fsub fast float 1.000000e+00, %8378
  %8380 = fmul fast float %8379, %8301
  %8381 = call float @dx.op.unary.f32(i32 7, float %8380)  ; Saturate(value)
  %8382 = fmul fast float %8381, %8377
  %8383 = fmul fast float %8382, 2.000000e+00
  %8384 = fsub fast float 3.000000e+00, %8383
  %8385 = fmul fast float %8372, %8356
  %8386 = fmul fast float %8382, %8382
  %8387 = fmul fast float %8386, %8385
  %8388 = fmul fast float %8387, %8384
  %8389 = call float @dx.op.binary.f32(i32 36, float %8388, float %8388)  ; FMin(a,b)
  %8390 = call float @dx.op.binary.f32(i32 36, float %8388, float %8389)  ; FMin(a,b)
  %8391 = fcmp fast ogt float %8390, 0.000000e+00
  br i1 %8391, label %8400, label %8392, !dx.controlflow.hints !136

; <label>:8392                                    ; preds = %8831, %8546, %8355
  %8393 = phi float [ %8260, %8546 ], [ %8260, %8355 ], [ %8879, %8831 ]
  %8394 = phi float [ %8261, %8546 ], [ %8261, %8355 ], [ %8880, %8831 ]
  %8395 = phi float [ %8262, %8546 ], [ %8262, %8355 ], [ %8881, %8831 ]
  %8396 = phi float [ %8263, %8546 ], [ %8263, %8355 ], [ %8870, %8831 ]
  %8397 = phi float [ %8264, %8546 ], [ %8264, %8355 ], [ %8871, %8831 ]
  %8398 = phi float [ %8265, %8546 ], [ %8265, %8355 ], [ %8872, %8831 ]
  %8399 = icmp eq i32 %8259, %8269
  br i1 %8399, label %8882, label %8258

; <label>:8400                                    ; preds = %8355
  %8401 = icmp eq i32 %8317, 255
  br i1 %8401, label %8546, label %8402, !dx.controlflow.hints !137

; <label>:8402                                    ; preds = %8400
  %8403 = mul nuw nsw i32 %8317, 176
  %8404 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8403, i32 undef)  ; BufferLoad(srv,index,wot)
  %8405 = extractvalue %dx.types.ResRet.f32 %8404, 0
  %8406 = extractvalue %dx.types.ResRet.f32 %8404, 1
  %8407 = extractvalue %dx.types.ResRet.f32 %8404, 2
  %8408 = extractvalue %dx.types.ResRet.f32 %8404, 3
  %8409 = add nuw nsw i32 %8403, 16
  %8410 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8409, i32 undef)  ; BufferLoad(srv,index,wot)
  %8411 = extractvalue %dx.types.ResRet.f32 %8410, 0
  %8412 = extractvalue %dx.types.ResRet.f32 %8410, 1
  %8413 = add nuw nsw i32 %8403, 32
  %8414 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8413, i32 undef)  ; BufferLoad(srv,index,wot)
  %8415 = extractvalue %dx.types.ResRet.f32 %8414, 0
  %8416 = extractvalue %dx.types.ResRet.f32 %8414, 1
  %8417 = extractvalue %dx.types.ResRet.f32 %8414, 2
  %8418 = add nuw nsw i32 %8403, 48
  %8419 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8418, i32 undef)  ; BufferLoad(srv,index,wot)
  %8420 = extractvalue %dx.types.ResRet.f32 %8419, 0
  %8421 = extractvalue %dx.types.ResRet.f32 %8419, 1
  %8422 = extractvalue %dx.types.ResRet.f32 %8419, 2
  %8423 = extractvalue %dx.types.ResRet.f32 %8419, 3
  %8424 = add nuw nsw i32 %8403, 64
  %8425 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8424, i32 undef)  ; BufferLoad(srv,index,wot)
  %8426 = extractvalue %dx.types.ResRet.f32 %8425, 0
  %8427 = extractvalue %dx.types.ResRet.f32 %8425, 1
  %8428 = extractvalue %dx.types.ResRet.f32 %8425, 2
  %8429 = extractvalue %dx.types.ResRet.f32 %8425, 3
  %8430 = add nuw nsw i32 %8403, 80
  %8431 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8430, i32 undef)  ; BufferLoad(srv,index,wot)
  %8432 = extractvalue %dx.types.ResRet.f32 %8431, 0
  %8433 = extractvalue %dx.types.ResRet.f32 %8431, 1
  %8434 = extractvalue %dx.types.ResRet.f32 %8431, 2
  %8435 = extractvalue %dx.types.ResRet.f32 %8431, 3
  %8436 = add nuw nsw i32 %8403, 96
  %8437 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8436, i32 undef)  ; BufferLoad(srv,index,wot)
  %8438 = extractvalue %dx.types.ResRet.f32 %8437, 0
  %8439 = extractvalue %dx.types.ResRet.f32 %8437, 1
  %8440 = extractvalue %dx.types.ResRet.f32 %8437, 2
  %8441 = extractvalue %dx.types.ResRet.f32 %8437, 3
  %8442 = bitcast float %8412 to i32
  %8443 = fmul fast float %8417, %126
  %8444 = fmul fast float %8417, %127
  %8445 = fmul fast float %8417, %128
  %8446 = fadd fast float %8443, %198
  %8447 = fadd fast float %8444, %199
  %8448 = fadd fast float %8445, %200
  %8449 = fmul fast float %8446, %8420
  %8450 = call float @dx.op.tertiary.f32(i32 46, float %8447, float %8426, float %8449)  ; FMad(a,b,c)
  %8451 = call float @dx.op.tertiary.f32(i32 46, float %8448, float %8432, float %8450)  ; FMad(a,b,c)
  %8452 = fadd fast float %8451, %8438
  %8453 = fmul fast float %8446, %8421
  %8454 = call float @dx.op.tertiary.f32(i32 46, float %8447, float %8427, float %8453)  ; FMad(a,b,c)
  %8455 = call float @dx.op.tertiary.f32(i32 46, float %8448, float %8433, float %8454)  ; FMad(a,b,c)
  %8456 = fadd fast float %8455, %8439
  %8457 = fmul fast float %8446, %8422
  %8458 = call float @dx.op.tertiary.f32(i32 46, float %8447, float %8428, float %8457)  ; FMad(a,b,c)
  %8459 = call float @dx.op.tertiary.f32(i32 46, float %8448, float %8434, float %8458)  ; FMad(a,b,c)
  %8460 = fadd fast float %8459, %8440
  %8461 = fmul fast float %8446, %8423
  %8462 = call float @dx.op.tertiary.f32(i32 46, float %8447, float %8429, float %8461)  ; FMad(a,b,c)
  %8463 = call float @dx.op.tertiary.f32(i32 46, float %8448, float %8435, float %8462)  ; FMad(a,b,c)
  %8464 = fadd fast float %8463, %8441
  %8465 = fdiv fast float %8452, %8464
  %8466 = fdiv fast float %8456, %8464
  %8467 = fdiv fast float %8460, %8464
  %8468 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8467)  ; FMax(a,b)
  %8469 = fmul fast float %300, 0x401921FB60000000
  %8470 = call float @dx.op.unary.f32(i32 13, float %8469)  ; Sin(value)
  %8471 = call float @dx.op.unary.f32(i32 12, float %8469)  ; Cos(value)
  %8472 = fmul fast float %8471, %8416
  %8473 = call float @dx.op.tertiary.f32(i32 46, float %8470, float %8416, float 0.000000e+00)  ; FMad(a,b,c)
  %8474 = fmul fast float %8416, %8470
  %8475 = fsub fast float -0.000000e+00, %8474
  %8476 = call float @dx.op.tertiary.f32(i32 46, float %8471, float %8416, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8477

; <label>:8477                                    ; preds = %8477, %8402
  %8478 = phi float [ 0.000000e+00, %8402 ], [ %8510, %8477 ]
  %8479 = phi float [ 0.000000e+00, %8402 ], [ %8512, %8477 ]
  %8480 = phi i32 [ 0, %8402 ], [ %8513, %8477 ]
  %8481 = mul i32 %8480, 2
  %8482 = add i32 0, %8481
  %8483 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8482
  %8484 = load float, float* %8483, align 4
  %8485 = mul i32 %8480, 2
  %8486 = add i32 1, %8485
  %8487 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8486
  %8488 = load float, float* %8487, align 4
  %8489 = fmul fast float %8472, %8484
  %8490 = call float @dx.op.tertiary.f32(i32 46, float %8488, float %8475, float %8489)  ; FMad(a,b,c)
  %8491 = fmul fast float %8484, %8473
  %8492 = call float @dx.op.tertiary.f32(i32 46, float %8488, float %8476, float %8491)  ; FMad(a,b,c)
  %8493 = fadd fast float %8490, %8465
  %8494 = fadd fast float %8492, %8466
  %8495 = fmul fast float %8493, %8411
  %8496 = fmul fast float %8494, %8411
  %8497 = call float @dx.op.binary.f32(i32 35, float %8495, float %8407)  ; FMax(a,b)
  %8498 = call float @dx.op.binary.f32(i32 35, float %8496, float %8407)  ; FMax(a,b)
  %8499 = call float @dx.op.binary.f32(i32 36, float %8497, float %8408)  ; FMin(a,b)
  %8500 = call float @dx.op.binary.f32(i32 36, float %8498, float %8408)  ; FMin(a,b)
  %8501 = fadd fast float %8499, %8405
  %8502 = fadd fast float %8500, %8406
  %8503 = uitofp i32 %8442 to float
  %8504 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %55, float %8501, float %8502, float %8503, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8505 = extractvalue %dx.types.ResRet.f32 %8504, 0
  %8506 = fsub fast float %8505, %8468
  %8507 = fsub fast float %8506, %8415
  %8508 = fcmp fast ogt float %8507, 0.000000e+00
  %8509 = select i1 %8508, float 1.000000e+00, float 0.000000e+00
  %8510 = fadd fast float %8509, %8478
  %8511 = select i1 %8508, float %8507, float 0.000000e+00
  %8512 = fadd fast float %8511, %8479
  %8513 = add nuw nsw i32 %8480, 1
  %8514 = icmp eq i32 %8513, 8
  br i1 %8514, label %8515, label %8477

; <label>:8515                                    ; preds = %8477
  %8516 = fdiv fast float 1.000000e+00, %8510
  %8517 = fmul fast float %8516, %8512
  %8518 = fdiv fast float 1.000000e+00, %8468
  %8519 = fmul fast float %8517, %8518
  %8520 = call float @dx.op.unary.f32(i32 7, float %8519)  ; Saturate(value)
  %8521 = call float @dx.op.binary.f32(i32 35, float %8520, float 0.000000e+00)  ; FMax(a,b)
  %8522 = fmul fast float %8510, 1.250000e-01
  %8523 = call float @dx.op.unary.f32(i32 7, float %8522)  ; Saturate(value)
  %8524 = fmul fast float %8523, 2.000000e+00
  %8525 = fadd fast float %8524, -1.000000e+00
  %8526 = fcmp fast ogt float %8525, 0.000000e+00
  %8527 = fcmp fast olt float %8525, 0.000000e+00
  %8528 = zext i1 %8526 to i32
  %8529 = zext i1 %8527 to i32
  %8530 = sub nsw i32 %8528, %8529
  %8531 = sitofp i32 %8530 to float
  %8532 = fmul fast float %8531, %8525
  %8533 = fsub fast float 1.000000e+00, %8532
  %8534 = fmul fast float %8533, %8533
  %8535 = fmul fast float %8534, %8533
  %8536 = fsub fast float %8533, %8535
  %8537 = fmul fast float %8536, %8521
  %8538 = fsub fast float 1.000000e+00, %8535
  %8539 = fsub fast float %8538, %8537
  %8540 = fmul fast float %8531, 5.000000e-01
  %8541 = fmul fast float %8540, %8539
  %8542 = fsub fast float -5.000000e-01, %8541
  %8543 = fmul fast float %8542, %8376
  %8544 = fadd fast float %8543, 1.000000e+00
  %8545 = fmul fast float %8544, %8388
  br label %8546

; <label>:8546                                    ; preds = %8515, %8400
  %8547 = phi float [ %8545, %8515 ], [ %8388, %8400 ]
  %8548 = call float @dx.op.binary.f32(i32 36, float %8547, float %8547)  ; FMin(a,b)
  %8549 = call float @dx.op.binary.f32(i32 36, float %8547, float %8548)  ; FMin(a,b)
  %8550 = fcmp fast ogt float %8549, 0.000000e+00
  br i1 %8550, label %8551, label %8392, !dx.controlflow.hints !138

; <label>:8551                                    ; preds = %8546
  %8552 = fmul fast float %8547, %8310
  %8553 = fmul fast float %8547, %8311
  %8554 = fmul fast float %8547, %8312
  %8555 = fsub fast float %8294, %4742
  %8556 = fcmp fast ogt float %8555, 0.000000e+00
  %8557 = fsub fast float %200, %4742
  %8558 = fcmp fast ogt float %8557, 0.000000e+00
  %8559 = xor i1 %8558, %8556
  %8560 = fsub fast float %4742, %8294
  %8561 = fmul fast float %8560, 2.000000e+00
  %8562 = fadd fast float %8561, %8294
  %8563 = select i1 %8559, float %8294, float %8562
  %8564 = fsub fast float %8563, %200
  %8565 = call float @dx.op.dot3.f32(i32 55, float %8320, float %8321, float %8564, float %8320, float %8321, float %8564)  ; Dot3(ax,ay,az,bx,by,bz)
  %8566 = call float @dx.op.unary.f32(i32 25, float %8565)  ; Rsqrt(value)
  %8567 = fmul fast float %8566, %8320
  %8568 = fmul fast float %8566, %8321
  %8569 = fmul fast float %8566, %8564
  %8570 = fsub fast float %4742, %200
  %8571 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8570)  ; Dot3(ax,ay,az,bx,by,bz)
  %8572 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8567, float %8568, float %8569)  ; Dot3(ax,ay,az,bx,by,bz)
  %8573 = fdiv fast float 1.000000e+00, %8572
  %8574 = fmul fast float %8573, %8571
  %8575 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8557, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8576 = fcmp fast ogt float %8575, 0.000000e+00
  %8577 = fcmp fast olt float %8575, 0.000000e+00
  %8578 = zext i1 %8576 to i32
  %8579 = zext i1 %8577 to i32
  %8580 = sub nsw i32 %8578, %8579
  %8581 = sitofp i32 %8580 to float
  %8582 = fsub fast float %8563, %4742
  %8583 = call float @dx.op.dot3.f32(i32 55, float %8320, float %8321, float %8582, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8584 = fcmp fast ogt float %8583, 0.000000e+00
  %8585 = fcmp fast olt float %8583, 0.000000e+00
  %8586 = zext i1 %8584 to i32
  %8587 = zext i1 %8585 to i32
  %8588 = sub nsw i32 %8586, %8587
  %8589 = sitofp i32 %8588 to float
  %8590 = fcmp fast une float %8581, %8589
  br i1 %8590, label %8591, label %8601

; <label>:8591                                    ; preds = %8551
  %8592 = fmul fast float %8574, %8569
  %8593 = fmul fast float %8574, %8568
  %8594 = fmul fast float %8574, %8567
  %8595 = fmul fast float %8594, %8594
  %8596 = fmul fast float %8593, %8593
  %8597 = fadd fast float %8595, %8596
  %8598 = fmul fast float %8592, %8592
  %8599 = fadd fast float %8597, %8598
  %8600 = call float @dx.op.unary.f32(i32 24, float %8599)  ; Sqrt(value)
  br label %8613

; <label>:8601                                    ; preds = %8551
  %8602 = icmp slt i32 %8580, 0
  br i1 %8602, label %8603, label %8613

; <label>:8603                                    ; preds = %8601
  %8604 = fsub fast float %198, %8292
  %8605 = fsub fast float %199, %8293
  %8606 = fsub fast float %200, %8563
  %8607 = fmul fast float %8604, %8604
  %8608 = fmul fast float %8605, %8605
  %8609 = fadd fast float %8607, %8608
  %8610 = fmul fast float %8606, %8606
  %8611 = fadd fast float %8609, %8610
  %8612 = call float @dx.op.unary.f32(i32 24, float %8611)  ; Sqrt(value)
  br label %8613

; <label>:8613                                    ; preds = %8603, %8601, %8591
  %8614 = phi float [ %8600, %8591 ], [ %8612, %8603 ], [ 0.000000e+00, %8601 ]
  %8615 = and i1 %8558, %8556
  %8616 = fsub fast float -0.000000e+00, %8614
  %8617 = select i1 %8615, float -0.000000e+00, float %8616
  %8618 = fmul fast float %4739, 0x3FF7154760000000
  %8619 = fmul fast float %8618, %8617
  %8620 = fmul fast float %4740, 0x3FF7154760000000
  %8621 = fmul fast float %8620, %8617
  %8622 = fmul fast float %4741, 0x3FF7154760000000
  %8623 = fmul fast float %8622, %8617
  %8624 = call float @dx.op.unary.f32(i32 21, float %8619)  ; Exp(value)
  %8625 = call float @dx.op.unary.f32(i32 21, float %8621)  ; Exp(value)
  %8626 = call float @dx.op.unary.f32(i32 21, float %8623)  ; Exp(value)
  %8627 = call float @dx.op.unary.f32(i32 7, float %8624)  ; Saturate(value)
  %8628 = call float @dx.op.unary.f32(i32 7, float %8625)  ; Saturate(value)
  %8629 = call float @dx.op.unary.f32(i32 7, float %8626)  ; Saturate(value)
  %8630 = fmul fast float %8552, %8627
  %8631 = fmul fast float %8553, %8628
  %8632 = fmul fast float %8554, %8629
  %8633 = fsub fast float %8326, %218
  %8634 = fsub fast float %8327, %219
  %8635 = fsub fast float %8328, %220
  %8636 = call float @dx.op.dot3.f32(i32 55, float %8633, float %8634, float %8635, float %8633, float %8634, float %8635)  ; Dot3(ax,ay,az,bx,by,bz)
  %8637 = call float @dx.op.unary.f32(i32 25, float %8636)  ; Rsqrt(value)
  %8638 = fmul fast float %8637, %8633
  %8639 = fmul fast float %8637, %8634
  %8640 = fmul fast float %8637, %8635
  %8641 = call float @dx.op.dot3.f32(i32 55, float %8326, float %8327, float %8328, float %5517, float %5518, float %5519)  ; Dot3(ax,ay,az,bx,by,bz)
  %8642 = call float @dx.op.dot3.f32(i32 55, float %5349, float %5350, float %5351, float %8638, float %8639, float %8640)  ; Dot3(ax,ay,az,bx,by,bz)
  %8643 = call float @dx.op.unary.f32(i32 7, float %8641)  ; Saturate(value)
  %8644 = fmul fast float %8643, %8333
  %8645 = fmul fast float %8643, %8643
  %8646 = fmul fast float %8645, %5553
  %8647 = call float @dx.op.unary.f32(i32 7, float %8646)  ; Saturate(value)
  %8648 = fmul fast float %8644, %8647
  %8649 = bitcast float %8323 to i32
  %8650 = ashr i32 %8649, 1
  %8651 = sub nsw i32 1597463007, %8650
  %8652 = bitcast i32 %8651 to float
  %8653 = fmul fast float %8652, %8320
  %8654 = fmul fast float %8652, %8321
  %8655 = fmul fast float %8652, %8322
  %8656 = fsub fast float %8653, %218
  %8657 = fsub fast float %8654, %219
  %8658 = fsub fast float %8655, %220
  %8659 = call float @dx.op.dot3.f32(i32 55, float %8656, float %8657, float %8658, float %8656, float %8657, float %8658)  ; Dot3(ax,ay,az,bx,by,bz)
  %8660 = call float @dx.op.unary.f32(i32 25, float %8659)  ; Rsqrt(value)
  %8661 = fmul fast float %8656, %8660
  %8662 = fmul fast float %8657, %8660
  %8663 = fmul fast float %8658, %8660
  %8664 = call float @dx.op.dot3.f32(i32 55, float %5517, float %5518, float %5519, float %8661, float %8662, float %8663)  ; Dot3(ax,ay,az,bx,by,bz)
  %8665 = fmul fast float %8664, %8664
  %8666 = call float @dx.op.unary.f32(i32 6, float %8641)  ; FAbs(value)
  %8667 = fsub fast float 1.000000e+00, %5546
  %8668 = fmul fast float %5528, %5528
  %8669 = fmul fast float %8668, %8667
  %8670 = fadd fast float %8669, %5546
  %8671 = bitcast float %8670 to i32
  %8672 = ashr i32 %8671, 1
  %8673 = add nsw i32 %8672, 532487669
  %8674 = bitcast i32 %8673 to float
  %8675 = fadd fast float %8674, %5528
  %8676 = fmul fast float %5546, %8665
  %8677 = fsub fast float 1.000000e+00, %8665
  %8678 = fadd fast float %8677, %8676
  %8679 = fmul fast float %8666, %8666
  %8680 = fmul fast float %8679, %8667
  %8681 = fadd fast float %8680, %5546
  %8682 = bitcast float %8681 to i32
  %8683 = ashr i32 %8682, 1
  %8684 = add nsw i32 %8683, 532487669
  %8685 = bitcast i32 %8684 to float
  %8686 = fadd fast float %8685, %8666
  %8687 = fmul fast float %8678, %8678
  %8688 = fmul fast float %8687, %8675
  %8689 = fmul fast float %8688, %8686
  %8690 = fdiv fast float 1.000000e+00, %8689
  %8691 = bitcast float %5546 to i32
  %8692 = sitofp i32 %8691 to float
  %8693 = fmul fast float %8692, 0x3FE7F73180000000
  %8694 = fadd fast float %8693, 0x41AFE27C40000000
  %8695 = fptosi float %8694 to i32
  %8696 = bitcast i32 %8695 to float
  %8697 = fmul fast float %8289, 0x3FD80E9D60000000
  %8698 = fmul fast float %8697, %8652
  %8699 = fadd fast float %8696, %8698
  %8700 = bitcast float %8699 to i32
  %8701 = sub nsw i32 2129859010, %8700
  %8702 = bitcast i32 %8701 to float
  %8703 = fmul fast float %5546, %8690
  %8704 = fmul fast float %8703, %8696
  %8705 = fmul fast float %8704, %8702
  %8706 = call float @dx.op.unary.f32(i32 6, float %8642)  ; FAbs(value)
  %8707 = fsub fast float 1.000000e+00, %8706
  %8708 = bitcast float %8707 to i32
  %8709 = sitofp i32 %8708 to float
  %8710 = fmul fast float %8709, 5.000000e+00
  %8711 = fadd fast float %8710, 0xC1EFBF8940000000
  %8712 = fptosi float %8711 to i32
  %8713 = bitcast i32 %8712 to float
  %8714 = fsub fast float 1.000000e+00, %5520
  %8715 = fsub fast float 1.000000e+00, %5521
  %8716 = fsub fast float 1.000000e+00, %5526
  %8717 = fmul fast float %8713, %8714
  %8718 = fmul fast float %8713, %8715
  %8719 = fmul fast float %8713, %8716
  %8720 = fadd fast float %8717, %5520
  %8721 = fadd fast float %8718, %5521
  %8722 = fadd fast float %8719, %5526
  br i1 %5811, label %8723, label %8746

; <label>:8723                                    ; preds = %8613
  %8724 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %4250, float %8706, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8725 = extractvalue %dx.types.ResRet.f32 %8724, 0
  %8726 = extractvalue %dx.types.ResRet.f32 %8724, 1
  %8727 = extractvalue %dx.types.ResRet.f32 %8724, 2
  %8728 = fadd fast float %8725, -5.000000e-01
  %8729 = fadd fast float %8726, -5.000000e-01
  %8730 = fadd fast float %8727, -5.000000e-01
  %8731 = fmul fast float %5520, 4.000000e+00
  %8732 = fmul fast float %8731, %8714
  %8733 = fmul fast float %8732, %8728
  %8734 = fmul fast float %5521, 4.000000e+00
  %8735 = fmul fast float %8734, %8715
  %8736 = fmul fast float %8735, %8729
  %8737 = fmul fast float %5526, 4.000000e+00
  %8738 = fmul fast float %8737, %8716
  %8739 = fmul fast float %8738, %8730
  %8740 = fadd fast float %8733, %8720
  %8741 = fadd fast float %8736, %8721
  %8742 = fadd fast float %8739, %8722
  %8743 = call float @dx.op.unary.f32(i32 7, float %8740)  ; Saturate(value)
  %8744 = call float @dx.op.unary.f32(i32 7, float %8741)  ; Saturate(value)
  %8745 = call float @dx.op.unary.f32(i32 7, float %8742)  ; Saturate(value)
  br label %8746

; <label>:8746                                    ; preds = %8723, %8613
  %8747 = phi float [ %8743, %8723 ], [ %8720, %8613 ]
  %8748 = phi float [ %8744, %8723 ], [ %8721, %8613 ]
  %8749 = phi float [ %8745, %8723 ], [ %8722, %8613 ]
  %8750 = fmul fast float %8641, 9.843750e-01
  %8751 = fadd fast float %8750, 7.812500e-03
  %8752 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %8751, float %5801, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8753 = extractvalue %dx.types.ResRet.f32 %8752, 2
  %8754 = extractvalue %dx.types.ResRet.f32 %8752, 3
  %8755 = fmul fast float %8753, %5520
  %8756 = fmul fast float %8753, %5521
  %8757 = fmul fast float %8753, %5526
  %8758 = fadd fast float %8755, %8754
  %8759 = fadd fast float %8756, %8754
  %8760 = fadd fast float %8757, %8754
  br i1 %5811, label %8761, label %8784

; <label>:8761                                    ; preds = %8746
  %8762 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %4250, float %8641, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8763 = extractvalue %dx.types.ResRet.f32 %8762, 0
  %8764 = extractvalue %dx.types.ResRet.f32 %8762, 1
  %8765 = extractvalue %dx.types.ResRet.f32 %8762, 2
  %8766 = fadd fast float %8763, -5.000000e-01
  %8767 = fadd fast float %8764, -5.000000e-01
  %8768 = fadd fast float %8765, -5.000000e-01
  %8769 = fmul fast float %5520, 4.000000e+00
  %8770 = fmul fast float %8769, %8714
  %8771 = fmul fast float %8770, %8766
  %8772 = fmul fast float %5521, 4.000000e+00
  %8773 = fmul fast float %8772, %8715
  %8774 = fmul fast float %8773, %8767
  %8775 = fmul fast float %5526, 4.000000e+00
  %8776 = fmul fast float %8775, %8716
  %8777 = fmul fast float %8776, %8768
  %8778 = fadd fast float %8771, %8758
  %8779 = fadd fast float %8774, %8759
  %8780 = fadd fast float %8777, %8760
  %8781 = call float @dx.op.unary.f32(i32 7, float %8778)  ; Saturate(value)
  %8782 = call float @dx.op.unary.f32(i32 7, float %8779)  ; Saturate(value)
  %8783 = call float @dx.op.unary.f32(i32 7, float %8780)  ; Saturate(value)
  br label %8784

; <label>:8784                                    ; preds = %8761, %8746
  %8785 = phi float [ %8781, %8761 ], [ %8758, %8746 ]
  %8786 = phi float [ %8782, %8761 ], [ %8759, %8746 ]
  %8787 = phi float [ %8783, %8761 ], [ %8760, %8746 ]
  %8788 = call float @dx.op.binary.f32(i32 35, float %8786, float %8787)  ; FMax(a,b)
  %8789 = call float @dx.op.binary.f32(i32 35, float %8785, float %8788)  ; FMax(a,b)
  %8790 = fsub fast float 1.000000e+00, %8789
  %8791 = fsub fast float -0.000000e+00, %5517
  %8792 = fsub fast float -0.000000e+00, %5518
  %8793 = fsub fast float -0.000000e+00, %5519
  %8794 = call float @dx.op.dot3.f32(i32 55, float %8326, float %8327, float %8328, float %8791, float %8792, float %8793)  ; Dot3(ax,ay,az,bx,by,bz)
  %8795 = call float @dx.op.unary.f32(i32 7, float %8794)  ; Saturate(value)
  %8796 = fmul fast float %8795, %8333
  %8797 = fmul fast float %8795, 9.843750e-01
  %8798 = fadd fast float %8797, 7.812500e-03
  %8799 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %8798, float %5801, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8800 = extractvalue %dx.types.ResRet.f32 %8799, 2
  %8801 = extractvalue %dx.types.ResRet.f32 %8799, 3
  %8802 = fmul fast float %8800, %5520
  %8803 = fmul fast float %8800, %5521
  %8804 = fmul fast float %8800, %5526
  %8805 = fadd fast float %8802, %8801
  %8806 = fadd fast float %8803, %8801
  %8807 = fadd fast float %8804, %8801
  br i1 %5811, label %8808, label %8831

; <label>:8808                                    ; preds = %8784
  %8809 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %4250, float %8795, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8810 = extractvalue %dx.types.ResRet.f32 %8809, 0
  %8811 = extractvalue %dx.types.ResRet.f32 %8809, 1
  %8812 = extractvalue %dx.types.ResRet.f32 %8809, 2
  %8813 = fadd fast float %8810, -5.000000e-01
  %8814 = fadd fast float %8811, -5.000000e-01
  %8815 = fadd fast float %8812, -5.000000e-01
  %8816 = fmul fast float %5520, 4.000000e+00
  %8817 = fmul fast float %8816, %8714
  %8818 = fmul fast float %8817, %8813
  %8819 = fmul fast float %5521, 4.000000e+00
  %8820 = fmul fast float %8819, %8715
  %8821 = fmul fast float %8820, %8814
  %8822 = fmul fast float %5526, 4.000000e+00
  %8823 = fmul fast float %8822, %8716
  %8824 = fmul fast float %8823, %8815
  %8825 = fadd fast float %8818, %8805
  %8826 = fadd fast float %8821, %8806
  %8827 = fadd fast float %8824, %8807
  %8828 = call float @dx.op.unary.f32(i32 7, float %8825)  ; Saturate(value)
  %8829 = call float @dx.op.unary.f32(i32 7, float %8826)  ; Saturate(value)
  %8830 = call float @dx.op.unary.f32(i32 7, float %8827)  ; Saturate(value)
  br label %8831

; <label>:8831                                    ; preds = %8808, %8784
  %8832 = phi float [ %8828, %8808 ], [ %8805, %8784 ]
  %8833 = phi float [ %8829, %8808 ], [ %8806, %8784 ]
  %8834 = phi float [ %8830, %8808 ], [ %8807, %8784 ]
  %8835 = call float @dx.op.binary.f32(i32 35, float %8833, float %8834)  ; FMax(a,b)
  %8836 = call float @dx.op.binary.f32(i32 35, float %8832, float %8835)  ; FMax(a,b)
  %8837 = fsub fast float 1.000000e+00, %8836
  %8838 = fmul fast float %8796, %8837
  %8839 = fmul fast float %8838, %4362
  %8840 = fmul fast float %8838, %4363
  %8841 = fmul fast float %8838, %4364
  %8842 = fmul fast float %8747, %8705
  %8843 = fmul fast float %8748, %8705
  %8844 = fmul fast float %8749, %8705
  %8845 = fsub fast float 1.000000e+00, %8642
  %8846 = bitcast float %8845 to i32
  %8847 = sitofp i32 %8846 to float
  %8848 = fmul fast float %8847, 5.000000e+00
  %8849 = fadd fast float %8848, 0xC1EFBF8940000000
  %8850 = fptosi float %8849 to i32
  %8851 = bitcast i32 %8850 to float
  %8852 = fmul fast float %8851, %4251
  %8853 = fmul fast float %8790, %8852
  %8854 = fmul fast float %8853, %6350
  %8855 = fmul fast float %8853, %6351
  %8856 = fmul fast float %8853, %6352
  %8857 = fmul fast float %8790, %8648
  %8858 = fadd fast float %8854, %8842
  %8859 = fadd fast float %8855, %8843
  %8860 = fadd fast float %8856, %8844
  %8861 = fadd fast float %8839, %8857
  %8862 = fadd fast float %8840, %8857
  %8863 = fadd fast float %8841, %8857
  %8864 = fmul fast float %8630, %4276
  %8865 = fmul fast float %8864, %8861
  %8866 = fmul fast float %8631, %4276
  %8867 = fmul fast float %8866, %8862
  %8868 = fmul fast float %8632, %4276
  %8869 = fmul fast float %8868, %8863
  %8870 = fadd fast float %8865, %8263
  %8871 = fadd fast float %8867, %8264
  %8872 = fadd fast float %8869, %8265
  %8873 = fmul fast float %8864, %8648
  %8874 = fmul fast float %8873, %8858
  %8875 = fmul fast float %8866, %8648
  %8876 = fmul fast float %8875, %8859
  %8877 = fmul fast float %8868, %8648
  %8878 = fmul fast float %8877, %8860
  %8879 = fadd fast float %8874, %8260
  %8880 = fadd fast float %8876, %8261
  %8881 = fadd fast float %8878, %8262
  br label %8392

; <label>:8882                                    ; preds = %8392
  br label %8883

; <label>:8883                                    ; preds = %8882, %8226
  %8884 = phi float [ %8228, %8226 ], [ %8393, %8882 ]
  %8885 = phi float [ %8229, %8226 ], [ %8394, %8882 ]
  %8886 = phi float [ %8230, %8226 ], [ %8395, %8882 ]
  %8887 = phi float [ %8231, %8226 ], [ %8396, %8882 ]
  %8888 = phi float [ %8232, %8226 ], [ %8397, %8882 ]
  %8889 = phi float [ %8233, %8226 ], [ %8398, %8882 ]
  %8890 = add i32 %8227, 1
  %8891 = icmp ugt i32 %8890, %8223
  br i1 %8891, label %8892, label %8226

; <label>:8892                                    ; preds = %8883
  br label %8893

; <label>:8893                                    ; preds = %8892, %8176, %8166
  %8894 = phi float [ %8167, %8166 ], [ %8167, %8176 ], [ %8884, %8892 ]
  %8895 = phi float [ %8168, %8166 ], [ %8168, %8176 ], [ %8885, %8892 ]
  %8896 = phi float [ %8169, %8166 ], [ %8169, %8176 ], [ %8886, %8892 ]
  %8897 = phi float [ %8170, %8166 ], [ %8170, %8176 ], [ %8887, %8892 ]
  %8898 = phi float [ %8171, %8166 ], [ %8171, %8176 ], [ %8888, %8892 ]
  %8899 = phi float [ %8172, %8166 ], [ %8172, %8176 ], [ %8889, %8892 ]
  %8900 = fmul fast float %4276, %6359
  %8901 = fsub fast float -0.000000e+00, %8900
  %8902 = fmul fast float %4276, %6360
  %8903 = fsub fast float -0.000000e+00, %8902
  %8904 = fmul fast float %4276, %6361
  %8905 = fsub fast float -0.000000e+00, %8904
  %8906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8907 = extractvalue %dx.types.CBufRet.f32 %8906, 0
  %8908 = fmul fast float %8907, %6365
  %8909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8910 = extractvalue %dx.types.CBufRet.f32 %8909, 3
  %8911 = fsub fast float 1.000000e+00, %4254
  %8912 = call float @dx.op.unary.f32(i32 7, float %8911)  ; Saturate(value)
  %8913 = fadd fast float %8899, %4253
  %8914 = fmul fast float %8913, %4254
  %8915 = fmul fast float %8912, %8910
  %8916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4255, i32 undef)  ; BufferLoad(srv,index,wot)
  %8917 = extractvalue %dx.types.ResRet.i32 %8916, 3
  %8918 = bitcast i32 %8917 to float
  %8919 = fsub fast float %8901, %8918
  %8920 = fsub fast float %8903, %8918
  %8921 = fsub fast float %8905, %8918
  %8922 = fmul fast float %8919, %232
  %8923 = fmul fast float %8920, %232
  %8924 = fmul fast float %8921, %232
  %8925 = fadd fast float %8922, %8918
  %8926 = fadd fast float %8923, %8918
  %8927 = fadd fast float %8924, %8918
  %8928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8929 = extractvalue %dx.types.CBufRet.f32 %8928, 3
  %8930 = fmul fast float %8897, %5514
  %8931 = fmul fast float %8898, %5515
  %8932 = fmul fast float %8899, %5516
  %8933 = fcmp fast ogt float %106, %252
  %8934 = and i1 %8933, %4745
  %8935 = or i1 %4751, %8934
  %8936 = icmp eq i32 %4744, 2
  %8937 = fcmp fast ole float %106, %252
  %8938 = and i1 %8937, %8936
  %8939 = or i1 %8938, %8935
  br i1 %8934, label %8940, label %9197

; <label>:8940                                    ; preds = %8893
  %8941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8942 = extractvalue %dx.types.CBufRet.f32 %8941, 2
  %8943 = extractvalue %dx.types.CBufRet.f32 %8941, 3
  %8944 = fmul fast float %8942, %119
  %8945 = fmul fast float %8943, %120
  %8946 = call float @dx.op.unary.f32(i32 7, float %8944)  ; Saturate(value)
  %8947 = call float @dx.op.unary.f32(i32 7, float %8945)  ; Saturate(value)
  %8948 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8946, float %8947, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8949 = extractvalue %dx.types.ResRet.f32 %8948, 0
  %8950 = extractvalue %dx.types.ResRet.f32 %8948, 1
  %8951 = extractvalue %dx.types.ResRet.f32 %8948, 2
  %8952 = extractvalue %dx.types.ResRet.f32 %8948, 3
  %8953 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8946, float %8947, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8954 = extractvalue %dx.types.ResRet.f32 %8953, 0
  %8955 = extractvalue %dx.types.ResRet.f32 %8953, 1
  %8956 = extractvalue %dx.types.ResRet.f32 %8953, 2
  %8957 = extractvalue %dx.types.ResRet.f32 %8953, 3
  %8958 = call float @dx.op.binary.f32(i32 35, float %8950, float %8951)  ; FMax(a,b)
  %8959 = call float @dx.op.binary.f32(i32 35, float %8949, float %8958)  ; FMax(a,b)
  %8960 = call float @dx.op.binary.f32(i32 35, float %8959, float %8952)  ; FMax(a,b)
  %8961 = call float @dx.op.binary.f32(i32 36, float %8955, float %8956)  ; FMin(a,b)
  %8962 = call float @dx.op.binary.f32(i32 36, float %8954, float %8961)  ; FMin(a,b)
  %8963 = call float @dx.op.binary.f32(i32 36, float %8962, float %8957)  ; FMin(a,b)
  %8964 = fmul fast float %8960, 2.550000e+02
  %8965 = fadd fast float %8964, 0x3F70101020000000
  %8966 = fptoui float %8965 to i32
  %8967 = fmul fast float %8963, 2.550000e+02
  %8968 = fadd fast float %8967, 0x3F70101020000000
  %8969 = fptoui float %8968 to i32
  %8970 = icmp ult i32 %8966, %8969
  br i1 %8970, label %8971, label %9139

; <label>:8971                                    ; preds = %8940
  %8972 = fcmp fast ogt float %105, 9.843750e-01
  %8973 = fadd fast float %106, -4.000000e+00
  %8974 = select i1 %8972, float -4.000000e+00, float %8973
  %8975 = call float @dx.op.binary.f32(i32 35, float %8974, float 0.000000e+00)  ; FMax(a,b)
  %8976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8977 = extractvalue %dx.types.CBufRet.f32 %8976, 0
  %8978 = fadd fast float %8977, %8975
  %8979 = extractvalue %dx.types.CBufRet.f32 %8976, 2
  %8980 = fmul fast float %8978, %8979
  %8981 = call float @dx.op.unary.f32(i32 23, float %8980)  ; Log(value)
  %8982 = extractvalue %dx.types.CBufRet.f32 %8976, 3
  %8983 = fmul fast float %8982, %8981
  %8984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8985 = extractvalue %dx.types.CBufRet.f32 %8984, 2
  %8986 = fmul fast float %8983, %8985
  %8987 = call float @dx.op.unary.f32(i32 7, float %8986)  ; Saturate(value)
  %8988 = uitofp i32 %8966 to float
  %8989 = uitofp i32 %8969 to float
  %8990 = fadd fast float %8988, 5.000000e-01
  %8991 = fadd fast float %8989, 5.000000e-01
  %8992 = fmul fast float %8985, %8990
  %8993 = fmul fast float %8985, %8991
  %8994 = fadd fast float %8992, 0x3F0FFB4800000000
  %8995 = fadd fast float %8993, 0xBF0FFB4800000000
  %8996 = call float @dx.op.binary.f32(i32 35, float %8987, float %8994)  ; FMax(a,b)
  %8997 = call float @dx.op.binary.f32(i32 36, float %8996, float %8995)  ; FMin(a,b)
  %8998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8999 = extractvalue %dx.types.CBufRet.f32 %8998, 1
  %9000 = extractvalue %dx.types.CBufRet.f32 %8998, 2
  %9001 = extractvalue %dx.types.CBufRet.f32 %8998, 0
  %9002 = fmul fast float %8999, %8997
  %9003 = fadd fast float %9001, %9002
  %9004 = fadd fast float %9001, %9000
  %9005 = fsub fast float %8999, %9000
  %9006 = fadd fast float %9005, %9001
  %9007 = call float @dx.op.binary.f32(i32 35, float %9003, float %9004)  ; FMax(a,b)
  %9008 = call float @dx.op.binary.f32(i32 36, float %9007, float %9006)  ; FMin(a,b)
  %9009 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %8946, float %8947, float %9008, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9010 = extractvalue %dx.types.ResRet.f32 %9009, 0
  %9011 = extractvalue %dx.types.ResRet.f32 %9009, 1
  %9012 = extractvalue %dx.types.ResRet.f32 %9009, 2
  %9013 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9014 = extractvalue %dx.types.CBufRet.i32 %9013, 0
  %9015 = extractvalue %dx.types.CBufRet.i32 %9013, 1
  %9016 = uitofp i32 %9014 to float
  %9017 = uitofp i32 %9015 to float
  %9018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9019 = extractvalue %dx.types.CBufRet.f32 %9018, 0
  %9020 = extractvalue %dx.types.CBufRet.f32 %9018, 1
  %9021 = fmul fast float %9016, %8946
  %9022 = fmul fast float %9017, %8947
  %9023 = fadd fast float %9021, -5.000000e-01
  %9024 = fadd fast float %9022, -5.000000e-01
  %9025 = call float @dx.op.unary.f32(i32 22, float %9023)  ; Frc(value)
  %9026 = call float @dx.op.unary.f32(i32 22, float %9024)  ; Frc(value)
  %9027 = fmul fast float %9025, %9025
  %9028 = fmul fast float %9027, %9025
  %9029 = fsub fast float 3.000000e+00, %9025
  %9030 = fmul fast float %9027, %9029
  %9031 = fmul fast float %9025, 3.000000e+00
  %9032 = fmul fast float %9028, 3.000000e+00
  %9033 = fmul fast float %9027, 6.000000e+00
  %9034 = fsub fast float %9032, %9033
  %9035 = fadd fast float %9034, 4.000000e+00
  %9036 = fmul fast float %9035, 0x3FC5555560000000
  %9037 = fmul fast float %9028, -3.000000e+00
  %9038 = fadd fast float %9027, %9025
  %9039 = fmul fast float %9038, 3.000000e+00
  %9040 = fadd fast float %9037, 1.000000e+00
  %9041 = fadd fast float %9040, %9039
  %9042 = fmul fast float %9028, 0x3FC5555560000000
  %9043 = fmul fast float %9026, %9026
  %9044 = fmul fast float %9043, %9026
  %9045 = fsub fast float 3.000000e+00, %9026
  %9046 = fmul fast float %9043, %9045
  %9047 = fmul fast float %9026, 3.000000e+00
  %9048 = fmul fast float %9044, 3.000000e+00
  %9049 = fmul fast float %9043, 6.000000e+00
  %9050 = fsub fast float %9048, %9049
  %9051 = fadd fast float %9050, 4.000000e+00
  %9052 = fmul fast float %9051, 0x3FC5555560000000
  %9053 = fmul fast float %9044, -3.000000e+00
  %9054 = fadd fast float %9043, %9026
  %9055 = fmul fast float %9054, 3.000000e+00
  %9056 = fadd fast float %9053, 1.000000e+00
  %9057 = fadd fast float %9056, %9055
  %9058 = fmul fast float %9044, 0x3FC5555560000000
  %9059 = fadd fast float %9025, 1.000000e+00
  %9060 = fsub fast float 1.000000e+00, %9031
  %9061 = fadd fast float %9060, %9030
  %9062 = fadd fast float %9061, %9035
  %9063 = fmul fast float %9062, 0x3FC5555560000000
  %9064 = fdiv fast float %9036, %9063
  %9065 = fsub fast float %9059, %9064
  %9066 = fsub fast float 1.000000e+00, %9025
  %9067 = fadd fast float %9041, %9028
  %9068 = fmul fast float %9067, 0x3FC5555560000000
  %9069 = fdiv fast float %9042, %9068
  %9070 = fadd fast float %9066, %9069
  %9071 = fadd fast float %9026, 1.000000e+00
  %9072 = fsub fast float 1.000000e+00, %9047
  %9073 = fadd fast float %9072, %9046
  %9074 = fadd fast float %9073, %9051
  %9075 = fmul fast float %9074, 0x3FC5555560000000
  %9076 = fdiv fast float %9052, %9075
  %9077 = fsub fast float %9071, %9076
  %9078 = fsub fast float 1.000000e+00, %9026
  %9079 = fadd fast float %9057, %9044
  %9080 = fmul fast float %9079, 0x3FC5555560000000
  %9081 = fdiv fast float %9058, %9080
  %9082 = fadd fast float %9081, %9078
  %9083 = fmul fast float %9065, %9019
  %9084 = fsub fast float %8946, %9083
  %9085 = fmul fast float %9070, %9019
  %9086 = fadd fast float %9085, %8946
  %9087 = fmul fast float %9082, %9020
  %9088 = fadd fast float %9087, %8947
  %9089 = fmul fast float %9077, %9020
  %9090 = fsub fast float %8947, %9089
  %9091 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9084, float %9090, float %9008, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9092 = extractvalue %dx.types.ResRet.f32 %9091, 0
  %9093 = extractvalue %dx.types.ResRet.f32 %9091, 1
  %9094 = extractvalue %dx.types.ResRet.f32 %9091, 2
  %9095 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9086, float %9090, float %9008, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9096 = extractvalue %dx.types.ResRet.f32 %9095, 0
  %9097 = extractvalue %dx.types.ResRet.f32 %9095, 1
  %9098 = extractvalue %dx.types.ResRet.f32 %9095, 2
  %9099 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9084, float %9088, float %9008, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9100 = extractvalue %dx.types.ResRet.f32 %9099, 0
  %9101 = extractvalue %dx.types.ResRet.f32 %9099, 1
  %9102 = extractvalue %dx.types.ResRet.f32 %9099, 2
  %9103 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9086, float %9088, float %9008, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9104 = extractvalue %dx.types.ResRet.f32 %9103, 0
  %9105 = extractvalue %dx.types.ResRet.f32 %9103, 1
  %9106 = extractvalue %dx.types.ResRet.f32 %9103, 2
  %9107 = fsub fast float %9100, %9092
  %9108 = fsub fast float %9101, %9093
  %9109 = fsub fast float %9102, %9094
  %9110 = fmul fast float %9107, %9080
  %9111 = fmul fast float %9108, %9080
  %9112 = fmul fast float %9109, %9080
  %9113 = fadd fast float %9110, %9092
  %9114 = fadd fast float %9111, %9093
  %9115 = fadd fast float %9112, %9094
  %9116 = fsub fast float %9104, %9096
  %9117 = fsub fast float %9105, %9097
  %9118 = fsub fast float %9106, %9098
  %9119 = fmul fast float %9116, %9080
  %9120 = fmul fast float %9117, %9080
  %9121 = fmul fast float %9118, %9080
  %9122 = fsub fast float %9096, %9113
  %9123 = fadd fast float %9122, %9119
  %9124 = fsub fast float %9097, %9114
  %9125 = fadd fast float %9124, %9120
  %9126 = fsub fast float %9098, %9115
  %9127 = fadd fast float %9126, %9121
  %9128 = fmul fast float %9123, %9068
  %9129 = fmul fast float %9125, %9068
  %9130 = fmul fast float %9127, %9068
  %9131 = fadd fast float %9128, %9113
  %9132 = fadd fast float %9129, %9114
  %9133 = fadd fast float %9130, %9115
  %9134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9135 = extractvalue %dx.types.CBufRet.f32 %9134, 1
  %9136 = fmul fast float %9131, %9135
  %9137 = fmul fast float %9132, %9135
  %9138 = fmul fast float %9133, %9135
  br label %9139

; <label>:9139                                    ; preds = %8971, %8940
  %9140 = phi float [ %9010, %8971 ], [ 1.000000e+00, %8940 ]
  %9141 = phi float [ %9011, %8971 ], [ 1.000000e+00, %8940 ]
  %9142 = phi float [ %9012, %8971 ], [ 1.000000e+00, %8940 ]
  %9143 = phi float [ %9136, %8971 ], [ 0.000000e+00, %8940 ]
  %9144 = phi float [ %9137, %8971 ], [ 0.000000e+00, %8940 ]
  %9145 = phi float [ %9138, %8971 ], [ 0.000000e+00, %8940 ]
  %9146 = fmul fast float %9143, %8925
  %9147 = fmul fast float %9144, %8926
  %9148 = fmul fast float %9145, %8927
  %9149 = call float @dx.op.dot3.f32(i32 55, float %9140, float %9141, float %9142, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9150 = call float @dx.op.dot3.f32(i32 55, float %9146, float %9147, float %9148, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9151 = select i1 %289, float %9149, float %9140
  %9152 = select i1 %289, float %9149, float %9141
  %9153 = select i1 %289, float 1.000000e+00, float %9142
  %9154 = select i1 %289, float %9150, float %9146
  %9155 = select i1 %289, float 0.000000e+00, float %9147
  %9156 = select i1 %289, float 0.000000e+00, float %9148
  %9157 = fmul fast float %9151, %8930
  %9158 = fmul fast float %9152, %8931
  %9159 = fmul fast float %9153, %8932
  %9160 = fadd fast float %9157, %9154
  %9161 = fadd fast float %9158, %9155
  %9162 = fadd fast float %9156, %9159
  %9163 = fmul fast float %9151, %8894
  %9164 = fmul fast float %9152, %8895
  %9165 = fmul fast float %9153, %8896
  %9166 = fmul fast float %147, %8942
  %9167 = fmul fast float %149, %8943
  %9168 = fsub fast float 1.000000e+00, %9166
  %9169 = fsub fast float 1.000000e+00, %9167
  %9170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9171 = extractvalue %dx.types.CBufRet.f32 %9170, 0
  %9172 = extractvalue %dx.types.CBufRet.f32 %9170, 1
  %9173 = extractvalue %dx.types.CBufRet.f32 %9170, 2
  %9174 = fmul fast float %9168, %9171
  %9175 = fmul fast float %9168, %9172
  %9176 = fmul fast float %9168, %9173
  %9177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9178 = extractvalue %dx.types.CBufRet.f32 %9177, 0
  %9179 = extractvalue %dx.types.CBufRet.f32 %9177, 1
  %9180 = extractvalue %dx.types.CBufRet.f32 %9177, 2
  %9181 = fmul fast float %9169, %9178
  %9182 = fmul fast float %9169, %9179
  %9183 = fmul fast float %9169, %9180
  %9184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9185 = extractvalue %dx.types.CBufRet.f32 %9184, 0
  %9186 = extractvalue %dx.types.CBufRet.f32 %9184, 1
  %9187 = extractvalue %dx.types.CBufRet.f32 %9184, 2
  %9188 = fadd fast float %9181, %9185
  %9189 = fadd fast float %9188, %9174
  %9190 = fadd fast float %9182, %9186
  %9191 = fadd fast float %9190, %9175
  %9192 = fadd fast float %9183, %9187
  %9193 = fadd fast float %9192, %9176
  %9194 = fmul fast float %9189, %252
  %9195 = fmul fast float %9191, %252
  %9196 = fmul fast float %9193, %252
  br label %9197

; <label>:9197                                    ; preds = %9139, %8893
  %9198 = phi float [ %9194, %9139 ], [ %198, %8893 ]
  %9199 = phi float [ %9195, %9139 ], [ %199, %8893 ]
  %9200 = phi float [ %9196, %9139 ], [ %200, %8893 ]
  %9201 = phi float [ %252, %9139 ], [ %106, %8893 ]
  %9202 = phi float [ %9160, %9139 ], [ %8930, %8893 ]
  %9203 = phi float [ %9161, %9139 ], [ %8931, %8893 ]
  %9204 = phi float [ %9162, %9139 ], [ %8932, %8893 ]
  %9205 = phi float [ %9163, %9139 ], [ %8894, %8893 ]
  %9206 = phi float [ %9164, %9139 ], [ %8895, %8893 ]
  %9207 = phi float [ %9165, %9139 ], [ %8896, %8893 ]
  %9208 = phi float [ %9140, %9139 ], [ 1.000000e+00, %8893 ]
  br i1 %8939, label %10363, label %9209

; <label>:9209                                    ; preds = %9197
  %9210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %9211 = extractvalue %dx.types.CBufRet.f32 %9210, 0
  %9212 = extractvalue %dx.types.CBufRet.f32 %9210, 1
  %9213 = extractvalue %dx.types.CBufRet.f32 %9210, 2
  %9214 = extractvalue %dx.types.CBufRet.f32 %9210, 3
  %9215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %9216 = extractvalue %dx.types.CBufRet.f32 %9215, 0
  %9217 = extractvalue %dx.types.CBufRet.f32 %9215, 1
  %9218 = extractvalue %dx.types.CBufRet.f32 %9215, 2
  %9219 = extractvalue %dx.types.CBufRet.f32 %9215, 3
  %9220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %9221 = extractvalue %dx.types.CBufRet.f32 %9220, 0
  %9222 = extractvalue %dx.types.CBufRet.f32 %9220, 1
  %9223 = extractvalue %dx.types.CBufRet.f32 %9220, 2
  %9224 = extractvalue %dx.types.CBufRet.f32 %9220, 3
  %9225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %9226 = extractvalue %dx.types.CBufRet.f32 %9225, 0
  %9227 = extractvalue %dx.types.CBufRet.f32 %9225, 1
  %9228 = extractvalue %dx.types.CBufRet.f32 %9225, 2
  %9229 = extractvalue %dx.types.CBufRet.f32 %9225, 3
  %9230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %9231 = extractvalue %dx.types.CBufRet.f32 %9230, 3
  %9232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %9233 = extractvalue %dx.types.CBufRet.f32 %9232, 3
  %9234 = extractvalue %dx.types.CBufRet.f32 %9232, 0
  %9235 = extractvalue %dx.types.CBufRet.f32 %9232, 1
  %9236 = extractvalue %dx.types.CBufRet.f32 %9232, 2
  %9237 = fcmp fast olt float %9236, -5.000000e-01
  %9238 = call float @dx.op.dot3.f32(i32 55, float %9198, float %9199, float %9200, float %9198, float %9199, float %9200)  ; Dot3(ax,ay,az,bx,by,bz)
  %9239 = call float @dx.op.unary.f32(i32 25, float %9238)  ; Rsqrt(value)
  %9240 = fmul fast float %9239, %9238
  %9241 = fmul fast float %9239, %9198
  %9242 = fmul fast float %9239, %9199
  %9243 = fmul fast float %9239, %9200
  %9244 = fadd fast float %9240, %9214
  %9245 = call float @dx.op.dot3.f32(i32 55, float %9241, float %9242, float %9243, float %9211, float %9212, float %9213)  ; Dot3(ax,ay,az,bx,by,bz)
  %9246 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9247 = extractvalue %dx.types.CBufRet.i32 %9246, 1
  %9248 = and i32 %9247, 1
  %9249 = icmp ne i32 %9248, 0
  %9250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %9251 = extractvalue %dx.types.CBufRet.f32 %9250, 2
  %9252 = fcmp fast ogt float %9251, 0.000000e+00
  %9253 = and i1 %9249, %9252
  br i1 %9253, label %9254, label %9660, !dx.controlflow.hints !139

; <label>:9254                                    ; preds = %9209
  %9255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %9256 = extractvalue %dx.types.CBufRet.f32 %9255, 3
  %9257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9258 = extractvalue %dx.types.CBufRet.f32 %9257, 2
  %9259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9260 = extractvalue %dx.types.CBufRet.f32 %9259, 2
  %9261 = fsub fast float %9258, %9260
  %9262 = and i32 %9247, 2
  %9263 = extractvalue %dx.types.CBufRet.i32 %9246, 0
  %9264 = call i32 @dx.op.binary.i32(i32 40, i32 %9263, i32 3)  ; UMin(a,b)
  %9265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %9266 = extractvalue %dx.types.CBufRet.f32 %9265, 0
  %9267 = extractvalue %dx.types.CBufRet.f32 %9265, 1
  %9268 = extractvalue %dx.types.CBufRet.f32 %9259, 0
  %9269 = extractvalue %dx.types.CBufRet.f32 %9259, 1
  %9270 = fsub fast float %9266, %9268
  %9271 = fsub fast float %9267, %9269
  %9272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %9273 = extractvalue %dx.types.CBufRet.f32 %9272, 0
  %9274 = fcmp fast ogt float %9273, 0.000000e+00
  %9275 = fsub fast float -0.000000e+00, %9270
  %9276 = fsub fast float -0.000000e+00, %9271
  %9277 = call float @dx.op.dot2.f32(i32 54, float %9241, float %9242, float %9241, float %9242)  ; Dot2(ax,ay,bx,by)
  %9278 = call float @dx.op.dot2.f32(i32 54, float %9241, float %9242, float %9275, float %9276)  ; Dot2(ax,ay,bx,by)
  %9279 = fmul fast float %9278, 2.000000e+00
  %9280 = call float @dx.op.dot2.f32(i32 54, float %9275, float %9276, float %9275, float %9276)  ; Dot2(ax,ay,bx,by)
  %9281 = fmul fast float %9273, %9273
  %9282 = fsub fast float %9280, %9281
  %9283 = fmul fast float %9279, %9279
  %9284 = fmul fast float %9277, 4.000000e+00
  %9285 = fmul fast float %9284, %9282
  %9286 = fsub fast float %9283, %9285
  %9287 = fcmp fast ogt float %9286, 0.000000e+00
  br i1 %9287, label %9288, label %9303

; <label>:9288                                    ; preds = %9254
  %9289 = fcmp fast ogt float %9279, 0.000000e+00
  %9290 = call float @dx.op.unary.f32(i32 24, float %9286)  ; Sqrt(value)
  %9291 = fsub fast float -0.000000e+00, %9290
  %9292 = select i1 %9289, float %9290, float %9291
  %9293 = fadd fast float %9292, %9279
  %9294 = fmul float %9293, -5.000000e-01
  %9295 = fdiv fast float %9294, %9277
  %9296 = call float @dx.op.binary.f32(i32 35, float %9295, float 0.000000e+00)  ; FMax(a,b)
  %9297 = call float @dx.op.binary.f32(i32 36, float %9240, float %9296)  ; FMin(a,b)
  %9298 = fdiv fast float %9282, %9294
  %9299 = call float @dx.op.binary.f32(i32 35, float %9298, float 0.000000e+00)  ; FMax(a,b)
  %9300 = call float @dx.op.binary.f32(i32 36, float %9240, float %9299)  ; FMin(a,b)
  %9301 = call float @dx.op.binary.f32(i32 36, float %9297, float %9300)  ; FMin(a,b)
  %9302 = call float @dx.op.binary.f32(i32 35, float %9297, float %9300)  ; FMax(a,b)
  br label %9303

; <label>:9303                                    ; preds = %9288, %9254
  %9304 = phi float [ %9302, %9288 ], [ -1.000000e+00, %9254 ]
  %9305 = phi float [ %9301, %9288 ], [ -1.000000e+00, %9254 ]
  %9306 = phi i1 [ true, %9288 ], [ false, %9254 ]
  %9307 = and i1 %9274, %9306
  br i1 %9307, label %9308, label %9310

; <label>:9308                                    ; preds = %9303
  %9309 = fcmp fast oeq float %9305, %9304
  br i1 %9309, label %9613, label %9311

; <label>:9310                                    ; preds = %9303
  br i1 %9274, label %9613, label %9311

; <label>:9311                                    ; preds = %9310, %9308
  %9312 = phi float [ %9240, %9310 ], [ %9304, %9308 ]
  %9313 = phi float [ 0.000000e+00, %9310 ], [ %9305, %9308 ]
  %9314 = icmp ne i32 %9262, 0
  %9315 = fmul fast float %9312, %9243
  %9316 = fadd fast float %9315, %9256
  %9317 = fmul fast float %9316, %9312
  %9318 = select i1 %9314, float 0.000000e+00, float %9317
  %9319 = fcmp fast oeq float %9243, 0.000000e+00
  %9320 = fdiv fast float %9261, %9243
  %9321 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9320)  ; FMax(a,b)
  %9322 = select i1 %9319, float %9312, float %9321
  %9323 = call float @dx.op.binary.f32(i32 36, float %9312, float %9322)  ; FMin(a,b)
  %9324 = fcmp fast ogt float %9243, 0.000000e+00
  %9325 = fcmp fast olt float %9261, 0.000000e+00
  br i1 %9324, label %9326, label %9383

; <label>:9326                                    ; preds = %9311
  %9327 = icmp eq i32 %9262, 0
  br i1 %9325, label %9328, label %9372

; <label>:9328                                    ; preds = %9326
  %9329 = select i1 %9327, float %9312, float 0.000000e+00
  %9330 = fsub fast float -0.000000e+00, %9329
  %9331 = call float @dx.op.unary.f32(i32 6, float %9330)  ; FAbs(value)
  %9332 = fmul fast float %9329, %9243
  %9333 = fadd fast float %9332, %9256
  %9334 = fmul fast float %9331, %9333
  %9335 = fsub fast float %9318, %9334
  %9336 = fsub fast float %9312, %9331
  %9337 = select i1 %9327, float %9336, float 0.000000e+00
  %9338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9339 = extractvalue %dx.types.CBufRet.f32 %9338, 0
  %9340 = extractvalue %dx.types.CBufRet.f32 %9338, 1
  %9341 = extractvalue %dx.types.CBufRet.f32 %9338, 2
  %9342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9343 = extractvalue %dx.types.CBufRet.f32 %9342, 0
  %9344 = extractvalue %dx.types.CBufRet.f32 %9342, 1
  %9345 = extractvalue %dx.types.CBufRet.f32 %9342, 2
  %9346 = extractvalue %dx.types.CBufRet.f32 %9342, 3
  %9347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9348 = extractvalue %dx.types.CBufRet.f32 %9347, 3
  %9349 = call float @dx.op.binary.f32(i32 36, float %9335, float %9348)  ; FMin(a,b)
  %9350 = fmul fast float %9346, %9337
  %9351 = call float @dx.op.unary.f32(i32 7, float %9350)  ; Saturate(value)
  %9352 = fsub fast float %9343, %9339
  %9353 = fsub fast float %9344, %9340
  %9354 = fsub fast float %9345, %9341
  %9355 = fmul fast float %9351, %9352
  %9356 = fmul fast float %9351, %9353
  %9357 = fmul fast float %9351, %9354
  %9358 = fadd fast float %9355, %9339
  %9359 = fadd fast float %9356, %9340
  %9360 = fadd fast float %9357, %9341
  %9361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9362 = extractvalue %dx.types.CBufRet.f32 %9361, 0
  %9363 = extractvalue %dx.types.CBufRet.f32 %9361, 1
  %9364 = fadd fast float %9363, %9362
  %9365 = call float @dx.op.unary.f32(i32 7, float %9364)  ; Saturate(value)
  %9366 = extractvalue %dx.types.CBufRet.f32 %9361, 2
  %9367 = extractvalue %dx.types.CBufRet.f32 %9361, 3
  %9368 = fadd fast float %9367, %9366
  %9369 = call float @dx.op.unary.f32(i32 7, float %9368)  ; Saturate(value)
  %9370 = fmul fast float %9365, %9349
  %9371 = fmul fast float %9370, %9369
  br label %9613

; <label>:9372                                    ; preds = %9326
  br i1 %9327, label %9373, label %9394

; <label>:9373                                    ; preds = %9372
  %9374 = call float @dx.op.binary.f32(i32 36, float %9323, float %9313)  ; FMin(a,b)
  %9375 = fsub fast float %9323, %9374
  %9376 = fsub fast float %9375, %9312
  %9377 = call float @dx.op.unary.f32(i32 6, float %9376)  ; FAbs(value)
  %9378 = fadd fast float %9375, %9312
  %9379 = fmul fast float %9378, %9243
  %9380 = fadd fast float %9379, %9256
  %9381 = fmul fast float %9380, %9377
  %9382 = fsub fast float %9318, %9381
  br label %9394

; <label>:9383                                    ; preds = %9311
  br i1 %9325, label %9384, label %9394

; <label>:9384                                    ; preds = %9383
  %9385 = call float @dx.op.binary.f32(i32 35, float %9313, float %9323)  ; FMax(a,b)
  %9386 = icmp eq i32 %9262, 0
  %9387 = select i1 %9386, float %9323, float 0.000000e+00
  %9388 = fsub fast float -0.000000e+00, %9387
  %9389 = call float @dx.op.unary.f32(i32 6, float %9388)  ; FAbs(value)
  %9390 = fmul fast float %9387, %9243
  %9391 = fadd fast float %9390, %9256
  %9392 = fmul fast float %9389, %9391
  %9393 = fsub fast float %9318, %9392
  br label %9394

; <label>:9394                                    ; preds = %9384, %9383, %9373, %9372
  %9395 = phi float [ %9313, %9372 ], [ %9313, %9373 ], [ %9385, %9384 ], [ %9313, %9383 ]
  %9396 = phi float [ 0.000000e+00, %9372 ], [ %9377, %9373 ], [ %9389, %9384 ], [ 0.000000e+00, %9383 ]
  %9397 = phi float [ %9318, %9372 ], [ %9382, %9373 ], [ %9393, %9384 ], [ %9318, %9383 ]
  %9398 = phi float [ %9323, %9372 ], [ %9323, %9373 ], [ %9312, %9384 ], [ %9312, %9383 ]
  %9399 = getelementptr inbounds [3 x float], [3 x float]* %113, i32 0, i32 0
  store float -1.000000e+00, float* %9399, align 4, !tbaa !125, !noalias !140
  %9400 = getelementptr inbounds [3 x float], [3 x float]* %113, i32 0, i32 1
  store float -1.000000e+00, float* %9400, align 4, !tbaa !125, !noalias !140
  %9401 = getelementptr inbounds [3 x float], [3 x float]* %113, i32 0, i32 2
  store float -1.000000e+00, float* %9401, align 4, !tbaa !125, !noalias !140
  %9402 = getelementptr inbounds [3 x float], [3 x float]* %114, i32 0, i32 0
  store float -1.000000e+00, float* %9402, align 4, !tbaa !125, !noalias !140
  %9403 = getelementptr inbounds [3 x float], [3 x float]* %114, i32 0, i32 1
  store float -1.000000e+00, float* %9403, align 4, !tbaa !125, !noalias !140
  %9404 = getelementptr inbounds [3 x float], [3 x float]* %114, i32 0, i32 2
  store float -1.000000e+00, float* %9404, align 4, !tbaa !125, !noalias !140
  %9405 = icmp sgt i32 %9264, 0
  br i1 %9405, label %9406, label %9467

; <label>:9406                                    ; preds = %9394
  br label %9407

; <label>:9407                                    ; preds = %9456, %9406
  %9408 = phi i32 [ %9457, %9456 ], [ 0, %9406 ]
  %9409 = phi i32 [ %9458, %9456 ], [ 0, %9406 ]
  %9410 = add nuw i32 %9409, 171
  %9411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %9410)  ; CBufferLoadLegacy(handle,regIndex)
  %9412 = extractvalue %dx.types.CBufRet.f32 %9411, 0
  %9413 = extractvalue %dx.types.CBufRet.f32 %9411, 1
  %9414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9415 = extractvalue %dx.types.CBufRet.f32 %9414, 0
  %9416 = extractvalue %dx.types.CBufRet.f32 %9414, 1
  %9417 = fsub fast float %9412, %9415
  %9418 = fsub fast float %9413, %9416
  %9419 = extractvalue %dx.types.CBufRet.f32 %9411, 2
  %9420 = fsub fast float -0.000000e+00, %9417
  %9421 = fsub fast float -0.000000e+00, %9418
  %9422 = call float @dx.op.dot2.f32(i32 54, float %9241, float %9242, float %9420, float %9421)  ; Dot2(ax,ay,bx,by)
  %9423 = fmul fast float %9422, 2.000000e+00
  %9424 = call float @dx.op.dot2.f32(i32 54, float %9420, float %9421, float %9420, float %9421)  ; Dot2(ax,ay,bx,by)
  %9425 = fmul fast float %9419, %9419
  %9426 = fsub fast float %9424, %9425
  %9427 = fmul fast float %9423, %9423
  %9428 = fmul fast float %9284, %9426
  %9429 = fsub fast float %9427, %9428
  %9430 = fcmp fast ogt float %9429, 0.000000e+00
  br i1 %9430, label %9431, label %9446

; <label>:9431                                    ; preds = %9407
  %9432 = fcmp fast ogt float %9423, 0.000000e+00
  %9433 = call float @dx.op.unary.f32(i32 24, float %9429)  ; Sqrt(value)
  %9434 = fsub fast float -0.000000e+00, %9433
  %9435 = select i1 %9432, float %9433, float %9434
  %9436 = fadd fast float %9435, %9423
  %9437 = fmul float %9436, -5.000000e-01
  %9438 = fdiv fast float %9437, %9277
  %9439 = call float @dx.op.binary.f32(i32 35, float %9438, float 0.000000e+00)  ; FMax(a,b)
  %9440 = call float @dx.op.binary.f32(i32 36, float %9312, float %9439)  ; FMin(a,b)
  %9441 = fdiv fast float %9426, %9437
  %9442 = call float @dx.op.binary.f32(i32 35, float %9441, float 0.000000e+00)  ; FMax(a,b)
  %9443 = call float @dx.op.binary.f32(i32 36, float %9312, float %9442)  ; FMin(a,b)
  %9444 = call float @dx.op.binary.f32(i32 36, float %9440, float %9443)  ; FMin(a,b)
  %9445 = call float @dx.op.binary.f32(i32 35, float %9440, float %9443)  ; FMax(a,b)
  br label %9446

; <label>:9446                                    ; preds = %9431, %9407
  %9447 = phi float [ %9445, %9431 ], [ -1.000000e+00, %9407 ]
  %9448 = phi float [ %9444, %9431 ], [ -1.000000e+00, %9407 ]
  %9449 = phi i1 [ true, %9431 ], [ false, %9407 ]
  br i1 %9449, label %9450, label %9456

; <label>:9450                                    ; preds = %9446
  %9451 = call float @dx.op.binary.f32(i32 35, float %9395, float %9448)  ; FMax(a,b)
  %9452 = getelementptr inbounds [3 x float], [3 x float]* %113, i32 0, i32 %9409
  store float %9451, float* %9452, align 4, !tbaa !125, !noalias !140
  %9453 = call float @dx.op.binary.f32(i32 35, float %9395, float %9447)  ; FMax(a,b)
  %9454 = getelementptr inbounds [3 x float], [3 x float]* %114, i32 0, i32 %9409
  store float %9453, float* %9454, align 4, !tbaa !125, !noalias !140
  %9455 = add nsw i32 %9408, 1
  br label %9456

; <label>:9456                                    ; preds = %9450, %9446
  %9457 = phi i32 [ %9455, %9450 ], [ %9408, %9446 ]
  %9458 = add nuw nsw i32 %9409, 1
  %9459 = icmp eq i32 %9458, %9264
  br i1 %9459, label %9460, label %9407

; <label>:9460                                    ; preds = %9456
  %9461 = load float, float* %9401, align 4, !tbaa !125, !alias.scope !156, !noalias !159
  %9462 = load float, float* %9400, align 4, !tbaa !125, !alias.scope !162, !noalias !163
  %9463 = load float, float* %9399, align 4, !tbaa !125, !alias.scope !164, !noalias !165
  %9464 = load float, float* %9404, align 4, !tbaa !125, !alias.scope !166, !noalias !169
  %9465 = load float, float* %9403, align 4, !tbaa !125, !alias.scope !172, !noalias !173
  %9466 = load float, float* %9402, align 4, !tbaa !125, !alias.scope !174, !noalias !175
  br label %9467

; <label>:9467                                    ; preds = %9460, %9394
  %9468 = phi float [ -1.000000e+00, %9394 ], [ %9466, %9460 ]
  %9469 = phi float [ -1.000000e+00, %9394 ], [ %9465, %9460 ]
  %9470 = phi float [ -1.000000e+00, %9394 ], [ %9464, %9460 ]
  %9471 = phi float [ -1.000000e+00, %9394 ], [ %9463, %9460 ]
  %9472 = phi float [ -1.000000e+00, %9394 ], [ %9462, %9460 ]
  %9473 = phi float [ -1.000000e+00, %9394 ], [ %9461, %9460 ]
  %9474 = phi i32 [ 0, %9394 ], [ %9457, %9460 ]
  %9475 = call float @dx.op.binary.f32(i32 36, float %9472, float %9473)  ; FMin(a,b)
  %9476 = call float @dx.op.binary.f32(i32 36, float %9471, float %9475)  ; FMin(a,b)
  %9477 = call float @dx.op.binary.f32(i32 35, float %9471, float %9472)  ; FMax(a,b)
  %9478 = call float @dx.op.binary.f32(i32 36, float %9477, float %9473)  ; FMin(a,b)
  %9479 = call float @dx.op.binary.f32(i32 36, float %9471, float %9472)  ; FMin(a,b)
  %9480 = call float @dx.op.binary.f32(i32 35, float %9479, float %9478)  ; FMax(a,b)
  %9481 = call float @dx.op.binary.f32(i32 35, float %9472, float %9473)  ; FMax(a,b)
  %9482 = call float @dx.op.binary.f32(i32 35, float %9471, float %9481)  ; FMax(a,b)
  store float %9476, float* %9399, align 4, !tbaa !125, !alias.scope !164, !noalias !165
  store float %9480, float* %9400, align 4, !tbaa !125, !alias.scope !162, !noalias !163
  store float %9482, float* %9401, align 4, !tbaa !125, !alias.scope !156, !noalias !159
  %9483 = call float @dx.op.binary.f32(i32 36, float %9469, float %9470)  ; FMin(a,b)
  %9484 = call float @dx.op.binary.f32(i32 36, float %9468, float %9483)  ; FMin(a,b)
  %9485 = call float @dx.op.binary.f32(i32 35, float %9468, float %9469)  ; FMax(a,b)
  %9486 = call float @dx.op.binary.f32(i32 36, float %9485, float %9470)  ; FMin(a,b)
  %9487 = call float @dx.op.binary.f32(i32 36, float %9468, float %9469)  ; FMin(a,b)
  %9488 = call float @dx.op.binary.f32(i32 35, float %9487, float %9486)  ; FMax(a,b)
  %9489 = call float @dx.op.binary.f32(i32 35, float %9469, float %9470)  ; FMax(a,b)
  %9490 = call float @dx.op.binary.f32(i32 35, float %9468, float %9489)  ; FMax(a,b)
  store float %9484, float* %9402, align 4, !tbaa !125, !alias.scope !174, !noalias !175
  store float %9488, float* %9403, align 4, !tbaa !125, !alias.scope !172, !noalias !173
  store float %9490, float* %9404, align 4, !tbaa !125, !alias.scope !166, !noalias !169
  %9491 = sub nsw i32 3, %9474
  %9492 = icmp sgt i32 %9491, 2
  br i1 %9492, label %9493, label %9531

; <label>:9493                                    ; preds = %9467
  %9494 = icmp eq i32 %9262, 0
  %9495 = fsub fast float %9312, %9396
  %9496 = select i1 %9494, float %9495, float %9396
  %9497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9498 = extractvalue %dx.types.CBufRet.f32 %9497, 0
  %9499 = extractvalue %dx.types.CBufRet.f32 %9497, 1
  %9500 = extractvalue %dx.types.CBufRet.f32 %9497, 2
  %9501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9502 = extractvalue %dx.types.CBufRet.f32 %9501, 0
  %9503 = extractvalue %dx.types.CBufRet.f32 %9501, 1
  %9504 = extractvalue %dx.types.CBufRet.f32 %9501, 2
  %9505 = extractvalue %dx.types.CBufRet.f32 %9501, 3
  %9506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9507 = extractvalue %dx.types.CBufRet.f32 %9506, 3
  %9508 = call float @dx.op.binary.f32(i32 36, float %9397, float %9507)  ; FMin(a,b)
  %9509 = fmul fast float %9505, %9496
  %9510 = call float @dx.op.unary.f32(i32 7, float %9509)  ; Saturate(value)
  %9511 = fsub fast float %9502, %9498
  %9512 = fsub fast float %9503, %9499
  %9513 = fsub fast float %9504, %9500
  %9514 = fmul fast float %9510, %9511
  %9515 = fmul fast float %9510, %9512
  %9516 = fmul fast float %9510, %9513
  %9517 = fadd fast float %9514, %9498
  %9518 = fadd fast float %9515, %9499
  %9519 = fadd fast float %9516, %9500
  %9520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9521 = extractvalue %dx.types.CBufRet.f32 %9520, 0
  %9522 = extractvalue %dx.types.CBufRet.f32 %9520, 1
  %9523 = fadd fast float %9522, %9521
  %9524 = call float @dx.op.unary.f32(i32 7, float %9523)  ; Saturate(value)
  %9525 = extractvalue %dx.types.CBufRet.f32 %9520, 2
  %9526 = extractvalue %dx.types.CBufRet.f32 %9520, 3
  %9527 = fadd fast float %9526, %9525
  %9528 = call float @dx.op.unary.f32(i32 7, float %9527)  ; Saturate(value)
  %9529 = fmul fast float %9524, %9508
  %9530 = fmul fast float %9529, %9528
  br label %9613

; <label>:9531                                    ; preds = %9467
  %9532 = getelementptr inbounds [3 x float], [3 x float]* %113, i32 0, i32 %9491
  %9533 = load float, float* %9532, align 4, !tbaa !125, !noalias !140
  %9534 = fcmp fast olt float %9533, %9398
  %9535 = icmp sgt i32 %9474, 0
  %9536 = and i1 %9535, %9534
  br i1 %9536, label %9537, label %9574

; <label>:9537                                    ; preds = %9531
  br label %9538

; <label>:9538                                    ; preds = %9567, %9537
  %9539 = phi float [ %9568, %9567 ], [ %9396, %9537 ]
  %9540 = phi float [ %9569, %9567 ], [ %9397, %9537 ]
  %9541 = phi float [ %9549, %9567 ], [ %9533, %9537 ]
  %9542 = phi i32 [ %9546, %9567 ], [ %9491, %9537 ]
  %9543 = getelementptr inbounds [3 x float], [3 x float]* %114, i32 0, i32 %9542
  %9544 = load float, float* %9543, align 4, !tbaa !125, !noalias !140
  %9545 = icmp slt i32 %9542, 2
  %9546 = add nsw i32 %9542, 1
  %9547 = getelementptr inbounds [3 x float], [3 x float]* %113, i32 0, i32 %9546
  %9548 = load float, float* %9547, align 4, !tbaa !125, !noalias !140
  %9549 = select i1 %9545, float %9548, float %9312
  %9550 = call float @dx.op.binary.f32(i32 36, float %9549, float %9544)  ; FMin(a,b)
  %9551 = call float @dx.op.binary.f32(i32 36, float %9398, float %9550)  ; FMin(a,b)
  %9552 = icmp eq i32 %9262, 0
  %9553 = fadd fast float %9551, %9541
  %9554 = fmul fast float %9553, %9243
  %9555 = fadd fast float %9554, %9256
  br i1 %9552, label %9561, label %9556

; <label>:9556                                    ; preds = %9538
  %9557 = fsub fast float %9551, %9541
  %9558 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9557)  ; FMax(a,b)
  %9559 = fmul fast float %9558, %9555
  %9560 = fadd fast float %9559, %9540
  br label %9567

; <label>:9561                                    ; preds = %9538
  %9562 = fsub fast float %9541, %9551
  %9563 = call float @dx.op.unary.f32(i32 6, float %9562)  ; FAbs(value)
  %9564 = fadd fast float %9563, %9539
  %9565 = fmul fast float %9563, %9555
  %9566 = fsub fast float %9540, %9565
  br label %9567

; <label>:9567                                    ; preds = %9561, %9556
  %9568 = phi float [ %9558, %9556 ], [ %9564, %9561 ]
  %9569 = phi float [ %9560, %9556 ], [ %9566, %9561 ]
  %9570 = fcmp fast olt float %9549, %9398
  %9571 = icmp slt i32 %9546, 3
  %9572 = and i1 %9571, %9570
  br i1 %9572, label %9538, label %9573

; <label>:9573                                    ; preds = %9567
  br label %9574

; <label>:9574                                    ; preds = %9573, %9531
  %9575 = phi float [ %9396, %9531 ], [ %9568, %9573 ]
  %9576 = phi float [ %9397, %9531 ], [ %9569, %9573 ]
  %9577 = fsub fast float %9312, %9575
  %9578 = select i1 %9314, float %9575, float %9577
  %9579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9580 = extractvalue %dx.types.CBufRet.f32 %9579, 0
  %9581 = extractvalue %dx.types.CBufRet.f32 %9579, 1
  %9582 = extractvalue %dx.types.CBufRet.f32 %9579, 2
  %9583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9584 = extractvalue %dx.types.CBufRet.f32 %9583, 0
  %9585 = extractvalue %dx.types.CBufRet.f32 %9583, 1
  %9586 = extractvalue %dx.types.CBufRet.f32 %9583, 2
  %9587 = extractvalue %dx.types.CBufRet.f32 %9583, 3
  %9588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9589 = extractvalue %dx.types.CBufRet.f32 %9588, 3
  %9590 = call float @dx.op.binary.f32(i32 36, float %9576, float %9589)  ; FMin(a,b)
  %9591 = fmul fast float %9587, %9578
  %9592 = call float @dx.op.unary.f32(i32 7, float %9591)  ; Saturate(value)
  %9593 = fsub fast float %9584, %9580
  %9594 = fsub fast float %9585, %9581
  %9595 = fsub fast float %9586, %9582
  %9596 = fmul fast float %9592, %9593
  %9597 = fmul fast float %9592, %9594
  %9598 = fmul fast float %9592, %9595
  %9599 = fadd fast float %9596, %9580
  %9600 = fadd fast float %9597, %9581
  %9601 = fadd fast float %9598, %9582
  %9602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9603 = extractvalue %dx.types.CBufRet.f32 %9602, 0
  %9604 = extractvalue %dx.types.CBufRet.f32 %9602, 1
  %9605 = fadd fast float %9604, %9603
  %9606 = call float @dx.op.unary.f32(i32 7, float %9605)  ; Saturate(value)
  %9607 = extractvalue %dx.types.CBufRet.f32 %9602, 2
  %9608 = extractvalue %dx.types.CBufRet.f32 %9602, 3
  %9609 = fadd fast float %9608, %9607
  %9610 = call float @dx.op.unary.f32(i32 7, float %9609)  ; Saturate(value)
  %9611 = fmul fast float %9606, %9590
  %9612 = fmul fast float %9611, %9610
  br label %9613

; <label>:9613                                    ; preds = %9574, %9493, %9328, %9310, %9308
  %9614 = phi float [ %9337, %9328 ], [ %9496, %9493 ], [ %9578, %9574 ], [ 0.000000e+00, %9308 ], [ 0.000000e+00, %9310 ]
  %9615 = phi float [ %9371, %9328 ], [ %9530, %9493 ], [ %9612, %9574 ], [ 0.000000e+00, %9308 ], [ 0.000000e+00, %9310 ]
  %9616 = phi float [ %9358, %9328 ], [ %9517, %9493 ], [ %9599, %9574 ], [ 0.000000e+00, %9308 ], [ 0.000000e+00, %9310 ]
  %9617 = phi float [ %9359, %9328 ], [ %9518, %9493 ], [ %9600, %9574 ], [ 0.000000e+00, %9308 ], [ 0.000000e+00, %9310 ]
  %9618 = phi float [ %9360, %9328 ], [ %9519, %9493 ], [ %9601, %9574 ], [ 0.000000e+00, %9308 ], [ 0.000000e+00, %9310 ]
  %9619 = fmul fast float %9251, %9615
  %9620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9621 = extractvalue %dx.types.CBufRet.f32 %9620, 2
  %9622 = fsub fast float %9258, %9621
  %9623 = fcmp fast olt float %9619, -2.000000e+01
  %9624 = call float @dx.op.unary.f32(i32 21, float %9619)  ; Exp(value)
  %9625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9626 = extractvalue %dx.types.CBufRet.f32 %9625, 2
  %9627 = extractvalue %dx.types.CBufRet.f32 %9625, 3
  %9628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9629 = extractvalue %dx.types.CBufRet.f32 %9628, 2
  %9630 = fmul fast float %9627, %9622
  %9631 = call float @dx.op.unary.f32(i32 7, float %9630)  ; Saturate(value)
  %9632 = fsub fast float 1.000000e+00, %9631
  %9633 = fmul fast float %9243, 5.000000e-01
  %9634 = fadd fast float %9633, 5.000000e-01
  %9635 = call float @dx.op.unary.f32(i32 7, float %9634)  ; Saturate(value)
  %9636 = fsub fast float 1.000000e+00, %9635
  %9637 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9632)  ; FMax(a,b)
  %9638 = fdiv fast float %9636, %9637
  %9639 = fsub fast float %9622, %9200
  %9640 = call float @dx.op.unary.f32(i32 6, float %9639)  ; FAbs(value)
  %9641 = fmul fast float %9640, %9626
  %9642 = call float @dx.op.unary.f32(i32 7, float %9638)  ; Saturate(value)
  %9643 = fsub fast float 1.000000e+00, %9641
  %9644 = fmul fast float %9643, %9642
  %9645 = fadd fast float %9644, %9641
  %9646 = fmul fast float %9629, %9622
  %9647 = call float @dx.op.unary.f32(i32 7, float %9646)  ; Saturate(value)
  %9648 = fsub fast float 1.000000e+00, %9645
  %9649 = fmul fast float %9648, %9647
  %9650 = fadd fast float %9649, %9645
  %9651 = call float @dx.op.unary.f32(i32 7, float %9650)  ; Saturate(value)
  %9652 = fadd fast float %9624, -1.000000e+00
  %9653 = select i1 %9623, float -1.000000e+00, float %9652
  %9654 = fmul fast float %9651, %9653
  %9655 = fadd fast float %9654, 1.000000e+00
  %9656 = fsub fast float -0.000000e+00, %9654
  %9657 = fmul fast float %9616, %9656
  %9658 = fmul fast float %9617, %9656
  %9659 = fmul fast float %9618, %9656
  br label %9660

; <label>:9660                                    ; preds = %9613, %9209
  %9661 = phi float [ %9614, %9613 ], [ 0.000000e+00, %9209 ]
  %9662 = phi float [ %9655, %9613 ], [ 1.000000e+00, %9209 ]
  %9663 = phi float [ %9657, %9613 ], [ 0.000000e+00, %9209 ]
  %9664 = phi float [ %9658, %9613 ], [ 0.000000e+00, %9209 ]
  %9665 = phi float [ %9659, %9613 ], [ 0.000000e+00, %9209 ]
  %9666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9667 = extractvalue %dx.types.CBufRet.f32 %9666, 1
  %9668 = fsub fast float 1.000000e+00, %9662
  %9669 = fmul fast float %9668, %9244
  %9670 = fmul fast float %9669, %9667
  %9671 = fsub fast float %9244, %9670
  br i1 %9237, label %9672, label %9701, !dx.controlflow.hints !176

; <label>:9672                                    ; preds = %9660
  %9673 = fmul fast float %9245, %9234
  %9674 = fadd fast float %9673, %9235
  %9675 = call float @dx.op.unary.f32(i32 7, float %9674)  ; Saturate(value)
  %9676 = fmul fast float %9216, %9671
  %9677 = fsub fast float -0.000000e+00, %9676
  %9678 = fmul fast float %9217, %9671
  %9679 = fsub fast float -0.000000e+00, %9678
  %9680 = call float @dx.op.unary.f32(i32 21, float %9677)  ; Exp(value)
  %9681 = call float @dx.op.unary.f32(i32 21, float %9679)  ; Exp(value)
  %9682 = call float @dx.op.binary.f32(i32 35, float %9224, float %9680)  ; FMax(a,b)
  %9683 = call float @dx.op.binary.f32(i32 35, float %9224, float %9681)  ; FMax(a,b)
  %9684 = fsub fast float %9683, %9682
  %9685 = fmul fast float %9684, %9675
  %9686 = fadd fast float %9685, %9682
  %9687 = call float @dx.op.unary.f32(i32 7, float %9686)  ; Saturate(value)
  %9688 = fsub fast float %9221, %9226
  %9689 = fsub fast float %9222, %9227
  %9690 = fsub fast float %9223, %9228
  %9691 = fmul fast float %9675, %9688
  %9692 = fmul fast float %9675, %9689
  %9693 = fmul fast float %9675, %9690
  %9694 = fadd fast float %9691, %9226
  %9695 = fadd fast float %9692, %9227
  %9696 = fadd fast float %9693, %9228
  %9697 = fsub fast float 1.000000e+00, %9687
  %9698 = fmul fast float %9697, %9694
  %9699 = fmul fast float %9697, %9695
  %9700 = fmul fast float %9697, %9696
  br label %9760

; <label>:9701                                    ; preds = %9660
  %9702 = fmul fast float %9671, %9233
  %9703 = call float @dx.op.unary.f32(i32 7, float %9702)  ; Saturate(value)
  %9704 = fsub fast float 2.000000e+00, %9703
  %9705 = fmul fast float %9703, 9.921875e-01
  %9706 = fmul fast float %9705, %9704
  %9707 = fadd fast float %9706, 3.906250e-03
  %9708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %9707, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9709 = extractvalue %dx.types.ResRet.f32 %9708, 0
  %9710 = fsub fast float %9703, %9709
  %9711 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9710)  ; FMax(a,b)
  %9712 = fmul fast float %9219, %9200
  %9713 = call float @dx.op.unary.f32(i32 6, float %9712)  ; FAbs(value)
  %9714 = fcmp fast ogt float %9713, 0x3EB0C6F7A0000000
  br i1 %9714, label %9715, label %9721, !dx.controlflow.hints !177

; <label>:9715                                    ; preds = %9701
  %9716 = fmul fast float %9712, 0xBFF7154760000000
  %9717 = call float @dx.op.unary.f32(i32 21, float %9716)  ; Exp(value)
  %9718 = fsub fast float 1.000000e+00, %9717
  %9719 = fdiv fast float %9718, %9712
  %9720 = fmul fast float %9719, %9229
  br label %9721

; <label>:9721                                    ; preds = %9715, %9701
  %9722 = phi float [ %9720, %9715 ], [ %9229, %9701 ]
  %9723 = fadd fast float %9722, %9231
  %9724 = fmul fast float %9723, %9711
  %9725 = fmul fast float %9216, %9724
  %9726 = fsub fast float -0.000000e+00, %9725
  %9727 = fmul fast float %9217, %9724
  %9728 = fsub fast float -0.000000e+00, %9727
  %9729 = fmul fast float %9218, %9724
  %9730 = fsub fast float -0.000000e+00, %9729
  %9731 = call float @dx.op.unary.f32(i32 21, float %9726)  ; Exp(value)
  %9732 = call float @dx.op.unary.f32(i32 21, float %9728)  ; Exp(value)
  %9733 = call float @dx.op.unary.f32(i32 21, float %9730)  ; Exp(value)
  %9734 = fmul fast float %9245, %9245
  %9735 = fadd fast float %9734, 1.000000e+00
  %9736 = fmul fast float %9735, 0x3FAE8EC8A0000000
  %9737 = fmul fast float %9736, %9226
  %9738 = fmul fast float %9736, %9227
  %9739 = fmul fast float %9736, %9228
  %9740 = fmul fast float %9245, %9224
  %9741 = fsub fast float 1.000000e+00, %9740
  %9742 = fmul fast float %9224, %9224
  %9743 = fsub fast float 1.000000e+00, %9742
  %9744 = fmul fast float %9743, 0x3FB45F3060000000
  %9745 = fmul fast float %9741, %9741
  %9746 = fdiv fast float 1.000000e+00, %9745
  %9747 = fmul fast float %9744, %9746
  %9748 = fmul fast float %9747, %9221
  %9749 = fmul fast float %9747, %9222
  %9750 = fmul fast float %9747, %9223
  %9751 = fadd fast float %9748, %9737
  %9752 = fadd fast float %9749, %9738
  %9753 = fadd fast float %9750, %9739
  %9754 = fsub fast float 1.000000e+00, %9731
  %9755 = fsub fast float 1.000000e+00, %9732
  %9756 = fsub fast float 1.000000e+00, %9733
  %9757 = fmul fast float %9751, %9754
  %9758 = fmul fast float %9752, %9755
  %9759 = fmul fast float %9753, %9756
  br label %9760

; <label>:9760                                    ; preds = %9721, %9672
  %9761 = phi float [ %9698, %9672 ], [ %9757, %9721 ]
  %9762 = phi float [ %9699, %9672 ], [ %9758, %9721 ]
  %9763 = phi float [ %9700, %9672 ], [ %9759, %9721 ]
  %9764 = phi float [ %9687, %9672 ], [ %9731, %9721 ]
  %9765 = phi float [ %9687, %9672 ], [ %9732, %9721 ]
  %9766 = phi float [ %9687, %9672 ], [ %9733, %9721 ]
  br i1 %9253, label %9767, label %9965, !dx.controlflow.hints !178

; <label>:9767                                    ; preds = %9760
  %9768 = extractvalue %dx.types.CBufRet.f32 %9666, 0
  %9769 = fmul fast float %9768, %9668
  %9770 = fsub fast float %9663, %9761
  %9771 = fsub fast float %9664, %9762
  %9772 = fsub fast float %9665, %9763
  %9773 = fmul fast float %9769, %9770
  %9774 = fmul fast float %9769, %9771
  %9775 = fmul fast float %9769, %9772
  %9776 = fadd fast float %9773, %9761
  %9777 = fadd fast float %9774, %9762
  %9778 = fadd fast float %9775, %9763
  %9779 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9764)  ; FMax(a,b)
  %9780 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9765)  ; FMax(a,b)
  %9781 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9766)  ; FMax(a,b)
  %9782 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9662)  ; FMax(a,b)
  %9783 = call float @dx.op.binary.f32(i32 35, float %9661, float %9671)  ; FMax(a,b)
  %9784 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9783)  ; FMax(a,b)
  %9785 = fdiv fast float %9661, %9784
  %9786 = call float @dx.op.unary.f32(i32 7, float %9785)  ; Saturate(value)
  %9787 = fdiv fast float %9671, %9784
  %9788 = call float @dx.op.unary.f32(i32 7, float %9787)  ; Saturate(value)
  %9789 = fcmp fast une float %9782, 1.000000e+00
  br i1 %9789, label %9790, label %9803, !dx.controlflow.hints !179

; <label>:9790                                    ; preds = %9767
  %9791 = call float @dx.op.unary.f32(i32 23, float %9782)  ; Log(value)
  %9792 = fmul fast float %9791, 0x3FE62E4300000000
  %9793 = fmul fast float %9663, %9792
  %9794 = fsub fast float -0.000000e+00, %9793
  %9795 = fmul fast float %9664, %9792
  %9796 = fsub fast float -0.000000e+00, %9795
  %9797 = fmul fast float %9665, %9792
  %9798 = fsub fast float -0.000000e+00, %9797
  %9799 = fsub fast float 1.000000e+00, %9782
  %9800 = fdiv fast float %9794, %9799
  %9801 = fdiv fast float %9796, %9799
  %9802 = fdiv fast float %9798, %9799
  br label %9803

; <label>:9803                                    ; preds = %9790, %9767
  %9804 = phi float [ %9800, %9790 ], [ %9663, %9767 ]
  %9805 = phi float [ %9801, %9790 ], [ %9664, %9767 ]
  %9806 = phi float [ %9802, %9790 ], [ %9665, %9767 ]
  %9807 = phi float [ %9792, %9790 ], [ 0.000000e+00, %9767 ]
  %9808 = fcmp fast une float %9779, 1.000000e+00
  br i1 %9808, label %9809, label %9816, !dx.controlflow.hints !180

; <label>:9809                                    ; preds = %9803
  %9810 = call float @dx.op.unary.f32(i32 23, float %9779)  ; Log(value)
  %9811 = fmul fast float %9810, 0x3FE62E4300000000
  %9812 = fmul fast float %9776, %9811
  %9813 = fsub fast float -0.000000e+00, %9812
  %9814 = fsub fast float 1.000000e+00, %9779
  %9815 = fdiv fast float %9813, %9814
  br label %9816

; <label>:9816                                    ; preds = %9809, %9803
  %9817 = phi float [ %9815, %9809 ], [ %9776, %9803 ]
  %9818 = phi float [ %9811, %9809 ], [ 0.000000e+00, %9803 ]
  %9819 = fcmp fast une float %9780, 1.000000e+00
  br i1 %9819, label %9820, label %9827, !dx.controlflow.hints !180

; <label>:9820                                    ; preds = %9816
  %9821 = call float @dx.op.unary.f32(i32 23, float %9780)  ; Log(value)
  %9822 = fmul fast float %9821, 0x3FE62E4300000000
  %9823 = fmul fast float %9777, %9822
  %9824 = fsub fast float -0.000000e+00, %9823
  %9825 = fsub fast float 1.000000e+00, %9780
  %9826 = fdiv fast float %9824, %9825
  br label %9827

; <label>:9827                                    ; preds = %9820, %9816
  %9828 = phi float [ %9826, %9820 ], [ %9777, %9816 ]
  %9829 = phi float [ %9822, %9820 ], [ 0.000000e+00, %9816 ]
  %9830 = fcmp fast une float %9781, 1.000000e+00
  br i1 %9830, label %9831, label %9838, !dx.controlflow.hints !180

; <label>:9831                                    ; preds = %9827
  %9832 = call float @dx.op.unary.f32(i32 23, float %9781)  ; Log(value)
  %9833 = fmul fast float %9832, 0x3FE62E4300000000
  %9834 = fmul fast float %9778, %9833
  %9835 = fsub fast float -0.000000e+00, %9834
  %9836 = fsub fast float 1.000000e+00, %9781
  %9837 = fdiv fast float %9835, %9836
  br label %9838

; <label>:9838                                    ; preds = %9831, %9827
  %9839 = phi float [ %9837, %9831 ], [ %9778, %9827 ]
  %9840 = phi float [ %9833, %9831 ], [ 0.000000e+00, %9827 ]
  %9841 = fmul fast float %9804, %9788
  %9842 = fmul fast float %9805, %9788
  %9843 = fmul fast float %9806, %9788
  %9844 = fmul fast float %9807, %9788
  %9845 = fmul fast float %9817, %9786
  %9846 = fmul fast float %9828, %9786
  %9847 = fmul fast float %9839, %9786
  %9848 = fmul fast float %9818, %9786
  %9849 = fmul fast float %9829, %9786
  %9850 = fmul fast float %9840, %9786
  %9851 = fadd fast float %9845, %9841
  %9852 = fadd fast float %9846, %9842
  %9853 = fadd fast float %9847, %9843
  %9854 = fadd fast float %9848, %9844
  %9855 = fadd fast float %9849, %9844
  %9856 = fadd fast float %9850, %9844
  %9857 = fcmp fast une float %9854, 0.000000e+00
  br i1 %9857, label %9858, label %9865, !dx.controlflow.hints !181

; <label>:9858                                    ; preds = %9838
  %9859 = fmul fast float %9854, 0x3FF7154760000000
  %9860 = call float @dx.op.unary.f32(i32 21, float %9859)  ; Exp(value)
  %9861 = fsub fast float 1.000000e+00, %9860
  %9862 = fmul fast float %9851, %9861
  %9863 = fsub fast float -0.000000e+00, %9862
  %9864 = fdiv fast float %9863, %9854
  br label %9865

; <label>:9865                                    ; preds = %9858, %9838
  %9866 = phi float [ %9860, %9858 ], [ 1.000000e+00, %9838 ]
  %9867 = phi float [ %9864, %9858 ], [ %9851, %9838 ]
  %9868 = fcmp fast une float %9855, 0.000000e+00
  br i1 %9868, label %9869, label %9876, !dx.controlflow.hints !181

; <label>:9869                                    ; preds = %9865
  %9870 = fmul fast float %9855, 0x3FF7154760000000
  %9871 = call float @dx.op.unary.f32(i32 21, float %9870)  ; Exp(value)
  %9872 = fsub fast float 1.000000e+00, %9871
  %9873 = fmul fast float %9852, %9872
  %9874 = fsub fast float -0.000000e+00, %9873
  %9875 = fdiv fast float %9874, %9855
  br label %9876

; <label>:9876                                    ; preds = %9869, %9865
  %9877 = phi float [ %9871, %9869 ], [ 1.000000e+00, %9865 ]
  %9878 = phi float [ %9875, %9869 ], [ %9852, %9865 ]
  %9879 = fcmp fast une float %9856, 0.000000e+00
  br i1 %9879, label %9880, label %9887, !dx.controlflow.hints !181

; <label>:9880                                    ; preds = %9876
  %9881 = fmul fast float %9856, 0x3FF7154760000000
  %9882 = call float @dx.op.unary.f32(i32 21, float %9881)  ; Exp(value)
  %9883 = fsub fast float 1.000000e+00, %9882
  %9884 = fmul fast float %9853, %9883
  %9885 = fsub fast float -0.000000e+00, %9884
  %9886 = fdiv fast float %9885, %9856
  br label %9887

; <label>:9887                                    ; preds = %9880, %9876
  %9888 = phi float [ %9882, %9880 ], [ 1.000000e+00, %9876 ]
  %9889 = phi float [ %9886, %9880 ], [ %9853, %9876 ]
  %9890 = fcmp fast ogt float %9786, %9788
  br i1 %9890, label %9891, label %9911

; <label>:9891                                    ; preds = %9887
  %9892 = fsub fast float 1.000000e+00, %9788
  %9893 = fmul fast float %9804, %9892
  %9894 = fmul fast float %9805, %9892
  %9895 = fmul fast float %9806, %9892
  %9896 = fmul fast float %9807, %9892
  %9897 = fcmp fast une float %9896, 0.000000e+00
  br i1 %9897, label %9898, label %9949, !dx.controlflow.hints !182

; <label>:9898                                    ; preds = %9891
  %9899 = fmul fast float %9896, 0x3FF7154760000000
  %9900 = call float @dx.op.unary.f32(i32 21, float %9899)  ; Exp(value)
  %9901 = fsub fast float 1.000000e+00, %9900
  %9902 = fmul fast float %9893, %9901
  %9903 = fsub fast float -0.000000e+00, %9902
  %9904 = fmul fast float %9894, %9901
  %9905 = fsub fast float -0.000000e+00, %9904
  %9906 = fmul fast float %9895, %9901
  %9907 = fsub fast float -0.000000e+00, %9906
  %9908 = fdiv fast float %9903, %9896
  %9909 = fdiv fast float %9905, %9896
  %9910 = fdiv fast float %9907, %9896
  br label %9949

; <label>:9911                                    ; preds = %9887
  %9912 = fsub fast float 1.000000e+00, %9786
  %9913 = fmul fast float %9817, %9912
  %9914 = fmul fast float %9828, %9912
  %9915 = fmul fast float %9839, %9912
  %9916 = fmul fast float %9818, %9912
  %9917 = fmul fast float %9829, %9912
  %9918 = fmul fast float %9840, %9912
  %9919 = fcmp fast une float %9916, 0.000000e+00
  br i1 %9919, label %9920, label %9927, !dx.controlflow.hints !181

; <label>:9920                                    ; preds = %9911
  %9921 = fmul fast float %9916, 0x3FF7154760000000
  %9922 = call float @dx.op.unary.f32(i32 21, float %9921)  ; Exp(value)
  %9923 = fsub fast float 1.000000e+00, %9922
  %9924 = fmul fast float %9913, %9923
  %9925 = fsub fast float -0.000000e+00, %9924
  %9926 = fdiv fast float %9925, %9916
  br label %9927

; <label>:9927                                    ; preds = %9920, %9911
  %9928 = phi float [ %9926, %9920 ], [ %9913, %9911 ]
  %9929 = phi float [ %9922, %9920 ], [ 1.000000e+00, %9911 ]
  %9930 = fcmp fast une float %9917, 0.000000e+00
  br i1 %9930, label %9931, label %9938, !dx.controlflow.hints !181

; <label>:9931                                    ; preds = %9927
  %9932 = fmul fast float %9917, 0x3FF7154760000000
  %9933 = call float @dx.op.unary.f32(i32 21, float %9932)  ; Exp(value)
  %9934 = fsub fast float 1.000000e+00, %9933
  %9935 = fmul fast float %9914, %9934
  %9936 = fsub fast float -0.000000e+00, %9935
  %9937 = fdiv fast float %9936, %9917
  br label %9938

; <label>:9938                                    ; preds = %9931, %9927
  %9939 = phi float [ %9937, %9931 ], [ %9914, %9927 ]
  %9940 = phi float [ %9933, %9931 ], [ 1.000000e+00, %9927 ]
  %9941 = fcmp fast une float %9918, 0.000000e+00
  br i1 %9941, label %9942, label %9949, !dx.controlflow.hints !181

; <label>:9942                                    ; preds = %9938
  %9943 = fmul fast float %9918, 0x3FF7154760000000
  %9944 = call float @dx.op.unary.f32(i32 21, float %9943)  ; Exp(value)
  %9945 = fsub fast float 1.000000e+00, %9944
  %9946 = fmul fast float %9915, %9945
  %9947 = fsub fast float -0.000000e+00, %9946
  %9948 = fdiv fast float %9947, %9918
  br label %9949

; <label>:9949                                    ; preds = %9942, %9938, %9898, %9891
  %9950 = phi float [ %9948, %9942 ], [ %9910, %9898 ], [ %9895, %9891 ], [ %9915, %9938 ]
  %9951 = phi float [ %9939, %9942 ], [ %9909, %9898 ], [ %9894, %9891 ], [ %9939, %9938 ]
  %9952 = phi float [ %9928, %9942 ], [ %9908, %9898 ], [ %9893, %9891 ], [ %9928, %9938 ]
  %9953 = phi float [ %9944, %9942 ], [ %9900, %9898 ], [ 1.000000e+00, %9891 ], [ 1.000000e+00, %9938 ]
  %9954 = phi float [ %9940, %9942 ], [ %9900, %9898 ], [ 1.000000e+00, %9891 ], [ %9940, %9938 ]
  %9955 = phi float [ %9929, %9942 ], [ %9900, %9898 ], [ 1.000000e+00, %9891 ], [ %9929, %9938 ]
  %9956 = fmul fast float %9955, %9867
  %9957 = fmul fast float %9954, %9878
  %9958 = fmul fast float %9953, %9889
  %9959 = fadd fast float %9956, %9952
  %9960 = fadd fast float %9957, %9951
  %9961 = fadd fast float %9958, %9950
  %9962 = fmul fast float %9955, %9866
  %9963 = fmul fast float %9954, %9877
  %9964 = fmul fast float %9953, %9888
  br label %9965

; <label>:9965                                    ; preds = %9949, %9760
  %9966 = phi float [ %9964, %9949 ], [ %9766, %9760 ]
  %9967 = phi float [ %9963, %9949 ], [ %9765, %9760 ]
  %9968 = phi float [ %9962, %9949 ], [ %9764, %9760 ]
  %9969 = phi float [ %9961, %9949 ], [ %9763, %9760 ]
  %9970 = phi float [ %9960, %9949 ], [ %9762, %9760 ]
  %9971 = phi float [ %9959, %9949 ], [ %9761, %9760 ]
  %9972 = fmul fast float %9971, %8925
  %9973 = fmul fast float %9970, %8926
  %9974 = fmul fast float %9969, %8927
  %9975 = fmul fast float %9968, %9208
  %9976 = call float @dx.op.dot3.f32(i32 55, float %9968, float %9967, float %9966, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9977 = call float @dx.op.dot3.f32(i32 55, float %9972, float %9973, float %9974, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9978 = select i1 %289, float %9976, float %9968
  %9979 = select i1 %289, float %9976, float %9967
  %9980 = select i1 %289, float 1.000000e+00, float %9966
  %9981 = select i1 %289, float %9977, float %9972
  %9982 = select i1 %289, float 0.000000e+00, float %9973
  %9983 = select i1 %289, float 0.000000e+00, float %9974
  %9984 = fmul fast float %9978, %9202
  %9985 = fmul fast float %9979, %9203
  %9986 = fmul fast float %9980, %9204
  %9987 = fadd fast float %9984, %9981
  %9988 = fadd fast float %9985, %9982
  %9989 = fadd fast float %9983, %9986
  %9990 = fmul fast float %9978, %9205
  %9991 = fmul fast float %9979, %9206
  %9992 = fmul fast float %9980, %9207
  %9993 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9994 = extractvalue %dx.types.CBufRet.i32 %9993, 0
  %9995 = icmp eq i32 %9994, 0
  br i1 %9995, label %10363, label %9996, !dx.controlflow.hints !183

; <label>:9996                                    ; preds = %9965
  %9997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9998 = extractvalue %dx.types.CBufRet.f32 %9997, 2
  %9999 = extractvalue %dx.types.CBufRet.f32 %9997, 3
  %10000 = fmul fast float %9998, %119
  %10001 = fmul fast float %9999, %120
  %10002 = fmul fast float %10000, 2.000000e+00
  %10003 = fmul fast float %10001, 2.000000e+00
  %10004 = fsub fast float 1.000000e+00, %10002
  %10005 = fsub fast float 1.000000e+00, %10003
  %10006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %10007 = extractvalue %dx.types.CBufRet.f32 %10006, 0
  %10008 = extractvalue %dx.types.CBufRet.f32 %10006, 1
  %10009 = extractvalue %dx.types.CBufRet.f32 %10006, 2
  %10010 = fmul fast float %10004, %10007
  %10011 = fmul fast float %10004, %10008
  %10012 = fmul fast float %10004, %10009
  %10013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %10014 = extractvalue %dx.types.CBufRet.f32 %10013, 0
  %10015 = extractvalue %dx.types.CBufRet.f32 %10013, 1
  %10016 = extractvalue %dx.types.CBufRet.f32 %10013, 2
  %10017 = fmul fast float %10005, %10014
  %10018 = fmul fast float %10005, %10015
  %10019 = fmul fast float %10005, %10016
  %10020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %10021 = extractvalue %dx.types.CBufRet.f32 %10020, 0
  %10022 = extractvalue %dx.types.CBufRet.f32 %10020, 1
  %10023 = extractvalue %dx.types.CBufRet.f32 %10020, 2
  %10024 = fadd fast float %10017, %10021
  %10025 = fadd fast float %10024, %10010
  %10026 = fadd fast float %10018, %10022
  %10027 = fadd fast float %10026, %10011
  %10028 = fadd fast float %10019, %10023
  %10029 = fadd fast float %10028, %10012
  %10030 = fmul fast float %10025, %9201
  %10031 = fmul fast float %10027, %9201
  %10032 = fmul fast float %10029, %9201
  %10033 = fmul fast float %10030, %10030
  %10034 = fmul fast float %10031, %10031
  %10035 = fadd fast float %10033, %10034
  %10036 = fmul fast float %10032, %10032
  %10037 = fadd fast float %10035, %10036
  %10038 = call float @dx.op.unary.f32(i32 24, float %10037)  ; Sqrt(value)
  %10039 = extractvalue %dx.types.CBufRet.f32 %8928, 0
  %10040 = fsub fast float %10038, %10039
  %10041 = extractvalue %dx.types.CBufRet.f32 %8928, 2
  %10042 = fmul fast float %10040, %10041
  %10043 = call float @dx.op.unary.f32(i32 7, float %10042)  ; Saturate(value)
  %10044 = fadd fast float %10043, -5.000000e-01
  %10045 = fmul fast float %10044, 2.000000e+00
  %10046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %10047 = extractvalue %dx.types.CBufRet.f32 %10046, 2
  %10048 = call float @dx.op.binary.f32(i32 36, float %10047, float %10045)  ; FMin(a,b)
  %10049 = fsub fast float -0.000000e+00, %10047
  %10050 = fcmp fast ogt float %10048, %10049
  br i1 %10050, label %10051, label %10363, !dx.controlflow.hints !184

; <label>:10051                                   ; preds = %9996
  %10052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %10053 = extractvalue %dx.types.CBufRet.f32 %10052, 3
  %10054 = fcmp fast ogt float %10053, 0.000000e+00
  br i1 %10054, label %10055, label %10130, !dx.controlflow.hints !185

; <label>:10055                                   ; preds = %10051
  %10056 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %10057 = extractvalue %dx.types.Dimensions %10056, 0
  %10058 = sitofp i32 %10057 to float
  %10059 = extractvalue %dx.types.Dimensions %10056, 1
  %10060 = sitofp i32 %10059 to float
  %10061 = fmul fast float %10000, %10058
  %10062 = fmul fast float %10001, %10060
  %10063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %10064 = extractvalue %dx.types.CBufRet.f32 %10063, 1
  %10065 = fsub fast float -0.000000e+00, %10064
  %10066 = fptoui float %10065 to i32
  %10067 = fptoui float %10061 to i32
  %10068 = fptoui float %10062 to i32
  %10069 = and i32 %10066, 31
  %10070 = lshr i32 %10067, %10069
  %10071 = lshr i32 %10068, %10069
  %10072 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %10066, i32 %10070, i32 %10071, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %10073 = extractvalue %dx.types.ResRet.f32 %10072, 0
  %10074 = fcmp fast olt float %10073, -1.000000e+00
  %10075 = fcmp fast ogt float %10073, -1.000000e+00
  %10076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %10077 = extractvalue %dx.types.CBufRet.f32 %10076, 1
  %10078 = select i1 %10075, float %10077, float 1.000000e+00
  %10079 = fadd fast float %10073, 1.000000e+00
  %10080 = fmul fast float %10078, %10079
  %10081 = call float @dx.op.unary.f32(i32 6, float %10080)  ; FAbs(value)
  %10082 = extractvalue %dx.types.CBufRet.f32 %10076, 3
  %10083 = fcmp fast oge float %10081, %10082
  %10084 = select i1 %10083, float 0x4197782600000000, float %10081
  %10085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %10086 = extractvalue %dx.types.CBufRet.f32 %10085, 0
  %10087 = extractvalue %dx.types.CBufRet.f32 %10085, 1
  %10088 = extractvalue %dx.types.CBufRet.f32 %10085, 2
  %10089 = select i1 %10074, float %10086, float %10007
  %10090 = select i1 %10074, float %10087, float %10008
  %10091 = select i1 %10074, float %10088, float %10009
  %10092 = fmul fast float %10089, %10004
  %10093 = fmul fast float %10090, %10004
  %10094 = fmul fast float %10091, %10004
  %10095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %10096 = extractvalue %dx.types.CBufRet.f32 %10095, 0
  %10097 = extractvalue %dx.types.CBufRet.f32 %10095, 1
  %10098 = extractvalue %dx.types.CBufRet.f32 %10095, 2
  %10099 = select i1 %10074, float %10096, float %10014
  %10100 = select i1 %10074, float %10097, float %10015
  %10101 = select i1 %10074, float %10098, float %10016
  %10102 = fmul fast float %10099, %10005
  %10103 = fmul fast float %10100, %10005
  %10104 = fmul fast float %10101, %10005
  %10105 = fadd fast float %10102, %10092
  %10106 = fadd fast float %10103, %10093
  %10107 = fadd fast float %10104, %10094
  %10108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %10109 = extractvalue %dx.types.CBufRet.f32 %10108, 0
  %10110 = extractvalue %dx.types.CBufRet.f32 %10108, 1
  %10111 = extractvalue %dx.types.CBufRet.f32 %10108, 2
  %10112 = select i1 %10074, float %10109, float %10021
  %10113 = select i1 %10074, float %10110, float %10022
  %10114 = select i1 %10074, float %10111, float %10023
  %10115 = fadd fast float %10105, %10112
  %10116 = fadd fast float %10106, %10113
  %10117 = fadd fast float %10107, %10114
  %10118 = fmul fast float %10115, %10084
  %10119 = fmul fast float %10116, %10084
  %10120 = fmul fast float %10117, %10084
  %10121 = fmul fast float %10118, %10118
  %10122 = fmul fast float %10119, %10119
  %10123 = fadd fast float %10121, %10122
  %10124 = fmul fast float %10120, %10120
  %10125 = fadd fast float %10123, %10124
  %10126 = call float @dx.op.unary.f32(i32 24, float %10125)  ; Sqrt(value)
  %10127 = fsub fast float %10126, %10039
  %10128 = fmul fast float %10127, %10041
  %10129 = call float @dx.op.unary.f32(i32 7, float %10128)  ; Saturate(value)
  br label %10130

; <label>:10130                                   ; preds = %10055, %10051
  %10131 = phi float [ %10129, %10055 ], [ 1.000000e+00, %10051 ]
  %10132 = fmul fast float %10048, 5.000000e-01
  %10133 = fadd fast float %10132, 5.000000e-01
  %10134 = call float @dx.op.unary.f32(i32 22, float %10133)  ; Frc(value)
  %10135 = call float @dx.op.unary.f32(i32 27, float %10134)  ; Round_ni(value)
  %10136 = call float @dx.op.unary.f32(i32 22, float %10134)  ; Frc(value)
  %10137 = fmul fast float %10136, 2.000000e+00
  %10138 = fadd fast float %10137, -1.000000e+00
  %10139 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %10000, float %10001, float %10135, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10140 = extractvalue %dx.types.ResRet.f32 %10139, 0
  %10141 = extractvalue %dx.types.ResRet.f32 %10139, 1
  %10142 = extractvalue %dx.types.ResRet.f32 %10139, 2
  %10143 = extractvalue %dx.types.ResRet.f32 %10139, 3
  %10144 = fadd fast float %10140, -5.000000e-01
  %10145 = fadd fast float %10142, -5.000000e-01
  %10146 = fmul fast float %10144, 0xBFD5555560000000
  %10147 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %10145, float %10146)  ; FMad(a,b,c)
  %10148 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %10141, float 0.000000e+00)  ; FMad(a,b,c)
  %10149 = fadd fast float %10148, %10143
  %10150 = fmul fast float %10144, -7.500000e-01
  %10151 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %10145, float %10150)  ; FMad(a,b,c)
  %10152 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %10141, float 0.000000e+00)  ; FMad(a,b,c)
  %10153 = fadd fast float %10152, %10143
  %10154 = call float @dx.op.binary.f32(i32 35, float %10147, float -1.000000e+00)  ; FMax(a,b)
  %10155 = call float @dx.op.binary.f32(i32 35, float %10149, float -1.000000e+00)  ; FMax(a,b)
  %10156 = call float @dx.op.binary.f32(i32 35, float %10151, float -1.000000e+00)  ; FMax(a,b)
  %10157 = call float @dx.op.binary.f32(i32 35, float %10153, float -1.000000e+00)  ; FMax(a,b)
  %10158 = call float @dx.op.binary.f32(i32 36, float %10154, float 1.000000e+00)  ; FMin(a,b)
  %10159 = call float @dx.op.binary.f32(i32 36, float %10155, float 1.000000e+00)  ; FMin(a,b)
  %10160 = call float @dx.op.binary.f32(i32 36, float %10156, float 1.000000e+00)  ; FMin(a,b)
  %10161 = call float @dx.op.binary.f32(i32 36, float %10157, float 1.000000e+00)  ; FMin(a,b)
  %10162 = fcmp fast olt float %10158, 0x3FEFFF8020000000
  br i1 %10162, label %10163, label %10278, !dx.controlflow.hints !186

; <label>:10163                                   ; preds = %10130
  %10164 = extractvalue %dx.types.CBufRet.f32 %10046, 3
  %10165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %10166 = extractvalue %dx.types.CBufRet.f32 %10165, 0
  %10167 = extractvalue %dx.types.CBufRet.f32 %10165, 1
  %10168 = extractvalue %dx.types.CBufRet.f32 %10165, 2
  %10169 = extractvalue %dx.types.CBufRet.f32 %10165, 3
  %10170 = fsub fast float %10166, %10158
  %10171 = fsub fast float %10167, %10159
  %10172 = fsub fast float %10168, %10160
  %10173 = fsub fast float %10169, %10161
  %10174 = fmul fast float %10170, %10164
  %10175 = fmul fast float %10171, %10164
  %10176 = fmul fast float %10172, %10164
  %10177 = fmul fast float %10173, %10164
  %10178 = fadd fast float %10174, %10158
  %10179 = fadd fast float %10175, %10159
  %10180 = fsub fast float -0.000000e+00, %10179
  %10181 = fadd fast float %10176, %10160
  %10182 = fadd fast float %10177, %10161
  %10183 = fmul fast float %10178, %10178
  %10184 = fsub fast float %10179, %10183
  %10185 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %10184)  ; FMax(a,b)
  %10186 = fdiv fast float 1.000000e+00, %10185
  %10187 = fmul fast float %10179, %10178
  %10188 = fsub fast float %10181, %10187
  %10189 = fsub fast float %10138, %10178
  %10190 = fmul fast float %10138, %10138
  %10191 = fsub fast float %10190, %10179
  %10192 = fmul fast float %10189, %10186
  %10193 = fmul fast float %10192, %10188
  %10194 = fsub fast float %10191, %10193
  %10195 = fmul fast float %10179, %10179
  %10196 = fsub fast float %10182, %10195
  %10197 = fmul fast float %10188, %10188
  %10198 = fmul fast float %10197, %10186
  %10199 = fsub fast float %10196, %10198
  %10200 = fdiv fast float %10194, %10199
  %10201 = fmul fast float %10188, %10200
  %10202 = fsub fast float %10189, %10201
  %10203 = fmul fast float %10202, %10186
  %10204 = fmul fast float %10203, %10178
  %10205 = fsub fast float 1.000000e+00, %10204
  %10206 = fmul fast float %10179, %10200
  %10207 = fsub fast float %10205, %10206
  %10208 = fmul fast float %10203, %10203
  %10209 = fmul fast float %10200, 4.000000e+00
  %10210 = fmul fast float %10209, %10207
  %10211 = fsub fast float %10208, %10210
  %10212 = call float @dx.op.unary.f32(i32 24, float %10211)  ; Sqrt(value)
  %10213 = fcmp fast oge float %10203, 0.000000e+00
  %10214 = fsub fast float -0.000000e+00, %10212
  %10215 = select i1 %10213, float %10214, float %10212
  %10216 = fsub fast float %10215, %10203
  %10217 = fdiv fast float %10216, %10200
  %10218 = fdiv fast float %10207, %10216
  %10219 = fmul fast float %10217, 5.000000e-01
  %10220 = fmul fast float %10218, 2.000000e+00
  %10221 = select i1 %10213, float %10219, float %10220
  %10222 = select i1 %10213, float %10220, float %10219
  %10223 = call float @dx.op.binary.f32(i32 35, float %10221, float %10222)  ; FMax(a,b)
  %10224 = call float @dx.op.binary.f32(i32 36, float %10221, float %10222)  ; FMin(a,b)
  %10225 = fcmp fast ogt float %10138, %10224
  br i1 %10225, label %10226, label %10236

; <label>:10226                                   ; preds = %10163
  %10227 = fsub fast float %10138, %10224
  %10228 = fsub fast float %10223, %10224
  %10229 = fmul fast float %10227, %10228
  %10230 = fmul fast float %10223, %10138
  %10231 = fadd fast float %10223, %10138
  %10232 = fmul fast float %10231, %10178
  %10233 = fadd fast float %10230, %10179
  %10234 = fsub fast float %10233, %10232
  %10235 = fdiv fast float %10234, %10229
  br label %10236

; <label>:10236                                   ; preds = %10226, %10163
  %10237 = phi float [ %10235, %10226 ], [ 0.000000e+00, %10163 ]
  %10238 = fcmp fast ogt float %10138, %10223
  %10239 = fsub fast float %10138, %10223
  br i1 %10238, label %10240, label %10250

; <label>:10240                                   ; preds = %10236
  %10241 = fsub fast float %10223, %10224
  %10242 = fmul fast float %10241, %10239
  %10243 = fmul fast float %10224, %10138
  %10244 = fadd fast float %10224, %10138
  %10245 = fmul fast float %10244, %10178
  %10246 = fsub fast float %10180, %10243
  %10247 = fadd fast float %10246, %10245
  %10248 = fdiv fast float %10247, %10242
  %10249 = fadd fast float %10248, %10237
  br label %10250

; <label>:10250                                   ; preds = %10240, %10236
  %10251 = phi float [ %10249, %10240 ], [ %10237, %10236 ]
  %10252 = fsub fast float %10138, %10224
  %10253 = fmul fast float %10252, %10239
  %10254 = fmul fast float %10224, %10223
  %10255 = fadd fast float %10224, %10223
  %10256 = fmul fast float %10255, %10178
  %10257 = fadd fast float %10254, %10179
  %10258 = fsub fast float %10257, %10256
  %10259 = fdiv fast float %10258, %10253
  %10260 = call float @dx.op.unary.f32(i32 7, float %10251)  ; Saturate(value)
  %10261 = fcmp fast oeq float %8929, 0.000000e+00
  %10262 = extractvalue %dx.types.CBufRet.f32 %10046, 0
  %10263 = fcmp fast oeq float %10262, 0.000000e+00
  %10264 = or i1 %10261, %10263
  %10265 = fmul fast float %10262, 2.000000e+00
  %10266 = fadd fast float %10047, %10048
  %10267 = fdiv fast float %10266, %10265
  %10268 = call float @dx.op.unary.f32(i32 7, float %10267)  ; Saturate(value)
  %10269 = fmul fast float %10268, 2.000000e+00
  %10270 = fsub fast float 3.000000e+00, %10269
  %10271 = fmul fast float %10268, %10268
  %10272 = fmul fast float %10271, %10270
  %10273 = select i1 %10264, float 1.000000e+00, float %10272
  %10274 = fmul fast float %10259, %8929
  %10275 = fadd fast float %10260, %10274
  %10276 = call float @dx.op.unary.f32(i32 7, float %10275)  ; Saturate(value)
  %10277 = fmul fast float %10273, %10276
  br label %10278

; <label>:10278                                   ; preds = %10250, %10130
  %10279 = phi float [ %10277, %10250 ], [ 0.000000e+00, %10130 ]
  %10280 = fsub fast float 1.000000e+00, %10279
  %10281 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %10000, float %10001, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10282 = extractvalue %dx.types.ResRet.f32 %10281, 0
  %10283 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %10284 = extractvalue %dx.types.CBufRet.i32 %10283, 2
  %10285 = icmp eq i32 %10284, 0
  br i1 %10285, label %10291, label %10286

; <label>:10286                                   ; preds = %10278
  %10287 = call float @dx.op.unary.f32(i32 7, float %10279)  ; Saturate(value)
  %10288 = fadd fast float %10282, -1.000000e+00
  %10289 = fmul fast float %10287, %10288
  %10290 = fadd fast float %10289, 1.000000e+00
  br label %10291

; <label>:10291                                   ; preds = %10286, %10278
  %10292 = phi float [ %10290, %10286 ], [ %10280, %10278 ]
  br i1 %10054, label %10293, label %10311

; <label>:10293                                   ; preds = %10291
  %10294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10295 = extractvalue %dx.types.CBufRet.f32 %10294, 1
  %10296 = fsub fast float %10131, %10295
  %10297 = call float @dx.op.unary.f32(i32 7, float %10296)  ; Saturate(value)
  %10298 = fsub fast float %10131, %10053
  %10299 = call float @dx.op.unary.f32(i32 7, float %10298)  ; Saturate(value)
  %10300 = fsub fast float %10297, %10299
  %10301 = fsub fast float %10133, %10299
  %10302 = fdiv fast float %10301, %10300
  %10303 = call float @dx.op.unary.f32(i32 7, float %10302)  ; Saturate(value)
  %10304 = fmul fast float %10303, 2.000000e+00
  %10305 = fsub fast float 3.000000e+00, %10304
  %10306 = fsub fast float %10282, %10292
  %10307 = fmul fast float %10303, %10303
  %10308 = fmul fast float %10307, %10306
  %10309 = fmul fast float %10308, %10305
  %10310 = fadd fast float %10309, %10292
  br label %10311

; <label>:10311                                   ; preds = %10293, %10291
  %10312 = phi float [ %10310, %10293 ], [ %10292, %10291 ]
  %10313 = call float @dx.op.binary.f32(i32 35, float %10282, float %10312)  ; FMax(a,b)
  %10314 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %10315 = extractvalue %dx.types.CBufRet.i32 %10314, 2
  %10316 = and i32 %10315, 1
  %10317 = icmp eq i32 %10316, 0
  %10318 = fcmp fast une float %10313, 1.000000e+00
  %10319 = and i1 %10318, %10317
  br i1 %10319, label %10320, label %10339

; <label>:10320                                   ; preds = %10311
  %10321 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %10000, float %10001, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10322 = extractvalue %dx.types.ResRet.f32 %10321, 0
  %10323 = extractvalue %dx.types.ResRet.f32 %10321, 1
  %10324 = extractvalue %dx.types.ResRet.f32 %10321, 2
  %10325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10326 = extractvalue %dx.types.CBufRet.f32 %10325, 1
  %10327 = fmul fast float %10326, %10322
  %10328 = fmul fast float %10326, %10323
  %10329 = fmul fast float %10326, %10324
  %10330 = fcmp fast ogt float %10282, 0x3FEFFF2E40000000
  %10331 = fsub fast float 1.000000e+00, %10313
  %10332 = fsub fast float 1.000000e+00, %10282
  %10333 = fdiv fast float %10331, %10332
  %10334 = call float @dx.op.unary.f32(i32 7, float %10333)  ; Saturate(value)
  %10335 = select i1 %10330, float 0.000000e+00, float %10334
  %10336 = fmul fast float %10327, %10335
  %10337 = fmul fast float %10328, %10335
  %10338 = fmul fast float %10329, %10335
  br label %10339

; <label>:10339                                   ; preds = %10320, %10311
  %10340 = phi float [ 0.000000e+00, %10311 ], [ %10336, %10320 ]
  %10341 = phi float [ 0.000000e+00, %10311 ], [ %10337, %10320 ]
  %10342 = phi float [ 0.000000e+00, %10311 ], [ %10338, %10320 ]
  %10343 = fmul fast float %10340, %8925
  %10344 = fmul fast float %10341, %8926
  %10345 = fmul fast float %10342, %8927
  %10346 = fmul fast float %10313, %9975
  %10347 = call float @dx.op.dot3.f32(i32 55, float %10313, float %10313, float %10313, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10348 = call float @dx.op.dot3.f32(i32 55, float %10343, float %10344, float %10345, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10349 = select i1 %289, float %10347, float %10313
  %10350 = select i1 %289, float 1.000000e+00, float %10313
  %10351 = select i1 %289, float %10348, float %10343
  %10352 = select i1 %289, float 0.000000e+00, float %10344
  %10353 = select i1 %289, float 0.000000e+00, float %10345
  %10354 = fmul fast float %10349, %9987
  %10355 = fmul fast float %10349, %9988
  %10356 = fmul fast float %10350, %9989
  %10357 = fadd fast float %10354, %10351
  %10358 = fadd fast float %10355, %10352
  %10359 = fadd fast float %10353, %10356
  %10360 = fmul fast float %10349, %9990
  %10361 = fmul fast float %10349, %9991
  %10362 = fmul fast float %10350, %9992
  br label %10363

; <label>:10363                                   ; preds = %10339, %9996, %9965, %9197
  %10364 = phi float [ %9202, %9197 ], [ %9987, %9965 ], [ %10357, %10339 ], [ %9987, %9996 ]
  %10365 = phi float [ %9203, %9197 ], [ %9988, %9965 ], [ %10358, %10339 ], [ %9988, %9996 ]
  %10366 = phi float [ %9204, %9197 ], [ %9989, %9965 ], [ %10359, %10339 ], [ %9989, %9996 ]
  %10367 = phi float [ %9205, %9197 ], [ %9990, %9965 ], [ %10360, %10339 ], [ %9990, %9996 ]
  %10368 = phi float [ %9206, %9197 ], [ %9991, %9965 ], [ %10361, %10339 ], [ %9991, %9996 ]
  %10369 = phi float [ %9207, %9197 ], [ %9992, %9965 ], [ %10362, %10339 ], [ %9992, %9996 ]
  %10370 = phi float [ %9208, %9197 ], [ %9975, %9965 ], [ %10346, %10339 ], [ %9975, %9996 ]
  %10371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10372 = extractvalue %dx.types.CBufRet.f32 %10371, 2
  %10373 = extractvalue %dx.types.CBufRet.f32 %10371, 3
  %10374 = fmul fast float %10372, %119
  %10375 = fmul fast float %10373, %120
  %10376 = call float @dx.op.unary.f32(i32 7, float %10374)  ; Saturate(value)
  %10377 = call float @dx.op.unary.f32(i32 7, float %10375)  ; Saturate(value)
  %10378 = select i1 %8939, i32 2, i32 0
  %10379 = or i32 %10378, 1
  %10380 = uitofp i32 %10379 to float
  %10381 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10376, float %10377, float %10380, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10382 = extractvalue %dx.types.ResRet.f32 %10381, 0
  %10383 = extractvalue %dx.types.ResRet.f32 %10381, 1
  %10384 = extractvalue %dx.types.ResRet.f32 %10381, 2
  %10385 = extractvalue %dx.types.ResRet.f32 %10381, 3
  %10386 = add nuw nsw i32 %10378, 2
  %10387 = uitofp i32 %10386 to float
  %10388 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10376, float %10377, float %10387, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10389 = extractvalue %dx.types.ResRet.f32 %10388, 0
  %10390 = extractvalue %dx.types.ResRet.f32 %10388, 1
  %10391 = extractvalue %dx.types.ResRet.f32 %10388, 2
  %10392 = extractvalue %dx.types.ResRet.f32 %10388, 3
  %10393 = call float @dx.op.binary.f32(i32 35, float %10383, float %10384)  ; FMax(a,b)
  %10394 = call float @dx.op.binary.f32(i32 35, float %10382, float %10393)  ; FMax(a,b)
  %10395 = call float @dx.op.binary.f32(i32 35, float %10394, float %10385)  ; FMax(a,b)
  %10396 = call float @dx.op.binary.f32(i32 36, float %10390, float %10391)  ; FMin(a,b)
  %10397 = call float @dx.op.binary.f32(i32 36, float %10389, float %10396)  ; FMin(a,b)
  %10398 = call float @dx.op.binary.f32(i32 36, float %10397, float %10392)  ; FMin(a,b)
  %10399 = fmul fast float %10395, 2.550000e+02
  %10400 = fadd fast float %10399, 0x3F70101020000000
  %10401 = fptoui float %10400 to i32
  %10402 = fmul fast float %10398, 2.550000e+02
  %10403 = fadd fast float %10402, 0x3F70101020000000
  %10404 = fptoui float %10403 to i32
  %10405 = icmp ult i32 %10401, %10404
  br i1 %10405, label %10406, label %10575

; <label>:10406                                   ; preds = %10363
  %10407 = fcmp fast ogt float %105, 9.843750e-01
  %10408 = fadd fast float %9201, -4.000000e+00
  %10409 = select i1 %10407, float -4.000000e+00, float %10408
  %10410 = call float @dx.op.binary.f32(i32 35, float %10409, float 0.000000e+00)  ; FMax(a,b)
  %10411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10412 = extractvalue %dx.types.CBufRet.f32 %10411, 0
  %10413 = fadd fast float %10412, %10410
  %10414 = extractvalue %dx.types.CBufRet.f32 %10411, 2
  %10415 = fmul fast float %10413, %10414
  %10416 = call float @dx.op.unary.f32(i32 23, float %10415)  ; Log(value)
  %10417 = extractvalue %dx.types.CBufRet.f32 %10411, 3
  %10418 = fmul fast float %10417, %10416
  %10419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10420 = extractvalue %dx.types.CBufRet.f32 %10419, 2
  %10421 = fmul fast float %10418, %10420
  %10422 = call float @dx.op.unary.f32(i32 7, float %10421)  ; Saturate(value)
  %10423 = uitofp i32 %10401 to float
  %10424 = uitofp i32 %10404 to float
  %10425 = fadd fast float %10423, 5.000000e-01
  %10426 = fadd fast float %10424, 5.000000e-01
  %10427 = fmul fast float %10420, %10425
  %10428 = fmul fast float %10420, %10426
  %10429 = fadd fast float %10427, 0x3F0FFB4800000000
  %10430 = fadd fast float %10428, 0xBF0FFB4800000000
  %10431 = call float @dx.op.binary.f32(i32 35, float %10422, float %10429)  ; FMax(a,b)
  %10432 = call float @dx.op.binary.f32(i32 36, float %10431, float %10430)  ; FMin(a,b)
  %10433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10434 = extractvalue %dx.types.CBufRet.f32 %10433, 1
  %10435 = extractvalue %dx.types.CBufRet.f32 %10433, 2
  %10436 = extractvalue %dx.types.CBufRet.f32 %10433, 0
  %10437 = select i1 %8939, float %10436, float 0.000000e+00
  %10438 = fmul fast float %10434, %10432
  %10439 = fadd fast float %10437, %10438
  %10440 = fadd fast float %10437, %10435
  %10441 = fsub fast float %10434, %10435
  %10442 = fadd fast float %10441, %10437
  %10443 = call float @dx.op.binary.f32(i32 35, float %10439, float %10440)  ; FMax(a,b)
  %10444 = call float @dx.op.binary.f32(i32 36, float %10443, float %10442)  ; FMin(a,b)
  %10445 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %10376, float %10377, float %10444, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10446 = extractvalue %dx.types.ResRet.f32 %10445, 0
  %10447 = extractvalue %dx.types.ResRet.f32 %10445, 1
  %10448 = extractvalue %dx.types.ResRet.f32 %10445, 2
  %10449 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10450 = extractvalue %dx.types.CBufRet.i32 %10449, 0
  %10451 = extractvalue %dx.types.CBufRet.i32 %10449, 1
  %10452 = uitofp i32 %10450 to float
  %10453 = uitofp i32 %10451 to float
  %10454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10455 = extractvalue %dx.types.CBufRet.f32 %10454, 0
  %10456 = extractvalue %dx.types.CBufRet.f32 %10454, 1
  %10457 = fmul fast float %10452, %10376
  %10458 = fmul fast float %10453, %10377
  %10459 = fadd fast float %10457, -5.000000e-01
  %10460 = fadd fast float %10458, -5.000000e-01
  %10461 = call float @dx.op.unary.f32(i32 22, float %10459)  ; Frc(value)
  %10462 = call float @dx.op.unary.f32(i32 22, float %10460)  ; Frc(value)
  %10463 = fmul fast float %10461, %10461
  %10464 = fmul fast float %10463, %10461
  %10465 = fsub fast float 3.000000e+00, %10461
  %10466 = fmul fast float %10463, %10465
  %10467 = fmul fast float %10461, 3.000000e+00
  %10468 = fmul fast float %10464, 3.000000e+00
  %10469 = fmul fast float %10463, 6.000000e+00
  %10470 = fsub fast float %10468, %10469
  %10471 = fadd fast float %10470, 4.000000e+00
  %10472 = fmul fast float %10471, 0x3FC5555560000000
  %10473 = fmul fast float %10464, -3.000000e+00
  %10474 = fadd fast float %10463, %10461
  %10475 = fmul fast float %10474, 3.000000e+00
  %10476 = fadd fast float %10473, 1.000000e+00
  %10477 = fadd fast float %10476, %10475
  %10478 = fmul fast float %10464, 0x3FC5555560000000
  %10479 = fmul fast float %10462, %10462
  %10480 = fmul fast float %10479, %10462
  %10481 = fsub fast float 3.000000e+00, %10462
  %10482 = fmul fast float %10479, %10481
  %10483 = fmul fast float %10462, 3.000000e+00
  %10484 = fmul fast float %10480, 3.000000e+00
  %10485 = fmul fast float %10479, 6.000000e+00
  %10486 = fsub fast float %10484, %10485
  %10487 = fadd fast float %10486, 4.000000e+00
  %10488 = fmul fast float %10487, 0x3FC5555560000000
  %10489 = fmul fast float %10480, -3.000000e+00
  %10490 = fadd fast float %10479, %10462
  %10491 = fmul fast float %10490, 3.000000e+00
  %10492 = fadd fast float %10489, 1.000000e+00
  %10493 = fadd fast float %10492, %10491
  %10494 = fmul fast float %10480, 0x3FC5555560000000
  %10495 = fadd fast float %10461, 1.000000e+00
  %10496 = fsub fast float 1.000000e+00, %10467
  %10497 = fadd fast float %10496, %10466
  %10498 = fadd fast float %10497, %10471
  %10499 = fmul fast float %10498, 0x3FC5555560000000
  %10500 = fdiv fast float %10472, %10499
  %10501 = fsub fast float %10495, %10500
  %10502 = fsub fast float 1.000000e+00, %10461
  %10503 = fadd fast float %10477, %10464
  %10504 = fmul fast float %10503, 0x3FC5555560000000
  %10505 = fdiv fast float %10478, %10504
  %10506 = fadd fast float %10502, %10505
  %10507 = fadd fast float %10462, 1.000000e+00
  %10508 = fsub fast float 1.000000e+00, %10483
  %10509 = fadd fast float %10508, %10482
  %10510 = fadd fast float %10509, %10487
  %10511 = fmul fast float %10510, 0x3FC5555560000000
  %10512 = fdiv fast float %10488, %10511
  %10513 = fsub fast float %10507, %10512
  %10514 = fsub fast float 1.000000e+00, %10462
  %10515 = fadd fast float %10493, %10480
  %10516 = fmul fast float %10515, 0x3FC5555560000000
  %10517 = fdiv fast float %10494, %10516
  %10518 = fadd fast float %10517, %10514
  %10519 = fmul fast float %10501, %10455
  %10520 = fsub fast float %10376, %10519
  %10521 = fmul fast float %10506, %10455
  %10522 = fadd fast float %10521, %10376
  %10523 = fmul fast float %10518, %10456
  %10524 = fadd fast float %10523, %10377
  %10525 = fmul fast float %10513, %10456
  %10526 = fsub fast float %10377, %10525
  %10527 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10520, float %10526, float %10444, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10528 = extractvalue %dx.types.ResRet.f32 %10527, 0
  %10529 = extractvalue %dx.types.ResRet.f32 %10527, 1
  %10530 = extractvalue %dx.types.ResRet.f32 %10527, 2
  %10531 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10522, float %10526, float %10444, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10532 = extractvalue %dx.types.ResRet.f32 %10531, 0
  %10533 = extractvalue %dx.types.ResRet.f32 %10531, 1
  %10534 = extractvalue %dx.types.ResRet.f32 %10531, 2
  %10535 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10520, float %10524, float %10444, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10536 = extractvalue %dx.types.ResRet.f32 %10535, 0
  %10537 = extractvalue %dx.types.ResRet.f32 %10535, 1
  %10538 = extractvalue %dx.types.ResRet.f32 %10535, 2
  %10539 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10522, float %10524, float %10444, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10540 = extractvalue %dx.types.ResRet.f32 %10539, 0
  %10541 = extractvalue %dx.types.ResRet.f32 %10539, 1
  %10542 = extractvalue %dx.types.ResRet.f32 %10539, 2
  %10543 = fsub fast float %10536, %10528
  %10544 = fsub fast float %10537, %10529
  %10545 = fsub fast float %10538, %10530
  %10546 = fmul fast float %10543, %10516
  %10547 = fmul fast float %10544, %10516
  %10548 = fmul fast float %10545, %10516
  %10549 = fadd fast float %10546, %10528
  %10550 = fadd fast float %10547, %10529
  %10551 = fadd fast float %10548, %10530
  %10552 = fsub fast float %10540, %10532
  %10553 = fsub fast float %10541, %10533
  %10554 = fsub fast float %10542, %10534
  %10555 = fmul fast float %10552, %10516
  %10556 = fmul fast float %10553, %10516
  %10557 = fmul fast float %10554, %10516
  %10558 = fsub fast float %10532, %10549
  %10559 = fadd fast float %10558, %10555
  %10560 = fsub fast float %10533, %10550
  %10561 = fadd fast float %10560, %10556
  %10562 = fsub fast float %10534, %10551
  %10563 = fadd fast float %10562, %10557
  %10564 = fmul fast float %10559, %10504
  %10565 = fmul fast float %10561, %10504
  %10566 = fmul fast float %10563, %10504
  %10567 = fadd fast float %10564, %10549
  %10568 = fadd fast float %10565, %10550
  %10569 = fadd fast float %10566, %10551
  %10570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10571 = extractvalue %dx.types.CBufRet.f32 %10570, 1
  %10572 = fmul fast float %10567, %10571
  %10573 = fmul fast float %10568, %10571
  %10574 = fmul fast float %10569, %10571
  br label %10575

; <label>:10575                                   ; preds = %10406, %10363
  %10576 = phi float [ %10446, %10406 ], [ 1.000000e+00, %10363 ]
  %10577 = phi float [ %10447, %10406 ], [ 1.000000e+00, %10363 ]
  %10578 = phi float [ %10448, %10406 ], [ 1.000000e+00, %10363 ]
  %10579 = phi float [ %10572, %10406 ], [ 0.000000e+00, %10363 ]
  %10580 = phi float [ %10573, %10406 ], [ 0.000000e+00, %10363 ]
  %10581 = phi float [ %10574, %10406 ], [ 0.000000e+00, %10363 ]
  %10582 = fmul fast float %10579, %8925
  %10583 = fmul fast float %10580, %8926
  %10584 = fmul fast float %10581, %8927
  %10585 = fmul fast float %10576, %10370
  %10586 = call float @dx.op.dot3.f32(i32 55, float %10576, float %10577, float %10578, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10587 = call float @dx.op.dot3.f32(i32 55, float %10582, float %10583, float %10584, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10588 = select i1 %289, float %10586, float %10576
  %10589 = select i1 %289, float %10586, float %10577
  %10590 = select i1 %289, float 1.000000e+00, float %10578
  %10591 = select i1 %289, float %10587, float %10582
  %10592 = select i1 %289, float 0.000000e+00, float %10583
  %10593 = select i1 %289, float 0.000000e+00, float %10584
  %10594 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10595 = extractvalue %dx.types.CBufRet.i32 %10594, 3
  %10596 = and i32 %10595, 3
  %10597 = icmp ne i32 %10596, 0
  %10598 = and i32 %10595, 4
  %10599 = icmp ne i32 %10598, 0
  %10600 = and i1 %10597, %10599
  %10601 = and i1 %289, %10600
  br i1 %10601, label %10602, label %10608

; <label>:10602                                   ; preds = %10575
  %10603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10604 = extractvalue %dx.types.CBufRet.f32 %10603, 1
  %10605 = fadd fast float %10585, -1.000000e+00
  %10606 = fmul fast float %10604, %10605
  %10607 = fadd fast float %10606, 1.000000e+00
  br label %10608

; <label>:10608                                   ; preds = %10602, %10575
  %10609 = phi float [ %10607, %10602 ], [ %10585, %10575 ]
  %10610 = fadd fast float %10367, %10364
  %10611 = fmul fast float %10588, %10610
  %10612 = fadd fast float %10611, %10591
  %10613 = fadd fast float %10368, %10365
  %10614 = fmul fast float %10589, %10613
  %10615 = fadd fast float %10614, %10592
  %10616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10617 = extractvalue %dx.types.CBufRet.f32 %10616, 0
  br i1 %289, label %10618, label %10633

; <label>:10618                                   ; preds = %10608
  %10619 = fadd fast float %10612, %10615
  %10620 = fmul fast float %10617, %10619
  %10621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10622 = extractvalue %dx.types.CBufRet.f32 %10621, 3
  %10623 = extractvalue %dx.types.CBufRet.f32 %8909, 1
  %10624 = fsub fast float %8914, %8908
  %10625 = fadd fast float %10624, %8915
  %10626 = fsub fast float %10625, %10623
  %10627 = extractvalue %dx.types.CBufRet.f32 %8909, 2
  %10628 = fmul fast float %10626, %10627
  %10629 = call float @dx.op.unary.f32(i32 7, float %10628)  ; Saturate(value)
  %10630 = fsub fast float %10629, %10622
  %10631 = fmul fast float %10630, %10609
  %10632 = fadd fast float %10631, %10622
  br label %10659

; <label>:10633                                   ; preds = %10608
  %10634 = fadd fast float %10369, %10366
  %10635 = fmul fast float %10590, %10634
  %10636 = fadd fast float %10635, %10593
  %10637 = fmul fast float %10617, %10612
  %10638 = fmul fast float %10617, %10615
  %10639 = fmul fast float %10617, %10636
  %10640 = call float @dx.op.binary.f32(i32 35, float %10638, float %10639)  ; FMax(a,b)
  %10641 = call float @dx.op.binary.f32(i32 35, float %10637, float %10640)  ; FMax(a,b)
  %10642 = call float @dx.op.binary.f32(i32 35, float %8926, float %8927)  ; FMax(a,b)
  %10643 = call float @dx.op.binary.f32(i32 35, float %8925, float %10642)  ; FMax(a,b)
  %10644 = call float @dx.op.binary.f32(i32 35, float %10641, float %10643)  ; FMax(a,b)
  %10645 = fcmp fast ugt float %10644, 0x3F10000000000000
  br i1 %10645, label %10647, label %10646

; <label>:10646                                   ; preds = %10633
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10647

; <label>:10647                                   ; preds = %10646, %10633
  %10648 = add i32 %60, 356
  %10649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %10648, i32 undef)  ; BufferLoad(srv,index,wot)
  %10650 = extractvalue %dx.types.ResRet.i32 %10649, 0
  %10651 = and i32 %10650, 32
  %10652 = icmp eq i32 %10651, 0
  br i1 %10652, label %10659, label %10653

; <label>:10653                                   ; preds = %10647
  %10654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10655 = extractvalue %dx.types.CBufRet.f32 %10654, 0
  %10656 = fmul fast float %10655, 0x3FE99999A0000000
  %10657 = fadd fast float %10655, %10637
  %10658 = fadd fast float %10656, %10639
  br label %10659

; <label>:10659                                   ; preds = %10653, %10647, %10618
  %10660 = phi float [ 1.000000e+00, %10618 ], [ %8926, %10653 ], [ %8926, %10647 ]
  %10661 = phi float [ 1.000000e+00, %10618 ], [ %8927, %10653 ], [ %8927, %10647 ]
  %10662 = phi float [ %10620, %10618 ], [ %10657, %10653 ], [ %10637, %10647 ]
  %10663 = phi float [ %10632, %10618 ], [ %10638, %10653 ], [ %10638, %10647 ]
  %10664 = phi float [ 1.000000e+00, %10618 ], [ %10658, %10653 ], [ %10639, %10647 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10665 = call float @dx.op.binary.f32(i32 36, float %10662, float 3.225500e+04)  ; FMin(a,b)
  %10666 = call float @dx.op.binary.f32(i32 36, float %10663, float 3.225500e+04)  ; FMin(a,b)
  %10667 = call float @dx.op.binary.f32(i32 36, float %10664, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10665)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10666)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10667)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10668 = call float @dx.op.binary.f32(i32 36, float %8925, float 3.225500e+04)  ; FMin(a,b)
  %10669 = call float @dx.op.binary.f32(i32 36, float %10660, float 3.225500e+04)  ; FMin(a,b)
  %10670 = call float @dx.op.binary.f32(i32 36, float %10661, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %10668)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %10669)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %10670)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!73}
!dx.entryPoints = !{!74}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !62, !65}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
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
!25 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!26 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!27 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!28 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!29 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!30 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!31 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!32 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!33 = !{i32 26, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !34}
!34 = !{i32 0, i32 5}
!35 = !{i32 27, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!36 = !{i32 28, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!37 = !{i32 29, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!38 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!39 = !{i32 31, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!40 = !{i32 32, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!41 = !{i32 33, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!42 = !{i32 34, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 1, i32 1, i32 2, i32 0, !7}
!43 = !{i32 35, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!44 = !{i32 36, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!45 = !{i32 37, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!46 = !{i32 38, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !47}
!47 = !{i32 0, i32 14}
!48 = !{i32 39, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!49 = !{i32 40, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!50 = !{i32 41, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!51 = !{i32 42, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!52 = !{i32 43, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!53 = !{i32 44, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!54 = !{i32 45, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!55 = !{i32 46, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!56 = !{i32 47, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!57 = !{i32 48, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!58 = !{i32 49, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!59 = !{i32 50, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !47}
!60 = !{i32 51, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!61 = !{i32 52, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!62 = !{!63, !64}
!63 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!64 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!65 = !{!66, !67, !68, !69, !70, !71, !72}
!66 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!67 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!68 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!69 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!70 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!71 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!72 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!73 = !{[62 x i32] [i32 60, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 119, i32 0, i32 0, i32 0, i32 119, i32 0, i32 0, i32 0]}
!74 = !{void ()* @ps_main, !"ps_main", !75, !4, !102}
!75 = !{!76, !98, null}
!76 = !{!77, !80, !81, !83, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !96, !97}
!77 = !{i32 0, !"SV_Position", i8 9, i8 3, !78, i8 4, i32 1, i8 4, i32 0, i8 0, !79}
!78 = !{i32 0}
!79 = !{i32 3, i32 15}
!80 = !{i32 1, !"COLOR", i8 9, i8 0, !78, i8 2, i32 1, i8 4, i32 1, i8 0, !79}
!81 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !78, i8 2, i32 1, i8 4, i32 2, i8 0, !82}
!82 = !{i32 3, i32 3}
!83 = !{i32 3, !"NORMAL", i8 9, i8 0, !78, i8 2, i32 1, i8 3, i32 3, i8 0, !84}
!84 = !{i32 3, i32 7}
!85 = !{i32 4, !"TANGENT", i8 9, i8 0, !78, i8 2, i32 1, i8 4, i32 4, i8 0, !79}
!86 = !{i32 5, !"SH_RED", i8 9, i8 0, !78, i8 2, i32 1, i8 4, i32 5, i8 0, !79}
!87 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !78, i8 2, i32 1, i8 4, i32 6, i8 0, !79}
!88 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !78, i8 2, i32 1, i8 4, i32 7, i8 0, !79}
!89 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !78, i8 2, i32 1, i8 3, i32 8, i8 0, !84}
!90 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !78, i8 2, i32 1, i8 4, i32 9, i8 0, !79}
!91 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !78, i8 2, i32 1, i8 2, i32 10, i8 0, !82}
!92 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !78, i8 2, i32 1, i8 4, i32 11, i8 0, !79}
!93 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !78, i8 2, i32 1, i8 4, i32 12, i8 0, !84}
!94 = !{i32 13, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !78, i8 1, i32 1, i8 1, i32 13, i8 0, !95}
!95 = !{i32 3, i32 1}
!96 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !78, i8 1, i32 1, i8 4, i32 14, i8 0, !95}
!97 = !{i32 15, !"SV_SampleIndex", i8 5, i8 12, !78, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!98 = !{!99, !100}
!99 = !{i32 0, !"SV_Target", i8 9, i8 16, !78, i8 0, i32 1, i8 4, i32 0, i8 0, !79}
!100 = !{i32 1, !"SV_Target", i8 9, i8 16, !101, i8 0, i32 1, i8 4, i32 1, i8 0, !79}
!101 = !{i32 1}
!102 = !{i32 0, i64 16}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !105}
!105 = !{!"llvm.loop.unroll.disable"}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = !{!112, !112, i64 0}
!112 = !{!"int", !113, i64 0}
!113 = !{!"omnipotent char", !114, i64 0}
!114 = !{!"Simple C/C++ TBAA"}
!115 = !{!116, !118, !120, !122}
!116 = distinct !{!116, !117, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!117 = distinct !{!117, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!118 = distinct !{!118, !119, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!119 = distinct !{!119, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!120 = distinct !{!120, !121, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!121 = distinct !{!121, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!122 = distinct !{!122, !123, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!123 = distinct !{!123, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = !{!126, !126, i64 0}
!126 = !{!"float", !113, i64 0}
!127 = distinct !{!127, !105}
!128 = distinct !{!128, !105}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 1}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 1}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 1}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 1}
!138 = distinct !{!138, !"dx.controlflow.hints", i32 1}
!139 = distinct !{!139, !"dx.controlflow.hints", i32 1}
!140 = !{!141, !143, !145, !146, !148, !149, !150, !152, !153, !154}
!141 = distinct !{!141, !142, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!142 = distinct !{!142, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!143 = distinct !{!143, !144, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!144 = distinct !{!144, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!145 = distinct !{!145, !144, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!146 = distinct !{!146, !147, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!147 = distinct !{!147, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!148 = distinct !{!148, !147, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!149 = distinct !{!149, !147, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!150 = distinct !{!150, !151, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!151 = distinct !{!151, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!152 = distinct !{!152, !151, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!153 = distinct !{!153, !151, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!154 = distinct !{!154, !155, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!155 = distinct !{!155, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!156 = !{!157}
!157 = distinct !{!157, !158, !"\01?sort@@YAXAIAM00@Z: %c"}
!158 = distinct !{!158, !"\01?sort@@YAXAIAM00@Z"}
!159 = !{!160, !161, !141, !143, !145, !146, !148, !149, !150, !152, !153, !154}
!160 = distinct !{!160, !158, !"\01?sort@@YAXAIAM00@Z: %a"}
!161 = distinct !{!161, !158, !"\01?sort@@YAXAIAM00@Z: %b"}
!162 = !{!161}
!163 = !{!160, !157, !141, !143, !145, !146, !148, !149, !150, !152, !153, !154}
!164 = !{!160}
!165 = !{!161, !157, !141, !143, !145, !146, !148, !149, !150, !152, !153, !154}
!166 = !{!167}
!167 = distinct !{!167, !168, !"\01?sort@@YAXAIAM00@Z: %c"}
!168 = distinct !{!168, !"\01?sort@@YAXAIAM00@Z"}
!169 = !{!170, !171, !141, !143, !145, !146, !148, !149, !150, !152, !153, !154}
!170 = distinct !{!170, !168, !"\01?sort@@YAXAIAM00@Z: %a"}
!171 = distinct !{!171, !168, !"\01?sort@@YAXAIAM00@Z: %b"}
!172 = !{!171}
!173 = !{!170, !167, !141, !143, !145, !146, !148, !149, !150, !152, !153, !154}
!174 = !{!170}
!175 = !{!171, !167, !141, !143, !145, !146, !148, !149, !150, !152, !153, !154}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 1}
!177 = distinct !{!177, !"dx.controlflow.hints", i32 2}
!178 = distinct !{!178, !"dx.controlflow.hints", i32 1}
!179 = distinct !{!179, !"dx.controlflow.hints", i32 1}
!180 = distinct !{!180, !"dx.controlflow.hints", i32 1}
!181 = distinct !{!181, !"dx.controlflow.hints", i32 1}
!182 = distinct !{!182, !"dx.controlflow.hints", i32 1}
!183 = distinct !{!183, !"dx.controlflow.hints", i32 1}
!184 = distinct !{!184, !"dx.controlflow.hints", i32 1}
!185 = distinct !{!185, !"dx.controlflow.hints", i32 1}
!186 = distinct !{!186, !"dx.controlflow.hints", i32 1}

