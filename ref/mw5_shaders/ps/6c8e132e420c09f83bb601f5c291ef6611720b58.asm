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
;
; shader hash: 46458b95027ef7bf33e941e6f83c6dc0
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
; Number of inputs: 56, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 52 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 52 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 52 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 52 }
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
  br i1 %725, label %1289, label %726

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
  %1247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %718, i32 undef)  ; BufferLoad(srv,index,wot)
  %1248 = extractvalue %dx.types.ResRet.i32 %1247, 0
  %1249 = and i32 %1248, 26624
  %1250 = icmp eq i32 %1249, 0
  br i1 %1250, label %1274, label %1251

; <label>:1251                                    ; preds = %1243
  %1252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %718, i32 undef)  ; BufferLoad(srv,index,wot)
  %1253 = extractvalue %dx.types.ResRet.i32 %1252, 0
  %1254 = and i32 %1253, 16384
  %1255 = icmp eq i32 %1254, 0
  br i1 %1255, label %1274, label %1256

; <label>:1256                                    ; preds = %1251
  %1257 = and i32 %1253, 1048576
  %1258 = icmp ne i32 %1257, 0
  %1259 = add i32 %62, 508
  %1260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1261 = extractvalue %dx.types.ResRet.i32 %1260, 0
  %1262 = add i32 %1261, 0
  %1263 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1262, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1264 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1263, %dx.types.Handle %117, float %825, float %826, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1265 = extractvalue %dx.types.ResRet.f32 %1264, 0
  %1266 = add i32 %62, 96
  %1267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1268 = extractvalue %dx.types.ResRet.i32 %1267, 0
  %1269 = lshr i32 %1268, 24
  %1270 = uitofp i32 %1269 to float
  %1271 = fmul fast float %1265, 0x3F70101020000000
  %1272 = select i1 %1258, float 0x3F70101020000000, float %1271
  %1273 = fmul fast float %1272, %1270
  br label %1274

; <label>:1274                                    ; preds = %1256, %1251, %1243
  %1275 = phi float [ %1273, %1256 ], [ 0.000000e+00, %1251 ], [ 0.000000e+00, %1243 ]
  %1276 = add i32 %62, 96
  %1277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1276, i32 undef)  ; BufferLoad(srv,index,wot)
  %1278 = extractvalue %dx.types.ResRet.i32 %1277, 0
  %1279 = and i32 %1278, 255
  %1280 = uitofp i32 %1279 to float
  %1281 = lshr i32 %1278, 8
  %1282 = and i32 %1281, 255
  %1283 = uitofp i32 %1282 to float
  %1284 = call float @dx.op.dot3.f32(i32 55, float %1116, float %1117, float %1118, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1285 = fmul fast float %1283, %1284
  %1286 = fadd fast float %1285, %1280
  %1287 = fmul fast float %1286, 0x3F70101020000000
  %1288 = call float @dx.op.unary.f32(i32 7, float %1287)  ; Saturate(value)
  br label %1289

; <label>:1289                                    ; preds = %1274, %711
  %1290 = phi float [ 0.000000e+00, %711 ], [ %1197, %1274 ]
  %1291 = phi float [ 0.000000e+00, %711 ], [ %1198, %1274 ]
  %1292 = phi float [ 0.000000e+00, %711 ], [ %1116, %1274 ]
  %1293 = phi float [ 0.000000e+00, %711 ], [ %1117, %1274 ]
  %1294 = phi float [ 0.000000e+00, %711 ], [ %1118, %1274 ]
  %1295 = phi float [ 0.000000e+00, %711 ], [ %1244, %1274 ]
  %1296 = phi float [ 0.000000e+00, %711 ], [ %1245, %1274 ]
  %1297 = phi float [ 0.000000e+00, %711 ], [ %1246, %1274 ]
  %1298 = phi float [ 0.000000e+00, %711 ], [ %1102, %1274 ]
  %1299 = phi float [ 0.000000e+00, %711 ], [ %898, %1274 ]
  %1300 = phi float [ 0.000000e+00, %711 ], [ %1196, %1274 ]
  %1301 = phi float [ 0.000000e+00, %711 ], [ %1199, %1274 ]
  %1302 = phi float [ 0.000000e+00, %711 ], [ %1275, %1274 ]
  %1303 = phi float [ 0.000000e+00, %711 ], [ %1288, %1274 ]
  br i1 %659, label %2069, label %1304

; <label>:1304                                    ; preds = %1289
  %1305 = icmp ult i32 %717, 2
  %1306 = add i32 %62, 40
  %1307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1306, i32 undef)  ; BufferLoad(srv,index,wot)
  %1308 = extractvalue %dx.types.ResRet.i32 %1307, 0
  %1309 = add i32 %62, 44
  %1310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1309, i32 undef)  ; BufferLoad(srv,index,wot)
  %1311 = extractvalue %dx.types.ResRet.i32 %1310, 0
  %1312 = or i32 %1311, %1308
  %1313 = icmp eq i32 %1312, 0
  br i1 %1313, label %2069, label %1314

; <label>:1314                                    ; preds = %1304
  %1315 = and i32 %1308, 262144
  %1316 = icmp ne i32 %1315, 0
  %1317 = select i1 %1316, float %70, float 1.000000e+00
  %1318 = select i1 %1316, float %71, float 0.000000e+00
  %1319 = select i1 %1316, float %72, float 0.000000e+00
  %1320 = select i1 %1316, float %73, float 1.000000e+00
  %1321 = select i1 %1316, float %74, float %98
  %1322 = select i1 %1316, float %75, float %99
  %1323 = add i32 %62, 300
  %1324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1325 = extractvalue %dx.types.ResRet.i32 %1324, 0
  %1326 = lshr i32 %1325, 16
  %1327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1326)  ; LegacyF16ToF32(value)
  %1328 = fmul fast float %1327, 0x3F50624DE0000000
  %1329 = add i32 %62, 104
  %1330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1329, i32 undef)  ; BufferLoad(srv,index,wot)
  %1331 = extractvalue %dx.types.ResRet.i32 %1330, 0
  %1332 = lshr i32 %1331, 16
  %1333 = and i32 %1332, 255
  %1334 = lshr i32 %1331, 24
  %1335 = add i32 %62, 308
  %1336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1335, i32 undef)  ; BufferLoad(srv,index,wot)
  %1337 = extractvalue %dx.types.ResRet.i32 %1336, 0
  %1338 = and i32 %1337, 65535
  %1339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1338)  ; LegacyF16ToF32(value)
  %1340 = lshr i32 %1337, 16
  %1341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1340)  ; LegacyF16ToF32(value)
  %1342 = add i32 %62, 48
  %1343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1342, i32 undef)  ; BufferLoad(srv,index,wot)
  %1344 = extractvalue %dx.types.ResRet.i32 %1343, 0
  %1345 = lshr i32 %1344, 22
  %1346 = shl nuw nsw i32 %1345, 5
  %1347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1346)  ; LegacyF16ToF32(value)
  %1348 = shl i32 %1344, 4
  %1349 = and i32 %1348, 32752
  %1350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1349)  ; LegacyF16ToF32(value)
  %1351 = lshr i32 %1344, 7
  %1352 = and i32 %1351, 32752
  %1353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1352)  ; LegacyF16ToF32(value)
  %1354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1355 = extractvalue %dx.types.CBufRet.f32 %1354, 3
  %1356 = fmul fast float %1355, 1.000000e+03
  %1357 = fmul fast float %1356, %438
  %1358 = call float @dx.op.unary.f32(i32 22, float %1357)  ; Frc(value)
  %1359 = fadd fast float %1358, %426
  %1360 = fmul fast float %1356, %440
  %1361 = call float @dx.op.unary.f32(i32 22, float %1360)  ; Frc(value)
  %1362 = fadd fast float %1361, %427
  %1363 = fmul fast float %1328, %1356
  %1364 = call float @dx.op.unary.f32(i32 22, float %1363)  ; Frc(value)
  %1365 = fmul fast float %1364, 0x401921FB60000000
  %1366 = fadd fast float %1365, %1347
  %1367 = call float @dx.op.unary.f32(i32 13, float %1366)  ; Sin(value)
  %1368 = call float @dx.op.unary.f32(i32 12, float %1366)  ; Cos(value)
  %1369 = fsub fast float -0.000000e+00, %1367
  %1370 = fadd fast float %1321, -5.000000e-01
  %1371 = fadd fast float %1322, -5.000000e-01
  %1372 = fmul fast float %1339, %1370
  %1373 = fmul fast float %1341, %1371
  %1374 = fadd fast float %1372, 5.000000e-01
  %1375 = fadd fast float %1373, 5.000000e-01
  %1376 = fmul fast float %1350, %1374
  %1377 = fmul fast float %1353, %1375
  %1378 = fmul fast float %1368, %1376
  %1379 = call float @dx.op.tertiary.f32(i32 46, float %1369, float %1377, float %1378)  ; FMad(a,b,c)
  %1380 = fmul fast float %1367, %1376
  %1381 = call float @dx.op.tertiary.f32(i32 46, float %1368, float %1377, float %1380)  ; FMad(a,b,c)
  %1382 = fadd fast float %1359, %1379
  %1383 = fadd fast float %1362, %1381
  %1384 = icmp ugt i32 %1333, 1
  %1385 = icmp ugt i32 %1331, 33554431
  %1386 = or i1 %1385, %1384
  br i1 %1386, label %1387, label %1412

; <label>:1387                                    ; preds = %1314
  %1388 = add i32 %62, 244
  %1389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1388, i32 undef)  ; BufferLoad(srv,index,wot)
  %1390 = extractvalue %dx.types.ResRet.i32 %1389, 0
  %1391 = lshr i32 %1390, 16
  %1392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1391)  ; LegacyF16ToF32(value)
  %1393 = fmul fast float %1355, %1392
  %1394 = call float @dx.op.unary.f32(i32 22, float %1393)  ; Frc(value)
  %1395 = mul nuw nsw i32 %1333, %1334
  %1396 = uitofp i32 %1395 to float
  %1397 = fmul fast float %1394, %1396
  %1398 = call float @dx.op.unary.f32(i32 27, float %1397)  ; Round_ni(value)
  %1399 = fptoui float %1398 to i32
  %1400 = urem i32 %1399, %1333
  %1401 = udiv i32 %1399, %1334
  %1402 = call float @dx.op.unary.f32(i32 22, float %1382)  ; Frc(value)
  %1403 = call float @dx.op.unary.f32(i32 22, float %1383)  ; Frc(value)
  %1404 = uitofp i32 %1400 to float
  %1405 = uitofp i32 %1401 to float
  %1406 = fadd fast float %1402, %1404
  %1407 = fadd fast float %1403, %1405
  %1408 = uitofp i32 %1333 to float
  %1409 = uitofp i32 %1334 to float
  %1410 = fdiv fast float %1406, %1408
  %1411 = fdiv fast float %1407, %1409
  br label %1412

; <label>:1412                                    ; preds = %1387, %1314
  %1413 = phi float [ %1410, %1387 ], [ %1382, %1314 ]
  %1414 = phi float [ %1411, %1387 ], [ %1383, %1314 ]
  %1415 = and i32 %1308, 256
  %1416 = icmp eq i32 %1415, 0
  br i1 %1416, label %1463, label %1417

; <label>:1417                                    ; preds = %1412
  %1418 = add i32 %62, 476
  %1419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1418, i32 undef)  ; BufferLoad(srv,index,wot)
  %1420 = extractvalue %dx.types.ResRet.i32 %1419, 0
  %1421 = add i32 %1420, 0
  %1422 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1421, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1423 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1422, %dx.types.Handle %117, float %1413, float %1414, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1424 = extractvalue %dx.types.ResRet.f32 %1423, 0
  %1425 = add i32 %62, 116
  %1426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1425, i32 undef)  ; BufferLoad(srv,index,wot)
  %1427 = extractvalue %dx.types.ResRet.i32 %1426, 0
  %1428 = shl i32 %1427, 4
  %1429 = and i32 %1428, 32752
  %1430 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1429)  ; LegacyF16ToF32(value)
  %1431 = lshr i32 %1427, 7
  %1432 = and i32 %1431, 32752
  %1433 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1432)  ; LegacyF16ToF32(value)
  %1434 = fsub fast float 1.000000e+00, %714
  %1435 = call float @dx.op.binary.f32(i32 35, float %1434, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1436 = bitcast float %714 to i32
  %1437 = sitofp i32 %1436 to float
  %1438 = fadd fast float %1437, 0xC1CFBF8940000000
  %1439 = fmul fast float %1433, %1438
  %1440 = fadd fast float %1439, 0x41CFBF8940000000
  %1441 = fptosi float %1440 to i32
  %1442 = bitcast i32 %1441 to float
  %1443 = bitcast float %1435 to i32
  %1444 = sitofp i32 %1443 to float
  %1445 = fadd fast float %1444, 0xC1CFBF8940000000
  %1446 = fmul fast float %1445, %1433
  %1447 = fadd fast float %1446, 0x41CFBF8940000000
  %1448 = fptosi float %1447 to i32
  %1449 = bitcast i32 %1448 to float
  %1450 = fmul fast float %1442, %1430
  %1451 = fmul fast float %1449, %1430
  %1452 = fsub fast float %1435, %1450
  %1453 = fadd fast float %1451, %1435
  %1454 = call float @dx.op.unary.f32(i32 7, float %1452)  ; Saturate(value)
  %1455 = call float @dx.op.unary.f32(i32 7, float %1453)  ; Saturate(value)
  %1456 = fsub fast float %1424, %1454
  %1457 = fsub fast float %1455, %1454
  %1458 = bitcast float %1457 to i32
  %1459 = sub nsw i32 2129859010, %1458
  %1460 = bitcast i32 %1459 to float
  %1461 = fmul fast float %1460, %1456
  %1462 = call float @dx.op.unary.f32(i32 7, float %1461)  ; Saturate(value)
  br label %1463

; <label>:1463                                    ; preds = %1417, %1412
  %1464 = phi float [ %1462, %1417 ], [ %714, %1412 ]
  %1465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1306, i32 undef)  ; BufferLoad(srv,index,wot)
  %1466 = extractvalue %dx.types.ResRet.i32 %1465, 0
  %1467 = and i32 %1466, 128
  %1468 = icmp eq i32 %1467, 0
  br i1 %1468, label %1485, label %1469

; <label>:1469                                    ; preds = %1463
  %1470 = add i32 %62, 460
  %1471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1470, i32 undef)  ; BufferLoad(srv,index,wot)
  %1472 = extractvalue %dx.types.ResRet.i32 %1471, 0
  %1473 = add i32 %1472, 0
  %1474 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1473, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1475 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1474, %dx.types.Handle %117, float %1413, float %1414, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1476 = extractvalue %dx.types.ResRet.f32 %1475, 0
  %1477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1306, i32 undef)  ; BufferLoad(srv,index,wot)
  %1478 = extractvalue %dx.types.ResRet.i32 %1477, 0
  %1479 = and i32 %1478, 524288
  %1480 = icmp ne i32 %1479, 0
  %1481 = fcmp fast ogt float %1476, 0x3FE0101020000000
  %1482 = select i1 %1481, float 1.000000e+00, float 0.000000e+00
  %1483 = select i1 %1480, float %1482, float %1476
  %1484 = fmul fast float %1483, %1464
  br label %1485

; <label>:1485                                    ; preds = %1469, %1463
  %1486 = phi float [ %1484, %1469 ], [ %1464, %1463 ]
  %1487 = fcmp fast ult float %1486, 0x3F70101020000000
  br i1 %1487, label %2069, label %1488

; <label>:1488                                    ; preds = %1485
  %1489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1306, i32 undef)  ; BufferLoad(srv,index,wot)
  %1490 = extractvalue %dx.types.ResRet.i32 %1489, 0
  %1491 = and i32 %1490, 16
  %1492 = icmp eq i32 %1491, 0
  br i1 %1492, label %1691, label %1493

; <label>:1493                                    ; preds = %1488
  %1494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1329, i32 undef)  ; BufferLoad(srv,index,wot)
  %1495 = extractvalue %dx.types.ResRet.i32 %1494, 0
  %1496 = add i32 %62, 412
  %1497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1496, i32 undef)  ; BufferLoad(srv,index,wot)
  %1498 = extractvalue %dx.types.ResRet.i32 %1497, 0
  %1499 = add i32 %1498, 0
  %1500 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1499, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1501 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1500, %dx.types.Handle %116, float %1413, float %1414, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1502 = extractvalue %dx.types.ResRet.f32 %1501, 0
  %1503 = extractvalue %dx.types.ResRet.f32 %1501, 1
  %1504 = extractvalue %dx.types.ResRet.f32 %1501, 2
  %1505 = extractvalue %dx.types.ResRet.f32 %1501, 3
  %1506 = and i32 %1495, 255
  %1507 = uitofp i32 %1506 to float
  %1508 = lshr i32 %1495, 8
  %1509 = and i32 %1508, 255
  %1510 = uitofp i32 %1509 to float
  %1511 = fmul fast float %1505, %1507
  %1512 = fadd fast float %1511, %1510
  %1513 = fmul fast float %1512, 0x3F70101000000000
  %1514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1306, i32 undef)  ; BufferLoad(srv,index,wot)
  %1515 = extractvalue %dx.types.ResRet.i32 %1514, 0
  %1516 = and i32 %1515, 512
  %1517 = icmp eq i32 %1516, 0
  br i1 %1517, label %1526, label %1518

; <label>:1518                                    ; preds = %1493
  %1519 = add i32 %62, 496
  %1520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1519, i32 undef)  ; BufferLoad(srv,index,wot)
  %1521 = extractvalue %dx.types.ResRet.i32 %1520, 0
  %1522 = add i32 %1521, 0
  %1523 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1522, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1524 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1523, %dx.types.Handle %117, float %1413, float %1414, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1525 = extractvalue %dx.types.ResRet.f32 %1524, 0
  br label %1526

; <label>:1526                                    ; preds = %1518, %1493
  %1527 = phi float [ %1525, %1518 ], [ 1.000000e+00, %1493 ]
  %1528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1306, i32 undef)  ; BufferLoad(srv,index,wot)
  %1529 = extractvalue %dx.types.ResRet.i32 %1528, 0
  %1530 = and i32 %1529, 33554432
  %1531 = icmp eq i32 %1530, 0
  br i1 %1531, label %1638, label %1532

; <label>:1532                                    ; preds = %1526
  %1533 = add i32 %62, 240
  %1534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1533, i32 undef)  ; BufferLoad(srv,index,wot)
  %1535 = extractvalue %dx.types.ResRet.i32 %1534, 0
  %1536 = and i32 %1535, 65535
  %1537 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1536)  ; LegacyF16ToF32(value)
  %1538 = lshr i32 %1535, 16
  %1539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1538)  ; LegacyF16ToF32(value)
  %1540 = add i32 %62, 244
  %1541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1540, i32 undef)  ; BufferLoad(srv,index,wot)
  %1542 = extractvalue %dx.types.ResRet.i32 %1541, 0
  %1543 = and i32 %1542, 65535
  %1544 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1543)  ; LegacyF16ToF32(value)
  %1545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %350, i32 undef)  ; BufferLoad(srv,index,wot)
  %1546 = extractvalue %dx.types.ResRet.i32 %1545, 0
  %1547 = lshr i32 %1546, 24
  %1548 = uitofp i32 %1547 to float
  %1549 = fmul fast float %1548, 0x3F70101020000000
  %1550 = and i32 %1546, 255
  %1551 = uitofp i32 %1550 to float
  %1552 = fmul fast float %1551, 0x3F70101020000000
  %1553 = lshr i32 %1546, 8
  %1554 = and i32 %1553, 255
  %1555 = uitofp i32 %1554 to float
  %1556 = fmul fast float %1555, 0x3F70101020000000
  %1557 = lshr i32 %1546, 16
  %1558 = and i32 %1557, 255
  %1559 = uitofp i32 %1558 to float
  %1560 = fmul fast float %1559, 0x3F70101020000000
  %1561 = add i32 %62, 236
  %1562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1561, i32 undef)  ; BufferLoad(srv,index,wot)
  %1563 = extractvalue %dx.types.ResRet.i32 %1562, 0
  %1564 = lshr i32 %1563, 24
  %1565 = uitofp i32 %1564 to float
  %1566 = fmul fast float %1565, 0x3F70101020000000
  %1567 = and i32 %1563, 255
  %1568 = uitofp i32 %1567 to float
  %1569 = fmul fast float %1568, 0x3F70101020000000
  %1570 = lshr i32 %1563, 8
  %1571 = and i32 %1570, 255
  %1572 = uitofp i32 %1571 to float
  %1573 = fmul fast float %1572, 0x3F70101020000000
  %1574 = lshr i32 %1563, 16
  %1575 = and i32 %1574, 255
  %1576 = uitofp i32 %1575 to float
  %1577 = fmul fast float %1576, 0x3F70101020000000
  %1578 = bitcast float %1502 to i32
  %1579 = ashr i32 %1578, 1
  %1580 = sub nsw i32 1597463174, %1579
  %1581 = bitcast i32 %1580 to float
  %1582 = fmul fast float %1502, 5.000000e-01
  %1583 = fmul fast float %1581, %1581
  %1584 = fmul fast float %1583, %1582
  %1585 = fsub fast float 1.500000e+00, %1584
  %1586 = fmul fast float %1581, %1502
  %1587 = fmul fast float %1586, %1585
  %1588 = bitcast float %1503 to i32
  %1589 = ashr i32 %1588, 1
  %1590 = sub nsw i32 1597463174, %1589
  %1591 = bitcast i32 %1590 to float
  %1592 = fmul fast float %1503, 5.000000e-01
  %1593 = fmul fast float %1591, %1591
  %1594 = fmul fast float %1593, %1592
  %1595 = fsub fast float 1.500000e+00, %1594
  %1596 = fmul fast float %1591, %1503
  %1597 = fmul fast float %1596, %1595
  %1598 = bitcast float %1504 to i32
  %1599 = ashr i32 %1598, 1
  %1600 = sub nsw i32 1597463174, %1599
  %1601 = bitcast i32 %1600 to float
  %1602 = fmul fast float %1504, 5.000000e-01
  %1603 = fmul fast float %1601, %1601
  %1604 = fmul fast float %1603, %1602
  %1605 = fsub fast float 1.500000e+00, %1604
  %1606 = fmul fast float %1601, %1504
  %1607 = fmul fast float %1606, %1605
  %1608 = fsub fast float %1587, %1569
  %1609 = fsub fast float %1597, %1573
  %1610 = fsub fast float %1607, %1577
  %1611 = fmul fast float %1608, %1537
  %1612 = fmul fast float %1609, %1539
  %1613 = fmul fast float %1610, %1544
  %1614 = fadd fast float %1611, %1552
  %1615 = fadd fast float %1612, %1556
  %1616 = fadd fast float %1613, %1560
  %1617 = call float @dx.op.unary.f32(i32 7, float %1614)  ; Saturate(value)
  %1618 = call float @dx.op.unary.f32(i32 7, float %1615)  ; Saturate(value)
  %1619 = call float @dx.op.unary.f32(i32 7, float %1616)  ; Saturate(value)
  %1620 = fmul fast float %1617, %1617
  %1621 = fmul fast float %1618, %1618
  %1622 = fmul fast float %1619, %1619
  %1623 = fsub fast float %1620, %1502
  %1624 = fsub fast float %1621, %1503
  %1625 = fsub fast float %1622, %1504
  %1626 = fmul fast float %1623, %1527
  %1627 = fmul fast float %1624, %1527
  %1628 = fmul fast float %1625, %1527
  %1629 = fadd fast float %1626, %1502
  %1630 = fadd fast float %1627, %1503
  %1631 = fadd fast float %1628, %1504
  %1632 = fadd fast float %1549, %1513
  %1633 = fsub fast float %1632, %1566
  %1634 = call float @dx.op.unary.f32(i32 7, float %1633)  ; Saturate(value)
  %1635 = fsub fast float %1634, %1513
  %1636 = fmul fast float %1635, %1527
  %1637 = fadd fast float %1636, %1513
  br label %1691

; <label>:1638                                    ; preds = %1526
  %1639 = and i32 %1529, 134217728
  %1640 = icmp eq i32 %1639, 0
  br i1 %1640, label %1675, label %1641

; <label>:1641                                    ; preds = %1638
  %1642 = call float @dx.op.unary.f32(i32 24, float %414)  ; Sqrt(value)
  %1643 = call float @dx.op.unary.f32(i32 24, float %415)  ; Sqrt(value)
  %1644 = call float @dx.op.unary.f32(i32 24, float %416)  ; Sqrt(value)
  %1645 = fadd fast float %1642, -5.000000e-01
  %1646 = fadd fast float %1643, -5.000000e-01
  %1647 = fadd fast float %1644, -5.000000e-01
  %1648 = fmul fast float %1645, %1527
  %1649 = fmul fast float %1646, %1527
  %1650 = fmul fast float %1647, %1527
  %1651 = fadd fast float %1648, 5.000000e-01
  %1652 = fadd fast float %1649, 5.000000e-01
  %1653 = fadd fast float %1650, 5.000000e-01
  %1654 = call float @dx.op.unary.f32(i32 24, float %1502)  ; Sqrt(value)
  %1655 = call float @dx.op.unary.f32(i32 24, float %1503)  ; Sqrt(value)
  %1656 = call float @dx.op.unary.f32(i32 24, float %1504)  ; Sqrt(value)
  %1657 = fmul fast float %1651, 2.000000e+00
  %1658 = fsub fast float 1.000000e+00, %1657
  %1659 = fmul fast float %1658, %1654
  %1660 = fadd fast float %1659, %1657
  %1661 = fmul fast float %1660, %1654
  %1662 = fmul fast float %1652, 2.000000e+00
  %1663 = fsub fast float 1.000000e+00, %1662
  %1664 = fmul fast float %1663, %1655
  %1665 = fadd fast float %1664, %1662
  %1666 = fmul fast float %1665, %1655
  %1667 = fmul fast float %1653, 2.000000e+00
  %1668 = fsub fast float 1.000000e+00, %1667
  %1669 = fmul fast float %1668, %1656
  %1670 = fadd fast float %1669, %1667
  %1671 = fmul fast float %1670, %1656
  %1672 = fmul fast float %1661, %1661
  %1673 = fmul fast float %1666, %1666
  %1674 = fmul fast float %1671, %1671
  br label %1691

; <label>:1675                                    ; preds = %1638
  %1676 = fmul fast float %414, %414
  %1677 = fmul fast float %415, %415
  %1678 = fmul fast float %416, %416
  %1679 = fadd fast float %1676, -1.000000e+00
  %1680 = fadd fast float %1677, -1.000000e+00
  %1681 = fadd fast float %1678, -1.000000e+00
  %1682 = fmul fast float %1527, %1679
  %1683 = fmul fast float %1527, %1680
  %1684 = fmul fast float %1527, %1681
  %1685 = fadd fast float %1682, 1.000000e+00
  %1686 = fadd fast float %1683, 1.000000e+00
  %1687 = fadd fast float %1684, 1.000000e+00
  %1688 = fmul fast float %1685, %1502
  %1689 = fmul fast float %1686, %1503
  %1690 = fmul fast float %1687, %1504
  br label %1691

; <label>:1691                                    ; preds = %1675, %1641, %1532, %1488
  %1692 = phi float [ %1637, %1532 ], [ %1513, %1641 ], [ %1513, %1675 ], [ 0x3FA23C0BE0000000, %1488 ]
  %1693 = phi float [ %1629, %1532 ], [ %1672, %1641 ], [ %1688, %1675 ], [ 1.000000e+00, %1488 ]
  %1694 = phi float [ %1630, %1532 ], [ %1673, %1641 ], [ %1689, %1675 ], [ 1.000000e+00, %1488 ]
  %1695 = phi float [ %1631, %1532 ], [ %1674, %1641 ], [ %1690, %1675 ], [ 1.000000e+00, %1488 ]
  %1696 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1697 = extractvalue %dx.types.CBufRet.i32 %1696, 1
  %1698 = and i32 %1697, 1
  %1699 = icmp ne i32 %1698, 0
  %1700 = add i32 %62, 356
  %1701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1700, i32 undef)  ; BufferLoad(srv,index,wot)
  %1702 = extractvalue %dx.types.ResRet.i32 %1701, 0
  %1703 = and i32 %1702, 32
  %1704 = icmp ne i32 %1703, 0
  %1705 = and i1 %1699, %1704
  %1706 = select i1 %1705, float 1.000000e+00, float %1693
  %1707 = select i1 %1705, float 0x3FD3333340000000, float %1694
  %1708 = select i1 %1705, float 0x3FD3333340000000, float %1695
  %1709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1306, i32 undef)  ; BufferLoad(srv,index,wot)
  %1710 = extractvalue %dx.types.ResRet.i32 %1709, 0
  %1711 = and i32 %1710, 32
  %1712 = icmp eq i32 %1711, 0
  br i1 %1712, label %1785, label %1713

; <label>:1713                                    ; preds = %1691
  %1714 = add i32 %62, 108
  %1715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1714, i32 undef)  ; BufferLoad(srv,index,wot)
  %1716 = extractvalue %dx.types.ResRet.i32 %1715, 0
  %1717 = add i32 %62, 428
  %1718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1717, i32 undef)  ; BufferLoad(srv,index,wot)
  %1719 = extractvalue %dx.types.ResRet.i32 %1718, 0
  %1720 = add i32 %1719, 0
  %1721 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1720, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1722 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1721, %dx.types.Handle %116, float %1413, float %1414, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1723 = extractvalue %dx.types.ResRet.f32 %1722, 0
  %1724 = extractvalue %dx.types.ResRet.f32 %1722, 1
  %1725 = extractvalue %dx.types.ResRet.f32 %1722, 2
  %1726 = extractvalue %dx.types.ResRet.f32 %1722, 3
  %1727 = and i32 %1716, 255
  %1728 = uitofp i32 %1727 to float
  %1729 = lshr i32 %1716, 8
  %1730 = and i32 %1729, 255
  %1731 = uitofp i32 %1730 to float
  %1732 = lshr i32 %1716, 16
  %1733 = and i32 %1732, 255
  %1734 = uitofp i32 %1733 to float
  %1735 = fmul fast float %1734, 0x3F70101000000000
  %1736 = fmul fast float %1723, %1728
  %1737 = fadd fast float %1736, %1731
  %1738 = fmul fast float %1737, 0x3F70101000000000
  %1739 = fadd fast float %1724, -5.000000e-01
  %1740 = fadd fast float %1726, -5.000000e-01
  %1741 = fmul fast float %1739, %1735
  %1742 = fmul fast float %1740, %1735
  %1743 = fadd fast float %1741, 5.000000e-01
  %1744 = fadd fast float %1742, 5.000000e-01
  %1745 = fmul fast float %1743, 2.000000e+00
  %1746 = fadd fast float %1745, -1.000000e+00
  %1747 = fmul fast float %1744, 2.000000e+00
  %1748 = fadd fast float %1747, -1.000000e+00
  %1749 = fadd fast float %1746, %1748
  %1750 = fmul fast float %1749, 5.000000e-01
  %1751 = fsub fast float %1746, %1748
  %1752 = fmul fast float %1751, 5.000000e-01
  %1753 = call float @dx.op.unary.f32(i32 6, float %1750)  ; FAbs(value)
  %1754 = fsub fast float 1.000000e+00, %1753
  %1755 = call float @dx.op.unary.f32(i32 6, float %1752)  ; FAbs(value)
  %1756 = fsub fast float %1754, %1755
  %1757 = call float @dx.op.dot3.f32(i32 55, float %1750, float %1752, float %1756, float %1750, float %1752, float %1756)  ; Dot3(ax,ay,az,bx,by,bz)
  %1758 = call float @dx.op.unary.f32(i32 25, float %1757)  ; Rsqrt(value)
  %1759 = fmul fast float %1750, %1758
  %1760 = fmul fast float %1752, %1758
  %1761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1306, i32 undef)  ; BufferLoad(srv,index,wot)
  %1762 = extractvalue %dx.types.ResRet.i32 %1761, 0
  %1763 = and i32 %1762, 67108864
  %1764 = icmp eq i32 %1763, 0
  br i1 %1764, label %1781, label %1765

; <label>:1765                                    ; preds = %1713
  %1766 = add i32 %62, 296
  %1767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %1768 = extractvalue %dx.types.ResRet.i32 %1767, 0
  %1769 = and i32 %1768, 65535
  %1770 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1769)  ; LegacyF16ToF32(value)
  %1771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1772 = extractvalue %dx.types.ResRet.i32 %1771, 0
  %1773 = and i32 %1772, 65535
  %1774 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1773)  ; LegacyF16ToF32(value)
  %1775 = lshr i32 %1768, 16
  %1776 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1775)  ; LegacyF16ToF32(value)
  %1777 = fsub fast float %1738, %1776
  %1778 = fmul fast float %1777, %1770
  %1779 = fadd fast float %1778, %1774
  %1780 = call float @dx.op.unary.f32(i32 7, float %1779)  ; Saturate(value)
  br label %1781

; <label>:1781                                    ; preds = %1765, %1713
  %1782 = phi float [ %1780, %1765 ], [ %1738, %1713 ]
  %1783 = call float @dx.op.dot2.f32(i32 54, float %1759, float %1760, float %1317, float %1318)  ; Dot2(ax,ay,bx,by)
  %1784 = call float @dx.op.dot2.f32(i32 54, float %1759, float %1760, float %1319, float %1320)  ; Dot2(ax,ay,bx,by)
  br label %1785

; <label>:1785                                    ; preds = %1781, %1691
  %1786 = phi float [ %1782, %1781 ], [ 0x3FD6666660000000, %1691 ]
  %1787 = phi float [ %1783, %1781 ], [ 0.000000e+00, %1691 ]
  %1788 = phi float [ %1784, %1781 ], [ 0.000000e+00, %1691 ]
  %1789 = phi float [ %1725, %1781 ], [ 1.000000e+00, %1691 ]
  %1790 = add i32 %62, 176
  %1791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %1792 = extractvalue %dx.types.ResRet.i32 %1791, 0
  %1793 = lshr i32 %1792, 22
  %1794 = shl nuw nsw i32 %1793, 5
  %1795 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1794)  ; LegacyF16ToF32(value)
  %1796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1306, i32 undef)  ; BufferLoad(srv,index,wot)
  %1797 = extractvalue %dx.types.ResRet.i32 %1796, 0
  %1798 = and i32 %1797, 64
  %1799 = icmp eq i32 %1798, 0
  br i1 %1799, label %1833, label %1800

; <label>:1800                                    ; preds = %1785
  %1801 = add i32 %62, 444
  %1802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1801, i32 undef)  ; BufferLoad(srv,index,wot)
  %1803 = extractvalue %dx.types.ResRet.i32 %1802, 0
  %1804 = add i32 %1803, 0
  %1805 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1804, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1306, i32 undef)  ; BufferLoad(srv,index,wot)
  %1807 = extractvalue %dx.types.ResRet.i32 %1806, 0
  %1808 = and i32 %1807, 131072
  %1809 = icmp eq i32 %1808, 0
  %1810 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1805, %dx.types.Handle %116, float %1413, float %1414, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1811 = extractvalue %dx.types.ResRet.f32 %1810, 0
  %1812 = extractvalue %dx.types.ResRet.f32 %1810, 1
  %1813 = extractvalue %dx.types.ResRet.f32 %1810, 2
  %1814 = fmul fast float %397, %1811
  %1815 = fmul fast float %398, %1812
  %1816 = fmul fast float %399, %1813
  br i1 %1809, label %1823, label %1817

; <label>:1817                                    ; preds = %1800
  %1818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1819 = extractvalue %dx.types.CBufRet.f32 %1818, 0
  %1820 = fmul fast float %1819, %1814
  %1821 = fmul fast float %1819, %1815
  %1822 = fmul fast float %1819, %1816
  br label %1823

; <label>:1823                                    ; preds = %1817, %1800
  %1824 = phi float [ %1820, %1817 ], [ %1814, %1800 ]
  %1825 = phi float [ %1821, %1817 ], [ %1815, %1800 ]
  %1826 = phi float [ %1822, %1817 ], [ %1816, %1800 ]
  %1827 = fmul fast float %1824, %1795
  %1828 = select i1 %279, float %1827, float %1824
  %1829 = call float @dx.op.dot3.f32(i32 55, float %1828, float %1825, float %1826, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1830 = select i1 %279, float 0.000000e+00, float %1824
  %1831 = select i1 %279, float %1829, float %1825
  %1832 = select i1 %279, float 0.000000e+00, float %1826
  br label %1833

; <label>:1833                                    ; preds = %1823, %1785
  %1834 = phi float [ %1830, %1823 ], [ 0.000000e+00, %1785 ]
  %1835 = phi float [ %1831, %1823 ], [ 0.000000e+00, %1785 ]
  %1836 = phi float [ %1832, %1823 ], [ 0.000000e+00, %1785 ]
  %1837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1306, i32 undef)  ; BufferLoad(srv,index,wot)
  %1838 = extractvalue %dx.types.ResRet.i32 %1837, 0
  %1839 = and i32 %1838, 26624
  %1840 = icmp eq i32 %1839, 0
  br i1 %1840, label %1864, label %1841

; <label>:1841                                    ; preds = %1833
  %1842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1306, i32 undef)  ; BufferLoad(srv,index,wot)
  %1843 = extractvalue %dx.types.ResRet.i32 %1842, 0
  %1844 = and i32 %1843, 16384
  %1845 = icmp eq i32 %1844, 0
  br i1 %1845, label %1864, label %1846

; <label>:1846                                    ; preds = %1841
  %1847 = and i32 %1843, 1048576
  %1848 = icmp ne i32 %1847, 0
  %1849 = add i32 %62, 512
  %1850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1849, i32 undef)  ; BufferLoad(srv,index,wot)
  %1851 = extractvalue %dx.types.ResRet.i32 %1850, 0
  %1852 = add i32 %1851, 0
  %1853 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1852, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1854 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1853, %dx.types.Handle %117, float %1413, float %1414, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1855 = extractvalue %dx.types.ResRet.f32 %1854, 0
  %1856 = add i32 %62, 112
  %1857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1856, i32 undef)  ; BufferLoad(srv,index,wot)
  %1858 = extractvalue %dx.types.ResRet.i32 %1857, 0
  %1859 = lshr i32 %1858, 24
  %1860 = uitofp i32 %1859 to float
  %1861 = fmul fast float %1855, 0x3F70101020000000
  %1862 = select i1 %1848, float 0x3F70101020000000, float %1861
  %1863 = fmul fast float %1862, %1860
  br label %1864

; <label>:1864                                    ; preds = %1846, %1841, %1833
  %1865 = phi float [ %1863, %1846 ], [ 0.000000e+00, %1841 ], [ 0.000000e+00, %1833 ]
  %1866 = add i32 %62, 112
  %1867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1866, i32 undef)  ; BufferLoad(srv,index,wot)
  %1868 = extractvalue %dx.types.ResRet.i32 %1867, 0
  %1869 = and i32 %1868, 255
  %1870 = uitofp i32 %1869 to float
  %1871 = lshr i32 %1868, 8
  %1872 = and i32 %1871, 255
  %1873 = uitofp i32 %1872 to float
  %1874 = call float @dx.op.dot3.f32(i32 55, float %1706, float %1707, float %1708, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1875 = fmul fast float %1873, %1874
  %1876 = fadd fast float %1875, %1870
  %1877 = fmul fast float %1876, 0x3F70101020000000
  %1878 = call float @dx.op.unary.f32(i32 7, float %1877)  ; Saturate(value)
  br i1 %1305, label %1879, label %1887

; <label>:1879                                    ; preds = %1864
  %1880 = fsub fast float 1.000000e+00, %1486
  %1881 = fmul fast float %1880, %1292
  %1882 = fmul fast float %1880, %1293
  %1883 = fmul fast float %1880, %1294
  %1884 = fmul fast float %1880, %1295
  %1885 = fmul fast float %1880, %1296
  %1886 = fmul fast float %1880, %1297
  br label %1887

; <label>:1887                                    ; preds = %1879, %1864
  %1888 = phi float [ %1881, %1879 ], [ %1292, %1864 ]
  %1889 = phi float [ %1882, %1879 ], [ %1293, %1864 ]
  %1890 = phi float [ %1883, %1879 ], [ %1294, %1864 ]
  %1891 = phi float [ %1884, %1879 ], [ %1295, %1864 ]
  %1892 = phi float [ %1885, %1879 ], [ %1296, %1864 ]
  %1893 = phi float [ %1886, %1879 ], [ %1297, %1864 ]
  %1894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1306, i32 undef)  ; BufferLoad(srv,index,wot)
  %1895 = extractvalue %dx.types.ResRet.i32 %1894, 0
  %1896 = and i32 %1895, 3
  %1897 = icmp eq i32 %1896, 3
  br i1 %1897, label %1976, label %1898

; <label>:1898                                    ; preds = %1887
  %1899 = and i32 %1895, 16
  %1900 = icmp ne i32 %1899, 0
  %1901 = select i1 %1900, float %1486, float 0.000000e+00
  %1902 = icmp eq i32 %1896, 0
  br i1 %1902, label %1903, label %1931

; <label>:1903                                    ; preds = %1898
  %1904 = and i32 %1895, 64
  %1905 = icmp ne i32 %1904, 0
  %1906 = select i1 %1905, float %1486, float 0.000000e+00
  %1907 = fsub fast float %1706, %1888
  %1908 = fsub fast float %1707, %1889
  %1909 = fsub fast float %1708, %1890
  %1910 = fmul fast float %1901, %1907
  %1911 = fmul fast float %1901, %1908
  %1912 = fmul fast float %1901, %1909
  %1913 = fadd fast float %1910, %1888
  %1914 = fadd fast float %1911, %1889
  %1915 = fadd fast float %1912, %1890
  %1916 = fsub fast float %1692, %1298
  %1917 = fmul fast float %1901, %1916
  %1918 = fadd fast float %1917, %1298
  %1919 = fsub fast float %1834, %1891
  %1920 = fsub fast float %1835, %1892
  %1921 = fsub fast float %1836, %1893
  %1922 = fmul fast float %1906, %1919
  %1923 = fmul fast float %1906, %1920
  %1924 = fmul fast float %1906, %1921
  %1925 = fadd fast float %1922, %1891
  %1926 = fadd fast float %1923, %1892
  %1927 = fadd fast float %1924, %1893
  %1928 = fsub fast float %1878, %1303
  %1929 = fmul fast float %1901, %1928
  %1930 = fadd fast float %1929, %1303
  br label %1976

; <label>:1931                                    ; preds = %1898
  %1932 = icmp eq i32 %1896, 1
  br i1 %1932, label %1933, label %1946

; <label>:1933                                    ; preds = %1931
  %1934 = fadd fast float %1706, -1.000000e+00
  %1935 = fadd fast float %1707, -1.000000e+00
  %1936 = fadd fast float %1708, -1.000000e+00
  %1937 = fmul fast float %1901, %1934
  %1938 = fmul fast float %1901, %1935
  %1939 = fmul fast float %1901, %1936
  %1940 = fadd fast float %1937, 1.000000e+00
  %1941 = fadd fast float %1938, 1.000000e+00
  %1942 = fadd fast float %1939, 1.000000e+00
  %1943 = fmul fast float %1940, %1888
  %1944 = fmul fast float %1941, %1889
  %1945 = fmul fast float %1942, %1890
  br label %1976

; <label>:1946                                    ; preds = %1931
  %1947 = icmp eq i32 %1896, 2
  br i1 %1947, label %1948, label %1976

; <label>:1948                                    ; preds = %1946
  %1949 = call float @dx.op.unary.f32(i32 24, float %1706)  ; Sqrt(value)
  %1950 = call float @dx.op.unary.f32(i32 24, float %1707)  ; Sqrt(value)
  %1951 = call float @dx.op.unary.f32(i32 24, float %1708)  ; Sqrt(value)
  %1952 = fadd fast float %1949, -5.000000e-01
  %1953 = fadd fast float %1950, -5.000000e-01
  %1954 = fadd fast float %1951, -5.000000e-01
  %1955 = fmul fast float %1952, %1901
  %1956 = fmul fast float %1953, %1901
  %1957 = fmul fast float %1954, %1901
  %1958 = fadd fast float %1955, 5.000000e-01
  %1959 = fadd fast float %1956, 5.000000e-01
  %1960 = fadd fast float %1957, 5.000000e-01
  %1961 = fmul fast float %1958, 2.000000e+00
  %1962 = fsub fast float 1.000000e+00, %1961
  %1963 = fmul fast float %1962, %1888
  %1964 = fadd fast float %1963, %1961
  %1965 = fmul fast float %1964, %1888
  %1966 = fmul fast float %1959, 2.000000e+00
  %1967 = fsub fast float 1.000000e+00, %1966
  %1968 = fmul fast float %1967, %1889
  %1969 = fadd fast float %1968, %1966
  %1970 = fmul fast float %1969, %1889
  %1971 = fmul fast float %1960, 2.000000e+00
  %1972 = fsub fast float 1.000000e+00, %1971
  %1973 = fmul fast float %1972, %1890
  %1974 = fadd fast float %1973, %1971
  %1975 = fmul fast float %1974, %1890
  br label %1976

; <label>:1976                                    ; preds = %1948, %1946, %1933, %1903, %1887
  %1977 = phi float [ %1888, %1887 ], [ %1965, %1948 ], [ %1888, %1946 ], [ %1943, %1933 ], [ %1913, %1903 ]
  %1978 = phi float [ %1889, %1887 ], [ %1970, %1948 ], [ %1889, %1946 ], [ %1944, %1933 ], [ %1914, %1903 ]
  %1979 = phi float [ %1890, %1887 ], [ %1975, %1948 ], [ %1890, %1946 ], [ %1945, %1933 ], [ %1915, %1903 ]
  %1980 = phi float [ %1891, %1887 ], [ %1891, %1948 ], [ %1891, %1946 ], [ %1891, %1933 ], [ %1925, %1903 ]
  %1981 = phi float [ %1892, %1887 ], [ %1892, %1948 ], [ %1892, %1946 ], [ %1892, %1933 ], [ %1926, %1903 ]
  %1982 = phi float [ %1893, %1887 ], [ %1893, %1948 ], [ %1893, %1946 ], [ %1893, %1933 ], [ %1927, %1903 ]
  %1983 = phi float [ %1298, %1887 ], [ %1298, %1948 ], [ %1298, %1946 ], [ %1298, %1933 ], [ %1918, %1903 ]
  %1984 = phi float [ %1303, %1887 ], [ %1303, %1948 ], [ %1303, %1946 ], [ %1303, %1933 ], [ %1930, %1903 ]
  %1985 = and i32 %1895, 12
  %1986 = icmp eq i32 %1985, 12
  br i1 %1986, label %2069, label %1987

; <label>:1987                                    ; preds = %1976
  %1988 = and i32 %1895, 2097184
  %1989 = icmp eq i32 %1988, 2097184
  %1990 = select i1 %1989, float %1486, float 0.000000e+00
  %1991 = and i32 %1895, 4194336
  %1992 = icmp eq i32 %1991, 4194336
  %1993 = select i1 %1992, float %1486, float 0.000000e+00
  %1994 = and i32 %1895, 8388640
  %1995 = icmp eq i32 %1994, 8388640
  %1996 = select i1 %1995, float %1486, float 0.000000e+00
  %1997 = and i32 %1895, 16384
  %1998 = icmp ne i32 %1997, 0
  %1999 = select i1 %1998, float %1486, float 0.000000e+00
  %2000 = icmp eq i32 %1985, 0
  br i1 %2000, label %2001, label %2017

; <label>:2001                                    ; preds = %1987
  %2002 = fsub fast float %1787, %1290
  %2003 = fsub fast float %1788, %1291
  %2004 = fmul fast float %1990, %2002
  %2005 = fmul fast float %1990, %2003
  %2006 = fadd fast float %2004, %1290
  %2007 = fadd fast float %2005, %1291
  %2008 = fsub fast float %1789, %1301
  %2009 = fmul fast float %1993, %2008
  %2010 = fadd fast float %2009, %1301
  %2011 = fsub fast float %1786, %1300
  %2012 = fmul fast float %1996, %2011
  %2013 = fadd fast float %2012, %1300
  %2014 = fsub fast float %1865, %1302
  %2015 = fmul fast float %1999, %2014
  %2016 = fadd fast float %2015, %1302
  br label %2069

; <label>:2017                                    ; preds = %1987
  %2018 = icmp eq i32 %1985, 4
  br i1 %2018, label %2019, label %2053

; <label>:2019                                    ; preds = %2017
  %2020 = fmul fast float %1990, %1787
  %2021 = fmul fast float %1990, %1788
  %2022 = fadd fast float %2020, %1290
  %2023 = fadd fast float %2021, %1291
  %2024 = call float @dx.op.binary.f32(i32 36, float %1301, float %1789)  ; FMin(a,b)
  %2025 = fsub fast float %2024, %1301
  %2026 = fmul fast float %2025, %1993
  %2027 = fadd fast float %2026, %1301
  %2028 = fadd fast float %1786, %1300
  %2029 = fmul fast float %2028, 0x3FF337FAE0000000
  %2030 = fmul fast float %1300, %1300
  %2031 = fmul fast float %1786, %1786
  %2032 = fadd fast float %2031, %2030
  %2033 = fmul fast float %2032, 0x3FE5152B00000000
  %2034 = fmul fast float %1300, 0xBFCC1F85E0000000
  %2035 = fmul fast float %2034, %1786
  %2036 = fadd fast float %2035, 0xBFE1363700000000
  %2037 = fadd fast float %2036, %2029
  %2038 = fsub fast float %2037, %2033
  %2039 = fmul fast float %2028, 0x3FBA6F0D00000000
  %2040 = fmul fast float %2032, 0x3FD0432880000000
  %2041 = fmul fast float %1300, 0xBFEF110800000000
  %2042 = fmul fast float %2041, %1786
  %2043 = fadd fast float %2042, 1.000000e+00
  %2044 = fsub fast float %2043, %2039
  %2045 = fadd fast float %2044, %2040
  %2046 = fdiv fast float %2038, %2045
  %2047 = call float @dx.op.unary.f32(i32 7, float %2046)  ; Saturate(value)
  %2048 = fsub fast float %2047, %1300
  %2049 = fmul fast float %2048, %1996
  %2050 = fadd fast float %2049, %1300
  %2051 = fmul fast float %1999, %1865
  %2052 = fadd fast float %2051, %1302
  br label %2069

; <label>:2053                                    ; preds = %2017
  %2054 = icmp eq i32 %1985, 8
  br i1 %2054, label %2055, label %2069

; <label>:2055                                    ; preds = %2053
  %2056 = fmul fast float %1990, %1787
  %2057 = fmul fast float %1990, %1788
  %2058 = fadd fast float %2056, %1290
  %2059 = fadd fast float %2057, %1291
  %2060 = call float @dx.op.binary.f32(i32 36, float %1301, float %1789)  ; FMin(a,b)
  %2061 = fsub fast float %2060, %1301
  %2062 = fmul fast float %2061, %1993
  %2063 = fadd fast float %2062, %1301
  %2064 = fsub fast float %1786, %1300
  %2065 = fmul fast float %1996, %2064
  %2066 = fadd fast float %2065, %1300
  %2067 = fmul fast float %1999, %1865
  %2068 = fadd fast float %2067, %1302
  br label %2069

; <label>:2069                                    ; preds = %2055, %2053, %2019, %2001, %1976, %1485, %1304, %1289
  %2070 = phi float [ %1290, %1976 ], [ %1290, %1485 ], [ %1290, %1289 ], [ %2058, %2055 ], [ %1290, %2053 ], [ %2022, %2019 ], [ %2006, %2001 ], [ %1290, %1304 ]
  %2071 = phi float [ %1291, %1976 ], [ %1291, %1485 ], [ %1291, %1289 ], [ %2059, %2055 ], [ %1291, %2053 ], [ %2023, %2019 ], [ %2007, %2001 ], [ %1291, %1304 ]
  %2072 = phi float [ %1977, %1976 ], [ %1292, %1485 ], [ %1292, %1289 ], [ %1977, %2055 ], [ %1977, %2053 ], [ %1977, %2019 ], [ %1977, %2001 ], [ %1292, %1304 ]
  %2073 = phi float [ %1978, %1976 ], [ %1293, %1485 ], [ %1293, %1289 ], [ %1978, %2055 ], [ %1978, %2053 ], [ %1978, %2019 ], [ %1978, %2001 ], [ %1293, %1304 ]
  %2074 = phi float [ %1979, %1976 ], [ %1294, %1485 ], [ %1294, %1289 ], [ %1979, %2055 ], [ %1979, %2053 ], [ %1979, %2019 ], [ %1979, %2001 ], [ %1294, %1304 ]
  %2075 = phi float [ %1980, %1976 ], [ %1295, %1485 ], [ %1295, %1289 ], [ %1980, %2055 ], [ %1980, %2053 ], [ %1980, %2019 ], [ %1980, %2001 ], [ %1295, %1304 ]
  %2076 = phi float [ %1981, %1976 ], [ %1296, %1485 ], [ %1296, %1289 ], [ %1981, %2055 ], [ %1981, %2053 ], [ %1981, %2019 ], [ %1981, %2001 ], [ %1296, %1304 ]
  %2077 = phi float [ %1982, %1976 ], [ %1297, %1485 ], [ %1297, %1289 ], [ %1982, %2055 ], [ %1982, %2053 ], [ %1982, %2019 ], [ %1982, %2001 ], [ %1297, %1304 ]
  %2078 = phi float [ %1983, %1976 ], [ %1298, %1485 ], [ %1298, %1289 ], [ %1983, %2055 ], [ %1983, %2053 ], [ %1983, %2019 ], [ %1983, %2001 ], [ %1298, %1304 ]
  %2079 = phi float [ %1300, %1976 ], [ %1300, %1485 ], [ %1300, %1289 ], [ %2066, %2055 ], [ %1300, %2053 ], [ %2050, %2019 ], [ %2013, %2001 ], [ %1300, %1304 ]
  %2080 = phi float [ %1301, %1976 ], [ %1301, %1485 ], [ %1301, %1289 ], [ %2063, %2055 ], [ %1301, %2053 ], [ %2027, %2019 ], [ %2010, %2001 ], [ %1301, %1304 ]
  %2081 = phi float [ %1302, %1976 ], [ %1302, %1485 ], [ %1302, %1289 ], [ %2068, %2055 ], [ %1302, %2053 ], [ %2052, %2019 ], [ %2016, %2001 ], [ %1302, %1304 ]
  %2082 = phi float [ %1984, %1976 ], [ %1303, %1485 ], [ %1303, %1289 ], [ %1984, %2055 ], [ %1984, %2053 ], [ %1984, %2019 ], [ %1984, %2001 ], [ %1303, %1304 ]
  br i1 %661, label %2848, label %2083

; <label>:2083                                    ; preds = %2069
  %2084 = icmp ult i32 %717, 3
  %2085 = add i32 %62, 56
  %2086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2085, i32 undef)  ; BufferLoad(srv,index,wot)
  %2087 = extractvalue %dx.types.ResRet.i32 %2086, 0
  %2088 = add i32 %62, 60
  %2089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2088, i32 undef)  ; BufferLoad(srv,index,wot)
  %2090 = extractvalue %dx.types.ResRet.i32 %2089, 0
  %2091 = or i32 %2090, %2087
  %2092 = icmp eq i32 %2091, 0
  br i1 %2092, label %2848, label %2093

; <label>:2093                                    ; preds = %2083
  %2094 = and i32 %2087, 262144
  %2095 = icmp ne i32 %2094, 0
  %2096 = select i1 %2095, float %70, float 1.000000e+00
  %2097 = select i1 %2095, float %71, float 0.000000e+00
  %2098 = select i1 %2095, float %72, float 0.000000e+00
  %2099 = select i1 %2095, float %73, float 1.000000e+00
  %2100 = select i1 %2095, float %74, float %98
  %2101 = select i1 %2095, float %75, float %99
  %2102 = add i32 %62, 316
  %2103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2102, i32 undef)  ; BufferLoad(srv,index,wot)
  %2104 = extractvalue %dx.types.ResRet.i32 %2103, 0
  %2105 = lshr i32 %2104, 16
  %2106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2105)  ; LegacyF16ToF32(value)
  %2107 = fmul fast float %2106, 0x3F50624DE0000000
  %2108 = add i32 %62, 120
  %2109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2108, i32 undef)  ; BufferLoad(srv,index,wot)
  %2110 = extractvalue %dx.types.ResRet.i32 %2109, 0
  %2111 = lshr i32 %2110, 16
  %2112 = and i32 %2111, 255
  %2113 = lshr i32 %2110, 24
  %2114 = add i32 %62, 324
  %2115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2114, i32 undef)  ; BufferLoad(srv,index,wot)
  %2116 = extractvalue %dx.types.ResRet.i32 %2115, 0
  %2117 = and i32 %2116, 65535
  %2118 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2117)  ; LegacyF16ToF32(value)
  %2119 = lshr i32 %2116, 16
  %2120 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2119)  ; LegacyF16ToF32(value)
  %2121 = add i32 %62, 64
  %2122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2121, i32 undef)  ; BufferLoad(srv,index,wot)
  %2123 = extractvalue %dx.types.ResRet.i32 %2122, 0
  %2124 = lshr i32 %2123, 22
  %2125 = shl nuw nsw i32 %2124, 5
  %2126 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2125)  ; LegacyF16ToF32(value)
  %2127 = shl i32 %2123, 4
  %2128 = and i32 %2127, 32752
  %2129 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2128)  ; LegacyF16ToF32(value)
  %2130 = lshr i32 %2123, 7
  %2131 = and i32 %2130, 32752
  %2132 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2131)  ; LegacyF16ToF32(value)
  %2133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2134 = extractvalue %dx.types.CBufRet.f32 %2133, 3
  %2135 = fmul fast float %2134, 1.000000e+03
  %2136 = fmul fast float %2135, %545
  %2137 = call float @dx.op.unary.f32(i32 22, float %2136)  ; Frc(value)
  %2138 = fadd fast float %2137, %533
  %2139 = fmul fast float %2135, %547
  %2140 = call float @dx.op.unary.f32(i32 22, float %2139)  ; Frc(value)
  %2141 = fadd fast float %2140, %534
  %2142 = fmul fast float %2107, %2135
  %2143 = call float @dx.op.unary.f32(i32 22, float %2142)  ; Frc(value)
  %2144 = fmul fast float %2143, 0x401921FB60000000
  %2145 = fadd fast float %2144, %2126
  %2146 = call float @dx.op.unary.f32(i32 13, float %2145)  ; Sin(value)
  %2147 = call float @dx.op.unary.f32(i32 12, float %2145)  ; Cos(value)
  %2148 = fsub fast float -0.000000e+00, %2146
  %2149 = fadd fast float %2100, -5.000000e-01
  %2150 = fadd fast float %2101, -5.000000e-01
  %2151 = fmul fast float %2118, %2149
  %2152 = fmul fast float %2120, %2150
  %2153 = fadd fast float %2151, 5.000000e-01
  %2154 = fadd fast float %2152, 5.000000e-01
  %2155 = fmul fast float %2129, %2153
  %2156 = fmul fast float %2132, %2154
  %2157 = fmul fast float %2147, %2155
  %2158 = call float @dx.op.tertiary.f32(i32 46, float %2148, float %2156, float %2157)  ; FMad(a,b,c)
  %2159 = fmul fast float %2146, %2155
  %2160 = call float @dx.op.tertiary.f32(i32 46, float %2147, float %2156, float %2159)  ; FMad(a,b,c)
  %2161 = fadd fast float %2138, %2158
  %2162 = fadd fast float %2141, %2160
  %2163 = icmp ugt i32 %2112, 1
  %2164 = icmp ugt i32 %2110, 33554431
  %2165 = or i1 %2164, %2163
  br i1 %2165, label %2166, label %2191

; <label>:2166                                    ; preds = %2093
  %2167 = add i32 %62, 260
  %2168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2167, i32 undef)  ; BufferLoad(srv,index,wot)
  %2169 = extractvalue %dx.types.ResRet.i32 %2168, 0
  %2170 = lshr i32 %2169, 16
  %2171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2170)  ; LegacyF16ToF32(value)
  %2172 = fmul fast float %2134, %2171
  %2173 = call float @dx.op.unary.f32(i32 22, float %2172)  ; Frc(value)
  %2174 = mul nuw nsw i32 %2112, %2113
  %2175 = uitofp i32 %2174 to float
  %2176 = fmul fast float %2173, %2175
  %2177 = call float @dx.op.unary.f32(i32 27, float %2176)  ; Round_ni(value)
  %2178 = fptoui float %2177 to i32
  %2179 = urem i32 %2178, %2112
  %2180 = udiv i32 %2178, %2113
  %2181 = call float @dx.op.unary.f32(i32 22, float %2161)  ; Frc(value)
  %2182 = call float @dx.op.unary.f32(i32 22, float %2162)  ; Frc(value)
  %2183 = uitofp i32 %2179 to float
  %2184 = uitofp i32 %2180 to float
  %2185 = fadd fast float %2181, %2183
  %2186 = fadd fast float %2182, %2184
  %2187 = uitofp i32 %2112 to float
  %2188 = uitofp i32 %2113 to float
  %2189 = fdiv fast float %2185, %2187
  %2190 = fdiv fast float %2186, %2188
  br label %2191

; <label>:2191                                    ; preds = %2166, %2093
  %2192 = phi float [ %2189, %2166 ], [ %2161, %2093 ]
  %2193 = phi float [ %2190, %2166 ], [ %2162, %2093 ]
  %2194 = and i32 %2087, 256
  %2195 = icmp eq i32 %2194, 0
  br i1 %2195, label %2242, label %2196

; <label>:2196                                    ; preds = %2191
  %2197 = add i32 %62, 480
  %2198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2197, i32 undef)  ; BufferLoad(srv,index,wot)
  %2199 = extractvalue %dx.types.ResRet.i32 %2198, 0
  %2200 = add i32 %2199, 0
  %2201 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2200, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2202 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2201, %dx.types.Handle %117, float %2192, float %2193, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2203 = extractvalue %dx.types.ResRet.f32 %2202, 0
  %2204 = add i32 %62, 132
  %2205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2204, i32 undef)  ; BufferLoad(srv,index,wot)
  %2206 = extractvalue %dx.types.ResRet.i32 %2205, 0
  %2207 = shl i32 %2206, 4
  %2208 = and i32 %2207, 32752
  %2209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2208)  ; LegacyF16ToF32(value)
  %2210 = lshr i32 %2206, 7
  %2211 = and i32 %2210, 32752
  %2212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2211)  ; LegacyF16ToF32(value)
  %2213 = fsub fast float 1.000000e+00, %713
  %2214 = call float @dx.op.binary.f32(i32 35, float %2213, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2215 = bitcast float %713 to i32
  %2216 = sitofp i32 %2215 to float
  %2217 = fadd fast float %2216, 0xC1CFBF8940000000
  %2218 = fmul fast float %2212, %2217
  %2219 = fadd fast float %2218, 0x41CFBF8940000000
  %2220 = fptosi float %2219 to i32
  %2221 = bitcast i32 %2220 to float
  %2222 = bitcast float %2214 to i32
  %2223 = sitofp i32 %2222 to float
  %2224 = fadd fast float %2223, 0xC1CFBF8940000000
  %2225 = fmul fast float %2224, %2212
  %2226 = fadd fast float %2225, 0x41CFBF8940000000
  %2227 = fptosi float %2226 to i32
  %2228 = bitcast i32 %2227 to float
  %2229 = fmul fast float %2221, %2209
  %2230 = fmul fast float %2228, %2209
  %2231 = fsub fast float %2214, %2229
  %2232 = fadd fast float %2230, %2214
  %2233 = call float @dx.op.unary.f32(i32 7, float %2231)  ; Saturate(value)
  %2234 = call float @dx.op.unary.f32(i32 7, float %2232)  ; Saturate(value)
  %2235 = fsub fast float %2203, %2233
  %2236 = fsub fast float %2234, %2233
  %2237 = bitcast float %2236 to i32
  %2238 = sub nsw i32 2129859010, %2237
  %2239 = bitcast i32 %2238 to float
  %2240 = fmul fast float %2239, %2235
  %2241 = call float @dx.op.unary.f32(i32 7, float %2240)  ; Saturate(value)
  br label %2242

; <label>:2242                                    ; preds = %2196, %2191
  %2243 = phi float [ %2241, %2196 ], [ %713, %2191 ]
  %2244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2085, i32 undef)  ; BufferLoad(srv,index,wot)
  %2245 = extractvalue %dx.types.ResRet.i32 %2244, 0
  %2246 = and i32 %2245, 128
  %2247 = icmp eq i32 %2246, 0
  br i1 %2247, label %2264, label %2248

; <label>:2248                                    ; preds = %2242
  %2249 = add i32 %62, 464
  %2250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2249, i32 undef)  ; BufferLoad(srv,index,wot)
  %2251 = extractvalue %dx.types.ResRet.i32 %2250, 0
  %2252 = add i32 %2251, 0
  %2253 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2252, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2254 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2253, %dx.types.Handle %117, float %2192, float %2193, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2255 = extractvalue %dx.types.ResRet.f32 %2254, 0
  %2256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2085, i32 undef)  ; BufferLoad(srv,index,wot)
  %2257 = extractvalue %dx.types.ResRet.i32 %2256, 0
  %2258 = and i32 %2257, 524288
  %2259 = icmp ne i32 %2258, 0
  %2260 = fcmp fast ogt float %2255, 0x3FE0101020000000
  %2261 = select i1 %2260, float 1.000000e+00, float 0.000000e+00
  %2262 = select i1 %2259, float %2261, float %2255
  %2263 = fmul fast float %2262, %2243
  br label %2264

; <label>:2264                                    ; preds = %2248, %2242
  %2265 = phi float [ %2263, %2248 ], [ %2243, %2242 ]
  %2266 = fcmp fast ult float %2265, 0x3F70101020000000
  br i1 %2266, label %2848, label %2267

; <label>:2267                                    ; preds = %2264
  %2268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2085, i32 undef)  ; BufferLoad(srv,index,wot)
  %2269 = extractvalue %dx.types.ResRet.i32 %2268, 0
  %2270 = and i32 %2269, 16
  %2271 = icmp eq i32 %2270, 0
  br i1 %2271, label %2470, label %2272

; <label>:2272                                    ; preds = %2267
  %2273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2108, i32 undef)  ; BufferLoad(srv,index,wot)
  %2274 = extractvalue %dx.types.ResRet.i32 %2273, 0
  %2275 = add i32 %62, 416
  %2276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2275, i32 undef)  ; BufferLoad(srv,index,wot)
  %2277 = extractvalue %dx.types.ResRet.i32 %2276, 0
  %2278 = add i32 %2277, 0
  %2279 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2278, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2280 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2279, %dx.types.Handle %116, float %2192, float %2193, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2281 = extractvalue %dx.types.ResRet.f32 %2280, 0
  %2282 = extractvalue %dx.types.ResRet.f32 %2280, 1
  %2283 = extractvalue %dx.types.ResRet.f32 %2280, 2
  %2284 = extractvalue %dx.types.ResRet.f32 %2280, 3
  %2285 = and i32 %2274, 255
  %2286 = uitofp i32 %2285 to float
  %2287 = lshr i32 %2274, 8
  %2288 = and i32 %2287, 255
  %2289 = uitofp i32 %2288 to float
  %2290 = fmul fast float %2284, %2286
  %2291 = fadd fast float %2290, %2289
  %2292 = fmul fast float %2291, 0x3F70101000000000
  %2293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2085, i32 undef)  ; BufferLoad(srv,index,wot)
  %2294 = extractvalue %dx.types.ResRet.i32 %2293, 0
  %2295 = and i32 %2294, 512
  %2296 = icmp eq i32 %2295, 0
  br i1 %2296, label %2305, label %2297

; <label>:2297                                    ; preds = %2272
  %2298 = add i32 %62, 500
  %2299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2298, i32 undef)  ; BufferLoad(srv,index,wot)
  %2300 = extractvalue %dx.types.ResRet.i32 %2299, 0
  %2301 = add i32 %2300, 0
  %2302 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2301, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2303 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2302, %dx.types.Handle %117, float %2192, float %2193, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2304 = extractvalue %dx.types.ResRet.f32 %2303, 0
  br label %2305

; <label>:2305                                    ; preds = %2297, %2272
  %2306 = phi float [ %2304, %2297 ], [ 1.000000e+00, %2272 ]
  %2307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2085, i32 undef)  ; BufferLoad(srv,index,wot)
  %2308 = extractvalue %dx.types.ResRet.i32 %2307, 0
  %2309 = and i32 %2308, 33554432
  %2310 = icmp eq i32 %2309, 0
  br i1 %2310, label %2417, label %2311

; <label>:2311                                    ; preds = %2305
  %2312 = add i32 %62, 256
  %2313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2312, i32 undef)  ; BufferLoad(srv,index,wot)
  %2314 = extractvalue %dx.types.ResRet.i32 %2313, 0
  %2315 = and i32 %2314, 65535
  %2316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2315)  ; LegacyF16ToF32(value)
  %2317 = lshr i32 %2314, 16
  %2318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2317)  ; LegacyF16ToF32(value)
  %2319 = add i32 %62, 260
  %2320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2319, i32 undef)  ; BufferLoad(srv,index,wot)
  %2321 = extractvalue %dx.types.ResRet.i32 %2320, 0
  %2322 = and i32 %2321, 65535
  %2323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2322)  ; LegacyF16ToF32(value)
  %2324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %2325 = extractvalue %dx.types.ResRet.i32 %2324, 0
  %2326 = lshr i32 %2325, 24
  %2327 = uitofp i32 %2326 to float
  %2328 = fmul fast float %2327, 0x3F70101020000000
  %2329 = and i32 %2325, 255
  %2330 = uitofp i32 %2329 to float
  %2331 = fmul fast float %2330, 0x3F70101020000000
  %2332 = lshr i32 %2325, 8
  %2333 = and i32 %2332, 255
  %2334 = uitofp i32 %2333 to float
  %2335 = fmul fast float %2334, 0x3F70101020000000
  %2336 = lshr i32 %2325, 16
  %2337 = and i32 %2336, 255
  %2338 = uitofp i32 %2337 to float
  %2339 = fmul fast float %2338, 0x3F70101020000000
  %2340 = add i32 %62, 252
  %2341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2340, i32 undef)  ; BufferLoad(srv,index,wot)
  %2342 = extractvalue %dx.types.ResRet.i32 %2341, 0
  %2343 = lshr i32 %2342, 24
  %2344 = uitofp i32 %2343 to float
  %2345 = fmul fast float %2344, 0x3F70101020000000
  %2346 = and i32 %2342, 255
  %2347 = uitofp i32 %2346 to float
  %2348 = fmul fast float %2347, 0x3F70101020000000
  %2349 = lshr i32 %2342, 8
  %2350 = and i32 %2349, 255
  %2351 = uitofp i32 %2350 to float
  %2352 = fmul fast float %2351, 0x3F70101020000000
  %2353 = lshr i32 %2342, 16
  %2354 = and i32 %2353, 255
  %2355 = uitofp i32 %2354 to float
  %2356 = fmul fast float %2355, 0x3F70101020000000
  %2357 = bitcast float %2281 to i32
  %2358 = ashr i32 %2357, 1
  %2359 = sub nsw i32 1597463174, %2358
  %2360 = bitcast i32 %2359 to float
  %2361 = fmul fast float %2281, 5.000000e-01
  %2362 = fmul fast float %2360, %2360
  %2363 = fmul fast float %2362, %2361
  %2364 = fsub fast float 1.500000e+00, %2363
  %2365 = fmul fast float %2360, %2281
  %2366 = fmul fast float %2365, %2364
  %2367 = bitcast float %2282 to i32
  %2368 = ashr i32 %2367, 1
  %2369 = sub nsw i32 1597463174, %2368
  %2370 = bitcast i32 %2369 to float
  %2371 = fmul fast float %2282, 5.000000e-01
  %2372 = fmul fast float %2370, %2370
  %2373 = fmul fast float %2372, %2371
  %2374 = fsub fast float 1.500000e+00, %2373
  %2375 = fmul fast float %2370, %2282
  %2376 = fmul fast float %2375, %2374
  %2377 = bitcast float %2283 to i32
  %2378 = ashr i32 %2377, 1
  %2379 = sub nsw i32 1597463174, %2378
  %2380 = bitcast i32 %2379 to float
  %2381 = fmul fast float %2283, 5.000000e-01
  %2382 = fmul fast float %2380, %2380
  %2383 = fmul fast float %2382, %2381
  %2384 = fsub fast float 1.500000e+00, %2383
  %2385 = fmul fast float %2380, %2283
  %2386 = fmul fast float %2385, %2384
  %2387 = fsub fast float %2366, %2348
  %2388 = fsub fast float %2376, %2352
  %2389 = fsub fast float %2386, %2356
  %2390 = fmul fast float %2387, %2316
  %2391 = fmul fast float %2388, %2318
  %2392 = fmul fast float %2389, %2323
  %2393 = fadd fast float %2390, %2331
  %2394 = fadd fast float %2391, %2335
  %2395 = fadd fast float %2392, %2339
  %2396 = call float @dx.op.unary.f32(i32 7, float %2393)  ; Saturate(value)
  %2397 = call float @dx.op.unary.f32(i32 7, float %2394)  ; Saturate(value)
  %2398 = call float @dx.op.unary.f32(i32 7, float %2395)  ; Saturate(value)
  %2399 = fmul fast float %2396, %2396
  %2400 = fmul fast float %2397, %2397
  %2401 = fmul fast float %2398, %2398
  %2402 = fsub fast float %2399, %2281
  %2403 = fsub fast float %2400, %2282
  %2404 = fsub fast float %2401, %2283
  %2405 = fmul fast float %2402, %2306
  %2406 = fmul fast float %2403, %2306
  %2407 = fmul fast float %2404, %2306
  %2408 = fadd fast float %2405, %2281
  %2409 = fadd fast float %2406, %2282
  %2410 = fadd fast float %2407, %2283
  %2411 = fadd fast float %2328, %2292
  %2412 = fsub fast float %2411, %2345
  %2413 = call float @dx.op.unary.f32(i32 7, float %2412)  ; Saturate(value)
  %2414 = fsub fast float %2413, %2292
  %2415 = fmul fast float %2414, %2306
  %2416 = fadd fast float %2415, %2292
  br label %2470

; <label>:2417                                    ; preds = %2305
  %2418 = and i32 %2308, 134217728
  %2419 = icmp eq i32 %2418, 0
  br i1 %2419, label %2454, label %2420

; <label>:2420                                    ; preds = %2417
  %2421 = call float @dx.op.unary.f32(i32 24, float %521)  ; Sqrt(value)
  %2422 = call float @dx.op.unary.f32(i32 24, float %522)  ; Sqrt(value)
  %2423 = call float @dx.op.unary.f32(i32 24, float %523)  ; Sqrt(value)
  %2424 = fadd fast float %2421, -5.000000e-01
  %2425 = fadd fast float %2422, -5.000000e-01
  %2426 = fadd fast float %2423, -5.000000e-01
  %2427 = fmul fast float %2424, %2306
  %2428 = fmul fast float %2425, %2306
  %2429 = fmul fast float %2426, %2306
  %2430 = fadd fast float %2427, 5.000000e-01
  %2431 = fadd fast float %2428, 5.000000e-01
  %2432 = fadd fast float %2429, 5.000000e-01
  %2433 = call float @dx.op.unary.f32(i32 24, float %2281)  ; Sqrt(value)
  %2434 = call float @dx.op.unary.f32(i32 24, float %2282)  ; Sqrt(value)
  %2435 = call float @dx.op.unary.f32(i32 24, float %2283)  ; Sqrt(value)
  %2436 = fmul fast float %2430, 2.000000e+00
  %2437 = fsub fast float 1.000000e+00, %2436
  %2438 = fmul fast float %2437, %2433
  %2439 = fadd fast float %2438, %2436
  %2440 = fmul fast float %2439, %2433
  %2441 = fmul fast float %2431, 2.000000e+00
  %2442 = fsub fast float 1.000000e+00, %2441
  %2443 = fmul fast float %2442, %2434
  %2444 = fadd fast float %2443, %2441
  %2445 = fmul fast float %2444, %2434
  %2446 = fmul fast float %2432, 2.000000e+00
  %2447 = fsub fast float 1.000000e+00, %2446
  %2448 = fmul fast float %2447, %2435
  %2449 = fadd fast float %2448, %2446
  %2450 = fmul fast float %2449, %2435
  %2451 = fmul fast float %2440, %2440
  %2452 = fmul fast float %2445, %2445
  %2453 = fmul fast float %2450, %2450
  br label %2470

; <label>:2454                                    ; preds = %2417
  %2455 = fmul fast float %521, %521
  %2456 = fmul fast float %522, %522
  %2457 = fmul fast float %523, %523
  %2458 = fadd fast float %2455, -1.000000e+00
  %2459 = fadd fast float %2456, -1.000000e+00
  %2460 = fadd fast float %2457, -1.000000e+00
  %2461 = fmul fast float %2306, %2458
  %2462 = fmul fast float %2306, %2459
  %2463 = fmul fast float %2306, %2460
  %2464 = fadd fast float %2461, 1.000000e+00
  %2465 = fadd fast float %2462, 1.000000e+00
  %2466 = fadd fast float %2463, 1.000000e+00
  %2467 = fmul fast float %2464, %2281
  %2468 = fmul fast float %2465, %2282
  %2469 = fmul fast float %2466, %2283
  br label %2470

; <label>:2470                                    ; preds = %2454, %2420, %2311, %2267
  %2471 = phi float [ %2416, %2311 ], [ %2292, %2420 ], [ %2292, %2454 ], [ 0x3FA23C0BE0000000, %2267 ]
  %2472 = phi float [ %2408, %2311 ], [ %2451, %2420 ], [ %2467, %2454 ], [ 1.000000e+00, %2267 ]
  %2473 = phi float [ %2409, %2311 ], [ %2452, %2420 ], [ %2468, %2454 ], [ 1.000000e+00, %2267 ]
  %2474 = phi float [ %2410, %2311 ], [ %2453, %2420 ], [ %2469, %2454 ], [ 1.000000e+00, %2267 ]
  %2475 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2476 = extractvalue %dx.types.CBufRet.i32 %2475, 1
  %2477 = and i32 %2476, 1
  %2478 = icmp ne i32 %2477, 0
  %2479 = add i32 %62, 356
  %2480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2479, i32 undef)  ; BufferLoad(srv,index,wot)
  %2481 = extractvalue %dx.types.ResRet.i32 %2480, 0
  %2482 = and i32 %2481, 32
  %2483 = icmp ne i32 %2482, 0
  %2484 = and i1 %2478, %2483
  %2485 = select i1 %2484, float 1.000000e+00, float %2472
  %2486 = select i1 %2484, float 0x3FD3333340000000, float %2473
  %2487 = select i1 %2484, float 0x3FD3333340000000, float %2474
  %2488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2085, i32 undef)  ; BufferLoad(srv,index,wot)
  %2489 = extractvalue %dx.types.ResRet.i32 %2488, 0
  %2490 = and i32 %2489, 32
  %2491 = icmp eq i32 %2490, 0
  br i1 %2491, label %2564, label %2492

; <label>:2492                                    ; preds = %2470
  %2493 = add i32 %62, 124
  %2494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2493, i32 undef)  ; BufferLoad(srv,index,wot)
  %2495 = extractvalue %dx.types.ResRet.i32 %2494, 0
  %2496 = add i32 %62, 432
  %2497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2496, i32 undef)  ; BufferLoad(srv,index,wot)
  %2498 = extractvalue %dx.types.ResRet.i32 %2497, 0
  %2499 = add i32 %2498, 0
  %2500 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2499, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2501 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2500, %dx.types.Handle %116, float %2192, float %2193, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2502 = extractvalue %dx.types.ResRet.f32 %2501, 0
  %2503 = extractvalue %dx.types.ResRet.f32 %2501, 1
  %2504 = extractvalue %dx.types.ResRet.f32 %2501, 2
  %2505 = extractvalue %dx.types.ResRet.f32 %2501, 3
  %2506 = and i32 %2495, 255
  %2507 = uitofp i32 %2506 to float
  %2508 = lshr i32 %2495, 8
  %2509 = and i32 %2508, 255
  %2510 = uitofp i32 %2509 to float
  %2511 = lshr i32 %2495, 16
  %2512 = and i32 %2511, 255
  %2513 = uitofp i32 %2512 to float
  %2514 = fmul fast float %2513, 0x3F70101000000000
  %2515 = fmul fast float %2502, %2507
  %2516 = fadd fast float %2515, %2510
  %2517 = fmul fast float %2516, 0x3F70101000000000
  %2518 = fadd fast float %2503, -5.000000e-01
  %2519 = fadd fast float %2505, -5.000000e-01
  %2520 = fmul fast float %2518, %2514
  %2521 = fmul fast float %2519, %2514
  %2522 = fadd fast float %2520, 5.000000e-01
  %2523 = fadd fast float %2521, 5.000000e-01
  %2524 = fmul fast float %2522, 2.000000e+00
  %2525 = fadd fast float %2524, -1.000000e+00
  %2526 = fmul fast float %2523, 2.000000e+00
  %2527 = fadd fast float %2526, -1.000000e+00
  %2528 = fadd fast float %2525, %2527
  %2529 = fmul fast float %2528, 5.000000e-01
  %2530 = fsub fast float %2525, %2527
  %2531 = fmul fast float %2530, 5.000000e-01
  %2532 = call float @dx.op.unary.f32(i32 6, float %2529)  ; FAbs(value)
  %2533 = fsub fast float 1.000000e+00, %2532
  %2534 = call float @dx.op.unary.f32(i32 6, float %2531)  ; FAbs(value)
  %2535 = fsub fast float %2533, %2534
  %2536 = call float @dx.op.dot3.f32(i32 55, float %2529, float %2531, float %2535, float %2529, float %2531, float %2535)  ; Dot3(ax,ay,az,bx,by,bz)
  %2537 = call float @dx.op.unary.f32(i32 25, float %2536)  ; Rsqrt(value)
  %2538 = fmul fast float %2529, %2537
  %2539 = fmul fast float %2531, %2537
  %2540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2085, i32 undef)  ; BufferLoad(srv,index,wot)
  %2541 = extractvalue %dx.types.ResRet.i32 %2540, 0
  %2542 = and i32 %2541, 67108864
  %2543 = icmp eq i32 %2542, 0
  br i1 %2543, label %2560, label %2544

; <label>:2544                                    ; preds = %2492
  %2545 = add i32 %62, 312
  %2546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2545, i32 undef)  ; BufferLoad(srv,index,wot)
  %2547 = extractvalue %dx.types.ResRet.i32 %2546, 0
  %2548 = and i32 %2547, 65535
  %2549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2548)  ; LegacyF16ToF32(value)
  %2550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2102, i32 undef)  ; BufferLoad(srv,index,wot)
  %2551 = extractvalue %dx.types.ResRet.i32 %2550, 0
  %2552 = and i32 %2551, 65535
  %2553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2552)  ; LegacyF16ToF32(value)
  %2554 = lshr i32 %2547, 16
  %2555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2554)  ; LegacyF16ToF32(value)
  %2556 = fsub fast float %2517, %2555
  %2557 = fmul fast float %2556, %2549
  %2558 = fadd fast float %2557, %2553
  %2559 = call float @dx.op.unary.f32(i32 7, float %2558)  ; Saturate(value)
  br label %2560

; <label>:2560                                    ; preds = %2544, %2492
  %2561 = phi float [ %2559, %2544 ], [ %2517, %2492 ]
  %2562 = call float @dx.op.dot2.f32(i32 54, float %2538, float %2539, float %2096, float %2097)  ; Dot2(ax,ay,bx,by)
  %2563 = call float @dx.op.dot2.f32(i32 54, float %2538, float %2539, float %2098, float %2099)  ; Dot2(ax,ay,bx,by)
  br label %2564

; <label>:2564                                    ; preds = %2560, %2470
  %2565 = phi float [ %2561, %2560 ], [ 0x3FD6666660000000, %2470 ]
  %2566 = phi float [ %2562, %2560 ], [ 0.000000e+00, %2470 ]
  %2567 = phi float [ %2563, %2560 ], [ 0.000000e+00, %2470 ]
  %2568 = phi float [ %2504, %2560 ], [ 1.000000e+00, %2470 ]
  %2569 = add i32 %62, 192
  %2570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2569, i32 undef)  ; BufferLoad(srv,index,wot)
  %2571 = extractvalue %dx.types.ResRet.i32 %2570, 0
  %2572 = lshr i32 %2571, 22
  %2573 = shl nuw nsw i32 %2572, 5
  %2574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2573)  ; LegacyF16ToF32(value)
  %2575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2085, i32 undef)  ; BufferLoad(srv,index,wot)
  %2576 = extractvalue %dx.types.ResRet.i32 %2575, 0
  %2577 = and i32 %2576, 64
  %2578 = icmp eq i32 %2577, 0
  br i1 %2578, label %2612, label %2579

; <label>:2579                                    ; preds = %2564
  %2580 = add i32 %62, 448
  %2581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2580, i32 undef)  ; BufferLoad(srv,index,wot)
  %2582 = extractvalue %dx.types.ResRet.i32 %2581, 0
  %2583 = add i32 %2582, 0
  %2584 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2583, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2085, i32 undef)  ; BufferLoad(srv,index,wot)
  %2586 = extractvalue %dx.types.ResRet.i32 %2585, 0
  %2587 = and i32 %2586, 131072
  %2588 = icmp eq i32 %2587, 0
  %2589 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2584, %dx.types.Handle %116, float %2192, float %2193, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2590 = extractvalue %dx.types.ResRet.f32 %2589, 0
  %2591 = extractvalue %dx.types.ResRet.f32 %2589, 1
  %2592 = extractvalue %dx.types.ResRet.f32 %2589, 2
  %2593 = fmul fast float %504, %2590
  %2594 = fmul fast float %505, %2591
  %2595 = fmul fast float %506, %2592
  br i1 %2588, label %2602, label %2596

; <label>:2596                                    ; preds = %2579
  %2597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2598 = extractvalue %dx.types.CBufRet.f32 %2597, 0
  %2599 = fmul fast float %2598, %2593
  %2600 = fmul fast float %2598, %2594
  %2601 = fmul fast float %2598, %2595
  br label %2602

; <label>:2602                                    ; preds = %2596, %2579
  %2603 = phi float [ %2599, %2596 ], [ %2593, %2579 ]
  %2604 = phi float [ %2600, %2596 ], [ %2594, %2579 ]
  %2605 = phi float [ %2601, %2596 ], [ %2595, %2579 ]
  %2606 = fmul fast float %2603, %2574
  %2607 = select i1 %279, float %2606, float %2603
  %2608 = call float @dx.op.dot3.f32(i32 55, float %2607, float %2604, float %2605, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2609 = select i1 %279, float 0.000000e+00, float %2603
  %2610 = select i1 %279, float %2608, float %2604
  %2611 = select i1 %279, float 0.000000e+00, float %2605
  br label %2612

; <label>:2612                                    ; preds = %2602, %2564
  %2613 = phi float [ %2609, %2602 ], [ 0.000000e+00, %2564 ]
  %2614 = phi float [ %2610, %2602 ], [ 0.000000e+00, %2564 ]
  %2615 = phi float [ %2611, %2602 ], [ 0.000000e+00, %2564 ]
  %2616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2085, i32 undef)  ; BufferLoad(srv,index,wot)
  %2617 = extractvalue %dx.types.ResRet.i32 %2616, 0
  %2618 = and i32 %2617, 26624
  %2619 = icmp eq i32 %2618, 0
  br i1 %2619, label %2643, label %2620

; <label>:2620                                    ; preds = %2612
  %2621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2085, i32 undef)  ; BufferLoad(srv,index,wot)
  %2622 = extractvalue %dx.types.ResRet.i32 %2621, 0
  %2623 = and i32 %2622, 16384
  %2624 = icmp eq i32 %2623, 0
  br i1 %2624, label %2643, label %2625

; <label>:2625                                    ; preds = %2620
  %2626 = and i32 %2622, 1048576
  %2627 = icmp ne i32 %2626, 0
  %2628 = add i32 %62, 516
  %2629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2628, i32 undef)  ; BufferLoad(srv,index,wot)
  %2630 = extractvalue %dx.types.ResRet.i32 %2629, 0
  %2631 = add i32 %2630, 0
  %2632 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2631, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2633 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2632, %dx.types.Handle %117, float %2192, float %2193, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2634 = extractvalue %dx.types.ResRet.f32 %2633, 0
  %2635 = add i32 %62, 128
  %2636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2635, i32 undef)  ; BufferLoad(srv,index,wot)
  %2637 = extractvalue %dx.types.ResRet.i32 %2636, 0
  %2638 = lshr i32 %2637, 24
  %2639 = uitofp i32 %2638 to float
  %2640 = fmul fast float %2634, 0x3F70101020000000
  %2641 = select i1 %2627, float 0x3F70101020000000, float %2640
  %2642 = fmul fast float %2641, %2639
  br label %2643

; <label>:2643                                    ; preds = %2625, %2620, %2612
  %2644 = phi float [ %2642, %2625 ], [ 0.000000e+00, %2620 ], [ 0.000000e+00, %2612 ]
  %2645 = add i32 %62, 128
  %2646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2645, i32 undef)  ; BufferLoad(srv,index,wot)
  %2647 = extractvalue %dx.types.ResRet.i32 %2646, 0
  %2648 = and i32 %2647, 255
  %2649 = uitofp i32 %2648 to float
  %2650 = lshr i32 %2647, 8
  %2651 = and i32 %2650, 255
  %2652 = uitofp i32 %2651 to float
  %2653 = call float @dx.op.dot3.f32(i32 55, float %2485, float %2486, float %2487, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2654 = fmul fast float %2652, %2653
  %2655 = fadd fast float %2654, %2649
  %2656 = fmul fast float %2655, 0x3F70101020000000
  %2657 = call float @dx.op.unary.f32(i32 7, float %2656)  ; Saturate(value)
  br i1 %2084, label %2658, label %2666

; <label>:2658                                    ; preds = %2643
  %2659 = fsub fast float 1.000000e+00, %2265
  %2660 = fmul fast float %2659, %2072
  %2661 = fmul fast float %2659, %2073
  %2662 = fmul fast float %2659, %2074
  %2663 = fmul fast float %2659, %2075
  %2664 = fmul fast float %2659, %2076
  %2665 = fmul fast float %2659, %2077
  br label %2666

; <label>:2666                                    ; preds = %2658, %2643
  %2667 = phi float [ %2660, %2658 ], [ %2072, %2643 ]
  %2668 = phi float [ %2661, %2658 ], [ %2073, %2643 ]
  %2669 = phi float [ %2662, %2658 ], [ %2074, %2643 ]
  %2670 = phi float [ %2663, %2658 ], [ %2075, %2643 ]
  %2671 = phi float [ %2664, %2658 ], [ %2076, %2643 ]
  %2672 = phi float [ %2665, %2658 ], [ %2077, %2643 ]
  %2673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2085, i32 undef)  ; BufferLoad(srv,index,wot)
  %2674 = extractvalue %dx.types.ResRet.i32 %2673, 0
  %2675 = and i32 %2674, 3
  %2676 = icmp eq i32 %2675, 3
  br i1 %2676, label %2755, label %2677

; <label>:2677                                    ; preds = %2666
  %2678 = and i32 %2674, 16
  %2679 = icmp ne i32 %2678, 0
  %2680 = select i1 %2679, float %2265, float 0.000000e+00
  %2681 = icmp eq i32 %2675, 0
  br i1 %2681, label %2682, label %2710

; <label>:2682                                    ; preds = %2677
  %2683 = and i32 %2674, 64
  %2684 = icmp ne i32 %2683, 0
  %2685 = select i1 %2684, float %2265, float 0.000000e+00
  %2686 = fsub fast float %2485, %2667
  %2687 = fsub fast float %2486, %2668
  %2688 = fsub fast float %2487, %2669
  %2689 = fmul fast float %2680, %2686
  %2690 = fmul fast float %2680, %2687
  %2691 = fmul fast float %2680, %2688
  %2692 = fadd fast float %2689, %2667
  %2693 = fadd fast float %2690, %2668
  %2694 = fadd fast float %2691, %2669
  %2695 = fsub fast float %2471, %2078
  %2696 = fmul fast float %2680, %2695
  %2697 = fadd fast float %2696, %2078
  %2698 = fsub fast float %2613, %2670
  %2699 = fsub fast float %2614, %2671
  %2700 = fsub fast float %2615, %2672
  %2701 = fmul fast float %2685, %2698
  %2702 = fmul fast float %2685, %2699
  %2703 = fmul fast float %2685, %2700
  %2704 = fadd fast float %2701, %2670
  %2705 = fadd fast float %2702, %2671
  %2706 = fadd fast float %2703, %2672
  %2707 = fsub fast float %2657, %2082
  %2708 = fmul fast float %2680, %2707
  %2709 = fadd fast float %2708, %2082
  br label %2755

; <label>:2710                                    ; preds = %2677
  %2711 = icmp eq i32 %2675, 1
  br i1 %2711, label %2712, label %2725

; <label>:2712                                    ; preds = %2710
  %2713 = fadd fast float %2485, -1.000000e+00
  %2714 = fadd fast float %2486, -1.000000e+00
  %2715 = fadd fast float %2487, -1.000000e+00
  %2716 = fmul fast float %2680, %2713
  %2717 = fmul fast float %2680, %2714
  %2718 = fmul fast float %2680, %2715
  %2719 = fadd fast float %2716, 1.000000e+00
  %2720 = fadd fast float %2717, 1.000000e+00
  %2721 = fadd fast float %2718, 1.000000e+00
  %2722 = fmul fast float %2719, %2667
  %2723 = fmul fast float %2720, %2668
  %2724 = fmul fast float %2721, %2669
  br label %2755

; <label>:2725                                    ; preds = %2710
  %2726 = icmp eq i32 %2675, 2
  br i1 %2726, label %2727, label %2755

; <label>:2727                                    ; preds = %2725
  %2728 = call float @dx.op.unary.f32(i32 24, float %2485)  ; Sqrt(value)
  %2729 = call float @dx.op.unary.f32(i32 24, float %2486)  ; Sqrt(value)
  %2730 = call float @dx.op.unary.f32(i32 24, float %2487)  ; Sqrt(value)
  %2731 = fadd fast float %2728, -5.000000e-01
  %2732 = fadd fast float %2729, -5.000000e-01
  %2733 = fadd fast float %2730, -5.000000e-01
  %2734 = fmul fast float %2731, %2680
  %2735 = fmul fast float %2732, %2680
  %2736 = fmul fast float %2733, %2680
  %2737 = fadd fast float %2734, 5.000000e-01
  %2738 = fadd fast float %2735, 5.000000e-01
  %2739 = fadd fast float %2736, 5.000000e-01
  %2740 = fmul fast float %2737, 2.000000e+00
  %2741 = fsub fast float 1.000000e+00, %2740
  %2742 = fmul fast float %2741, %2667
  %2743 = fadd fast float %2742, %2740
  %2744 = fmul fast float %2743, %2667
  %2745 = fmul fast float %2738, 2.000000e+00
  %2746 = fsub fast float 1.000000e+00, %2745
  %2747 = fmul fast float %2746, %2668
  %2748 = fadd fast float %2747, %2745
  %2749 = fmul fast float %2748, %2668
  %2750 = fmul fast float %2739, 2.000000e+00
  %2751 = fsub fast float 1.000000e+00, %2750
  %2752 = fmul fast float %2751, %2669
  %2753 = fadd fast float %2752, %2750
  %2754 = fmul fast float %2753, %2669
  br label %2755

; <label>:2755                                    ; preds = %2727, %2725, %2712, %2682, %2666
  %2756 = phi float [ %2667, %2666 ], [ %2744, %2727 ], [ %2667, %2725 ], [ %2722, %2712 ], [ %2692, %2682 ]
  %2757 = phi float [ %2668, %2666 ], [ %2749, %2727 ], [ %2668, %2725 ], [ %2723, %2712 ], [ %2693, %2682 ]
  %2758 = phi float [ %2669, %2666 ], [ %2754, %2727 ], [ %2669, %2725 ], [ %2724, %2712 ], [ %2694, %2682 ]
  %2759 = phi float [ %2670, %2666 ], [ %2670, %2727 ], [ %2670, %2725 ], [ %2670, %2712 ], [ %2704, %2682 ]
  %2760 = phi float [ %2671, %2666 ], [ %2671, %2727 ], [ %2671, %2725 ], [ %2671, %2712 ], [ %2705, %2682 ]
  %2761 = phi float [ %2672, %2666 ], [ %2672, %2727 ], [ %2672, %2725 ], [ %2672, %2712 ], [ %2706, %2682 ]
  %2762 = phi float [ %2078, %2666 ], [ %2078, %2727 ], [ %2078, %2725 ], [ %2078, %2712 ], [ %2697, %2682 ]
  %2763 = phi float [ %2082, %2666 ], [ %2082, %2727 ], [ %2082, %2725 ], [ %2082, %2712 ], [ %2709, %2682 ]
  %2764 = and i32 %2674, 12
  %2765 = icmp eq i32 %2764, 12
  br i1 %2765, label %2848, label %2766

; <label>:2766                                    ; preds = %2755
  %2767 = and i32 %2674, 2097184
  %2768 = icmp eq i32 %2767, 2097184
  %2769 = select i1 %2768, float %2265, float 0.000000e+00
  %2770 = and i32 %2674, 4194336
  %2771 = icmp eq i32 %2770, 4194336
  %2772 = select i1 %2771, float %2265, float 0.000000e+00
  %2773 = and i32 %2674, 8388640
  %2774 = icmp eq i32 %2773, 8388640
  %2775 = select i1 %2774, float %2265, float 0.000000e+00
  %2776 = and i32 %2674, 16384
  %2777 = icmp ne i32 %2776, 0
  %2778 = select i1 %2777, float %2265, float 0.000000e+00
  %2779 = icmp eq i32 %2764, 0
  br i1 %2779, label %2780, label %2796

; <label>:2780                                    ; preds = %2766
  %2781 = fsub fast float %2566, %2070
  %2782 = fsub fast float %2567, %2071
  %2783 = fmul fast float %2769, %2781
  %2784 = fmul fast float %2769, %2782
  %2785 = fadd fast float %2783, %2070
  %2786 = fadd fast float %2784, %2071
  %2787 = fsub fast float %2568, %2080
  %2788 = fmul fast float %2772, %2787
  %2789 = fadd fast float %2788, %2080
  %2790 = fsub fast float %2565, %2079
  %2791 = fmul fast float %2775, %2790
  %2792 = fadd fast float %2791, %2079
  %2793 = fsub fast float %2644, %2081
  %2794 = fmul fast float %2778, %2793
  %2795 = fadd fast float %2794, %2081
  br label %2848

; <label>:2796                                    ; preds = %2766
  %2797 = icmp eq i32 %2764, 4
  br i1 %2797, label %2798, label %2832

; <label>:2798                                    ; preds = %2796
  %2799 = fmul fast float %2769, %2566
  %2800 = fmul fast float %2769, %2567
  %2801 = fadd fast float %2799, %2070
  %2802 = fadd fast float %2800, %2071
  %2803 = call float @dx.op.binary.f32(i32 36, float %2080, float %2568)  ; FMin(a,b)
  %2804 = fsub fast float %2803, %2080
  %2805 = fmul fast float %2804, %2772
  %2806 = fadd fast float %2805, %2080
  %2807 = fadd fast float %2565, %2079
  %2808 = fmul fast float %2807, 0x3FF337FAE0000000
  %2809 = fmul fast float %2079, %2079
  %2810 = fmul fast float %2565, %2565
  %2811 = fadd fast float %2810, %2809
  %2812 = fmul fast float %2811, 0x3FE5152B00000000
  %2813 = fmul fast float %2079, 0xBFCC1F85E0000000
  %2814 = fmul fast float %2813, %2565
  %2815 = fadd fast float %2814, 0xBFE1363700000000
  %2816 = fadd fast float %2815, %2808
  %2817 = fsub fast float %2816, %2812
  %2818 = fmul fast float %2807, 0x3FBA6F0D00000000
  %2819 = fmul fast float %2811, 0x3FD0432880000000
  %2820 = fmul fast float %2079, 0xBFEF110800000000
  %2821 = fmul fast float %2820, %2565
  %2822 = fadd fast float %2821, 1.000000e+00
  %2823 = fsub fast float %2822, %2818
  %2824 = fadd fast float %2823, %2819
  %2825 = fdiv fast float %2817, %2824
  %2826 = call float @dx.op.unary.f32(i32 7, float %2825)  ; Saturate(value)
  %2827 = fsub fast float %2826, %2079
  %2828 = fmul fast float %2827, %2775
  %2829 = fadd fast float %2828, %2079
  %2830 = fmul fast float %2778, %2644
  %2831 = fadd fast float %2830, %2081
  br label %2848

; <label>:2832                                    ; preds = %2796
  %2833 = icmp eq i32 %2764, 8
  br i1 %2833, label %2834, label %2848

; <label>:2834                                    ; preds = %2832
  %2835 = fmul fast float %2769, %2566
  %2836 = fmul fast float %2769, %2567
  %2837 = fadd fast float %2835, %2070
  %2838 = fadd fast float %2836, %2071
  %2839 = call float @dx.op.binary.f32(i32 36, float %2080, float %2568)  ; FMin(a,b)
  %2840 = fsub fast float %2839, %2080
  %2841 = fmul fast float %2840, %2772
  %2842 = fadd fast float %2841, %2080
  %2843 = fsub fast float %2565, %2079
  %2844 = fmul fast float %2775, %2843
  %2845 = fadd fast float %2844, %2079
  %2846 = fmul fast float %2778, %2644
  %2847 = fadd fast float %2846, %2081
  br label %2848

; <label>:2848                                    ; preds = %2834, %2832, %2798, %2780, %2755, %2264, %2083, %2069
  %2849 = phi float [ %2070, %2755 ], [ %2070, %2264 ], [ %2070, %2069 ], [ %2837, %2834 ], [ %2070, %2832 ], [ %2801, %2798 ], [ %2785, %2780 ], [ %2070, %2083 ]
  %2850 = phi float [ %2071, %2755 ], [ %2071, %2264 ], [ %2071, %2069 ], [ %2838, %2834 ], [ %2071, %2832 ], [ %2802, %2798 ], [ %2786, %2780 ], [ %2071, %2083 ]
  %2851 = phi float [ %2756, %2755 ], [ %2072, %2264 ], [ %2072, %2069 ], [ %2756, %2834 ], [ %2756, %2832 ], [ %2756, %2798 ], [ %2756, %2780 ], [ %2072, %2083 ]
  %2852 = phi float [ %2757, %2755 ], [ %2073, %2264 ], [ %2073, %2069 ], [ %2757, %2834 ], [ %2757, %2832 ], [ %2757, %2798 ], [ %2757, %2780 ], [ %2073, %2083 ]
  %2853 = phi float [ %2758, %2755 ], [ %2074, %2264 ], [ %2074, %2069 ], [ %2758, %2834 ], [ %2758, %2832 ], [ %2758, %2798 ], [ %2758, %2780 ], [ %2074, %2083 ]
  %2854 = phi float [ %2759, %2755 ], [ %2075, %2264 ], [ %2075, %2069 ], [ %2759, %2834 ], [ %2759, %2832 ], [ %2759, %2798 ], [ %2759, %2780 ], [ %2075, %2083 ]
  %2855 = phi float [ %2760, %2755 ], [ %2076, %2264 ], [ %2076, %2069 ], [ %2760, %2834 ], [ %2760, %2832 ], [ %2760, %2798 ], [ %2760, %2780 ], [ %2076, %2083 ]
  %2856 = phi float [ %2761, %2755 ], [ %2077, %2264 ], [ %2077, %2069 ], [ %2761, %2834 ], [ %2761, %2832 ], [ %2761, %2798 ], [ %2761, %2780 ], [ %2077, %2083 ]
  %2857 = phi float [ %2762, %2755 ], [ %2078, %2264 ], [ %2078, %2069 ], [ %2762, %2834 ], [ %2762, %2832 ], [ %2762, %2798 ], [ %2762, %2780 ], [ %2078, %2083 ]
  %2858 = phi float [ %2079, %2755 ], [ %2079, %2264 ], [ %2079, %2069 ], [ %2845, %2834 ], [ %2079, %2832 ], [ %2829, %2798 ], [ %2792, %2780 ], [ %2079, %2083 ]
  %2859 = phi float [ %2080, %2755 ], [ %2080, %2264 ], [ %2080, %2069 ], [ %2842, %2834 ], [ %2080, %2832 ], [ %2806, %2798 ], [ %2789, %2780 ], [ %2080, %2083 ]
  %2860 = phi float [ %2081, %2755 ], [ %2081, %2264 ], [ %2081, %2069 ], [ %2847, %2834 ], [ %2081, %2832 ], [ %2831, %2798 ], [ %2795, %2780 ], [ %2081, %2083 ]
  %2861 = phi float [ %2763, %2755 ], [ %2082, %2264 ], [ %2082, %2069 ], [ %2763, %2834 ], [ %2763, %2832 ], [ %2763, %2798 ], [ %2763, %2780 ], [ %2082, %2083 ]
  br i1 %663, label %3627, label %2862

; <label>:2862                                    ; preds = %2848
  %2863 = icmp ult i32 %717, 4
  %2864 = add i32 %62, 72
  %2865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2864, i32 undef)  ; BufferLoad(srv,index,wot)
  %2866 = extractvalue %dx.types.ResRet.i32 %2865, 0
  %2867 = add i32 %62, 76
  %2868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2867, i32 undef)  ; BufferLoad(srv,index,wot)
  %2869 = extractvalue %dx.types.ResRet.i32 %2868, 0
  %2870 = or i32 %2869, %2866
  %2871 = icmp eq i32 %2870, 0
  br i1 %2871, label %3627, label %2872

; <label>:2872                                    ; preds = %2862
  %2873 = and i32 %2866, 262144
  %2874 = icmp ne i32 %2873, 0
  %2875 = select i1 %2874, float %70, float 1.000000e+00
  %2876 = select i1 %2874, float %71, float 0.000000e+00
  %2877 = select i1 %2874, float %72, float 0.000000e+00
  %2878 = select i1 %2874, float %73, float 1.000000e+00
  %2879 = select i1 %2874, float %74, float %98
  %2880 = select i1 %2874, float %75, float %99
  %2881 = add i32 %62, 332
  %2882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2881, i32 undef)  ; BufferLoad(srv,index,wot)
  %2883 = extractvalue %dx.types.ResRet.i32 %2882, 0
  %2884 = lshr i32 %2883, 16
  %2885 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2884)  ; LegacyF16ToF32(value)
  %2886 = fmul fast float %2885, 0x3F50624DE0000000
  %2887 = add i32 %62, 136
  %2888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2887, i32 undef)  ; BufferLoad(srv,index,wot)
  %2889 = extractvalue %dx.types.ResRet.i32 %2888, 0
  %2890 = lshr i32 %2889, 16
  %2891 = and i32 %2890, 255
  %2892 = lshr i32 %2889, 24
  %2893 = add i32 %62, 340
  %2894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2893, i32 undef)  ; BufferLoad(srv,index,wot)
  %2895 = extractvalue %dx.types.ResRet.i32 %2894, 0
  %2896 = and i32 %2895, 65535
  %2897 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2896)  ; LegacyF16ToF32(value)
  %2898 = lshr i32 %2895, 16
  %2899 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2898)  ; LegacyF16ToF32(value)
  %2900 = add i32 %62, 80
  %2901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2900, i32 undef)  ; BufferLoad(srv,index,wot)
  %2902 = extractvalue %dx.types.ResRet.i32 %2901, 0
  %2903 = lshr i32 %2902, 22
  %2904 = shl nuw nsw i32 %2903, 5
  %2905 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2904)  ; LegacyF16ToF32(value)
  %2906 = shl i32 %2902, 4
  %2907 = and i32 %2906, 32752
  %2908 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2907)  ; LegacyF16ToF32(value)
  %2909 = lshr i32 %2902, 7
  %2910 = and i32 %2909, 32752
  %2911 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2910)  ; LegacyF16ToF32(value)
  %2912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2913 = extractvalue %dx.types.CBufRet.f32 %2912, 3
  %2914 = fmul fast float %2913, 1.000000e+03
  %2915 = fmul fast float %2914, %652
  %2916 = call float @dx.op.unary.f32(i32 22, float %2915)  ; Frc(value)
  %2917 = fadd fast float %2916, %640
  %2918 = fmul fast float %2914, %654
  %2919 = call float @dx.op.unary.f32(i32 22, float %2918)  ; Frc(value)
  %2920 = fadd fast float %2919, %641
  %2921 = fmul fast float %2886, %2914
  %2922 = call float @dx.op.unary.f32(i32 22, float %2921)  ; Frc(value)
  %2923 = fmul fast float %2922, 0x401921FB60000000
  %2924 = fadd fast float %2923, %2905
  %2925 = call float @dx.op.unary.f32(i32 13, float %2924)  ; Sin(value)
  %2926 = call float @dx.op.unary.f32(i32 12, float %2924)  ; Cos(value)
  %2927 = fsub fast float -0.000000e+00, %2925
  %2928 = fadd fast float %2879, -5.000000e-01
  %2929 = fadd fast float %2880, -5.000000e-01
  %2930 = fmul fast float %2897, %2928
  %2931 = fmul fast float %2899, %2929
  %2932 = fadd fast float %2930, 5.000000e-01
  %2933 = fadd fast float %2931, 5.000000e-01
  %2934 = fmul fast float %2908, %2932
  %2935 = fmul fast float %2911, %2933
  %2936 = fmul fast float %2926, %2934
  %2937 = call float @dx.op.tertiary.f32(i32 46, float %2927, float %2935, float %2936)  ; FMad(a,b,c)
  %2938 = fmul fast float %2925, %2934
  %2939 = call float @dx.op.tertiary.f32(i32 46, float %2926, float %2935, float %2938)  ; FMad(a,b,c)
  %2940 = fadd fast float %2917, %2937
  %2941 = fadd fast float %2920, %2939
  %2942 = icmp ugt i32 %2891, 1
  %2943 = icmp ugt i32 %2889, 33554431
  %2944 = or i1 %2943, %2942
  br i1 %2944, label %2945, label %2970

; <label>:2945                                    ; preds = %2872
  %2946 = add i32 %62, 276
  %2947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2946, i32 undef)  ; BufferLoad(srv,index,wot)
  %2948 = extractvalue %dx.types.ResRet.i32 %2947, 0
  %2949 = lshr i32 %2948, 16
  %2950 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2949)  ; LegacyF16ToF32(value)
  %2951 = fmul fast float %2913, %2950
  %2952 = call float @dx.op.unary.f32(i32 22, float %2951)  ; Frc(value)
  %2953 = mul nuw nsw i32 %2891, %2892
  %2954 = uitofp i32 %2953 to float
  %2955 = fmul fast float %2952, %2954
  %2956 = call float @dx.op.unary.f32(i32 27, float %2955)  ; Round_ni(value)
  %2957 = fptoui float %2956 to i32
  %2958 = urem i32 %2957, %2891
  %2959 = udiv i32 %2957, %2892
  %2960 = call float @dx.op.unary.f32(i32 22, float %2940)  ; Frc(value)
  %2961 = call float @dx.op.unary.f32(i32 22, float %2941)  ; Frc(value)
  %2962 = uitofp i32 %2958 to float
  %2963 = uitofp i32 %2959 to float
  %2964 = fadd fast float %2960, %2962
  %2965 = fadd fast float %2961, %2963
  %2966 = uitofp i32 %2891 to float
  %2967 = uitofp i32 %2892 to float
  %2968 = fdiv fast float %2964, %2966
  %2969 = fdiv fast float %2965, %2967
  br label %2970

; <label>:2970                                    ; preds = %2945, %2872
  %2971 = phi float [ %2968, %2945 ], [ %2940, %2872 ]
  %2972 = phi float [ %2969, %2945 ], [ %2941, %2872 ]
  %2973 = and i32 %2866, 256
  %2974 = icmp eq i32 %2973, 0
  br i1 %2974, label %3021, label %2975

; <label>:2975                                    ; preds = %2970
  %2976 = add i32 %62, 484
  %2977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2976, i32 undef)  ; BufferLoad(srv,index,wot)
  %2978 = extractvalue %dx.types.ResRet.i32 %2977, 0
  %2979 = add i32 %2978, 0
  %2980 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2979, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2981 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2980, %dx.types.Handle %117, float %2971, float %2972, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2982 = extractvalue %dx.types.ResRet.f32 %2981, 0
  %2983 = add i32 %62, 148
  %2984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2983, i32 undef)  ; BufferLoad(srv,index,wot)
  %2985 = extractvalue %dx.types.ResRet.i32 %2984, 0
  %2986 = shl i32 %2985, 4
  %2987 = and i32 %2986, 32752
  %2988 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2987)  ; LegacyF16ToF32(value)
  %2989 = lshr i32 %2985, 7
  %2990 = and i32 %2989, 32752
  %2991 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2990)  ; LegacyF16ToF32(value)
  %2992 = fsub fast float 1.000000e+00, %712
  %2993 = call float @dx.op.binary.f32(i32 35, float %2992, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2994 = bitcast float %712 to i32
  %2995 = sitofp i32 %2994 to float
  %2996 = fadd fast float %2995, 0xC1CFBF8940000000
  %2997 = fmul fast float %2991, %2996
  %2998 = fadd fast float %2997, 0x41CFBF8940000000
  %2999 = fptosi float %2998 to i32
  %3000 = bitcast i32 %2999 to float
  %3001 = bitcast float %2993 to i32
  %3002 = sitofp i32 %3001 to float
  %3003 = fadd fast float %3002, 0xC1CFBF8940000000
  %3004 = fmul fast float %3003, %2991
  %3005 = fadd fast float %3004, 0x41CFBF8940000000
  %3006 = fptosi float %3005 to i32
  %3007 = bitcast i32 %3006 to float
  %3008 = fmul fast float %3000, %2988
  %3009 = fmul fast float %3007, %2988
  %3010 = fsub fast float %2993, %3008
  %3011 = fadd fast float %3009, %2993
  %3012 = call float @dx.op.unary.f32(i32 7, float %3010)  ; Saturate(value)
  %3013 = call float @dx.op.unary.f32(i32 7, float %3011)  ; Saturate(value)
  %3014 = fsub fast float %2982, %3012
  %3015 = fsub fast float %3013, %3012
  %3016 = bitcast float %3015 to i32
  %3017 = sub nsw i32 2129859010, %3016
  %3018 = bitcast i32 %3017 to float
  %3019 = fmul fast float %3018, %3014
  %3020 = call float @dx.op.unary.f32(i32 7, float %3019)  ; Saturate(value)
  br label %3021

; <label>:3021                                    ; preds = %2975, %2970
  %3022 = phi float [ %3020, %2975 ], [ %712, %2970 ]
  %3023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2864, i32 undef)  ; BufferLoad(srv,index,wot)
  %3024 = extractvalue %dx.types.ResRet.i32 %3023, 0
  %3025 = and i32 %3024, 128
  %3026 = icmp eq i32 %3025, 0
  br i1 %3026, label %3043, label %3027

; <label>:3027                                    ; preds = %3021
  %3028 = add i32 %62, 468
  %3029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3028, i32 undef)  ; BufferLoad(srv,index,wot)
  %3030 = extractvalue %dx.types.ResRet.i32 %3029, 0
  %3031 = add i32 %3030, 0
  %3032 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3031, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3033 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3032, %dx.types.Handle %117, float %2971, float %2972, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3034 = extractvalue %dx.types.ResRet.f32 %3033, 0
  %3035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2864, i32 undef)  ; BufferLoad(srv,index,wot)
  %3036 = extractvalue %dx.types.ResRet.i32 %3035, 0
  %3037 = and i32 %3036, 524288
  %3038 = icmp ne i32 %3037, 0
  %3039 = fcmp fast ogt float %3034, 0x3FE0101020000000
  %3040 = select i1 %3039, float 1.000000e+00, float 0.000000e+00
  %3041 = select i1 %3038, float %3040, float %3034
  %3042 = fmul fast float %3041, %3022
  br label %3043

; <label>:3043                                    ; preds = %3027, %3021
  %3044 = phi float [ %3042, %3027 ], [ %3022, %3021 ]
  %3045 = fcmp fast ult float %3044, 0x3F70101020000000
  br i1 %3045, label %3627, label %3046

; <label>:3046                                    ; preds = %3043
  %3047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2864, i32 undef)  ; BufferLoad(srv,index,wot)
  %3048 = extractvalue %dx.types.ResRet.i32 %3047, 0
  %3049 = and i32 %3048, 16
  %3050 = icmp eq i32 %3049, 0
  br i1 %3050, label %3249, label %3051

; <label>:3051                                    ; preds = %3046
  %3052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2887, i32 undef)  ; BufferLoad(srv,index,wot)
  %3053 = extractvalue %dx.types.ResRet.i32 %3052, 0
  %3054 = add i32 %62, 420
  %3055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3054, i32 undef)  ; BufferLoad(srv,index,wot)
  %3056 = extractvalue %dx.types.ResRet.i32 %3055, 0
  %3057 = add i32 %3056, 0
  %3058 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3057, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3059 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3058, %dx.types.Handle %116, float %2971, float %2972, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3060 = extractvalue %dx.types.ResRet.f32 %3059, 0
  %3061 = extractvalue %dx.types.ResRet.f32 %3059, 1
  %3062 = extractvalue %dx.types.ResRet.f32 %3059, 2
  %3063 = extractvalue %dx.types.ResRet.f32 %3059, 3
  %3064 = and i32 %3053, 255
  %3065 = uitofp i32 %3064 to float
  %3066 = lshr i32 %3053, 8
  %3067 = and i32 %3066, 255
  %3068 = uitofp i32 %3067 to float
  %3069 = fmul fast float %3063, %3065
  %3070 = fadd fast float %3069, %3068
  %3071 = fmul fast float %3070, 0x3F70101000000000
  %3072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2864, i32 undef)  ; BufferLoad(srv,index,wot)
  %3073 = extractvalue %dx.types.ResRet.i32 %3072, 0
  %3074 = and i32 %3073, 512
  %3075 = icmp eq i32 %3074, 0
  br i1 %3075, label %3084, label %3076

; <label>:3076                                    ; preds = %3051
  %3077 = add i32 %62, 504
  %3078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3077, i32 undef)  ; BufferLoad(srv,index,wot)
  %3079 = extractvalue %dx.types.ResRet.i32 %3078, 0
  %3080 = add i32 %3079, 0
  %3081 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3080, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3082 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3081, %dx.types.Handle %117, float %2971, float %2972, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3083 = extractvalue %dx.types.ResRet.f32 %3082, 0
  br label %3084

; <label>:3084                                    ; preds = %3076, %3051
  %3085 = phi float [ %3083, %3076 ], [ 1.000000e+00, %3051 ]
  %3086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2864, i32 undef)  ; BufferLoad(srv,index,wot)
  %3087 = extractvalue %dx.types.ResRet.i32 %3086, 0
  %3088 = and i32 %3087, 33554432
  %3089 = icmp eq i32 %3088, 0
  br i1 %3089, label %3196, label %3090

; <label>:3090                                    ; preds = %3084
  %3091 = add i32 %62, 272
  %3092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3091, i32 undef)  ; BufferLoad(srv,index,wot)
  %3093 = extractvalue %dx.types.ResRet.i32 %3092, 0
  %3094 = and i32 %3093, 65535
  %3095 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3094)  ; LegacyF16ToF32(value)
  %3096 = lshr i32 %3093, 16
  %3097 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3096)  ; LegacyF16ToF32(value)
  %3098 = add i32 %62, 276
  %3099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3098, i32 undef)  ; BufferLoad(srv,index,wot)
  %3100 = extractvalue %dx.types.ResRet.i32 %3099, 0
  %3101 = and i32 %3100, 65535
  %3102 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3101)  ; LegacyF16ToF32(value)
  %3103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %564, i32 undef)  ; BufferLoad(srv,index,wot)
  %3104 = extractvalue %dx.types.ResRet.i32 %3103, 0
  %3105 = lshr i32 %3104, 24
  %3106 = uitofp i32 %3105 to float
  %3107 = fmul fast float %3106, 0x3F70101020000000
  %3108 = and i32 %3104, 255
  %3109 = uitofp i32 %3108 to float
  %3110 = fmul fast float %3109, 0x3F70101020000000
  %3111 = lshr i32 %3104, 8
  %3112 = and i32 %3111, 255
  %3113 = uitofp i32 %3112 to float
  %3114 = fmul fast float %3113, 0x3F70101020000000
  %3115 = lshr i32 %3104, 16
  %3116 = and i32 %3115, 255
  %3117 = uitofp i32 %3116 to float
  %3118 = fmul fast float %3117, 0x3F70101020000000
  %3119 = add i32 %62, 268
  %3120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3119, i32 undef)  ; BufferLoad(srv,index,wot)
  %3121 = extractvalue %dx.types.ResRet.i32 %3120, 0
  %3122 = lshr i32 %3121, 24
  %3123 = uitofp i32 %3122 to float
  %3124 = fmul fast float %3123, 0x3F70101020000000
  %3125 = and i32 %3121, 255
  %3126 = uitofp i32 %3125 to float
  %3127 = fmul fast float %3126, 0x3F70101020000000
  %3128 = lshr i32 %3121, 8
  %3129 = and i32 %3128, 255
  %3130 = uitofp i32 %3129 to float
  %3131 = fmul fast float %3130, 0x3F70101020000000
  %3132 = lshr i32 %3121, 16
  %3133 = and i32 %3132, 255
  %3134 = uitofp i32 %3133 to float
  %3135 = fmul fast float %3134, 0x3F70101020000000
  %3136 = bitcast float %3060 to i32
  %3137 = ashr i32 %3136, 1
  %3138 = sub nsw i32 1597463174, %3137
  %3139 = bitcast i32 %3138 to float
  %3140 = fmul fast float %3060, 5.000000e-01
  %3141 = fmul fast float %3139, %3139
  %3142 = fmul fast float %3141, %3140
  %3143 = fsub fast float 1.500000e+00, %3142
  %3144 = fmul fast float %3139, %3060
  %3145 = fmul fast float %3144, %3143
  %3146 = bitcast float %3061 to i32
  %3147 = ashr i32 %3146, 1
  %3148 = sub nsw i32 1597463174, %3147
  %3149 = bitcast i32 %3148 to float
  %3150 = fmul fast float %3061, 5.000000e-01
  %3151 = fmul fast float %3149, %3149
  %3152 = fmul fast float %3151, %3150
  %3153 = fsub fast float 1.500000e+00, %3152
  %3154 = fmul fast float %3149, %3061
  %3155 = fmul fast float %3154, %3153
  %3156 = bitcast float %3062 to i32
  %3157 = ashr i32 %3156, 1
  %3158 = sub nsw i32 1597463174, %3157
  %3159 = bitcast i32 %3158 to float
  %3160 = fmul fast float %3062, 5.000000e-01
  %3161 = fmul fast float %3159, %3159
  %3162 = fmul fast float %3161, %3160
  %3163 = fsub fast float 1.500000e+00, %3162
  %3164 = fmul fast float %3159, %3062
  %3165 = fmul fast float %3164, %3163
  %3166 = fsub fast float %3145, %3127
  %3167 = fsub fast float %3155, %3131
  %3168 = fsub fast float %3165, %3135
  %3169 = fmul fast float %3166, %3095
  %3170 = fmul fast float %3167, %3097
  %3171 = fmul fast float %3168, %3102
  %3172 = fadd fast float %3169, %3110
  %3173 = fadd fast float %3170, %3114
  %3174 = fadd fast float %3171, %3118
  %3175 = call float @dx.op.unary.f32(i32 7, float %3172)  ; Saturate(value)
  %3176 = call float @dx.op.unary.f32(i32 7, float %3173)  ; Saturate(value)
  %3177 = call float @dx.op.unary.f32(i32 7, float %3174)  ; Saturate(value)
  %3178 = fmul fast float %3175, %3175
  %3179 = fmul fast float %3176, %3176
  %3180 = fmul fast float %3177, %3177
  %3181 = fsub fast float %3178, %3060
  %3182 = fsub fast float %3179, %3061
  %3183 = fsub fast float %3180, %3062
  %3184 = fmul fast float %3181, %3085
  %3185 = fmul fast float %3182, %3085
  %3186 = fmul fast float %3183, %3085
  %3187 = fadd fast float %3184, %3060
  %3188 = fadd fast float %3185, %3061
  %3189 = fadd fast float %3186, %3062
  %3190 = fadd fast float %3107, %3071
  %3191 = fsub fast float %3190, %3124
  %3192 = call float @dx.op.unary.f32(i32 7, float %3191)  ; Saturate(value)
  %3193 = fsub fast float %3192, %3071
  %3194 = fmul fast float %3193, %3085
  %3195 = fadd fast float %3194, %3071
  br label %3249

; <label>:3196                                    ; preds = %3084
  %3197 = and i32 %3087, 134217728
  %3198 = icmp eq i32 %3197, 0
  br i1 %3198, label %3233, label %3199

; <label>:3199                                    ; preds = %3196
  %3200 = call float @dx.op.unary.f32(i32 24, float %628)  ; Sqrt(value)
  %3201 = call float @dx.op.unary.f32(i32 24, float %629)  ; Sqrt(value)
  %3202 = call float @dx.op.unary.f32(i32 24, float %630)  ; Sqrt(value)
  %3203 = fadd fast float %3200, -5.000000e-01
  %3204 = fadd fast float %3201, -5.000000e-01
  %3205 = fadd fast float %3202, -5.000000e-01
  %3206 = fmul fast float %3203, %3085
  %3207 = fmul fast float %3204, %3085
  %3208 = fmul fast float %3205, %3085
  %3209 = fadd fast float %3206, 5.000000e-01
  %3210 = fadd fast float %3207, 5.000000e-01
  %3211 = fadd fast float %3208, 5.000000e-01
  %3212 = call float @dx.op.unary.f32(i32 24, float %3060)  ; Sqrt(value)
  %3213 = call float @dx.op.unary.f32(i32 24, float %3061)  ; Sqrt(value)
  %3214 = call float @dx.op.unary.f32(i32 24, float %3062)  ; Sqrt(value)
  %3215 = fmul fast float %3209, 2.000000e+00
  %3216 = fsub fast float 1.000000e+00, %3215
  %3217 = fmul fast float %3216, %3212
  %3218 = fadd fast float %3217, %3215
  %3219 = fmul fast float %3218, %3212
  %3220 = fmul fast float %3210, 2.000000e+00
  %3221 = fsub fast float 1.000000e+00, %3220
  %3222 = fmul fast float %3221, %3213
  %3223 = fadd fast float %3222, %3220
  %3224 = fmul fast float %3223, %3213
  %3225 = fmul fast float %3211, 2.000000e+00
  %3226 = fsub fast float 1.000000e+00, %3225
  %3227 = fmul fast float %3226, %3214
  %3228 = fadd fast float %3227, %3225
  %3229 = fmul fast float %3228, %3214
  %3230 = fmul fast float %3219, %3219
  %3231 = fmul fast float %3224, %3224
  %3232 = fmul fast float %3229, %3229
  br label %3249

; <label>:3233                                    ; preds = %3196
  %3234 = fmul fast float %628, %628
  %3235 = fmul fast float %629, %629
  %3236 = fmul fast float %630, %630
  %3237 = fadd fast float %3234, -1.000000e+00
  %3238 = fadd fast float %3235, -1.000000e+00
  %3239 = fadd fast float %3236, -1.000000e+00
  %3240 = fmul fast float %3085, %3237
  %3241 = fmul fast float %3085, %3238
  %3242 = fmul fast float %3085, %3239
  %3243 = fadd fast float %3240, 1.000000e+00
  %3244 = fadd fast float %3241, 1.000000e+00
  %3245 = fadd fast float %3242, 1.000000e+00
  %3246 = fmul fast float %3243, %3060
  %3247 = fmul fast float %3244, %3061
  %3248 = fmul fast float %3245, %3062
  br label %3249

; <label>:3249                                    ; preds = %3233, %3199, %3090, %3046
  %3250 = phi float [ %3195, %3090 ], [ %3071, %3199 ], [ %3071, %3233 ], [ 0x3FA23C0BE0000000, %3046 ]
  %3251 = phi float [ %3187, %3090 ], [ %3230, %3199 ], [ %3246, %3233 ], [ 1.000000e+00, %3046 ]
  %3252 = phi float [ %3188, %3090 ], [ %3231, %3199 ], [ %3247, %3233 ], [ 1.000000e+00, %3046 ]
  %3253 = phi float [ %3189, %3090 ], [ %3232, %3199 ], [ %3248, %3233 ], [ 1.000000e+00, %3046 ]
  %3254 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3255 = extractvalue %dx.types.CBufRet.i32 %3254, 1
  %3256 = and i32 %3255, 1
  %3257 = icmp ne i32 %3256, 0
  %3258 = add i32 %62, 356
  %3259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3258, i32 undef)  ; BufferLoad(srv,index,wot)
  %3260 = extractvalue %dx.types.ResRet.i32 %3259, 0
  %3261 = and i32 %3260, 32
  %3262 = icmp ne i32 %3261, 0
  %3263 = and i1 %3257, %3262
  %3264 = select i1 %3263, float 1.000000e+00, float %3251
  %3265 = select i1 %3263, float 0x3FD3333340000000, float %3252
  %3266 = select i1 %3263, float 0x3FD3333340000000, float %3253
  %3267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2864, i32 undef)  ; BufferLoad(srv,index,wot)
  %3268 = extractvalue %dx.types.ResRet.i32 %3267, 0
  %3269 = and i32 %3268, 32
  %3270 = icmp eq i32 %3269, 0
  br i1 %3270, label %3343, label %3271

; <label>:3271                                    ; preds = %3249
  %3272 = add i32 %62, 140
  %3273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3272, i32 undef)  ; BufferLoad(srv,index,wot)
  %3274 = extractvalue %dx.types.ResRet.i32 %3273, 0
  %3275 = add i32 %62, 436
  %3276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3275, i32 undef)  ; BufferLoad(srv,index,wot)
  %3277 = extractvalue %dx.types.ResRet.i32 %3276, 0
  %3278 = add i32 %3277, 0
  %3279 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3278, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3280 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3279, %dx.types.Handle %116, float %2971, float %2972, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3281 = extractvalue %dx.types.ResRet.f32 %3280, 0
  %3282 = extractvalue %dx.types.ResRet.f32 %3280, 1
  %3283 = extractvalue %dx.types.ResRet.f32 %3280, 2
  %3284 = extractvalue %dx.types.ResRet.f32 %3280, 3
  %3285 = and i32 %3274, 255
  %3286 = uitofp i32 %3285 to float
  %3287 = lshr i32 %3274, 8
  %3288 = and i32 %3287, 255
  %3289 = uitofp i32 %3288 to float
  %3290 = lshr i32 %3274, 16
  %3291 = and i32 %3290, 255
  %3292 = uitofp i32 %3291 to float
  %3293 = fmul fast float %3292, 0x3F70101000000000
  %3294 = fmul fast float %3281, %3286
  %3295 = fadd fast float %3294, %3289
  %3296 = fmul fast float %3295, 0x3F70101000000000
  %3297 = fadd fast float %3282, -5.000000e-01
  %3298 = fadd fast float %3284, -5.000000e-01
  %3299 = fmul fast float %3297, %3293
  %3300 = fmul fast float %3298, %3293
  %3301 = fadd fast float %3299, 5.000000e-01
  %3302 = fadd fast float %3300, 5.000000e-01
  %3303 = fmul fast float %3301, 2.000000e+00
  %3304 = fadd fast float %3303, -1.000000e+00
  %3305 = fmul fast float %3302, 2.000000e+00
  %3306 = fadd fast float %3305, -1.000000e+00
  %3307 = fadd fast float %3304, %3306
  %3308 = fmul fast float %3307, 5.000000e-01
  %3309 = fsub fast float %3304, %3306
  %3310 = fmul fast float %3309, 5.000000e-01
  %3311 = call float @dx.op.unary.f32(i32 6, float %3308)  ; FAbs(value)
  %3312 = fsub fast float 1.000000e+00, %3311
  %3313 = call float @dx.op.unary.f32(i32 6, float %3310)  ; FAbs(value)
  %3314 = fsub fast float %3312, %3313
  %3315 = call float @dx.op.dot3.f32(i32 55, float %3308, float %3310, float %3314, float %3308, float %3310, float %3314)  ; Dot3(ax,ay,az,bx,by,bz)
  %3316 = call float @dx.op.unary.f32(i32 25, float %3315)  ; Rsqrt(value)
  %3317 = fmul fast float %3308, %3316
  %3318 = fmul fast float %3310, %3316
  %3319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2864, i32 undef)  ; BufferLoad(srv,index,wot)
  %3320 = extractvalue %dx.types.ResRet.i32 %3319, 0
  %3321 = and i32 %3320, 67108864
  %3322 = icmp eq i32 %3321, 0
  br i1 %3322, label %3339, label %3323

; <label>:3323                                    ; preds = %3271
  %3324 = add i32 %62, 328
  %3325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3324, i32 undef)  ; BufferLoad(srv,index,wot)
  %3326 = extractvalue %dx.types.ResRet.i32 %3325, 0
  %3327 = and i32 %3326, 65535
  %3328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3327)  ; LegacyF16ToF32(value)
  %3329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2881, i32 undef)  ; BufferLoad(srv,index,wot)
  %3330 = extractvalue %dx.types.ResRet.i32 %3329, 0
  %3331 = and i32 %3330, 65535
  %3332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3331)  ; LegacyF16ToF32(value)
  %3333 = lshr i32 %3326, 16
  %3334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3333)  ; LegacyF16ToF32(value)
  %3335 = fsub fast float %3296, %3334
  %3336 = fmul fast float %3335, %3328
  %3337 = fadd fast float %3336, %3332
  %3338 = call float @dx.op.unary.f32(i32 7, float %3337)  ; Saturate(value)
  br label %3339

; <label>:3339                                    ; preds = %3323, %3271
  %3340 = phi float [ %3338, %3323 ], [ %3296, %3271 ]
  %3341 = call float @dx.op.dot2.f32(i32 54, float %3317, float %3318, float %2875, float %2876)  ; Dot2(ax,ay,bx,by)
  %3342 = call float @dx.op.dot2.f32(i32 54, float %3317, float %3318, float %2877, float %2878)  ; Dot2(ax,ay,bx,by)
  br label %3343

; <label>:3343                                    ; preds = %3339, %3249
  %3344 = phi float [ %3340, %3339 ], [ 0x3FD6666660000000, %3249 ]
  %3345 = phi float [ %3341, %3339 ], [ 0.000000e+00, %3249 ]
  %3346 = phi float [ %3342, %3339 ], [ 0.000000e+00, %3249 ]
  %3347 = phi float [ %3283, %3339 ], [ 1.000000e+00, %3249 ]
  %3348 = add i32 %62, 208
  %3349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3348, i32 undef)  ; BufferLoad(srv,index,wot)
  %3350 = extractvalue %dx.types.ResRet.i32 %3349, 0
  %3351 = lshr i32 %3350, 22
  %3352 = shl nuw nsw i32 %3351, 5
  %3353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3352)  ; LegacyF16ToF32(value)
  %3354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2864, i32 undef)  ; BufferLoad(srv,index,wot)
  %3355 = extractvalue %dx.types.ResRet.i32 %3354, 0
  %3356 = and i32 %3355, 64
  %3357 = icmp eq i32 %3356, 0
  br i1 %3357, label %3391, label %3358

; <label>:3358                                    ; preds = %3343
  %3359 = add i32 %62, 452
  %3360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3359, i32 undef)  ; BufferLoad(srv,index,wot)
  %3361 = extractvalue %dx.types.ResRet.i32 %3360, 0
  %3362 = add i32 %3361, 0
  %3363 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3362, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2864, i32 undef)  ; BufferLoad(srv,index,wot)
  %3365 = extractvalue %dx.types.ResRet.i32 %3364, 0
  %3366 = and i32 %3365, 131072
  %3367 = icmp eq i32 %3366, 0
  %3368 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3363, %dx.types.Handle %116, float %2971, float %2972, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3369 = extractvalue %dx.types.ResRet.f32 %3368, 0
  %3370 = extractvalue %dx.types.ResRet.f32 %3368, 1
  %3371 = extractvalue %dx.types.ResRet.f32 %3368, 2
  %3372 = fmul fast float %611, %3369
  %3373 = fmul fast float %612, %3370
  %3374 = fmul fast float %613, %3371
  br i1 %3367, label %3381, label %3375

; <label>:3375                                    ; preds = %3358
  %3376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3377 = extractvalue %dx.types.CBufRet.f32 %3376, 0
  %3378 = fmul fast float %3377, %3372
  %3379 = fmul fast float %3377, %3373
  %3380 = fmul fast float %3377, %3374
  br label %3381

; <label>:3381                                    ; preds = %3375, %3358
  %3382 = phi float [ %3378, %3375 ], [ %3372, %3358 ]
  %3383 = phi float [ %3379, %3375 ], [ %3373, %3358 ]
  %3384 = phi float [ %3380, %3375 ], [ %3374, %3358 ]
  %3385 = fmul fast float %3382, %3353
  %3386 = select i1 %279, float %3385, float %3382
  %3387 = call float @dx.op.dot3.f32(i32 55, float %3386, float %3383, float %3384, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3388 = select i1 %279, float 0.000000e+00, float %3382
  %3389 = select i1 %279, float %3387, float %3383
  %3390 = select i1 %279, float 0.000000e+00, float %3384
  br label %3391

; <label>:3391                                    ; preds = %3381, %3343
  %3392 = phi float [ %3388, %3381 ], [ 0.000000e+00, %3343 ]
  %3393 = phi float [ %3389, %3381 ], [ 0.000000e+00, %3343 ]
  %3394 = phi float [ %3390, %3381 ], [ 0.000000e+00, %3343 ]
  %3395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2864, i32 undef)  ; BufferLoad(srv,index,wot)
  %3396 = extractvalue %dx.types.ResRet.i32 %3395, 0
  %3397 = and i32 %3396, 26624
  %3398 = icmp eq i32 %3397, 0
  br i1 %3398, label %3422, label %3399

; <label>:3399                                    ; preds = %3391
  %3400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2864, i32 undef)  ; BufferLoad(srv,index,wot)
  %3401 = extractvalue %dx.types.ResRet.i32 %3400, 0
  %3402 = and i32 %3401, 16384
  %3403 = icmp eq i32 %3402, 0
  br i1 %3403, label %3422, label %3404

; <label>:3404                                    ; preds = %3399
  %3405 = and i32 %3401, 1048576
  %3406 = icmp ne i32 %3405, 0
  %3407 = add i32 %62, 520
  %3408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3407, i32 undef)  ; BufferLoad(srv,index,wot)
  %3409 = extractvalue %dx.types.ResRet.i32 %3408, 0
  %3410 = add i32 %3409, 0
  %3411 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3410, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3412 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3411, %dx.types.Handle %117, float %2971, float %2972, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3413 = extractvalue %dx.types.ResRet.f32 %3412, 0
  %3414 = add i32 %62, 144
  %3415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3414, i32 undef)  ; BufferLoad(srv,index,wot)
  %3416 = extractvalue %dx.types.ResRet.i32 %3415, 0
  %3417 = lshr i32 %3416, 24
  %3418 = uitofp i32 %3417 to float
  %3419 = fmul fast float %3413, 0x3F70101020000000
  %3420 = select i1 %3406, float 0x3F70101020000000, float %3419
  %3421 = fmul fast float %3420, %3418
  br label %3422

; <label>:3422                                    ; preds = %3404, %3399, %3391
  %3423 = phi float [ %3421, %3404 ], [ 0.000000e+00, %3399 ], [ 0.000000e+00, %3391 ]
  %3424 = add i32 %62, 144
  %3425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3424, i32 undef)  ; BufferLoad(srv,index,wot)
  %3426 = extractvalue %dx.types.ResRet.i32 %3425, 0
  %3427 = and i32 %3426, 255
  %3428 = uitofp i32 %3427 to float
  %3429 = lshr i32 %3426, 8
  %3430 = and i32 %3429, 255
  %3431 = uitofp i32 %3430 to float
  %3432 = call float @dx.op.dot3.f32(i32 55, float %3264, float %3265, float %3266, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3433 = fmul fast float %3431, %3432
  %3434 = fadd fast float %3433, %3428
  %3435 = fmul fast float %3434, 0x3F70101020000000
  %3436 = call float @dx.op.unary.f32(i32 7, float %3435)  ; Saturate(value)
  br i1 %2863, label %3437, label %3445

; <label>:3437                                    ; preds = %3422
  %3438 = fsub fast float 1.000000e+00, %3044
  %3439 = fmul fast float %3438, %2851
  %3440 = fmul fast float %3438, %2852
  %3441 = fmul fast float %3438, %2853
  %3442 = fmul fast float %3438, %2854
  %3443 = fmul fast float %3438, %2855
  %3444 = fmul fast float %3438, %2856
  br label %3445

; <label>:3445                                    ; preds = %3437, %3422
  %3446 = phi float [ %3439, %3437 ], [ %2851, %3422 ]
  %3447 = phi float [ %3440, %3437 ], [ %2852, %3422 ]
  %3448 = phi float [ %3441, %3437 ], [ %2853, %3422 ]
  %3449 = phi float [ %3442, %3437 ], [ %2854, %3422 ]
  %3450 = phi float [ %3443, %3437 ], [ %2855, %3422 ]
  %3451 = phi float [ %3444, %3437 ], [ %2856, %3422 ]
  %3452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2864, i32 undef)  ; BufferLoad(srv,index,wot)
  %3453 = extractvalue %dx.types.ResRet.i32 %3452, 0
  %3454 = and i32 %3453, 3
  %3455 = icmp eq i32 %3454, 3
  br i1 %3455, label %3534, label %3456

; <label>:3456                                    ; preds = %3445
  %3457 = and i32 %3453, 16
  %3458 = icmp ne i32 %3457, 0
  %3459 = select i1 %3458, float %3044, float 0.000000e+00
  %3460 = icmp eq i32 %3454, 0
  br i1 %3460, label %3461, label %3489

; <label>:3461                                    ; preds = %3456
  %3462 = and i32 %3453, 64
  %3463 = icmp ne i32 %3462, 0
  %3464 = select i1 %3463, float %3044, float 0.000000e+00
  %3465 = fsub fast float %3264, %3446
  %3466 = fsub fast float %3265, %3447
  %3467 = fsub fast float %3266, %3448
  %3468 = fmul fast float %3459, %3465
  %3469 = fmul fast float %3459, %3466
  %3470 = fmul fast float %3459, %3467
  %3471 = fadd fast float %3468, %3446
  %3472 = fadd fast float %3469, %3447
  %3473 = fadd fast float %3470, %3448
  %3474 = fsub fast float %3250, %2857
  %3475 = fmul fast float %3459, %3474
  %3476 = fadd fast float %3475, %2857
  %3477 = fsub fast float %3392, %3449
  %3478 = fsub fast float %3393, %3450
  %3479 = fsub fast float %3394, %3451
  %3480 = fmul fast float %3464, %3477
  %3481 = fmul fast float %3464, %3478
  %3482 = fmul fast float %3464, %3479
  %3483 = fadd fast float %3480, %3449
  %3484 = fadd fast float %3481, %3450
  %3485 = fadd fast float %3482, %3451
  %3486 = fsub fast float %3436, %2861
  %3487 = fmul fast float %3459, %3486
  %3488 = fadd fast float %3487, %2861
  br label %3534

; <label>:3489                                    ; preds = %3456
  %3490 = icmp eq i32 %3454, 1
  br i1 %3490, label %3491, label %3504

; <label>:3491                                    ; preds = %3489
  %3492 = fadd fast float %3264, -1.000000e+00
  %3493 = fadd fast float %3265, -1.000000e+00
  %3494 = fadd fast float %3266, -1.000000e+00
  %3495 = fmul fast float %3459, %3492
  %3496 = fmul fast float %3459, %3493
  %3497 = fmul fast float %3459, %3494
  %3498 = fadd fast float %3495, 1.000000e+00
  %3499 = fadd fast float %3496, 1.000000e+00
  %3500 = fadd fast float %3497, 1.000000e+00
  %3501 = fmul fast float %3498, %3446
  %3502 = fmul fast float %3499, %3447
  %3503 = fmul fast float %3500, %3448
  br label %3534

; <label>:3504                                    ; preds = %3489
  %3505 = icmp eq i32 %3454, 2
  br i1 %3505, label %3506, label %3534

; <label>:3506                                    ; preds = %3504
  %3507 = call float @dx.op.unary.f32(i32 24, float %3264)  ; Sqrt(value)
  %3508 = call float @dx.op.unary.f32(i32 24, float %3265)  ; Sqrt(value)
  %3509 = call float @dx.op.unary.f32(i32 24, float %3266)  ; Sqrt(value)
  %3510 = fadd fast float %3507, -5.000000e-01
  %3511 = fadd fast float %3508, -5.000000e-01
  %3512 = fadd fast float %3509, -5.000000e-01
  %3513 = fmul fast float %3510, %3459
  %3514 = fmul fast float %3511, %3459
  %3515 = fmul fast float %3512, %3459
  %3516 = fadd fast float %3513, 5.000000e-01
  %3517 = fadd fast float %3514, 5.000000e-01
  %3518 = fadd fast float %3515, 5.000000e-01
  %3519 = fmul fast float %3516, 2.000000e+00
  %3520 = fsub fast float 1.000000e+00, %3519
  %3521 = fmul fast float %3520, %3446
  %3522 = fadd fast float %3521, %3519
  %3523 = fmul fast float %3522, %3446
  %3524 = fmul fast float %3517, 2.000000e+00
  %3525 = fsub fast float 1.000000e+00, %3524
  %3526 = fmul fast float %3525, %3447
  %3527 = fadd fast float %3526, %3524
  %3528 = fmul fast float %3527, %3447
  %3529 = fmul fast float %3518, 2.000000e+00
  %3530 = fsub fast float 1.000000e+00, %3529
  %3531 = fmul fast float %3530, %3448
  %3532 = fadd fast float %3531, %3529
  %3533 = fmul fast float %3532, %3448
  br label %3534

; <label>:3534                                    ; preds = %3506, %3504, %3491, %3461, %3445
  %3535 = phi float [ %3446, %3445 ], [ %3523, %3506 ], [ %3446, %3504 ], [ %3501, %3491 ], [ %3471, %3461 ]
  %3536 = phi float [ %3447, %3445 ], [ %3528, %3506 ], [ %3447, %3504 ], [ %3502, %3491 ], [ %3472, %3461 ]
  %3537 = phi float [ %3448, %3445 ], [ %3533, %3506 ], [ %3448, %3504 ], [ %3503, %3491 ], [ %3473, %3461 ]
  %3538 = phi float [ %3449, %3445 ], [ %3449, %3506 ], [ %3449, %3504 ], [ %3449, %3491 ], [ %3483, %3461 ]
  %3539 = phi float [ %3450, %3445 ], [ %3450, %3506 ], [ %3450, %3504 ], [ %3450, %3491 ], [ %3484, %3461 ]
  %3540 = phi float [ %3451, %3445 ], [ %3451, %3506 ], [ %3451, %3504 ], [ %3451, %3491 ], [ %3485, %3461 ]
  %3541 = phi float [ %2857, %3445 ], [ %2857, %3506 ], [ %2857, %3504 ], [ %2857, %3491 ], [ %3476, %3461 ]
  %3542 = phi float [ %2861, %3445 ], [ %2861, %3506 ], [ %2861, %3504 ], [ %2861, %3491 ], [ %3488, %3461 ]
  %3543 = and i32 %3453, 12
  %3544 = icmp eq i32 %3543, 12
  br i1 %3544, label %3627, label %3545

; <label>:3545                                    ; preds = %3534
  %3546 = and i32 %3453, 2097184
  %3547 = icmp eq i32 %3546, 2097184
  %3548 = select i1 %3547, float %3044, float 0.000000e+00
  %3549 = and i32 %3453, 4194336
  %3550 = icmp eq i32 %3549, 4194336
  %3551 = select i1 %3550, float %3044, float 0.000000e+00
  %3552 = and i32 %3453, 8388640
  %3553 = icmp eq i32 %3552, 8388640
  %3554 = select i1 %3553, float %3044, float 0.000000e+00
  %3555 = and i32 %3453, 16384
  %3556 = icmp ne i32 %3555, 0
  %3557 = select i1 %3556, float %3044, float 0.000000e+00
  %3558 = icmp eq i32 %3543, 0
  br i1 %3558, label %3559, label %3575

; <label>:3559                                    ; preds = %3545
  %3560 = fsub fast float %3345, %2849
  %3561 = fsub fast float %3346, %2850
  %3562 = fmul fast float %3548, %3560
  %3563 = fmul fast float %3548, %3561
  %3564 = fadd fast float %3562, %2849
  %3565 = fadd fast float %3563, %2850
  %3566 = fsub fast float %3347, %2859
  %3567 = fmul fast float %3551, %3566
  %3568 = fadd fast float %3567, %2859
  %3569 = fsub fast float %3344, %2858
  %3570 = fmul fast float %3554, %3569
  %3571 = fadd fast float %3570, %2858
  %3572 = fsub fast float %3423, %2860
  %3573 = fmul fast float %3557, %3572
  %3574 = fadd fast float %3573, %2860
  br label %3627

; <label>:3575                                    ; preds = %3545
  %3576 = icmp eq i32 %3543, 4
  br i1 %3576, label %3577, label %3611

; <label>:3577                                    ; preds = %3575
  %3578 = fmul fast float %3548, %3345
  %3579 = fmul fast float %3548, %3346
  %3580 = fadd fast float %3578, %2849
  %3581 = fadd fast float %3579, %2850
  %3582 = call float @dx.op.binary.f32(i32 36, float %2859, float %3347)  ; FMin(a,b)
  %3583 = fsub fast float %3582, %2859
  %3584 = fmul fast float %3583, %3551
  %3585 = fadd fast float %3584, %2859
  %3586 = fadd fast float %3344, %2858
  %3587 = fmul fast float %3586, 0x3FF337FAE0000000
  %3588 = fmul fast float %2858, %2858
  %3589 = fmul fast float %3344, %3344
  %3590 = fadd fast float %3589, %3588
  %3591 = fmul fast float %3590, 0x3FE5152B00000000
  %3592 = fmul fast float %2858, 0xBFCC1F85E0000000
  %3593 = fmul fast float %3592, %3344
  %3594 = fadd fast float %3593, 0xBFE1363700000000
  %3595 = fadd fast float %3594, %3587
  %3596 = fsub fast float %3595, %3591
  %3597 = fmul fast float %3586, 0x3FBA6F0D00000000
  %3598 = fmul fast float %3590, 0x3FD0432880000000
  %3599 = fmul fast float %2858, 0xBFEF110800000000
  %3600 = fmul fast float %3599, %3344
  %3601 = fadd fast float %3600, 1.000000e+00
  %3602 = fsub fast float %3601, %3597
  %3603 = fadd fast float %3602, %3598
  %3604 = fdiv fast float %3596, %3603
  %3605 = call float @dx.op.unary.f32(i32 7, float %3604)  ; Saturate(value)
  %3606 = fsub fast float %3605, %2858
  %3607 = fmul fast float %3606, %3554
  %3608 = fadd fast float %3607, %2858
  %3609 = fmul fast float %3557, %3423
  %3610 = fadd fast float %3609, %2860
  br label %3627

; <label>:3611                                    ; preds = %3575
  %3612 = icmp eq i32 %3543, 8
  br i1 %3612, label %3613, label %3627

; <label>:3613                                    ; preds = %3611
  %3614 = fmul fast float %3548, %3345
  %3615 = fmul fast float %3548, %3346
  %3616 = fadd fast float %3614, %2849
  %3617 = fadd fast float %3615, %2850
  %3618 = call float @dx.op.binary.f32(i32 36, float %2859, float %3347)  ; FMin(a,b)
  %3619 = fsub fast float %3618, %2859
  %3620 = fmul fast float %3619, %3551
  %3621 = fadd fast float %3620, %2859
  %3622 = fsub fast float %3344, %2858
  %3623 = fmul fast float %3554, %3622
  %3624 = fadd fast float %3623, %2858
  %3625 = fmul fast float %3557, %3423
  %3626 = fadd fast float %3625, %2860
  br label %3627

; <label>:3627                                    ; preds = %3613, %3611, %3577, %3559, %3534, %3043, %2862, %2848
  %3628 = phi float [ %2849, %3534 ], [ %2849, %3043 ], [ %2849, %2848 ], [ %2849, %2862 ], [ %3564, %3559 ], [ %3580, %3577 ], [ %2849, %3611 ], [ %3616, %3613 ]
  %3629 = phi float [ %2850, %3534 ], [ %2850, %3043 ], [ %2850, %2848 ], [ %2850, %2862 ], [ %3565, %3559 ], [ %3581, %3577 ], [ %2850, %3611 ], [ %3617, %3613 ]
  %3630 = phi float [ %3535, %3534 ], [ %2851, %3043 ], [ %2851, %2848 ], [ %2851, %2862 ], [ %3535, %3559 ], [ %3535, %3577 ], [ %3535, %3611 ], [ %3535, %3613 ]
  %3631 = phi float [ %3536, %3534 ], [ %2852, %3043 ], [ %2852, %2848 ], [ %2852, %2862 ], [ %3536, %3559 ], [ %3536, %3577 ], [ %3536, %3611 ], [ %3536, %3613 ]
  %3632 = phi float [ %3537, %3534 ], [ %2853, %3043 ], [ %2853, %2848 ], [ %2853, %2862 ], [ %3537, %3559 ], [ %3537, %3577 ], [ %3537, %3611 ], [ %3537, %3613 ]
  %3633 = phi float [ %3538, %3534 ], [ %2854, %3043 ], [ %2854, %2848 ], [ %2854, %2862 ], [ %3538, %3559 ], [ %3538, %3577 ], [ %3538, %3611 ], [ %3538, %3613 ]
  %3634 = phi float [ %3539, %3534 ], [ %2855, %3043 ], [ %2855, %2848 ], [ %2855, %2862 ], [ %3539, %3559 ], [ %3539, %3577 ], [ %3539, %3611 ], [ %3539, %3613 ]
  %3635 = phi float [ %3540, %3534 ], [ %2856, %3043 ], [ %2856, %2848 ], [ %2856, %2862 ], [ %3540, %3559 ], [ %3540, %3577 ], [ %3540, %3611 ], [ %3540, %3613 ]
  %3636 = phi float [ %3541, %3534 ], [ %2857, %3043 ], [ %2857, %2848 ], [ %2857, %2862 ], [ %3541, %3559 ], [ %3541, %3577 ], [ %3541, %3611 ], [ %3541, %3613 ]
  %3637 = phi float [ %2858, %3534 ], [ %2858, %3043 ], [ %2858, %2848 ], [ %2858, %2862 ], [ %3571, %3559 ], [ %3608, %3577 ], [ %2858, %3611 ], [ %3624, %3613 ]
  %3638 = phi float [ %2859, %3534 ], [ %2859, %3043 ], [ %2859, %2848 ], [ %2859, %2862 ], [ %3568, %3559 ], [ %3585, %3577 ], [ %2859, %3611 ], [ %3621, %3613 ]
  %3639 = phi float [ %2860, %3534 ], [ %2860, %3043 ], [ %2860, %2848 ], [ %2860, %2862 ], [ %3574, %3559 ], [ %3610, %3577 ], [ %2860, %3611 ], [ %3626, %3613 ]
  %3640 = phi float [ %3542, %3534 ], [ %2861, %3043 ], [ %2861, %2848 ], [ %2861, %2862 ], [ %3542, %3559 ], [ %3542, %3577 ], [ %3542, %3611 ], [ %3542, %3613 ]
  %3641 = add i32 %62, 360
  %3642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3641, i32 undef)  ; BufferLoad(srv,index,wot)
  %3643 = extractvalue %dx.types.ResRet.i32 %3642, 0
  %3644 = extractvalue %dx.types.ResRet.i32 %3642, 1
  %3645 = bitcast i32 %3643 to float
  %3646 = bitcast i32 %3644 to float
  %3647 = fcmp fast oge float %3645, 0.000000e+00
  %3648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3649 = extractvalue %dx.types.CBufRet.f32 %3648, 0
  %3650 = select i1 %3647, float %3645, float %3649
  %3651 = fadd fast float %3650, %221
  %3652 = fmul fast float %3646, %222
  %3653 = add i32 %62, 488
  %3654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3653, i32 undef)  ; BufferLoad(srv,index,wot)
  %3655 = extractvalue %dx.types.ResRet.i32 %3654, 0
  %3656 = add i32 %3655, 0
  %3657 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3656, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3658 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3657, %dx.types.Handle %117, float %98, float %99, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3659 = extractvalue %dx.types.ResRet.f32 %3658, 0
  %3660 = fmul fast float %3652, %3659
  %3661 = fadd fast float %3651, %3660
  %3662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3663 = extractvalue %dx.types.CBufRet.f32 %3662, 0
  %3664 = and i32 %213, 65535
  %3665 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3664)  ; LegacyF16ToF32(value)
  %3666 = lshr i32 %213, 16
  %3667 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3666)  ; LegacyF16ToF32(value)
  %3668 = and i32 %214, 65535
  %3669 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3668)  ; LegacyF16ToF32(value)
  %3670 = fmul fast float %3665, %3630
  %3671 = fmul fast float %3667, %3631
  %3672 = fmul fast float %3669, %3632
  %3673 = shl i32 %215, 4
  %3674 = and i32 %3673, 32752
  %3675 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3674)  ; LegacyF16ToF32(value)
  %3676 = lshr i32 %215, 7
  %3677 = and i32 %3676, 32752
  %3678 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3677)  ; LegacyF16ToF32(value)
  %3679 = lshr i32 %215, 22
  %3680 = shl nuw nsw i32 %3679, 5
  %3681 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3680)  ; LegacyF16ToF32(value)
  %3682 = and i32 %216, 65535
  %3683 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3682)  ; LegacyF16ToF32(value)
  %3684 = fmul fast float %3663, %3633
  %3685 = fmul fast float %3684, %3675
  %3686 = fmul fast float %3685, %3683
  %3687 = fmul fast float %3663, %3634
  %3688 = fmul fast float %3687, %3678
  %3689 = fmul fast float %3688, %3683
  %3690 = fmul fast float %3663, %3635
  %3691 = fmul fast float %3690, %3681
  %3692 = fmul fast float %3691, %3683
  %3693 = call float @dx.op.dot2.f32(i32 54, float %3628, float %3629, float %3628, float %3629)  ; Dot2(ax,ay,bx,by)
  %3694 = fmul fast float %3693, 0x3FE3333340000000
  %3695 = fsub fast float 1.000000e+00, %3694
  %3696 = call float @dx.op.dot3.f32(i32 55, float %3628, float %3629, float %3695, float %3628, float %3629, float %3695)  ; Dot3(ax,ay,az,bx,by,bz)
  %3697 = call float @dx.op.unary.f32(i32 25, float %3696)  ; Rsqrt(value)
  %3698 = fmul fast float %3697, %3628
  %3699 = fmul fast float %3697, %3629
  %3700 = fmul fast float %3695, %3697
  %3701 = fmul fast float %3700, %127
  %3702 = fmul fast float %3700, %128
  %3703 = fmul fast float %3700, %129
  %3704 = fmul fast float %3698, %91
  %3705 = fmul fast float %3698, %92
  %3706 = fmul fast float %3698, %93
  %3707 = fadd fast float %3701, %3704
  %3708 = fadd fast float %3702, %3705
  %3709 = fadd fast float %3703, %3706
  %3710 = fmul fast float %139, %3699
  %3711 = fmul fast float %140, %3699
  %3712 = fmul fast float %141, %3699
  %3713 = fadd fast float %3707, %3710
  %3714 = fadd fast float %3708, %3711
  %3715 = fadd fast float %3709, %3712
  %3716 = call float @dx.op.dot3.f32(i32 55, float %3713, float %3714, float %3715, float %3713, float %3714, float %3715)  ; Dot3(ax,ay,az,bx,by,bz)
  %3717 = call float @dx.op.unary.f32(i32 25, float %3716)  ; Rsqrt(value)
  %3718 = fmul fast float %3713, %3717
  %3719 = fmul fast float %3714, %3717
  %3720 = fmul fast float %3715, %3717
  %3721 = icmp eq i32 %65, 65535
  br i1 %3721, label %4240, label %3722

; <label>:3722                                    ; preds = %3627
  %3723 = call float @dx.op.unary.f32(i32 83, float %66)  ; DerivCoarseX(value)
  %3724 = call float @dx.op.unary.f32(i32 83, float %67)  ; DerivCoarseX(value)
  %3725 = call float @dx.op.unary.f32(i32 83, float %68)  ; DerivCoarseX(value)
  %3726 = call float @dx.op.unary.f32(i32 84, float %66)  ; DerivCoarseY(value)
  %3727 = call float @dx.op.unary.f32(i32 84, float %67)  ; DerivCoarseY(value)
  %3728 = call float @dx.op.unary.f32(i32 84, float %68)  ; DerivCoarseY(value)
  %3729 = fadd fast float %3723, %66
  %3730 = fadd fast float %3724, %67
  %3731 = fadd fast float %3725, %68
  %3732 = fadd fast float %3726, %66
  %3733 = fadd fast float %3727, %67
  %3734 = fadd fast float %3728, %68
  %3735 = mul i32 %65, 48
  %3736 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3735, i32 undef)  ; BufferLoad(srv,index,wot)
  %3737 = extractvalue %dx.types.ResRet.f32 %3736, 0
  %3738 = extractvalue %dx.types.ResRet.f32 %3736, 1
  %3739 = extractvalue %dx.types.ResRet.f32 %3736, 2
  %3740 = add i32 %3735, 16
  %3741 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3740, i32 undef)  ; BufferLoad(srv,index,wot)
  %3742 = extractvalue %dx.types.ResRet.f32 %3741, 0
  %3743 = extractvalue %dx.types.ResRet.f32 %3741, 1
  %3744 = extractvalue %dx.types.ResRet.f32 %3741, 2
  %3745 = add i32 %3735, 32
  %3746 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3745, i32 undef)  ; BufferLoad(srv,index,wot)
  %3747 = extractvalue %dx.types.ResRet.f32 %3746, 0
  %3748 = extractvalue %dx.types.ResRet.f32 %3746, 1
  %3749 = extractvalue %dx.types.ResRet.f32 %3746, 2
  %3750 = extractvalue %dx.types.ResRet.f32 %3746, 3
  %3751 = bitcast float %3750 to i32
  %3752 = fmul fast float %3737, %66
  %3753 = fmul fast float %3738, %67
  %3754 = fmul fast float %3739, %68
  %3755 = fsub fast float %3752, %3742
  %3756 = fsub fast float %3753, %3743
  %3757 = fsub fast float %3754, %3744
  %3758 = call float @dx.op.unary.f32(i32 7, float %3755)  ; Saturate(value)
  %3759 = call float @dx.op.unary.f32(i32 7, float %3756)  ; Saturate(value)
  %3760 = call float @dx.op.unary.f32(i32 7, float %3757)  ; Saturate(value)
  %3761 = fmul fast float %3758, %3747
  %3762 = fmul fast float %3759, %3748
  %3763 = fmul fast float %3760, %3749
  %3764 = fadd fast float %3747, -1.000000e+00
  %3765 = fadd fast float %3748, -1.000000e+00
  %3766 = fadd fast float %3749, -1.000000e+00
  %3767 = call float @dx.op.unary.f32(i32 27, float %3761)  ; Round_ni(value)
  %3768 = call float @dx.op.unary.f32(i32 27, float %3762)  ; Round_ni(value)
  %3769 = call float @dx.op.unary.f32(i32 27, float %3763)  ; Round_ni(value)
  %3770 = call float @dx.op.binary.f32(i32 36, float %3767, float %3764)  ; FMin(a,b)
  %3771 = call float @dx.op.binary.f32(i32 36, float %3768, float %3765)  ; FMin(a,b)
  %3772 = call float @dx.op.binary.f32(i32 36, float %3769, float %3766)  ; FMin(a,b)
  %3773 = fmul fast float %3772, %3748
  %3774 = fadd fast float %3773, %3771
  %3775 = fmul fast float %3774, %3747
  %3776 = fadd fast float %3775, %3770
  %3777 = fptosi float %3776 to i32
  %3778 = add nsw i32 %3777, %3751
  %3779 = shl nsw i32 %3778, 2
  %3780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3779, i32 undef)  ; BufferLoad(srv,index,wot)
  %3781 = extractvalue %dx.types.ResRet.i32 %3780, 0
  %3782 = lshr i32 %3781, 16
  %3783 = icmp eq i32 %3782, 0
  br i1 %3783, label %4208, label %3784

; <label>:3784                                    ; preds = %3722
  br label %3785

; <label>:3785                                    ; preds = %3907, %3784
  %3786 = phi i32 [ %3809, %3907 ], [ %3782, %3784 ]
  %3787 = phi float [ %3908, %3907 ], [ 0.000000e+00, %3784 ]
  %3788 = phi float [ %3909, %3907 ], [ %1299, %3784 ]
  %3789 = phi float [ %3910, %3907 ], [ %3661, %3784 ]
  %3790 = phi float [ %3911, %3907 ], [ %3640, %3784 ]
  %3791 = phi float [ %3912, %3907 ], [ %3639, %3784 ]
  %3792 = phi float [ %3913, %3907 ], [ 0.000000e+00, %3784 ]
  %3793 = phi float [ %3914, %3907 ], [ %3686, %3784 ]
  %3794 = phi float [ %3915, %3907 ], [ %3689, %3784 ]
  %3795 = phi float [ %3916, %3907 ], [ %3692, %3784 ]
  %3796 = phi float [ %3917, %3907 ], [ %3718, %3784 ]
  %3797 = phi float [ %3918, %3907 ], [ %3719, %3784 ]
  %3798 = phi float [ %3919, %3907 ], [ %3720, %3784 ]
  %3799 = phi float [ %3920, %3907 ], [ %3638, %3784 ]
  %3800 = phi float [ %3921, %3907 ], [ %3637, %3784 ]
  %3801 = phi float [ %3922, %3907 ], [ 0.000000e+00, %3784 ]
  %3802 = phi float [ %3923, %3907 ], [ %3636, %3784 ]
  %3803 = phi float [ %3924, %3907 ], [ %3670, %3784 ]
  %3804 = phi float [ %3925, %3907 ], [ %3671, %3784 ]
  %3805 = phi float [ %3926, %3907 ], [ %3672, %3784 ]
  %3806 = shl nuw nsw i32 %3786, 2
  %3807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3806, i32 undef)  ; BufferLoad(srv,index,wot)
  %3808 = extractvalue %dx.types.ResRet.i32 %3807, 0
  %3809 = lshr i32 %3808, 16
  %3810 = shl i32 %3808, 8
  %3811 = and i32 %3810, 16776960
  %3812 = or i32 %3811, 48
  %3813 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3812, i32 undef)  ; BufferLoad(srv,index,wot)
  %3814 = extractvalue %dx.types.ResRet.f32 %3813, 0
  %3815 = extractvalue %dx.types.ResRet.f32 %3813, 1
  %3816 = extractvalue %dx.types.ResRet.f32 %3813, 2
  %3817 = or i32 %3811, 64
  %3818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3819 = extractvalue %dx.types.ResRet.i32 %3818, 0
  %3820 = extractvalue %dx.types.ResRet.i32 %3818, 1
  %3821 = or i32 %3811, 80
  %3822 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3821, i32 undef)  ; BufferLoad(srv,index,wot)
  %3823 = extractvalue %dx.types.ResRet.f32 %3822, 2
  %3824 = extractvalue %dx.types.ResRet.f32 %3822, 3
  %3825 = or i32 %3811, 96
  %3826 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3825, i32 undef)  ; BufferLoad(srv,index,wot)
  %3827 = extractvalue %dx.types.ResRet.f32 %3826, 0
  %3828 = extractvalue %dx.types.ResRet.f32 %3826, 1
  %3829 = extractvalue %dx.types.ResRet.f32 %3826, 2
  %3830 = extractvalue %dx.types.ResRet.f32 %3826, 3
  %3831 = or i32 %3811, 112
  %3832 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3831, i32 undef)  ; BufferLoad(srv,index,wot)
  %3833 = extractvalue %dx.types.ResRet.f32 %3832, 2
  %3834 = or i32 %3811, 128
  %3835 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3834, i32 undef)  ; BufferLoad(srv,index,wot)
  %3836 = extractvalue %dx.types.ResRet.f32 %3835, 0
  %3837 = extractvalue %dx.types.ResRet.f32 %3835, 1
  %3838 = extractvalue %dx.types.ResRet.f32 %3835, 2
  %3839 = extractvalue %dx.types.ResRet.f32 %3835, 3
  %3840 = or i32 %3811, 144
  %3841 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3842 = extractvalue %dx.types.ResRet.f32 %3841, 0
  %3843 = extractvalue %dx.types.ResRet.f32 %3841, 1
  %3844 = extractvalue %dx.types.ResRet.f32 %3841, 2
  %3845 = extractvalue %dx.types.ResRet.f32 %3841, 3
  %3846 = or i32 %3811, 160
  %3847 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3846, i32 undef)  ; BufferLoad(srv,index,wot)
  %3848 = extractvalue %dx.types.ResRet.f32 %3847, 0
  %3849 = extractvalue %dx.types.ResRet.f32 %3847, 1
  %3850 = extractvalue %dx.types.ResRet.f32 %3847, 2
  %3851 = extractvalue %dx.types.ResRet.f32 %3847, 3
  %3852 = or i32 %3811, 192
  %3853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3852, i32 undef)  ; BufferLoad(srv,index,wot)
  %3854 = extractvalue %dx.types.ResRet.i32 %3853, 0
  %3855 = or i32 %3811, 208
  %3856 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3855, i32 undef)  ; BufferLoad(srv,index,wot)
  %3857 = extractvalue %dx.types.ResRet.f32 %3856, 0
  %3858 = or i32 %3811, 248
  %3859 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3858, i32 undef)  ; BufferLoad(srv,index,wot)
  %3860 = extractvalue %dx.types.ResRet.f32 %3859, 0
  %3861 = extractvalue %dx.types.ResRet.f32 %3859, 1
  %3862 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3811, i32 undef)  ; BufferLoad(srv,index,wot)
  %3863 = extractvalue %dx.types.ResRet.f32 %3862, 0
  %3864 = extractvalue %dx.types.ResRet.f32 %3862, 1
  %3865 = extractvalue %dx.types.ResRet.f32 %3862, 2
  %3866 = extractvalue %dx.types.ResRet.f32 %3862, 3
  %3867 = call float @dx.op.dot4.f32(i32 56, float %3863, float %3864, float %3865, float %3866, float %66, float %67, float %68, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3868 = or i32 %3811, 16
  %3869 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3868, i32 undef)  ; BufferLoad(srv,index,wot)
  %3870 = extractvalue %dx.types.ResRet.f32 %3869, 0
  %3871 = extractvalue %dx.types.ResRet.f32 %3869, 1
  %3872 = extractvalue %dx.types.ResRet.f32 %3869, 2
  %3873 = extractvalue %dx.types.ResRet.f32 %3869, 3
  %3874 = call float @dx.op.dot4.f32(i32 56, float %3870, float %3871, float %3872, float %3873, float %66, float %67, float %68, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3875 = or i32 %3811, 32
  %3876 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3875, i32 undef)  ; BufferLoad(srv,index,wot)
  %3877 = extractvalue %dx.types.ResRet.f32 %3876, 0
  %3878 = extractvalue %dx.types.ResRet.f32 %3876, 1
  %3879 = extractvalue %dx.types.ResRet.f32 %3876, 2
  %3880 = extractvalue %dx.types.ResRet.f32 %3876, 3
  %3881 = call float @dx.op.dot4.f32(i32 56, float %3877, float %3878, float %3879, float %3880, float %66, float %67, float %68, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3882 = call float @dx.op.unary.f32(i32 27, float %3867)  ; Round_ni(value)
  %3883 = call float @dx.op.unary.f32(i32 6, float %3882)  ; FAbs(value)
  %3884 = call float @dx.op.unary.f32(i32 27, float %3874)  ; Round_ni(value)
  %3885 = call float @dx.op.unary.f32(i32 6, float %3884)  ; FAbs(value)
  %3886 = call float @dx.op.unary.f32(i32 6, float %3881)  ; FAbs(value)
  %3887 = call float @dx.op.unary.f32(i32 27, float %3886)  ; Round_ni(value)
  %3888 = fadd fast float %3885, %3883
  %3889 = fadd fast float %3888, %3887
  %3890 = fcmp fast oeq float %3889, 0.000000e+00
  %3891 = call float @dx.op.dot4.f32(i32 56, float %3863, float %3864, float %3865, float %3866, float %3729, float %3730, float %3731, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3892 = call float @dx.op.dot4.f32(i32 56, float %3870, float %3871, float %3872, float %3873, float %3729, float %3730, float %3731, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3893 = call float @dx.op.dot4.f32(i32 56, float %3863, float %3864, float %3865, float %3866, float %3732, float %3733, float %3734, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3894 = call float @dx.op.dot4.f32(i32 56, float %3870, float %3871, float %3872, float %3873, float %3732, float %3733, float %3734, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3895 = fsub fast float %3891, %3867
  %3896 = fsub fast float %3893, %3867
  %3897 = fsub fast float %3892, %3874
  %3898 = fsub fast float %3894, %3874
  %3899 = call float @dx.op.dot3.f32(i32 55, float %3814, float %3815, float %3816, float %127, float %128, float %129)  ; Dot3(ax,ay,az,bx,by,bz)
  %3900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3901 = extractvalue %dx.types.CBufRet.f32 %3900, 2
  %3902 = fadd fast float %3901, %3899
  %3903 = call float @dx.op.unary.f32(i32 7, float %3902)  ; Saturate(value)
  %3904 = extractvalue %dx.types.CBufRet.f32 %3900, 0
  %3905 = fcmp fast ogt float %3903, %3904
  %3906 = and i1 %3890, %3905
  br i1 %3906, label %3928, label %3907

; <label>:3907                                    ; preds = %4194, %4011, %3928, %3785
  %3908 = phi float [ %3787, %3928 ], [ %4014, %4011 ], [ %4014, %4194 ], [ %3787, %3785 ]
  %3909 = phi float [ %3788, %3928 ], [ %3788, %4011 ], [ %4169, %4194 ], [ %3788, %3785 ]
  %3910 = phi float [ %3789, %3928 ], [ %3789, %4011 ], [ %4168, %4194 ], [ %3789, %3785 ]
  %3911 = phi float [ %3790, %3928 ], [ %3790, %4011 ], [ %4166, %4194 ], [ %3790, %3785 ]
  %3912 = phi float [ %3791, %3928 ], [ %3791, %4011 ], [ %4138, %4194 ], [ %3791, %3785 ]
  %3913 = phi float [ %3792, %3928 ], [ %3792, %4011 ], [ %4136, %4194 ], [ %3792, %3785 ]
  %3914 = phi float [ %3793, %3928 ], [ %3793, %4011 ], [ %4204, %4194 ], [ %3793, %3785 ]
  %3915 = phi float [ %3794, %3928 ], [ %3794, %4011 ], [ %4205, %4194 ], [ %3794, %3785 ]
  %3916 = phi float [ %3795, %3928 ], [ %3795, %4011 ], [ %4206, %4194 ], [ %3795, %3785 ]
  %3917 = phi float [ %3796, %3928 ], [ %3796, %4011 ], [ %4117, %4194 ], [ %3796, %3785 ]
  %3918 = phi float [ %3797, %3928 ], [ %3797, %4011 ], [ %4118, %4194 ], [ %3797, %3785 ]
  %3919 = phi float [ %3798, %3928 ], [ %3798, %4011 ], [ %4119, %4194 ], [ %3798, %3785 ]
  %3920 = phi float [ %3799, %3928 ], [ %3799, %4011 ], [ %4146, %4194 ], [ %3799, %3785 ]
  %3921 = phi float [ %3800, %3928 ], [ %3800, %4011 ], [ %4143, %4194 ], [ %3800, %3785 ]
  %3922 = phi float [ %3801, %3928 ], [ %3801, %4011 ], [ %4140, %4194 ], [ %3801, %3785 ]
  %3923 = phi float [ %3802, %3928 ], [ %3802, %4011 ], [ %4134, %4194 ], [ %3802, %3785 ]
  %3924 = phi float [ %3803, %3928 ], [ %3803, %4011 ], [ %4129, %4194 ], [ %3803, %3785 ]
  %3925 = phi float [ %3804, %3928 ], [ %3804, %4011 ], [ %4130, %4194 ], [ %3804, %3785 ]
  %3926 = phi float [ %3805, %3928 ], [ %3805, %4011 ], [ %4131, %4194 ], [ %3805, %3785 ]
  %3927 = icmp eq i32 %3809, 0
  br i1 %3927, label %4207, label %3785

; <label>:3928                                    ; preds = %3785
  %3929 = extractvalue %dx.types.ResRet.f32 %3813, 3
  %3930 = extractvalue %dx.types.ResRet.f32 %3832, 3
  %3931 = extractvalue %dx.types.ResRet.f32 %3832, 1
  %3932 = extractvalue %dx.types.ResRet.f32 %3832, 0
  %3933 = extractvalue %dx.types.ResRet.f32 %3822, 1
  %3934 = extractvalue %dx.types.ResRet.f32 %3822, 0
  %3935 = extractvalue %dx.types.ResRet.i32 %3818, 3
  %3936 = extractvalue %dx.types.ResRet.i32 %3818, 2
  %3937 = bitcast float %3929 to i32
  %3938 = add i32 %3935, 0
  %3939 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3938, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3940 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3941 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3939, %dx.types.Handle %3940, float %3867, float %3874, float undef, float undef, i32 0, i32 0, i32 undef, float %3895, float %3897, float undef, float %3896, float %3898, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3942 = extractvalue %dx.types.ResRet.f32 %3941, 0
  %3943 = fmul fast float %3942, %3934
  %3944 = fadd fast float %3943, %3933
  %3945 = call float @dx.op.unary.f32(i32 7, float %3944)  ; Saturate(value)
  %3946 = fmul fast float %3867, %3827
  %3947 = call float @dx.op.tertiary.f32(i32 46, float %3828, float %3874, float %3946)  ; FMad(a,b,c)
  %3948 = fadd fast float %3947, %3932
  %3949 = fmul fast float %3867, %3829
  %3950 = call float @dx.op.tertiary.f32(i32 46, float %3830, float %3874, float %3949)  ; FMad(a,b,c)
  %3951 = fadd fast float %3950, %3931
  %3952 = fmul fast float %3895, %3827
  %3953 = call float @dx.op.tertiary.f32(i32 46, float %3828, float %3897, float %3952)  ; FMad(a,b,c)
  %3954 = fmul fast float %3895, %3829
  %3955 = call float @dx.op.tertiary.f32(i32 46, float %3830, float %3897, float %3954)  ; FMad(a,b,c)
  %3956 = fmul fast float %3896, %3827
  %3957 = call float @dx.op.tertiary.f32(i32 46, float %3828, float %3898, float %3956)  ; FMad(a,b,c)
  %3958 = fmul fast float %3896, %3829
  %3959 = call float @dx.op.tertiary.f32(i32 46, float %3830, float %3898, float %3958)  ; FMad(a,b,c)
  %3960 = add i32 %3936, 0
  %3961 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3960, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3962 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3961, %dx.types.Handle %3940, float %3948, float %3951, float undef, float undef, i32 0, i32 0, i32 undef, float %3953, float %3955, float undef, float %3957, float %3959, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3963 = extractvalue %dx.types.ResRet.f32 %3962, 0
  %3964 = and i32 %3937, 1024
  %3965 = icmp ne i32 %3964, 0
  %3966 = fcmp fast ogt float %3963, 0x3FE0101020000000
  %3967 = uitofp i1 %3966 to float
  %3968 = select i1 %3965, float %3967, float %3963
  %3969 = and i32 %3937, 8192
  %3970 = icmp ne i32 %3969, 0
  %3971 = select i1 %3970, float %3930, float 1.000000e+00
  %3972 = fmul fast float %3867, 2.000000e+00
  %3973 = fadd fast float %3972, -1.000000e+00
  %3974 = call float @dx.op.unary.f32(i32 6, float %3973)  ; FAbs(value)
  %3975 = fmul fast float %3974, %3860
  %3976 = fsub fast float %3975, %3860
  %3977 = call float @dx.op.unary.f32(i32 7, float %3976)  ; Saturate(value)
  %3978 = fmul fast float %3874, 2.000000e+00
  %3979 = fadd fast float %3978, -1.000000e+00
  %3980 = call float @dx.op.unary.f32(i32 6, float %3979)  ; FAbs(value)
  %3981 = fmul fast float %3980, %3861
  %3982 = fsub fast float %3981, %3861
  %3983 = call float @dx.op.unary.f32(i32 7, float %3982)  ; Saturate(value)
  %3984 = fmul fast float %3886, %3823
  %3985 = fsub fast float %3984, %3823
  %3986 = call float @dx.op.unary.f32(i32 7, float %3985)  ; Saturate(value)
  %3987 = fmul fast float %3945, %3971
  %3988 = fmul fast float %3987, %3942
  %3989 = fmul fast float %3988, %3977
  %3990 = fmul fast float %3989, %3968
  %3991 = fmul fast float %3990, %3983
  %3992 = fmul fast float %3991, %3986
  %3993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3994 = extractvalue %dx.types.CBufRet.f32 %3993, 1
  %3995 = extractvalue %dx.types.CBufRet.f32 %3993, 0
  %3996 = fsub fast float %3903, %3995
  %3997 = fmul fast float %3996, %3994
  %3998 = call float @dx.op.unary.f32(i32 7, float %3997)  ; Saturate(value)
  %3999 = fmul fast float %3992, %3824
  %4000 = fadd fast float %3992, %3824
  %4001 = fmul fast float %4000, %3833
  %4002 = fsub fast float %4001, %3833
  %4003 = call float @dx.op.unary.f32(i32 7, float %4002)  ; Saturate(value)
  %4004 = and i32 %3937, 128
  %4005 = icmp ne i32 %4004, 0
  %4006 = select i1 %4005, float %4003, float %3999
  %4007 = fmul fast float %4006, %3998
  %4008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4009 = extractvalue %dx.types.CBufRet.f32 %4008, 0
  %4010 = fcmp fast ugt float %4007, %4009
  br i1 %4010, label %4011, label %3907

; <label>:4011                                    ; preds = %3928
  %4012 = select i1 %3970, float %4007, float 0.000000e+00
  %4013 = fadd fast float %4012, %3787
  %4014 = call float @dx.op.unary.f32(i32 7, float %4013)  ; Saturate(value)
  br i1 %3970, label %3907, label %4015

; <label>:4015                                    ; preds = %4011
  %4016 = and i32 %3937, 4
  %4017 = and i32 %3937, 8
  %4018 = add i32 %3819, 0
  %4019 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4018, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4020 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4021 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4019, %dx.types.Handle %4020, float %3948, float %3951, float undef, float undef, i32 0, i32 0, i32 undef, float %3953, float %3955, float undef, float %3957, float %3959, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4022 = extractvalue %dx.types.ResRet.f32 %4021, 0
  %4023 = extractvalue %dx.types.ResRet.f32 %4021, 1
  %4024 = extractvalue %dx.types.ResRet.f32 %4021, 2
  %4025 = extractvalue %dx.types.ResRet.f32 %4021, 3
  %4026 = bitcast float %3845 to i32
  %4027 = and i32 %4026, 255
  %4028 = uitofp i32 %4027 to float
  %4029 = lshr i32 %4026, 8
  %4030 = and i32 %4029, 255
  %4031 = uitofp i32 %4030 to float
  %4032 = fmul fast float %4025, %4028
  %4033 = fadd fast float %4032, %4031
  %4034 = fmul fast float %4033, 0x3F70101000000000
  %4035 = add i32 %3820, 0
  %4036 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4035, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4037 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4036, %dx.types.Handle %4020, float %3948, float %3951, float undef, float undef, i32 0, i32 0, i32 undef, float %3953, float %3955, float undef, float %3957, float %3959, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4038 = extractvalue %dx.types.ResRet.f32 %4037, 0
  %4039 = extractvalue %dx.types.ResRet.f32 %4037, 1
  %4040 = extractvalue %dx.types.ResRet.f32 %4037, 2
  %4041 = extractvalue %dx.types.ResRet.f32 %4037, 3
  %4042 = bitcast float %3839 to i32
  %4043 = and i32 %4042, 255
  %4044 = uitofp i32 %4043 to float
  %4045 = lshr i32 %4042, 8
  %4046 = and i32 %4045, 255
  %4047 = uitofp i32 %4046 to float
  %4048 = lshr i32 %4042, 16
  %4049 = and i32 %4048, 255
  %4050 = uitofp i32 %4049 to float
  %4051 = fmul fast float %4050, 0x3F70101000000000
  %4052 = fmul fast float %4038, %4044
  %4053 = fadd fast float %4052, %4047
  %4054 = fmul fast float %4053, 0x3F70101000000000
  %4055 = fadd fast float %4039, -5.000000e-01
  %4056 = fadd fast float %4041, -5.000000e-01
  %4057 = fmul fast float %4055, %4051
  %4058 = fmul fast float %4056, %4051
  %4059 = fadd fast float %4057, 5.000000e-01
  %4060 = fadd fast float %4058, 5.000000e-01
  %4061 = fmul fast float %4022, %3848
  %4062 = fmul fast float %4023, %3849
  %4063 = fmul fast float %4024, %3850
  %4064 = fmul fast float %4059, 2.000000e+00
  %4065 = fadd fast float %4064, -1.000000e+00
  %4066 = fmul fast float %4060, 2.000000e+00
  %4067 = fadd fast float %4066, -1.000000e+00
  %4068 = fadd fast float %4065, %4067
  %4069 = fmul fast float %4068, 5.000000e-01
  %4070 = fsub fast float %4065, %4067
  %4071 = fmul fast float %4070, 5.000000e-01
  %4072 = call float @dx.op.unary.f32(i32 6, float %4069)  ; FAbs(value)
  %4073 = fsub fast float 1.000000e+00, %4072
  %4074 = call float @dx.op.unary.f32(i32 6, float %4071)  ; FAbs(value)
  %4075 = fsub fast float %4073, %4074
  %4076 = call float @dx.op.dot3.f32(i32 55, float %4069, float %4071, float %4075, float %4069, float %4071, float %4075)  ; Dot3(ax,ay,az,bx,by,bz)
  %4077 = call float @dx.op.unary.f32(i32 25, float %4076)  ; Rsqrt(value)
  %4078 = fmul fast float %4069, %4077
  %4079 = fmul fast float %4071, %4077
  %4080 = fmul fast float %4077, %4075
  %4081 = fmul fast float %4080, %3814
  %4082 = fmul fast float %4080, %3815
  %4083 = fmul fast float %4080, %3816
  %4084 = fmul fast float %4078, %3836
  %4085 = fmul fast float %4078, %3837
  %4086 = fmul fast float %4078, %3838
  %4087 = fadd fast float %4084, %4081
  %4088 = fadd fast float %4085, %4082
  %4089 = fadd fast float %4086, %4083
  %4090 = fmul fast float %4079, %3842
  %4091 = fmul fast float %4079, %3843
  %4092 = fmul fast float %4079, %3844
  %4093 = fadd fast float %4087, %4090
  %4094 = fadd fast float %4088, %4091
  %4095 = fadd fast float %4089, %4092
  %4096 = call float @dx.op.dot3.f32(i32 55, float %4093, float %4094, float %4095, float %4093, float %4094, float %4095)  ; Dot3(ax,ay,az,bx,by,bz)
  %4097 = call float @dx.op.unary.f32(i32 25, float %4096)  ; Rsqrt(value)
  %4098 = fmul fast float %4093, %4097
  %4099 = fmul fast float %4094, %4097
  %4100 = fmul fast float %4095, %4097
  %4101 = icmp ne i32 %4017, 0
  %4102 = select i1 %4101, float 1.000000e+00, float 0.000000e+00
  %4103 = fmul fast float %4007, %4102
  %4104 = and i32 %3937, 1
  %4105 = icmp eq i32 %4104, 0
  br i1 %4105, label %4106, label %4110

; <label>:4106                                    ; preds = %4015
  %4107 = fsub fast float %4098, %3796
  %4108 = fsub fast float %4099, %3797
  %4109 = fsub fast float %4100, %3798
  br label %4110

; <label>:4110                                    ; preds = %4106, %4015
  %4111 = phi float [ %4107, %4106 ], [ %4098, %4015 ]
  %4112 = phi float [ %4108, %4106 ], [ %4099, %4015 ]
  %4113 = phi float [ %4109, %4106 ], [ %4100, %4015 ]
  %4114 = fmul float %4113, %4103
  %4115 = fmul float %4112, %4103
  %4116 = fmul float %4111, %4103
  %4117 = fadd fast float %4116, %3796
  %4118 = fadd fast float %4115, %3797
  %4119 = fadd fast float %4114, %3798
  %4120 = icmp ne i32 %4016, 0
  %4121 = select i1 %4120, float 1.000000e+00, float 0.000000e+00
  %4122 = fmul fast float %4007, %4121
  %4123 = fsub fast float %4061, %3803
  %4124 = fsub fast float %4062, %3804
  %4125 = fsub fast float %4063, %3805
  %4126 = fmul fast float %4123, %4122
  %4127 = fmul fast float %4124, %4122
  %4128 = fmul fast float %4125, %4122
  %4129 = fadd fast float %4126, %3803
  %4130 = fadd fast float %4127, %3804
  %4131 = fadd fast float %4128, %3805
  %4132 = fsub fast float %4034, %3802
  %4133 = fmul fast float %4132, %4122
  %4134 = fadd fast float %4133, %3802
  %4135 = fmul fast float %4122, %3792
  %4136 = fsub fast float %3792, %4135
  %4137 = fmul fast float %4122, %3791
  %4138 = fsub fast float %3791, %4137
  %4139 = fadd fast float %4007, %3801
  %4140 = call float @dx.op.unary.f32(i32 7, float %4139)  ; Saturate(value)
  %4141 = fsub fast float %4054, %3800
  %4142 = fmul fast float %4141, %4103
  %4143 = fadd fast float %4142, %3800
  %4144 = fsub fast float %4040, %3799
  %4145 = fmul fast float %4144, %4103
  %4146 = fadd fast float %4145, %3799
  %4147 = call float @dx.op.dot3.f32(i32 55, float %4061, float %4062, float %4063, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4149 = extractvalue %dx.types.CBufRet.f32 %4148, 0
  %4150 = extractvalue %dx.types.CBufRet.f32 %4148, 1
  %4151 = fmul fast float %4150, %4147
  %4152 = fadd fast float %4151, %4149
  %4153 = call float @dx.op.unary.f32(i32 7, float %4152)  ; Saturate(value)
  %4154 = bitcast float %3851 to i32
  %4155 = and i32 %4154, 65535
  %4156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4155)  ; LegacyF16ToF32(value)
  %4157 = lshr i32 %4154, 16
  %4158 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4157)  ; LegacyF16ToF32(value)
  %4159 = fcmp fast oge float %4156, 0.000000e+00
  %4160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4161 = extractvalue %dx.types.CBufRet.f32 %4160, 0
  %4162 = select i1 %4159, float %4156, float %4161
  %4163 = fadd fast float %4162, %4158
  %4164 = fsub fast float %4153, %3790
  %4165 = fmul fast float %4164, %4007
  %4166 = fadd fast float %4165, %3790
  %4167 = fmul fast float %4163, %4007
  %4168 = call float @dx.op.binary.f32(i32 35, float %3789, float %4167)  ; FMax(a,b)
  %4169 = call float @dx.op.binary.f32(i32 35, float %3788, float %4007)  ; FMax(a,b)
  %4170 = and i32 %3937, 16
  %4171 = icmp eq i32 %4170, 0
  br i1 %4171, label %4194, label %4172

; <label>:4172                                    ; preds = %4110
  %4173 = bitcast float %3857 to i32
  %4174 = add i32 %3854, 0
  %4175 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4174, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4176 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4175, %dx.types.Handle %4020, float %3948, float %3951, float undef, float undef, i32 0, i32 0, i32 undef, float %3953, float %3955, float undef, float %3957, float %3959, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4177 = extractvalue %dx.types.ResRet.f32 %4176, 0
  %4178 = extractvalue %dx.types.ResRet.f32 %4176, 1
  %4179 = extractvalue %dx.types.ResRet.f32 %4176, 2
  %4180 = and i32 %4173, 65535
  %4181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4180)  ; LegacyF16ToF32(value)
  %4182 = fmul fast float %4177, %3848
  %4183 = fmul fast float %4178, %3849
  %4184 = fmul fast float %4179, %3850
  %4185 = and i32 %3937, 16384
  %4186 = icmp ne i32 %4185, 0
  %4187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4188 = extractvalue %dx.types.CBufRet.f32 %4187, 0
  %4189 = select i1 %4186, float %4188, float 1.000000e+00
  %4190 = fmul fast float %4189, %4181
  %4191 = fmul fast float %4182, %4190
  %4192 = fmul fast float %4183, %4190
  %4193 = fmul fast float %4184, %4190
  br label %4194

; <label>:4194                                    ; preds = %4172, %4110
  %4195 = phi float [ %4191, %4172 ], [ 0.000000e+00, %4110 ]
  %4196 = phi float [ %4192, %4172 ], [ 0.000000e+00, %4110 ]
  %4197 = phi float [ %4193, %4172 ], [ 0.000000e+00, %4110 ]
  %4198 = fsub fast float %4195, %3793
  %4199 = fsub fast float %4196, %3794
  %4200 = fsub fast float %4197, %3795
  %4201 = fmul fast float %4198, %4007
  %4202 = fmul fast float %4199, %4007
  %4203 = fmul fast float %4200, %4007
  %4204 = fadd fast float %4201, %3793
  %4205 = fadd fast float %4202, %3794
  %4206 = fadd fast float %4203, %3795
  br label %3907

; <label>:4207                                    ; preds = %3907
  br label %4208

; <label>:4208                                    ; preds = %4207, %3722
  %4209 = phi float [ 0.000000e+00, %3722 ], [ %3908, %4207 ]
  %4210 = phi float [ %1299, %3722 ], [ %3909, %4207 ]
  %4211 = phi float [ %3661, %3722 ], [ %3910, %4207 ]
  %4212 = phi float [ %3640, %3722 ], [ %3911, %4207 ]
  %4213 = phi float [ %3639, %3722 ], [ %3912, %4207 ]
  %4214 = phi float [ 0.000000e+00, %3722 ], [ %3913, %4207 ]
  %4215 = phi float [ %3686, %3722 ], [ %3914, %4207 ]
  %4216 = phi float [ %3689, %3722 ], [ %3915, %4207 ]
  %4217 = phi float [ %3692, %3722 ], [ %3916, %4207 ]
  %4218 = phi float [ %3718, %3722 ], [ %3917, %4207 ]
  %4219 = phi float [ %3719, %3722 ], [ %3918, %4207 ]
  %4220 = phi float [ %3720, %3722 ], [ %3919, %4207 ]
  %4221 = phi float [ %3638, %3722 ], [ %3920, %4207 ]
  %4222 = phi float [ %3637, %3722 ], [ %3921, %4207 ]
  %4223 = phi float [ 0.000000e+00, %3722 ], [ %3922, %4207 ]
  %4224 = phi float [ %3636, %3722 ], [ %3923, %4207 ]
  %4225 = phi float [ %3670, %3722 ], [ %3924, %4207 ]
  %4226 = phi float [ %3671, %3722 ], [ %3925, %4207 ]
  %4227 = phi float [ %3672, %3722 ], [ %3926, %4207 ]
  %4228 = call float @dx.op.dot3.f32(i32 55, float %4218, float %4219, float %4220, float %4218, float %4219, float %4220)  ; Dot3(ax,ay,az,bx,by,bz)
  %4229 = call float @dx.op.unary.f32(i32 25, float %4228)  ; Rsqrt(value)
  %4230 = fmul fast float %4229, %4218
  %4231 = fmul fast float %4229, %4219
  %4232 = fmul fast float %4229, %4220
  %4233 = fadd fast float %4223, %1299
  %4234 = call float @dx.op.unary.f32(i32 7, float %4233)  ; Saturate(value)
  %4235 = call float @dx.op.dot3.f32(i32 55, float %4230, float %4231, float %4232, float %4230, float %4231, float %4232)  ; Dot3(ax,ay,az,bx,by,bz)
  %4236 = call float @dx.op.unary.f32(i32 25, float %4235)  ; Rsqrt(value)
  %4237 = fmul fast float %4236, %4230
  %4238 = fmul fast float %4236, %4231
  %4239 = fmul fast float %4236, %4232
  br label %4240

; <label>:4240                                    ; preds = %4208, %3627
  %4241 = phi float [ %4237, %4208 ], [ %3718, %3627 ]
  %4242 = phi float [ %4238, %4208 ], [ %3719, %3627 ]
  %4243 = phi float [ %4239, %4208 ], [ %3720, %3627 ]
  %4244 = phi float [ %4225, %4208 ], [ %3670, %3627 ]
  %4245 = phi float [ %4226, %4208 ], [ %3671, %3627 ]
  %4246 = phi float [ %4227, %4208 ], [ %3672, %3627 ]
  %4247 = phi float [ %4215, %4208 ], [ %3686, %3627 ]
  %4248 = phi float [ %4216, %4208 ], [ %3689, %3627 ]
  %4249 = phi float [ %4217, %4208 ], [ %3692, %3627 ]
  %4250 = phi float [ %4224, %4208 ], [ %3636, %3627 ]
  %4251 = phi float [ %4234, %4208 ], [ %1299, %3627 ]
  %4252 = phi float [ %4222, %4208 ], [ %3637, %3627 ]
  %4253 = phi float [ %4221, %4208 ], [ %3638, %3627 ]
  %4254 = phi float [ %4214, %4208 ], [ 0.000000e+00, %3627 ]
  %4255 = phi float [ %4213, %4208 ], [ %3639, %3627 ]
  %4256 = phi float [ %4209, %4208 ], [ 0.000000e+00, %3627 ]
  %4257 = phi float [ %4211, %4208 ], [ %3661, %3627 ]
  %4258 = phi float [ %4210, %4208 ], [ %1299, %3627 ]
  %4259 = phi float [ %4212, %4208 ], [ %3640, %3627 ]
  %4260 = fadd fast float %4250, 0xBFB99999A0000000
  %4261 = call float @dx.op.unary.f32(i32 7, float %4260)  ; Saturate(value)
  %4262 = fmul fast float %4261, 0x3FF1C71C80000000
  %4263 = call float @dx.op.binary.f32(i32 36, float %4250, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4264 = fsub fast float 1.000000e+00, %4262
  %4265 = call float @dx.op.unary.f32(i32 7, float %4264)  ; Saturate(value)
  %4266 = fmul fast float %4265, %4244
  %4267 = fmul fast float %4265, %4245
  %4268 = fmul fast float %4265, %4246
  %4269 = call float @dx.op.unary.f32(i32 7, float %4266)  ; Saturate(value)
  %4270 = call float @dx.op.unary.f32(i32 7, float %4267)  ; Saturate(value)
  %4271 = call float @dx.op.unary.f32(i32 7, float %4268)  ; Saturate(value)
  %4272 = fmul fast float %4262, %4244
  %4273 = fmul fast float %4262, %4245
  %4274 = fmul fast float %4262, %4246
  %4275 = fadd fast float %4272, %4263
  %4276 = fadd fast float %4273, %4263
  %4277 = fadd fast float %4274, %4263
  %4278 = call float @dx.op.unary.f32(i32 7, float %4275)  ; Saturate(value)
  %4279 = call float @dx.op.unary.f32(i32 7, float %4276)  ; Saturate(value)
  %4280 = call float @dx.op.unary.f32(i32 7, float %4277)  ; Saturate(value)
  %4281 = call float @dx.op.unary.f32(i32 7, float %4252)  ; Saturate(value)
  %4282 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4283 = extractvalue %dx.types.CBufRet.i32 %4282, 3
  %4284 = and i32 %4283, 8
  %4285 = icmp ne i32 %4284, 0
  %4286 = call float @dx.op.binary.f32(i32 35, float %4269, float %4244)  ; FMax(a,b)
  %4287 = call float @dx.op.binary.f32(i32 35, float %4270, float %4244)  ; FMax(a,b)
  %4288 = call float @dx.op.binary.f32(i32 35, float %4271, float %4244)  ; FMax(a,b)
  %4289 = call float @dx.op.dot3.f32(i32 55, float %4269, float %4270, float %4271, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4290 = select i1 %279, float %4244, float %4269
  %4291 = select i1 %279, float %4289, float %4270
  %4292 = select i1 %279, float 1.000000e+00, float %4271
  %4293 = select i1 %4285, float %4286, float %4290
  %4294 = select i1 %4285, float %4287, float %4291
  %4295 = select i1 %4285, float %4288, float %4292
  %4296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4297 = extractvalue %dx.types.CBufRet.f32 %4296, 0
  %4298 = extractvalue %dx.types.CBufRet.f32 %4296, 1
  %4299 = extractvalue %dx.types.CBufRet.f32 %4296, 2
  %4300 = fadd fast float %4297, %207
  %4301 = fadd fast float %4298, %208
  %4302 = fadd fast float %4299, %209
  %4303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4304 = extractvalue %dx.types.CBufRet.f32 %4303, 0
  %4305 = extractvalue %dx.types.CBufRet.f32 %4303, 1
  %4306 = fsub fast float %4300, %4304
  %4307 = fsub fast float %4301, %4305
  %4308 = fmul fast float %4306, %4306
  %4309 = fmul fast float %4307, %4307
  %4310 = fadd fast float %4308, %4309
  %4311 = call float @dx.op.unary.f32(i32 24, float %4310)  ; Sqrt(value)
  %4312 = extractvalue %dx.types.CBufRet.f32 %4303, 2
  %4313 = fcmp fast olt float %4311, %4312
  br i1 %4313, label %4314, label %4381

; <label>:4314                                    ; preds = %4240
  %4315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4316 = extractvalue %dx.types.CBufRet.f32 %4315, 0
  %4317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4318 = extractvalue %dx.types.CBufRet.f32 %4317, 0
  %4319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4320 = extractvalue %dx.types.CBufRet.f32 %4319, 0
  %4321 = extractvalue %dx.types.CBufRet.f32 %4315, 1
  %4322 = extractvalue %dx.types.CBufRet.f32 %4317, 1
  %4323 = extractvalue %dx.types.CBufRet.f32 %4319, 1
  %4324 = extractvalue %dx.types.CBufRet.f32 %4315, 3
  %4325 = extractvalue %dx.types.CBufRet.f32 %4317, 3
  %4326 = extractvalue %dx.types.CBufRet.f32 %4319, 3
  %4327 = fadd fast float %4324, %4300
  %4328 = fadd fast float %4325, %4301
  %4329 = fadd fast float %4326, %4302
  %4330 = fmul fast float %4327, %4316
  %4331 = call float @dx.op.tertiary.f32(i32 46, float %4328, float %4318, float %4330)  ; FMad(a,b,c)
  %4332 = call float @dx.op.tertiary.f32(i32 46, float %4329, float %4320, float %4331)  ; FMad(a,b,c)
  %4333 = fmul fast float %4327, %4321
  %4334 = call float @dx.op.tertiary.f32(i32 46, float %4328, float %4322, float %4333)  ; FMad(a,b,c)
  %4335 = call float @dx.op.tertiary.f32(i32 46, float %4329, float %4323, float %4334)  ; FMad(a,b,c)
  %4336 = fsub fast float %4332, %4324
  %4337 = fsub fast float %4335, %4325
  %4338 = fsub fast float %4336, %4304
  %4339 = fadd fast float %4338, %4312
  %4340 = fsub fast float %4337, %4305
  %4341 = fadd fast float %4340, %4312
  %4342 = extractvalue %dx.types.CBufRet.f32 %4303, 3
  %4343 = fmul fast float %4339, %4342
  %4344 = fmul fast float %4341, %4342
  %4345 = call float @dx.op.unary.f32(i32 7, float %4343)  ; Saturate(value)
  %4346 = call float @dx.op.unary.f32(i32 7, float %4344)  ; Saturate(value)
  %4347 = fsub fast float 1.000000e+00, %4345
  %4348 = fsub fast float 1.000000e+00, %4346
  %4349 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %56, float %4347, float %4348, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4350 = extractvalue %dx.types.ResRet.f32 %4349, 0
  %4351 = fcmp fast ugt float %4350, 0.000000e+00
  br i1 %4351, label %4352, label %4655

; <label>:4352                                    ; preds = %4314
  %4353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4354 = extractvalue %dx.types.CBufRet.f32 %4353, 2
  %4355 = fmul fast float %4354, %4350
  %4356 = extractvalue %dx.types.CBufRet.f32 %4353, 3
  %4357 = fadd fast float %4356, %4355
  %4358 = extractvalue %dx.types.CBufRet.f32 %4319, 2
  %4359 = fadd fast float %4357, %4326
  %4360 = fmul fast float %4332, %4320
  %4361 = call float @dx.op.tertiary.f32(i32 46, float %4335, float %4323, float %4360)  ; FMad(a,b,c)
  %4362 = call float @dx.op.tertiary.f32(i32 46, float %4359, float %4358, float %4361)  ; FMad(a,b,c)
  %4363 = fsub fast float %4362, %4326
  %4364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4365 = extractvalue %dx.types.CBufRet.f32 %4364, 2
  %4366 = fsub fast float %4363, %4365
  %4367 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %56, float %4347, float %4348, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4368 = extractvalue %dx.types.ResRet.f32 %4367, 0
  %4369 = extractvalue %dx.types.ResRet.f32 %4367, 1
  %4370 = extractvalue %dx.types.ResRet.f32 %4367, 2
  %4371 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %56, float %4347, float %4348, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4372 = extractvalue %dx.types.ResRet.f32 %4371, 0
  %4373 = extractvalue %dx.types.ResRet.f32 %4371, 1
  %4374 = extractvalue %dx.types.ResRet.f32 %4371, 2
  %4375 = fadd fast float %4372, %4368
  %4376 = fmul fast float %4375, 0x3F847AE140000000
  %4377 = fadd fast float %4373, %4369
  %4378 = fmul fast float %4377, 0x3F847AE140000000
  %4379 = fadd fast float %4374, %4370
  %4380 = fmul fast float %4379, 0x3F847AE140000000
  br label %4655

; <label>:4381                                    ; preds = %4240
  %4382 = and i32 %258, 1
  %4383 = icmp eq i32 %4382, 0
  br i1 %4383, label %4655, label %4384

; <label>:4384                                    ; preds = %4381
  %4385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4386 = extractvalue %dx.types.CBufRet.f32 %4385, 0
  %4387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4388 = extractvalue %dx.types.CBufRet.f32 %4387, 0
  %4389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4390 = extractvalue %dx.types.CBufRet.f32 %4389, 0
  %4391 = extractvalue %dx.types.CBufRet.f32 %4385, 1
  %4392 = extractvalue %dx.types.CBufRet.f32 %4387, 1
  %4393 = extractvalue %dx.types.CBufRet.f32 %4389, 1
  %4394 = extractvalue %dx.types.CBufRet.f32 %4385, 3
  %4395 = extractvalue %dx.types.CBufRet.f32 %4387, 3
  %4396 = extractvalue %dx.types.CBufRet.f32 %4389, 3
  %4397 = fadd fast float %4394, %4300
  %4398 = fadd fast float %4395, %4301
  %4399 = fadd fast float %4396, %4302
  %4400 = fmul fast float %4397, %4386
  %4401 = call float @dx.op.tertiary.f32(i32 46, float %4398, float %4388, float %4400)  ; FMad(a,b,c)
  %4402 = call float @dx.op.tertiary.f32(i32 46, float %4399, float %4390, float %4401)  ; FMad(a,b,c)
  %4403 = fmul fast float %4397, %4391
  %4404 = call float @dx.op.tertiary.f32(i32 46, float %4398, float %4392, float %4403)  ; FMad(a,b,c)
  %4405 = call float @dx.op.tertiary.f32(i32 46, float %4399, float %4393, float %4404)  ; FMad(a,b,c)
  %4406 = fsub fast float %4402, %4394
  %4407 = fsub fast float %4405, %4395
  %4408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4409 = extractvalue %dx.types.CBufRet.f32 %4408, 0
  %4410 = extractvalue %dx.types.CBufRet.f32 %4408, 1
  %4411 = extractvalue %dx.types.CBufRet.f32 %4408, 2
  %4412 = extractvalue %dx.types.CBufRet.f32 %4408, 3
  %4413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4414 = extractvalue %dx.types.CBufRet.f32 %4413, 3
  %4415 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4416 = extractvalue %dx.types.CBufRet.i32 %4415, 0
  %4417 = extractvalue %dx.types.CBufRet.i32 %4415, 1
  %4418 = udiv i32 %4417, %4416
  %4419 = fsub fast float %4406, %4409
  %4420 = fsub fast float %4407, %4410
  %4421 = call float @dx.op.binary.f32(i32 35, float %4419, float 0.000000e+00)  ; FMax(a,b)
  %4422 = call float @dx.op.binary.f32(i32 35, float %4420, float 0.000000e+00)  ; FMax(a,b)
  %4423 = call float @dx.op.binary.f32(i32 36, float %4421, float %4411)  ; FMin(a,b)
  %4424 = call float @dx.op.binary.f32(i32 36, float %4422, float %4412)  ; FMin(a,b)
  %4425 = add i32 %4416, -1
  %4426 = add i32 %4418, -1
  %4427 = fmul fast float %4423, %4414
  %4428 = fmul fast float %4424, %4414
  %4429 = fptoui float %4427 to i32
  %4430 = fptoui float %4428 to i32
  %4431 = call i32 @dx.op.binary.i32(i32 40, i32 %4429, i32 %4425)  ; UMin(a,b)
  %4432 = call i32 @dx.op.binary.i32(i32 40, i32 %4430, i32 %4426)  ; UMin(a,b)
  %4433 = mul i32 %4432, %4416
  %4434 = add i32 %4433, %4431
  %4435 = shl i32 %4434, 2
  %4436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4435, i32 undef)  ; BufferLoad(srv,index,wot)
  %4437 = extractvalue %dx.types.ResRet.i32 %4436, 0
  %4438 = icmp eq i32 %4437, -1
  br i1 %4438, label %4655, label %4439

; <label>:4439                                    ; preds = %4384
  %4440 = mul i32 %4437, 148
  %4441 = add i32 %4440, 4
  %4442 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4441, i32 undef)  ; BufferLoad(srv,index,wot)
  %4443 = extractvalue %dx.types.ResRet.f32 %4442, 0
  %4444 = add i32 %4440, 8
  %4445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4444, i32 undef)  ; BufferLoad(srv,index,wot)
  %4446 = extractvalue %dx.types.ResRet.f32 %4445, 0
  %4447 = add i32 %4440, 36
  %4448 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4447, i32 undef)  ; BufferLoad(srv,index,wot)
  %4449 = extractvalue %dx.types.ResRet.f32 %4448, 0
  %4450 = add i32 %4440, 60
  %4451 = add i32 %4440, 92
  %4452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4451, i32 undef)  ; BufferLoad(srv,index,wot)
  %4453 = extractvalue %dx.types.ResRet.i32 %4452, 0
  %4454 = add i32 %4440, 116
  %4455 = fsub fast float %4406, %4443
  %4456 = fsub fast float %4407, %4446
  %4457 = fmul fast float %4414, %4455
  %4458 = fmul fast float %4414, %4456
  %4459 = call float @dx.op.unary.f32(i32 7, float %4457)  ; Saturate(value)
  %4460 = call float @dx.op.unary.f32(i32 7, float %4458)  ; Saturate(value)
  %4461 = fsub fast float 1.000000e+00, %4460
  %4462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4463 = extractvalue %dx.types.CBufRet.f32 %4462, 2
  %4464 = call float @dx.op.unary.f32(i32 83, float %4459)  ; DerivCoarseX(value)
  %4465 = call float @dx.op.unary.f32(i32 83, float %4461)  ; DerivCoarseX(value)
  %4466 = call float @dx.op.unary.f32(i32 84, float %4459)  ; DerivCoarseY(value)
  %4467 = call float @dx.op.unary.f32(i32 84, float %4461)  ; DerivCoarseY(value)
  %4468 = fmul fast float %4464, %4463
  %4469 = fmul fast float %4465, %4463
  %4470 = fmul fast float %4466, %4463
  %4471 = fmul fast float %4467, %4463
  %4472 = call float @dx.op.dot2.f32(i32 54, float %4470, float %4471, float %4470, float %4471)  ; Dot2(ax,ay,bx,by)
  %4473 = call float @dx.op.dot2.f32(i32 54, float %4468, float %4469, float %4468, float %4469)  ; Dot2(ax,ay,bx,by)
  %4474 = call float @dx.op.binary.f32(i32 35, float %4473, float %4472)  ; FMax(a,b)
  %4475 = call float @dx.op.unary.f32(i32 23, float %4474)  ; Log(value)
  %4476 = fmul fast float %4475, 5.000000e-01
  %4477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4478 = extractvalue %dx.types.CBufRet.f32 %4477, 1
  %4479 = fadd fast float %4478, %4476
  %4480 = call float @dx.op.binary.f32(i32 35, float %4479, float 0.000000e+00)  ; FMax(a,b)
  %4481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4482 = extractvalue %dx.types.CBufRet.f32 %4481, 3
  %4483 = fadd fast float %4482, %4480
  %4484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4485 = extractvalue %dx.types.CBufRet.f32 %4484, 3
  %4486 = fadd fast float %4483, %4485
  %4487 = add i32 %4453, 0
  %4488 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4487, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4489 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4488, i32 0)  ; GetDimensions(handle,mipLevel)
  %4490 = extractvalue %dx.types.Dimensions %4489, 0
  %4491 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4490)  ; FirstbitLo(value)
  %4492 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4493 = extractvalue %dx.types.CBufRet.i32 %4492, 1
  %4494 = sub nsw i32 %4493, %4491
  %4495 = sitofp i32 %4494 to float
  %4496 = fsub fast float %4486, %4495
  %4497 = call float @dx.op.binary.f32(i32 35, float %4496, float 0.000000e+00)  ; FMax(a,b)
  %4498 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4488, %dx.types.Handle %54, float %4459, float %4461, float %4449, float undef, i32 0, i32 0, i32 undef, float %4497)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4499 = extractvalue %dx.types.ResRet.f32 %4498, 0
  %4500 = fcmp ule float %4499, 0x3FE0101020000000
  %4501 = extractvalue %dx.types.CBufRet.i32 %4492, 0
  %4502 = and i32 %4501, 128
  %4503 = icmp ne i32 %4502, 0
  %4504 = and i1 %4500, %4503
  br i1 %4504, label %4655, label %4505

; <label>:4505                                    ; preds = %4439
  %4506 = add i32 %4440, 20
  %4507 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4506, i32 undef)  ; BufferLoad(srv,index,wot)
  %4508 = extractvalue %dx.types.ResRet.f32 %4507, 0
  %4509 = add i32 %4440, 24
  %4510 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4509, i32 undef)  ; BufferLoad(srv,index,wot)
  %4511 = extractvalue %dx.types.ResRet.f32 %4510, 0
  %4512 = add i32 %4440, 40
  %4513 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4512, i32 undef)  ; BufferLoad(srv,index,wot)
  %4514 = extractvalue %dx.types.ResRet.f32 %4513, 0
  %4515 = add i32 %4440, 96
  %4516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4515, i32 undef)  ; BufferLoad(srv,index,wot)
  %4517 = extractvalue %dx.types.ResRet.i32 %4516, 0
  %4518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4519 = extractvalue %dx.types.CBufRet.f32 %4518, 2
  %4520 = fmul fast float %4519, %4459
  %4521 = fmul fast float %4519, %4461
  %4522 = extractvalue %dx.types.CBufRet.f32 %4518, 3
  %4523 = fadd fast float %4520, %4522
  %4524 = fadd fast float %4521, %4522
  %4525 = add i32 %4517, 0
  %4526 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4525, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4527 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4526, i32 0)  ; GetDimensions(handle,mipLevel)
  %4528 = extractvalue %dx.types.Dimensions %4527, 0
  %4529 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4528)  ; FirstbitLo(value)
  %4530 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4531 = extractvalue %dx.types.CBufRet.i32 %4530, 1
  %4532 = sub nsw i32 %4531, %4529
  %4533 = sitofp i32 %4532 to float
  %4534 = fsub fast float %4483, %4533
  %4535 = call float @dx.op.binary.f32(i32 35, float %4534, float 0.000000e+00)  ; FMax(a,b)
  %4536 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4526, %dx.types.Handle %54, float %4523, float %4524, float %4514, float undef, i32 0, i32 0, i32 undef, float %4535)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4537 = extractvalue %dx.types.ResRet.f32 %4536, 0
  %4538 = fmul fast float %4537, %4508
  %4539 = fadd fast float %4538, %4511
  %4540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4541 = extractvalue %dx.types.CBufRet.f32 %4540, 0
  %4542 = extractvalue %dx.types.CBufRet.f32 %4540, 1
  %4543 = extractvalue %dx.types.CBufRet.f32 %4540, 2
  %4544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4545 = extractvalue %dx.types.CBufRet.f32 %4544, 3
  %4546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4547 = extractvalue %dx.types.CBufRet.f32 %4546, 3
  %4548 = extractvalue %dx.types.CBufRet.f32 %4540, 3
  %4549 = fadd fast float %4545, %4406
  %4550 = fadd fast float %4547, %4407
  %4551 = fadd fast float %4539, %4548
  %4552 = fmul fast float %4549, %4541
  %4553 = call float @dx.op.tertiary.f32(i32 46, float %4550, float %4542, float %4552)  ; FMad(a,b,c)
  %4554 = call float @dx.op.tertiary.f32(i32 46, float %4551, float %4543, float %4553)  ; FMad(a,b,c)
  %4555 = fsub fast float %4554, %4548
  %4556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4557 = extractvalue %dx.types.CBufRet.f32 %4556, 2
  %4558 = fsub fast float %4555, %4557
  %4559 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4560 = extractvalue %dx.types.CBufRet.i32 %4559, 0
  %4561 = call i32 @dx.op.binary.i32(i32 40, i32 %4437, i32 %4560)  ; UMin(a,b)
  %4562 = mul i32 %4561, 36
  %4563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4562, i32 undef)  ; BufferLoad(srv,index,wot)
  %4564 = extractvalue %dx.types.ResRet.i32 %4563, 0
  %4565 = add i32 %4562, 4
  %4566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4567 = extractvalue %dx.types.CBufRet.f32 %4566, 0
  %4568 = fmul fast float %4567, %4459
  %4569 = fmul fast float %4567, %4461
  %4570 = extractvalue %dx.types.CBufRet.f32 %4566, 1
  %4571 = fadd fast float %4568, %4570
  %4572 = fadd fast float %4569, %4570
  %4573 = icmp eq i32 %4564, 0
  br i1 %4573, label %4642, label %4574

; <label>:4574                                    ; preds = %4505
  br label %4575

; <label>:4575                                    ; preds = %4632, %4574
  %4576 = phi float [ %4633, %4632 ], [ 0.000000e+00, %4574 ]
  %4577 = phi float [ %4634, %4632 ], [ 0.000000e+00, %4574 ]
  %4578 = phi float [ %4635, %4632 ], [ 0.000000e+00, %4574 ]
  %4579 = phi float [ %4636, %4632 ], [ 0.000000e+00, %4574 ]
  %4580 = phi float [ %4637, %4632 ], [ 0.000000e+00, %4574 ]
  %4581 = phi float [ %4638, %4632 ], [ 0.000000e+00, %4574 ]
  %4582 = phi i32 [ %4639, %4632 ], [ 0, %4574 ]
  %4583 = shl i32 %4582, 2
  %4584 = add i32 %4450, %4583
  %4585 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4584, i32 undef)  ; BufferLoad(srv,index,wot)
  %4586 = extractvalue %dx.types.ResRet.f32 %4585, 0
  %4587 = add i32 %4454, %4583
  %4588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4587, i32 undef)  ; BufferLoad(srv,index,wot)
  %4589 = extractvalue %dx.types.ResRet.i32 %4588, 0
  %4590 = add i32 %4589, 0
  %4591 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4590, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4592 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4591, i32 0)  ; GetDimensions(handle,mipLevel)
  %4593 = extractvalue %dx.types.Dimensions %4592, 0
  %4594 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4593)  ; FirstbitLo(value)
  %4595 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4596 = extractvalue %dx.types.CBufRet.i32 %4595, 1
  %4597 = sub nsw i32 %4596, %4594
  %4598 = sitofp i32 %4597 to float
  %4599 = fsub fast float %4483, %4598
  %4600 = call float @dx.op.binary.f32(i32 35, float %4599, float 0.000000e+00)  ; FMax(a,b)
  %4601 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4591, %dx.types.Handle %54, float %4571, float %4572, float %4586, float undef, i32 0, i32 0, i32 undef, float %4600)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4602 = extractvalue %dx.types.ResRet.f32 %4601, 0
  %4603 = fcmp fast ogt float %4602, 0.000000e+00
  br i1 %4603, label %4604, label %4632

; <label>:4604                                    ; preds = %4575
  %4605 = add i32 %4565, %4583
  %4606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4605, i32 undef)  ; BufferLoad(srv,index,wot)
  %4607 = extractvalue %dx.types.ResRet.i32 %4606, 0
  %4608 = and i32 %4607, 32767
  %4609 = mul nuw nsw i32 %4608, 928
  %4610 = add nuw nsw i32 %4609, 48
  %4611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4610, i32 undef)  ; BufferLoad(srv,index,wot)
  %4612 = extractvalue %dx.types.ResRet.f32 %4611, 0
  %4613 = extractvalue %dx.types.ResRet.f32 %4611, 1
  %4614 = extractvalue %dx.types.ResRet.f32 %4611, 2
  %4615 = add nuw nsw i32 %4609, 60
  %4616 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4615, i32 undef)  ; BufferLoad(srv,index,wot)
  %4617 = extractvalue %dx.types.ResRet.f32 %4616, 0
  %4618 = extractvalue %dx.types.ResRet.f32 %4616, 1
  %4619 = extractvalue %dx.types.ResRet.f32 %4616, 2
  %4620 = fmul fast float %4612, %4602
  %4621 = fmul fast float %4613, %4602
  %4622 = fmul fast float %4614, %4602
  %4623 = fadd fast float %4620, %4576
  %4624 = fadd fast float %4621, %4577
  %4625 = fadd fast float %4622, %4578
  %4626 = fmul fast float %4617, %4602
  %4627 = fmul fast float %4618, %4602
  %4628 = fmul fast float %4619, %4602
  %4629 = fadd fast float %4626, %4579
  %4630 = fadd fast float %4627, %4580
  %4631 = fadd fast float %4628, %4581
  br label %4632

; <label>:4632                                    ; preds = %4604, %4575
  %4633 = phi float [ %4623, %4604 ], [ %4576, %4575 ]
  %4634 = phi float [ %4624, %4604 ], [ %4577, %4575 ]
  %4635 = phi float [ %4625, %4604 ], [ %4578, %4575 ]
  %4636 = phi float [ %4629, %4604 ], [ %4579, %4575 ]
  %4637 = phi float [ %4630, %4604 ], [ %4580, %4575 ]
  %4638 = phi float [ %4631, %4604 ], [ %4581, %4575 ]
  %4639 = add nuw i32 %4582, 1
  %4640 = icmp eq i32 %4639, %4564
  br i1 %4640, label %4641, label %4575

; <label>:4641                                    ; preds = %4632
  br label %4642

; <label>:4642                                    ; preds = %4641, %4505
  %4643 = phi float [ 0.000000e+00, %4505 ], [ %4633, %4641 ]
  %4644 = phi float [ 0.000000e+00, %4505 ], [ %4634, %4641 ]
  %4645 = phi float [ 0.000000e+00, %4505 ], [ %4635, %4641 ]
  %4646 = phi float [ 0.000000e+00, %4505 ], [ %4636, %4641 ]
  %4647 = phi float [ 0.000000e+00, %4505 ], [ %4637, %4641 ]
  %4648 = phi float [ 0.000000e+00, %4505 ], [ %4638, %4641 ]
  %4649 = fadd fast float %4646, %4643
  %4650 = fmul fast float %4649, 0x3F847AE140000000
  %4651 = fadd fast float %4647, %4644
  %4652 = fmul fast float %4651, 0x3F847AE140000000
  %4653 = fadd fast float %4648, %4645
  %4654 = fmul fast float %4653, 0x3F847AE140000000
  br label %4655

; <label>:4655                                    ; preds = %4642, %4439, %4384, %4381, %4352, %4314
  %4656 = phi float [ %4366, %4352 ], [ -1.310720e+05, %4314 ], [ %4558, %4642 ], [ -1.310720e+05, %4384 ], [ -1.310720e+05, %4439 ], [ -1.310720e+05, %4381 ]
  %4657 = phi float [ %4376, %4352 ], [ 0.000000e+00, %4314 ], [ %4650, %4642 ], [ 0.000000e+00, %4384 ], [ 0.000000e+00, %4439 ], [ 0.000000e+00, %4381 ]
  %4658 = phi float [ %4378, %4352 ], [ 0.000000e+00, %4314 ], [ %4652, %4642 ], [ 0.000000e+00, %4384 ], [ 0.000000e+00, %4439 ], [ 0.000000e+00, %4381 ]
  %4659 = phi float [ %4380, %4352 ], [ 0.000000e+00, %4314 ], [ %4654, %4642 ], [ 0.000000e+00, %4384 ], [ 0.000000e+00, %4439 ], [ 0.000000e+00, %4381 ]
  %4660 = phi i1 [ true, %4352 ], [ false, %4314 ], [ true, %4642 ], [ false, %4384 ], [ false, %4439 ], [ false, %4381 ]
  %4661 = and i32 %258, 3
  %4662 = icmp eq i32 %4661, 1
  %4663 = select i1 %4662, float 1.000000e+00, float 0.000000e+00
  %4664 = fsub fast float %4656, %209
  %4665 = call float @dx.op.unary.f32(i32 7, float %4664)  ; Saturate(value)
  %4666 = select i1 %4660, float %4665, float 1.000000e+00
  %4667 = fmul fast float %4666, %4663
  %4668 = icmp eq i32 %4661, 3
  %4669 = select i1 %4668, float 1.000000e+00, float %4667
  %4670 = call float @dx.op.binary.f32(i32 35, float %4256, float %4669)  ; FMax(a,b)
  %4671 = fcmp fast olt float %4669, 1.000000e+00
  %4672 = fcmp uge float %80, 0.000000e+00
  %4673 = and i1 %4672, %4671
  br i1 %4673, label %4674, label %4684

; <label>:4674                                    ; preds = %4655
  %4675 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %80, float %81, float %82, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4676 = extractvalue %dx.types.ResRet.f32 %4675, 0
  %4677 = extractvalue %dx.types.ResRet.f32 %4675, 1
  %4678 = extractvalue %dx.types.ResRet.f32 %4675, 2
  %4679 = fadd fast float %4676, %4670
  %4680 = fcmp ule float %79, 0.000000e+00
  %4681 = call float @dx.op.dot3.f32(i32 55, float %76, float %77, float %78, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4682 = select i1 %4680, float %4681, float 1.000000e+00
  %4683 = fmul fast float %4682, %4678
  br label %4684

; <label>:4684                                    ; preds = %4674, %4655
  %4685 = phi float [ %4679, %4674 ], [ %4670, %4655 ]
  %4686 = phi float [ %4677, %4674 ], [ 0.000000e+00, %4655 ]
  %4687 = phi float [ %4683, %4674 ], [ 0.000000e+00, %4655 ]
  %4688 = call float @dx.op.unary.f32(i32 7, float %4685)  ; Saturate(value)
  %4689 = call float @dx.op.unary.f32(i32 7, float %4686)  ; Saturate(value)
  %4690 = call float @dx.op.unary.f32(i32 7, float %4687)  ; Saturate(value)
  %4691 = fcmp fast une float %4689, 0.000000e+00
  %4692 = fcmp fast une float %4690, 0.000000e+00
  %4693 = or i1 %4691, %4692
  br i1 %4693, label %4694, label %5253

; <label>:4694                                    ; preds = %4684
  br i1 %4691, label %4695, label %4968

; <label>:4695                                    ; preds = %4694
  %4696 = call float @dx.op.unary.f32(i32 23, float %4253)  ; Log(value)
  %4697 = fmul fast float %4696, 4.000000e+00
  %4698 = call float @dx.op.unary.f32(i32 21, float %4697)  ; Exp(value)
  %4699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4700 = extractvalue %dx.types.CBufRet.f32 %4699, 0
  %4701 = fmul fast float %4700, %66
  %4702 = fmul fast float %4700, %67
  %4703 = fmul fast float %4700, %68
  %4704 = call float @dx.op.unary.f32(i32 6, float %76)  ; FAbs(value)
  %4705 = call float @dx.op.unary.f32(i32 6, float %77)  ; FAbs(value)
  %4706 = call float @dx.op.unary.f32(i32 6, float %78)  ; FAbs(value)
  %4707 = call float @dx.op.unary.f32(i32 23, float %4704)  ; Log(value)
  %4708 = call float @dx.op.unary.f32(i32 23, float %4705)  ; Log(value)
  %4709 = call float @dx.op.unary.f32(i32 23, float %4706)  ; Log(value)
  %4710 = fmul fast float %4707, 4.000000e+00
  %4711 = fmul fast float %4708, 4.000000e+00
  %4712 = fmul fast float %4709, 4.000000e+00
  %4713 = call float @dx.op.unary.f32(i32 21, float %4710)  ; Exp(value)
  %4714 = call float @dx.op.unary.f32(i32 21, float %4711)  ; Exp(value)
  %4715 = call float @dx.op.unary.f32(i32 21, float %4712)  ; Exp(value)
  %4716 = fadd fast float %4714, %4713
  %4717 = fadd fast float %4716, %4715
  %4718 = fdiv fast float 1.000000e+00, %4717
  %4719 = fmul fast float %4718, %4713
  %4720 = fcmp fast ogt float %76, 0.000000e+00
  %4721 = fcmp fast ogt float %77, 0.000000e+00
  %4722 = fcmp fast ogt float %78, 0.000000e+00
  %4723 = fcmp fast olt float %76, 0.000000e+00
  %4724 = fcmp fast olt float %77, 0.000000e+00
  %4725 = fcmp fast olt float %78, 0.000000e+00
  %4726 = zext i1 %4720 to i32
  %4727 = zext i1 %4721 to i32
  %4728 = zext i1 %4722 to i32
  %4729 = zext i1 %4723 to i32
  %4730 = zext i1 %4724 to i32
  %4731 = zext i1 %4725 to i32
  %4732 = sub nsw i32 %4726, %4729
  %4733 = sub nsw i32 %4727, %4730
  %4734 = sub nsw i32 %4728, %4731
  %4735 = call float @dx.op.unary.f32(i32 83, float %4701)  ; DerivCoarseX(value)
  %4736 = call float @dx.op.unary.f32(i32 83, float %4702)  ; DerivCoarseX(value)
  %4737 = call float @dx.op.unary.f32(i32 83, float %4703)  ; DerivCoarseX(value)
  %4738 = call float @dx.op.unary.f32(i32 84, float %4701)  ; DerivCoarseY(value)
  %4739 = call float @dx.op.unary.f32(i32 84, float %4702)  ; DerivCoarseY(value)
  %4740 = call float @dx.op.unary.f32(i32 84, float %4703)  ; DerivCoarseY(value)
  %4741 = fcmp fast ole float %290, %4719
  %4742 = fmul fast float %4718, %4716
  %4743 = fcmp fast ole float %290, %4742
  %4744 = select i1 %4743, float %4703, float %4701
  %4745 = select i1 %4743, float %4701, float %4702
  %4746 = select i1 %4741, float %4702, float %4744
  %4747 = select i1 %4741, float %4703, float %4745
  %4748 = select i1 %4743, float %4737, float %4735
  %4749 = select i1 %4743, float %4735, float %4736
  %4750 = select i1 %4741, float %4736, float %4748
  %4751 = select i1 %4741, float %4737, float %4749
  %4752 = select i1 %4743, float %4740, float %4738
  %4753 = select i1 %4743, float %4738, float %4739
  %4754 = select i1 %4741, float %4739, float %4752
  %4755 = select i1 %4741, float %4740, float %4753
  %4756 = call float @dx.op.unary.f32(i32 27, float %4746)  ; Round_ni(value)
  %4757 = call float @dx.op.unary.f32(i32 27, float %4747)  ; Round_ni(value)
  %4758 = fptosi float %4756 to i32
  %4759 = fptosi float %4757 to i32
  %4760 = xor i32 %4759, %4758
  %4761 = sitofp i32 %4760 to float
  %4762 = fptosi float %4761 to i32
  %4763 = sitofp i32 %4762 to float
  %4764 = fmul fast float %4763, 0x3FE3C6EF40000000
  %4765 = frem fast float %4756, 2.560000e+02
  %4766 = frem fast float %4757, 2.560000e+02
  %4767 = fptoui float %4765 to i32
  %4768 = fptoui float %4766 to i32
  %4769 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4767, i32 %4768, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4770 = extractvalue %dx.types.ResRet.f32 %4769, 0
  %4771 = extractvalue %dx.types.ResRet.f32 %4769, 1
  %4772 = extractvalue %dx.types.ResRet.f32 %4769, 2
  %4773 = fadd fast float %4770, %4764
  %4774 = fadd fast float %4771, %4764
  %4775 = fadd fast float %4772, %4764
  %4776 = call float @dx.op.unary.f32(i32 22, float %4773)  ; Frc(value)
  %4777 = call float @dx.op.unary.f32(i32 22, float %4774)  ; Frc(value)
  %4778 = call float @dx.op.unary.f32(i32 22, float %4775)  ; Frc(value)
  %4779 = fmul fast float %4778, 0x401921FB60000000
  %4780 = call float @dx.op.unary.f32(i32 13, float %4779)  ; Sin(value)
  %4781 = call float @dx.op.unary.f32(i32 12, float %4779)  ; Cos(value)
  %4782 = fsub fast float -0.000000e+00, %4781
  %4783 = fmul fast float %4781, %4746
  %4784 = call float @dx.op.tertiary.f32(i32 46, float %4780, float %4747, float %4783)  ; FMad(a,b,c)
  %4785 = fmul fast float %4780, %4746
  %4786 = call float @dx.op.tertiary.f32(i32 46, float %4782, float %4747, float %4785)  ; FMad(a,b,c)
  %4787 = fadd fast float %4784, %4776
  %4788 = fadd fast float %4786, %4777
  %4789 = extractvalue %dx.types.CBufRet.f32 %4699, 3
  %4790 = bitcast float %4789 to i32
  %4791 = icmp eq i32 %4790, 0
  br i1 %4791, label %4830, label %4792

; <label>:4792                                    ; preds = %4695
  %4793 = add i32 %4790, 0
  %4794 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4793, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4795 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4794, %dx.types.Handle %117, float %4787, float %4788, float undef, float undef, i32 0, i32 0, i32 undef, float %4750, float %4751, float undef, float %4754, float %4755, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4796 = extractvalue %dx.types.ResRet.f32 %4795, 0
  %4797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4798 = extractvalue %dx.types.CBufRet.f32 %4797, 1
  %4799 = extractvalue %dx.types.CBufRet.f32 %4797, 2
  %4800 = fsub fast float 1.000000e+00, %4689
  %4801 = call float @dx.op.binary.f32(i32 35, float %4800, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4802 = bitcast float %4689 to i32
  %4803 = sitofp i32 %4802 to float
  %4804 = fadd fast float %4803, 0xC1CFBF8940000000
  %4805 = fmul fast float %4799, %4804
  %4806 = fadd fast float %4805, 0x41CFBF8940000000
  %4807 = fptosi float %4806 to i32
  %4808 = bitcast i32 %4807 to float
  %4809 = bitcast float %4801 to i32
  %4810 = sitofp i32 %4809 to float
  %4811 = fadd fast float %4810, 0xC1CFBF8940000000
  %4812 = fmul fast float %4811, %4799
  %4813 = fadd fast float %4812, 0x41CFBF8940000000
  %4814 = fptosi float %4813 to i32
  %4815 = bitcast i32 %4814 to float
  %4816 = fmul fast float %4808, %4798
  %4817 = fmul fast float %4815, %4798
  %4818 = fsub fast float %4801, %4816
  %4819 = fadd fast float %4817, %4801
  %4820 = call float @dx.op.unary.f32(i32 7, float %4818)  ; Saturate(value)
  %4821 = call float @dx.op.unary.f32(i32 7, float %4819)  ; Saturate(value)
  %4822 = fsub fast float %4796, %4820
  %4823 = fsub fast float %4821, %4820
  %4824 = bitcast float %4823 to i32
  %4825 = sub nsw i32 2129859010, %4824
  %4826 = bitcast i32 %4825 to float
  %4827 = fmul fast float %4826, %4822
  %4828 = call float @dx.op.unary.f32(i32 7, float %4827)  ; Saturate(value)
  %4829 = fcmp fast olt float %4828, 0x3F70101020000000
  br i1 %4829, label %4968, label %4830

; <label>:4830                                    ; preds = %4792, %4695
  %4831 = phi float [ %4828, %4792 ], [ %4689, %4695 ]
  %4832 = fmul fast float %4831, %4698
  %4833 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4834 = extractvalue %dx.types.CBufRet.i32 %4833, 1
  %4835 = extractvalue %dx.types.CBufRet.i32 %4833, 0
  %4836 = add i32 %4835, 0
  %4837 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4836, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4838 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4837, %dx.types.Handle %116, float %4787, float %4788, float undef, float undef, i32 0, i32 0, i32 undef, float %4750, float %4751, float undef, float %4754, float %4755, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4839 = extractvalue %dx.types.ResRet.f32 %4838, 0
  %4840 = extractvalue %dx.types.ResRet.f32 %4838, 1
  %4841 = extractvalue %dx.types.ResRet.f32 %4838, 2
  %4842 = extractvalue %dx.types.ResRet.f32 %4838, 3
  %4843 = and i32 %4834, 255
  %4844 = uitofp i32 %4843 to float
  %4845 = lshr i32 %4834, 8
  %4846 = and i32 %4845, 255
  %4847 = uitofp i32 %4846 to float
  %4848 = fmul fast float %4842, %4844
  %4849 = fadd fast float %4848, %4847
  %4850 = fmul fast float %4849, 0x3F70101000000000
  %4851 = fadd fast float %4850, 0xBFB99999A0000000
  %4852 = call float @dx.op.unary.f32(i32 7, float %4851)  ; Saturate(value)
  %4853 = fmul fast float %4852, 0x3FF1C71C80000000
  %4854 = call float @dx.op.binary.f32(i32 36, float %4850, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4855 = fsub fast float 1.000000e+00, %4853
  %4856 = call float @dx.op.unary.f32(i32 7, float %4855)  ; Saturate(value)
  %4857 = fmul fast float %4856, %4839
  %4858 = fmul fast float %4856, %4840
  %4859 = fmul fast float %4856, %4841
  %4860 = call float @dx.op.unary.f32(i32 7, float %4857)  ; Saturate(value)
  %4861 = call float @dx.op.unary.f32(i32 7, float %4858)  ; Saturate(value)
  %4862 = call float @dx.op.unary.f32(i32 7, float %4859)  ; Saturate(value)
  %4863 = fmul fast float %4853, %4839
  %4864 = fmul fast float %4853, %4840
  %4865 = fmul fast float %4853, %4841
  %4866 = fadd fast float %4863, %4854
  %4867 = fadd fast float %4864, %4854
  %4868 = fadd fast float %4865, %4854
  %4869 = call float @dx.op.unary.f32(i32 7, float %4866)  ; Saturate(value)
  %4870 = call float @dx.op.unary.f32(i32 7, float %4867)  ; Saturate(value)
  %4871 = call float @dx.op.unary.f32(i32 7, float %4868)  ; Saturate(value)
  %4872 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4873 = extractvalue %dx.types.CBufRet.i32 %4872, 3
  %4874 = extractvalue %dx.types.CBufRet.i32 %4872, 2
  %4875 = add i32 %4874, 0
  %4876 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4875, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4877 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4876, %dx.types.Handle %116, float %4787, float %4788, float undef, float undef, i32 0, i32 0, i32 undef, float %4750, float %4751, float undef, float %4754, float %4755, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4878 = extractvalue %dx.types.ResRet.f32 %4877, 0
  %4879 = extractvalue %dx.types.ResRet.f32 %4877, 1
  %4880 = extractvalue %dx.types.ResRet.f32 %4877, 2
  %4881 = extractvalue %dx.types.ResRet.f32 %4877, 3
  %4882 = and i32 %4873, 255
  %4883 = uitofp i32 %4882 to float
  %4884 = lshr i32 %4873, 8
  %4885 = and i32 %4884, 255
  %4886 = uitofp i32 %4885 to float
  %4887 = lshr i32 %4873, 16
  %4888 = and i32 %4887, 255
  %4889 = uitofp i32 %4888 to float
  %4890 = fmul fast float %4889, 0x3F70101000000000
  %4891 = fmul fast float %4878, %4883
  %4892 = fadd fast float %4891, %4886
  %4893 = fmul fast float %4892, 0x3F70101000000000
  %4894 = fadd fast float %4879, -5.000000e-01
  %4895 = fadd fast float %4881, -5.000000e-01
  %4896 = fmul fast float %4894, %4890
  %4897 = fmul fast float %4895, %4890
  %4898 = fadd fast float %4896, 5.000000e-01
  %4899 = fadd fast float %4897, 5.000000e-01
  %4900 = fmul fast float %4898, 2.000000e+00
  %4901 = fadd fast float %4900, -1.000000e+00
  %4902 = fmul fast float %4899, 2.000000e+00
  %4903 = fadd fast float %4902, -1.000000e+00
  %4904 = fadd fast float %4901, %4903
  %4905 = fmul fast float %4904, 5.000000e-01
  %4906 = fsub fast float %4901, %4903
  %4907 = fmul fast float %4906, 5.000000e-01
  %4908 = call float @dx.op.unary.f32(i32 6, float %4905)  ; FAbs(value)
  %4909 = fsub fast float 1.000000e+00, %4908
  %4910 = call float @dx.op.unary.f32(i32 6, float %4907)  ; FAbs(value)
  %4911 = fsub fast float %4909, %4910
  %4912 = call float @dx.op.dot3.f32(i32 55, float %4905, float %4907, float %4911, float %4905, float %4907, float %4911)  ; Dot3(ax,ay,az,bx,by,bz)
  %4913 = call float @dx.op.unary.f32(i32 25, float %4912)  ; Rsqrt(value)
  %4914 = fmul fast float %4905, %4913
  %4915 = fmul fast float %4907, %4913
  %4916 = select i1 %4743, i32 %4733, i32 %4734
  %4917 = select i1 %4741, i32 %4732, i32 %4916
  %4918 = sitofp i32 %4917 to float
  %4919 = fmul fast float %4911, %4918
  %4920 = fmul fast float %4919, %4913
  %4921 = select i1 %4743, float %4920, float %4915
  %4922 = select i1 %4743, float %4915, float %4920
  %4923 = select i1 %4741, float %4920, float %4914
  %4924 = select i1 %4741, float %4915, float %4921
  %4925 = select i1 %4741, float %4914, float %4922
  %4926 = fsub fast float %4860, %4293
  %4927 = fsub fast float %4861, %4294
  %4928 = fsub fast float %4862, %4295
  %4929 = fmul fast float %4926, %4832
  %4930 = fmul fast float %4927, %4832
  %4931 = fmul fast float %4928, %4832
  %4932 = fadd fast float %4929, %4293
  %4933 = fadd fast float %4930, %4294
  %4934 = fadd fast float %4931, %4295
  %4935 = fsub fast float %4869, %4278
  %4936 = fsub fast float %4870, %4279
  %4937 = fsub fast float %4871, %4280
  %4938 = fmul fast float %4935, %4832
  %4939 = fmul fast float %4936, %4832
  %4940 = fmul fast float %4937, %4832
  %4941 = fadd fast float %4938, %4278
  %4942 = fadd fast float %4939, %4279
  %4943 = fadd fast float %4940, %4280
  %4944 = fadd fast float %4923, %4241
  %4945 = fadd fast float %4924, %4242
  %4946 = fadd fast float %4925, %4243
  %4947 = call float @dx.op.dot3.f32(i32 55, float %4944, float %4945, float %4946, float %4944, float %4945, float %4946)  ; Dot3(ax,ay,az,bx,by,bz)
  %4948 = call float @dx.op.unary.f32(i32 25, float %4947)  ; Rsqrt(value)
  %4949 = fmul fast float %4944, %4948
  %4950 = fmul fast float %4945, %4948
  %4951 = fmul fast float %4946, %4948
  %4952 = fsub fast float %4949, %4241
  %4953 = fsub fast float %4950, %4242
  %4954 = fsub fast float %4951, %4243
  %4955 = fmul fast float %4952, %4832
  %4956 = fmul fast float %4953, %4832
  %4957 = fmul fast float %4954, %4832
  %4958 = fadd fast float %4955, %4241
  %4959 = fadd fast float %4956, %4242
  %4960 = fadd fast float %4957, %4243
  %4961 = call float @dx.op.binary.f32(i32 36, float %4253, float %4880)  ; FMin(a,b)
  %4962 = fsub fast float %4961, %4253
  %4963 = fmul fast float %4962, %4832
  %4964 = fadd fast float %4963, %4253
  %4965 = fsub fast float %4893, %4281
  %4966 = fmul fast float %4965, %4832
  %4967 = fadd fast float %4966, %4281
  br label %4968

; <label>:4968                                    ; preds = %4830, %4792, %4694
  %4969 = phi float [ %4932, %4830 ], [ %4293, %4792 ], [ %4293, %4694 ]
  %4970 = phi float [ %4933, %4830 ], [ %4294, %4792 ], [ %4294, %4694 ]
  %4971 = phi float [ %4934, %4830 ], [ %4295, %4792 ], [ %4295, %4694 ]
  %4972 = phi float [ %4941, %4830 ], [ %4278, %4792 ], [ %4278, %4694 ]
  %4973 = phi float [ %4942, %4830 ], [ %4279, %4792 ], [ %4279, %4694 ]
  %4974 = phi float [ %4943, %4830 ], [ %4280, %4792 ], [ %4280, %4694 ]
  %4975 = phi float [ %4958, %4830 ], [ %4241, %4792 ], [ %4241, %4694 ]
  %4976 = phi float [ %4959, %4830 ], [ %4242, %4792 ], [ %4242, %4694 ]
  %4977 = phi float [ %4960, %4830 ], [ %4243, %4792 ], [ %4243, %4694 ]
  %4978 = phi float [ %4967, %4830 ], [ %4281, %4792 ], [ %4281, %4694 ]
  %4979 = phi float [ %4964, %4830 ], [ %4253, %4792 ], [ %4253, %4694 ]
  br i1 %4692, label %4980, label %5253

; <label>:4980                                    ; preds = %4968
  %4981 = call float @dx.op.unary.f32(i32 23, float %4979)  ; Log(value)
  %4982 = fmul fast float %4981, 4.000000e+00
  %4983 = call float @dx.op.unary.f32(i32 21, float %4982)  ; Exp(value)
  %4984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4985 = extractvalue %dx.types.CBufRet.f32 %4984, 0
  %4986 = fmul fast float %4985, %66
  %4987 = fmul fast float %4985, %67
  %4988 = fmul fast float %4985, %68
  %4989 = call float @dx.op.unary.f32(i32 6, float %76)  ; FAbs(value)
  %4990 = call float @dx.op.unary.f32(i32 6, float %77)  ; FAbs(value)
  %4991 = call float @dx.op.unary.f32(i32 6, float %78)  ; FAbs(value)
  %4992 = call float @dx.op.unary.f32(i32 23, float %4989)  ; Log(value)
  %4993 = call float @dx.op.unary.f32(i32 23, float %4990)  ; Log(value)
  %4994 = call float @dx.op.unary.f32(i32 23, float %4991)  ; Log(value)
  %4995 = fmul fast float %4992, 4.000000e+00
  %4996 = fmul fast float %4993, 4.000000e+00
  %4997 = fmul fast float %4994, 4.000000e+00
  %4998 = call float @dx.op.unary.f32(i32 21, float %4995)  ; Exp(value)
  %4999 = call float @dx.op.unary.f32(i32 21, float %4996)  ; Exp(value)
  %5000 = call float @dx.op.unary.f32(i32 21, float %4997)  ; Exp(value)
  %5001 = fadd fast float %4999, %4998
  %5002 = fadd fast float %5001, %5000
  %5003 = fdiv fast float 1.000000e+00, %5002
  %5004 = fmul fast float %5003, %4998
  %5005 = fcmp fast ogt float %76, 0.000000e+00
  %5006 = fcmp fast ogt float %77, 0.000000e+00
  %5007 = fcmp fast ogt float %78, 0.000000e+00
  %5008 = fcmp fast olt float %76, 0.000000e+00
  %5009 = fcmp fast olt float %77, 0.000000e+00
  %5010 = fcmp fast olt float %78, 0.000000e+00
  %5011 = zext i1 %5005 to i32
  %5012 = zext i1 %5006 to i32
  %5013 = zext i1 %5007 to i32
  %5014 = zext i1 %5008 to i32
  %5015 = zext i1 %5009 to i32
  %5016 = zext i1 %5010 to i32
  %5017 = sub nsw i32 %5011, %5014
  %5018 = sub nsw i32 %5012, %5015
  %5019 = sub nsw i32 %5013, %5016
  %5020 = call float @dx.op.unary.f32(i32 83, float %4986)  ; DerivCoarseX(value)
  %5021 = call float @dx.op.unary.f32(i32 83, float %4987)  ; DerivCoarseX(value)
  %5022 = call float @dx.op.unary.f32(i32 83, float %4988)  ; DerivCoarseX(value)
  %5023 = call float @dx.op.unary.f32(i32 84, float %4986)  ; DerivCoarseY(value)
  %5024 = call float @dx.op.unary.f32(i32 84, float %4987)  ; DerivCoarseY(value)
  %5025 = call float @dx.op.unary.f32(i32 84, float %4988)  ; DerivCoarseY(value)
  %5026 = fcmp fast ole float %290, %5004
  %5027 = fmul fast float %5003, %5001
  %5028 = fcmp fast ole float %290, %5027
  %5029 = select i1 %5028, float %4988, float %4986
  %5030 = select i1 %5028, float %4986, float %4987
  %5031 = select i1 %5026, float %4987, float %5029
  %5032 = select i1 %5026, float %4988, float %5030
  %5033 = select i1 %5028, float %5022, float %5020
  %5034 = select i1 %5028, float %5020, float %5021
  %5035 = select i1 %5026, float %5021, float %5033
  %5036 = select i1 %5026, float %5022, float %5034
  %5037 = select i1 %5028, float %5025, float %5023
  %5038 = select i1 %5028, float %5023, float %5024
  %5039 = select i1 %5026, float %5024, float %5037
  %5040 = select i1 %5026, float %5025, float %5038
  %5041 = call float @dx.op.unary.f32(i32 27, float %5031)  ; Round_ni(value)
  %5042 = call float @dx.op.unary.f32(i32 27, float %5032)  ; Round_ni(value)
  %5043 = fptosi float %5041 to i32
  %5044 = fptosi float %5042 to i32
  %5045 = xor i32 %5044, %5043
  %5046 = sitofp i32 %5045 to float
  %5047 = fptosi float %5046 to i32
  %5048 = sitofp i32 %5047 to float
  %5049 = fmul fast float %5048, 0x3FE3C6EF40000000
  %5050 = frem fast float %5041, 2.560000e+02
  %5051 = frem fast float %5042, 2.560000e+02
  %5052 = fptoui float %5050 to i32
  %5053 = fptoui float %5051 to i32
  %5054 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %5052, i32 %5053, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5055 = extractvalue %dx.types.ResRet.f32 %5054, 0
  %5056 = extractvalue %dx.types.ResRet.f32 %5054, 1
  %5057 = extractvalue %dx.types.ResRet.f32 %5054, 2
  %5058 = fadd fast float %5055, %5049
  %5059 = fadd fast float %5056, %5049
  %5060 = fadd fast float %5057, %5049
  %5061 = call float @dx.op.unary.f32(i32 22, float %5058)  ; Frc(value)
  %5062 = call float @dx.op.unary.f32(i32 22, float %5059)  ; Frc(value)
  %5063 = call float @dx.op.unary.f32(i32 22, float %5060)  ; Frc(value)
  %5064 = fmul fast float %5063, 0x401921FB60000000
  %5065 = call float @dx.op.unary.f32(i32 13, float %5064)  ; Sin(value)
  %5066 = call float @dx.op.unary.f32(i32 12, float %5064)  ; Cos(value)
  %5067 = fsub fast float -0.000000e+00, %5066
  %5068 = fmul fast float %5066, %5031
  %5069 = call float @dx.op.tertiary.f32(i32 46, float %5065, float %5032, float %5068)  ; FMad(a,b,c)
  %5070 = fmul fast float %5065, %5031
  %5071 = call float @dx.op.tertiary.f32(i32 46, float %5067, float %5032, float %5070)  ; FMad(a,b,c)
  %5072 = fadd fast float %5069, %5061
  %5073 = fadd fast float %5071, %5062
  %5074 = extractvalue %dx.types.CBufRet.f32 %4984, 3
  %5075 = bitcast float %5074 to i32
  %5076 = icmp eq i32 %5075, 0
  br i1 %5076, label %5115, label %5077

; <label>:5077                                    ; preds = %4980
  %5078 = add i32 %5075, 0
  %5079 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5078, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5080 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5079, %dx.types.Handle %117, float %5072, float %5073, float undef, float undef, i32 0, i32 0, i32 undef, float %5035, float %5036, float undef, float %5039, float %5040, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5081 = extractvalue %dx.types.ResRet.f32 %5080, 0
  %5082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5083 = extractvalue %dx.types.CBufRet.f32 %5082, 1
  %5084 = extractvalue %dx.types.CBufRet.f32 %5082, 2
  %5085 = fsub fast float 1.000000e+00, %4690
  %5086 = call float @dx.op.binary.f32(i32 35, float %5085, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5087 = bitcast float %4690 to i32
  %5088 = sitofp i32 %5087 to float
  %5089 = fadd fast float %5088, 0xC1CFBF8940000000
  %5090 = fmul fast float %5084, %5089
  %5091 = fadd fast float %5090, 0x41CFBF8940000000
  %5092 = fptosi float %5091 to i32
  %5093 = bitcast i32 %5092 to float
  %5094 = bitcast float %5086 to i32
  %5095 = sitofp i32 %5094 to float
  %5096 = fadd fast float %5095, 0xC1CFBF8940000000
  %5097 = fmul fast float %5096, %5084
  %5098 = fadd fast float %5097, 0x41CFBF8940000000
  %5099 = fptosi float %5098 to i32
  %5100 = bitcast i32 %5099 to float
  %5101 = fmul fast float %5093, %5083
  %5102 = fmul fast float %5100, %5083
  %5103 = fsub fast float %5086, %5101
  %5104 = fadd fast float %5102, %5086
  %5105 = call float @dx.op.unary.f32(i32 7, float %5103)  ; Saturate(value)
  %5106 = call float @dx.op.unary.f32(i32 7, float %5104)  ; Saturate(value)
  %5107 = fsub fast float %5081, %5105
  %5108 = fsub fast float %5106, %5105
  %5109 = bitcast float %5108 to i32
  %5110 = sub nsw i32 2129859010, %5109
  %5111 = bitcast i32 %5110 to float
  %5112 = fmul fast float %5111, %5107
  %5113 = call float @dx.op.unary.f32(i32 7, float %5112)  ; Saturate(value)
  %5114 = fcmp fast olt float %5113, 0x3F70101020000000
  br i1 %5114, label %5253, label %5115

; <label>:5115                                    ; preds = %5077, %4980
  %5116 = phi float [ %5113, %5077 ], [ %4690, %4980 ]
  %5117 = fmul fast float %5116, %4983
  %5118 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5119 = extractvalue %dx.types.CBufRet.i32 %5118, 1
  %5120 = extractvalue %dx.types.CBufRet.i32 %5118, 0
  %5121 = add i32 %5120, 0
  %5122 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5121, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5123 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5122, %dx.types.Handle %116, float %5072, float %5073, float undef, float undef, i32 0, i32 0, i32 undef, float %5035, float %5036, float undef, float %5039, float %5040, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5124 = extractvalue %dx.types.ResRet.f32 %5123, 0
  %5125 = extractvalue %dx.types.ResRet.f32 %5123, 1
  %5126 = extractvalue %dx.types.ResRet.f32 %5123, 2
  %5127 = extractvalue %dx.types.ResRet.f32 %5123, 3
  %5128 = and i32 %5119, 255
  %5129 = uitofp i32 %5128 to float
  %5130 = lshr i32 %5119, 8
  %5131 = and i32 %5130, 255
  %5132 = uitofp i32 %5131 to float
  %5133 = fmul fast float %5127, %5129
  %5134 = fadd fast float %5133, %5132
  %5135 = fmul fast float %5134, 0x3F70101000000000
  %5136 = fadd fast float %5135, 0xBFB99999A0000000
  %5137 = call float @dx.op.unary.f32(i32 7, float %5136)  ; Saturate(value)
  %5138 = fmul fast float %5137, 0x3FF1C71C80000000
  %5139 = call float @dx.op.binary.f32(i32 36, float %5135, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5140 = fsub fast float 1.000000e+00, %5138
  %5141 = call float @dx.op.unary.f32(i32 7, float %5140)  ; Saturate(value)
  %5142 = fmul fast float %5141, %5124
  %5143 = fmul fast float %5141, %5125
  %5144 = fmul fast float %5141, %5126
  %5145 = call float @dx.op.unary.f32(i32 7, float %5142)  ; Saturate(value)
  %5146 = call float @dx.op.unary.f32(i32 7, float %5143)  ; Saturate(value)
  %5147 = call float @dx.op.unary.f32(i32 7, float %5144)  ; Saturate(value)
  %5148 = fmul fast float %5138, %5124
  %5149 = fmul fast float %5138, %5125
  %5150 = fmul fast float %5138, %5126
  %5151 = fadd fast float %5148, %5139
  %5152 = fadd fast float %5149, %5139
  %5153 = fadd fast float %5150, %5139
  %5154 = call float @dx.op.unary.f32(i32 7, float %5151)  ; Saturate(value)
  %5155 = call float @dx.op.unary.f32(i32 7, float %5152)  ; Saturate(value)
  %5156 = call float @dx.op.unary.f32(i32 7, float %5153)  ; Saturate(value)
  %5157 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5158 = extractvalue %dx.types.CBufRet.i32 %5157, 3
  %5159 = extractvalue %dx.types.CBufRet.i32 %5157, 2
  %5160 = add i32 %5159, 0
  %5161 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5160, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5162 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5161, %dx.types.Handle %116, float %5072, float %5073, float undef, float undef, i32 0, i32 0, i32 undef, float %5035, float %5036, float undef, float %5039, float %5040, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5163 = extractvalue %dx.types.ResRet.f32 %5162, 0
  %5164 = extractvalue %dx.types.ResRet.f32 %5162, 1
  %5165 = extractvalue %dx.types.ResRet.f32 %5162, 2
  %5166 = extractvalue %dx.types.ResRet.f32 %5162, 3
  %5167 = and i32 %5158, 255
  %5168 = uitofp i32 %5167 to float
  %5169 = lshr i32 %5158, 8
  %5170 = and i32 %5169, 255
  %5171 = uitofp i32 %5170 to float
  %5172 = lshr i32 %5158, 16
  %5173 = and i32 %5172, 255
  %5174 = uitofp i32 %5173 to float
  %5175 = fmul fast float %5174, 0x3F70101000000000
  %5176 = fmul fast float %5163, %5168
  %5177 = fadd fast float %5176, %5171
  %5178 = fmul fast float %5177, 0x3F70101000000000
  %5179 = fadd fast float %5164, -5.000000e-01
  %5180 = fadd fast float %5166, -5.000000e-01
  %5181 = fmul fast float %5179, %5175
  %5182 = fmul fast float %5180, %5175
  %5183 = fadd fast float %5181, 5.000000e-01
  %5184 = fadd fast float %5182, 5.000000e-01
  %5185 = fmul fast float %5183, 2.000000e+00
  %5186 = fadd fast float %5185, -1.000000e+00
  %5187 = fmul fast float %5184, 2.000000e+00
  %5188 = fadd fast float %5187, -1.000000e+00
  %5189 = fadd fast float %5186, %5188
  %5190 = fmul fast float %5189, 5.000000e-01
  %5191 = fsub fast float %5186, %5188
  %5192 = fmul fast float %5191, 5.000000e-01
  %5193 = call float @dx.op.unary.f32(i32 6, float %5190)  ; FAbs(value)
  %5194 = fsub fast float 1.000000e+00, %5193
  %5195 = call float @dx.op.unary.f32(i32 6, float %5192)  ; FAbs(value)
  %5196 = fsub fast float %5194, %5195
  %5197 = call float @dx.op.dot3.f32(i32 55, float %5190, float %5192, float %5196, float %5190, float %5192, float %5196)  ; Dot3(ax,ay,az,bx,by,bz)
  %5198 = call float @dx.op.unary.f32(i32 25, float %5197)  ; Rsqrt(value)
  %5199 = fmul fast float %5190, %5198
  %5200 = fmul fast float %5192, %5198
  %5201 = select i1 %5028, i32 %5018, i32 %5019
  %5202 = select i1 %5026, i32 %5017, i32 %5201
  %5203 = sitofp i32 %5202 to float
  %5204 = fmul fast float %5196, %5203
  %5205 = fmul fast float %5204, %5198
  %5206 = select i1 %5028, float %5205, float %5200
  %5207 = select i1 %5028, float %5200, float %5205
  %5208 = select i1 %5026, float %5205, float %5199
  %5209 = select i1 %5026, float %5200, float %5206
  %5210 = select i1 %5026, float %5199, float %5207
  %5211 = fsub fast float %5145, %4969
  %5212 = fsub fast float %5146, %4970
  %5213 = fsub fast float %5147, %4971
  %5214 = fmul fast float %5211, %5117
  %5215 = fmul fast float %5212, %5117
  %5216 = fmul fast float %5213, %5117
  %5217 = fadd fast float %5214, %4969
  %5218 = fadd fast float %5215, %4970
  %5219 = fadd fast float %5216, %4971
  %5220 = fsub fast float %5154, %4972
  %5221 = fsub fast float %5155, %4973
  %5222 = fsub fast float %5156, %4974
  %5223 = fmul fast float %5220, %5117
  %5224 = fmul fast float %5221, %5117
  %5225 = fmul fast float %5222, %5117
  %5226 = fadd fast float %5223, %4972
  %5227 = fadd fast float %5224, %4973
  %5228 = fadd fast float %5225, %4974
  %5229 = fadd fast float %5208, %4975
  %5230 = fadd fast float %5209, %4976
  %5231 = fadd fast float %5210, %4977
  %5232 = call float @dx.op.dot3.f32(i32 55, float %5229, float %5230, float %5231, float %5229, float %5230, float %5231)  ; Dot3(ax,ay,az,bx,by,bz)
  %5233 = call float @dx.op.unary.f32(i32 25, float %5232)  ; Rsqrt(value)
  %5234 = fmul fast float %5229, %5233
  %5235 = fmul fast float %5230, %5233
  %5236 = fmul fast float %5231, %5233
  %5237 = fsub fast float %5234, %4975
  %5238 = fsub fast float %5235, %4976
  %5239 = fsub fast float %5236, %4977
  %5240 = fmul fast float %5237, %5117
  %5241 = fmul fast float %5238, %5117
  %5242 = fmul fast float %5239, %5117
  %5243 = fadd fast float %5240, %4975
  %5244 = fadd fast float %5241, %4976
  %5245 = fadd fast float %5242, %4977
  %5246 = call float @dx.op.binary.f32(i32 36, float %4979, float %5165)  ; FMin(a,b)
  %5247 = fsub fast float %5246, %4979
  %5248 = fmul fast float %5247, %5117
  %5249 = fadd fast float %5248, %4979
  %5250 = fsub fast float %5178, %4978
  %5251 = fmul fast float %5250, %5117
  %5252 = fadd fast float %5251, %4978
  br label %5253

; <label>:5253                                    ; preds = %5115, %5077, %4968, %4684
  %5254 = phi float [ %5217, %5115 ], [ %4969, %5077 ], [ %4969, %4968 ], [ %4293, %4684 ]
  %5255 = phi float [ %5218, %5115 ], [ %4970, %5077 ], [ %4970, %4968 ], [ %4294, %4684 ]
  %5256 = phi float [ %5219, %5115 ], [ %4971, %5077 ], [ %4971, %4968 ], [ %4295, %4684 ]
  %5257 = phi float [ %5226, %5115 ], [ %4972, %5077 ], [ %4972, %4968 ], [ %4278, %4684 ]
  %5258 = phi float [ %5227, %5115 ], [ %4973, %5077 ], [ %4973, %4968 ], [ %4279, %4684 ]
  %5259 = phi float [ %5228, %5115 ], [ %4974, %5077 ], [ %4974, %4968 ], [ %4280, %4684 ]
  %5260 = phi float [ %5243, %5115 ], [ %4975, %5077 ], [ %4975, %4968 ], [ %4241, %4684 ]
  %5261 = phi float [ %5244, %5115 ], [ %4976, %5077 ], [ %4976, %4968 ], [ %4242, %4684 ]
  %5262 = phi float [ %5245, %5115 ], [ %4977, %5077 ], [ %4977, %4968 ], [ %4243, %4684 ]
  %5263 = phi float [ %5252, %5115 ], [ %4978, %5077 ], [ %4978, %4968 ], [ %4281, %4684 ]
  %5264 = phi float [ %5249, %5115 ], [ %4979, %5077 ], [ %4979, %4968 ], [ %4253, %4684 ]
  %5265 = fcmp fast une float %4688, 0.000000e+00
  br i1 %5265, label %5266, label %5435

; <label>:5266                                    ; preds = %5253
  %5267 = call float @dx.op.dot3.f32(i32 55, float %207, float %208, float %209, float %207, float %208, float %209)  ; Dot3(ax,ay,az,bx,by,bz)
  %5268 = call float @dx.op.unary.f32(i32 25, float %5267)  ; Rsqrt(value)
  %5269 = fmul fast float %207, %5268
  %5270 = fsub fast float -0.000000e+00, %5269
  %5271 = fmul fast float %208, %5268
  %5272 = fsub fast float -0.000000e+00, %5271
  %5273 = fmul fast float %209, %5268
  %5274 = fsub fast float -0.000000e+00, %5273
  %5275 = call float @dx.op.dot3.f32(i32 55, float %5270, float %5272, float %5274, float %127, float %128, float %129)  ; Dot3(ax,ay,az,bx,by,bz)
  %5276 = fmul fast float %4688, 2.500000e+00
  %5277 = call float @dx.op.unary.f32(i32 7, float %5276)  ; Saturate(value)
  %5278 = fmul fast float %4688, 0x4013FFFFE0000000
  %5279 = fadd fast float %5278, 0xBFFFFFFFE0000000
  %5280 = call float @dx.op.unary.f32(i32 7, float %5279)  ; Saturate(value)
  %5281 = fmul fast float %4688, 0x4004000020000000
  %5282 = fadd fast float %5281, 0xBFF8000040000000
  %5283 = call float @dx.op.unary.f32(i32 7, float %5282)  ; Saturate(value)
  %5284 = fmul fast float %4260, 1.000000e+01
  %5285 = call float @dx.op.unary.f32(i32 7, float %5284)  ; Saturate(value)
  %5286 = fmul fast float %5285, 2.000000e+00
  %5287 = fsub fast float 3.000000e+00, %5286
  %5288 = fmul fast float %5285, %5285
  %5289 = fmul fast float %5288, %5287
  %5290 = fsub fast float 1.000000e+00, %5289
  %5291 = fsub fast float 0x3FE3333340000000, %5263
  %5292 = fmul fast float %5291, 0x400AAAAAA0000000
  %5293 = call float @dx.op.unary.f32(i32 7, float %5292)  ; Saturate(value)
  %5294 = fmul fast float %5290, %5293
  %5295 = fmul fast float %5254, 0x3FEA2B8620000000
  %5296 = fmul fast float %5255, 0x3FEA2B8620000000
  %5297 = fmul fast float %5256, 0x3FEA2B8620000000
  %5298 = fadd fast float %5295, 0x3FC81DFBA0000000
  %5299 = fmul fast float %5298, %5254
  %5300 = fadd fast float %5299, 0x3F910E6020000000
  %5301 = fadd fast float %5296, 0x3FC81DFBA0000000
  %5302 = fmul fast float %5301, %5255
  %5303 = fadd fast float %5302, 0x3F910E6020000000
  %5304 = fadd fast float %5297, 0x3FC81DFBA0000000
  %5305 = fmul fast float %5304, %5256
  %5306 = fadd fast float %5305, 0x3F910E6020000000
  %5307 = call float @dx.op.unary.f32(i32 7, float %5300)  ; Saturate(value)
  %5308 = call float @dx.op.unary.f32(i32 7, float %5303)  ; Saturate(value)
  %5309 = call float @dx.op.unary.f32(i32 7, float %5306)  ; Saturate(value)
  %5310 = fsub fast float %5307, %5254
  %5311 = fsub fast float %5308, %5255
  %5312 = fsub fast float %5309, %5256
  %5313 = fmul fast float %5310, %5277
  %5314 = fmul fast float %5313, %5294
  %5315 = fmul fast float %5311, %5277
  %5316 = fmul fast float %5315, %5294
  %5317 = fmul fast float %5312, %5277
  %5318 = fmul fast float %5317, %5294
  %5319 = fadd fast float %5314, %5254
  %5320 = fadd fast float %5316, %5255
  %5321 = fadd fast float %5318, %5256
  %5322 = fmul fast float %5264, %5264
  %5323 = fmul fast float %5322, %5322
  %5324 = fadd fast float %5280, 1.000000e+00
  %5325 = fsub fast float %5324, %5294
  %5326 = call float @dx.op.unary.f32(i32 7, float %5325)  ; Saturate(value)
  %5327 = call float @dx.op.dot3.f32(i32 55, float %127, float %128, float %129, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5328 = call float @dx.op.unary.f32(i32 7, float %5327)  ; Saturate(value)
  %5329 = fsub fast float 1.000000e+00, %5323
  %5330 = call float @dx.op.binary.f32(i32 36, float %5326, float %5329)  ; FMin(a,b)
  %5331 = call float @dx.op.unary.f32(i32 7, float %5283)  ; Saturate(value)
  %5332 = call float @dx.op.binary.f32(i32 35, float %5330, float %5331)  ; FMax(a,b)
  %5333 = fadd fast float %5328, 0xBFE4CCCCC0000000
  %5334 = fmul fast float %5333, 0x4006DB6DA0000000
  %5335 = call float @dx.op.unary.f32(i32 7, float %5334)  ; Saturate(value)
  %5336 = fmul fast float %5335, 2.000000e+00
  %5337 = fsub fast float 3.000000e+00, %5336
  %5338 = bitcast float %5257 to i32
  %5339 = ashr i32 %5338, 1
  %5340 = add nsw i32 %5339, 532487669
  %5341 = bitcast i32 %5340 to float
  %5342 = fsub fast float 1.000000e+00, %5341
  %5343 = bitcast float %5342 to i32
  %5344 = sub nsw i32 2129859010, %5343
  %5345 = bitcast i32 %5344 to float
  %5346 = fmul fast float %5345, 2.000000e+00
  %5347 = bitcast float %5258 to i32
  %5348 = ashr i32 %5347, 1
  %5349 = add nsw i32 %5348, 532487669
  %5350 = bitcast i32 %5349 to float
  %5351 = fsub fast float 1.000000e+00, %5350
  %5352 = bitcast float %5351 to i32
  %5353 = sub nsw i32 2129859010, %5352
  %5354 = bitcast i32 %5353 to float
  %5355 = fmul fast float %5354, 2.000000e+00
  %5356 = bitcast float %5259 to i32
  %5357 = ashr i32 %5356, 1
  %5358 = add nsw i32 %5357, 532487669
  %5359 = bitcast i32 %5358 to float
  %5360 = fsub fast float 1.000000e+00, %5359
  %5361 = bitcast float %5360 to i32
  %5362 = sub nsw i32 2129859010, %5361
  %5363 = bitcast i32 %5362 to float
  %5364 = fmul fast float %5363, 2.000000e+00
  %5365 = fsub fast float 0x4002A9FBE0000000, %5346
  %5366 = fadd fast float %5346, 0x3FD54FDF00000000
  %5367 = bitcast float %5366 to i32
  %5368 = sub nsw i32 2129859010, %5367
  %5369 = bitcast i32 %5368 to float
  %5370 = fmul fast float %5369, %5365
  %5371 = fmul fast float %5370, %5370
  %5372 = fsub fast float 0x4002A9FBE0000000, %5355
  %5373 = fadd fast float %5355, 0x3FD54FDF00000000
  %5374 = bitcast float %5373 to i32
  %5375 = sub nsw i32 2129859010, %5374
  %5376 = bitcast i32 %5375 to float
  %5377 = fmul fast float %5376, %5372
  %5378 = fmul fast float %5377, %5377
  %5379 = fsub fast float 0x4002A9FBE0000000, %5364
  %5380 = fadd fast float %5364, 0x3FD54FDF00000000
  %5381 = bitcast float %5380 to i32
  %5382 = sub nsw i32 2129859010, %5381
  %5383 = bitcast i32 %5382 to float
  %5384 = fmul fast float %5383, %5379
  %5385 = fmul fast float %5384, %5384
  %5386 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5371)  ; FMax(a,b)
  %5387 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5378)  ; FMax(a,b)
  %5388 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5385)  ; FMax(a,b)
  %5389 = fsub fast float 1.000000e+00, %5275
  %5390 = fadd fast float %5389, %5290
  %5391 = call float @dx.op.unary.f32(i32 7, float %5390)  ; Saturate(value)
  %5392 = fsub fast float 1.000000e+00, %4669
  %5393 = fmul fast float %5332, %5392
  %5394 = fmul fast float %5335, %5335
  %5395 = fmul fast float %5394, %5393
  %5396 = fmul fast float %5395, %5337
  %5397 = fmul fast float %5392, 0xBFE99999A0000000
  %5398 = fmul fast float %5397, %5277
  %5399 = fmul fast float %5398, %5294
  %5400 = fadd fast float %5399, 1.000000e+00
  %5401 = fadd fast float %5263, -1.000000e+00
  %5402 = fmul fast float %5400, %5401
  %5403 = fadd fast float %5402, 1.000000e+00
  %5404 = fsub fast float %5386, %5257
  %5405 = fsub fast float %5387, %5258
  %5406 = fsub fast float %5388, %5259
  %5407 = fmul fast float %5396, %5404
  %5408 = fmul fast float %5396, %5405
  %5409 = fmul fast float %5396, %5406
  %5410 = fadd fast float %5407, %5257
  %5411 = fadd fast float %5408, %5258
  %5412 = fadd fast float %5409, %5259
  %5413 = fsub fast float %127, %5260
  %5414 = fsub fast float %128, %5261
  %5415 = fsub fast float %129, %5262
  %5416 = fmul fast float %5396, %5413
  %5417 = fmul fast float %5396, %5414
  %5418 = fmul fast float %5396, %5415
  %5419 = fadd fast float %5416, %5260
  %5420 = fadd fast float %5417, %5261
  %5421 = fadd fast float %5418, %5262
  %5422 = fmul fast float %5396, %5391
  %5423 = call float @dx.op.unary.f32(i32 7, float %5403)  ; Saturate(value)
  %5424 = fsub fast float 1.000000e+00, %5423
  %5425 = fmul fast float %5422, %5424
  %5426 = fadd fast float %5425, %5423
  %5427 = fsub fast float 1.000000e+00, %5264
  %5428 = fmul fast float %5396, %5427
  %5429 = fadd fast float %5428, %5264
  %5430 = call float @dx.op.dot3.f32(i32 55, float %5419, float %5420, float %5421, float %5419, float %5420, float %5421)  ; Dot3(ax,ay,az,bx,by,bz)
  %5431 = call float @dx.op.unary.f32(i32 25, float %5430)  ; Rsqrt(value)
  %5432 = fmul fast float %5419, %5431
  %5433 = fmul fast float %5420, %5431
  %5434 = fmul fast float %5421, %5431
  br label %5435

; <label>:5435                                    ; preds = %5266, %5253
  %5436 = phi float [ %5319, %5266 ], [ %5254, %5253 ]
  %5437 = phi float [ %5320, %5266 ], [ %5255, %5253 ]
  %5438 = phi float [ %5321, %5266 ], [ %5256, %5253 ]
  %5439 = phi float [ %5410, %5266 ], [ %5257, %5253 ]
  %5440 = phi float [ %5411, %5266 ], [ %5258, %5253 ]
  %5441 = phi float [ %5412, %5266 ], [ %5259, %5253 ]
  %5442 = phi float [ %5432, %5266 ], [ %5260, %5253 ]
  %5443 = phi float [ %5433, %5266 ], [ %5261, %5253 ]
  %5444 = phi float [ %5434, %5266 ], [ %5262, %5253 ]
  %5445 = phi float [ %5426, %5266 ], [ %5263, %5253 ]
  %5446 = phi float [ %5429, %5266 ], [ %5264, %5253 ]
  %5447 = icmp eq i32 %64, 0
  br i1 %5447, label %5478, label %5448

; <label>:5448                                    ; preds = %5435
  %5449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5450 = extractvalue %dx.types.CBufRet.f32 %5449, 2
  %5451 = extractvalue %dx.types.CBufRet.f32 %5449, 3
  %5452 = fmul fast float %5450, %120
  %5453 = fmul fast float %5451, %121
  %5454 = fmul fast float %5452, 1.024000e+03
  %5455 = fmul fast float %5453, 1.024000e+03
  %5456 = fadd fast float %5454, -5.120000e+02
  %5457 = fadd fast float %5455, -5.120000e+02
  %5458 = fmul fast float %5452, 0x4081BEDF00000000
  %5459 = fadd fast float %5458, 0xC071BEDF00000000
  %5460 = call float @dx.op.unary.f32(i32 22, float %5459)  ; Frc(value)
  %5461 = fmul fast float %5456, %5460
  %5462 = fadd fast float %5461, %5457
  %5463 = fmul fast float %5453, 0x4073BEBE20000000
  %5464 = fadd fast float %5463, 0xC063BEBE20000000
  %5465 = call float @dx.op.unary.f32(i32 22, float %5464)  ; Frc(value)
  %5466 = fmul fast float %5457, %5465
  %5467 = fadd fast float %5466, %5456
  %5468 = fmul fast float %5462, %5467
  %5469 = call float @dx.op.unary.f32(i32 22, float %5468)  ; Frc(value)
  %5470 = add i32 %333, 12
  %5471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %5470, i32 undef)  ; BufferLoad(srv,index,wot)
  %5472 = extractvalue %dx.types.ResRet.i32 %5471, 0
  %5473 = and i32 %5472, 255
  %5474 = uitofp i32 %5473 to float
  %5475 = fmul fast float %5474, 0x3F70101020000000
  %5476 = fcmp fast olt float %5469, %5475
  br i1 %5476, label %5477, label %5478

; <label>:5477                                    ; preds = %5448
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %5478

; <label>:5478                                    ; preds = %5477, %5448, %5435
  %5479 = fsub fast float -0.000000e+00, %209
  %5480 = call float @dx.op.dot3.f32(i32 55, float %207, float %208, float %209, float %207, float %208, float %209)  ; Dot3(ax,ay,az,bx,by,bz)
  %5481 = call float @dx.op.unary.f32(i32 25, float %5480)  ; Rsqrt(value)
  %5482 = fmul fast float %5481, %207
  %5483 = fmul fast float %5481, %208
  %5484 = fmul fast float %5481, %209
  %5485 = fsub fast float -0.000000e+00, %5482
  %5486 = fsub fast float -0.000000e+00, %5483
  %5487 = fsub fast float -0.000000e+00, %5484
  %5488 = select i1 %279, float 0.000000e+00, float %5441
  %5489 = call float @dx.op.dot3.f32(i32 55, float %5442, float %5443, float %5444, float %5485, float %5486, float %5487)  ; Dot3(ax,ay,az,bx,by,bz)
  %5490 = call float @dx.op.unary.f32(i32 7, float %5489)  ; Saturate(value)
  %5491 = call float @dx.op.dot3.f32(i32 55, float %5482, float %5483, float %5484, float %5442, float %5443, float %5444)  ; Dot3(ax,ay,az,bx,by,bz)
  %5492 = fmul fast float %5491, 2.000000e+00
  %5493 = fmul fast float %5492, %5442
  %5494 = fmul fast float %5492, %5443
  %5495 = fmul fast float %5492, %5444
  %5496 = fsub fast float %5482, %5493
  %5497 = fsub fast float %5483, %5494
  %5498 = fsub fast float %5484, %5495
  %5499 = call float @dx.op.binary.f32(i32 36, float %5446, float 1.000000e+00)  ; FMin(a,b)
  %5500 = fsub fast float 1.000000e+00, %5499
  %5501 = bitcast float %5500 to i32
  %5502 = ashr i32 %5501, 1
  %5503 = add nsw i32 %5502, 532487669
  %5504 = bitcast i32 %5503 to float
  %5505 = fsub fast float 1.000000e+00, %5445
  %5506 = call float @dx.op.binary.f32(i32 35, float %5505, float 0x3F847AE140000000)  ; FMax(a,b)
  %5507 = fmul fast float %5506, %5506
  %5508 = fmul fast float %5507, %5507
  %5509 = call float @dx.op.unary.f32(i32 7, float %5490)  ; Saturate(value)
  %5510 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %56, float %5504, float %5508, float %5509, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5511 = extractvalue %dx.types.ResRet.f32 %5510, 0
  %5512 = fsub fast float 1.000000e+00, %5446
  %5513 = bitcast float %5512 to i32
  %5514 = sub nsw i32 2129859010, %5513
  %5515 = fsub fast float 1.000000e+00, %87
  %5516 = call float @dx.op.dot3.f32(i32 55, float %147, float %148, float %149, float %127, float %128, float %129)  ; Dot3(ax,ay,az,bx,by,bz)
  %5517 = call float @dx.op.binary.f32(i32 35, float %5516, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5518 = fdiv fast float %5515, %5517
  %5519 = call float @dx.op.dot3.f32(i32 55, float %5442, float %5443, float %5444, float %127, float %128, float %129)  ; Dot3(ax,ay,az,bx,by,bz)
  %5520 = call float @dx.op.unary.f32(i32 7, float %5519)  ; Saturate(value)
  %5521 = fmul fast float %5520, 5.000000e-01
  %5522 = fadd fast float %5521, 5.000000e-01
  %5523 = fmul fast float %5522, %87
  %5524 = call float @dx.op.dot3.f32(i32 55, float %5442, float %5443, float %5444, float %147, float %148, float %149)  ; Dot3(ax,ay,az,bx,by,bz)
  %5525 = call float @dx.op.unary.f32(i32 7, float %5524)  ; Saturate(value)
  %5526 = fmul fast float %5525, %5518
  %5527 = fadd fast float %5523, %5526
  %5528 = fsub fast float 5.000000e-01, %5521
  %5529 = fmul fast float %5528, %5436
  %5530 = fmul fast float %5528, %5437
  %5531 = fmul fast float %5528, %5438
  %5532 = fadd fast float %5527, %5529
  %5533 = fadd fast float %5527, %5530
  %5534 = fadd fast float %5527, %5531
  %5535 = call float @dx.op.dot3.f32(i32 55, float %5496, float %5497, float %5498, float %127, float %128, float %129)  ; Dot3(ax,ay,az,bx,by,bz)
  %5536 = call float @dx.op.unary.f32(i32 7, float %5535)  ; Saturate(value)
  %5537 = fmul fast float %5536, 5.000000e-01
  %5538 = fadd fast float %5537, 5.000000e-01
  %5539 = fmul fast float %5538, %87
  %5540 = call float @dx.op.dot3.f32(i32 55, float %5496, float %5497, float %5498, float %147, float %148, float %149)  ; Dot3(ax,ay,az,bx,by,bz)
  %5541 = call float @dx.op.unary.f32(i32 7, float %5540)  ; Saturate(value)
  %5542 = fmul fast float %5541, %5518
  %5543 = fadd fast float %5539, %5542
  %5544 = fsub fast float 5.000000e-01, %5537
  %5545 = fmul fast float %5544, %5436
  %5546 = fmul fast float %5544, %5437
  %5547 = fmul fast float %5544, %5438
  %5548 = fadd fast float %5543, %5545
  %5549 = fadd fast float %5543, %5546
  %5550 = fadd fast float %5543, %5547
  %5551 = call float @dx.op.dot3.f32(i32 55, float %88, float %89, float %90, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5553 = extractvalue %dx.types.CBufRet.f32 %5552, 0
  %5554 = call float @dx.op.binary.f32(i32 36, float %5436, float %5553)  ; FMin(a,b)
  %5555 = fmul fast float %5554, %5500
  %5556 = fsub fast float 1.000000e+00, %5555
  %5557 = bitcast float %5556 to i32
  %5558 = sub nsw i32 2129859010, %5557
  %5559 = bitcast i32 %5558 to float
  %5560 = call float @dx.op.binary.f32(i32 36, float %5437, float %5553)  ; FMin(a,b)
  %5561 = fmul fast float %5560, %5500
  %5562 = fsub fast float 1.000000e+00, %5561
  %5563 = bitcast float %5562 to i32
  %5564 = sub nsw i32 2129859010, %5563
  %5565 = bitcast i32 %5564 to float
  %5566 = call float @dx.op.binary.f32(i32 36, float %5438, float %5553)  ; FMin(a,b)
  %5567 = fmul fast float %5566, %5500
  %5568 = fsub fast float 1.000000e+00, %5567
  %5569 = bitcast float %5568 to i32
  %5570 = sub nsw i32 2129859010, %5569
  %5571 = bitcast i32 %5570 to float
  %5572 = fmul fast float %5499, %88
  %5573 = fmul fast float %5572, %5532
  %5574 = fmul fast float %5573, %5559
  %5575 = fmul fast float %5499, %89
  %5576 = fmul fast float %5575, %5533
  %5577 = fmul fast float %5576, %5565
  %5578 = fmul fast float %5499, %90
  %5579 = fmul fast float %5578, %5534
  %5580 = fmul fast float %5579, %5571
  %5581 = call float @dx.op.binary.f32(i32 36, float %5439, float %5553)  ; FMin(a,b)
  %5582 = fmul fast float %5581, %5500
  %5583 = fsub fast float 1.000000e+00, %5582
  %5584 = bitcast float %5583 to i32
  %5585 = sub nsw i32 2129859010, %5584
  %5586 = bitcast i32 %5585 to float
  %5587 = call float @dx.op.binary.f32(i32 36, float %5440, float %5553)  ; FMin(a,b)
  %5588 = fmul fast float %5587, %5500
  %5589 = fsub fast float 1.000000e+00, %5588
  %5590 = bitcast float %5589 to i32
  %5591 = sub nsw i32 2129859010, %5590
  %5592 = bitcast i32 %5591 to float
  %5593 = call float @dx.op.binary.f32(i32 36, float %5488, float %5553)  ; FMin(a,b)
  %5594 = fmul fast float %5593, %5500
  %5595 = fsub fast float 1.000000e+00, %5594
  %5596 = bitcast float %5595 to i32
  %5597 = sub nsw i32 2129859010, %5596
  %5598 = bitcast i32 %5597 to float
  %5599 = fmul fast float %5572, %5548
  %5600 = fmul fast float %5599, %5586
  %5601 = fmul fast float %5575, %5549
  %5602 = fmul fast float %5601, %5592
  %5603 = fmul fast float %5578, %5550
  %5604 = fmul fast float %5603, %5598
  %5605 = call float @dx.op.dot3.f32(i32 55, float %5574, float %5577, float %5580, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5606 = select i1 %279, float 0.000000e+00, float %5574
  %5607 = select i1 %279, float %5605, float %5577
  %5608 = select i1 %279, float 0.000000e+00, float %5580
  %5609 = call float @dx.op.dot3.f32(i32 55, float %5600, float %5602, float %5604, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5610 = select i1 %279, float 0.000000e+00, float %5600
  %5611 = select i1 %279, float %5609, float %5602
  %5612 = select i1 %279, float 0.000000e+00, float %5604
  %5613 = call float @dx.op.unary.f32(i32 6, float %83)  ; FAbs(value)
  %5614 = fmul fast float %5613, %5606
  %5615 = fmul fast float %5613, %5607
  %5616 = fmul fast float %5608, %5613
  %5617 = fmul fast float %5490, 9.843750e-01
  %5618 = fmul fast float %5445, 9.843750e-01
  %5619 = fadd fast float %5617, 7.812500e-03
  %5620 = fadd fast float %5618, 7.812500e-03
  %5621 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %56, float %5619, float %5620, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5622 = extractvalue %dx.types.ResRet.f32 %5621, 2
  %5623 = extractvalue %dx.types.ResRet.f32 %5621, 3
  %5624 = fmul fast float %5622, %5439
  %5625 = fmul fast float %5622, %5440
  %5626 = fmul fast float %5622, %5488
  %5627 = fadd fast float %5624, %5623
  %5628 = fadd fast float %5625, %5623
  %5629 = fadd fast float %5626, %5623
  %5630 = fcmp fast ogt float %4254, 0.000000e+00
  br i1 %5630, label %5631, label %5657

; <label>:5631                                    ; preds = %5478
  %5632 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %56, float %4254, float %5490, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5633 = extractvalue %dx.types.ResRet.f32 %5632, 0
  %5634 = extractvalue %dx.types.ResRet.f32 %5632, 1
  %5635 = extractvalue %dx.types.ResRet.f32 %5632, 2
  %5636 = fadd fast float %5633, -5.000000e-01
  %5637 = fadd fast float %5634, -5.000000e-01
  %5638 = fadd fast float %5635, -5.000000e-01
  %5639 = fsub fast float 1.000000e+00, %5439
  %5640 = fsub fast float 1.000000e+00, %5440
  %5641 = fsub fast float 1.000000e+00, %5488
  %5642 = fmul fast float %5439, 4.000000e+00
  %5643 = fmul fast float %5642, %5639
  %5644 = fmul fast float %5643, %5636
  %5645 = fmul fast float %5440, 4.000000e+00
  %5646 = fmul fast float %5645, %5640
  %5647 = fmul fast float %5646, %5637
  %5648 = fmul fast float %5488, 4.000000e+00
  %5649 = fmul fast float %5648, %5641
  %5650 = fmul fast float %5649, %5638
  %5651 = fadd fast float %5644, %5627
  %5652 = fadd fast float %5647, %5628
  %5653 = fadd fast float %5650, %5629
  %5654 = call float @dx.op.unary.f32(i32 7, float %5651)  ; Saturate(value)
  %5655 = call float @dx.op.unary.f32(i32 7, float %5652)  ; Saturate(value)
  %5656 = call float @dx.op.unary.f32(i32 7, float %5653)  ; Saturate(value)
  br label %5657

; <label>:5657                                    ; preds = %5631, %5478
  %5658 = phi float [ %5654, %5631 ], [ %5627, %5478 ]
  %5659 = phi float [ %5655, %5631 ], [ %5628, %5478 ]
  %5660 = phi float [ %5656, %5631 ], [ %5629, %5478 ]
  %5661 = call float @dx.op.binary.f32(i32 35, float %5659, float %5660)  ; FMax(a,b)
  %5662 = call float @dx.op.binary.f32(i32 35, float %5658, float %5661)  ; FMax(a,b)
  %5663 = fsub fast float 1.000000e+00, %5662
  %5664 = fmul fast float %5662, %5445
  %5665 = fadd fast float %5664, %5445
  %5666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5667 = extractvalue %dx.types.CBufRet.f32 %5666, 2
  %5668 = extractvalue %dx.types.CBufRet.f32 %5666, 3
  %5669 = fmul fast float %5665, %5667
  %5670 = fadd fast float %5669, %5668
  %5671 = call float @dx.op.unary.f32(i32 7, float %5670)  ; Saturate(value)
  %5672 = fsub fast float 1.000000e+00, %5511
  %5673 = fadd fast float %5672, %5671
  %5674 = call float @dx.op.unary.f32(i32 7, float %5673)  ; Saturate(value)
  %5675 = fcmp fast olt float %5674, 1.000000e+00
  br i1 %5675, label %5676, label %6152

; <label>:5676                                    ; preds = %5657
  %5677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5678 = extractvalue %dx.types.CBufRet.f32 %5677, 2
  %5679 = extractvalue %dx.types.CBufRet.f32 %5677, 3
  %5680 = fmul fast float %5678, %120
  %5681 = fmul fast float %5679, %121
  %5682 = fptoui float %5680 to i32
  %5683 = fptoui float %5681 to i32
  %5684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5685 = extractvalue %dx.types.CBufRet.f32 %5684, 0
  %5686 = extractvalue %dx.types.CBufRet.f32 %5684, 2
  %5687 = extractvalue %dx.types.CBufRet.f32 %5684, 3
  %5688 = fadd fast float %107, -4.000000e+00
  %5689 = call float @dx.op.binary.f32(i32 35, float %5688, float 0.000000e+00)  ; FMax(a,b)
  %5690 = fadd fast float %5689, %5685
  %5691 = fmul fast float %5690, %5686
  %5692 = call float @dx.op.unary.f32(i32 23, float %5691)  ; Log(value)
  %5693 = fmul fast float %5692, %5687
  %5694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5695 = extractvalue %dx.types.CBufRet.f32 %5694, 2
  %5696 = fmul fast float %5693, %5695
  %5697 = call float @dx.op.unary.f32(i32 7, float %5696)  ; Saturate(value)
  %5698 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5699 = extractvalue %dx.types.CBufRet.i32 %5698, 1
  %5700 = add i32 %5699, -1
  %5701 = uitofp i32 %5699 to float
  %5702 = fmul fast float %5701, %5697
  %5703 = fptoui float %5702 to i32
  %5704 = call i32 @dx.op.binary.i32(i32 40, i32 %5703, i32 %5700)  ; UMin(a,b)
  %5705 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5706 = extractvalue %dx.types.CBufRet.i32 %5705, 2
  %5707 = extractvalue %dx.types.CBufRet.i32 %5705, 3
  %5708 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5683, i32 %5706, i32 %5682)  ; UMad(a,b,c)
  %5709 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5704, i32 %5707, i32 %5708)  ; UMad(a,b,c)
  %5710 = call float @dx.op.binary.f32(i32 35, float %107, float 0.000000e+00)  ; FMax(a,b)
  %5711 = fptoui float %5710 to i32
  %5712 = lshr i32 %5711, 5
  %5713 = call i32 @dx.op.binary.i32(i32 40, i32 %5712, i32 8191)  ; UMin(a,b)
  %5714 = fsub fast float %4656, %209
  %5715 = call float @dx.op.unary.f32(i32 7, float %5714)  ; Saturate(value)
  %5716 = fcmp fast ogt float %5715, 0.000000e+00
  %5717 = fcmp fast ogt float %5498, 0.000000e+00
  %5718 = and i1 %5717, %5716
  br i1 %5718, label %5719, label %5748

; <label>:5719                                    ; preds = %5676
  %5720 = call float @dx.op.dot3.f32(i32 55, float %5496, float %5497, float %5498, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5721 = call float @dx.op.binary.f32(i32 35, float %5720, float -1.000000e+00)  ; FMax(a,b)
  %5722 = call float @dx.op.binary.f32(i32 36, float %5721, float 1.000000e+00)  ; FMin(a,b)
  %5723 = fmul fast float %5722, %5722
  %5724 = fsub fast float 1.000000e+00, %5723
  %5725 = fmul fast float %5724, 0x3FFC6E2300000000
  %5726 = fsub fast float 1.000000e+00, %5725
  %5727 = fcmp fast ogt float %5726, 0.000000e+00
  %5728 = call float @dx.op.unary.f32(i32 24, float %5726)  ; Sqrt(value)
  %5729 = fsub fast float 1.000000e+00, %5728
  %5730 = call float @dx.op.unary.f32(i32 23, float %5729)  ; Log(value)
  %5731 = fmul fast float %5730, 5.000000e+00
  %5732 = call float @dx.op.unary.f32(i32 21, float %5731)  ; Exp(value)
  %5733 = fmul fast float %5732, 0x3FEF591A60000000
  %5734 = fadd fast float %5733, 0x3F94DCB540000000
  %5735 = select i1 %5727, float %5734, float 1.000000e+00
  %5736 = fcmp fast oge float %5735, 1.000000e+00
  %5737 = fmul fast float %5720, 2.000000e+00
  %5738 = fadd fast float %5737, %5498
  %5739 = select i1 %5736, float %5738, float %5498
  %5740 = fsub fast float %5739, %5498
  %5741 = fmul fast float %5740, %5715
  %5742 = fadd fast float %5741, %5498
  %5743 = call float @dx.op.dot3.f32(i32 55, float %5496, float %5497, float %5742, float %5496, float %5497, float %5742)  ; Dot3(ax,ay,az,bx,by,bz)
  %5744 = call float @dx.op.unary.f32(i32 25, float %5743)  ; Rsqrt(value)
  %5745 = fmul fast float %5744, %5496
  %5746 = fmul fast float %5744, %5497
  %5747 = fmul fast float %5742, %5744
  br label %5748

; <label>:5748                                    ; preds = %5719, %5676
  %5749 = phi float [ %5745, %5719 ], [ %5496, %5676 ]
  %5750 = phi float [ %5746, %5719 ], [ %5497, %5676 ]
  %5751 = phi float [ %5747, %5719 ], [ %5498, %5676 ]
  %5752 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5753 = extractvalue %dx.types.CBufRet.i32 %5752, 2
  %5754 = add nsw i32 %5753, -1
  %5755 = call i32 @dx.op.binary.i32(i32 37, i32 %5754, i32 0)  ; IMax(a,b)
  %5756 = shl i32 %5713, 2
  %5757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %5756, i32 undef)  ; BufferLoad(srv,index,wot)
  %5758 = extractvalue %dx.types.ResRet.i32 %5757, 0
  %5759 = lshr i32 %5758, 16
  %5760 = and i32 %5758, 65535
  %5761 = lshr i32 %5758, 21
  %5762 = lshr i32 %5760, 5
  %5763 = call i32 @dx.op.binary.i32(i32 40, i32 %5762, i32 %5755)  ; UMin(a,b)
  %5764 = icmp ugt i32 %5761, %5763
  br i1 %5764, label %6128, label %5765

; <label>:5765                                    ; preds = %5748
  br label %5766

; <label>:5766                                    ; preds = %6120, %5765
  %5767 = phi float [ %6121, %6120 ], [ 0.000000e+00, %5765 ]
  %5768 = phi float [ %6122, %6120 ], [ 0.000000e+00, %5765 ]
  %5769 = phi float [ %6123, %6120 ], [ 0.000000e+00, %5765 ]
  %5770 = phi float [ %6124, %6120 ], [ 1.000000e+00, %5765 ]
  %5771 = phi i32 [ %6125, %6120 ], [ %5761, %5765 ]
  %5772 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5773 = extractvalue %dx.types.CBufRet.i32 %5772, 2
  %5774 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5709, i32 %5773, i32 %5771)  ; UMad(a,b,c)
  %5775 = shl i32 %5774, 2
  %5776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5775, i32 undef)  ; BufferLoad(srv,index,wot)
  %5777 = extractvalue %dx.types.ResRet.i32 %5776, 0
  %5778 = shl i32 %5771, 5
  %5779 = sub nsw i32 %5759, %5778
  %5780 = call i32 @dx.op.binary.i32(i32 37, i32 %5779, i32 0)  ; IMax(a,b)
  %5781 = call i32 @dx.op.binary.i32(i32 38, i32 %5780, i32 31)  ; IMin(a,b)
  %5782 = sub nsw i32 1, %5759
  %5783 = add nsw i32 %5782, %5760
  %5784 = call i32 @dx.op.binary.i32(i32 37, i32 %5783, i32 0)  ; IMax(a,b)
  %5785 = call i32 @dx.op.binary.i32(i32 38, i32 %5784, i32 32)  ; IMin(a,b)
  %5786 = and i32 %5785, 31
  %5787 = shl i32 -1, %5786
  %5788 = xor i32 %5787, -1
  %5789 = and i32 %5781, 31
  %5790 = shl i32 %5788, %5789
  %5791 = icmp eq i32 %5785, 32
  %5792 = select i1 %5791, i32 -1, i32 %5790
  %5793 = and i32 %5792, %5777
  %5794 = icmp eq i32 %5793, 0
  br i1 %5794, label %6120, label %5795

; <label>:5795                                    ; preds = %5766
  br label %5796

; <label>:5796                                    ; preds = %5903, %5795
  %5797 = phi float [ %5904, %5903 ], [ %5767, %5795 ]
  %5798 = phi float [ %5905, %5903 ], [ %5768, %5795 ]
  %5799 = phi float [ %5906, %5903 ], [ %5769, %5795 ]
  %5800 = phi float [ %5907, %5903 ], [ %5770, %5795 ]
  %5801 = phi i32 [ %5806, %5903 ], [ %5793, %5795 ]
  %5802 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5801)  ; FirstbitLo(value)
  %5803 = add i32 %5802, %5778
  %5804 = and i32 %5802, 31
  %5805 = shl i32 1, %5804
  %5806 = xor i32 %5805, %5801
  %5807 = mul i32 %5803, 72
  %5808 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5807, i32 undef)  ; BufferLoad(srv,index,wot)
  %5809 = extractvalue %dx.types.ResRet.f32 %5808, 0
  %5810 = extractvalue %dx.types.ResRet.f32 %5808, 1
  %5811 = extractvalue %dx.types.ResRet.f32 %5808, 2
  %5812 = add i32 %5807, 12
  %5813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %5812, i32 undef)  ; BufferLoad(srv,index,wot)
  %5814 = extractvalue %dx.types.ResRet.i32 %5813, 0
  %5815 = add i32 %5807, 16
  %5816 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5815, i32 undef)  ; BufferLoad(srv,index,wot)
  %5817 = extractvalue %dx.types.ResRet.f32 %5816, 0
  %5818 = extractvalue %dx.types.ResRet.f32 %5816, 1
  %5819 = extractvalue %dx.types.ResRet.f32 %5816, 2
  %5820 = add i32 %5807, 28
  %5821 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5820, i32 undef)  ; BufferLoad(srv,index,wot)
  %5822 = extractvalue %dx.types.ResRet.f32 %5821, 0
  %5823 = add i32 %5807, 32
  %5824 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5823, i32 undef)  ; BufferLoad(srv,index,wot)
  %5825 = extractvalue %dx.types.ResRet.f32 %5824, 0
  %5826 = extractvalue %dx.types.ResRet.f32 %5824, 1
  %5827 = extractvalue %dx.types.ResRet.f32 %5824, 2
  %5828 = extractvalue %dx.types.ResRet.f32 %5824, 3
  %5829 = add i32 %5807, 48
  %5830 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5829, i32 undef)  ; BufferLoad(srv,index,wot)
  %5831 = extractvalue %dx.types.ResRet.f32 %5830, 0
  %5832 = extractvalue %dx.types.ResRet.f32 %5830, 1
  %5833 = add i32 %5807, 56
  %5834 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5833, i32 undef)  ; BufferLoad(srv,index,wot)
  %5835 = extractvalue %dx.types.ResRet.f32 %5834, 0
  %5836 = extractvalue %dx.types.ResRet.f32 %5834, 1
  %5837 = add i32 %5807, 64
  %5838 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5837, i32 undef)  ; BufferLoad(srv,index,wot)
  %5839 = extractvalue %dx.types.ResRet.f32 %5838, 0
  %5840 = extractvalue %dx.types.ResRet.f32 %5838, 1
  %5841 = mul i32 %5803, 60
  %5842 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5841, i32 undef)  ; BufferLoad(srv,index,wot)
  %5843 = extractvalue %dx.types.ResRet.f32 %5842, 0
  %5844 = extractvalue %dx.types.ResRet.f32 %5842, 1
  %5845 = extractvalue %dx.types.ResRet.f32 %5842, 2
  %5846 = add i32 %5841, 12
  %5847 = add i32 %5841, 48
  %5848 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5847, i32 undef)  ; BufferLoad(srv,index,wot)
  %5849 = extractvalue %dx.types.ResRet.f32 %5848, 0
  %5850 = extractvalue %dx.types.ResRet.f32 %5848, 1
  %5851 = extractvalue %dx.types.ResRet.f32 %5848, 2
  %5852 = and i32 %5814, 32767
  %5853 = bitcast float %5809 to i32
  %5854 = icmp eq i32 %5853, -1
  %5855 = bitcast float %5810 to i32
  %5856 = and i32 %5814, 32768
  %5857 = icmp ne i32 %5856, 0
  %5858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5859 = extractvalue %dx.types.CBufRet.f32 %5858, 0
  %5860 = extractvalue %dx.types.CBufRet.f32 %5858, 1
  %5861 = extractvalue %dx.types.CBufRet.f32 %5858, 2
  %5862 = fsub fast float %5843, %5859
  %5863 = fsub fast float %5844, %5860
  %5864 = fsub fast float %5845, %5861
  %5865 = fsub fast float %207, %5862
  %5866 = fsub fast float %208, %5863
  %5867 = fsub fast float %209, %5864
  %5868 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5846, i32 undef)  ; BufferLoad(srv,index,wot)
  %5869 = extractvalue %dx.types.ResRet.f32 %5868, 0
  %5870 = extractvalue %dx.types.ResRet.f32 %5868, 1
  %5871 = extractvalue %dx.types.ResRet.f32 %5868, 2
  %5872 = call float @dx.op.dot3.f32(i32 55, float %5865, float %5866, float %5867, float %5869, float %5870, float %5871)  ; Dot3(ax,ay,az,bx,by,bz)
  %5873 = add i32 %5841, 24
  %5874 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5873, i32 undef)  ; BufferLoad(srv,index,wot)
  %5875 = extractvalue %dx.types.ResRet.f32 %5874, 0
  %5876 = extractvalue %dx.types.ResRet.f32 %5874, 1
  %5877 = extractvalue %dx.types.ResRet.f32 %5874, 2
  %5878 = call float @dx.op.dot3.f32(i32 55, float %5865, float %5866, float %5867, float %5875, float %5876, float %5877)  ; Dot3(ax,ay,az,bx,by,bz)
  %5879 = add i32 %5841, 36
  %5880 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5879, i32 undef)  ; BufferLoad(srv,index,wot)
  %5881 = extractvalue %dx.types.ResRet.f32 %5880, 0
  %5882 = extractvalue %dx.types.ResRet.f32 %5880, 1
  %5883 = extractvalue %dx.types.ResRet.f32 %5880, 2
  %5884 = call float @dx.op.dot3.f32(i32 55, float %5865, float %5866, float %5867, float %5881, float %5882, float %5883)  ; Dot3(ax,ay,az,bx,by,bz)
  %5885 = call float @dx.op.unary.f32(i32 6, float %5872)  ; FAbs(value)
  %5886 = call float @dx.op.unary.f32(i32 6, float %5878)  ; FAbs(value)
  %5887 = call float @dx.op.unary.f32(i32 6, float %5884)  ; FAbs(value)
  %5888 = fsub fast float %5849, %5885
  %5889 = fsub fast float %5850, %5886
  %5890 = fsub fast float %5851, %5887
  %5891 = fmul fast float %5888, %5817
  %5892 = fmul fast float %5889, %5818
  %5893 = fmul fast float %5890, %5819
  %5894 = call float @dx.op.binary.f32(i32 36, float %5892, float %5893)  ; FMin(a,b)
  %5895 = call float @dx.op.binary.f32(i32 36, float %5891, float %5894)  ; FMin(a,b)
  %5896 = call float @dx.op.unary.f32(i32 7, float %5895)  ; Saturate(value)
  %5897 = call float @dx.op.binary.f32(i32 36, float %5800, float %5896)  ; FMin(a,b)
  %5898 = uitofp i1 %5857 to float
  %5899 = fadd fast float %5715, 1.000000e+00
  %5900 = fsub fast float %5899, %5898
  %5901 = fmul fast float %5897, %5900
  %5902 = fcmp fast ogt float %5901, 0.000000e+00
  br i1 %5902, label %5909, label %5903

; <label>:5903                                    ; preds = %6051, %5796
  %5904 = phi float [ %6115, %6051 ], [ %5797, %5796 ]
  %5905 = phi float [ %6116, %6051 ], [ %5798, %5796 ]
  %5906 = phi float [ %6117, %6051 ], [ %5799, %5796 ]
  %5907 = phi float [ %6118, %6051 ], [ %5800, %5796 ]
  %5908 = icmp eq i32 %5801, %5805
  br i1 %5908, label %6119, label %5796

; <label>:5909                                    ; preds = %5796
  br i1 %5854, label %5967, label %5910

; <label>:5910                                    ; preds = %5909
  %5911 = fsub fast float -0.000000e+00, %5869
  %5912 = fsub fast float -0.000000e+00, %5870
  %5913 = fsub fast float -0.000000e+00, %5871
  %5914 = call float @dx.op.dot3.f32(i32 55, float %5749, float %5750, float %5751, float %5911, float %5912, float %5913)  ; Dot3(ax,ay,az,bx,by,bz)
  %5915 = fsub fast float -0.000000e+00, %5914
  %5916 = call float @dx.op.dot3.f32(i32 55, float %5865, float %5866, float %5867, float %5911, float %5912, float %5913)  ; Dot3(ax,ay,az,bx,by,bz)
  %5917 = fadd fast float %5916, %5832
  %5918 = fadd fast float %5831, %5916
  %5919 = fsub fast float -0.000000e+00, %5918
  %5920 = fcmp ogt float %5914, -0.000000e+00
  %5921 = select i1 %5920, float %5919, float %5917
  %5922 = call float @dx.op.unary.f32(i32 6, float %5915)  ; FAbs(value)
  %5923 = fdiv fast float 1.000000e+00, %5922
  %5924 = fmul fast float %5921, %5923
  %5925 = call float @dx.op.binary.f32(i32 35, float %5924, float 0.000000e+00)  ; FMax(a,b)
  %5926 = fsub fast float -0.000000e+00, %5875
  %5927 = fsub fast float -0.000000e+00, %5876
  %5928 = fsub fast float -0.000000e+00, %5877
  %5929 = call float @dx.op.dot3.f32(i32 55, float %5749, float %5750, float %5751, float %5926, float %5927, float %5928)  ; Dot3(ax,ay,az,bx,by,bz)
  %5930 = fsub fast float -0.000000e+00, %5929
  %5931 = call float @dx.op.dot3.f32(i32 55, float %5865, float %5866, float %5867, float %5926, float %5927, float %5928)  ; Dot3(ax,ay,az,bx,by,bz)
  %5932 = fadd fast float %5931, %5836
  %5933 = fadd fast float %5835, %5931
  %5934 = fsub fast float -0.000000e+00, %5933
  %5935 = fcmp ogt float %5929, -0.000000e+00
  %5936 = select i1 %5935, float %5934, float %5932
  %5937 = call float @dx.op.unary.f32(i32 6, float %5930)  ; FAbs(value)
  %5938 = fdiv fast float 1.000000e+00, %5937
  %5939 = fmul fast float %5936, %5938
  %5940 = call float @dx.op.binary.f32(i32 35, float %5939, float 0.000000e+00)  ; FMax(a,b)
  %5941 = fsub fast float -0.000000e+00, %5881
  %5942 = fsub fast float -0.000000e+00, %5882
  %5943 = fsub fast float -0.000000e+00, %5883
  %5944 = call float @dx.op.dot3.f32(i32 55, float %5749, float %5750, float %5751, float %5941, float %5942, float %5943)  ; Dot3(ax,ay,az,bx,by,bz)
  %5945 = fsub fast float -0.000000e+00, %5944
  %5946 = call float @dx.op.dot3.f32(i32 55, float %5865, float %5866, float %5867, float %5941, float %5942, float %5943)  ; Dot3(ax,ay,az,bx,by,bz)
  %5947 = fadd fast float %5946, %5840
  %5948 = fadd fast float %5839, %5946
  %5949 = fsub fast float -0.000000e+00, %5948
  %5950 = fcmp ogt float %5944, -0.000000e+00
  %5951 = select i1 %5950, float %5949, float %5947
  %5952 = call float @dx.op.unary.f32(i32 6, float %5945)  ; FAbs(value)
  %5953 = fdiv fast float 1.000000e+00, %5952
  %5954 = fmul fast float %5951, %5953
  %5955 = call float @dx.op.binary.f32(i32 35, float %5954, float 0.000000e+00)  ; FMax(a,b)
  %5956 = call float @dx.op.binary.f32(i32 36, float %5940, float %5955)  ; FMin(a,b)
  %5957 = call float @dx.op.binary.f32(i32 36, float %5925, float %5956)  ; FMin(a,b)
  %5958 = fmul fast float %5957, %5749
  %5959 = fmul fast float %5957, %5750
  %5960 = fmul fast float %5957, %5751
  %5961 = fadd fast float %5958, %207
  %5962 = fadd fast float %5959, %208
  %5963 = fadd fast float %5960, %209
  %5964 = fsub fast float %5961, %5809
  %5965 = fsub fast float %5962, %5810
  %5966 = fsub fast float %5963, %5811
  br label %5974

; <label>:5967                                    ; preds = %5909
  %5968 = fmul fast float %5749, 8.096000e+03
  %5969 = fmul fast float %5750, 8.096000e+03
  %5970 = fmul fast float %5751, 8.096000e+03
  %5971 = fadd fast float %5968, %207
  %5972 = fadd fast float %5969, %208
  %5973 = fadd fast float %5970, %209
  br label %5974

; <label>:5974                                    ; preds = %5967, %5910
  %5975 = phi float [ %5749, %5967 ], [ %5964, %5910 ]
  %5976 = phi float [ %5750, %5967 ], [ %5965, %5910 ]
  %5977 = phi float [ %5751, %5967 ], [ %5966, %5910 ]
  %5978 = phi float [ %5971, %5967 ], [ %5961, %5910 ]
  %5979 = phi float [ %5972, %5967 ], [ %5962, %5910 ]
  %5980 = phi float [ %5973, %5967 ], [ %5963, %5910 ]
  %5981 = fcmp fast olt float %5828, 1.000000e+00
  br i1 %5981, label %5982, label %6013, !dx.controlflow.hints !104

; <label>:5982                                    ; preds = %5974
  %5983 = fmul fast float %5977, %5826
  %5984 = fmul fast float %5976, %5827
  %5985 = fsub fast float %5983, %5984
  %5986 = fmul fast float %5975, %5827
  %5987 = fmul fast float %5977, %5825
  %5988 = fsub fast float %5986, %5987
  %5989 = fmul fast float %5976, %5825
  %5990 = fmul fast float %5975, %5826
  %5991 = fsub fast float %5989, %5990
  %5992 = fmul fast float %5985, 2.000000e+00
  %5993 = fmul fast float %5988, 2.000000e+00
  %5994 = fmul fast float %5991, 2.000000e+00
  %5995 = fmul fast float %5992, %5828
  %5996 = fmul fast float %5993, %5828
  %5997 = fmul fast float %5994, %5828
  %5998 = fmul fast float %5994, %5826
  %5999 = fmul fast float %5993, %5827
  %6000 = fmul fast float %5992, %5827
  %6001 = fmul fast float %5994, %5825
  %6002 = fmul fast float %5993, %5825
  %6003 = fmul fast float %5992, %5826
  %6004 = fadd fast float %5998, %5975
  %6005 = fadd fast float %6004, %5995
  %6006 = fsub fast float %6005, %5999
  %6007 = fsub fast float %5976, %6001
  %6008 = fadd fast float %6007, %5996
  %6009 = fadd fast float %6008, %6000
  %6010 = fadd fast float %5997, %5977
  %6011 = fsub fast float %6010, %6003
  %6012 = fadd fast float %6011, %6002
  br label %6013

; <label>:6013                                    ; preds = %5982, %5974
  %6014 = phi float [ %6006, %5982 ], [ %5975, %5974 ]
  %6015 = phi float [ %6009, %5982 ], [ %5976, %5974 ]
  %6016 = phi float [ %6012, %5982 ], [ %5977, %5974 ]
  br i1 %5854, label %6048, label %6017

; <label>:6017                                    ; preds = %6013
  %6018 = fmul fast float %5445, 0x400187C840000000
  %6019 = fadd fast float %6018, 0xC00EFC2120000000
  %6020 = fmul fast float %6019, %5445
  %6021 = fadd fast float %6020, 0x3FE5D16340000000
  %6022 = fmul fast float %6021, %5445
  %6023 = fadd fast float %6022, 1.000000e+00
  %6024 = call float @dx.op.unary.f32(i32 7, float %6023)  ; Saturate(value)
  %6025 = fsub fast float %5978, %207
  %6026 = fsub fast float %5979, %208
  %6027 = fsub fast float %5980, %209
  %6028 = fsub fast float %5978, %5809
  %6029 = fsub fast float %5979, %5810
  %6030 = fsub fast float %5980, %5811
  %6031 = call float @dx.op.dot3.f32(i32 55, float %6025, float %6026, float %6027, float %6025, float %6026, float %6027)  ; Dot3(ax,ay,az,bx,by,bz)
  %6032 = call float @dx.op.dot3.f32(i32 55, float %6028, float %6029, float %6030, float %6028, float %6029, float %6030)  ; Dot3(ax,ay,az,bx,by,bz)
  %6033 = fadd fast float %6032, 0x3EE4F8B580000000
  %6034 = fdiv fast float %6031, %6033
  %6035 = bitcast float %6034 to i32
  %6036 = ashr i32 %6035, 1
  %6037 = add nsw i32 %6036, 532487669
  %6038 = bitcast i32 %6037 to float
  %6039 = fmul fast float %6038, %6024
  %6040 = call float @dx.op.unary.f32(i32 7, float %6039)  ; Saturate(value)
  %6041 = fmul fast float %6040, 0x4009981AE0000000
  %6042 = fsub fast float 0x40111BBD80000000, %6041
  %6043 = fmul fast float %6042, %6040
  %6044 = fadd fast float %6043, 0xC0009F6020000000
  %6045 = fmul fast float %6044, %6040
  %6046 = fadd fast float %6045, 1.000000e+00
  %6047 = call float @dx.op.unary.f32(i32 7, float %6046)  ; Saturate(value)
  br label %6051

; <label>:6048                                    ; preds = %6013
  %6049 = icmp ne i32 %5855, -1
  %6050 = zext i1 %6049 to i32
  br label %6051

; <label>:6051                                    ; preds = %6048, %6017
  %6052 = phi float [ %5445, %6048 ], [ %6047, %6017 ]
  %6053 = phi i32 [ %6050, %6048 ], [ 0, %6017 ]
  %6054 = fmul float %6052, 5.000000e+00
  %6055 = fsub float 5.000000e+00, %6054
  %6056 = icmp ne i32 %6053, 0
  %6057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6058 = extractvalue %dx.types.CBufRet.f32 %6057, 3
  %6059 = fadd fast float %6058, %6055
  %6060 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6059)  ; FMax(a,b)
  %6061 = call float @dx.op.unary.f32(i32 6, float %6014)  ; FAbs(value)
  %6062 = call float @dx.op.unary.f32(i32 6, float %6015)  ; FAbs(value)
  %6063 = fadd fast float %6062, %6061
  %6064 = call float @dx.op.unary.f32(i32 6, float %6016)  ; FAbs(value)
  %6065 = fadd fast float %6063, %6064
  %6066 = fcmp fast oeq float %6065, 0.000000e+00
  %6067 = fdiv fast float 1.000000e+00, %6065
  %6068 = select i1 %6066, float 1.000000e+00, float %6067
  %6069 = fmul fast float %6068, %6014
  %6070 = fmul fast float %6068, %6015
  %6071 = call float @dx.op.unary.f32(i32 6, float %6070)  ; FAbs(value)
  %6072 = call float @dx.op.unary.f32(i32 6, float %6069)  ; FAbs(value)
  %6073 = fsub fast float 1.000000e+00, %6071
  %6074 = fsub fast float 1.000000e+00, %6072
  %6075 = fcmp fast oge float %6069, 0.000000e+00
  %6076 = fcmp fast oge float %6070, 0.000000e+00
  %6077 = select i1 %6075, float 1.000000e+00, float -1.000000e+00
  %6078 = select i1 %6076, float 1.000000e+00, float -1.000000e+00
  %6079 = fcmp fast ole float %6016, 0.000000e+00
  %6080 = fmul fast float %6077, %6073
  %6081 = fmul fast float %6078, %6074
  %6082 = select i1 %6079, float %6080, float %6069
  %6083 = select i1 %6079, float %6081, float %6070
  %6084 = fmul fast float %6082, 5.000000e-01
  %6085 = fmul fast float %6083, 5.000000e-01
  %6086 = fadd fast float %6084, 5.000000e-01
  %6087 = fadd fast float %6085, 5.000000e-01
  %6088 = uitofp i32 %5852 to float
  %6089 = call float @dx.op.binary.f32(i32 36, float %6060, float 3.000000e+00)  ; FMin(a,b)
  %6090 = fadd fast float %6089, 2.000000e+00
  %6091 = call float @dx.op.unary.f32(i32 21, float %6090)  ; Exp(value)
  %6092 = extractvalue %dx.types.CBufRet.f32 %6057, 1
  %6093 = fmul fast float %6092, %6091
  %6094 = fmul fast float %6093, 2.000000e+00
  %6095 = fsub fast float 1.000000e+00, %6094
  %6096 = fmul fast float %6086, %6095
  %6097 = fmul fast float %6087, %6095
  %6098 = fadd fast float %6096, %6093
  %6099 = fadd fast float %6097, %6093
  %6100 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %54, float %6098, float %6099, float %6088, float undef, i32 0, i32 0, i32 undef, float %6060)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6101 = extractvalue %dx.types.ResRet.f32 %6100, 0
  %6102 = extractvalue %dx.types.ResRet.f32 %6100, 1
  %6103 = extractvalue %dx.types.ResRet.f32 %6100, 2
  %6104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6105 = extractvalue %dx.types.CBufRet.f32 %6104, 3
  %6106 = fmul fast float %6105, %5822
  %6107 = call float @dx.op.binary.f32(i32 36, float %5551, float %6106)  ; FMin(a,b)
  %6108 = select i1 %6056, float %6107, float %6106
  %6109 = fmul fast float %6101, %5901
  %6110 = fmul fast float %6109, %6108
  %6111 = fmul fast float %6102, %5901
  %6112 = fmul fast float %6111, %6108
  %6113 = fmul fast float %6103, %5901
  %6114 = fmul fast float %6113, %6108
  %6115 = fadd fast float %6110, %5797
  %6116 = fadd fast float %6112, %5798
  %6117 = fadd fast float %6114, %5799
  %6118 = fsub fast float %5800, %5901
  br label %5903

; <label>:6119                                    ; preds = %5903
  br label %6120

; <label>:6120                                    ; preds = %6119, %5766
  %6121 = phi float [ %5767, %5766 ], [ %5904, %6119 ]
  %6122 = phi float [ %5768, %5766 ], [ %5905, %6119 ]
  %6123 = phi float [ %5769, %5766 ], [ %5906, %6119 ]
  %6124 = phi float [ %5770, %5766 ], [ %5907, %6119 ]
  %6125 = add i32 %5771, 1
  %6126 = icmp ugt i32 %6125, %5763
  br i1 %6126, label %6127, label %5766, !llvm.loop !105

; <label>:6127                                    ; preds = %6120
  br label %6128

; <label>:6128                                    ; preds = %6127, %5748
  %6129 = phi float [ 0.000000e+00, %5748 ], [ %6121, %6127 ]
  %6130 = phi float [ 0.000000e+00, %5748 ], [ %6122, %6127 ]
  %6131 = phi float [ 0.000000e+00, %5748 ], [ %6123, %6127 ]
  %6132 = call float @dx.op.dot3.f32(i32 55, float %6129, float %6130, float %6131, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6133 = select i1 %279, float 0.000000e+00, float %6129
  %6134 = select i1 %279, float %6132, float %6130
  %6135 = select i1 %279, float 0.000000e+00, float %6131
  %6136 = fcmp fast olt float %5674, 0.000000e+00
  %6137 = call float @dx.op.unary.f32(i32 6, float %5674)  ; FAbs(value)
  %6138 = fmul fast float %6137, %5610
  %6139 = fmul fast float %6137, %5611
  %6140 = fmul fast float %6137, %5612
  %6141 = select i1 %6136, float %5610, float %6138
  %6142 = select i1 %6136, float %5611, float %6139
  %6143 = select i1 %6136, float %5612, float %6140
  %6144 = fsub fast float 1.000000e+00, %6137
  %6145 = call float @dx.op.unary.f32(i32 7, float %6144)  ; Saturate(value)
  %6146 = fmul fast float %6145, %6133
  %6147 = fmul fast float %6145, %6134
  %6148 = fmul fast float %6145, %6135
  %6149 = fadd fast float %6141, %6146
  %6150 = fadd fast float %6142, %6147
  %6151 = fadd fast float %6143, %6148
  br label %6152

; <label>:6152                                    ; preds = %6128, %5657
  %6153 = phi float [ %6149, %6128 ], [ %5610, %5657 ]
  %6154 = phi float [ %6150, %6128 ], [ %5611, %5657 ]
  %6155 = phi float [ %6151, %6128 ], [ %5612, %5657 ]
  %6156 = fmul fast float %207, %207
  %6157 = fmul fast float %208, %208
  %6158 = fadd fast float %6157, %6156
  %6159 = fmul fast float %209, %209
  %6160 = fadd fast float %6158, %6159
  %6161 = call float @dx.op.unary.f32(i32 24, float %6160)  ; Sqrt(value)
  %6162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6163 = extractvalue %dx.types.CBufRet.f32 %6162, 1
  %6164 = fsub fast float %6161, %6163
  %6165 = extractvalue %dx.types.CBufRet.f32 %6162, 2
  %6166 = fmul fast float %6164, %6165
  %6167 = call float @dx.op.unary.f32(i32 7, float %6166)  ; Saturate(value)
  %6168 = extractvalue %dx.types.CBufRet.f32 %6162, 0
  %6169 = extractvalue %dx.types.CBufRet.f32 %6162, 3
  %6170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %6171 = extractvalue %dx.types.ResRet.i32 %6170, 0
  %6172 = and i32 %6171, 4194304
  %6173 = icmp ne i32 %6172, 0
  %6174 = and i32 %6171, 8388608
  %6175 = icmp ne i32 %6174, 0
  %6176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %6177 = extractvalue %dx.types.CBufRet.f32 %6176, 0
  %6178 = extractvalue %dx.types.CBufRet.f32 %6176, 1
  %6179 = extractvalue %dx.types.CBufRet.f32 %6176, 2
  %6180 = extractvalue %dx.types.CBufRet.f32 %6176, 3
  %6181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %6182 = extractvalue %dx.types.CBufRet.f32 %6181, 0
  %6183 = extractvalue %dx.types.CBufRet.f32 %6181, 1
  %6184 = extractvalue %dx.types.CBufRet.f32 %6181, 2
  %6185 = extractvalue %dx.types.CBufRet.f32 %6181, 3
  %6186 = select i1 %6173, float %6177, float %6182
  %6187 = select i1 %6173, float %6178, float %6183
  %6188 = select i1 %6173, float %6179, float %6184
  %6189 = select i1 %6173, float %6180, float %6185
  %6190 = select i1 %6175, float 0.000000e+00, float %6189
  %6191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %6192 = extractvalue %dx.types.CBufRet.f32 %6191, 0
  %6193 = extractvalue %dx.types.CBufRet.f32 %6191, 1
  %6194 = select i1 %6173, float %6192, float %6193
  %6195 = select i1 %6175, float 0.000000e+00, float %6194
  %6196 = extractvalue %dx.types.CBufRet.f32 %6191, 2
  %6197 = extractvalue %dx.types.CBufRet.f32 %6191, 3
  %6198 = select i1 %6173, float %6196, float %6197
  %6199 = select i1 %6175, float 0.000000e+00, float %6198
  %6200 = fmul fast float %6167, %69
  %6201 = fmul fast float %6200, %6168
  %6202 = fmul fast float %6201, %6195
  %6203 = fmul fast float %6200, %6169
  %6204 = fmul fast float %6203, %6199
  %6205 = fadd fast float %6204, 1.000000e+00
  %6206 = fmul fast float %5663, %5614
  %6207 = fmul fast float %6206, %6205
  %6208 = fmul fast float %5663, %5615
  %6209 = fmul fast float %6208, %6205
  %6210 = fmul fast float %5663, %5616
  %6211 = fmul fast float %6210, %6205
  %6212 = call float @dx.op.dot3.f32(i32 55, float %5436, float %5437, float %5438, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6213 = fcmp fast ogt float %6212, 0x3E7FF19E20000000
  %6214 = fdiv fast float 1.000000e+00, %6212
  %6215 = select i1 %6213, float %6214, float 0.000000e+00
  %6216 = fmul fast float %6215, %5436
  %6217 = fmul fast float %6215, %5437
  %6218 = fmul fast float %6215, %5438
  %6219 = fadd fast float %6216, -1.000000e+00
  %6220 = fadd fast float %6217, -1.000000e+00
  %6221 = fadd fast float %6218, -1.000000e+00
  %6222 = fmul fast float %6219, 5.000000e-01
  %6223 = fmul fast float %6220, 5.000000e-01
  %6224 = fmul fast float %6221, 5.000000e-01
  %6225 = fadd fast float %6222, 1.000000e+00
  %6226 = fadd fast float %6223, 1.000000e+00
  %6227 = fadd fast float %6224, 1.000000e+00
  %6228 = fadd fast float %6202, %4255
  %6229 = fsub fast float %6186, %6225
  %6230 = fsub fast float %6187, %6226
  %6231 = fsub fast float %6188, %6227
  %6232 = fmul fast float %6229, %6190
  %6233 = fmul fast float %6230, %6190
  %6234 = fmul fast float %6231, %6190
  %6235 = fadd fast float %6232, %6225
  %6236 = fadd fast float %6233, %6226
  %6237 = fadd fast float %6234, %6227
  %6238 = fmul fast float %6153, %5658
  %6239 = fmul fast float %6154, %5659
  %6240 = fmul fast float %6155, %5660
  %6241 = fsub fast float 1.000000e+00, %5490
  %6242 = bitcast float %6241 to i32
  %6243 = sitofp i32 %6242 to float
  %6244 = fmul fast float %6243, 5.000000e+00
  %6245 = fadd fast float %6244, 0xC1EFBF8940000000
  %6246 = fptosi float %6245 to i32
  %6247 = bitcast i32 %6246 to float
  %6248 = fmul fast float %6228, %6247
  %6249 = fmul fast float %6206, %6248
  %6250 = fmul fast float %6249, %6235
  %6251 = fmul fast float %6208, %6248
  %6252 = fmul fast float %6251, %6236
  %6253 = fmul fast float %6210, %6248
  %6254 = fmul fast float %6253, %6237
  %6255 = fmul fast float %6207, %4251
  %6256 = fmul fast float %6209, %4251
  %6257 = fmul fast float %6211, %4251
  %6258 = fadd fast float %6238, %4247
  %6259 = fadd fast float %6258, %6250
  %6260 = fmul fast float %6259, %4251
  %6261 = fadd fast float %6239, %4248
  %6262 = fadd fast float %6261, %6252
  %6263 = fmul fast float %6262, %4251
  %6264 = fadd fast float %6240, %4249
  %6265 = fadd fast float %6264, %6254
  %6266 = fmul fast float %6265, %4251
  %6267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6268 = extractvalue %dx.types.CBufRet.f32 %6267, 3
  %6269 = fcmp fast oeq float %6268, 0.000000e+00
  br i1 %6269, label %7974, label %6270

; <label>:6270                                    ; preds = %6152
  %6271 = extractvalue %dx.types.CBufRet.f32 %6267, 0
  %6272 = extractvalue %dx.types.CBufRet.f32 %6267, 1
  %6273 = extractvalue %dx.types.CBufRet.f32 %6267, 2
  %6274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6275 = extractvalue %dx.types.CBufRet.f32 %6274, 0
  %6276 = extractvalue %dx.types.CBufRet.f32 %6274, 1
  %6277 = extractvalue %dx.types.CBufRet.f32 %6274, 2
  %6278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6279 = extractvalue %dx.types.CBufRet.f32 %6278, 0
  %6280 = extractvalue %dx.types.CBufRet.f32 %6278, 1
  %6281 = call float @dx.op.dot3.f32(i32 55, float %6275, float %6276, float %6277, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6282 = select i1 %279, float %6279, float %6275
  %6283 = select i1 %279, float %6281, float %6276
  %6284 = select i1 %279, float %6280, float %6277
  %6285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6286 = extractvalue %dx.types.CBufRet.f32 %6285, 2
  %6287 = fmul fast float %6286, %127
  %6288 = fmul fast float %6286, %128
  %6289 = fmul fast float %6286, %129
  %6290 = fadd fast float %6287, %207
  %6291 = fadd fast float %6288, %208
  %6292 = fadd fast float %6289, %209
  %6293 = fcmp fast olt float %6268, 0.000000e+00
  br i1 %6293, label %7551, label %6294

; <label>:6294                                    ; preds = %6270
  %6295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6296 = extractvalue %dx.types.CBufRet.f32 %6295, 0
  %6297 = extractvalue %dx.types.CBufRet.f32 %6295, 1
  %6298 = extractvalue %dx.types.CBufRet.f32 %6295, 2
  %6299 = extractvalue %dx.types.CBufRet.f32 %6295, 3
  %6300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6301 = extractvalue %dx.types.CBufRet.f32 %6300, 0
  %6302 = extractvalue %dx.types.CBufRet.f32 %6300, 1
  %6303 = extractvalue %dx.types.CBufRet.f32 %6300, 2
  %6304 = extractvalue %dx.types.CBufRet.f32 %6300, 3
  %6305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6306 = extractvalue %dx.types.CBufRet.f32 %6305, 0
  %6307 = extractvalue %dx.types.CBufRet.f32 %6305, 1
  %6308 = extractvalue %dx.types.CBufRet.f32 %6305, 2
  %6309 = extractvalue %dx.types.CBufRet.f32 %6305, 3
  %6310 = fmul fast float %6296, %6290
  %6311 = call float @dx.op.tertiary.f32(i32 46, float %6291, float %6297, float %6310)  ; FMad(a,b,c)
  %6312 = call float @dx.op.tertiary.f32(i32 46, float %6292, float %6298, float %6311)  ; FMad(a,b,c)
  %6313 = fadd fast float %6312, %6299
  %6314 = fmul fast float %6301, %6290
  %6315 = call float @dx.op.tertiary.f32(i32 46, float %6291, float %6302, float %6314)  ; FMad(a,b,c)
  %6316 = call float @dx.op.tertiary.f32(i32 46, float %6292, float %6303, float %6315)  ; FMad(a,b,c)
  %6317 = fadd fast float %6316, %6304
  %6318 = fmul fast float %6306, %6290
  %6319 = call float @dx.op.tertiary.f32(i32 46, float %6291, float %6307, float %6318)  ; FMad(a,b,c)
  %6320 = call float @dx.op.tertiary.f32(i32 46, float %6292, float %6308, float %6319)  ; FMad(a,b,c)
  %6321 = fadd fast float %6320, %6309
  %6322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6323 = extractvalue %dx.types.CBufRet.f32 %6322, 0
  %6324 = fcmp fast une float %6323, 0.000000e+00
  %6325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6326 = extractvalue %dx.types.CBufRet.f32 %6325, 0
  %6327 = extractvalue %dx.types.CBufRet.f32 %6325, 1
  %6328 = extractvalue %dx.types.CBufRet.f32 %6325, 3
  %6329 = fmul fast float %6328, %6313
  %6330 = fmul fast float %6328, %6317
  %6331 = fadd fast float %6329, %6326
  %6332 = fadd fast float %6330, %6327
  %6333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6334 = extractvalue %dx.types.CBufRet.f32 %6333, 0
  %6335 = extractvalue %dx.types.CBufRet.f32 %6333, 1
  %6336 = extractvalue %dx.types.CBufRet.f32 %6333, 3
  %6337 = fmul fast float %6336, %6313
  %6338 = fmul fast float %6336, %6317
  %6339 = fadd fast float %6337, %6334
  %6340 = fadd fast float %6338, %6335
  %6341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6342 = extractvalue %dx.types.CBufRet.f32 %6341, 1
  %6343 = fsub fast float %6342, %6321
  %6344 = extractvalue %dx.types.CBufRet.f32 %6341, 2
  %6345 = fmul fast float %6343, %6344
  %6346 = fsub fast float 1.000000e+00, %6345
  %6347 = call float @dx.op.unary.f32(i32 7, float %6346)  ; Saturate(value)
  br i1 %6324, label %6408, label %6348

; <label>:6348                                    ; preds = %6294
  %6349 = extractvalue %dx.types.CBufRet.f32 %6333, 2
  %6350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6351 = extractvalue %dx.types.CBufRet.f32 %6350, 2
  %6352 = fadd fast float %6351, %6349
  %6353 = fcmp fast ogt float %6352, 0.000000e+00
  br i1 %6353, label %6354, label %6378

; <label>:6354                                    ; preds = %6348
  %6355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6356 = extractvalue %dx.types.CBufRet.f32 %6355, 0
  %6357 = extractvalue %dx.types.CBufRet.f32 %6355, 1
  %6358 = fsub fast float %6339, %6356
  %6359 = fsub fast float %6340, %6357
  %6360 = fcmp fast olt float %6358, 0.000000e+00
  %6361 = fcmp fast olt float %6359, 0.000000e+00
  %6362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6363 = extractvalue %dx.types.CBufRet.f32 %6362, 0
  %6364 = extractvalue %dx.types.CBufRet.f32 %6362, 1
  %6365 = extractvalue %dx.types.CBufRet.f32 %6362, 2
  %6366 = extractvalue %dx.types.CBufRet.f32 %6362, 3
  %6367 = select i1 %6360, float %6363, float %6365
  %6368 = select i1 %6361, float %6364, float %6366
  %6369 = fmul fast float %6367, %6358
  %6370 = fmul fast float %6368, %6359
  %6371 = call float @dx.op.unary.f32(i32 6, float %6369)  ; FAbs(value)
  %6372 = call float @dx.op.unary.f32(i32 6, float %6370)  ; FAbs(value)
  %6373 = extractvalue %dx.types.CBufRet.f32 %6285, 0
  %6374 = call float @dx.op.binary.f32(i32 35, float %6371, float %6372)  ; FMax(a,b)
  %6375 = fsub fast float %6373, %6374
  %6376 = call float @dx.op.unary.f32(i32 7, float %6375)  ; Saturate(value)
  %6377 = fmul fast float %6376, %6347
  br label %6378

; <label>:6378                                    ; preds = %6354, %6348
  %6379 = phi float [ %6377, %6354 ], [ 0.000000e+00, %6348 ]
  %6380 = extractvalue %dx.types.CBufRet.f32 %6325, 2
  %6381 = extractvalue %dx.types.CBufRet.f32 %6350, 1
  %6382 = fadd fast float %6381, %6380
  %6383 = fcmp fast ogt float %6382, 0.000000e+00
  br i1 %6383, label %6384, label %6408

; <label>:6384                                    ; preds = %6378
  %6385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6386 = extractvalue %dx.types.CBufRet.f32 %6385, 0
  %6387 = extractvalue %dx.types.CBufRet.f32 %6385, 1
  %6388 = fsub fast float %6331, %6386
  %6389 = fsub fast float %6332, %6387
  %6390 = fcmp fast olt float %6388, 0.000000e+00
  %6391 = fcmp fast olt float %6389, 0.000000e+00
  %6392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6393 = extractvalue %dx.types.CBufRet.f32 %6392, 0
  %6394 = extractvalue %dx.types.CBufRet.f32 %6392, 1
  %6395 = extractvalue %dx.types.CBufRet.f32 %6392, 2
  %6396 = extractvalue %dx.types.CBufRet.f32 %6392, 3
  %6397 = select i1 %6390, float %6393, float %6395
  %6398 = select i1 %6391, float %6394, float %6396
  %6399 = fmul fast float %6397, %6388
  %6400 = fmul fast float %6398, %6389
  %6401 = call float @dx.op.unary.f32(i32 6, float %6399)  ; FAbs(value)
  %6402 = call float @dx.op.unary.f32(i32 6, float %6400)  ; FAbs(value)
  %6403 = extractvalue %dx.types.CBufRet.f32 %6285, 0
  %6404 = call float @dx.op.binary.f32(i32 35, float %6401, float %6402)  ; FMax(a,b)
  %6405 = fsub fast float %6403, %6404
  %6406 = call float @dx.op.unary.f32(i32 7, float %6405)  ; Saturate(value)
  %6407 = fmul fast float %6406, %6347
  br label %6408

; <label>:6408                                    ; preds = %6384, %6378, %6294
  %6409 = phi float [ 0.000000e+00, %6294 ], [ %6407, %6384 ], [ 0.000000e+00, %6378 ]
  %6410 = phi float [ 0.000000e+00, %6294 ], [ %6379, %6384 ], [ %6379, %6378 ]
  %6411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6412 = extractvalue %dx.types.CBufRet.f32 %6411, 1
  %6413 = call float @dx.op.unary.f32(i32 7, float %6412)  ; Saturate(value)
  %6414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6415 = extractvalue %dx.types.CBufRet.f32 %6414, 0
  %6416 = extractvalue %dx.types.CBufRet.f32 %6414, 1
  %6417 = fsub fast float %6313, %6415
  %6418 = fsub fast float %6317, %6416
  %6419 = fcmp fast olt float %6417, 0.000000e+00
  %6420 = fcmp fast olt float %6418, 0.000000e+00
  %6421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6422 = extractvalue %dx.types.CBufRet.f32 %6421, 0
  %6423 = extractvalue %dx.types.CBufRet.f32 %6421, 1
  %6424 = extractvalue %dx.types.CBufRet.f32 %6421, 2
  %6425 = extractvalue %dx.types.CBufRet.f32 %6421, 3
  %6426 = select i1 %6419, float %6422, float %6424
  %6427 = select i1 %6420, float %6423, float %6425
  %6428 = fmul fast float %6426, %6417
  %6429 = fmul fast float %6427, %6418
  %6430 = call float @dx.op.unary.f32(i32 6, float %6428)  ; FAbs(value)
  %6431 = call float @dx.op.unary.f32(i32 6, float %6429)  ; FAbs(value)
  %6432 = extractvalue %dx.types.CBufRet.f32 %6285, 0
  %6433 = call float @dx.op.binary.f32(i32 35, float %6430, float %6431)  ; FMax(a,b)
  %6434 = fsub fast float %6432, %6433
  %6435 = call float @dx.op.unary.f32(i32 7, float %6434)  ; Saturate(value)
  %6436 = call float @dx.op.binary.f32(i32 36, float %6435, float %6413)  ; FMin(a,b)
  %6437 = fmul fast float %6436, %6347
  %6438 = fsub fast float %6409, %6437
  %6439 = fsub fast float %6410, %6409
  %6440 = fsub fast float %6439, %6437
  %6441 = call float @dx.op.binary.f32(i32 35, float %6409, float %6410)  ; FMax(a,b)
  %6442 = call float @dx.op.binary.f32(i32 35, float %6437, float %6441)  ; FMax(a,b)
  %6443 = fcmp fast olt float %6442, 1.000000e+00
  br i1 %6443, label %6444, label %6842, !dx.controlflow.hints !107

; <label>:6444                                    ; preds = %6408
  %6445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6446 = extractvalue %dx.types.CBufRet.f32 %6445, 0
  %6447 = fcmp fast une float %6446, 0.000000e+00
  br i1 %6447, label %6448, label %6842, !dx.controlflow.hints !108

; <label>:6448                                    ; preds = %6444
  %6449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6450 = extractvalue %dx.types.CBufRet.f32 %6449, 0
  %6451 = extractvalue %dx.types.CBufRet.f32 %6449, 1
  %6452 = extractvalue %dx.types.CBufRet.f32 %6449, 2
  %6453 = extractvalue %dx.types.CBufRet.f32 %6449, 3
  %6454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6455 = extractvalue %dx.types.CBufRet.f32 %6454, 0
  %6456 = extractvalue %dx.types.CBufRet.f32 %6454, 1
  %6457 = extractvalue %dx.types.CBufRet.f32 %6454, 2
  %6458 = extractvalue %dx.types.CBufRet.f32 %6454, 3
  %6459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6460 = extractvalue %dx.types.CBufRet.f32 %6459, 0
  %6461 = extractvalue %dx.types.CBufRet.f32 %6459, 1
  %6462 = extractvalue %dx.types.CBufRet.f32 %6459, 2
  %6463 = extractvalue %dx.types.CBufRet.f32 %6459, 3
  %6464 = fmul fast float %6450, %6290
  %6465 = call float @dx.op.tertiary.f32(i32 46, float %6291, float %6451, float %6464)  ; FMad(a,b,c)
  %6466 = call float @dx.op.tertiary.f32(i32 46, float %6292, float %6452, float %6465)  ; FMad(a,b,c)
  %6467 = fadd fast float %6466, %6453
  %6468 = fmul fast float %6455, %6290
  %6469 = call float @dx.op.tertiary.f32(i32 46, float %6291, float %6456, float %6468)  ; FMad(a,b,c)
  %6470 = call float @dx.op.tertiary.f32(i32 46, float %6292, float %6457, float %6469)  ; FMad(a,b,c)
  %6471 = fadd fast float %6470, %6458
  %6472 = fmul fast float %6460, %6290
  %6473 = call float @dx.op.tertiary.f32(i32 46, float %6291, float %6461, float %6472)  ; FMad(a,b,c)
  %6474 = call float @dx.op.tertiary.f32(i32 46, float %6292, float %6462, float %6473)  ; FMad(a,b,c)
  %6475 = fadd fast float %6474, %6463
  %6476 = fcmp fast oge float %6467, 1.000000e+00
  %6477 = fcmp fast oge float %6471, 1.000000e+00
  %6478 = or i1 %6476, %6477
  %6479 = fcmp fast olt float %6467, 0.000000e+00
  %6480 = fcmp fast olt float %6471, 0.000000e+00
  %6481 = or i1 %6479, %6480
  %6482 = or i1 %6478, %6481
  br i1 %6482, label %6842, label %6483, !dx.controlflow.hints !109

; <label>:6483                                    ; preds = %6448
  %6484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6485 = extractvalue %dx.types.CBufRet.f32 %6484, 0
  %6486 = extractvalue %dx.types.CBufRet.f32 %6484, 1
  %6487 = extractvalue %dx.types.CBufRet.f32 %6484, 2
  %6488 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6489 = extractvalue %dx.types.CBufRet.i32 %6488, 2
  %6490 = uitofp i32 %6489 to float
  %6491 = extractvalue %dx.types.CBufRet.i32 %6488, 3
  %6492 = uitofp i32 %6491 to float
  %6493 = extractvalue %dx.types.CBufRet.f32 %6484, 3
  %6494 = fmul fast float %6493, 2.000000e+00
  %6495 = fsub fast float %6467, %6485
  %6496 = fsub fast float %6471, %6486
  %6497 = fmul fast float %6494, %6495
  %6498 = fmul fast float %6494, %6496
  %6499 = fdiv fast float 1.000000e+00, %6273
  %6500 = fmul fast float %6498, %6499
  %6501 = call float @dx.op.unary.f32(i32 6, float %6500)  ; FAbs(value)
  %6502 = fmul fast float %6487, %6292
  %6503 = fmul fast float %6502, %6494
  %6504 = call float @dx.op.unary.f32(i32 6, float %6503)  ; FAbs(value)
  %6505 = call float @dx.op.unary.f32(i32 6, float %6497)  ; FAbs(value)
  %6506 = call float @dx.op.binary.f32(i32 35, float %6504, float %6501)  ; FMax(a,b)
  %6507 = call float @dx.op.binary.f32(i32 35, float %6505, float %6506)  ; FMax(a,b)
  %6508 = fmul fast float %6507, 2.000000e+00
  %6509 = call float @dx.op.unary.f32(i32 23, float %6508)  ; Log(value)
  %6510 = call float @dx.op.binary.f32(i32 35, float %6509, float %6490)  ; FMax(a,b)
  %6511 = call float @dx.op.unary.f32(i32 22, float %6510)  ; Frc(value)
  %6512 = fadd fast float %6511, 0xBFEA666660000000
  %6513 = fmul fast float %6512, 8.000000e+00
  %6514 = call float @dx.op.unary.f32(i32 7, float %6513)  ; Saturate(value)
  %6515 = call float @dx.op.unary.f32(i32 27, float %6510)  ; Round_ni(value)
  %6516 = fadd fast float %6515, %6514
  %6517 = call float @dx.op.binary.f32(i32 36, float %6516, float %6492)  ; FMin(a,b)
  %6518 = call float @dx.op.unary.f32(i32 27, float %6517)  ; Round_ni(value)
  %6519 = fsub fast float -0.000000e+00, %6518
  %6520 = call float @dx.op.unary.f32(i32 21, float %6519)  ; Exp(value)
  %6521 = fmul fast float %6520, %6494
  %6522 = fmul fast float %6521, %6467
  %6523 = fmul fast float %6521, %6471
  %6524 = fmul fast float %6522, 2.500000e-01
  %6525 = fmul fast float %6523, 2.500000e-01
  %6526 = fadd fast float %6524, 5.000000e-01
  %6527 = fadd fast float %6525, 5.000000e-01
  %6528 = fsub fast float %6492, %6490
  %6529 = fptoui float %6528 to i32
  %6530 = add i32 %6529, 320
  %6531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 %6530)  ; CBufferLoadLegacy(handle,regIndex)
  %6532 = extractvalue %dx.types.CBufRet.f32 %6531, 0
  %6533 = extractvalue %dx.types.CBufRet.f32 %6531, 1
  %6534 = fcmp fast une float %6517, %6492
  %6535 = fsub fast float %6467, %6532
  %6536 = fsub fast float %6471, %6533
  %6537 = call float @dx.op.unary.f32(i32 6, float %6535)  ; FAbs(value)
  %6538 = call float @dx.op.unary.f32(i32 6, float %6536)  ; FAbs(value)
  %6539 = fmul fast float %6537, %6521
  %6540 = fmul fast float %6538, %6521
  %6541 = fcmp fast olt float %6539, 1.000000e+00
  %6542 = fcmp fast olt float %6540, 1.000000e+00
  %6543 = and i1 %6541, %6542
  %6544 = or i1 %6534, %6543
  br i1 %6544, label %6545, label %6842, !dx.controlflow.hints !110

; <label>:6545                                    ; preds = %6483
  %6546 = fmul fast float %6523, 5.000000e-01
  %6547 = fmul fast float %6522, 5.000000e-01
  %6548 = fadd fast float %6546, 5.000000e-01
  %6549 = fadd fast float %6547, 5.000000e-01
  %6550 = sitofp i32 %6489 to float
  %6551 = fsub fast float %6517, %6550
  %6552 = call float @dx.op.unary.f32(i32 27, float %6551)  ; Round_ni(value)
  %6553 = call float @dx.op.unary.f32(i32 22, float %6517)  ; Frc(value)
  %6554 = call float @dx.op.unary.f32(i32 22, float %6549)  ; Frc(value)
  %6555 = call float @dx.op.unary.f32(i32 22, float %6548)  ; Frc(value)
  %6556 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %55, float %6554, float %6555, float %6552, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6557 = extractvalue %dx.types.ResRet.f32 %6556, 0
  %6558 = extractvalue %dx.types.ResRet.f32 %6556, 1
  %6559 = extractvalue %dx.types.ResRet.f32 %6556, 2
  %6560 = extractvalue %dx.types.ResRet.f32 %6556, 3
  %6561 = fcmp fast ogt float %6553, 0.000000e+00
  br i1 %6561, label %6562, label %6583, !dx.controlflow.hints !111

; <label>:6562                                    ; preds = %6545
  %6563 = fadd fast float %6552, 1.000000e+00
  %6564 = call float @dx.op.unary.f32(i32 22, float %6526)  ; Frc(value)
  %6565 = call float @dx.op.unary.f32(i32 22, float %6527)  ; Frc(value)
  %6566 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %55, float %6564, float %6565, float %6563, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6567 = extractvalue %dx.types.ResRet.f32 %6566, 0
  %6568 = extractvalue %dx.types.ResRet.f32 %6566, 1
  %6569 = extractvalue %dx.types.ResRet.f32 %6566, 2
  %6570 = extractvalue %dx.types.ResRet.f32 %6566, 3
  %6571 = fsub fast float %6567, %6557
  %6572 = fsub fast float %6568, %6558
  %6573 = fsub fast float %6569, %6559
  %6574 = fsub fast float %6570, %6560
  %6575 = fmul fast float %6571, %6553
  %6576 = fmul fast float %6572, %6553
  %6577 = fmul fast float %6573, %6553
  %6578 = fmul fast float %6574, %6553
  %6579 = fadd fast float %6575, %6557
  %6580 = fadd fast float %6576, %6558
  %6581 = fadd fast float %6577, %6559
  %6582 = fadd fast float %6578, %6560
  br label %6583

; <label>:6583                                    ; preds = %6562, %6545
  %6584 = phi float [ %6579, %6562 ], [ %6557, %6545 ]
  %6585 = phi float [ %6580, %6562 ], [ %6558, %6545 ]
  %6586 = phi float [ %6581, %6562 ], [ %6559, %6545 ]
  %6587 = phi float [ %6582, %6562 ], [ %6560, %6545 ]
  %6588 = fadd fast float %6584, -5.000000e-01
  %6589 = fadd fast float %6586, -5.000000e-01
  %6590 = fmul fast float %6588, 0xBFD5555560000000
  %6591 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6589, float %6590)  ; FMad(a,b,c)
  %6592 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6585, float 0.000000e+00)  ; FMad(a,b,c)
  %6593 = fadd fast float %6592, %6587
  %6594 = fmul fast float %6588, -7.500000e-01
  %6595 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6589, float %6594)  ; FMad(a,b,c)
  %6596 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6585, float 0.000000e+00)  ; FMad(a,b,c)
  %6597 = fadd fast float %6596, %6587
  %6598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6599 = extractvalue %dx.types.CBufRet.f32 %6598, 0
  %6600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6601 = extractvalue %dx.types.CBufRet.f32 %6600, 0
  %6602 = extractvalue %dx.types.CBufRet.f32 %6600, 1
  %6603 = extractvalue %dx.types.CBufRet.f32 %6600, 2
  %6604 = extractvalue %dx.types.CBufRet.f32 %6600, 3
  %6605 = fsub fast float %6601, %6591
  %6606 = fsub fast float %6602, %6593
  %6607 = fsub fast float %6603, %6595
  %6608 = fsub fast float %6604, %6597
  %6609 = fmul fast float %6605, %6599
  %6610 = fmul fast float %6606, %6599
  %6611 = fmul fast float %6607, %6599
  %6612 = fmul fast float %6608, %6599
  %6613 = fadd fast float %6609, %6591
  %6614 = fadd fast float %6610, %6593
  %6615 = fadd fast float %6611, %6595
  %6616 = fadd fast float %6612, %6597
  %6617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6618 = extractvalue %dx.types.ResRet.i32 %6617, 0
  %6619 = and i32 %6618, 536870911
  %6620 = uitofp i32 %6619 to float
  %6621 = fmul fast float %6620, %6467
  %6622 = fmul fast float %6620, %6471
  %6623 = fptoui float %6621 to i32
  %6624 = fptoui float %6622 to i32
  %6625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6626 = extractvalue %dx.types.ResRet.i32 %6625, 0
  %6627 = and i32 %6626, 31
  %6628 = lshr i32 %6623, %6627
  %6629 = lshr i32 %6624, %6627
  %6630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6631 = extractvalue %dx.types.ResRet.i32 %6630, 0
  %6632 = and i32 %6631, 31
  %6633 = shl i32 1, %6632
  %6634 = call i32 @dx.op.binary.i32(i32 40, i32 %6633, i32 4)  ; UMin(a,b)
  %6635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6636 = extractvalue %dx.types.ResRet.i32 %6635, 0
  %6637 = extractvalue %dx.types.ResRet.i32 %6635, 1
  %6638 = icmp eq i32 %6634, 0
  br i1 %6638, label %6680, label %6639

; <label>:6639                                    ; preds = %6583
  br label %6640

; <label>:6640                                    ; preds = %6668, %6639
  %6641 = phi i32 [ %6671, %6668 ], [ 0, %6639 ]
  %6642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6643 = extractvalue %dx.types.ResRet.i32 %6642, 0
  %6644 = lshr i32 %6643, 16
  %6645 = and i32 %6644, 31
  %6646 = shl i32 %6629, %6645
  %6647 = add i32 %6646, %6628
  %6648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6649 = extractvalue %dx.types.ResRet.i32 %6648, 0
  %6650 = and i32 %6649, 31
  %6651 = shl i32 %6647, %6650
  %6652 = add i32 %6651, %6641
  %6653 = shl i32 %6652, 2
  %6654 = add i32 %6653, 32
  %6655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6654, i32 undef)  ; BufferLoad(srv,index,wot)
  %6656 = extractvalue %dx.types.ResRet.i32 %6655, 0
  %6657 = icmp slt i32 %6656, 0
  %6658 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6641
  %6659 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 %6641
  %6660 = bitcast float* %6658 to i32*
  %6661 = bitcast float* %6659 to i32*
  br i1 %6657, label %6662, label %6668

; <label>:6662                                    ; preds = %6640
  %6663 = and i32 %6656, 1073741823
  %6664 = add nuw nsw i32 %6663, 20
  %6665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6664, i32 undef)  ; BufferLoad(srv,index,wot)
  %6666 = extractvalue %dx.types.ResRet.i32 %6665, 0
  %6667 = extractvalue %dx.types.ResRet.i32 %6665, 1
  br label %6668

; <label>:6668                                    ; preds = %6662, %6640
  %6669 = phi i32 [ %6666, %6662 ], [ %6636, %6640 ]
  %6670 = phi i32 [ %6667, %6662 ], [ %6637, %6640 ]
  store i32 %6669, i32* %6660, align 4
  store i32 %6670, i32* %6661, align 4
  %6671 = add nuw i32 %6641, 1
  %6672 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6673 = extractvalue %dx.types.CBufRet.i32 %6672, 2
  %6674 = icmp eq i32 %6673, 0
  %6675 = icmp ugt i32 %6656, -1073741825
  %6676 = and i1 %6675, %6674
  %6677 = icmp ult i32 %6671, %6634
  %6678 = and i1 %6676, %6677
  br i1 %6678, label %6640, label %6679

; <label>:6679                                    ; preds = %6668
  br label %6680

; <label>:6680                                    ; preds = %6679, %6583
  %6681 = phi i32 [ 0, %6583 ], [ %6671, %6679 ]
  %6682 = extractvalue %dx.types.CBufRet.f32 %6445, 2
  %6683 = fptoui float %6682 to i32
  %6684 = icmp eq i32 %6683, 0
  br i1 %6684, label %6736, label %6685

; <label>:6685                                    ; preds = %6680
  br label %6686

; <label>:6686                                    ; preds = %6731, %6685
  %6687 = phi i32 [ %6732, %6731 ], [ %6681, %6685 ]
  %6688 = phi i32 [ %6733, %6731 ], [ 0, %6685 ]
  %6689 = lshr i32 %6688, 2
  %6690 = and i32 %6688, 3
  %6691 = add nuw nsw i32 %6689, 83
  %6692 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 %6691)  ; CBufferLoadLegacy(handle,regIndex)
  %6693 = extractvalue %dx.types.CBufRet.i32 %6692, 0
  %6694 = extractvalue %dx.types.CBufRet.i32 %6692, 1
  %6695 = extractvalue %dx.types.CBufRet.i32 %6692, 2
  %6696 = extractvalue %dx.types.CBufRet.i32 %6692, 3
  %6697 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 0
  store i32 %6693, i32* %6697, align 4
  %6698 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 1
  store i32 %6694, i32* %6698, align 4
  %6699 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 2
  store i32 %6695, i32* %6699, align 4
  %6700 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 3
  store i32 %6696, i32* %6700, align 4
  %6701 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 %6690
  %6702 = load i32, i32* %6701, align 4, !tbaa !112, !noalias !116
  %6703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6704 = extractvalue %dx.types.ResRet.i32 %6703, 0
  %6705 = lshr i32 %6704, 16
  %6706 = and i32 %6705, 31
  %6707 = shl i32 %6629, %6706
  %6708 = add i32 %6707, %6628
  %6709 = shl i32 %6708, 2
  %6710 = add i32 %6709, %6702
  %6711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6710, i32 undef)  ; BufferLoad(srv,index,wot)
  %6712 = extractvalue %dx.types.ResRet.i32 %6711, 0
  %6713 = icmp eq i32 %6712, 0
  br i1 %6713, label %6731, label %6714

; <label>:6714                                    ; preds = %6686
  %6715 = icmp slt i32 %6712, 0
  %6716 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6687
  %6717 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 %6687
  %6718 = bitcast float* %6716 to i32*
  %6719 = bitcast float* %6717 to i32*
  br i1 %6715, label %6720, label %6727

; <label>:6720                                    ; preds = %6714
  %6721 = and i32 %6712, 1073741823
  %6722 = add i32 %6702, 20
  %6723 = add i32 %6722, %6721
  %6724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6723, i32 undef)  ; BufferLoad(srv,index,wot)
  %6725 = extractvalue %dx.types.ResRet.i32 %6724, 0
  %6726 = extractvalue %dx.types.ResRet.i32 %6724, 1
  br label %6727

; <label>:6727                                    ; preds = %6720, %6714
  %6728 = phi i32 [ %6725, %6720 ], [ %6636, %6714 ]
  %6729 = phi i32 [ %6726, %6720 ], [ %6637, %6714 ]
  store i32 %6728, i32* %6718, align 4
  store i32 %6729, i32* %6719, align 4
  %6730 = add i32 %6687, 1
  br label %6731

; <label>:6731                                    ; preds = %6727, %6686
  %6732 = phi i32 [ %6687, %6686 ], [ %6730, %6727 ]
  %6733 = add nuw i32 %6688, 1
  %6734 = icmp eq i32 %6733, %6683
  br i1 %6734, label %6735, label %6686

; <label>:6735                                    ; preds = %6731
  br label %6736

; <label>:6736                                    ; preds = %6735, %6680
  %6737 = phi i32 [ %6681, %6680 ], [ %6732, %6735 ]
  %6738 = icmp eq i32 %6737, 1
  %6739 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 0
  %6740 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 0
  br i1 %6738, label %6741, label %6744

; <label>:6741                                    ; preds = %6736
  %6742 = load float, float* %6739, align 4
  %6743 = load float, float* %6740, align 4
  br label %6771

; <label>:6744                                    ; preds = %6736
  %6745 = load float, float* %6739, align 4
  %6746 = load float, float* %6740, align 4
  %6747 = fdiv fast float 1.000000e+00, %6746
  %6748 = fsub fast float %6745, %6747
  %6749 = icmp ugt i32 %6737, 1
  br i1 %6749, label %6750, label %6766

; <label>:6750                                    ; preds = %6744
  br label %6751

; <label>:6751                                    ; preds = %6751, %6750
  %6752 = phi float [ %6761, %6751 ], [ %6748, %6750 ]
  %6753 = phi float [ %6762, %6751 ], [ %6745, %6750 ]
  %6754 = phi i32 [ %6763, %6751 ], [ 1, %6750 ]
  %6755 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6754
  %6756 = load float, float* %6755, align 4
  %6757 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 %6754
  %6758 = load float, float* %6757, align 4
  %6759 = fdiv fast float 1.000000e+00, %6758
  %6760 = fsub fast float %6756, %6759
  %6761 = call float @dx.op.binary.f32(i32 36, float %6752, float %6760)  ; FMin(a,b)
  %6762 = call float @dx.op.binary.f32(i32 35, float %6753, float %6756)  ; FMax(a,b)
  %6763 = add nuw i32 %6754, 1
  %6764 = icmp eq i32 %6763, %6737
  br i1 %6764, label %6765, label %6751

; <label>:6765                                    ; preds = %6751
  br label %6766

; <label>:6766                                    ; preds = %6765, %6744
  %6767 = phi float [ %6748, %6744 ], [ %6761, %6765 ]
  %6768 = phi float [ %6745, %6744 ], [ %6762, %6765 ]
  %6769 = fsub fast float %6768, %6767
  %6770 = fdiv fast float 1.000000e+00, %6769
  br label %6771

; <label>:6771                                    ; preds = %6766, %6741
  %6772 = phi float [ %6742, %6741 ], [ %6768, %6766 ]
  %6773 = phi float [ %6743, %6741 ], [ %6770, %6766 ]
  %6774 = fadd fast float %6475, %6772
  %6775 = fmul fast float %6774, %6773
  %6776 = call float @dx.op.unary.f32(i32 7, float %6775)  ; Saturate(value)
  %6777 = fmul fast float %6776, 2.000000e+00
  %6778 = fsub fast float 1.000000e+00, %6777
  %6779 = fmul fast float %6613, %6613
  %6780 = fsub fast float %6614, %6779
  %6781 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6780)  ; FMax(a,b)
  %6782 = fdiv fast float 1.000000e+00, %6781
  %6783 = fmul fast float %6614, %6613
  %6784 = fsub fast float %6615, %6783
  %6785 = fsub fast float %6778, %6613
  %6786 = fmul fast float %6778, %6778
  %6787 = fsub fast float %6786, %6614
  %6788 = fmul fast float %6782, %6784
  %6789 = fmul fast float %6788, %6785
  %6790 = fsub fast float %6787, %6789
  %6791 = fmul fast float %6614, %6614
  %6792 = fsub fast float %6616, %6791
  %6793 = fmul fast float %6784, %6784
  %6794 = fmul fast float %6793, %6782
  %6795 = fsub fast float %6792, %6794
  %6796 = fdiv fast float %6790, %6795
  %6797 = fmul fast float %6796, %6784
  %6798 = fsub fast float %6785, %6797
  %6799 = fmul fast float %6798, %6782
  %6800 = fmul fast float %6799, %6613
  %6801 = fsub fast float 1.000000e+00, %6800
  %6802 = fmul fast float %6796, %6614
  %6803 = fsub fast float %6801, %6802
  %6804 = fmul fast float %6799, %6799
  %6805 = fmul fast float %6796, 4.000000e+00
  %6806 = fmul fast float %6805, %6803
  %6807 = fsub fast float %6804, %6806
  %6808 = call float @dx.op.unary.f32(i32 24, float %6807)  ; Sqrt(value)
  %6809 = fcmp fast oge float %6799, 0.000000e+00
  %6810 = fsub fast float -0.000000e+00, %6808
  %6811 = select i1 %6809, float %6810, float %6808
  %6812 = fsub fast float %6811, %6799
  %6813 = fdiv fast float %6812, %6796
  %6814 = fdiv fast float %6803, %6812
  %6815 = fmul fast float %6813, 5.000000e-01
  %6816 = fmul fast float %6814, 2.000000e+00
  %6817 = select i1 %6809, float %6815, float %6816
  %6818 = select i1 %6809, float %6816, float %6815
  %6819 = call float @dx.op.binary.f32(i32 35, float %6817, float %6818)  ; FMax(a,b)
  %6820 = call float @dx.op.binary.f32(i32 36, float %6817, float %6818)  ; FMin(a,b)
  %6821 = fcmp fast ogt float %6778, %6819
  %6822 = fsub fast float %6778, %6820
  %6823 = fsub fast float %6778, %6819
  %6824 = fsub fast float %6819, %6820
  %6825 = select i1 %6821, float %6823, float %6824
  %6826 = fmul float %6822, %6825
  %6827 = select i1 %6821, float %6820, float %6778
  %6828 = fcmp fast ogt float %6778, %6820
  %6829 = fmul fast float %6827, %6819
  %6830 = fadd fast float %6827, %6819
  %6831 = fmul fast float %6830, %6613
  %6832 = fadd fast float %6829, %6614
  %6833 = fsub fast float %6832, %6831
  %6834 = fdiv fast float %6833, %6826
  %6835 = select i1 %6828, float %6834, float 0.000000e+00
  %6836 = fsub fast float 1.000000e+00, %6835
  %6837 = select i1 %6821, float %6836, float %6835
  %6838 = call float @dx.op.unary.f32(i32 7, float %6837)  ; Saturate(value)
  %6839 = extractvalue %dx.types.CBufRet.f32 %6598, 3
  %6840 = fmul fast float %6839, %6838
  %6841 = fsub fast float 1.000000e+00, %6840
  br label %6842

; <label>:6842                                    ; preds = %6771, %6483, %6448, %6444, %6408
  %6843 = phi float [ 1.000000e+00, %6408 ], [ %6841, %6771 ], [ 1.000000e+00, %6448 ], [ 1.000000e+00, %6483 ], [ 1.000000e+00, %6444 ]
  %6844 = fcmp fast ogt float %6440, 0.000000e+00
  br i1 %6844, label %6845, label %7009, !dx.controlflow.hints !125

; <label>:6845                                    ; preds = %6842
  %6846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6847 = extractvalue %dx.types.CBufRet.f32 %6846, 2
  %6848 = fadd fast float %6847, %6321
  %6849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6850 = extractvalue %dx.types.CBufRet.f32 %6849, 2
  %6851 = extractvalue %dx.types.CBufRet.f32 %6849, 3
  %6852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6853 = extractvalue %dx.types.CBufRet.f32 %6852, 2
  %6854 = call float @dx.op.binary.f32(i32 35, float %6848, float 0.000000e+00)  ; FMax(a,b)
  %6855 = fadd fast float %6854, 0x3F10000000000000
  %6856 = fcmp fast oeq float %6853, 0.000000e+00
  br i1 %6856, label %6857, label %6924

; <label>:6857                                    ; preds = %6845
  %6858 = extractvalue %dx.types.CBufRet.f32 %6849, 1
  %6859 = extractvalue %dx.types.CBufRet.f32 %6849, 0
  %6860 = fmul fast float %6859, %6339
  %6861 = fmul fast float %6858, %6340
  %6862 = fadd fast float %6860, 5.000000e-01
  %6863 = call float @dx.op.unary.f32(i32 27, float %6862)  ; Round_ni(value)
  %6864 = fadd fast float %6861, 5.000000e-01
  %6865 = call float @dx.op.unary.f32(i32 27, float %6864)  ; Round_ni(value)
  %6866 = fsub fast float %6862, %6863
  %6867 = fsub fast float %6864, %6865
  %6868 = fadd fast float %6863, -5.000000e-01
  %6869 = fadd fast float %6865, -5.000000e-01
  %6870 = fmul fast float %6866, 2.000000e+00
  %6871 = fsub fast float 3.000000e+00, %6870
  %6872 = fadd fast float %6870, 1.000000e+00
  %6873 = fsub fast float 2.000000e+00, %6866
  %6874 = bitcast float %6871 to i32
  %6875 = sub nsw i32 2129859010, %6874
  %6876 = bitcast i32 %6875 to float
  %6877 = fmul fast float %6876, %6873
  %6878 = fadd fast float %6877, -1.000000e+00
  %6879 = bitcast float %6872 to i32
  %6880 = sub nsw i32 2129859010, %6879
  %6881 = bitcast i32 %6880 to float
  %6882 = fmul fast float %6881, %6866
  %6883 = fadd fast float %6882, 1.000000e+00
  %6884 = fmul fast float %6867, 2.000000e+00
  %6885 = fsub fast float 3.000000e+00, %6884
  %6886 = fadd fast float %6884, 1.000000e+00
  %6887 = fsub fast float 2.000000e+00, %6867
  %6888 = bitcast float %6885 to i32
  %6889 = sub nsw i32 2129859010, %6888
  %6890 = bitcast i32 %6889 to float
  %6891 = fmul fast float %6890, %6887
  %6892 = fadd fast float %6891, -1.000000e+00
  %6893 = bitcast float %6886 to i32
  %6894 = sub nsw i32 2129859010, %6893
  %6895 = bitcast i32 %6894 to float
  %6896 = fmul fast float %6895, %6867
  %6897 = fadd fast float %6896, 1.000000e+00
  %6898 = fadd fast float %6878, %6868
  %6899 = fmul fast float %6898, %6850
  %6900 = fadd fast float %6892, %6869
  %6901 = fmul fast float %6900, %6851
  %6902 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %58, float %6899, float %6901, float undef, float undef, i32 0, i32 0, i32 undef, float %6855)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6903 = extractvalue %dx.types.ResRet.f32 %6902, 0
  %6904 = fmul fast float %6903, %6871
  %6905 = fadd fast float %6883, %6868
  %6906 = fmul fast float %6905, %6850
  %6907 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %58, float %6906, float %6901, float undef, float undef, i32 0, i32 0, i32 undef, float %6855)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6908 = extractvalue %dx.types.ResRet.f32 %6907, 0
  %6909 = fmul fast float %6908, %6872
  %6910 = fadd fast float %6897, %6869
  %6911 = fmul fast float %6910, %6851
  %6912 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %58, float %6899, float %6911, float undef, float undef, i32 0, i32 0, i32 undef, float %6855)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6913 = extractvalue %dx.types.ResRet.f32 %6912, 0
  %6914 = fmul fast float %6913, %6871
  %6915 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %58, float %6906, float %6911, float undef, float undef, i32 0, i32 0, i32 undef, float %6855)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6916 = extractvalue %dx.types.ResRet.f32 %6915, 0
  %6917 = fmul fast float %6916, %6872
  %6918 = fadd fast float %6917, %6914
  %6919 = fmul fast float %6918, %6886
  %6920 = fadd fast float %6909, %6904
  %6921 = fmul fast float %6920, %6885
  %6922 = fadd fast float %6921, %6919
  %6923 = fmul fast float %6922, 6.250000e-02
  br label %7009

; <label>:6924                                    ; preds = %6845
  %6925 = fmul fast float %290, 0x401921FB60000000
  %6926 = call float @dx.op.unary.f32(i32 13, float %6925)  ; Sin(value)
  %6927 = call float @dx.op.unary.f32(i32 12, float %6925)  ; Cos(value)
  %6928 = fsub fast float -0.000000e+00, %6926
  br label %6929

; <label>:6929                                    ; preds = %6978, %6924
  %6930 = phi float [ 0.000000e+00, %6924 ], [ %6973, %6978 ]
  %6931 = phi float [ 0.000000e+00, %6924 ], [ %6975, %6978 ]
  %6932 = phi i32 [ 0, %6924 ], [ %6979, %6978 ]
  %6933 = mul i32 %6932, 2
  %6934 = add i32 0, %6933
  %6935 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6934
  %6936 = load float, float* %6935, align 4
  %6937 = mul i32 %6932, 2
  %6938 = add i32 1, %6937
  %6939 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6938
  %6940 = load float, float* %6939, align 4
  %6941 = fmul fast float %6936, %6927
  %6942 = call float @dx.op.tertiary.f32(i32 46, float %6940, float %6928, float %6941)  ; FMad(a,b,c)
  %6943 = fmul fast float %6936, %6926
  %6944 = call float @dx.op.tertiary.f32(i32 46, float %6940, float %6927, float %6943)  ; FMad(a,b,c)
  %6945 = fmul fast float %6942, %6853
  %6946 = fmul fast float %6944, %6853
  %6947 = fadd fast float %6945, %6339
  %6948 = fadd fast float %6946, %6340
  %6949 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %57, float %6947, float %6948, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6950 = extractvalue %dx.types.ResRet.f32 %6949, 0
  %6951 = extractvalue %dx.types.ResRet.f32 %6949, 1
  %6952 = extractvalue %dx.types.ResRet.f32 %6949, 2
  %6953 = extractvalue %dx.types.ResRet.f32 %6949, 3
  %6954 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 0
  store float %6950, float* %6954, align 4
  %6955 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 1
  store float %6951, float* %6955, align 4
  %6956 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 2
  store float %6952, float* %6956, align 4
  %6957 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 3
  store float %6953, float* %6957, align 4
  %6958 = fsub fast float %6950, %6855
  %6959 = fcmp fast olt float %6958, 0.000000e+00
  %6960 = select i1 %6959, float 0.000000e+00, float 1.000000e+00
  %6961 = fadd fast float %6960, %6930
  %6962 = fmul fast float %6960, %6958
  %6963 = fadd fast float %6962, %6931
  br label %6964

; <label>:6964                                    ; preds = %6964, %6929
  %6965 = phi i32 [ 1, %6929 ], [ %6976, %6964 ]
  %6966 = phi float [ %6963, %6929 ], [ %6975, %6964 ]
  %6967 = phi float [ %6961, %6929 ], [ %6973, %6964 ]
  %6968 = getelementptr [4 x float], [4 x float]* %113, i32 0, i32 %6965
  %6969 = load float, float* %6968, align 4, !tbaa !126, !noalias !116
  %6970 = fsub fast float %6969, %6855
  %6971 = fcmp fast olt float %6970, 0.000000e+00
  %6972 = select i1 %6971, float 0.000000e+00, float 1.000000e+00
  %6973 = fadd fast float %6972, %6967
  %6974 = fmul fast float %6972, %6970
  %6975 = fadd fast float %6974, %6966
  %6976 = add nuw nsw i32 %6965, 1
  %6977 = icmp eq i32 %6976, 4
  br i1 %6977, label %6978, label %6964, !llvm.loop !128

; <label>:6978                                    ; preds = %6964
  %6979 = add nuw nsw i32 %6932, 1
  %6980 = icmp eq i32 %6979, 8
  br i1 %6980, label %6981, label %6929, !llvm.loop !129

; <label>:6981                                    ; preds = %6978
  %6982 = fdiv fast float 1.000000e+00, %6973
  %6983 = fmul fast float %6982, %6975
  %6984 = fdiv fast float 1.000000e+00, %6855
  %6985 = fmul fast float %6983, %6984
  %6986 = call float @dx.op.unary.f32(i32 7, float %6985)  ; Saturate(value)
  %6987 = call float @dx.op.binary.f32(i32 35, float %6986, float 0.000000e+00)  ; FMax(a,b)
  %6988 = fmul fast float %6973, 3.125000e-02
  %6989 = call float @dx.op.unary.f32(i32 7, float %6988)  ; Saturate(value)
  %6990 = fmul fast float %6989, 2.000000e+00
  %6991 = fadd fast float %6990, -1.000000e+00
  %6992 = fcmp fast ogt float %6991, 0.000000e+00
  %6993 = fcmp fast olt float %6991, 0.000000e+00
  %6994 = zext i1 %6992 to i32
  %6995 = zext i1 %6993 to i32
  %6996 = sub nsw i32 %6994, %6995
  %6997 = sitofp i32 %6996 to float
  %6998 = fmul fast float %6997, %6991
  %6999 = fsub fast float 1.000000e+00, %6998
  %7000 = fmul fast float %6999, %6999
  %7001 = fmul fast float %7000, %6999
  %7002 = fsub fast float %6999, %7001
  %7003 = fmul fast float %7002, %6987
  %7004 = fsub fast float 1.000000e+00, %7001
  %7005 = fsub fast float %7004, %7003
  %7006 = fmul fast float %6997, 5.000000e-01
  %7007 = fmul fast float %7006, %7005
  %7008 = fsub fast float 5.000000e-01, %7007
  br label %7009

; <label>:7009                                    ; preds = %6981, %6857, %6842
  %7010 = phi float [ 1.000000e+00, %6842 ], [ %6923, %6857 ], [ %7008, %6981 ]
  %7011 = fcmp fast ogt float %6438, 0.000000e+00
  br i1 %7011, label %7012, label %7176, !dx.controlflow.hints !130

; <label>:7012                                    ; preds = %7009
  %7013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7014 = extractvalue %dx.types.CBufRet.f32 %7013, 1
  %7015 = fadd fast float %7014, %6321
  %7016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7017 = extractvalue %dx.types.CBufRet.f32 %7016, 2
  %7018 = extractvalue %dx.types.CBufRet.f32 %7016, 3
  %7019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7020 = extractvalue %dx.types.CBufRet.f32 %7019, 1
  %7021 = call float @dx.op.binary.f32(i32 35, float %7015, float 0.000000e+00)  ; FMax(a,b)
  %7022 = fadd fast float %7021, 0x3F10000000000000
  %7023 = fcmp fast oeq float %7020, 0.000000e+00
  br i1 %7023, label %7024, label %7091

; <label>:7024                                    ; preds = %7012
  %7025 = extractvalue %dx.types.CBufRet.f32 %7016, 1
  %7026 = extractvalue %dx.types.CBufRet.f32 %7016, 0
  %7027 = fmul fast float %7026, %6331
  %7028 = fmul fast float %7025, %6332
  %7029 = fadd fast float %7027, 5.000000e-01
  %7030 = call float @dx.op.unary.f32(i32 27, float %7029)  ; Round_ni(value)
  %7031 = fadd fast float %7028, 5.000000e-01
  %7032 = call float @dx.op.unary.f32(i32 27, float %7031)  ; Round_ni(value)
  %7033 = fsub fast float %7029, %7030
  %7034 = fsub fast float %7031, %7032
  %7035 = fadd fast float %7030, -5.000000e-01
  %7036 = fadd fast float %7032, -5.000000e-01
  %7037 = fmul fast float %7033, 2.000000e+00
  %7038 = fsub fast float 3.000000e+00, %7037
  %7039 = fadd fast float %7037, 1.000000e+00
  %7040 = fsub fast float 2.000000e+00, %7033
  %7041 = bitcast float %7038 to i32
  %7042 = sub nsw i32 2129859010, %7041
  %7043 = bitcast i32 %7042 to float
  %7044 = fmul fast float %7043, %7040
  %7045 = fadd fast float %7044, -1.000000e+00
  %7046 = bitcast float %7039 to i32
  %7047 = sub nsw i32 2129859010, %7046
  %7048 = bitcast i32 %7047 to float
  %7049 = fmul fast float %7048, %7033
  %7050 = fadd fast float %7049, 1.000000e+00
  %7051 = fmul fast float %7034, 2.000000e+00
  %7052 = fsub fast float 3.000000e+00, %7051
  %7053 = fadd fast float %7051, 1.000000e+00
  %7054 = fsub fast float 2.000000e+00, %7034
  %7055 = bitcast float %7052 to i32
  %7056 = sub nsw i32 2129859010, %7055
  %7057 = bitcast i32 %7056 to float
  %7058 = fmul fast float %7057, %7054
  %7059 = fadd fast float %7058, -1.000000e+00
  %7060 = bitcast float %7053 to i32
  %7061 = sub nsw i32 2129859010, %7060
  %7062 = bitcast i32 %7061 to float
  %7063 = fmul fast float %7062, %7034
  %7064 = fadd fast float %7063, 1.000000e+00
  %7065 = fadd fast float %7045, %7035
  %7066 = fmul fast float %7065, %7017
  %7067 = fadd fast float %7059, %7036
  %7068 = fmul fast float %7067, %7018
  %7069 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %7066, float %7068, float undef, float undef, i32 0, i32 0, i32 undef, float %7022)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7070 = extractvalue %dx.types.ResRet.f32 %7069, 0
  %7071 = fmul fast float %7070, %7038
  %7072 = fadd fast float %7050, %7035
  %7073 = fmul fast float %7072, %7017
  %7074 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %7073, float %7068, float undef, float undef, i32 0, i32 0, i32 undef, float %7022)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7075 = extractvalue %dx.types.ResRet.f32 %7074, 0
  %7076 = fmul fast float %7075, %7039
  %7077 = fadd fast float %7064, %7036
  %7078 = fmul fast float %7077, %7018
  %7079 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %7066, float %7078, float undef, float undef, i32 0, i32 0, i32 undef, float %7022)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7080 = extractvalue %dx.types.ResRet.f32 %7079, 0
  %7081 = fmul fast float %7080, %7038
  %7082 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %7073, float %7078, float undef, float undef, i32 0, i32 0, i32 undef, float %7022)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7083 = extractvalue %dx.types.ResRet.f32 %7082, 0
  %7084 = fmul fast float %7083, %7039
  %7085 = fadd fast float %7084, %7081
  %7086 = fmul fast float %7085, %7053
  %7087 = fadd fast float %7076, %7071
  %7088 = fmul fast float %7087, %7052
  %7089 = fadd fast float %7088, %7086
  %7090 = fmul fast float %7089, 6.250000e-02
  br label %7176

; <label>:7091                                    ; preds = %7012
  %7092 = fmul fast float %290, 0x401921FB60000000
  %7093 = call float @dx.op.unary.f32(i32 13, float %7092)  ; Sin(value)
  %7094 = call float @dx.op.unary.f32(i32 12, float %7092)  ; Cos(value)
  %7095 = fsub fast float -0.000000e+00, %7093
  br label %7096

; <label>:7096                                    ; preds = %7145, %7091
  %7097 = phi float [ 0.000000e+00, %7091 ], [ %7140, %7145 ]
  %7098 = phi float [ 0.000000e+00, %7091 ], [ %7142, %7145 ]
  %7099 = phi i32 [ 0, %7091 ], [ %7146, %7145 ]
  %7100 = mul i32 %7099, 2
  %7101 = add i32 0, %7100
  %7102 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7101
  %7103 = load float, float* %7102, align 4
  %7104 = mul i32 %7099, 2
  %7105 = add i32 1, %7104
  %7106 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7105
  %7107 = load float, float* %7106, align 4
  %7108 = fmul fast float %7103, %7094
  %7109 = call float @dx.op.tertiary.f32(i32 46, float %7107, float %7095, float %7108)  ; FMad(a,b,c)
  %7110 = fmul fast float %7103, %7093
  %7111 = call float @dx.op.tertiary.f32(i32 46, float %7107, float %7094, float %7110)  ; FMad(a,b,c)
  %7112 = fmul fast float %7109, %7020
  %7113 = fmul fast float %7111, %7020
  %7114 = fadd fast float %7112, %6331
  %7115 = fadd fast float %7113, %6332
  %7116 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %57, float %7114, float %7115, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7117 = extractvalue %dx.types.ResRet.f32 %7116, 0
  %7118 = extractvalue %dx.types.ResRet.f32 %7116, 1
  %7119 = extractvalue %dx.types.ResRet.f32 %7116, 2
  %7120 = extractvalue %dx.types.ResRet.f32 %7116, 3
  %7121 = getelementptr inbounds [4 x float], [4 x float]* %112, i32 0, i32 0
  store float %7117, float* %7121, align 4
  %7122 = getelementptr inbounds [4 x float], [4 x float]* %112, i32 0, i32 1
  store float %7118, float* %7122, align 4
  %7123 = getelementptr inbounds [4 x float], [4 x float]* %112, i32 0, i32 2
  store float %7119, float* %7123, align 4
  %7124 = getelementptr inbounds [4 x float], [4 x float]* %112, i32 0, i32 3
  store float %7120, float* %7124, align 4
  %7125 = fsub fast float %7117, %7022
  %7126 = fcmp fast olt float %7125, 0.000000e+00
  %7127 = select i1 %7126, float 0.000000e+00, float 1.000000e+00
  %7128 = fadd fast float %7127, %7097
  %7129 = fmul fast float %7127, %7125
  %7130 = fadd fast float %7129, %7098
  br label %7131

; <label>:7131                                    ; preds = %7131, %7096
  %7132 = phi i32 [ 1, %7096 ], [ %7143, %7131 ]
  %7133 = phi float [ %7130, %7096 ], [ %7142, %7131 ]
  %7134 = phi float [ %7128, %7096 ], [ %7140, %7131 ]
  %7135 = getelementptr [4 x float], [4 x float]* %112, i32 0, i32 %7132
  %7136 = load float, float* %7135, align 4, !tbaa !126, !noalias !116
  %7137 = fsub fast float %7136, %7022
  %7138 = fcmp fast olt float %7137, 0.000000e+00
  %7139 = select i1 %7138, float 0.000000e+00, float 1.000000e+00
  %7140 = fadd fast float %7139, %7134
  %7141 = fmul fast float %7139, %7137
  %7142 = fadd fast float %7141, %7133
  %7143 = add nuw nsw i32 %7132, 1
  %7144 = icmp eq i32 %7143, 4
  br i1 %7144, label %7145, label %7131, !llvm.loop !128

; <label>:7145                                    ; preds = %7131
  %7146 = add nuw nsw i32 %7099, 1
  %7147 = icmp eq i32 %7146, 8
  br i1 %7147, label %7148, label %7096, !llvm.loop !129

; <label>:7148                                    ; preds = %7145
  %7149 = fdiv fast float 1.000000e+00, %7140
  %7150 = fmul fast float %7149, %7142
  %7151 = fdiv fast float 1.000000e+00, %7022
  %7152 = fmul fast float %7150, %7151
  %7153 = call float @dx.op.unary.f32(i32 7, float %7152)  ; Saturate(value)
  %7154 = call float @dx.op.binary.f32(i32 35, float %7153, float 0.000000e+00)  ; FMax(a,b)
  %7155 = fmul fast float %7140, 3.125000e-02
  %7156 = call float @dx.op.unary.f32(i32 7, float %7155)  ; Saturate(value)
  %7157 = fmul fast float %7156, 2.000000e+00
  %7158 = fadd fast float %7157, -1.000000e+00
  %7159 = fcmp fast ogt float %7158, 0.000000e+00
  %7160 = fcmp fast olt float %7158, 0.000000e+00
  %7161 = zext i1 %7159 to i32
  %7162 = zext i1 %7160 to i32
  %7163 = sub nsw i32 %7161, %7162
  %7164 = sitofp i32 %7163 to float
  %7165 = fmul fast float %7164, %7158
  %7166 = fsub fast float 1.000000e+00, %7165
  %7167 = fmul fast float %7166, %7166
  %7168 = fmul fast float %7167, %7166
  %7169 = fsub fast float %7166, %7168
  %7170 = fmul fast float %7169, %7154
  %7171 = fsub fast float 1.000000e+00, %7168
  %7172 = fsub fast float %7171, %7170
  %7173 = fmul fast float %7164, 5.000000e-01
  %7174 = fmul fast float %7173, %7172
  %7175 = fsub fast float 5.000000e-01, %7174
  br label %7176

; <label>:7176                                    ; preds = %7148, %7024, %7009
  %7177 = phi float [ 1.000000e+00, %7009 ], [ %7090, %7024 ], [ %7175, %7148 ]
  %7178 = fcmp fast ogt float %6437, 0.000000e+00
  br i1 %7178, label %7179, label %7497, !dx.controlflow.hints !131

; <label>:7179                                    ; preds = %7176
  %7180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7181 = extractvalue %dx.types.CBufRet.f32 %7180, 0
  %7182 = fadd fast float %7181, %6321
  %7183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7184 = extractvalue %dx.types.CBufRet.f32 %7183, 2
  %7185 = extractvalue %dx.types.CBufRet.f32 %7183, 3
  %7186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7187 = extractvalue %dx.types.CBufRet.f32 %7186, 0
  %7188 = call float @dx.op.binary.f32(i32 35, float %7182, float 0.000000e+00)  ; FMax(a,b)
  %7189 = fadd fast float %7188, 0x3F10000000000000
  %7190 = fcmp fast oeq float %7187, 0.000000e+00
  br i1 %6324, label %7191, label %7344, !dx.controlflow.hints !132

; <label>:7191                                    ; preds = %7179
  br i1 %7190, label %7192, label %7259

; <label>:7192                                    ; preds = %7191
  %7193 = extractvalue %dx.types.CBufRet.f32 %7183, 1
  %7194 = extractvalue %dx.types.CBufRet.f32 %7183, 0
  %7195 = fmul fast float %7194, %6313
  %7196 = fmul fast float %7193, %6317
  %7197 = fadd fast float %7195, 5.000000e-01
  %7198 = call float @dx.op.unary.f32(i32 27, float %7197)  ; Round_ni(value)
  %7199 = fadd fast float %7196, 5.000000e-01
  %7200 = call float @dx.op.unary.f32(i32 27, float %7199)  ; Round_ni(value)
  %7201 = fsub fast float %7197, %7198
  %7202 = fsub fast float %7199, %7200
  %7203 = fadd fast float %7198, -5.000000e-01
  %7204 = fadd fast float %7200, -5.000000e-01
  %7205 = fmul fast float %7201, 2.000000e+00
  %7206 = fsub fast float 3.000000e+00, %7205
  %7207 = fadd fast float %7205, 1.000000e+00
  %7208 = fsub fast float 2.000000e+00, %7201
  %7209 = bitcast float %7206 to i32
  %7210 = sub nsw i32 2129859010, %7209
  %7211 = bitcast i32 %7210 to float
  %7212 = fmul fast float %7211, %7208
  %7213 = fadd fast float %7212, -1.000000e+00
  %7214 = bitcast float %7207 to i32
  %7215 = sub nsw i32 2129859010, %7214
  %7216 = bitcast i32 %7215 to float
  %7217 = fmul fast float %7216, %7201
  %7218 = fadd fast float %7217, 1.000000e+00
  %7219 = fmul fast float %7202, 2.000000e+00
  %7220 = fsub fast float 3.000000e+00, %7219
  %7221 = fadd fast float %7219, 1.000000e+00
  %7222 = fsub fast float 2.000000e+00, %7202
  %7223 = bitcast float %7220 to i32
  %7224 = sub nsw i32 2129859010, %7223
  %7225 = bitcast i32 %7224 to float
  %7226 = fmul fast float %7225, %7222
  %7227 = fadd fast float %7226, -1.000000e+00
  %7228 = bitcast float %7221 to i32
  %7229 = sub nsw i32 2129859010, %7228
  %7230 = bitcast i32 %7229 to float
  %7231 = fmul fast float %7230, %7202
  %7232 = fadd fast float %7231, 1.000000e+00
  %7233 = fadd fast float %7213, %7203
  %7234 = fmul fast float %7233, %7184
  %7235 = fadd fast float %7227, %7204
  %7236 = fmul fast float %7235, %7185
  %7237 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %58, float %7234, float %7236, float undef, float undef, i32 0, i32 0, i32 undef, float %7189)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7238 = extractvalue %dx.types.ResRet.f32 %7237, 0
  %7239 = fmul fast float %7238, %7206
  %7240 = fadd fast float %7218, %7203
  %7241 = fmul fast float %7240, %7184
  %7242 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %58, float %7241, float %7236, float undef, float undef, i32 0, i32 0, i32 undef, float %7189)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7243 = extractvalue %dx.types.ResRet.f32 %7242, 0
  %7244 = fmul fast float %7243, %7207
  %7245 = fadd fast float %7232, %7204
  %7246 = fmul fast float %7245, %7185
  %7247 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %58, float %7234, float %7246, float undef, float undef, i32 0, i32 0, i32 undef, float %7189)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7248 = extractvalue %dx.types.ResRet.f32 %7247, 0
  %7249 = fmul fast float %7248, %7206
  %7250 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %58, float %7241, float %7246, float undef, float undef, i32 0, i32 0, i32 undef, float %7189)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7251 = extractvalue %dx.types.ResRet.f32 %7250, 0
  %7252 = fmul fast float %7251, %7207
  %7253 = fadd fast float %7252, %7249
  %7254 = fmul fast float %7253, %7221
  %7255 = fadd fast float %7244, %7239
  %7256 = fmul fast float %7255, %7220
  %7257 = fadd fast float %7256, %7254
  %7258 = fmul fast float %7257, 6.250000e-02
  br label %7497

; <label>:7259                                    ; preds = %7191
  %7260 = fmul fast float %290, 0x401921FB60000000
  %7261 = call float @dx.op.unary.f32(i32 13, float %7260)  ; Sin(value)
  %7262 = call float @dx.op.unary.f32(i32 12, float %7260)  ; Cos(value)
  %7263 = fsub fast float -0.000000e+00, %7261
  br label %7264

; <label>:7264                                    ; preds = %7313, %7259
  %7265 = phi float [ 0.000000e+00, %7259 ], [ %7308, %7313 ]
  %7266 = phi float [ 0.000000e+00, %7259 ], [ %7310, %7313 ]
  %7267 = phi i32 [ 0, %7259 ], [ %7314, %7313 ]
  %7268 = mul i32 %7267, 2
  %7269 = add i32 0, %7268
  %7270 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7269
  %7271 = load float, float* %7270, align 4
  %7272 = mul i32 %7267, 2
  %7273 = add i32 1, %7272
  %7274 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7273
  %7275 = load float, float* %7274, align 4
  %7276 = fmul fast float %7271, %7262
  %7277 = call float @dx.op.tertiary.f32(i32 46, float %7275, float %7263, float %7276)  ; FMad(a,b,c)
  %7278 = fmul fast float %7271, %7261
  %7279 = call float @dx.op.tertiary.f32(i32 46, float %7275, float %7262, float %7278)  ; FMad(a,b,c)
  %7280 = fmul fast float %7277, %7187
  %7281 = fmul fast float %7279, %7187
  %7282 = fadd fast float %7280, %6313
  %7283 = fadd fast float %7281, %6317
  %7284 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %57, float %7282, float %7283, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7285 = extractvalue %dx.types.ResRet.f32 %7284, 0
  %7286 = extractvalue %dx.types.ResRet.f32 %7284, 1
  %7287 = extractvalue %dx.types.ResRet.f32 %7284, 2
  %7288 = extractvalue %dx.types.ResRet.f32 %7284, 3
  %7289 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 0
  store float %7285, float* %7289, align 4
  %7290 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 1
  store float %7286, float* %7290, align 4
  %7291 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 2
  store float %7287, float* %7291, align 4
  %7292 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 3
  store float %7288, float* %7292, align 4
  %7293 = fsub fast float %7285, %7189
  %7294 = fcmp fast olt float %7293, 0.000000e+00
  %7295 = select i1 %7294, float 0.000000e+00, float 1.000000e+00
  %7296 = fadd fast float %7295, %7265
  %7297 = fmul fast float %7295, %7293
  %7298 = fadd fast float %7297, %7266
  br label %7299

; <label>:7299                                    ; preds = %7299, %7264
  %7300 = phi i32 [ 1, %7264 ], [ %7311, %7299 ]
  %7301 = phi float [ %7298, %7264 ], [ %7310, %7299 ]
  %7302 = phi float [ %7296, %7264 ], [ %7308, %7299 ]
  %7303 = getelementptr [4 x float], [4 x float]* %111, i32 0, i32 %7300
  %7304 = load float, float* %7303, align 4, !tbaa !126, !noalias !116
  %7305 = fsub fast float %7304, %7189
  %7306 = fcmp fast olt float %7305, 0.000000e+00
  %7307 = select i1 %7306, float 0.000000e+00, float 1.000000e+00
  %7308 = fadd fast float %7307, %7302
  %7309 = fmul fast float %7307, %7305
  %7310 = fadd fast float %7309, %7301
  %7311 = add nuw nsw i32 %7300, 1
  %7312 = icmp eq i32 %7311, 4
  br i1 %7312, label %7313, label %7299, !llvm.loop !128

; <label>:7313                                    ; preds = %7299
  %7314 = add nuw nsw i32 %7267, 1
  %7315 = icmp eq i32 %7314, 8
  br i1 %7315, label %7316, label %7264, !llvm.loop !129

; <label>:7316                                    ; preds = %7313
  %7317 = fdiv fast float 1.000000e+00, %7308
  %7318 = fmul fast float %7317, %7310
  %7319 = fdiv fast float 1.000000e+00, %7189
  %7320 = fmul fast float %7318, %7319
  %7321 = call float @dx.op.unary.f32(i32 7, float %7320)  ; Saturate(value)
  %7322 = call float @dx.op.binary.f32(i32 35, float %7321, float 0.000000e+00)  ; FMax(a,b)
  %7323 = fmul fast float %7308, 3.125000e-02
  %7324 = call float @dx.op.unary.f32(i32 7, float %7323)  ; Saturate(value)
  %7325 = fmul fast float %7324, 2.000000e+00
  %7326 = fadd fast float %7325, -1.000000e+00
  %7327 = fcmp fast ogt float %7326, 0.000000e+00
  %7328 = fcmp fast olt float %7326, 0.000000e+00
  %7329 = zext i1 %7327 to i32
  %7330 = zext i1 %7328 to i32
  %7331 = sub nsw i32 %7329, %7330
  %7332 = sitofp i32 %7331 to float
  %7333 = fmul fast float %7332, %7326
  %7334 = fsub fast float 1.000000e+00, %7333
  %7335 = fmul fast float %7334, %7334
  %7336 = fmul fast float %7335, %7334
  %7337 = fsub fast float %7334, %7336
  %7338 = fmul fast float %7337, %7322
  %7339 = fsub fast float 1.000000e+00, %7336
  %7340 = fsub fast float %7339, %7338
  %7341 = fmul fast float %7332, 5.000000e-01
  %7342 = fmul fast float %7341, %7340
  %7343 = fsub fast float 5.000000e-01, %7342
  br label %7497

; <label>:7344                                    ; preds = %7179
  br i1 %7190, label %7345, label %7412

; <label>:7345                                    ; preds = %7344
  %7346 = extractvalue %dx.types.CBufRet.f32 %7183, 1
  %7347 = extractvalue %dx.types.CBufRet.f32 %7183, 0
  %7348 = fmul fast float %7347, %6313
  %7349 = fmul fast float %7346, %6317
  %7350 = fadd fast float %7348, 5.000000e-01
  %7351 = call float @dx.op.unary.f32(i32 27, float %7350)  ; Round_ni(value)
  %7352 = fadd fast float %7349, 5.000000e-01
  %7353 = call float @dx.op.unary.f32(i32 27, float %7352)  ; Round_ni(value)
  %7354 = fsub fast float %7350, %7351
  %7355 = fsub fast float %7352, %7353
  %7356 = fadd fast float %7351, -5.000000e-01
  %7357 = fadd fast float %7353, -5.000000e-01
  %7358 = fmul fast float %7354, 2.000000e+00
  %7359 = fsub fast float 3.000000e+00, %7358
  %7360 = fadd fast float %7358, 1.000000e+00
  %7361 = fsub fast float 2.000000e+00, %7354
  %7362 = bitcast float %7359 to i32
  %7363 = sub nsw i32 2129859010, %7362
  %7364 = bitcast i32 %7363 to float
  %7365 = fmul fast float %7364, %7361
  %7366 = fadd fast float %7365, -1.000000e+00
  %7367 = bitcast float %7360 to i32
  %7368 = sub nsw i32 2129859010, %7367
  %7369 = bitcast i32 %7368 to float
  %7370 = fmul fast float %7369, %7354
  %7371 = fadd fast float %7370, 1.000000e+00
  %7372 = fmul fast float %7355, 2.000000e+00
  %7373 = fsub fast float 3.000000e+00, %7372
  %7374 = fadd fast float %7372, 1.000000e+00
  %7375 = fsub fast float 2.000000e+00, %7355
  %7376 = bitcast float %7373 to i32
  %7377 = sub nsw i32 2129859010, %7376
  %7378 = bitcast i32 %7377 to float
  %7379 = fmul fast float %7378, %7375
  %7380 = fadd fast float %7379, -1.000000e+00
  %7381 = bitcast float %7374 to i32
  %7382 = sub nsw i32 2129859010, %7381
  %7383 = bitcast i32 %7382 to float
  %7384 = fmul fast float %7383, %7355
  %7385 = fadd fast float %7384, 1.000000e+00
  %7386 = fadd fast float %7366, %7356
  %7387 = fmul fast float %7386, %7184
  %7388 = fadd fast float %7380, %7357
  %7389 = fmul fast float %7388, %7185
  %7390 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %7387, float %7389, float undef, float undef, i32 0, i32 0, i32 undef, float %7189)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7391 = extractvalue %dx.types.ResRet.f32 %7390, 0
  %7392 = fmul fast float %7391, %7359
  %7393 = fadd fast float %7371, %7356
  %7394 = fmul fast float %7393, %7184
  %7395 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %7394, float %7389, float undef, float undef, i32 0, i32 0, i32 undef, float %7189)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7396 = extractvalue %dx.types.ResRet.f32 %7395, 0
  %7397 = fmul fast float %7396, %7360
  %7398 = fadd fast float %7385, %7357
  %7399 = fmul fast float %7398, %7185
  %7400 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %7387, float %7399, float undef, float undef, i32 0, i32 0, i32 undef, float %7189)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7401 = extractvalue %dx.types.ResRet.f32 %7400, 0
  %7402 = fmul fast float %7401, %7359
  %7403 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %7394, float %7399, float undef, float undef, i32 0, i32 0, i32 undef, float %7189)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7404 = extractvalue %dx.types.ResRet.f32 %7403, 0
  %7405 = fmul fast float %7404, %7360
  %7406 = fadd fast float %7405, %7402
  %7407 = fmul fast float %7406, %7374
  %7408 = fadd fast float %7397, %7392
  %7409 = fmul fast float %7408, %7373
  %7410 = fadd fast float %7409, %7407
  %7411 = fmul fast float %7410, 6.250000e-02
  br label %7497

; <label>:7412                                    ; preds = %7344
  %7413 = fmul fast float %290, 0x401921FB60000000
  %7414 = call float @dx.op.unary.f32(i32 13, float %7413)  ; Sin(value)
  %7415 = call float @dx.op.unary.f32(i32 12, float %7413)  ; Cos(value)
  %7416 = fsub fast float -0.000000e+00, %7414
  br label %7417

; <label>:7417                                    ; preds = %7466, %7412
  %7418 = phi float [ 0.000000e+00, %7412 ], [ %7461, %7466 ]
  %7419 = phi float [ 0.000000e+00, %7412 ], [ %7463, %7466 ]
  %7420 = phi i32 [ 0, %7412 ], [ %7467, %7466 ]
  %7421 = mul i32 %7420, 2
  %7422 = add i32 0, %7421
  %7423 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7422
  %7424 = load float, float* %7423, align 4
  %7425 = mul i32 %7420, 2
  %7426 = add i32 1, %7425
  %7427 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7426
  %7428 = load float, float* %7427, align 4
  %7429 = fmul fast float %7424, %7415
  %7430 = call float @dx.op.tertiary.f32(i32 46, float %7428, float %7416, float %7429)  ; FMad(a,b,c)
  %7431 = fmul fast float %7424, %7414
  %7432 = call float @dx.op.tertiary.f32(i32 46, float %7428, float %7415, float %7431)  ; FMad(a,b,c)
  %7433 = fmul fast float %7430, %7187
  %7434 = fmul fast float %7432, %7187
  %7435 = fadd fast float %7433, %6313
  %7436 = fadd fast float %7434, %6317
  %7437 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %57, float %7435, float %7436, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7438 = extractvalue %dx.types.ResRet.f32 %7437, 0
  %7439 = extractvalue %dx.types.ResRet.f32 %7437, 1
  %7440 = extractvalue %dx.types.ResRet.f32 %7437, 2
  %7441 = extractvalue %dx.types.ResRet.f32 %7437, 3
  %7442 = getelementptr inbounds [4 x float], [4 x float]* %110, i32 0, i32 0
  store float %7438, float* %7442, align 4
  %7443 = getelementptr inbounds [4 x float], [4 x float]* %110, i32 0, i32 1
  store float %7439, float* %7443, align 4
  %7444 = getelementptr inbounds [4 x float], [4 x float]* %110, i32 0, i32 2
  store float %7440, float* %7444, align 4
  %7445 = getelementptr inbounds [4 x float], [4 x float]* %110, i32 0, i32 3
  store float %7441, float* %7445, align 4
  %7446 = fsub fast float %7438, %7189
  %7447 = fcmp fast olt float %7446, 0.000000e+00
  %7448 = select i1 %7447, float 0.000000e+00, float 1.000000e+00
  %7449 = fadd fast float %7448, %7418
  %7450 = fmul fast float %7448, %7446
  %7451 = fadd fast float %7450, %7419
  br label %7452

; <label>:7452                                    ; preds = %7452, %7417
  %7453 = phi i32 [ 1, %7417 ], [ %7464, %7452 ]
  %7454 = phi float [ %7451, %7417 ], [ %7463, %7452 ]
  %7455 = phi float [ %7449, %7417 ], [ %7461, %7452 ]
  %7456 = getelementptr [4 x float], [4 x float]* %110, i32 0, i32 %7453
  %7457 = load float, float* %7456, align 4, !tbaa !126, !noalias !116
  %7458 = fsub fast float %7457, %7189
  %7459 = fcmp fast olt float %7458, 0.000000e+00
  %7460 = select i1 %7459, float 0.000000e+00, float 1.000000e+00
  %7461 = fadd fast float %7460, %7455
  %7462 = fmul fast float %7460, %7458
  %7463 = fadd fast float %7462, %7454
  %7464 = add nuw nsw i32 %7453, 1
  %7465 = icmp eq i32 %7464, 4
  br i1 %7465, label %7466, label %7452, !llvm.loop !128

; <label>:7466                                    ; preds = %7452
  %7467 = add nuw nsw i32 %7420, 1
  %7468 = icmp eq i32 %7467, 8
  br i1 %7468, label %7469, label %7417, !llvm.loop !129

; <label>:7469                                    ; preds = %7466
  %7470 = fdiv fast float 1.000000e+00, %7461
  %7471 = fmul fast float %7470, %7463
  %7472 = fdiv fast float 1.000000e+00, %7189
  %7473 = fmul fast float %7471, %7472
  %7474 = call float @dx.op.unary.f32(i32 7, float %7473)  ; Saturate(value)
  %7475 = call float @dx.op.binary.f32(i32 35, float %7474, float 0.000000e+00)  ; FMax(a,b)
  %7476 = fmul fast float %7461, 3.125000e-02
  %7477 = call float @dx.op.unary.f32(i32 7, float %7476)  ; Saturate(value)
  %7478 = fmul fast float %7477, 2.000000e+00
  %7479 = fadd fast float %7478, -1.000000e+00
  %7480 = fcmp fast ogt float %7479, 0.000000e+00
  %7481 = fcmp fast olt float %7479, 0.000000e+00
  %7482 = zext i1 %7480 to i32
  %7483 = zext i1 %7481 to i32
  %7484 = sub nsw i32 %7482, %7483
  %7485 = sitofp i32 %7484 to float
  %7486 = fmul fast float %7485, %7479
  %7487 = fsub fast float 1.000000e+00, %7486
  %7488 = fmul fast float %7487, %7487
  %7489 = fmul fast float %7488, %7487
  %7490 = fsub fast float %7487, %7489
  %7491 = fmul fast float %7490, %7475
  %7492 = fsub fast float 1.000000e+00, %7489
  %7493 = fsub fast float %7492, %7491
  %7494 = fmul fast float %7485, 5.000000e-01
  %7495 = fmul fast float %7494, %7493
  %7496 = fsub fast float 5.000000e-01, %7495
  br label %7497

; <label>:7497                                    ; preds = %7469, %7345, %7316, %7192, %7176
  %7498 = phi float [ 1.000000e+00, %7176 ], [ %7258, %7192 ], [ %7343, %7316 ], [ %7411, %7345 ], [ %7496, %7469 ]
  %7499 = fsub fast float %7010, %6843
  %7500 = fmul fast float %7499, %6410
  %7501 = fadd fast float %7500, %6843
  %7502 = fsub fast float %7177, %7501
  %7503 = fmul fast float %7502, %6409
  %7504 = fadd fast float %7503, %7501
  %7505 = fsub fast float %7498, %7504
  %7506 = fmul fast float %7505, %6437
  %7507 = fadd fast float %7506, %7504
  %7508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7509 = extractvalue %dx.types.CBufRet.f32 %7508, 2
  %7510 = fcmp fast ogt float %7509, 0.000000e+00
  br i1 %7510, label %7511, label %7551, !dx.controlflow.hints !133

; <label>:7511                                    ; preds = %7497
  %7512 = fcmp fast ugt float %7509, 0.000000e+00
  br i1 %7512, label %7513, label %7548

; <label>:7513                                    ; preds = %7511
  %7514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7515 = extractvalue %dx.types.CBufRet.f32 %7514, 0
  %7516 = extractvalue %dx.types.CBufRet.f32 %7514, 1
  %7517 = extractvalue %dx.types.CBufRet.f32 %7514, 2
  %7518 = extractvalue %dx.types.CBufRet.f32 %7514, 3
  %7519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7520 = extractvalue %dx.types.CBufRet.f32 %7519, 0
  %7521 = extractvalue %dx.types.CBufRet.f32 %7519, 1
  %7522 = extractvalue %dx.types.CBufRet.f32 %7519, 2
  %7523 = extractvalue %dx.types.CBufRet.f32 %7519, 3
  %7524 = extractvalue %dx.types.CBufRet.f32 %7508, 0
  %7525 = extractvalue %dx.types.CBufRet.f32 %7508, 1
  %7526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7527 = extractvalue %dx.types.CBufRet.f32 %7526, 0
  %7528 = extractvalue %dx.types.CBufRet.f32 %7526, 1
  %7529 = extractvalue %dx.types.CBufRet.f32 %7526, 2
  %7530 = fadd fast float %7527, %6290
  %7531 = fadd fast float %7528, %6291
  %7532 = fadd fast float %7529, %6292
  %7533 = fmul fast float %7530, %7515
  %7534 = call float @dx.op.tertiary.f32(i32 46, float %7516, float %7531, float %7533)  ; FMad(a,b,c)
  %7535 = call float @dx.op.tertiary.f32(i32 46, float %7517, float %7532, float %7534)  ; FMad(a,b,c)
  %7536 = fadd fast float %7535, %7518
  %7537 = fmul fast float %7530, %7520
  %7538 = call float @dx.op.tertiary.f32(i32 46, float %7521, float %7531, float %7537)  ; FMad(a,b,c)
  %7539 = call float @dx.op.tertiary.f32(i32 46, float %7522, float %7532, float %7538)  ; FMad(a,b,c)
  %7540 = fadd fast float %7539, %7523
  %7541 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %53, float %7536, float %7540, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7542 = extractvalue %dx.types.ResRet.f32 %7541, 0
  %7543 = fmul fast float %7542, %7525
  %7544 = fadd fast float %7543, %7524
  %7545 = call float @dx.op.unary.f32(i32 7, float %7544)  ; Saturate(value)
  %7546 = fmul fast float %7545, %7509
  %7547 = fsub fast float 1.000000e+00, %7546
  br label %7548

; <label>:7548                                    ; preds = %7513, %7511
  %7549 = phi float [ %7547, %7513 ], [ 1.000000e+00, %7511 ]
  %7550 = fmul fast float %7549, %7507
  br label %7551

; <label>:7551                                    ; preds = %7548, %7497, %6270
  %7552 = phi float [ 1.000000e+00, %6270 ], [ %7550, %7548 ], [ %7507, %7497 ]
  %7553 = call float @dx.op.binary.f32(i32 36, float %7552, float %7552)  ; FMin(a,b)
  %7554 = call float @dx.op.binary.f32(i32 36, float %7552, float %7553)  ; FMin(a,b)
  %7555 = fcmp fast ogt float %7554, 0.000000e+00
  br i1 %7555, label %7556, label %7721, !dx.controlflow.hints !134

; <label>:7556                                    ; preds = %7551
  %7557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7558 = extractvalue %dx.types.CBufRet.f32 %7557, 0
  %7559 = extractvalue %dx.types.CBufRet.f32 %7557, 1
  %7560 = extractvalue %dx.types.CBufRet.f32 %7557, 2
  %7561 = extractvalue %dx.types.CBufRet.f32 %7557, 3
  %7562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7563 = extractvalue %dx.types.CBufRet.f32 %7562, 0
  %7564 = extractvalue %dx.types.CBufRet.f32 %7562, 1
  %7565 = extractvalue %dx.types.CBufRet.f32 %7562, 2
  %7566 = extractvalue %dx.types.CBufRet.f32 %7562, 3
  %7567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7568 = extractvalue %dx.types.CBufRet.f32 %7567, 0
  %7569 = extractvalue %dx.types.CBufRet.f32 %7567, 1
  %7570 = extractvalue %dx.types.CBufRet.f32 %7567, 2
  %7571 = extractvalue %dx.types.CBufRet.f32 %7567, 3
  %7572 = fmul fast float %7558, %6290
  %7573 = call float @dx.op.tertiary.f32(i32 46, float %6291, float %7559, float %7572)  ; FMad(a,b,c)
  %7574 = call float @dx.op.tertiary.f32(i32 46, float %6292, float %7560, float %7573)  ; FMad(a,b,c)
  %7575 = fadd fast float %7574, %7561
  %7576 = fmul fast float %7563, %6290
  %7577 = call float @dx.op.tertiary.f32(i32 46, float %6291, float %7564, float %7576)  ; FMad(a,b,c)
  %7578 = call float @dx.op.tertiary.f32(i32 46, float %6292, float %7565, float %7577)  ; FMad(a,b,c)
  %7579 = fadd fast float %7578, %7566
  %7580 = fmul fast float %7568, %6290
  %7581 = call float @dx.op.tertiary.f32(i32 46, float %6291, float %7569, float %7580)  ; FMad(a,b,c)
  %7582 = call float @dx.op.tertiary.f32(i32 46, float %6292, float %7570, float %7581)  ; FMad(a,b,c)
  %7583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7584 = extractvalue %dx.types.CBufRet.f32 %7583, 0
  %7585 = extractvalue %dx.types.CBufRet.f32 %7583, 1
  %7586 = extractvalue %dx.types.CBufRet.f32 %7583, 3
  %7587 = fmul fast float %7586, %7575
  %7588 = fmul fast float %7586, %7579
  %7589 = fadd fast float %7587, %7584
  %7590 = fadd fast float %7588, %7585
  %7591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7592 = extractvalue %dx.types.CBufRet.f32 %7591, 0
  %7593 = extractvalue %dx.types.CBufRet.f32 %7591, 1
  %7594 = fsub fast float %7589, %7592
  %7595 = fsub fast float %7590, %7593
  %7596 = fcmp fast olt float %7594, 0.000000e+00
  %7597 = fcmp fast olt float %7595, 0.000000e+00
  %7598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7599 = extractvalue %dx.types.CBufRet.f32 %7598, 0
  %7600 = extractvalue %dx.types.CBufRet.f32 %7598, 1
  %7601 = extractvalue %dx.types.CBufRet.f32 %7598, 2
  %7602 = extractvalue %dx.types.CBufRet.f32 %7598, 3
  %7603 = select i1 %7596, float %7599, float %7601
  %7604 = select i1 %7597, float %7600, float %7602
  %7605 = fmul fast float %7603, %7594
  %7606 = fmul fast float %7604, %7595
  %7607 = call float @dx.op.unary.f32(i32 6, float %7605)  ; FAbs(value)
  %7608 = call float @dx.op.unary.f32(i32 6, float %7606)  ; FAbs(value)
  %7609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7610 = extractvalue %dx.types.CBufRet.f32 %7609, 0
  %7611 = call float @dx.op.binary.f32(i32 35, float %7607, float %7608)  ; FMax(a,b)
  %7612 = fsub fast float %7610, %7611
  %7613 = call float @dx.op.unary.f32(i32 7, float %7612)  ; Saturate(value)
  %7614 = fcmp fast ogt float %7613, 0.000000e+00
  br i1 %7614, label %7615, label %7656, !dx.controlflow.hints !135

; <label>:7615                                    ; preds = %7556
  %7616 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %56, float %7589, float %7590, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7617 = extractvalue %dx.types.ResRet.f32 %7616, 1
  %7618 = fcmp fast ogt float %7617, 0.000000e+00
  br i1 %7618, label %7619, label %7651

; <label>:7619                                    ; preds = %7615
  %7620 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %56, float %7589, float %7590, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7621 = extractvalue %dx.types.ResRet.f32 %7620, 0
  %7622 = extractvalue %dx.types.ResRet.f32 %7620, 1
  %7623 = extractvalue %dx.types.ResRet.f32 %7620, 2
  %7624 = extractvalue %dx.types.ResRet.f32 %7620, 3
  %7625 = fsub fast float 1.000000e+00, %7571
  %7626 = fsub fast float %7625, %7582
  %7627 = fmul fast float %7626, 0x400921FB60000000
  %7628 = fadd fast float %7627, 0x3FF921FB60000000
  %7629 = call float @dx.op.unary.f32(i32 13, float %7628)  ; Sin(value)
  %7630 = fadd fast float %7629, -1.000000e+00
  %7631 = fmul fast float %7630, 0x3FD45F3060000000
  %7632 = fmul fast float %7626, 0x401921FB60000000
  %7633 = fadd fast float %7632, 0x400921FB60000000
  %7634 = call float @dx.op.unary.f32(i32 13, float %7633)  ; Sin(value)
  %7635 = fadd fast float %7634, 0x3E7777A5C0000000
  %7636 = fmul fast float %7635, 0x3FC45F3060000000
  %7637 = fmul fast float %7626, 0x4022D97C80000000
  %7638 = fadd fast float %7637, 0x4012D97C80000000
  %7639 = call float @dx.op.unary.f32(i32 13, float %7638)  ; Sin(value)
  %7640 = fadd fast float %7639, 1.000000e+00
  %7641 = fmul fast float %7640, 0x3FBB2995E0000000
  %7642 = fmul fast float %7626, 0x402921FB60000000
  %7643 = fadd fast float %7642, 0x401921FB60000000
  %7644 = call float @dx.op.unary.f32(i32 13, float %7643)  ; Sin(value)
  %7645 = fadd fast float %7644, 0xBE8777A5C0000000
  %7646 = fmul fast float %7645, 0x3FB45F3060000000
  %7647 = call float @dx.op.dot4.f32(i32 56, float %7621, float %7622, float %7623, float %7624, float %7631, float %7636, float %7641, float %7646)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7648 = fmul fast float %7647, 0xBFF7154760000000
  %7649 = call float @dx.op.unary.f32(i32 21, float %7648)  ; Exp(value)
  %7650 = call float @dx.op.unary.f32(i32 7, float %7649)  ; Saturate(value)
  br label %7651

; <label>:7651                                    ; preds = %7619, %7615
  %7652 = phi float [ %7650, %7619 ], [ 1.000000e+00, %7615 ]
  %7653 = fadd fast float %7652, -1.000000e+00
  %7654 = fmul fast float %7653, %7613
  %7655 = fadd fast float %7654, 1.000000e+00
  br label %7656

; <label>:7656                                    ; preds = %7651, %7556
  %7657 = phi float [ %7655, %7651 ], [ 1.000000e+00, %7556 ]
  %7658 = fmul fast float %7657, %7552
  %7659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7660 = extractvalue %dx.types.CBufRet.f32 %7659, 0
  %7661 = extractvalue %dx.types.CBufRet.f32 %7659, 1
  %7662 = extractvalue %dx.types.CBufRet.f32 %7659, 2
  %7663 = fadd fast float %7660, %207
  %7664 = fadd fast float %7661, %208
  %7665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7666 = extractvalue %dx.types.CBufRet.f32 %7665, 1
  %7667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7668 = extractvalue %dx.types.CBufRet.f32 %7667, 0
  %7669 = extractvalue %dx.types.CBufRet.f32 %7667, 1
  %7670 = extractvalue %dx.types.CBufRet.f32 %7667, 2
  %7671 = fsub fast float -0.000000e+00, %7663
  %7672 = fsub fast float -0.000000e+00, %7664
  %7673 = fsub fast float %5479, %7662
  %7674 = fadd fast float %7673, %7666
  %7675 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7671, float %7672, float %7674)  ; Dot3(ax,ay,az,bx,by,bz)
  %7676 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7668, float %7669, float %7670)  ; Dot3(ax,ay,az,bx,by,bz)
  %7677 = fdiv fast float 1.000000e+00, %7676
  %7678 = fmul fast float %7677, %7675
  %7679 = fmul fast float %7668, %7678
  %7680 = fmul fast float %7669, %7678
  %7681 = fadd fast float %7679, %7663
  %7682 = fadd fast float %7680, %7664
  %7683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7684 = extractvalue %dx.types.CBufRet.f32 %7683, 0
  %7685 = extractvalue %dx.types.CBufRet.f32 %7683, 1
  %7686 = fsub fast float %7681, %7684
  %7687 = fsub fast float %7682, %7685
  %7688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7689 = extractvalue %dx.types.CBufRet.f32 %7688, 2
  %7690 = extractvalue %dx.types.CBufRet.f32 %7688, 3
  %7691 = fmul fast float %7686, %7689
  %7692 = fmul fast float %7687, %7690
  %7693 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7694 = extractvalue %dx.types.CBufRet.i32 %7693, 3
  %7695 = icmp eq i32 %7694, 0
  br i1 %7695, label %7701, label %7696

; <label>:7696                                    ; preds = %7656
  %7697 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %55, float %7691, float %7692, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7698 = extractvalue %dx.types.ResRet.f32 %7697, 0
  %7699 = extractvalue %dx.types.ResRet.f32 %7697, 1
  %7700 = extractvalue %dx.types.ResRet.f32 %7697, 2
  br label %7706

; <label>:7701                                    ; preds = %7656
  %7702 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %56, float %7691, float %7692, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7703 = extractvalue %dx.types.ResRet.f32 %7702, 0
  %7704 = extractvalue %dx.types.ResRet.f32 %7702, 1
  %7705 = extractvalue %dx.types.ResRet.f32 %7702, 2
  br label %7706

; <label>:7706                                    ; preds = %7701, %7696
  %7707 = phi float [ %7698, %7696 ], [ %7703, %7701 ]
  %7708 = phi float [ %7699, %7696 ], [ %7704, %7701 ]
  %7709 = phi float [ %7700, %7696 ], [ %7705, %7701 ]
  %7710 = extractvalue %dx.types.CBufRet.f32 %7665, 2
  %7711 = fmul fast float %7710, %7707
  %7712 = extractvalue %dx.types.CBufRet.f32 %7665, 0
  %7713 = fsub fast float %7678, %7712
  %7714 = fsub fast float %7713, %7711
  %7715 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7714)  ; FMax(a,b)
  %7716 = fmul fast float %7715, %7708
  %7717 = call float @dx.op.binary.f32(i32 36, float %7709, float %7716)  ; FMin(a,b)
  %7718 = fmul fast float %7717, 0xBFF7154760000000
  %7719 = call float @dx.op.unary.f32(i32 21, float %7718)  ; Exp(value)
  %7720 = fmul fast float %7658, %7719
  br label %7721

; <label>:7721                                    ; preds = %7706, %7551
  %7722 = phi float [ %7720, %7706 ], [ %7552, %7551 ]
  %7723 = call float @dx.op.binary.f32(i32 36, float %7722, float %7722)  ; FMin(a,b)
  %7724 = call float @dx.op.binary.f32(i32 36, float %7722, float %7723)  ; FMin(a,b)
  %7725 = fcmp fast ogt float %7724, 0.000000e+00
  br i1 %7725, label %7726, label %7974, !dx.controlflow.hints !136

; <label>:7726                                    ; preds = %7721
  %7727 = fmul fast float %7722, %6282
  %7728 = fmul fast float %7722, %6283
  %7729 = fmul fast float %7722, %6284
  %7730 = fsub fast float %209, %4656
  %7731 = fcmp fast ogt float %7730, 0.000000e+00
  %7732 = fmul fast float %6271, 5.120000e+02
  %7733 = fmul fast float %6272, 5.120000e+02
  %7734 = fmul fast float %6273, 5.120000e+02
  %7735 = fadd fast float %7734, %209
  %7736 = fsub fast float %4656, %7735
  %7737 = fmul fast float %7736, 2.000000e+00
  %7738 = fadd fast float %7737, %7735
  %7739 = select i1 %7731, float %7738, float %7735
  %7740 = fsub fast float %7739, %209
  %7741 = call float @dx.op.dot3.f32(i32 55, float %7732, float %7733, float %7740, float %7732, float %7733, float %7740)  ; Dot3(ax,ay,az,bx,by,bz)
  %7742 = call float @dx.op.unary.f32(i32 25, float %7741)  ; Rsqrt(value)
  %7743 = fmul fast float %7742, %7732
  %7744 = fmul fast float %7742, %7733
  %7745 = fmul fast float %7742, %7740
  %7746 = fsub fast float %4656, %209
  %7747 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7746)  ; Dot3(ax,ay,az,bx,by,bz)
  %7748 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7743, float %7744, float %7745)  ; Dot3(ax,ay,az,bx,by,bz)
  %7749 = fdiv fast float 1.000000e+00, %7748
  %7750 = fmul fast float %7749, %7747
  %7751 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7730, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7752 = fcmp fast ogt float %7751, 0.000000e+00
  %7753 = fcmp fast olt float %7751, 0.000000e+00
  %7754 = zext i1 %7752 to i32
  %7755 = zext i1 %7753 to i32
  %7756 = sub nsw i32 %7754, %7755
  %7757 = sitofp i32 %7756 to float
  %7758 = fsub fast float %7739, %4656
  %7759 = call float @dx.op.dot3.f32(i32 55, float %7732, float %7733, float %7758, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7760 = fcmp fast ogt float %7759, 0.000000e+00
  %7761 = fcmp fast olt float %7759, 0.000000e+00
  %7762 = zext i1 %7760 to i32
  %7763 = zext i1 %7761 to i32
  %7764 = sub nsw i32 %7762, %7763
  %7765 = sitofp i32 %7764 to float
  %7766 = fcmp fast une float %7757, %7765
  br i1 %7766, label %7767, label %7777

; <label>:7767                                    ; preds = %7726
  %7768 = fmul fast float %7750, %7745
  %7769 = fmul fast float %7750, %7744
  %7770 = fmul fast float %7750, %7743
  %7771 = fmul fast float %7770, %7770
  %7772 = fmul fast float %7769, %7769
  %7773 = fadd fast float %7771, %7772
  %7774 = fmul fast float %7768, %7768
  %7775 = fadd fast float %7773, %7774
  %7776 = call float @dx.op.unary.f32(i32 24, float %7775)  ; Sqrt(value)
  br label %7787

; <label>:7777                                    ; preds = %7726
  %7778 = icmp slt i32 %7756, 0
  br i1 %7778, label %7779, label %7787

; <label>:7779                                    ; preds = %7777
  %7780 = fsub fast float %209, %7739
  %7781 = fmul fast float %7732, %7732
  %7782 = fmul fast float %7733, %7733
  %7783 = fadd fast float %7781, %7782
  %7784 = fmul fast float %7780, %7780
  %7785 = fadd fast float %7783, %7784
  %7786 = call float @dx.op.unary.f32(i32 24, float %7785)  ; Sqrt(value)
  br label %7787

; <label>:7787                                    ; preds = %7779, %7777, %7767
  %7788 = phi float [ %7776, %7767 ], [ %7786, %7779 ], [ 0.000000e+00, %7777 ]
  %7789 = fsub fast float -0.000000e+00, %7788
  %7790 = select i1 %7731, float -0.000000e+00, float %7789
  %7791 = fmul fast float %4657, 0x3FF7154760000000
  %7792 = fmul fast float %7791, %7790
  %7793 = fmul fast float %4658, 0x3FF7154760000000
  %7794 = fmul fast float %7793, %7790
  %7795 = fmul fast float %4659, 0x3FF7154760000000
  %7796 = fmul fast float %7795, %7790
  %7797 = call float @dx.op.unary.f32(i32 21, float %7792)  ; Exp(value)
  %7798 = call float @dx.op.unary.f32(i32 21, float %7794)  ; Exp(value)
  %7799 = call float @dx.op.unary.f32(i32 21, float %7796)  ; Exp(value)
  %7800 = call float @dx.op.unary.f32(i32 7, float %7797)  ; Saturate(value)
  %7801 = call float @dx.op.unary.f32(i32 7, float %7798)  ; Saturate(value)
  %7802 = call float @dx.op.unary.f32(i32 7, float %7799)  ; Saturate(value)
  %7803 = fmul fast float %7727, %7800
  %7804 = fmul fast float %7728, %7801
  %7805 = fmul fast float %7729, %7802
  %7806 = fsub fast float %6271, %5482
  %7807 = fsub fast float %6272, %5483
  %7808 = fsub fast float %6273, %5484
  %7809 = call float @dx.op.dot3.f32(i32 55, float %7806, float %7807, float %7808, float %7806, float %7807, float %7808)  ; Dot3(ax,ay,az,bx,by,bz)
  %7810 = call float @dx.op.unary.f32(i32 25, float %7809)  ; Rsqrt(value)
  %7811 = fmul fast float %7810, %7806
  %7812 = fmul fast float %7810, %7807
  %7813 = fmul fast float %7810, %7808
  %7814 = call float @dx.op.dot3.f32(i32 55, float %6271, float %6272, float %6273, float %5442, float %5443, float %5444)  ; Dot3(ax,ay,az,bx,by,bz)
  %7815 = call float @dx.op.dot3.f32(i32 55, float %5485, float %5486, float %5487, float %7811, float %7812, float %7813)  ; Dot3(ax,ay,az,bx,by,bz)
  %7816 = call float @dx.op.unary.f32(i32 7, float %7814)  ; Saturate(value)
  %7817 = bitcast i32 %5514 to float
  %7818 = fmul fast float %7816, %7816
  %7819 = fmul fast float %7818, %7817
  %7820 = call float @dx.op.unary.f32(i32 7, float %7819)  ; Saturate(value)
  %7821 = fmul fast float %7820, %7816
  %7822 = call float @dx.op.dot3.f32(i32 55, float %5442, float %5443, float %5444, float %7811, float %7812, float %7813)  ; Dot3(ax,ay,az,bx,by,bz)
  %7823 = fmul fast float %7822, %7822
  %7824 = call float @dx.op.unary.f32(i32 6, float %7814)  ; FAbs(value)
  %7825 = fsub fast float 1.000000e+00, %5508
  %7826 = fmul fast float %5490, %5490
  %7827 = fmul fast float %7826, %7825
  %7828 = fadd fast float %7827, %5508
  %7829 = bitcast float %7828 to i32
  %7830 = ashr i32 %7829, 1
  %7831 = add nsw i32 %7830, 532487669
  %7832 = bitcast i32 %7831 to float
  %7833 = fadd fast float %7832, %5490
  %7834 = fmul fast float %5508, %7823
  %7835 = fsub fast float 1.000000e+00, %7823
  %7836 = fadd fast float %7835, %7834
  %7837 = fmul fast float %7824, %7824
  %7838 = fmul fast float %7837, %7825
  %7839 = fadd fast float %7838, %5508
  %7840 = bitcast float %7839 to i32
  %7841 = ashr i32 %7840, 1
  %7842 = add nsw i32 %7841, 532487669
  %7843 = bitcast i32 %7842 to float
  %7844 = fadd fast float %7843, %7824
  %7845 = fmul fast float %7836, %7836
  %7846 = fmul fast float %7845, %7833
  %7847 = fmul fast float %7846, %7844
  %7848 = fdiv fast float 0x3FF0A00000000000, %7847
  %7849 = fmul fast float %7848, %5508
  %7850 = call float @dx.op.unary.f32(i32 6, float %7815)  ; FAbs(value)
  %7851 = fsub fast float 1.000000e+00, %7850
  %7852 = bitcast float %7851 to i32
  %7853 = sitofp i32 %7852 to float
  %7854 = fmul fast float %7853, 5.000000e+00
  %7855 = fadd fast float %7854, 0xC1EFBF8940000000
  %7856 = fptosi float %7855 to i32
  %7857 = bitcast i32 %7856 to float
  %7858 = fsub fast float 1.000000e+00, %5439
  %7859 = fsub fast float 1.000000e+00, %5440
  %7860 = fsub fast float 1.000000e+00, %5488
  %7861 = fmul fast float %7857, %7858
  %7862 = fmul fast float %7857, %7859
  %7863 = fmul fast float %7857, %7860
  %7864 = fadd fast float %7861, %5439
  %7865 = fadd fast float %7862, %5440
  %7866 = fadd fast float %7863, %5488
  br i1 %5630, label %7867, label %7890

; <label>:7867                                    ; preds = %7787
  %7868 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %56, float %4254, float %7850, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7869 = extractvalue %dx.types.ResRet.f32 %7868, 0
  %7870 = extractvalue %dx.types.ResRet.f32 %7868, 1
  %7871 = extractvalue %dx.types.ResRet.f32 %7868, 2
  %7872 = fadd fast float %7869, -5.000000e-01
  %7873 = fadd fast float %7870, -5.000000e-01
  %7874 = fadd fast float %7871, -5.000000e-01
  %7875 = fmul fast float %5439, 4.000000e+00
  %7876 = fmul fast float %7875, %7858
  %7877 = fmul fast float %7876, %7872
  %7878 = fmul fast float %5440, 4.000000e+00
  %7879 = fmul fast float %7878, %7859
  %7880 = fmul fast float %7879, %7873
  %7881 = fmul fast float %5488, 4.000000e+00
  %7882 = fmul fast float %7881, %7860
  %7883 = fmul fast float %7882, %7874
  %7884 = fadd fast float %7877, %7864
  %7885 = fadd fast float %7880, %7865
  %7886 = fadd fast float %7883, %7866
  %7887 = call float @dx.op.unary.f32(i32 7, float %7884)  ; Saturate(value)
  %7888 = call float @dx.op.unary.f32(i32 7, float %7885)  ; Saturate(value)
  %7889 = call float @dx.op.unary.f32(i32 7, float %7886)  ; Saturate(value)
  br label %7890

; <label>:7890                                    ; preds = %7867, %7787
  %7891 = phi float [ %7887, %7867 ], [ %7864, %7787 ]
  %7892 = phi float [ %7888, %7867 ], [ %7865, %7787 ]
  %7893 = phi float [ %7889, %7867 ], [ %7866, %7787 ]
  %7894 = fmul fast float %7814, 9.843750e-01
  %7895 = fadd fast float %7894, 7.812500e-03
  %7896 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %56, float %7895, float %5620, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7897 = extractvalue %dx.types.ResRet.f32 %7896, 2
  %7898 = extractvalue %dx.types.ResRet.f32 %7896, 3
  %7899 = fmul fast float %7897, %5439
  %7900 = fmul fast float %7897, %5440
  %7901 = fmul fast float %7897, %5488
  %7902 = fadd fast float %7899, %7898
  %7903 = fadd fast float %7900, %7898
  %7904 = fadd fast float %7901, %7898
  br i1 %5630, label %7905, label %7928

; <label>:7905                                    ; preds = %7890
  %7906 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %56, float %4254, float %7814, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7907 = extractvalue %dx.types.ResRet.f32 %7906, 0
  %7908 = extractvalue %dx.types.ResRet.f32 %7906, 1
  %7909 = extractvalue %dx.types.ResRet.f32 %7906, 2
  %7910 = fadd fast float %7907, -5.000000e-01
  %7911 = fadd fast float %7908, -5.000000e-01
  %7912 = fadd fast float %7909, -5.000000e-01
  %7913 = fmul fast float %5439, 4.000000e+00
  %7914 = fmul fast float %7913, %7858
  %7915 = fmul fast float %7914, %7910
  %7916 = fmul fast float %5440, 4.000000e+00
  %7917 = fmul fast float %7916, %7859
  %7918 = fmul fast float %7917, %7911
  %7919 = fmul fast float %5488, 4.000000e+00
  %7920 = fmul fast float %7919, %7860
  %7921 = fmul fast float %7920, %7912
  %7922 = fadd fast float %7915, %7902
  %7923 = fadd fast float %7918, %7903
  %7924 = fadd fast float %7921, %7904
  %7925 = call float @dx.op.unary.f32(i32 7, float %7922)  ; Saturate(value)
  %7926 = call float @dx.op.unary.f32(i32 7, float %7923)  ; Saturate(value)
  %7927 = call float @dx.op.unary.f32(i32 7, float %7924)  ; Saturate(value)
  br label %7928

; <label>:7928                                    ; preds = %7905, %7890
  %7929 = phi float [ %7925, %7905 ], [ %7902, %7890 ]
  %7930 = phi float [ %7926, %7905 ], [ %7903, %7890 ]
  %7931 = phi float [ %7927, %7905 ], [ %7904, %7890 ]
  %7932 = call float @dx.op.binary.f32(i32 35, float %7930, float %7931)  ; FMax(a,b)
  %7933 = call float @dx.op.binary.f32(i32 35, float %7929, float %7932)  ; FMax(a,b)
  %7934 = fsub fast float 1.000000e+00, %7933
  %7935 = fmul fast float %7891, %7849
  %7936 = fmul fast float %7892, %7849
  %7937 = fmul fast float %7893, %7849
  %7938 = fsub fast float 1.000000e+00, %7815
  %7939 = bitcast float %7938 to i32
  %7940 = sitofp i32 %7939 to float
  %7941 = fmul fast float %7940, 5.000000e+00
  %7942 = fadd fast float %7941, 0xC1EFBF8940000000
  %7943 = fptosi float %7942 to i32
  %7944 = bitcast i32 %7943 to float
  %7945 = fmul fast float %7944, %4255
  %7946 = fmul fast float %7934, %7945
  %7947 = fmul fast float %7946, %6225
  %7948 = fmul fast float %7946, %6226
  %7949 = fmul fast float %7946, %6227
  %7950 = fadd fast float %7947, %7935
  %7951 = fadd fast float %7948, %7936
  %7952 = fadd fast float %7949, %7937
  %7953 = fmul fast float %7821, %7803
  %7954 = fmul fast float %7953, %7934
  %7955 = fmul fast float %7821, %7804
  %7956 = fmul fast float %7955, %7934
  %7957 = fmul fast float %7821, %7805
  %7958 = fmul fast float %7957, %7934
  %7959 = fmul fast float %7953, %7950
  %7960 = fmul fast float %7955, %7951
  %7961 = fmul fast float %7957, %7952
  %7962 = fadd fast float %7954, %6207
  %7963 = fmul fast float %7962, %4251
  %7964 = fadd fast float %7956, %6209
  %7965 = fmul fast float %7964, %4251
  %7966 = fadd fast float %7958, %6211
  %7967 = fmul fast float %7966, %4251
  %7968 = fadd fast float %7959, %6259
  %7969 = fmul fast float %7968, %4251
  %7970 = fadd fast float %7960, %6262
  %7971 = fmul fast float %7970, %4251
  %7972 = fadd fast float %7961, %6265
  %7973 = fmul fast float %7972, %4251
  br label %7974

; <label>:7974                                    ; preds = %7928, %7721, %6152
  %7975 = phi float [ %6260, %6152 ], [ %6260, %7721 ], [ %7969, %7928 ]
  %7976 = phi float [ %6263, %6152 ], [ %6263, %7721 ], [ %7971, %7928 ]
  %7977 = phi float [ %6266, %6152 ], [ %6266, %7721 ], [ %7973, %7928 ]
  %7978 = phi float [ %6255, %6152 ], [ %6255, %7721 ], [ %7963, %7928 ]
  %7979 = phi float [ %6256, %6152 ], [ %6256, %7721 ], [ %7965, %7928 ]
  %7980 = phi float [ %6257, %6152 ], [ %6257, %7721 ], [ %7967, %7928 ]
  %7981 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7982 = extractvalue %dx.types.CBufRet.i32 %7981, 0
  %7983 = icmp eq i32 %7982, 0
  br i1 %7983, label %8647, label %7984

; <label>:7984                                    ; preds = %7974
  %7985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7986 = extractvalue %dx.types.CBufRet.f32 %7985, 2
  %7987 = extractvalue %dx.types.CBufRet.f32 %7985, 3
  %7988 = fmul fast float %7986, %120
  %7989 = fmul fast float %7987, %121
  %7990 = fptoui float %7988 to i32
  %7991 = fptoui float %7989 to i32
  %7992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7993 = extractvalue %dx.types.CBufRet.f32 %7992, 0
  %7994 = extractvalue %dx.types.CBufRet.f32 %7992, 2
  %7995 = extractvalue %dx.types.CBufRet.f32 %7992, 3
  %7996 = fadd fast float %107, -4.000000e+00
  %7997 = call float @dx.op.binary.f32(i32 35, float %7996, float 0.000000e+00)  ; FMax(a,b)
  %7998 = fadd fast float %7997, %7993
  %7999 = fmul fast float %7998, %7994
  %8000 = call float @dx.op.unary.f32(i32 23, float %7999)  ; Log(value)
  %8001 = fmul fast float %8000, %7995
  %8002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8003 = extractvalue %dx.types.CBufRet.f32 %8002, 2
  %8004 = fmul fast float %8001, %8003
  %8005 = call float @dx.op.unary.f32(i32 7, float %8004)  ; Saturate(value)
  %8006 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8007 = extractvalue %dx.types.CBufRet.i32 %8006, 1
  %8008 = add i32 %8007, -1
  %8009 = uitofp i32 %8007 to float
  %8010 = fmul fast float %8009, %8005
  %8011 = fptoui float %8010 to i32
  %8012 = call i32 @dx.op.binary.i32(i32 40, i32 %8011, i32 %8008)  ; UMin(a,b)
  %8013 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %8014 = extractvalue %dx.types.CBufRet.i32 %8013, 2
  %8015 = extractvalue %dx.types.CBufRet.i32 %8013, 3
  %8016 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7991, i32 %8014, i32 %7990)  ; UMad(a,b,c)
  %8017 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8012, i32 %8015, i32 %8016)  ; UMad(a,b,c)
  %8018 = add nsw i32 %7982, -1
  %8019 = call i32 @dx.op.binary.i32(i32 37, i32 %8018, i32 0)  ; IMax(a,b)
  %8020 = call float @dx.op.binary.f32(i32 35, float %107, float 0.000000e+00)  ; FMax(a,b)
  %8021 = fptoui float %8020 to i32
  %8022 = lshr i32 %8021, 5
  %8023 = call i32 @dx.op.binary.i32(i32 40, i32 %8022, i32 8191)  ; UMin(a,b)
  %8024 = shl i32 %8023, 2
  %8025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %8024, i32 undef)  ; BufferLoad(srv,index,wot)
  %8026 = extractvalue %dx.types.ResRet.i32 %8025, 0
  %8027 = lshr i32 %8026, 16
  %8028 = and i32 %8026, 65535
  %8029 = lshr i32 %8026, 21
  %8030 = lshr i32 %8028, 5
  %8031 = call i32 @dx.op.binary.i32(i32 40, i32 %8030, i32 %8019)  ; UMin(a,b)
  %8032 = icmp ugt i32 %8029, %8031
  br i1 %8032, label %8647, label %8033

; <label>:8033                                    ; preds = %7984
  br label %8034

; <label>:8034                                    ; preds = %8637, %8033
  %8035 = phi i32 [ %8644, %8637 ], [ %8029, %8033 ]
  %8036 = phi float [ %8638, %8637 ], [ %7975, %8033 ]
  %8037 = phi float [ %8639, %8637 ], [ %7976, %8033 ]
  %8038 = phi float [ %8640, %8637 ], [ %7977, %8033 ]
  %8039 = phi float [ %8641, %8637 ], [ %7978, %8033 ]
  %8040 = phi float [ %8642, %8637 ], [ %7979, %8033 ]
  %8041 = phi float [ %8643, %8637 ], [ %7980, %8033 ]
  %8042 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8043 = extractvalue %dx.types.CBufRet.i32 %8042, 0
  %8044 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8017, i32 %8043, i32 %8035)  ; UMad(a,b,c)
  %8045 = shl i32 %8044, 2
  %8046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %8045, i32 undef)  ; BufferLoad(srv,index,wot)
  %8047 = extractvalue %dx.types.ResRet.i32 %8046, 0
  %8048 = shl i32 %8035, 5
  %8049 = sub nsw i32 %8027, %8048
  %8050 = call i32 @dx.op.binary.i32(i32 37, i32 %8049, i32 0)  ; IMax(a,b)
  %8051 = call i32 @dx.op.binary.i32(i32 38, i32 %8050, i32 31)  ; IMin(a,b)
  %8052 = sub nsw i32 1, %8027
  %8053 = add nsw i32 %8052, %8028
  %8054 = call i32 @dx.op.binary.i32(i32 37, i32 %8053, i32 0)  ; IMax(a,b)
  %8055 = call i32 @dx.op.binary.i32(i32 38, i32 %8054, i32 32)  ; IMin(a,b)
  %8056 = and i32 %8055, 31
  %8057 = shl i32 -1, %8056
  %8058 = xor i32 %8057, -1
  %8059 = and i32 %8051, 31
  %8060 = shl i32 %8058, %8059
  %8061 = icmp eq i32 %8055, 32
  %8062 = select i1 %8061, i32 -1, i32 %8060
  %8063 = and i32 %8062, %8047
  %8064 = icmp eq i32 %8063, 0
  br i1 %8064, label %8637, label %8065

; <label>:8065                                    ; preds = %8034
  br label %8066

; <label>:8066                                    ; preds = %8200, %8065
  %8067 = phi i32 [ %8078, %8200 ], [ %8063, %8065 ]
  %8068 = phi float [ %8201, %8200 ], [ %8036, %8065 ]
  %8069 = phi float [ %8202, %8200 ], [ %8037, %8065 ]
  %8070 = phi float [ %8203, %8200 ], [ %8038, %8065 ]
  %8071 = phi float [ %8204, %8200 ], [ %8039, %8065 ]
  %8072 = phi float [ %8205, %8200 ], [ %8040, %8065 ]
  %8073 = phi float [ %8206, %8200 ], [ %8041, %8065 ]
  %8074 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %8067)  ; FirstbitLo(value)
  %8075 = add i32 %8074, %8048
  %8076 = and i32 %8074, 31
  %8077 = shl i32 1, %8076
  %8078 = xor i32 %8077, %8067
  %8079 = mul i32 %8075, 112
  %8080 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8079, i32 undef)  ; BufferLoad(srv,index,wot)
  %8081 = extractvalue %dx.types.ResRet.f32 %8080, 0
  %8082 = extractvalue %dx.types.ResRet.f32 %8080, 1
  %8083 = extractvalue %dx.types.ResRet.f32 %8080, 2
  %8084 = or i32 %8079, 12
  %8085 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8084, i32 undef)  ; BufferLoad(srv,index,wot)
  %8086 = extractvalue %dx.types.ResRet.f32 %8085, 0
  %8087 = add i32 %8079, 16
  %8088 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8087, i32 undef)  ; BufferLoad(srv,index,wot)
  %8089 = extractvalue %dx.types.ResRet.f32 %8088, 0
  %8090 = extractvalue %dx.types.ResRet.f32 %8088, 1
  %8091 = extractvalue %dx.types.ResRet.f32 %8088, 2
  %8092 = add i32 %8079, 28
  %8093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %8092, i32 undef)  ; BufferLoad(srv,index,wot)
  %8094 = extractvalue %dx.types.ResRet.i32 %8093, 0
  %8095 = add i32 %8079, 44
  %8096 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8095, i32 undef)  ; BufferLoad(srv,index,wot)
  %8097 = extractvalue %dx.types.ResRet.f32 %8096, 0
  %8098 = add i32 %8079, 48
  %8099 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8098, i32 undef)  ; BufferLoad(srv,index,wot)
  %8100 = extractvalue %dx.types.ResRet.f32 %8099, 0
  %8101 = extractvalue %dx.types.ResRet.f32 %8099, 1
  %8102 = extractvalue %dx.types.ResRet.f32 %8099, 2
  %8103 = extractvalue %dx.types.ResRet.f32 %8099, 3
  %8104 = add i32 %8079, 64
  %8105 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8104, i32 undef)  ; BufferLoad(srv,index,wot)
  %8106 = extractvalue %dx.types.ResRet.f32 %8105, 0
  %8107 = extractvalue %dx.types.ResRet.f32 %8105, 1
  %8108 = extractvalue %dx.types.ResRet.f32 %8105, 2
  %8109 = extractvalue %dx.types.ResRet.f32 %8105, 3
  %8110 = add i32 %8079, 80
  %8111 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8110, i32 undef)  ; BufferLoad(srv,index,wot)
  %8112 = extractvalue %dx.types.ResRet.f32 %8111, 1
  %8113 = extractvalue %dx.types.ResRet.f32 %8111, 2
  %8114 = add i32 %8079, 92
  %8115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %8114, i32 undef)  ; BufferLoad(srv,index,wot)
  %8116 = extractvalue %dx.types.ResRet.i32 %8115, 0
  %8117 = call float @dx.op.dot3.f32(i32 55, float %8081, float %8082, float %8083, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8118 = select i1 %279, float %8112, float %8081
  %8119 = select i1 %279, float %8117, float %8082
  %8120 = select i1 %279, float %8113, float %8083
  %8121 = and i32 %8116, 65535
  %8122 = uitofp i32 %8121 to float
  %8123 = lshr i32 %8116, 16
  %8124 = uitofp i32 %8123 to float
  %8125 = and i32 %8094, 65535
  %8126 = and i32 %8094, 50331648
  %8127 = icmp eq i32 %8126, 33554432
  %8128 = fsub fast float %8100, %207
  %8129 = fsub fast float %8101, %208
  %8130 = fsub fast float %8102, %209
  %8131 = call float @dx.op.dot3.f32(i32 55, float %8128, float %8129, float %8130, float %8128, float %8129, float %8130)  ; Dot3(ax,ay,az,bx,by,bz)
  %8132 = call float @dx.op.unary.f32(i32 24, float %8131)  ; Sqrt(value)
  %8133 = fdiv fast float 1.000000e+00, %8132
  %8134 = fmul fast float %8133, %8128
  %8135 = fmul fast float %8133, %8129
  %8136 = fmul fast float %8133, %8130
  %8137 = fadd fast float %8132, %8086
  %8138 = fdiv fast float 1.000000e+00, %8137
  %8139 = fmul float %8097, %8138
  %8140 = fmul float %8139, %8139
  %8141 = call float @dx.op.unary.f32(i32 7, float %8140)  ; Saturate(value)
  br i1 %8127, label %8142, label %8163

; <label>:8142                                    ; preds = %8066
  %8143 = fmul fast float %8108, %8089
  %8144 = fmul fast float %8108, %8090
  %8145 = fmul fast float %8108, %8091
  %8146 = fadd fast float %8128, %8143
  %8147 = fadd fast float %8129, %8144
  %8148 = fadd fast float %8130, %8145
  %8149 = call float @dx.op.dot3.f32(i32 55, float %8146, float %8147, float %8148, float %8146, float %8147, float %8148)  ; Dot3(ax,ay,az,bx,by,bz)
  %8150 = call float @dx.op.unary.f32(i32 25, float %8149)  ; Rsqrt(value)
  %8151 = fmul fast float %8150, %8146
  %8152 = fmul fast float %8150, %8147
  %8153 = fmul fast float %8150, %8148
  %8154 = fsub fast float %207, %8100
  %8155 = fsub fast float %208, %8101
  %8156 = fsub fast float %209, %8102
  %8157 = fsub fast float -0.000000e+00, %8154
  %8158 = fsub fast float -0.000000e+00, %8155
  %8159 = fsub fast float -0.000000e+00, %8156
  %8160 = call float @dx.op.dot3.f32(i32 55, float %8157, float %8158, float %8159, float %8089, float %8090, float %8091)  ; Dot3(ax,ay,az,bx,by,bz)
  %8161 = fcmp fast ogt float %8160, 0.000000e+00
  %8162 = uitofp i1 %8161 to float
  br label %8163

; <label>:8163                                    ; preds = %8142, %8066
  %8164 = phi float [ %8162, %8142 ], [ 1.000000e+00, %8066 ]
  %8165 = phi float [ %8151, %8142 ], [ %8134, %8066 ]
  %8166 = phi float [ %8152, %8142 ], [ %8135, %8066 ]
  %8167 = phi float [ %8153, %8142 ], [ %8136, %8066 ]
  %8168 = call float @dx.op.dot3.f32(i32 55, float %8089, float %8090, float %8091, float %8165, float %8166, float %8167)  ; Dot3(ax,ay,az,bx,by,bz)
  %8169 = fmul fast float %8168, %8168
  %8170 = call float @dx.op.unary.f32(i32 7, float %8169)  ; Saturate(value)
  %8171 = fsub fast float 1.000000e+00, %8170
  %8172 = fmul fast float %8171, 5.000000e-01
  %8173 = fcmp fast ogt float %8168, 0.000000e+00
  %8174 = fsub fast float 1.000000e+00, %8172
  %8175 = select i1 %8173, float %8172, float %8174
  %8176 = fmul fast float %8175, %8124
  %8177 = fadd fast float %8176, %8122
  %8178 = fmul fast float %8177, 0x3EF0001000000000
  %8179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %56, float %8178, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8180 = extractvalue %dx.types.ResRet.f32 %8179, 0
  %8181 = fmul fast float %8168, %8106
  %8182 = fadd fast float %8181, %8107
  %8183 = call float @dx.op.unary.f32(i32 7, float %8182)  ; Saturate(value)
  %8184 = select i1 %8127, float 1.000000e+00, float %8183
  %8185 = select i1 %8127, float %8183, float 1.000000e+00
  %8186 = fmul fast float %8132, %8103
  %8187 = fsub fast float 1.000000e+00, %8186
  %8188 = fmul fast float %8187, %8109
  %8189 = call float @dx.op.unary.f32(i32 7, float %8188)  ; Saturate(value)
  %8190 = fmul fast float %8189, %8185
  %8191 = fmul fast float %8190, 2.000000e+00
  %8192 = fsub fast float 3.000000e+00, %8191
  %8193 = fmul fast float %8180, %8164
  %8194 = fmul fast float %8190, %8190
  %8195 = fmul fast float %8194, %8193
  %8196 = fmul fast float %8195, %8192
  %8197 = call float @dx.op.binary.f32(i32 36, float %8196, float %8196)  ; FMin(a,b)
  %8198 = call float @dx.op.binary.f32(i32 36, float %8196, float %8197)  ; FMin(a,b)
  %8199 = fcmp fast ogt float %8198, 0.000000e+00
  br i1 %8199, label %8208, label %8200, !dx.controlflow.hints !137

; <label>:8200                                    ; preds = %8593, %8354, %8163
  %8201 = phi float [ %8068, %8354 ], [ %8068, %8163 ], [ %8633, %8593 ]
  %8202 = phi float [ %8069, %8354 ], [ %8069, %8163 ], [ %8634, %8593 ]
  %8203 = phi float [ %8070, %8354 ], [ %8070, %8163 ], [ %8635, %8593 ]
  %8204 = phi float [ %8071, %8354 ], [ %8071, %8163 ], [ %8627, %8593 ]
  %8205 = phi float [ %8072, %8354 ], [ %8072, %8163 ], [ %8628, %8593 ]
  %8206 = phi float [ %8073, %8354 ], [ %8073, %8163 ], [ %8629, %8593 ]
  %8207 = icmp eq i32 %8067, %8077
  br i1 %8207, label %8636, label %8066

; <label>:8208                                    ; preds = %8163
  %8209 = icmp eq i32 %8125, 255
  br i1 %8209, label %8354, label %8210, !dx.controlflow.hints !138

; <label>:8210                                    ; preds = %8208
  %8211 = mul nuw nsw i32 %8125, 176
  %8212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8211, i32 undef)  ; BufferLoad(srv,index,wot)
  %8213 = extractvalue %dx.types.ResRet.f32 %8212, 0
  %8214 = extractvalue %dx.types.ResRet.f32 %8212, 1
  %8215 = extractvalue %dx.types.ResRet.f32 %8212, 2
  %8216 = extractvalue %dx.types.ResRet.f32 %8212, 3
  %8217 = add nuw nsw i32 %8211, 16
  %8218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8217, i32 undef)  ; BufferLoad(srv,index,wot)
  %8219 = extractvalue %dx.types.ResRet.f32 %8218, 0
  %8220 = extractvalue %dx.types.ResRet.f32 %8218, 1
  %8221 = add nuw nsw i32 %8211, 32
  %8222 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8221, i32 undef)  ; BufferLoad(srv,index,wot)
  %8223 = extractvalue %dx.types.ResRet.f32 %8222, 0
  %8224 = extractvalue %dx.types.ResRet.f32 %8222, 1
  %8225 = extractvalue %dx.types.ResRet.f32 %8222, 2
  %8226 = add nuw nsw i32 %8211, 48
  %8227 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8226, i32 undef)  ; BufferLoad(srv,index,wot)
  %8228 = extractvalue %dx.types.ResRet.f32 %8227, 0
  %8229 = extractvalue %dx.types.ResRet.f32 %8227, 1
  %8230 = extractvalue %dx.types.ResRet.f32 %8227, 2
  %8231 = extractvalue %dx.types.ResRet.f32 %8227, 3
  %8232 = add nuw nsw i32 %8211, 64
  %8233 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8232, i32 undef)  ; BufferLoad(srv,index,wot)
  %8234 = extractvalue %dx.types.ResRet.f32 %8233, 0
  %8235 = extractvalue %dx.types.ResRet.f32 %8233, 1
  %8236 = extractvalue %dx.types.ResRet.f32 %8233, 2
  %8237 = extractvalue %dx.types.ResRet.f32 %8233, 3
  %8238 = add nuw nsw i32 %8211, 80
  %8239 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8238, i32 undef)  ; BufferLoad(srv,index,wot)
  %8240 = extractvalue %dx.types.ResRet.f32 %8239, 0
  %8241 = extractvalue %dx.types.ResRet.f32 %8239, 1
  %8242 = extractvalue %dx.types.ResRet.f32 %8239, 2
  %8243 = extractvalue %dx.types.ResRet.f32 %8239, 3
  %8244 = add nuw nsw i32 %8211, 96
  %8245 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8244, i32 undef)  ; BufferLoad(srv,index,wot)
  %8246 = extractvalue %dx.types.ResRet.f32 %8245, 0
  %8247 = extractvalue %dx.types.ResRet.f32 %8245, 1
  %8248 = extractvalue %dx.types.ResRet.f32 %8245, 2
  %8249 = extractvalue %dx.types.ResRet.f32 %8245, 3
  %8250 = bitcast float %8220 to i32
  %8251 = fmul fast float %8225, %127
  %8252 = fmul fast float %8225, %128
  %8253 = fmul fast float %8225, %129
  %8254 = fadd fast float %8251, %207
  %8255 = fadd fast float %8252, %208
  %8256 = fadd fast float %8253, %209
  %8257 = fmul fast float %8254, %8228
  %8258 = call float @dx.op.tertiary.f32(i32 46, float %8255, float %8234, float %8257)  ; FMad(a,b,c)
  %8259 = call float @dx.op.tertiary.f32(i32 46, float %8256, float %8240, float %8258)  ; FMad(a,b,c)
  %8260 = fadd fast float %8259, %8246
  %8261 = fmul fast float %8254, %8229
  %8262 = call float @dx.op.tertiary.f32(i32 46, float %8255, float %8235, float %8261)  ; FMad(a,b,c)
  %8263 = call float @dx.op.tertiary.f32(i32 46, float %8256, float %8241, float %8262)  ; FMad(a,b,c)
  %8264 = fadd fast float %8263, %8247
  %8265 = fmul fast float %8254, %8230
  %8266 = call float @dx.op.tertiary.f32(i32 46, float %8255, float %8236, float %8265)  ; FMad(a,b,c)
  %8267 = call float @dx.op.tertiary.f32(i32 46, float %8256, float %8242, float %8266)  ; FMad(a,b,c)
  %8268 = fadd fast float %8267, %8248
  %8269 = fmul fast float %8254, %8231
  %8270 = call float @dx.op.tertiary.f32(i32 46, float %8255, float %8237, float %8269)  ; FMad(a,b,c)
  %8271 = call float @dx.op.tertiary.f32(i32 46, float %8256, float %8243, float %8270)  ; FMad(a,b,c)
  %8272 = fadd fast float %8271, %8249
  %8273 = fdiv fast float %8260, %8272
  %8274 = fdiv fast float %8264, %8272
  %8275 = fdiv fast float %8268, %8272
  %8276 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8275)  ; FMax(a,b)
  %8277 = fmul fast float %290, 0x401921FB60000000
  %8278 = call float @dx.op.unary.f32(i32 13, float %8277)  ; Sin(value)
  %8279 = call float @dx.op.unary.f32(i32 12, float %8277)  ; Cos(value)
  %8280 = fmul fast float %8279, %8224
  %8281 = call float @dx.op.tertiary.f32(i32 46, float %8278, float %8224, float 0.000000e+00)  ; FMad(a,b,c)
  %8282 = fmul fast float %8224, %8278
  %8283 = fsub fast float -0.000000e+00, %8282
  %8284 = call float @dx.op.tertiary.f32(i32 46, float %8279, float %8224, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8285

; <label>:8285                                    ; preds = %8285, %8210
  %8286 = phi float [ 0.000000e+00, %8210 ], [ %8318, %8285 ]
  %8287 = phi float [ 0.000000e+00, %8210 ], [ %8320, %8285 ]
  %8288 = phi i32 [ 0, %8210 ], [ %8321, %8285 ]
  %8289 = mul i32 %8288, 2
  %8290 = add i32 0, %8289
  %8291 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8290
  %8292 = load float, float* %8291, align 4
  %8293 = mul i32 %8288, 2
  %8294 = add i32 1, %8293
  %8295 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8294
  %8296 = load float, float* %8295, align 4
  %8297 = fmul fast float %8280, %8292
  %8298 = call float @dx.op.tertiary.f32(i32 46, float %8296, float %8283, float %8297)  ; FMad(a,b,c)
  %8299 = fmul fast float %8292, %8281
  %8300 = call float @dx.op.tertiary.f32(i32 46, float %8296, float %8284, float %8299)  ; FMad(a,b,c)
  %8301 = fadd fast float %8298, %8273
  %8302 = fadd fast float %8300, %8274
  %8303 = fmul fast float %8301, %8219
  %8304 = fmul fast float %8302, %8219
  %8305 = call float @dx.op.binary.f32(i32 35, float %8303, float %8215)  ; FMax(a,b)
  %8306 = call float @dx.op.binary.f32(i32 35, float %8304, float %8215)  ; FMax(a,b)
  %8307 = call float @dx.op.binary.f32(i32 36, float %8305, float %8216)  ; FMin(a,b)
  %8308 = call float @dx.op.binary.f32(i32 36, float %8306, float %8216)  ; FMin(a,b)
  %8309 = fadd fast float %8307, %8213
  %8310 = fadd fast float %8308, %8214
  %8311 = uitofp i32 %8250 to float
  %8312 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %57, float %8309, float %8310, float %8311, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8313 = extractvalue %dx.types.ResRet.f32 %8312, 0
  %8314 = fsub fast float %8313, %8276
  %8315 = fsub fast float %8314, %8223
  %8316 = fcmp fast ogt float %8315, 0.000000e+00
  %8317 = select i1 %8316, float 1.000000e+00, float 0.000000e+00
  %8318 = fadd fast float %8317, %8286
  %8319 = select i1 %8316, float %8315, float 0.000000e+00
  %8320 = fadd fast float %8319, %8287
  %8321 = add nuw nsw i32 %8288, 1
  %8322 = icmp eq i32 %8321, 8
  br i1 %8322, label %8323, label %8285

; <label>:8323                                    ; preds = %8285
  %8324 = fdiv fast float 1.000000e+00, %8318
  %8325 = fmul fast float %8324, %8320
  %8326 = fdiv fast float 1.000000e+00, %8276
  %8327 = fmul fast float %8325, %8326
  %8328 = call float @dx.op.unary.f32(i32 7, float %8327)  ; Saturate(value)
  %8329 = call float @dx.op.binary.f32(i32 35, float %8328, float 0.000000e+00)  ; FMax(a,b)
  %8330 = fmul fast float %8318, 1.250000e-01
  %8331 = call float @dx.op.unary.f32(i32 7, float %8330)  ; Saturate(value)
  %8332 = fmul fast float %8331, 2.000000e+00
  %8333 = fadd fast float %8332, -1.000000e+00
  %8334 = fcmp fast ogt float %8333, 0.000000e+00
  %8335 = fcmp fast olt float %8333, 0.000000e+00
  %8336 = zext i1 %8334 to i32
  %8337 = zext i1 %8335 to i32
  %8338 = sub nsw i32 %8336, %8337
  %8339 = sitofp i32 %8338 to float
  %8340 = fmul fast float %8339, %8333
  %8341 = fsub fast float 1.000000e+00, %8340
  %8342 = fmul fast float %8341, %8341
  %8343 = fmul fast float %8342, %8341
  %8344 = fsub fast float %8341, %8343
  %8345 = fmul fast float %8344, %8329
  %8346 = fsub fast float 1.000000e+00, %8343
  %8347 = fsub fast float %8346, %8345
  %8348 = fmul fast float %8339, 5.000000e-01
  %8349 = fmul fast float %8348, %8347
  %8350 = fsub fast float -5.000000e-01, %8349
  %8351 = fmul fast float %8350, %8184
  %8352 = fadd fast float %8351, 1.000000e+00
  %8353 = fmul fast float %8352, %8196
  br label %8354

; <label>:8354                                    ; preds = %8323, %8208
  %8355 = phi float [ %8353, %8323 ], [ %8196, %8208 ]
  %8356 = call float @dx.op.binary.f32(i32 36, float %8355, float %8355)  ; FMin(a,b)
  %8357 = call float @dx.op.binary.f32(i32 36, float %8355, float %8356)  ; FMin(a,b)
  %8358 = fcmp fast ogt float %8357, 0.000000e+00
  br i1 %8358, label %8359, label %8200, !dx.controlflow.hints !139

; <label>:8359                                    ; preds = %8354
  %8360 = fmul fast float %8355, %8118
  %8361 = fmul fast float %8355, %8119
  %8362 = fmul fast float %8355, %8120
  %8363 = fsub fast float %8102, %4656
  %8364 = fcmp fast ogt float %8363, 0.000000e+00
  %8365 = fsub fast float %209, %4656
  %8366 = fcmp fast ogt float %8365, 0.000000e+00
  %8367 = xor i1 %8366, %8364
  %8368 = fsub fast float %4656, %8102
  %8369 = fmul fast float %8368, 2.000000e+00
  %8370 = fadd fast float %8369, %8102
  %8371 = select i1 %8367, float %8102, float %8370
  %8372 = fsub fast float %8371, %209
  %8373 = call float @dx.op.dot3.f32(i32 55, float %8128, float %8129, float %8372, float %8128, float %8129, float %8372)  ; Dot3(ax,ay,az,bx,by,bz)
  %8374 = call float @dx.op.unary.f32(i32 25, float %8373)  ; Rsqrt(value)
  %8375 = fmul fast float %8374, %8128
  %8376 = fmul fast float %8374, %8129
  %8377 = fmul fast float %8374, %8372
  %8378 = fsub fast float %4656, %209
  %8379 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8378)  ; Dot3(ax,ay,az,bx,by,bz)
  %8380 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8375, float %8376, float %8377)  ; Dot3(ax,ay,az,bx,by,bz)
  %8381 = fdiv fast float 1.000000e+00, %8380
  %8382 = fmul fast float %8381, %8379
  %8383 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8365, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8384 = fcmp fast ogt float %8383, 0.000000e+00
  %8385 = fcmp fast olt float %8383, 0.000000e+00
  %8386 = zext i1 %8384 to i32
  %8387 = zext i1 %8385 to i32
  %8388 = sub nsw i32 %8386, %8387
  %8389 = sitofp i32 %8388 to float
  %8390 = fsub fast float %8371, %4656
  %8391 = call float @dx.op.dot3.f32(i32 55, float %8128, float %8129, float %8390, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8392 = fcmp fast ogt float %8391, 0.000000e+00
  %8393 = fcmp fast olt float %8391, 0.000000e+00
  %8394 = zext i1 %8392 to i32
  %8395 = zext i1 %8393 to i32
  %8396 = sub nsw i32 %8394, %8395
  %8397 = sitofp i32 %8396 to float
  %8398 = fcmp fast une float %8389, %8397
  br i1 %8398, label %8399, label %8409

; <label>:8399                                    ; preds = %8359
  %8400 = fmul fast float %8382, %8377
  %8401 = fmul fast float %8382, %8376
  %8402 = fmul fast float %8382, %8375
  %8403 = fmul fast float %8402, %8402
  %8404 = fmul fast float %8401, %8401
  %8405 = fadd fast float %8403, %8404
  %8406 = fmul fast float %8400, %8400
  %8407 = fadd fast float %8405, %8406
  %8408 = call float @dx.op.unary.f32(i32 24, float %8407)  ; Sqrt(value)
  br label %8421

; <label>:8409                                    ; preds = %8359
  %8410 = icmp slt i32 %8388, 0
  br i1 %8410, label %8411, label %8421

; <label>:8411                                    ; preds = %8409
  %8412 = fsub fast float %207, %8100
  %8413 = fsub fast float %208, %8101
  %8414 = fsub fast float %209, %8371
  %8415 = fmul fast float %8412, %8412
  %8416 = fmul fast float %8413, %8413
  %8417 = fadd fast float %8415, %8416
  %8418 = fmul fast float %8414, %8414
  %8419 = fadd fast float %8417, %8418
  %8420 = call float @dx.op.unary.f32(i32 24, float %8419)  ; Sqrt(value)
  br label %8421

; <label>:8421                                    ; preds = %8411, %8409, %8399
  %8422 = phi float [ %8408, %8399 ], [ %8420, %8411 ], [ 0.000000e+00, %8409 ]
  %8423 = and i1 %8366, %8364
  %8424 = fsub fast float -0.000000e+00, %8422
  %8425 = select i1 %8423, float -0.000000e+00, float %8424
  %8426 = fmul fast float %4657, 0x3FF7154760000000
  %8427 = fmul fast float %8426, %8425
  %8428 = fmul fast float %4658, 0x3FF7154760000000
  %8429 = fmul fast float %8428, %8425
  %8430 = fmul fast float %4659, 0x3FF7154760000000
  %8431 = fmul fast float %8430, %8425
  %8432 = call float @dx.op.unary.f32(i32 21, float %8427)  ; Exp(value)
  %8433 = call float @dx.op.unary.f32(i32 21, float %8429)  ; Exp(value)
  %8434 = call float @dx.op.unary.f32(i32 21, float %8431)  ; Exp(value)
  %8435 = call float @dx.op.unary.f32(i32 7, float %8432)  ; Saturate(value)
  %8436 = call float @dx.op.unary.f32(i32 7, float %8433)  ; Saturate(value)
  %8437 = call float @dx.op.unary.f32(i32 7, float %8434)  ; Saturate(value)
  %8438 = fmul fast float %8360, %8435
  %8439 = fmul fast float %8361, %8436
  %8440 = fmul fast float %8362, %8437
  %8441 = fsub fast float %8134, %5482
  %8442 = fsub fast float %8135, %5483
  %8443 = fsub fast float %8136, %5484
  %8444 = call float @dx.op.dot3.f32(i32 55, float %8441, float %8442, float %8443, float %8441, float %8442, float %8443)  ; Dot3(ax,ay,az,bx,by,bz)
  %8445 = call float @dx.op.unary.f32(i32 25, float %8444)  ; Rsqrt(value)
  %8446 = fmul fast float %8445, %8441
  %8447 = fmul fast float %8445, %8442
  %8448 = fmul fast float %8445, %8443
  %8449 = call float @dx.op.dot3.f32(i32 55, float %8134, float %8135, float %8136, float %5442, float %5443, float %5444)  ; Dot3(ax,ay,az,bx,by,bz)
  %8450 = call float @dx.op.dot3.f32(i32 55, float %5485, float %5486, float %5487, float %8446, float %8447, float %8448)  ; Dot3(ax,ay,az,bx,by,bz)
  %8451 = call float @dx.op.unary.f32(i32 7, float %8449)  ; Saturate(value)
  %8452 = fmul fast float %8451, %8141
  %8453 = bitcast i32 %5514 to float
  %8454 = fmul fast float %8451, %8451
  %8455 = fmul fast float %8454, %8453
  %8456 = call float @dx.op.unary.f32(i32 7, float %8455)  ; Saturate(value)
  %8457 = fmul fast float %8452, %8456
  %8458 = bitcast float %8131 to i32
  %8459 = ashr i32 %8458, 1
  %8460 = sub nsw i32 1597463007, %8459
  %8461 = bitcast i32 %8460 to float
  %8462 = fmul fast float %8461, %8128
  %8463 = fmul fast float %8461, %8129
  %8464 = fmul fast float %8461, %8130
  %8465 = fsub fast float %8462, %5482
  %8466 = fsub fast float %8463, %5483
  %8467 = fsub fast float %8464, %5484
  %8468 = call float @dx.op.dot3.f32(i32 55, float %8465, float %8466, float %8467, float %8465, float %8466, float %8467)  ; Dot3(ax,ay,az,bx,by,bz)
  %8469 = call float @dx.op.unary.f32(i32 25, float %8468)  ; Rsqrt(value)
  %8470 = fmul fast float %8465, %8469
  %8471 = fmul fast float %8466, %8469
  %8472 = fmul fast float %8467, %8469
  %8473 = call float @dx.op.dot3.f32(i32 55, float %5442, float %5443, float %5444, float %8470, float %8471, float %8472)  ; Dot3(ax,ay,az,bx,by,bz)
  %8474 = fmul fast float %8473, %8473
  %8475 = call float @dx.op.unary.f32(i32 6, float %8449)  ; FAbs(value)
  %8476 = fsub fast float 1.000000e+00, %5508
  %8477 = fmul fast float %5490, %5490
  %8478 = fmul fast float %8477, %8476
  %8479 = fadd fast float %8478, %5508
  %8480 = bitcast float %8479 to i32
  %8481 = ashr i32 %8480, 1
  %8482 = add nsw i32 %8481, 532487669
  %8483 = bitcast i32 %8482 to float
  %8484 = fadd fast float %8483, %5490
  %8485 = fmul fast float %5508, %8474
  %8486 = fsub fast float 1.000000e+00, %8474
  %8487 = fadd fast float %8486, %8485
  %8488 = fmul fast float %8475, %8475
  %8489 = fmul fast float %8488, %8476
  %8490 = fadd fast float %8489, %5508
  %8491 = bitcast float %8490 to i32
  %8492 = ashr i32 %8491, 1
  %8493 = add nsw i32 %8492, 532487669
  %8494 = bitcast i32 %8493 to float
  %8495 = fadd fast float %8494, %8475
  %8496 = fmul fast float %8487, %8487
  %8497 = fmul fast float %8496, %8484
  %8498 = fmul fast float %8497, %8495
  %8499 = fdiv fast float 1.000000e+00, %8498
  %8500 = bitcast float %5508 to i32
  %8501 = sitofp i32 %8500 to float
  %8502 = fmul fast float %8501, 0x3FE7F73180000000
  %8503 = fadd fast float %8502, 0x41AFE27C40000000
  %8504 = fptosi float %8503 to i32
  %8505 = bitcast i32 %8504 to float
  %8506 = fmul fast float %8097, 0x3FD80E9D60000000
  %8507 = fmul fast float %8506, %8461
  %8508 = fadd fast float %8505, %8507
  %8509 = bitcast float %8508 to i32
  %8510 = sub nsw i32 2129859010, %8509
  %8511 = bitcast i32 %8510 to float
  %8512 = fmul fast float %5508, %8499
  %8513 = fmul fast float %8512, %8505
  %8514 = fmul fast float %8513, %8511
  %8515 = call float @dx.op.unary.f32(i32 6, float %8450)  ; FAbs(value)
  %8516 = fsub fast float 1.000000e+00, %8515
  %8517 = bitcast float %8516 to i32
  %8518 = sitofp i32 %8517 to float
  %8519 = fmul fast float %8518, 5.000000e+00
  %8520 = fadd fast float %8519, 0xC1EFBF8940000000
  %8521 = fptosi float %8520 to i32
  %8522 = bitcast i32 %8521 to float
  %8523 = fsub fast float 1.000000e+00, %5439
  %8524 = fsub fast float 1.000000e+00, %5440
  %8525 = fsub fast float 1.000000e+00, %5488
  %8526 = fmul fast float %8522, %8523
  %8527 = fmul fast float %8522, %8524
  %8528 = fmul fast float %8522, %8525
  %8529 = fadd fast float %8526, %5439
  %8530 = fadd fast float %8527, %5440
  %8531 = fadd fast float %8528, %5488
  br i1 %5630, label %8532, label %8555

; <label>:8532                                    ; preds = %8421
  %8533 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %56, float %4254, float %8515, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8534 = extractvalue %dx.types.ResRet.f32 %8533, 0
  %8535 = extractvalue %dx.types.ResRet.f32 %8533, 1
  %8536 = extractvalue %dx.types.ResRet.f32 %8533, 2
  %8537 = fadd fast float %8534, -5.000000e-01
  %8538 = fadd fast float %8535, -5.000000e-01
  %8539 = fadd fast float %8536, -5.000000e-01
  %8540 = fmul fast float %5439, 4.000000e+00
  %8541 = fmul fast float %8540, %8523
  %8542 = fmul fast float %8541, %8537
  %8543 = fmul fast float %5440, 4.000000e+00
  %8544 = fmul fast float %8543, %8524
  %8545 = fmul fast float %8544, %8538
  %8546 = fmul fast float %5488, 4.000000e+00
  %8547 = fmul fast float %8546, %8525
  %8548 = fmul fast float %8547, %8539
  %8549 = fadd fast float %8542, %8529
  %8550 = fadd fast float %8545, %8530
  %8551 = fadd fast float %8548, %8531
  %8552 = call float @dx.op.unary.f32(i32 7, float %8549)  ; Saturate(value)
  %8553 = call float @dx.op.unary.f32(i32 7, float %8550)  ; Saturate(value)
  %8554 = call float @dx.op.unary.f32(i32 7, float %8551)  ; Saturate(value)
  br label %8555

; <label>:8555                                    ; preds = %8532, %8421
  %8556 = phi float [ %8552, %8532 ], [ %8529, %8421 ]
  %8557 = phi float [ %8553, %8532 ], [ %8530, %8421 ]
  %8558 = phi float [ %8554, %8532 ], [ %8531, %8421 ]
  %8559 = fmul fast float %8449, 9.843750e-01
  %8560 = fadd fast float %8559, 7.812500e-03
  %8561 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %56, float %8560, float %5620, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8562 = extractvalue %dx.types.ResRet.f32 %8561, 2
  %8563 = extractvalue %dx.types.ResRet.f32 %8561, 3
  %8564 = fmul fast float %8562, %5439
  %8565 = fmul fast float %8562, %5440
  %8566 = fmul fast float %8562, %5488
  %8567 = fadd fast float %8564, %8563
  %8568 = fadd fast float %8565, %8563
  %8569 = fadd fast float %8566, %8563
  br i1 %5630, label %8570, label %8593

; <label>:8570                                    ; preds = %8555
  %8571 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %56, float %4254, float %8449, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8572 = extractvalue %dx.types.ResRet.f32 %8571, 0
  %8573 = extractvalue %dx.types.ResRet.f32 %8571, 1
  %8574 = extractvalue %dx.types.ResRet.f32 %8571, 2
  %8575 = fadd fast float %8572, -5.000000e-01
  %8576 = fadd fast float %8573, -5.000000e-01
  %8577 = fadd fast float %8574, -5.000000e-01
  %8578 = fmul fast float %5439, 4.000000e+00
  %8579 = fmul fast float %8578, %8523
  %8580 = fmul fast float %8579, %8575
  %8581 = fmul fast float %5440, 4.000000e+00
  %8582 = fmul fast float %8581, %8524
  %8583 = fmul fast float %8582, %8576
  %8584 = fmul fast float %5488, 4.000000e+00
  %8585 = fmul fast float %8584, %8525
  %8586 = fmul fast float %8585, %8577
  %8587 = fadd fast float %8580, %8567
  %8588 = fadd fast float %8583, %8568
  %8589 = fadd fast float %8586, %8569
  %8590 = call float @dx.op.unary.f32(i32 7, float %8587)  ; Saturate(value)
  %8591 = call float @dx.op.unary.f32(i32 7, float %8588)  ; Saturate(value)
  %8592 = call float @dx.op.unary.f32(i32 7, float %8589)  ; Saturate(value)
  br label %8593

; <label>:8593                                    ; preds = %8570, %8555
  %8594 = phi float [ %8590, %8570 ], [ %8567, %8555 ]
  %8595 = phi float [ %8591, %8570 ], [ %8568, %8555 ]
  %8596 = phi float [ %8592, %8570 ], [ %8569, %8555 ]
  %8597 = call float @dx.op.binary.f32(i32 35, float %8595, float %8596)  ; FMax(a,b)
  %8598 = call float @dx.op.binary.f32(i32 35, float %8594, float %8597)  ; FMax(a,b)
  %8599 = fsub fast float 1.000000e+00, %8598
  %8600 = fmul fast float %8556, %8514
  %8601 = fmul fast float %8557, %8514
  %8602 = fmul fast float %8558, %8514
  %8603 = fsub fast float 1.000000e+00, %8450
  %8604 = bitcast float %8603 to i32
  %8605 = sitofp i32 %8604 to float
  %8606 = fmul fast float %8605, 5.000000e+00
  %8607 = fadd fast float %8606, 0xC1EFBF8940000000
  %8608 = fptosi float %8607 to i32
  %8609 = bitcast i32 %8608 to float
  %8610 = fmul fast float %8609, %4255
  %8611 = fmul fast float %8599, %8610
  %8612 = fmul fast float %8611, %6225
  %8613 = fmul fast float %8611, %6226
  %8614 = fmul fast float %8611, %6227
  %8615 = fadd fast float %8612, %8600
  %8616 = fadd fast float %8613, %8601
  %8617 = fadd fast float %8614, %8602
  %8618 = fmul fast float %8438, %4251
  %8619 = fmul fast float %8618, %8457
  %8620 = fmul fast float %8619, %8599
  %8621 = fmul fast float %8439, %4251
  %8622 = fmul fast float %8621, %8457
  %8623 = fmul fast float %8622, %8599
  %8624 = fmul fast float %8440, %4251
  %8625 = fmul fast float %8624, %8457
  %8626 = fmul fast float %8625, %8599
  %8627 = fadd fast float %8620, %8071
  %8628 = fadd fast float %8623, %8072
  %8629 = fadd fast float %8626, %8073
  %8630 = fmul fast float %8619, %8615
  %8631 = fmul fast float %8622, %8616
  %8632 = fmul fast float %8625, %8617
  %8633 = fadd fast float %8630, %8068
  %8634 = fadd fast float %8631, %8069
  %8635 = fadd fast float %8632, %8070
  br label %8200

; <label>:8636                                    ; preds = %8200
  br label %8637

; <label>:8637                                    ; preds = %8636, %8034
  %8638 = phi float [ %8036, %8034 ], [ %8201, %8636 ]
  %8639 = phi float [ %8037, %8034 ], [ %8202, %8636 ]
  %8640 = phi float [ %8038, %8034 ], [ %8203, %8636 ]
  %8641 = phi float [ %8039, %8034 ], [ %8204, %8636 ]
  %8642 = phi float [ %8040, %8034 ], [ %8205, %8636 ]
  %8643 = phi float [ %8041, %8034 ], [ %8206, %8636 ]
  %8644 = add i32 %8035, 1
  %8645 = icmp ugt i32 %8644, %8031
  br i1 %8645, label %8646, label %8034

; <label>:8646                                    ; preds = %8637
  br label %8647

; <label>:8647                                    ; preds = %8646, %7984, %7974
  %8648 = phi float [ %7975, %7974 ], [ %7975, %7984 ], [ %8638, %8646 ]
  %8649 = phi float [ %7976, %7974 ], [ %7976, %7984 ], [ %8639, %8646 ]
  %8650 = phi float [ %7977, %7974 ], [ %7977, %7984 ], [ %8640, %8646 ]
  %8651 = phi float [ %7978, %7974 ], [ %7978, %7984 ], [ %8641, %8646 ]
  %8652 = phi float [ %7979, %7974 ], [ %7979, %7984 ], [ %8642, %8646 ]
  %8653 = phi float [ %7980, %7974 ], [ %7980, %7984 ], [ %8643, %8646 ]
  %8654 = fmul fast float %4251, %4251
  %8655 = fsub fast float 1.000000e+00, %8654
  %8656 = call float @dx.op.dot3.f32(i32 55, float %8655, float %8655, float %8655, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8657 = fsub fast float 1.000000e+00, %8656
  %8658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8659 = extractvalue %dx.types.CBufRet.f32 %8658, 0
  %8660 = fmul fast float %8659, %6241
  %8661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8662 = extractvalue %dx.types.CBufRet.f32 %8661, 3
  %8663 = fsub fast float 1.000000e+00, %4259
  %8664 = call float @dx.op.unary.f32(i32 7, float %8663)  ; Saturate(value)
  %8665 = fadd fast float %8653, %4257
  %8666 = fmul fast float %8665, %4259
  %8667 = fmul fast float %8664, %8662
  %8668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8669 = extractvalue %dx.types.CBufRet.f32 %8668, 3
  %8670 = fmul fast float %8651, %5436
  %8671 = fmul fast float %8652, %5437
  %8672 = fmul fast float %8653, %5438
  %8673 = fcmp fast ogt float %107, %242
  %8674 = and i1 %8673, %4662
  %8675 = or i1 %4668, %8674
  %8676 = icmp eq i32 %4661, 2
  %8677 = fcmp fast ole float %107, %242
  %8678 = and i1 %8677, %8676
  %8679 = or i1 %8678, %8675
  br i1 %8674, label %8680, label %8937

; <label>:8680                                    ; preds = %8647
  %8681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8682 = extractvalue %dx.types.CBufRet.f32 %8681, 2
  %8683 = extractvalue %dx.types.CBufRet.f32 %8681, 3
  %8684 = fmul fast float %8682, %120
  %8685 = fmul fast float %8683, %121
  %8686 = call float @dx.op.unary.f32(i32 7, float %8684)  ; Saturate(value)
  %8687 = call float @dx.op.unary.f32(i32 7, float %8685)  ; Saturate(value)
  %8688 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %56, float %8686, float %8687, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8689 = extractvalue %dx.types.ResRet.f32 %8688, 0
  %8690 = extractvalue %dx.types.ResRet.f32 %8688, 1
  %8691 = extractvalue %dx.types.ResRet.f32 %8688, 2
  %8692 = extractvalue %dx.types.ResRet.f32 %8688, 3
  %8693 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %56, float %8686, float %8687, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8694 = extractvalue %dx.types.ResRet.f32 %8693, 0
  %8695 = extractvalue %dx.types.ResRet.f32 %8693, 1
  %8696 = extractvalue %dx.types.ResRet.f32 %8693, 2
  %8697 = extractvalue %dx.types.ResRet.f32 %8693, 3
  %8698 = call float @dx.op.binary.f32(i32 35, float %8690, float %8691)  ; FMax(a,b)
  %8699 = call float @dx.op.binary.f32(i32 35, float %8689, float %8698)  ; FMax(a,b)
  %8700 = call float @dx.op.binary.f32(i32 35, float %8699, float %8692)  ; FMax(a,b)
  %8701 = call float @dx.op.binary.f32(i32 36, float %8695, float %8696)  ; FMin(a,b)
  %8702 = call float @dx.op.binary.f32(i32 36, float %8694, float %8701)  ; FMin(a,b)
  %8703 = call float @dx.op.binary.f32(i32 36, float %8702, float %8697)  ; FMin(a,b)
  %8704 = fmul fast float %8700, 2.550000e+02
  %8705 = fadd fast float %8704, 0x3F70101020000000
  %8706 = fptoui float %8705 to i32
  %8707 = fmul fast float %8703, 2.550000e+02
  %8708 = fadd fast float %8707, 0x3F70101020000000
  %8709 = fptoui float %8708 to i32
  %8710 = icmp ult i32 %8706, %8709
  br i1 %8710, label %8711, label %8879

; <label>:8711                                    ; preds = %8680
  %8712 = fcmp fast ogt float %106, 9.843750e-01
  %8713 = fadd fast float %107, -4.000000e+00
  %8714 = select i1 %8712, float -4.000000e+00, float %8713
  %8715 = call float @dx.op.binary.f32(i32 35, float %8714, float 0.000000e+00)  ; FMax(a,b)
  %8716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8717 = extractvalue %dx.types.CBufRet.f32 %8716, 0
  %8718 = fadd fast float %8717, %8715
  %8719 = extractvalue %dx.types.CBufRet.f32 %8716, 2
  %8720 = fmul fast float %8718, %8719
  %8721 = call float @dx.op.unary.f32(i32 23, float %8720)  ; Log(value)
  %8722 = extractvalue %dx.types.CBufRet.f32 %8716, 3
  %8723 = fmul fast float %8722, %8721
  %8724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8725 = extractvalue %dx.types.CBufRet.f32 %8724, 2
  %8726 = fmul fast float %8723, %8725
  %8727 = call float @dx.op.unary.f32(i32 7, float %8726)  ; Saturate(value)
  %8728 = uitofp i32 %8706 to float
  %8729 = uitofp i32 %8709 to float
  %8730 = fadd fast float %8728, 5.000000e-01
  %8731 = fadd fast float %8729, 5.000000e-01
  %8732 = fmul fast float %8725, %8730
  %8733 = fmul fast float %8725, %8731
  %8734 = fadd fast float %8732, 0x3F0FFB4800000000
  %8735 = fadd fast float %8733, 0xBF0FFB4800000000
  %8736 = call float @dx.op.binary.f32(i32 35, float %8727, float %8734)  ; FMax(a,b)
  %8737 = call float @dx.op.binary.f32(i32 36, float %8736, float %8735)  ; FMin(a,b)
  %8738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8739 = extractvalue %dx.types.CBufRet.f32 %8738, 1
  %8740 = extractvalue %dx.types.CBufRet.f32 %8738, 2
  %8741 = extractvalue %dx.types.CBufRet.f32 %8738, 0
  %8742 = fmul fast float %8739, %8737
  %8743 = fadd fast float %8741, %8742
  %8744 = fadd fast float %8741, %8740
  %8745 = fsub fast float %8739, %8740
  %8746 = fadd fast float %8745, %8741
  %8747 = call float @dx.op.binary.f32(i32 35, float %8743, float %8744)  ; FMax(a,b)
  %8748 = call float @dx.op.binary.f32(i32 36, float %8747, float %8746)  ; FMin(a,b)
  %8749 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %54, float %8686, float %8687, float %8748, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8750 = extractvalue %dx.types.ResRet.f32 %8749, 0
  %8751 = extractvalue %dx.types.ResRet.f32 %8749, 1
  %8752 = extractvalue %dx.types.ResRet.f32 %8749, 2
  %8753 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8754 = extractvalue %dx.types.CBufRet.i32 %8753, 0
  %8755 = extractvalue %dx.types.CBufRet.i32 %8753, 1
  %8756 = uitofp i32 %8754 to float
  %8757 = uitofp i32 %8755 to float
  %8758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8759 = extractvalue %dx.types.CBufRet.f32 %8758, 0
  %8760 = extractvalue %dx.types.CBufRet.f32 %8758, 1
  %8761 = fmul fast float %8756, %8686
  %8762 = fmul fast float %8757, %8687
  %8763 = fadd fast float %8761, -5.000000e-01
  %8764 = fadd fast float %8762, -5.000000e-01
  %8765 = call float @dx.op.unary.f32(i32 22, float %8763)  ; Frc(value)
  %8766 = call float @dx.op.unary.f32(i32 22, float %8764)  ; Frc(value)
  %8767 = fmul fast float %8765, %8765
  %8768 = fmul fast float %8767, %8765
  %8769 = fsub fast float 3.000000e+00, %8765
  %8770 = fmul fast float %8767, %8769
  %8771 = fmul fast float %8765, 3.000000e+00
  %8772 = fmul fast float %8768, 3.000000e+00
  %8773 = fmul fast float %8767, 6.000000e+00
  %8774 = fsub fast float %8772, %8773
  %8775 = fadd fast float %8774, 4.000000e+00
  %8776 = fmul fast float %8775, 0x3FC5555560000000
  %8777 = fmul fast float %8768, -3.000000e+00
  %8778 = fadd fast float %8767, %8765
  %8779 = fmul fast float %8778, 3.000000e+00
  %8780 = fadd fast float %8777, 1.000000e+00
  %8781 = fadd fast float %8780, %8779
  %8782 = fmul fast float %8768, 0x3FC5555560000000
  %8783 = fmul fast float %8766, %8766
  %8784 = fmul fast float %8783, %8766
  %8785 = fsub fast float 3.000000e+00, %8766
  %8786 = fmul fast float %8783, %8785
  %8787 = fmul fast float %8766, 3.000000e+00
  %8788 = fmul fast float %8784, 3.000000e+00
  %8789 = fmul fast float %8783, 6.000000e+00
  %8790 = fsub fast float %8788, %8789
  %8791 = fadd fast float %8790, 4.000000e+00
  %8792 = fmul fast float %8791, 0x3FC5555560000000
  %8793 = fmul fast float %8784, -3.000000e+00
  %8794 = fadd fast float %8783, %8766
  %8795 = fmul fast float %8794, 3.000000e+00
  %8796 = fadd fast float %8793, 1.000000e+00
  %8797 = fadd fast float %8796, %8795
  %8798 = fmul fast float %8784, 0x3FC5555560000000
  %8799 = fadd fast float %8765, 1.000000e+00
  %8800 = fsub fast float 1.000000e+00, %8771
  %8801 = fadd fast float %8800, %8770
  %8802 = fadd fast float %8801, %8775
  %8803 = fmul fast float %8802, 0x3FC5555560000000
  %8804 = fdiv fast float %8776, %8803
  %8805 = fsub fast float %8799, %8804
  %8806 = fsub fast float 1.000000e+00, %8765
  %8807 = fadd fast float %8781, %8768
  %8808 = fmul fast float %8807, 0x3FC5555560000000
  %8809 = fdiv fast float %8782, %8808
  %8810 = fadd fast float %8806, %8809
  %8811 = fadd fast float %8766, 1.000000e+00
  %8812 = fsub fast float 1.000000e+00, %8787
  %8813 = fadd fast float %8812, %8786
  %8814 = fadd fast float %8813, %8791
  %8815 = fmul fast float %8814, 0x3FC5555560000000
  %8816 = fdiv fast float %8792, %8815
  %8817 = fsub fast float %8811, %8816
  %8818 = fsub fast float 1.000000e+00, %8766
  %8819 = fadd fast float %8797, %8784
  %8820 = fmul fast float %8819, 0x3FC5555560000000
  %8821 = fdiv fast float %8798, %8820
  %8822 = fadd fast float %8821, %8818
  %8823 = fmul fast float %8805, %8759
  %8824 = fsub fast float %8686, %8823
  %8825 = fmul fast float %8810, %8759
  %8826 = fadd fast float %8825, %8686
  %8827 = fmul fast float %8822, %8760
  %8828 = fadd fast float %8827, %8687
  %8829 = fmul fast float %8817, %8760
  %8830 = fsub fast float %8687, %8829
  %8831 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %8824, float %8830, float %8748, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8832 = extractvalue %dx.types.ResRet.f32 %8831, 0
  %8833 = extractvalue %dx.types.ResRet.f32 %8831, 1
  %8834 = extractvalue %dx.types.ResRet.f32 %8831, 2
  %8835 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %8826, float %8830, float %8748, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8836 = extractvalue %dx.types.ResRet.f32 %8835, 0
  %8837 = extractvalue %dx.types.ResRet.f32 %8835, 1
  %8838 = extractvalue %dx.types.ResRet.f32 %8835, 2
  %8839 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %8824, float %8828, float %8748, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8840 = extractvalue %dx.types.ResRet.f32 %8839, 0
  %8841 = extractvalue %dx.types.ResRet.f32 %8839, 1
  %8842 = extractvalue %dx.types.ResRet.f32 %8839, 2
  %8843 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %8826, float %8828, float %8748, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8844 = extractvalue %dx.types.ResRet.f32 %8843, 0
  %8845 = extractvalue %dx.types.ResRet.f32 %8843, 1
  %8846 = extractvalue %dx.types.ResRet.f32 %8843, 2
  %8847 = fsub fast float %8840, %8832
  %8848 = fsub fast float %8841, %8833
  %8849 = fsub fast float %8842, %8834
  %8850 = fmul fast float %8847, %8820
  %8851 = fmul fast float %8848, %8820
  %8852 = fmul fast float %8849, %8820
  %8853 = fadd fast float %8850, %8832
  %8854 = fadd fast float %8851, %8833
  %8855 = fadd fast float %8852, %8834
  %8856 = fsub fast float %8844, %8836
  %8857 = fsub fast float %8845, %8837
  %8858 = fsub fast float %8846, %8838
  %8859 = fmul fast float %8856, %8820
  %8860 = fmul fast float %8857, %8820
  %8861 = fmul fast float %8858, %8820
  %8862 = fsub fast float %8836, %8853
  %8863 = fadd fast float %8862, %8859
  %8864 = fsub fast float %8837, %8854
  %8865 = fadd fast float %8864, %8860
  %8866 = fsub fast float %8838, %8855
  %8867 = fadd fast float %8866, %8861
  %8868 = fmul fast float %8863, %8808
  %8869 = fmul fast float %8865, %8808
  %8870 = fmul fast float %8867, %8808
  %8871 = fadd fast float %8868, %8853
  %8872 = fadd fast float %8869, %8854
  %8873 = fadd fast float %8870, %8855
  %8874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8875 = extractvalue %dx.types.CBufRet.f32 %8874, 1
  %8876 = fmul fast float %8871, %8875
  %8877 = fmul fast float %8872, %8875
  %8878 = fmul fast float %8873, %8875
  br label %8879

; <label>:8879                                    ; preds = %8711, %8680
  %8880 = phi float [ %8750, %8711 ], [ 1.000000e+00, %8680 ]
  %8881 = phi float [ %8751, %8711 ], [ 1.000000e+00, %8680 ]
  %8882 = phi float [ %8752, %8711 ], [ 1.000000e+00, %8680 ]
  %8883 = phi float [ %8876, %8711 ], [ 0.000000e+00, %8680 ]
  %8884 = phi float [ %8877, %8711 ], [ 0.000000e+00, %8680 ]
  %8885 = phi float [ %8878, %8711 ], [ 0.000000e+00, %8680 ]
  %8886 = fmul fast float %8883, %8657
  %8887 = fmul fast float %8884, %8657
  %8888 = fmul fast float %8885, %8657
  %8889 = call float @dx.op.dot3.f32(i32 55, float %8880, float %8881, float %8882, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8890 = call float @dx.op.dot3.f32(i32 55, float %8886, float %8887, float %8888, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8891 = select i1 %279, float %8889, float %8880
  %8892 = select i1 %279, float %8889, float %8881
  %8893 = select i1 %279, float 1.000000e+00, float %8882
  %8894 = select i1 %279, float %8890, float %8886
  %8895 = select i1 %279, float 0.000000e+00, float %8887
  %8896 = select i1 %279, float 0.000000e+00, float %8888
  %8897 = fmul fast float %8891, %8670
  %8898 = fmul fast float %8892, %8671
  %8899 = fmul fast float %8893, %8672
  %8900 = fadd fast float %8897, %8894
  %8901 = fadd fast float %8898, %8895
  %8902 = fadd fast float %8896, %8899
  %8903 = fmul fast float %8891, %8648
  %8904 = fmul fast float %8892, %8649
  %8905 = fmul fast float %8893, %8650
  %8906 = fmul fast float %156, %8682
  %8907 = fmul fast float %158, %8683
  %8908 = fsub fast float 1.000000e+00, %8906
  %8909 = fsub fast float 1.000000e+00, %8907
  %8910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8911 = extractvalue %dx.types.CBufRet.f32 %8910, 0
  %8912 = extractvalue %dx.types.CBufRet.f32 %8910, 1
  %8913 = extractvalue %dx.types.CBufRet.f32 %8910, 2
  %8914 = fmul fast float %8908, %8911
  %8915 = fmul fast float %8908, %8912
  %8916 = fmul fast float %8908, %8913
  %8917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8918 = extractvalue %dx.types.CBufRet.f32 %8917, 0
  %8919 = extractvalue %dx.types.CBufRet.f32 %8917, 1
  %8920 = extractvalue %dx.types.CBufRet.f32 %8917, 2
  %8921 = fmul fast float %8909, %8918
  %8922 = fmul fast float %8909, %8919
  %8923 = fmul fast float %8909, %8920
  %8924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8925 = extractvalue %dx.types.CBufRet.f32 %8924, 0
  %8926 = extractvalue %dx.types.CBufRet.f32 %8924, 1
  %8927 = extractvalue %dx.types.CBufRet.f32 %8924, 2
  %8928 = fadd fast float %8921, %8925
  %8929 = fadd fast float %8928, %8914
  %8930 = fadd fast float %8922, %8926
  %8931 = fadd fast float %8930, %8915
  %8932 = fadd fast float %8923, %8927
  %8933 = fadd fast float %8932, %8916
  %8934 = fmul fast float %8929, %242
  %8935 = fmul fast float %8931, %242
  %8936 = fmul fast float %8933, %242
  br label %8937

; <label>:8937                                    ; preds = %8879, %8647
  %8938 = phi float [ %8934, %8879 ], [ %207, %8647 ]
  %8939 = phi float [ %8935, %8879 ], [ %208, %8647 ]
  %8940 = phi float [ %8936, %8879 ], [ %209, %8647 ]
  %8941 = phi float [ %242, %8879 ], [ %107, %8647 ]
  %8942 = phi float [ %8900, %8879 ], [ %8670, %8647 ]
  %8943 = phi float [ %8901, %8879 ], [ %8671, %8647 ]
  %8944 = phi float [ %8902, %8879 ], [ %8672, %8647 ]
  %8945 = phi float [ %8903, %8879 ], [ %8648, %8647 ]
  %8946 = phi float [ %8904, %8879 ], [ %8649, %8647 ]
  %8947 = phi float [ %8905, %8879 ], [ %8650, %8647 ]
  %8948 = phi float [ %8880, %8879 ], [ 1.000000e+00, %8647 ]
  br i1 %8679, label %10103, label %8949

; <label>:8949                                    ; preds = %8937
  %8950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8951 = extractvalue %dx.types.CBufRet.f32 %8950, 0
  %8952 = extractvalue %dx.types.CBufRet.f32 %8950, 1
  %8953 = extractvalue %dx.types.CBufRet.f32 %8950, 2
  %8954 = extractvalue %dx.types.CBufRet.f32 %8950, 3
  %8955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8956 = extractvalue %dx.types.CBufRet.f32 %8955, 0
  %8957 = extractvalue %dx.types.CBufRet.f32 %8955, 1
  %8958 = extractvalue %dx.types.CBufRet.f32 %8955, 2
  %8959 = extractvalue %dx.types.CBufRet.f32 %8955, 3
  %8960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8961 = extractvalue %dx.types.CBufRet.f32 %8960, 0
  %8962 = extractvalue %dx.types.CBufRet.f32 %8960, 1
  %8963 = extractvalue %dx.types.CBufRet.f32 %8960, 2
  %8964 = extractvalue %dx.types.CBufRet.f32 %8960, 3
  %8965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8966 = extractvalue %dx.types.CBufRet.f32 %8965, 0
  %8967 = extractvalue %dx.types.CBufRet.f32 %8965, 1
  %8968 = extractvalue %dx.types.CBufRet.f32 %8965, 2
  %8969 = extractvalue %dx.types.CBufRet.f32 %8965, 3
  %8970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8971 = extractvalue %dx.types.CBufRet.f32 %8970, 3
  %8972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8973 = extractvalue %dx.types.CBufRet.f32 %8972, 3
  %8974 = extractvalue %dx.types.CBufRet.f32 %8972, 0
  %8975 = extractvalue %dx.types.CBufRet.f32 %8972, 1
  %8976 = extractvalue %dx.types.CBufRet.f32 %8972, 2
  %8977 = fcmp fast olt float %8976, -5.000000e-01
  %8978 = call float @dx.op.dot3.f32(i32 55, float %8938, float %8939, float %8940, float %8938, float %8939, float %8940)  ; Dot3(ax,ay,az,bx,by,bz)
  %8979 = call float @dx.op.unary.f32(i32 25, float %8978)  ; Rsqrt(value)
  %8980 = fmul fast float %8979, %8978
  %8981 = fmul fast float %8979, %8938
  %8982 = fmul fast float %8979, %8939
  %8983 = fmul fast float %8979, %8940
  %8984 = fadd fast float %8980, %8954
  %8985 = call float @dx.op.dot3.f32(i32 55, float %8981, float %8982, float %8983, float %8951, float %8952, float %8953)  ; Dot3(ax,ay,az,bx,by,bz)
  %8986 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8987 = extractvalue %dx.types.CBufRet.i32 %8986, 1
  %8988 = and i32 %8987, 1
  %8989 = icmp ne i32 %8988, 0
  %8990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8991 = extractvalue %dx.types.CBufRet.f32 %8990, 2
  %8992 = fcmp fast ogt float %8991, 0.000000e+00
  %8993 = and i1 %8989, %8992
  br i1 %8993, label %8994, label %9400, !dx.controlflow.hints !140

; <label>:8994                                    ; preds = %8949
  %8995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8996 = extractvalue %dx.types.CBufRet.f32 %8995, 3
  %8997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8998 = extractvalue %dx.types.CBufRet.f32 %8997, 2
  %8999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9000 = extractvalue %dx.types.CBufRet.f32 %8999, 2
  %9001 = fsub fast float %8998, %9000
  %9002 = and i32 %8987, 2
  %9003 = extractvalue %dx.types.CBufRet.i32 %8986, 0
  %9004 = call i32 @dx.op.binary.i32(i32 40, i32 %9003, i32 3)  ; UMin(a,b)
  %9005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %9006 = extractvalue %dx.types.CBufRet.f32 %9005, 0
  %9007 = extractvalue %dx.types.CBufRet.f32 %9005, 1
  %9008 = extractvalue %dx.types.CBufRet.f32 %8999, 0
  %9009 = extractvalue %dx.types.CBufRet.f32 %8999, 1
  %9010 = fsub fast float %9006, %9008
  %9011 = fsub fast float %9007, %9009
  %9012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %9013 = extractvalue %dx.types.CBufRet.f32 %9012, 0
  %9014 = fcmp fast ogt float %9013, 0.000000e+00
  %9015 = fsub fast float -0.000000e+00, %9010
  %9016 = fsub fast float -0.000000e+00, %9011
  %9017 = call float @dx.op.dot2.f32(i32 54, float %8981, float %8982, float %8981, float %8982)  ; Dot2(ax,ay,bx,by)
  %9018 = call float @dx.op.dot2.f32(i32 54, float %8981, float %8982, float %9015, float %9016)  ; Dot2(ax,ay,bx,by)
  %9019 = fmul fast float %9018, 2.000000e+00
  %9020 = call float @dx.op.dot2.f32(i32 54, float %9015, float %9016, float %9015, float %9016)  ; Dot2(ax,ay,bx,by)
  %9021 = fmul fast float %9013, %9013
  %9022 = fsub fast float %9020, %9021
  %9023 = fmul fast float %9019, %9019
  %9024 = fmul fast float %9017, 4.000000e+00
  %9025 = fmul fast float %9024, %9022
  %9026 = fsub fast float %9023, %9025
  %9027 = fcmp fast ogt float %9026, 0.000000e+00
  br i1 %9027, label %9028, label %9043

; <label>:9028                                    ; preds = %8994
  %9029 = fcmp fast ogt float %9019, 0.000000e+00
  %9030 = call float @dx.op.unary.f32(i32 24, float %9026)  ; Sqrt(value)
  %9031 = fsub fast float -0.000000e+00, %9030
  %9032 = select i1 %9029, float %9030, float %9031
  %9033 = fadd fast float %9032, %9019
  %9034 = fmul float %9033, -5.000000e-01
  %9035 = fdiv fast float %9034, %9017
  %9036 = call float @dx.op.binary.f32(i32 35, float %9035, float 0.000000e+00)  ; FMax(a,b)
  %9037 = call float @dx.op.binary.f32(i32 36, float %8980, float %9036)  ; FMin(a,b)
  %9038 = fdiv fast float %9022, %9034
  %9039 = call float @dx.op.binary.f32(i32 35, float %9038, float 0.000000e+00)  ; FMax(a,b)
  %9040 = call float @dx.op.binary.f32(i32 36, float %8980, float %9039)  ; FMin(a,b)
  %9041 = call float @dx.op.binary.f32(i32 36, float %9037, float %9040)  ; FMin(a,b)
  %9042 = call float @dx.op.binary.f32(i32 35, float %9037, float %9040)  ; FMax(a,b)
  br label %9043

; <label>:9043                                    ; preds = %9028, %8994
  %9044 = phi float [ %9042, %9028 ], [ -1.000000e+00, %8994 ]
  %9045 = phi float [ %9041, %9028 ], [ -1.000000e+00, %8994 ]
  %9046 = phi i1 [ true, %9028 ], [ false, %8994 ]
  %9047 = and i1 %9014, %9046
  br i1 %9047, label %9048, label %9050

; <label>:9048                                    ; preds = %9043
  %9049 = fcmp fast oeq float %9045, %9044
  br i1 %9049, label %9353, label %9051

; <label>:9050                                    ; preds = %9043
  br i1 %9014, label %9353, label %9051

; <label>:9051                                    ; preds = %9050, %9048
  %9052 = phi float [ %8980, %9050 ], [ %9044, %9048 ]
  %9053 = phi float [ 0.000000e+00, %9050 ], [ %9045, %9048 ]
  %9054 = icmp ne i32 %9002, 0
  %9055 = fmul fast float %9052, %8983
  %9056 = fadd fast float %9055, %8996
  %9057 = fmul fast float %9056, %9052
  %9058 = select i1 %9054, float 0.000000e+00, float %9057
  %9059 = fcmp fast oeq float %8983, 0.000000e+00
  %9060 = fdiv fast float %9001, %8983
  %9061 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9060)  ; FMax(a,b)
  %9062 = select i1 %9059, float %9052, float %9061
  %9063 = call float @dx.op.binary.f32(i32 36, float %9052, float %9062)  ; FMin(a,b)
  %9064 = fcmp fast ogt float %8983, 0.000000e+00
  %9065 = fcmp fast olt float %9001, 0.000000e+00
  br i1 %9064, label %9066, label %9123

; <label>:9066                                    ; preds = %9051
  %9067 = icmp eq i32 %9002, 0
  br i1 %9065, label %9068, label %9112

; <label>:9068                                    ; preds = %9066
  %9069 = select i1 %9067, float %9052, float 0.000000e+00
  %9070 = fsub fast float -0.000000e+00, %9069
  %9071 = call float @dx.op.unary.f32(i32 6, float %9070)  ; FAbs(value)
  %9072 = fmul fast float %9069, %8983
  %9073 = fadd fast float %9072, %8996
  %9074 = fmul fast float %9071, %9073
  %9075 = fsub fast float %9058, %9074
  %9076 = fsub fast float %9052, %9071
  %9077 = select i1 %9067, float %9076, float 0.000000e+00
  %9078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9079 = extractvalue %dx.types.CBufRet.f32 %9078, 0
  %9080 = extractvalue %dx.types.CBufRet.f32 %9078, 1
  %9081 = extractvalue %dx.types.CBufRet.f32 %9078, 2
  %9082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9083 = extractvalue %dx.types.CBufRet.f32 %9082, 0
  %9084 = extractvalue %dx.types.CBufRet.f32 %9082, 1
  %9085 = extractvalue %dx.types.CBufRet.f32 %9082, 2
  %9086 = extractvalue %dx.types.CBufRet.f32 %9082, 3
  %9087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9088 = extractvalue %dx.types.CBufRet.f32 %9087, 3
  %9089 = call float @dx.op.binary.f32(i32 36, float %9075, float %9088)  ; FMin(a,b)
  %9090 = fmul fast float %9086, %9077
  %9091 = call float @dx.op.unary.f32(i32 7, float %9090)  ; Saturate(value)
  %9092 = fsub fast float %9083, %9079
  %9093 = fsub fast float %9084, %9080
  %9094 = fsub fast float %9085, %9081
  %9095 = fmul fast float %9091, %9092
  %9096 = fmul fast float %9091, %9093
  %9097 = fmul fast float %9091, %9094
  %9098 = fadd fast float %9095, %9079
  %9099 = fadd fast float %9096, %9080
  %9100 = fadd fast float %9097, %9081
  %9101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9102 = extractvalue %dx.types.CBufRet.f32 %9101, 0
  %9103 = extractvalue %dx.types.CBufRet.f32 %9101, 1
  %9104 = fadd fast float %9103, %9102
  %9105 = call float @dx.op.unary.f32(i32 7, float %9104)  ; Saturate(value)
  %9106 = extractvalue %dx.types.CBufRet.f32 %9101, 2
  %9107 = extractvalue %dx.types.CBufRet.f32 %9101, 3
  %9108 = fadd fast float %9107, %9106
  %9109 = call float @dx.op.unary.f32(i32 7, float %9108)  ; Saturate(value)
  %9110 = fmul fast float %9105, %9089
  %9111 = fmul fast float %9110, %9109
  br label %9353

; <label>:9112                                    ; preds = %9066
  br i1 %9067, label %9113, label %9134

; <label>:9113                                    ; preds = %9112
  %9114 = call float @dx.op.binary.f32(i32 36, float %9063, float %9053)  ; FMin(a,b)
  %9115 = fsub fast float %9063, %9114
  %9116 = fsub fast float %9115, %9052
  %9117 = call float @dx.op.unary.f32(i32 6, float %9116)  ; FAbs(value)
  %9118 = fadd fast float %9115, %9052
  %9119 = fmul fast float %9118, %8983
  %9120 = fadd fast float %9119, %8996
  %9121 = fmul fast float %9120, %9117
  %9122 = fsub fast float %9058, %9121
  br label %9134

; <label>:9123                                    ; preds = %9051
  br i1 %9065, label %9124, label %9134

; <label>:9124                                    ; preds = %9123
  %9125 = call float @dx.op.binary.f32(i32 35, float %9053, float %9063)  ; FMax(a,b)
  %9126 = icmp eq i32 %9002, 0
  %9127 = select i1 %9126, float %9063, float 0.000000e+00
  %9128 = fsub fast float -0.000000e+00, %9127
  %9129 = call float @dx.op.unary.f32(i32 6, float %9128)  ; FAbs(value)
  %9130 = fmul fast float %9127, %8983
  %9131 = fadd fast float %9130, %8996
  %9132 = fmul fast float %9129, %9131
  %9133 = fsub fast float %9058, %9132
  br label %9134

; <label>:9134                                    ; preds = %9124, %9123, %9113, %9112
  %9135 = phi float [ %9053, %9112 ], [ %9053, %9113 ], [ %9125, %9124 ], [ %9053, %9123 ]
  %9136 = phi float [ 0.000000e+00, %9112 ], [ %9117, %9113 ], [ %9129, %9124 ], [ 0.000000e+00, %9123 ]
  %9137 = phi float [ %9058, %9112 ], [ %9122, %9113 ], [ %9133, %9124 ], [ %9058, %9123 ]
  %9138 = phi float [ %9063, %9112 ], [ %9063, %9113 ], [ %9052, %9124 ], [ %9052, %9123 ]
  %9139 = getelementptr inbounds [3 x float], [3 x float]* %114, i32 0, i32 0
  store float -1.000000e+00, float* %9139, align 4, !tbaa !126, !noalias !141
  %9140 = getelementptr inbounds [3 x float], [3 x float]* %114, i32 0, i32 1
  store float -1.000000e+00, float* %9140, align 4, !tbaa !126, !noalias !141
  %9141 = getelementptr inbounds [3 x float], [3 x float]* %114, i32 0, i32 2
  store float -1.000000e+00, float* %9141, align 4, !tbaa !126, !noalias !141
  %9142 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 0
  store float -1.000000e+00, float* %9142, align 4, !tbaa !126, !noalias !141
  %9143 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 1
  store float -1.000000e+00, float* %9143, align 4, !tbaa !126, !noalias !141
  %9144 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 2
  store float -1.000000e+00, float* %9144, align 4, !tbaa !126, !noalias !141
  %9145 = icmp sgt i32 %9004, 0
  br i1 %9145, label %9146, label %9207

; <label>:9146                                    ; preds = %9134
  br label %9147

; <label>:9147                                    ; preds = %9196, %9146
  %9148 = phi i32 [ %9197, %9196 ], [ 0, %9146 ]
  %9149 = phi i32 [ %9198, %9196 ], [ 0, %9146 ]
  %9150 = add nuw i32 %9149, 171
  %9151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 %9150)  ; CBufferLoadLegacy(handle,regIndex)
  %9152 = extractvalue %dx.types.CBufRet.f32 %9151, 0
  %9153 = extractvalue %dx.types.CBufRet.f32 %9151, 1
  %9154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9155 = extractvalue %dx.types.CBufRet.f32 %9154, 0
  %9156 = extractvalue %dx.types.CBufRet.f32 %9154, 1
  %9157 = fsub fast float %9152, %9155
  %9158 = fsub fast float %9153, %9156
  %9159 = extractvalue %dx.types.CBufRet.f32 %9151, 2
  %9160 = fsub fast float -0.000000e+00, %9157
  %9161 = fsub fast float -0.000000e+00, %9158
  %9162 = call float @dx.op.dot2.f32(i32 54, float %8981, float %8982, float %9160, float %9161)  ; Dot2(ax,ay,bx,by)
  %9163 = fmul fast float %9162, 2.000000e+00
  %9164 = call float @dx.op.dot2.f32(i32 54, float %9160, float %9161, float %9160, float %9161)  ; Dot2(ax,ay,bx,by)
  %9165 = fmul fast float %9159, %9159
  %9166 = fsub fast float %9164, %9165
  %9167 = fmul fast float %9163, %9163
  %9168 = fmul fast float %9024, %9166
  %9169 = fsub fast float %9167, %9168
  %9170 = fcmp fast ogt float %9169, 0.000000e+00
  br i1 %9170, label %9171, label %9186

; <label>:9171                                    ; preds = %9147
  %9172 = fcmp fast ogt float %9163, 0.000000e+00
  %9173 = call float @dx.op.unary.f32(i32 24, float %9169)  ; Sqrt(value)
  %9174 = fsub fast float -0.000000e+00, %9173
  %9175 = select i1 %9172, float %9173, float %9174
  %9176 = fadd fast float %9175, %9163
  %9177 = fmul float %9176, -5.000000e-01
  %9178 = fdiv fast float %9177, %9017
  %9179 = call float @dx.op.binary.f32(i32 35, float %9178, float 0.000000e+00)  ; FMax(a,b)
  %9180 = call float @dx.op.binary.f32(i32 36, float %9052, float %9179)  ; FMin(a,b)
  %9181 = fdiv fast float %9166, %9177
  %9182 = call float @dx.op.binary.f32(i32 35, float %9181, float 0.000000e+00)  ; FMax(a,b)
  %9183 = call float @dx.op.binary.f32(i32 36, float %9052, float %9182)  ; FMin(a,b)
  %9184 = call float @dx.op.binary.f32(i32 36, float %9180, float %9183)  ; FMin(a,b)
  %9185 = call float @dx.op.binary.f32(i32 35, float %9180, float %9183)  ; FMax(a,b)
  br label %9186

; <label>:9186                                    ; preds = %9171, %9147
  %9187 = phi float [ %9185, %9171 ], [ -1.000000e+00, %9147 ]
  %9188 = phi float [ %9184, %9171 ], [ -1.000000e+00, %9147 ]
  %9189 = phi i1 [ true, %9171 ], [ false, %9147 ]
  br i1 %9189, label %9190, label %9196

; <label>:9190                                    ; preds = %9186
  %9191 = call float @dx.op.binary.f32(i32 35, float %9135, float %9188)  ; FMax(a,b)
  %9192 = getelementptr inbounds [3 x float], [3 x float]* %114, i32 0, i32 %9149
  store float %9191, float* %9192, align 4, !tbaa !126, !noalias !141
  %9193 = call float @dx.op.binary.f32(i32 35, float %9135, float %9187)  ; FMax(a,b)
  %9194 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 %9149
  store float %9193, float* %9194, align 4, !tbaa !126, !noalias !141
  %9195 = add nsw i32 %9148, 1
  br label %9196

; <label>:9196                                    ; preds = %9190, %9186
  %9197 = phi i32 [ %9195, %9190 ], [ %9148, %9186 ]
  %9198 = add nuw nsw i32 %9149, 1
  %9199 = icmp eq i32 %9198, %9004
  br i1 %9199, label %9200, label %9147

; <label>:9200                                    ; preds = %9196
  %9201 = load float, float* %9141, align 4, !tbaa !126, !alias.scope !157, !noalias !160
  %9202 = load float, float* %9140, align 4, !tbaa !126, !alias.scope !163, !noalias !164
  %9203 = load float, float* %9139, align 4, !tbaa !126, !alias.scope !165, !noalias !166
  %9204 = load float, float* %9144, align 4, !tbaa !126, !alias.scope !167, !noalias !170
  %9205 = load float, float* %9143, align 4, !tbaa !126, !alias.scope !173, !noalias !174
  %9206 = load float, float* %9142, align 4, !tbaa !126, !alias.scope !175, !noalias !176
  br label %9207

; <label>:9207                                    ; preds = %9200, %9134
  %9208 = phi float [ -1.000000e+00, %9134 ], [ %9206, %9200 ]
  %9209 = phi float [ -1.000000e+00, %9134 ], [ %9205, %9200 ]
  %9210 = phi float [ -1.000000e+00, %9134 ], [ %9204, %9200 ]
  %9211 = phi float [ -1.000000e+00, %9134 ], [ %9203, %9200 ]
  %9212 = phi float [ -1.000000e+00, %9134 ], [ %9202, %9200 ]
  %9213 = phi float [ -1.000000e+00, %9134 ], [ %9201, %9200 ]
  %9214 = phi i32 [ 0, %9134 ], [ %9197, %9200 ]
  %9215 = call float @dx.op.binary.f32(i32 36, float %9212, float %9213)  ; FMin(a,b)
  %9216 = call float @dx.op.binary.f32(i32 36, float %9211, float %9215)  ; FMin(a,b)
  %9217 = call float @dx.op.binary.f32(i32 35, float %9211, float %9212)  ; FMax(a,b)
  %9218 = call float @dx.op.binary.f32(i32 36, float %9217, float %9213)  ; FMin(a,b)
  %9219 = call float @dx.op.binary.f32(i32 36, float %9211, float %9212)  ; FMin(a,b)
  %9220 = call float @dx.op.binary.f32(i32 35, float %9219, float %9218)  ; FMax(a,b)
  %9221 = call float @dx.op.binary.f32(i32 35, float %9212, float %9213)  ; FMax(a,b)
  %9222 = call float @dx.op.binary.f32(i32 35, float %9211, float %9221)  ; FMax(a,b)
  store float %9216, float* %9139, align 4, !tbaa !126, !alias.scope !165, !noalias !166
  store float %9220, float* %9140, align 4, !tbaa !126, !alias.scope !163, !noalias !164
  store float %9222, float* %9141, align 4, !tbaa !126, !alias.scope !157, !noalias !160
  %9223 = call float @dx.op.binary.f32(i32 36, float %9209, float %9210)  ; FMin(a,b)
  %9224 = call float @dx.op.binary.f32(i32 36, float %9208, float %9223)  ; FMin(a,b)
  %9225 = call float @dx.op.binary.f32(i32 35, float %9208, float %9209)  ; FMax(a,b)
  %9226 = call float @dx.op.binary.f32(i32 36, float %9225, float %9210)  ; FMin(a,b)
  %9227 = call float @dx.op.binary.f32(i32 36, float %9208, float %9209)  ; FMin(a,b)
  %9228 = call float @dx.op.binary.f32(i32 35, float %9227, float %9226)  ; FMax(a,b)
  %9229 = call float @dx.op.binary.f32(i32 35, float %9209, float %9210)  ; FMax(a,b)
  %9230 = call float @dx.op.binary.f32(i32 35, float %9208, float %9229)  ; FMax(a,b)
  store float %9224, float* %9142, align 4, !tbaa !126, !alias.scope !175, !noalias !176
  store float %9228, float* %9143, align 4, !tbaa !126, !alias.scope !173, !noalias !174
  store float %9230, float* %9144, align 4, !tbaa !126, !alias.scope !167, !noalias !170
  %9231 = sub nsw i32 3, %9214
  %9232 = icmp sgt i32 %9231, 2
  br i1 %9232, label %9233, label %9271

; <label>:9233                                    ; preds = %9207
  %9234 = icmp eq i32 %9002, 0
  %9235 = fsub fast float %9052, %9136
  %9236 = select i1 %9234, float %9235, float %9136
  %9237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9238 = extractvalue %dx.types.CBufRet.f32 %9237, 0
  %9239 = extractvalue %dx.types.CBufRet.f32 %9237, 1
  %9240 = extractvalue %dx.types.CBufRet.f32 %9237, 2
  %9241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9242 = extractvalue %dx.types.CBufRet.f32 %9241, 0
  %9243 = extractvalue %dx.types.CBufRet.f32 %9241, 1
  %9244 = extractvalue %dx.types.CBufRet.f32 %9241, 2
  %9245 = extractvalue %dx.types.CBufRet.f32 %9241, 3
  %9246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9247 = extractvalue %dx.types.CBufRet.f32 %9246, 3
  %9248 = call float @dx.op.binary.f32(i32 36, float %9137, float %9247)  ; FMin(a,b)
  %9249 = fmul fast float %9245, %9236
  %9250 = call float @dx.op.unary.f32(i32 7, float %9249)  ; Saturate(value)
  %9251 = fsub fast float %9242, %9238
  %9252 = fsub fast float %9243, %9239
  %9253 = fsub fast float %9244, %9240
  %9254 = fmul fast float %9250, %9251
  %9255 = fmul fast float %9250, %9252
  %9256 = fmul fast float %9250, %9253
  %9257 = fadd fast float %9254, %9238
  %9258 = fadd fast float %9255, %9239
  %9259 = fadd fast float %9256, %9240
  %9260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9261 = extractvalue %dx.types.CBufRet.f32 %9260, 0
  %9262 = extractvalue %dx.types.CBufRet.f32 %9260, 1
  %9263 = fadd fast float %9262, %9261
  %9264 = call float @dx.op.unary.f32(i32 7, float %9263)  ; Saturate(value)
  %9265 = extractvalue %dx.types.CBufRet.f32 %9260, 2
  %9266 = extractvalue %dx.types.CBufRet.f32 %9260, 3
  %9267 = fadd fast float %9266, %9265
  %9268 = call float @dx.op.unary.f32(i32 7, float %9267)  ; Saturate(value)
  %9269 = fmul fast float %9264, %9248
  %9270 = fmul fast float %9269, %9268
  br label %9353

; <label>:9271                                    ; preds = %9207
  %9272 = getelementptr inbounds [3 x float], [3 x float]* %114, i32 0, i32 %9231
  %9273 = load float, float* %9272, align 4, !tbaa !126, !noalias !141
  %9274 = fcmp fast olt float %9273, %9138
  %9275 = icmp sgt i32 %9214, 0
  %9276 = and i1 %9275, %9274
  br i1 %9276, label %9277, label %9314

; <label>:9277                                    ; preds = %9271
  br label %9278

; <label>:9278                                    ; preds = %9307, %9277
  %9279 = phi float [ %9308, %9307 ], [ %9136, %9277 ]
  %9280 = phi float [ %9309, %9307 ], [ %9137, %9277 ]
  %9281 = phi float [ %9289, %9307 ], [ %9273, %9277 ]
  %9282 = phi i32 [ %9286, %9307 ], [ %9231, %9277 ]
  %9283 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 %9282
  %9284 = load float, float* %9283, align 4, !tbaa !126, !noalias !141
  %9285 = icmp slt i32 %9282, 2
  %9286 = add nsw i32 %9282, 1
  %9287 = getelementptr inbounds [3 x float], [3 x float]* %114, i32 0, i32 %9286
  %9288 = load float, float* %9287, align 4, !tbaa !126, !noalias !141
  %9289 = select i1 %9285, float %9288, float %9052
  %9290 = call float @dx.op.binary.f32(i32 36, float %9289, float %9284)  ; FMin(a,b)
  %9291 = call float @dx.op.binary.f32(i32 36, float %9138, float %9290)  ; FMin(a,b)
  %9292 = icmp eq i32 %9002, 0
  %9293 = fadd fast float %9291, %9281
  %9294 = fmul fast float %9293, %8983
  %9295 = fadd fast float %9294, %8996
  br i1 %9292, label %9301, label %9296

; <label>:9296                                    ; preds = %9278
  %9297 = fsub fast float %9291, %9281
  %9298 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9297)  ; FMax(a,b)
  %9299 = fmul fast float %9298, %9295
  %9300 = fadd fast float %9299, %9280
  br label %9307

; <label>:9301                                    ; preds = %9278
  %9302 = fsub fast float %9281, %9291
  %9303 = call float @dx.op.unary.f32(i32 6, float %9302)  ; FAbs(value)
  %9304 = fadd fast float %9303, %9279
  %9305 = fmul fast float %9303, %9295
  %9306 = fsub fast float %9280, %9305
  br label %9307

; <label>:9307                                    ; preds = %9301, %9296
  %9308 = phi float [ %9298, %9296 ], [ %9304, %9301 ]
  %9309 = phi float [ %9300, %9296 ], [ %9306, %9301 ]
  %9310 = fcmp fast olt float %9289, %9138
  %9311 = icmp slt i32 %9286, 3
  %9312 = and i1 %9311, %9310
  br i1 %9312, label %9278, label %9313

; <label>:9313                                    ; preds = %9307
  br label %9314

; <label>:9314                                    ; preds = %9313, %9271
  %9315 = phi float [ %9136, %9271 ], [ %9308, %9313 ]
  %9316 = phi float [ %9137, %9271 ], [ %9309, %9313 ]
  %9317 = fsub fast float %9052, %9315
  %9318 = select i1 %9054, float %9315, float %9317
  %9319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9320 = extractvalue %dx.types.CBufRet.f32 %9319, 0
  %9321 = extractvalue %dx.types.CBufRet.f32 %9319, 1
  %9322 = extractvalue %dx.types.CBufRet.f32 %9319, 2
  %9323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9324 = extractvalue %dx.types.CBufRet.f32 %9323, 0
  %9325 = extractvalue %dx.types.CBufRet.f32 %9323, 1
  %9326 = extractvalue %dx.types.CBufRet.f32 %9323, 2
  %9327 = extractvalue %dx.types.CBufRet.f32 %9323, 3
  %9328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9329 = extractvalue %dx.types.CBufRet.f32 %9328, 3
  %9330 = call float @dx.op.binary.f32(i32 36, float %9316, float %9329)  ; FMin(a,b)
  %9331 = fmul fast float %9327, %9318
  %9332 = call float @dx.op.unary.f32(i32 7, float %9331)  ; Saturate(value)
  %9333 = fsub fast float %9324, %9320
  %9334 = fsub fast float %9325, %9321
  %9335 = fsub fast float %9326, %9322
  %9336 = fmul fast float %9332, %9333
  %9337 = fmul fast float %9332, %9334
  %9338 = fmul fast float %9332, %9335
  %9339 = fadd fast float %9336, %9320
  %9340 = fadd fast float %9337, %9321
  %9341 = fadd fast float %9338, %9322
  %9342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9343 = extractvalue %dx.types.CBufRet.f32 %9342, 0
  %9344 = extractvalue %dx.types.CBufRet.f32 %9342, 1
  %9345 = fadd fast float %9344, %9343
  %9346 = call float @dx.op.unary.f32(i32 7, float %9345)  ; Saturate(value)
  %9347 = extractvalue %dx.types.CBufRet.f32 %9342, 2
  %9348 = extractvalue %dx.types.CBufRet.f32 %9342, 3
  %9349 = fadd fast float %9348, %9347
  %9350 = call float @dx.op.unary.f32(i32 7, float %9349)  ; Saturate(value)
  %9351 = fmul fast float %9346, %9330
  %9352 = fmul fast float %9351, %9350
  br label %9353

; <label>:9353                                    ; preds = %9314, %9233, %9068, %9050, %9048
  %9354 = phi float [ %9077, %9068 ], [ %9236, %9233 ], [ %9318, %9314 ], [ 0.000000e+00, %9048 ], [ 0.000000e+00, %9050 ]
  %9355 = phi float [ %9111, %9068 ], [ %9270, %9233 ], [ %9352, %9314 ], [ 0.000000e+00, %9048 ], [ 0.000000e+00, %9050 ]
  %9356 = phi float [ %9098, %9068 ], [ %9257, %9233 ], [ %9339, %9314 ], [ 0.000000e+00, %9048 ], [ 0.000000e+00, %9050 ]
  %9357 = phi float [ %9099, %9068 ], [ %9258, %9233 ], [ %9340, %9314 ], [ 0.000000e+00, %9048 ], [ 0.000000e+00, %9050 ]
  %9358 = phi float [ %9100, %9068 ], [ %9259, %9233 ], [ %9341, %9314 ], [ 0.000000e+00, %9048 ], [ 0.000000e+00, %9050 ]
  %9359 = fmul fast float %8991, %9355
  %9360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9361 = extractvalue %dx.types.CBufRet.f32 %9360, 2
  %9362 = fsub fast float %8998, %9361
  %9363 = fcmp fast olt float %9359, -2.000000e+01
  %9364 = call float @dx.op.unary.f32(i32 21, float %9359)  ; Exp(value)
  %9365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9366 = extractvalue %dx.types.CBufRet.f32 %9365, 2
  %9367 = extractvalue %dx.types.CBufRet.f32 %9365, 3
  %9368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9369 = extractvalue %dx.types.CBufRet.f32 %9368, 2
  %9370 = fmul fast float %9367, %9362
  %9371 = call float @dx.op.unary.f32(i32 7, float %9370)  ; Saturate(value)
  %9372 = fsub fast float 1.000000e+00, %9371
  %9373 = fmul fast float %8983, 5.000000e-01
  %9374 = fadd fast float %9373, 5.000000e-01
  %9375 = call float @dx.op.unary.f32(i32 7, float %9374)  ; Saturate(value)
  %9376 = fsub fast float 1.000000e+00, %9375
  %9377 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9372)  ; FMax(a,b)
  %9378 = fdiv fast float %9376, %9377
  %9379 = fsub fast float %9362, %8940
  %9380 = call float @dx.op.unary.f32(i32 6, float %9379)  ; FAbs(value)
  %9381 = fmul fast float %9380, %9366
  %9382 = call float @dx.op.unary.f32(i32 7, float %9378)  ; Saturate(value)
  %9383 = fsub fast float 1.000000e+00, %9381
  %9384 = fmul fast float %9383, %9382
  %9385 = fadd fast float %9384, %9381
  %9386 = fmul fast float %9369, %9362
  %9387 = call float @dx.op.unary.f32(i32 7, float %9386)  ; Saturate(value)
  %9388 = fsub fast float 1.000000e+00, %9385
  %9389 = fmul fast float %9388, %9387
  %9390 = fadd fast float %9389, %9385
  %9391 = call float @dx.op.unary.f32(i32 7, float %9390)  ; Saturate(value)
  %9392 = fadd fast float %9364, -1.000000e+00
  %9393 = select i1 %9363, float -1.000000e+00, float %9392
  %9394 = fmul fast float %9391, %9393
  %9395 = fadd fast float %9394, 1.000000e+00
  %9396 = fsub fast float -0.000000e+00, %9394
  %9397 = fmul fast float %9356, %9396
  %9398 = fmul fast float %9357, %9396
  %9399 = fmul fast float %9358, %9396
  br label %9400

; <label>:9400                                    ; preds = %9353, %8949
  %9401 = phi float [ %9354, %9353 ], [ 0.000000e+00, %8949 ]
  %9402 = phi float [ %9395, %9353 ], [ 1.000000e+00, %8949 ]
  %9403 = phi float [ %9397, %9353 ], [ 0.000000e+00, %8949 ]
  %9404 = phi float [ %9398, %9353 ], [ 0.000000e+00, %8949 ]
  %9405 = phi float [ %9399, %9353 ], [ 0.000000e+00, %8949 ]
  %9406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9407 = extractvalue %dx.types.CBufRet.f32 %9406, 1
  %9408 = fsub fast float 1.000000e+00, %9402
  %9409 = fmul fast float %9408, %8984
  %9410 = fmul fast float %9409, %9407
  %9411 = fsub fast float %8984, %9410
  br i1 %8977, label %9412, label %9441, !dx.controlflow.hints !177

; <label>:9412                                    ; preds = %9400
  %9413 = fmul fast float %8985, %8974
  %9414 = fadd fast float %9413, %8975
  %9415 = call float @dx.op.unary.f32(i32 7, float %9414)  ; Saturate(value)
  %9416 = fmul fast float %8956, %9411
  %9417 = fsub fast float -0.000000e+00, %9416
  %9418 = fmul fast float %8957, %9411
  %9419 = fsub fast float -0.000000e+00, %9418
  %9420 = call float @dx.op.unary.f32(i32 21, float %9417)  ; Exp(value)
  %9421 = call float @dx.op.unary.f32(i32 21, float %9419)  ; Exp(value)
  %9422 = call float @dx.op.binary.f32(i32 35, float %8964, float %9420)  ; FMax(a,b)
  %9423 = call float @dx.op.binary.f32(i32 35, float %8964, float %9421)  ; FMax(a,b)
  %9424 = fsub fast float %9423, %9422
  %9425 = fmul fast float %9424, %9415
  %9426 = fadd fast float %9425, %9422
  %9427 = call float @dx.op.unary.f32(i32 7, float %9426)  ; Saturate(value)
  %9428 = fsub fast float %8961, %8966
  %9429 = fsub fast float %8962, %8967
  %9430 = fsub fast float %8963, %8968
  %9431 = fmul fast float %9415, %9428
  %9432 = fmul fast float %9415, %9429
  %9433 = fmul fast float %9415, %9430
  %9434 = fadd fast float %9431, %8966
  %9435 = fadd fast float %9432, %8967
  %9436 = fadd fast float %9433, %8968
  %9437 = fsub fast float 1.000000e+00, %9427
  %9438 = fmul fast float %9437, %9434
  %9439 = fmul fast float %9437, %9435
  %9440 = fmul fast float %9437, %9436
  br label %9500

; <label>:9441                                    ; preds = %9400
  %9442 = fmul fast float %9411, %8973
  %9443 = call float @dx.op.unary.f32(i32 7, float %9442)  ; Saturate(value)
  %9444 = fsub fast float 2.000000e+00, %9443
  %9445 = fmul fast float %9443, 9.921875e-01
  %9446 = fmul fast float %9445, %9444
  %9447 = fadd fast float %9446, 3.906250e-03
  %9448 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %56, float %9447, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9449 = extractvalue %dx.types.ResRet.f32 %9448, 0
  %9450 = fsub fast float %9443, %9449
  %9451 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9450)  ; FMax(a,b)
  %9452 = fmul fast float %8959, %8940
  %9453 = call float @dx.op.unary.f32(i32 6, float %9452)  ; FAbs(value)
  %9454 = fcmp fast ogt float %9453, 0x3EB0C6F7A0000000
  br i1 %9454, label %9455, label %9461, !dx.controlflow.hints !178

; <label>:9455                                    ; preds = %9441
  %9456 = fmul fast float %9452, 0xBFF7154760000000
  %9457 = call float @dx.op.unary.f32(i32 21, float %9456)  ; Exp(value)
  %9458 = fsub fast float 1.000000e+00, %9457
  %9459 = fdiv fast float %9458, %9452
  %9460 = fmul fast float %9459, %8969
  br label %9461

; <label>:9461                                    ; preds = %9455, %9441
  %9462 = phi float [ %9460, %9455 ], [ %8969, %9441 ]
  %9463 = fadd fast float %9462, %8971
  %9464 = fmul fast float %9463, %9451
  %9465 = fmul fast float %8956, %9464
  %9466 = fsub fast float -0.000000e+00, %9465
  %9467 = fmul fast float %8957, %9464
  %9468 = fsub fast float -0.000000e+00, %9467
  %9469 = fmul fast float %8958, %9464
  %9470 = fsub fast float -0.000000e+00, %9469
  %9471 = call float @dx.op.unary.f32(i32 21, float %9466)  ; Exp(value)
  %9472 = call float @dx.op.unary.f32(i32 21, float %9468)  ; Exp(value)
  %9473 = call float @dx.op.unary.f32(i32 21, float %9470)  ; Exp(value)
  %9474 = fmul fast float %8985, %8985
  %9475 = fadd fast float %9474, 1.000000e+00
  %9476 = fmul fast float %9475, 0x3FAE8EC8A0000000
  %9477 = fmul fast float %9476, %8966
  %9478 = fmul fast float %9476, %8967
  %9479 = fmul fast float %9476, %8968
  %9480 = fmul fast float %8985, %8964
  %9481 = fsub fast float 1.000000e+00, %9480
  %9482 = fmul fast float %8964, %8964
  %9483 = fsub fast float 1.000000e+00, %9482
  %9484 = fmul fast float %9483, 0x3FB45F3060000000
  %9485 = fmul fast float %9481, %9481
  %9486 = fdiv fast float 1.000000e+00, %9485
  %9487 = fmul fast float %9484, %9486
  %9488 = fmul fast float %9487, %8961
  %9489 = fmul fast float %9487, %8962
  %9490 = fmul fast float %9487, %8963
  %9491 = fadd fast float %9488, %9477
  %9492 = fadd fast float %9489, %9478
  %9493 = fadd fast float %9490, %9479
  %9494 = fsub fast float 1.000000e+00, %9471
  %9495 = fsub fast float 1.000000e+00, %9472
  %9496 = fsub fast float 1.000000e+00, %9473
  %9497 = fmul fast float %9491, %9494
  %9498 = fmul fast float %9492, %9495
  %9499 = fmul fast float %9493, %9496
  br label %9500

; <label>:9500                                    ; preds = %9461, %9412
  %9501 = phi float [ %9438, %9412 ], [ %9497, %9461 ]
  %9502 = phi float [ %9439, %9412 ], [ %9498, %9461 ]
  %9503 = phi float [ %9440, %9412 ], [ %9499, %9461 ]
  %9504 = phi float [ %9427, %9412 ], [ %9471, %9461 ]
  %9505 = phi float [ %9427, %9412 ], [ %9472, %9461 ]
  %9506 = phi float [ %9427, %9412 ], [ %9473, %9461 ]
  br i1 %8993, label %9507, label %9705, !dx.controlflow.hints !179

; <label>:9507                                    ; preds = %9500
  %9508 = extractvalue %dx.types.CBufRet.f32 %9406, 0
  %9509 = fmul fast float %9508, %9408
  %9510 = fsub fast float %9403, %9501
  %9511 = fsub fast float %9404, %9502
  %9512 = fsub fast float %9405, %9503
  %9513 = fmul fast float %9509, %9510
  %9514 = fmul fast float %9509, %9511
  %9515 = fmul fast float %9509, %9512
  %9516 = fadd fast float %9513, %9501
  %9517 = fadd fast float %9514, %9502
  %9518 = fadd fast float %9515, %9503
  %9519 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9504)  ; FMax(a,b)
  %9520 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9505)  ; FMax(a,b)
  %9521 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9506)  ; FMax(a,b)
  %9522 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9402)  ; FMax(a,b)
  %9523 = call float @dx.op.binary.f32(i32 35, float %9401, float %9411)  ; FMax(a,b)
  %9524 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9523)  ; FMax(a,b)
  %9525 = fdiv fast float %9401, %9524
  %9526 = call float @dx.op.unary.f32(i32 7, float %9525)  ; Saturate(value)
  %9527 = fdiv fast float %9411, %9524
  %9528 = call float @dx.op.unary.f32(i32 7, float %9527)  ; Saturate(value)
  %9529 = fcmp fast une float %9522, 1.000000e+00
  br i1 %9529, label %9530, label %9543, !dx.controlflow.hints !180

; <label>:9530                                    ; preds = %9507
  %9531 = call float @dx.op.unary.f32(i32 23, float %9522)  ; Log(value)
  %9532 = fmul fast float %9531, 0x3FE62E4300000000
  %9533 = fmul fast float %9403, %9532
  %9534 = fsub fast float -0.000000e+00, %9533
  %9535 = fmul fast float %9404, %9532
  %9536 = fsub fast float -0.000000e+00, %9535
  %9537 = fmul fast float %9405, %9532
  %9538 = fsub fast float -0.000000e+00, %9537
  %9539 = fsub fast float 1.000000e+00, %9522
  %9540 = fdiv fast float %9534, %9539
  %9541 = fdiv fast float %9536, %9539
  %9542 = fdiv fast float %9538, %9539
  br label %9543

; <label>:9543                                    ; preds = %9530, %9507
  %9544 = phi float [ %9540, %9530 ], [ %9403, %9507 ]
  %9545 = phi float [ %9541, %9530 ], [ %9404, %9507 ]
  %9546 = phi float [ %9542, %9530 ], [ %9405, %9507 ]
  %9547 = phi float [ %9532, %9530 ], [ 0.000000e+00, %9507 ]
  %9548 = fcmp fast une float %9519, 1.000000e+00
  br i1 %9548, label %9549, label %9556, !dx.controlflow.hints !181

; <label>:9549                                    ; preds = %9543
  %9550 = call float @dx.op.unary.f32(i32 23, float %9519)  ; Log(value)
  %9551 = fmul fast float %9550, 0x3FE62E4300000000
  %9552 = fmul fast float %9516, %9551
  %9553 = fsub fast float -0.000000e+00, %9552
  %9554 = fsub fast float 1.000000e+00, %9519
  %9555 = fdiv fast float %9553, %9554
  br label %9556

; <label>:9556                                    ; preds = %9549, %9543
  %9557 = phi float [ %9555, %9549 ], [ %9516, %9543 ]
  %9558 = phi float [ %9551, %9549 ], [ 0.000000e+00, %9543 ]
  %9559 = fcmp fast une float %9520, 1.000000e+00
  br i1 %9559, label %9560, label %9567, !dx.controlflow.hints !181

; <label>:9560                                    ; preds = %9556
  %9561 = call float @dx.op.unary.f32(i32 23, float %9520)  ; Log(value)
  %9562 = fmul fast float %9561, 0x3FE62E4300000000
  %9563 = fmul fast float %9517, %9562
  %9564 = fsub fast float -0.000000e+00, %9563
  %9565 = fsub fast float 1.000000e+00, %9520
  %9566 = fdiv fast float %9564, %9565
  br label %9567

; <label>:9567                                    ; preds = %9560, %9556
  %9568 = phi float [ %9566, %9560 ], [ %9517, %9556 ]
  %9569 = phi float [ %9562, %9560 ], [ 0.000000e+00, %9556 ]
  %9570 = fcmp fast une float %9521, 1.000000e+00
  br i1 %9570, label %9571, label %9578, !dx.controlflow.hints !181

; <label>:9571                                    ; preds = %9567
  %9572 = call float @dx.op.unary.f32(i32 23, float %9521)  ; Log(value)
  %9573 = fmul fast float %9572, 0x3FE62E4300000000
  %9574 = fmul fast float %9518, %9573
  %9575 = fsub fast float -0.000000e+00, %9574
  %9576 = fsub fast float 1.000000e+00, %9521
  %9577 = fdiv fast float %9575, %9576
  br label %9578

; <label>:9578                                    ; preds = %9571, %9567
  %9579 = phi float [ %9577, %9571 ], [ %9518, %9567 ]
  %9580 = phi float [ %9573, %9571 ], [ 0.000000e+00, %9567 ]
  %9581 = fmul fast float %9544, %9528
  %9582 = fmul fast float %9545, %9528
  %9583 = fmul fast float %9546, %9528
  %9584 = fmul fast float %9547, %9528
  %9585 = fmul fast float %9557, %9526
  %9586 = fmul fast float %9568, %9526
  %9587 = fmul fast float %9579, %9526
  %9588 = fmul fast float %9558, %9526
  %9589 = fmul fast float %9569, %9526
  %9590 = fmul fast float %9580, %9526
  %9591 = fadd fast float %9585, %9581
  %9592 = fadd fast float %9586, %9582
  %9593 = fadd fast float %9587, %9583
  %9594 = fadd fast float %9588, %9584
  %9595 = fadd fast float %9589, %9584
  %9596 = fadd fast float %9590, %9584
  %9597 = fcmp fast une float %9594, 0.000000e+00
  br i1 %9597, label %9598, label %9605, !dx.controlflow.hints !182

; <label>:9598                                    ; preds = %9578
  %9599 = fmul fast float %9594, 0x3FF7154760000000
  %9600 = call float @dx.op.unary.f32(i32 21, float %9599)  ; Exp(value)
  %9601 = fsub fast float 1.000000e+00, %9600
  %9602 = fmul fast float %9591, %9601
  %9603 = fsub fast float -0.000000e+00, %9602
  %9604 = fdiv fast float %9603, %9594
  br label %9605

; <label>:9605                                    ; preds = %9598, %9578
  %9606 = phi float [ %9600, %9598 ], [ 1.000000e+00, %9578 ]
  %9607 = phi float [ %9604, %9598 ], [ %9591, %9578 ]
  %9608 = fcmp fast une float %9595, 0.000000e+00
  br i1 %9608, label %9609, label %9616, !dx.controlflow.hints !182

; <label>:9609                                    ; preds = %9605
  %9610 = fmul fast float %9595, 0x3FF7154760000000
  %9611 = call float @dx.op.unary.f32(i32 21, float %9610)  ; Exp(value)
  %9612 = fsub fast float 1.000000e+00, %9611
  %9613 = fmul fast float %9592, %9612
  %9614 = fsub fast float -0.000000e+00, %9613
  %9615 = fdiv fast float %9614, %9595
  br label %9616

; <label>:9616                                    ; preds = %9609, %9605
  %9617 = phi float [ %9611, %9609 ], [ 1.000000e+00, %9605 ]
  %9618 = phi float [ %9615, %9609 ], [ %9592, %9605 ]
  %9619 = fcmp fast une float %9596, 0.000000e+00
  br i1 %9619, label %9620, label %9627, !dx.controlflow.hints !182

; <label>:9620                                    ; preds = %9616
  %9621 = fmul fast float %9596, 0x3FF7154760000000
  %9622 = call float @dx.op.unary.f32(i32 21, float %9621)  ; Exp(value)
  %9623 = fsub fast float 1.000000e+00, %9622
  %9624 = fmul fast float %9593, %9623
  %9625 = fsub fast float -0.000000e+00, %9624
  %9626 = fdiv fast float %9625, %9596
  br label %9627

; <label>:9627                                    ; preds = %9620, %9616
  %9628 = phi float [ %9622, %9620 ], [ 1.000000e+00, %9616 ]
  %9629 = phi float [ %9626, %9620 ], [ %9593, %9616 ]
  %9630 = fcmp fast ogt float %9526, %9528
  br i1 %9630, label %9631, label %9651

; <label>:9631                                    ; preds = %9627
  %9632 = fsub fast float 1.000000e+00, %9528
  %9633 = fmul fast float %9544, %9632
  %9634 = fmul fast float %9545, %9632
  %9635 = fmul fast float %9546, %9632
  %9636 = fmul fast float %9547, %9632
  %9637 = fcmp fast une float %9636, 0.000000e+00
  br i1 %9637, label %9638, label %9689, !dx.controlflow.hints !183

; <label>:9638                                    ; preds = %9631
  %9639 = fmul fast float %9636, 0x3FF7154760000000
  %9640 = call float @dx.op.unary.f32(i32 21, float %9639)  ; Exp(value)
  %9641 = fsub fast float 1.000000e+00, %9640
  %9642 = fmul fast float %9633, %9641
  %9643 = fsub fast float -0.000000e+00, %9642
  %9644 = fmul fast float %9634, %9641
  %9645 = fsub fast float -0.000000e+00, %9644
  %9646 = fmul fast float %9635, %9641
  %9647 = fsub fast float -0.000000e+00, %9646
  %9648 = fdiv fast float %9643, %9636
  %9649 = fdiv fast float %9645, %9636
  %9650 = fdiv fast float %9647, %9636
  br label %9689

; <label>:9651                                    ; preds = %9627
  %9652 = fsub fast float 1.000000e+00, %9526
  %9653 = fmul fast float %9557, %9652
  %9654 = fmul fast float %9568, %9652
  %9655 = fmul fast float %9579, %9652
  %9656 = fmul fast float %9558, %9652
  %9657 = fmul fast float %9569, %9652
  %9658 = fmul fast float %9580, %9652
  %9659 = fcmp fast une float %9656, 0.000000e+00
  br i1 %9659, label %9660, label %9667, !dx.controlflow.hints !182

; <label>:9660                                    ; preds = %9651
  %9661 = fmul fast float %9656, 0x3FF7154760000000
  %9662 = call float @dx.op.unary.f32(i32 21, float %9661)  ; Exp(value)
  %9663 = fsub fast float 1.000000e+00, %9662
  %9664 = fmul fast float %9653, %9663
  %9665 = fsub fast float -0.000000e+00, %9664
  %9666 = fdiv fast float %9665, %9656
  br label %9667

; <label>:9667                                    ; preds = %9660, %9651
  %9668 = phi float [ %9666, %9660 ], [ %9653, %9651 ]
  %9669 = phi float [ %9662, %9660 ], [ 1.000000e+00, %9651 ]
  %9670 = fcmp fast une float %9657, 0.000000e+00
  br i1 %9670, label %9671, label %9678, !dx.controlflow.hints !182

; <label>:9671                                    ; preds = %9667
  %9672 = fmul fast float %9657, 0x3FF7154760000000
  %9673 = call float @dx.op.unary.f32(i32 21, float %9672)  ; Exp(value)
  %9674 = fsub fast float 1.000000e+00, %9673
  %9675 = fmul fast float %9654, %9674
  %9676 = fsub fast float -0.000000e+00, %9675
  %9677 = fdiv fast float %9676, %9657
  br label %9678

; <label>:9678                                    ; preds = %9671, %9667
  %9679 = phi float [ %9677, %9671 ], [ %9654, %9667 ]
  %9680 = phi float [ %9673, %9671 ], [ 1.000000e+00, %9667 ]
  %9681 = fcmp fast une float %9658, 0.000000e+00
  br i1 %9681, label %9682, label %9689, !dx.controlflow.hints !182

; <label>:9682                                    ; preds = %9678
  %9683 = fmul fast float %9658, 0x3FF7154760000000
  %9684 = call float @dx.op.unary.f32(i32 21, float %9683)  ; Exp(value)
  %9685 = fsub fast float 1.000000e+00, %9684
  %9686 = fmul fast float %9655, %9685
  %9687 = fsub fast float -0.000000e+00, %9686
  %9688 = fdiv fast float %9687, %9658
  br label %9689

; <label>:9689                                    ; preds = %9682, %9678, %9638, %9631
  %9690 = phi float [ %9688, %9682 ], [ %9650, %9638 ], [ %9635, %9631 ], [ %9655, %9678 ]
  %9691 = phi float [ %9679, %9682 ], [ %9649, %9638 ], [ %9634, %9631 ], [ %9679, %9678 ]
  %9692 = phi float [ %9668, %9682 ], [ %9648, %9638 ], [ %9633, %9631 ], [ %9668, %9678 ]
  %9693 = phi float [ %9684, %9682 ], [ %9640, %9638 ], [ 1.000000e+00, %9631 ], [ 1.000000e+00, %9678 ]
  %9694 = phi float [ %9680, %9682 ], [ %9640, %9638 ], [ 1.000000e+00, %9631 ], [ %9680, %9678 ]
  %9695 = phi float [ %9669, %9682 ], [ %9640, %9638 ], [ 1.000000e+00, %9631 ], [ %9669, %9678 ]
  %9696 = fmul fast float %9695, %9607
  %9697 = fmul fast float %9694, %9618
  %9698 = fmul fast float %9693, %9629
  %9699 = fadd fast float %9696, %9692
  %9700 = fadd fast float %9697, %9691
  %9701 = fadd fast float %9698, %9690
  %9702 = fmul fast float %9695, %9606
  %9703 = fmul fast float %9694, %9617
  %9704 = fmul fast float %9693, %9628
  br label %9705

; <label>:9705                                    ; preds = %9689, %9500
  %9706 = phi float [ %9704, %9689 ], [ %9506, %9500 ]
  %9707 = phi float [ %9703, %9689 ], [ %9505, %9500 ]
  %9708 = phi float [ %9702, %9689 ], [ %9504, %9500 ]
  %9709 = phi float [ %9701, %9689 ], [ %9503, %9500 ]
  %9710 = phi float [ %9700, %9689 ], [ %9502, %9500 ]
  %9711 = phi float [ %9699, %9689 ], [ %9501, %9500 ]
  %9712 = fmul fast float %9711, %8657
  %9713 = fmul fast float %9710, %8657
  %9714 = fmul fast float %9709, %8657
  %9715 = fmul fast float %9708, %8948
  %9716 = call float @dx.op.dot3.f32(i32 55, float %9708, float %9707, float %9706, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9717 = call float @dx.op.dot3.f32(i32 55, float %9712, float %9713, float %9714, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9718 = select i1 %279, float %9716, float %9708
  %9719 = select i1 %279, float %9716, float %9707
  %9720 = select i1 %279, float 1.000000e+00, float %9706
  %9721 = select i1 %279, float %9717, float %9712
  %9722 = select i1 %279, float 0.000000e+00, float %9713
  %9723 = select i1 %279, float 0.000000e+00, float %9714
  %9724 = fmul fast float %9718, %8942
  %9725 = fmul fast float %9719, %8943
  %9726 = fmul fast float %9720, %8944
  %9727 = fadd fast float %9724, %9721
  %9728 = fadd fast float %9725, %9722
  %9729 = fadd fast float %9723, %9726
  %9730 = fmul fast float %9718, %8945
  %9731 = fmul fast float %9719, %8946
  %9732 = fmul fast float %9720, %8947
  %9733 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9734 = extractvalue %dx.types.CBufRet.i32 %9733, 0
  %9735 = icmp eq i32 %9734, 0
  br i1 %9735, label %10103, label %9736, !dx.controlflow.hints !184

; <label>:9736                                    ; preds = %9705
  %9737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9738 = extractvalue %dx.types.CBufRet.f32 %9737, 2
  %9739 = extractvalue %dx.types.CBufRet.f32 %9737, 3
  %9740 = fmul fast float %9738, %120
  %9741 = fmul fast float %9739, %121
  %9742 = fmul fast float %9740, 2.000000e+00
  %9743 = fmul fast float %9741, 2.000000e+00
  %9744 = fsub fast float 1.000000e+00, %9742
  %9745 = fsub fast float 1.000000e+00, %9743
  %9746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9747 = extractvalue %dx.types.CBufRet.f32 %9746, 0
  %9748 = extractvalue %dx.types.CBufRet.f32 %9746, 1
  %9749 = extractvalue %dx.types.CBufRet.f32 %9746, 2
  %9750 = fmul fast float %9744, %9747
  %9751 = fmul fast float %9744, %9748
  %9752 = fmul fast float %9744, %9749
  %9753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9754 = extractvalue %dx.types.CBufRet.f32 %9753, 0
  %9755 = extractvalue %dx.types.CBufRet.f32 %9753, 1
  %9756 = extractvalue %dx.types.CBufRet.f32 %9753, 2
  %9757 = fmul fast float %9745, %9754
  %9758 = fmul fast float %9745, %9755
  %9759 = fmul fast float %9745, %9756
  %9760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9761 = extractvalue %dx.types.CBufRet.f32 %9760, 0
  %9762 = extractvalue %dx.types.CBufRet.f32 %9760, 1
  %9763 = extractvalue %dx.types.CBufRet.f32 %9760, 2
  %9764 = fadd fast float %9757, %9761
  %9765 = fadd fast float %9764, %9750
  %9766 = fadd fast float %9758, %9762
  %9767 = fadd fast float %9766, %9751
  %9768 = fadd fast float %9759, %9763
  %9769 = fadd fast float %9768, %9752
  %9770 = fmul fast float %9765, %8941
  %9771 = fmul fast float %9767, %8941
  %9772 = fmul fast float %9769, %8941
  %9773 = fmul fast float %9770, %9770
  %9774 = fmul fast float %9771, %9771
  %9775 = fadd fast float %9773, %9774
  %9776 = fmul fast float %9772, %9772
  %9777 = fadd fast float %9775, %9776
  %9778 = call float @dx.op.unary.f32(i32 24, float %9777)  ; Sqrt(value)
  %9779 = extractvalue %dx.types.CBufRet.f32 %8668, 0
  %9780 = fsub fast float %9778, %9779
  %9781 = extractvalue %dx.types.CBufRet.f32 %8668, 2
  %9782 = fmul fast float %9780, %9781
  %9783 = call float @dx.op.unary.f32(i32 7, float %9782)  ; Saturate(value)
  %9784 = fadd fast float %9783, -5.000000e-01
  %9785 = fmul fast float %9784, 2.000000e+00
  %9786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9787 = extractvalue %dx.types.CBufRet.f32 %9786, 2
  %9788 = call float @dx.op.binary.f32(i32 36, float %9787, float %9785)  ; FMin(a,b)
  %9789 = fsub fast float -0.000000e+00, %9787
  %9790 = fcmp fast ogt float %9788, %9789
  br i1 %9790, label %9791, label %10103, !dx.controlflow.hints !185

; <label>:9791                                    ; preds = %9736
  %9792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9793 = extractvalue %dx.types.CBufRet.f32 %9792, 3
  %9794 = fcmp fast ogt float %9793, 0.000000e+00
  br i1 %9794, label %9795, label %9870, !dx.controlflow.hints !186

; <label>:9795                                    ; preds = %9791
  %9796 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %9797 = extractvalue %dx.types.Dimensions %9796, 0
  %9798 = sitofp i32 %9797 to float
  %9799 = extractvalue %dx.types.Dimensions %9796, 1
  %9800 = sitofp i32 %9799 to float
  %9801 = fmul fast float %9740, %9798
  %9802 = fmul fast float %9741, %9800
  %9803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9804 = extractvalue %dx.types.CBufRet.f32 %9803, 1
  %9805 = fsub fast float -0.000000e+00, %9804
  %9806 = fptoui float %9805 to i32
  %9807 = fptoui float %9801 to i32
  %9808 = fptoui float %9802 to i32
  %9809 = and i32 %9806, 31
  %9810 = lshr i32 %9807, %9809
  %9811 = lshr i32 %9808, %9809
  %9812 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %9806, i32 %9810, i32 %9811, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9813 = extractvalue %dx.types.ResRet.f32 %9812, 0
  %9814 = fcmp fast olt float %9813, -1.000000e+00
  %9815 = fcmp fast ogt float %9813, -1.000000e+00
  %9816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9817 = extractvalue %dx.types.CBufRet.f32 %9816, 1
  %9818 = select i1 %9815, float %9817, float 1.000000e+00
  %9819 = fadd fast float %9813, 1.000000e+00
  %9820 = fmul fast float %9818, %9819
  %9821 = call float @dx.op.unary.f32(i32 6, float %9820)  ; FAbs(value)
  %9822 = extractvalue %dx.types.CBufRet.f32 %9816, 3
  %9823 = fcmp fast oge float %9821, %9822
  %9824 = select i1 %9823, float 0x4197782600000000, float %9821
  %9825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9826 = extractvalue %dx.types.CBufRet.f32 %9825, 0
  %9827 = extractvalue %dx.types.CBufRet.f32 %9825, 1
  %9828 = extractvalue %dx.types.CBufRet.f32 %9825, 2
  %9829 = select i1 %9814, float %9826, float %9747
  %9830 = select i1 %9814, float %9827, float %9748
  %9831 = select i1 %9814, float %9828, float %9749
  %9832 = fmul fast float %9829, %9744
  %9833 = fmul fast float %9830, %9744
  %9834 = fmul fast float %9831, %9744
  %9835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9836 = extractvalue %dx.types.CBufRet.f32 %9835, 0
  %9837 = extractvalue %dx.types.CBufRet.f32 %9835, 1
  %9838 = extractvalue %dx.types.CBufRet.f32 %9835, 2
  %9839 = select i1 %9814, float %9836, float %9754
  %9840 = select i1 %9814, float %9837, float %9755
  %9841 = select i1 %9814, float %9838, float %9756
  %9842 = fmul fast float %9839, %9745
  %9843 = fmul fast float %9840, %9745
  %9844 = fmul fast float %9841, %9745
  %9845 = fadd fast float %9842, %9832
  %9846 = fadd fast float %9843, %9833
  %9847 = fadd fast float %9844, %9834
  %9848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9849 = extractvalue %dx.types.CBufRet.f32 %9848, 0
  %9850 = extractvalue %dx.types.CBufRet.f32 %9848, 1
  %9851 = extractvalue %dx.types.CBufRet.f32 %9848, 2
  %9852 = select i1 %9814, float %9849, float %9761
  %9853 = select i1 %9814, float %9850, float %9762
  %9854 = select i1 %9814, float %9851, float %9763
  %9855 = fadd fast float %9845, %9852
  %9856 = fadd fast float %9846, %9853
  %9857 = fadd fast float %9847, %9854
  %9858 = fmul fast float %9855, %9824
  %9859 = fmul fast float %9856, %9824
  %9860 = fmul fast float %9857, %9824
  %9861 = fmul fast float %9858, %9858
  %9862 = fmul fast float %9859, %9859
  %9863 = fadd fast float %9861, %9862
  %9864 = fmul fast float %9860, %9860
  %9865 = fadd fast float %9863, %9864
  %9866 = call float @dx.op.unary.f32(i32 24, float %9865)  ; Sqrt(value)
  %9867 = fsub fast float %9866, %9779
  %9868 = fmul fast float %9867, %9781
  %9869 = call float @dx.op.unary.f32(i32 7, float %9868)  ; Saturate(value)
  br label %9870

; <label>:9870                                    ; preds = %9795, %9791
  %9871 = phi float [ %9869, %9795 ], [ 1.000000e+00, %9791 ]
  %9872 = fmul fast float %9788, 5.000000e-01
  %9873 = fadd fast float %9872, 5.000000e-01
  %9874 = call float @dx.op.unary.f32(i32 22, float %9873)  ; Frc(value)
  %9875 = call float @dx.op.unary.f32(i32 27, float %9874)  ; Round_ni(value)
  %9876 = call float @dx.op.unary.f32(i32 22, float %9874)  ; Frc(value)
  %9877 = fmul fast float %9876, 2.000000e+00
  %9878 = fadd fast float %9877, -1.000000e+00
  %9879 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %56, float %9740, float %9741, float %9875, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9880 = extractvalue %dx.types.ResRet.f32 %9879, 0
  %9881 = extractvalue %dx.types.ResRet.f32 %9879, 1
  %9882 = extractvalue %dx.types.ResRet.f32 %9879, 2
  %9883 = extractvalue %dx.types.ResRet.f32 %9879, 3
  %9884 = fadd fast float %9880, -5.000000e-01
  %9885 = fadd fast float %9882, -5.000000e-01
  %9886 = fmul fast float %9884, 0xBFD5555560000000
  %9887 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9885, float %9886)  ; FMad(a,b,c)
  %9888 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9881, float 0.000000e+00)  ; FMad(a,b,c)
  %9889 = fadd fast float %9888, %9883
  %9890 = fmul fast float %9884, -7.500000e-01
  %9891 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9885, float %9890)  ; FMad(a,b,c)
  %9892 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9881, float 0.000000e+00)  ; FMad(a,b,c)
  %9893 = fadd fast float %9892, %9883
  %9894 = call float @dx.op.binary.f32(i32 35, float %9887, float -1.000000e+00)  ; FMax(a,b)
  %9895 = call float @dx.op.binary.f32(i32 35, float %9889, float -1.000000e+00)  ; FMax(a,b)
  %9896 = call float @dx.op.binary.f32(i32 35, float %9891, float -1.000000e+00)  ; FMax(a,b)
  %9897 = call float @dx.op.binary.f32(i32 35, float %9893, float -1.000000e+00)  ; FMax(a,b)
  %9898 = call float @dx.op.binary.f32(i32 36, float %9894, float 1.000000e+00)  ; FMin(a,b)
  %9899 = call float @dx.op.binary.f32(i32 36, float %9895, float 1.000000e+00)  ; FMin(a,b)
  %9900 = call float @dx.op.binary.f32(i32 36, float %9896, float 1.000000e+00)  ; FMin(a,b)
  %9901 = call float @dx.op.binary.f32(i32 36, float %9897, float 1.000000e+00)  ; FMin(a,b)
  %9902 = fcmp fast olt float %9898, 0x3FEFFF8020000000
  br i1 %9902, label %9903, label %10018, !dx.controlflow.hints !187

; <label>:9903                                    ; preds = %9870
  %9904 = extractvalue %dx.types.CBufRet.f32 %9786, 3
  %9905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9906 = extractvalue %dx.types.CBufRet.f32 %9905, 0
  %9907 = extractvalue %dx.types.CBufRet.f32 %9905, 1
  %9908 = extractvalue %dx.types.CBufRet.f32 %9905, 2
  %9909 = extractvalue %dx.types.CBufRet.f32 %9905, 3
  %9910 = fsub fast float %9906, %9898
  %9911 = fsub fast float %9907, %9899
  %9912 = fsub fast float %9908, %9900
  %9913 = fsub fast float %9909, %9901
  %9914 = fmul fast float %9910, %9904
  %9915 = fmul fast float %9911, %9904
  %9916 = fmul fast float %9912, %9904
  %9917 = fmul fast float %9913, %9904
  %9918 = fadd fast float %9914, %9898
  %9919 = fadd fast float %9915, %9899
  %9920 = fsub fast float -0.000000e+00, %9919
  %9921 = fadd fast float %9916, %9900
  %9922 = fadd fast float %9917, %9901
  %9923 = fmul fast float %9918, %9918
  %9924 = fsub fast float %9919, %9923
  %9925 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9924)  ; FMax(a,b)
  %9926 = fdiv fast float 1.000000e+00, %9925
  %9927 = fmul fast float %9919, %9918
  %9928 = fsub fast float %9921, %9927
  %9929 = fsub fast float %9878, %9918
  %9930 = fmul fast float %9878, %9878
  %9931 = fsub fast float %9930, %9919
  %9932 = fmul fast float %9929, %9926
  %9933 = fmul fast float %9932, %9928
  %9934 = fsub fast float %9931, %9933
  %9935 = fmul fast float %9919, %9919
  %9936 = fsub fast float %9922, %9935
  %9937 = fmul fast float %9928, %9928
  %9938 = fmul fast float %9937, %9926
  %9939 = fsub fast float %9936, %9938
  %9940 = fdiv fast float %9934, %9939
  %9941 = fmul fast float %9928, %9940
  %9942 = fsub fast float %9929, %9941
  %9943 = fmul fast float %9942, %9926
  %9944 = fmul fast float %9943, %9918
  %9945 = fsub fast float 1.000000e+00, %9944
  %9946 = fmul fast float %9919, %9940
  %9947 = fsub fast float %9945, %9946
  %9948 = fmul fast float %9943, %9943
  %9949 = fmul fast float %9940, 4.000000e+00
  %9950 = fmul fast float %9949, %9947
  %9951 = fsub fast float %9948, %9950
  %9952 = call float @dx.op.unary.f32(i32 24, float %9951)  ; Sqrt(value)
  %9953 = fcmp fast oge float %9943, 0.000000e+00
  %9954 = fsub fast float -0.000000e+00, %9952
  %9955 = select i1 %9953, float %9954, float %9952
  %9956 = fsub fast float %9955, %9943
  %9957 = fdiv fast float %9956, %9940
  %9958 = fdiv fast float %9947, %9956
  %9959 = fmul fast float %9957, 5.000000e-01
  %9960 = fmul fast float %9958, 2.000000e+00
  %9961 = select i1 %9953, float %9959, float %9960
  %9962 = select i1 %9953, float %9960, float %9959
  %9963 = call float @dx.op.binary.f32(i32 35, float %9961, float %9962)  ; FMax(a,b)
  %9964 = call float @dx.op.binary.f32(i32 36, float %9961, float %9962)  ; FMin(a,b)
  %9965 = fcmp fast ogt float %9878, %9964
  br i1 %9965, label %9966, label %9976

; <label>:9966                                    ; preds = %9903
  %9967 = fsub fast float %9878, %9964
  %9968 = fsub fast float %9963, %9964
  %9969 = fmul fast float %9967, %9968
  %9970 = fmul fast float %9963, %9878
  %9971 = fadd fast float %9963, %9878
  %9972 = fmul fast float %9971, %9918
  %9973 = fadd fast float %9970, %9919
  %9974 = fsub fast float %9973, %9972
  %9975 = fdiv fast float %9974, %9969
  br label %9976

; <label>:9976                                    ; preds = %9966, %9903
  %9977 = phi float [ %9975, %9966 ], [ 0.000000e+00, %9903 ]
  %9978 = fcmp fast ogt float %9878, %9963
  %9979 = fsub fast float %9878, %9963
  br i1 %9978, label %9980, label %9990

; <label>:9980                                    ; preds = %9976
  %9981 = fsub fast float %9963, %9964
  %9982 = fmul fast float %9981, %9979
  %9983 = fmul fast float %9964, %9878
  %9984 = fadd fast float %9964, %9878
  %9985 = fmul fast float %9984, %9918
  %9986 = fsub fast float %9920, %9983
  %9987 = fadd fast float %9986, %9985
  %9988 = fdiv fast float %9987, %9982
  %9989 = fadd fast float %9988, %9977
  br label %9990

; <label>:9990                                    ; preds = %9980, %9976
  %9991 = phi float [ %9989, %9980 ], [ %9977, %9976 ]
  %9992 = fsub fast float %9878, %9964
  %9993 = fmul fast float %9992, %9979
  %9994 = fmul fast float %9964, %9963
  %9995 = fadd fast float %9964, %9963
  %9996 = fmul fast float %9995, %9918
  %9997 = fadd fast float %9994, %9919
  %9998 = fsub fast float %9997, %9996
  %9999 = fdiv fast float %9998, %9993
  %10000 = call float @dx.op.unary.f32(i32 7, float %9991)  ; Saturate(value)
  %10001 = fcmp fast oeq float %8669, 0.000000e+00
  %10002 = extractvalue %dx.types.CBufRet.f32 %9786, 0
  %10003 = fcmp fast oeq float %10002, 0.000000e+00
  %10004 = or i1 %10001, %10003
  %10005 = fmul fast float %10002, 2.000000e+00
  %10006 = fadd fast float %9787, %9788
  %10007 = fdiv fast float %10006, %10005
  %10008 = call float @dx.op.unary.f32(i32 7, float %10007)  ; Saturate(value)
  %10009 = fmul fast float %10008, 2.000000e+00
  %10010 = fsub fast float 3.000000e+00, %10009
  %10011 = fmul fast float %10008, %10008
  %10012 = fmul fast float %10011, %10010
  %10013 = select i1 %10004, float 1.000000e+00, float %10012
  %10014 = fmul fast float %9999, %8669
  %10015 = fadd fast float %10000, %10014
  %10016 = call float @dx.op.unary.f32(i32 7, float %10015)  ; Saturate(value)
  %10017 = fmul fast float %10013, %10016
  br label %10018

; <label>:10018                                   ; preds = %9990, %9870
  %10019 = phi float [ %10017, %9990 ], [ 0.000000e+00, %9870 ]
  %10020 = fsub fast float 1.000000e+00, %10019
  %10021 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %56, float %9740, float %9741, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10022 = extractvalue %dx.types.ResRet.f32 %10021, 0
  %10023 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %10024 = extractvalue %dx.types.CBufRet.i32 %10023, 2
  %10025 = icmp eq i32 %10024, 0
  br i1 %10025, label %10031, label %10026

; <label>:10026                                   ; preds = %10018
  %10027 = call float @dx.op.unary.f32(i32 7, float %10019)  ; Saturate(value)
  %10028 = fadd fast float %10022, -1.000000e+00
  %10029 = fmul fast float %10027, %10028
  %10030 = fadd fast float %10029, 1.000000e+00
  br label %10031

; <label>:10031                                   ; preds = %10026, %10018
  %10032 = phi float [ %10030, %10026 ], [ %10020, %10018 ]
  br i1 %9794, label %10033, label %10051

; <label>:10033                                   ; preds = %10031
  %10034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10035 = extractvalue %dx.types.CBufRet.f32 %10034, 1
  %10036 = fsub fast float %9871, %10035
  %10037 = call float @dx.op.unary.f32(i32 7, float %10036)  ; Saturate(value)
  %10038 = fsub fast float %9871, %9793
  %10039 = call float @dx.op.unary.f32(i32 7, float %10038)  ; Saturate(value)
  %10040 = fsub fast float %10037, %10039
  %10041 = fsub fast float %9873, %10039
  %10042 = fdiv fast float %10041, %10040
  %10043 = call float @dx.op.unary.f32(i32 7, float %10042)  ; Saturate(value)
  %10044 = fmul fast float %10043, 2.000000e+00
  %10045 = fsub fast float 3.000000e+00, %10044
  %10046 = fsub fast float %10022, %10032
  %10047 = fmul fast float %10043, %10043
  %10048 = fmul fast float %10047, %10046
  %10049 = fmul fast float %10048, %10045
  %10050 = fadd fast float %10049, %10032
  br label %10051

; <label>:10051                                   ; preds = %10033, %10031
  %10052 = phi float [ %10050, %10033 ], [ %10032, %10031 ]
  %10053 = call float @dx.op.binary.f32(i32 35, float %10022, float %10052)  ; FMax(a,b)
  %10054 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %10055 = extractvalue %dx.types.CBufRet.i32 %10054, 2
  %10056 = and i32 %10055, 1
  %10057 = icmp eq i32 %10056, 0
  %10058 = fcmp fast une float %10053, 1.000000e+00
  %10059 = and i1 %10058, %10057
  br i1 %10059, label %10060, label %10079

; <label>:10060                                   ; preds = %10051
  %10061 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %56, float %9740, float %9741, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10062 = extractvalue %dx.types.ResRet.f32 %10061, 0
  %10063 = extractvalue %dx.types.ResRet.f32 %10061, 1
  %10064 = extractvalue %dx.types.ResRet.f32 %10061, 2
  %10065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10066 = extractvalue %dx.types.CBufRet.f32 %10065, 1
  %10067 = fmul fast float %10066, %10062
  %10068 = fmul fast float %10066, %10063
  %10069 = fmul fast float %10066, %10064
  %10070 = fcmp fast ogt float %10022, 0x3FEFFF2E40000000
  %10071 = fsub fast float 1.000000e+00, %10053
  %10072 = fsub fast float 1.000000e+00, %10022
  %10073 = fdiv fast float %10071, %10072
  %10074 = call float @dx.op.unary.f32(i32 7, float %10073)  ; Saturate(value)
  %10075 = select i1 %10070, float 0.000000e+00, float %10074
  %10076 = fmul fast float %10067, %10075
  %10077 = fmul fast float %10068, %10075
  %10078 = fmul fast float %10069, %10075
  br label %10079

; <label>:10079                                   ; preds = %10060, %10051
  %10080 = phi float [ 0.000000e+00, %10051 ], [ %10076, %10060 ]
  %10081 = phi float [ 0.000000e+00, %10051 ], [ %10077, %10060 ]
  %10082 = phi float [ 0.000000e+00, %10051 ], [ %10078, %10060 ]
  %10083 = fmul fast float %10080, %8657
  %10084 = fmul fast float %10081, %8657
  %10085 = fmul fast float %10082, %8657
  %10086 = fmul fast float %10053, %9715
  %10087 = call float @dx.op.dot3.f32(i32 55, float %10053, float %10053, float %10053, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10088 = call float @dx.op.dot3.f32(i32 55, float %10083, float %10084, float %10085, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10089 = select i1 %279, float %10087, float %10053
  %10090 = select i1 %279, float 1.000000e+00, float %10053
  %10091 = select i1 %279, float %10088, float %10083
  %10092 = select i1 %279, float 0.000000e+00, float %10084
  %10093 = select i1 %279, float 0.000000e+00, float %10085
  %10094 = fmul fast float %10089, %9727
  %10095 = fmul fast float %10089, %9728
  %10096 = fmul fast float %10090, %9729
  %10097 = fadd fast float %10094, %10091
  %10098 = fadd fast float %10095, %10092
  %10099 = fadd fast float %10093, %10096
  %10100 = fmul fast float %10089, %9730
  %10101 = fmul fast float %10089, %9731
  %10102 = fmul fast float %10090, %9732
  br label %10103

; <label>:10103                                   ; preds = %10079, %9736, %9705, %8937
  %10104 = phi float [ %8942, %8937 ], [ %9727, %9705 ], [ %10097, %10079 ], [ %9727, %9736 ]
  %10105 = phi float [ %8943, %8937 ], [ %9728, %9705 ], [ %10098, %10079 ], [ %9728, %9736 ]
  %10106 = phi float [ %8944, %8937 ], [ %9729, %9705 ], [ %10099, %10079 ], [ %9729, %9736 ]
  %10107 = phi float [ %8945, %8937 ], [ %9730, %9705 ], [ %10100, %10079 ], [ %9730, %9736 ]
  %10108 = phi float [ %8946, %8937 ], [ %9731, %9705 ], [ %10101, %10079 ], [ %9731, %9736 ]
  %10109 = phi float [ %8947, %8937 ], [ %9732, %9705 ], [ %10102, %10079 ], [ %9732, %9736 ]
  %10110 = phi float [ %8948, %8937 ], [ %9715, %9705 ], [ %10086, %10079 ], [ %9715, %9736 ]
  %10111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10112 = extractvalue %dx.types.CBufRet.f32 %10111, 2
  %10113 = extractvalue %dx.types.CBufRet.f32 %10111, 3
  %10114 = fmul fast float %10112, %120
  %10115 = fmul fast float %10113, %121
  %10116 = call float @dx.op.unary.f32(i32 7, float %10114)  ; Saturate(value)
  %10117 = call float @dx.op.unary.f32(i32 7, float %10115)  ; Saturate(value)
  %10118 = select i1 %8679, i32 2, i32 0
  %10119 = or i32 %10118, 1
  %10120 = uitofp i32 %10119 to float
  %10121 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %56, float %10116, float %10117, float %10120, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10122 = extractvalue %dx.types.ResRet.f32 %10121, 0
  %10123 = extractvalue %dx.types.ResRet.f32 %10121, 1
  %10124 = extractvalue %dx.types.ResRet.f32 %10121, 2
  %10125 = extractvalue %dx.types.ResRet.f32 %10121, 3
  %10126 = add nuw nsw i32 %10118, 2
  %10127 = uitofp i32 %10126 to float
  %10128 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %56, float %10116, float %10117, float %10127, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10129 = extractvalue %dx.types.ResRet.f32 %10128, 0
  %10130 = extractvalue %dx.types.ResRet.f32 %10128, 1
  %10131 = extractvalue %dx.types.ResRet.f32 %10128, 2
  %10132 = extractvalue %dx.types.ResRet.f32 %10128, 3
  %10133 = call float @dx.op.binary.f32(i32 35, float %10123, float %10124)  ; FMax(a,b)
  %10134 = call float @dx.op.binary.f32(i32 35, float %10122, float %10133)  ; FMax(a,b)
  %10135 = call float @dx.op.binary.f32(i32 35, float %10134, float %10125)  ; FMax(a,b)
  %10136 = call float @dx.op.binary.f32(i32 36, float %10130, float %10131)  ; FMin(a,b)
  %10137 = call float @dx.op.binary.f32(i32 36, float %10129, float %10136)  ; FMin(a,b)
  %10138 = call float @dx.op.binary.f32(i32 36, float %10137, float %10132)  ; FMin(a,b)
  %10139 = fmul fast float %10135, 2.550000e+02
  %10140 = fadd fast float %10139, 0x3F70101020000000
  %10141 = fptoui float %10140 to i32
  %10142 = fmul fast float %10138, 2.550000e+02
  %10143 = fadd fast float %10142, 0x3F70101020000000
  %10144 = fptoui float %10143 to i32
  %10145 = icmp ult i32 %10141, %10144
  br i1 %10145, label %10146, label %10315

; <label>:10146                                   ; preds = %10103
  %10147 = fcmp fast ogt float %106, 9.843750e-01
  %10148 = fadd fast float %8941, -4.000000e+00
  %10149 = select i1 %10147, float -4.000000e+00, float %10148
  %10150 = call float @dx.op.binary.f32(i32 35, float %10149, float 0.000000e+00)  ; FMax(a,b)
  %10151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10152 = extractvalue %dx.types.CBufRet.f32 %10151, 0
  %10153 = fadd fast float %10152, %10150
  %10154 = extractvalue %dx.types.CBufRet.f32 %10151, 2
  %10155 = fmul fast float %10153, %10154
  %10156 = call float @dx.op.unary.f32(i32 23, float %10155)  ; Log(value)
  %10157 = extractvalue %dx.types.CBufRet.f32 %10151, 3
  %10158 = fmul fast float %10157, %10156
  %10159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10160 = extractvalue %dx.types.CBufRet.f32 %10159, 2
  %10161 = fmul fast float %10158, %10160
  %10162 = call float @dx.op.unary.f32(i32 7, float %10161)  ; Saturate(value)
  %10163 = uitofp i32 %10141 to float
  %10164 = uitofp i32 %10144 to float
  %10165 = fadd fast float %10163, 5.000000e-01
  %10166 = fadd fast float %10164, 5.000000e-01
  %10167 = fmul fast float %10160, %10165
  %10168 = fmul fast float %10160, %10166
  %10169 = fadd fast float %10167, 0x3F0FFB4800000000
  %10170 = fadd fast float %10168, 0xBF0FFB4800000000
  %10171 = call float @dx.op.binary.f32(i32 35, float %10162, float %10169)  ; FMax(a,b)
  %10172 = call float @dx.op.binary.f32(i32 36, float %10171, float %10170)  ; FMin(a,b)
  %10173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10174 = extractvalue %dx.types.CBufRet.f32 %10173, 1
  %10175 = extractvalue %dx.types.CBufRet.f32 %10173, 2
  %10176 = extractvalue %dx.types.CBufRet.f32 %10173, 0
  %10177 = select i1 %8679, float %10176, float 0.000000e+00
  %10178 = fmul fast float %10174, %10172
  %10179 = fadd fast float %10177, %10178
  %10180 = fadd fast float %10177, %10175
  %10181 = fsub fast float %10174, %10175
  %10182 = fadd fast float %10181, %10177
  %10183 = call float @dx.op.binary.f32(i32 35, float %10179, float %10180)  ; FMax(a,b)
  %10184 = call float @dx.op.binary.f32(i32 36, float %10183, float %10182)  ; FMin(a,b)
  %10185 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %54, float %10116, float %10117, float %10184, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10186 = extractvalue %dx.types.ResRet.f32 %10185, 0
  %10187 = extractvalue %dx.types.ResRet.f32 %10185, 1
  %10188 = extractvalue %dx.types.ResRet.f32 %10185, 2
  %10189 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10190 = extractvalue %dx.types.CBufRet.i32 %10189, 0
  %10191 = extractvalue %dx.types.CBufRet.i32 %10189, 1
  %10192 = uitofp i32 %10190 to float
  %10193 = uitofp i32 %10191 to float
  %10194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10195 = extractvalue %dx.types.CBufRet.f32 %10194, 0
  %10196 = extractvalue %dx.types.CBufRet.f32 %10194, 1
  %10197 = fmul fast float %10192, %10116
  %10198 = fmul fast float %10193, %10117
  %10199 = fadd fast float %10197, -5.000000e-01
  %10200 = fadd fast float %10198, -5.000000e-01
  %10201 = call float @dx.op.unary.f32(i32 22, float %10199)  ; Frc(value)
  %10202 = call float @dx.op.unary.f32(i32 22, float %10200)  ; Frc(value)
  %10203 = fmul fast float %10201, %10201
  %10204 = fmul fast float %10203, %10201
  %10205 = fsub fast float 3.000000e+00, %10201
  %10206 = fmul fast float %10203, %10205
  %10207 = fmul fast float %10201, 3.000000e+00
  %10208 = fmul fast float %10204, 3.000000e+00
  %10209 = fmul fast float %10203, 6.000000e+00
  %10210 = fsub fast float %10208, %10209
  %10211 = fadd fast float %10210, 4.000000e+00
  %10212 = fmul fast float %10211, 0x3FC5555560000000
  %10213 = fmul fast float %10204, -3.000000e+00
  %10214 = fadd fast float %10203, %10201
  %10215 = fmul fast float %10214, 3.000000e+00
  %10216 = fadd fast float %10213, 1.000000e+00
  %10217 = fadd fast float %10216, %10215
  %10218 = fmul fast float %10204, 0x3FC5555560000000
  %10219 = fmul fast float %10202, %10202
  %10220 = fmul fast float %10219, %10202
  %10221 = fsub fast float 3.000000e+00, %10202
  %10222 = fmul fast float %10219, %10221
  %10223 = fmul fast float %10202, 3.000000e+00
  %10224 = fmul fast float %10220, 3.000000e+00
  %10225 = fmul fast float %10219, 6.000000e+00
  %10226 = fsub fast float %10224, %10225
  %10227 = fadd fast float %10226, 4.000000e+00
  %10228 = fmul fast float %10227, 0x3FC5555560000000
  %10229 = fmul fast float %10220, -3.000000e+00
  %10230 = fadd fast float %10219, %10202
  %10231 = fmul fast float %10230, 3.000000e+00
  %10232 = fadd fast float %10229, 1.000000e+00
  %10233 = fadd fast float %10232, %10231
  %10234 = fmul fast float %10220, 0x3FC5555560000000
  %10235 = fadd fast float %10201, 1.000000e+00
  %10236 = fsub fast float 1.000000e+00, %10207
  %10237 = fadd fast float %10236, %10206
  %10238 = fadd fast float %10237, %10211
  %10239 = fmul fast float %10238, 0x3FC5555560000000
  %10240 = fdiv fast float %10212, %10239
  %10241 = fsub fast float %10235, %10240
  %10242 = fsub fast float 1.000000e+00, %10201
  %10243 = fadd fast float %10217, %10204
  %10244 = fmul fast float %10243, 0x3FC5555560000000
  %10245 = fdiv fast float %10218, %10244
  %10246 = fadd fast float %10242, %10245
  %10247 = fadd fast float %10202, 1.000000e+00
  %10248 = fsub fast float 1.000000e+00, %10223
  %10249 = fadd fast float %10248, %10222
  %10250 = fadd fast float %10249, %10227
  %10251 = fmul fast float %10250, 0x3FC5555560000000
  %10252 = fdiv fast float %10228, %10251
  %10253 = fsub fast float %10247, %10252
  %10254 = fsub fast float 1.000000e+00, %10202
  %10255 = fadd fast float %10233, %10220
  %10256 = fmul fast float %10255, 0x3FC5555560000000
  %10257 = fdiv fast float %10234, %10256
  %10258 = fadd fast float %10257, %10254
  %10259 = fmul fast float %10241, %10195
  %10260 = fsub fast float %10116, %10259
  %10261 = fmul fast float %10246, %10195
  %10262 = fadd fast float %10261, %10116
  %10263 = fmul fast float %10258, %10196
  %10264 = fadd fast float %10263, %10117
  %10265 = fmul fast float %10253, %10196
  %10266 = fsub fast float %10117, %10265
  %10267 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %10260, float %10266, float %10184, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10268 = extractvalue %dx.types.ResRet.f32 %10267, 0
  %10269 = extractvalue %dx.types.ResRet.f32 %10267, 1
  %10270 = extractvalue %dx.types.ResRet.f32 %10267, 2
  %10271 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %10262, float %10266, float %10184, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10272 = extractvalue %dx.types.ResRet.f32 %10271, 0
  %10273 = extractvalue %dx.types.ResRet.f32 %10271, 1
  %10274 = extractvalue %dx.types.ResRet.f32 %10271, 2
  %10275 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %10260, float %10264, float %10184, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10276 = extractvalue %dx.types.ResRet.f32 %10275, 0
  %10277 = extractvalue %dx.types.ResRet.f32 %10275, 1
  %10278 = extractvalue %dx.types.ResRet.f32 %10275, 2
  %10279 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %10262, float %10264, float %10184, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10280 = extractvalue %dx.types.ResRet.f32 %10279, 0
  %10281 = extractvalue %dx.types.ResRet.f32 %10279, 1
  %10282 = extractvalue %dx.types.ResRet.f32 %10279, 2
  %10283 = fsub fast float %10276, %10268
  %10284 = fsub fast float %10277, %10269
  %10285 = fsub fast float %10278, %10270
  %10286 = fmul fast float %10283, %10256
  %10287 = fmul fast float %10284, %10256
  %10288 = fmul fast float %10285, %10256
  %10289 = fadd fast float %10286, %10268
  %10290 = fadd fast float %10287, %10269
  %10291 = fadd fast float %10288, %10270
  %10292 = fsub fast float %10280, %10272
  %10293 = fsub fast float %10281, %10273
  %10294 = fsub fast float %10282, %10274
  %10295 = fmul fast float %10292, %10256
  %10296 = fmul fast float %10293, %10256
  %10297 = fmul fast float %10294, %10256
  %10298 = fsub fast float %10272, %10289
  %10299 = fadd fast float %10298, %10295
  %10300 = fsub fast float %10273, %10290
  %10301 = fadd fast float %10300, %10296
  %10302 = fsub fast float %10274, %10291
  %10303 = fadd fast float %10302, %10297
  %10304 = fmul fast float %10299, %10244
  %10305 = fmul fast float %10301, %10244
  %10306 = fmul fast float %10303, %10244
  %10307 = fadd fast float %10304, %10289
  %10308 = fadd fast float %10305, %10290
  %10309 = fadd fast float %10306, %10291
  %10310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10311 = extractvalue %dx.types.CBufRet.f32 %10310, 1
  %10312 = fmul fast float %10307, %10311
  %10313 = fmul fast float %10308, %10311
  %10314 = fmul fast float %10309, %10311
  br label %10315

; <label>:10315                                   ; preds = %10146, %10103
  %10316 = phi float [ %10186, %10146 ], [ 1.000000e+00, %10103 ]
  %10317 = phi float [ %10187, %10146 ], [ 1.000000e+00, %10103 ]
  %10318 = phi float [ %10188, %10146 ], [ 1.000000e+00, %10103 ]
  %10319 = phi float [ %10312, %10146 ], [ 0.000000e+00, %10103 ]
  %10320 = phi float [ %10313, %10146 ], [ 0.000000e+00, %10103 ]
  %10321 = phi float [ %10314, %10146 ], [ 0.000000e+00, %10103 ]
  %10322 = fmul fast float %10319, %8657
  %10323 = fmul fast float %10320, %8657
  %10324 = fmul fast float %10321, %8657
  %10325 = fmul fast float %10316, %10110
  %10326 = call float @dx.op.dot3.f32(i32 55, float %10316, float %10317, float %10318, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10327 = call float @dx.op.dot3.f32(i32 55, float %10322, float %10323, float %10324, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10328 = select i1 %279, float %10326, float %10316
  %10329 = select i1 %279, float %10326, float %10317
  %10330 = select i1 %279, float 1.000000e+00, float %10318
  %10331 = select i1 %279, float %10327, float %10322
  %10332 = select i1 %279, float 0.000000e+00, float %10323
  %10333 = select i1 %279, float 0.000000e+00, float %10324
  %10334 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10335 = extractvalue %dx.types.CBufRet.i32 %10334, 3
  %10336 = and i32 %10335, 3
  %10337 = icmp ne i32 %10336, 0
  %10338 = and i32 %10335, 4
  %10339 = icmp ne i32 %10338, 0
  %10340 = and i1 %10337, %10339
  %10341 = and i1 %279, %10340
  br i1 %10341, label %10342, label %10348

; <label>:10342                                   ; preds = %10315
  %10343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10344 = extractvalue %dx.types.CBufRet.f32 %10343, 1
  %10345 = fadd fast float %10325, -1.000000e+00
  %10346 = fmul fast float %10344, %10345
  %10347 = fadd fast float %10346, 1.000000e+00
  br label %10348

; <label>:10348                                   ; preds = %10342, %10315
  %10349 = phi float [ %10347, %10342 ], [ %10325, %10315 ]
  %10350 = fadd fast float %10107, %10104
  %10351 = fmul fast float %10328, %10350
  %10352 = fadd fast float %10351, %10331
  %10353 = fadd fast float %10108, %10105
  %10354 = fmul fast float %10329, %10353
  %10355 = fadd fast float %10354, %10332
  %10356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10357 = extractvalue %dx.types.CBufRet.f32 %10356, 0
  br i1 %279, label %10358, label %10382

; <label>:10358                                   ; preds = %10348
  %10359 = fadd fast float %10352, %10355
  %10360 = fmul fast float %10357, %10359
  %10361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10362 = extractvalue %dx.types.CBufRet.f32 %10361, 3
  %10363 = extractvalue %dx.types.CBufRet.f32 %8661, 1
  %10364 = fsub fast float %8666, %8660
  %10365 = fadd fast float %10364, %8667
  %10366 = fsub fast float %10365, %10363
  %10367 = extractvalue %dx.types.CBufRet.f32 %8661, 2
  %10368 = fmul fast float %10366, %10367
  %10369 = call float @dx.op.unary.f32(i32 7, float %10368)  ; Saturate(value)
  %10370 = fsub fast float %10369, %10362
  %10371 = fmul fast float %10370, %10349
  %10372 = fadd fast float %10371, %10362
  %10373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10374 = extractvalue %dx.types.CBufRet.f32 %10373, 0
  %10375 = fsub fast float %10372, %10374
  %10376 = fmul fast float %10375, 1.000000e+01
  %10377 = call float @dx.op.unary.f32(i32 7, float %10376)  ; Saturate(value)
  %10378 = fsub fast float %4258, %8657
  %10379 = fmul fast float %10377, %10378
  %10380 = fadd fast float %10379, %8657
  %10381 = fmul fast float %10380, %10372
  br label %10406

; <label>:10382                                   ; preds = %10348
  %10383 = fadd fast float %10109, %10106
  %10384 = fmul fast float %10330, %10383
  %10385 = fadd fast float %10384, %10333
  %10386 = fmul fast float %10357, %10352
  %10387 = fmul fast float %10357, %10355
  %10388 = fmul fast float %10357, %10385
  %10389 = call float @dx.op.binary.f32(i32 35, float %10387, float %10388)  ; FMax(a,b)
  %10390 = call float @dx.op.binary.f32(i32 35, float %10386, float %10389)  ; FMax(a,b)
  %10391 = call float @dx.op.binary.f32(i32 35, float %10390, float %8657)  ; FMax(a,b)
  %10392 = fcmp fast ugt float %10391, 0x3F10000000000000
  br i1 %10392, label %10394, label %10393

; <label>:10393                                   ; preds = %10382
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10394

; <label>:10394                                   ; preds = %10393, %10382
  %10395 = add i32 %62, 356
  %10396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %10395, i32 undef)  ; BufferLoad(srv,index,wot)
  %10397 = extractvalue %dx.types.ResRet.i32 %10396, 0
  %10398 = and i32 %10397, 32
  %10399 = icmp eq i32 %10398, 0
  br i1 %10399, label %10406, label %10400

; <label>:10400                                   ; preds = %10394
  %10401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10402 = extractvalue %dx.types.CBufRet.f32 %10401, 0
  %10403 = fmul fast float %10402, 0x3FE99999A0000000
  %10404 = fadd fast float %10402, %10386
  %10405 = fadd fast float %10403, %10388
  br label %10406

; <label>:10406                                   ; preds = %10400, %10394, %10358
  %10407 = phi float [ %10360, %10358 ], [ %10404, %10400 ], [ %10386, %10394 ]
  %10408 = phi float [ %10381, %10358 ], [ %10387, %10400 ], [ %10387, %10394 ]
  %10409 = phi float [ %10380, %10358 ], [ %10405, %10400 ], [ %10388, %10394 ]
  %10410 = phi float [ %10380, %10358 ], [ %8657, %10400 ], [ %8657, %10394 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10411 = call float @dx.op.binary.f32(i32 36, float %10407, float 3.225500e+04)  ; FMin(a,b)
  %10412 = call float @dx.op.binary.f32(i32 36, float %10408, float 3.225500e+04)  ; FMin(a,b)
  %10413 = call float @dx.op.binary.f32(i32 36, float %10409, float 3.225500e+04)  ; FMin(a,b)
  %10414 = call float @dx.op.binary.f32(i32 36, float %10410, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10411)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10412)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10413)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %10414)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!75 = !{[58 x i32] [i32 56, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 7, i32 7, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 0, i32 0, i32 0]}
!76 = !{void ()* @ps_main, !"ps_main", !77, !4, !103}
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
!101 = !{!102}
!102 = !{i32 0, !"SV_Target", i8 9, i8 16, !80, i8 0, i32 1, i8 4, i32 0, i8 0, !81}
!103 = !{i32 0, i64 16}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !106}
!106 = !{!"llvm.loop.unroll.disable"}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = !{!113, !113, i64 0}
!113 = !{!"int", !114, i64 0}
!114 = !{!"omnipotent char", !115, i64 0}
!115 = !{!"Simple C/C++ TBAA"}
!116 = !{!117, !119, !121, !123}
!117 = distinct !{!117, !118, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!118 = distinct !{!118, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!119 = distinct !{!119, !120, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!120 = distinct !{!120, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!121 = distinct !{!121, !122, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!122 = distinct !{!122, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!123 = distinct !{!123, !124, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!124 = distinct !{!124, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = !{!127, !127, i64 0}
!127 = !{!"float", !114, i64 0}
!128 = distinct !{!128, !106}
!129 = distinct !{!129, !106}
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
!140 = distinct !{!140, !"dx.controlflow.hints", i32 1}
!141 = !{!142, !144, !146, !147, !149, !150, !151, !153, !154, !155}
!142 = distinct !{!142, !143, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!143 = distinct !{!143, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!144 = distinct !{!144, !145, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!145 = distinct !{!145, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!146 = distinct !{!146, !145, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!147 = distinct !{!147, !148, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!148 = distinct !{!148, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!149 = distinct !{!149, !148, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!150 = distinct !{!150, !148, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!151 = distinct !{!151, !152, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!152 = distinct !{!152, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!153 = distinct !{!153, !152, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!154 = distinct !{!154, !152, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!155 = distinct !{!155, !156, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!156 = distinct !{!156, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!157 = !{!158}
!158 = distinct !{!158, !159, !"\01?sort@@YAXAIAM00@Z: %c"}
!159 = distinct !{!159, !"\01?sort@@YAXAIAM00@Z"}
!160 = !{!161, !162, !142, !144, !146, !147, !149, !150, !151, !153, !154, !155}
!161 = distinct !{!161, !159, !"\01?sort@@YAXAIAM00@Z: %a"}
!162 = distinct !{!162, !159, !"\01?sort@@YAXAIAM00@Z: %b"}
!163 = !{!162}
!164 = !{!161, !158, !142, !144, !146, !147, !149, !150, !151, !153, !154, !155}
!165 = !{!161}
!166 = !{!162, !158, !142, !144, !146, !147, !149, !150, !151, !153, !154, !155}
!167 = !{!168}
!168 = distinct !{!168, !169, !"\01?sort@@YAXAIAM00@Z: %c"}
!169 = distinct !{!169, !"\01?sort@@YAXAIAM00@Z"}
!170 = !{!171, !172, !142, !144, !146, !147, !149, !150, !151, !153, !154, !155}
!171 = distinct !{!171, !169, !"\01?sort@@YAXAIAM00@Z: %a"}
!172 = distinct !{!172, !169, !"\01?sort@@YAXAIAM00@Z: %b"}
!173 = !{!172}
!174 = !{!171, !168, !142, !144, !146, !147, !149, !150, !151, !153, !154, !155}
!175 = !{!171}
!176 = !{!172, !168, !142, !144, !146, !147, !149, !150, !151, !153, !154, !155}
!177 = distinct !{!177, !"dx.controlflow.hints", i32 1}
!178 = distinct !{!178, !"dx.controlflow.hints", i32 2}
!179 = distinct !{!179, !"dx.controlflow.hints", i32 1}
!180 = distinct !{!180, !"dx.controlflow.hints", i32 1}
!181 = distinct !{!181, !"dx.controlflow.hints", i32 1}
!182 = distinct !{!182, !"dx.controlflow.hints", i32 1}
!183 = distinct !{!183, !"dx.controlflow.hints", i32 1}
!184 = distinct !{!184, !"dx.controlflow.hints", i32 1}
!185 = distinct !{!185, !"dx.controlflow.hints", i32 1}
!186 = distinct !{!186, !"dx.controlflow.hints", i32 1}
!187 = distinct !{!187, !"dx.controlflow.hints", i32 1}

