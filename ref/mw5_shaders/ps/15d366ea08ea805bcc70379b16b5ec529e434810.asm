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
; shader hash: a4b6f4f07d1367cb9441b9b62e103ad6
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
;                                   texture     f32     2darray      T2      t0,space6unbounded
;                                   texture    byte         r/o      T3      t9,space1     1
;                                   texture    byte         r/o      T4     t37,space1     1
;                                   texture    byte         r/o      T5     t22,space1     1
;                                   texture     f32          3d      T6     t52,space2     1
;                                   texture     f32          2d      T7     t33,space2     1
;                                   texture    byte         r/o      T8      t3,space1     1
;                                   texture    byte         r/o      T9      t4,space1     1
;                                   texture    byte         r/o     T10      t5,space1     1
;                                   texture    byte         r/o     T11      t6,space1     1
;                                   texture     f32          2d     T12     t69,space2     1
;                                   texture    byte         r/o     T13     t18,space1     1
;                                   texture    byte         r/o     T14     t19,space1     1
;                                   texture    byte         r/o     T15     t20,space1     1
;                                   texture    byte         r/o     T16     t21,space1     1
;                                   texture     f32          2d     T17     t37,space2     1
;                                   texture     f32          2d     T18             t0     1
;                                   texture     f32          2d     T19     t58,space2     1
;                                   texture     f32          2d     T20     t59,space2     1
;                                   texture     f32          2d     T21     t60,space2     1
;                                   texture    byte         r/o     T22     t45,space1     1
;                                   texture    byte         r/o     T23     t46,space1     1
;                                   texture    byte         r/o     T24     t47,space1     1
;                                   texture    byte         r/o     T25     t48,space1     1
;                                   texture     f32          2d     T26     t57,space2     1
;                                   texture    byte         r/o     T27     t69,space1     1
;                                   texture     u32          2d     T28     t56,space2     1
;                                   texture     f32     2darray     T29     t35,space2     1
;                                   texture     f32          2d     T30     t34,space2     1
;                                   texture     f32          3d     T31     t31,space2     1
;                                   texture    byte         r/o     T32     t10,space1     1
;                                   texture    byte         r/o     T33      t1,space1     1
;                                   texture     f32          1d     T34     t32,space2     1
;                                   texture     f32     2darray     T35      t8,space2     1
;                                   texture     f32          2d     T36      t1,space2     1
;                                   texture     f32          2d     T37      t2,space2     1
;                                   texture     f32          2d     T38      t3,space2     1
;                                   texture     f32          2d     T39      t4,space2     1
;                                   textureunorm_f32     2darray     T40     t80,space2     1
;                                   texture    byte         r/o     T41     t67,space1     1
;                                   texture     f32          2d     T42      t7,space2     1
;                                   texture     f32          2d     T43      t6,space2     1
;                                   texture     f32          2d     T44      t5,space2     1
;                                   texture     f32          2d     T45     t38,space2     1
;                                   texture    byte         r/o     T46     t12,space1     1
;                                   texture    byte         r/o     T47     t13,space1     1
;                                   texture     f32          1d     T48     t30,space2     1
;                                   texture     f32          3d     T49     t44,space2     1
;                                   texture     f32          3d     T50     t45,space2     1
;                                   texture     f32     2darray     T51     t47,space2     1
;                                   textureunorm_f32     2darray     T52     t85,space2     1
;                                   texture     f32          2d     T53     t83,space2     1
;                                   texture     f32          2d     T54     t86,space2     1
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
;   output 4 depends on inputs: { 4, 8, 9, 12, 13, 14, 36, 37, 44, 45, 46, 48, 52 }
;   output 5 depends on inputs: { 0, 1, 4, 8, 9, 12, 13, 14, 36, 37, 44, 45, 46, 48, 52 }
;   output 6 depends on inputs: { 0, 1, 4, 8, 9, 12, 13, 14, 36, 37, 44, 45, 46, 48, 52 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 54, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 53, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 52, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 51, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 50, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 49, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %59 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %60 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %61 = alloca [4 x i32], align 4
  %62 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %100 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %101 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %102 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %103 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %104 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %105 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %106 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %107 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %108 = alloca [12 x float], align 4
  %109 = alloca [12 x float], align 4
  %110 = alloca [4 x float], align 4
  %111 = alloca [4 x float], align 4
  %112 = alloca [4 x float], align 4
  %113 = alloca [4 x float], align 4
  %114 = alloca [3 x float], align 4
  %115 = alloca [3 x float], align 4
  %116 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %117 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = extractvalue %dx.types.CBufRet.f32 %118, 0
  %120 = fmul fast float %119, %104
  %121 = fmul fast float %119, %105
  %122 = call float @dx.op.dot3.f32(i32 55, float %95, float %96, float %97, float %95, float %96, float %97)  ; Dot3(ax,ay,az,bx,by,bz)
  %123 = bitcast float %122 to i32
  %124 = ashr i32 %123, 1
  %125 = sub nsw i32 1597250115, %124
  %126 = bitcast i32 %125 to float
  %127 = fmul fast float %126, %95
  %128 = fmul fast float %126, %96
  %129 = fmul fast float %126, %97
  %130 = fmul fast float %96, %93
  %131 = fmul fast float %97, %92
  %132 = fsub fast float %130, %131
  %133 = fmul fast float %97, %91
  %134 = fmul fast float %95, %93
  %135 = fsub fast float %133, %134
  %136 = fmul fast float %95, %92
  %137 = fmul fast float %96, %91
  %138 = fsub fast float %136, %137
  %139 = fmul fast float %132, %94
  %140 = fmul fast float %135, %94
  %141 = fmul fast float %138, %94
  %142 = call float @dx.op.dot3.f32(i32 55, float %84, float %85, float %86, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %143 = bitcast float %142 to i32
  %144 = ashr i32 %143, 1
  %145 = sub nsw i32 1597250115, %144
  %146 = bitcast i32 %145 to float
  %147 = fmul fast float %146, %84
  %148 = fmul fast float %146, %85
  %149 = fmul fast float %146, %86
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 0
  %152 = fcmp fast une float %151, 0.000000e+00
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 2
  %155 = extractvalue %dx.types.CBufRet.f32 %153, 3
  %156 = fmul fast float %120, 2.000000e+00
  %157 = fmul fast float %156, %154
  %158 = fmul fast float %121, 2.000000e+00
  %159 = fmul fast float %158, %155
  %160 = fsub fast float 1.000000e+00, %157
  %161 = fsub fast float 1.000000e+00, %159
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 0
  %164 = extractvalue %dx.types.CBufRet.f32 %162, 1
  %165 = extractvalue %dx.types.CBufRet.f32 %162, 2
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 0
  %168 = extractvalue %dx.types.CBufRet.f32 %166, 1
  %169 = extractvalue %dx.types.CBufRet.f32 %166, 2
  %170 = select i1 %152, float %163, float %167
  %171 = select i1 %152, float %164, float %168
  %172 = select i1 %152, float %165, float %169
  %173 = fmul fast float %170, %160
  %174 = fmul fast float %171, %160
  %175 = fmul fast float %172, %160
  %176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %177 = extractvalue %dx.types.CBufRet.f32 %176, 0
  %178 = extractvalue %dx.types.CBufRet.f32 %176, 1
  %179 = extractvalue %dx.types.CBufRet.f32 %176, 2
  %180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = extractvalue %dx.types.CBufRet.f32 %180, 0
  %182 = extractvalue %dx.types.CBufRet.f32 %180, 1
  %183 = extractvalue %dx.types.CBufRet.f32 %180, 2
  %184 = select i1 %152, float %177, float %181
  %185 = select i1 %152, float %178, float %182
  %186 = select i1 %152, float %179, float %183
  %187 = fmul fast float %184, %161
  %188 = fmul fast float %185, %161
  %189 = fmul fast float %186, %161
  %190 = fadd fast float %187, %173
  %191 = fadd fast float %188, %174
  %192 = fadd fast float %189, %175
  %193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %194 = extractvalue %dx.types.CBufRet.f32 %193, 0
  %195 = extractvalue %dx.types.CBufRet.f32 %193, 1
  %196 = extractvalue %dx.types.CBufRet.f32 %193, 2
  %197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %198 = extractvalue %dx.types.CBufRet.f32 %197, 0
  %199 = extractvalue %dx.types.CBufRet.f32 %197, 1
  %200 = extractvalue %dx.types.CBufRet.f32 %197, 2
  %201 = select i1 %152, float %194, float %198
  %202 = select i1 %152, float %195, float %199
  %203 = select i1 %152, float %196, float %200
  %204 = fadd fast float %190, %201
  %205 = fadd fast float %191, %202
  %206 = fadd fast float %192, %203
  %207 = fmul fast float %204, %107
  %208 = fmul fast float %205, %107
  %209 = fmul fast float %206, %107
  %210 = shl i32 %63, 5
  %211 = add i32 %210, 4194304
  %212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %211, i32 undef)  ; BufferLoad(srv,index,wot)
  %213 = extractvalue %dx.types.ResRet.i32 %212, 0
  %214 = extractvalue %dx.types.ResRet.i32 %212, 1
  %215 = extractvalue %dx.types.ResRet.i32 %212, 2
  %216 = extractvalue %dx.types.ResRet.i32 %212, 3
  %217 = add i32 %210, 4194320
  %218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %217, i32 undef)  ; BufferLoad(srv,index,wot)
  %219 = extractvalue %dx.types.ResRet.i32 %218, 0
  %220 = extractvalue %dx.types.ResRet.i32 %218, 1
  %221 = bitcast i32 %219 to float
  %222 = bitcast i32 %220 to float
  %223 = fmul fast float %120, 5.000000e-01
  %224 = fmul fast float %121, 5.000000e-01
  %225 = fptosi float %223 to i32
  %226 = fptosi float %224 to i32
  %227 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %27, i32 0, i32 %225, i32 %226, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = lshr i32 %228, 18
  %230 = uitofp i32 %229 to float
  %231 = fmul fast float %230, 0x3F4C00EBA0000000
  %232 = call float @dx.op.unary.f32(i32 21, float %231)  ; Exp(value)
  %233 = fadd fast float %232, -1.000000e+00
  %234 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %27, i32 0)  ; GetDimensions(handle,mipLevel)
  %235 = extractvalue %dx.types.Dimensions %234, 0
  %236 = sitofp i32 %235 to float
  %237 = extractvalue %dx.types.Dimensions %234, 1
  %238 = sitofp i32 %237 to float
  %239 = fcmp fast oge float %223, %236
  %240 = fcmp fast oge float %224, %238
  %241 = or i1 %239, %240
  %242 = select i1 %241, float 0x4197782600000000, float %233
  %243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %244 = extractvalue %dx.types.CBufRet.f32 %243, 2
  %245 = extractvalue %dx.types.CBufRet.f32 %243, 3
  %246 = fmul fast float %244, %120
  %247 = fmul fast float %245, %121
  %248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.i32 %248, 0
  %250 = and i32 %249, 114688
  %251 = icmp ne i32 %250, 0
  %252 = select i1 %251, float %246, float 0.000000e+00
  %253 = select i1 %251, float %247, float 0.000000e+00
  %254 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %57, float %252, float %253, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %255 = extractvalue %dx.types.ResRet.f32 %254, 0
  %256 = fmul fast float %255, 2.550000e+02
  %257 = fptoui float %256 to i32
  %258 = select i1 %251, i32 %257, i32 0
  %259 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %260 = extractvalue %dx.types.CBufRet.i32 %259, 3
  %261 = and i32 %260, 3
  %262 = icmp ne i32 %261, 0
  %263 = and i32 %260, 4
  %264 = icmp ne i32 %263, 0
  %265 = and i1 %262, %264
  br i1 %265, label %266, label %275

; <label>:266                                     ; preds = %0
  %267 = fmul fast float %155, %121
  %268 = fmul fast float %154, %120
  %269 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %56, float %268, float %267, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %270 = extractvalue %dx.types.ResRet.f32 %269, 0
  %271 = fsub fast float 1.000000e+00, %270
  %272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %273 = extractvalue %dx.types.CBufRet.f32 %272, 0
  %274 = fcmp fast olt float %271, %273
  br label %278

; <label>:275                                     ; preds = %0
  %276 = icmp eq i32 %263, 0
  %277 = and i1 %262, %276
  br label %278

; <label>:278                                     ; preds = %275, %266
  %279 = phi i1 [ %274, %266 ], [ %277, %275 ]
  %280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %281 = extractvalue %dx.types.CBufRet.f32 %280, 2
  %282 = fmul fast float %281, 0x3FE3C6EF40000000
  %283 = frem fast float %120, 2.560000e+02
  %284 = frem fast float %121, 2.560000e+02
  %285 = fptoui float %283 to i32
  %286 = fptoui float %284 to i32
  %287 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %285, i32 %286, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %288 = extractvalue %dx.types.ResRet.f32 %287, 0
  %289 = fadd fast float %288, %282
  %290 = call float @dx.op.unary.f32(i32 22, float %289)  ; Frc(value)
  %291 = add i32 %62, 156
  %292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %303 = add i32 %62, 216
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %317 = add i32 %62, 36
  %318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 0
  %320 = and i32 %319, 65535
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = lshr i32 %319, 16
  %323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %322)  ; LegacyF16ToF32(value)
  %324 = add i32 %62, 288
  %325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.i32 %325, 0
  %327 = and i32 %326, 65535
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = lshr i32 %326, 16
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = fmul fast float %328, 0x3F50624DE0000000
  %332 = fmul fast float %330, 0x3F50624DE0000000
  %333 = mul i32 %64, 100
  %334 = add i32 %333, 28
  %335 = add i32 %333, 40
  %336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %337 = extractvalue %dx.types.ResRet.i32 %336, 0
  %338 = add i32 %62, 172
  %339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.i32 %339, 0
  %341 = shl i32 %340, 4
  %342 = and i32 %341, 32752
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = lshr i32 %340, 7
  %345 = and i32 %344, 32752
  %346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %345)  ; LegacyF16ToF32(value)
  %347 = lshr i32 %340, 22
  %348 = shl nuw nsw i32 %347, 5
  %349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %348)  ; LegacyF16ToF32(value)
  %350 = add i32 %62, 232
  %351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %350, i32 undef)  ; BufferLoad(srv,index,wot)
  %352 = extractvalue %dx.types.ResRet.i32 %351, 0
  %353 = and i32 %352, 255
  %354 = uitofp i32 %353 to float
  %355 = fmul fast float %354, 0x3F70101020000000
  %356 = lshr i32 %352, 8
  %357 = and i32 %356, 255
  %358 = uitofp i32 %357 to float
  %359 = fmul fast float %358, 0x3F70101020000000
  %360 = lshr i32 %352, 16
  %361 = and i32 %360, 255
  %362 = uitofp i32 %361 to float
  %363 = fmul fast float %362, 0x3F70101020000000
  %364 = add i32 %62, 52
  %365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %364, i32 undef)  ; BufferLoad(srv,index,wot)
  %366 = extractvalue %dx.types.ResRet.i32 %365, 0
  %367 = and i32 %366, 65535
  %368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %367)  ; LegacyF16ToF32(value)
  %369 = lshr i32 %366, 16
  %370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %369)  ; LegacyF16ToF32(value)
  %371 = add i32 %62, 304
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = and i32 %373, 65535
  %375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %374)  ; LegacyF16ToF32(value)
  %376 = lshr i32 %373, 16
  %377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %376)  ; LegacyF16ToF32(value)
  %378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.i32 %378, 0
  %380 = shl i32 %379, 4
  %381 = and i32 %380, 32752
  %382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %381)  ; LegacyF16ToF32(value)
  %383 = lshr i32 %379, 7
  %384 = and i32 %383, 32752
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = lshr i32 %379, 22
  %387 = shl nuw nsw i32 %386, 5
  %388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %387)  ; LegacyF16ToF32(value)
  %389 = and i32 %337, 1
  %390 = icmp ne i32 %389, 0
  %391 = select i1 %390, float %382, float %343
  %392 = select i1 %390, float %385, float %346
  %393 = select i1 %390, float %388, float %349
  %394 = add i32 %333, 44
  %395 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %394, i32 undef)  ; BufferLoad(srv,index,wot)
  %396 = extractvalue %dx.types.ResRet.f32 %395, 0
  %397 = fmul fast float %396, %391
  %398 = fmul fast float %396, %392
  %399 = fmul fast float %396, %393
  %400 = add i32 %333, 48
  %401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.i32 %401, 0
  %403 = shl i32 %402, 4
  %404 = and i32 %403, 32752
  %405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %404)  ; LegacyF16ToF32(value)
  %406 = lshr i32 %402, 7
  %407 = and i32 %406, 32752
  %408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %407)  ; LegacyF16ToF32(value)
  %409 = lshr i32 %402, 22
  %410 = shl nuw nsw i32 %409, 5
  %411 = call float @dx.op.legacyF16ToF32(i32 131, i32 %410)  ; LegacyF16ToF32(value)
  %412 = and i32 %337, 8
  %413 = icmp ne i32 %412, 0
  %414 = select i1 %413, float %405, float %355
  %415 = select i1 %413, float %408, float %359
  %416 = select i1 %413, float %411, float %363
  %417 = add i32 %333, 52
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = and i32 %419, 65535
  %421 = call float @dx.op.legacyF16ToF32(i32 131, i32 %420)  ; LegacyF16ToF32(value)
  %422 = lshr i32 %419, 16
  %423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %422)  ; LegacyF16ToF32(value)
  %424 = and i32 %337, 2
  %425 = icmp ne i32 %424, 0
  %426 = select i1 %425, float %421, float %368
  %427 = select i1 %425, float %423, float %370
  %428 = add i32 %333, 56
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = and i32 %430, 65535
  %432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %431)  ; LegacyF16ToF32(value)
  %433 = lshr i32 %430, 16
  %434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %433)  ; LegacyF16ToF32(value)
  %435 = and i32 %337, 4
  %436 = icmp ne i32 %435, 0
  %437 = select i1 %436, float %432, float %375
  %438 = fmul float %437, 0x3F50624DE0000000
  %439 = select i1 %436, float %434, float %377
  %440 = fmul float %439, 0x3F50624DE0000000
  %441 = add i32 %333, 60
  %442 = add i32 %333, 32
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 0
  %445 = add i32 %62, 188
  %446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.i32 %446, 0
  %448 = shl i32 %447, 4
  %449 = and i32 %448, 32752
  %450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %449)  ; LegacyF16ToF32(value)
  %451 = lshr i32 %447, 7
  %452 = and i32 %451, 32752
  %453 = call float @dx.op.legacyF16ToF32(i32 131, i32 %452)  ; LegacyF16ToF32(value)
  %454 = lshr i32 %447, 22
  %455 = shl nuw nsw i32 %454, 5
  %456 = call float @dx.op.legacyF16ToF32(i32 131, i32 %455)  ; LegacyF16ToF32(value)
  %457 = add i32 %62, 248
  %458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.i32 %458, 0
  %460 = and i32 %459, 255
  %461 = uitofp i32 %460 to float
  %462 = fmul fast float %461, 0x3F70101020000000
  %463 = lshr i32 %459, 8
  %464 = and i32 %463, 255
  %465 = uitofp i32 %464 to float
  %466 = fmul fast float %465, 0x3F70101020000000
  %467 = lshr i32 %459, 16
  %468 = and i32 %467, 255
  %469 = uitofp i32 %468 to float
  %470 = fmul fast float %469, 0x3F70101020000000
  %471 = add i32 %62, 68
  %472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.i32 %472, 0
  %474 = and i32 %473, 65535
  %475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %474)  ; LegacyF16ToF32(value)
  %476 = lshr i32 %473, 16
  %477 = call float @dx.op.legacyF16ToF32(i32 131, i32 %476)  ; LegacyF16ToF32(value)
  %478 = add i32 %62, 320
  %479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.i32 %479, 0
  %481 = and i32 %480, 65535
  %482 = call float @dx.op.legacyF16ToF32(i32 131, i32 %481)  ; LegacyF16ToF32(value)
  %483 = lshr i32 %480, 16
  %484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %483)  ; LegacyF16ToF32(value)
  %485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.i32 %485, 0
  %487 = shl i32 %486, 4
  %488 = and i32 %487, 32752
  %489 = call float @dx.op.legacyF16ToF32(i32 131, i32 %488)  ; LegacyF16ToF32(value)
  %490 = lshr i32 %486, 7
  %491 = and i32 %490, 32752
  %492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %491)  ; LegacyF16ToF32(value)
  %493 = lshr i32 %486, 22
  %494 = shl nuw nsw i32 %493, 5
  %495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %494)  ; LegacyF16ToF32(value)
  %496 = and i32 %444, 1
  %497 = icmp ne i32 %496, 0
  %498 = select i1 %497, float %489, float %450
  %499 = select i1 %497, float %492, float %453
  %500 = select i1 %497, float %495, float %456
  %501 = add i32 %333, 64
  %502 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %501, i32 undef)  ; BufferLoad(srv,index,wot)
  %503 = extractvalue %dx.types.ResRet.f32 %502, 0
  %504 = fmul fast float %503, %498
  %505 = fmul fast float %503, %499
  %506 = fmul fast float %503, %500
  %507 = add i32 %333, 68
  %508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %509 = extractvalue %dx.types.ResRet.i32 %508, 0
  %510 = shl i32 %509, 4
  %511 = and i32 %510, 32752
  %512 = call float @dx.op.legacyF16ToF32(i32 131, i32 %511)  ; LegacyF16ToF32(value)
  %513 = lshr i32 %509, 7
  %514 = and i32 %513, 32752
  %515 = call float @dx.op.legacyF16ToF32(i32 131, i32 %514)  ; LegacyF16ToF32(value)
  %516 = lshr i32 %509, 22
  %517 = shl nuw nsw i32 %516, 5
  %518 = call float @dx.op.legacyF16ToF32(i32 131, i32 %517)  ; LegacyF16ToF32(value)
  %519 = and i32 %444, 8
  %520 = icmp ne i32 %519, 0
  %521 = select i1 %520, float %512, float %462
  %522 = select i1 %520, float %515, float %466
  %523 = select i1 %520, float %518, float %470
  %524 = add i32 %333, 72
  %525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %524, i32 undef)  ; BufferLoad(srv,index,wot)
  %526 = extractvalue %dx.types.ResRet.i32 %525, 0
  %527 = and i32 %526, 65535
  %528 = call float @dx.op.legacyF16ToF32(i32 131, i32 %527)  ; LegacyF16ToF32(value)
  %529 = lshr i32 %526, 16
  %530 = call float @dx.op.legacyF16ToF32(i32 131, i32 %529)  ; LegacyF16ToF32(value)
  %531 = and i32 %444, 2
  %532 = icmp ne i32 %531, 0
  %533 = select i1 %532, float %528, float %475
  %534 = select i1 %532, float %530, float %477
  %535 = add i32 %333, 76
  %536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.i32 %536, 0
  %538 = and i32 %537, 65535
  %539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %538)  ; LegacyF16ToF32(value)
  %540 = lshr i32 %537, 16
  %541 = call float @dx.op.legacyF16ToF32(i32 131, i32 %540)  ; LegacyF16ToF32(value)
  %542 = and i32 %444, 4
  %543 = icmp ne i32 %542, 0
  %544 = select i1 %543, float %539, float %482
  %545 = fmul float %544, 0x3F50624DE0000000
  %546 = select i1 %543, float %541, float %484
  %547 = fmul float %546, 0x3F50624DE0000000
  %548 = add i32 %333, 80
  %549 = add i32 %333, 36
  %550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %549, i32 undef)  ; BufferLoad(srv,index,wot)
  %551 = extractvalue %dx.types.ResRet.i32 %550, 0
  %552 = add i32 %62, 204
  %553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %552, i32 undef)  ; BufferLoad(srv,index,wot)
  %554 = extractvalue %dx.types.ResRet.i32 %553, 0
  %555 = shl i32 %554, 4
  %556 = and i32 %555, 32752
  %557 = call float @dx.op.legacyF16ToF32(i32 131, i32 %556)  ; LegacyF16ToF32(value)
  %558 = lshr i32 %554, 7
  %559 = and i32 %558, 32752
  %560 = call float @dx.op.legacyF16ToF32(i32 131, i32 %559)  ; LegacyF16ToF32(value)
  %561 = lshr i32 %554, 22
  %562 = shl nuw nsw i32 %561, 5
  %563 = call float @dx.op.legacyF16ToF32(i32 131, i32 %562)  ; LegacyF16ToF32(value)
  %564 = add i32 %62, 264
  %565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %564, i32 undef)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.i32 %565, 0
  %567 = and i32 %566, 255
  %568 = uitofp i32 %567 to float
  %569 = fmul fast float %568, 0x3F70101020000000
  %570 = lshr i32 %566, 8
  %571 = and i32 %570, 255
  %572 = uitofp i32 %571 to float
  %573 = fmul fast float %572, 0x3F70101020000000
  %574 = lshr i32 %566, 16
  %575 = and i32 %574, 255
  %576 = uitofp i32 %575 to float
  %577 = fmul fast float %576, 0x3F70101020000000
  %578 = add i32 %62, 84
  %579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %578, i32 undef)  ; BufferLoad(srv,index,wot)
  %580 = extractvalue %dx.types.ResRet.i32 %579, 0
  %581 = and i32 %580, 65535
  %582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %581)  ; LegacyF16ToF32(value)
  %583 = lshr i32 %580, 16
  %584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %583)  ; LegacyF16ToF32(value)
  %585 = add i32 %62, 336
  %586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %585, i32 undef)  ; BufferLoad(srv,index,wot)
  %587 = extractvalue %dx.types.ResRet.i32 %586, 0
  %588 = and i32 %587, 65535
  %589 = call float @dx.op.legacyF16ToF32(i32 131, i32 %588)  ; LegacyF16ToF32(value)
  %590 = lshr i32 %587, 16
  %591 = call float @dx.op.legacyF16ToF32(i32 131, i32 %590)  ; LegacyF16ToF32(value)
  %592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %593 = extractvalue %dx.types.ResRet.i32 %592, 0
  %594 = shl i32 %593, 4
  %595 = and i32 %594, 32752
  %596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %595)  ; LegacyF16ToF32(value)
  %597 = lshr i32 %593, 7
  %598 = and i32 %597, 32752
  %599 = call float @dx.op.legacyF16ToF32(i32 131, i32 %598)  ; LegacyF16ToF32(value)
  %600 = lshr i32 %593, 22
  %601 = shl nuw nsw i32 %600, 5
  %602 = call float @dx.op.legacyF16ToF32(i32 131, i32 %601)  ; LegacyF16ToF32(value)
  %603 = and i32 %551, 1
  %604 = icmp ne i32 %603, 0
  %605 = select i1 %604, float %596, float %557
  %606 = select i1 %604, float %599, float %560
  %607 = select i1 %604, float %602, float %563
  %608 = add i32 %333, 84
  %609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %608, i32 undef)  ; BufferLoad(srv,index,wot)
  %610 = extractvalue %dx.types.ResRet.f32 %609, 0
  %611 = fmul fast float %610, %605
  %612 = fmul fast float %610, %606
  %613 = fmul fast float %610, %607
  %614 = add i32 %333, 88
  %615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %614, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.i32 %615, 0
  %617 = shl i32 %616, 4
  %618 = and i32 %617, 32752
  %619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %618)  ; LegacyF16ToF32(value)
  %620 = lshr i32 %616, 7
  %621 = and i32 %620, 32752
  %622 = call float @dx.op.legacyF16ToF32(i32 131, i32 %621)  ; LegacyF16ToF32(value)
  %623 = lshr i32 %616, 22
  %624 = shl nuw nsw i32 %623, 5
  %625 = call float @dx.op.legacyF16ToF32(i32 131, i32 %624)  ; LegacyF16ToF32(value)
  %626 = and i32 %551, 8
  %627 = icmp ne i32 %626, 0
  %628 = select i1 %627, float %619, float %569
  %629 = select i1 %627, float %622, float %573
  %630 = select i1 %627, float %625, float %577
  %631 = add i32 %333, 92
  %632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %631, i32 undef)  ; BufferLoad(srv,index,wot)
  %633 = extractvalue %dx.types.ResRet.i32 %632, 0
  %634 = and i32 %633, 65535
  %635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %634)  ; LegacyF16ToF32(value)
  %636 = lshr i32 %633, 16
  %637 = call float @dx.op.legacyF16ToF32(i32 131, i32 %636)  ; LegacyF16ToF32(value)
  %638 = and i32 %551, 2
  %639 = icmp ne i32 %638, 0
  %640 = select i1 %639, float %635, float %582
  %641 = select i1 %639, float %637, float %584
  %642 = add i32 %333, 96
  %643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %642, i32 undef)  ; BufferLoad(srv,index,wot)
  %644 = extractvalue %dx.types.ResRet.i32 %643, 0
  %645 = and i32 %644, 65535
  %646 = call float @dx.op.legacyF16ToF32(i32 131, i32 %645)  ; LegacyF16ToF32(value)
  %647 = lshr i32 %644, 16
  %648 = call float @dx.op.legacyF16ToF32(i32 131, i32 %647)  ; LegacyF16ToF32(value)
  %649 = and i32 %551, 4
  %650 = icmp ne i32 %649, 0
  %651 = select i1 %650, float %646, float %589
  %652 = fmul float %651, 0x3F50624DE0000000
  %653 = select i1 %650, float %648, float %591
  %654 = fmul float %653, 0x3F50624DE0000000
  %655 = add i32 %62, 348
  %656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %655, i32 undef)  ; BufferLoad(srv,index,wot)
  %657 = extractvalue %dx.types.ResRet.i32 %656, 0
  %658 = and i32 %657, 32
  %659 = icmp eq i32 %658, 0
  %660 = and i32 %657, 64
  %661 = icmp eq i32 %660, 0
  %662 = and i32 %657, 128
  %663 = icmp eq i32 %662, 0
  %664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %655, i32 undef)  ; BufferLoad(srv,index,wot)
  %665 = extractvalue %dx.types.ResRet.i32 %664, 0
  %666 = and i32 %665, 2
  %667 = icmp eq i32 %666, 0
  br i1 %667, label %683, label %668

; <label>:668                                     ; preds = %278
  %669 = add i32 %62, 524
  %670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %669, i32 undef)  ; BufferLoad(srv,index,wot)
  %671 = extractvalue %dx.types.ResRet.i32 %670, 0
  %672 = add i32 %671, 0
  %673 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %672, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %674 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %673, %dx.types.Handle %117, float %98, float %99, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %675 = extractvalue %dx.types.ResRet.f32 %674, 0
  %676 = extractvalue %dx.types.ResRet.f32 %674, 1
  %677 = extractvalue %dx.types.ResRet.f32 %674, 2
  %678 = extractvalue %dx.types.ResRet.f32 %674, 3
  %679 = fmul fast float %678, %100
  %680 = fmul fast float %675, %101
  %681 = fmul fast float %676, %102
  %682 = fmul fast float %677, %103
  br label %683

; <label>:683                                     ; preds = %668, %278
  %684 = phi float [ %103, %278 ], [ %682, %668 ]
  %685 = phi float [ %102, %278 ], [ %681, %668 ]
  %686 = phi float [ %101, %278 ], [ %680, %668 ]
  %687 = phi float [ %100, %278 ], [ %679, %668 ]
  %688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %655, i32 undef)  ; BufferLoad(srv,index,wot)
  %689 = extractvalue %dx.types.ResRet.i32 %688, 0
  %690 = and i32 %689, 2
  %691 = icmp eq i32 %690, 0
  br i1 %691, label %711, label %692

; <label>:692                                     ; preds = %683
  %693 = add i32 %62, 44
  %694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %695 = extractvalue %dx.types.ResRet.i32 %694, 0
  %696 = and i32 %695, 1
  %697 = icmp ne i32 %696, 0
  %698 = select i1 %697, float %686, float 1.000000e+00
  %699 = add i32 %62, 60
  %700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %699, i32 undef)  ; BufferLoad(srv,index,wot)
  %701 = extractvalue %dx.types.ResRet.i32 %700, 0
  %702 = and i32 %701, 1
  %703 = icmp ne i32 %702, 0
  %704 = select i1 %703, float %685, float 1.000000e+00
  %705 = add i32 %62, 76
  %706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %705, i32 undef)  ; BufferLoad(srv,index,wot)
  %707 = extractvalue %dx.types.ResRet.i32 %706, 0
  %708 = and i32 %707, 1
  %709 = icmp ne i32 %708, 0
  %710 = select i1 %709, float %684, float 1.000000e+00
  br label %711

; <label>:711                                     ; preds = %692, %683
  %712 = phi float [ %684, %683 ], [ %710, %692 ]
  %713 = phi float [ %685, %683 ], [ %704, %692 ]
  %714 = phi float [ %686, %683 ], [ %698, %692 ]
  %715 = lshr i32 %689, 20
  %716 = and i32 %715, 3
  %717 = add nuw nsw i32 %716, 1
  %718 = add i32 %62, 24
  %719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %718, i32 undef)  ; BufferLoad(srv,index,wot)
  %720 = extractvalue %dx.types.ResRet.i32 %719, 0
  %721 = add i32 %62, 28
  %722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %721, i32 undef)  ; BufferLoad(srv,index,wot)
  %723 = extractvalue %dx.types.ResRet.i32 %722, 0
  %724 = or i32 %723, %720
  %725 = icmp eq i32 %724, 0
  br i1 %725, label %1260, label %726

; <label>:726                                     ; preds = %711
  %727 = and i32 %720, 262144
  %728 = icmp ne i32 %727, 0
  %729 = select i1 %728, float %70, float 1.000000e+00
  %730 = select i1 %728, float %71, float 0.000000e+00
  %731 = select i1 %728, float %72, float 0.000000e+00
  %732 = select i1 %728, float %73, float 1.000000e+00
  %733 = select i1 %728, float %74, float %98
  %734 = select i1 %728, float %75, float %99
  %735 = add i32 %62, 284
  %736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %735, i32 undef)  ; BufferLoad(srv,index,wot)
  %737 = extractvalue %dx.types.ResRet.i32 %736, 0
  %738 = lshr i32 %737, 16
  %739 = call float @dx.op.legacyF16ToF32(i32 131, i32 %738)  ; LegacyF16ToF32(value)
  %740 = fmul fast float %739, 0x3F50624DE0000000
  %741 = add i32 %62, 88
  %742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %741, i32 undef)  ; BufferLoad(srv,index,wot)
  %743 = extractvalue %dx.types.ResRet.i32 %742, 0
  %744 = lshr i32 %743, 16
  %745 = and i32 %744, 255
  %746 = lshr i32 %743, 24
  %747 = add i32 %62, 292
  %748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %747, i32 undef)  ; BufferLoad(srv,index,wot)
  %749 = extractvalue %dx.types.ResRet.i32 %748, 0
  %750 = and i32 %749, 65535
  %751 = call float @dx.op.legacyF16ToF32(i32 131, i32 %750)  ; LegacyF16ToF32(value)
  %752 = lshr i32 %749, 16
  %753 = call float @dx.op.legacyF16ToF32(i32 131, i32 %752)  ; LegacyF16ToF32(value)
  %754 = add i32 %62, 32
  %755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %754, i32 undef)  ; BufferLoad(srv,index,wot)
  %756 = extractvalue %dx.types.ResRet.i32 %755, 0
  %757 = lshr i32 %756, 22
  %758 = shl nuw nsw i32 %757, 5
  %759 = call float @dx.op.legacyF16ToF32(i32 131, i32 %758)  ; LegacyF16ToF32(value)
  %760 = shl i32 %756, 4
  %761 = and i32 %760, 32752
  %762 = call float @dx.op.legacyF16ToF32(i32 131, i32 %761)  ; LegacyF16ToF32(value)
  %763 = lshr i32 %756, 7
  %764 = and i32 %763, 32752
  %765 = call float @dx.op.legacyF16ToF32(i32 131, i32 %764)  ; LegacyF16ToF32(value)
  %766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %767 = extractvalue %dx.types.CBufRet.f32 %766, 3
  %768 = fmul fast float %767, 1.000000e+03
  %769 = fmul fast float %331, %768
  %770 = call float @dx.op.unary.f32(i32 22, float %769)  ; Frc(value)
  %771 = fadd fast float %770, %321
  %772 = fmul fast float %332, %768
  %773 = call float @dx.op.unary.f32(i32 22, float %772)  ; Frc(value)
  %774 = fadd fast float %773, %323
  %775 = fmul fast float %740, %768
  %776 = call float @dx.op.unary.f32(i32 22, float %775)  ; Frc(value)
  %777 = fmul fast float %776, 0x401921FB60000000
  %778 = fadd fast float %777, %759
  %779 = call float @dx.op.unary.f32(i32 13, float %778)  ; Sin(value)
  %780 = call float @dx.op.unary.f32(i32 12, float %778)  ; Cos(value)
  %781 = fsub fast float -0.000000e+00, %779
  %782 = fadd fast float %733, -5.000000e-01
  %783 = fadd fast float %734, -5.000000e-01
  %784 = fmul fast float %751, %782
  %785 = fmul fast float %753, %783
  %786 = fadd fast float %784, 5.000000e-01
  %787 = fadd fast float %785, 5.000000e-01
  %788 = fmul fast float %762, %786
  %789 = fmul fast float %765, %787
  %790 = fmul fast float %780, %788
  %791 = call float @dx.op.tertiary.f32(i32 46, float %781, float %789, float %790)  ; FMad(a,b,c)
  %792 = fmul fast float %779, %788
  %793 = call float @dx.op.tertiary.f32(i32 46, float %780, float %789, float %792)  ; FMad(a,b,c)
  %794 = fadd fast float %771, %791
  %795 = fadd fast float %774, %793
  %796 = icmp ugt i32 %745, 1
  %797 = icmp ugt i32 %743, 33554431
  %798 = or i1 %797, %796
  br i1 %798, label %799, label %824

; <label>:799                                     ; preds = %726
  %800 = add i32 %62, 228
  %801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %800, i32 undef)  ; BufferLoad(srv,index,wot)
  %802 = extractvalue %dx.types.ResRet.i32 %801, 0
  %803 = lshr i32 %802, 16
  %804 = call float @dx.op.legacyF16ToF32(i32 131, i32 %803)  ; LegacyF16ToF32(value)
  %805 = fmul fast float %767, %804
  %806 = call float @dx.op.unary.f32(i32 22, float %805)  ; Frc(value)
  %807 = mul nuw nsw i32 %745, %746
  %808 = uitofp i32 %807 to float
  %809 = fmul fast float %806, %808
  %810 = call float @dx.op.unary.f32(i32 27, float %809)  ; Round_ni(value)
  %811 = fptoui float %810 to i32
  %812 = urem i32 %811, %745
  %813 = udiv i32 %811, %746
  %814 = call float @dx.op.unary.f32(i32 22, float %794)  ; Frc(value)
  %815 = call float @dx.op.unary.f32(i32 22, float %795)  ; Frc(value)
  %816 = uitofp i32 %812 to float
  %817 = uitofp i32 %813 to float
  %818 = fadd fast float %814, %816
  %819 = fadd fast float %815, %817
  %820 = uitofp i32 %745 to float
  %821 = uitofp i32 %746 to float
  %822 = fdiv fast float %818, %820
  %823 = fdiv fast float %819, %821
  br label %824

; <label>:824                                     ; preds = %799, %726
  %825 = phi float [ %822, %799 ], [ %794, %726 ]
  %826 = phi float [ %823, %799 ], [ %795, %726 ]
  %827 = and i32 %720, 256
  %828 = icmp eq i32 %827, 0
  br i1 %828, label %875, label %829

; <label>:829                                     ; preds = %824
  %830 = add i32 %62, 472
  %831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %830, i32 undef)  ; BufferLoad(srv,index,wot)
  %832 = extractvalue %dx.types.ResRet.i32 %831, 0
  %833 = add i32 %832, 0
  %834 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %833, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %835 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %834, %dx.types.Handle %117, float %825, float %826, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %836 = extractvalue %dx.types.ResRet.f32 %835, 0
  %837 = add i32 %62, 100
  %838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %837, i32 undef)  ; BufferLoad(srv,index,wot)
  %839 = extractvalue %dx.types.ResRet.i32 %838, 0
  %840 = shl i32 %839, 4
  %841 = and i32 %840, 32752
  %842 = call float @dx.op.legacyF16ToF32(i32 131, i32 %841)  ; LegacyF16ToF32(value)
  %843 = lshr i32 %839, 7
  %844 = and i32 %843, 32752
  %845 = call float @dx.op.legacyF16ToF32(i32 131, i32 %844)  ; LegacyF16ToF32(value)
  %846 = fsub fast float 1.000000e+00, %687
  %847 = call float @dx.op.binary.f32(i32 35, float %846, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %848 = bitcast float %687 to i32
  %849 = sitofp i32 %848 to float
  %850 = fadd fast float %849, 0xC1CFBF8940000000
  %851 = fmul fast float %845, %850
  %852 = fadd fast float %851, 0x41CFBF8940000000
  %853 = fptosi float %852 to i32
  %854 = bitcast i32 %853 to float
  %855 = bitcast float %847 to i32
  %856 = sitofp i32 %855 to float
  %857 = fadd fast float %856, 0xC1CFBF8940000000
  %858 = fmul fast float %857, %845
  %859 = fadd fast float %858, 0x41CFBF8940000000
  %860 = fptosi float %859 to i32
  %861 = bitcast i32 %860 to float
  %862 = fmul fast float %854, %842
  %863 = fmul fast float %861, %842
  %864 = fsub fast float %847, %862
  %865 = fadd fast float %863, %847
  %866 = call float @dx.op.unary.f32(i32 7, float %864)  ; Saturate(value)
  %867 = call float @dx.op.unary.f32(i32 7, float %865)  ; Saturate(value)
  %868 = fsub fast float %836, %866
  %869 = fsub fast float %867, %866
  %870 = bitcast float %869 to i32
  %871 = sub nsw i32 2129859010, %870
  %872 = bitcast i32 %871 to float
  %873 = fmul fast float %872, %868
  %874 = call float @dx.op.unary.f32(i32 7, float %873)  ; Saturate(value)
  br label %875

; <label>:875                                     ; preds = %829, %824
  %876 = phi float [ %874, %829 ], [ %687, %824 ]
  %877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %718, i32 undef)  ; BufferLoad(srv,index,wot)
  %878 = extractvalue %dx.types.ResRet.i32 %877, 0
  %879 = and i32 %878, 128
  %880 = icmp eq i32 %879, 0
  br i1 %880, label %897, label %881

; <label>:881                                     ; preds = %875
  %882 = add i32 %62, 456
  %883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %882, i32 undef)  ; BufferLoad(srv,index,wot)
  %884 = extractvalue %dx.types.ResRet.i32 %883, 0
  %885 = add i32 %884, 0
  %886 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %885, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %887 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %886, %dx.types.Handle %117, float %825, float %826, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %888 = extractvalue %dx.types.ResRet.f32 %887, 0
  %889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %718, i32 undef)  ; BufferLoad(srv,index,wot)
  %890 = extractvalue %dx.types.ResRet.i32 %889, 0
  %891 = and i32 %890, 524288
  %892 = icmp ne i32 %891, 0
  %893 = fcmp fast ogt float %888, 0x3FE0101020000000
  %894 = select i1 %893, float 1.000000e+00, float 0.000000e+00
  %895 = select i1 %892, float %894, float %888
  %896 = fmul fast float %895, %876
  br label %897

; <label>:897                                     ; preds = %881, %875
  %898 = phi float [ %896, %881 ], [ %876, %875 ]
  %899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %718, i32 undef)  ; BufferLoad(srv,index,wot)
  %900 = extractvalue %dx.types.ResRet.i32 %899, 0
  %901 = and i32 %900, 16
  %902 = icmp eq i32 %901, 0
  br i1 %902, label %1101, label %903

; <label>:903                                     ; preds = %897
  %904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %741, i32 undef)  ; BufferLoad(srv,index,wot)
  %905 = extractvalue %dx.types.ResRet.i32 %904, 0
  %906 = add i32 %62, 408
  %907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %906, i32 undef)  ; BufferLoad(srv,index,wot)
  %908 = extractvalue %dx.types.ResRet.i32 %907, 0
  %909 = add i32 %908, 0
  %910 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %909, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %911 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %910, %dx.types.Handle %116, float %825, float %826, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %912 = extractvalue %dx.types.ResRet.f32 %911, 0
  %913 = extractvalue %dx.types.ResRet.f32 %911, 1
  %914 = extractvalue %dx.types.ResRet.f32 %911, 2
  %915 = extractvalue %dx.types.ResRet.f32 %911, 3
  %916 = and i32 %905, 255
  %917 = uitofp i32 %916 to float
  %918 = lshr i32 %905, 8
  %919 = and i32 %918, 255
  %920 = uitofp i32 %919 to float
  %921 = fmul fast float %915, %917
  %922 = fadd fast float %921, %920
  %923 = fmul fast float %922, 0x3F70101000000000
  %924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %718, i32 undef)  ; BufferLoad(srv,index,wot)
  %925 = extractvalue %dx.types.ResRet.i32 %924, 0
  %926 = and i32 %925, 512
  %927 = icmp eq i32 %926, 0
  br i1 %927, label %936, label %928

; <label>:928                                     ; preds = %903
  %929 = add i32 %62, 492
  %930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %929, i32 undef)  ; BufferLoad(srv,index,wot)
  %931 = extractvalue %dx.types.ResRet.i32 %930, 0
  %932 = add i32 %931, 0
  %933 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %932, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %934 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %933, %dx.types.Handle %117, float %825, float %826, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %935 = extractvalue %dx.types.ResRet.f32 %934, 0
  br label %936

; <label>:936                                     ; preds = %928, %903
  %937 = phi float [ %935, %928 ], [ 1.000000e+00, %903 ]
  %938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %718, i32 undef)  ; BufferLoad(srv,index,wot)
  %939 = extractvalue %dx.types.ResRet.i32 %938, 0
  %940 = and i32 %939, 33554432
  %941 = icmp eq i32 %940, 0
  br i1 %941, label %1048, label %942

; <label>:942                                     ; preds = %936
  %943 = add i32 %62, 224
  %944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %943, i32 undef)  ; BufferLoad(srv,index,wot)
  %945 = extractvalue %dx.types.ResRet.i32 %944, 0
  %946 = and i32 %945, 65535
  %947 = call float @dx.op.legacyF16ToF32(i32 131, i32 %946)  ; LegacyF16ToF32(value)
  %948 = lshr i32 %945, 16
  %949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %948)  ; LegacyF16ToF32(value)
  %950 = add i32 %62, 228
  %951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %950, i32 undef)  ; BufferLoad(srv,index,wot)
  %952 = extractvalue %dx.types.ResRet.i32 %951, 0
  %953 = and i32 %952, 65535
  %954 = call float @dx.op.legacyF16ToF32(i32 131, i32 %953)  ; LegacyF16ToF32(value)
  %955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %956 = extractvalue %dx.types.ResRet.i32 %955, 0
  %957 = lshr i32 %956, 24
  %958 = uitofp i32 %957 to float
  %959 = fmul fast float %958, 0x3F70101020000000
  %960 = and i32 %956, 255
  %961 = uitofp i32 %960 to float
  %962 = fmul fast float %961, 0x3F70101020000000
  %963 = lshr i32 %956, 8
  %964 = and i32 %963, 255
  %965 = uitofp i32 %964 to float
  %966 = fmul fast float %965, 0x3F70101020000000
  %967 = lshr i32 %956, 16
  %968 = and i32 %967, 255
  %969 = uitofp i32 %968 to float
  %970 = fmul fast float %969, 0x3F70101020000000
  %971 = add i32 %62, 220
  %972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %971, i32 undef)  ; BufferLoad(srv,index,wot)
  %973 = extractvalue %dx.types.ResRet.i32 %972, 0
  %974 = lshr i32 %973, 24
  %975 = uitofp i32 %974 to float
  %976 = fmul fast float %975, 0x3F70101020000000
  %977 = and i32 %973, 255
  %978 = uitofp i32 %977 to float
  %979 = fmul fast float %978, 0x3F70101020000000
  %980 = lshr i32 %973, 8
  %981 = and i32 %980, 255
  %982 = uitofp i32 %981 to float
  %983 = fmul fast float %982, 0x3F70101020000000
  %984 = lshr i32 %973, 16
  %985 = and i32 %984, 255
  %986 = uitofp i32 %985 to float
  %987 = fmul fast float %986, 0x3F70101020000000
  %988 = bitcast float %912 to i32
  %989 = ashr i32 %988, 1
  %990 = sub nsw i32 1597463174, %989
  %991 = bitcast i32 %990 to float
  %992 = fmul fast float %912, 5.000000e-01
  %993 = fmul fast float %991, %991
  %994 = fmul fast float %993, %992
  %995 = fsub fast float 1.500000e+00, %994
  %996 = fmul fast float %991, %912
  %997 = fmul fast float %996, %995
  %998 = bitcast float %913 to i32
  %999 = ashr i32 %998, 1
  %1000 = sub nsw i32 1597463174, %999
  %1001 = bitcast i32 %1000 to float
  %1002 = fmul fast float %913, 5.000000e-01
  %1003 = fmul fast float %1001, %1001
  %1004 = fmul fast float %1003, %1002
  %1005 = fsub fast float 1.500000e+00, %1004
  %1006 = fmul fast float %1001, %913
  %1007 = fmul fast float %1006, %1005
  %1008 = bitcast float %914 to i32
  %1009 = ashr i32 %1008, 1
  %1010 = sub nsw i32 1597463174, %1009
  %1011 = bitcast i32 %1010 to float
  %1012 = fmul fast float %914, 5.000000e-01
  %1013 = fmul fast float %1011, %1011
  %1014 = fmul fast float %1013, %1012
  %1015 = fsub fast float 1.500000e+00, %1014
  %1016 = fmul fast float %1011, %914
  %1017 = fmul fast float %1016, %1015
  %1018 = fsub fast float %997, %979
  %1019 = fsub fast float %1007, %983
  %1020 = fsub fast float %1017, %987
  %1021 = fmul fast float %1018, %947
  %1022 = fmul fast float %1019, %949
  %1023 = fmul fast float %1020, %954
  %1024 = fadd fast float %1021, %962
  %1025 = fadd fast float %1022, %966
  %1026 = fadd fast float %1023, %970
  %1027 = call float @dx.op.unary.f32(i32 7, float %1024)  ; Saturate(value)
  %1028 = call float @dx.op.unary.f32(i32 7, float %1025)  ; Saturate(value)
  %1029 = call float @dx.op.unary.f32(i32 7, float %1026)  ; Saturate(value)
  %1030 = fmul fast float %1027, %1027
  %1031 = fmul fast float %1028, %1028
  %1032 = fmul fast float %1029, %1029
  %1033 = fsub fast float %1030, %912
  %1034 = fsub fast float %1031, %913
  %1035 = fsub fast float %1032, %914
  %1036 = fmul fast float %1033, %937
  %1037 = fmul fast float %1034, %937
  %1038 = fmul fast float %1035, %937
  %1039 = fadd fast float %1036, %912
  %1040 = fadd fast float %1037, %913
  %1041 = fadd fast float %1038, %914
  %1042 = fadd fast float %959, %923
  %1043 = fsub fast float %1042, %976
  %1044 = call float @dx.op.unary.f32(i32 7, float %1043)  ; Saturate(value)
  %1045 = fsub fast float %1044, %923
  %1046 = fmul fast float %1045, %937
  %1047 = fadd fast float %1046, %923
  br label %1101

; <label>:1048                                    ; preds = %936
  %1049 = and i32 %939, 134217728
  %1050 = icmp eq i32 %1049, 0
  br i1 %1050, label %1085, label %1051

; <label>:1051                                    ; preds = %1048
  %1052 = call float @dx.op.unary.f32(i32 24, float %308)  ; Sqrt(value)
  %1053 = call float @dx.op.unary.f32(i32 24, float %312)  ; Sqrt(value)
  %1054 = call float @dx.op.unary.f32(i32 24, float %316)  ; Sqrt(value)
  %1055 = fadd fast float %1052, -5.000000e-01
  %1056 = fadd fast float %1053, -5.000000e-01
  %1057 = fadd fast float %1054, -5.000000e-01
  %1058 = fmul fast float %1055, %937
  %1059 = fmul fast float %1056, %937
  %1060 = fmul fast float %1057, %937
  %1061 = fadd fast float %1058, 5.000000e-01
  %1062 = fadd fast float %1059, 5.000000e-01
  %1063 = fadd fast float %1060, 5.000000e-01
  %1064 = call float @dx.op.unary.f32(i32 24, float %912)  ; Sqrt(value)
  %1065 = call float @dx.op.unary.f32(i32 24, float %913)  ; Sqrt(value)
  %1066 = call float @dx.op.unary.f32(i32 24, float %914)  ; Sqrt(value)
  %1067 = fmul fast float %1061, 2.000000e+00
  %1068 = fsub fast float 1.000000e+00, %1067
  %1069 = fmul fast float %1068, %1064
  %1070 = fadd fast float %1069, %1067
  %1071 = fmul fast float %1070, %1064
  %1072 = fmul fast float %1062, 2.000000e+00
  %1073 = fsub fast float 1.000000e+00, %1072
  %1074 = fmul fast float %1073, %1065
  %1075 = fadd fast float %1074, %1072
  %1076 = fmul fast float %1075, %1065
  %1077 = fmul fast float %1063, 2.000000e+00
  %1078 = fsub fast float 1.000000e+00, %1077
  %1079 = fmul fast float %1078, %1066
  %1080 = fadd fast float %1079, %1077
  %1081 = fmul fast float %1080, %1066
  %1082 = fmul fast float %1071, %1071
  %1083 = fmul fast float %1076, %1076
  %1084 = fmul fast float %1081, %1081
  br label %1101

; <label>:1085                                    ; preds = %1048
  %1086 = fmul fast float %308, %308
  %1087 = fmul fast float %312, %312
  %1088 = fmul fast float %316, %316
  %1089 = fadd fast float %1086, -1.000000e+00
  %1090 = fadd fast float %1087, -1.000000e+00
  %1091 = fadd fast float %1088, -1.000000e+00
  %1092 = fmul fast float %937, %1089
  %1093 = fmul fast float %937, %1090
  %1094 = fmul fast float %937, %1091
  %1095 = fadd fast float %1092, 1.000000e+00
  %1096 = fadd fast float %1093, 1.000000e+00
  %1097 = fadd fast float %1094, 1.000000e+00
  %1098 = fmul fast float %1095, %912
  %1099 = fmul fast float %1096, %913
  %1100 = fmul fast float %1097, %914
  br label %1101

; <label>:1101                                    ; preds = %1085, %1051, %942, %897
  %1102 = phi float [ %1047, %942 ], [ %923, %1051 ], [ %923, %1085 ], [ 0x3FA23C0BE0000000, %897 ]
  %1103 = phi float [ %1039, %942 ], [ %1082, %1051 ], [ %1098, %1085 ], [ 1.000000e+00, %897 ]
  %1104 = phi float [ %1040, %942 ], [ %1083, %1051 ], [ %1099, %1085 ], [ 1.000000e+00, %897 ]
  %1105 = phi float [ %1041, %942 ], [ %1084, %1051 ], [ %1100, %1085 ], [ 1.000000e+00, %897 ]
  %1106 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1107 = extractvalue %dx.types.CBufRet.i32 %1106, 1
  %1108 = and i32 %1107, 1
  %1109 = icmp ne i32 %1108, 0
  %1110 = add i32 %62, 356
  %1111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1110, i32 undef)  ; BufferLoad(srv,index,wot)
  %1112 = extractvalue %dx.types.ResRet.i32 %1111, 0
  %1113 = and i32 %1112, 32
  %1114 = icmp ne i32 %1113, 0
  %1115 = and i1 %1109, %1114
  %1116 = select i1 %1115, float 1.000000e+00, float %1103
  %1117 = select i1 %1115, float 0x3FD3333340000000, float %1104
  %1118 = select i1 %1115, float 0x3FD3333340000000, float %1105
  %1119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %718, i32 undef)  ; BufferLoad(srv,index,wot)
  %1120 = extractvalue %dx.types.ResRet.i32 %1119, 0
  %1121 = and i32 %1120, 32
  %1122 = icmp eq i32 %1121, 0
  br i1 %1122, label %1195, label %1123

; <label>:1123                                    ; preds = %1101
  %1124 = add i32 %62, 92
  %1125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1124, i32 undef)  ; BufferLoad(srv,index,wot)
  %1126 = extractvalue %dx.types.ResRet.i32 %1125, 0
  %1127 = add i32 %62, 424
  %1128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1127, i32 undef)  ; BufferLoad(srv,index,wot)
  %1129 = extractvalue %dx.types.ResRet.i32 %1128, 0
  %1130 = add i32 %1129, 0
  %1131 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1130, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1132 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1131, %dx.types.Handle %116, float %825, float %826, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1133 = extractvalue %dx.types.ResRet.f32 %1132, 0
  %1134 = extractvalue %dx.types.ResRet.f32 %1132, 1
  %1135 = extractvalue %dx.types.ResRet.f32 %1132, 2
  %1136 = extractvalue %dx.types.ResRet.f32 %1132, 3
  %1137 = and i32 %1126, 255
  %1138 = uitofp i32 %1137 to float
  %1139 = lshr i32 %1126, 8
  %1140 = and i32 %1139, 255
  %1141 = uitofp i32 %1140 to float
  %1142 = lshr i32 %1126, 16
  %1143 = and i32 %1142, 255
  %1144 = uitofp i32 %1143 to float
  %1145 = fmul fast float %1144, 0x3F70101000000000
  %1146 = fmul fast float %1133, %1138
  %1147 = fadd fast float %1146, %1141
  %1148 = fmul fast float %1147, 0x3F70101000000000
  %1149 = fadd fast float %1134, -5.000000e-01
  %1150 = fadd fast float %1136, -5.000000e-01
  %1151 = fmul fast float %1149, %1145
  %1152 = fmul fast float %1150, %1145
  %1153 = fadd fast float %1151, 5.000000e-01
  %1154 = fadd fast float %1152, 5.000000e-01
  %1155 = fmul fast float %1153, 2.000000e+00
  %1156 = fadd fast float %1155, -1.000000e+00
  %1157 = fmul fast float %1154, 2.000000e+00
  %1158 = fadd fast float %1157, -1.000000e+00
  %1159 = fadd fast float %1156, %1158
  %1160 = fmul fast float %1159, 5.000000e-01
  %1161 = fsub fast float %1156, %1158
  %1162 = fmul fast float %1161, 5.000000e-01
  %1163 = call float @dx.op.unary.f32(i32 6, float %1160)  ; FAbs(value)
  %1164 = fsub fast float 1.000000e+00, %1163
  %1165 = call float @dx.op.unary.f32(i32 6, float %1162)  ; FAbs(value)
  %1166 = fsub fast float %1164, %1165
  %1167 = call float @dx.op.dot3.f32(i32 55, float %1160, float %1162, float %1166, float %1160, float %1162, float %1166)  ; Dot3(ax,ay,az,bx,by,bz)
  %1168 = call float @dx.op.unary.f32(i32 25, float %1167)  ; Rsqrt(value)
  %1169 = fmul fast float %1160, %1168
  %1170 = fmul fast float %1162, %1168
  %1171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %718, i32 undef)  ; BufferLoad(srv,index,wot)
  %1172 = extractvalue %dx.types.ResRet.i32 %1171, 0
  %1173 = and i32 %1172, 67108864
  %1174 = icmp eq i32 %1173, 0
  br i1 %1174, label %1191, label %1175

; <label>:1175                                    ; preds = %1123
  %1176 = add i32 %62, 280
  %1177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1176, i32 undef)  ; BufferLoad(srv,index,wot)
  %1178 = extractvalue %dx.types.ResRet.i32 %1177, 0
  %1179 = and i32 %1178, 65535
  %1180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1179)  ; LegacyF16ToF32(value)
  %1181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %735, i32 undef)  ; BufferLoad(srv,index,wot)
  %1182 = extractvalue %dx.types.ResRet.i32 %1181, 0
  %1183 = and i32 %1182, 65535
  %1184 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1183)  ; LegacyF16ToF32(value)
  %1185 = lshr i32 %1178, 16
  %1186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1185)  ; LegacyF16ToF32(value)
  %1187 = fsub fast float %1148, %1186
  %1188 = fmul fast float %1187, %1180
  %1189 = fadd fast float %1188, %1184
  %1190 = call float @dx.op.unary.f32(i32 7, float %1189)  ; Saturate(value)
  br label %1191

; <label>:1191                                    ; preds = %1175, %1123
  %1192 = phi float [ %1190, %1175 ], [ %1148, %1123 ]
  %1193 = call float @dx.op.dot2.f32(i32 54, float %1169, float %1170, float %729, float %730)  ; Dot2(ax,ay,bx,by)
  %1194 = call float @dx.op.dot2.f32(i32 54, float %1169, float %1170, float %731, float %732)  ; Dot2(ax,ay,bx,by)
  br label %1195

; <label>:1195                                    ; preds = %1191, %1101
  %1196 = phi float [ %1192, %1191 ], [ 0x3FD6666660000000, %1101 ]
  %1197 = phi float [ %1193, %1191 ], [ 0.000000e+00, %1101 ]
  %1198 = phi float [ %1194, %1191 ], [ 0.000000e+00, %1101 ]
  %1199 = phi float [ %1135, %1191 ], [ 1.000000e+00, %1101 ]
  %1200 = add i32 %62, 160
  %1201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1200, i32 undef)  ; BufferLoad(srv,index,wot)
  %1202 = extractvalue %dx.types.ResRet.i32 %1201, 0
  %1203 = lshr i32 %1202, 22
  %1204 = shl nuw nsw i32 %1203, 5
  %1205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1204)  ; LegacyF16ToF32(value)
  %1206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %718, i32 undef)  ; BufferLoad(srv,index,wot)
  %1207 = extractvalue %dx.types.ResRet.i32 %1206, 0
  %1208 = and i32 %1207, 64
  %1209 = icmp eq i32 %1208, 0
  br i1 %1209, label %1243, label %1210

; <label>:1210                                    ; preds = %1195
  %1211 = add i32 %62, 440
  %1212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.i32 %1212, 0
  %1214 = add i32 %1213, 0
  %1215 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1214, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %718, i32 undef)  ; BufferLoad(srv,index,wot)
  %1217 = extractvalue %dx.types.ResRet.i32 %1216, 0
  %1218 = and i32 %1217, 131072
  %1219 = icmp eq i32 %1218, 0
  %1220 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1215, %dx.types.Handle %116, float %825, float %826, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1221 = extractvalue %dx.types.ResRet.f32 %1220, 0
  %1222 = extractvalue %dx.types.ResRet.f32 %1220, 1
  %1223 = extractvalue %dx.types.ResRet.f32 %1220, 2
  %1224 = fmul fast float %1221, %296
  %1225 = fmul fast float %1222, %299
  %1226 = fmul fast float %1223, %302
  br i1 %1219, label %1233, label %1227

; <label>:1227                                    ; preds = %1210
  %1228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1229 = extractvalue %dx.types.CBufRet.f32 %1228, 0
  %1230 = fmul fast float %1229, %1224
  %1231 = fmul fast float %1229, %1225
  %1232 = fmul fast float %1229, %1226
  br label %1233

; <label>:1233                                    ; preds = %1227, %1210
  %1234 = phi float [ %1230, %1227 ], [ %1224, %1210 ]
  %1235 = phi float [ %1231, %1227 ], [ %1225, %1210 ]
  %1236 = phi float [ %1232, %1227 ], [ %1226, %1210 ]
  %1237 = fmul fast float %1234, %1205
  %1238 = select i1 %279, float %1237, float %1234
  %1239 = call float @dx.op.dot3.f32(i32 55, float %1238, float %1235, float %1236, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1240 = select i1 %279, float 0.000000e+00, float %1234
  %1241 = select i1 %279, float %1239, float %1235
  %1242 = select i1 %279, float 0.000000e+00, float %1236
  br label %1243

; <label>:1243                                    ; preds = %1233, %1195
  %1244 = phi float [ %1240, %1233 ], [ 0.000000e+00, %1195 ]
  %1245 = phi float [ %1241, %1233 ], [ 0.000000e+00, %1195 ]
  %1246 = phi float [ %1242, %1233 ], [ 0.000000e+00, %1195 ]
  %1247 = add i32 %62, 96
  %1248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1249 = extractvalue %dx.types.ResRet.i32 %1248, 0
  %1250 = and i32 %1249, 255
  %1251 = uitofp i32 %1250 to float
  %1252 = lshr i32 %1249, 8
  %1253 = and i32 %1252, 255
  %1254 = uitofp i32 %1253 to float
  %1255 = call float @dx.op.dot3.f32(i32 55, float %1116, float %1117, float %1118, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1256 = fmul fast float %1254, %1255
  %1257 = fadd fast float %1256, %1251
  %1258 = fmul fast float %1257, 0x3F70101020000000
  %1259 = call float @dx.op.unary.f32(i32 7, float %1258)  ; Saturate(value)
  br label %1260

; <label>:1260                                    ; preds = %1243, %711
  %1261 = phi float [ 0.000000e+00, %711 ], [ %1197, %1243 ]
  %1262 = phi float [ 0.000000e+00, %711 ], [ %1198, %1243 ]
  %1263 = phi float [ 0.000000e+00, %711 ], [ %1244, %1243 ]
  %1264 = phi float [ 0.000000e+00, %711 ], [ %1245, %1243 ]
  %1265 = phi float [ 0.000000e+00, %711 ], [ %1246, %1243 ]
  %1266 = phi float [ 0.000000e+00, %711 ], [ %1116, %1243 ]
  %1267 = phi float [ 0.000000e+00, %711 ], [ %1117, %1243 ]
  %1268 = phi float [ 0.000000e+00, %711 ], [ %1118, %1243 ]
  %1269 = phi float [ 0.000000e+00, %711 ], [ %1102, %1243 ]
  %1270 = phi float [ 0.000000e+00, %711 ], [ %898, %1243 ]
  %1271 = phi float [ 0.000000e+00, %711 ], [ %1196, %1243 ]
  %1272 = phi float [ 0.000000e+00, %711 ], [ %1199, %1243 ]
  %1273 = phi float [ 0.000000e+00, %711 ], [ %1259, %1243 ]
  br i1 %659, label %2000, label %1274

; <label>:1274                                    ; preds = %1260
  %1275 = icmp ult i32 %717, 2
  %1276 = add i32 %62, 40
  %1277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1276, i32 undef)  ; BufferLoad(srv,index,wot)
  %1278 = extractvalue %dx.types.ResRet.i32 %1277, 0
  %1279 = add i32 %62, 44
  %1280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1279, i32 undef)  ; BufferLoad(srv,index,wot)
  %1281 = extractvalue %dx.types.ResRet.i32 %1280, 0
  %1282 = or i32 %1281, %1278
  %1283 = icmp eq i32 %1282, 0
  br i1 %1283, label %2000, label %1284

; <label>:1284                                    ; preds = %1274
  %1285 = and i32 %1278, 262144
  %1286 = icmp ne i32 %1285, 0
  %1287 = select i1 %1286, float %70, float 1.000000e+00
  %1288 = select i1 %1286, float %71, float 0.000000e+00
  %1289 = select i1 %1286, float %72, float 0.000000e+00
  %1290 = select i1 %1286, float %73, float 1.000000e+00
  %1291 = select i1 %1286, float %74, float %98
  %1292 = select i1 %1286, float %75, float %99
  %1293 = add i32 %62, 300
  %1294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1293, i32 undef)  ; BufferLoad(srv,index,wot)
  %1295 = extractvalue %dx.types.ResRet.i32 %1294, 0
  %1296 = lshr i32 %1295, 16
  %1297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1296)  ; LegacyF16ToF32(value)
  %1298 = fmul fast float %1297, 0x3F50624DE0000000
  %1299 = add i32 %62, 104
  %1300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1299, i32 undef)  ; BufferLoad(srv,index,wot)
  %1301 = extractvalue %dx.types.ResRet.i32 %1300, 0
  %1302 = lshr i32 %1301, 16
  %1303 = and i32 %1302, 255
  %1304 = lshr i32 %1301, 24
  %1305 = add i32 %62, 308
  %1306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1305, i32 undef)  ; BufferLoad(srv,index,wot)
  %1307 = extractvalue %dx.types.ResRet.i32 %1306, 0
  %1308 = and i32 %1307, 65535
  %1309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1308)  ; LegacyF16ToF32(value)
  %1310 = lshr i32 %1307, 16
  %1311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1310)  ; LegacyF16ToF32(value)
  %1312 = add i32 %62, 48
  %1313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1312, i32 undef)  ; BufferLoad(srv,index,wot)
  %1314 = extractvalue %dx.types.ResRet.i32 %1313, 0
  %1315 = lshr i32 %1314, 22
  %1316 = shl nuw nsw i32 %1315, 5
  %1317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1316)  ; LegacyF16ToF32(value)
  %1318 = shl i32 %1314, 4
  %1319 = and i32 %1318, 32752
  %1320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1319)  ; LegacyF16ToF32(value)
  %1321 = lshr i32 %1314, 7
  %1322 = and i32 %1321, 32752
  %1323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1322)  ; LegacyF16ToF32(value)
  %1324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1325 = extractvalue %dx.types.CBufRet.f32 %1324, 3
  %1326 = fmul fast float %1325, 1.000000e+03
  %1327 = fmul fast float %1326, %438
  %1328 = call float @dx.op.unary.f32(i32 22, float %1327)  ; Frc(value)
  %1329 = fadd fast float %1328, %426
  %1330 = fmul fast float %1326, %440
  %1331 = call float @dx.op.unary.f32(i32 22, float %1330)  ; Frc(value)
  %1332 = fadd fast float %1331, %427
  %1333 = fmul fast float %1298, %1326
  %1334 = call float @dx.op.unary.f32(i32 22, float %1333)  ; Frc(value)
  %1335 = fmul fast float %1334, 0x401921FB60000000
  %1336 = fadd fast float %1335, %1317
  %1337 = call float @dx.op.unary.f32(i32 13, float %1336)  ; Sin(value)
  %1338 = call float @dx.op.unary.f32(i32 12, float %1336)  ; Cos(value)
  %1339 = fsub fast float -0.000000e+00, %1337
  %1340 = fadd fast float %1291, -5.000000e-01
  %1341 = fadd fast float %1292, -5.000000e-01
  %1342 = fmul fast float %1309, %1340
  %1343 = fmul fast float %1311, %1341
  %1344 = fadd fast float %1342, 5.000000e-01
  %1345 = fadd fast float %1343, 5.000000e-01
  %1346 = fmul fast float %1320, %1344
  %1347 = fmul fast float %1323, %1345
  %1348 = fmul fast float %1338, %1346
  %1349 = call float @dx.op.tertiary.f32(i32 46, float %1339, float %1347, float %1348)  ; FMad(a,b,c)
  %1350 = fmul fast float %1337, %1346
  %1351 = call float @dx.op.tertiary.f32(i32 46, float %1338, float %1347, float %1350)  ; FMad(a,b,c)
  %1352 = fadd fast float %1329, %1349
  %1353 = fadd fast float %1332, %1351
  %1354 = icmp ugt i32 %1303, 1
  %1355 = icmp ugt i32 %1301, 33554431
  %1356 = or i1 %1355, %1354
  br i1 %1356, label %1357, label %1382

; <label>:1357                                    ; preds = %1284
  %1358 = add i32 %62, 244
  %1359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1358, i32 undef)  ; BufferLoad(srv,index,wot)
  %1360 = extractvalue %dx.types.ResRet.i32 %1359, 0
  %1361 = lshr i32 %1360, 16
  %1362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1361)  ; LegacyF16ToF32(value)
  %1363 = fmul fast float %1325, %1362
  %1364 = call float @dx.op.unary.f32(i32 22, float %1363)  ; Frc(value)
  %1365 = mul nuw nsw i32 %1303, %1304
  %1366 = uitofp i32 %1365 to float
  %1367 = fmul fast float %1364, %1366
  %1368 = call float @dx.op.unary.f32(i32 27, float %1367)  ; Round_ni(value)
  %1369 = fptoui float %1368 to i32
  %1370 = urem i32 %1369, %1303
  %1371 = udiv i32 %1369, %1304
  %1372 = call float @dx.op.unary.f32(i32 22, float %1352)  ; Frc(value)
  %1373 = call float @dx.op.unary.f32(i32 22, float %1353)  ; Frc(value)
  %1374 = uitofp i32 %1370 to float
  %1375 = uitofp i32 %1371 to float
  %1376 = fadd fast float %1372, %1374
  %1377 = fadd fast float %1373, %1375
  %1378 = uitofp i32 %1303 to float
  %1379 = uitofp i32 %1304 to float
  %1380 = fdiv fast float %1376, %1378
  %1381 = fdiv fast float %1377, %1379
  br label %1382

; <label>:1382                                    ; preds = %1357, %1284
  %1383 = phi float [ %1380, %1357 ], [ %1352, %1284 ]
  %1384 = phi float [ %1381, %1357 ], [ %1353, %1284 ]
  %1385 = and i32 %1278, 256
  %1386 = icmp eq i32 %1385, 0
  br i1 %1386, label %1433, label %1387

; <label>:1387                                    ; preds = %1382
  %1388 = add i32 %62, 476
  %1389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1388, i32 undef)  ; BufferLoad(srv,index,wot)
  %1390 = extractvalue %dx.types.ResRet.i32 %1389, 0
  %1391 = add i32 %1390, 0
  %1392 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1391, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1393 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1392, %dx.types.Handle %117, float %1383, float %1384, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1394 = extractvalue %dx.types.ResRet.f32 %1393, 0
  %1395 = add i32 %62, 116
  %1396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1395, i32 undef)  ; BufferLoad(srv,index,wot)
  %1397 = extractvalue %dx.types.ResRet.i32 %1396, 0
  %1398 = shl i32 %1397, 4
  %1399 = and i32 %1398, 32752
  %1400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1399)  ; LegacyF16ToF32(value)
  %1401 = lshr i32 %1397, 7
  %1402 = and i32 %1401, 32752
  %1403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1402)  ; LegacyF16ToF32(value)
  %1404 = fsub fast float 1.000000e+00, %714
  %1405 = call float @dx.op.binary.f32(i32 35, float %1404, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1406 = bitcast float %714 to i32
  %1407 = sitofp i32 %1406 to float
  %1408 = fadd fast float %1407, 0xC1CFBF8940000000
  %1409 = fmul fast float %1403, %1408
  %1410 = fadd fast float %1409, 0x41CFBF8940000000
  %1411 = fptosi float %1410 to i32
  %1412 = bitcast i32 %1411 to float
  %1413 = bitcast float %1405 to i32
  %1414 = sitofp i32 %1413 to float
  %1415 = fadd fast float %1414, 0xC1CFBF8940000000
  %1416 = fmul fast float %1415, %1403
  %1417 = fadd fast float %1416, 0x41CFBF8940000000
  %1418 = fptosi float %1417 to i32
  %1419 = bitcast i32 %1418 to float
  %1420 = fmul fast float %1412, %1400
  %1421 = fmul fast float %1419, %1400
  %1422 = fsub fast float %1405, %1420
  %1423 = fadd fast float %1421, %1405
  %1424 = call float @dx.op.unary.f32(i32 7, float %1422)  ; Saturate(value)
  %1425 = call float @dx.op.unary.f32(i32 7, float %1423)  ; Saturate(value)
  %1426 = fsub fast float %1394, %1424
  %1427 = fsub fast float %1425, %1424
  %1428 = bitcast float %1427 to i32
  %1429 = sub nsw i32 2129859010, %1428
  %1430 = bitcast i32 %1429 to float
  %1431 = fmul fast float %1430, %1426
  %1432 = call float @dx.op.unary.f32(i32 7, float %1431)  ; Saturate(value)
  br label %1433

; <label>:1433                                    ; preds = %1387, %1382
  %1434 = phi float [ %1432, %1387 ], [ %714, %1382 ]
  %1435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1276, i32 undef)  ; BufferLoad(srv,index,wot)
  %1436 = extractvalue %dx.types.ResRet.i32 %1435, 0
  %1437 = and i32 %1436, 128
  %1438 = icmp eq i32 %1437, 0
  br i1 %1438, label %1455, label %1439

; <label>:1439                                    ; preds = %1433
  %1440 = add i32 %62, 460
  %1441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1440, i32 undef)  ; BufferLoad(srv,index,wot)
  %1442 = extractvalue %dx.types.ResRet.i32 %1441, 0
  %1443 = add i32 %1442, 0
  %1444 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1443, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1445 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1444, %dx.types.Handle %117, float %1383, float %1384, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1446 = extractvalue %dx.types.ResRet.f32 %1445, 0
  %1447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1276, i32 undef)  ; BufferLoad(srv,index,wot)
  %1448 = extractvalue %dx.types.ResRet.i32 %1447, 0
  %1449 = and i32 %1448, 524288
  %1450 = icmp ne i32 %1449, 0
  %1451 = fcmp fast ogt float %1446, 0x3FE0101020000000
  %1452 = select i1 %1451, float 1.000000e+00, float 0.000000e+00
  %1453 = select i1 %1450, float %1452, float %1446
  %1454 = fmul fast float %1453, %1434
  br label %1455

; <label>:1455                                    ; preds = %1439, %1433
  %1456 = phi float [ %1454, %1439 ], [ %1434, %1433 ]
  %1457 = fcmp fast ult float %1456, 0x3F70101020000000
  br i1 %1457, label %2000, label %1458

; <label>:1458                                    ; preds = %1455
  %1459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1276, i32 undef)  ; BufferLoad(srv,index,wot)
  %1460 = extractvalue %dx.types.ResRet.i32 %1459, 0
  %1461 = and i32 %1460, 16
  %1462 = icmp eq i32 %1461, 0
  br i1 %1462, label %1661, label %1463

; <label>:1463                                    ; preds = %1458
  %1464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1299, i32 undef)  ; BufferLoad(srv,index,wot)
  %1465 = extractvalue %dx.types.ResRet.i32 %1464, 0
  %1466 = add i32 %62, 412
  %1467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1466, i32 undef)  ; BufferLoad(srv,index,wot)
  %1468 = extractvalue %dx.types.ResRet.i32 %1467, 0
  %1469 = add i32 %1468, 0
  %1470 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1469, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1471 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1470, %dx.types.Handle %116, float %1383, float %1384, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1472 = extractvalue %dx.types.ResRet.f32 %1471, 0
  %1473 = extractvalue %dx.types.ResRet.f32 %1471, 1
  %1474 = extractvalue %dx.types.ResRet.f32 %1471, 2
  %1475 = extractvalue %dx.types.ResRet.f32 %1471, 3
  %1476 = and i32 %1465, 255
  %1477 = uitofp i32 %1476 to float
  %1478 = lshr i32 %1465, 8
  %1479 = and i32 %1478, 255
  %1480 = uitofp i32 %1479 to float
  %1481 = fmul fast float %1475, %1477
  %1482 = fadd fast float %1481, %1480
  %1483 = fmul fast float %1482, 0x3F70101000000000
  %1484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1276, i32 undef)  ; BufferLoad(srv,index,wot)
  %1485 = extractvalue %dx.types.ResRet.i32 %1484, 0
  %1486 = and i32 %1485, 512
  %1487 = icmp eq i32 %1486, 0
  br i1 %1487, label %1496, label %1488

; <label>:1488                                    ; preds = %1463
  %1489 = add i32 %62, 496
  %1490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1489, i32 undef)  ; BufferLoad(srv,index,wot)
  %1491 = extractvalue %dx.types.ResRet.i32 %1490, 0
  %1492 = add i32 %1491, 0
  %1493 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1492, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1494 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1493, %dx.types.Handle %117, float %1383, float %1384, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1495 = extractvalue %dx.types.ResRet.f32 %1494, 0
  br label %1496

; <label>:1496                                    ; preds = %1488, %1463
  %1497 = phi float [ %1495, %1488 ], [ 1.000000e+00, %1463 ]
  %1498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1276, i32 undef)  ; BufferLoad(srv,index,wot)
  %1499 = extractvalue %dx.types.ResRet.i32 %1498, 0
  %1500 = and i32 %1499, 33554432
  %1501 = icmp eq i32 %1500, 0
  br i1 %1501, label %1608, label %1502

; <label>:1502                                    ; preds = %1496
  %1503 = add i32 %62, 240
  %1504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1503, i32 undef)  ; BufferLoad(srv,index,wot)
  %1505 = extractvalue %dx.types.ResRet.i32 %1504, 0
  %1506 = and i32 %1505, 65535
  %1507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1506)  ; LegacyF16ToF32(value)
  %1508 = lshr i32 %1505, 16
  %1509 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1508)  ; LegacyF16ToF32(value)
  %1510 = add i32 %62, 244
  %1511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1510, i32 undef)  ; BufferLoad(srv,index,wot)
  %1512 = extractvalue %dx.types.ResRet.i32 %1511, 0
  %1513 = and i32 %1512, 65535
  %1514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1513)  ; LegacyF16ToF32(value)
  %1515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %350, i32 undef)  ; BufferLoad(srv,index,wot)
  %1516 = extractvalue %dx.types.ResRet.i32 %1515, 0
  %1517 = lshr i32 %1516, 24
  %1518 = uitofp i32 %1517 to float
  %1519 = fmul fast float %1518, 0x3F70101020000000
  %1520 = and i32 %1516, 255
  %1521 = uitofp i32 %1520 to float
  %1522 = fmul fast float %1521, 0x3F70101020000000
  %1523 = lshr i32 %1516, 8
  %1524 = and i32 %1523, 255
  %1525 = uitofp i32 %1524 to float
  %1526 = fmul fast float %1525, 0x3F70101020000000
  %1527 = lshr i32 %1516, 16
  %1528 = and i32 %1527, 255
  %1529 = uitofp i32 %1528 to float
  %1530 = fmul fast float %1529, 0x3F70101020000000
  %1531 = add i32 %62, 236
  %1532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1531, i32 undef)  ; BufferLoad(srv,index,wot)
  %1533 = extractvalue %dx.types.ResRet.i32 %1532, 0
  %1534 = lshr i32 %1533, 24
  %1535 = uitofp i32 %1534 to float
  %1536 = fmul fast float %1535, 0x3F70101020000000
  %1537 = and i32 %1533, 255
  %1538 = uitofp i32 %1537 to float
  %1539 = fmul fast float %1538, 0x3F70101020000000
  %1540 = lshr i32 %1533, 8
  %1541 = and i32 %1540, 255
  %1542 = uitofp i32 %1541 to float
  %1543 = fmul fast float %1542, 0x3F70101020000000
  %1544 = lshr i32 %1533, 16
  %1545 = and i32 %1544, 255
  %1546 = uitofp i32 %1545 to float
  %1547 = fmul fast float %1546, 0x3F70101020000000
  %1548 = bitcast float %1472 to i32
  %1549 = ashr i32 %1548, 1
  %1550 = sub nsw i32 1597463174, %1549
  %1551 = bitcast i32 %1550 to float
  %1552 = fmul fast float %1472, 5.000000e-01
  %1553 = fmul fast float %1551, %1551
  %1554 = fmul fast float %1553, %1552
  %1555 = fsub fast float 1.500000e+00, %1554
  %1556 = fmul fast float %1551, %1472
  %1557 = fmul fast float %1556, %1555
  %1558 = bitcast float %1473 to i32
  %1559 = ashr i32 %1558, 1
  %1560 = sub nsw i32 1597463174, %1559
  %1561 = bitcast i32 %1560 to float
  %1562 = fmul fast float %1473, 5.000000e-01
  %1563 = fmul fast float %1561, %1561
  %1564 = fmul fast float %1563, %1562
  %1565 = fsub fast float 1.500000e+00, %1564
  %1566 = fmul fast float %1561, %1473
  %1567 = fmul fast float %1566, %1565
  %1568 = bitcast float %1474 to i32
  %1569 = ashr i32 %1568, 1
  %1570 = sub nsw i32 1597463174, %1569
  %1571 = bitcast i32 %1570 to float
  %1572 = fmul fast float %1474, 5.000000e-01
  %1573 = fmul fast float %1571, %1571
  %1574 = fmul fast float %1573, %1572
  %1575 = fsub fast float 1.500000e+00, %1574
  %1576 = fmul fast float %1571, %1474
  %1577 = fmul fast float %1576, %1575
  %1578 = fsub fast float %1557, %1539
  %1579 = fsub fast float %1567, %1543
  %1580 = fsub fast float %1577, %1547
  %1581 = fmul fast float %1578, %1507
  %1582 = fmul fast float %1579, %1509
  %1583 = fmul fast float %1580, %1514
  %1584 = fadd fast float %1581, %1522
  %1585 = fadd fast float %1582, %1526
  %1586 = fadd fast float %1583, %1530
  %1587 = call float @dx.op.unary.f32(i32 7, float %1584)  ; Saturate(value)
  %1588 = call float @dx.op.unary.f32(i32 7, float %1585)  ; Saturate(value)
  %1589 = call float @dx.op.unary.f32(i32 7, float %1586)  ; Saturate(value)
  %1590 = fmul fast float %1587, %1587
  %1591 = fmul fast float %1588, %1588
  %1592 = fmul fast float %1589, %1589
  %1593 = fsub fast float %1590, %1472
  %1594 = fsub fast float %1591, %1473
  %1595 = fsub fast float %1592, %1474
  %1596 = fmul fast float %1593, %1497
  %1597 = fmul fast float %1594, %1497
  %1598 = fmul fast float %1595, %1497
  %1599 = fadd fast float %1596, %1472
  %1600 = fadd fast float %1597, %1473
  %1601 = fadd fast float %1598, %1474
  %1602 = fadd fast float %1519, %1483
  %1603 = fsub fast float %1602, %1536
  %1604 = call float @dx.op.unary.f32(i32 7, float %1603)  ; Saturate(value)
  %1605 = fsub fast float %1604, %1483
  %1606 = fmul fast float %1605, %1497
  %1607 = fadd fast float %1606, %1483
  br label %1661

; <label>:1608                                    ; preds = %1496
  %1609 = and i32 %1499, 134217728
  %1610 = icmp eq i32 %1609, 0
  br i1 %1610, label %1645, label %1611

; <label>:1611                                    ; preds = %1608
  %1612 = call float @dx.op.unary.f32(i32 24, float %414)  ; Sqrt(value)
  %1613 = call float @dx.op.unary.f32(i32 24, float %415)  ; Sqrt(value)
  %1614 = call float @dx.op.unary.f32(i32 24, float %416)  ; Sqrt(value)
  %1615 = fadd fast float %1612, -5.000000e-01
  %1616 = fadd fast float %1613, -5.000000e-01
  %1617 = fadd fast float %1614, -5.000000e-01
  %1618 = fmul fast float %1615, %1497
  %1619 = fmul fast float %1616, %1497
  %1620 = fmul fast float %1617, %1497
  %1621 = fadd fast float %1618, 5.000000e-01
  %1622 = fadd fast float %1619, 5.000000e-01
  %1623 = fadd fast float %1620, 5.000000e-01
  %1624 = call float @dx.op.unary.f32(i32 24, float %1472)  ; Sqrt(value)
  %1625 = call float @dx.op.unary.f32(i32 24, float %1473)  ; Sqrt(value)
  %1626 = call float @dx.op.unary.f32(i32 24, float %1474)  ; Sqrt(value)
  %1627 = fmul fast float %1621, 2.000000e+00
  %1628 = fsub fast float 1.000000e+00, %1627
  %1629 = fmul fast float %1628, %1624
  %1630 = fadd fast float %1629, %1627
  %1631 = fmul fast float %1630, %1624
  %1632 = fmul fast float %1622, 2.000000e+00
  %1633 = fsub fast float 1.000000e+00, %1632
  %1634 = fmul fast float %1633, %1625
  %1635 = fadd fast float %1634, %1632
  %1636 = fmul fast float %1635, %1625
  %1637 = fmul fast float %1623, 2.000000e+00
  %1638 = fsub fast float 1.000000e+00, %1637
  %1639 = fmul fast float %1638, %1626
  %1640 = fadd fast float %1639, %1637
  %1641 = fmul fast float %1640, %1626
  %1642 = fmul fast float %1631, %1631
  %1643 = fmul fast float %1636, %1636
  %1644 = fmul fast float %1641, %1641
  br label %1661

; <label>:1645                                    ; preds = %1608
  %1646 = fmul fast float %414, %414
  %1647 = fmul fast float %415, %415
  %1648 = fmul fast float %416, %416
  %1649 = fadd fast float %1646, -1.000000e+00
  %1650 = fadd fast float %1647, -1.000000e+00
  %1651 = fadd fast float %1648, -1.000000e+00
  %1652 = fmul fast float %1497, %1649
  %1653 = fmul fast float %1497, %1650
  %1654 = fmul fast float %1497, %1651
  %1655 = fadd fast float %1652, 1.000000e+00
  %1656 = fadd fast float %1653, 1.000000e+00
  %1657 = fadd fast float %1654, 1.000000e+00
  %1658 = fmul fast float %1655, %1472
  %1659 = fmul fast float %1656, %1473
  %1660 = fmul fast float %1657, %1474
  br label %1661

; <label>:1661                                    ; preds = %1645, %1611, %1502, %1458
  %1662 = phi float [ %1607, %1502 ], [ %1483, %1611 ], [ %1483, %1645 ], [ 0x3FA23C0BE0000000, %1458 ]
  %1663 = phi float [ %1599, %1502 ], [ %1642, %1611 ], [ %1658, %1645 ], [ 1.000000e+00, %1458 ]
  %1664 = phi float [ %1600, %1502 ], [ %1643, %1611 ], [ %1659, %1645 ], [ 1.000000e+00, %1458 ]
  %1665 = phi float [ %1601, %1502 ], [ %1644, %1611 ], [ %1660, %1645 ], [ 1.000000e+00, %1458 ]
  %1666 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1667 = extractvalue %dx.types.CBufRet.i32 %1666, 1
  %1668 = and i32 %1667, 1
  %1669 = icmp ne i32 %1668, 0
  %1670 = add i32 %62, 356
  %1671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1670, i32 undef)  ; BufferLoad(srv,index,wot)
  %1672 = extractvalue %dx.types.ResRet.i32 %1671, 0
  %1673 = and i32 %1672, 32
  %1674 = icmp ne i32 %1673, 0
  %1675 = and i1 %1669, %1674
  %1676 = select i1 %1675, float 1.000000e+00, float %1663
  %1677 = select i1 %1675, float 0x3FD3333340000000, float %1664
  %1678 = select i1 %1675, float 0x3FD3333340000000, float %1665
  %1679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1276, i32 undef)  ; BufferLoad(srv,index,wot)
  %1680 = extractvalue %dx.types.ResRet.i32 %1679, 0
  %1681 = and i32 %1680, 32
  %1682 = icmp eq i32 %1681, 0
  br i1 %1682, label %1755, label %1683

; <label>:1683                                    ; preds = %1661
  %1684 = add i32 %62, 108
  %1685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1684, i32 undef)  ; BufferLoad(srv,index,wot)
  %1686 = extractvalue %dx.types.ResRet.i32 %1685, 0
  %1687 = add i32 %62, 428
  %1688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1687, i32 undef)  ; BufferLoad(srv,index,wot)
  %1689 = extractvalue %dx.types.ResRet.i32 %1688, 0
  %1690 = add i32 %1689, 0
  %1691 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1690, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1692 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1691, %dx.types.Handle %116, float %1383, float %1384, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1693 = extractvalue %dx.types.ResRet.f32 %1692, 0
  %1694 = extractvalue %dx.types.ResRet.f32 %1692, 1
  %1695 = extractvalue %dx.types.ResRet.f32 %1692, 2
  %1696 = extractvalue %dx.types.ResRet.f32 %1692, 3
  %1697 = and i32 %1686, 255
  %1698 = uitofp i32 %1697 to float
  %1699 = lshr i32 %1686, 8
  %1700 = and i32 %1699, 255
  %1701 = uitofp i32 %1700 to float
  %1702 = lshr i32 %1686, 16
  %1703 = and i32 %1702, 255
  %1704 = uitofp i32 %1703 to float
  %1705 = fmul fast float %1704, 0x3F70101000000000
  %1706 = fmul fast float %1693, %1698
  %1707 = fadd fast float %1706, %1701
  %1708 = fmul fast float %1707, 0x3F70101000000000
  %1709 = fadd fast float %1694, -5.000000e-01
  %1710 = fadd fast float %1696, -5.000000e-01
  %1711 = fmul fast float %1709, %1705
  %1712 = fmul fast float %1710, %1705
  %1713 = fadd fast float %1711, 5.000000e-01
  %1714 = fadd fast float %1712, 5.000000e-01
  %1715 = fmul fast float %1713, 2.000000e+00
  %1716 = fadd fast float %1715, -1.000000e+00
  %1717 = fmul fast float %1714, 2.000000e+00
  %1718 = fadd fast float %1717, -1.000000e+00
  %1719 = fadd fast float %1716, %1718
  %1720 = fmul fast float %1719, 5.000000e-01
  %1721 = fsub fast float %1716, %1718
  %1722 = fmul fast float %1721, 5.000000e-01
  %1723 = call float @dx.op.unary.f32(i32 6, float %1720)  ; FAbs(value)
  %1724 = fsub fast float 1.000000e+00, %1723
  %1725 = call float @dx.op.unary.f32(i32 6, float %1722)  ; FAbs(value)
  %1726 = fsub fast float %1724, %1725
  %1727 = call float @dx.op.dot3.f32(i32 55, float %1720, float %1722, float %1726, float %1720, float %1722, float %1726)  ; Dot3(ax,ay,az,bx,by,bz)
  %1728 = call float @dx.op.unary.f32(i32 25, float %1727)  ; Rsqrt(value)
  %1729 = fmul fast float %1720, %1728
  %1730 = fmul fast float %1722, %1728
  %1731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1276, i32 undef)  ; BufferLoad(srv,index,wot)
  %1732 = extractvalue %dx.types.ResRet.i32 %1731, 0
  %1733 = and i32 %1732, 67108864
  %1734 = icmp eq i32 %1733, 0
  br i1 %1734, label %1751, label %1735

; <label>:1735                                    ; preds = %1683
  %1736 = add i32 %62, 296
  %1737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1736, i32 undef)  ; BufferLoad(srv,index,wot)
  %1738 = extractvalue %dx.types.ResRet.i32 %1737, 0
  %1739 = and i32 %1738, 65535
  %1740 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1739)  ; LegacyF16ToF32(value)
  %1741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1293, i32 undef)  ; BufferLoad(srv,index,wot)
  %1742 = extractvalue %dx.types.ResRet.i32 %1741, 0
  %1743 = and i32 %1742, 65535
  %1744 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1743)  ; LegacyF16ToF32(value)
  %1745 = lshr i32 %1738, 16
  %1746 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1745)  ; LegacyF16ToF32(value)
  %1747 = fsub fast float %1708, %1746
  %1748 = fmul fast float %1747, %1740
  %1749 = fadd fast float %1748, %1744
  %1750 = call float @dx.op.unary.f32(i32 7, float %1749)  ; Saturate(value)
  br label %1751

; <label>:1751                                    ; preds = %1735, %1683
  %1752 = phi float [ %1750, %1735 ], [ %1708, %1683 ]
  %1753 = call float @dx.op.dot2.f32(i32 54, float %1729, float %1730, float %1287, float %1288)  ; Dot2(ax,ay,bx,by)
  %1754 = call float @dx.op.dot2.f32(i32 54, float %1729, float %1730, float %1289, float %1290)  ; Dot2(ax,ay,bx,by)
  br label %1755

; <label>:1755                                    ; preds = %1751, %1661
  %1756 = phi float [ %1752, %1751 ], [ 0x3FD6666660000000, %1661 ]
  %1757 = phi float [ %1753, %1751 ], [ 0.000000e+00, %1661 ]
  %1758 = phi float [ %1754, %1751 ], [ 0.000000e+00, %1661 ]
  %1759 = phi float [ %1695, %1751 ], [ 1.000000e+00, %1661 ]
  %1760 = add i32 %62, 176
  %1761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %1762 = extractvalue %dx.types.ResRet.i32 %1761, 0
  %1763 = lshr i32 %1762, 22
  %1764 = shl nuw nsw i32 %1763, 5
  %1765 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1764)  ; LegacyF16ToF32(value)
  %1766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1276, i32 undef)  ; BufferLoad(srv,index,wot)
  %1767 = extractvalue %dx.types.ResRet.i32 %1766, 0
  %1768 = and i32 %1767, 64
  %1769 = icmp eq i32 %1768, 0
  br i1 %1769, label %1803, label %1770

; <label>:1770                                    ; preds = %1755
  %1771 = add i32 %62, 444
  %1772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1771, i32 undef)  ; BufferLoad(srv,index,wot)
  %1773 = extractvalue %dx.types.ResRet.i32 %1772, 0
  %1774 = add i32 %1773, 0
  %1775 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1774, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1276, i32 undef)  ; BufferLoad(srv,index,wot)
  %1777 = extractvalue %dx.types.ResRet.i32 %1776, 0
  %1778 = and i32 %1777, 131072
  %1779 = icmp eq i32 %1778, 0
  %1780 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1775, %dx.types.Handle %116, float %1383, float %1384, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1781 = extractvalue %dx.types.ResRet.f32 %1780, 0
  %1782 = extractvalue %dx.types.ResRet.f32 %1780, 1
  %1783 = extractvalue %dx.types.ResRet.f32 %1780, 2
  %1784 = fmul fast float %397, %1781
  %1785 = fmul fast float %398, %1782
  %1786 = fmul fast float %399, %1783
  br i1 %1779, label %1793, label %1787

; <label>:1787                                    ; preds = %1770
  %1788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1789 = extractvalue %dx.types.CBufRet.f32 %1788, 0
  %1790 = fmul fast float %1789, %1784
  %1791 = fmul fast float %1789, %1785
  %1792 = fmul fast float %1789, %1786
  br label %1793

; <label>:1793                                    ; preds = %1787, %1770
  %1794 = phi float [ %1790, %1787 ], [ %1784, %1770 ]
  %1795 = phi float [ %1791, %1787 ], [ %1785, %1770 ]
  %1796 = phi float [ %1792, %1787 ], [ %1786, %1770 ]
  %1797 = fmul fast float %1794, %1765
  %1798 = select i1 %279, float %1797, float %1794
  %1799 = call float @dx.op.dot3.f32(i32 55, float %1798, float %1795, float %1796, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1800 = select i1 %279, float 0.000000e+00, float %1794
  %1801 = select i1 %279, float %1799, float %1795
  %1802 = select i1 %279, float 0.000000e+00, float %1796
  br label %1803

; <label>:1803                                    ; preds = %1793, %1755
  %1804 = phi float [ %1800, %1793 ], [ 0.000000e+00, %1755 ]
  %1805 = phi float [ %1801, %1793 ], [ 0.000000e+00, %1755 ]
  %1806 = phi float [ %1802, %1793 ], [ 0.000000e+00, %1755 ]
  %1807 = add i32 %62, 112
  %1808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %1809 = extractvalue %dx.types.ResRet.i32 %1808, 0
  %1810 = and i32 %1809, 255
  %1811 = uitofp i32 %1810 to float
  %1812 = lshr i32 %1809, 8
  %1813 = and i32 %1812, 255
  %1814 = uitofp i32 %1813 to float
  %1815 = call float @dx.op.dot3.f32(i32 55, float %1676, float %1677, float %1678, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1816 = fmul fast float %1814, %1815
  %1817 = fadd fast float %1816, %1811
  %1818 = fmul fast float %1817, 0x3F70101020000000
  %1819 = call float @dx.op.unary.f32(i32 7, float %1818)  ; Saturate(value)
  br i1 %1275, label %1820, label %1828

; <label>:1820                                    ; preds = %1803
  %1821 = fsub fast float 1.000000e+00, %1456
  %1822 = fmul fast float %1821, %1266
  %1823 = fmul fast float %1821, %1267
  %1824 = fmul fast float %1821, %1268
  %1825 = fmul fast float %1821, %1263
  %1826 = fmul fast float %1821, %1264
  %1827 = fmul fast float %1821, %1265
  br label %1828

; <label>:1828                                    ; preds = %1820, %1803
  %1829 = phi float [ %1825, %1820 ], [ %1263, %1803 ]
  %1830 = phi float [ %1826, %1820 ], [ %1264, %1803 ]
  %1831 = phi float [ %1827, %1820 ], [ %1265, %1803 ]
  %1832 = phi float [ %1822, %1820 ], [ %1266, %1803 ]
  %1833 = phi float [ %1823, %1820 ], [ %1267, %1803 ]
  %1834 = phi float [ %1824, %1820 ], [ %1268, %1803 ]
  %1835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1276, i32 undef)  ; BufferLoad(srv,index,wot)
  %1836 = extractvalue %dx.types.ResRet.i32 %1835, 0
  %1837 = and i32 %1836, 3
  %1838 = icmp eq i32 %1837, 3
  br i1 %1838, label %1917, label %1839

; <label>:1839                                    ; preds = %1828
  %1840 = and i32 %1836, 16
  %1841 = icmp ne i32 %1840, 0
  %1842 = select i1 %1841, float %1456, float 0.000000e+00
  %1843 = icmp eq i32 %1837, 0
  br i1 %1843, label %1844, label %1872

; <label>:1844                                    ; preds = %1839
  %1845 = and i32 %1836, 64
  %1846 = icmp ne i32 %1845, 0
  %1847 = select i1 %1846, float %1456, float 0.000000e+00
  %1848 = fsub fast float %1676, %1832
  %1849 = fsub fast float %1677, %1833
  %1850 = fsub fast float %1678, %1834
  %1851 = fmul fast float %1842, %1848
  %1852 = fmul fast float %1842, %1849
  %1853 = fmul fast float %1842, %1850
  %1854 = fadd fast float %1851, %1832
  %1855 = fadd fast float %1852, %1833
  %1856 = fadd fast float %1853, %1834
  %1857 = fsub fast float %1662, %1269
  %1858 = fmul fast float %1842, %1857
  %1859 = fadd fast float %1858, %1269
  %1860 = fsub fast float %1804, %1829
  %1861 = fsub fast float %1805, %1830
  %1862 = fsub fast float %1806, %1831
  %1863 = fmul fast float %1847, %1860
  %1864 = fmul fast float %1847, %1861
  %1865 = fmul fast float %1847, %1862
  %1866 = fadd fast float %1863, %1829
  %1867 = fadd fast float %1864, %1830
  %1868 = fadd fast float %1865, %1831
  %1869 = fsub fast float %1819, %1273
  %1870 = fmul fast float %1842, %1869
  %1871 = fadd fast float %1870, %1273
  br label %1917

; <label>:1872                                    ; preds = %1839
  %1873 = icmp eq i32 %1837, 1
  br i1 %1873, label %1874, label %1887

; <label>:1874                                    ; preds = %1872
  %1875 = fadd fast float %1676, -1.000000e+00
  %1876 = fadd fast float %1677, -1.000000e+00
  %1877 = fadd fast float %1678, -1.000000e+00
  %1878 = fmul fast float %1842, %1875
  %1879 = fmul fast float %1842, %1876
  %1880 = fmul fast float %1842, %1877
  %1881 = fadd fast float %1878, 1.000000e+00
  %1882 = fadd fast float %1879, 1.000000e+00
  %1883 = fadd fast float %1880, 1.000000e+00
  %1884 = fmul fast float %1881, %1832
  %1885 = fmul fast float %1882, %1833
  %1886 = fmul fast float %1883, %1834
  br label %1917

; <label>:1887                                    ; preds = %1872
  %1888 = icmp eq i32 %1837, 2
  br i1 %1888, label %1889, label %1917

; <label>:1889                                    ; preds = %1887
  %1890 = call float @dx.op.unary.f32(i32 24, float %1676)  ; Sqrt(value)
  %1891 = call float @dx.op.unary.f32(i32 24, float %1677)  ; Sqrt(value)
  %1892 = call float @dx.op.unary.f32(i32 24, float %1678)  ; Sqrt(value)
  %1893 = fadd fast float %1890, -5.000000e-01
  %1894 = fadd fast float %1891, -5.000000e-01
  %1895 = fadd fast float %1892, -5.000000e-01
  %1896 = fmul fast float %1893, %1842
  %1897 = fmul fast float %1894, %1842
  %1898 = fmul fast float %1895, %1842
  %1899 = fadd fast float %1896, 5.000000e-01
  %1900 = fadd fast float %1897, 5.000000e-01
  %1901 = fadd fast float %1898, 5.000000e-01
  %1902 = fmul fast float %1899, 2.000000e+00
  %1903 = fsub fast float 1.000000e+00, %1902
  %1904 = fmul fast float %1903, %1832
  %1905 = fadd fast float %1904, %1902
  %1906 = fmul fast float %1905, %1832
  %1907 = fmul fast float %1900, 2.000000e+00
  %1908 = fsub fast float 1.000000e+00, %1907
  %1909 = fmul fast float %1908, %1833
  %1910 = fadd fast float %1909, %1907
  %1911 = fmul fast float %1910, %1833
  %1912 = fmul fast float %1901, 2.000000e+00
  %1913 = fsub fast float 1.000000e+00, %1912
  %1914 = fmul fast float %1913, %1834
  %1915 = fadd fast float %1914, %1912
  %1916 = fmul fast float %1915, %1834
  br label %1917

; <label>:1917                                    ; preds = %1889, %1887, %1874, %1844, %1828
  %1918 = phi float [ %1829, %1828 ], [ %1829, %1889 ], [ %1829, %1887 ], [ %1829, %1874 ], [ %1866, %1844 ]
  %1919 = phi float [ %1830, %1828 ], [ %1830, %1889 ], [ %1830, %1887 ], [ %1830, %1874 ], [ %1867, %1844 ]
  %1920 = phi float [ %1831, %1828 ], [ %1831, %1889 ], [ %1831, %1887 ], [ %1831, %1874 ], [ %1868, %1844 ]
  %1921 = phi float [ %1832, %1828 ], [ %1906, %1889 ], [ %1832, %1887 ], [ %1884, %1874 ], [ %1854, %1844 ]
  %1922 = phi float [ %1833, %1828 ], [ %1911, %1889 ], [ %1833, %1887 ], [ %1885, %1874 ], [ %1855, %1844 ]
  %1923 = phi float [ %1834, %1828 ], [ %1916, %1889 ], [ %1834, %1887 ], [ %1886, %1874 ], [ %1856, %1844 ]
  %1924 = phi float [ %1269, %1828 ], [ %1269, %1889 ], [ %1269, %1887 ], [ %1269, %1874 ], [ %1859, %1844 ]
  %1925 = phi float [ %1273, %1828 ], [ %1273, %1889 ], [ %1273, %1887 ], [ %1273, %1874 ], [ %1871, %1844 ]
  %1926 = and i32 %1836, 12
  %1927 = icmp eq i32 %1926, 12
  br i1 %1927, label %2000, label %1928

; <label>:1928                                    ; preds = %1917
  %1929 = and i32 %1836, 2097184
  %1930 = icmp eq i32 %1929, 2097184
  %1931 = select i1 %1930, float %1456, float 0.000000e+00
  %1932 = and i32 %1836, 4194336
  %1933 = icmp eq i32 %1932, 4194336
  %1934 = select i1 %1933, float %1456, float 0.000000e+00
  %1935 = and i32 %1836, 8388640
  %1936 = icmp eq i32 %1935, 8388640
  %1937 = select i1 %1936, float %1456, float 0.000000e+00
  %1938 = icmp eq i32 %1926, 0
  br i1 %1938, label %1939, label %1952

; <label>:1939                                    ; preds = %1928
  %1940 = fsub fast float %1757, %1261
  %1941 = fsub fast float %1758, %1262
  %1942 = fmul fast float %1931, %1940
  %1943 = fmul fast float %1931, %1941
  %1944 = fadd fast float %1942, %1261
  %1945 = fadd fast float %1943, %1262
  %1946 = fsub fast float %1759, %1272
  %1947 = fmul fast float %1934, %1946
  %1948 = fadd fast float %1947, %1272
  %1949 = fsub fast float %1756, %1271
  %1950 = fmul fast float %1937, %1949
  %1951 = fadd fast float %1950, %1271
  br label %2000

; <label>:1952                                    ; preds = %1928
  %1953 = icmp eq i32 %1926, 4
  br i1 %1953, label %1954, label %1986

; <label>:1954                                    ; preds = %1952
  %1955 = fmul fast float %1931, %1757
  %1956 = fmul fast float %1931, %1758
  %1957 = fadd fast float %1955, %1261
  %1958 = fadd fast float %1956, %1262
  %1959 = call float @dx.op.binary.f32(i32 36, float %1272, float %1759)  ; FMin(a,b)
  %1960 = fsub fast float %1959, %1272
  %1961 = fmul fast float %1960, %1934
  %1962 = fadd fast float %1961, %1272
  %1963 = fadd fast float %1756, %1271
  %1964 = fmul fast float %1963, 0x3FF337FAE0000000
  %1965 = fmul fast float %1271, %1271
  %1966 = fmul fast float %1756, %1756
  %1967 = fadd fast float %1966, %1965
  %1968 = fmul fast float %1967, 0x3FE5152B00000000
  %1969 = fmul fast float %1271, 0xBFCC1F85E0000000
  %1970 = fmul fast float %1969, %1756
  %1971 = fadd fast float %1970, 0xBFE1363700000000
  %1972 = fadd fast float %1971, %1964
  %1973 = fsub fast float %1972, %1968
  %1974 = fmul fast float %1963, 0x3FBA6F0D00000000
  %1975 = fmul fast float %1967, 0x3FD0432880000000
  %1976 = fmul fast float %1271, 0xBFEF110800000000
  %1977 = fmul fast float %1976, %1756
  %1978 = fadd fast float %1977, 1.000000e+00
  %1979 = fsub fast float %1978, %1974
  %1980 = fadd fast float %1979, %1975
  %1981 = fdiv fast float %1973, %1980
  %1982 = call float @dx.op.unary.f32(i32 7, float %1981)  ; Saturate(value)
  %1983 = fsub fast float %1982, %1271
  %1984 = fmul fast float %1983, %1937
  %1985 = fadd fast float %1984, %1271
  br label %2000

; <label>:1986                                    ; preds = %1952
  %1987 = icmp eq i32 %1926, 8
  br i1 %1987, label %1988, label %2000

; <label>:1988                                    ; preds = %1986
  %1989 = fmul fast float %1931, %1757
  %1990 = fmul fast float %1931, %1758
  %1991 = fadd fast float %1989, %1261
  %1992 = fadd fast float %1990, %1262
  %1993 = call float @dx.op.binary.f32(i32 36, float %1272, float %1759)  ; FMin(a,b)
  %1994 = fsub fast float %1993, %1272
  %1995 = fmul fast float %1994, %1934
  %1996 = fadd fast float %1995, %1272
  %1997 = fsub fast float %1756, %1271
  %1998 = fmul fast float %1937, %1997
  %1999 = fadd fast float %1998, %1271
  br label %2000

; <label>:2000                                    ; preds = %1988, %1986, %1954, %1939, %1917, %1455, %1274, %1260
  %2001 = phi float [ %1261, %1917 ], [ %1261, %1455 ], [ %1261, %1260 ], [ %1991, %1988 ], [ %1261, %1986 ], [ %1957, %1954 ], [ %1944, %1939 ], [ %1261, %1274 ]
  %2002 = phi float [ %1262, %1917 ], [ %1262, %1455 ], [ %1262, %1260 ], [ %1992, %1988 ], [ %1262, %1986 ], [ %1958, %1954 ], [ %1945, %1939 ], [ %1262, %1274 ]
  %2003 = phi float [ %1918, %1917 ], [ %1263, %1455 ], [ %1263, %1260 ], [ %1918, %1988 ], [ %1918, %1986 ], [ %1918, %1954 ], [ %1918, %1939 ], [ %1263, %1274 ]
  %2004 = phi float [ %1919, %1917 ], [ %1264, %1455 ], [ %1264, %1260 ], [ %1919, %1988 ], [ %1919, %1986 ], [ %1919, %1954 ], [ %1919, %1939 ], [ %1264, %1274 ]
  %2005 = phi float [ %1920, %1917 ], [ %1265, %1455 ], [ %1265, %1260 ], [ %1920, %1988 ], [ %1920, %1986 ], [ %1920, %1954 ], [ %1920, %1939 ], [ %1265, %1274 ]
  %2006 = phi float [ %1921, %1917 ], [ %1266, %1455 ], [ %1266, %1260 ], [ %1921, %1988 ], [ %1921, %1986 ], [ %1921, %1954 ], [ %1921, %1939 ], [ %1266, %1274 ]
  %2007 = phi float [ %1922, %1917 ], [ %1267, %1455 ], [ %1267, %1260 ], [ %1922, %1988 ], [ %1922, %1986 ], [ %1922, %1954 ], [ %1922, %1939 ], [ %1267, %1274 ]
  %2008 = phi float [ %1923, %1917 ], [ %1268, %1455 ], [ %1268, %1260 ], [ %1923, %1988 ], [ %1923, %1986 ], [ %1923, %1954 ], [ %1923, %1939 ], [ %1268, %1274 ]
  %2009 = phi float [ %1924, %1917 ], [ %1269, %1455 ], [ %1269, %1260 ], [ %1924, %1988 ], [ %1924, %1986 ], [ %1924, %1954 ], [ %1924, %1939 ], [ %1269, %1274 ]
  %2010 = phi float [ %1271, %1917 ], [ %1271, %1455 ], [ %1271, %1260 ], [ %1999, %1988 ], [ %1271, %1986 ], [ %1985, %1954 ], [ %1951, %1939 ], [ %1271, %1274 ]
  %2011 = phi float [ %1272, %1917 ], [ %1272, %1455 ], [ %1272, %1260 ], [ %1996, %1988 ], [ %1272, %1986 ], [ %1962, %1954 ], [ %1948, %1939 ], [ %1272, %1274 ]
  %2012 = phi float [ %1925, %1917 ], [ %1273, %1455 ], [ %1273, %1260 ], [ %1925, %1988 ], [ %1925, %1986 ], [ %1925, %1954 ], [ %1925, %1939 ], [ %1273, %1274 ]
  br i1 %661, label %2739, label %2013

; <label>:2013                                    ; preds = %2000
  %2014 = icmp ult i32 %717, 3
  %2015 = add i32 %62, 56
  %2016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2015, i32 undef)  ; BufferLoad(srv,index,wot)
  %2017 = extractvalue %dx.types.ResRet.i32 %2016, 0
  %2018 = add i32 %62, 60
  %2019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2018, i32 undef)  ; BufferLoad(srv,index,wot)
  %2020 = extractvalue %dx.types.ResRet.i32 %2019, 0
  %2021 = or i32 %2020, %2017
  %2022 = icmp eq i32 %2021, 0
  br i1 %2022, label %2739, label %2023

; <label>:2023                                    ; preds = %2013
  %2024 = and i32 %2017, 262144
  %2025 = icmp ne i32 %2024, 0
  %2026 = select i1 %2025, float %70, float 1.000000e+00
  %2027 = select i1 %2025, float %71, float 0.000000e+00
  %2028 = select i1 %2025, float %72, float 0.000000e+00
  %2029 = select i1 %2025, float %73, float 1.000000e+00
  %2030 = select i1 %2025, float %74, float %98
  %2031 = select i1 %2025, float %75, float %99
  %2032 = add i32 %62, 316
  %2033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2032, i32 undef)  ; BufferLoad(srv,index,wot)
  %2034 = extractvalue %dx.types.ResRet.i32 %2033, 0
  %2035 = lshr i32 %2034, 16
  %2036 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2035)  ; LegacyF16ToF32(value)
  %2037 = fmul fast float %2036, 0x3F50624DE0000000
  %2038 = add i32 %62, 120
  %2039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2038, i32 undef)  ; BufferLoad(srv,index,wot)
  %2040 = extractvalue %dx.types.ResRet.i32 %2039, 0
  %2041 = lshr i32 %2040, 16
  %2042 = and i32 %2041, 255
  %2043 = lshr i32 %2040, 24
  %2044 = add i32 %62, 324
  %2045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2044, i32 undef)  ; BufferLoad(srv,index,wot)
  %2046 = extractvalue %dx.types.ResRet.i32 %2045, 0
  %2047 = and i32 %2046, 65535
  %2048 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2047)  ; LegacyF16ToF32(value)
  %2049 = lshr i32 %2046, 16
  %2050 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2049)  ; LegacyF16ToF32(value)
  %2051 = add i32 %62, 64
  %2052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2051, i32 undef)  ; BufferLoad(srv,index,wot)
  %2053 = extractvalue %dx.types.ResRet.i32 %2052, 0
  %2054 = lshr i32 %2053, 22
  %2055 = shl nuw nsw i32 %2054, 5
  %2056 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2055)  ; LegacyF16ToF32(value)
  %2057 = shl i32 %2053, 4
  %2058 = and i32 %2057, 32752
  %2059 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2058)  ; LegacyF16ToF32(value)
  %2060 = lshr i32 %2053, 7
  %2061 = and i32 %2060, 32752
  %2062 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2061)  ; LegacyF16ToF32(value)
  %2063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2064 = extractvalue %dx.types.CBufRet.f32 %2063, 3
  %2065 = fmul fast float %2064, 1.000000e+03
  %2066 = fmul fast float %2065, %545
  %2067 = call float @dx.op.unary.f32(i32 22, float %2066)  ; Frc(value)
  %2068 = fadd fast float %2067, %533
  %2069 = fmul fast float %2065, %547
  %2070 = call float @dx.op.unary.f32(i32 22, float %2069)  ; Frc(value)
  %2071 = fadd fast float %2070, %534
  %2072 = fmul fast float %2037, %2065
  %2073 = call float @dx.op.unary.f32(i32 22, float %2072)  ; Frc(value)
  %2074 = fmul fast float %2073, 0x401921FB60000000
  %2075 = fadd fast float %2074, %2056
  %2076 = call float @dx.op.unary.f32(i32 13, float %2075)  ; Sin(value)
  %2077 = call float @dx.op.unary.f32(i32 12, float %2075)  ; Cos(value)
  %2078 = fsub fast float -0.000000e+00, %2076
  %2079 = fadd fast float %2030, -5.000000e-01
  %2080 = fadd fast float %2031, -5.000000e-01
  %2081 = fmul fast float %2048, %2079
  %2082 = fmul fast float %2050, %2080
  %2083 = fadd fast float %2081, 5.000000e-01
  %2084 = fadd fast float %2082, 5.000000e-01
  %2085 = fmul fast float %2059, %2083
  %2086 = fmul fast float %2062, %2084
  %2087 = fmul fast float %2077, %2085
  %2088 = call float @dx.op.tertiary.f32(i32 46, float %2078, float %2086, float %2087)  ; FMad(a,b,c)
  %2089 = fmul fast float %2076, %2085
  %2090 = call float @dx.op.tertiary.f32(i32 46, float %2077, float %2086, float %2089)  ; FMad(a,b,c)
  %2091 = fadd fast float %2068, %2088
  %2092 = fadd fast float %2071, %2090
  %2093 = icmp ugt i32 %2042, 1
  %2094 = icmp ugt i32 %2040, 33554431
  %2095 = or i1 %2094, %2093
  br i1 %2095, label %2096, label %2121

; <label>:2096                                    ; preds = %2023
  %2097 = add i32 %62, 260
  %2098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2097, i32 undef)  ; BufferLoad(srv,index,wot)
  %2099 = extractvalue %dx.types.ResRet.i32 %2098, 0
  %2100 = lshr i32 %2099, 16
  %2101 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2100)  ; LegacyF16ToF32(value)
  %2102 = fmul fast float %2064, %2101
  %2103 = call float @dx.op.unary.f32(i32 22, float %2102)  ; Frc(value)
  %2104 = mul nuw nsw i32 %2042, %2043
  %2105 = uitofp i32 %2104 to float
  %2106 = fmul fast float %2103, %2105
  %2107 = call float @dx.op.unary.f32(i32 27, float %2106)  ; Round_ni(value)
  %2108 = fptoui float %2107 to i32
  %2109 = urem i32 %2108, %2042
  %2110 = udiv i32 %2108, %2043
  %2111 = call float @dx.op.unary.f32(i32 22, float %2091)  ; Frc(value)
  %2112 = call float @dx.op.unary.f32(i32 22, float %2092)  ; Frc(value)
  %2113 = uitofp i32 %2109 to float
  %2114 = uitofp i32 %2110 to float
  %2115 = fadd fast float %2111, %2113
  %2116 = fadd fast float %2112, %2114
  %2117 = uitofp i32 %2042 to float
  %2118 = uitofp i32 %2043 to float
  %2119 = fdiv fast float %2115, %2117
  %2120 = fdiv fast float %2116, %2118
  br label %2121

; <label>:2121                                    ; preds = %2096, %2023
  %2122 = phi float [ %2119, %2096 ], [ %2091, %2023 ]
  %2123 = phi float [ %2120, %2096 ], [ %2092, %2023 ]
  %2124 = and i32 %2017, 256
  %2125 = icmp eq i32 %2124, 0
  br i1 %2125, label %2172, label %2126

; <label>:2126                                    ; preds = %2121
  %2127 = add i32 %62, 480
  %2128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2127, i32 undef)  ; BufferLoad(srv,index,wot)
  %2129 = extractvalue %dx.types.ResRet.i32 %2128, 0
  %2130 = add i32 %2129, 0
  %2131 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2130, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2132 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2131, %dx.types.Handle %117, float %2122, float %2123, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2133 = extractvalue %dx.types.ResRet.f32 %2132, 0
  %2134 = add i32 %62, 132
  %2135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2134, i32 undef)  ; BufferLoad(srv,index,wot)
  %2136 = extractvalue %dx.types.ResRet.i32 %2135, 0
  %2137 = shl i32 %2136, 4
  %2138 = and i32 %2137, 32752
  %2139 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2138)  ; LegacyF16ToF32(value)
  %2140 = lshr i32 %2136, 7
  %2141 = and i32 %2140, 32752
  %2142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2141)  ; LegacyF16ToF32(value)
  %2143 = fsub fast float 1.000000e+00, %713
  %2144 = call float @dx.op.binary.f32(i32 35, float %2143, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2145 = bitcast float %713 to i32
  %2146 = sitofp i32 %2145 to float
  %2147 = fadd fast float %2146, 0xC1CFBF8940000000
  %2148 = fmul fast float %2142, %2147
  %2149 = fadd fast float %2148, 0x41CFBF8940000000
  %2150 = fptosi float %2149 to i32
  %2151 = bitcast i32 %2150 to float
  %2152 = bitcast float %2144 to i32
  %2153 = sitofp i32 %2152 to float
  %2154 = fadd fast float %2153, 0xC1CFBF8940000000
  %2155 = fmul fast float %2154, %2142
  %2156 = fadd fast float %2155, 0x41CFBF8940000000
  %2157 = fptosi float %2156 to i32
  %2158 = bitcast i32 %2157 to float
  %2159 = fmul fast float %2151, %2139
  %2160 = fmul fast float %2158, %2139
  %2161 = fsub fast float %2144, %2159
  %2162 = fadd fast float %2160, %2144
  %2163 = call float @dx.op.unary.f32(i32 7, float %2161)  ; Saturate(value)
  %2164 = call float @dx.op.unary.f32(i32 7, float %2162)  ; Saturate(value)
  %2165 = fsub fast float %2133, %2163
  %2166 = fsub fast float %2164, %2163
  %2167 = bitcast float %2166 to i32
  %2168 = sub nsw i32 2129859010, %2167
  %2169 = bitcast i32 %2168 to float
  %2170 = fmul fast float %2169, %2165
  %2171 = call float @dx.op.unary.f32(i32 7, float %2170)  ; Saturate(value)
  br label %2172

; <label>:2172                                    ; preds = %2126, %2121
  %2173 = phi float [ %2171, %2126 ], [ %713, %2121 ]
  %2174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2015, i32 undef)  ; BufferLoad(srv,index,wot)
  %2175 = extractvalue %dx.types.ResRet.i32 %2174, 0
  %2176 = and i32 %2175, 128
  %2177 = icmp eq i32 %2176, 0
  br i1 %2177, label %2194, label %2178

; <label>:2178                                    ; preds = %2172
  %2179 = add i32 %62, 464
  %2180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2179, i32 undef)  ; BufferLoad(srv,index,wot)
  %2181 = extractvalue %dx.types.ResRet.i32 %2180, 0
  %2182 = add i32 %2181, 0
  %2183 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2182, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2184 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2183, %dx.types.Handle %117, float %2122, float %2123, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2185 = extractvalue %dx.types.ResRet.f32 %2184, 0
  %2186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2015, i32 undef)  ; BufferLoad(srv,index,wot)
  %2187 = extractvalue %dx.types.ResRet.i32 %2186, 0
  %2188 = and i32 %2187, 524288
  %2189 = icmp ne i32 %2188, 0
  %2190 = fcmp fast ogt float %2185, 0x3FE0101020000000
  %2191 = select i1 %2190, float 1.000000e+00, float 0.000000e+00
  %2192 = select i1 %2189, float %2191, float %2185
  %2193 = fmul fast float %2192, %2173
  br label %2194

; <label>:2194                                    ; preds = %2178, %2172
  %2195 = phi float [ %2193, %2178 ], [ %2173, %2172 ]
  %2196 = fcmp fast ult float %2195, 0x3F70101020000000
  br i1 %2196, label %2739, label %2197

; <label>:2197                                    ; preds = %2194
  %2198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2015, i32 undef)  ; BufferLoad(srv,index,wot)
  %2199 = extractvalue %dx.types.ResRet.i32 %2198, 0
  %2200 = and i32 %2199, 16
  %2201 = icmp eq i32 %2200, 0
  br i1 %2201, label %2400, label %2202

; <label>:2202                                    ; preds = %2197
  %2203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2038, i32 undef)  ; BufferLoad(srv,index,wot)
  %2204 = extractvalue %dx.types.ResRet.i32 %2203, 0
  %2205 = add i32 %62, 416
  %2206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2205, i32 undef)  ; BufferLoad(srv,index,wot)
  %2207 = extractvalue %dx.types.ResRet.i32 %2206, 0
  %2208 = add i32 %2207, 0
  %2209 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2208, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2210 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2209, %dx.types.Handle %116, float %2122, float %2123, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2211 = extractvalue %dx.types.ResRet.f32 %2210, 0
  %2212 = extractvalue %dx.types.ResRet.f32 %2210, 1
  %2213 = extractvalue %dx.types.ResRet.f32 %2210, 2
  %2214 = extractvalue %dx.types.ResRet.f32 %2210, 3
  %2215 = and i32 %2204, 255
  %2216 = uitofp i32 %2215 to float
  %2217 = lshr i32 %2204, 8
  %2218 = and i32 %2217, 255
  %2219 = uitofp i32 %2218 to float
  %2220 = fmul fast float %2214, %2216
  %2221 = fadd fast float %2220, %2219
  %2222 = fmul fast float %2221, 0x3F70101000000000
  %2223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2015, i32 undef)  ; BufferLoad(srv,index,wot)
  %2224 = extractvalue %dx.types.ResRet.i32 %2223, 0
  %2225 = and i32 %2224, 512
  %2226 = icmp eq i32 %2225, 0
  br i1 %2226, label %2235, label %2227

; <label>:2227                                    ; preds = %2202
  %2228 = add i32 %62, 500
  %2229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2228, i32 undef)  ; BufferLoad(srv,index,wot)
  %2230 = extractvalue %dx.types.ResRet.i32 %2229, 0
  %2231 = add i32 %2230, 0
  %2232 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2231, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2233 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2232, %dx.types.Handle %117, float %2122, float %2123, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2234 = extractvalue %dx.types.ResRet.f32 %2233, 0
  br label %2235

; <label>:2235                                    ; preds = %2227, %2202
  %2236 = phi float [ %2234, %2227 ], [ 1.000000e+00, %2202 ]
  %2237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2015, i32 undef)  ; BufferLoad(srv,index,wot)
  %2238 = extractvalue %dx.types.ResRet.i32 %2237, 0
  %2239 = and i32 %2238, 33554432
  %2240 = icmp eq i32 %2239, 0
  br i1 %2240, label %2347, label %2241

; <label>:2241                                    ; preds = %2235
  %2242 = add i32 %62, 256
  %2243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2244 = extractvalue %dx.types.ResRet.i32 %2243, 0
  %2245 = and i32 %2244, 65535
  %2246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2245)  ; LegacyF16ToF32(value)
  %2247 = lshr i32 %2244, 16
  %2248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2247)  ; LegacyF16ToF32(value)
  %2249 = add i32 %62, 260
  %2250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2249, i32 undef)  ; BufferLoad(srv,index,wot)
  %2251 = extractvalue %dx.types.ResRet.i32 %2250, 0
  %2252 = and i32 %2251, 65535
  %2253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2252)  ; LegacyF16ToF32(value)
  %2254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %2255 = extractvalue %dx.types.ResRet.i32 %2254, 0
  %2256 = lshr i32 %2255, 24
  %2257 = uitofp i32 %2256 to float
  %2258 = fmul fast float %2257, 0x3F70101020000000
  %2259 = and i32 %2255, 255
  %2260 = uitofp i32 %2259 to float
  %2261 = fmul fast float %2260, 0x3F70101020000000
  %2262 = lshr i32 %2255, 8
  %2263 = and i32 %2262, 255
  %2264 = uitofp i32 %2263 to float
  %2265 = fmul fast float %2264, 0x3F70101020000000
  %2266 = lshr i32 %2255, 16
  %2267 = and i32 %2266, 255
  %2268 = uitofp i32 %2267 to float
  %2269 = fmul fast float %2268, 0x3F70101020000000
  %2270 = add i32 %62, 252
  %2271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2270, i32 undef)  ; BufferLoad(srv,index,wot)
  %2272 = extractvalue %dx.types.ResRet.i32 %2271, 0
  %2273 = lshr i32 %2272, 24
  %2274 = uitofp i32 %2273 to float
  %2275 = fmul fast float %2274, 0x3F70101020000000
  %2276 = and i32 %2272, 255
  %2277 = uitofp i32 %2276 to float
  %2278 = fmul fast float %2277, 0x3F70101020000000
  %2279 = lshr i32 %2272, 8
  %2280 = and i32 %2279, 255
  %2281 = uitofp i32 %2280 to float
  %2282 = fmul fast float %2281, 0x3F70101020000000
  %2283 = lshr i32 %2272, 16
  %2284 = and i32 %2283, 255
  %2285 = uitofp i32 %2284 to float
  %2286 = fmul fast float %2285, 0x3F70101020000000
  %2287 = bitcast float %2211 to i32
  %2288 = ashr i32 %2287, 1
  %2289 = sub nsw i32 1597463174, %2288
  %2290 = bitcast i32 %2289 to float
  %2291 = fmul fast float %2211, 5.000000e-01
  %2292 = fmul fast float %2290, %2290
  %2293 = fmul fast float %2292, %2291
  %2294 = fsub fast float 1.500000e+00, %2293
  %2295 = fmul fast float %2290, %2211
  %2296 = fmul fast float %2295, %2294
  %2297 = bitcast float %2212 to i32
  %2298 = ashr i32 %2297, 1
  %2299 = sub nsw i32 1597463174, %2298
  %2300 = bitcast i32 %2299 to float
  %2301 = fmul fast float %2212, 5.000000e-01
  %2302 = fmul fast float %2300, %2300
  %2303 = fmul fast float %2302, %2301
  %2304 = fsub fast float 1.500000e+00, %2303
  %2305 = fmul fast float %2300, %2212
  %2306 = fmul fast float %2305, %2304
  %2307 = bitcast float %2213 to i32
  %2308 = ashr i32 %2307, 1
  %2309 = sub nsw i32 1597463174, %2308
  %2310 = bitcast i32 %2309 to float
  %2311 = fmul fast float %2213, 5.000000e-01
  %2312 = fmul fast float %2310, %2310
  %2313 = fmul fast float %2312, %2311
  %2314 = fsub fast float 1.500000e+00, %2313
  %2315 = fmul fast float %2310, %2213
  %2316 = fmul fast float %2315, %2314
  %2317 = fsub fast float %2296, %2278
  %2318 = fsub fast float %2306, %2282
  %2319 = fsub fast float %2316, %2286
  %2320 = fmul fast float %2317, %2246
  %2321 = fmul fast float %2318, %2248
  %2322 = fmul fast float %2319, %2253
  %2323 = fadd fast float %2320, %2261
  %2324 = fadd fast float %2321, %2265
  %2325 = fadd fast float %2322, %2269
  %2326 = call float @dx.op.unary.f32(i32 7, float %2323)  ; Saturate(value)
  %2327 = call float @dx.op.unary.f32(i32 7, float %2324)  ; Saturate(value)
  %2328 = call float @dx.op.unary.f32(i32 7, float %2325)  ; Saturate(value)
  %2329 = fmul fast float %2326, %2326
  %2330 = fmul fast float %2327, %2327
  %2331 = fmul fast float %2328, %2328
  %2332 = fsub fast float %2329, %2211
  %2333 = fsub fast float %2330, %2212
  %2334 = fsub fast float %2331, %2213
  %2335 = fmul fast float %2332, %2236
  %2336 = fmul fast float %2333, %2236
  %2337 = fmul fast float %2334, %2236
  %2338 = fadd fast float %2335, %2211
  %2339 = fadd fast float %2336, %2212
  %2340 = fadd fast float %2337, %2213
  %2341 = fadd fast float %2258, %2222
  %2342 = fsub fast float %2341, %2275
  %2343 = call float @dx.op.unary.f32(i32 7, float %2342)  ; Saturate(value)
  %2344 = fsub fast float %2343, %2222
  %2345 = fmul fast float %2344, %2236
  %2346 = fadd fast float %2345, %2222
  br label %2400

; <label>:2347                                    ; preds = %2235
  %2348 = and i32 %2238, 134217728
  %2349 = icmp eq i32 %2348, 0
  br i1 %2349, label %2384, label %2350

; <label>:2350                                    ; preds = %2347
  %2351 = call float @dx.op.unary.f32(i32 24, float %521)  ; Sqrt(value)
  %2352 = call float @dx.op.unary.f32(i32 24, float %522)  ; Sqrt(value)
  %2353 = call float @dx.op.unary.f32(i32 24, float %523)  ; Sqrt(value)
  %2354 = fadd fast float %2351, -5.000000e-01
  %2355 = fadd fast float %2352, -5.000000e-01
  %2356 = fadd fast float %2353, -5.000000e-01
  %2357 = fmul fast float %2354, %2236
  %2358 = fmul fast float %2355, %2236
  %2359 = fmul fast float %2356, %2236
  %2360 = fadd fast float %2357, 5.000000e-01
  %2361 = fadd fast float %2358, 5.000000e-01
  %2362 = fadd fast float %2359, 5.000000e-01
  %2363 = call float @dx.op.unary.f32(i32 24, float %2211)  ; Sqrt(value)
  %2364 = call float @dx.op.unary.f32(i32 24, float %2212)  ; Sqrt(value)
  %2365 = call float @dx.op.unary.f32(i32 24, float %2213)  ; Sqrt(value)
  %2366 = fmul fast float %2360, 2.000000e+00
  %2367 = fsub fast float 1.000000e+00, %2366
  %2368 = fmul fast float %2367, %2363
  %2369 = fadd fast float %2368, %2366
  %2370 = fmul fast float %2369, %2363
  %2371 = fmul fast float %2361, 2.000000e+00
  %2372 = fsub fast float 1.000000e+00, %2371
  %2373 = fmul fast float %2372, %2364
  %2374 = fadd fast float %2373, %2371
  %2375 = fmul fast float %2374, %2364
  %2376 = fmul fast float %2362, 2.000000e+00
  %2377 = fsub fast float 1.000000e+00, %2376
  %2378 = fmul fast float %2377, %2365
  %2379 = fadd fast float %2378, %2376
  %2380 = fmul fast float %2379, %2365
  %2381 = fmul fast float %2370, %2370
  %2382 = fmul fast float %2375, %2375
  %2383 = fmul fast float %2380, %2380
  br label %2400

; <label>:2384                                    ; preds = %2347
  %2385 = fmul fast float %521, %521
  %2386 = fmul fast float %522, %522
  %2387 = fmul fast float %523, %523
  %2388 = fadd fast float %2385, -1.000000e+00
  %2389 = fadd fast float %2386, -1.000000e+00
  %2390 = fadd fast float %2387, -1.000000e+00
  %2391 = fmul fast float %2236, %2388
  %2392 = fmul fast float %2236, %2389
  %2393 = fmul fast float %2236, %2390
  %2394 = fadd fast float %2391, 1.000000e+00
  %2395 = fadd fast float %2392, 1.000000e+00
  %2396 = fadd fast float %2393, 1.000000e+00
  %2397 = fmul fast float %2394, %2211
  %2398 = fmul fast float %2395, %2212
  %2399 = fmul fast float %2396, %2213
  br label %2400

; <label>:2400                                    ; preds = %2384, %2350, %2241, %2197
  %2401 = phi float [ %2346, %2241 ], [ %2222, %2350 ], [ %2222, %2384 ], [ 0x3FA23C0BE0000000, %2197 ]
  %2402 = phi float [ %2338, %2241 ], [ %2381, %2350 ], [ %2397, %2384 ], [ 1.000000e+00, %2197 ]
  %2403 = phi float [ %2339, %2241 ], [ %2382, %2350 ], [ %2398, %2384 ], [ 1.000000e+00, %2197 ]
  %2404 = phi float [ %2340, %2241 ], [ %2383, %2350 ], [ %2399, %2384 ], [ 1.000000e+00, %2197 ]
  %2405 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2406 = extractvalue %dx.types.CBufRet.i32 %2405, 1
  %2407 = and i32 %2406, 1
  %2408 = icmp ne i32 %2407, 0
  %2409 = add i32 %62, 356
  %2410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2409, i32 undef)  ; BufferLoad(srv,index,wot)
  %2411 = extractvalue %dx.types.ResRet.i32 %2410, 0
  %2412 = and i32 %2411, 32
  %2413 = icmp ne i32 %2412, 0
  %2414 = and i1 %2408, %2413
  %2415 = select i1 %2414, float 1.000000e+00, float %2402
  %2416 = select i1 %2414, float 0x3FD3333340000000, float %2403
  %2417 = select i1 %2414, float 0x3FD3333340000000, float %2404
  %2418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2015, i32 undef)  ; BufferLoad(srv,index,wot)
  %2419 = extractvalue %dx.types.ResRet.i32 %2418, 0
  %2420 = and i32 %2419, 32
  %2421 = icmp eq i32 %2420, 0
  br i1 %2421, label %2494, label %2422

; <label>:2422                                    ; preds = %2400
  %2423 = add i32 %62, 124
  %2424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2423, i32 undef)  ; BufferLoad(srv,index,wot)
  %2425 = extractvalue %dx.types.ResRet.i32 %2424, 0
  %2426 = add i32 %62, 432
  %2427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2426, i32 undef)  ; BufferLoad(srv,index,wot)
  %2428 = extractvalue %dx.types.ResRet.i32 %2427, 0
  %2429 = add i32 %2428, 0
  %2430 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2429, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2431 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2430, %dx.types.Handle %116, float %2122, float %2123, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2432 = extractvalue %dx.types.ResRet.f32 %2431, 0
  %2433 = extractvalue %dx.types.ResRet.f32 %2431, 1
  %2434 = extractvalue %dx.types.ResRet.f32 %2431, 2
  %2435 = extractvalue %dx.types.ResRet.f32 %2431, 3
  %2436 = and i32 %2425, 255
  %2437 = uitofp i32 %2436 to float
  %2438 = lshr i32 %2425, 8
  %2439 = and i32 %2438, 255
  %2440 = uitofp i32 %2439 to float
  %2441 = lshr i32 %2425, 16
  %2442 = and i32 %2441, 255
  %2443 = uitofp i32 %2442 to float
  %2444 = fmul fast float %2443, 0x3F70101000000000
  %2445 = fmul fast float %2432, %2437
  %2446 = fadd fast float %2445, %2440
  %2447 = fmul fast float %2446, 0x3F70101000000000
  %2448 = fadd fast float %2433, -5.000000e-01
  %2449 = fadd fast float %2435, -5.000000e-01
  %2450 = fmul fast float %2448, %2444
  %2451 = fmul fast float %2449, %2444
  %2452 = fadd fast float %2450, 5.000000e-01
  %2453 = fadd fast float %2451, 5.000000e-01
  %2454 = fmul fast float %2452, 2.000000e+00
  %2455 = fadd fast float %2454, -1.000000e+00
  %2456 = fmul fast float %2453, 2.000000e+00
  %2457 = fadd fast float %2456, -1.000000e+00
  %2458 = fadd fast float %2455, %2457
  %2459 = fmul fast float %2458, 5.000000e-01
  %2460 = fsub fast float %2455, %2457
  %2461 = fmul fast float %2460, 5.000000e-01
  %2462 = call float @dx.op.unary.f32(i32 6, float %2459)  ; FAbs(value)
  %2463 = fsub fast float 1.000000e+00, %2462
  %2464 = call float @dx.op.unary.f32(i32 6, float %2461)  ; FAbs(value)
  %2465 = fsub fast float %2463, %2464
  %2466 = call float @dx.op.dot3.f32(i32 55, float %2459, float %2461, float %2465, float %2459, float %2461, float %2465)  ; Dot3(ax,ay,az,bx,by,bz)
  %2467 = call float @dx.op.unary.f32(i32 25, float %2466)  ; Rsqrt(value)
  %2468 = fmul fast float %2459, %2467
  %2469 = fmul fast float %2461, %2467
  %2470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2015, i32 undef)  ; BufferLoad(srv,index,wot)
  %2471 = extractvalue %dx.types.ResRet.i32 %2470, 0
  %2472 = and i32 %2471, 67108864
  %2473 = icmp eq i32 %2472, 0
  br i1 %2473, label %2490, label %2474

; <label>:2474                                    ; preds = %2422
  %2475 = add i32 %62, 312
  %2476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2475, i32 undef)  ; BufferLoad(srv,index,wot)
  %2477 = extractvalue %dx.types.ResRet.i32 %2476, 0
  %2478 = and i32 %2477, 65535
  %2479 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2478)  ; LegacyF16ToF32(value)
  %2480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2032, i32 undef)  ; BufferLoad(srv,index,wot)
  %2481 = extractvalue %dx.types.ResRet.i32 %2480, 0
  %2482 = and i32 %2481, 65535
  %2483 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2482)  ; LegacyF16ToF32(value)
  %2484 = lshr i32 %2477, 16
  %2485 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2484)  ; LegacyF16ToF32(value)
  %2486 = fsub fast float %2447, %2485
  %2487 = fmul fast float %2486, %2479
  %2488 = fadd fast float %2487, %2483
  %2489 = call float @dx.op.unary.f32(i32 7, float %2488)  ; Saturate(value)
  br label %2490

; <label>:2490                                    ; preds = %2474, %2422
  %2491 = phi float [ %2489, %2474 ], [ %2447, %2422 ]
  %2492 = call float @dx.op.dot2.f32(i32 54, float %2468, float %2469, float %2026, float %2027)  ; Dot2(ax,ay,bx,by)
  %2493 = call float @dx.op.dot2.f32(i32 54, float %2468, float %2469, float %2028, float %2029)  ; Dot2(ax,ay,bx,by)
  br label %2494

; <label>:2494                                    ; preds = %2490, %2400
  %2495 = phi float [ %2491, %2490 ], [ 0x3FD6666660000000, %2400 ]
  %2496 = phi float [ %2492, %2490 ], [ 0.000000e+00, %2400 ]
  %2497 = phi float [ %2493, %2490 ], [ 0.000000e+00, %2400 ]
  %2498 = phi float [ %2434, %2490 ], [ 1.000000e+00, %2400 ]
  %2499 = add i32 %62, 192
  %2500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2499, i32 undef)  ; BufferLoad(srv,index,wot)
  %2501 = extractvalue %dx.types.ResRet.i32 %2500, 0
  %2502 = lshr i32 %2501, 22
  %2503 = shl nuw nsw i32 %2502, 5
  %2504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2503)  ; LegacyF16ToF32(value)
  %2505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2015, i32 undef)  ; BufferLoad(srv,index,wot)
  %2506 = extractvalue %dx.types.ResRet.i32 %2505, 0
  %2507 = and i32 %2506, 64
  %2508 = icmp eq i32 %2507, 0
  br i1 %2508, label %2542, label %2509

; <label>:2509                                    ; preds = %2494
  %2510 = add i32 %62, 448
  %2511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2510, i32 undef)  ; BufferLoad(srv,index,wot)
  %2512 = extractvalue %dx.types.ResRet.i32 %2511, 0
  %2513 = add i32 %2512, 0
  %2514 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2513, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2015, i32 undef)  ; BufferLoad(srv,index,wot)
  %2516 = extractvalue %dx.types.ResRet.i32 %2515, 0
  %2517 = and i32 %2516, 131072
  %2518 = icmp eq i32 %2517, 0
  %2519 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2514, %dx.types.Handle %116, float %2122, float %2123, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2520 = extractvalue %dx.types.ResRet.f32 %2519, 0
  %2521 = extractvalue %dx.types.ResRet.f32 %2519, 1
  %2522 = extractvalue %dx.types.ResRet.f32 %2519, 2
  %2523 = fmul fast float %504, %2520
  %2524 = fmul fast float %505, %2521
  %2525 = fmul fast float %506, %2522
  br i1 %2518, label %2532, label %2526

; <label>:2526                                    ; preds = %2509
  %2527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2528 = extractvalue %dx.types.CBufRet.f32 %2527, 0
  %2529 = fmul fast float %2528, %2523
  %2530 = fmul fast float %2528, %2524
  %2531 = fmul fast float %2528, %2525
  br label %2532

; <label>:2532                                    ; preds = %2526, %2509
  %2533 = phi float [ %2529, %2526 ], [ %2523, %2509 ]
  %2534 = phi float [ %2530, %2526 ], [ %2524, %2509 ]
  %2535 = phi float [ %2531, %2526 ], [ %2525, %2509 ]
  %2536 = fmul fast float %2533, %2504
  %2537 = select i1 %279, float %2536, float %2533
  %2538 = call float @dx.op.dot3.f32(i32 55, float %2537, float %2534, float %2535, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2539 = select i1 %279, float 0.000000e+00, float %2533
  %2540 = select i1 %279, float %2538, float %2534
  %2541 = select i1 %279, float 0.000000e+00, float %2535
  br label %2542

; <label>:2542                                    ; preds = %2532, %2494
  %2543 = phi float [ %2539, %2532 ], [ 0.000000e+00, %2494 ]
  %2544 = phi float [ %2540, %2532 ], [ 0.000000e+00, %2494 ]
  %2545 = phi float [ %2541, %2532 ], [ 0.000000e+00, %2494 ]
  %2546 = add i32 %62, 128
  %2547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2546, i32 undef)  ; BufferLoad(srv,index,wot)
  %2548 = extractvalue %dx.types.ResRet.i32 %2547, 0
  %2549 = and i32 %2548, 255
  %2550 = uitofp i32 %2549 to float
  %2551 = lshr i32 %2548, 8
  %2552 = and i32 %2551, 255
  %2553 = uitofp i32 %2552 to float
  %2554 = call float @dx.op.dot3.f32(i32 55, float %2415, float %2416, float %2417, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2555 = fmul fast float %2553, %2554
  %2556 = fadd fast float %2555, %2550
  %2557 = fmul fast float %2556, 0x3F70101020000000
  %2558 = call float @dx.op.unary.f32(i32 7, float %2557)  ; Saturate(value)
  br i1 %2014, label %2559, label %2567

; <label>:2559                                    ; preds = %2542
  %2560 = fsub fast float 1.000000e+00, %2195
  %2561 = fmul fast float %2560, %2006
  %2562 = fmul fast float %2560, %2007
  %2563 = fmul fast float %2560, %2008
  %2564 = fmul fast float %2560, %2003
  %2565 = fmul fast float %2560, %2004
  %2566 = fmul fast float %2560, %2005
  br label %2567

; <label>:2567                                    ; preds = %2559, %2542
  %2568 = phi float [ %2564, %2559 ], [ %2003, %2542 ]
  %2569 = phi float [ %2565, %2559 ], [ %2004, %2542 ]
  %2570 = phi float [ %2566, %2559 ], [ %2005, %2542 ]
  %2571 = phi float [ %2561, %2559 ], [ %2006, %2542 ]
  %2572 = phi float [ %2562, %2559 ], [ %2007, %2542 ]
  %2573 = phi float [ %2563, %2559 ], [ %2008, %2542 ]
  %2574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2015, i32 undef)  ; BufferLoad(srv,index,wot)
  %2575 = extractvalue %dx.types.ResRet.i32 %2574, 0
  %2576 = and i32 %2575, 3
  %2577 = icmp eq i32 %2576, 3
  br i1 %2577, label %2656, label %2578

; <label>:2578                                    ; preds = %2567
  %2579 = and i32 %2575, 16
  %2580 = icmp ne i32 %2579, 0
  %2581 = select i1 %2580, float %2195, float 0.000000e+00
  %2582 = icmp eq i32 %2576, 0
  br i1 %2582, label %2583, label %2611

; <label>:2583                                    ; preds = %2578
  %2584 = and i32 %2575, 64
  %2585 = icmp ne i32 %2584, 0
  %2586 = select i1 %2585, float %2195, float 0.000000e+00
  %2587 = fsub fast float %2415, %2571
  %2588 = fsub fast float %2416, %2572
  %2589 = fsub fast float %2417, %2573
  %2590 = fmul fast float %2581, %2587
  %2591 = fmul fast float %2581, %2588
  %2592 = fmul fast float %2581, %2589
  %2593 = fadd fast float %2590, %2571
  %2594 = fadd fast float %2591, %2572
  %2595 = fadd fast float %2592, %2573
  %2596 = fsub fast float %2401, %2009
  %2597 = fmul fast float %2581, %2596
  %2598 = fadd fast float %2597, %2009
  %2599 = fsub fast float %2543, %2568
  %2600 = fsub fast float %2544, %2569
  %2601 = fsub fast float %2545, %2570
  %2602 = fmul fast float %2586, %2599
  %2603 = fmul fast float %2586, %2600
  %2604 = fmul fast float %2586, %2601
  %2605 = fadd fast float %2602, %2568
  %2606 = fadd fast float %2603, %2569
  %2607 = fadd fast float %2604, %2570
  %2608 = fsub fast float %2558, %2012
  %2609 = fmul fast float %2581, %2608
  %2610 = fadd fast float %2609, %2012
  br label %2656

; <label>:2611                                    ; preds = %2578
  %2612 = icmp eq i32 %2576, 1
  br i1 %2612, label %2613, label %2626

; <label>:2613                                    ; preds = %2611
  %2614 = fadd fast float %2415, -1.000000e+00
  %2615 = fadd fast float %2416, -1.000000e+00
  %2616 = fadd fast float %2417, -1.000000e+00
  %2617 = fmul fast float %2581, %2614
  %2618 = fmul fast float %2581, %2615
  %2619 = fmul fast float %2581, %2616
  %2620 = fadd fast float %2617, 1.000000e+00
  %2621 = fadd fast float %2618, 1.000000e+00
  %2622 = fadd fast float %2619, 1.000000e+00
  %2623 = fmul fast float %2620, %2571
  %2624 = fmul fast float %2621, %2572
  %2625 = fmul fast float %2622, %2573
  br label %2656

; <label>:2626                                    ; preds = %2611
  %2627 = icmp eq i32 %2576, 2
  br i1 %2627, label %2628, label %2656

; <label>:2628                                    ; preds = %2626
  %2629 = call float @dx.op.unary.f32(i32 24, float %2415)  ; Sqrt(value)
  %2630 = call float @dx.op.unary.f32(i32 24, float %2416)  ; Sqrt(value)
  %2631 = call float @dx.op.unary.f32(i32 24, float %2417)  ; Sqrt(value)
  %2632 = fadd fast float %2629, -5.000000e-01
  %2633 = fadd fast float %2630, -5.000000e-01
  %2634 = fadd fast float %2631, -5.000000e-01
  %2635 = fmul fast float %2632, %2581
  %2636 = fmul fast float %2633, %2581
  %2637 = fmul fast float %2634, %2581
  %2638 = fadd fast float %2635, 5.000000e-01
  %2639 = fadd fast float %2636, 5.000000e-01
  %2640 = fadd fast float %2637, 5.000000e-01
  %2641 = fmul fast float %2638, 2.000000e+00
  %2642 = fsub fast float 1.000000e+00, %2641
  %2643 = fmul fast float %2642, %2571
  %2644 = fadd fast float %2643, %2641
  %2645 = fmul fast float %2644, %2571
  %2646 = fmul fast float %2639, 2.000000e+00
  %2647 = fsub fast float 1.000000e+00, %2646
  %2648 = fmul fast float %2647, %2572
  %2649 = fadd fast float %2648, %2646
  %2650 = fmul fast float %2649, %2572
  %2651 = fmul fast float %2640, 2.000000e+00
  %2652 = fsub fast float 1.000000e+00, %2651
  %2653 = fmul fast float %2652, %2573
  %2654 = fadd fast float %2653, %2651
  %2655 = fmul fast float %2654, %2573
  br label %2656

; <label>:2656                                    ; preds = %2628, %2626, %2613, %2583, %2567
  %2657 = phi float [ %2568, %2567 ], [ %2568, %2628 ], [ %2568, %2626 ], [ %2568, %2613 ], [ %2605, %2583 ]
  %2658 = phi float [ %2569, %2567 ], [ %2569, %2628 ], [ %2569, %2626 ], [ %2569, %2613 ], [ %2606, %2583 ]
  %2659 = phi float [ %2570, %2567 ], [ %2570, %2628 ], [ %2570, %2626 ], [ %2570, %2613 ], [ %2607, %2583 ]
  %2660 = phi float [ %2571, %2567 ], [ %2645, %2628 ], [ %2571, %2626 ], [ %2623, %2613 ], [ %2593, %2583 ]
  %2661 = phi float [ %2572, %2567 ], [ %2650, %2628 ], [ %2572, %2626 ], [ %2624, %2613 ], [ %2594, %2583 ]
  %2662 = phi float [ %2573, %2567 ], [ %2655, %2628 ], [ %2573, %2626 ], [ %2625, %2613 ], [ %2595, %2583 ]
  %2663 = phi float [ %2009, %2567 ], [ %2009, %2628 ], [ %2009, %2626 ], [ %2009, %2613 ], [ %2598, %2583 ]
  %2664 = phi float [ %2012, %2567 ], [ %2012, %2628 ], [ %2012, %2626 ], [ %2012, %2613 ], [ %2610, %2583 ]
  %2665 = and i32 %2575, 12
  %2666 = icmp eq i32 %2665, 12
  br i1 %2666, label %2739, label %2667

; <label>:2667                                    ; preds = %2656
  %2668 = and i32 %2575, 2097184
  %2669 = icmp eq i32 %2668, 2097184
  %2670 = select i1 %2669, float %2195, float 0.000000e+00
  %2671 = and i32 %2575, 4194336
  %2672 = icmp eq i32 %2671, 4194336
  %2673 = select i1 %2672, float %2195, float 0.000000e+00
  %2674 = and i32 %2575, 8388640
  %2675 = icmp eq i32 %2674, 8388640
  %2676 = select i1 %2675, float %2195, float 0.000000e+00
  %2677 = icmp eq i32 %2665, 0
  br i1 %2677, label %2678, label %2691

; <label>:2678                                    ; preds = %2667
  %2679 = fsub fast float %2496, %2001
  %2680 = fsub fast float %2497, %2002
  %2681 = fmul fast float %2670, %2679
  %2682 = fmul fast float %2670, %2680
  %2683 = fadd fast float %2681, %2001
  %2684 = fadd fast float %2682, %2002
  %2685 = fsub fast float %2498, %2011
  %2686 = fmul fast float %2673, %2685
  %2687 = fadd fast float %2686, %2011
  %2688 = fsub fast float %2495, %2010
  %2689 = fmul fast float %2676, %2688
  %2690 = fadd fast float %2689, %2010
  br label %2739

; <label>:2691                                    ; preds = %2667
  %2692 = icmp eq i32 %2665, 4
  br i1 %2692, label %2693, label %2725

; <label>:2693                                    ; preds = %2691
  %2694 = fmul fast float %2670, %2496
  %2695 = fmul fast float %2670, %2497
  %2696 = fadd fast float %2694, %2001
  %2697 = fadd fast float %2695, %2002
  %2698 = call float @dx.op.binary.f32(i32 36, float %2011, float %2498)  ; FMin(a,b)
  %2699 = fsub fast float %2698, %2011
  %2700 = fmul fast float %2699, %2673
  %2701 = fadd fast float %2700, %2011
  %2702 = fadd fast float %2495, %2010
  %2703 = fmul fast float %2702, 0x3FF337FAE0000000
  %2704 = fmul fast float %2010, %2010
  %2705 = fmul fast float %2495, %2495
  %2706 = fadd fast float %2705, %2704
  %2707 = fmul fast float %2706, 0x3FE5152B00000000
  %2708 = fmul fast float %2010, 0xBFCC1F85E0000000
  %2709 = fmul fast float %2708, %2495
  %2710 = fadd fast float %2709, 0xBFE1363700000000
  %2711 = fadd fast float %2710, %2703
  %2712 = fsub fast float %2711, %2707
  %2713 = fmul fast float %2702, 0x3FBA6F0D00000000
  %2714 = fmul fast float %2706, 0x3FD0432880000000
  %2715 = fmul fast float %2010, 0xBFEF110800000000
  %2716 = fmul fast float %2715, %2495
  %2717 = fadd fast float %2716, 1.000000e+00
  %2718 = fsub fast float %2717, %2713
  %2719 = fadd fast float %2718, %2714
  %2720 = fdiv fast float %2712, %2719
  %2721 = call float @dx.op.unary.f32(i32 7, float %2720)  ; Saturate(value)
  %2722 = fsub fast float %2721, %2010
  %2723 = fmul fast float %2722, %2676
  %2724 = fadd fast float %2723, %2010
  br label %2739

; <label>:2725                                    ; preds = %2691
  %2726 = icmp eq i32 %2665, 8
  br i1 %2726, label %2727, label %2739

; <label>:2727                                    ; preds = %2725
  %2728 = fmul fast float %2670, %2496
  %2729 = fmul fast float %2670, %2497
  %2730 = fadd fast float %2728, %2001
  %2731 = fadd fast float %2729, %2002
  %2732 = call float @dx.op.binary.f32(i32 36, float %2011, float %2498)  ; FMin(a,b)
  %2733 = fsub fast float %2732, %2011
  %2734 = fmul fast float %2733, %2673
  %2735 = fadd fast float %2734, %2011
  %2736 = fsub fast float %2495, %2010
  %2737 = fmul fast float %2676, %2736
  %2738 = fadd fast float %2737, %2010
  br label %2739

; <label>:2739                                    ; preds = %2727, %2725, %2693, %2678, %2656, %2194, %2013, %2000
  %2740 = phi float [ %2001, %2656 ], [ %2001, %2194 ], [ %2001, %2000 ], [ %2730, %2727 ], [ %2001, %2725 ], [ %2696, %2693 ], [ %2683, %2678 ], [ %2001, %2013 ]
  %2741 = phi float [ %2002, %2656 ], [ %2002, %2194 ], [ %2002, %2000 ], [ %2731, %2727 ], [ %2002, %2725 ], [ %2697, %2693 ], [ %2684, %2678 ], [ %2002, %2013 ]
  %2742 = phi float [ %2657, %2656 ], [ %2003, %2194 ], [ %2003, %2000 ], [ %2657, %2727 ], [ %2657, %2725 ], [ %2657, %2693 ], [ %2657, %2678 ], [ %2003, %2013 ]
  %2743 = phi float [ %2658, %2656 ], [ %2004, %2194 ], [ %2004, %2000 ], [ %2658, %2727 ], [ %2658, %2725 ], [ %2658, %2693 ], [ %2658, %2678 ], [ %2004, %2013 ]
  %2744 = phi float [ %2659, %2656 ], [ %2005, %2194 ], [ %2005, %2000 ], [ %2659, %2727 ], [ %2659, %2725 ], [ %2659, %2693 ], [ %2659, %2678 ], [ %2005, %2013 ]
  %2745 = phi float [ %2660, %2656 ], [ %2006, %2194 ], [ %2006, %2000 ], [ %2660, %2727 ], [ %2660, %2725 ], [ %2660, %2693 ], [ %2660, %2678 ], [ %2006, %2013 ]
  %2746 = phi float [ %2661, %2656 ], [ %2007, %2194 ], [ %2007, %2000 ], [ %2661, %2727 ], [ %2661, %2725 ], [ %2661, %2693 ], [ %2661, %2678 ], [ %2007, %2013 ]
  %2747 = phi float [ %2662, %2656 ], [ %2008, %2194 ], [ %2008, %2000 ], [ %2662, %2727 ], [ %2662, %2725 ], [ %2662, %2693 ], [ %2662, %2678 ], [ %2008, %2013 ]
  %2748 = phi float [ %2663, %2656 ], [ %2009, %2194 ], [ %2009, %2000 ], [ %2663, %2727 ], [ %2663, %2725 ], [ %2663, %2693 ], [ %2663, %2678 ], [ %2009, %2013 ]
  %2749 = phi float [ %2010, %2656 ], [ %2010, %2194 ], [ %2010, %2000 ], [ %2738, %2727 ], [ %2010, %2725 ], [ %2724, %2693 ], [ %2690, %2678 ], [ %2010, %2013 ]
  %2750 = phi float [ %2011, %2656 ], [ %2011, %2194 ], [ %2011, %2000 ], [ %2735, %2727 ], [ %2011, %2725 ], [ %2701, %2693 ], [ %2687, %2678 ], [ %2011, %2013 ]
  %2751 = phi float [ %2664, %2656 ], [ %2012, %2194 ], [ %2012, %2000 ], [ %2664, %2727 ], [ %2664, %2725 ], [ %2664, %2693 ], [ %2664, %2678 ], [ %2012, %2013 ]
  br i1 %663, label %3478, label %2752

; <label>:2752                                    ; preds = %2739
  %2753 = icmp ult i32 %717, 4
  %2754 = add i32 %62, 72
  %2755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2754, i32 undef)  ; BufferLoad(srv,index,wot)
  %2756 = extractvalue %dx.types.ResRet.i32 %2755, 0
  %2757 = add i32 %62, 76
  %2758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2757, i32 undef)  ; BufferLoad(srv,index,wot)
  %2759 = extractvalue %dx.types.ResRet.i32 %2758, 0
  %2760 = or i32 %2759, %2756
  %2761 = icmp eq i32 %2760, 0
  br i1 %2761, label %3478, label %2762

; <label>:2762                                    ; preds = %2752
  %2763 = and i32 %2756, 262144
  %2764 = icmp ne i32 %2763, 0
  %2765 = select i1 %2764, float %70, float 1.000000e+00
  %2766 = select i1 %2764, float %71, float 0.000000e+00
  %2767 = select i1 %2764, float %72, float 0.000000e+00
  %2768 = select i1 %2764, float %73, float 1.000000e+00
  %2769 = select i1 %2764, float %74, float %98
  %2770 = select i1 %2764, float %75, float %99
  %2771 = add i32 %62, 332
  %2772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2771, i32 undef)  ; BufferLoad(srv,index,wot)
  %2773 = extractvalue %dx.types.ResRet.i32 %2772, 0
  %2774 = lshr i32 %2773, 16
  %2775 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2774)  ; LegacyF16ToF32(value)
  %2776 = fmul fast float %2775, 0x3F50624DE0000000
  %2777 = add i32 %62, 136
  %2778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2777, i32 undef)  ; BufferLoad(srv,index,wot)
  %2779 = extractvalue %dx.types.ResRet.i32 %2778, 0
  %2780 = lshr i32 %2779, 16
  %2781 = and i32 %2780, 255
  %2782 = lshr i32 %2779, 24
  %2783 = add i32 %62, 340
  %2784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2783, i32 undef)  ; BufferLoad(srv,index,wot)
  %2785 = extractvalue %dx.types.ResRet.i32 %2784, 0
  %2786 = and i32 %2785, 65535
  %2787 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2786)  ; LegacyF16ToF32(value)
  %2788 = lshr i32 %2785, 16
  %2789 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2788)  ; LegacyF16ToF32(value)
  %2790 = add i32 %62, 80
  %2791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2790, i32 undef)  ; BufferLoad(srv,index,wot)
  %2792 = extractvalue %dx.types.ResRet.i32 %2791, 0
  %2793 = lshr i32 %2792, 22
  %2794 = shl nuw nsw i32 %2793, 5
  %2795 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2794)  ; LegacyF16ToF32(value)
  %2796 = shl i32 %2792, 4
  %2797 = and i32 %2796, 32752
  %2798 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2797)  ; LegacyF16ToF32(value)
  %2799 = lshr i32 %2792, 7
  %2800 = and i32 %2799, 32752
  %2801 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2800)  ; LegacyF16ToF32(value)
  %2802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2803 = extractvalue %dx.types.CBufRet.f32 %2802, 3
  %2804 = fmul fast float %2803, 1.000000e+03
  %2805 = fmul fast float %2804, %652
  %2806 = call float @dx.op.unary.f32(i32 22, float %2805)  ; Frc(value)
  %2807 = fadd fast float %2806, %640
  %2808 = fmul fast float %2804, %654
  %2809 = call float @dx.op.unary.f32(i32 22, float %2808)  ; Frc(value)
  %2810 = fadd fast float %2809, %641
  %2811 = fmul fast float %2776, %2804
  %2812 = call float @dx.op.unary.f32(i32 22, float %2811)  ; Frc(value)
  %2813 = fmul fast float %2812, 0x401921FB60000000
  %2814 = fadd fast float %2813, %2795
  %2815 = call float @dx.op.unary.f32(i32 13, float %2814)  ; Sin(value)
  %2816 = call float @dx.op.unary.f32(i32 12, float %2814)  ; Cos(value)
  %2817 = fsub fast float -0.000000e+00, %2815
  %2818 = fadd fast float %2769, -5.000000e-01
  %2819 = fadd fast float %2770, -5.000000e-01
  %2820 = fmul fast float %2787, %2818
  %2821 = fmul fast float %2789, %2819
  %2822 = fadd fast float %2820, 5.000000e-01
  %2823 = fadd fast float %2821, 5.000000e-01
  %2824 = fmul fast float %2798, %2822
  %2825 = fmul fast float %2801, %2823
  %2826 = fmul fast float %2816, %2824
  %2827 = call float @dx.op.tertiary.f32(i32 46, float %2817, float %2825, float %2826)  ; FMad(a,b,c)
  %2828 = fmul fast float %2815, %2824
  %2829 = call float @dx.op.tertiary.f32(i32 46, float %2816, float %2825, float %2828)  ; FMad(a,b,c)
  %2830 = fadd fast float %2807, %2827
  %2831 = fadd fast float %2810, %2829
  %2832 = icmp ugt i32 %2781, 1
  %2833 = icmp ugt i32 %2779, 33554431
  %2834 = or i1 %2833, %2832
  br i1 %2834, label %2835, label %2860

; <label>:2835                                    ; preds = %2762
  %2836 = add i32 %62, 276
  %2837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2836, i32 undef)  ; BufferLoad(srv,index,wot)
  %2838 = extractvalue %dx.types.ResRet.i32 %2837, 0
  %2839 = lshr i32 %2838, 16
  %2840 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2839)  ; LegacyF16ToF32(value)
  %2841 = fmul fast float %2803, %2840
  %2842 = call float @dx.op.unary.f32(i32 22, float %2841)  ; Frc(value)
  %2843 = mul nuw nsw i32 %2781, %2782
  %2844 = uitofp i32 %2843 to float
  %2845 = fmul fast float %2842, %2844
  %2846 = call float @dx.op.unary.f32(i32 27, float %2845)  ; Round_ni(value)
  %2847 = fptoui float %2846 to i32
  %2848 = urem i32 %2847, %2781
  %2849 = udiv i32 %2847, %2782
  %2850 = call float @dx.op.unary.f32(i32 22, float %2830)  ; Frc(value)
  %2851 = call float @dx.op.unary.f32(i32 22, float %2831)  ; Frc(value)
  %2852 = uitofp i32 %2848 to float
  %2853 = uitofp i32 %2849 to float
  %2854 = fadd fast float %2850, %2852
  %2855 = fadd fast float %2851, %2853
  %2856 = uitofp i32 %2781 to float
  %2857 = uitofp i32 %2782 to float
  %2858 = fdiv fast float %2854, %2856
  %2859 = fdiv fast float %2855, %2857
  br label %2860

; <label>:2860                                    ; preds = %2835, %2762
  %2861 = phi float [ %2858, %2835 ], [ %2830, %2762 ]
  %2862 = phi float [ %2859, %2835 ], [ %2831, %2762 ]
  %2863 = and i32 %2756, 256
  %2864 = icmp eq i32 %2863, 0
  br i1 %2864, label %2911, label %2865

; <label>:2865                                    ; preds = %2860
  %2866 = add i32 %62, 484
  %2867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2866, i32 undef)  ; BufferLoad(srv,index,wot)
  %2868 = extractvalue %dx.types.ResRet.i32 %2867, 0
  %2869 = add i32 %2868, 0
  %2870 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2869, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2871 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2870, %dx.types.Handle %117, float %2861, float %2862, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2872 = extractvalue %dx.types.ResRet.f32 %2871, 0
  %2873 = add i32 %62, 148
  %2874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2873, i32 undef)  ; BufferLoad(srv,index,wot)
  %2875 = extractvalue %dx.types.ResRet.i32 %2874, 0
  %2876 = shl i32 %2875, 4
  %2877 = and i32 %2876, 32752
  %2878 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2877)  ; LegacyF16ToF32(value)
  %2879 = lshr i32 %2875, 7
  %2880 = and i32 %2879, 32752
  %2881 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2880)  ; LegacyF16ToF32(value)
  %2882 = fsub fast float 1.000000e+00, %712
  %2883 = call float @dx.op.binary.f32(i32 35, float %2882, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2884 = bitcast float %712 to i32
  %2885 = sitofp i32 %2884 to float
  %2886 = fadd fast float %2885, 0xC1CFBF8940000000
  %2887 = fmul fast float %2881, %2886
  %2888 = fadd fast float %2887, 0x41CFBF8940000000
  %2889 = fptosi float %2888 to i32
  %2890 = bitcast i32 %2889 to float
  %2891 = bitcast float %2883 to i32
  %2892 = sitofp i32 %2891 to float
  %2893 = fadd fast float %2892, 0xC1CFBF8940000000
  %2894 = fmul fast float %2893, %2881
  %2895 = fadd fast float %2894, 0x41CFBF8940000000
  %2896 = fptosi float %2895 to i32
  %2897 = bitcast i32 %2896 to float
  %2898 = fmul fast float %2890, %2878
  %2899 = fmul fast float %2897, %2878
  %2900 = fsub fast float %2883, %2898
  %2901 = fadd fast float %2899, %2883
  %2902 = call float @dx.op.unary.f32(i32 7, float %2900)  ; Saturate(value)
  %2903 = call float @dx.op.unary.f32(i32 7, float %2901)  ; Saturate(value)
  %2904 = fsub fast float %2872, %2902
  %2905 = fsub fast float %2903, %2902
  %2906 = bitcast float %2905 to i32
  %2907 = sub nsw i32 2129859010, %2906
  %2908 = bitcast i32 %2907 to float
  %2909 = fmul fast float %2908, %2904
  %2910 = call float @dx.op.unary.f32(i32 7, float %2909)  ; Saturate(value)
  br label %2911

; <label>:2911                                    ; preds = %2865, %2860
  %2912 = phi float [ %2910, %2865 ], [ %712, %2860 ]
  %2913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2754, i32 undef)  ; BufferLoad(srv,index,wot)
  %2914 = extractvalue %dx.types.ResRet.i32 %2913, 0
  %2915 = and i32 %2914, 128
  %2916 = icmp eq i32 %2915, 0
  br i1 %2916, label %2933, label %2917

; <label>:2917                                    ; preds = %2911
  %2918 = add i32 %62, 468
  %2919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2918, i32 undef)  ; BufferLoad(srv,index,wot)
  %2920 = extractvalue %dx.types.ResRet.i32 %2919, 0
  %2921 = add i32 %2920, 0
  %2922 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2921, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2923 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2922, %dx.types.Handle %117, float %2861, float %2862, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2924 = extractvalue %dx.types.ResRet.f32 %2923, 0
  %2925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2754, i32 undef)  ; BufferLoad(srv,index,wot)
  %2926 = extractvalue %dx.types.ResRet.i32 %2925, 0
  %2927 = and i32 %2926, 524288
  %2928 = icmp ne i32 %2927, 0
  %2929 = fcmp fast ogt float %2924, 0x3FE0101020000000
  %2930 = select i1 %2929, float 1.000000e+00, float 0.000000e+00
  %2931 = select i1 %2928, float %2930, float %2924
  %2932 = fmul fast float %2931, %2912
  br label %2933

; <label>:2933                                    ; preds = %2917, %2911
  %2934 = phi float [ %2932, %2917 ], [ %2912, %2911 ]
  %2935 = fcmp fast ult float %2934, 0x3F70101020000000
  br i1 %2935, label %3478, label %2936

; <label>:2936                                    ; preds = %2933
  %2937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2754, i32 undef)  ; BufferLoad(srv,index,wot)
  %2938 = extractvalue %dx.types.ResRet.i32 %2937, 0
  %2939 = and i32 %2938, 16
  %2940 = icmp eq i32 %2939, 0
  br i1 %2940, label %3139, label %2941

; <label>:2941                                    ; preds = %2936
  %2942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2777, i32 undef)  ; BufferLoad(srv,index,wot)
  %2943 = extractvalue %dx.types.ResRet.i32 %2942, 0
  %2944 = add i32 %62, 420
  %2945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2944, i32 undef)  ; BufferLoad(srv,index,wot)
  %2946 = extractvalue %dx.types.ResRet.i32 %2945, 0
  %2947 = add i32 %2946, 0
  %2948 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2947, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2949 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2948, %dx.types.Handle %116, float %2861, float %2862, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2950 = extractvalue %dx.types.ResRet.f32 %2949, 0
  %2951 = extractvalue %dx.types.ResRet.f32 %2949, 1
  %2952 = extractvalue %dx.types.ResRet.f32 %2949, 2
  %2953 = extractvalue %dx.types.ResRet.f32 %2949, 3
  %2954 = and i32 %2943, 255
  %2955 = uitofp i32 %2954 to float
  %2956 = lshr i32 %2943, 8
  %2957 = and i32 %2956, 255
  %2958 = uitofp i32 %2957 to float
  %2959 = fmul fast float %2953, %2955
  %2960 = fadd fast float %2959, %2958
  %2961 = fmul fast float %2960, 0x3F70101000000000
  %2962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2754, i32 undef)  ; BufferLoad(srv,index,wot)
  %2963 = extractvalue %dx.types.ResRet.i32 %2962, 0
  %2964 = and i32 %2963, 512
  %2965 = icmp eq i32 %2964, 0
  br i1 %2965, label %2974, label %2966

; <label>:2966                                    ; preds = %2941
  %2967 = add i32 %62, 504
  %2968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2967, i32 undef)  ; BufferLoad(srv,index,wot)
  %2969 = extractvalue %dx.types.ResRet.i32 %2968, 0
  %2970 = add i32 %2969, 0
  %2971 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2970, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2972 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2971, %dx.types.Handle %117, float %2861, float %2862, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2973 = extractvalue %dx.types.ResRet.f32 %2972, 0
  br label %2974

; <label>:2974                                    ; preds = %2966, %2941
  %2975 = phi float [ %2973, %2966 ], [ 1.000000e+00, %2941 ]
  %2976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2754, i32 undef)  ; BufferLoad(srv,index,wot)
  %2977 = extractvalue %dx.types.ResRet.i32 %2976, 0
  %2978 = and i32 %2977, 33554432
  %2979 = icmp eq i32 %2978, 0
  br i1 %2979, label %3086, label %2980

; <label>:2980                                    ; preds = %2974
  %2981 = add i32 %62, 272
  %2982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2981, i32 undef)  ; BufferLoad(srv,index,wot)
  %2983 = extractvalue %dx.types.ResRet.i32 %2982, 0
  %2984 = and i32 %2983, 65535
  %2985 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2984)  ; LegacyF16ToF32(value)
  %2986 = lshr i32 %2983, 16
  %2987 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2986)  ; LegacyF16ToF32(value)
  %2988 = add i32 %62, 276
  %2989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2988, i32 undef)  ; BufferLoad(srv,index,wot)
  %2990 = extractvalue %dx.types.ResRet.i32 %2989, 0
  %2991 = and i32 %2990, 65535
  %2992 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2991)  ; LegacyF16ToF32(value)
  %2993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %564, i32 undef)  ; BufferLoad(srv,index,wot)
  %2994 = extractvalue %dx.types.ResRet.i32 %2993, 0
  %2995 = lshr i32 %2994, 24
  %2996 = uitofp i32 %2995 to float
  %2997 = fmul fast float %2996, 0x3F70101020000000
  %2998 = and i32 %2994, 255
  %2999 = uitofp i32 %2998 to float
  %3000 = fmul fast float %2999, 0x3F70101020000000
  %3001 = lshr i32 %2994, 8
  %3002 = and i32 %3001, 255
  %3003 = uitofp i32 %3002 to float
  %3004 = fmul fast float %3003, 0x3F70101020000000
  %3005 = lshr i32 %2994, 16
  %3006 = and i32 %3005, 255
  %3007 = uitofp i32 %3006 to float
  %3008 = fmul fast float %3007, 0x3F70101020000000
  %3009 = add i32 %62, 268
  %3010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3009, i32 undef)  ; BufferLoad(srv,index,wot)
  %3011 = extractvalue %dx.types.ResRet.i32 %3010, 0
  %3012 = lshr i32 %3011, 24
  %3013 = uitofp i32 %3012 to float
  %3014 = fmul fast float %3013, 0x3F70101020000000
  %3015 = and i32 %3011, 255
  %3016 = uitofp i32 %3015 to float
  %3017 = fmul fast float %3016, 0x3F70101020000000
  %3018 = lshr i32 %3011, 8
  %3019 = and i32 %3018, 255
  %3020 = uitofp i32 %3019 to float
  %3021 = fmul fast float %3020, 0x3F70101020000000
  %3022 = lshr i32 %3011, 16
  %3023 = and i32 %3022, 255
  %3024 = uitofp i32 %3023 to float
  %3025 = fmul fast float %3024, 0x3F70101020000000
  %3026 = bitcast float %2950 to i32
  %3027 = ashr i32 %3026, 1
  %3028 = sub nsw i32 1597463174, %3027
  %3029 = bitcast i32 %3028 to float
  %3030 = fmul fast float %2950, 5.000000e-01
  %3031 = fmul fast float %3029, %3029
  %3032 = fmul fast float %3031, %3030
  %3033 = fsub fast float 1.500000e+00, %3032
  %3034 = fmul fast float %3029, %2950
  %3035 = fmul fast float %3034, %3033
  %3036 = bitcast float %2951 to i32
  %3037 = ashr i32 %3036, 1
  %3038 = sub nsw i32 1597463174, %3037
  %3039 = bitcast i32 %3038 to float
  %3040 = fmul fast float %2951, 5.000000e-01
  %3041 = fmul fast float %3039, %3039
  %3042 = fmul fast float %3041, %3040
  %3043 = fsub fast float 1.500000e+00, %3042
  %3044 = fmul fast float %3039, %2951
  %3045 = fmul fast float %3044, %3043
  %3046 = bitcast float %2952 to i32
  %3047 = ashr i32 %3046, 1
  %3048 = sub nsw i32 1597463174, %3047
  %3049 = bitcast i32 %3048 to float
  %3050 = fmul fast float %2952, 5.000000e-01
  %3051 = fmul fast float %3049, %3049
  %3052 = fmul fast float %3051, %3050
  %3053 = fsub fast float 1.500000e+00, %3052
  %3054 = fmul fast float %3049, %2952
  %3055 = fmul fast float %3054, %3053
  %3056 = fsub fast float %3035, %3017
  %3057 = fsub fast float %3045, %3021
  %3058 = fsub fast float %3055, %3025
  %3059 = fmul fast float %3056, %2985
  %3060 = fmul fast float %3057, %2987
  %3061 = fmul fast float %3058, %2992
  %3062 = fadd fast float %3059, %3000
  %3063 = fadd fast float %3060, %3004
  %3064 = fadd fast float %3061, %3008
  %3065 = call float @dx.op.unary.f32(i32 7, float %3062)  ; Saturate(value)
  %3066 = call float @dx.op.unary.f32(i32 7, float %3063)  ; Saturate(value)
  %3067 = call float @dx.op.unary.f32(i32 7, float %3064)  ; Saturate(value)
  %3068 = fmul fast float %3065, %3065
  %3069 = fmul fast float %3066, %3066
  %3070 = fmul fast float %3067, %3067
  %3071 = fsub fast float %3068, %2950
  %3072 = fsub fast float %3069, %2951
  %3073 = fsub fast float %3070, %2952
  %3074 = fmul fast float %3071, %2975
  %3075 = fmul fast float %3072, %2975
  %3076 = fmul fast float %3073, %2975
  %3077 = fadd fast float %3074, %2950
  %3078 = fadd fast float %3075, %2951
  %3079 = fadd fast float %3076, %2952
  %3080 = fadd fast float %2997, %2961
  %3081 = fsub fast float %3080, %3014
  %3082 = call float @dx.op.unary.f32(i32 7, float %3081)  ; Saturate(value)
  %3083 = fsub fast float %3082, %2961
  %3084 = fmul fast float %3083, %2975
  %3085 = fadd fast float %3084, %2961
  br label %3139

; <label>:3086                                    ; preds = %2974
  %3087 = and i32 %2977, 134217728
  %3088 = icmp eq i32 %3087, 0
  br i1 %3088, label %3123, label %3089

; <label>:3089                                    ; preds = %3086
  %3090 = call float @dx.op.unary.f32(i32 24, float %628)  ; Sqrt(value)
  %3091 = call float @dx.op.unary.f32(i32 24, float %629)  ; Sqrt(value)
  %3092 = call float @dx.op.unary.f32(i32 24, float %630)  ; Sqrt(value)
  %3093 = fadd fast float %3090, -5.000000e-01
  %3094 = fadd fast float %3091, -5.000000e-01
  %3095 = fadd fast float %3092, -5.000000e-01
  %3096 = fmul fast float %3093, %2975
  %3097 = fmul fast float %3094, %2975
  %3098 = fmul fast float %3095, %2975
  %3099 = fadd fast float %3096, 5.000000e-01
  %3100 = fadd fast float %3097, 5.000000e-01
  %3101 = fadd fast float %3098, 5.000000e-01
  %3102 = call float @dx.op.unary.f32(i32 24, float %2950)  ; Sqrt(value)
  %3103 = call float @dx.op.unary.f32(i32 24, float %2951)  ; Sqrt(value)
  %3104 = call float @dx.op.unary.f32(i32 24, float %2952)  ; Sqrt(value)
  %3105 = fmul fast float %3099, 2.000000e+00
  %3106 = fsub fast float 1.000000e+00, %3105
  %3107 = fmul fast float %3106, %3102
  %3108 = fadd fast float %3107, %3105
  %3109 = fmul fast float %3108, %3102
  %3110 = fmul fast float %3100, 2.000000e+00
  %3111 = fsub fast float 1.000000e+00, %3110
  %3112 = fmul fast float %3111, %3103
  %3113 = fadd fast float %3112, %3110
  %3114 = fmul fast float %3113, %3103
  %3115 = fmul fast float %3101, 2.000000e+00
  %3116 = fsub fast float 1.000000e+00, %3115
  %3117 = fmul fast float %3116, %3104
  %3118 = fadd fast float %3117, %3115
  %3119 = fmul fast float %3118, %3104
  %3120 = fmul fast float %3109, %3109
  %3121 = fmul fast float %3114, %3114
  %3122 = fmul fast float %3119, %3119
  br label %3139

; <label>:3123                                    ; preds = %3086
  %3124 = fmul fast float %628, %628
  %3125 = fmul fast float %629, %629
  %3126 = fmul fast float %630, %630
  %3127 = fadd fast float %3124, -1.000000e+00
  %3128 = fadd fast float %3125, -1.000000e+00
  %3129 = fadd fast float %3126, -1.000000e+00
  %3130 = fmul fast float %2975, %3127
  %3131 = fmul fast float %2975, %3128
  %3132 = fmul fast float %2975, %3129
  %3133 = fadd fast float %3130, 1.000000e+00
  %3134 = fadd fast float %3131, 1.000000e+00
  %3135 = fadd fast float %3132, 1.000000e+00
  %3136 = fmul fast float %3133, %2950
  %3137 = fmul fast float %3134, %2951
  %3138 = fmul fast float %3135, %2952
  br label %3139

; <label>:3139                                    ; preds = %3123, %3089, %2980, %2936
  %3140 = phi float [ %3085, %2980 ], [ %2961, %3089 ], [ %2961, %3123 ], [ 0x3FA23C0BE0000000, %2936 ]
  %3141 = phi float [ %3077, %2980 ], [ %3120, %3089 ], [ %3136, %3123 ], [ 1.000000e+00, %2936 ]
  %3142 = phi float [ %3078, %2980 ], [ %3121, %3089 ], [ %3137, %3123 ], [ 1.000000e+00, %2936 ]
  %3143 = phi float [ %3079, %2980 ], [ %3122, %3089 ], [ %3138, %3123 ], [ 1.000000e+00, %2936 ]
  %3144 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3145 = extractvalue %dx.types.CBufRet.i32 %3144, 1
  %3146 = and i32 %3145, 1
  %3147 = icmp ne i32 %3146, 0
  %3148 = add i32 %62, 356
  %3149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3148, i32 undef)  ; BufferLoad(srv,index,wot)
  %3150 = extractvalue %dx.types.ResRet.i32 %3149, 0
  %3151 = and i32 %3150, 32
  %3152 = icmp ne i32 %3151, 0
  %3153 = and i1 %3147, %3152
  %3154 = select i1 %3153, float 1.000000e+00, float %3141
  %3155 = select i1 %3153, float 0x3FD3333340000000, float %3142
  %3156 = select i1 %3153, float 0x3FD3333340000000, float %3143
  %3157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2754, i32 undef)  ; BufferLoad(srv,index,wot)
  %3158 = extractvalue %dx.types.ResRet.i32 %3157, 0
  %3159 = and i32 %3158, 32
  %3160 = icmp eq i32 %3159, 0
  br i1 %3160, label %3233, label %3161

; <label>:3161                                    ; preds = %3139
  %3162 = add i32 %62, 140
  %3163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3162, i32 undef)  ; BufferLoad(srv,index,wot)
  %3164 = extractvalue %dx.types.ResRet.i32 %3163, 0
  %3165 = add i32 %62, 436
  %3166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3165, i32 undef)  ; BufferLoad(srv,index,wot)
  %3167 = extractvalue %dx.types.ResRet.i32 %3166, 0
  %3168 = add i32 %3167, 0
  %3169 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3168, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3170 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3169, %dx.types.Handle %116, float %2861, float %2862, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3171 = extractvalue %dx.types.ResRet.f32 %3170, 0
  %3172 = extractvalue %dx.types.ResRet.f32 %3170, 1
  %3173 = extractvalue %dx.types.ResRet.f32 %3170, 2
  %3174 = extractvalue %dx.types.ResRet.f32 %3170, 3
  %3175 = and i32 %3164, 255
  %3176 = uitofp i32 %3175 to float
  %3177 = lshr i32 %3164, 8
  %3178 = and i32 %3177, 255
  %3179 = uitofp i32 %3178 to float
  %3180 = lshr i32 %3164, 16
  %3181 = and i32 %3180, 255
  %3182 = uitofp i32 %3181 to float
  %3183 = fmul fast float %3182, 0x3F70101000000000
  %3184 = fmul fast float %3171, %3176
  %3185 = fadd fast float %3184, %3179
  %3186 = fmul fast float %3185, 0x3F70101000000000
  %3187 = fadd fast float %3172, -5.000000e-01
  %3188 = fadd fast float %3174, -5.000000e-01
  %3189 = fmul fast float %3187, %3183
  %3190 = fmul fast float %3188, %3183
  %3191 = fadd fast float %3189, 5.000000e-01
  %3192 = fadd fast float %3190, 5.000000e-01
  %3193 = fmul fast float %3191, 2.000000e+00
  %3194 = fadd fast float %3193, -1.000000e+00
  %3195 = fmul fast float %3192, 2.000000e+00
  %3196 = fadd fast float %3195, -1.000000e+00
  %3197 = fadd fast float %3194, %3196
  %3198 = fmul fast float %3197, 5.000000e-01
  %3199 = fsub fast float %3194, %3196
  %3200 = fmul fast float %3199, 5.000000e-01
  %3201 = call float @dx.op.unary.f32(i32 6, float %3198)  ; FAbs(value)
  %3202 = fsub fast float 1.000000e+00, %3201
  %3203 = call float @dx.op.unary.f32(i32 6, float %3200)  ; FAbs(value)
  %3204 = fsub fast float %3202, %3203
  %3205 = call float @dx.op.dot3.f32(i32 55, float %3198, float %3200, float %3204, float %3198, float %3200, float %3204)  ; Dot3(ax,ay,az,bx,by,bz)
  %3206 = call float @dx.op.unary.f32(i32 25, float %3205)  ; Rsqrt(value)
  %3207 = fmul fast float %3198, %3206
  %3208 = fmul fast float %3200, %3206
  %3209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2754, i32 undef)  ; BufferLoad(srv,index,wot)
  %3210 = extractvalue %dx.types.ResRet.i32 %3209, 0
  %3211 = and i32 %3210, 67108864
  %3212 = icmp eq i32 %3211, 0
  br i1 %3212, label %3229, label %3213

; <label>:3213                                    ; preds = %3161
  %3214 = add i32 %62, 328
  %3215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3214, i32 undef)  ; BufferLoad(srv,index,wot)
  %3216 = extractvalue %dx.types.ResRet.i32 %3215, 0
  %3217 = and i32 %3216, 65535
  %3218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3217)  ; LegacyF16ToF32(value)
  %3219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2771, i32 undef)  ; BufferLoad(srv,index,wot)
  %3220 = extractvalue %dx.types.ResRet.i32 %3219, 0
  %3221 = and i32 %3220, 65535
  %3222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3221)  ; LegacyF16ToF32(value)
  %3223 = lshr i32 %3216, 16
  %3224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3223)  ; LegacyF16ToF32(value)
  %3225 = fsub fast float %3186, %3224
  %3226 = fmul fast float %3225, %3218
  %3227 = fadd fast float %3226, %3222
  %3228 = call float @dx.op.unary.f32(i32 7, float %3227)  ; Saturate(value)
  br label %3229

; <label>:3229                                    ; preds = %3213, %3161
  %3230 = phi float [ %3228, %3213 ], [ %3186, %3161 ]
  %3231 = call float @dx.op.dot2.f32(i32 54, float %3207, float %3208, float %2765, float %2766)  ; Dot2(ax,ay,bx,by)
  %3232 = call float @dx.op.dot2.f32(i32 54, float %3207, float %3208, float %2767, float %2768)  ; Dot2(ax,ay,bx,by)
  br label %3233

; <label>:3233                                    ; preds = %3229, %3139
  %3234 = phi float [ %3230, %3229 ], [ 0x3FD6666660000000, %3139 ]
  %3235 = phi float [ %3231, %3229 ], [ 0.000000e+00, %3139 ]
  %3236 = phi float [ %3232, %3229 ], [ 0.000000e+00, %3139 ]
  %3237 = phi float [ %3173, %3229 ], [ 1.000000e+00, %3139 ]
  %3238 = add i32 %62, 208
  %3239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3238, i32 undef)  ; BufferLoad(srv,index,wot)
  %3240 = extractvalue %dx.types.ResRet.i32 %3239, 0
  %3241 = lshr i32 %3240, 22
  %3242 = shl nuw nsw i32 %3241, 5
  %3243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3242)  ; LegacyF16ToF32(value)
  %3244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2754, i32 undef)  ; BufferLoad(srv,index,wot)
  %3245 = extractvalue %dx.types.ResRet.i32 %3244, 0
  %3246 = and i32 %3245, 64
  %3247 = icmp eq i32 %3246, 0
  br i1 %3247, label %3281, label %3248

; <label>:3248                                    ; preds = %3233
  %3249 = add i32 %62, 452
  %3250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3249, i32 undef)  ; BufferLoad(srv,index,wot)
  %3251 = extractvalue %dx.types.ResRet.i32 %3250, 0
  %3252 = add i32 %3251, 0
  %3253 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3252, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2754, i32 undef)  ; BufferLoad(srv,index,wot)
  %3255 = extractvalue %dx.types.ResRet.i32 %3254, 0
  %3256 = and i32 %3255, 131072
  %3257 = icmp eq i32 %3256, 0
  %3258 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3253, %dx.types.Handle %116, float %2861, float %2862, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3259 = extractvalue %dx.types.ResRet.f32 %3258, 0
  %3260 = extractvalue %dx.types.ResRet.f32 %3258, 1
  %3261 = extractvalue %dx.types.ResRet.f32 %3258, 2
  %3262 = fmul fast float %611, %3259
  %3263 = fmul fast float %612, %3260
  %3264 = fmul fast float %613, %3261
  br i1 %3257, label %3271, label %3265

; <label>:3265                                    ; preds = %3248
  %3266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3267 = extractvalue %dx.types.CBufRet.f32 %3266, 0
  %3268 = fmul fast float %3267, %3262
  %3269 = fmul fast float %3267, %3263
  %3270 = fmul fast float %3267, %3264
  br label %3271

; <label>:3271                                    ; preds = %3265, %3248
  %3272 = phi float [ %3268, %3265 ], [ %3262, %3248 ]
  %3273 = phi float [ %3269, %3265 ], [ %3263, %3248 ]
  %3274 = phi float [ %3270, %3265 ], [ %3264, %3248 ]
  %3275 = fmul fast float %3272, %3243
  %3276 = select i1 %279, float %3275, float %3272
  %3277 = call float @dx.op.dot3.f32(i32 55, float %3276, float %3273, float %3274, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3278 = select i1 %279, float 0.000000e+00, float %3272
  %3279 = select i1 %279, float %3277, float %3273
  %3280 = select i1 %279, float 0.000000e+00, float %3274
  br label %3281

; <label>:3281                                    ; preds = %3271, %3233
  %3282 = phi float [ %3278, %3271 ], [ 0.000000e+00, %3233 ]
  %3283 = phi float [ %3279, %3271 ], [ 0.000000e+00, %3233 ]
  %3284 = phi float [ %3280, %3271 ], [ 0.000000e+00, %3233 ]
  %3285 = add i32 %62, 144
  %3286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3285, i32 undef)  ; BufferLoad(srv,index,wot)
  %3287 = extractvalue %dx.types.ResRet.i32 %3286, 0
  %3288 = and i32 %3287, 255
  %3289 = uitofp i32 %3288 to float
  %3290 = lshr i32 %3287, 8
  %3291 = and i32 %3290, 255
  %3292 = uitofp i32 %3291 to float
  %3293 = call float @dx.op.dot3.f32(i32 55, float %3154, float %3155, float %3156, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3294 = fmul fast float %3292, %3293
  %3295 = fadd fast float %3294, %3289
  %3296 = fmul fast float %3295, 0x3F70101020000000
  %3297 = call float @dx.op.unary.f32(i32 7, float %3296)  ; Saturate(value)
  br i1 %2753, label %3298, label %3306

; <label>:3298                                    ; preds = %3281
  %3299 = fsub fast float 1.000000e+00, %2934
  %3300 = fmul fast float %3299, %2745
  %3301 = fmul fast float %3299, %2746
  %3302 = fmul fast float %3299, %2747
  %3303 = fmul fast float %3299, %2742
  %3304 = fmul fast float %3299, %2743
  %3305 = fmul fast float %3299, %2744
  br label %3306

; <label>:3306                                    ; preds = %3298, %3281
  %3307 = phi float [ %3303, %3298 ], [ %2742, %3281 ]
  %3308 = phi float [ %3304, %3298 ], [ %2743, %3281 ]
  %3309 = phi float [ %3305, %3298 ], [ %2744, %3281 ]
  %3310 = phi float [ %3300, %3298 ], [ %2745, %3281 ]
  %3311 = phi float [ %3301, %3298 ], [ %2746, %3281 ]
  %3312 = phi float [ %3302, %3298 ], [ %2747, %3281 ]
  %3313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2754, i32 undef)  ; BufferLoad(srv,index,wot)
  %3314 = extractvalue %dx.types.ResRet.i32 %3313, 0
  %3315 = and i32 %3314, 3
  %3316 = icmp eq i32 %3315, 3
  br i1 %3316, label %3395, label %3317

; <label>:3317                                    ; preds = %3306
  %3318 = and i32 %3314, 16
  %3319 = icmp ne i32 %3318, 0
  %3320 = select i1 %3319, float %2934, float 0.000000e+00
  %3321 = icmp eq i32 %3315, 0
  br i1 %3321, label %3322, label %3350

; <label>:3322                                    ; preds = %3317
  %3323 = and i32 %3314, 64
  %3324 = icmp ne i32 %3323, 0
  %3325 = select i1 %3324, float %2934, float 0.000000e+00
  %3326 = fsub fast float %3154, %3310
  %3327 = fsub fast float %3155, %3311
  %3328 = fsub fast float %3156, %3312
  %3329 = fmul fast float %3320, %3326
  %3330 = fmul fast float %3320, %3327
  %3331 = fmul fast float %3320, %3328
  %3332 = fadd fast float %3329, %3310
  %3333 = fadd fast float %3330, %3311
  %3334 = fadd fast float %3331, %3312
  %3335 = fsub fast float %3140, %2748
  %3336 = fmul fast float %3320, %3335
  %3337 = fadd fast float %3336, %2748
  %3338 = fsub fast float %3282, %3307
  %3339 = fsub fast float %3283, %3308
  %3340 = fsub fast float %3284, %3309
  %3341 = fmul fast float %3325, %3338
  %3342 = fmul fast float %3325, %3339
  %3343 = fmul fast float %3325, %3340
  %3344 = fadd fast float %3341, %3307
  %3345 = fadd fast float %3342, %3308
  %3346 = fadd fast float %3343, %3309
  %3347 = fsub fast float %3297, %2751
  %3348 = fmul fast float %3320, %3347
  %3349 = fadd fast float %3348, %2751
  br label %3395

; <label>:3350                                    ; preds = %3317
  %3351 = icmp eq i32 %3315, 1
  br i1 %3351, label %3352, label %3365

; <label>:3352                                    ; preds = %3350
  %3353 = fadd fast float %3154, -1.000000e+00
  %3354 = fadd fast float %3155, -1.000000e+00
  %3355 = fadd fast float %3156, -1.000000e+00
  %3356 = fmul fast float %3320, %3353
  %3357 = fmul fast float %3320, %3354
  %3358 = fmul fast float %3320, %3355
  %3359 = fadd fast float %3356, 1.000000e+00
  %3360 = fadd fast float %3357, 1.000000e+00
  %3361 = fadd fast float %3358, 1.000000e+00
  %3362 = fmul fast float %3359, %3310
  %3363 = fmul fast float %3360, %3311
  %3364 = fmul fast float %3361, %3312
  br label %3395

; <label>:3365                                    ; preds = %3350
  %3366 = icmp eq i32 %3315, 2
  br i1 %3366, label %3367, label %3395

; <label>:3367                                    ; preds = %3365
  %3368 = call float @dx.op.unary.f32(i32 24, float %3154)  ; Sqrt(value)
  %3369 = call float @dx.op.unary.f32(i32 24, float %3155)  ; Sqrt(value)
  %3370 = call float @dx.op.unary.f32(i32 24, float %3156)  ; Sqrt(value)
  %3371 = fadd fast float %3368, -5.000000e-01
  %3372 = fadd fast float %3369, -5.000000e-01
  %3373 = fadd fast float %3370, -5.000000e-01
  %3374 = fmul fast float %3371, %3320
  %3375 = fmul fast float %3372, %3320
  %3376 = fmul fast float %3373, %3320
  %3377 = fadd fast float %3374, 5.000000e-01
  %3378 = fadd fast float %3375, 5.000000e-01
  %3379 = fadd fast float %3376, 5.000000e-01
  %3380 = fmul fast float %3377, 2.000000e+00
  %3381 = fsub fast float 1.000000e+00, %3380
  %3382 = fmul fast float %3381, %3310
  %3383 = fadd fast float %3382, %3380
  %3384 = fmul fast float %3383, %3310
  %3385 = fmul fast float %3378, 2.000000e+00
  %3386 = fsub fast float 1.000000e+00, %3385
  %3387 = fmul fast float %3386, %3311
  %3388 = fadd fast float %3387, %3385
  %3389 = fmul fast float %3388, %3311
  %3390 = fmul fast float %3379, 2.000000e+00
  %3391 = fsub fast float 1.000000e+00, %3390
  %3392 = fmul fast float %3391, %3312
  %3393 = fadd fast float %3392, %3390
  %3394 = fmul fast float %3393, %3312
  br label %3395

; <label>:3395                                    ; preds = %3367, %3365, %3352, %3322, %3306
  %3396 = phi float [ %3307, %3306 ], [ %3307, %3367 ], [ %3307, %3365 ], [ %3307, %3352 ], [ %3344, %3322 ]
  %3397 = phi float [ %3308, %3306 ], [ %3308, %3367 ], [ %3308, %3365 ], [ %3308, %3352 ], [ %3345, %3322 ]
  %3398 = phi float [ %3309, %3306 ], [ %3309, %3367 ], [ %3309, %3365 ], [ %3309, %3352 ], [ %3346, %3322 ]
  %3399 = phi float [ %3310, %3306 ], [ %3384, %3367 ], [ %3310, %3365 ], [ %3362, %3352 ], [ %3332, %3322 ]
  %3400 = phi float [ %3311, %3306 ], [ %3389, %3367 ], [ %3311, %3365 ], [ %3363, %3352 ], [ %3333, %3322 ]
  %3401 = phi float [ %3312, %3306 ], [ %3394, %3367 ], [ %3312, %3365 ], [ %3364, %3352 ], [ %3334, %3322 ]
  %3402 = phi float [ %2748, %3306 ], [ %2748, %3367 ], [ %2748, %3365 ], [ %2748, %3352 ], [ %3337, %3322 ]
  %3403 = phi float [ %2751, %3306 ], [ %2751, %3367 ], [ %2751, %3365 ], [ %2751, %3352 ], [ %3349, %3322 ]
  %3404 = and i32 %3314, 12
  %3405 = icmp eq i32 %3404, 12
  br i1 %3405, label %3478, label %3406

; <label>:3406                                    ; preds = %3395
  %3407 = and i32 %3314, 2097184
  %3408 = icmp eq i32 %3407, 2097184
  %3409 = select i1 %3408, float %2934, float 0.000000e+00
  %3410 = and i32 %3314, 4194336
  %3411 = icmp eq i32 %3410, 4194336
  %3412 = select i1 %3411, float %2934, float 0.000000e+00
  %3413 = and i32 %3314, 8388640
  %3414 = icmp eq i32 %3413, 8388640
  %3415 = select i1 %3414, float %2934, float 0.000000e+00
  %3416 = icmp eq i32 %3404, 0
  br i1 %3416, label %3417, label %3430

; <label>:3417                                    ; preds = %3406
  %3418 = fsub fast float %3235, %2740
  %3419 = fsub fast float %3236, %2741
  %3420 = fmul fast float %3409, %3418
  %3421 = fmul fast float %3409, %3419
  %3422 = fadd fast float %3420, %2740
  %3423 = fadd fast float %3421, %2741
  %3424 = fsub fast float %3237, %2750
  %3425 = fmul fast float %3412, %3424
  %3426 = fadd fast float %3425, %2750
  %3427 = fsub fast float %3234, %2749
  %3428 = fmul fast float %3415, %3427
  %3429 = fadd fast float %3428, %2749
  br label %3478

; <label>:3430                                    ; preds = %3406
  %3431 = icmp eq i32 %3404, 4
  br i1 %3431, label %3432, label %3464

; <label>:3432                                    ; preds = %3430
  %3433 = fmul fast float %3409, %3235
  %3434 = fmul fast float %3409, %3236
  %3435 = fadd fast float %3433, %2740
  %3436 = fadd fast float %3434, %2741
  %3437 = call float @dx.op.binary.f32(i32 36, float %2750, float %3237)  ; FMin(a,b)
  %3438 = fsub fast float %3437, %2750
  %3439 = fmul fast float %3438, %3412
  %3440 = fadd fast float %3439, %2750
  %3441 = fadd fast float %3234, %2749
  %3442 = fmul fast float %3441, 0x3FF337FAE0000000
  %3443 = fmul fast float %2749, %2749
  %3444 = fmul fast float %3234, %3234
  %3445 = fadd fast float %3444, %3443
  %3446 = fmul fast float %3445, 0x3FE5152B00000000
  %3447 = fmul fast float %2749, 0xBFCC1F85E0000000
  %3448 = fmul fast float %3447, %3234
  %3449 = fadd fast float %3448, 0xBFE1363700000000
  %3450 = fadd fast float %3449, %3442
  %3451 = fsub fast float %3450, %3446
  %3452 = fmul fast float %3441, 0x3FBA6F0D00000000
  %3453 = fmul fast float %3445, 0x3FD0432880000000
  %3454 = fmul fast float %2749, 0xBFEF110800000000
  %3455 = fmul fast float %3454, %3234
  %3456 = fadd fast float %3455, 1.000000e+00
  %3457 = fsub fast float %3456, %3452
  %3458 = fadd fast float %3457, %3453
  %3459 = fdiv fast float %3451, %3458
  %3460 = call float @dx.op.unary.f32(i32 7, float %3459)  ; Saturate(value)
  %3461 = fsub fast float %3460, %2749
  %3462 = fmul fast float %3461, %3415
  %3463 = fadd fast float %3462, %2749
  br label %3478

; <label>:3464                                    ; preds = %3430
  %3465 = icmp eq i32 %3404, 8
  br i1 %3465, label %3466, label %3478

; <label>:3466                                    ; preds = %3464
  %3467 = fmul fast float %3409, %3235
  %3468 = fmul fast float %3409, %3236
  %3469 = fadd fast float %3467, %2740
  %3470 = fadd fast float %3468, %2741
  %3471 = call float @dx.op.binary.f32(i32 36, float %2750, float %3237)  ; FMin(a,b)
  %3472 = fsub fast float %3471, %2750
  %3473 = fmul fast float %3472, %3412
  %3474 = fadd fast float %3473, %2750
  %3475 = fsub fast float %3234, %2749
  %3476 = fmul fast float %3415, %3475
  %3477 = fadd fast float %3476, %2749
  br label %3478

; <label>:3478                                    ; preds = %3466, %3464, %3432, %3417, %3395, %2933, %2752, %2739
  %3479 = phi float [ %2740, %3395 ], [ %2740, %2933 ], [ %2740, %2739 ], [ %2740, %2752 ], [ %3422, %3417 ], [ %3435, %3432 ], [ %2740, %3464 ], [ %3469, %3466 ]
  %3480 = phi float [ %2741, %3395 ], [ %2741, %2933 ], [ %2741, %2739 ], [ %2741, %2752 ], [ %3423, %3417 ], [ %3436, %3432 ], [ %2741, %3464 ], [ %3470, %3466 ]
  %3481 = phi float [ %3396, %3395 ], [ %2742, %2933 ], [ %2742, %2739 ], [ %2742, %2752 ], [ %3396, %3417 ], [ %3396, %3432 ], [ %3396, %3464 ], [ %3396, %3466 ]
  %3482 = phi float [ %3397, %3395 ], [ %2743, %2933 ], [ %2743, %2739 ], [ %2743, %2752 ], [ %3397, %3417 ], [ %3397, %3432 ], [ %3397, %3464 ], [ %3397, %3466 ]
  %3483 = phi float [ %3398, %3395 ], [ %2744, %2933 ], [ %2744, %2739 ], [ %2744, %2752 ], [ %3398, %3417 ], [ %3398, %3432 ], [ %3398, %3464 ], [ %3398, %3466 ]
  %3484 = phi float [ %3399, %3395 ], [ %2745, %2933 ], [ %2745, %2739 ], [ %2745, %2752 ], [ %3399, %3417 ], [ %3399, %3432 ], [ %3399, %3464 ], [ %3399, %3466 ]
  %3485 = phi float [ %3400, %3395 ], [ %2746, %2933 ], [ %2746, %2739 ], [ %2746, %2752 ], [ %3400, %3417 ], [ %3400, %3432 ], [ %3400, %3464 ], [ %3400, %3466 ]
  %3486 = phi float [ %3401, %3395 ], [ %2747, %2933 ], [ %2747, %2739 ], [ %2747, %2752 ], [ %3401, %3417 ], [ %3401, %3432 ], [ %3401, %3464 ], [ %3401, %3466 ]
  %3487 = phi float [ %3402, %3395 ], [ %2748, %2933 ], [ %2748, %2739 ], [ %2748, %2752 ], [ %3402, %3417 ], [ %3402, %3432 ], [ %3402, %3464 ], [ %3402, %3466 ]
  %3488 = phi float [ %2749, %3395 ], [ %2749, %2933 ], [ %2749, %2739 ], [ %2749, %2752 ], [ %3429, %3417 ], [ %3463, %3432 ], [ %2749, %3464 ], [ %3477, %3466 ]
  %3489 = phi float [ %2750, %3395 ], [ %2750, %2933 ], [ %2750, %2739 ], [ %2750, %2752 ], [ %3426, %3417 ], [ %3440, %3432 ], [ %2750, %3464 ], [ %3474, %3466 ]
  %3490 = phi float [ %3403, %3395 ], [ %2751, %2933 ], [ %2751, %2739 ], [ %2751, %2752 ], [ %3403, %3417 ], [ %3403, %3432 ], [ %3403, %3464 ], [ %3403, %3466 ]
  %3491 = add i32 %62, 360
  %3492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3491, i32 undef)  ; BufferLoad(srv,index,wot)
  %3493 = extractvalue %dx.types.ResRet.i32 %3492, 0
  %3494 = extractvalue %dx.types.ResRet.i32 %3492, 1
  %3495 = bitcast i32 %3493 to float
  %3496 = bitcast i32 %3494 to float
  %3497 = fcmp fast oge float %3495, 0.000000e+00
  %3498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3499 = extractvalue %dx.types.CBufRet.f32 %3498, 0
  %3500 = select i1 %3497, float %3495, float %3499
  %3501 = fadd fast float %3500, %221
  %3502 = fmul fast float %3496, %222
  %3503 = add i32 %62, 488
  %3504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3503, i32 undef)  ; BufferLoad(srv,index,wot)
  %3505 = extractvalue %dx.types.ResRet.i32 %3504, 0
  %3506 = add i32 %3505, 0
  %3507 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3506, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3508 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3507, %dx.types.Handle %117, float %98, float %99, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3509 = extractvalue %dx.types.ResRet.f32 %3508, 0
  %3510 = fmul fast float %3502, %3509
  %3511 = fadd fast float %3501, %3510
  %3512 = and i32 %213, 65535
  %3513 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3512)  ; LegacyF16ToF32(value)
  %3514 = lshr i32 %213, 16
  %3515 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3514)  ; LegacyF16ToF32(value)
  %3516 = and i32 %214, 65535
  %3517 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3516)  ; LegacyF16ToF32(value)
  %3518 = fmul fast float %3513, %3484
  %3519 = fmul fast float %3515, %3485
  %3520 = fmul fast float %3517, %3486
  %3521 = shl i32 %215, 4
  %3522 = and i32 %3521, 32752
  %3523 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3522)  ; LegacyF16ToF32(value)
  %3524 = lshr i32 %215, 7
  %3525 = and i32 %3524, 32752
  %3526 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3525)  ; LegacyF16ToF32(value)
  %3527 = lshr i32 %215, 22
  %3528 = shl nuw nsw i32 %3527, 5
  %3529 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3528)  ; LegacyF16ToF32(value)
  %3530 = and i32 %216, 65535
  %3531 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3530)  ; LegacyF16ToF32(value)
  %3532 = fmul fast float %3523, %3481
  %3533 = fmul fast float %3532, %3531
  %3534 = fmul fast float %3526, %3482
  %3535 = fmul fast float %3534, %3531
  %3536 = fmul fast float %3529, %3483
  %3537 = fmul fast float %3536, %3531
  %3538 = call float @dx.op.dot2.f32(i32 54, float %3479, float %3480, float %3479, float %3480)  ; Dot2(ax,ay,bx,by)
  %3539 = fmul fast float %3538, 0x3FE3333340000000
  %3540 = fsub fast float 1.000000e+00, %3539
  %3541 = call float @dx.op.dot3.f32(i32 55, float %3479, float %3480, float %3540, float %3479, float %3480, float %3540)  ; Dot3(ax,ay,az,bx,by,bz)
  %3542 = call float @dx.op.unary.f32(i32 25, float %3541)  ; Rsqrt(value)
  %3543 = fmul fast float %3542, %3479
  %3544 = fmul fast float %3542, %3480
  %3545 = fmul fast float %3540, %3542
  %3546 = fmul fast float %3545, %127
  %3547 = fmul fast float %3545, %128
  %3548 = fmul fast float %3545, %129
  %3549 = fmul fast float %3543, %91
  %3550 = fmul fast float %3543, %92
  %3551 = fmul fast float %3543, %93
  %3552 = fadd fast float %3546, %3549
  %3553 = fadd fast float %3547, %3550
  %3554 = fadd fast float %3548, %3551
  %3555 = fmul fast float %139, %3544
  %3556 = fmul fast float %140, %3544
  %3557 = fmul fast float %141, %3544
  %3558 = fadd fast float %3552, %3555
  %3559 = fadd fast float %3553, %3556
  %3560 = fadd fast float %3554, %3557
  %3561 = call float @dx.op.dot3.f32(i32 55, float %3558, float %3559, float %3560, float %3558, float %3559, float %3560)  ; Dot3(ax,ay,az,bx,by,bz)
  %3562 = call float @dx.op.unary.f32(i32 25, float %3561)  ; Rsqrt(value)
  %3563 = fmul fast float %3558, %3562
  %3564 = fmul fast float %3559, %3562
  %3565 = fmul fast float %3560, %3562
  %3566 = icmp eq i32 %65, 65535
  br i1 %3566, label %4081, label %3567

; <label>:3567                                    ; preds = %3478
  %3568 = call float @dx.op.unary.f32(i32 83, float %66)  ; DerivCoarseX(value)
  %3569 = call float @dx.op.unary.f32(i32 83, float %67)  ; DerivCoarseX(value)
  %3570 = call float @dx.op.unary.f32(i32 83, float %68)  ; DerivCoarseX(value)
  %3571 = call float @dx.op.unary.f32(i32 84, float %66)  ; DerivCoarseY(value)
  %3572 = call float @dx.op.unary.f32(i32 84, float %67)  ; DerivCoarseY(value)
  %3573 = call float @dx.op.unary.f32(i32 84, float %68)  ; DerivCoarseY(value)
  %3574 = fadd fast float %3568, %66
  %3575 = fadd fast float %3569, %67
  %3576 = fadd fast float %3570, %68
  %3577 = fadd fast float %3571, %66
  %3578 = fadd fast float %3572, %67
  %3579 = fadd fast float %3573, %68
  %3580 = mul i32 %65, 48
  %3581 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3580, i32 undef)  ; BufferLoad(srv,index,wot)
  %3582 = extractvalue %dx.types.ResRet.f32 %3581, 0
  %3583 = extractvalue %dx.types.ResRet.f32 %3581, 1
  %3584 = extractvalue %dx.types.ResRet.f32 %3581, 2
  %3585 = add i32 %3580, 16
  %3586 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3585, i32 undef)  ; BufferLoad(srv,index,wot)
  %3587 = extractvalue %dx.types.ResRet.f32 %3586, 0
  %3588 = extractvalue %dx.types.ResRet.f32 %3586, 1
  %3589 = extractvalue %dx.types.ResRet.f32 %3586, 2
  %3590 = add i32 %3580, 32
  %3591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3590, i32 undef)  ; BufferLoad(srv,index,wot)
  %3592 = extractvalue %dx.types.ResRet.f32 %3591, 0
  %3593 = extractvalue %dx.types.ResRet.f32 %3591, 1
  %3594 = extractvalue %dx.types.ResRet.f32 %3591, 2
  %3595 = extractvalue %dx.types.ResRet.f32 %3591, 3
  %3596 = bitcast float %3595 to i32
  %3597 = fmul fast float %3582, %66
  %3598 = fmul fast float %3583, %67
  %3599 = fmul fast float %3584, %68
  %3600 = fsub fast float %3597, %3587
  %3601 = fsub fast float %3598, %3588
  %3602 = fsub fast float %3599, %3589
  %3603 = call float @dx.op.unary.f32(i32 7, float %3600)  ; Saturate(value)
  %3604 = call float @dx.op.unary.f32(i32 7, float %3601)  ; Saturate(value)
  %3605 = call float @dx.op.unary.f32(i32 7, float %3602)  ; Saturate(value)
  %3606 = fmul fast float %3603, %3592
  %3607 = fmul fast float %3604, %3593
  %3608 = fmul fast float %3605, %3594
  %3609 = fadd fast float %3592, -1.000000e+00
  %3610 = fadd fast float %3593, -1.000000e+00
  %3611 = fadd fast float %3594, -1.000000e+00
  %3612 = call float @dx.op.unary.f32(i32 27, float %3606)  ; Round_ni(value)
  %3613 = call float @dx.op.unary.f32(i32 27, float %3607)  ; Round_ni(value)
  %3614 = call float @dx.op.unary.f32(i32 27, float %3608)  ; Round_ni(value)
  %3615 = call float @dx.op.binary.f32(i32 36, float %3612, float %3609)  ; FMin(a,b)
  %3616 = call float @dx.op.binary.f32(i32 36, float %3613, float %3610)  ; FMin(a,b)
  %3617 = call float @dx.op.binary.f32(i32 36, float %3614, float %3611)  ; FMin(a,b)
  %3618 = fmul fast float %3617, %3593
  %3619 = fadd fast float %3618, %3616
  %3620 = fmul fast float %3619, %3592
  %3621 = fadd fast float %3620, %3615
  %3622 = fptosi float %3621 to i32
  %3623 = add nsw i32 %3622, %3596
  %3624 = shl nsw i32 %3623, 2
  %3625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3624, i32 undef)  ; BufferLoad(srv,index,wot)
  %3626 = extractvalue %dx.types.ResRet.i32 %3625, 0
  %3627 = lshr i32 %3626, 16
  %3628 = icmp eq i32 %3627, 0
  br i1 %3628, label %4050, label %3629

; <label>:3629                                    ; preds = %3567
  br label %3630

; <label>:3630                                    ; preds = %3751, %3629
  %3631 = phi i32 [ %3653, %3751 ], [ %3627, %3629 ]
  %3632 = phi float [ %3752, %3751 ], [ 0.000000e+00, %3629 ]
  %3633 = phi float [ %3753, %3751 ], [ %3511, %3629 ]
  %3634 = phi float [ %3754, %3751 ], [ %3490, %3629 ]
  %3635 = phi float [ %3755, %3751 ], [ 0.000000e+00, %3629 ]
  %3636 = phi float [ %3756, %3751 ], [ 0.000000e+00, %3629 ]
  %3637 = phi float [ %3757, %3751 ], [ %3533, %3629 ]
  %3638 = phi float [ %3758, %3751 ], [ %3535, %3629 ]
  %3639 = phi float [ %3759, %3751 ], [ %3537, %3629 ]
  %3640 = phi float [ %3760, %3751 ], [ %3563, %3629 ]
  %3641 = phi float [ %3761, %3751 ], [ %3564, %3629 ]
  %3642 = phi float [ %3762, %3751 ], [ %3565, %3629 ]
  %3643 = phi float [ %3763, %3751 ], [ %3489, %3629 ]
  %3644 = phi float [ %3764, %3751 ], [ %3488, %3629 ]
  %3645 = phi float [ %3765, %3751 ], [ 0.000000e+00, %3629 ]
  %3646 = phi float [ %3766, %3751 ], [ %3487, %3629 ]
  %3647 = phi float [ %3767, %3751 ], [ %3518, %3629 ]
  %3648 = phi float [ %3768, %3751 ], [ %3519, %3629 ]
  %3649 = phi float [ %3769, %3751 ], [ %3520, %3629 ]
  %3650 = shl nuw nsw i32 %3631, 2
  %3651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3650, i32 undef)  ; BufferLoad(srv,index,wot)
  %3652 = extractvalue %dx.types.ResRet.i32 %3651, 0
  %3653 = lshr i32 %3652, 16
  %3654 = shl i32 %3652, 8
  %3655 = and i32 %3654, 16776960
  %3656 = or i32 %3655, 48
  %3657 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3656, i32 undef)  ; BufferLoad(srv,index,wot)
  %3658 = extractvalue %dx.types.ResRet.f32 %3657, 0
  %3659 = extractvalue %dx.types.ResRet.f32 %3657, 1
  %3660 = extractvalue %dx.types.ResRet.f32 %3657, 2
  %3661 = or i32 %3655, 64
  %3662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3661, i32 undef)  ; BufferLoad(srv,index,wot)
  %3663 = extractvalue %dx.types.ResRet.i32 %3662, 0
  %3664 = extractvalue %dx.types.ResRet.i32 %3662, 1
  %3665 = or i32 %3655, 80
  %3666 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3665, i32 undef)  ; BufferLoad(srv,index,wot)
  %3667 = extractvalue %dx.types.ResRet.f32 %3666, 2
  %3668 = extractvalue %dx.types.ResRet.f32 %3666, 3
  %3669 = or i32 %3655, 96
  %3670 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3669, i32 undef)  ; BufferLoad(srv,index,wot)
  %3671 = extractvalue %dx.types.ResRet.f32 %3670, 0
  %3672 = extractvalue %dx.types.ResRet.f32 %3670, 1
  %3673 = extractvalue %dx.types.ResRet.f32 %3670, 2
  %3674 = extractvalue %dx.types.ResRet.f32 %3670, 3
  %3675 = or i32 %3655, 112
  %3676 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3675, i32 undef)  ; BufferLoad(srv,index,wot)
  %3677 = extractvalue %dx.types.ResRet.f32 %3676, 2
  %3678 = or i32 %3655, 128
  %3679 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3678, i32 undef)  ; BufferLoad(srv,index,wot)
  %3680 = extractvalue %dx.types.ResRet.f32 %3679, 0
  %3681 = extractvalue %dx.types.ResRet.f32 %3679, 1
  %3682 = extractvalue %dx.types.ResRet.f32 %3679, 2
  %3683 = extractvalue %dx.types.ResRet.f32 %3679, 3
  %3684 = or i32 %3655, 144
  %3685 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3684, i32 undef)  ; BufferLoad(srv,index,wot)
  %3686 = extractvalue %dx.types.ResRet.f32 %3685, 0
  %3687 = extractvalue %dx.types.ResRet.f32 %3685, 1
  %3688 = extractvalue %dx.types.ResRet.f32 %3685, 2
  %3689 = extractvalue %dx.types.ResRet.f32 %3685, 3
  %3690 = or i32 %3655, 160
  %3691 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3690, i32 undef)  ; BufferLoad(srv,index,wot)
  %3692 = extractvalue %dx.types.ResRet.f32 %3691, 0
  %3693 = extractvalue %dx.types.ResRet.f32 %3691, 1
  %3694 = extractvalue %dx.types.ResRet.f32 %3691, 2
  %3695 = extractvalue %dx.types.ResRet.f32 %3691, 3
  %3696 = or i32 %3655, 192
  %3697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3696, i32 undef)  ; BufferLoad(srv,index,wot)
  %3698 = extractvalue %dx.types.ResRet.i32 %3697, 0
  %3699 = or i32 %3655, 208
  %3700 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3699, i32 undef)  ; BufferLoad(srv,index,wot)
  %3701 = extractvalue %dx.types.ResRet.f32 %3700, 0
  %3702 = or i32 %3655, 248
  %3703 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3702, i32 undef)  ; BufferLoad(srv,index,wot)
  %3704 = extractvalue %dx.types.ResRet.f32 %3703, 0
  %3705 = extractvalue %dx.types.ResRet.f32 %3703, 1
  %3706 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3655, i32 undef)  ; BufferLoad(srv,index,wot)
  %3707 = extractvalue %dx.types.ResRet.f32 %3706, 0
  %3708 = extractvalue %dx.types.ResRet.f32 %3706, 1
  %3709 = extractvalue %dx.types.ResRet.f32 %3706, 2
  %3710 = extractvalue %dx.types.ResRet.f32 %3706, 3
  %3711 = call float @dx.op.dot4.f32(i32 56, float %3707, float %3708, float %3709, float %3710, float %66, float %67, float %68, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3712 = or i32 %3655, 16
  %3713 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3712, i32 undef)  ; BufferLoad(srv,index,wot)
  %3714 = extractvalue %dx.types.ResRet.f32 %3713, 0
  %3715 = extractvalue %dx.types.ResRet.f32 %3713, 1
  %3716 = extractvalue %dx.types.ResRet.f32 %3713, 2
  %3717 = extractvalue %dx.types.ResRet.f32 %3713, 3
  %3718 = call float @dx.op.dot4.f32(i32 56, float %3714, float %3715, float %3716, float %3717, float %66, float %67, float %68, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3719 = or i32 %3655, 32
  %3720 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3719, i32 undef)  ; BufferLoad(srv,index,wot)
  %3721 = extractvalue %dx.types.ResRet.f32 %3720, 0
  %3722 = extractvalue %dx.types.ResRet.f32 %3720, 1
  %3723 = extractvalue %dx.types.ResRet.f32 %3720, 2
  %3724 = extractvalue %dx.types.ResRet.f32 %3720, 3
  %3725 = call float @dx.op.dot4.f32(i32 56, float %3721, float %3722, float %3723, float %3724, float %66, float %67, float %68, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3726 = call float @dx.op.unary.f32(i32 27, float %3711)  ; Round_ni(value)
  %3727 = call float @dx.op.unary.f32(i32 6, float %3726)  ; FAbs(value)
  %3728 = call float @dx.op.unary.f32(i32 27, float %3718)  ; Round_ni(value)
  %3729 = call float @dx.op.unary.f32(i32 6, float %3728)  ; FAbs(value)
  %3730 = call float @dx.op.unary.f32(i32 6, float %3725)  ; FAbs(value)
  %3731 = call float @dx.op.unary.f32(i32 27, float %3730)  ; Round_ni(value)
  %3732 = fadd fast float %3729, %3727
  %3733 = fadd fast float %3732, %3731
  %3734 = fcmp fast oeq float %3733, 0.000000e+00
  %3735 = call float @dx.op.dot4.f32(i32 56, float %3707, float %3708, float %3709, float %3710, float %3574, float %3575, float %3576, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3736 = call float @dx.op.dot4.f32(i32 56, float %3714, float %3715, float %3716, float %3717, float %3574, float %3575, float %3576, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3737 = call float @dx.op.dot4.f32(i32 56, float %3707, float %3708, float %3709, float %3710, float %3577, float %3578, float %3579, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3738 = call float @dx.op.dot4.f32(i32 56, float %3714, float %3715, float %3716, float %3717, float %3577, float %3578, float %3579, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3739 = fsub fast float %3735, %3711
  %3740 = fsub fast float %3737, %3711
  %3741 = fsub fast float %3736, %3718
  %3742 = fsub fast float %3738, %3718
  %3743 = call float @dx.op.dot3.f32(i32 55, float %3658, float %3659, float %3660, float %127, float %128, float %129)  ; Dot3(ax,ay,az,bx,by,bz)
  %3744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3745 = extractvalue %dx.types.CBufRet.f32 %3744, 2
  %3746 = fadd fast float %3745, %3743
  %3747 = call float @dx.op.unary.f32(i32 7, float %3746)  ; Saturate(value)
  %3748 = extractvalue %dx.types.CBufRet.f32 %3744, 0
  %3749 = fcmp fast ogt float %3747, %3748
  %3750 = and i1 %3734, %3749
  br i1 %3750, label %3771, label %3751

; <label>:3751                                    ; preds = %4036, %3854, %3771, %3630
  %3752 = phi float [ %3632, %3771 ], [ %3857, %3854 ], [ %3857, %4036 ], [ %3632, %3630 ]
  %3753 = phi float [ %3633, %3771 ], [ %3633, %3854 ], [ %4011, %4036 ], [ %3633, %3630 ]
  %3754 = phi float [ %3634, %3771 ], [ %3634, %3854 ], [ %4009, %4036 ], [ %3634, %3630 ]
  %3755 = phi float [ %3635, %3771 ], [ %3635, %3854 ], [ %3981, %4036 ], [ %3635, %3630 ]
  %3756 = phi float [ %3636, %3771 ], [ %3636, %3854 ], [ %3979, %4036 ], [ %3636, %3630 ]
  %3757 = phi float [ %3637, %3771 ], [ %3637, %3854 ], [ %4046, %4036 ], [ %3637, %3630 ]
  %3758 = phi float [ %3638, %3771 ], [ %3638, %3854 ], [ %4047, %4036 ], [ %3638, %3630 ]
  %3759 = phi float [ %3639, %3771 ], [ %3639, %3854 ], [ %4048, %4036 ], [ %3639, %3630 ]
  %3760 = phi float [ %3640, %3771 ], [ %3640, %3854 ], [ %3960, %4036 ], [ %3640, %3630 ]
  %3761 = phi float [ %3641, %3771 ], [ %3641, %3854 ], [ %3961, %4036 ], [ %3641, %3630 ]
  %3762 = phi float [ %3642, %3771 ], [ %3642, %3854 ], [ %3962, %4036 ], [ %3642, %3630 ]
  %3763 = phi float [ %3643, %3771 ], [ %3643, %3854 ], [ %3989, %4036 ], [ %3643, %3630 ]
  %3764 = phi float [ %3644, %3771 ], [ %3644, %3854 ], [ %3986, %4036 ], [ %3644, %3630 ]
  %3765 = phi float [ %3645, %3771 ], [ %3645, %3854 ], [ %3983, %4036 ], [ %3645, %3630 ]
  %3766 = phi float [ %3646, %3771 ], [ %3646, %3854 ], [ %3977, %4036 ], [ %3646, %3630 ]
  %3767 = phi float [ %3647, %3771 ], [ %3647, %3854 ], [ %3972, %4036 ], [ %3647, %3630 ]
  %3768 = phi float [ %3648, %3771 ], [ %3648, %3854 ], [ %3973, %4036 ], [ %3648, %3630 ]
  %3769 = phi float [ %3649, %3771 ], [ %3649, %3854 ], [ %3974, %4036 ], [ %3649, %3630 ]
  %3770 = icmp eq i32 %3653, 0
  br i1 %3770, label %4049, label %3630

; <label>:3771                                    ; preds = %3630
  %3772 = extractvalue %dx.types.ResRet.f32 %3657, 3
  %3773 = extractvalue %dx.types.ResRet.f32 %3676, 3
  %3774 = extractvalue %dx.types.ResRet.f32 %3676, 1
  %3775 = extractvalue %dx.types.ResRet.f32 %3676, 0
  %3776 = extractvalue %dx.types.ResRet.f32 %3666, 1
  %3777 = extractvalue %dx.types.ResRet.f32 %3666, 0
  %3778 = extractvalue %dx.types.ResRet.i32 %3662, 3
  %3779 = extractvalue %dx.types.ResRet.i32 %3662, 2
  %3780 = bitcast float %3772 to i32
  %3781 = add i32 %3778, 0
  %3782 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3781, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3783 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3784 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3782, %dx.types.Handle %3783, float %3711, float %3718, float undef, float undef, i32 0, i32 0, i32 undef, float %3739, float %3741, float undef, float %3740, float %3742, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3785 = extractvalue %dx.types.ResRet.f32 %3784, 0
  %3786 = fmul fast float %3785, %3777
  %3787 = fadd fast float %3786, %3776
  %3788 = call float @dx.op.unary.f32(i32 7, float %3787)  ; Saturate(value)
  %3789 = fmul fast float %3711, %3671
  %3790 = call float @dx.op.tertiary.f32(i32 46, float %3672, float %3718, float %3789)  ; FMad(a,b,c)
  %3791 = fadd fast float %3790, %3775
  %3792 = fmul fast float %3711, %3673
  %3793 = call float @dx.op.tertiary.f32(i32 46, float %3674, float %3718, float %3792)  ; FMad(a,b,c)
  %3794 = fadd fast float %3793, %3774
  %3795 = fmul fast float %3739, %3671
  %3796 = call float @dx.op.tertiary.f32(i32 46, float %3672, float %3741, float %3795)  ; FMad(a,b,c)
  %3797 = fmul fast float %3739, %3673
  %3798 = call float @dx.op.tertiary.f32(i32 46, float %3674, float %3741, float %3797)  ; FMad(a,b,c)
  %3799 = fmul fast float %3740, %3671
  %3800 = call float @dx.op.tertiary.f32(i32 46, float %3672, float %3742, float %3799)  ; FMad(a,b,c)
  %3801 = fmul fast float %3740, %3673
  %3802 = call float @dx.op.tertiary.f32(i32 46, float %3674, float %3742, float %3801)  ; FMad(a,b,c)
  %3803 = add i32 %3779, 0
  %3804 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3803, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3805 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3804, %dx.types.Handle %3783, float %3791, float %3794, float undef, float undef, i32 0, i32 0, i32 undef, float %3796, float %3798, float undef, float %3800, float %3802, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3806 = extractvalue %dx.types.ResRet.f32 %3805, 0
  %3807 = and i32 %3780, 1024
  %3808 = icmp ne i32 %3807, 0
  %3809 = fcmp fast ogt float %3806, 0x3FE0101020000000
  %3810 = uitofp i1 %3809 to float
  %3811 = select i1 %3808, float %3810, float %3806
  %3812 = and i32 %3780, 8192
  %3813 = icmp ne i32 %3812, 0
  %3814 = select i1 %3813, float %3773, float 1.000000e+00
  %3815 = fmul fast float %3711, 2.000000e+00
  %3816 = fadd fast float %3815, -1.000000e+00
  %3817 = call float @dx.op.unary.f32(i32 6, float %3816)  ; FAbs(value)
  %3818 = fmul fast float %3817, %3704
  %3819 = fsub fast float %3818, %3704
  %3820 = call float @dx.op.unary.f32(i32 7, float %3819)  ; Saturate(value)
  %3821 = fmul fast float %3718, 2.000000e+00
  %3822 = fadd fast float %3821, -1.000000e+00
  %3823 = call float @dx.op.unary.f32(i32 6, float %3822)  ; FAbs(value)
  %3824 = fmul fast float %3823, %3705
  %3825 = fsub fast float %3824, %3705
  %3826 = call float @dx.op.unary.f32(i32 7, float %3825)  ; Saturate(value)
  %3827 = fmul fast float %3730, %3667
  %3828 = fsub fast float %3827, %3667
  %3829 = call float @dx.op.unary.f32(i32 7, float %3828)  ; Saturate(value)
  %3830 = fmul fast float %3788, %3814
  %3831 = fmul fast float %3830, %3785
  %3832 = fmul fast float %3831, %3820
  %3833 = fmul fast float %3832, %3811
  %3834 = fmul fast float %3833, %3826
  %3835 = fmul fast float %3834, %3829
  %3836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3837 = extractvalue %dx.types.CBufRet.f32 %3836, 1
  %3838 = extractvalue %dx.types.CBufRet.f32 %3836, 0
  %3839 = fsub fast float %3747, %3838
  %3840 = fmul fast float %3839, %3837
  %3841 = call float @dx.op.unary.f32(i32 7, float %3840)  ; Saturate(value)
  %3842 = fmul fast float %3835, %3668
  %3843 = fadd fast float %3835, %3668
  %3844 = fmul fast float %3843, %3677
  %3845 = fsub fast float %3844, %3677
  %3846 = call float @dx.op.unary.f32(i32 7, float %3845)  ; Saturate(value)
  %3847 = and i32 %3780, 128
  %3848 = icmp ne i32 %3847, 0
  %3849 = select i1 %3848, float %3846, float %3842
  %3850 = fmul fast float %3849, %3841
  %3851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3852 = extractvalue %dx.types.CBufRet.f32 %3851, 0
  %3853 = fcmp fast ugt float %3850, %3852
  br i1 %3853, label %3854, label %3751

; <label>:3854                                    ; preds = %3771
  %3855 = select i1 %3813, float %3850, float 0.000000e+00
  %3856 = fadd fast float %3855, %3632
  %3857 = call float @dx.op.unary.f32(i32 7, float %3856)  ; Saturate(value)
  br i1 %3813, label %3751, label %3858

; <label>:3858                                    ; preds = %3854
  %3859 = and i32 %3780, 4
  %3860 = and i32 %3780, 8
  %3861 = add i32 %3663, 0
  %3862 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3861, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3863 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3864 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3862, %dx.types.Handle %3863, float %3791, float %3794, float undef, float undef, i32 0, i32 0, i32 undef, float %3796, float %3798, float undef, float %3800, float %3802, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3865 = extractvalue %dx.types.ResRet.f32 %3864, 0
  %3866 = extractvalue %dx.types.ResRet.f32 %3864, 1
  %3867 = extractvalue %dx.types.ResRet.f32 %3864, 2
  %3868 = extractvalue %dx.types.ResRet.f32 %3864, 3
  %3869 = bitcast float %3689 to i32
  %3870 = and i32 %3869, 255
  %3871 = uitofp i32 %3870 to float
  %3872 = lshr i32 %3869, 8
  %3873 = and i32 %3872, 255
  %3874 = uitofp i32 %3873 to float
  %3875 = fmul fast float %3868, %3871
  %3876 = fadd fast float %3875, %3874
  %3877 = fmul fast float %3876, 0x3F70101000000000
  %3878 = add i32 %3664, 0
  %3879 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3878, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3880 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3879, %dx.types.Handle %3863, float %3791, float %3794, float undef, float undef, i32 0, i32 0, i32 undef, float %3796, float %3798, float undef, float %3800, float %3802, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3881 = extractvalue %dx.types.ResRet.f32 %3880, 0
  %3882 = extractvalue %dx.types.ResRet.f32 %3880, 1
  %3883 = extractvalue %dx.types.ResRet.f32 %3880, 2
  %3884 = extractvalue %dx.types.ResRet.f32 %3880, 3
  %3885 = bitcast float %3683 to i32
  %3886 = and i32 %3885, 255
  %3887 = uitofp i32 %3886 to float
  %3888 = lshr i32 %3885, 8
  %3889 = and i32 %3888, 255
  %3890 = uitofp i32 %3889 to float
  %3891 = lshr i32 %3885, 16
  %3892 = and i32 %3891, 255
  %3893 = uitofp i32 %3892 to float
  %3894 = fmul fast float %3893, 0x3F70101000000000
  %3895 = fmul fast float %3881, %3887
  %3896 = fadd fast float %3895, %3890
  %3897 = fmul fast float %3896, 0x3F70101000000000
  %3898 = fadd fast float %3882, -5.000000e-01
  %3899 = fadd fast float %3884, -5.000000e-01
  %3900 = fmul fast float %3898, %3894
  %3901 = fmul fast float %3899, %3894
  %3902 = fadd fast float %3900, 5.000000e-01
  %3903 = fadd fast float %3901, 5.000000e-01
  %3904 = fmul fast float %3865, %3692
  %3905 = fmul fast float %3866, %3693
  %3906 = fmul fast float %3867, %3694
  %3907 = fmul fast float %3902, 2.000000e+00
  %3908 = fadd fast float %3907, -1.000000e+00
  %3909 = fmul fast float %3903, 2.000000e+00
  %3910 = fadd fast float %3909, -1.000000e+00
  %3911 = fadd fast float %3908, %3910
  %3912 = fmul fast float %3911, 5.000000e-01
  %3913 = fsub fast float %3908, %3910
  %3914 = fmul fast float %3913, 5.000000e-01
  %3915 = call float @dx.op.unary.f32(i32 6, float %3912)  ; FAbs(value)
  %3916 = fsub fast float 1.000000e+00, %3915
  %3917 = call float @dx.op.unary.f32(i32 6, float %3914)  ; FAbs(value)
  %3918 = fsub fast float %3916, %3917
  %3919 = call float @dx.op.dot3.f32(i32 55, float %3912, float %3914, float %3918, float %3912, float %3914, float %3918)  ; Dot3(ax,ay,az,bx,by,bz)
  %3920 = call float @dx.op.unary.f32(i32 25, float %3919)  ; Rsqrt(value)
  %3921 = fmul fast float %3912, %3920
  %3922 = fmul fast float %3914, %3920
  %3923 = fmul fast float %3920, %3918
  %3924 = fmul fast float %3923, %3658
  %3925 = fmul fast float %3923, %3659
  %3926 = fmul fast float %3923, %3660
  %3927 = fmul fast float %3921, %3680
  %3928 = fmul fast float %3921, %3681
  %3929 = fmul fast float %3921, %3682
  %3930 = fadd fast float %3927, %3924
  %3931 = fadd fast float %3928, %3925
  %3932 = fadd fast float %3929, %3926
  %3933 = fmul fast float %3922, %3686
  %3934 = fmul fast float %3922, %3687
  %3935 = fmul fast float %3922, %3688
  %3936 = fadd fast float %3930, %3933
  %3937 = fadd fast float %3931, %3934
  %3938 = fadd fast float %3932, %3935
  %3939 = call float @dx.op.dot3.f32(i32 55, float %3936, float %3937, float %3938, float %3936, float %3937, float %3938)  ; Dot3(ax,ay,az,bx,by,bz)
  %3940 = call float @dx.op.unary.f32(i32 25, float %3939)  ; Rsqrt(value)
  %3941 = fmul fast float %3936, %3940
  %3942 = fmul fast float %3937, %3940
  %3943 = fmul fast float %3938, %3940
  %3944 = icmp ne i32 %3860, 0
  %3945 = select i1 %3944, float 1.000000e+00, float 0.000000e+00
  %3946 = fmul fast float %3850, %3945
  %3947 = and i32 %3780, 1
  %3948 = icmp eq i32 %3947, 0
  br i1 %3948, label %3949, label %3953

; <label>:3949                                    ; preds = %3858
  %3950 = fsub fast float %3941, %3640
  %3951 = fsub fast float %3942, %3641
  %3952 = fsub fast float %3943, %3642
  br label %3953

; <label>:3953                                    ; preds = %3949, %3858
  %3954 = phi float [ %3950, %3949 ], [ %3941, %3858 ]
  %3955 = phi float [ %3951, %3949 ], [ %3942, %3858 ]
  %3956 = phi float [ %3952, %3949 ], [ %3943, %3858 ]
  %3957 = fmul float %3956, %3946
  %3958 = fmul float %3955, %3946
  %3959 = fmul float %3954, %3946
  %3960 = fadd fast float %3959, %3640
  %3961 = fadd fast float %3958, %3641
  %3962 = fadd fast float %3957, %3642
  %3963 = icmp ne i32 %3859, 0
  %3964 = select i1 %3963, float 1.000000e+00, float 0.000000e+00
  %3965 = fmul fast float %3850, %3964
  %3966 = fsub fast float %3904, %3647
  %3967 = fsub fast float %3905, %3648
  %3968 = fsub fast float %3906, %3649
  %3969 = fmul fast float %3966, %3965
  %3970 = fmul fast float %3967, %3965
  %3971 = fmul fast float %3968, %3965
  %3972 = fadd fast float %3969, %3647
  %3973 = fadd fast float %3970, %3648
  %3974 = fadd fast float %3971, %3649
  %3975 = fsub fast float %3877, %3646
  %3976 = fmul fast float %3975, %3965
  %3977 = fadd fast float %3976, %3646
  %3978 = fmul fast float %3965, %3636
  %3979 = fsub fast float %3636, %3978
  %3980 = fmul fast float %3965, %3635
  %3981 = fsub fast float %3635, %3980
  %3982 = fadd fast float %3850, %3645
  %3983 = call float @dx.op.unary.f32(i32 7, float %3982)  ; Saturate(value)
  %3984 = fsub fast float %3897, %3644
  %3985 = fmul fast float %3984, %3946
  %3986 = fadd fast float %3985, %3644
  %3987 = fsub fast float %3883, %3643
  %3988 = fmul fast float %3987, %3946
  %3989 = fadd fast float %3988, %3643
  %3990 = call float @dx.op.dot3.f32(i32 55, float %3904, float %3905, float %3906, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3992 = extractvalue %dx.types.CBufRet.f32 %3991, 0
  %3993 = extractvalue %dx.types.CBufRet.f32 %3991, 1
  %3994 = fmul fast float %3993, %3990
  %3995 = fadd fast float %3994, %3992
  %3996 = call float @dx.op.unary.f32(i32 7, float %3995)  ; Saturate(value)
  %3997 = bitcast float %3695 to i32
  %3998 = and i32 %3997, 65535
  %3999 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3998)  ; LegacyF16ToF32(value)
  %4000 = lshr i32 %3997, 16
  %4001 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4000)  ; LegacyF16ToF32(value)
  %4002 = fcmp fast oge float %3999, 0.000000e+00
  %4003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4004 = extractvalue %dx.types.CBufRet.f32 %4003, 0
  %4005 = select i1 %4002, float %3999, float %4004
  %4006 = fadd fast float %4005, %4001
  %4007 = fsub fast float %3996, %3634
  %4008 = fmul fast float %4007, %3850
  %4009 = fadd fast float %4008, %3634
  %4010 = fmul fast float %4006, %3850
  %4011 = call float @dx.op.binary.f32(i32 35, float %3633, float %4010)  ; FMax(a,b)
  %4012 = and i32 %3780, 16
  %4013 = icmp eq i32 %4012, 0
  br i1 %4013, label %4036, label %4014

; <label>:4014                                    ; preds = %3953
  %4015 = bitcast float %3701 to i32
  %4016 = add i32 %3698, 0
  %4017 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4016, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4018 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4017, %dx.types.Handle %3863, float %3791, float %3794, float undef, float undef, i32 0, i32 0, i32 undef, float %3796, float %3798, float undef, float %3800, float %3802, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4019 = extractvalue %dx.types.ResRet.f32 %4018, 0
  %4020 = extractvalue %dx.types.ResRet.f32 %4018, 1
  %4021 = extractvalue %dx.types.ResRet.f32 %4018, 2
  %4022 = and i32 %4015, 65535
  %4023 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4022)  ; LegacyF16ToF32(value)
  %4024 = fmul fast float %4019, %3692
  %4025 = fmul fast float %4020, %3693
  %4026 = fmul fast float %4021, %3694
  %4027 = and i32 %3780, 16384
  %4028 = icmp ne i32 %4027, 0
  %4029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4030 = extractvalue %dx.types.CBufRet.f32 %4029, 0
  %4031 = select i1 %4028, float %4030, float 1.000000e+00
  %4032 = fmul fast float %4031, %4023
  %4033 = fmul fast float %4024, %4032
  %4034 = fmul fast float %4025, %4032
  %4035 = fmul fast float %4026, %4032
  br label %4036

; <label>:4036                                    ; preds = %4014, %3953
  %4037 = phi float [ %4033, %4014 ], [ 0.000000e+00, %3953 ]
  %4038 = phi float [ %4034, %4014 ], [ 0.000000e+00, %3953 ]
  %4039 = phi float [ %4035, %4014 ], [ 0.000000e+00, %3953 ]
  %4040 = fsub fast float %4037, %3637
  %4041 = fsub fast float %4038, %3638
  %4042 = fsub fast float %4039, %3639
  %4043 = fmul fast float %4040, %3850
  %4044 = fmul fast float %4041, %3850
  %4045 = fmul fast float %4042, %3850
  %4046 = fadd fast float %4043, %3637
  %4047 = fadd fast float %4044, %3638
  %4048 = fadd fast float %4045, %3639
  br label %3751

; <label>:4049                                    ; preds = %3751
  br label %4050

; <label>:4050                                    ; preds = %4049, %3567
  %4051 = phi float [ 0.000000e+00, %3567 ], [ %3752, %4049 ]
  %4052 = phi float [ %3511, %3567 ], [ %3753, %4049 ]
  %4053 = phi float [ %3490, %3567 ], [ %3754, %4049 ]
  %4054 = phi float [ 0.000000e+00, %3567 ], [ %3755, %4049 ]
  %4055 = phi float [ 0.000000e+00, %3567 ], [ %3756, %4049 ]
  %4056 = phi float [ %3533, %3567 ], [ %3757, %4049 ]
  %4057 = phi float [ %3535, %3567 ], [ %3758, %4049 ]
  %4058 = phi float [ %3537, %3567 ], [ %3759, %4049 ]
  %4059 = phi float [ %3563, %3567 ], [ %3760, %4049 ]
  %4060 = phi float [ %3564, %3567 ], [ %3761, %4049 ]
  %4061 = phi float [ %3565, %3567 ], [ %3762, %4049 ]
  %4062 = phi float [ %3489, %3567 ], [ %3763, %4049 ]
  %4063 = phi float [ %3488, %3567 ], [ %3764, %4049 ]
  %4064 = phi float [ 0.000000e+00, %3567 ], [ %3765, %4049 ]
  %4065 = phi float [ %3487, %3567 ], [ %3766, %4049 ]
  %4066 = phi float [ %3518, %3567 ], [ %3767, %4049 ]
  %4067 = phi float [ %3519, %3567 ], [ %3768, %4049 ]
  %4068 = phi float [ %3520, %3567 ], [ %3769, %4049 ]
  %4069 = call float @dx.op.dot3.f32(i32 55, float %4059, float %4060, float %4061, float %4059, float %4060, float %4061)  ; Dot3(ax,ay,az,bx,by,bz)
  %4070 = call float @dx.op.unary.f32(i32 25, float %4069)  ; Rsqrt(value)
  %4071 = fmul fast float %4070, %4059
  %4072 = fmul fast float %4070, %4060
  %4073 = fmul fast float %4070, %4061
  %4074 = fadd fast float %4064, %1270
  %4075 = call float @dx.op.unary.f32(i32 7, float %4074)  ; Saturate(value)
  %4076 = call float @dx.op.dot3.f32(i32 55, float %4071, float %4072, float %4073, float %4071, float %4072, float %4073)  ; Dot3(ax,ay,az,bx,by,bz)
  %4077 = call float @dx.op.unary.f32(i32 25, float %4076)  ; Rsqrt(value)
  %4078 = fmul fast float %4077, %4071
  %4079 = fmul fast float %4077, %4072
  %4080 = fmul fast float %4077, %4073
  br label %4081

; <label>:4081                                    ; preds = %4050, %3478
  %4082 = phi float [ %4078, %4050 ], [ %3563, %3478 ]
  %4083 = phi float [ %4079, %4050 ], [ %3564, %3478 ]
  %4084 = phi float [ %4080, %4050 ], [ %3565, %3478 ]
  %4085 = phi float [ %4066, %4050 ], [ %3518, %3478 ]
  %4086 = phi float [ %4067, %4050 ], [ %3519, %3478 ]
  %4087 = phi float [ %4068, %4050 ], [ %3520, %3478 ]
  %4088 = phi float [ %4056, %4050 ], [ %3533, %3478 ]
  %4089 = phi float [ %4057, %4050 ], [ %3535, %3478 ]
  %4090 = phi float [ %4058, %4050 ], [ %3537, %3478 ]
  %4091 = phi float [ %4065, %4050 ], [ %3487, %3478 ]
  %4092 = phi float [ %4075, %4050 ], [ %1270, %3478 ]
  %4093 = phi float [ %4063, %4050 ], [ %3488, %3478 ]
  %4094 = phi float [ %4062, %4050 ], [ %3489, %3478 ]
  %4095 = phi float [ %4055, %4050 ], [ 0.000000e+00, %3478 ]
  %4096 = phi float [ %4054, %4050 ], [ 0.000000e+00, %3478 ]
  %4097 = phi float [ %4051, %4050 ], [ 0.000000e+00, %3478 ]
  %4098 = phi float [ %4052, %4050 ], [ %3511, %3478 ]
  %4099 = phi float [ %4053, %4050 ], [ %3490, %3478 ]
  %4100 = fadd fast float %4091, 0xBFB99999A0000000
  %4101 = call float @dx.op.unary.f32(i32 7, float %4100)  ; Saturate(value)
  %4102 = fmul fast float %4101, 0x3FF1C71C80000000
  %4103 = call float @dx.op.binary.f32(i32 36, float %4091, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4104 = fsub fast float 1.000000e+00, %4102
  %4105 = call float @dx.op.unary.f32(i32 7, float %4104)  ; Saturate(value)
  %4106 = fmul fast float %4105, %4085
  %4107 = fmul fast float %4105, %4086
  %4108 = fmul fast float %4105, %4087
  %4109 = call float @dx.op.unary.f32(i32 7, float %4106)  ; Saturate(value)
  %4110 = call float @dx.op.unary.f32(i32 7, float %4107)  ; Saturate(value)
  %4111 = call float @dx.op.unary.f32(i32 7, float %4108)  ; Saturate(value)
  %4112 = fmul fast float %4102, %4085
  %4113 = fmul fast float %4102, %4086
  %4114 = fmul fast float %4102, %4087
  %4115 = fadd fast float %4112, %4103
  %4116 = fadd fast float %4113, %4103
  %4117 = fadd fast float %4114, %4103
  %4118 = call float @dx.op.unary.f32(i32 7, float %4115)  ; Saturate(value)
  %4119 = call float @dx.op.unary.f32(i32 7, float %4116)  ; Saturate(value)
  %4120 = call float @dx.op.unary.f32(i32 7, float %4117)  ; Saturate(value)
  %4121 = call float @dx.op.unary.f32(i32 7, float %4093)  ; Saturate(value)
  %4122 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4123 = extractvalue %dx.types.CBufRet.i32 %4122, 3
  %4124 = and i32 %4123, 8
  %4125 = icmp ne i32 %4124, 0
  %4126 = call float @dx.op.binary.f32(i32 35, float %4109, float %4085)  ; FMax(a,b)
  %4127 = call float @dx.op.binary.f32(i32 35, float %4110, float %4085)  ; FMax(a,b)
  %4128 = call float @dx.op.binary.f32(i32 35, float %4111, float %4085)  ; FMax(a,b)
  %4129 = call float @dx.op.dot3.f32(i32 55, float %4109, float %4110, float %4111, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4130 = select i1 %279, float %4085, float %4109
  %4131 = select i1 %279, float %4129, float %4110
  %4132 = select i1 %279, float 1.000000e+00, float %4111
  %4133 = select i1 %4125, float %4126, float %4130
  %4134 = select i1 %4125, float %4127, float %4131
  %4135 = select i1 %4125, float %4128, float %4132
  %4136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4137 = extractvalue %dx.types.CBufRet.f32 %4136, 0
  %4138 = extractvalue %dx.types.CBufRet.f32 %4136, 1
  %4139 = extractvalue %dx.types.CBufRet.f32 %4136, 2
  %4140 = fadd fast float %4137, %207
  %4141 = fadd fast float %4138, %208
  %4142 = fadd fast float %4139, %209
  %4143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4144 = extractvalue %dx.types.CBufRet.f32 %4143, 0
  %4145 = extractvalue %dx.types.CBufRet.f32 %4143, 1
  %4146 = fsub fast float %4140, %4144
  %4147 = fsub fast float %4141, %4145
  %4148 = fmul fast float %4146, %4146
  %4149 = fmul fast float %4147, %4147
  %4150 = fadd fast float %4148, %4149
  %4151 = call float @dx.op.unary.f32(i32 24, float %4150)  ; Sqrt(value)
  %4152 = extractvalue %dx.types.CBufRet.f32 %4143, 2
  %4153 = fcmp fast olt float %4151, %4152
  br i1 %4153, label %4154, label %4221

; <label>:4154                                    ; preds = %4081
  %4155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4156 = extractvalue %dx.types.CBufRet.f32 %4155, 0
  %4157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4158 = extractvalue %dx.types.CBufRet.f32 %4157, 0
  %4159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4160 = extractvalue %dx.types.CBufRet.f32 %4159, 0
  %4161 = extractvalue %dx.types.CBufRet.f32 %4155, 1
  %4162 = extractvalue %dx.types.CBufRet.f32 %4157, 1
  %4163 = extractvalue %dx.types.CBufRet.f32 %4159, 1
  %4164 = extractvalue %dx.types.CBufRet.f32 %4155, 3
  %4165 = extractvalue %dx.types.CBufRet.f32 %4157, 3
  %4166 = extractvalue %dx.types.CBufRet.f32 %4159, 3
  %4167 = fadd fast float %4164, %4140
  %4168 = fadd fast float %4165, %4141
  %4169 = fadd fast float %4166, %4142
  %4170 = fmul fast float %4167, %4156
  %4171 = call float @dx.op.tertiary.f32(i32 46, float %4168, float %4158, float %4170)  ; FMad(a,b,c)
  %4172 = call float @dx.op.tertiary.f32(i32 46, float %4169, float %4160, float %4171)  ; FMad(a,b,c)
  %4173 = fmul fast float %4167, %4161
  %4174 = call float @dx.op.tertiary.f32(i32 46, float %4168, float %4162, float %4173)  ; FMad(a,b,c)
  %4175 = call float @dx.op.tertiary.f32(i32 46, float %4169, float %4163, float %4174)  ; FMad(a,b,c)
  %4176 = fsub fast float %4172, %4164
  %4177 = fsub fast float %4175, %4165
  %4178 = fsub fast float %4176, %4144
  %4179 = fadd fast float %4178, %4152
  %4180 = fsub fast float %4177, %4145
  %4181 = fadd fast float %4180, %4152
  %4182 = extractvalue %dx.types.CBufRet.f32 %4143, 3
  %4183 = fmul fast float %4179, %4182
  %4184 = fmul fast float %4181, %4182
  %4185 = call float @dx.op.unary.f32(i32 7, float %4183)  ; Saturate(value)
  %4186 = call float @dx.op.unary.f32(i32 7, float %4184)  ; Saturate(value)
  %4187 = fsub fast float 1.000000e+00, %4185
  %4188 = fsub fast float 1.000000e+00, %4186
  %4189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %56, float %4187, float %4188, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4190 = extractvalue %dx.types.ResRet.f32 %4189, 0
  %4191 = fcmp fast ugt float %4190, 0.000000e+00
  br i1 %4191, label %4192, label %4495

; <label>:4192                                    ; preds = %4154
  %4193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4194 = extractvalue %dx.types.CBufRet.f32 %4193, 2
  %4195 = fmul fast float %4194, %4190
  %4196 = extractvalue %dx.types.CBufRet.f32 %4193, 3
  %4197 = fadd fast float %4196, %4195
  %4198 = extractvalue %dx.types.CBufRet.f32 %4159, 2
  %4199 = fadd fast float %4197, %4166
  %4200 = fmul fast float %4172, %4160
  %4201 = call float @dx.op.tertiary.f32(i32 46, float %4175, float %4163, float %4200)  ; FMad(a,b,c)
  %4202 = call float @dx.op.tertiary.f32(i32 46, float %4199, float %4198, float %4201)  ; FMad(a,b,c)
  %4203 = fsub fast float %4202, %4166
  %4204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4205 = extractvalue %dx.types.CBufRet.f32 %4204, 2
  %4206 = fsub fast float %4203, %4205
  %4207 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %56, float %4187, float %4188, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4208 = extractvalue %dx.types.ResRet.f32 %4207, 0
  %4209 = extractvalue %dx.types.ResRet.f32 %4207, 1
  %4210 = extractvalue %dx.types.ResRet.f32 %4207, 2
  %4211 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %56, float %4187, float %4188, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4212 = extractvalue %dx.types.ResRet.f32 %4211, 0
  %4213 = extractvalue %dx.types.ResRet.f32 %4211, 1
  %4214 = extractvalue %dx.types.ResRet.f32 %4211, 2
  %4215 = fadd fast float %4212, %4208
  %4216 = fmul fast float %4215, 0x3F847AE140000000
  %4217 = fadd fast float %4213, %4209
  %4218 = fmul fast float %4217, 0x3F847AE140000000
  %4219 = fadd fast float %4214, %4210
  %4220 = fmul fast float %4219, 0x3F847AE140000000
  br label %4495

; <label>:4221                                    ; preds = %4081
  %4222 = and i32 %258, 1
  %4223 = icmp eq i32 %4222, 0
  br i1 %4223, label %4495, label %4224

; <label>:4224                                    ; preds = %4221
  %4225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4226 = extractvalue %dx.types.CBufRet.f32 %4225, 0
  %4227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4228 = extractvalue %dx.types.CBufRet.f32 %4227, 0
  %4229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4230 = extractvalue %dx.types.CBufRet.f32 %4229, 0
  %4231 = extractvalue %dx.types.CBufRet.f32 %4225, 1
  %4232 = extractvalue %dx.types.CBufRet.f32 %4227, 1
  %4233 = extractvalue %dx.types.CBufRet.f32 %4229, 1
  %4234 = extractvalue %dx.types.CBufRet.f32 %4225, 3
  %4235 = extractvalue %dx.types.CBufRet.f32 %4227, 3
  %4236 = extractvalue %dx.types.CBufRet.f32 %4229, 3
  %4237 = fadd fast float %4234, %4140
  %4238 = fadd fast float %4235, %4141
  %4239 = fadd fast float %4236, %4142
  %4240 = fmul fast float %4237, %4226
  %4241 = call float @dx.op.tertiary.f32(i32 46, float %4238, float %4228, float %4240)  ; FMad(a,b,c)
  %4242 = call float @dx.op.tertiary.f32(i32 46, float %4239, float %4230, float %4241)  ; FMad(a,b,c)
  %4243 = fmul fast float %4237, %4231
  %4244 = call float @dx.op.tertiary.f32(i32 46, float %4238, float %4232, float %4243)  ; FMad(a,b,c)
  %4245 = call float @dx.op.tertiary.f32(i32 46, float %4239, float %4233, float %4244)  ; FMad(a,b,c)
  %4246 = fsub fast float %4242, %4234
  %4247 = fsub fast float %4245, %4235
  %4248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4249 = extractvalue %dx.types.CBufRet.f32 %4248, 0
  %4250 = extractvalue %dx.types.CBufRet.f32 %4248, 1
  %4251 = extractvalue %dx.types.CBufRet.f32 %4248, 2
  %4252 = extractvalue %dx.types.CBufRet.f32 %4248, 3
  %4253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4254 = extractvalue %dx.types.CBufRet.f32 %4253, 3
  %4255 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4256 = extractvalue %dx.types.CBufRet.i32 %4255, 0
  %4257 = extractvalue %dx.types.CBufRet.i32 %4255, 1
  %4258 = udiv i32 %4257, %4256
  %4259 = fsub fast float %4246, %4249
  %4260 = fsub fast float %4247, %4250
  %4261 = call float @dx.op.binary.f32(i32 35, float %4259, float 0.000000e+00)  ; FMax(a,b)
  %4262 = call float @dx.op.binary.f32(i32 35, float %4260, float 0.000000e+00)  ; FMax(a,b)
  %4263 = call float @dx.op.binary.f32(i32 36, float %4261, float %4251)  ; FMin(a,b)
  %4264 = call float @dx.op.binary.f32(i32 36, float %4262, float %4252)  ; FMin(a,b)
  %4265 = add i32 %4256, -1
  %4266 = add i32 %4258, -1
  %4267 = fmul fast float %4263, %4254
  %4268 = fmul fast float %4264, %4254
  %4269 = fptoui float %4267 to i32
  %4270 = fptoui float %4268 to i32
  %4271 = call i32 @dx.op.binary.i32(i32 40, i32 %4269, i32 %4265)  ; UMin(a,b)
  %4272 = call i32 @dx.op.binary.i32(i32 40, i32 %4270, i32 %4266)  ; UMin(a,b)
  %4273 = mul i32 %4272, %4256
  %4274 = add i32 %4273, %4271
  %4275 = shl i32 %4274, 2
  %4276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4275, i32 undef)  ; BufferLoad(srv,index,wot)
  %4277 = extractvalue %dx.types.ResRet.i32 %4276, 0
  %4278 = icmp eq i32 %4277, -1
  br i1 %4278, label %4495, label %4279

; <label>:4279                                    ; preds = %4224
  %4280 = mul i32 %4277, 148
  %4281 = add i32 %4280, 4
  %4282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4281, i32 undef)  ; BufferLoad(srv,index,wot)
  %4283 = extractvalue %dx.types.ResRet.f32 %4282, 0
  %4284 = add i32 %4280, 8
  %4285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4284, i32 undef)  ; BufferLoad(srv,index,wot)
  %4286 = extractvalue %dx.types.ResRet.f32 %4285, 0
  %4287 = add i32 %4280, 36
  %4288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4287, i32 undef)  ; BufferLoad(srv,index,wot)
  %4289 = extractvalue %dx.types.ResRet.f32 %4288, 0
  %4290 = add i32 %4280, 60
  %4291 = add i32 %4280, 92
  %4292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4291, i32 undef)  ; BufferLoad(srv,index,wot)
  %4293 = extractvalue %dx.types.ResRet.i32 %4292, 0
  %4294 = add i32 %4280, 116
  %4295 = fsub fast float %4246, %4283
  %4296 = fsub fast float %4247, %4286
  %4297 = fmul fast float %4254, %4295
  %4298 = fmul fast float %4254, %4296
  %4299 = call float @dx.op.unary.f32(i32 7, float %4297)  ; Saturate(value)
  %4300 = call float @dx.op.unary.f32(i32 7, float %4298)  ; Saturate(value)
  %4301 = fsub fast float 1.000000e+00, %4300
  %4302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4303 = extractvalue %dx.types.CBufRet.f32 %4302, 2
  %4304 = call float @dx.op.unary.f32(i32 83, float %4299)  ; DerivCoarseX(value)
  %4305 = call float @dx.op.unary.f32(i32 83, float %4301)  ; DerivCoarseX(value)
  %4306 = call float @dx.op.unary.f32(i32 84, float %4299)  ; DerivCoarseY(value)
  %4307 = call float @dx.op.unary.f32(i32 84, float %4301)  ; DerivCoarseY(value)
  %4308 = fmul fast float %4304, %4303
  %4309 = fmul fast float %4305, %4303
  %4310 = fmul fast float %4306, %4303
  %4311 = fmul fast float %4307, %4303
  %4312 = call float @dx.op.dot2.f32(i32 54, float %4310, float %4311, float %4310, float %4311)  ; Dot2(ax,ay,bx,by)
  %4313 = call float @dx.op.dot2.f32(i32 54, float %4308, float %4309, float %4308, float %4309)  ; Dot2(ax,ay,bx,by)
  %4314 = call float @dx.op.binary.f32(i32 35, float %4313, float %4312)  ; FMax(a,b)
  %4315 = call float @dx.op.unary.f32(i32 23, float %4314)  ; Log(value)
  %4316 = fmul fast float %4315, 5.000000e-01
  %4317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4318 = extractvalue %dx.types.CBufRet.f32 %4317, 1
  %4319 = fadd fast float %4318, %4316
  %4320 = call float @dx.op.binary.f32(i32 35, float %4319, float 0.000000e+00)  ; FMax(a,b)
  %4321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4322 = extractvalue %dx.types.CBufRet.f32 %4321, 3
  %4323 = fadd fast float %4322, %4320
  %4324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4325 = extractvalue %dx.types.CBufRet.f32 %4324, 3
  %4326 = fadd fast float %4323, %4325
  %4327 = add i32 %4293, 0
  %4328 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4327, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4329 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4328, i32 0)  ; GetDimensions(handle,mipLevel)
  %4330 = extractvalue %dx.types.Dimensions %4329, 0
  %4331 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4330)  ; FirstbitLo(value)
  %4332 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4333 = extractvalue %dx.types.CBufRet.i32 %4332, 1
  %4334 = sub nsw i32 %4333, %4331
  %4335 = sitofp i32 %4334 to float
  %4336 = fsub fast float %4326, %4335
  %4337 = call float @dx.op.binary.f32(i32 35, float %4336, float 0.000000e+00)  ; FMax(a,b)
  %4338 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4328, %dx.types.Handle %54, float %4299, float %4301, float %4289, float undef, i32 0, i32 0, i32 undef, float %4337)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4339 = extractvalue %dx.types.ResRet.f32 %4338, 0
  %4340 = fcmp ule float %4339, 0x3FE0101020000000
  %4341 = extractvalue %dx.types.CBufRet.i32 %4332, 0
  %4342 = and i32 %4341, 128
  %4343 = icmp ne i32 %4342, 0
  %4344 = and i1 %4340, %4343
  br i1 %4344, label %4495, label %4345

; <label>:4345                                    ; preds = %4279
  %4346 = add i32 %4280, 20
  %4347 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4346, i32 undef)  ; BufferLoad(srv,index,wot)
  %4348 = extractvalue %dx.types.ResRet.f32 %4347, 0
  %4349 = add i32 %4280, 24
  %4350 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4349, i32 undef)  ; BufferLoad(srv,index,wot)
  %4351 = extractvalue %dx.types.ResRet.f32 %4350, 0
  %4352 = add i32 %4280, 40
  %4353 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4352, i32 undef)  ; BufferLoad(srv,index,wot)
  %4354 = extractvalue %dx.types.ResRet.f32 %4353, 0
  %4355 = add i32 %4280, 96
  %4356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4355, i32 undef)  ; BufferLoad(srv,index,wot)
  %4357 = extractvalue %dx.types.ResRet.i32 %4356, 0
  %4358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4359 = extractvalue %dx.types.CBufRet.f32 %4358, 2
  %4360 = fmul fast float %4359, %4299
  %4361 = fmul fast float %4359, %4301
  %4362 = extractvalue %dx.types.CBufRet.f32 %4358, 3
  %4363 = fadd fast float %4360, %4362
  %4364 = fadd fast float %4361, %4362
  %4365 = add i32 %4357, 0
  %4366 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4365, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4367 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4366, i32 0)  ; GetDimensions(handle,mipLevel)
  %4368 = extractvalue %dx.types.Dimensions %4367, 0
  %4369 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4368)  ; FirstbitLo(value)
  %4370 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4371 = extractvalue %dx.types.CBufRet.i32 %4370, 1
  %4372 = sub nsw i32 %4371, %4369
  %4373 = sitofp i32 %4372 to float
  %4374 = fsub fast float %4323, %4373
  %4375 = call float @dx.op.binary.f32(i32 35, float %4374, float 0.000000e+00)  ; FMax(a,b)
  %4376 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4366, %dx.types.Handle %54, float %4363, float %4364, float %4354, float undef, i32 0, i32 0, i32 undef, float %4375)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4377 = extractvalue %dx.types.ResRet.f32 %4376, 0
  %4378 = fmul fast float %4377, %4348
  %4379 = fadd fast float %4378, %4351
  %4380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4381 = extractvalue %dx.types.CBufRet.f32 %4380, 0
  %4382 = extractvalue %dx.types.CBufRet.f32 %4380, 1
  %4383 = extractvalue %dx.types.CBufRet.f32 %4380, 2
  %4384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4385 = extractvalue %dx.types.CBufRet.f32 %4384, 3
  %4386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4387 = extractvalue %dx.types.CBufRet.f32 %4386, 3
  %4388 = extractvalue %dx.types.CBufRet.f32 %4380, 3
  %4389 = fadd fast float %4385, %4246
  %4390 = fadd fast float %4387, %4247
  %4391 = fadd fast float %4379, %4388
  %4392 = fmul fast float %4389, %4381
  %4393 = call float @dx.op.tertiary.f32(i32 46, float %4390, float %4382, float %4392)  ; FMad(a,b,c)
  %4394 = call float @dx.op.tertiary.f32(i32 46, float %4391, float %4383, float %4393)  ; FMad(a,b,c)
  %4395 = fsub fast float %4394, %4388
  %4396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4397 = extractvalue %dx.types.CBufRet.f32 %4396, 2
  %4398 = fsub fast float %4395, %4397
  %4399 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4400 = extractvalue %dx.types.CBufRet.i32 %4399, 0
  %4401 = call i32 @dx.op.binary.i32(i32 40, i32 %4277, i32 %4400)  ; UMin(a,b)
  %4402 = mul i32 %4401, 36
  %4403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4402, i32 undef)  ; BufferLoad(srv,index,wot)
  %4404 = extractvalue %dx.types.ResRet.i32 %4403, 0
  %4405 = add i32 %4402, 4
  %4406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4407 = extractvalue %dx.types.CBufRet.f32 %4406, 0
  %4408 = fmul fast float %4407, %4299
  %4409 = fmul fast float %4407, %4301
  %4410 = extractvalue %dx.types.CBufRet.f32 %4406, 1
  %4411 = fadd fast float %4408, %4410
  %4412 = fadd fast float %4409, %4410
  %4413 = icmp eq i32 %4404, 0
  br i1 %4413, label %4482, label %4414

; <label>:4414                                    ; preds = %4345
  br label %4415

; <label>:4415                                    ; preds = %4472, %4414
  %4416 = phi float [ %4473, %4472 ], [ 0.000000e+00, %4414 ]
  %4417 = phi float [ %4474, %4472 ], [ 0.000000e+00, %4414 ]
  %4418 = phi float [ %4475, %4472 ], [ 0.000000e+00, %4414 ]
  %4419 = phi float [ %4476, %4472 ], [ 0.000000e+00, %4414 ]
  %4420 = phi float [ %4477, %4472 ], [ 0.000000e+00, %4414 ]
  %4421 = phi float [ %4478, %4472 ], [ 0.000000e+00, %4414 ]
  %4422 = phi i32 [ %4479, %4472 ], [ 0, %4414 ]
  %4423 = shl i32 %4422, 2
  %4424 = add i32 %4290, %4423
  %4425 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4424, i32 undef)  ; BufferLoad(srv,index,wot)
  %4426 = extractvalue %dx.types.ResRet.f32 %4425, 0
  %4427 = add i32 %4294, %4423
  %4428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4427, i32 undef)  ; BufferLoad(srv,index,wot)
  %4429 = extractvalue %dx.types.ResRet.i32 %4428, 0
  %4430 = add i32 %4429, 0
  %4431 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4430, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4432 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4431, i32 0)  ; GetDimensions(handle,mipLevel)
  %4433 = extractvalue %dx.types.Dimensions %4432, 0
  %4434 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4433)  ; FirstbitLo(value)
  %4435 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4436 = extractvalue %dx.types.CBufRet.i32 %4435, 1
  %4437 = sub nsw i32 %4436, %4434
  %4438 = sitofp i32 %4437 to float
  %4439 = fsub fast float %4323, %4438
  %4440 = call float @dx.op.binary.f32(i32 35, float %4439, float 0.000000e+00)  ; FMax(a,b)
  %4441 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4431, %dx.types.Handle %54, float %4411, float %4412, float %4426, float undef, i32 0, i32 0, i32 undef, float %4440)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4442 = extractvalue %dx.types.ResRet.f32 %4441, 0
  %4443 = fcmp fast ogt float %4442, 0.000000e+00
  br i1 %4443, label %4444, label %4472

; <label>:4444                                    ; preds = %4415
  %4445 = add i32 %4405, %4423
  %4446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4445, i32 undef)  ; BufferLoad(srv,index,wot)
  %4447 = extractvalue %dx.types.ResRet.i32 %4446, 0
  %4448 = and i32 %4447, 32767
  %4449 = mul nuw nsw i32 %4448, 928
  %4450 = add nuw nsw i32 %4449, 48
  %4451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4450, i32 undef)  ; BufferLoad(srv,index,wot)
  %4452 = extractvalue %dx.types.ResRet.f32 %4451, 0
  %4453 = extractvalue %dx.types.ResRet.f32 %4451, 1
  %4454 = extractvalue %dx.types.ResRet.f32 %4451, 2
  %4455 = add nuw nsw i32 %4449, 60
  %4456 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4455, i32 undef)  ; BufferLoad(srv,index,wot)
  %4457 = extractvalue %dx.types.ResRet.f32 %4456, 0
  %4458 = extractvalue %dx.types.ResRet.f32 %4456, 1
  %4459 = extractvalue %dx.types.ResRet.f32 %4456, 2
  %4460 = fmul fast float %4452, %4442
  %4461 = fmul fast float %4453, %4442
  %4462 = fmul fast float %4454, %4442
  %4463 = fadd fast float %4460, %4416
  %4464 = fadd fast float %4461, %4417
  %4465 = fadd fast float %4462, %4418
  %4466 = fmul fast float %4457, %4442
  %4467 = fmul fast float %4458, %4442
  %4468 = fmul fast float %4459, %4442
  %4469 = fadd fast float %4466, %4419
  %4470 = fadd fast float %4467, %4420
  %4471 = fadd fast float %4468, %4421
  br label %4472

; <label>:4472                                    ; preds = %4444, %4415
  %4473 = phi float [ %4463, %4444 ], [ %4416, %4415 ]
  %4474 = phi float [ %4464, %4444 ], [ %4417, %4415 ]
  %4475 = phi float [ %4465, %4444 ], [ %4418, %4415 ]
  %4476 = phi float [ %4469, %4444 ], [ %4419, %4415 ]
  %4477 = phi float [ %4470, %4444 ], [ %4420, %4415 ]
  %4478 = phi float [ %4471, %4444 ], [ %4421, %4415 ]
  %4479 = add nuw i32 %4422, 1
  %4480 = icmp eq i32 %4479, %4404
  br i1 %4480, label %4481, label %4415

; <label>:4481                                    ; preds = %4472
  br label %4482

; <label>:4482                                    ; preds = %4481, %4345
  %4483 = phi float [ 0.000000e+00, %4345 ], [ %4473, %4481 ]
  %4484 = phi float [ 0.000000e+00, %4345 ], [ %4474, %4481 ]
  %4485 = phi float [ 0.000000e+00, %4345 ], [ %4475, %4481 ]
  %4486 = phi float [ 0.000000e+00, %4345 ], [ %4476, %4481 ]
  %4487 = phi float [ 0.000000e+00, %4345 ], [ %4477, %4481 ]
  %4488 = phi float [ 0.000000e+00, %4345 ], [ %4478, %4481 ]
  %4489 = fadd fast float %4486, %4483
  %4490 = fmul fast float %4489, 0x3F847AE140000000
  %4491 = fadd fast float %4487, %4484
  %4492 = fmul fast float %4491, 0x3F847AE140000000
  %4493 = fadd fast float %4488, %4485
  %4494 = fmul fast float %4493, 0x3F847AE140000000
  br label %4495

; <label>:4495                                    ; preds = %4482, %4279, %4224, %4221, %4192, %4154
  %4496 = phi float [ %4206, %4192 ], [ -1.310720e+05, %4154 ], [ %4398, %4482 ], [ -1.310720e+05, %4224 ], [ -1.310720e+05, %4279 ], [ -1.310720e+05, %4221 ]
  %4497 = phi float [ %4216, %4192 ], [ 0.000000e+00, %4154 ], [ %4490, %4482 ], [ 0.000000e+00, %4224 ], [ 0.000000e+00, %4279 ], [ 0.000000e+00, %4221 ]
  %4498 = phi float [ %4218, %4192 ], [ 0.000000e+00, %4154 ], [ %4492, %4482 ], [ 0.000000e+00, %4224 ], [ 0.000000e+00, %4279 ], [ 0.000000e+00, %4221 ]
  %4499 = phi float [ %4220, %4192 ], [ 0.000000e+00, %4154 ], [ %4494, %4482 ], [ 0.000000e+00, %4224 ], [ 0.000000e+00, %4279 ], [ 0.000000e+00, %4221 ]
  %4500 = phi i1 [ true, %4192 ], [ false, %4154 ], [ true, %4482 ], [ false, %4224 ], [ false, %4279 ], [ false, %4221 ]
  %4501 = and i32 %258, 3
  %4502 = icmp eq i32 %4501, 1
  %4503 = select i1 %4502, float 1.000000e+00, float 0.000000e+00
  %4504 = fsub fast float %4496, %209
  %4505 = call float @dx.op.unary.f32(i32 7, float %4504)  ; Saturate(value)
  %4506 = select i1 %4500, float %4505, float 1.000000e+00
  %4507 = fmul fast float %4506, %4503
  %4508 = icmp eq i32 %4501, 3
  %4509 = select i1 %4508, float 1.000000e+00, float %4507
  %4510 = call float @dx.op.binary.f32(i32 35, float %4097, float %4509)  ; FMax(a,b)
  %4511 = fcmp fast olt float %4509, 1.000000e+00
  %4512 = fcmp uge float %80, 0.000000e+00
  %4513 = and i1 %4512, %4511
  br i1 %4513, label %4514, label %4524

; <label>:4514                                    ; preds = %4495
  %4515 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %80, float %81, float %82, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4516 = extractvalue %dx.types.ResRet.f32 %4515, 0
  %4517 = extractvalue %dx.types.ResRet.f32 %4515, 1
  %4518 = extractvalue %dx.types.ResRet.f32 %4515, 2
  %4519 = fadd fast float %4516, %4510
  %4520 = fcmp ule float %79, 0.000000e+00
  %4521 = call float @dx.op.dot3.f32(i32 55, float %76, float %77, float %78, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4522 = select i1 %4520, float %4521, float 1.000000e+00
  %4523 = fmul fast float %4522, %4518
  br label %4524

; <label>:4524                                    ; preds = %4514, %4495
  %4525 = phi float [ %4519, %4514 ], [ %4510, %4495 ]
  %4526 = phi float [ %4517, %4514 ], [ 0.000000e+00, %4495 ]
  %4527 = phi float [ %4523, %4514 ], [ 0.000000e+00, %4495 ]
  %4528 = call float @dx.op.unary.f32(i32 7, float %4525)  ; Saturate(value)
  %4529 = call float @dx.op.unary.f32(i32 7, float %4526)  ; Saturate(value)
  %4530 = call float @dx.op.unary.f32(i32 7, float %4527)  ; Saturate(value)
  %4531 = fcmp fast une float %4529, 0.000000e+00
  %4532 = fcmp fast une float %4530, 0.000000e+00
  %4533 = or i1 %4531, %4532
  br i1 %4533, label %4534, label %5093

; <label>:4534                                    ; preds = %4524
  br i1 %4531, label %4535, label %4808

; <label>:4535                                    ; preds = %4534
  %4536 = call float @dx.op.unary.f32(i32 23, float %4094)  ; Log(value)
  %4537 = fmul fast float %4536, 4.000000e+00
  %4538 = call float @dx.op.unary.f32(i32 21, float %4537)  ; Exp(value)
  %4539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4540 = extractvalue %dx.types.CBufRet.f32 %4539, 0
  %4541 = fmul fast float %4540, %66
  %4542 = fmul fast float %4540, %67
  %4543 = fmul fast float %4540, %68
  %4544 = call float @dx.op.unary.f32(i32 6, float %76)  ; FAbs(value)
  %4545 = call float @dx.op.unary.f32(i32 6, float %77)  ; FAbs(value)
  %4546 = call float @dx.op.unary.f32(i32 6, float %78)  ; FAbs(value)
  %4547 = call float @dx.op.unary.f32(i32 23, float %4544)  ; Log(value)
  %4548 = call float @dx.op.unary.f32(i32 23, float %4545)  ; Log(value)
  %4549 = call float @dx.op.unary.f32(i32 23, float %4546)  ; Log(value)
  %4550 = fmul fast float %4547, 4.000000e+00
  %4551 = fmul fast float %4548, 4.000000e+00
  %4552 = fmul fast float %4549, 4.000000e+00
  %4553 = call float @dx.op.unary.f32(i32 21, float %4550)  ; Exp(value)
  %4554 = call float @dx.op.unary.f32(i32 21, float %4551)  ; Exp(value)
  %4555 = call float @dx.op.unary.f32(i32 21, float %4552)  ; Exp(value)
  %4556 = fadd fast float %4554, %4553
  %4557 = fadd fast float %4556, %4555
  %4558 = fdiv fast float 1.000000e+00, %4557
  %4559 = fmul fast float %4558, %4553
  %4560 = fcmp fast ogt float %76, 0.000000e+00
  %4561 = fcmp fast ogt float %77, 0.000000e+00
  %4562 = fcmp fast ogt float %78, 0.000000e+00
  %4563 = fcmp fast olt float %76, 0.000000e+00
  %4564 = fcmp fast olt float %77, 0.000000e+00
  %4565 = fcmp fast olt float %78, 0.000000e+00
  %4566 = zext i1 %4560 to i32
  %4567 = zext i1 %4561 to i32
  %4568 = zext i1 %4562 to i32
  %4569 = zext i1 %4563 to i32
  %4570 = zext i1 %4564 to i32
  %4571 = zext i1 %4565 to i32
  %4572 = sub nsw i32 %4566, %4569
  %4573 = sub nsw i32 %4567, %4570
  %4574 = sub nsw i32 %4568, %4571
  %4575 = call float @dx.op.unary.f32(i32 83, float %4541)  ; DerivCoarseX(value)
  %4576 = call float @dx.op.unary.f32(i32 83, float %4542)  ; DerivCoarseX(value)
  %4577 = call float @dx.op.unary.f32(i32 83, float %4543)  ; DerivCoarseX(value)
  %4578 = call float @dx.op.unary.f32(i32 84, float %4541)  ; DerivCoarseY(value)
  %4579 = call float @dx.op.unary.f32(i32 84, float %4542)  ; DerivCoarseY(value)
  %4580 = call float @dx.op.unary.f32(i32 84, float %4543)  ; DerivCoarseY(value)
  %4581 = fcmp fast ole float %290, %4559
  %4582 = fmul fast float %4558, %4556
  %4583 = fcmp fast ole float %290, %4582
  %4584 = select i1 %4583, float %4543, float %4541
  %4585 = select i1 %4583, float %4541, float %4542
  %4586 = select i1 %4581, float %4542, float %4584
  %4587 = select i1 %4581, float %4543, float %4585
  %4588 = select i1 %4583, float %4577, float %4575
  %4589 = select i1 %4583, float %4575, float %4576
  %4590 = select i1 %4581, float %4576, float %4588
  %4591 = select i1 %4581, float %4577, float %4589
  %4592 = select i1 %4583, float %4580, float %4578
  %4593 = select i1 %4583, float %4578, float %4579
  %4594 = select i1 %4581, float %4579, float %4592
  %4595 = select i1 %4581, float %4580, float %4593
  %4596 = call float @dx.op.unary.f32(i32 27, float %4586)  ; Round_ni(value)
  %4597 = call float @dx.op.unary.f32(i32 27, float %4587)  ; Round_ni(value)
  %4598 = fptosi float %4596 to i32
  %4599 = fptosi float %4597 to i32
  %4600 = xor i32 %4599, %4598
  %4601 = sitofp i32 %4600 to float
  %4602 = fptosi float %4601 to i32
  %4603 = sitofp i32 %4602 to float
  %4604 = fmul fast float %4603, 0x3FE3C6EF40000000
  %4605 = frem fast float %4596, 2.560000e+02
  %4606 = frem fast float %4597, 2.560000e+02
  %4607 = fptoui float %4605 to i32
  %4608 = fptoui float %4606 to i32
  %4609 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4607, i32 %4608, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4610 = extractvalue %dx.types.ResRet.f32 %4609, 0
  %4611 = extractvalue %dx.types.ResRet.f32 %4609, 1
  %4612 = extractvalue %dx.types.ResRet.f32 %4609, 2
  %4613 = fadd fast float %4610, %4604
  %4614 = fadd fast float %4611, %4604
  %4615 = fadd fast float %4612, %4604
  %4616 = call float @dx.op.unary.f32(i32 22, float %4613)  ; Frc(value)
  %4617 = call float @dx.op.unary.f32(i32 22, float %4614)  ; Frc(value)
  %4618 = call float @dx.op.unary.f32(i32 22, float %4615)  ; Frc(value)
  %4619 = fmul fast float %4618, 0x401921FB60000000
  %4620 = call float @dx.op.unary.f32(i32 13, float %4619)  ; Sin(value)
  %4621 = call float @dx.op.unary.f32(i32 12, float %4619)  ; Cos(value)
  %4622 = fsub fast float -0.000000e+00, %4621
  %4623 = fmul fast float %4621, %4586
  %4624 = call float @dx.op.tertiary.f32(i32 46, float %4620, float %4587, float %4623)  ; FMad(a,b,c)
  %4625 = fmul fast float %4620, %4586
  %4626 = call float @dx.op.tertiary.f32(i32 46, float %4622, float %4587, float %4625)  ; FMad(a,b,c)
  %4627 = fadd fast float %4624, %4616
  %4628 = fadd fast float %4626, %4617
  %4629 = extractvalue %dx.types.CBufRet.f32 %4539, 3
  %4630 = bitcast float %4629 to i32
  %4631 = icmp eq i32 %4630, 0
  br i1 %4631, label %4670, label %4632

; <label>:4632                                    ; preds = %4535
  %4633 = add i32 %4630, 0
  %4634 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4633, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4635 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4634, %dx.types.Handle %117, float %4627, float %4628, float undef, float undef, i32 0, i32 0, i32 undef, float %4590, float %4591, float undef, float %4594, float %4595, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4636 = extractvalue %dx.types.ResRet.f32 %4635, 0
  %4637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4638 = extractvalue %dx.types.CBufRet.f32 %4637, 1
  %4639 = extractvalue %dx.types.CBufRet.f32 %4637, 2
  %4640 = fsub fast float 1.000000e+00, %4529
  %4641 = call float @dx.op.binary.f32(i32 35, float %4640, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4642 = bitcast float %4529 to i32
  %4643 = sitofp i32 %4642 to float
  %4644 = fadd fast float %4643, 0xC1CFBF8940000000
  %4645 = fmul fast float %4639, %4644
  %4646 = fadd fast float %4645, 0x41CFBF8940000000
  %4647 = fptosi float %4646 to i32
  %4648 = bitcast i32 %4647 to float
  %4649 = bitcast float %4641 to i32
  %4650 = sitofp i32 %4649 to float
  %4651 = fadd fast float %4650, 0xC1CFBF8940000000
  %4652 = fmul fast float %4651, %4639
  %4653 = fadd fast float %4652, 0x41CFBF8940000000
  %4654 = fptosi float %4653 to i32
  %4655 = bitcast i32 %4654 to float
  %4656 = fmul fast float %4648, %4638
  %4657 = fmul fast float %4655, %4638
  %4658 = fsub fast float %4641, %4656
  %4659 = fadd fast float %4657, %4641
  %4660 = call float @dx.op.unary.f32(i32 7, float %4658)  ; Saturate(value)
  %4661 = call float @dx.op.unary.f32(i32 7, float %4659)  ; Saturate(value)
  %4662 = fsub fast float %4636, %4660
  %4663 = fsub fast float %4661, %4660
  %4664 = bitcast float %4663 to i32
  %4665 = sub nsw i32 2129859010, %4664
  %4666 = bitcast i32 %4665 to float
  %4667 = fmul fast float %4666, %4662
  %4668 = call float @dx.op.unary.f32(i32 7, float %4667)  ; Saturate(value)
  %4669 = fcmp fast olt float %4668, 0x3F70101020000000
  br i1 %4669, label %4808, label %4670

; <label>:4670                                    ; preds = %4632, %4535
  %4671 = phi float [ %4668, %4632 ], [ %4529, %4535 ]
  %4672 = fmul fast float %4671, %4538
  %4673 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4674 = extractvalue %dx.types.CBufRet.i32 %4673, 1
  %4675 = extractvalue %dx.types.CBufRet.i32 %4673, 0
  %4676 = add i32 %4675, 0
  %4677 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4676, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4678 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4677, %dx.types.Handle %116, float %4627, float %4628, float undef, float undef, i32 0, i32 0, i32 undef, float %4590, float %4591, float undef, float %4594, float %4595, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4679 = extractvalue %dx.types.ResRet.f32 %4678, 0
  %4680 = extractvalue %dx.types.ResRet.f32 %4678, 1
  %4681 = extractvalue %dx.types.ResRet.f32 %4678, 2
  %4682 = extractvalue %dx.types.ResRet.f32 %4678, 3
  %4683 = and i32 %4674, 255
  %4684 = uitofp i32 %4683 to float
  %4685 = lshr i32 %4674, 8
  %4686 = and i32 %4685, 255
  %4687 = uitofp i32 %4686 to float
  %4688 = fmul fast float %4682, %4684
  %4689 = fadd fast float %4688, %4687
  %4690 = fmul fast float %4689, 0x3F70101000000000
  %4691 = fadd fast float %4690, 0xBFB99999A0000000
  %4692 = call float @dx.op.unary.f32(i32 7, float %4691)  ; Saturate(value)
  %4693 = fmul fast float %4692, 0x3FF1C71C80000000
  %4694 = call float @dx.op.binary.f32(i32 36, float %4690, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4695 = fsub fast float 1.000000e+00, %4693
  %4696 = call float @dx.op.unary.f32(i32 7, float %4695)  ; Saturate(value)
  %4697 = fmul fast float %4696, %4679
  %4698 = fmul fast float %4696, %4680
  %4699 = fmul fast float %4696, %4681
  %4700 = call float @dx.op.unary.f32(i32 7, float %4697)  ; Saturate(value)
  %4701 = call float @dx.op.unary.f32(i32 7, float %4698)  ; Saturate(value)
  %4702 = call float @dx.op.unary.f32(i32 7, float %4699)  ; Saturate(value)
  %4703 = fmul fast float %4693, %4679
  %4704 = fmul fast float %4693, %4680
  %4705 = fmul fast float %4693, %4681
  %4706 = fadd fast float %4703, %4694
  %4707 = fadd fast float %4704, %4694
  %4708 = fadd fast float %4705, %4694
  %4709 = call float @dx.op.unary.f32(i32 7, float %4706)  ; Saturate(value)
  %4710 = call float @dx.op.unary.f32(i32 7, float %4707)  ; Saturate(value)
  %4711 = call float @dx.op.unary.f32(i32 7, float %4708)  ; Saturate(value)
  %4712 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4713 = extractvalue %dx.types.CBufRet.i32 %4712, 3
  %4714 = extractvalue %dx.types.CBufRet.i32 %4712, 2
  %4715 = add i32 %4714, 0
  %4716 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4715, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4717 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4716, %dx.types.Handle %116, float %4627, float %4628, float undef, float undef, i32 0, i32 0, i32 undef, float %4590, float %4591, float undef, float %4594, float %4595, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4718 = extractvalue %dx.types.ResRet.f32 %4717, 0
  %4719 = extractvalue %dx.types.ResRet.f32 %4717, 1
  %4720 = extractvalue %dx.types.ResRet.f32 %4717, 2
  %4721 = extractvalue %dx.types.ResRet.f32 %4717, 3
  %4722 = and i32 %4713, 255
  %4723 = uitofp i32 %4722 to float
  %4724 = lshr i32 %4713, 8
  %4725 = and i32 %4724, 255
  %4726 = uitofp i32 %4725 to float
  %4727 = lshr i32 %4713, 16
  %4728 = and i32 %4727, 255
  %4729 = uitofp i32 %4728 to float
  %4730 = fmul fast float %4729, 0x3F70101000000000
  %4731 = fmul fast float %4718, %4723
  %4732 = fadd fast float %4731, %4726
  %4733 = fmul fast float %4732, 0x3F70101000000000
  %4734 = fadd fast float %4719, -5.000000e-01
  %4735 = fadd fast float %4721, -5.000000e-01
  %4736 = fmul fast float %4734, %4730
  %4737 = fmul fast float %4735, %4730
  %4738 = fadd fast float %4736, 5.000000e-01
  %4739 = fadd fast float %4737, 5.000000e-01
  %4740 = fmul fast float %4738, 2.000000e+00
  %4741 = fadd fast float %4740, -1.000000e+00
  %4742 = fmul fast float %4739, 2.000000e+00
  %4743 = fadd fast float %4742, -1.000000e+00
  %4744 = fadd fast float %4741, %4743
  %4745 = fmul fast float %4744, 5.000000e-01
  %4746 = fsub fast float %4741, %4743
  %4747 = fmul fast float %4746, 5.000000e-01
  %4748 = call float @dx.op.unary.f32(i32 6, float %4745)  ; FAbs(value)
  %4749 = fsub fast float 1.000000e+00, %4748
  %4750 = call float @dx.op.unary.f32(i32 6, float %4747)  ; FAbs(value)
  %4751 = fsub fast float %4749, %4750
  %4752 = call float @dx.op.dot3.f32(i32 55, float %4745, float %4747, float %4751, float %4745, float %4747, float %4751)  ; Dot3(ax,ay,az,bx,by,bz)
  %4753 = call float @dx.op.unary.f32(i32 25, float %4752)  ; Rsqrt(value)
  %4754 = fmul fast float %4745, %4753
  %4755 = fmul fast float %4747, %4753
  %4756 = select i1 %4583, i32 %4573, i32 %4574
  %4757 = select i1 %4581, i32 %4572, i32 %4756
  %4758 = sitofp i32 %4757 to float
  %4759 = fmul fast float %4751, %4758
  %4760 = fmul fast float %4759, %4753
  %4761 = select i1 %4583, float %4760, float %4755
  %4762 = select i1 %4583, float %4755, float %4760
  %4763 = select i1 %4581, float %4760, float %4754
  %4764 = select i1 %4581, float %4755, float %4761
  %4765 = select i1 %4581, float %4754, float %4762
  %4766 = fsub fast float %4700, %4133
  %4767 = fsub fast float %4701, %4134
  %4768 = fsub fast float %4702, %4135
  %4769 = fmul fast float %4766, %4672
  %4770 = fmul fast float %4767, %4672
  %4771 = fmul fast float %4768, %4672
  %4772 = fadd fast float %4769, %4133
  %4773 = fadd fast float %4770, %4134
  %4774 = fadd fast float %4771, %4135
  %4775 = fsub fast float %4709, %4118
  %4776 = fsub fast float %4710, %4119
  %4777 = fsub fast float %4711, %4120
  %4778 = fmul fast float %4775, %4672
  %4779 = fmul fast float %4776, %4672
  %4780 = fmul fast float %4777, %4672
  %4781 = fadd fast float %4778, %4118
  %4782 = fadd fast float %4779, %4119
  %4783 = fadd fast float %4780, %4120
  %4784 = fadd fast float %4763, %4082
  %4785 = fadd fast float %4764, %4083
  %4786 = fadd fast float %4765, %4084
  %4787 = call float @dx.op.dot3.f32(i32 55, float %4784, float %4785, float %4786, float %4784, float %4785, float %4786)  ; Dot3(ax,ay,az,bx,by,bz)
  %4788 = call float @dx.op.unary.f32(i32 25, float %4787)  ; Rsqrt(value)
  %4789 = fmul fast float %4784, %4788
  %4790 = fmul fast float %4785, %4788
  %4791 = fmul fast float %4786, %4788
  %4792 = fsub fast float %4789, %4082
  %4793 = fsub fast float %4790, %4083
  %4794 = fsub fast float %4791, %4084
  %4795 = fmul fast float %4792, %4672
  %4796 = fmul fast float %4793, %4672
  %4797 = fmul fast float %4794, %4672
  %4798 = fadd fast float %4795, %4082
  %4799 = fadd fast float %4796, %4083
  %4800 = fadd fast float %4797, %4084
  %4801 = call float @dx.op.binary.f32(i32 36, float %4094, float %4720)  ; FMin(a,b)
  %4802 = fsub fast float %4801, %4094
  %4803 = fmul fast float %4802, %4672
  %4804 = fadd fast float %4803, %4094
  %4805 = fsub fast float %4733, %4121
  %4806 = fmul fast float %4805, %4672
  %4807 = fadd fast float %4806, %4121
  br label %4808

; <label>:4808                                    ; preds = %4670, %4632, %4534
  %4809 = phi float [ %4772, %4670 ], [ %4133, %4632 ], [ %4133, %4534 ]
  %4810 = phi float [ %4773, %4670 ], [ %4134, %4632 ], [ %4134, %4534 ]
  %4811 = phi float [ %4774, %4670 ], [ %4135, %4632 ], [ %4135, %4534 ]
  %4812 = phi float [ %4781, %4670 ], [ %4118, %4632 ], [ %4118, %4534 ]
  %4813 = phi float [ %4782, %4670 ], [ %4119, %4632 ], [ %4119, %4534 ]
  %4814 = phi float [ %4783, %4670 ], [ %4120, %4632 ], [ %4120, %4534 ]
  %4815 = phi float [ %4798, %4670 ], [ %4082, %4632 ], [ %4082, %4534 ]
  %4816 = phi float [ %4799, %4670 ], [ %4083, %4632 ], [ %4083, %4534 ]
  %4817 = phi float [ %4800, %4670 ], [ %4084, %4632 ], [ %4084, %4534 ]
  %4818 = phi float [ %4807, %4670 ], [ %4121, %4632 ], [ %4121, %4534 ]
  %4819 = phi float [ %4804, %4670 ], [ %4094, %4632 ], [ %4094, %4534 ]
  br i1 %4532, label %4820, label %5093

; <label>:4820                                    ; preds = %4808
  %4821 = call float @dx.op.unary.f32(i32 23, float %4819)  ; Log(value)
  %4822 = fmul fast float %4821, 4.000000e+00
  %4823 = call float @dx.op.unary.f32(i32 21, float %4822)  ; Exp(value)
  %4824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4825 = extractvalue %dx.types.CBufRet.f32 %4824, 0
  %4826 = fmul fast float %4825, %66
  %4827 = fmul fast float %4825, %67
  %4828 = fmul fast float %4825, %68
  %4829 = call float @dx.op.unary.f32(i32 6, float %76)  ; FAbs(value)
  %4830 = call float @dx.op.unary.f32(i32 6, float %77)  ; FAbs(value)
  %4831 = call float @dx.op.unary.f32(i32 6, float %78)  ; FAbs(value)
  %4832 = call float @dx.op.unary.f32(i32 23, float %4829)  ; Log(value)
  %4833 = call float @dx.op.unary.f32(i32 23, float %4830)  ; Log(value)
  %4834 = call float @dx.op.unary.f32(i32 23, float %4831)  ; Log(value)
  %4835 = fmul fast float %4832, 4.000000e+00
  %4836 = fmul fast float %4833, 4.000000e+00
  %4837 = fmul fast float %4834, 4.000000e+00
  %4838 = call float @dx.op.unary.f32(i32 21, float %4835)  ; Exp(value)
  %4839 = call float @dx.op.unary.f32(i32 21, float %4836)  ; Exp(value)
  %4840 = call float @dx.op.unary.f32(i32 21, float %4837)  ; Exp(value)
  %4841 = fadd fast float %4839, %4838
  %4842 = fadd fast float %4841, %4840
  %4843 = fdiv fast float 1.000000e+00, %4842
  %4844 = fmul fast float %4843, %4838
  %4845 = fcmp fast ogt float %76, 0.000000e+00
  %4846 = fcmp fast ogt float %77, 0.000000e+00
  %4847 = fcmp fast ogt float %78, 0.000000e+00
  %4848 = fcmp fast olt float %76, 0.000000e+00
  %4849 = fcmp fast olt float %77, 0.000000e+00
  %4850 = fcmp fast olt float %78, 0.000000e+00
  %4851 = zext i1 %4845 to i32
  %4852 = zext i1 %4846 to i32
  %4853 = zext i1 %4847 to i32
  %4854 = zext i1 %4848 to i32
  %4855 = zext i1 %4849 to i32
  %4856 = zext i1 %4850 to i32
  %4857 = sub nsw i32 %4851, %4854
  %4858 = sub nsw i32 %4852, %4855
  %4859 = sub nsw i32 %4853, %4856
  %4860 = call float @dx.op.unary.f32(i32 83, float %4826)  ; DerivCoarseX(value)
  %4861 = call float @dx.op.unary.f32(i32 83, float %4827)  ; DerivCoarseX(value)
  %4862 = call float @dx.op.unary.f32(i32 83, float %4828)  ; DerivCoarseX(value)
  %4863 = call float @dx.op.unary.f32(i32 84, float %4826)  ; DerivCoarseY(value)
  %4864 = call float @dx.op.unary.f32(i32 84, float %4827)  ; DerivCoarseY(value)
  %4865 = call float @dx.op.unary.f32(i32 84, float %4828)  ; DerivCoarseY(value)
  %4866 = fcmp fast ole float %290, %4844
  %4867 = fmul fast float %4843, %4841
  %4868 = fcmp fast ole float %290, %4867
  %4869 = select i1 %4868, float %4828, float %4826
  %4870 = select i1 %4868, float %4826, float %4827
  %4871 = select i1 %4866, float %4827, float %4869
  %4872 = select i1 %4866, float %4828, float %4870
  %4873 = select i1 %4868, float %4862, float %4860
  %4874 = select i1 %4868, float %4860, float %4861
  %4875 = select i1 %4866, float %4861, float %4873
  %4876 = select i1 %4866, float %4862, float %4874
  %4877 = select i1 %4868, float %4865, float %4863
  %4878 = select i1 %4868, float %4863, float %4864
  %4879 = select i1 %4866, float %4864, float %4877
  %4880 = select i1 %4866, float %4865, float %4878
  %4881 = call float @dx.op.unary.f32(i32 27, float %4871)  ; Round_ni(value)
  %4882 = call float @dx.op.unary.f32(i32 27, float %4872)  ; Round_ni(value)
  %4883 = fptosi float %4881 to i32
  %4884 = fptosi float %4882 to i32
  %4885 = xor i32 %4884, %4883
  %4886 = sitofp i32 %4885 to float
  %4887 = fptosi float %4886 to i32
  %4888 = sitofp i32 %4887 to float
  %4889 = fmul fast float %4888, 0x3FE3C6EF40000000
  %4890 = frem fast float %4881, 2.560000e+02
  %4891 = frem fast float %4882, 2.560000e+02
  %4892 = fptoui float %4890 to i32
  %4893 = fptoui float %4891 to i32
  %4894 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4892, i32 %4893, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4895 = extractvalue %dx.types.ResRet.f32 %4894, 0
  %4896 = extractvalue %dx.types.ResRet.f32 %4894, 1
  %4897 = extractvalue %dx.types.ResRet.f32 %4894, 2
  %4898 = fadd fast float %4895, %4889
  %4899 = fadd fast float %4896, %4889
  %4900 = fadd fast float %4897, %4889
  %4901 = call float @dx.op.unary.f32(i32 22, float %4898)  ; Frc(value)
  %4902 = call float @dx.op.unary.f32(i32 22, float %4899)  ; Frc(value)
  %4903 = call float @dx.op.unary.f32(i32 22, float %4900)  ; Frc(value)
  %4904 = fmul fast float %4903, 0x401921FB60000000
  %4905 = call float @dx.op.unary.f32(i32 13, float %4904)  ; Sin(value)
  %4906 = call float @dx.op.unary.f32(i32 12, float %4904)  ; Cos(value)
  %4907 = fsub fast float -0.000000e+00, %4906
  %4908 = fmul fast float %4906, %4871
  %4909 = call float @dx.op.tertiary.f32(i32 46, float %4905, float %4872, float %4908)  ; FMad(a,b,c)
  %4910 = fmul fast float %4905, %4871
  %4911 = call float @dx.op.tertiary.f32(i32 46, float %4907, float %4872, float %4910)  ; FMad(a,b,c)
  %4912 = fadd fast float %4909, %4901
  %4913 = fadd fast float %4911, %4902
  %4914 = extractvalue %dx.types.CBufRet.f32 %4824, 3
  %4915 = bitcast float %4914 to i32
  %4916 = icmp eq i32 %4915, 0
  br i1 %4916, label %4955, label %4917

; <label>:4917                                    ; preds = %4820
  %4918 = add i32 %4915, 0
  %4919 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4918, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4920 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4919, %dx.types.Handle %117, float %4912, float %4913, float undef, float undef, i32 0, i32 0, i32 undef, float %4875, float %4876, float undef, float %4879, float %4880, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4921 = extractvalue %dx.types.ResRet.f32 %4920, 0
  %4922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4923 = extractvalue %dx.types.CBufRet.f32 %4922, 1
  %4924 = extractvalue %dx.types.CBufRet.f32 %4922, 2
  %4925 = fsub fast float 1.000000e+00, %4530
  %4926 = call float @dx.op.binary.f32(i32 35, float %4925, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4927 = bitcast float %4530 to i32
  %4928 = sitofp i32 %4927 to float
  %4929 = fadd fast float %4928, 0xC1CFBF8940000000
  %4930 = fmul fast float %4924, %4929
  %4931 = fadd fast float %4930, 0x41CFBF8940000000
  %4932 = fptosi float %4931 to i32
  %4933 = bitcast i32 %4932 to float
  %4934 = bitcast float %4926 to i32
  %4935 = sitofp i32 %4934 to float
  %4936 = fadd fast float %4935, 0xC1CFBF8940000000
  %4937 = fmul fast float %4936, %4924
  %4938 = fadd fast float %4937, 0x41CFBF8940000000
  %4939 = fptosi float %4938 to i32
  %4940 = bitcast i32 %4939 to float
  %4941 = fmul fast float %4933, %4923
  %4942 = fmul fast float %4940, %4923
  %4943 = fsub fast float %4926, %4941
  %4944 = fadd fast float %4942, %4926
  %4945 = call float @dx.op.unary.f32(i32 7, float %4943)  ; Saturate(value)
  %4946 = call float @dx.op.unary.f32(i32 7, float %4944)  ; Saturate(value)
  %4947 = fsub fast float %4921, %4945
  %4948 = fsub fast float %4946, %4945
  %4949 = bitcast float %4948 to i32
  %4950 = sub nsw i32 2129859010, %4949
  %4951 = bitcast i32 %4950 to float
  %4952 = fmul fast float %4951, %4947
  %4953 = call float @dx.op.unary.f32(i32 7, float %4952)  ; Saturate(value)
  %4954 = fcmp fast olt float %4953, 0x3F70101020000000
  br i1 %4954, label %5093, label %4955

; <label>:4955                                    ; preds = %4917, %4820
  %4956 = phi float [ %4953, %4917 ], [ %4530, %4820 ]
  %4957 = fmul fast float %4956, %4823
  %4958 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4959 = extractvalue %dx.types.CBufRet.i32 %4958, 1
  %4960 = extractvalue %dx.types.CBufRet.i32 %4958, 0
  %4961 = add i32 %4960, 0
  %4962 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4961, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4963 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4962, %dx.types.Handle %116, float %4912, float %4913, float undef, float undef, i32 0, i32 0, i32 undef, float %4875, float %4876, float undef, float %4879, float %4880, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4964 = extractvalue %dx.types.ResRet.f32 %4963, 0
  %4965 = extractvalue %dx.types.ResRet.f32 %4963, 1
  %4966 = extractvalue %dx.types.ResRet.f32 %4963, 2
  %4967 = extractvalue %dx.types.ResRet.f32 %4963, 3
  %4968 = and i32 %4959, 255
  %4969 = uitofp i32 %4968 to float
  %4970 = lshr i32 %4959, 8
  %4971 = and i32 %4970, 255
  %4972 = uitofp i32 %4971 to float
  %4973 = fmul fast float %4967, %4969
  %4974 = fadd fast float %4973, %4972
  %4975 = fmul fast float %4974, 0x3F70101000000000
  %4976 = fadd fast float %4975, 0xBFB99999A0000000
  %4977 = call float @dx.op.unary.f32(i32 7, float %4976)  ; Saturate(value)
  %4978 = fmul fast float %4977, 0x3FF1C71C80000000
  %4979 = call float @dx.op.binary.f32(i32 36, float %4975, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4980 = fsub fast float 1.000000e+00, %4978
  %4981 = call float @dx.op.unary.f32(i32 7, float %4980)  ; Saturate(value)
  %4982 = fmul fast float %4981, %4964
  %4983 = fmul fast float %4981, %4965
  %4984 = fmul fast float %4981, %4966
  %4985 = call float @dx.op.unary.f32(i32 7, float %4982)  ; Saturate(value)
  %4986 = call float @dx.op.unary.f32(i32 7, float %4983)  ; Saturate(value)
  %4987 = call float @dx.op.unary.f32(i32 7, float %4984)  ; Saturate(value)
  %4988 = fmul fast float %4978, %4964
  %4989 = fmul fast float %4978, %4965
  %4990 = fmul fast float %4978, %4966
  %4991 = fadd fast float %4988, %4979
  %4992 = fadd fast float %4989, %4979
  %4993 = fadd fast float %4990, %4979
  %4994 = call float @dx.op.unary.f32(i32 7, float %4991)  ; Saturate(value)
  %4995 = call float @dx.op.unary.f32(i32 7, float %4992)  ; Saturate(value)
  %4996 = call float @dx.op.unary.f32(i32 7, float %4993)  ; Saturate(value)
  %4997 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4998 = extractvalue %dx.types.CBufRet.i32 %4997, 3
  %4999 = extractvalue %dx.types.CBufRet.i32 %4997, 2
  %5000 = add i32 %4999, 0
  %5001 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5000, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5002 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5001, %dx.types.Handle %116, float %4912, float %4913, float undef, float undef, i32 0, i32 0, i32 undef, float %4875, float %4876, float undef, float %4879, float %4880, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5003 = extractvalue %dx.types.ResRet.f32 %5002, 0
  %5004 = extractvalue %dx.types.ResRet.f32 %5002, 1
  %5005 = extractvalue %dx.types.ResRet.f32 %5002, 2
  %5006 = extractvalue %dx.types.ResRet.f32 %5002, 3
  %5007 = and i32 %4998, 255
  %5008 = uitofp i32 %5007 to float
  %5009 = lshr i32 %4998, 8
  %5010 = and i32 %5009, 255
  %5011 = uitofp i32 %5010 to float
  %5012 = lshr i32 %4998, 16
  %5013 = and i32 %5012, 255
  %5014 = uitofp i32 %5013 to float
  %5015 = fmul fast float %5014, 0x3F70101000000000
  %5016 = fmul fast float %5003, %5008
  %5017 = fadd fast float %5016, %5011
  %5018 = fmul fast float %5017, 0x3F70101000000000
  %5019 = fadd fast float %5004, -5.000000e-01
  %5020 = fadd fast float %5006, -5.000000e-01
  %5021 = fmul fast float %5019, %5015
  %5022 = fmul fast float %5020, %5015
  %5023 = fadd fast float %5021, 5.000000e-01
  %5024 = fadd fast float %5022, 5.000000e-01
  %5025 = fmul fast float %5023, 2.000000e+00
  %5026 = fadd fast float %5025, -1.000000e+00
  %5027 = fmul fast float %5024, 2.000000e+00
  %5028 = fadd fast float %5027, -1.000000e+00
  %5029 = fadd fast float %5026, %5028
  %5030 = fmul fast float %5029, 5.000000e-01
  %5031 = fsub fast float %5026, %5028
  %5032 = fmul fast float %5031, 5.000000e-01
  %5033 = call float @dx.op.unary.f32(i32 6, float %5030)  ; FAbs(value)
  %5034 = fsub fast float 1.000000e+00, %5033
  %5035 = call float @dx.op.unary.f32(i32 6, float %5032)  ; FAbs(value)
  %5036 = fsub fast float %5034, %5035
  %5037 = call float @dx.op.dot3.f32(i32 55, float %5030, float %5032, float %5036, float %5030, float %5032, float %5036)  ; Dot3(ax,ay,az,bx,by,bz)
  %5038 = call float @dx.op.unary.f32(i32 25, float %5037)  ; Rsqrt(value)
  %5039 = fmul fast float %5030, %5038
  %5040 = fmul fast float %5032, %5038
  %5041 = select i1 %4868, i32 %4858, i32 %4859
  %5042 = select i1 %4866, i32 %4857, i32 %5041
  %5043 = sitofp i32 %5042 to float
  %5044 = fmul fast float %5036, %5043
  %5045 = fmul fast float %5044, %5038
  %5046 = select i1 %4868, float %5045, float %5040
  %5047 = select i1 %4868, float %5040, float %5045
  %5048 = select i1 %4866, float %5045, float %5039
  %5049 = select i1 %4866, float %5040, float %5046
  %5050 = select i1 %4866, float %5039, float %5047
  %5051 = fsub fast float %4985, %4809
  %5052 = fsub fast float %4986, %4810
  %5053 = fsub fast float %4987, %4811
  %5054 = fmul fast float %5051, %4957
  %5055 = fmul fast float %5052, %4957
  %5056 = fmul fast float %5053, %4957
  %5057 = fadd fast float %5054, %4809
  %5058 = fadd fast float %5055, %4810
  %5059 = fadd fast float %5056, %4811
  %5060 = fsub fast float %4994, %4812
  %5061 = fsub fast float %4995, %4813
  %5062 = fsub fast float %4996, %4814
  %5063 = fmul fast float %5060, %4957
  %5064 = fmul fast float %5061, %4957
  %5065 = fmul fast float %5062, %4957
  %5066 = fadd fast float %5063, %4812
  %5067 = fadd fast float %5064, %4813
  %5068 = fadd fast float %5065, %4814
  %5069 = fadd fast float %5048, %4815
  %5070 = fadd fast float %5049, %4816
  %5071 = fadd fast float %5050, %4817
  %5072 = call float @dx.op.dot3.f32(i32 55, float %5069, float %5070, float %5071, float %5069, float %5070, float %5071)  ; Dot3(ax,ay,az,bx,by,bz)
  %5073 = call float @dx.op.unary.f32(i32 25, float %5072)  ; Rsqrt(value)
  %5074 = fmul fast float %5069, %5073
  %5075 = fmul fast float %5070, %5073
  %5076 = fmul fast float %5071, %5073
  %5077 = fsub fast float %5074, %4815
  %5078 = fsub fast float %5075, %4816
  %5079 = fsub fast float %5076, %4817
  %5080 = fmul fast float %5077, %4957
  %5081 = fmul fast float %5078, %4957
  %5082 = fmul fast float %5079, %4957
  %5083 = fadd fast float %5080, %4815
  %5084 = fadd fast float %5081, %4816
  %5085 = fadd fast float %5082, %4817
  %5086 = call float @dx.op.binary.f32(i32 36, float %4819, float %5005)  ; FMin(a,b)
  %5087 = fsub fast float %5086, %4819
  %5088 = fmul fast float %5087, %4957
  %5089 = fadd fast float %5088, %4819
  %5090 = fsub fast float %5018, %4818
  %5091 = fmul fast float %5090, %4957
  %5092 = fadd fast float %5091, %4818
  br label %5093

; <label>:5093                                    ; preds = %4955, %4917, %4808, %4524
  %5094 = phi float [ %5057, %4955 ], [ %4809, %4917 ], [ %4809, %4808 ], [ %4133, %4524 ]
  %5095 = phi float [ %5058, %4955 ], [ %4810, %4917 ], [ %4810, %4808 ], [ %4134, %4524 ]
  %5096 = phi float [ %5059, %4955 ], [ %4811, %4917 ], [ %4811, %4808 ], [ %4135, %4524 ]
  %5097 = phi float [ %5066, %4955 ], [ %4812, %4917 ], [ %4812, %4808 ], [ %4118, %4524 ]
  %5098 = phi float [ %5067, %4955 ], [ %4813, %4917 ], [ %4813, %4808 ], [ %4119, %4524 ]
  %5099 = phi float [ %5068, %4955 ], [ %4814, %4917 ], [ %4814, %4808 ], [ %4120, %4524 ]
  %5100 = phi float [ %5083, %4955 ], [ %4815, %4917 ], [ %4815, %4808 ], [ %4082, %4524 ]
  %5101 = phi float [ %5084, %4955 ], [ %4816, %4917 ], [ %4816, %4808 ], [ %4083, %4524 ]
  %5102 = phi float [ %5085, %4955 ], [ %4817, %4917 ], [ %4817, %4808 ], [ %4084, %4524 ]
  %5103 = phi float [ %5092, %4955 ], [ %4818, %4917 ], [ %4818, %4808 ], [ %4121, %4524 ]
  %5104 = phi float [ %5089, %4955 ], [ %4819, %4917 ], [ %4819, %4808 ], [ %4094, %4524 ]
  %5105 = fcmp fast une float %4528, 0.000000e+00
  br i1 %5105, label %5106, label %5275

; <label>:5106                                    ; preds = %5093
  %5107 = call float @dx.op.dot3.f32(i32 55, float %207, float %208, float %209, float %207, float %208, float %209)  ; Dot3(ax,ay,az,bx,by,bz)
  %5108 = call float @dx.op.unary.f32(i32 25, float %5107)  ; Rsqrt(value)
  %5109 = fmul fast float %207, %5108
  %5110 = fsub fast float -0.000000e+00, %5109
  %5111 = fmul fast float %208, %5108
  %5112 = fsub fast float -0.000000e+00, %5111
  %5113 = fmul fast float %209, %5108
  %5114 = fsub fast float -0.000000e+00, %5113
  %5115 = call float @dx.op.dot3.f32(i32 55, float %5110, float %5112, float %5114, float %127, float %128, float %129)  ; Dot3(ax,ay,az,bx,by,bz)
  %5116 = fmul fast float %4528, 2.500000e+00
  %5117 = call float @dx.op.unary.f32(i32 7, float %5116)  ; Saturate(value)
  %5118 = fmul fast float %4528, 0x4013FFFFE0000000
  %5119 = fadd fast float %5118, 0xBFFFFFFFE0000000
  %5120 = call float @dx.op.unary.f32(i32 7, float %5119)  ; Saturate(value)
  %5121 = fmul fast float %4528, 0x4004000020000000
  %5122 = fadd fast float %5121, 0xBFF8000040000000
  %5123 = call float @dx.op.unary.f32(i32 7, float %5122)  ; Saturate(value)
  %5124 = fmul fast float %4100, 1.000000e+01
  %5125 = call float @dx.op.unary.f32(i32 7, float %5124)  ; Saturate(value)
  %5126 = fmul fast float %5125, 2.000000e+00
  %5127 = fsub fast float 3.000000e+00, %5126
  %5128 = fmul fast float %5125, %5125
  %5129 = fmul fast float %5128, %5127
  %5130 = fsub fast float 1.000000e+00, %5129
  %5131 = fsub fast float 0x3FE3333340000000, %5103
  %5132 = fmul fast float %5131, 0x400AAAAAA0000000
  %5133 = call float @dx.op.unary.f32(i32 7, float %5132)  ; Saturate(value)
  %5134 = fmul fast float %5130, %5133
  %5135 = fmul fast float %5094, 0x3FEA2B8620000000
  %5136 = fmul fast float %5095, 0x3FEA2B8620000000
  %5137 = fmul fast float %5096, 0x3FEA2B8620000000
  %5138 = fadd fast float %5135, 0x3FC81DFBA0000000
  %5139 = fmul fast float %5138, %5094
  %5140 = fadd fast float %5139, 0x3F910E6020000000
  %5141 = fadd fast float %5136, 0x3FC81DFBA0000000
  %5142 = fmul fast float %5141, %5095
  %5143 = fadd fast float %5142, 0x3F910E6020000000
  %5144 = fadd fast float %5137, 0x3FC81DFBA0000000
  %5145 = fmul fast float %5144, %5096
  %5146 = fadd fast float %5145, 0x3F910E6020000000
  %5147 = call float @dx.op.unary.f32(i32 7, float %5140)  ; Saturate(value)
  %5148 = call float @dx.op.unary.f32(i32 7, float %5143)  ; Saturate(value)
  %5149 = call float @dx.op.unary.f32(i32 7, float %5146)  ; Saturate(value)
  %5150 = fsub fast float %5147, %5094
  %5151 = fsub fast float %5148, %5095
  %5152 = fsub fast float %5149, %5096
  %5153 = fmul fast float %5150, %5117
  %5154 = fmul fast float %5153, %5134
  %5155 = fmul fast float %5151, %5117
  %5156 = fmul fast float %5155, %5134
  %5157 = fmul fast float %5152, %5117
  %5158 = fmul fast float %5157, %5134
  %5159 = fadd fast float %5154, %5094
  %5160 = fadd fast float %5156, %5095
  %5161 = fadd fast float %5158, %5096
  %5162 = fmul fast float %5104, %5104
  %5163 = fmul fast float %5162, %5162
  %5164 = fadd fast float %5120, 1.000000e+00
  %5165 = fsub fast float %5164, %5134
  %5166 = call float @dx.op.unary.f32(i32 7, float %5165)  ; Saturate(value)
  %5167 = call float @dx.op.dot3.f32(i32 55, float %127, float %128, float %129, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5168 = call float @dx.op.unary.f32(i32 7, float %5167)  ; Saturate(value)
  %5169 = fsub fast float 1.000000e+00, %5163
  %5170 = call float @dx.op.binary.f32(i32 36, float %5166, float %5169)  ; FMin(a,b)
  %5171 = call float @dx.op.unary.f32(i32 7, float %5123)  ; Saturate(value)
  %5172 = call float @dx.op.binary.f32(i32 35, float %5170, float %5171)  ; FMax(a,b)
  %5173 = fadd fast float %5168, 0xBFE4CCCCC0000000
  %5174 = fmul fast float %5173, 0x4006DB6DA0000000
  %5175 = call float @dx.op.unary.f32(i32 7, float %5174)  ; Saturate(value)
  %5176 = fmul fast float %5175, 2.000000e+00
  %5177 = fsub fast float 3.000000e+00, %5176
  %5178 = bitcast float %5097 to i32
  %5179 = ashr i32 %5178, 1
  %5180 = add nsw i32 %5179, 532487669
  %5181 = bitcast i32 %5180 to float
  %5182 = fsub fast float 1.000000e+00, %5181
  %5183 = bitcast float %5182 to i32
  %5184 = sub nsw i32 2129859010, %5183
  %5185 = bitcast i32 %5184 to float
  %5186 = fmul fast float %5185, 2.000000e+00
  %5187 = bitcast float %5098 to i32
  %5188 = ashr i32 %5187, 1
  %5189 = add nsw i32 %5188, 532487669
  %5190 = bitcast i32 %5189 to float
  %5191 = fsub fast float 1.000000e+00, %5190
  %5192 = bitcast float %5191 to i32
  %5193 = sub nsw i32 2129859010, %5192
  %5194 = bitcast i32 %5193 to float
  %5195 = fmul fast float %5194, 2.000000e+00
  %5196 = bitcast float %5099 to i32
  %5197 = ashr i32 %5196, 1
  %5198 = add nsw i32 %5197, 532487669
  %5199 = bitcast i32 %5198 to float
  %5200 = fsub fast float 1.000000e+00, %5199
  %5201 = bitcast float %5200 to i32
  %5202 = sub nsw i32 2129859010, %5201
  %5203 = bitcast i32 %5202 to float
  %5204 = fmul fast float %5203, 2.000000e+00
  %5205 = fsub fast float 0x4002A9FBE0000000, %5186
  %5206 = fadd fast float %5186, 0x3FD54FDF00000000
  %5207 = bitcast float %5206 to i32
  %5208 = sub nsw i32 2129859010, %5207
  %5209 = bitcast i32 %5208 to float
  %5210 = fmul fast float %5209, %5205
  %5211 = fmul fast float %5210, %5210
  %5212 = fsub fast float 0x4002A9FBE0000000, %5195
  %5213 = fadd fast float %5195, 0x3FD54FDF00000000
  %5214 = bitcast float %5213 to i32
  %5215 = sub nsw i32 2129859010, %5214
  %5216 = bitcast i32 %5215 to float
  %5217 = fmul fast float %5216, %5212
  %5218 = fmul fast float %5217, %5217
  %5219 = fsub fast float 0x4002A9FBE0000000, %5204
  %5220 = fadd fast float %5204, 0x3FD54FDF00000000
  %5221 = bitcast float %5220 to i32
  %5222 = sub nsw i32 2129859010, %5221
  %5223 = bitcast i32 %5222 to float
  %5224 = fmul fast float %5223, %5219
  %5225 = fmul fast float %5224, %5224
  %5226 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5211)  ; FMax(a,b)
  %5227 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5218)  ; FMax(a,b)
  %5228 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5225)  ; FMax(a,b)
  %5229 = fsub fast float 1.000000e+00, %5115
  %5230 = fadd fast float %5229, %5130
  %5231 = call float @dx.op.unary.f32(i32 7, float %5230)  ; Saturate(value)
  %5232 = fsub fast float 1.000000e+00, %4509
  %5233 = fmul fast float %5172, %5232
  %5234 = fmul fast float %5175, %5175
  %5235 = fmul fast float %5234, %5233
  %5236 = fmul fast float %5235, %5177
  %5237 = fmul fast float %5232, 0xBFE99999A0000000
  %5238 = fmul fast float %5237, %5117
  %5239 = fmul fast float %5238, %5134
  %5240 = fadd fast float %5239, 1.000000e+00
  %5241 = fadd fast float %5103, -1.000000e+00
  %5242 = fmul fast float %5240, %5241
  %5243 = fadd fast float %5242, 1.000000e+00
  %5244 = fsub fast float %5226, %5097
  %5245 = fsub fast float %5227, %5098
  %5246 = fsub fast float %5228, %5099
  %5247 = fmul fast float %5236, %5244
  %5248 = fmul fast float %5236, %5245
  %5249 = fmul fast float %5236, %5246
  %5250 = fadd fast float %5247, %5097
  %5251 = fadd fast float %5248, %5098
  %5252 = fadd fast float %5249, %5099
  %5253 = fsub fast float %127, %5100
  %5254 = fsub fast float %128, %5101
  %5255 = fsub fast float %129, %5102
  %5256 = fmul fast float %5236, %5253
  %5257 = fmul fast float %5236, %5254
  %5258 = fmul fast float %5236, %5255
  %5259 = fadd fast float %5256, %5100
  %5260 = fadd fast float %5257, %5101
  %5261 = fadd fast float %5258, %5102
  %5262 = fmul fast float %5236, %5231
  %5263 = call float @dx.op.unary.f32(i32 7, float %5243)  ; Saturate(value)
  %5264 = fsub fast float 1.000000e+00, %5263
  %5265 = fmul fast float %5262, %5264
  %5266 = fadd fast float %5265, %5263
  %5267 = fsub fast float 1.000000e+00, %5104
  %5268 = fmul fast float %5236, %5267
  %5269 = fadd fast float %5268, %5104
  %5270 = call float @dx.op.dot3.f32(i32 55, float %5259, float %5260, float %5261, float %5259, float %5260, float %5261)  ; Dot3(ax,ay,az,bx,by,bz)
  %5271 = call float @dx.op.unary.f32(i32 25, float %5270)  ; Rsqrt(value)
  %5272 = fmul fast float %5259, %5271
  %5273 = fmul fast float %5260, %5271
  %5274 = fmul fast float %5261, %5271
  br label %5275

; <label>:5275                                    ; preds = %5106, %5093
  %5276 = phi float [ %5159, %5106 ], [ %5094, %5093 ]
  %5277 = phi float [ %5160, %5106 ], [ %5095, %5093 ]
  %5278 = phi float [ %5161, %5106 ], [ %5096, %5093 ]
  %5279 = phi float [ %5250, %5106 ], [ %5097, %5093 ]
  %5280 = phi float [ %5251, %5106 ], [ %5098, %5093 ]
  %5281 = phi float [ %5252, %5106 ], [ %5099, %5093 ]
  %5282 = phi float [ %5272, %5106 ], [ %5100, %5093 ]
  %5283 = phi float [ %5273, %5106 ], [ %5101, %5093 ]
  %5284 = phi float [ %5274, %5106 ], [ %5102, %5093 ]
  %5285 = phi float [ %5266, %5106 ], [ %5103, %5093 ]
  %5286 = phi float [ %5269, %5106 ], [ %5104, %5093 ]
  %5287 = icmp eq i32 %64, 0
  br i1 %5287, label %5318, label %5288

; <label>:5288                                    ; preds = %5275
  %5289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5290 = extractvalue %dx.types.CBufRet.f32 %5289, 2
  %5291 = extractvalue %dx.types.CBufRet.f32 %5289, 3
  %5292 = fmul fast float %5290, %120
  %5293 = fmul fast float %5291, %121
  %5294 = fmul fast float %5292, 1.024000e+03
  %5295 = fmul fast float %5293, 1.024000e+03
  %5296 = fadd fast float %5294, -5.120000e+02
  %5297 = fadd fast float %5295, -5.120000e+02
  %5298 = fmul fast float %5292, 0x4081BEDF00000000
  %5299 = fadd fast float %5298, 0xC071BEDF00000000
  %5300 = call float @dx.op.unary.f32(i32 22, float %5299)  ; Frc(value)
  %5301 = fmul fast float %5296, %5300
  %5302 = fadd fast float %5301, %5297
  %5303 = fmul fast float %5293, 0x4073BEBE20000000
  %5304 = fadd fast float %5303, 0xC063BEBE20000000
  %5305 = call float @dx.op.unary.f32(i32 22, float %5304)  ; Frc(value)
  %5306 = fmul fast float %5297, %5305
  %5307 = fadd fast float %5306, %5296
  %5308 = fmul fast float %5302, %5307
  %5309 = call float @dx.op.unary.f32(i32 22, float %5308)  ; Frc(value)
  %5310 = add i32 %333, 12
  %5311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %5310, i32 undef)  ; BufferLoad(srv,index,wot)
  %5312 = extractvalue %dx.types.ResRet.i32 %5311, 0
  %5313 = and i32 %5312, 255
  %5314 = uitofp i32 %5313 to float
  %5315 = fmul fast float %5314, 0x3F70101020000000
  %5316 = fcmp fast olt float %5309, %5315
  br i1 %5316, label %5317, label %5318

; <label>:5317                                    ; preds = %5288
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %5318

; <label>:5318                                    ; preds = %5317, %5288, %5275
  %5319 = fsub fast float -0.000000e+00, %209
  %5320 = call float @dx.op.dot3.f32(i32 55, float %207, float %208, float %209, float %207, float %208, float %209)  ; Dot3(ax,ay,az,bx,by,bz)
  %5321 = call float @dx.op.unary.f32(i32 25, float %5320)  ; Rsqrt(value)
  %5322 = fmul fast float %5321, %207
  %5323 = fmul fast float %5321, %208
  %5324 = fmul fast float %5321, %209
  %5325 = fsub fast float -0.000000e+00, %5322
  %5326 = fsub fast float -0.000000e+00, %5323
  %5327 = fsub fast float -0.000000e+00, %5324
  %5328 = select i1 %279, float 0.000000e+00, float %5281
  %5329 = call float @dx.op.dot3.f32(i32 55, float %5282, float %5283, float %5284, float %5325, float %5326, float %5327)  ; Dot3(ax,ay,az,bx,by,bz)
  %5330 = call float @dx.op.unary.f32(i32 7, float %5329)  ; Saturate(value)
  %5331 = call float @dx.op.dot3.f32(i32 55, float %5322, float %5323, float %5324, float %5282, float %5283, float %5284)  ; Dot3(ax,ay,az,bx,by,bz)
  %5332 = fmul fast float %5331, 2.000000e+00
  %5333 = fmul fast float %5332, %5282
  %5334 = fmul fast float %5332, %5283
  %5335 = fmul fast float %5332, %5284
  %5336 = fsub fast float %5322, %5333
  %5337 = fsub fast float %5323, %5334
  %5338 = fsub fast float %5324, %5335
  %5339 = call float @dx.op.binary.f32(i32 36, float %5286, float 1.000000e+00)  ; FMin(a,b)
  %5340 = fsub fast float 1.000000e+00, %5339
  %5341 = bitcast float %5340 to i32
  %5342 = ashr i32 %5341, 1
  %5343 = add nsw i32 %5342, 532487669
  %5344 = bitcast i32 %5343 to float
  %5345 = fsub fast float 1.000000e+00, %5285
  %5346 = call float @dx.op.binary.f32(i32 35, float %5345, float 0x3F847AE140000000)  ; FMax(a,b)
  %5347 = fmul fast float %5346, %5346
  %5348 = fmul fast float %5347, %5347
  %5349 = call float @dx.op.unary.f32(i32 7, float %5330)  ; Saturate(value)
  %5350 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %56, float %5344, float %5348, float %5349, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5351 = extractvalue %dx.types.ResRet.f32 %5350, 0
  %5352 = fsub fast float 1.000000e+00, %5286
  %5353 = bitcast float %5352 to i32
  %5354 = sub nsw i32 2129859010, %5353
  %5355 = fsub fast float 1.000000e+00, %87
  %5356 = call float @dx.op.dot3.f32(i32 55, float %147, float %148, float %149, float %127, float %128, float %129)  ; Dot3(ax,ay,az,bx,by,bz)
  %5357 = call float @dx.op.binary.f32(i32 35, float %5356, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5358 = fdiv fast float %5355, %5357
  %5359 = call float @dx.op.dot3.f32(i32 55, float %5282, float %5283, float %5284, float %127, float %128, float %129)  ; Dot3(ax,ay,az,bx,by,bz)
  %5360 = call float @dx.op.unary.f32(i32 7, float %5359)  ; Saturate(value)
  %5361 = fmul fast float %5360, 5.000000e-01
  %5362 = fadd fast float %5361, 5.000000e-01
  %5363 = fmul fast float %5362, %87
  %5364 = call float @dx.op.dot3.f32(i32 55, float %5282, float %5283, float %5284, float %147, float %148, float %149)  ; Dot3(ax,ay,az,bx,by,bz)
  %5365 = call float @dx.op.unary.f32(i32 7, float %5364)  ; Saturate(value)
  %5366 = fmul fast float %5365, %5358
  %5367 = fadd fast float %5363, %5366
  %5368 = fsub fast float 5.000000e-01, %5361
  %5369 = fmul fast float %5368, %5276
  %5370 = fmul fast float %5368, %5277
  %5371 = fmul fast float %5368, %5278
  %5372 = fadd fast float %5367, %5369
  %5373 = fadd fast float %5367, %5370
  %5374 = fadd fast float %5367, %5371
  %5375 = call float @dx.op.dot3.f32(i32 55, float %5336, float %5337, float %5338, float %127, float %128, float %129)  ; Dot3(ax,ay,az,bx,by,bz)
  %5376 = call float @dx.op.unary.f32(i32 7, float %5375)  ; Saturate(value)
  %5377 = fmul fast float %5376, 5.000000e-01
  %5378 = fadd fast float %5377, 5.000000e-01
  %5379 = fmul fast float %5378, %87
  %5380 = call float @dx.op.dot3.f32(i32 55, float %5336, float %5337, float %5338, float %147, float %148, float %149)  ; Dot3(ax,ay,az,bx,by,bz)
  %5381 = call float @dx.op.unary.f32(i32 7, float %5380)  ; Saturate(value)
  %5382 = fmul fast float %5381, %5358
  %5383 = fadd fast float %5379, %5382
  %5384 = fsub fast float 5.000000e-01, %5377
  %5385 = fmul fast float %5384, %5276
  %5386 = fmul fast float %5384, %5277
  %5387 = fmul fast float %5384, %5278
  %5388 = fadd fast float %5383, %5385
  %5389 = fadd fast float %5383, %5386
  %5390 = fadd fast float %5383, %5387
  %5391 = call float @dx.op.dot3.f32(i32 55, float %88, float %89, float %90, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5393 = extractvalue %dx.types.CBufRet.f32 %5392, 0
  %5394 = call float @dx.op.binary.f32(i32 36, float %5276, float %5393)  ; FMin(a,b)
  %5395 = fmul fast float %5394, %5340
  %5396 = fsub fast float 1.000000e+00, %5395
  %5397 = bitcast float %5396 to i32
  %5398 = sub nsw i32 2129859010, %5397
  %5399 = bitcast i32 %5398 to float
  %5400 = call float @dx.op.binary.f32(i32 36, float %5277, float %5393)  ; FMin(a,b)
  %5401 = fmul fast float %5400, %5340
  %5402 = fsub fast float 1.000000e+00, %5401
  %5403 = bitcast float %5402 to i32
  %5404 = sub nsw i32 2129859010, %5403
  %5405 = bitcast i32 %5404 to float
  %5406 = call float @dx.op.binary.f32(i32 36, float %5278, float %5393)  ; FMin(a,b)
  %5407 = fmul fast float %5406, %5340
  %5408 = fsub fast float 1.000000e+00, %5407
  %5409 = bitcast float %5408 to i32
  %5410 = sub nsw i32 2129859010, %5409
  %5411 = bitcast i32 %5410 to float
  %5412 = fmul fast float %5339, %88
  %5413 = fmul fast float %5412, %5372
  %5414 = fmul fast float %5413, %5399
  %5415 = fmul fast float %5339, %89
  %5416 = fmul fast float %5415, %5373
  %5417 = fmul fast float %5416, %5405
  %5418 = fmul fast float %5339, %90
  %5419 = fmul fast float %5418, %5374
  %5420 = fmul fast float %5419, %5411
  %5421 = call float @dx.op.binary.f32(i32 36, float %5279, float %5393)  ; FMin(a,b)
  %5422 = fmul fast float %5421, %5340
  %5423 = fsub fast float 1.000000e+00, %5422
  %5424 = bitcast float %5423 to i32
  %5425 = sub nsw i32 2129859010, %5424
  %5426 = bitcast i32 %5425 to float
  %5427 = call float @dx.op.binary.f32(i32 36, float %5280, float %5393)  ; FMin(a,b)
  %5428 = fmul fast float %5427, %5340
  %5429 = fsub fast float 1.000000e+00, %5428
  %5430 = bitcast float %5429 to i32
  %5431 = sub nsw i32 2129859010, %5430
  %5432 = bitcast i32 %5431 to float
  %5433 = call float @dx.op.binary.f32(i32 36, float %5328, float %5393)  ; FMin(a,b)
  %5434 = fmul fast float %5433, %5340
  %5435 = fsub fast float 1.000000e+00, %5434
  %5436 = bitcast float %5435 to i32
  %5437 = sub nsw i32 2129859010, %5436
  %5438 = bitcast i32 %5437 to float
  %5439 = fmul fast float %5412, %5388
  %5440 = fmul fast float %5439, %5426
  %5441 = fmul fast float %5415, %5389
  %5442 = fmul fast float %5441, %5432
  %5443 = fmul fast float %5418, %5390
  %5444 = fmul fast float %5443, %5438
  %5445 = call float @dx.op.dot3.f32(i32 55, float %5414, float %5417, float %5420, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5446 = select i1 %279, float 0.000000e+00, float %5414
  %5447 = select i1 %279, float %5445, float %5417
  %5448 = select i1 %279, float 0.000000e+00, float %5420
  %5449 = call float @dx.op.dot3.f32(i32 55, float %5440, float %5442, float %5444, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5450 = select i1 %279, float 0.000000e+00, float %5440
  %5451 = select i1 %279, float %5449, float %5442
  %5452 = select i1 %279, float 0.000000e+00, float %5444
  %5453 = call float @dx.op.unary.f32(i32 6, float %83)  ; FAbs(value)
  %5454 = fmul fast float %5453, %5446
  %5455 = fmul fast float %5453, %5447
  %5456 = fmul fast float %5448, %5453
  %5457 = fmul fast float %5330, 9.843750e-01
  %5458 = fmul fast float %5285, 9.843750e-01
  %5459 = fadd fast float %5457, 7.812500e-03
  %5460 = fadd fast float %5458, 7.812500e-03
  %5461 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %56, float %5459, float %5460, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5462 = extractvalue %dx.types.ResRet.f32 %5461, 2
  %5463 = extractvalue %dx.types.ResRet.f32 %5461, 3
  %5464 = fmul fast float %5462, %5279
  %5465 = fmul fast float %5462, %5280
  %5466 = fmul fast float %5462, %5328
  %5467 = fadd fast float %5464, %5463
  %5468 = fadd fast float %5465, %5463
  %5469 = fadd fast float %5466, %5463
  %5470 = fcmp fast ogt float %4095, 0.000000e+00
  br i1 %5470, label %5471, label %5497

; <label>:5471                                    ; preds = %5318
  %5472 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %56, float %4095, float %5330, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5473 = extractvalue %dx.types.ResRet.f32 %5472, 0
  %5474 = extractvalue %dx.types.ResRet.f32 %5472, 1
  %5475 = extractvalue %dx.types.ResRet.f32 %5472, 2
  %5476 = fadd fast float %5473, -5.000000e-01
  %5477 = fadd fast float %5474, -5.000000e-01
  %5478 = fadd fast float %5475, -5.000000e-01
  %5479 = fsub fast float 1.000000e+00, %5279
  %5480 = fsub fast float 1.000000e+00, %5280
  %5481 = fsub fast float 1.000000e+00, %5328
  %5482 = fmul fast float %5279, 4.000000e+00
  %5483 = fmul fast float %5482, %5479
  %5484 = fmul fast float %5483, %5476
  %5485 = fmul fast float %5280, 4.000000e+00
  %5486 = fmul fast float %5485, %5480
  %5487 = fmul fast float %5486, %5477
  %5488 = fmul fast float %5328, 4.000000e+00
  %5489 = fmul fast float %5488, %5481
  %5490 = fmul fast float %5489, %5478
  %5491 = fadd fast float %5484, %5467
  %5492 = fadd fast float %5487, %5468
  %5493 = fadd fast float %5490, %5469
  %5494 = call float @dx.op.unary.f32(i32 7, float %5491)  ; Saturate(value)
  %5495 = call float @dx.op.unary.f32(i32 7, float %5492)  ; Saturate(value)
  %5496 = call float @dx.op.unary.f32(i32 7, float %5493)  ; Saturate(value)
  br label %5497

; <label>:5497                                    ; preds = %5471, %5318
  %5498 = phi float [ %5494, %5471 ], [ %5467, %5318 ]
  %5499 = phi float [ %5495, %5471 ], [ %5468, %5318 ]
  %5500 = phi float [ %5496, %5471 ], [ %5469, %5318 ]
  %5501 = call float @dx.op.binary.f32(i32 35, float %5499, float %5500)  ; FMax(a,b)
  %5502 = call float @dx.op.binary.f32(i32 35, float %5498, float %5501)  ; FMax(a,b)
  %5503 = fsub fast float 1.000000e+00, %5502
  %5504 = fmul fast float %5502, %5285
  %5505 = fadd fast float %5504, %5285
  %5506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5507 = extractvalue %dx.types.CBufRet.f32 %5506, 2
  %5508 = extractvalue %dx.types.CBufRet.f32 %5506, 3
  %5509 = fmul fast float %5505, %5507
  %5510 = fadd fast float %5509, %5508
  %5511 = call float @dx.op.unary.f32(i32 7, float %5510)  ; Saturate(value)
  %5512 = fsub fast float 1.000000e+00, %5351
  %5513 = fadd fast float %5512, %5511
  %5514 = call float @dx.op.unary.f32(i32 7, float %5513)  ; Saturate(value)
  %5515 = fcmp fast olt float %5514, 1.000000e+00
  br i1 %5515, label %5516, label %5992

; <label>:5516                                    ; preds = %5497
  %5517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5518 = extractvalue %dx.types.CBufRet.f32 %5517, 2
  %5519 = extractvalue %dx.types.CBufRet.f32 %5517, 3
  %5520 = fmul fast float %5518, %120
  %5521 = fmul fast float %5519, %121
  %5522 = fptoui float %5520 to i32
  %5523 = fptoui float %5521 to i32
  %5524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5525 = extractvalue %dx.types.CBufRet.f32 %5524, 0
  %5526 = extractvalue %dx.types.CBufRet.f32 %5524, 2
  %5527 = extractvalue %dx.types.CBufRet.f32 %5524, 3
  %5528 = fadd fast float %107, -4.000000e+00
  %5529 = call float @dx.op.binary.f32(i32 35, float %5528, float 0.000000e+00)  ; FMax(a,b)
  %5530 = fadd fast float %5529, %5525
  %5531 = fmul fast float %5530, %5526
  %5532 = call float @dx.op.unary.f32(i32 23, float %5531)  ; Log(value)
  %5533 = fmul fast float %5532, %5527
  %5534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5535 = extractvalue %dx.types.CBufRet.f32 %5534, 2
  %5536 = fmul fast float %5533, %5535
  %5537 = call float @dx.op.unary.f32(i32 7, float %5536)  ; Saturate(value)
  %5538 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5539 = extractvalue %dx.types.CBufRet.i32 %5538, 1
  %5540 = add i32 %5539, -1
  %5541 = uitofp i32 %5539 to float
  %5542 = fmul fast float %5541, %5537
  %5543 = fptoui float %5542 to i32
  %5544 = call i32 @dx.op.binary.i32(i32 40, i32 %5543, i32 %5540)  ; UMin(a,b)
  %5545 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5546 = extractvalue %dx.types.CBufRet.i32 %5545, 2
  %5547 = extractvalue %dx.types.CBufRet.i32 %5545, 3
  %5548 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5523, i32 %5546, i32 %5522)  ; UMad(a,b,c)
  %5549 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5544, i32 %5547, i32 %5548)  ; UMad(a,b,c)
  %5550 = call float @dx.op.binary.f32(i32 35, float %107, float 0.000000e+00)  ; FMax(a,b)
  %5551 = fptoui float %5550 to i32
  %5552 = lshr i32 %5551, 5
  %5553 = call i32 @dx.op.binary.i32(i32 40, i32 %5552, i32 8191)  ; UMin(a,b)
  %5554 = fsub fast float %4496, %209
  %5555 = call float @dx.op.unary.f32(i32 7, float %5554)  ; Saturate(value)
  %5556 = fcmp fast ogt float %5555, 0.000000e+00
  %5557 = fcmp fast ogt float %5338, 0.000000e+00
  %5558 = and i1 %5557, %5556
  br i1 %5558, label %5559, label %5588

; <label>:5559                                    ; preds = %5516
  %5560 = call float @dx.op.dot3.f32(i32 55, float %5336, float %5337, float %5338, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5561 = call float @dx.op.binary.f32(i32 35, float %5560, float -1.000000e+00)  ; FMax(a,b)
  %5562 = call float @dx.op.binary.f32(i32 36, float %5561, float 1.000000e+00)  ; FMin(a,b)
  %5563 = fmul fast float %5562, %5562
  %5564 = fsub fast float 1.000000e+00, %5563
  %5565 = fmul fast float %5564, 0x3FFC6E2300000000
  %5566 = fsub fast float 1.000000e+00, %5565
  %5567 = fcmp fast ogt float %5566, 0.000000e+00
  %5568 = call float @dx.op.unary.f32(i32 24, float %5566)  ; Sqrt(value)
  %5569 = fsub fast float 1.000000e+00, %5568
  %5570 = call float @dx.op.unary.f32(i32 23, float %5569)  ; Log(value)
  %5571 = fmul fast float %5570, 5.000000e+00
  %5572 = call float @dx.op.unary.f32(i32 21, float %5571)  ; Exp(value)
  %5573 = fmul fast float %5572, 0x3FEF591A60000000
  %5574 = fadd fast float %5573, 0x3F94DCB540000000
  %5575 = select i1 %5567, float %5574, float 1.000000e+00
  %5576 = fcmp fast oge float %5575, 1.000000e+00
  %5577 = fmul fast float %5560, 2.000000e+00
  %5578 = fadd fast float %5577, %5338
  %5579 = select i1 %5576, float %5578, float %5338
  %5580 = fsub fast float %5579, %5338
  %5581 = fmul fast float %5580, %5555
  %5582 = fadd fast float %5581, %5338
  %5583 = call float @dx.op.dot3.f32(i32 55, float %5336, float %5337, float %5582, float %5336, float %5337, float %5582)  ; Dot3(ax,ay,az,bx,by,bz)
  %5584 = call float @dx.op.unary.f32(i32 25, float %5583)  ; Rsqrt(value)
  %5585 = fmul fast float %5584, %5336
  %5586 = fmul fast float %5584, %5337
  %5587 = fmul fast float %5582, %5584
  br label %5588

; <label>:5588                                    ; preds = %5559, %5516
  %5589 = phi float [ %5585, %5559 ], [ %5336, %5516 ]
  %5590 = phi float [ %5586, %5559 ], [ %5337, %5516 ]
  %5591 = phi float [ %5587, %5559 ], [ %5338, %5516 ]
  %5592 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5593 = extractvalue %dx.types.CBufRet.i32 %5592, 2
  %5594 = add nsw i32 %5593, -1
  %5595 = call i32 @dx.op.binary.i32(i32 37, i32 %5594, i32 0)  ; IMax(a,b)
  %5596 = shl i32 %5553, 2
  %5597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %5596, i32 undef)  ; BufferLoad(srv,index,wot)
  %5598 = extractvalue %dx.types.ResRet.i32 %5597, 0
  %5599 = lshr i32 %5598, 16
  %5600 = and i32 %5598, 65535
  %5601 = lshr i32 %5598, 21
  %5602 = lshr i32 %5600, 5
  %5603 = call i32 @dx.op.binary.i32(i32 40, i32 %5602, i32 %5595)  ; UMin(a,b)
  %5604 = icmp ugt i32 %5601, %5603
  br i1 %5604, label %5968, label %5605

; <label>:5605                                    ; preds = %5588
  br label %5606

; <label>:5606                                    ; preds = %5960, %5605
  %5607 = phi float [ %5961, %5960 ], [ 0.000000e+00, %5605 ]
  %5608 = phi float [ %5962, %5960 ], [ 0.000000e+00, %5605 ]
  %5609 = phi float [ %5963, %5960 ], [ 0.000000e+00, %5605 ]
  %5610 = phi float [ %5964, %5960 ], [ 1.000000e+00, %5605 ]
  %5611 = phi i32 [ %5965, %5960 ], [ %5601, %5605 ]
  %5612 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5613 = extractvalue %dx.types.CBufRet.i32 %5612, 2
  %5614 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5549, i32 %5613, i32 %5611)  ; UMad(a,b,c)
  %5615 = shl i32 %5614, 2
  %5616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5615, i32 undef)  ; BufferLoad(srv,index,wot)
  %5617 = extractvalue %dx.types.ResRet.i32 %5616, 0
  %5618 = shl i32 %5611, 5
  %5619 = sub nsw i32 %5599, %5618
  %5620 = call i32 @dx.op.binary.i32(i32 37, i32 %5619, i32 0)  ; IMax(a,b)
  %5621 = call i32 @dx.op.binary.i32(i32 38, i32 %5620, i32 31)  ; IMin(a,b)
  %5622 = sub nsw i32 1, %5599
  %5623 = add nsw i32 %5622, %5600
  %5624 = call i32 @dx.op.binary.i32(i32 37, i32 %5623, i32 0)  ; IMax(a,b)
  %5625 = call i32 @dx.op.binary.i32(i32 38, i32 %5624, i32 32)  ; IMin(a,b)
  %5626 = and i32 %5625, 31
  %5627 = shl i32 -1, %5626
  %5628 = xor i32 %5627, -1
  %5629 = and i32 %5621, 31
  %5630 = shl i32 %5628, %5629
  %5631 = icmp eq i32 %5625, 32
  %5632 = select i1 %5631, i32 -1, i32 %5630
  %5633 = and i32 %5632, %5617
  %5634 = icmp eq i32 %5633, 0
  br i1 %5634, label %5960, label %5635

; <label>:5635                                    ; preds = %5606
  br label %5636

; <label>:5636                                    ; preds = %5743, %5635
  %5637 = phi float [ %5744, %5743 ], [ %5607, %5635 ]
  %5638 = phi float [ %5745, %5743 ], [ %5608, %5635 ]
  %5639 = phi float [ %5746, %5743 ], [ %5609, %5635 ]
  %5640 = phi float [ %5747, %5743 ], [ %5610, %5635 ]
  %5641 = phi i32 [ %5646, %5743 ], [ %5633, %5635 ]
  %5642 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5641)  ; FirstbitLo(value)
  %5643 = add i32 %5642, %5618
  %5644 = and i32 %5642, 31
  %5645 = shl i32 1, %5644
  %5646 = xor i32 %5645, %5641
  %5647 = mul i32 %5643, 72
  %5648 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5647, i32 undef)  ; BufferLoad(srv,index,wot)
  %5649 = extractvalue %dx.types.ResRet.f32 %5648, 0
  %5650 = extractvalue %dx.types.ResRet.f32 %5648, 1
  %5651 = extractvalue %dx.types.ResRet.f32 %5648, 2
  %5652 = add i32 %5647, 12
  %5653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %5652, i32 undef)  ; BufferLoad(srv,index,wot)
  %5654 = extractvalue %dx.types.ResRet.i32 %5653, 0
  %5655 = add i32 %5647, 16
  %5656 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5655, i32 undef)  ; BufferLoad(srv,index,wot)
  %5657 = extractvalue %dx.types.ResRet.f32 %5656, 0
  %5658 = extractvalue %dx.types.ResRet.f32 %5656, 1
  %5659 = extractvalue %dx.types.ResRet.f32 %5656, 2
  %5660 = add i32 %5647, 28
  %5661 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5660, i32 undef)  ; BufferLoad(srv,index,wot)
  %5662 = extractvalue %dx.types.ResRet.f32 %5661, 0
  %5663 = add i32 %5647, 32
  %5664 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5663, i32 undef)  ; BufferLoad(srv,index,wot)
  %5665 = extractvalue %dx.types.ResRet.f32 %5664, 0
  %5666 = extractvalue %dx.types.ResRet.f32 %5664, 1
  %5667 = extractvalue %dx.types.ResRet.f32 %5664, 2
  %5668 = extractvalue %dx.types.ResRet.f32 %5664, 3
  %5669 = add i32 %5647, 48
  %5670 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5669, i32 undef)  ; BufferLoad(srv,index,wot)
  %5671 = extractvalue %dx.types.ResRet.f32 %5670, 0
  %5672 = extractvalue %dx.types.ResRet.f32 %5670, 1
  %5673 = add i32 %5647, 56
  %5674 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5673, i32 undef)  ; BufferLoad(srv,index,wot)
  %5675 = extractvalue %dx.types.ResRet.f32 %5674, 0
  %5676 = extractvalue %dx.types.ResRet.f32 %5674, 1
  %5677 = add i32 %5647, 64
  %5678 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5677, i32 undef)  ; BufferLoad(srv,index,wot)
  %5679 = extractvalue %dx.types.ResRet.f32 %5678, 0
  %5680 = extractvalue %dx.types.ResRet.f32 %5678, 1
  %5681 = mul i32 %5643, 60
  %5682 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5681, i32 undef)  ; BufferLoad(srv,index,wot)
  %5683 = extractvalue %dx.types.ResRet.f32 %5682, 0
  %5684 = extractvalue %dx.types.ResRet.f32 %5682, 1
  %5685 = extractvalue %dx.types.ResRet.f32 %5682, 2
  %5686 = add i32 %5681, 12
  %5687 = add i32 %5681, 48
  %5688 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5687, i32 undef)  ; BufferLoad(srv,index,wot)
  %5689 = extractvalue %dx.types.ResRet.f32 %5688, 0
  %5690 = extractvalue %dx.types.ResRet.f32 %5688, 1
  %5691 = extractvalue %dx.types.ResRet.f32 %5688, 2
  %5692 = and i32 %5654, 32767
  %5693 = bitcast float %5649 to i32
  %5694 = icmp eq i32 %5693, -1
  %5695 = bitcast float %5650 to i32
  %5696 = and i32 %5654, 32768
  %5697 = icmp ne i32 %5696, 0
  %5698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5699 = extractvalue %dx.types.CBufRet.f32 %5698, 0
  %5700 = extractvalue %dx.types.CBufRet.f32 %5698, 1
  %5701 = extractvalue %dx.types.CBufRet.f32 %5698, 2
  %5702 = fsub fast float %5683, %5699
  %5703 = fsub fast float %5684, %5700
  %5704 = fsub fast float %5685, %5701
  %5705 = fsub fast float %207, %5702
  %5706 = fsub fast float %208, %5703
  %5707 = fsub fast float %209, %5704
  %5708 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5686, i32 undef)  ; BufferLoad(srv,index,wot)
  %5709 = extractvalue %dx.types.ResRet.f32 %5708, 0
  %5710 = extractvalue %dx.types.ResRet.f32 %5708, 1
  %5711 = extractvalue %dx.types.ResRet.f32 %5708, 2
  %5712 = call float @dx.op.dot3.f32(i32 55, float %5705, float %5706, float %5707, float %5709, float %5710, float %5711)  ; Dot3(ax,ay,az,bx,by,bz)
  %5713 = add i32 %5681, 24
  %5714 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5713, i32 undef)  ; BufferLoad(srv,index,wot)
  %5715 = extractvalue %dx.types.ResRet.f32 %5714, 0
  %5716 = extractvalue %dx.types.ResRet.f32 %5714, 1
  %5717 = extractvalue %dx.types.ResRet.f32 %5714, 2
  %5718 = call float @dx.op.dot3.f32(i32 55, float %5705, float %5706, float %5707, float %5715, float %5716, float %5717)  ; Dot3(ax,ay,az,bx,by,bz)
  %5719 = add i32 %5681, 36
  %5720 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5719, i32 undef)  ; BufferLoad(srv,index,wot)
  %5721 = extractvalue %dx.types.ResRet.f32 %5720, 0
  %5722 = extractvalue %dx.types.ResRet.f32 %5720, 1
  %5723 = extractvalue %dx.types.ResRet.f32 %5720, 2
  %5724 = call float @dx.op.dot3.f32(i32 55, float %5705, float %5706, float %5707, float %5721, float %5722, float %5723)  ; Dot3(ax,ay,az,bx,by,bz)
  %5725 = call float @dx.op.unary.f32(i32 6, float %5712)  ; FAbs(value)
  %5726 = call float @dx.op.unary.f32(i32 6, float %5718)  ; FAbs(value)
  %5727 = call float @dx.op.unary.f32(i32 6, float %5724)  ; FAbs(value)
  %5728 = fsub fast float %5689, %5725
  %5729 = fsub fast float %5690, %5726
  %5730 = fsub fast float %5691, %5727
  %5731 = fmul fast float %5728, %5657
  %5732 = fmul fast float %5729, %5658
  %5733 = fmul fast float %5730, %5659
  %5734 = call float @dx.op.binary.f32(i32 36, float %5732, float %5733)  ; FMin(a,b)
  %5735 = call float @dx.op.binary.f32(i32 36, float %5731, float %5734)  ; FMin(a,b)
  %5736 = call float @dx.op.unary.f32(i32 7, float %5735)  ; Saturate(value)
  %5737 = call float @dx.op.binary.f32(i32 36, float %5640, float %5736)  ; FMin(a,b)
  %5738 = uitofp i1 %5697 to float
  %5739 = fadd fast float %5555, 1.000000e+00
  %5740 = fsub fast float %5739, %5738
  %5741 = fmul fast float %5737, %5740
  %5742 = fcmp fast ogt float %5741, 0.000000e+00
  br i1 %5742, label %5749, label %5743

; <label>:5743                                    ; preds = %5891, %5636
  %5744 = phi float [ %5955, %5891 ], [ %5637, %5636 ]
  %5745 = phi float [ %5956, %5891 ], [ %5638, %5636 ]
  %5746 = phi float [ %5957, %5891 ], [ %5639, %5636 ]
  %5747 = phi float [ %5958, %5891 ], [ %5640, %5636 ]
  %5748 = icmp eq i32 %5641, %5645
  br i1 %5748, label %5959, label %5636

; <label>:5749                                    ; preds = %5636
  br i1 %5694, label %5807, label %5750

; <label>:5750                                    ; preds = %5749
  %5751 = fsub fast float -0.000000e+00, %5709
  %5752 = fsub fast float -0.000000e+00, %5710
  %5753 = fsub fast float -0.000000e+00, %5711
  %5754 = call float @dx.op.dot3.f32(i32 55, float %5589, float %5590, float %5591, float %5751, float %5752, float %5753)  ; Dot3(ax,ay,az,bx,by,bz)
  %5755 = fsub fast float -0.000000e+00, %5754
  %5756 = call float @dx.op.dot3.f32(i32 55, float %5705, float %5706, float %5707, float %5751, float %5752, float %5753)  ; Dot3(ax,ay,az,bx,by,bz)
  %5757 = fadd fast float %5756, %5672
  %5758 = fadd fast float %5671, %5756
  %5759 = fsub fast float -0.000000e+00, %5758
  %5760 = fcmp ogt float %5754, -0.000000e+00
  %5761 = select i1 %5760, float %5759, float %5757
  %5762 = call float @dx.op.unary.f32(i32 6, float %5755)  ; FAbs(value)
  %5763 = fdiv fast float 1.000000e+00, %5762
  %5764 = fmul fast float %5761, %5763
  %5765 = call float @dx.op.binary.f32(i32 35, float %5764, float 0.000000e+00)  ; FMax(a,b)
  %5766 = fsub fast float -0.000000e+00, %5715
  %5767 = fsub fast float -0.000000e+00, %5716
  %5768 = fsub fast float -0.000000e+00, %5717
  %5769 = call float @dx.op.dot3.f32(i32 55, float %5589, float %5590, float %5591, float %5766, float %5767, float %5768)  ; Dot3(ax,ay,az,bx,by,bz)
  %5770 = fsub fast float -0.000000e+00, %5769
  %5771 = call float @dx.op.dot3.f32(i32 55, float %5705, float %5706, float %5707, float %5766, float %5767, float %5768)  ; Dot3(ax,ay,az,bx,by,bz)
  %5772 = fadd fast float %5771, %5676
  %5773 = fadd fast float %5675, %5771
  %5774 = fsub fast float -0.000000e+00, %5773
  %5775 = fcmp ogt float %5769, -0.000000e+00
  %5776 = select i1 %5775, float %5774, float %5772
  %5777 = call float @dx.op.unary.f32(i32 6, float %5770)  ; FAbs(value)
  %5778 = fdiv fast float 1.000000e+00, %5777
  %5779 = fmul fast float %5776, %5778
  %5780 = call float @dx.op.binary.f32(i32 35, float %5779, float 0.000000e+00)  ; FMax(a,b)
  %5781 = fsub fast float -0.000000e+00, %5721
  %5782 = fsub fast float -0.000000e+00, %5722
  %5783 = fsub fast float -0.000000e+00, %5723
  %5784 = call float @dx.op.dot3.f32(i32 55, float %5589, float %5590, float %5591, float %5781, float %5782, float %5783)  ; Dot3(ax,ay,az,bx,by,bz)
  %5785 = fsub fast float -0.000000e+00, %5784
  %5786 = call float @dx.op.dot3.f32(i32 55, float %5705, float %5706, float %5707, float %5781, float %5782, float %5783)  ; Dot3(ax,ay,az,bx,by,bz)
  %5787 = fadd fast float %5786, %5680
  %5788 = fadd fast float %5679, %5786
  %5789 = fsub fast float -0.000000e+00, %5788
  %5790 = fcmp ogt float %5784, -0.000000e+00
  %5791 = select i1 %5790, float %5789, float %5787
  %5792 = call float @dx.op.unary.f32(i32 6, float %5785)  ; FAbs(value)
  %5793 = fdiv fast float 1.000000e+00, %5792
  %5794 = fmul fast float %5791, %5793
  %5795 = call float @dx.op.binary.f32(i32 35, float %5794, float 0.000000e+00)  ; FMax(a,b)
  %5796 = call float @dx.op.binary.f32(i32 36, float %5780, float %5795)  ; FMin(a,b)
  %5797 = call float @dx.op.binary.f32(i32 36, float %5765, float %5796)  ; FMin(a,b)
  %5798 = fmul fast float %5797, %5589
  %5799 = fmul fast float %5797, %5590
  %5800 = fmul fast float %5797, %5591
  %5801 = fadd fast float %5798, %207
  %5802 = fadd fast float %5799, %208
  %5803 = fadd fast float %5800, %209
  %5804 = fsub fast float %5801, %5649
  %5805 = fsub fast float %5802, %5650
  %5806 = fsub fast float %5803, %5651
  br label %5814

; <label>:5807                                    ; preds = %5749
  %5808 = fmul fast float %5589, 8.096000e+03
  %5809 = fmul fast float %5590, 8.096000e+03
  %5810 = fmul fast float %5591, 8.096000e+03
  %5811 = fadd fast float %5808, %207
  %5812 = fadd fast float %5809, %208
  %5813 = fadd fast float %5810, %209
  br label %5814

; <label>:5814                                    ; preds = %5807, %5750
  %5815 = phi float [ %5589, %5807 ], [ %5804, %5750 ]
  %5816 = phi float [ %5590, %5807 ], [ %5805, %5750 ]
  %5817 = phi float [ %5591, %5807 ], [ %5806, %5750 ]
  %5818 = phi float [ %5811, %5807 ], [ %5801, %5750 ]
  %5819 = phi float [ %5812, %5807 ], [ %5802, %5750 ]
  %5820 = phi float [ %5813, %5807 ], [ %5803, %5750 ]
  %5821 = fcmp fast olt float %5668, 1.000000e+00
  br i1 %5821, label %5822, label %5853, !dx.controlflow.hints !106

; <label>:5822                                    ; preds = %5814
  %5823 = fmul fast float %5817, %5666
  %5824 = fmul fast float %5816, %5667
  %5825 = fsub fast float %5823, %5824
  %5826 = fmul fast float %5815, %5667
  %5827 = fmul fast float %5817, %5665
  %5828 = fsub fast float %5826, %5827
  %5829 = fmul fast float %5816, %5665
  %5830 = fmul fast float %5815, %5666
  %5831 = fsub fast float %5829, %5830
  %5832 = fmul fast float %5825, 2.000000e+00
  %5833 = fmul fast float %5828, 2.000000e+00
  %5834 = fmul fast float %5831, 2.000000e+00
  %5835 = fmul fast float %5832, %5668
  %5836 = fmul fast float %5833, %5668
  %5837 = fmul fast float %5834, %5668
  %5838 = fmul fast float %5834, %5666
  %5839 = fmul fast float %5833, %5667
  %5840 = fmul fast float %5832, %5667
  %5841 = fmul fast float %5834, %5665
  %5842 = fmul fast float %5833, %5665
  %5843 = fmul fast float %5832, %5666
  %5844 = fadd fast float %5838, %5815
  %5845 = fadd fast float %5844, %5835
  %5846 = fsub fast float %5845, %5839
  %5847 = fsub fast float %5816, %5841
  %5848 = fadd fast float %5847, %5836
  %5849 = fadd fast float %5848, %5840
  %5850 = fadd fast float %5837, %5817
  %5851 = fsub fast float %5850, %5843
  %5852 = fadd fast float %5851, %5842
  br label %5853

; <label>:5853                                    ; preds = %5822, %5814
  %5854 = phi float [ %5846, %5822 ], [ %5815, %5814 ]
  %5855 = phi float [ %5849, %5822 ], [ %5816, %5814 ]
  %5856 = phi float [ %5852, %5822 ], [ %5817, %5814 ]
  br i1 %5694, label %5888, label %5857

; <label>:5857                                    ; preds = %5853
  %5858 = fmul fast float %5285, 0x400187C840000000
  %5859 = fadd fast float %5858, 0xC00EFC2120000000
  %5860 = fmul fast float %5859, %5285
  %5861 = fadd fast float %5860, 0x3FE5D16340000000
  %5862 = fmul fast float %5861, %5285
  %5863 = fadd fast float %5862, 1.000000e+00
  %5864 = call float @dx.op.unary.f32(i32 7, float %5863)  ; Saturate(value)
  %5865 = fsub fast float %5818, %207
  %5866 = fsub fast float %5819, %208
  %5867 = fsub fast float %5820, %209
  %5868 = fsub fast float %5818, %5649
  %5869 = fsub fast float %5819, %5650
  %5870 = fsub fast float %5820, %5651
  %5871 = call float @dx.op.dot3.f32(i32 55, float %5865, float %5866, float %5867, float %5865, float %5866, float %5867)  ; Dot3(ax,ay,az,bx,by,bz)
  %5872 = call float @dx.op.dot3.f32(i32 55, float %5868, float %5869, float %5870, float %5868, float %5869, float %5870)  ; Dot3(ax,ay,az,bx,by,bz)
  %5873 = fadd fast float %5872, 0x3EE4F8B580000000
  %5874 = fdiv fast float %5871, %5873
  %5875 = bitcast float %5874 to i32
  %5876 = ashr i32 %5875, 1
  %5877 = add nsw i32 %5876, 532487669
  %5878 = bitcast i32 %5877 to float
  %5879 = fmul fast float %5878, %5864
  %5880 = call float @dx.op.unary.f32(i32 7, float %5879)  ; Saturate(value)
  %5881 = fmul fast float %5880, 0x4009981AE0000000
  %5882 = fsub fast float 0x40111BBD80000000, %5881
  %5883 = fmul fast float %5882, %5880
  %5884 = fadd fast float %5883, 0xC0009F6020000000
  %5885 = fmul fast float %5884, %5880
  %5886 = fadd fast float %5885, 1.000000e+00
  %5887 = call float @dx.op.unary.f32(i32 7, float %5886)  ; Saturate(value)
  br label %5891

; <label>:5888                                    ; preds = %5853
  %5889 = icmp ne i32 %5695, -1
  %5890 = zext i1 %5889 to i32
  br label %5891

; <label>:5891                                    ; preds = %5888, %5857
  %5892 = phi float [ %5285, %5888 ], [ %5887, %5857 ]
  %5893 = phi i32 [ %5890, %5888 ], [ 0, %5857 ]
  %5894 = fmul float %5892, 5.000000e+00
  %5895 = fsub float 5.000000e+00, %5894
  %5896 = icmp ne i32 %5893, 0
  %5897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5898 = extractvalue %dx.types.CBufRet.f32 %5897, 3
  %5899 = fadd fast float %5898, %5895
  %5900 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5899)  ; FMax(a,b)
  %5901 = call float @dx.op.unary.f32(i32 6, float %5854)  ; FAbs(value)
  %5902 = call float @dx.op.unary.f32(i32 6, float %5855)  ; FAbs(value)
  %5903 = fadd fast float %5902, %5901
  %5904 = call float @dx.op.unary.f32(i32 6, float %5856)  ; FAbs(value)
  %5905 = fadd fast float %5903, %5904
  %5906 = fcmp fast oeq float %5905, 0.000000e+00
  %5907 = fdiv fast float 1.000000e+00, %5905
  %5908 = select i1 %5906, float 1.000000e+00, float %5907
  %5909 = fmul fast float %5908, %5854
  %5910 = fmul fast float %5908, %5855
  %5911 = call float @dx.op.unary.f32(i32 6, float %5910)  ; FAbs(value)
  %5912 = call float @dx.op.unary.f32(i32 6, float %5909)  ; FAbs(value)
  %5913 = fsub fast float 1.000000e+00, %5911
  %5914 = fsub fast float 1.000000e+00, %5912
  %5915 = fcmp fast oge float %5909, 0.000000e+00
  %5916 = fcmp fast oge float %5910, 0.000000e+00
  %5917 = select i1 %5915, float 1.000000e+00, float -1.000000e+00
  %5918 = select i1 %5916, float 1.000000e+00, float -1.000000e+00
  %5919 = fcmp fast ole float %5856, 0.000000e+00
  %5920 = fmul fast float %5917, %5913
  %5921 = fmul fast float %5918, %5914
  %5922 = select i1 %5919, float %5920, float %5909
  %5923 = select i1 %5919, float %5921, float %5910
  %5924 = fmul fast float %5922, 5.000000e-01
  %5925 = fmul fast float %5923, 5.000000e-01
  %5926 = fadd fast float %5924, 5.000000e-01
  %5927 = fadd fast float %5925, 5.000000e-01
  %5928 = uitofp i32 %5692 to float
  %5929 = call float @dx.op.binary.f32(i32 36, float %5900, float 3.000000e+00)  ; FMin(a,b)
  %5930 = fadd fast float %5929, 2.000000e+00
  %5931 = call float @dx.op.unary.f32(i32 21, float %5930)  ; Exp(value)
  %5932 = extractvalue %dx.types.CBufRet.f32 %5897, 1
  %5933 = fmul fast float %5932, %5931
  %5934 = fmul fast float %5933, 2.000000e+00
  %5935 = fsub fast float 1.000000e+00, %5934
  %5936 = fmul fast float %5926, %5935
  %5937 = fmul fast float %5927, %5935
  %5938 = fadd fast float %5936, %5933
  %5939 = fadd fast float %5937, %5933
  %5940 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %54, float %5938, float %5939, float %5928, float undef, i32 0, i32 0, i32 undef, float %5900)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5941 = extractvalue %dx.types.ResRet.f32 %5940, 0
  %5942 = extractvalue %dx.types.ResRet.f32 %5940, 1
  %5943 = extractvalue %dx.types.ResRet.f32 %5940, 2
  %5944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5945 = extractvalue %dx.types.CBufRet.f32 %5944, 3
  %5946 = fmul fast float %5945, %5662
  %5947 = call float @dx.op.binary.f32(i32 36, float %5391, float %5946)  ; FMin(a,b)
  %5948 = select i1 %5896, float %5947, float %5946
  %5949 = fmul fast float %5941, %5741
  %5950 = fmul fast float %5949, %5948
  %5951 = fmul fast float %5942, %5741
  %5952 = fmul fast float %5951, %5948
  %5953 = fmul fast float %5943, %5741
  %5954 = fmul fast float %5953, %5948
  %5955 = fadd fast float %5950, %5637
  %5956 = fadd fast float %5952, %5638
  %5957 = fadd fast float %5954, %5639
  %5958 = fsub fast float %5640, %5741
  br label %5743

; <label>:5959                                    ; preds = %5743
  br label %5960

; <label>:5960                                    ; preds = %5959, %5606
  %5961 = phi float [ %5607, %5606 ], [ %5744, %5959 ]
  %5962 = phi float [ %5608, %5606 ], [ %5745, %5959 ]
  %5963 = phi float [ %5609, %5606 ], [ %5746, %5959 ]
  %5964 = phi float [ %5610, %5606 ], [ %5747, %5959 ]
  %5965 = add i32 %5611, 1
  %5966 = icmp ugt i32 %5965, %5603
  br i1 %5966, label %5967, label %5606, !llvm.loop !107

; <label>:5967                                    ; preds = %5960
  br label %5968

; <label>:5968                                    ; preds = %5967, %5588
  %5969 = phi float [ 0.000000e+00, %5588 ], [ %5961, %5967 ]
  %5970 = phi float [ 0.000000e+00, %5588 ], [ %5962, %5967 ]
  %5971 = phi float [ 0.000000e+00, %5588 ], [ %5963, %5967 ]
  %5972 = call float @dx.op.dot3.f32(i32 55, float %5969, float %5970, float %5971, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5973 = select i1 %279, float 0.000000e+00, float %5969
  %5974 = select i1 %279, float %5972, float %5970
  %5975 = select i1 %279, float 0.000000e+00, float %5971
  %5976 = fcmp fast olt float %5514, 0.000000e+00
  %5977 = call float @dx.op.unary.f32(i32 6, float %5514)  ; FAbs(value)
  %5978 = fmul fast float %5977, %5450
  %5979 = fmul fast float %5977, %5451
  %5980 = fmul fast float %5977, %5452
  %5981 = select i1 %5976, float %5450, float %5978
  %5982 = select i1 %5976, float %5451, float %5979
  %5983 = select i1 %5976, float %5452, float %5980
  %5984 = fsub fast float 1.000000e+00, %5977
  %5985 = call float @dx.op.unary.f32(i32 7, float %5984)  ; Saturate(value)
  %5986 = fmul fast float %5985, %5973
  %5987 = fmul fast float %5985, %5974
  %5988 = fmul fast float %5985, %5975
  %5989 = fadd fast float %5981, %5986
  %5990 = fadd fast float %5982, %5987
  %5991 = fadd fast float %5983, %5988
  br label %5992

; <label>:5992                                    ; preds = %5968, %5497
  %5993 = phi float [ %5989, %5968 ], [ %5450, %5497 ]
  %5994 = phi float [ %5990, %5968 ], [ %5451, %5497 ]
  %5995 = phi float [ %5991, %5968 ], [ %5452, %5497 ]
  %5996 = fmul fast float %207, %207
  %5997 = fmul fast float %208, %208
  %5998 = fadd fast float %5997, %5996
  %5999 = fmul fast float %209, %209
  %6000 = fadd fast float %5998, %5999
  %6001 = call float @dx.op.unary.f32(i32 24, float %6000)  ; Sqrt(value)
  %6002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6003 = extractvalue %dx.types.CBufRet.f32 %6002, 1
  %6004 = fsub fast float %6001, %6003
  %6005 = extractvalue %dx.types.CBufRet.f32 %6002, 2
  %6006 = fmul fast float %6004, %6005
  %6007 = call float @dx.op.unary.f32(i32 7, float %6006)  ; Saturate(value)
  %6008 = extractvalue %dx.types.CBufRet.f32 %6002, 0
  %6009 = extractvalue %dx.types.CBufRet.f32 %6002, 3
  %6010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %6011 = extractvalue %dx.types.ResRet.i32 %6010, 0
  %6012 = and i32 %6011, 4194304
  %6013 = icmp ne i32 %6012, 0
  %6014 = and i32 %6011, 8388608
  %6015 = icmp ne i32 %6014, 0
  %6016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %6017 = extractvalue %dx.types.CBufRet.f32 %6016, 0
  %6018 = extractvalue %dx.types.CBufRet.f32 %6016, 1
  %6019 = extractvalue %dx.types.CBufRet.f32 %6016, 2
  %6020 = extractvalue %dx.types.CBufRet.f32 %6016, 3
  %6021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %6022 = extractvalue %dx.types.CBufRet.f32 %6021, 0
  %6023 = extractvalue %dx.types.CBufRet.f32 %6021, 1
  %6024 = extractvalue %dx.types.CBufRet.f32 %6021, 2
  %6025 = extractvalue %dx.types.CBufRet.f32 %6021, 3
  %6026 = select i1 %6013, float %6017, float %6022
  %6027 = select i1 %6013, float %6018, float %6023
  %6028 = select i1 %6013, float %6019, float %6024
  %6029 = select i1 %6013, float %6020, float %6025
  %6030 = select i1 %6015, float 0.000000e+00, float %6029
  %6031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %6032 = extractvalue %dx.types.CBufRet.f32 %6031, 0
  %6033 = extractvalue %dx.types.CBufRet.f32 %6031, 1
  %6034 = select i1 %6013, float %6032, float %6033
  %6035 = select i1 %6015, float 0.000000e+00, float %6034
  %6036 = extractvalue %dx.types.CBufRet.f32 %6031, 2
  %6037 = extractvalue %dx.types.CBufRet.f32 %6031, 3
  %6038 = select i1 %6013, float %6036, float %6037
  %6039 = select i1 %6015, float 0.000000e+00, float %6038
  %6040 = fmul fast float %6007, %69
  %6041 = fmul fast float %6040, %6008
  %6042 = fmul fast float %6041, %6035
  %6043 = fmul fast float %6040, %6009
  %6044 = fmul fast float %6043, %6039
  %6045 = fadd fast float %6044, 1.000000e+00
  %6046 = fmul fast float %5503, %5454
  %6047 = fmul fast float %6046, %6045
  %6048 = fmul fast float %5503, %5455
  %6049 = fmul fast float %6048, %6045
  %6050 = fmul fast float %5503, %5456
  %6051 = fmul fast float %6050, %6045
  %6052 = call float @dx.op.dot3.f32(i32 55, float %5276, float %5277, float %5278, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6053 = fcmp fast ogt float %6052, 0x3E7FF19E20000000
  %6054 = fdiv fast float 1.000000e+00, %6052
  %6055 = select i1 %6053, float %6054, float 0.000000e+00
  %6056 = fmul fast float %6055, %5276
  %6057 = fmul fast float %6055, %5277
  %6058 = fmul fast float %6055, %5278
  %6059 = fadd fast float %6056, -1.000000e+00
  %6060 = fadd fast float %6057, -1.000000e+00
  %6061 = fadd fast float %6058, -1.000000e+00
  %6062 = fmul fast float %6059, 5.000000e-01
  %6063 = fmul fast float %6060, 5.000000e-01
  %6064 = fmul fast float %6061, 5.000000e-01
  %6065 = fadd fast float %6062, 1.000000e+00
  %6066 = fadd fast float %6063, 1.000000e+00
  %6067 = fadd fast float %6064, 1.000000e+00
  %6068 = fadd fast float %6042, %4096
  %6069 = fsub fast float %6026, %6065
  %6070 = fsub fast float %6027, %6066
  %6071 = fsub fast float %6028, %6067
  %6072 = fmul fast float %6069, %6030
  %6073 = fmul fast float %6070, %6030
  %6074 = fmul fast float %6071, %6030
  %6075 = fadd fast float %6072, %6065
  %6076 = fadd fast float %6073, %6066
  %6077 = fadd fast float %6074, %6067
  %6078 = fmul fast float %5993, %5498
  %6079 = fmul fast float %5994, %5499
  %6080 = fmul fast float %5995, %5500
  %6081 = fsub fast float 1.000000e+00, %5330
  %6082 = bitcast float %6081 to i32
  %6083 = sitofp i32 %6082 to float
  %6084 = fmul fast float %6083, 5.000000e+00
  %6085 = fadd fast float %6084, 0xC1EFBF8940000000
  %6086 = fptosi float %6085 to i32
  %6087 = bitcast i32 %6086 to float
  %6088 = fmul fast float %6068, %6087
  %6089 = fmul fast float %6046, %6088
  %6090 = fmul fast float %6089, %6075
  %6091 = fmul fast float %6048, %6088
  %6092 = fmul fast float %6091, %6076
  %6093 = fmul fast float %6050, %6088
  %6094 = fmul fast float %6093, %6077
  %6095 = fmul fast float %6047, %4092
  %6096 = fmul fast float %6049, %4092
  %6097 = fmul fast float %6051, %4092
  %6098 = fadd fast float %6078, %4088
  %6099 = fadd fast float %6098, %6090
  %6100 = fmul fast float %6099, %4092
  %6101 = fadd fast float %6079, %4089
  %6102 = fadd fast float %6101, %6092
  %6103 = fmul fast float %6102, %4092
  %6104 = fadd fast float %6080, %4090
  %6105 = fadd fast float %6104, %6094
  %6106 = fmul fast float %6105, %4092
  %6107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6108 = extractvalue %dx.types.CBufRet.f32 %6107, 3
  %6109 = fcmp fast oeq float %6108, 0.000000e+00
  br i1 %6109, label %7814, label %6110

; <label>:6110                                    ; preds = %5992
  %6111 = extractvalue %dx.types.CBufRet.f32 %6107, 0
  %6112 = extractvalue %dx.types.CBufRet.f32 %6107, 1
  %6113 = extractvalue %dx.types.CBufRet.f32 %6107, 2
  %6114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6115 = extractvalue %dx.types.CBufRet.f32 %6114, 0
  %6116 = extractvalue %dx.types.CBufRet.f32 %6114, 1
  %6117 = extractvalue %dx.types.CBufRet.f32 %6114, 2
  %6118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6119 = extractvalue %dx.types.CBufRet.f32 %6118, 0
  %6120 = extractvalue %dx.types.CBufRet.f32 %6118, 1
  %6121 = call float @dx.op.dot3.f32(i32 55, float %6115, float %6116, float %6117, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6122 = select i1 %279, float %6119, float %6115
  %6123 = select i1 %279, float %6121, float %6116
  %6124 = select i1 %279, float %6120, float %6117
  %6125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6126 = extractvalue %dx.types.CBufRet.f32 %6125, 2
  %6127 = fmul fast float %6126, %127
  %6128 = fmul fast float %6126, %128
  %6129 = fmul fast float %6126, %129
  %6130 = fadd fast float %6127, %207
  %6131 = fadd fast float %6128, %208
  %6132 = fadd fast float %6129, %209
  %6133 = fcmp fast olt float %6108, 0.000000e+00
  br i1 %6133, label %7391, label %6134

; <label>:6134                                    ; preds = %6110
  %6135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6136 = extractvalue %dx.types.CBufRet.f32 %6135, 0
  %6137 = extractvalue %dx.types.CBufRet.f32 %6135, 1
  %6138 = extractvalue %dx.types.CBufRet.f32 %6135, 2
  %6139 = extractvalue %dx.types.CBufRet.f32 %6135, 3
  %6140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6141 = extractvalue %dx.types.CBufRet.f32 %6140, 0
  %6142 = extractvalue %dx.types.CBufRet.f32 %6140, 1
  %6143 = extractvalue %dx.types.CBufRet.f32 %6140, 2
  %6144 = extractvalue %dx.types.CBufRet.f32 %6140, 3
  %6145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6146 = extractvalue %dx.types.CBufRet.f32 %6145, 0
  %6147 = extractvalue %dx.types.CBufRet.f32 %6145, 1
  %6148 = extractvalue %dx.types.CBufRet.f32 %6145, 2
  %6149 = extractvalue %dx.types.CBufRet.f32 %6145, 3
  %6150 = fmul fast float %6136, %6130
  %6151 = call float @dx.op.tertiary.f32(i32 46, float %6131, float %6137, float %6150)  ; FMad(a,b,c)
  %6152 = call float @dx.op.tertiary.f32(i32 46, float %6132, float %6138, float %6151)  ; FMad(a,b,c)
  %6153 = fadd fast float %6152, %6139
  %6154 = fmul fast float %6141, %6130
  %6155 = call float @dx.op.tertiary.f32(i32 46, float %6131, float %6142, float %6154)  ; FMad(a,b,c)
  %6156 = call float @dx.op.tertiary.f32(i32 46, float %6132, float %6143, float %6155)  ; FMad(a,b,c)
  %6157 = fadd fast float %6156, %6144
  %6158 = fmul fast float %6146, %6130
  %6159 = call float @dx.op.tertiary.f32(i32 46, float %6131, float %6147, float %6158)  ; FMad(a,b,c)
  %6160 = call float @dx.op.tertiary.f32(i32 46, float %6132, float %6148, float %6159)  ; FMad(a,b,c)
  %6161 = fadd fast float %6160, %6149
  %6162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6163 = extractvalue %dx.types.CBufRet.f32 %6162, 0
  %6164 = fcmp fast une float %6163, 0.000000e+00
  %6165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6166 = extractvalue %dx.types.CBufRet.f32 %6165, 0
  %6167 = extractvalue %dx.types.CBufRet.f32 %6165, 1
  %6168 = extractvalue %dx.types.CBufRet.f32 %6165, 3
  %6169 = fmul fast float %6168, %6153
  %6170 = fmul fast float %6168, %6157
  %6171 = fadd fast float %6169, %6166
  %6172 = fadd fast float %6170, %6167
  %6173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6174 = extractvalue %dx.types.CBufRet.f32 %6173, 0
  %6175 = extractvalue %dx.types.CBufRet.f32 %6173, 1
  %6176 = extractvalue %dx.types.CBufRet.f32 %6173, 3
  %6177 = fmul fast float %6176, %6153
  %6178 = fmul fast float %6176, %6157
  %6179 = fadd fast float %6177, %6174
  %6180 = fadd fast float %6178, %6175
  %6181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6182 = extractvalue %dx.types.CBufRet.f32 %6181, 1
  %6183 = fsub fast float %6182, %6161
  %6184 = extractvalue %dx.types.CBufRet.f32 %6181, 2
  %6185 = fmul fast float %6183, %6184
  %6186 = fsub fast float 1.000000e+00, %6185
  %6187 = call float @dx.op.unary.f32(i32 7, float %6186)  ; Saturate(value)
  br i1 %6164, label %6248, label %6188

; <label>:6188                                    ; preds = %6134
  %6189 = extractvalue %dx.types.CBufRet.f32 %6173, 2
  %6190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6191 = extractvalue %dx.types.CBufRet.f32 %6190, 2
  %6192 = fadd fast float %6191, %6189
  %6193 = fcmp fast ogt float %6192, 0.000000e+00
  br i1 %6193, label %6194, label %6218

; <label>:6194                                    ; preds = %6188
  %6195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6196 = extractvalue %dx.types.CBufRet.f32 %6195, 0
  %6197 = extractvalue %dx.types.CBufRet.f32 %6195, 1
  %6198 = fsub fast float %6179, %6196
  %6199 = fsub fast float %6180, %6197
  %6200 = fcmp fast olt float %6198, 0.000000e+00
  %6201 = fcmp fast olt float %6199, 0.000000e+00
  %6202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6203 = extractvalue %dx.types.CBufRet.f32 %6202, 0
  %6204 = extractvalue %dx.types.CBufRet.f32 %6202, 1
  %6205 = extractvalue %dx.types.CBufRet.f32 %6202, 2
  %6206 = extractvalue %dx.types.CBufRet.f32 %6202, 3
  %6207 = select i1 %6200, float %6203, float %6205
  %6208 = select i1 %6201, float %6204, float %6206
  %6209 = fmul fast float %6207, %6198
  %6210 = fmul fast float %6208, %6199
  %6211 = call float @dx.op.unary.f32(i32 6, float %6209)  ; FAbs(value)
  %6212 = call float @dx.op.unary.f32(i32 6, float %6210)  ; FAbs(value)
  %6213 = extractvalue %dx.types.CBufRet.f32 %6125, 0
  %6214 = call float @dx.op.binary.f32(i32 35, float %6211, float %6212)  ; FMax(a,b)
  %6215 = fsub fast float %6213, %6214
  %6216 = call float @dx.op.unary.f32(i32 7, float %6215)  ; Saturate(value)
  %6217 = fmul fast float %6216, %6187
  br label %6218

; <label>:6218                                    ; preds = %6194, %6188
  %6219 = phi float [ %6217, %6194 ], [ 0.000000e+00, %6188 ]
  %6220 = extractvalue %dx.types.CBufRet.f32 %6165, 2
  %6221 = extractvalue %dx.types.CBufRet.f32 %6190, 1
  %6222 = fadd fast float %6221, %6220
  %6223 = fcmp fast ogt float %6222, 0.000000e+00
  br i1 %6223, label %6224, label %6248

; <label>:6224                                    ; preds = %6218
  %6225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6226 = extractvalue %dx.types.CBufRet.f32 %6225, 0
  %6227 = extractvalue %dx.types.CBufRet.f32 %6225, 1
  %6228 = fsub fast float %6171, %6226
  %6229 = fsub fast float %6172, %6227
  %6230 = fcmp fast olt float %6228, 0.000000e+00
  %6231 = fcmp fast olt float %6229, 0.000000e+00
  %6232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6233 = extractvalue %dx.types.CBufRet.f32 %6232, 0
  %6234 = extractvalue %dx.types.CBufRet.f32 %6232, 1
  %6235 = extractvalue %dx.types.CBufRet.f32 %6232, 2
  %6236 = extractvalue %dx.types.CBufRet.f32 %6232, 3
  %6237 = select i1 %6230, float %6233, float %6235
  %6238 = select i1 %6231, float %6234, float %6236
  %6239 = fmul fast float %6237, %6228
  %6240 = fmul fast float %6238, %6229
  %6241 = call float @dx.op.unary.f32(i32 6, float %6239)  ; FAbs(value)
  %6242 = call float @dx.op.unary.f32(i32 6, float %6240)  ; FAbs(value)
  %6243 = extractvalue %dx.types.CBufRet.f32 %6125, 0
  %6244 = call float @dx.op.binary.f32(i32 35, float %6241, float %6242)  ; FMax(a,b)
  %6245 = fsub fast float %6243, %6244
  %6246 = call float @dx.op.unary.f32(i32 7, float %6245)  ; Saturate(value)
  %6247 = fmul fast float %6246, %6187
  br label %6248

; <label>:6248                                    ; preds = %6224, %6218, %6134
  %6249 = phi float [ 0.000000e+00, %6134 ], [ %6247, %6224 ], [ 0.000000e+00, %6218 ]
  %6250 = phi float [ 0.000000e+00, %6134 ], [ %6219, %6224 ], [ %6219, %6218 ]
  %6251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6252 = extractvalue %dx.types.CBufRet.f32 %6251, 1
  %6253 = call float @dx.op.unary.f32(i32 7, float %6252)  ; Saturate(value)
  %6254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6255 = extractvalue %dx.types.CBufRet.f32 %6254, 0
  %6256 = extractvalue %dx.types.CBufRet.f32 %6254, 1
  %6257 = fsub fast float %6153, %6255
  %6258 = fsub fast float %6157, %6256
  %6259 = fcmp fast olt float %6257, 0.000000e+00
  %6260 = fcmp fast olt float %6258, 0.000000e+00
  %6261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6262 = extractvalue %dx.types.CBufRet.f32 %6261, 0
  %6263 = extractvalue %dx.types.CBufRet.f32 %6261, 1
  %6264 = extractvalue %dx.types.CBufRet.f32 %6261, 2
  %6265 = extractvalue %dx.types.CBufRet.f32 %6261, 3
  %6266 = select i1 %6259, float %6262, float %6264
  %6267 = select i1 %6260, float %6263, float %6265
  %6268 = fmul fast float %6266, %6257
  %6269 = fmul fast float %6267, %6258
  %6270 = call float @dx.op.unary.f32(i32 6, float %6268)  ; FAbs(value)
  %6271 = call float @dx.op.unary.f32(i32 6, float %6269)  ; FAbs(value)
  %6272 = extractvalue %dx.types.CBufRet.f32 %6125, 0
  %6273 = call float @dx.op.binary.f32(i32 35, float %6270, float %6271)  ; FMax(a,b)
  %6274 = fsub fast float %6272, %6273
  %6275 = call float @dx.op.unary.f32(i32 7, float %6274)  ; Saturate(value)
  %6276 = call float @dx.op.binary.f32(i32 36, float %6275, float %6253)  ; FMin(a,b)
  %6277 = fmul fast float %6276, %6187
  %6278 = fsub fast float %6249, %6277
  %6279 = fsub fast float %6250, %6249
  %6280 = fsub fast float %6279, %6277
  %6281 = call float @dx.op.binary.f32(i32 35, float %6249, float %6250)  ; FMax(a,b)
  %6282 = call float @dx.op.binary.f32(i32 35, float %6277, float %6281)  ; FMax(a,b)
  %6283 = fcmp fast olt float %6282, 1.000000e+00
  br i1 %6283, label %6284, label %6682, !dx.controlflow.hints !109

; <label>:6284                                    ; preds = %6248
  %6285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6286 = extractvalue %dx.types.CBufRet.f32 %6285, 0
  %6287 = fcmp fast une float %6286, 0.000000e+00
  br i1 %6287, label %6288, label %6682, !dx.controlflow.hints !110

; <label>:6288                                    ; preds = %6284
  %6289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6290 = extractvalue %dx.types.CBufRet.f32 %6289, 0
  %6291 = extractvalue %dx.types.CBufRet.f32 %6289, 1
  %6292 = extractvalue %dx.types.CBufRet.f32 %6289, 2
  %6293 = extractvalue %dx.types.CBufRet.f32 %6289, 3
  %6294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6295 = extractvalue %dx.types.CBufRet.f32 %6294, 0
  %6296 = extractvalue %dx.types.CBufRet.f32 %6294, 1
  %6297 = extractvalue %dx.types.CBufRet.f32 %6294, 2
  %6298 = extractvalue %dx.types.CBufRet.f32 %6294, 3
  %6299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6300 = extractvalue %dx.types.CBufRet.f32 %6299, 0
  %6301 = extractvalue %dx.types.CBufRet.f32 %6299, 1
  %6302 = extractvalue %dx.types.CBufRet.f32 %6299, 2
  %6303 = extractvalue %dx.types.CBufRet.f32 %6299, 3
  %6304 = fmul fast float %6290, %6130
  %6305 = call float @dx.op.tertiary.f32(i32 46, float %6131, float %6291, float %6304)  ; FMad(a,b,c)
  %6306 = call float @dx.op.tertiary.f32(i32 46, float %6132, float %6292, float %6305)  ; FMad(a,b,c)
  %6307 = fadd fast float %6306, %6293
  %6308 = fmul fast float %6295, %6130
  %6309 = call float @dx.op.tertiary.f32(i32 46, float %6131, float %6296, float %6308)  ; FMad(a,b,c)
  %6310 = call float @dx.op.tertiary.f32(i32 46, float %6132, float %6297, float %6309)  ; FMad(a,b,c)
  %6311 = fadd fast float %6310, %6298
  %6312 = fmul fast float %6300, %6130
  %6313 = call float @dx.op.tertiary.f32(i32 46, float %6131, float %6301, float %6312)  ; FMad(a,b,c)
  %6314 = call float @dx.op.tertiary.f32(i32 46, float %6132, float %6302, float %6313)  ; FMad(a,b,c)
  %6315 = fadd fast float %6314, %6303
  %6316 = fcmp fast oge float %6307, 1.000000e+00
  %6317 = fcmp fast oge float %6311, 1.000000e+00
  %6318 = or i1 %6316, %6317
  %6319 = fcmp fast olt float %6307, 0.000000e+00
  %6320 = fcmp fast olt float %6311, 0.000000e+00
  %6321 = or i1 %6319, %6320
  %6322 = or i1 %6318, %6321
  br i1 %6322, label %6682, label %6323, !dx.controlflow.hints !111

; <label>:6323                                    ; preds = %6288
  %6324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6325 = extractvalue %dx.types.CBufRet.f32 %6324, 0
  %6326 = extractvalue %dx.types.CBufRet.f32 %6324, 1
  %6327 = extractvalue %dx.types.CBufRet.f32 %6324, 2
  %6328 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6329 = extractvalue %dx.types.CBufRet.i32 %6328, 2
  %6330 = uitofp i32 %6329 to float
  %6331 = extractvalue %dx.types.CBufRet.i32 %6328, 3
  %6332 = uitofp i32 %6331 to float
  %6333 = extractvalue %dx.types.CBufRet.f32 %6324, 3
  %6334 = fmul fast float %6333, 2.000000e+00
  %6335 = fsub fast float %6307, %6325
  %6336 = fsub fast float %6311, %6326
  %6337 = fmul fast float %6334, %6335
  %6338 = fmul fast float %6334, %6336
  %6339 = fdiv fast float 1.000000e+00, %6113
  %6340 = fmul fast float %6338, %6339
  %6341 = call float @dx.op.unary.f32(i32 6, float %6340)  ; FAbs(value)
  %6342 = fmul fast float %6327, %6132
  %6343 = fmul fast float %6342, %6334
  %6344 = call float @dx.op.unary.f32(i32 6, float %6343)  ; FAbs(value)
  %6345 = call float @dx.op.unary.f32(i32 6, float %6337)  ; FAbs(value)
  %6346 = call float @dx.op.binary.f32(i32 35, float %6344, float %6341)  ; FMax(a,b)
  %6347 = call float @dx.op.binary.f32(i32 35, float %6345, float %6346)  ; FMax(a,b)
  %6348 = fmul fast float %6347, 2.000000e+00
  %6349 = call float @dx.op.unary.f32(i32 23, float %6348)  ; Log(value)
  %6350 = call float @dx.op.binary.f32(i32 35, float %6349, float %6330)  ; FMax(a,b)
  %6351 = call float @dx.op.unary.f32(i32 22, float %6350)  ; Frc(value)
  %6352 = fadd fast float %6351, 0xBFEA666660000000
  %6353 = fmul fast float %6352, 8.000000e+00
  %6354 = call float @dx.op.unary.f32(i32 7, float %6353)  ; Saturate(value)
  %6355 = call float @dx.op.unary.f32(i32 27, float %6350)  ; Round_ni(value)
  %6356 = fadd fast float %6355, %6354
  %6357 = call float @dx.op.binary.f32(i32 36, float %6356, float %6332)  ; FMin(a,b)
  %6358 = call float @dx.op.unary.f32(i32 27, float %6357)  ; Round_ni(value)
  %6359 = fsub fast float -0.000000e+00, %6358
  %6360 = call float @dx.op.unary.f32(i32 21, float %6359)  ; Exp(value)
  %6361 = fmul fast float %6360, %6334
  %6362 = fmul fast float %6361, %6307
  %6363 = fmul fast float %6361, %6311
  %6364 = fmul fast float %6362, 2.500000e-01
  %6365 = fmul fast float %6363, 2.500000e-01
  %6366 = fadd fast float %6364, 5.000000e-01
  %6367 = fadd fast float %6365, 5.000000e-01
  %6368 = fsub fast float %6332, %6330
  %6369 = fptoui float %6368 to i32
  %6370 = add i32 %6369, 320
  %6371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 %6370)  ; CBufferLoadLegacy(handle,regIndex)
  %6372 = extractvalue %dx.types.CBufRet.f32 %6371, 0
  %6373 = extractvalue %dx.types.CBufRet.f32 %6371, 1
  %6374 = fcmp fast une float %6357, %6332
  %6375 = fsub fast float %6307, %6372
  %6376 = fsub fast float %6311, %6373
  %6377 = call float @dx.op.unary.f32(i32 6, float %6375)  ; FAbs(value)
  %6378 = call float @dx.op.unary.f32(i32 6, float %6376)  ; FAbs(value)
  %6379 = fmul fast float %6377, %6361
  %6380 = fmul fast float %6378, %6361
  %6381 = fcmp fast olt float %6379, 1.000000e+00
  %6382 = fcmp fast olt float %6380, 1.000000e+00
  %6383 = and i1 %6381, %6382
  %6384 = or i1 %6374, %6383
  br i1 %6384, label %6385, label %6682, !dx.controlflow.hints !112

; <label>:6385                                    ; preds = %6323
  %6386 = fmul fast float %6363, 5.000000e-01
  %6387 = fmul fast float %6362, 5.000000e-01
  %6388 = fadd fast float %6386, 5.000000e-01
  %6389 = fadd fast float %6387, 5.000000e-01
  %6390 = sitofp i32 %6329 to float
  %6391 = fsub fast float %6357, %6390
  %6392 = call float @dx.op.unary.f32(i32 27, float %6391)  ; Round_ni(value)
  %6393 = call float @dx.op.unary.f32(i32 22, float %6357)  ; Frc(value)
  %6394 = call float @dx.op.unary.f32(i32 22, float %6389)  ; Frc(value)
  %6395 = call float @dx.op.unary.f32(i32 22, float %6388)  ; Frc(value)
  %6396 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %55, float %6394, float %6395, float %6392, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6397 = extractvalue %dx.types.ResRet.f32 %6396, 0
  %6398 = extractvalue %dx.types.ResRet.f32 %6396, 1
  %6399 = extractvalue %dx.types.ResRet.f32 %6396, 2
  %6400 = extractvalue %dx.types.ResRet.f32 %6396, 3
  %6401 = fcmp fast ogt float %6393, 0.000000e+00
  br i1 %6401, label %6402, label %6423, !dx.controlflow.hints !113

; <label>:6402                                    ; preds = %6385
  %6403 = fadd fast float %6392, 1.000000e+00
  %6404 = call float @dx.op.unary.f32(i32 22, float %6366)  ; Frc(value)
  %6405 = call float @dx.op.unary.f32(i32 22, float %6367)  ; Frc(value)
  %6406 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %55, float %6404, float %6405, float %6403, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6407 = extractvalue %dx.types.ResRet.f32 %6406, 0
  %6408 = extractvalue %dx.types.ResRet.f32 %6406, 1
  %6409 = extractvalue %dx.types.ResRet.f32 %6406, 2
  %6410 = extractvalue %dx.types.ResRet.f32 %6406, 3
  %6411 = fsub fast float %6407, %6397
  %6412 = fsub fast float %6408, %6398
  %6413 = fsub fast float %6409, %6399
  %6414 = fsub fast float %6410, %6400
  %6415 = fmul fast float %6411, %6393
  %6416 = fmul fast float %6412, %6393
  %6417 = fmul fast float %6413, %6393
  %6418 = fmul fast float %6414, %6393
  %6419 = fadd fast float %6415, %6397
  %6420 = fadd fast float %6416, %6398
  %6421 = fadd fast float %6417, %6399
  %6422 = fadd fast float %6418, %6400
  br label %6423

; <label>:6423                                    ; preds = %6402, %6385
  %6424 = phi float [ %6419, %6402 ], [ %6397, %6385 ]
  %6425 = phi float [ %6420, %6402 ], [ %6398, %6385 ]
  %6426 = phi float [ %6421, %6402 ], [ %6399, %6385 ]
  %6427 = phi float [ %6422, %6402 ], [ %6400, %6385 ]
  %6428 = fadd fast float %6424, -5.000000e-01
  %6429 = fadd fast float %6426, -5.000000e-01
  %6430 = fmul fast float %6428, 0xBFD5555560000000
  %6431 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6429, float %6430)  ; FMad(a,b,c)
  %6432 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6425, float 0.000000e+00)  ; FMad(a,b,c)
  %6433 = fadd fast float %6432, %6427
  %6434 = fmul fast float %6428, -7.500000e-01
  %6435 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6429, float %6434)  ; FMad(a,b,c)
  %6436 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6425, float 0.000000e+00)  ; FMad(a,b,c)
  %6437 = fadd fast float %6436, %6427
  %6438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6439 = extractvalue %dx.types.CBufRet.f32 %6438, 0
  %6440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6441 = extractvalue %dx.types.CBufRet.f32 %6440, 0
  %6442 = extractvalue %dx.types.CBufRet.f32 %6440, 1
  %6443 = extractvalue %dx.types.CBufRet.f32 %6440, 2
  %6444 = extractvalue %dx.types.CBufRet.f32 %6440, 3
  %6445 = fsub fast float %6441, %6431
  %6446 = fsub fast float %6442, %6433
  %6447 = fsub fast float %6443, %6435
  %6448 = fsub fast float %6444, %6437
  %6449 = fmul fast float %6445, %6439
  %6450 = fmul fast float %6446, %6439
  %6451 = fmul fast float %6447, %6439
  %6452 = fmul fast float %6448, %6439
  %6453 = fadd fast float %6449, %6431
  %6454 = fadd fast float %6450, %6433
  %6455 = fadd fast float %6451, %6435
  %6456 = fadd fast float %6452, %6437
  %6457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6458 = extractvalue %dx.types.ResRet.i32 %6457, 0
  %6459 = and i32 %6458, 536870911
  %6460 = uitofp i32 %6459 to float
  %6461 = fmul fast float %6460, %6307
  %6462 = fmul fast float %6460, %6311
  %6463 = fptoui float %6461 to i32
  %6464 = fptoui float %6462 to i32
  %6465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6466 = extractvalue %dx.types.ResRet.i32 %6465, 0
  %6467 = and i32 %6466, 31
  %6468 = lshr i32 %6463, %6467
  %6469 = lshr i32 %6464, %6467
  %6470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6471 = extractvalue %dx.types.ResRet.i32 %6470, 0
  %6472 = and i32 %6471, 31
  %6473 = shl i32 1, %6472
  %6474 = call i32 @dx.op.binary.i32(i32 40, i32 %6473, i32 4)  ; UMin(a,b)
  %6475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6476 = extractvalue %dx.types.ResRet.i32 %6475, 0
  %6477 = extractvalue %dx.types.ResRet.i32 %6475, 1
  %6478 = icmp eq i32 %6474, 0
  br i1 %6478, label %6520, label %6479

; <label>:6479                                    ; preds = %6423
  br label %6480

; <label>:6480                                    ; preds = %6508, %6479
  %6481 = phi i32 [ %6511, %6508 ], [ 0, %6479 ]
  %6482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6483 = extractvalue %dx.types.ResRet.i32 %6482, 0
  %6484 = lshr i32 %6483, 16
  %6485 = and i32 %6484, 31
  %6486 = shl i32 %6469, %6485
  %6487 = add i32 %6486, %6468
  %6488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6489 = extractvalue %dx.types.ResRet.i32 %6488, 0
  %6490 = and i32 %6489, 31
  %6491 = shl i32 %6487, %6490
  %6492 = add i32 %6491, %6481
  %6493 = shl i32 %6492, 2
  %6494 = add i32 %6493, 32
  %6495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6494, i32 undef)  ; BufferLoad(srv,index,wot)
  %6496 = extractvalue %dx.types.ResRet.i32 %6495, 0
  %6497 = icmp slt i32 %6496, 0
  %6498 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6481
  %6499 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 %6481
  %6500 = bitcast float* %6498 to i32*
  %6501 = bitcast float* %6499 to i32*
  br i1 %6497, label %6502, label %6508

; <label>:6502                                    ; preds = %6480
  %6503 = and i32 %6496, 1073741823
  %6504 = add nuw nsw i32 %6503, 20
  %6505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6504, i32 undef)  ; BufferLoad(srv,index,wot)
  %6506 = extractvalue %dx.types.ResRet.i32 %6505, 0
  %6507 = extractvalue %dx.types.ResRet.i32 %6505, 1
  br label %6508

; <label>:6508                                    ; preds = %6502, %6480
  %6509 = phi i32 [ %6506, %6502 ], [ %6476, %6480 ]
  %6510 = phi i32 [ %6507, %6502 ], [ %6477, %6480 ]
  store i32 %6509, i32* %6500, align 4
  store i32 %6510, i32* %6501, align 4
  %6511 = add nuw i32 %6481, 1
  %6512 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6513 = extractvalue %dx.types.CBufRet.i32 %6512, 2
  %6514 = icmp eq i32 %6513, 0
  %6515 = icmp ugt i32 %6496, -1073741825
  %6516 = and i1 %6515, %6514
  %6517 = icmp ult i32 %6511, %6474
  %6518 = and i1 %6516, %6517
  br i1 %6518, label %6480, label %6519

; <label>:6519                                    ; preds = %6508
  br label %6520

; <label>:6520                                    ; preds = %6519, %6423
  %6521 = phi i32 [ 0, %6423 ], [ %6511, %6519 ]
  %6522 = extractvalue %dx.types.CBufRet.f32 %6285, 2
  %6523 = fptoui float %6522 to i32
  %6524 = icmp eq i32 %6523, 0
  br i1 %6524, label %6576, label %6525

; <label>:6525                                    ; preds = %6520
  br label %6526

; <label>:6526                                    ; preds = %6571, %6525
  %6527 = phi i32 [ %6572, %6571 ], [ %6521, %6525 ]
  %6528 = phi i32 [ %6573, %6571 ], [ 0, %6525 ]
  %6529 = lshr i32 %6528, 2
  %6530 = and i32 %6528, 3
  %6531 = add nuw nsw i32 %6529, 83
  %6532 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 %6531)  ; CBufferLoadLegacy(handle,regIndex)
  %6533 = extractvalue %dx.types.CBufRet.i32 %6532, 0
  %6534 = extractvalue %dx.types.CBufRet.i32 %6532, 1
  %6535 = extractvalue %dx.types.CBufRet.i32 %6532, 2
  %6536 = extractvalue %dx.types.CBufRet.i32 %6532, 3
  %6537 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 0
  store i32 %6533, i32* %6537, align 4
  %6538 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 1
  store i32 %6534, i32* %6538, align 4
  %6539 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 2
  store i32 %6535, i32* %6539, align 4
  %6540 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 3
  store i32 %6536, i32* %6540, align 4
  %6541 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 %6530
  %6542 = load i32, i32* %6541, align 4, !tbaa !114, !noalias !118
  %6543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6544 = extractvalue %dx.types.ResRet.i32 %6543, 0
  %6545 = lshr i32 %6544, 16
  %6546 = and i32 %6545, 31
  %6547 = shl i32 %6469, %6546
  %6548 = add i32 %6547, %6468
  %6549 = shl i32 %6548, 2
  %6550 = add i32 %6549, %6542
  %6551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6550, i32 undef)  ; BufferLoad(srv,index,wot)
  %6552 = extractvalue %dx.types.ResRet.i32 %6551, 0
  %6553 = icmp eq i32 %6552, 0
  br i1 %6553, label %6571, label %6554

; <label>:6554                                    ; preds = %6526
  %6555 = icmp slt i32 %6552, 0
  %6556 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6527
  %6557 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 %6527
  %6558 = bitcast float* %6556 to i32*
  %6559 = bitcast float* %6557 to i32*
  br i1 %6555, label %6560, label %6567

; <label>:6560                                    ; preds = %6554
  %6561 = and i32 %6552, 1073741823
  %6562 = add i32 %6542, 20
  %6563 = add i32 %6562, %6561
  %6564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6563, i32 undef)  ; BufferLoad(srv,index,wot)
  %6565 = extractvalue %dx.types.ResRet.i32 %6564, 0
  %6566 = extractvalue %dx.types.ResRet.i32 %6564, 1
  br label %6567

; <label>:6567                                    ; preds = %6560, %6554
  %6568 = phi i32 [ %6565, %6560 ], [ %6476, %6554 ]
  %6569 = phi i32 [ %6566, %6560 ], [ %6477, %6554 ]
  store i32 %6568, i32* %6558, align 4
  store i32 %6569, i32* %6559, align 4
  %6570 = add i32 %6527, 1
  br label %6571

; <label>:6571                                    ; preds = %6567, %6526
  %6572 = phi i32 [ %6527, %6526 ], [ %6570, %6567 ]
  %6573 = add nuw i32 %6528, 1
  %6574 = icmp eq i32 %6573, %6523
  br i1 %6574, label %6575, label %6526

; <label>:6575                                    ; preds = %6571
  br label %6576

; <label>:6576                                    ; preds = %6575, %6520
  %6577 = phi i32 [ %6521, %6520 ], [ %6572, %6575 ]
  %6578 = icmp eq i32 %6577, 1
  %6579 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 0
  %6580 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 0
  br i1 %6578, label %6581, label %6584

; <label>:6581                                    ; preds = %6576
  %6582 = load float, float* %6579, align 4
  %6583 = load float, float* %6580, align 4
  br label %6611

; <label>:6584                                    ; preds = %6576
  %6585 = load float, float* %6579, align 4
  %6586 = load float, float* %6580, align 4
  %6587 = fdiv fast float 1.000000e+00, %6586
  %6588 = fsub fast float %6585, %6587
  %6589 = icmp ugt i32 %6577, 1
  br i1 %6589, label %6590, label %6606

; <label>:6590                                    ; preds = %6584
  br label %6591

; <label>:6591                                    ; preds = %6591, %6590
  %6592 = phi float [ %6601, %6591 ], [ %6588, %6590 ]
  %6593 = phi float [ %6602, %6591 ], [ %6585, %6590 ]
  %6594 = phi i32 [ %6603, %6591 ], [ 1, %6590 ]
  %6595 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6594
  %6596 = load float, float* %6595, align 4
  %6597 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 %6594
  %6598 = load float, float* %6597, align 4
  %6599 = fdiv fast float 1.000000e+00, %6598
  %6600 = fsub fast float %6596, %6599
  %6601 = call float @dx.op.binary.f32(i32 36, float %6592, float %6600)  ; FMin(a,b)
  %6602 = call float @dx.op.binary.f32(i32 35, float %6593, float %6596)  ; FMax(a,b)
  %6603 = add nuw i32 %6594, 1
  %6604 = icmp eq i32 %6603, %6577
  br i1 %6604, label %6605, label %6591

; <label>:6605                                    ; preds = %6591
  br label %6606

; <label>:6606                                    ; preds = %6605, %6584
  %6607 = phi float [ %6588, %6584 ], [ %6601, %6605 ]
  %6608 = phi float [ %6585, %6584 ], [ %6602, %6605 ]
  %6609 = fsub fast float %6608, %6607
  %6610 = fdiv fast float 1.000000e+00, %6609
  br label %6611

; <label>:6611                                    ; preds = %6606, %6581
  %6612 = phi float [ %6582, %6581 ], [ %6608, %6606 ]
  %6613 = phi float [ %6583, %6581 ], [ %6610, %6606 ]
  %6614 = fadd fast float %6315, %6612
  %6615 = fmul fast float %6614, %6613
  %6616 = call float @dx.op.unary.f32(i32 7, float %6615)  ; Saturate(value)
  %6617 = fmul fast float %6616, 2.000000e+00
  %6618 = fsub fast float 1.000000e+00, %6617
  %6619 = fmul fast float %6453, %6453
  %6620 = fsub fast float %6454, %6619
  %6621 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6620)  ; FMax(a,b)
  %6622 = fdiv fast float 1.000000e+00, %6621
  %6623 = fmul fast float %6454, %6453
  %6624 = fsub fast float %6455, %6623
  %6625 = fsub fast float %6618, %6453
  %6626 = fmul fast float %6618, %6618
  %6627 = fsub fast float %6626, %6454
  %6628 = fmul fast float %6622, %6624
  %6629 = fmul fast float %6628, %6625
  %6630 = fsub fast float %6627, %6629
  %6631 = fmul fast float %6454, %6454
  %6632 = fsub fast float %6456, %6631
  %6633 = fmul fast float %6624, %6624
  %6634 = fmul fast float %6633, %6622
  %6635 = fsub fast float %6632, %6634
  %6636 = fdiv fast float %6630, %6635
  %6637 = fmul fast float %6636, %6624
  %6638 = fsub fast float %6625, %6637
  %6639 = fmul fast float %6638, %6622
  %6640 = fmul fast float %6639, %6453
  %6641 = fsub fast float 1.000000e+00, %6640
  %6642 = fmul fast float %6636, %6454
  %6643 = fsub fast float %6641, %6642
  %6644 = fmul fast float %6639, %6639
  %6645 = fmul fast float %6636, 4.000000e+00
  %6646 = fmul fast float %6645, %6643
  %6647 = fsub fast float %6644, %6646
  %6648 = call float @dx.op.unary.f32(i32 24, float %6647)  ; Sqrt(value)
  %6649 = fcmp fast oge float %6639, 0.000000e+00
  %6650 = fsub fast float -0.000000e+00, %6648
  %6651 = select i1 %6649, float %6650, float %6648
  %6652 = fsub fast float %6651, %6639
  %6653 = fdiv fast float %6652, %6636
  %6654 = fdiv fast float %6643, %6652
  %6655 = fmul fast float %6653, 5.000000e-01
  %6656 = fmul fast float %6654, 2.000000e+00
  %6657 = select i1 %6649, float %6655, float %6656
  %6658 = select i1 %6649, float %6656, float %6655
  %6659 = call float @dx.op.binary.f32(i32 35, float %6657, float %6658)  ; FMax(a,b)
  %6660 = call float @dx.op.binary.f32(i32 36, float %6657, float %6658)  ; FMin(a,b)
  %6661 = fcmp fast ogt float %6618, %6659
  %6662 = fsub fast float %6618, %6660
  %6663 = fsub fast float %6618, %6659
  %6664 = fsub fast float %6659, %6660
  %6665 = select i1 %6661, float %6663, float %6664
  %6666 = fmul float %6662, %6665
  %6667 = select i1 %6661, float %6660, float %6618
  %6668 = fcmp fast ogt float %6618, %6660
  %6669 = fmul fast float %6667, %6659
  %6670 = fadd fast float %6667, %6659
  %6671 = fmul fast float %6670, %6453
  %6672 = fadd fast float %6669, %6454
  %6673 = fsub fast float %6672, %6671
  %6674 = fdiv fast float %6673, %6666
  %6675 = select i1 %6668, float %6674, float 0.000000e+00
  %6676 = fsub fast float 1.000000e+00, %6675
  %6677 = select i1 %6661, float %6676, float %6675
  %6678 = call float @dx.op.unary.f32(i32 7, float %6677)  ; Saturate(value)
  %6679 = extractvalue %dx.types.CBufRet.f32 %6438, 3
  %6680 = fmul fast float %6679, %6678
  %6681 = fsub fast float 1.000000e+00, %6680
  br label %6682

; <label>:6682                                    ; preds = %6611, %6323, %6288, %6284, %6248
  %6683 = phi float [ 1.000000e+00, %6248 ], [ %6681, %6611 ], [ 1.000000e+00, %6288 ], [ 1.000000e+00, %6323 ], [ 1.000000e+00, %6284 ]
  %6684 = fcmp fast ogt float %6280, 0.000000e+00
  br i1 %6684, label %6685, label %6849, !dx.controlflow.hints !127

; <label>:6685                                    ; preds = %6682
  %6686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6687 = extractvalue %dx.types.CBufRet.f32 %6686, 2
  %6688 = fadd fast float %6687, %6161
  %6689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6690 = extractvalue %dx.types.CBufRet.f32 %6689, 2
  %6691 = extractvalue %dx.types.CBufRet.f32 %6689, 3
  %6692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6693 = extractvalue %dx.types.CBufRet.f32 %6692, 2
  %6694 = call float @dx.op.binary.f32(i32 35, float %6688, float 0.000000e+00)  ; FMax(a,b)
  %6695 = fadd fast float %6694, 0x3F10000000000000
  %6696 = fcmp fast oeq float %6693, 0.000000e+00
  br i1 %6696, label %6697, label %6764

; <label>:6697                                    ; preds = %6685
  %6698 = extractvalue %dx.types.CBufRet.f32 %6689, 1
  %6699 = extractvalue %dx.types.CBufRet.f32 %6689, 0
  %6700 = fmul fast float %6699, %6179
  %6701 = fmul fast float %6698, %6180
  %6702 = fadd fast float %6700, 5.000000e-01
  %6703 = call float @dx.op.unary.f32(i32 27, float %6702)  ; Round_ni(value)
  %6704 = fadd fast float %6701, 5.000000e-01
  %6705 = call float @dx.op.unary.f32(i32 27, float %6704)  ; Round_ni(value)
  %6706 = fsub fast float %6702, %6703
  %6707 = fsub fast float %6704, %6705
  %6708 = fadd fast float %6703, -5.000000e-01
  %6709 = fadd fast float %6705, -5.000000e-01
  %6710 = fmul fast float %6706, 2.000000e+00
  %6711 = fsub fast float 3.000000e+00, %6710
  %6712 = fadd fast float %6710, 1.000000e+00
  %6713 = fsub fast float 2.000000e+00, %6706
  %6714 = bitcast float %6711 to i32
  %6715 = sub nsw i32 2129859010, %6714
  %6716 = bitcast i32 %6715 to float
  %6717 = fmul fast float %6716, %6713
  %6718 = fadd fast float %6717, -1.000000e+00
  %6719 = bitcast float %6712 to i32
  %6720 = sub nsw i32 2129859010, %6719
  %6721 = bitcast i32 %6720 to float
  %6722 = fmul fast float %6721, %6706
  %6723 = fadd fast float %6722, 1.000000e+00
  %6724 = fmul fast float %6707, 2.000000e+00
  %6725 = fsub fast float 3.000000e+00, %6724
  %6726 = fadd fast float %6724, 1.000000e+00
  %6727 = fsub fast float 2.000000e+00, %6707
  %6728 = bitcast float %6725 to i32
  %6729 = sub nsw i32 2129859010, %6728
  %6730 = bitcast i32 %6729 to float
  %6731 = fmul fast float %6730, %6727
  %6732 = fadd fast float %6731, -1.000000e+00
  %6733 = bitcast float %6726 to i32
  %6734 = sub nsw i32 2129859010, %6733
  %6735 = bitcast i32 %6734 to float
  %6736 = fmul fast float %6735, %6707
  %6737 = fadd fast float %6736, 1.000000e+00
  %6738 = fadd fast float %6718, %6708
  %6739 = fmul fast float %6738, %6690
  %6740 = fadd fast float %6732, %6709
  %6741 = fmul fast float %6740, %6691
  %6742 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %58, float %6739, float %6741, float undef, float undef, i32 0, i32 0, i32 undef, float %6695)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6743 = extractvalue %dx.types.ResRet.f32 %6742, 0
  %6744 = fmul fast float %6743, %6711
  %6745 = fadd fast float %6723, %6708
  %6746 = fmul fast float %6745, %6690
  %6747 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %58, float %6746, float %6741, float undef, float undef, i32 0, i32 0, i32 undef, float %6695)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6748 = extractvalue %dx.types.ResRet.f32 %6747, 0
  %6749 = fmul fast float %6748, %6712
  %6750 = fadd fast float %6737, %6709
  %6751 = fmul fast float %6750, %6691
  %6752 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %58, float %6739, float %6751, float undef, float undef, i32 0, i32 0, i32 undef, float %6695)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6753 = extractvalue %dx.types.ResRet.f32 %6752, 0
  %6754 = fmul fast float %6753, %6711
  %6755 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %58, float %6746, float %6751, float undef, float undef, i32 0, i32 0, i32 undef, float %6695)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6756 = extractvalue %dx.types.ResRet.f32 %6755, 0
  %6757 = fmul fast float %6756, %6712
  %6758 = fadd fast float %6757, %6754
  %6759 = fmul fast float %6758, %6726
  %6760 = fadd fast float %6749, %6744
  %6761 = fmul fast float %6760, %6725
  %6762 = fadd fast float %6761, %6759
  %6763 = fmul fast float %6762, 6.250000e-02
  br label %6849

; <label>:6764                                    ; preds = %6685
  %6765 = fmul fast float %290, 0x401921FB60000000
  %6766 = call float @dx.op.unary.f32(i32 13, float %6765)  ; Sin(value)
  %6767 = call float @dx.op.unary.f32(i32 12, float %6765)  ; Cos(value)
  %6768 = fsub fast float -0.000000e+00, %6766
  br label %6769

; <label>:6769                                    ; preds = %6818, %6764
  %6770 = phi float [ 0.000000e+00, %6764 ], [ %6813, %6818 ]
  %6771 = phi float [ 0.000000e+00, %6764 ], [ %6815, %6818 ]
  %6772 = phi i32 [ 0, %6764 ], [ %6819, %6818 ]
  %6773 = mul i32 %6772, 2
  %6774 = add i32 0, %6773
  %6775 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6774
  %6776 = load float, float* %6775, align 4
  %6777 = mul i32 %6772, 2
  %6778 = add i32 1, %6777
  %6779 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6778
  %6780 = load float, float* %6779, align 4
  %6781 = fmul fast float %6776, %6767
  %6782 = call float @dx.op.tertiary.f32(i32 46, float %6780, float %6768, float %6781)  ; FMad(a,b,c)
  %6783 = fmul fast float %6776, %6766
  %6784 = call float @dx.op.tertiary.f32(i32 46, float %6780, float %6767, float %6783)  ; FMad(a,b,c)
  %6785 = fmul fast float %6782, %6693
  %6786 = fmul fast float %6784, %6693
  %6787 = fadd fast float %6785, %6179
  %6788 = fadd fast float %6786, %6180
  %6789 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %57, float %6787, float %6788, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6790 = extractvalue %dx.types.ResRet.f32 %6789, 0
  %6791 = extractvalue %dx.types.ResRet.f32 %6789, 1
  %6792 = extractvalue %dx.types.ResRet.f32 %6789, 2
  %6793 = extractvalue %dx.types.ResRet.f32 %6789, 3
  %6794 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 0
  store float %6790, float* %6794, align 4
  %6795 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 1
  store float %6791, float* %6795, align 4
  %6796 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 2
  store float %6792, float* %6796, align 4
  %6797 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 3
  store float %6793, float* %6797, align 4
  %6798 = fsub fast float %6790, %6695
  %6799 = fcmp fast olt float %6798, 0.000000e+00
  %6800 = select i1 %6799, float 0.000000e+00, float 1.000000e+00
  %6801 = fadd fast float %6800, %6770
  %6802 = fmul fast float %6800, %6798
  %6803 = fadd fast float %6802, %6771
  br label %6804

; <label>:6804                                    ; preds = %6804, %6769
  %6805 = phi i32 [ 1, %6769 ], [ %6816, %6804 ]
  %6806 = phi float [ %6803, %6769 ], [ %6815, %6804 ]
  %6807 = phi float [ %6801, %6769 ], [ %6813, %6804 ]
  %6808 = getelementptr [4 x float], [4 x float]* %113, i32 0, i32 %6805
  %6809 = load float, float* %6808, align 4, !tbaa !128, !noalias !118
  %6810 = fsub fast float %6809, %6695
  %6811 = fcmp fast olt float %6810, 0.000000e+00
  %6812 = select i1 %6811, float 0.000000e+00, float 1.000000e+00
  %6813 = fadd fast float %6812, %6807
  %6814 = fmul fast float %6812, %6810
  %6815 = fadd fast float %6814, %6806
  %6816 = add nuw nsw i32 %6805, 1
  %6817 = icmp eq i32 %6816, 4
  br i1 %6817, label %6818, label %6804, !llvm.loop !130

; <label>:6818                                    ; preds = %6804
  %6819 = add nuw nsw i32 %6772, 1
  %6820 = icmp eq i32 %6819, 8
  br i1 %6820, label %6821, label %6769, !llvm.loop !131

; <label>:6821                                    ; preds = %6818
  %6822 = fdiv fast float 1.000000e+00, %6813
  %6823 = fmul fast float %6822, %6815
  %6824 = fdiv fast float 1.000000e+00, %6695
  %6825 = fmul fast float %6823, %6824
  %6826 = call float @dx.op.unary.f32(i32 7, float %6825)  ; Saturate(value)
  %6827 = call float @dx.op.binary.f32(i32 35, float %6826, float 0.000000e+00)  ; FMax(a,b)
  %6828 = fmul fast float %6813, 3.125000e-02
  %6829 = call float @dx.op.unary.f32(i32 7, float %6828)  ; Saturate(value)
  %6830 = fmul fast float %6829, 2.000000e+00
  %6831 = fadd fast float %6830, -1.000000e+00
  %6832 = fcmp fast ogt float %6831, 0.000000e+00
  %6833 = fcmp fast olt float %6831, 0.000000e+00
  %6834 = zext i1 %6832 to i32
  %6835 = zext i1 %6833 to i32
  %6836 = sub nsw i32 %6834, %6835
  %6837 = sitofp i32 %6836 to float
  %6838 = fmul fast float %6837, %6831
  %6839 = fsub fast float 1.000000e+00, %6838
  %6840 = fmul fast float %6839, %6839
  %6841 = fmul fast float %6840, %6839
  %6842 = fsub fast float %6839, %6841
  %6843 = fmul fast float %6842, %6827
  %6844 = fsub fast float 1.000000e+00, %6841
  %6845 = fsub fast float %6844, %6843
  %6846 = fmul fast float %6837, 5.000000e-01
  %6847 = fmul fast float %6846, %6845
  %6848 = fsub fast float 5.000000e-01, %6847
  br label %6849

; <label>:6849                                    ; preds = %6821, %6697, %6682
  %6850 = phi float [ 1.000000e+00, %6682 ], [ %6763, %6697 ], [ %6848, %6821 ]
  %6851 = fcmp fast ogt float %6278, 0.000000e+00
  br i1 %6851, label %6852, label %7016, !dx.controlflow.hints !132

; <label>:6852                                    ; preds = %6849
  %6853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6854 = extractvalue %dx.types.CBufRet.f32 %6853, 1
  %6855 = fadd fast float %6854, %6161
  %6856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6857 = extractvalue %dx.types.CBufRet.f32 %6856, 2
  %6858 = extractvalue %dx.types.CBufRet.f32 %6856, 3
  %6859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6860 = extractvalue %dx.types.CBufRet.f32 %6859, 1
  %6861 = call float @dx.op.binary.f32(i32 35, float %6855, float 0.000000e+00)  ; FMax(a,b)
  %6862 = fadd fast float %6861, 0x3F10000000000000
  %6863 = fcmp fast oeq float %6860, 0.000000e+00
  br i1 %6863, label %6864, label %6931

; <label>:6864                                    ; preds = %6852
  %6865 = extractvalue %dx.types.CBufRet.f32 %6856, 1
  %6866 = extractvalue %dx.types.CBufRet.f32 %6856, 0
  %6867 = fmul fast float %6866, %6171
  %6868 = fmul fast float %6865, %6172
  %6869 = fadd fast float %6867, 5.000000e-01
  %6870 = call float @dx.op.unary.f32(i32 27, float %6869)  ; Round_ni(value)
  %6871 = fadd fast float %6868, 5.000000e-01
  %6872 = call float @dx.op.unary.f32(i32 27, float %6871)  ; Round_ni(value)
  %6873 = fsub fast float %6869, %6870
  %6874 = fsub fast float %6871, %6872
  %6875 = fadd fast float %6870, -5.000000e-01
  %6876 = fadd fast float %6872, -5.000000e-01
  %6877 = fmul fast float %6873, 2.000000e+00
  %6878 = fsub fast float 3.000000e+00, %6877
  %6879 = fadd fast float %6877, 1.000000e+00
  %6880 = fsub fast float 2.000000e+00, %6873
  %6881 = bitcast float %6878 to i32
  %6882 = sub nsw i32 2129859010, %6881
  %6883 = bitcast i32 %6882 to float
  %6884 = fmul fast float %6883, %6880
  %6885 = fadd fast float %6884, -1.000000e+00
  %6886 = bitcast float %6879 to i32
  %6887 = sub nsw i32 2129859010, %6886
  %6888 = bitcast i32 %6887 to float
  %6889 = fmul fast float %6888, %6873
  %6890 = fadd fast float %6889, 1.000000e+00
  %6891 = fmul fast float %6874, 2.000000e+00
  %6892 = fsub fast float 3.000000e+00, %6891
  %6893 = fadd fast float %6891, 1.000000e+00
  %6894 = fsub fast float 2.000000e+00, %6874
  %6895 = bitcast float %6892 to i32
  %6896 = sub nsw i32 2129859010, %6895
  %6897 = bitcast i32 %6896 to float
  %6898 = fmul fast float %6897, %6894
  %6899 = fadd fast float %6898, -1.000000e+00
  %6900 = bitcast float %6893 to i32
  %6901 = sub nsw i32 2129859010, %6900
  %6902 = bitcast i32 %6901 to float
  %6903 = fmul fast float %6902, %6874
  %6904 = fadd fast float %6903, 1.000000e+00
  %6905 = fadd fast float %6885, %6875
  %6906 = fmul fast float %6905, %6857
  %6907 = fadd fast float %6899, %6876
  %6908 = fmul fast float %6907, %6858
  %6909 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %6906, float %6908, float undef, float undef, i32 0, i32 0, i32 undef, float %6862)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6910 = extractvalue %dx.types.ResRet.f32 %6909, 0
  %6911 = fmul fast float %6910, %6878
  %6912 = fadd fast float %6890, %6875
  %6913 = fmul fast float %6912, %6857
  %6914 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %6913, float %6908, float undef, float undef, i32 0, i32 0, i32 undef, float %6862)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6915 = extractvalue %dx.types.ResRet.f32 %6914, 0
  %6916 = fmul fast float %6915, %6879
  %6917 = fadd fast float %6904, %6876
  %6918 = fmul fast float %6917, %6858
  %6919 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %6906, float %6918, float undef, float undef, i32 0, i32 0, i32 undef, float %6862)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6920 = extractvalue %dx.types.ResRet.f32 %6919, 0
  %6921 = fmul fast float %6920, %6878
  %6922 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %6913, float %6918, float undef, float undef, i32 0, i32 0, i32 undef, float %6862)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6923 = extractvalue %dx.types.ResRet.f32 %6922, 0
  %6924 = fmul fast float %6923, %6879
  %6925 = fadd fast float %6924, %6921
  %6926 = fmul fast float %6925, %6893
  %6927 = fadd fast float %6916, %6911
  %6928 = fmul fast float %6927, %6892
  %6929 = fadd fast float %6928, %6926
  %6930 = fmul fast float %6929, 6.250000e-02
  br label %7016

; <label>:6931                                    ; preds = %6852
  %6932 = fmul fast float %290, 0x401921FB60000000
  %6933 = call float @dx.op.unary.f32(i32 13, float %6932)  ; Sin(value)
  %6934 = call float @dx.op.unary.f32(i32 12, float %6932)  ; Cos(value)
  %6935 = fsub fast float -0.000000e+00, %6933
  br label %6936

; <label>:6936                                    ; preds = %6985, %6931
  %6937 = phi float [ 0.000000e+00, %6931 ], [ %6980, %6985 ]
  %6938 = phi float [ 0.000000e+00, %6931 ], [ %6982, %6985 ]
  %6939 = phi i32 [ 0, %6931 ], [ %6986, %6985 ]
  %6940 = mul i32 %6939, 2
  %6941 = add i32 0, %6940
  %6942 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6941
  %6943 = load float, float* %6942, align 4
  %6944 = mul i32 %6939, 2
  %6945 = add i32 1, %6944
  %6946 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6945
  %6947 = load float, float* %6946, align 4
  %6948 = fmul fast float %6943, %6934
  %6949 = call float @dx.op.tertiary.f32(i32 46, float %6947, float %6935, float %6948)  ; FMad(a,b,c)
  %6950 = fmul fast float %6943, %6933
  %6951 = call float @dx.op.tertiary.f32(i32 46, float %6947, float %6934, float %6950)  ; FMad(a,b,c)
  %6952 = fmul fast float %6949, %6860
  %6953 = fmul fast float %6951, %6860
  %6954 = fadd fast float %6952, %6171
  %6955 = fadd fast float %6953, %6172
  %6956 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %57, float %6954, float %6955, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6957 = extractvalue %dx.types.ResRet.f32 %6956, 0
  %6958 = extractvalue %dx.types.ResRet.f32 %6956, 1
  %6959 = extractvalue %dx.types.ResRet.f32 %6956, 2
  %6960 = extractvalue %dx.types.ResRet.f32 %6956, 3
  %6961 = getelementptr inbounds [4 x float], [4 x float]* %112, i32 0, i32 0
  store float %6957, float* %6961, align 4
  %6962 = getelementptr inbounds [4 x float], [4 x float]* %112, i32 0, i32 1
  store float %6958, float* %6962, align 4
  %6963 = getelementptr inbounds [4 x float], [4 x float]* %112, i32 0, i32 2
  store float %6959, float* %6963, align 4
  %6964 = getelementptr inbounds [4 x float], [4 x float]* %112, i32 0, i32 3
  store float %6960, float* %6964, align 4
  %6965 = fsub fast float %6957, %6862
  %6966 = fcmp fast olt float %6965, 0.000000e+00
  %6967 = select i1 %6966, float 0.000000e+00, float 1.000000e+00
  %6968 = fadd fast float %6967, %6937
  %6969 = fmul fast float %6967, %6965
  %6970 = fadd fast float %6969, %6938
  br label %6971

; <label>:6971                                    ; preds = %6971, %6936
  %6972 = phi i32 [ 1, %6936 ], [ %6983, %6971 ]
  %6973 = phi float [ %6970, %6936 ], [ %6982, %6971 ]
  %6974 = phi float [ %6968, %6936 ], [ %6980, %6971 ]
  %6975 = getelementptr [4 x float], [4 x float]* %112, i32 0, i32 %6972
  %6976 = load float, float* %6975, align 4, !tbaa !128, !noalias !118
  %6977 = fsub fast float %6976, %6862
  %6978 = fcmp fast olt float %6977, 0.000000e+00
  %6979 = select i1 %6978, float 0.000000e+00, float 1.000000e+00
  %6980 = fadd fast float %6979, %6974
  %6981 = fmul fast float %6979, %6977
  %6982 = fadd fast float %6981, %6973
  %6983 = add nuw nsw i32 %6972, 1
  %6984 = icmp eq i32 %6983, 4
  br i1 %6984, label %6985, label %6971, !llvm.loop !130

; <label>:6985                                    ; preds = %6971
  %6986 = add nuw nsw i32 %6939, 1
  %6987 = icmp eq i32 %6986, 8
  br i1 %6987, label %6988, label %6936, !llvm.loop !131

; <label>:6988                                    ; preds = %6985
  %6989 = fdiv fast float 1.000000e+00, %6980
  %6990 = fmul fast float %6989, %6982
  %6991 = fdiv fast float 1.000000e+00, %6862
  %6992 = fmul fast float %6990, %6991
  %6993 = call float @dx.op.unary.f32(i32 7, float %6992)  ; Saturate(value)
  %6994 = call float @dx.op.binary.f32(i32 35, float %6993, float 0.000000e+00)  ; FMax(a,b)
  %6995 = fmul fast float %6980, 3.125000e-02
  %6996 = call float @dx.op.unary.f32(i32 7, float %6995)  ; Saturate(value)
  %6997 = fmul fast float %6996, 2.000000e+00
  %6998 = fadd fast float %6997, -1.000000e+00
  %6999 = fcmp fast ogt float %6998, 0.000000e+00
  %7000 = fcmp fast olt float %6998, 0.000000e+00
  %7001 = zext i1 %6999 to i32
  %7002 = zext i1 %7000 to i32
  %7003 = sub nsw i32 %7001, %7002
  %7004 = sitofp i32 %7003 to float
  %7005 = fmul fast float %7004, %6998
  %7006 = fsub fast float 1.000000e+00, %7005
  %7007 = fmul fast float %7006, %7006
  %7008 = fmul fast float %7007, %7006
  %7009 = fsub fast float %7006, %7008
  %7010 = fmul fast float %7009, %6994
  %7011 = fsub fast float 1.000000e+00, %7008
  %7012 = fsub fast float %7011, %7010
  %7013 = fmul fast float %7004, 5.000000e-01
  %7014 = fmul fast float %7013, %7012
  %7015 = fsub fast float 5.000000e-01, %7014
  br label %7016

; <label>:7016                                    ; preds = %6988, %6864, %6849
  %7017 = phi float [ 1.000000e+00, %6849 ], [ %6930, %6864 ], [ %7015, %6988 ]
  %7018 = fcmp fast ogt float %6277, 0.000000e+00
  br i1 %7018, label %7019, label %7337, !dx.controlflow.hints !133

; <label>:7019                                    ; preds = %7016
  %7020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7021 = extractvalue %dx.types.CBufRet.f32 %7020, 0
  %7022 = fadd fast float %7021, %6161
  %7023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7024 = extractvalue %dx.types.CBufRet.f32 %7023, 2
  %7025 = extractvalue %dx.types.CBufRet.f32 %7023, 3
  %7026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7027 = extractvalue %dx.types.CBufRet.f32 %7026, 0
  %7028 = call float @dx.op.binary.f32(i32 35, float %7022, float 0.000000e+00)  ; FMax(a,b)
  %7029 = fadd fast float %7028, 0x3F10000000000000
  %7030 = fcmp fast oeq float %7027, 0.000000e+00
  br i1 %6164, label %7031, label %7184, !dx.controlflow.hints !134

; <label>:7031                                    ; preds = %7019
  br i1 %7030, label %7032, label %7099

; <label>:7032                                    ; preds = %7031
  %7033 = extractvalue %dx.types.CBufRet.f32 %7023, 1
  %7034 = extractvalue %dx.types.CBufRet.f32 %7023, 0
  %7035 = fmul fast float %7034, %6153
  %7036 = fmul fast float %7033, %6157
  %7037 = fadd fast float %7035, 5.000000e-01
  %7038 = call float @dx.op.unary.f32(i32 27, float %7037)  ; Round_ni(value)
  %7039 = fadd fast float %7036, 5.000000e-01
  %7040 = call float @dx.op.unary.f32(i32 27, float %7039)  ; Round_ni(value)
  %7041 = fsub fast float %7037, %7038
  %7042 = fsub fast float %7039, %7040
  %7043 = fadd fast float %7038, -5.000000e-01
  %7044 = fadd fast float %7040, -5.000000e-01
  %7045 = fmul fast float %7041, 2.000000e+00
  %7046 = fsub fast float 3.000000e+00, %7045
  %7047 = fadd fast float %7045, 1.000000e+00
  %7048 = fsub fast float 2.000000e+00, %7041
  %7049 = bitcast float %7046 to i32
  %7050 = sub nsw i32 2129859010, %7049
  %7051 = bitcast i32 %7050 to float
  %7052 = fmul fast float %7051, %7048
  %7053 = fadd fast float %7052, -1.000000e+00
  %7054 = bitcast float %7047 to i32
  %7055 = sub nsw i32 2129859010, %7054
  %7056 = bitcast i32 %7055 to float
  %7057 = fmul fast float %7056, %7041
  %7058 = fadd fast float %7057, 1.000000e+00
  %7059 = fmul fast float %7042, 2.000000e+00
  %7060 = fsub fast float 3.000000e+00, %7059
  %7061 = fadd fast float %7059, 1.000000e+00
  %7062 = fsub fast float 2.000000e+00, %7042
  %7063 = bitcast float %7060 to i32
  %7064 = sub nsw i32 2129859010, %7063
  %7065 = bitcast i32 %7064 to float
  %7066 = fmul fast float %7065, %7062
  %7067 = fadd fast float %7066, -1.000000e+00
  %7068 = bitcast float %7061 to i32
  %7069 = sub nsw i32 2129859010, %7068
  %7070 = bitcast i32 %7069 to float
  %7071 = fmul fast float %7070, %7042
  %7072 = fadd fast float %7071, 1.000000e+00
  %7073 = fadd fast float %7053, %7043
  %7074 = fmul fast float %7073, %7024
  %7075 = fadd fast float %7067, %7044
  %7076 = fmul fast float %7075, %7025
  %7077 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %58, float %7074, float %7076, float undef, float undef, i32 0, i32 0, i32 undef, float %7029)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7078 = extractvalue %dx.types.ResRet.f32 %7077, 0
  %7079 = fmul fast float %7078, %7046
  %7080 = fadd fast float %7058, %7043
  %7081 = fmul fast float %7080, %7024
  %7082 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %58, float %7081, float %7076, float undef, float undef, i32 0, i32 0, i32 undef, float %7029)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7083 = extractvalue %dx.types.ResRet.f32 %7082, 0
  %7084 = fmul fast float %7083, %7047
  %7085 = fadd fast float %7072, %7044
  %7086 = fmul fast float %7085, %7025
  %7087 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %58, float %7074, float %7086, float undef, float undef, i32 0, i32 0, i32 undef, float %7029)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7088 = extractvalue %dx.types.ResRet.f32 %7087, 0
  %7089 = fmul fast float %7088, %7046
  %7090 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %58, float %7081, float %7086, float undef, float undef, i32 0, i32 0, i32 undef, float %7029)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7091 = extractvalue %dx.types.ResRet.f32 %7090, 0
  %7092 = fmul fast float %7091, %7047
  %7093 = fadd fast float %7092, %7089
  %7094 = fmul fast float %7093, %7061
  %7095 = fadd fast float %7084, %7079
  %7096 = fmul fast float %7095, %7060
  %7097 = fadd fast float %7096, %7094
  %7098 = fmul fast float %7097, 6.250000e-02
  br label %7337

; <label>:7099                                    ; preds = %7031
  %7100 = fmul fast float %290, 0x401921FB60000000
  %7101 = call float @dx.op.unary.f32(i32 13, float %7100)  ; Sin(value)
  %7102 = call float @dx.op.unary.f32(i32 12, float %7100)  ; Cos(value)
  %7103 = fsub fast float -0.000000e+00, %7101
  br label %7104

; <label>:7104                                    ; preds = %7153, %7099
  %7105 = phi float [ 0.000000e+00, %7099 ], [ %7148, %7153 ]
  %7106 = phi float [ 0.000000e+00, %7099 ], [ %7150, %7153 ]
  %7107 = phi i32 [ 0, %7099 ], [ %7154, %7153 ]
  %7108 = mul i32 %7107, 2
  %7109 = add i32 0, %7108
  %7110 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7109
  %7111 = load float, float* %7110, align 4
  %7112 = mul i32 %7107, 2
  %7113 = add i32 1, %7112
  %7114 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7113
  %7115 = load float, float* %7114, align 4
  %7116 = fmul fast float %7111, %7102
  %7117 = call float @dx.op.tertiary.f32(i32 46, float %7115, float %7103, float %7116)  ; FMad(a,b,c)
  %7118 = fmul fast float %7111, %7101
  %7119 = call float @dx.op.tertiary.f32(i32 46, float %7115, float %7102, float %7118)  ; FMad(a,b,c)
  %7120 = fmul fast float %7117, %7027
  %7121 = fmul fast float %7119, %7027
  %7122 = fadd fast float %7120, %6153
  %7123 = fadd fast float %7121, %6157
  %7124 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %57, float %7122, float %7123, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7125 = extractvalue %dx.types.ResRet.f32 %7124, 0
  %7126 = extractvalue %dx.types.ResRet.f32 %7124, 1
  %7127 = extractvalue %dx.types.ResRet.f32 %7124, 2
  %7128 = extractvalue %dx.types.ResRet.f32 %7124, 3
  %7129 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 0
  store float %7125, float* %7129, align 4
  %7130 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 1
  store float %7126, float* %7130, align 4
  %7131 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 2
  store float %7127, float* %7131, align 4
  %7132 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 3
  store float %7128, float* %7132, align 4
  %7133 = fsub fast float %7125, %7029
  %7134 = fcmp fast olt float %7133, 0.000000e+00
  %7135 = select i1 %7134, float 0.000000e+00, float 1.000000e+00
  %7136 = fadd fast float %7135, %7105
  %7137 = fmul fast float %7135, %7133
  %7138 = fadd fast float %7137, %7106
  br label %7139

; <label>:7139                                    ; preds = %7139, %7104
  %7140 = phi i32 [ 1, %7104 ], [ %7151, %7139 ]
  %7141 = phi float [ %7138, %7104 ], [ %7150, %7139 ]
  %7142 = phi float [ %7136, %7104 ], [ %7148, %7139 ]
  %7143 = getelementptr [4 x float], [4 x float]* %111, i32 0, i32 %7140
  %7144 = load float, float* %7143, align 4, !tbaa !128, !noalias !118
  %7145 = fsub fast float %7144, %7029
  %7146 = fcmp fast olt float %7145, 0.000000e+00
  %7147 = select i1 %7146, float 0.000000e+00, float 1.000000e+00
  %7148 = fadd fast float %7147, %7142
  %7149 = fmul fast float %7147, %7145
  %7150 = fadd fast float %7149, %7141
  %7151 = add nuw nsw i32 %7140, 1
  %7152 = icmp eq i32 %7151, 4
  br i1 %7152, label %7153, label %7139, !llvm.loop !130

; <label>:7153                                    ; preds = %7139
  %7154 = add nuw nsw i32 %7107, 1
  %7155 = icmp eq i32 %7154, 8
  br i1 %7155, label %7156, label %7104, !llvm.loop !131

; <label>:7156                                    ; preds = %7153
  %7157 = fdiv fast float 1.000000e+00, %7148
  %7158 = fmul fast float %7157, %7150
  %7159 = fdiv fast float 1.000000e+00, %7029
  %7160 = fmul fast float %7158, %7159
  %7161 = call float @dx.op.unary.f32(i32 7, float %7160)  ; Saturate(value)
  %7162 = call float @dx.op.binary.f32(i32 35, float %7161, float 0.000000e+00)  ; FMax(a,b)
  %7163 = fmul fast float %7148, 3.125000e-02
  %7164 = call float @dx.op.unary.f32(i32 7, float %7163)  ; Saturate(value)
  %7165 = fmul fast float %7164, 2.000000e+00
  %7166 = fadd fast float %7165, -1.000000e+00
  %7167 = fcmp fast ogt float %7166, 0.000000e+00
  %7168 = fcmp fast olt float %7166, 0.000000e+00
  %7169 = zext i1 %7167 to i32
  %7170 = zext i1 %7168 to i32
  %7171 = sub nsw i32 %7169, %7170
  %7172 = sitofp i32 %7171 to float
  %7173 = fmul fast float %7172, %7166
  %7174 = fsub fast float 1.000000e+00, %7173
  %7175 = fmul fast float %7174, %7174
  %7176 = fmul fast float %7175, %7174
  %7177 = fsub fast float %7174, %7176
  %7178 = fmul fast float %7177, %7162
  %7179 = fsub fast float 1.000000e+00, %7176
  %7180 = fsub fast float %7179, %7178
  %7181 = fmul fast float %7172, 5.000000e-01
  %7182 = fmul fast float %7181, %7180
  %7183 = fsub fast float 5.000000e-01, %7182
  br label %7337

; <label>:7184                                    ; preds = %7019
  br i1 %7030, label %7185, label %7252

; <label>:7185                                    ; preds = %7184
  %7186 = extractvalue %dx.types.CBufRet.f32 %7023, 1
  %7187 = extractvalue %dx.types.CBufRet.f32 %7023, 0
  %7188 = fmul fast float %7187, %6153
  %7189 = fmul fast float %7186, %6157
  %7190 = fadd fast float %7188, 5.000000e-01
  %7191 = call float @dx.op.unary.f32(i32 27, float %7190)  ; Round_ni(value)
  %7192 = fadd fast float %7189, 5.000000e-01
  %7193 = call float @dx.op.unary.f32(i32 27, float %7192)  ; Round_ni(value)
  %7194 = fsub fast float %7190, %7191
  %7195 = fsub fast float %7192, %7193
  %7196 = fadd fast float %7191, -5.000000e-01
  %7197 = fadd fast float %7193, -5.000000e-01
  %7198 = fmul fast float %7194, 2.000000e+00
  %7199 = fsub fast float 3.000000e+00, %7198
  %7200 = fadd fast float %7198, 1.000000e+00
  %7201 = fsub fast float 2.000000e+00, %7194
  %7202 = bitcast float %7199 to i32
  %7203 = sub nsw i32 2129859010, %7202
  %7204 = bitcast i32 %7203 to float
  %7205 = fmul fast float %7204, %7201
  %7206 = fadd fast float %7205, -1.000000e+00
  %7207 = bitcast float %7200 to i32
  %7208 = sub nsw i32 2129859010, %7207
  %7209 = bitcast i32 %7208 to float
  %7210 = fmul fast float %7209, %7194
  %7211 = fadd fast float %7210, 1.000000e+00
  %7212 = fmul fast float %7195, 2.000000e+00
  %7213 = fsub fast float 3.000000e+00, %7212
  %7214 = fadd fast float %7212, 1.000000e+00
  %7215 = fsub fast float 2.000000e+00, %7195
  %7216 = bitcast float %7213 to i32
  %7217 = sub nsw i32 2129859010, %7216
  %7218 = bitcast i32 %7217 to float
  %7219 = fmul fast float %7218, %7215
  %7220 = fadd fast float %7219, -1.000000e+00
  %7221 = bitcast float %7214 to i32
  %7222 = sub nsw i32 2129859010, %7221
  %7223 = bitcast i32 %7222 to float
  %7224 = fmul fast float %7223, %7195
  %7225 = fadd fast float %7224, 1.000000e+00
  %7226 = fadd fast float %7206, %7196
  %7227 = fmul fast float %7226, %7024
  %7228 = fadd fast float %7220, %7197
  %7229 = fmul fast float %7228, %7025
  %7230 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %7227, float %7229, float undef, float undef, i32 0, i32 0, i32 undef, float %7029)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7231 = extractvalue %dx.types.ResRet.f32 %7230, 0
  %7232 = fmul fast float %7231, %7199
  %7233 = fadd fast float %7211, %7196
  %7234 = fmul fast float %7233, %7024
  %7235 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %7234, float %7229, float undef, float undef, i32 0, i32 0, i32 undef, float %7029)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7236 = extractvalue %dx.types.ResRet.f32 %7235, 0
  %7237 = fmul fast float %7236, %7200
  %7238 = fadd fast float %7225, %7197
  %7239 = fmul fast float %7238, %7025
  %7240 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %7227, float %7239, float undef, float undef, i32 0, i32 0, i32 undef, float %7029)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7241 = extractvalue %dx.types.ResRet.f32 %7240, 0
  %7242 = fmul fast float %7241, %7199
  %7243 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %7234, float %7239, float undef, float undef, i32 0, i32 0, i32 undef, float %7029)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7244 = extractvalue %dx.types.ResRet.f32 %7243, 0
  %7245 = fmul fast float %7244, %7200
  %7246 = fadd fast float %7245, %7242
  %7247 = fmul fast float %7246, %7214
  %7248 = fadd fast float %7237, %7232
  %7249 = fmul fast float %7248, %7213
  %7250 = fadd fast float %7249, %7247
  %7251 = fmul fast float %7250, 6.250000e-02
  br label %7337

; <label>:7252                                    ; preds = %7184
  %7253 = fmul fast float %290, 0x401921FB60000000
  %7254 = call float @dx.op.unary.f32(i32 13, float %7253)  ; Sin(value)
  %7255 = call float @dx.op.unary.f32(i32 12, float %7253)  ; Cos(value)
  %7256 = fsub fast float -0.000000e+00, %7254
  br label %7257

; <label>:7257                                    ; preds = %7306, %7252
  %7258 = phi float [ 0.000000e+00, %7252 ], [ %7301, %7306 ]
  %7259 = phi float [ 0.000000e+00, %7252 ], [ %7303, %7306 ]
  %7260 = phi i32 [ 0, %7252 ], [ %7307, %7306 ]
  %7261 = mul i32 %7260, 2
  %7262 = add i32 0, %7261
  %7263 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7262
  %7264 = load float, float* %7263, align 4
  %7265 = mul i32 %7260, 2
  %7266 = add i32 1, %7265
  %7267 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7266
  %7268 = load float, float* %7267, align 4
  %7269 = fmul fast float %7264, %7255
  %7270 = call float @dx.op.tertiary.f32(i32 46, float %7268, float %7256, float %7269)  ; FMad(a,b,c)
  %7271 = fmul fast float %7264, %7254
  %7272 = call float @dx.op.tertiary.f32(i32 46, float %7268, float %7255, float %7271)  ; FMad(a,b,c)
  %7273 = fmul fast float %7270, %7027
  %7274 = fmul fast float %7272, %7027
  %7275 = fadd fast float %7273, %6153
  %7276 = fadd fast float %7274, %6157
  %7277 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %57, float %7275, float %7276, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7278 = extractvalue %dx.types.ResRet.f32 %7277, 0
  %7279 = extractvalue %dx.types.ResRet.f32 %7277, 1
  %7280 = extractvalue %dx.types.ResRet.f32 %7277, 2
  %7281 = extractvalue %dx.types.ResRet.f32 %7277, 3
  %7282 = getelementptr inbounds [4 x float], [4 x float]* %110, i32 0, i32 0
  store float %7278, float* %7282, align 4
  %7283 = getelementptr inbounds [4 x float], [4 x float]* %110, i32 0, i32 1
  store float %7279, float* %7283, align 4
  %7284 = getelementptr inbounds [4 x float], [4 x float]* %110, i32 0, i32 2
  store float %7280, float* %7284, align 4
  %7285 = getelementptr inbounds [4 x float], [4 x float]* %110, i32 0, i32 3
  store float %7281, float* %7285, align 4
  %7286 = fsub fast float %7278, %7029
  %7287 = fcmp fast olt float %7286, 0.000000e+00
  %7288 = select i1 %7287, float 0.000000e+00, float 1.000000e+00
  %7289 = fadd fast float %7288, %7258
  %7290 = fmul fast float %7288, %7286
  %7291 = fadd fast float %7290, %7259
  br label %7292

; <label>:7292                                    ; preds = %7292, %7257
  %7293 = phi i32 [ 1, %7257 ], [ %7304, %7292 ]
  %7294 = phi float [ %7291, %7257 ], [ %7303, %7292 ]
  %7295 = phi float [ %7289, %7257 ], [ %7301, %7292 ]
  %7296 = getelementptr [4 x float], [4 x float]* %110, i32 0, i32 %7293
  %7297 = load float, float* %7296, align 4, !tbaa !128, !noalias !118
  %7298 = fsub fast float %7297, %7029
  %7299 = fcmp fast olt float %7298, 0.000000e+00
  %7300 = select i1 %7299, float 0.000000e+00, float 1.000000e+00
  %7301 = fadd fast float %7300, %7295
  %7302 = fmul fast float %7300, %7298
  %7303 = fadd fast float %7302, %7294
  %7304 = add nuw nsw i32 %7293, 1
  %7305 = icmp eq i32 %7304, 4
  br i1 %7305, label %7306, label %7292, !llvm.loop !130

; <label>:7306                                    ; preds = %7292
  %7307 = add nuw nsw i32 %7260, 1
  %7308 = icmp eq i32 %7307, 8
  br i1 %7308, label %7309, label %7257, !llvm.loop !131

; <label>:7309                                    ; preds = %7306
  %7310 = fdiv fast float 1.000000e+00, %7301
  %7311 = fmul fast float %7310, %7303
  %7312 = fdiv fast float 1.000000e+00, %7029
  %7313 = fmul fast float %7311, %7312
  %7314 = call float @dx.op.unary.f32(i32 7, float %7313)  ; Saturate(value)
  %7315 = call float @dx.op.binary.f32(i32 35, float %7314, float 0.000000e+00)  ; FMax(a,b)
  %7316 = fmul fast float %7301, 3.125000e-02
  %7317 = call float @dx.op.unary.f32(i32 7, float %7316)  ; Saturate(value)
  %7318 = fmul fast float %7317, 2.000000e+00
  %7319 = fadd fast float %7318, -1.000000e+00
  %7320 = fcmp fast ogt float %7319, 0.000000e+00
  %7321 = fcmp fast olt float %7319, 0.000000e+00
  %7322 = zext i1 %7320 to i32
  %7323 = zext i1 %7321 to i32
  %7324 = sub nsw i32 %7322, %7323
  %7325 = sitofp i32 %7324 to float
  %7326 = fmul fast float %7325, %7319
  %7327 = fsub fast float 1.000000e+00, %7326
  %7328 = fmul fast float %7327, %7327
  %7329 = fmul fast float %7328, %7327
  %7330 = fsub fast float %7327, %7329
  %7331 = fmul fast float %7330, %7315
  %7332 = fsub fast float 1.000000e+00, %7329
  %7333 = fsub fast float %7332, %7331
  %7334 = fmul fast float %7325, 5.000000e-01
  %7335 = fmul fast float %7334, %7333
  %7336 = fsub fast float 5.000000e-01, %7335
  br label %7337

; <label>:7337                                    ; preds = %7309, %7185, %7156, %7032, %7016
  %7338 = phi float [ 1.000000e+00, %7016 ], [ %7098, %7032 ], [ %7183, %7156 ], [ %7251, %7185 ], [ %7336, %7309 ]
  %7339 = fsub fast float %6850, %6683
  %7340 = fmul fast float %7339, %6250
  %7341 = fadd fast float %7340, %6683
  %7342 = fsub fast float %7017, %7341
  %7343 = fmul fast float %7342, %6249
  %7344 = fadd fast float %7343, %7341
  %7345 = fsub fast float %7338, %7344
  %7346 = fmul fast float %7345, %6277
  %7347 = fadd fast float %7346, %7344
  %7348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7349 = extractvalue %dx.types.CBufRet.f32 %7348, 2
  %7350 = fcmp fast ogt float %7349, 0.000000e+00
  br i1 %7350, label %7351, label %7391, !dx.controlflow.hints !135

; <label>:7351                                    ; preds = %7337
  %7352 = fcmp fast ugt float %7349, 0.000000e+00
  br i1 %7352, label %7353, label %7388

; <label>:7353                                    ; preds = %7351
  %7354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7355 = extractvalue %dx.types.CBufRet.f32 %7354, 0
  %7356 = extractvalue %dx.types.CBufRet.f32 %7354, 1
  %7357 = extractvalue %dx.types.CBufRet.f32 %7354, 2
  %7358 = extractvalue %dx.types.CBufRet.f32 %7354, 3
  %7359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7360 = extractvalue %dx.types.CBufRet.f32 %7359, 0
  %7361 = extractvalue %dx.types.CBufRet.f32 %7359, 1
  %7362 = extractvalue %dx.types.CBufRet.f32 %7359, 2
  %7363 = extractvalue %dx.types.CBufRet.f32 %7359, 3
  %7364 = extractvalue %dx.types.CBufRet.f32 %7348, 0
  %7365 = extractvalue %dx.types.CBufRet.f32 %7348, 1
  %7366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7367 = extractvalue %dx.types.CBufRet.f32 %7366, 0
  %7368 = extractvalue %dx.types.CBufRet.f32 %7366, 1
  %7369 = extractvalue %dx.types.CBufRet.f32 %7366, 2
  %7370 = fadd fast float %7367, %6130
  %7371 = fadd fast float %7368, %6131
  %7372 = fadd fast float %7369, %6132
  %7373 = fmul fast float %7370, %7355
  %7374 = call float @dx.op.tertiary.f32(i32 46, float %7356, float %7371, float %7373)  ; FMad(a,b,c)
  %7375 = call float @dx.op.tertiary.f32(i32 46, float %7357, float %7372, float %7374)  ; FMad(a,b,c)
  %7376 = fadd fast float %7375, %7358
  %7377 = fmul fast float %7370, %7360
  %7378 = call float @dx.op.tertiary.f32(i32 46, float %7361, float %7371, float %7377)  ; FMad(a,b,c)
  %7379 = call float @dx.op.tertiary.f32(i32 46, float %7362, float %7372, float %7378)  ; FMad(a,b,c)
  %7380 = fadd fast float %7379, %7363
  %7381 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %53, float %7376, float %7380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7382 = extractvalue %dx.types.ResRet.f32 %7381, 0
  %7383 = fmul fast float %7382, %7365
  %7384 = fadd fast float %7383, %7364
  %7385 = call float @dx.op.unary.f32(i32 7, float %7384)  ; Saturate(value)
  %7386 = fmul fast float %7385, %7349
  %7387 = fsub fast float 1.000000e+00, %7386
  br label %7388

; <label>:7388                                    ; preds = %7353, %7351
  %7389 = phi float [ %7387, %7353 ], [ 1.000000e+00, %7351 ]
  %7390 = fmul fast float %7389, %7347
  br label %7391

; <label>:7391                                    ; preds = %7388, %7337, %6110
  %7392 = phi float [ 1.000000e+00, %6110 ], [ %7390, %7388 ], [ %7347, %7337 ]
  %7393 = call float @dx.op.binary.f32(i32 36, float %7392, float %7392)  ; FMin(a,b)
  %7394 = call float @dx.op.binary.f32(i32 36, float %7392, float %7393)  ; FMin(a,b)
  %7395 = fcmp fast ogt float %7394, 0.000000e+00
  br i1 %7395, label %7396, label %7561, !dx.controlflow.hints !136

; <label>:7396                                    ; preds = %7391
  %7397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7398 = extractvalue %dx.types.CBufRet.f32 %7397, 0
  %7399 = extractvalue %dx.types.CBufRet.f32 %7397, 1
  %7400 = extractvalue %dx.types.CBufRet.f32 %7397, 2
  %7401 = extractvalue %dx.types.CBufRet.f32 %7397, 3
  %7402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7403 = extractvalue %dx.types.CBufRet.f32 %7402, 0
  %7404 = extractvalue %dx.types.CBufRet.f32 %7402, 1
  %7405 = extractvalue %dx.types.CBufRet.f32 %7402, 2
  %7406 = extractvalue %dx.types.CBufRet.f32 %7402, 3
  %7407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7408 = extractvalue %dx.types.CBufRet.f32 %7407, 0
  %7409 = extractvalue %dx.types.CBufRet.f32 %7407, 1
  %7410 = extractvalue %dx.types.CBufRet.f32 %7407, 2
  %7411 = extractvalue %dx.types.CBufRet.f32 %7407, 3
  %7412 = fmul fast float %7398, %6130
  %7413 = call float @dx.op.tertiary.f32(i32 46, float %6131, float %7399, float %7412)  ; FMad(a,b,c)
  %7414 = call float @dx.op.tertiary.f32(i32 46, float %6132, float %7400, float %7413)  ; FMad(a,b,c)
  %7415 = fadd fast float %7414, %7401
  %7416 = fmul fast float %7403, %6130
  %7417 = call float @dx.op.tertiary.f32(i32 46, float %6131, float %7404, float %7416)  ; FMad(a,b,c)
  %7418 = call float @dx.op.tertiary.f32(i32 46, float %6132, float %7405, float %7417)  ; FMad(a,b,c)
  %7419 = fadd fast float %7418, %7406
  %7420 = fmul fast float %7408, %6130
  %7421 = call float @dx.op.tertiary.f32(i32 46, float %6131, float %7409, float %7420)  ; FMad(a,b,c)
  %7422 = call float @dx.op.tertiary.f32(i32 46, float %6132, float %7410, float %7421)  ; FMad(a,b,c)
  %7423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7424 = extractvalue %dx.types.CBufRet.f32 %7423, 0
  %7425 = extractvalue %dx.types.CBufRet.f32 %7423, 1
  %7426 = extractvalue %dx.types.CBufRet.f32 %7423, 3
  %7427 = fmul fast float %7426, %7415
  %7428 = fmul fast float %7426, %7419
  %7429 = fadd fast float %7427, %7424
  %7430 = fadd fast float %7428, %7425
  %7431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7432 = extractvalue %dx.types.CBufRet.f32 %7431, 0
  %7433 = extractvalue %dx.types.CBufRet.f32 %7431, 1
  %7434 = fsub fast float %7429, %7432
  %7435 = fsub fast float %7430, %7433
  %7436 = fcmp fast olt float %7434, 0.000000e+00
  %7437 = fcmp fast olt float %7435, 0.000000e+00
  %7438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7439 = extractvalue %dx.types.CBufRet.f32 %7438, 0
  %7440 = extractvalue %dx.types.CBufRet.f32 %7438, 1
  %7441 = extractvalue %dx.types.CBufRet.f32 %7438, 2
  %7442 = extractvalue %dx.types.CBufRet.f32 %7438, 3
  %7443 = select i1 %7436, float %7439, float %7441
  %7444 = select i1 %7437, float %7440, float %7442
  %7445 = fmul fast float %7443, %7434
  %7446 = fmul fast float %7444, %7435
  %7447 = call float @dx.op.unary.f32(i32 6, float %7445)  ; FAbs(value)
  %7448 = call float @dx.op.unary.f32(i32 6, float %7446)  ; FAbs(value)
  %7449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7450 = extractvalue %dx.types.CBufRet.f32 %7449, 0
  %7451 = call float @dx.op.binary.f32(i32 35, float %7447, float %7448)  ; FMax(a,b)
  %7452 = fsub fast float %7450, %7451
  %7453 = call float @dx.op.unary.f32(i32 7, float %7452)  ; Saturate(value)
  %7454 = fcmp fast ogt float %7453, 0.000000e+00
  br i1 %7454, label %7455, label %7496, !dx.controlflow.hints !137

; <label>:7455                                    ; preds = %7396
  %7456 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %56, float %7429, float %7430, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7457 = extractvalue %dx.types.ResRet.f32 %7456, 1
  %7458 = fcmp fast ogt float %7457, 0.000000e+00
  br i1 %7458, label %7459, label %7491

; <label>:7459                                    ; preds = %7455
  %7460 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %56, float %7429, float %7430, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7461 = extractvalue %dx.types.ResRet.f32 %7460, 0
  %7462 = extractvalue %dx.types.ResRet.f32 %7460, 1
  %7463 = extractvalue %dx.types.ResRet.f32 %7460, 2
  %7464 = extractvalue %dx.types.ResRet.f32 %7460, 3
  %7465 = fsub fast float 1.000000e+00, %7411
  %7466 = fsub fast float %7465, %7422
  %7467 = fmul fast float %7466, 0x400921FB60000000
  %7468 = fadd fast float %7467, 0x3FF921FB60000000
  %7469 = call float @dx.op.unary.f32(i32 13, float %7468)  ; Sin(value)
  %7470 = fadd fast float %7469, -1.000000e+00
  %7471 = fmul fast float %7470, 0x3FD45F3060000000
  %7472 = fmul fast float %7466, 0x401921FB60000000
  %7473 = fadd fast float %7472, 0x400921FB60000000
  %7474 = call float @dx.op.unary.f32(i32 13, float %7473)  ; Sin(value)
  %7475 = fadd fast float %7474, 0x3E7777A5C0000000
  %7476 = fmul fast float %7475, 0x3FC45F3060000000
  %7477 = fmul fast float %7466, 0x4022D97C80000000
  %7478 = fadd fast float %7477, 0x4012D97C80000000
  %7479 = call float @dx.op.unary.f32(i32 13, float %7478)  ; Sin(value)
  %7480 = fadd fast float %7479, 1.000000e+00
  %7481 = fmul fast float %7480, 0x3FBB2995E0000000
  %7482 = fmul fast float %7466, 0x402921FB60000000
  %7483 = fadd fast float %7482, 0x401921FB60000000
  %7484 = call float @dx.op.unary.f32(i32 13, float %7483)  ; Sin(value)
  %7485 = fadd fast float %7484, 0xBE8777A5C0000000
  %7486 = fmul fast float %7485, 0x3FB45F3060000000
  %7487 = call float @dx.op.dot4.f32(i32 56, float %7461, float %7462, float %7463, float %7464, float %7471, float %7476, float %7481, float %7486)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7488 = fmul fast float %7487, 0xBFF7154760000000
  %7489 = call float @dx.op.unary.f32(i32 21, float %7488)  ; Exp(value)
  %7490 = call float @dx.op.unary.f32(i32 7, float %7489)  ; Saturate(value)
  br label %7491

; <label>:7491                                    ; preds = %7459, %7455
  %7492 = phi float [ %7490, %7459 ], [ 1.000000e+00, %7455 ]
  %7493 = fadd fast float %7492, -1.000000e+00
  %7494 = fmul fast float %7493, %7453
  %7495 = fadd fast float %7494, 1.000000e+00
  br label %7496

; <label>:7496                                    ; preds = %7491, %7396
  %7497 = phi float [ %7495, %7491 ], [ 1.000000e+00, %7396 ]
  %7498 = fmul fast float %7497, %7392
  %7499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7500 = extractvalue %dx.types.CBufRet.f32 %7499, 0
  %7501 = extractvalue %dx.types.CBufRet.f32 %7499, 1
  %7502 = extractvalue %dx.types.CBufRet.f32 %7499, 2
  %7503 = fadd fast float %7500, %207
  %7504 = fadd fast float %7501, %208
  %7505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7506 = extractvalue %dx.types.CBufRet.f32 %7505, 1
  %7507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7508 = extractvalue %dx.types.CBufRet.f32 %7507, 0
  %7509 = extractvalue %dx.types.CBufRet.f32 %7507, 1
  %7510 = extractvalue %dx.types.CBufRet.f32 %7507, 2
  %7511 = fsub fast float -0.000000e+00, %7503
  %7512 = fsub fast float -0.000000e+00, %7504
  %7513 = fsub fast float %5319, %7502
  %7514 = fadd fast float %7513, %7506
  %7515 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7511, float %7512, float %7514)  ; Dot3(ax,ay,az,bx,by,bz)
  %7516 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7508, float %7509, float %7510)  ; Dot3(ax,ay,az,bx,by,bz)
  %7517 = fdiv fast float 1.000000e+00, %7516
  %7518 = fmul fast float %7517, %7515
  %7519 = fmul fast float %7508, %7518
  %7520 = fmul fast float %7509, %7518
  %7521 = fadd fast float %7519, %7503
  %7522 = fadd fast float %7520, %7504
  %7523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7524 = extractvalue %dx.types.CBufRet.f32 %7523, 0
  %7525 = extractvalue %dx.types.CBufRet.f32 %7523, 1
  %7526 = fsub fast float %7521, %7524
  %7527 = fsub fast float %7522, %7525
  %7528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7529 = extractvalue %dx.types.CBufRet.f32 %7528, 2
  %7530 = extractvalue %dx.types.CBufRet.f32 %7528, 3
  %7531 = fmul fast float %7526, %7529
  %7532 = fmul fast float %7527, %7530
  %7533 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7534 = extractvalue %dx.types.CBufRet.i32 %7533, 3
  %7535 = icmp eq i32 %7534, 0
  br i1 %7535, label %7541, label %7536

; <label>:7536                                    ; preds = %7496
  %7537 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %55, float %7531, float %7532, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7538 = extractvalue %dx.types.ResRet.f32 %7537, 0
  %7539 = extractvalue %dx.types.ResRet.f32 %7537, 1
  %7540 = extractvalue %dx.types.ResRet.f32 %7537, 2
  br label %7546

; <label>:7541                                    ; preds = %7496
  %7542 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %56, float %7531, float %7532, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7543 = extractvalue %dx.types.ResRet.f32 %7542, 0
  %7544 = extractvalue %dx.types.ResRet.f32 %7542, 1
  %7545 = extractvalue %dx.types.ResRet.f32 %7542, 2
  br label %7546

; <label>:7546                                    ; preds = %7541, %7536
  %7547 = phi float [ %7538, %7536 ], [ %7543, %7541 ]
  %7548 = phi float [ %7539, %7536 ], [ %7544, %7541 ]
  %7549 = phi float [ %7540, %7536 ], [ %7545, %7541 ]
  %7550 = extractvalue %dx.types.CBufRet.f32 %7505, 2
  %7551 = fmul fast float %7550, %7547
  %7552 = extractvalue %dx.types.CBufRet.f32 %7505, 0
  %7553 = fsub fast float %7518, %7552
  %7554 = fsub fast float %7553, %7551
  %7555 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7554)  ; FMax(a,b)
  %7556 = fmul fast float %7555, %7548
  %7557 = call float @dx.op.binary.f32(i32 36, float %7549, float %7556)  ; FMin(a,b)
  %7558 = fmul fast float %7557, 0xBFF7154760000000
  %7559 = call float @dx.op.unary.f32(i32 21, float %7558)  ; Exp(value)
  %7560 = fmul fast float %7498, %7559
  br label %7561

; <label>:7561                                    ; preds = %7546, %7391
  %7562 = phi float [ %7560, %7546 ], [ %7392, %7391 ]
  %7563 = call float @dx.op.binary.f32(i32 36, float %7562, float %7562)  ; FMin(a,b)
  %7564 = call float @dx.op.binary.f32(i32 36, float %7562, float %7563)  ; FMin(a,b)
  %7565 = fcmp fast ogt float %7564, 0.000000e+00
  br i1 %7565, label %7566, label %7814, !dx.controlflow.hints !138

; <label>:7566                                    ; preds = %7561
  %7567 = fmul fast float %7562, %6122
  %7568 = fmul fast float %7562, %6123
  %7569 = fmul fast float %7562, %6124
  %7570 = fsub fast float %209, %4496
  %7571 = fcmp fast ogt float %7570, 0.000000e+00
  %7572 = fmul fast float %6111, 5.120000e+02
  %7573 = fmul fast float %6112, 5.120000e+02
  %7574 = fmul fast float %6113, 5.120000e+02
  %7575 = fadd fast float %7574, %209
  %7576 = fsub fast float %4496, %7575
  %7577 = fmul fast float %7576, 2.000000e+00
  %7578 = fadd fast float %7577, %7575
  %7579 = select i1 %7571, float %7578, float %7575
  %7580 = fsub fast float %7579, %209
  %7581 = call float @dx.op.dot3.f32(i32 55, float %7572, float %7573, float %7580, float %7572, float %7573, float %7580)  ; Dot3(ax,ay,az,bx,by,bz)
  %7582 = call float @dx.op.unary.f32(i32 25, float %7581)  ; Rsqrt(value)
  %7583 = fmul fast float %7582, %7572
  %7584 = fmul fast float %7582, %7573
  %7585 = fmul fast float %7582, %7580
  %7586 = fsub fast float %4496, %209
  %7587 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7586)  ; Dot3(ax,ay,az,bx,by,bz)
  %7588 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7583, float %7584, float %7585)  ; Dot3(ax,ay,az,bx,by,bz)
  %7589 = fdiv fast float 1.000000e+00, %7588
  %7590 = fmul fast float %7589, %7587
  %7591 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7570, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7592 = fcmp fast ogt float %7591, 0.000000e+00
  %7593 = fcmp fast olt float %7591, 0.000000e+00
  %7594 = zext i1 %7592 to i32
  %7595 = zext i1 %7593 to i32
  %7596 = sub nsw i32 %7594, %7595
  %7597 = sitofp i32 %7596 to float
  %7598 = fsub fast float %7579, %4496
  %7599 = call float @dx.op.dot3.f32(i32 55, float %7572, float %7573, float %7598, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7600 = fcmp fast ogt float %7599, 0.000000e+00
  %7601 = fcmp fast olt float %7599, 0.000000e+00
  %7602 = zext i1 %7600 to i32
  %7603 = zext i1 %7601 to i32
  %7604 = sub nsw i32 %7602, %7603
  %7605 = sitofp i32 %7604 to float
  %7606 = fcmp fast une float %7597, %7605
  br i1 %7606, label %7607, label %7617

; <label>:7607                                    ; preds = %7566
  %7608 = fmul fast float %7590, %7585
  %7609 = fmul fast float %7590, %7584
  %7610 = fmul fast float %7590, %7583
  %7611 = fmul fast float %7610, %7610
  %7612 = fmul fast float %7609, %7609
  %7613 = fadd fast float %7611, %7612
  %7614 = fmul fast float %7608, %7608
  %7615 = fadd fast float %7613, %7614
  %7616 = call float @dx.op.unary.f32(i32 24, float %7615)  ; Sqrt(value)
  br label %7627

; <label>:7617                                    ; preds = %7566
  %7618 = icmp slt i32 %7596, 0
  br i1 %7618, label %7619, label %7627

; <label>:7619                                    ; preds = %7617
  %7620 = fsub fast float %209, %7579
  %7621 = fmul fast float %7572, %7572
  %7622 = fmul fast float %7573, %7573
  %7623 = fadd fast float %7621, %7622
  %7624 = fmul fast float %7620, %7620
  %7625 = fadd fast float %7623, %7624
  %7626 = call float @dx.op.unary.f32(i32 24, float %7625)  ; Sqrt(value)
  br label %7627

; <label>:7627                                    ; preds = %7619, %7617, %7607
  %7628 = phi float [ %7616, %7607 ], [ %7626, %7619 ], [ 0.000000e+00, %7617 ]
  %7629 = fsub fast float -0.000000e+00, %7628
  %7630 = select i1 %7571, float -0.000000e+00, float %7629
  %7631 = fmul fast float %4497, 0x3FF7154760000000
  %7632 = fmul fast float %7631, %7630
  %7633 = fmul fast float %4498, 0x3FF7154760000000
  %7634 = fmul fast float %7633, %7630
  %7635 = fmul fast float %4499, 0x3FF7154760000000
  %7636 = fmul fast float %7635, %7630
  %7637 = call float @dx.op.unary.f32(i32 21, float %7632)  ; Exp(value)
  %7638 = call float @dx.op.unary.f32(i32 21, float %7634)  ; Exp(value)
  %7639 = call float @dx.op.unary.f32(i32 21, float %7636)  ; Exp(value)
  %7640 = call float @dx.op.unary.f32(i32 7, float %7637)  ; Saturate(value)
  %7641 = call float @dx.op.unary.f32(i32 7, float %7638)  ; Saturate(value)
  %7642 = call float @dx.op.unary.f32(i32 7, float %7639)  ; Saturate(value)
  %7643 = fmul fast float %7567, %7640
  %7644 = fmul fast float %7568, %7641
  %7645 = fmul fast float %7569, %7642
  %7646 = fsub fast float %6111, %5322
  %7647 = fsub fast float %6112, %5323
  %7648 = fsub fast float %6113, %5324
  %7649 = call float @dx.op.dot3.f32(i32 55, float %7646, float %7647, float %7648, float %7646, float %7647, float %7648)  ; Dot3(ax,ay,az,bx,by,bz)
  %7650 = call float @dx.op.unary.f32(i32 25, float %7649)  ; Rsqrt(value)
  %7651 = fmul fast float %7650, %7646
  %7652 = fmul fast float %7650, %7647
  %7653 = fmul fast float %7650, %7648
  %7654 = call float @dx.op.dot3.f32(i32 55, float %6111, float %6112, float %6113, float %5282, float %5283, float %5284)  ; Dot3(ax,ay,az,bx,by,bz)
  %7655 = call float @dx.op.dot3.f32(i32 55, float %5325, float %5326, float %5327, float %7651, float %7652, float %7653)  ; Dot3(ax,ay,az,bx,by,bz)
  %7656 = call float @dx.op.unary.f32(i32 7, float %7654)  ; Saturate(value)
  %7657 = bitcast i32 %5354 to float
  %7658 = fmul fast float %7656, %7656
  %7659 = fmul fast float %7658, %7657
  %7660 = call float @dx.op.unary.f32(i32 7, float %7659)  ; Saturate(value)
  %7661 = fmul fast float %7660, %7656
  %7662 = call float @dx.op.dot3.f32(i32 55, float %5282, float %5283, float %5284, float %7651, float %7652, float %7653)  ; Dot3(ax,ay,az,bx,by,bz)
  %7663 = fmul fast float %7662, %7662
  %7664 = call float @dx.op.unary.f32(i32 6, float %7654)  ; FAbs(value)
  %7665 = fsub fast float 1.000000e+00, %5348
  %7666 = fmul fast float %5330, %5330
  %7667 = fmul fast float %7666, %7665
  %7668 = fadd fast float %7667, %5348
  %7669 = bitcast float %7668 to i32
  %7670 = ashr i32 %7669, 1
  %7671 = add nsw i32 %7670, 532487669
  %7672 = bitcast i32 %7671 to float
  %7673 = fadd fast float %7672, %5330
  %7674 = fmul fast float %5348, %7663
  %7675 = fsub fast float 1.000000e+00, %7663
  %7676 = fadd fast float %7675, %7674
  %7677 = fmul fast float %7664, %7664
  %7678 = fmul fast float %7677, %7665
  %7679 = fadd fast float %7678, %5348
  %7680 = bitcast float %7679 to i32
  %7681 = ashr i32 %7680, 1
  %7682 = add nsw i32 %7681, 532487669
  %7683 = bitcast i32 %7682 to float
  %7684 = fadd fast float %7683, %7664
  %7685 = fmul fast float %7676, %7676
  %7686 = fmul fast float %7685, %7673
  %7687 = fmul fast float %7686, %7684
  %7688 = fdiv fast float 0x3FF0A00000000000, %7687
  %7689 = fmul fast float %7688, %5348
  %7690 = call float @dx.op.unary.f32(i32 6, float %7655)  ; FAbs(value)
  %7691 = fsub fast float 1.000000e+00, %7690
  %7692 = bitcast float %7691 to i32
  %7693 = sitofp i32 %7692 to float
  %7694 = fmul fast float %7693, 5.000000e+00
  %7695 = fadd fast float %7694, 0xC1EFBF8940000000
  %7696 = fptosi float %7695 to i32
  %7697 = bitcast i32 %7696 to float
  %7698 = fsub fast float 1.000000e+00, %5279
  %7699 = fsub fast float 1.000000e+00, %5280
  %7700 = fsub fast float 1.000000e+00, %5328
  %7701 = fmul fast float %7697, %7698
  %7702 = fmul fast float %7697, %7699
  %7703 = fmul fast float %7697, %7700
  %7704 = fadd fast float %7701, %5279
  %7705 = fadd fast float %7702, %5280
  %7706 = fadd fast float %7703, %5328
  br i1 %5470, label %7707, label %7730

; <label>:7707                                    ; preds = %7627
  %7708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %56, float %4095, float %7690, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7709 = extractvalue %dx.types.ResRet.f32 %7708, 0
  %7710 = extractvalue %dx.types.ResRet.f32 %7708, 1
  %7711 = extractvalue %dx.types.ResRet.f32 %7708, 2
  %7712 = fadd fast float %7709, -5.000000e-01
  %7713 = fadd fast float %7710, -5.000000e-01
  %7714 = fadd fast float %7711, -5.000000e-01
  %7715 = fmul fast float %5279, 4.000000e+00
  %7716 = fmul fast float %7715, %7698
  %7717 = fmul fast float %7716, %7712
  %7718 = fmul fast float %5280, 4.000000e+00
  %7719 = fmul fast float %7718, %7699
  %7720 = fmul fast float %7719, %7713
  %7721 = fmul fast float %5328, 4.000000e+00
  %7722 = fmul fast float %7721, %7700
  %7723 = fmul fast float %7722, %7714
  %7724 = fadd fast float %7717, %7704
  %7725 = fadd fast float %7720, %7705
  %7726 = fadd fast float %7723, %7706
  %7727 = call float @dx.op.unary.f32(i32 7, float %7724)  ; Saturate(value)
  %7728 = call float @dx.op.unary.f32(i32 7, float %7725)  ; Saturate(value)
  %7729 = call float @dx.op.unary.f32(i32 7, float %7726)  ; Saturate(value)
  br label %7730

; <label>:7730                                    ; preds = %7707, %7627
  %7731 = phi float [ %7727, %7707 ], [ %7704, %7627 ]
  %7732 = phi float [ %7728, %7707 ], [ %7705, %7627 ]
  %7733 = phi float [ %7729, %7707 ], [ %7706, %7627 ]
  %7734 = fmul fast float %7654, 9.843750e-01
  %7735 = fadd fast float %7734, 7.812500e-03
  %7736 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %56, float %7735, float %5460, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7737 = extractvalue %dx.types.ResRet.f32 %7736, 2
  %7738 = extractvalue %dx.types.ResRet.f32 %7736, 3
  %7739 = fmul fast float %7737, %5279
  %7740 = fmul fast float %7737, %5280
  %7741 = fmul fast float %7737, %5328
  %7742 = fadd fast float %7739, %7738
  %7743 = fadd fast float %7740, %7738
  %7744 = fadd fast float %7741, %7738
  br i1 %5470, label %7745, label %7768

; <label>:7745                                    ; preds = %7730
  %7746 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %56, float %4095, float %7654, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7747 = extractvalue %dx.types.ResRet.f32 %7746, 0
  %7748 = extractvalue %dx.types.ResRet.f32 %7746, 1
  %7749 = extractvalue %dx.types.ResRet.f32 %7746, 2
  %7750 = fadd fast float %7747, -5.000000e-01
  %7751 = fadd fast float %7748, -5.000000e-01
  %7752 = fadd fast float %7749, -5.000000e-01
  %7753 = fmul fast float %5279, 4.000000e+00
  %7754 = fmul fast float %7753, %7698
  %7755 = fmul fast float %7754, %7750
  %7756 = fmul fast float %5280, 4.000000e+00
  %7757 = fmul fast float %7756, %7699
  %7758 = fmul fast float %7757, %7751
  %7759 = fmul fast float %5328, 4.000000e+00
  %7760 = fmul fast float %7759, %7700
  %7761 = fmul fast float %7760, %7752
  %7762 = fadd fast float %7755, %7742
  %7763 = fadd fast float %7758, %7743
  %7764 = fadd fast float %7761, %7744
  %7765 = call float @dx.op.unary.f32(i32 7, float %7762)  ; Saturate(value)
  %7766 = call float @dx.op.unary.f32(i32 7, float %7763)  ; Saturate(value)
  %7767 = call float @dx.op.unary.f32(i32 7, float %7764)  ; Saturate(value)
  br label %7768

; <label>:7768                                    ; preds = %7745, %7730
  %7769 = phi float [ %7765, %7745 ], [ %7742, %7730 ]
  %7770 = phi float [ %7766, %7745 ], [ %7743, %7730 ]
  %7771 = phi float [ %7767, %7745 ], [ %7744, %7730 ]
  %7772 = call float @dx.op.binary.f32(i32 35, float %7770, float %7771)  ; FMax(a,b)
  %7773 = call float @dx.op.binary.f32(i32 35, float %7769, float %7772)  ; FMax(a,b)
  %7774 = fsub fast float 1.000000e+00, %7773
  %7775 = fmul fast float %7731, %7689
  %7776 = fmul fast float %7732, %7689
  %7777 = fmul fast float %7733, %7689
  %7778 = fsub fast float 1.000000e+00, %7655
  %7779 = bitcast float %7778 to i32
  %7780 = sitofp i32 %7779 to float
  %7781 = fmul fast float %7780, 5.000000e+00
  %7782 = fadd fast float %7781, 0xC1EFBF8940000000
  %7783 = fptosi float %7782 to i32
  %7784 = bitcast i32 %7783 to float
  %7785 = fmul fast float %7784, %4096
  %7786 = fmul fast float %7774, %7785
  %7787 = fmul fast float %7786, %6065
  %7788 = fmul fast float %7786, %6066
  %7789 = fmul fast float %7786, %6067
  %7790 = fadd fast float %7787, %7775
  %7791 = fadd fast float %7788, %7776
  %7792 = fadd fast float %7789, %7777
  %7793 = fmul fast float %7661, %7643
  %7794 = fmul fast float %7793, %7774
  %7795 = fmul fast float %7661, %7644
  %7796 = fmul fast float %7795, %7774
  %7797 = fmul fast float %7661, %7645
  %7798 = fmul fast float %7797, %7774
  %7799 = fmul fast float %7793, %7790
  %7800 = fmul fast float %7795, %7791
  %7801 = fmul fast float %7797, %7792
  %7802 = fadd fast float %7794, %6047
  %7803 = fmul fast float %7802, %4092
  %7804 = fadd fast float %7796, %6049
  %7805 = fmul fast float %7804, %4092
  %7806 = fadd fast float %7798, %6051
  %7807 = fmul fast float %7806, %4092
  %7808 = fadd fast float %7799, %6099
  %7809 = fmul fast float %7808, %4092
  %7810 = fadd fast float %7800, %6102
  %7811 = fmul fast float %7810, %4092
  %7812 = fadd fast float %7801, %6105
  %7813 = fmul fast float %7812, %4092
  br label %7814

; <label>:7814                                    ; preds = %7768, %7561, %5992
  %7815 = phi float [ %6100, %5992 ], [ %6100, %7561 ], [ %7809, %7768 ]
  %7816 = phi float [ %6103, %5992 ], [ %6103, %7561 ], [ %7811, %7768 ]
  %7817 = phi float [ %6106, %5992 ], [ %6106, %7561 ], [ %7813, %7768 ]
  %7818 = phi float [ %6095, %5992 ], [ %6095, %7561 ], [ %7803, %7768 ]
  %7819 = phi float [ %6096, %5992 ], [ %6096, %7561 ], [ %7805, %7768 ]
  %7820 = phi float [ %6097, %5992 ], [ %6097, %7561 ], [ %7807, %7768 ]
  %7821 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7822 = extractvalue %dx.types.CBufRet.i32 %7821, 0
  %7823 = icmp eq i32 %7822, 0
  br i1 %7823, label %8487, label %7824

; <label>:7824                                    ; preds = %7814
  %7825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7826 = extractvalue %dx.types.CBufRet.f32 %7825, 2
  %7827 = extractvalue %dx.types.CBufRet.f32 %7825, 3
  %7828 = fmul fast float %7826, %120
  %7829 = fmul fast float %7827, %121
  %7830 = fptoui float %7828 to i32
  %7831 = fptoui float %7829 to i32
  %7832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7833 = extractvalue %dx.types.CBufRet.f32 %7832, 0
  %7834 = extractvalue %dx.types.CBufRet.f32 %7832, 2
  %7835 = extractvalue %dx.types.CBufRet.f32 %7832, 3
  %7836 = fadd fast float %107, -4.000000e+00
  %7837 = call float @dx.op.binary.f32(i32 35, float %7836, float 0.000000e+00)  ; FMax(a,b)
  %7838 = fadd fast float %7837, %7833
  %7839 = fmul fast float %7838, %7834
  %7840 = call float @dx.op.unary.f32(i32 23, float %7839)  ; Log(value)
  %7841 = fmul fast float %7840, %7835
  %7842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7843 = extractvalue %dx.types.CBufRet.f32 %7842, 2
  %7844 = fmul fast float %7841, %7843
  %7845 = call float @dx.op.unary.f32(i32 7, float %7844)  ; Saturate(value)
  %7846 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7847 = extractvalue %dx.types.CBufRet.i32 %7846, 1
  %7848 = add i32 %7847, -1
  %7849 = uitofp i32 %7847 to float
  %7850 = fmul fast float %7849, %7845
  %7851 = fptoui float %7850 to i32
  %7852 = call i32 @dx.op.binary.i32(i32 40, i32 %7851, i32 %7848)  ; UMin(a,b)
  %7853 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7854 = extractvalue %dx.types.CBufRet.i32 %7853, 2
  %7855 = extractvalue %dx.types.CBufRet.i32 %7853, 3
  %7856 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7831, i32 %7854, i32 %7830)  ; UMad(a,b,c)
  %7857 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7852, i32 %7855, i32 %7856)  ; UMad(a,b,c)
  %7858 = add nsw i32 %7822, -1
  %7859 = call i32 @dx.op.binary.i32(i32 37, i32 %7858, i32 0)  ; IMax(a,b)
  %7860 = call float @dx.op.binary.f32(i32 35, float %107, float 0.000000e+00)  ; FMax(a,b)
  %7861 = fptoui float %7860 to i32
  %7862 = lshr i32 %7861, 5
  %7863 = call i32 @dx.op.binary.i32(i32 40, i32 %7862, i32 8191)  ; UMin(a,b)
  %7864 = shl i32 %7863, 2
  %7865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7864, i32 undef)  ; BufferLoad(srv,index,wot)
  %7866 = extractvalue %dx.types.ResRet.i32 %7865, 0
  %7867 = lshr i32 %7866, 16
  %7868 = and i32 %7866, 65535
  %7869 = lshr i32 %7866, 21
  %7870 = lshr i32 %7868, 5
  %7871 = call i32 @dx.op.binary.i32(i32 40, i32 %7870, i32 %7859)  ; UMin(a,b)
  %7872 = icmp ugt i32 %7869, %7871
  br i1 %7872, label %8487, label %7873

; <label>:7873                                    ; preds = %7824
  br label %7874

; <label>:7874                                    ; preds = %8477, %7873
  %7875 = phi i32 [ %8484, %8477 ], [ %7869, %7873 ]
  %7876 = phi float [ %8478, %8477 ], [ %7815, %7873 ]
  %7877 = phi float [ %8479, %8477 ], [ %7816, %7873 ]
  %7878 = phi float [ %8480, %8477 ], [ %7817, %7873 ]
  %7879 = phi float [ %8481, %8477 ], [ %7818, %7873 ]
  %7880 = phi float [ %8482, %8477 ], [ %7819, %7873 ]
  %7881 = phi float [ %8483, %8477 ], [ %7820, %7873 ]
  %7882 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7883 = extractvalue %dx.types.CBufRet.i32 %7882, 0
  %7884 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7857, i32 %7883, i32 %7875)  ; UMad(a,b,c)
  %7885 = shl i32 %7884, 2
  %7886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7885, i32 undef)  ; BufferLoad(srv,index,wot)
  %7887 = extractvalue %dx.types.ResRet.i32 %7886, 0
  %7888 = shl i32 %7875, 5
  %7889 = sub nsw i32 %7867, %7888
  %7890 = call i32 @dx.op.binary.i32(i32 37, i32 %7889, i32 0)  ; IMax(a,b)
  %7891 = call i32 @dx.op.binary.i32(i32 38, i32 %7890, i32 31)  ; IMin(a,b)
  %7892 = sub nsw i32 1, %7867
  %7893 = add nsw i32 %7892, %7868
  %7894 = call i32 @dx.op.binary.i32(i32 37, i32 %7893, i32 0)  ; IMax(a,b)
  %7895 = call i32 @dx.op.binary.i32(i32 38, i32 %7894, i32 32)  ; IMin(a,b)
  %7896 = and i32 %7895, 31
  %7897 = shl i32 -1, %7896
  %7898 = xor i32 %7897, -1
  %7899 = and i32 %7891, 31
  %7900 = shl i32 %7898, %7899
  %7901 = icmp eq i32 %7895, 32
  %7902 = select i1 %7901, i32 -1, i32 %7900
  %7903 = and i32 %7902, %7887
  %7904 = icmp eq i32 %7903, 0
  br i1 %7904, label %8477, label %7905

; <label>:7905                                    ; preds = %7874
  br label %7906

; <label>:7906                                    ; preds = %8040, %7905
  %7907 = phi i32 [ %7918, %8040 ], [ %7903, %7905 ]
  %7908 = phi float [ %8041, %8040 ], [ %7876, %7905 ]
  %7909 = phi float [ %8042, %8040 ], [ %7877, %7905 ]
  %7910 = phi float [ %8043, %8040 ], [ %7878, %7905 ]
  %7911 = phi float [ %8044, %8040 ], [ %7879, %7905 ]
  %7912 = phi float [ %8045, %8040 ], [ %7880, %7905 ]
  %7913 = phi float [ %8046, %8040 ], [ %7881, %7905 ]
  %7914 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7907)  ; FirstbitLo(value)
  %7915 = add i32 %7914, %7888
  %7916 = and i32 %7914, 31
  %7917 = shl i32 1, %7916
  %7918 = xor i32 %7917, %7907
  %7919 = mul i32 %7915, 112
  %7920 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7919, i32 undef)  ; BufferLoad(srv,index,wot)
  %7921 = extractvalue %dx.types.ResRet.f32 %7920, 0
  %7922 = extractvalue %dx.types.ResRet.f32 %7920, 1
  %7923 = extractvalue %dx.types.ResRet.f32 %7920, 2
  %7924 = or i32 %7919, 12
  %7925 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7924, i32 undef)  ; BufferLoad(srv,index,wot)
  %7926 = extractvalue %dx.types.ResRet.f32 %7925, 0
  %7927 = add i32 %7919, 16
  %7928 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7927, i32 undef)  ; BufferLoad(srv,index,wot)
  %7929 = extractvalue %dx.types.ResRet.f32 %7928, 0
  %7930 = extractvalue %dx.types.ResRet.f32 %7928, 1
  %7931 = extractvalue %dx.types.ResRet.f32 %7928, 2
  %7932 = add i32 %7919, 28
  %7933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7932, i32 undef)  ; BufferLoad(srv,index,wot)
  %7934 = extractvalue %dx.types.ResRet.i32 %7933, 0
  %7935 = add i32 %7919, 44
  %7936 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7935, i32 undef)  ; BufferLoad(srv,index,wot)
  %7937 = extractvalue %dx.types.ResRet.f32 %7936, 0
  %7938 = add i32 %7919, 48
  %7939 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7938, i32 undef)  ; BufferLoad(srv,index,wot)
  %7940 = extractvalue %dx.types.ResRet.f32 %7939, 0
  %7941 = extractvalue %dx.types.ResRet.f32 %7939, 1
  %7942 = extractvalue %dx.types.ResRet.f32 %7939, 2
  %7943 = extractvalue %dx.types.ResRet.f32 %7939, 3
  %7944 = add i32 %7919, 64
  %7945 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7944, i32 undef)  ; BufferLoad(srv,index,wot)
  %7946 = extractvalue %dx.types.ResRet.f32 %7945, 0
  %7947 = extractvalue %dx.types.ResRet.f32 %7945, 1
  %7948 = extractvalue %dx.types.ResRet.f32 %7945, 2
  %7949 = extractvalue %dx.types.ResRet.f32 %7945, 3
  %7950 = add i32 %7919, 80
  %7951 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7950, i32 undef)  ; BufferLoad(srv,index,wot)
  %7952 = extractvalue %dx.types.ResRet.f32 %7951, 1
  %7953 = extractvalue %dx.types.ResRet.f32 %7951, 2
  %7954 = add i32 %7919, 92
  %7955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7954, i32 undef)  ; BufferLoad(srv,index,wot)
  %7956 = extractvalue %dx.types.ResRet.i32 %7955, 0
  %7957 = call float @dx.op.dot3.f32(i32 55, float %7921, float %7922, float %7923, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7958 = select i1 %279, float %7952, float %7921
  %7959 = select i1 %279, float %7957, float %7922
  %7960 = select i1 %279, float %7953, float %7923
  %7961 = and i32 %7956, 65535
  %7962 = uitofp i32 %7961 to float
  %7963 = lshr i32 %7956, 16
  %7964 = uitofp i32 %7963 to float
  %7965 = and i32 %7934, 65535
  %7966 = and i32 %7934, 50331648
  %7967 = icmp eq i32 %7966, 33554432
  %7968 = fsub fast float %7940, %207
  %7969 = fsub fast float %7941, %208
  %7970 = fsub fast float %7942, %209
  %7971 = call float @dx.op.dot3.f32(i32 55, float %7968, float %7969, float %7970, float %7968, float %7969, float %7970)  ; Dot3(ax,ay,az,bx,by,bz)
  %7972 = call float @dx.op.unary.f32(i32 24, float %7971)  ; Sqrt(value)
  %7973 = fdiv fast float 1.000000e+00, %7972
  %7974 = fmul fast float %7973, %7968
  %7975 = fmul fast float %7973, %7969
  %7976 = fmul fast float %7973, %7970
  %7977 = fadd fast float %7972, %7926
  %7978 = fdiv fast float 1.000000e+00, %7977
  %7979 = fmul float %7937, %7978
  %7980 = fmul float %7979, %7979
  %7981 = call float @dx.op.unary.f32(i32 7, float %7980)  ; Saturate(value)
  br i1 %7967, label %7982, label %8003

; <label>:7982                                    ; preds = %7906
  %7983 = fmul fast float %7948, %7929
  %7984 = fmul fast float %7948, %7930
  %7985 = fmul fast float %7948, %7931
  %7986 = fadd fast float %7968, %7983
  %7987 = fadd fast float %7969, %7984
  %7988 = fadd fast float %7970, %7985
  %7989 = call float @dx.op.dot3.f32(i32 55, float %7986, float %7987, float %7988, float %7986, float %7987, float %7988)  ; Dot3(ax,ay,az,bx,by,bz)
  %7990 = call float @dx.op.unary.f32(i32 25, float %7989)  ; Rsqrt(value)
  %7991 = fmul fast float %7990, %7986
  %7992 = fmul fast float %7990, %7987
  %7993 = fmul fast float %7990, %7988
  %7994 = fsub fast float %207, %7940
  %7995 = fsub fast float %208, %7941
  %7996 = fsub fast float %209, %7942
  %7997 = fsub fast float -0.000000e+00, %7994
  %7998 = fsub fast float -0.000000e+00, %7995
  %7999 = fsub fast float -0.000000e+00, %7996
  %8000 = call float @dx.op.dot3.f32(i32 55, float %7997, float %7998, float %7999, float %7929, float %7930, float %7931)  ; Dot3(ax,ay,az,bx,by,bz)
  %8001 = fcmp fast ogt float %8000, 0.000000e+00
  %8002 = uitofp i1 %8001 to float
  br label %8003

; <label>:8003                                    ; preds = %7982, %7906
  %8004 = phi float [ %8002, %7982 ], [ 1.000000e+00, %7906 ]
  %8005 = phi float [ %7991, %7982 ], [ %7974, %7906 ]
  %8006 = phi float [ %7992, %7982 ], [ %7975, %7906 ]
  %8007 = phi float [ %7993, %7982 ], [ %7976, %7906 ]
  %8008 = call float @dx.op.dot3.f32(i32 55, float %7929, float %7930, float %7931, float %8005, float %8006, float %8007)  ; Dot3(ax,ay,az,bx,by,bz)
  %8009 = fmul fast float %8008, %8008
  %8010 = call float @dx.op.unary.f32(i32 7, float %8009)  ; Saturate(value)
  %8011 = fsub fast float 1.000000e+00, %8010
  %8012 = fmul fast float %8011, 5.000000e-01
  %8013 = fcmp fast ogt float %8008, 0.000000e+00
  %8014 = fsub fast float 1.000000e+00, %8012
  %8015 = select i1 %8013, float %8012, float %8014
  %8016 = fmul fast float %8015, %7964
  %8017 = fadd fast float %8016, %7962
  %8018 = fmul fast float %8017, 0x3EF0001000000000
  %8019 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %56, float %8018, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8020 = extractvalue %dx.types.ResRet.f32 %8019, 0
  %8021 = fmul fast float %8008, %7946
  %8022 = fadd fast float %8021, %7947
  %8023 = call float @dx.op.unary.f32(i32 7, float %8022)  ; Saturate(value)
  %8024 = select i1 %7967, float 1.000000e+00, float %8023
  %8025 = select i1 %7967, float %8023, float 1.000000e+00
  %8026 = fmul fast float %7972, %7943
  %8027 = fsub fast float 1.000000e+00, %8026
  %8028 = fmul fast float %8027, %7949
  %8029 = call float @dx.op.unary.f32(i32 7, float %8028)  ; Saturate(value)
  %8030 = fmul fast float %8029, %8025
  %8031 = fmul fast float %8030, 2.000000e+00
  %8032 = fsub fast float 3.000000e+00, %8031
  %8033 = fmul fast float %8020, %8004
  %8034 = fmul fast float %8030, %8030
  %8035 = fmul fast float %8034, %8033
  %8036 = fmul fast float %8035, %8032
  %8037 = call float @dx.op.binary.f32(i32 36, float %8036, float %8036)  ; FMin(a,b)
  %8038 = call float @dx.op.binary.f32(i32 36, float %8036, float %8037)  ; FMin(a,b)
  %8039 = fcmp fast ogt float %8038, 0.000000e+00
  br i1 %8039, label %8048, label %8040, !dx.controlflow.hints !139

; <label>:8040                                    ; preds = %8433, %8194, %8003
  %8041 = phi float [ %7908, %8194 ], [ %7908, %8003 ], [ %8473, %8433 ]
  %8042 = phi float [ %7909, %8194 ], [ %7909, %8003 ], [ %8474, %8433 ]
  %8043 = phi float [ %7910, %8194 ], [ %7910, %8003 ], [ %8475, %8433 ]
  %8044 = phi float [ %7911, %8194 ], [ %7911, %8003 ], [ %8467, %8433 ]
  %8045 = phi float [ %7912, %8194 ], [ %7912, %8003 ], [ %8468, %8433 ]
  %8046 = phi float [ %7913, %8194 ], [ %7913, %8003 ], [ %8469, %8433 ]
  %8047 = icmp eq i32 %7907, %7917
  br i1 %8047, label %8476, label %7906

; <label>:8048                                    ; preds = %8003
  %8049 = icmp eq i32 %7965, 255
  br i1 %8049, label %8194, label %8050, !dx.controlflow.hints !140

; <label>:8050                                    ; preds = %8048
  %8051 = mul nuw nsw i32 %7965, 176
  %8052 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8051, i32 undef)  ; BufferLoad(srv,index,wot)
  %8053 = extractvalue %dx.types.ResRet.f32 %8052, 0
  %8054 = extractvalue %dx.types.ResRet.f32 %8052, 1
  %8055 = extractvalue %dx.types.ResRet.f32 %8052, 2
  %8056 = extractvalue %dx.types.ResRet.f32 %8052, 3
  %8057 = add nuw nsw i32 %8051, 16
  %8058 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8057, i32 undef)  ; BufferLoad(srv,index,wot)
  %8059 = extractvalue %dx.types.ResRet.f32 %8058, 0
  %8060 = extractvalue %dx.types.ResRet.f32 %8058, 1
  %8061 = add nuw nsw i32 %8051, 32
  %8062 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8061, i32 undef)  ; BufferLoad(srv,index,wot)
  %8063 = extractvalue %dx.types.ResRet.f32 %8062, 0
  %8064 = extractvalue %dx.types.ResRet.f32 %8062, 1
  %8065 = extractvalue %dx.types.ResRet.f32 %8062, 2
  %8066 = add nuw nsw i32 %8051, 48
  %8067 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8066, i32 undef)  ; BufferLoad(srv,index,wot)
  %8068 = extractvalue %dx.types.ResRet.f32 %8067, 0
  %8069 = extractvalue %dx.types.ResRet.f32 %8067, 1
  %8070 = extractvalue %dx.types.ResRet.f32 %8067, 2
  %8071 = extractvalue %dx.types.ResRet.f32 %8067, 3
  %8072 = add nuw nsw i32 %8051, 64
  %8073 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8072, i32 undef)  ; BufferLoad(srv,index,wot)
  %8074 = extractvalue %dx.types.ResRet.f32 %8073, 0
  %8075 = extractvalue %dx.types.ResRet.f32 %8073, 1
  %8076 = extractvalue %dx.types.ResRet.f32 %8073, 2
  %8077 = extractvalue %dx.types.ResRet.f32 %8073, 3
  %8078 = add nuw nsw i32 %8051, 80
  %8079 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8078, i32 undef)  ; BufferLoad(srv,index,wot)
  %8080 = extractvalue %dx.types.ResRet.f32 %8079, 0
  %8081 = extractvalue %dx.types.ResRet.f32 %8079, 1
  %8082 = extractvalue %dx.types.ResRet.f32 %8079, 2
  %8083 = extractvalue %dx.types.ResRet.f32 %8079, 3
  %8084 = add nuw nsw i32 %8051, 96
  %8085 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8084, i32 undef)  ; BufferLoad(srv,index,wot)
  %8086 = extractvalue %dx.types.ResRet.f32 %8085, 0
  %8087 = extractvalue %dx.types.ResRet.f32 %8085, 1
  %8088 = extractvalue %dx.types.ResRet.f32 %8085, 2
  %8089 = extractvalue %dx.types.ResRet.f32 %8085, 3
  %8090 = bitcast float %8060 to i32
  %8091 = fmul fast float %8065, %127
  %8092 = fmul fast float %8065, %128
  %8093 = fmul fast float %8065, %129
  %8094 = fadd fast float %8091, %207
  %8095 = fadd fast float %8092, %208
  %8096 = fadd fast float %8093, %209
  %8097 = fmul fast float %8094, %8068
  %8098 = call float @dx.op.tertiary.f32(i32 46, float %8095, float %8074, float %8097)  ; FMad(a,b,c)
  %8099 = call float @dx.op.tertiary.f32(i32 46, float %8096, float %8080, float %8098)  ; FMad(a,b,c)
  %8100 = fadd fast float %8099, %8086
  %8101 = fmul fast float %8094, %8069
  %8102 = call float @dx.op.tertiary.f32(i32 46, float %8095, float %8075, float %8101)  ; FMad(a,b,c)
  %8103 = call float @dx.op.tertiary.f32(i32 46, float %8096, float %8081, float %8102)  ; FMad(a,b,c)
  %8104 = fadd fast float %8103, %8087
  %8105 = fmul fast float %8094, %8070
  %8106 = call float @dx.op.tertiary.f32(i32 46, float %8095, float %8076, float %8105)  ; FMad(a,b,c)
  %8107 = call float @dx.op.tertiary.f32(i32 46, float %8096, float %8082, float %8106)  ; FMad(a,b,c)
  %8108 = fadd fast float %8107, %8088
  %8109 = fmul fast float %8094, %8071
  %8110 = call float @dx.op.tertiary.f32(i32 46, float %8095, float %8077, float %8109)  ; FMad(a,b,c)
  %8111 = call float @dx.op.tertiary.f32(i32 46, float %8096, float %8083, float %8110)  ; FMad(a,b,c)
  %8112 = fadd fast float %8111, %8089
  %8113 = fdiv fast float %8100, %8112
  %8114 = fdiv fast float %8104, %8112
  %8115 = fdiv fast float %8108, %8112
  %8116 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8115)  ; FMax(a,b)
  %8117 = fmul fast float %290, 0x401921FB60000000
  %8118 = call float @dx.op.unary.f32(i32 13, float %8117)  ; Sin(value)
  %8119 = call float @dx.op.unary.f32(i32 12, float %8117)  ; Cos(value)
  %8120 = fmul fast float %8119, %8064
  %8121 = call float @dx.op.tertiary.f32(i32 46, float %8118, float %8064, float 0.000000e+00)  ; FMad(a,b,c)
  %8122 = fmul fast float %8064, %8118
  %8123 = fsub fast float -0.000000e+00, %8122
  %8124 = call float @dx.op.tertiary.f32(i32 46, float %8119, float %8064, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8125

; <label>:8125                                    ; preds = %8125, %8050
  %8126 = phi float [ 0.000000e+00, %8050 ], [ %8158, %8125 ]
  %8127 = phi float [ 0.000000e+00, %8050 ], [ %8160, %8125 ]
  %8128 = phi i32 [ 0, %8050 ], [ %8161, %8125 ]
  %8129 = mul i32 %8128, 2
  %8130 = add i32 0, %8129
  %8131 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8130
  %8132 = load float, float* %8131, align 4
  %8133 = mul i32 %8128, 2
  %8134 = add i32 1, %8133
  %8135 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8134
  %8136 = load float, float* %8135, align 4
  %8137 = fmul fast float %8120, %8132
  %8138 = call float @dx.op.tertiary.f32(i32 46, float %8136, float %8123, float %8137)  ; FMad(a,b,c)
  %8139 = fmul fast float %8132, %8121
  %8140 = call float @dx.op.tertiary.f32(i32 46, float %8136, float %8124, float %8139)  ; FMad(a,b,c)
  %8141 = fadd fast float %8138, %8113
  %8142 = fadd fast float %8140, %8114
  %8143 = fmul fast float %8141, %8059
  %8144 = fmul fast float %8142, %8059
  %8145 = call float @dx.op.binary.f32(i32 35, float %8143, float %8055)  ; FMax(a,b)
  %8146 = call float @dx.op.binary.f32(i32 35, float %8144, float %8055)  ; FMax(a,b)
  %8147 = call float @dx.op.binary.f32(i32 36, float %8145, float %8056)  ; FMin(a,b)
  %8148 = call float @dx.op.binary.f32(i32 36, float %8146, float %8056)  ; FMin(a,b)
  %8149 = fadd fast float %8147, %8053
  %8150 = fadd fast float %8148, %8054
  %8151 = uitofp i32 %8090 to float
  %8152 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %57, float %8149, float %8150, float %8151, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8153 = extractvalue %dx.types.ResRet.f32 %8152, 0
  %8154 = fsub fast float %8153, %8116
  %8155 = fsub fast float %8154, %8063
  %8156 = fcmp fast ogt float %8155, 0.000000e+00
  %8157 = select i1 %8156, float 1.000000e+00, float 0.000000e+00
  %8158 = fadd fast float %8157, %8126
  %8159 = select i1 %8156, float %8155, float 0.000000e+00
  %8160 = fadd fast float %8159, %8127
  %8161 = add nuw nsw i32 %8128, 1
  %8162 = icmp eq i32 %8161, 8
  br i1 %8162, label %8163, label %8125

; <label>:8163                                    ; preds = %8125
  %8164 = fdiv fast float 1.000000e+00, %8158
  %8165 = fmul fast float %8164, %8160
  %8166 = fdiv fast float 1.000000e+00, %8116
  %8167 = fmul fast float %8165, %8166
  %8168 = call float @dx.op.unary.f32(i32 7, float %8167)  ; Saturate(value)
  %8169 = call float @dx.op.binary.f32(i32 35, float %8168, float 0.000000e+00)  ; FMax(a,b)
  %8170 = fmul fast float %8158, 1.250000e-01
  %8171 = call float @dx.op.unary.f32(i32 7, float %8170)  ; Saturate(value)
  %8172 = fmul fast float %8171, 2.000000e+00
  %8173 = fadd fast float %8172, -1.000000e+00
  %8174 = fcmp fast ogt float %8173, 0.000000e+00
  %8175 = fcmp fast olt float %8173, 0.000000e+00
  %8176 = zext i1 %8174 to i32
  %8177 = zext i1 %8175 to i32
  %8178 = sub nsw i32 %8176, %8177
  %8179 = sitofp i32 %8178 to float
  %8180 = fmul fast float %8179, %8173
  %8181 = fsub fast float 1.000000e+00, %8180
  %8182 = fmul fast float %8181, %8181
  %8183 = fmul fast float %8182, %8181
  %8184 = fsub fast float %8181, %8183
  %8185 = fmul fast float %8184, %8169
  %8186 = fsub fast float 1.000000e+00, %8183
  %8187 = fsub fast float %8186, %8185
  %8188 = fmul fast float %8179, 5.000000e-01
  %8189 = fmul fast float %8188, %8187
  %8190 = fsub fast float -5.000000e-01, %8189
  %8191 = fmul fast float %8190, %8024
  %8192 = fadd fast float %8191, 1.000000e+00
  %8193 = fmul fast float %8192, %8036
  br label %8194

; <label>:8194                                    ; preds = %8163, %8048
  %8195 = phi float [ %8193, %8163 ], [ %8036, %8048 ]
  %8196 = call float @dx.op.binary.f32(i32 36, float %8195, float %8195)  ; FMin(a,b)
  %8197 = call float @dx.op.binary.f32(i32 36, float %8195, float %8196)  ; FMin(a,b)
  %8198 = fcmp fast ogt float %8197, 0.000000e+00
  br i1 %8198, label %8199, label %8040, !dx.controlflow.hints !141

; <label>:8199                                    ; preds = %8194
  %8200 = fmul fast float %8195, %7958
  %8201 = fmul fast float %8195, %7959
  %8202 = fmul fast float %8195, %7960
  %8203 = fsub fast float %7942, %4496
  %8204 = fcmp fast ogt float %8203, 0.000000e+00
  %8205 = fsub fast float %209, %4496
  %8206 = fcmp fast ogt float %8205, 0.000000e+00
  %8207 = xor i1 %8206, %8204
  %8208 = fsub fast float %4496, %7942
  %8209 = fmul fast float %8208, 2.000000e+00
  %8210 = fadd fast float %8209, %7942
  %8211 = select i1 %8207, float %7942, float %8210
  %8212 = fsub fast float %8211, %209
  %8213 = call float @dx.op.dot3.f32(i32 55, float %7968, float %7969, float %8212, float %7968, float %7969, float %8212)  ; Dot3(ax,ay,az,bx,by,bz)
  %8214 = call float @dx.op.unary.f32(i32 25, float %8213)  ; Rsqrt(value)
  %8215 = fmul fast float %8214, %7968
  %8216 = fmul fast float %8214, %7969
  %8217 = fmul fast float %8214, %8212
  %8218 = fsub fast float %4496, %209
  %8219 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8218)  ; Dot3(ax,ay,az,bx,by,bz)
  %8220 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8215, float %8216, float %8217)  ; Dot3(ax,ay,az,bx,by,bz)
  %8221 = fdiv fast float 1.000000e+00, %8220
  %8222 = fmul fast float %8221, %8219
  %8223 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8205, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8224 = fcmp fast ogt float %8223, 0.000000e+00
  %8225 = fcmp fast olt float %8223, 0.000000e+00
  %8226 = zext i1 %8224 to i32
  %8227 = zext i1 %8225 to i32
  %8228 = sub nsw i32 %8226, %8227
  %8229 = sitofp i32 %8228 to float
  %8230 = fsub fast float %8211, %4496
  %8231 = call float @dx.op.dot3.f32(i32 55, float %7968, float %7969, float %8230, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8232 = fcmp fast ogt float %8231, 0.000000e+00
  %8233 = fcmp fast olt float %8231, 0.000000e+00
  %8234 = zext i1 %8232 to i32
  %8235 = zext i1 %8233 to i32
  %8236 = sub nsw i32 %8234, %8235
  %8237 = sitofp i32 %8236 to float
  %8238 = fcmp fast une float %8229, %8237
  br i1 %8238, label %8239, label %8249

; <label>:8239                                    ; preds = %8199
  %8240 = fmul fast float %8222, %8217
  %8241 = fmul fast float %8222, %8216
  %8242 = fmul fast float %8222, %8215
  %8243 = fmul fast float %8242, %8242
  %8244 = fmul fast float %8241, %8241
  %8245 = fadd fast float %8243, %8244
  %8246 = fmul fast float %8240, %8240
  %8247 = fadd fast float %8245, %8246
  %8248 = call float @dx.op.unary.f32(i32 24, float %8247)  ; Sqrt(value)
  br label %8261

; <label>:8249                                    ; preds = %8199
  %8250 = icmp slt i32 %8228, 0
  br i1 %8250, label %8251, label %8261

; <label>:8251                                    ; preds = %8249
  %8252 = fsub fast float %207, %7940
  %8253 = fsub fast float %208, %7941
  %8254 = fsub fast float %209, %8211
  %8255 = fmul fast float %8252, %8252
  %8256 = fmul fast float %8253, %8253
  %8257 = fadd fast float %8255, %8256
  %8258 = fmul fast float %8254, %8254
  %8259 = fadd fast float %8257, %8258
  %8260 = call float @dx.op.unary.f32(i32 24, float %8259)  ; Sqrt(value)
  br label %8261

; <label>:8261                                    ; preds = %8251, %8249, %8239
  %8262 = phi float [ %8248, %8239 ], [ %8260, %8251 ], [ 0.000000e+00, %8249 ]
  %8263 = and i1 %8206, %8204
  %8264 = fsub fast float -0.000000e+00, %8262
  %8265 = select i1 %8263, float -0.000000e+00, float %8264
  %8266 = fmul fast float %4497, 0x3FF7154760000000
  %8267 = fmul fast float %8266, %8265
  %8268 = fmul fast float %4498, 0x3FF7154760000000
  %8269 = fmul fast float %8268, %8265
  %8270 = fmul fast float %4499, 0x3FF7154760000000
  %8271 = fmul fast float %8270, %8265
  %8272 = call float @dx.op.unary.f32(i32 21, float %8267)  ; Exp(value)
  %8273 = call float @dx.op.unary.f32(i32 21, float %8269)  ; Exp(value)
  %8274 = call float @dx.op.unary.f32(i32 21, float %8271)  ; Exp(value)
  %8275 = call float @dx.op.unary.f32(i32 7, float %8272)  ; Saturate(value)
  %8276 = call float @dx.op.unary.f32(i32 7, float %8273)  ; Saturate(value)
  %8277 = call float @dx.op.unary.f32(i32 7, float %8274)  ; Saturate(value)
  %8278 = fmul fast float %8200, %8275
  %8279 = fmul fast float %8201, %8276
  %8280 = fmul fast float %8202, %8277
  %8281 = fsub fast float %7974, %5322
  %8282 = fsub fast float %7975, %5323
  %8283 = fsub fast float %7976, %5324
  %8284 = call float @dx.op.dot3.f32(i32 55, float %8281, float %8282, float %8283, float %8281, float %8282, float %8283)  ; Dot3(ax,ay,az,bx,by,bz)
  %8285 = call float @dx.op.unary.f32(i32 25, float %8284)  ; Rsqrt(value)
  %8286 = fmul fast float %8285, %8281
  %8287 = fmul fast float %8285, %8282
  %8288 = fmul fast float %8285, %8283
  %8289 = call float @dx.op.dot3.f32(i32 55, float %7974, float %7975, float %7976, float %5282, float %5283, float %5284)  ; Dot3(ax,ay,az,bx,by,bz)
  %8290 = call float @dx.op.dot3.f32(i32 55, float %5325, float %5326, float %5327, float %8286, float %8287, float %8288)  ; Dot3(ax,ay,az,bx,by,bz)
  %8291 = call float @dx.op.unary.f32(i32 7, float %8289)  ; Saturate(value)
  %8292 = fmul fast float %8291, %7981
  %8293 = bitcast i32 %5354 to float
  %8294 = fmul fast float %8291, %8291
  %8295 = fmul fast float %8294, %8293
  %8296 = call float @dx.op.unary.f32(i32 7, float %8295)  ; Saturate(value)
  %8297 = fmul fast float %8292, %8296
  %8298 = bitcast float %7971 to i32
  %8299 = ashr i32 %8298, 1
  %8300 = sub nsw i32 1597463007, %8299
  %8301 = bitcast i32 %8300 to float
  %8302 = fmul fast float %8301, %7968
  %8303 = fmul fast float %8301, %7969
  %8304 = fmul fast float %8301, %7970
  %8305 = fsub fast float %8302, %5322
  %8306 = fsub fast float %8303, %5323
  %8307 = fsub fast float %8304, %5324
  %8308 = call float @dx.op.dot3.f32(i32 55, float %8305, float %8306, float %8307, float %8305, float %8306, float %8307)  ; Dot3(ax,ay,az,bx,by,bz)
  %8309 = call float @dx.op.unary.f32(i32 25, float %8308)  ; Rsqrt(value)
  %8310 = fmul fast float %8305, %8309
  %8311 = fmul fast float %8306, %8309
  %8312 = fmul fast float %8307, %8309
  %8313 = call float @dx.op.dot3.f32(i32 55, float %5282, float %5283, float %5284, float %8310, float %8311, float %8312)  ; Dot3(ax,ay,az,bx,by,bz)
  %8314 = fmul fast float %8313, %8313
  %8315 = call float @dx.op.unary.f32(i32 6, float %8289)  ; FAbs(value)
  %8316 = fsub fast float 1.000000e+00, %5348
  %8317 = fmul fast float %5330, %5330
  %8318 = fmul fast float %8317, %8316
  %8319 = fadd fast float %8318, %5348
  %8320 = bitcast float %8319 to i32
  %8321 = ashr i32 %8320, 1
  %8322 = add nsw i32 %8321, 532487669
  %8323 = bitcast i32 %8322 to float
  %8324 = fadd fast float %8323, %5330
  %8325 = fmul fast float %5348, %8314
  %8326 = fsub fast float 1.000000e+00, %8314
  %8327 = fadd fast float %8326, %8325
  %8328 = fmul fast float %8315, %8315
  %8329 = fmul fast float %8328, %8316
  %8330 = fadd fast float %8329, %5348
  %8331 = bitcast float %8330 to i32
  %8332 = ashr i32 %8331, 1
  %8333 = add nsw i32 %8332, 532487669
  %8334 = bitcast i32 %8333 to float
  %8335 = fadd fast float %8334, %8315
  %8336 = fmul fast float %8327, %8327
  %8337 = fmul fast float %8336, %8324
  %8338 = fmul fast float %8337, %8335
  %8339 = fdiv fast float 1.000000e+00, %8338
  %8340 = bitcast float %5348 to i32
  %8341 = sitofp i32 %8340 to float
  %8342 = fmul fast float %8341, 0x3FE7F73180000000
  %8343 = fadd fast float %8342, 0x41AFE27C40000000
  %8344 = fptosi float %8343 to i32
  %8345 = bitcast i32 %8344 to float
  %8346 = fmul fast float %7937, 0x3FD80E9D60000000
  %8347 = fmul fast float %8346, %8301
  %8348 = fadd fast float %8345, %8347
  %8349 = bitcast float %8348 to i32
  %8350 = sub nsw i32 2129859010, %8349
  %8351 = bitcast i32 %8350 to float
  %8352 = fmul fast float %5348, %8339
  %8353 = fmul fast float %8352, %8345
  %8354 = fmul fast float %8353, %8351
  %8355 = call float @dx.op.unary.f32(i32 6, float %8290)  ; FAbs(value)
  %8356 = fsub fast float 1.000000e+00, %8355
  %8357 = bitcast float %8356 to i32
  %8358 = sitofp i32 %8357 to float
  %8359 = fmul fast float %8358, 5.000000e+00
  %8360 = fadd fast float %8359, 0xC1EFBF8940000000
  %8361 = fptosi float %8360 to i32
  %8362 = bitcast i32 %8361 to float
  %8363 = fsub fast float 1.000000e+00, %5279
  %8364 = fsub fast float 1.000000e+00, %5280
  %8365 = fsub fast float 1.000000e+00, %5328
  %8366 = fmul fast float %8362, %8363
  %8367 = fmul fast float %8362, %8364
  %8368 = fmul fast float %8362, %8365
  %8369 = fadd fast float %8366, %5279
  %8370 = fadd fast float %8367, %5280
  %8371 = fadd fast float %8368, %5328
  br i1 %5470, label %8372, label %8395

; <label>:8372                                    ; preds = %8261
  %8373 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %56, float %4095, float %8355, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8374 = extractvalue %dx.types.ResRet.f32 %8373, 0
  %8375 = extractvalue %dx.types.ResRet.f32 %8373, 1
  %8376 = extractvalue %dx.types.ResRet.f32 %8373, 2
  %8377 = fadd fast float %8374, -5.000000e-01
  %8378 = fadd fast float %8375, -5.000000e-01
  %8379 = fadd fast float %8376, -5.000000e-01
  %8380 = fmul fast float %5279, 4.000000e+00
  %8381 = fmul fast float %8380, %8363
  %8382 = fmul fast float %8381, %8377
  %8383 = fmul fast float %5280, 4.000000e+00
  %8384 = fmul fast float %8383, %8364
  %8385 = fmul fast float %8384, %8378
  %8386 = fmul fast float %5328, 4.000000e+00
  %8387 = fmul fast float %8386, %8365
  %8388 = fmul fast float %8387, %8379
  %8389 = fadd fast float %8382, %8369
  %8390 = fadd fast float %8385, %8370
  %8391 = fadd fast float %8388, %8371
  %8392 = call float @dx.op.unary.f32(i32 7, float %8389)  ; Saturate(value)
  %8393 = call float @dx.op.unary.f32(i32 7, float %8390)  ; Saturate(value)
  %8394 = call float @dx.op.unary.f32(i32 7, float %8391)  ; Saturate(value)
  br label %8395

; <label>:8395                                    ; preds = %8372, %8261
  %8396 = phi float [ %8392, %8372 ], [ %8369, %8261 ]
  %8397 = phi float [ %8393, %8372 ], [ %8370, %8261 ]
  %8398 = phi float [ %8394, %8372 ], [ %8371, %8261 ]
  %8399 = fmul fast float %8289, 9.843750e-01
  %8400 = fadd fast float %8399, 7.812500e-03
  %8401 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %56, float %8400, float %5460, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8402 = extractvalue %dx.types.ResRet.f32 %8401, 2
  %8403 = extractvalue %dx.types.ResRet.f32 %8401, 3
  %8404 = fmul fast float %8402, %5279
  %8405 = fmul fast float %8402, %5280
  %8406 = fmul fast float %8402, %5328
  %8407 = fadd fast float %8404, %8403
  %8408 = fadd fast float %8405, %8403
  %8409 = fadd fast float %8406, %8403
  br i1 %5470, label %8410, label %8433

; <label>:8410                                    ; preds = %8395
  %8411 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %56, float %4095, float %8289, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8412 = extractvalue %dx.types.ResRet.f32 %8411, 0
  %8413 = extractvalue %dx.types.ResRet.f32 %8411, 1
  %8414 = extractvalue %dx.types.ResRet.f32 %8411, 2
  %8415 = fadd fast float %8412, -5.000000e-01
  %8416 = fadd fast float %8413, -5.000000e-01
  %8417 = fadd fast float %8414, -5.000000e-01
  %8418 = fmul fast float %5279, 4.000000e+00
  %8419 = fmul fast float %8418, %8363
  %8420 = fmul fast float %8419, %8415
  %8421 = fmul fast float %5280, 4.000000e+00
  %8422 = fmul fast float %8421, %8364
  %8423 = fmul fast float %8422, %8416
  %8424 = fmul fast float %5328, 4.000000e+00
  %8425 = fmul fast float %8424, %8365
  %8426 = fmul fast float %8425, %8417
  %8427 = fadd fast float %8420, %8407
  %8428 = fadd fast float %8423, %8408
  %8429 = fadd fast float %8426, %8409
  %8430 = call float @dx.op.unary.f32(i32 7, float %8427)  ; Saturate(value)
  %8431 = call float @dx.op.unary.f32(i32 7, float %8428)  ; Saturate(value)
  %8432 = call float @dx.op.unary.f32(i32 7, float %8429)  ; Saturate(value)
  br label %8433

; <label>:8433                                    ; preds = %8410, %8395
  %8434 = phi float [ %8430, %8410 ], [ %8407, %8395 ]
  %8435 = phi float [ %8431, %8410 ], [ %8408, %8395 ]
  %8436 = phi float [ %8432, %8410 ], [ %8409, %8395 ]
  %8437 = call float @dx.op.binary.f32(i32 35, float %8435, float %8436)  ; FMax(a,b)
  %8438 = call float @dx.op.binary.f32(i32 35, float %8434, float %8437)  ; FMax(a,b)
  %8439 = fsub fast float 1.000000e+00, %8438
  %8440 = fmul fast float %8396, %8354
  %8441 = fmul fast float %8397, %8354
  %8442 = fmul fast float %8398, %8354
  %8443 = fsub fast float 1.000000e+00, %8290
  %8444 = bitcast float %8443 to i32
  %8445 = sitofp i32 %8444 to float
  %8446 = fmul fast float %8445, 5.000000e+00
  %8447 = fadd fast float %8446, 0xC1EFBF8940000000
  %8448 = fptosi float %8447 to i32
  %8449 = bitcast i32 %8448 to float
  %8450 = fmul fast float %8449, %4096
  %8451 = fmul fast float %8439, %8450
  %8452 = fmul fast float %8451, %6065
  %8453 = fmul fast float %8451, %6066
  %8454 = fmul fast float %8451, %6067
  %8455 = fadd fast float %8452, %8440
  %8456 = fadd fast float %8453, %8441
  %8457 = fadd fast float %8454, %8442
  %8458 = fmul fast float %8278, %4092
  %8459 = fmul fast float %8458, %8297
  %8460 = fmul fast float %8459, %8439
  %8461 = fmul fast float %8279, %4092
  %8462 = fmul fast float %8461, %8297
  %8463 = fmul fast float %8462, %8439
  %8464 = fmul fast float %8280, %4092
  %8465 = fmul fast float %8464, %8297
  %8466 = fmul fast float %8465, %8439
  %8467 = fadd fast float %8460, %7911
  %8468 = fadd fast float %8463, %7912
  %8469 = fadd fast float %8466, %7913
  %8470 = fmul fast float %8459, %8455
  %8471 = fmul fast float %8462, %8456
  %8472 = fmul fast float %8465, %8457
  %8473 = fadd fast float %8470, %7908
  %8474 = fadd fast float %8471, %7909
  %8475 = fadd fast float %8472, %7910
  br label %8040

; <label>:8476                                    ; preds = %8040
  br label %8477

; <label>:8477                                    ; preds = %8476, %7874
  %8478 = phi float [ %7876, %7874 ], [ %8041, %8476 ]
  %8479 = phi float [ %7877, %7874 ], [ %8042, %8476 ]
  %8480 = phi float [ %7878, %7874 ], [ %8043, %8476 ]
  %8481 = phi float [ %7879, %7874 ], [ %8044, %8476 ]
  %8482 = phi float [ %7880, %7874 ], [ %8045, %8476 ]
  %8483 = phi float [ %7881, %7874 ], [ %8046, %8476 ]
  %8484 = add i32 %7875, 1
  %8485 = icmp ugt i32 %8484, %7871
  br i1 %8485, label %8486, label %7874

; <label>:8486                                    ; preds = %8477
  br label %8487

; <label>:8487                                    ; preds = %8486, %7824, %7814
  %8488 = phi float [ %7815, %7814 ], [ %7815, %7824 ], [ %8478, %8486 ]
  %8489 = phi float [ %7816, %7814 ], [ %7816, %7824 ], [ %8479, %8486 ]
  %8490 = phi float [ %7817, %7814 ], [ %7817, %7824 ], [ %8480, %8486 ]
  %8491 = phi float [ %7818, %7814 ], [ %7818, %7824 ], [ %8481, %8486 ]
  %8492 = phi float [ %7819, %7814 ], [ %7819, %7824 ], [ %8482, %8486 ]
  %8493 = phi float [ %7820, %7814 ], [ %7820, %7824 ], [ %8483, %8486 ]
  %8494 = fmul fast float %4092, %4092
  %8495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8496 = extractvalue %dx.types.CBufRet.f32 %8495, 0
  %8497 = fmul fast float %8496, %6081
  %8498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8499 = extractvalue %dx.types.CBufRet.f32 %8498, 3
  %8500 = fsub fast float 1.000000e+00, %4099
  %8501 = call float @dx.op.unary.f32(i32 7, float %8500)  ; Saturate(value)
  %8502 = fadd fast float %8493, %4098
  %8503 = fmul fast float %8502, %4099
  %8504 = fmul fast float %8501, %8499
  %8505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8506 = extractvalue %dx.types.CBufRet.f32 %8505, 3
  %8507 = fmul fast float %8491, %5276
  %8508 = fmul fast float %8492, %5277
  %8509 = fmul fast float %8493, %5278
  %8510 = fcmp fast ogt float %107, %242
  %8511 = and i1 %8510, %4502
  %8512 = or i1 %4508, %8511
  %8513 = icmp eq i32 %4501, 2
  %8514 = fcmp fast ole float %107, %242
  %8515 = and i1 %8514, %8513
  %8516 = or i1 %8515, %8512
  br i1 %8511, label %8517, label %8774

; <label>:8517                                    ; preds = %8487
  %8518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8519 = extractvalue %dx.types.CBufRet.f32 %8518, 2
  %8520 = extractvalue %dx.types.CBufRet.f32 %8518, 3
  %8521 = fmul fast float %8519, %120
  %8522 = fmul fast float %8520, %121
  %8523 = call float @dx.op.unary.f32(i32 7, float %8521)  ; Saturate(value)
  %8524 = call float @dx.op.unary.f32(i32 7, float %8522)  ; Saturate(value)
  %8525 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %56, float %8523, float %8524, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8526 = extractvalue %dx.types.ResRet.f32 %8525, 0
  %8527 = extractvalue %dx.types.ResRet.f32 %8525, 1
  %8528 = extractvalue %dx.types.ResRet.f32 %8525, 2
  %8529 = extractvalue %dx.types.ResRet.f32 %8525, 3
  %8530 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %56, float %8523, float %8524, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
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
  %8549 = fcmp fast ogt float %106, 9.843750e-01
  %8550 = fadd fast float %107, -4.000000e+00
  %8551 = select i1 %8549, float -4.000000e+00, float %8550
  %8552 = call float @dx.op.binary.f32(i32 35, float %8551, float 0.000000e+00)  ; FMax(a,b)
  %8553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8554 = extractvalue %dx.types.CBufRet.f32 %8553, 0
  %8555 = fadd fast float %8554, %8552
  %8556 = extractvalue %dx.types.CBufRet.f32 %8553, 2
  %8557 = fmul fast float %8555, %8556
  %8558 = call float @dx.op.unary.f32(i32 23, float %8557)  ; Log(value)
  %8559 = extractvalue %dx.types.CBufRet.f32 %8553, 3
  %8560 = fmul fast float %8559, %8558
  %8561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
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
  %8575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
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
  %8586 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %54, float %8523, float %8524, float %8585, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8587 = extractvalue %dx.types.ResRet.f32 %8586, 0
  %8588 = extractvalue %dx.types.ResRet.f32 %8586, 1
  %8589 = extractvalue %dx.types.ResRet.f32 %8586, 2
  %8590 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8591 = extractvalue %dx.types.CBufRet.i32 %8590, 0
  %8592 = extractvalue %dx.types.CBufRet.i32 %8590, 1
  %8593 = uitofp i32 %8591 to float
  %8594 = uitofp i32 %8592 to float
  %8595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
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
  %8668 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %8661, float %8667, float %8585, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8669 = extractvalue %dx.types.ResRet.f32 %8668, 0
  %8670 = extractvalue %dx.types.ResRet.f32 %8668, 1
  %8671 = extractvalue %dx.types.ResRet.f32 %8668, 2
  %8672 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %8663, float %8667, float %8585, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8673 = extractvalue %dx.types.ResRet.f32 %8672, 0
  %8674 = extractvalue %dx.types.ResRet.f32 %8672, 1
  %8675 = extractvalue %dx.types.ResRet.f32 %8672, 2
  %8676 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %8661, float %8665, float %8585, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8677 = extractvalue %dx.types.ResRet.f32 %8676, 0
  %8678 = extractvalue %dx.types.ResRet.f32 %8676, 1
  %8679 = extractvalue %dx.types.ResRet.f32 %8676, 2
  %8680 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %8663, float %8665, float %8585, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  %8711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
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
  %8723 = fmul fast float %8720, %8494
  %8724 = fmul fast float %8721, %8494
  %8725 = fmul fast float %8722, %8494
  %8726 = call float @dx.op.dot3.f32(i32 55, float %8717, float %8718, float %8719, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8727 = call float @dx.op.dot3.f32(i32 55, float %8723, float %8724, float %8725, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8728 = select i1 %279, float %8726, float %8717
  %8729 = select i1 %279, float %8726, float %8718
  %8730 = select i1 %279, float 1.000000e+00, float %8719
  %8731 = select i1 %279, float %8727, float %8723
  %8732 = select i1 %279, float 0.000000e+00, float %8724
  %8733 = select i1 %279, float 0.000000e+00, float %8725
  %8734 = fmul fast float %8728, %8507
  %8735 = fmul fast float %8729, %8508
  %8736 = fmul fast float %8730, %8509
  %8737 = fadd fast float %8734, %8731
  %8738 = fadd fast float %8735, %8732
  %8739 = fadd fast float %8733, %8736
  %8740 = fmul fast float %8728, %8488
  %8741 = fmul fast float %8729, %8489
  %8742 = fmul fast float %8730, %8490
  %8743 = fmul fast float %156, %8519
  %8744 = fmul fast float %158, %8520
  %8745 = fsub fast float 1.000000e+00, %8743
  %8746 = fsub fast float 1.000000e+00, %8744
  %8747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8748 = extractvalue %dx.types.CBufRet.f32 %8747, 0
  %8749 = extractvalue %dx.types.CBufRet.f32 %8747, 1
  %8750 = extractvalue %dx.types.CBufRet.f32 %8747, 2
  %8751 = fmul fast float %8745, %8748
  %8752 = fmul fast float %8745, %8749
  %8753 = fmul fast float %8745, %8750
  %8754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8755 = extractvalue %dx.types.CBufRet.f32 %8754, 0
  %8756 = extractvalue %dx.types.CBufRet.f32 %8754, 1
  %8757 = extractvalue %dx.types.CBufRet.f32 %8754, 2
  %8758 = fmul fast float %8746, %8755
  %8759 = fmul fast float %8746, %8756
  %8760 = fmul fast float %8746, %8757
  %8761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8762 = extractvalue %dx.types.CBufRet.f32 %8761, 0
  %8763 = extractvalue %dx.types.CBufRet.f32 %8761, 1
  %8764 = extractvalue %dx.types.CBufRet.f32 %8761, 2
  %8765 = fadd fast float %8758, %8762
  %8766 = fadd fast float %8765, %8751
  %8767 = fadd fast float %8759, %8763
  %8768 = fadd fast float %8767, %8752
  %8769 = fadd fast float %8760, %8764
  %8770 = fadd fast float %8769, %8753
  %8771 = fmul fast float %8766, %242
  %8772 = fmul fast float %8768, %242
  %8773 = fmul fast float %8770, %242
  br label %8774

; <label>:8774                                    ; preds = %8716, %8487
  %8775 = phi float [ %8771, %8716 ], [ %207, %8487 ]
  %8776 = phi float [ %8772, %8716 ], [ %208, %8487 ]
  %8777 = phi float [ %8773, %8716 ], [ %209, %8487 ]
  %8778 = phi float [ %242, %8716 ], [ %107, %8487 ]
  %8779 = phi float [ %8737, %8716 ], [ %8507, %8487 ]
  %8780 = phi float [ %8738, %8716 ], [ %8508, %8487 ]
  %8781 = phi float [ %8739, %8716 ], [ %8509, %8487 ]
  %8782 = phi float [ %8740, %8716 ], [ %8488, %8487 ]
  %8783 = phi float [ %8741, %8716 ], [ %8489, %8487 ]
  %8784 = phi float [ %8742, %8716 ], [ %8490, %8487 ]
  %8785 = phi float [ %8717, %8716 ], [ 1.000000e+00, %8487 ]
  br i1 %8516, label %9940, label %8786

; <label>:8786                                    ; preds = %8774
  %8787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8788 = extractvalue %dx.types.CBufRet.f32 %8787, 0
  %8789 = extractvalue %dx.types.CBufRet.f32 %8787, 1
  %8790 = extractvalue %dx.types.CBufRet.f32 %8787, 2
  %8791 = extractvalue %dx.types.CBufRet.f32 %8787, 3
  %8792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8793 = extractvalue %dx.types.CBufRet.f32 %8792, 0
  %8794 = extractvalue %dx.types.CBufRet.f32 %8792, 1
  %8795 = extractvalue %dx.types.CBufRet.f32 %8792, 2
  %8796 = extractvalue %dx.types.CBufRet.f32 %8792, 3
  %8797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8798 = extractvalue %dx.types.CBufRet.f32 %8797, 0
  %8799 = extractvalue %dx.types.CBufRet.f32 %8797, 1
  %8800 = extractvalue %dx.types.CBufRet.f32 %8797, 2
  %8801 = extractvalue %dx.types.CBufRet.f32 %8797, 3
  %8802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8803 = extractvalue %dx.types.CBufRet.f32 %8802, 0
  %8804 = extractvalue %dx.types.CBufRet.f32 %8802, 1
  %8805 = extractvalue %dx.types.CBufRet.f32 %8802, 2
  %8806 = extractvalue %dx.types.CBufRet.f32 %8802, 3
  %8807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8808 = extractvalue %dx.types.CBufRet.f32 %8807, 3
  %8809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
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
  %8823 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8824 = extractvalue %dx.types.CBufRet.i32 %8823, 1
  %8825 = and i32 %8824, 1
  %8826 = icmp ne i32 %8825, 0
  %8827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8828 = extractvalue %dx.types.CBufRet.f32 %8827, 2
  %8829 = fcmp fast ogt float %8828, 0.000000e+00
  %8830 = and i1 %8826, %8829
  br i1 %8830, label %8831, label %9237, !dx.controlflow.hints !142

; <label>:8831                                    ; preds = %8786
  %8832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8833 = extractvalue %dx.types.CBufRet.f32 %8832, 3
  %8834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8835 = extractvalue %dx.types.CBufRet.f32 %8834, 2
  %8836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8837 = extractvalue %dx.types.CBufRet.f32 %8836, 2
  %8838 = fsub fast float %8835, %8837
  %8839 = and i32 %8824, 2
  %8840 = extractvalue %dx.types.CBufRet.i32 %8823, 0
  %8841 = call i32 @dx.op.binary.i32(i32 40, i32 %8840, i32 3)  ; UMin(a,b)
  %8842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8843 = extractvalue %dx.types.CBufRet.f32 %8842, 0
  %8844 = extractvalue %dx.types.CBufRet.f32 %8842, 1
  %8845 = extractvalue %dx.types.CBufRet.f32 %8836, 0
  %8846 = extractvalue %dx.types.CBufRet.f32 %8836, 1
  %8847 = fsub fast float %8843, %8845
  %8848 = fsub fast float %8844, %8846
  %8849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
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
  %8915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8916 = extractvalue %dx.types.CBufRet.f32 %8915, 0
  %8917 = extractvalue %dx.types.CBufRet.f32 %8915, 1
  %8918 = extractvalue %dx.types.CBufRet.f32 %8915, 2
  %8919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8920 = extractvalue %dx.types.CBufRet.f32 %8919, 0
  %8921 = extractvalue %dx.types.CBufRet.f32 %8919, 1
  %8922 = extractvalue %dx.types.CBufRet.f32 %8919, 2
  %8923 = extractvalue %dx.types.CBufRet.f32 %8919, 3
  %8924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
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
  %8938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
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
  %8976 = getelementptr inbounds [3 x float], [3 x float]* %114, i32 0, i32 0
  store float -1.000000e+00, float* %8976, align 4, !tbaa !128, !noalias !143
  %8977 = getelementptr inbounds [3 x float], [3 x float]* %114, i32 0, i32 1
  store float -1.000000e+00, float* %8977, align 4, !tbaa !128, !noalias !143
  %8978 = getelementptr inbounds [3 x float], [3 x float]* %114, i32 0, i32 2
  store float -1.000000e+00, float* %8978, align 4, !tbaa !128, !noalias !143
  %8979 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 0
  store float -1.000000e+00, float* %8979, align 4, !tbaa !128, !noalias !143
  %8980 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 1
  store float -1.000000e+00, float* %8980, align 4, !tbaa !128, !noalias !143
  %8981 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 2
  store float -1.000000e+00, float* %8981, align 4, !tbaa !128, !noalias !143
  %8982 = icmp sgt i32 %8841, 0
  br i1 %8982, label %8983, label %9044

; <label>:8983                                    ; preds = %8971
  br label %8984

; <label>:8984                                    ; preds = %9033, %8983
  %8985 = phi i32 [ %9034, %9033 ], [ 0, %8983 ]
  %8986 = phi i32 [ %9035, %9033 ], [ 0, %8983 ]
  %8987 = add nuw i32 %8986, 171
  %8988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 %8987)  ; CBufferLoadLegacy(handle,regIndex)
  %8989 = extractvalue %dx.types.CBufRet.f32 %8988, 0
  %8990 = extractvalue %dx.types.CBufRet.f32 %8988, 1
  %8991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
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
  %9029 = getelementptr inbounds [3 x float], [3 x float]* %114, i32 0, i32 %8986
  store float %9028, float* %9029, align 4, !tbaa !128, !noalias !143
  %9030 = call float @dx.op.binary.f32(i32 35, float %8972, float %9024)  ; FMax(a,b)
  %9031 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 %8986
  store float %9030, float* %9031, align 4, !tbaa !128, !noalias !143
  %9032 = add nsw i32 %8985, 1
  br label %9033

; <label>:9033                                    ; preds = %9027, %9023
  %9034 = phi i32 [ %9032, %9027 ], [ %8985, %9023 ]
  %9035 = add nuw nsw i32 %8986, 1
  %9036 = icmp eq i32 %9035, %8841
  br i1 %9036, label %9037, label %8984

; <label>:9037                                    ; preds = %9033
  %9038 = load float, float* %8978, align 4, !tbaa !128, !alias.scope !159, !noalias !162
  %9039 = load float, float* %8977, align 4, !tbaa !128, !alias.scope !165, !noalias !166
  %9040 = load float, float* %8976, align 4, !tbaa !128, !alias.scope !167, !noalias !168
  %9041 = load float, float* %8981, align 4, !tbaa !128, !alias.scope !169, !noalias !172
  %9042 = load float, float* %8980, align 4, !tbaa !128, !alias.scope !175, !noalias !176
  %9043 = load float, float* %8979, align 4, !tbaa !128, !alias.scope !177, !noalias !178
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
  store float %9053, float* %8976, align 4, !tbaa !128, !alias.scope !167, !noalias !168
  store float %9057, float* %8977, align 4, !tbaa !128, !alias.scope !165, !noalias !166
  store float %9059, float* %8978, align 4, !tbaa !128, !alias.scope !159, !noalias !162
  %9060 = call float @dx.op.binary.f32(i32 36, float %9046, float %9047)  ; FMin(a,b)
  %9061 = call float @dx.op.binary.f32(i32 36, float %9045, float %9060)  ; FMin(a,b)
  %9062 = call float @dx.op.binary.f32(i32 35, float %9045, float %9046)  ; FMax(a,b)
  %9063 = call float @dx.op.binary.f32(i32 36, float %9062, float %9047)  ; FMin(a,b)
  %9064 = call float @dx.op.binary.f32(i32 36, float %9045, float %9046)  ; FMin(a,b)
  %9065 = call float @dx.op.binary.f32(i32 35, float %9064, float %9063)  ; FMax(a,b)
  %9066 = call float @dx.op.binary.f32(i32 35, float %9046, float %9047)  ; FMax(a,b)
  %9067 = call float @dx.op.binary.f32(i32 35, float %9045, float %9066)  ; FMax(a,b)
  store float %9061, float* %8979, align 4, !tbaa !128, !alias.scope !177, !noalias !178
  store float %9065, float* %8980, align 4, !tbaa !128, !alias.scope !175, !noalias !176
  store float %9067, float* %8981, align 4, !tbaa !128, !alias.scope !169, !noalias !172
  %9068 = sub nsw i32 3, %9051
  %9069 = icmp sgt i32 %9068, 2
  br i1 %9069, label %9070, label %9108

; <label>:9070                                    ; preds = %9044
  %9071 = icmp eq i32 %8839, 0
  %9072 = fsub fast float %8889, %8973
  %9073 = select i1 %9071, float %9072, float %8973
  %9074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9075 = extractvalue %dx.types.CBufRet.f32 %9074, 0
  %9076 = extractvalue %dx.types.CBufRet.f32 %9074, 1
  %9077 = extractvalue %dx.types.CBufRet.f32 %9074, 2
  %9078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9079 = extractvalue %dx.types.CBufRet.f32 %9078, 0
  %9080 = extractvalue %dx.types.CBufRet.f32 %9078, 1
  %9081 = extractvalue %dx.types.CBufRet.f32 %9078, 2
  %9082 = extractvalue %dx.types.CBufRet.f32 %9078, 3
  %9083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
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
  %9097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
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
  %9109 = getelementptr inbounds [3 x float], [3 x float]* %114, i32 0, i32 %9068
  %9110 = load float, float* %9109, align 4, !tbaa !128, !noalias !143
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
  %9120 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 %9119
  %9121 = load float, float* %9120, align 4, !tbaa !128, !noalias !143
  %9122 = icmp slt i32 %9119, 2
  %9123 = add nsw i32 %9119, 1
  %9124 = getelementptr inbounds [3 x float], [3 x float]* %114, i32 0, i32 %9123
  %9125 = load float, float* %9124, align 4, !tbaa !128, !noalias !143
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
  %9156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9157 = extractvalue %dx.types.CBufRet.f32 %9156, 0
  %9158 = extractvalue %dx.types.CBufRet.f32 %9156, 1
  %9159 = extractvalue %dx.types.CBufRet.f32 %9156, 2
  %9160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9161 = extractvalue %dx.types.CBufRet.f32 %9160, 0
  %9162 = extractvalue %dx.types.CBufRet.f32 %9160, 1
  %9163 = extractvalue %dx.types.CBufRet.f32 %9160, 2
  %9164 = extractvalue %dx.types.CBufRet.f32 %9160, 3
  %9165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
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
  %9179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
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
  %9197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9198 = extractvalue %dx.types.CBufRet.f32 %9197, 2
  %9199 = fsub fast float %8835, %9198
  %9200 = fcmp fast olt float %9196, -2.000000e+01
  %9201 = call float @dx.op.unary.f32(i32 21, float %9196)  ; Exp(value)
  %9202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9203 = extractvalue %dx.types.CBufRet.f32 %9202, 2
  %9204 = extractvalue %dx.types.CBufRet.f32 %9202, 3
  %9205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
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
  %9243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9244 = extractvalue %dx.types.CBufRet.f32 %9243, 1
  %9245 = fsub fast float 1.000000e+00, %9239
  %9246 = fmul fast float %9245, %8821
  %9247 = fmul fast float %9246, %9244
  %9248 = fsub fast float %8821, %9247
  br i1 %8814, label %9249, label %9278, !dx.controlflow.hints !179

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
  %9285 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %56, float %9284, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9286 = extractvalue %dx.types.ResRet.f32 %9285, 0
  %9287 = fsub fast float %9280, %9286
  %9288 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9287)  ; FMax(a,b)
  %9289 = fmul fast float %8796, %8777
  %9290 = call float @dx.op.unary.f32(i32 6, float %9289)  ; FAbs(value)
  %9291 = fcmp fast ogt float %9290, 0x3EB0C6F7A0000000
  br i1 %9291, label %9292, label %9298, !dx.controlflow.hints !180

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
  br i1 %8830, label %9344, label %9542, !dx.controlflow.hints !181

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
  br i1 %9366, label %9367, label %9380, !dx.controlflow.hints !182

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
  br i1 %9385, label %9386, label %9393, !dx.controlflow.hints !183

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
  br i1 %9396, label %9397, label %9404, !dx.controlflow.hints !183

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
  br i1 %9407, label %9408, label %9415, !dx.controlflow.hints !183

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
  br i1 %9434, label %9435, label %9442, !dx.controlflow.hints !184

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
  br i1 %9445, label %9446, label %9453, !dx.controlflow.hints !184

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
  br i1 %9456, label %9457, label %9464, !dx.controlflow.hints !184

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
  br i1 %9474, label %9475, label %9526, !dx.controlflow.hints !185

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
  br i1 %9496, label %9497, label %9504, !dx.controlflow.hints !184

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
  br i1 %9507, label %9508, label %9515, !dx.controlflow.hints !184

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
  br i1 %9518, label %9519, label %9526, !dx.controlflow.hints !184

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
  %9549 = fmul fast float %9548, %8494
  %9550 = fmul fast float %9547, %8494
  %9551 = fmul fast float %9546, %8494
  %9552 = fmul fast float %9545, %8785
  %9553 = call float @dx.op.dot3.f32(i32 55, float %9545, float %9544, float %9543, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9554 = call float @dx.op.dot3.f32(i32 55, float %9549, float %9550, float %9551, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9555 = select i1 %279, float %9553, float %9545
  %9556 = select i1 %279, float %9553, float %9544
  %9557 = select i1 %279, float 1.000000e+00, float %9543
  %9558 = select i1 %279, float %9554, float %9549
  %9559 = select i1 %279, float 0.000000e+00, float %9550
  %9560 = select i1 %279, float 0.000000e+00, float %9551
  %9561 = fmul fast float %9555, %8779
  %9562 = fmul fast float %9556, %8780
  %9563 = fmul fast float %9557, %8781
  %9564 = fadd fast float %9561, %9558
  %9565 = fadd fast float %9562, %9559
  %9566 = fadd fast float %9560, %9563
  %9567 = fmul fast float %9555, %8782
  %9568 = fmul fast float %9556, %8783
  %9569 = fmul fast float %9557, %8784
  %9570 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9571 = extractvalue %dx.types.CBufRet.i32 %9570, 0
  %9572 = icmp eq i32 %9571, 0
  br i1 %9572, label %9940, label %9573, !dx.controlflow.hints !186

; <label>:9573                                    ; preds = %9542
  %9574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9575 = extractvalue %dx.types.CBufRet.f32 %9574, 2
  %9576 = extractvalue %dx.types.CBufRet.f32 %9574, 3
  %9577 = fmul fast float %9575, %120
  %9578 = fmul fast float %9576, %121
  %9579 = fmul fast float %9577, 2.000000e+00
  %9580 = fmul fast float %9578, 2.000000e+00
  %9581 = fsub fast float 1.000000e+00, %9579
  %9582 = fsub fast float 1.000000e+00, %9580
  %9583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9584 = extractvalue %dx.types.CBufRet.f32 %9583, 0
  %9585 = extractvalue %dx.types.CBufRet.f32 %9583, 1
  %9586 = extractvalue %dx.types.CBufRet.f32 %9583, 2
  %9587 = fmul fast float %9581, %9584
  %9588 = fmul fast float %9581, %9585
  %9589 = fmul fast float %9581, %9586
  %9590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9591 = extractvalue %dx.types.CBufRet.f32 %9590, 0
  %9592 = extractvalue %dx.types.CBufRet.f32 %9590, 1
  %9593 = extractvalue %dx.types.CBufRet.f32 %9590, 2
  %9594 = fmul fast float %9582, %9591
  %9595 = fmul fast float %9582, %9592
  %9596 = fmul fast float %9582, %9593
  %9597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
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
  %9623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9624 = extractvalue %dx.types.CBufRet.f32 %9623, 2
  %9625 = call float @dx.op.binary.f32(i32 36, float %9624, float %9622)  ; FMin(a,b)
  %9626 = fsub fast float -0.000000e+00, %9624
  %9627 = fcmp fast ogt float %9625, %9626
  br i1 %9627, label %9628, label %9940, !dx.controlflow.hints !187

; <label>:9628                                    ; preds = %9573
  %9629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9630 = extractvalue %dx.types.CBufRet.f32 %9629, 3
  %9631 = fcmp fast ogt float %9630, 0.000000e+00
  br i1 %9631, label %9632, label %9707, !dx.controlflow.hints !188

; <label>:9632                                    ; preds = %9628
  %9633 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %9634 = extractvalue %dx.types.Dimensions %9633, 0
  %9635 = sitofp i32 %9634 to float
  %9636 = extractvalue %dx.types.Dimensions %9633, 1
  %9637 = sitofp i32 %9636 to float
  %9638 = fmul fast float %9577, %9635
  %9639 = fmul fast float %9578, %9637
  %9640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9641 = extractvalue %dx.types.CBufRet.f32 %9640, 1
  %9642 = fsub fast float -0.000000e+00, %9641
  %9643 = fptoui float %9642 to i32
  %9644 = fptoui float %9638 to i32
  %9645 = fptoui float %9639 to i32
  %9646 = and i32 %9643, 31
  %9647 = lshr i32 %9644, %9646
  %9648 = lshr i32 %9645, %9646
  %9649 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %9643, i32 %9647, i32 %9648, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9650 = extractvalue %dx.types.ResRet.f32 %9649, 0
  %9651 = fcmp fast olt float %9650, -1.000000e+00
  %9652 = fcmp fast ogt float %9650, -1.000000e+00
  %9653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9654 = extractvalue %dx.types.CBufRet.f32 %9653, 1
  %9655 = select i1 %9652, float %9654, float 1.000000e+00
  %9656 = fadd fast float %9650, 1.000000e+00
  %9657 = fmul fast float %9655, %9656
  %9658 = call float @dx.op.unary.f32(i32 6, float %9657)  ; FAbs(value)
  %9659 = extractvalue %dx.types.CBufRet.f32 %9653, 3
  %9660 = fcmp fast oge float %9658, %9659
  %9661 = select i1 %9660, float 0x4197782600000000, float %9658
  %9662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9663 = extractvalue %dx.types.CBufRet.f32 %9662, 0
  %9664 = extractvalue %dx.types.CBufRet.f32 %9662, 1
  %9665 = extractvalue %dx.types.CBufRet.f32 %9662, 2
  %9666 = select i1 %9651, float %9663, float %9584
  %9667 = select i1 %9651, float %9664, float %9585
  %9668 = select i1 %9651, float %9665, float %9586
  %9669 = fmul fast float %9666, %9581
  %9670 = fmul fast float %9667, %9581
  %9671 = fmul fast float %9668, %9581
  %9672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
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
  %9685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
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
  %9716 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %56, float %9577, float %9578, float %9712, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  br i1 %9739, label %9740, label %9855, !dx.controlflow.hints !189

; <label>:9740                                    ; preds = %9707
  %9741 = extractvalue %dx.types.CBufRet.f32 %9623, 3
  %9742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
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
  %9858 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %56, float %9577, float %9578, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9859 = extractvalue %dx.types.ResRet.f32 %9858, 0
  %9860 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
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
  %9871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
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
  %9891 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9892 = extractvalue %dx.types.CBufRet.i32 %9891, 2
  %9893 = and i32 %9892, 1
  %9894 = icmp eq i32 %9893, 0
  %9895 = fcmp fast une float %9890, 1.000000e+00
  %9896 = and i1 %9895, %9894
  br i1 %9896, label %9897, label %9916

; <label>:9897                                    ; preds = %9888
  %9898 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %56, float %9577, float %9578, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9899 = extractvalue %dx.types.ResRet.f32 %9898, 0
  %9900 = extractvalue %dx.types.ResRet.f32 %9898, 1
  %9901 = extractvalue %dx.types.ResRet.f32 %9898, 2
  %9902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
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
  %9920 = fmul fast float %9917, %8494
  %9921 = fmul fast float %9918, %8494
  %9922 = fmul fast float %9919, %8494
  %9923 = fmul fast float %9890, %9552
  %9924 = call float @dx.op.dot3.f32(i32 55, float %9890, float %9890, float %9890, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9925 = call float @dx.op.dot3.f32(i32 55, float %9920, float %9921, float %9922, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9926 = select i1 %279, float %9924, float %9890
  %9927 = select i1 %279, float 1.000000e+00, float %9890
  %9928 = select i1 %279, float %9925, float %9920
  %9929 = select i1 %279, float 0.000000e+00, float %9921
  %9930 = select i1 %279, float 0.000000e+00, float %9922
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
  %9948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9949 = extractvalue %dx.types.CBufRet.f32 %9948, 2
  %9950 = extractvalue %dx.types.CBufRet.f32 %9948, 3
  %9951 = fmul fast float %9949, %120
  %9952 = fmul fast float %9950, %121
  %9953 = call float @dx.op.unary.f32(i32 7, float %9951)  ; Saturate(value)
  %9954 = call float @dx.op.unary.f32(i32 7, float %9952)  ; Saturate(value)
  %9955 = select i1 %8516, i32 2, i32 0
  %9956 = or i32 %9955, 1
  %9957 = uitofp i32 %9956 to float
  %9958 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %56, float %9953, float %9954, float %9957, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9959 = extractvalue %dx.types.ResRet.f32 %9958, 0
  %9960 = extractvalue %dx.types.ResRet.f32 %9958, 1
  %9961 = extractvalue %dx.types.ResRet.f32 %9958, 2
  %9962 = extractvalue %dx.types.ResRet.f32 %9958, 3
  %9963 = add nuw nsw i32 %9955, 2
  %9964 = uitofp i32 %9963 to float
  %9965 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %56, float %9953, float %9954, float %9964, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
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
  %9984 = fcmp fast ogt float %106, 9.843750e-01
  %9985 = fadd fast float %8778, -4.000000e+00
  %9986 = select i1 %9984, float -4.000000e+00, float %9985
  %9987 = call float @dx.op.binary.f32(i32 35, float %9986, float 0.000000e+00)  ; FMax(a,b)
  %9988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9989 = extractvalue %dx.types.CBufRet.f32 %9988, 0
  %9990 = fadd fast float %9989, %9987
  %9991 = extractvalue %dx.types.CBufRet.f32 %9988, 2
  %9992 = fmul fast float %9990, %9991
  %9993 = call float @dx.op.unary.f32(i32 23, float %9992)  ; Log(value)
  %9994 = extractvalue %dx.types.CBufRet.f32 %9988, 3
  %9995 = fmul fast float %9994, %9993
  %9996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
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
  %10010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
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
  %10022 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %54, float %9953, float %9954, float %10021, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10023 = extractvalue %dx.types.ResRet.f32 %10022, 0
  %10024 = extractvalue %dx.types.ResRet.f32 %10022, 1
  %10025 = extractvalue %dx.types.ResRet.f32 %10022, 2
  %10026 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10027 = extractvalue %dx.types.CBufRet.i32 %10026, 0
  %10028 = extractvalue %dx.types.CBufRet.i32 %10026, 1
  %10029 = uitofp i32 %10027 to float
  %10030 = uitofp i32 %10028 to float
  %10031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
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
  %10104 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %10097, float %10103, float %10021, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10105 = extractvalue %dx.types.ResRet.f32 %10104, 0
  %10106 = extractvalue %dx.types.ResRet.f32 %10104, 1
  %10107 = extractvalue %dx.types.ResRet.f32 %10104, 2
  %10108 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %10099, float %10103, float %10021, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10109 = extractvalue %dx.types.ResRet.f32 %10108, 0
  %10110 = extractvalue %dx.types.ResRet.f32 %10108, 1
  %10111 = extractvalue %dx.types.ResRet.f32 %10108, 2
  %10112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %10097, float %10101, float %10021, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10113 = extractvalue %dx.types.ResRet.f32 %10112, 0
  %10114 = extractvalue %dx.types.ResRet.f32 %10112, 1
  %10115 = extractvalue %dx.types.ResRet.f32 %10112, 2
  %10116 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %10099, float %10101, float %10021, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  %10147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
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
  %10159 = fmul fast float %10156, %8494
  %10160 = fmul fast float %10157, %8494
  %10161 = fmul fast float %10158, %8494
  %10162 = fmul fast float %10153, %9947
  %10163 = call float @dx.op.dot3.f32(i32 55, float %10153, float %10154, float %10155, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10164 = call float @dx.op.dot3.f32(i32 55, float %10159, float %10160, float %10161, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10165 = select i1 %279, float %10163, float %10153
  %10166 = select i1 %279, float %10163, float %10154
  %10167 = select i1 %279, float 1.000000e+00, float %10155
  %10168 = select i1 %279, float %10164, float %10159
  %10169 = select i1 %279, float 0.000000e+00, float %10160
  %10170 = select i1 %279, float 0.000000e+00, float %10161
  %10171 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10172 = extractvalue %dx.types.CBufRet.i32 %10171, 3
  %10173 = and i32 %10172, 3
  %10174 = icmp ne i32 %10173, 0
  %10175 = and i32 %10172, 4
  %10176 = icmp ne i32 %10175, 0
  %10177 = and i1 %10174, %10176
  %10178 = and i1 %279, %10177
  br i1 %10178, label %10179, label %10185

; <label>:10179                                   ; preds = %10152
  %10180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
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
  %10193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10194 = extractvalue %dx.types.CBufRet.f32 %10193, 0
  br i1 %279, label %10195, label %10210

; <label>:10195                                   ; preds = %10185
  %10196 = fadd fast float %10189, %10192
  %10197 = fmul fast float %10194, %10196
  %10198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
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
  %10219 = call float @dx.op.binary.f32(i32 35, float %8494, float %8494)  ; FMax(a,b)
  %10220 = call float @dx.op.binary.f32(i32 35, float %8494, float %10219)  ; FMax(a,b)
  %10221 = call float @dx.op.binary.f32(i32 35, float %10218, float %10220)  ; FMax(a,b)
  %10222 = fcmp fast ugt float %10221, 0x3F10000000000000
  br i1 %10222, label %10224, label %10223

; <label>:10223                                   ; preds = %10210
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10224

; <label>:10224                                   ; preds = %10223, %10210
  %10225 = add i32 %62, 356
  %10226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %10225, i32 undef)  ; BufferLoad(srv,index,wot)
  %10227 = extractvalue %dx.types.ResRet.i32 %10226, 0
  %10228 = and i32 %10227, 32
  %10229 = icmp eq i32 %10228, 0
  br i1 %10229, label %10236, label %10230

; <label>:10230                                   ; preds = %10224
  %10231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10232 = extractvalue %dx.types.CBufRet.f32 %10231, 0
  %10233 = fmul fast float %10232, 0x3FE99999A0000000
  %10234 = fadd fast float %10232, %10214
  %10235 = fadd fast float %10233, %10216
  br label %10236

; <label>:10236                                   ; preds = %10230, %10224, %10195
  %10237 = phi float [ 1.000000e+00, %10195 ], [ %8494, %10230 ], [ %8494, %10224 ]
  %10238 = phi float [ %10197, %10195 ], [ %10234, %10230 ], [ %10214, %10224 ]
  %10239 = phi float [ %10209, %10195 ], [ %10215, %10230 ], [ %10215, %10224 ]
  %10240 = phi float [ 1.000000e+00, %10195 ], [ %10235, %10230 ], [ %10216, %10224 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10241 = call float @dx.op.binary.f32(i32 36, float %10238, float 3.225500e+04)  ; FMin(a,b)
  %10242 = call float @dx.op.binary.f32(i32 36, float %10239, float 3.225500e+04)  ; FMin(a,b)
  %10243 = call float @dx.op.binary.f32(i32 36, float %10240, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10241)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10242)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10243)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10244 = call float @dx.op.binary.f32(i32 36, float %8494, float 3.225500e+04)  ; FMin(a,b)
  %10245 = call float @dx.op.binary.f32(i32 36, float %10237, float 3.225500e+04)  ; FMin(a,b)
  %10246 = call float @dx.op.binary.f32(i32 36, float %10237, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %10244)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %10245)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %10246)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!75}
!dx.entryPoints = !{!76}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !64, !67}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 9, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 22, i32 1, i32 11, i32 0, null}
!13 = !{i32 6, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 52, i32 1, i32 4, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 18, i32 1, i32 11, i32 0, null}
!21 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 19, i32 1, i32 11, i32 0, null}
!22 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 20, i32 1, i32 11, i32 0, null}
!23 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 21, i32 1, i32 11, i32 0, null}
!24 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!25 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!26 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!27 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!28 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!29 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!30 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!31 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!32 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!33 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!34 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!35 = !{i32 28, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !36}
!36 = !{i32 0, i32 5}
!37 = !{i32 29, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!38 = !{i32 30, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!39 = !{i32 31, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!40 = !{i32 32, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!41 = !{i32 33, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!42 = !{i32 34, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!43 = !{i32 35, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!44 = !{i32 36, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 1, i32 1, i32 2, i32 0, !7}
!45 = !{i32 37, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!46 = !{i32 38, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!47 = !{i32 39, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!48 = !{i32 40, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !49}
!49 = !{i32 0, i32 14}
!50 = !{i32 41, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!51 = !{i32 42, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!52 = !{i32 43, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!53 = !{i32 44, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!54 = !{i32 45, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!55 = !{i32 46, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!56 = !{i32 47, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!57 = !{i32 48, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!58 = !{i32 49, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!59 = !{i32 50, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!60 = !{i32 51, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!61 = !{i32 52, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !49}
!62 = !{i32 53, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!63 = !{i32 54, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!64 = !{!65, !66}
!65 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!66 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!67 = !{!68, !69, !70, !71, !72, !73, !74}
!68 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!69 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!70 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!71 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!72 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!73 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!74 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!75 = !{[58 x i32] [i32 56, i32 8, i32 103, i32 103, i32 7, i32 7, i32 119, i32 7, i32 7, i32 7, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 119, i32 7, i32 119, i32 7, i32 7, i32 0, i32 119, i32 0, i32 0, i32 0]}
!76 = !{void ()* @ps_main, !"ps_main", !77, !4, !105}
!77 = !{!78, !101, null}
!78 = !{!79, !82, !83, !85, !87, !88, !89, !90, !92, !93, !94, !95, !96, !97, !98, !99, !100}
!79 = !{i32 0, !"SV_Position", i8 9, i8 3, !80, i8 4, i32 1, i8 4, i32 0, i8 0, !81}
!80 = !{i32 0}
!81 = !{i32 3, i32 15}
!82 = !{i32 1, !"COLOR", i8 9, i8 0, !80, i8 2, i32 1, i8 4, i32 1, i8 0, !81}
!83 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !80, i8 2, i32 1, i8 4, i32 2, i8 0, !84}
!84 = !{i32 3, i32 3}
!85 = !{i32 3, !"NORMAL", i8 9, i8 0, !80, i8 2, i32 1, i8 3, i32 3, i8 0, !86}
!86 = !{i32 3, i32 7}
!87 = !{i32 4, !"TANGENT", i8 9, i8 0, !80, i8 2, i32 1, i8 4, i32 4, i8 0, !81}
!88 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !80, i8 2, i32 1, i8 3, i32 5, i8 0, !86}
!89 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !80, i8 2, i32 1, i8 4, i32 6, i8 0, !81}
!90 = !{i32 7, !"COMP_FACTOR", i8 9, i8 0, !80, i8 2, i32 1, i8 1, i32 3, i8 3, !91}
!91 = !{i32 3, i32 1}
!92 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !80, i8 2, i32 1, i8 3, i32 7, i8 0, !86}
!93 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !80, i8 2, i32 1, i8 4, i32 8, i8 0, !81}
!94 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !80, i8 2, i32 1, i8 2, i32 9, i8 0, !84}
!95 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !80, i8 2, i32 1, i8 4, i32 10, i8 0, !81}
!96 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !80, i8 2, i32 1, i8 4, i32 11, i8 0, !81}
!97 = !{i32 13, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !80, i8 1, i32 1, i8 1, i32 12, i8 0, !91}
!98 = !{i32 14, !"ENTITY_IDS", i8 5, i8 0, !80, i8 1, i32 1, i8 2, i32 12, i8 1, !84}
!99 = !{i32 15, !"PACKED_TRI_DATA", i8 5, i8 0, !80, i8 1, i32 1, i8 4, i32 13, i8 0, !91}
!100 = !{i32 16, !"SV_SampleIndex", i8 5, i8 12, !80, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!101 = !{!102, !103}
!102 = !{i32 0, !"SV_Target", i8 9, i8 16, !80, i8 0, i32 1, i8 4, i32 0, i8 0, !81}
!103 = !{i32 1, !"SV_Target", i8 9, i8 16, !104, i8 0, i32 1, i8 4, i32 1, i8 0, !81}
!104 = !{i32 1}
!105 = !{i32 0, i64 16}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !108}
!108 = !{!"llvm.loop.unroll.disable"}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = !{!115, !115, i64 0}
!115 = !{!"int", !116, i64 0}
!116 = !{!"omnipotent char", !117, i64 0}
!117 = !{!"Simple C/C++ TBAA"}
!118 = !{!119, !121, !123, !125}
!119 = distinct !{!119, !120, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!120 = distinct !{!120, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!121 = distinct !{!121, !122, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!122 = distinct !{!122, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!123 = distinct !{!123, !124, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!124 = distinct !{!124, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!125 = distinct !{!125, !126, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!126 = distinct !{!126, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = !{!129, !129, i64 0}
!129 = !{!"float", !116, i64 0}
!130 = distinct !{!130, !108}
!131 = distinct !{!131, !108}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 1}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 1}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 1}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 1}
!138 = distinct !{!138, !"dx.controlflow.hints", i32 1}
!139 = distinct !{!139, !"dx.controlflow.hints", i32 1}
!140 = distinct !{!140, !"dx.controlflow.hints", i32 1}
!141 = distinct !{!141, !"dx.controlflow.hints", i32 1}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 1}
!143 = !{!144, !146, !148, !149, !151, !152, !153, !155, !156, !157}
!144 = distinct !{!144, !145, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!145 = distinct !{!145, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!146 = distinct !{!146, !147, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!147 = distinct !{!147, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!148 = distinct !{!148, !147, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!149 = distinct !{!149, !150, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!150 = distinct !{!150, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!151 = distinct !{!151, !150, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!152 = distinct !{!152, !150, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!153 = distinct !{!153, !154, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!154 = distinct !{!154, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!155 = distinct !{!155, !154, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!156 = distinct !{!156, !154, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!157 = distinct !{!157, !158, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!158 = distinct !{!158, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!159 = !{!160}
!160 = distinct !{!160, !161, !"\01?sort@@YAXAIAM00@Z: %c"}
!161 = distinct !{!161, !"\01?sort@@YAXAIAM00@Z"}
!162 = !{!163, !164, !144, !146, !148, !149, !151, !152, !153, !155, !156, !157}
!163 = distinct !{!163, !161, !"\01?sort@@YAXAIAM00@Z: %a"}
!164 = distinct !{!164, !161, !"\01?sort@@YAXAIAM00@Z: %b"}
!165 = !{!164}
!166 = !{!163, !160, !144, !146, !148, !149, !151, !152, !153, !155, !156, !157}
!167 = !{!163}
!168 = !{!164, !160, !144, !146, !148, !149, !151, !152, !153, !155, !156, !157}
!169 = !{!170}
!170 = distinct !{!170, !171, !"\01?sort@@YAXAIAM00@Z: %c"}
!171 = distinct !{!171, !"\01?sort@@YAXAIAM00@Z"}
!172 = !{!173, !174, !144, !146, !148, !149, !151, !152, !153, !155, !156, !157}
!173 = distinct !{!173, !171, !"\01?sort@@YAXAIAM00@Z: %a"}
!174 = distinct !{!174, !171, !"\01?sort@@YAXAIAM00@Z: %b"}
!175 = !{!174}
!176 = !{!173, !170, !144, !146, !148, !149, !151, !152, !153, !155, !156, !157}
!177 = !{!173}
!178 = !{!174, !170, !144, !146, !148, !149, !151, !152, !153, !155, !156, !157}
!179 = distinct !{!179, !"dx.controlflow.hints", i32 1}
!180 = distinct !{!180, !"dx.controlflow.hints", i32 2}
!181 = distinct !{!181, !"dx.controlflow.hints", i32 1}
!182 = distinct !{!182, !"dx.controlflow.hints", i32 1}
!183 = distinct !{!183, !"dx.controlflow.hints", i32 1}
!184 = distinct !{!184, !"dx.controlflow.hints", i32 1}
!185 = distinct !{!185, !"dx.controlflow.hints", i32 1}
!186 = distinct !{!186, !"dx.controlflow.hints", i32 1}
!187 = distinct !{!187, !"dx.controlflow.hints", i32 1}
!188 = distinct !{!188, !"dx.controlflow.hints", i32 1}
!189 = distinct !{!189, !"dx.controlflow.hints", i32 1}

