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
; shader hash: 2e0735e1a9a648b939db12fffe9f9863
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
  %3662 = and i32 %213, 65535
  %3663 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3662)  ; LegacyF16ToF32(value)
  %3664 = lshr i32 %213, 16
  %3665 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3664)  ; LegacyF16ToF32(value)
  %3666 = and i32 %214, 65535
  %3667 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3666)  ; LegacyF16ToF32(value)
  %3668 = fmul fast float %3663, %3630
  %3669 = fmul fast float %3665, %3631
  %3670 = fmul fast float %3667, %3632
  %3671 = shl i32 %215, 4
  %3672 = and i32 %3671, 32752
  %3673 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3672)  ; LegacyF16ToF32(value)
  %3674 = lshr i32 %215, 7
  %3675 = and i32 %3674, 32752
  %3676 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3675)  ; LegacyF16ToF32(value)
  %3677 = lshr i32 %215, 22
  %3678 = shl nuw nsw i32 %3677, 5
  %3679 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3678)  ; LegacyF16ToF32(value)
  %3680 = and i32 %216, 65535
  %3681 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3680)  ; LegacyF16ToF32(value)
  %3682 = fmul fast float %3673, %3633
  %3683 = fmul fast float %3682, %3681
  %3684 = fmul fast float %3676, %3634
  %3685 = fmul fast float %3684, %3681
  %3686 = fmul fast float %3679, %3635
  %3687 = fmul fast float %3686, %3681
  %3688 = call float @dx.op.dot2.f32(i32 54, float %3628, float %3629, float %3628, float %3629)  ; Dot2(ax,ay,bx,by)
  %3689 = fmul fast float %3688, 0x3FE3333340000000
  %3690 = fsub fast float 1.000000e+00, %3689
  %3691 = call float @dx.op.dot3.f32(i32 55, float %3628, float %3629, float %3690, float %3628, float %3629, float %3690)  ; Dot3(ax,ay,az,bx,by,bz)
  %3692 = call float @dx.op.unary.f32(i32 25, float %3691)  ; Rsqrt(value)
  %3693 = fmul fast float %3692, %3628
  %3694 = fmul fast float %3692, %3629
  %3695 = fmul fast float %3690, %3692
  %3696 = fmul fast float %3695, %127
  %3697 = fmul fast float %3695, %128
  %3698 = fmul fast float %3695, %129
  %3699 = fmul fast float %3693, %91
  %3700 = fmul fast float %3693, %92
  %3701 = fmul fast float %3693, %93
  %3702 = fadd fast float %3696, %3699
  %3703 = fadd fast float %3697, %3700
  %3704 = fadd fast float %3698, %3701
  %3705 = fmul fast float %139, %3694
  %3706 = fmul fast float %140, %3694
  %3707 = fmul fast float %141, %3694
  %3708 = fadd fast float %3702, %3705
  %3709 = fadd fast float %3703, %3706
  %3710 = fadd fast float %3704, %3707
  %3711 = call float @dx.op.dot3.f32(i32 55, float %3708, float %3709, float %3710, float %3708, float %3709, float %3710)  ; Dot3(ax,ay,az,bx,by,bz)
  %3712 = call float @dx.op.unary.f32(i32 25, float %3711)  ; Rsqrt(value)
  %3713 = fmul fast float %3708, %3712
  %3714 = fmul fast float %3709, %3712
  %3715 = fmul fast float %3710, %3712
  %3716 = icmp eq i32 %65, 65535
  br i1 %3716, label %4235, label %3717

; <label>:3717                                    ; preds = %3627
  %3718 = call float @dx.op.unary.f32(i32 83, float %66)  ; DerivCoarseX(value)
  %3719 = call float @dx.op.unary.f32(i32 83, float %67)  ; DerivCoarseX(value)
  %3720 = call float @dx.op.unary.f32(i32 83, float %68)  ; DerivCoarseX(value)
  %3721 = call float @dx.op.unary.f32(i32 84, float %66)  ; DerivCoarseY(value)
  %3722 = call float @dx.op.unary.f32(i32 84, float %67)  ; DerivCoarseY(value)
  %3723 = call float @dx.op.unary.f32(i32 84, float %68)  ; DerivCoarseY(value)
  %3724 = fadd fast float %3718, %66
  %3725 = fadd fast float %3719, %67
  %3726 = fadd fast float %3720, %68
  %3727 = fadd fast float %3721, %66
  %3728 = fadd fast float %3722, %67
  %3729 = fadd fast float %3723, %68
  %3730 = mul i32 %65, 48
  %3731 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3730, i32 undef)  ; BufferLoad(srv,index,wot)
  %3732 = extractvalue %dx.types.ResRet.f32 %3731, 0
  %3733 = extractvalue %dx.types.ResRet.f32 %3731, 1
  %3734 = extractvalue %dx.types.ResRet.f32 %3731, 2
  %3735 = add i32 %3730, 16
  %3736 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3735, i32 undef)  ; BufferLoad(srv,index,wot)
  %3737 = extractvalue %dx.types.ResRet.f32 %3736, 0
  %3738 = extractvalue %dx.types.ResRet.f32 %3736, 1
  %3739 = extractvalue %dx.types.ResRet.f32 %3736, 2
  %3740 = add i32 %3730, 32
  %3741 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3740, i32 undef)  ; BufferLoad(srv,index,wot)
  %3742 = extractvalue %dx.types.ResRet.f32 %3741, 0
  %3743 = extractvalue %dx.types.ResRet.f32 %3741, 1
  %3744 = extractvalue %dx.types.ResRet.f32 %3741, 2
  %3745 = extractvalue %dx.types.ResRet.f32 %3741, 3
  %3746 = bitcast float %3745 to i32
  %3747 = fmul fast float %3732, %66
  %3748 = fmul fast float %3733, %67
  %3749 = fmul fast float %3734, %68
  %3750 = fsub fast float %3747, %3737
  %3751 = fsub fast float %3748, %3738
  %3752 = fsub fast float %3749, %3739
  %3753 = call float @dx.op.unary.f32(i32 7, float %3750)  ; Saturate(value)
  %3754 = call float @dx.op.unary.f32(i32 7, float %3751)  ; Saturate(value)
  %3755 = call float @dx.op.unary.f32(i32 7, float %3752)  ; Saturate(value)
  %3756 = fmul fast float %3753, %3742
  %3757 = fmul fast float %3754, %3743
  %3758 = fmul fast float %3755, %3744
  %3759 = fadd fast float %3742, -1.000000e+00
  %3760 = fadd fast float %3743, -1.000000e+00
  %3761 = fadd fast float %3744, -1.000000e+00
  %3762 = call float @dx.op.unary.f32(i32 27, float %3756)  ; Round_ni(value)
  %3763 = call float @dx.op.unary.f32(i32 27, float %3757)  ; Round_ni(value)
  %3764 = call float @dx.op.unary.f32(i32 27, float %3758)  ; Round_ni(value)
  %3765 = call float @dx.op.binary.f32(i32 36, float %3762, float %3759)  ; FMin(a,b)
  %3766 = call float @dx.op.binary.f32(i32 36, float %3763, float %3760)  ; FMin(a,b)
  %3767 = call float @dx.op.binary.f32(i32 36, float %3764, float %3761)  ; FMin(a,b)
  %3768 = fmul fast float %3767, %3743
  %3769 = fadd fast float %3768, %3766
  %3770 = fmul fast float %3769, %3742
  %3771 = fadd fast float %3770, %3765
  %3772 = fptosi float %3771 to i32
  %3773 = add nsw i32 %3772, %3746
  %3774 = shl nsw i32 %3773, 2
  %3775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3774, i32 undef)  ; BufferLoad(srv,index,wot)
  %3776 = extractvalue %dx.types.ResRet.i32 %3775, 0
  %3777 = lshr i32 %3776, 16
  %3778 = icmp eq i32 %3777, 0
  br i1 %3778, label %4203, label %3779

; <label>:3779                                    ; preds = %3717
  br label %3780

; <label>:3780                                    ; preds = %3902, %3779
  %3781 = phi i32 [ %3804, %3902 ], [ %3777, %3779 ]
  %3782 = phi float [ %3903, %3902 ], [ 0.000000e+00, %3779 ]
  %3783 = phi float [ %3904, %3902 ], [ %1299, %3779 ]
  %3784 = phi float [ %3905, %3902 ], [ %3661, %3779 ]
  %3785 = phi float [ %3906, %3902 ], [ %3640, %3779 ]
  %3786 = phi float [ %3907, %3902 ], [ %3639, %3779 ]
  %3787 = phi float [ %3908, %3902 ], [ 0.000000e+00, %3779 ]
  %3788 = phi float [ %3909, %3902 ], [ %3683, %3779 ]
  %3789 = phi float [ %3910, %3902 ], [ %3685, %3779 ]
  %3790 = phi float [ %3911, %3902 ], [ %3687, %3779 ]
  %3791 = phi float [ %3912, %3902 ], [ %3713, %3779 ]
  %3792 = phi float [ %3913, %3902 ], [ %3714, %3779 ]
  %3793 = phi float [ %3914, %3902 ], [ %3715, %3779 ]
  %3794 = phi float [ %3915, %3902 ], [ %3638, %3779 ]
  %3795 = phi float [ %3916, %3902 ], [ %3637, %3779 ]
  %3796 = phi float [ %3917, %3902 ], [ 0.000000e+00, %3779 ]
  %3797 = phi float [ %3918, %3902 ], [ %3636, %3779 ]
  %3798 = phi float [ %3919, %3902 ], [ %3668, %3779 ]
  %3799 = phi float [ %3920, %3902 ], [ %3669, %3779 ]
  %3800 = phi float [ %3921, %3902 ], [ %3670, %3779 ]
  %3801 = shl nuw nsw i32 %3781, 2
  %3802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3801, i32 undef)  ; BufferLoad(srv,index,wot)
  %3803 = extractvalue %dx.types.ResRet.i32 %3802, 0
  %3804 = lshr i32 %3803, 16
  %3805 = shl i32 %3803, 8
  %3806 = and i32 %3805, 16776960
  %3807 = or i32 %3806, 48
  %3808 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3807, i32 undef)  ; BufferLoad(srv,index,wot)
  %3809 = extractvalue %dx.types.ResRet.f32 %3808, 0
  %3810 = extractvalue %dx.types.ResRet.f32 %3808, 1
  %3811 = extractvalue %dx.types.ResRet.f32 %3808, 2
  %3812 = or i32 %3806, 64
  %3813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3812, i32 undef)  ; BufferLoad(srv,index,wot)
  %3814 = extractvalue %dx.types.ResRet.i32 %3813, 0
  %3815 = extractvalue %dx.types.ResRet.i32 %3813, 1
  %3816 = or i32 %3806, 80
  %3817 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3816, i32 undef)  ; BufferLoad(srv,index,wot)
  %3818 = extractvalue %dx.types.ResRet.f32 %3817, 2
  %3819 = extractvalue %dx.types.ResRet.f32 %3817, 3
  %3820 = or i32 %3806, 96
  %3821 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3820, i32 undef)  ; BufferLoad(srv,index,wot)
  %3822 = extractvalue %dx.types.ResRet.f32 %3821, 0
  %3823 = extractvalue %dx.types.ResRet.f32 %3821, 1
  %3824 = extractvalue %dx.types.ResRet.f32 %3821, 2
  %3825 = extractvalue %dx.types.ResRet.f32 %3821, 3
  %3826 = or i32 %3806, 112
  %3827 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3826, i32 undef)  ; BufferLoad(srv,index,wot)
  %3828 = extractvalue %dx.types.ResRet.f32 %3827, 2
  %3829 = or i32 %3806, 128
  %3830 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3831 = extractvalue %dx.types.ResRet.f32 %3830, 0
  %3832 = extractvalue %dx.types.ResRet.f32 %3830, 1
  %3833 = extractvalue %dx.types.ResRet.f32 %3830, 2
  %3834 = extractvalue %dx.types.ResRet.f32 %3830, 3
  %3835 = or i32 %3806, 144
  %3836 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3835, i32 undef)  ; BufferLoad(srv,index,wot)
  %3837 = extractvalue %dx.types.ResRet.f32 %3836, 0
  %3838 = extractvalue %dx.types.ResRet.f32 %3836, 1
  %3839 = extractvalue %dx.types.ResRet.f32 %3836, 2
  %3840 = extractvalue %dx.types.ResRet.f32 %3836, 3
  %3841 = or i32 %3806, 160
  %3842 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3841, i32 undef)  ; BufferLoad(srv,index,wot)
  %3843 = extractvalue %dx.types.ResRet.f32 %3842, 0
  %3844 = extractvalue %dx.types.ResRet.f32 %3842, 1
  %3845 = extractvalue %dx.types.ResRet.f32 %3842, 2
  %3846 = extractvalue %dx.types.ResRet.f32 %3842, 3
  %3847 = or i32 %3806, 192
  %3848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3847, i32 undef)  ; BufferLoad(srv,index,wot)
  %3849 = extractvalue %dx.types.ResRet.i32 %3848, 0
  %3850 = or i32 %3806, 208
  %3851 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3850, i32 undef)  ; BufferLoad(srv,index,wot)
  %3852 = extractvalue %dx.types.ResRet.f32 %3851, 0
  %3853 = or i32 %3806, 248
  %3854 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3853, i32 undef)  ; BufferLoad(srv,index,wot)
  %3855 = extractvalue %dx.types.ResRet.f32 %3854, 0
  %3856 = extractvalue %dx.types.ResRet.f32 %3854, 1
  %3857 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3806, i32 undef)  ; BufferLoad(srv,index,wot)
  %3858 = extractvalue %dx.types.ResRet.f32 %3857, 0
  %3859 = extractvalue %dx.types.ResRet.f32 %3857, 1
  %3860 = extractvalue %dx.types.ResRet.f32 %3857, 2
  %3861 = extractvalue %dx.types.ResRet.f32 %3857, 3
  %3862 = call float @dx.op.dot4.f32(i32 56, float %3858, float %3859, float %3860, float %3861, float %66, float %67, float %68, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3863 = or i32 %3806, 16
  %3864 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3863, i32 undef)  ; BufferLoad(srv,index,wot)
  %3865 = extractvalue %dx.types.ResRet.f32 %3864, 0
  %3866 = extractvalue %dx.types.ResRet.f32 %3864, 1
  %3867 = extractvalue %dx.types.ResRet.f32 %3864, 2
  %3868 = extractvalue %dx.types.ResRet.f32 %3864, 3
  %3869 = call float @dx.op.dot4.f32(i32 56, float %3865, float %3866, float %3867, float %3868, float %66, float %67, float %68, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3870 = or i32 %3806, 32
  %3871 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3870, i32 undef)  ; BufferLoad(srv,index,wot)
  %3872 = extractvalue %dx.types.ResRet.f32 %3871, 0
  %3873 = extractvalue %dx.types.ResRet.f32 %3871, 1
  %3874 = extractvalue %dx.types.ResRet.f32 %3871, 2
  %3875 = extractvalue %dx.types.ResRet.f32 %3871, 3
  %3876 = call float @dx.op.dot4.f32(i32 56, float %3872, float %3873, float %3874, float %3875, float %66, float %67, float %68, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3877 = call float @dx.op.unary.f32(i32 27, float %3862)  ; Round_ni(value)
  %3878 = call float @dx.op.unary.f32(i32 6, float %3877)  ; FAbs(value)
  %3879 = call float @dx.op.unary.f32(i32 27, float %3869)  ; Round_ni(value)
  %3880 = call float @dx.op.unary.f32(i32 6, float %3879)  ; FAbs(value)
  %3881 = call float @dx.op.unary.f32(i32 6, float %3876)  ; FAbs(value)
  %3882 = call float @dx.op.unary.f32(i32 27, float %3881)  ; Round_ni(value)
  %3883 = fadd fast float %3880, %3878
  %3884 = fadd fast float %3883, %3882
  %3885 = fcmp fast oeq float %3884, 0.000000e+00
  %3886 = call float @dx.op.dot4.f32(i32 56, float %3858, float %3859, float %3860, float %3861, float %3724, float %3725, float %3726, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3887 = call float @dx.op.dot4.f32(i32 56, float %3865, float %3866, float %3867, float %3868, float %3724, float %3725, float %3726, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3888 = call float @dx.op.dot4.f32(i32 56, float %3858, float %3859, float %3860, float %3861, float %3727, float %3728, float %3729, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3889 = call float @dx.op.dot4.f32(i32 56, float %3865, float %3866, float %3867, float %3868, float %3727, float %3728, float %3729, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3890 = fsub fast float %3886, %3862
  %3891 = fsub fast float %3888, %3862
  %3892 = fsub fast float %3887, %3869
  %3893 = fsub fast float %3889, %3869
  %3894 = call float @dx.op.dot3.f32(i32 55, float %3809, float %3810, float %3811, float %127, float %128, float %129)  ; Dot3(ax,ay,az,bx,by,bz)
  %3895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3896 = extractvalue %dx.types.CBufRet.f32 %3895, 2
  %3897 = fadd fast float %3896, %3894
  %3898 = call float @dx.op.unary.f32(i32 7, float %3897)  ; Saturate(value)
  %3899 = extractvalue %dx.types.CBufRet.f32 %3895, 0
  %3900 = fcmp fast ogt float %3898, %3899
  %3901 = and i1 %3885, %3900
  br i1 %3901, label %3923, label %3902

; <label>:3902                                    ; preds = %4189, %4006, %3923, %3780
  %3903 = phi float [ %3782, %3923 ], [ %4009, %4006 ], [ %4009, %4189 ], [ %3782, %3780 ]
  %3904 = phi float [ %3783, %3923 ], [ %3783, %4006 ], [ %4164, %4189 ], [ %3783, %3780 ]
  %3905 = phi float [ %3784, %3923 ], [ %3784, %4006 ], [ %4163, %4189 ], [ %3784, %3780 ]
  %3906 = phi float [ %3785, %3923 ], [ %3785, %4006 ], [ %4161, %4189 ], [ %3785, %3780 ]
  %3907 = phi float [ %3786, %3923 ], [ %3786, %4006 ], [ %4133, %4189 ], [ %3786, %3780 ]
  %3908 = phi float [ %3787, %3923 ], [ %3787, %4006 ], [ %4131, %4189 ], [ %3787, %3780 ]
  %3909 = phi float [ %3788, %3923 ], [ %3788, %4006 ], [ %4199, %4189 ], [ %3788, %3780 ]
  %3910 = phi float [ %3789, %3923 ], [ %3789, %4006 ], [ %4200, %4189 ], [ %3789, %3780 ]
  %3911 = phi float [ %3790, %3923 ], [ %3790, %4006 ], [ %4201, %4189 ], [ %3790, %3780 ]
  %3912 = phi float [ %3791, %3923 ], [ %3791, %4006 ], [ %4112, %4189 ], [ %3791, %3780 ]
  %3913 = phi float [ %3792, %3923 ], [ %3792, %4006 ], [ %4113, %4189 ], [ %3792, %3780 ]
  %3914 = phi float [ %3793, %3923 ], [ %3793, %4006 ], [ %4114, %4189 ], [ %3793, %3780 ]
  %3915 = phi float [ %3794, %3923 ], [ %3794, %4006 ], [ %4141, %4189 ], [ %3794, %3780 ]
  %3916 = phi float [ %3795, %3923 ], [ %3795, %4006 ], [ %4138, %4189 ], [ %3795, %3780 ]
  %3917 = phi float [ %3796, %3923 ], [ %3796, %4006 ], [ %4135, %4189 ], [ %3796, %3780 ]
  %3918 = phi float [ %3797, %3923 ], [ %3797, %4006 ], [ %4129, %4189 ], [ %3797, %3780 ]
  %3919 = phi float [ %3798, %3923 ], [ %3798, %4006 ], [ %4124, %4189 ], [ %3798, %3780 ]
  %3920 = phi float [ %3799, %3923 ], [ %3799, %4006 ], [ %4125, %4189 ], [ %3799, %3780 ]
  %3921 = phi float [ %3800, %3923 ], [ %3800, %4006 ], [ %4126, %4189 ], [ %3800, %3780 ]
  %3922 = icmp eq i32 %3804, 0
  br i1 %3922, label %4202, label %3780

; <label>:3923                                    ; preds = %3780
  %3924 = extractvalue %dx.types.ResRet.f32 %3808, 3
  %3925 = extractvalue %dx.types.ResRet.f32 %3827, 3
  %3926 = extractvalue %dx.types.ResRet.f32 %3827, 1
  %3927 = extractvalue %dx.types.ResRet.f32 %3827, 0
  %3928 = extractvalue %dx.types.ResRet.f32 %3817, 1
  %3929 = extractvalue %dx.types.ResRet.f32 %3817, 0
  %3930 = extractvalue %dx.types.ResRet.i32 %3813, 3
  %3931 = extractvalue %dx.types.ResRet.i32 %3813, 2
  %3932 = bitcast float %3924 to i32
  %3933 = add i32 %3930, 0
  %3934 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3933, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3935 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3936 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3934, %dx.types.Handle %3935, float %3862, float %3869, float undef, float undef, i32 0, i32 0, i32 undef, float %3890, float %3892, float undef, float %3891, float %3893, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3937 = extractvalue %dx.types.ResRet.f32 %3936, 0
  %3938 = fmul fast float %3937, %3929
  %3939 = fadd fast float %3938, %3928
  %3940 = call float @dx.op.unary.f32(i32 7, float %3939)  ; Saturate(value)
  %3941 = fmul fast float %3862, %3822
  %3942 = call float @dx.op.tertiary.f32(i32 46, float %3823, float %3869, float %3941)  ; FMad(a,b,c)
  %3943 = fadd fast float %3942, %3927
  %3944 = fmul fast float %3862, %3824
  %3945 = call float @dx.op.tertiary.f32(i32 46, float %3825, float %3869, float %3944)  ; FMad(a,b,c)
  %3946 = fadd fast float %3945, %3926
  %3947 = fmul fast float %3890, %3822
  %3948 = call float @dx.op.tertiary.f32(i32 46, float %3823, float %3892, float %3947)  ; FMad(a,b,c)
  %3949 = fmul fast float %3890, %3824
  %3950 = call float @dx.op.tertiary.f32(i32 46, float %3825, float %3892, float %3949)  ; FMad(a,b,c)
  %3951 = fmul fast float %3891, %3822
  %3952 = call float @dx.op.tertiary.f32(i32 46, float %3823, float %3893, float %3951)  ; FMad(a,b,c)
  %3953 = fmul fast float %3891, %3824
  %3954 = call float @dx.op.tertiary.f32(i32 46, float %3825, float %3893, float %3953)  ; FMad(a,b,c)
  %3955 = add i32 %3931, 0
  %3956 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3955, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3957 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3956, %dx.types.Handle %3935, float %3943, float %3946, float undef, float undef, i32 0, i32 0, i32 undef, float %3948, float %3950, float undef, float %3952, float %3954, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3958 = extractvalue %dx.types.ResRet.f32 %3957, 0
  %3959 = and i32 %3932, 1024
  %3960 = icmp ne i32 %3959, 0
  %3961 = fcmp fast ogt float %3958, 0x3FE0101020000000
  %3962 = uitofp i1 %3961 to float
  %3963 = select i1 %3960, float %3962, float %3958
  %3964 = and i32 %3932, 8192
  %3965 = icmp ne i32 %3964, 0
  %3966 = select i1 %3965, float %3925, float 1.000000e+00
  %3967 = fmul fast float %3862, 2.000000e+00
  %3968 = fadd fast float %3967, -1.000000e+00
  %3969 = call float @dx.op.unary.f32(i32 6, float %3968)  ; FAbs(value)
  %3970 = fmul fast float %3969, %3855
  %3971 = fsub fast float %3970, %3855
  %3972 = call float @dx.op.unary.f32(i32 7, float %3971)  ; Saturate(value)
  %3973 = fmul fast float %3869, 2.000000e+00
  %3974 = fadd fast float %3973, -1.000000e+00
  %3975 = call float @dx.op.unary.f32(i32 6, float %3974)  ; FAbs(value)
  %3976 = fmul fast float %3975, %3856
  %3977 = fsub fast float %3976, %3856
  %3978 = call float @dx.op.unary.f32(i32 7, float %3977)  ; Saturate(value)
  %3979 = fmul fast float %3881, %3818
  %3980 = fsub fast float %3979, %3818
  %3981 = call float @dx.op.unary.f32(i32 7, float %3980)  ; Saturate(value)
  %3982 = fmul fast float %3940, %3966
  %3983 = fmul fast float %3982, %3937
  %3984 = fmul fast float %3983, %3972
  %3985 = fmul fast float %3984, %3963
  %3986 = fmul fast float %3985, %3978
  %3987 = fmul fast float %3986, %3981
  %3988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3989 = extractvalue %dx.types.CBufRet.f32 %3988, 1
  %3990 = extractvalue %dx.types.CBufRet.f32 %3988, 0
  %3991 = fsub fast float %3898, %3990
  %3992 = fmul fast float %3991, %3989
  %3993 = call float @dx.op.unary.f32(i32 7, float %3992)  ; Saturate(value)
  %3994 = fmul fast float %3987, %3819
  %3995 = fadd fast float %3987, %3819
  %3996 = fmul fast float %3995, %3828
  %3997 = fsub fast float %3996, %3828
  %3998 = call float @dx.op.unary.f32(i32 7, float %3997)  ; Saturate(value)
  %3999 = and i32 %3932, 128
  %4000 = icmp ne i32 %3999, 0
  %4001 = select i1 %4000, float %3998, float %3994
  %4002 = fmul fast float %4001, %3993
  %4003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4004 = extractvalue %dx.types.CBufRet.f32 %4003, 0
  %4005 = fcmp fast ugt float %4002, %4004
  br i1 %4005, label %4006, label %3902

; <label>:4006                                    ; preds = %3923
  %4007 = select i1 %3965, float %4002, float 0.000000e+00
  %4008 = fadd fast float %4007, %3782
  %4009 = call float @dx.op.unary.f32(i32 7, float %4008)  ; Saturate(value)
  br i1 %3965, label %3902, label %4010

; <label>:4010                                    ; preds = %4006
  %4011 = and i32 %3932, 4
  %4012 = and i32 %3932, 8
  %4013 = add i32 %3814, 0
  %4014 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4013, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4015 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4016 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4014, %dx.types.Handle %4015, float %3943, float %3946, float undef, float undef, i32 0, i32 0, i32 undef, float %3948, float %3950, float undef, float %3952, float %3954, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4017 = extractvalue %dx.types.ResRet.f32 %4016, 0
  %4018 = extractvalue %dx.types.ResRet.f32 %4016, 1
  %4019 = extractvalue %dx.types.ResRet.f32 %4016, 2
  %4020 = extractvalue %dx.types.ResRet.f32 %4016, 3
  %4021 = bitcast float %3840 to i32
  %4022 = and i32 %4021, 255
  %4023 = uitofp i32 %4022 to float
  %4024 = lshr i32 %4021, 8
  %4025 = and i32 %4024, 255
  %4026 = uitofp i32 %4025 to float
  %4027 = fmul fast float %4020, %4023
  %4028 = fadd fast float %4027, %4026
  %4029 = fmul fast float %4028, 0x3F70101000000000
  %4030 = add i32 %3815, 0
  %4031 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4030, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4032 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4031, %dx.types.Handle %4015, float %3943, float %3946, float undef, float undef, i32 0, i32 0, i32 undef, float %3948, float %3950, float undef, float %3952, float %3954, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4033 = extractvalue %dx.types.ResRet.f32 %4032, 0
  %4034 = extractvalue %dx.types.ResRet.f32 %4032, 1
  %4035 = extractvalue %dx.types.ResRet.f32 %4032, 2
  %4036 = extractvalue %dx.types.ResRet.f32 %4032, 3
  %4037 = bitcast float %3834 to i32
  %4038 = and i32 %4037, 255
  %4039 = uitofp i32 %4038 to float
  %4040 = lshr i32 %4037, 8
  %4041 = and i32 %4040, 255
  %4042 = uitofp i32 %4041 to float
  %4043 = lshr i32 %4037, 16
  %4044 = and i32 %4043, 255
  %4045 = uitofp i32 %4044 to float
  %4046 = fmul fast float %4045, 0x3F70101000000000
  %4047 = fmul fast float %4033, %4039
  %4048 = fadd fast float %4047, %4042
  %4049 = fmul fast float %4048, 0x3F70101000000000
  %4050 = fadd fast float %4034, -5.000000e-01
  %4051 = fadd fast float %4036, -5.000000e-01
  %4052 = fmul fast float %4050, %4046
  %4053 = fmul fast float %4051, %4046
  %4054 = fadd fast float %4052, 5.000000e-01
  %4055 = fadd fast float %4053, 5.000000e-01
  %4056 = fmul fast float %4017, %3843
  %4057 = fmul fast float %4018, %3844
  %4058 = fmul fast float %4019, %3845
  %4059 = fmul fast float %4054, 2.000000e+00
  %4060 = fadd fast float %4059, -1.000000e+00
  %4061 = fmul fast float %4055, 2.000000e+00
  %4062 = fadd fast float %4061, -1.000000e+00
  %4063 = fadd fast float %4060, %4062
  %4064 = fmul fast float %4063, 5.000000e-01
  %4065 = fsub fast float %4060, %4062
  %4066 = fmul fast float %4065, 5.000000e-01
  %4067 = call float @dx.op.unary.f32(i32 6, float %4064)  ; FAbs(value)
  %4068 = fsub fast float 1.000000e+00, %4067
  %4069 = call float @dx.op.unary.f32(i32 6, float %4066)  ; FAbs(value)
  %4070 = fsub fast float %4068, %4069
  %4071 = call float @dx.op.dot3.f32(i32 55, float %4064, float %4066, float %4070, float %4064, float %4066, float %4070)  ; Dot3(ax,ay,az,bx,by,bz)
  %4072 = call float @dx.op.unary.f32(i32 25, float %4071)  ; Rsqrt(value)
  %4073 = fmul fast float %4064, %4072
  %4074 = fmul fast float %4066, %4072
  %4075 = fmul fast float %4072, %4070
  %4076 = fmul fast float %4075, %3809
  %4077 = fmul fast float %4075, %3810
  %4078 = fmul fast float %4075, %3811
  %4079 = fmul fast float %4073, %3831
  %4080 = fmul fast float %4073, %3832
  %4081 = fmul fast float %4073, %3833
  %4082 = fadd fast float %4079, %4076
  %4083 = fadd fast float %4080, %4077
  %4084 = fadd fast float %4081, %4078
  %4085 = fmul fast float %4074, %3837
  %4086 = fmul fast float %4074, %3838
  %4087 = fmul fast float %4074, %3839
  %4088 = fadd fast float %4082, %4085
  %4089 = fadd fast float %4083, %4086
  %4090 = fadd fast float %4084, %4087
  %4091 = call float @dx.op.dot3.f32(i32 55, float %4088, float %4089, float %4090, float %4088, float %4089, float %4090)  ; Dot3(ax,ay,az,bx,by,bz)
  %4092 = call float @dx.op.unary.f32(i32 25, float %4091)  ; Rsqrt(value)
  %4093 = fmul fast float %4088, %4092
  %4094 = fmul fast float %4089, %4092
  %4095 = fmul fast float %4090, %4092
  %4096 = icmp ne i32 %4012, 0
  %4097 = select i1 %4096, float 1.000000e+00, float 0.000000e+00
  %4098 = fmul fast float %4002, %4097
  %4099 = and i32 %3932, 1
  %4100 = icmp eq i32 %4099, 0
  br i1 %4100, label %4101, label %4105

; <label>:4101                                    ; preds = %4010
  %4102 = fsub fast float %4093, %3791
  %4103 = fsub fast float %4094, %3792
  %4104 = fsub fast float %4095, %3793
  br label %4105

; <label>:4105                                    ; preds = %4101, %4010
  %4106 = phi float [ %4102, %4101 ], [ %4093, %4010 ]
  %4107 = phi float [ %4103, %4101 ], [ %4094, %4010 ]
  %4108 = phi float [ %4104, %4101 ], [ %4095, %4010 ]
  %4109 = fmul float %4108, %4098
  %4110 = fmul float %4107, %4098
  %4111 = fmul float %4106, %4098
  %4112 = fadd fast float %4111, %3791
  %4113 = fadd fast float %4110, %3792
  %4114 = fadd fast float %4109, %3793
  %4115 = icmp ne i32 %4011, 0
  %4116 = select i1 %4115, float 1.000000e+00, float 0.000000e+00
  %4117 = fmul fast float %4002, %4116
  %4118 = fsub fast float %4056, %3798
  %4119 = fsub fast float %4057, %3799
  %4120 = fsub fast float %4058, %3800
  %4121 = fmul fast float %4118, %4117
  %4122 = fmul fast float %4119, %4117
  %4123 = fmul fast float %4120, %4117
  %4124 = fadd fast float %4121, %3798
  %4125 = fadd fast float %4122, %3799
  %4126 = fadd fast float %4123, %3800
  %4127 = fsub fast float %4029, %3797
  %4128 = fmul fast float %4127, %4117
  %4129 = fadd fast float %4128, %3797
  %4130 = fmul fast float %4117, %3787
  %4131 = fsub fast float %3787, %4130
  %4132 = fmul fast float %4117, %3786
  %4133 = fsub fast float %3786, %4132
  %4134 = fadd fast float %4002, %3796
  %4135 = call float @dx.op.unary.f32(i32 7, float %4134)  ; Saturate(value)
  %4136 = fsub fast float %4049, %3795
  %4137 = fmul fast float %4136, %4098
  %4138 = fadd fast float %4137, %3795
  %4139 = fsub fast float %4035, %3794
  %4140 = fmul fast float %4139, %4098
  %4141 = fadd fast float %4140, %3794
  %4142 = call float @dx.op.dot3.f32(i32 55, float %4056, float %4057, float %4058, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4144 = extractvalue %dx.types.CBufRet.f32 %4143, 0
  %4145 = extractvalue %dx.types.CBufRet.f32 %4143, 1
  %4146 = fmul fast float %4145, %4142
  %4147 = fadd fast float %4146, %4144
  %4148 = call float @dx.op.unary.f32(i32 7, float %4147)  ; Saturate(value)
  %4149 = bitcast float %3846 to i32
  %4150 = and i32 %4149, 65535
  %4151 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4150)  ; LegacyF16ToF32(value)
  %4152 = lshr i32 %4149, 16
  %4153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4152)  ; LegacyF16ToF32(value)
  %4154 = fcmp fast oge float %4151, 0.000000e+00
  %4155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4156 = extractvalue %dx.types.CBufRet.f32 %4155, 0
  %4157 = select i1 %4154, float %4151, float %4156
  %4158 = fadd fast float %4157, %4153
  %4159 = fsub fast float %4148, %3785
  %4160 = fmul fast float %4159, %4002
  %4161 = fadd fast float %4160, %3785
  %4162 = fmul fast float %4158, %4002
  %4163 = call float @dx.op.binary.f32(i32 35, float %3784, float %4162)  ; FMax(a,b)
  %4164 = call float @dx.op.binary.f32(i32 35, float %3783, float %4002)  ; FMax(a,b)
  %4165 = and i32 %3932, 16
  %4166 = icmp eq i32 %4165, 0
  br i1 %4166, label %4189, label %4167

; <label>:4167                                    ; preds = %4105
  %4168 = bitcast float %3852 to i32
  %4169 = add i32 %3849, 0
  %4170 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4169, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4171 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4170, %dx.types.Handle %4015, float %3943, float %3946, float undef, float undef, i32 0, i32 0, i32 undef, float %3948, float %3950, float undef, float %3952, float %3954, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4172 = extractvalue %dx.types.ResRet.f32 %4171, 0
  %4173 = extractvalue %dx.types.ResRet.f32 %4171, 1
  %4174 = extractvalue %dx.types.ResRet.f32 %4171, 2
  %4175 = and i32 %4168, 65535
  %4176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4175)  ; LegacyF16ToF32(value)
  %4177 = fmul fast float %4172, %3843
  %4178 = fmul fast float %4173, %3844
  %4179 = fmul fast float %4174, %3845
  %4180 = and i32 %3932, 16384
  %4181 = icmp ne i32 %4180, 0
  %4182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4183 = extractvalue %dx.types.CBufRet.f32 %4182, 0
  %4184 = select i1 %4181, float %4183, float 1.000000e+00
  %4185 = fmul fast float %4184, %4176
  %4186 = fmul fast float %4177, %4185
  %4187 = fmul fast float %4178, %4185
  %4188 = fmul fast float %4179, %4185
  br label %4189

; <label>:4189                                    ; preds = %4167, %4105
  %4190 = phi float [ %4186, %4167 ], [ 0.000000e+00, %4105 ]
  %4191 = phi float [ %4187, %4167 ], [ 0.000000e+00, %4105 ]
  %4192 = phi float [ %4188, %4167 ], [ 0.000000e+00, %4105 ]
  %4193 = fsub fast float %4190, %3788
  %4194 = fsub fast float %4191, %3789
  %4195 = fsub fast float %4192, %3790
  %4196 = fmul fast float %4193, %4002
  %4197 = fmul fast float %4194, %4002
  %4198 = fmul fast float %4195, %4002
  %4199 = fadd fast float %4196, %3788
  %4200 = fadd fast float %4197, %3789
  %4201 = fadd fast float %4198, %3790
  br label %3902

; <label>:4202                                    ; preds = %3902
  br label %4203

; <label>:4203                                    ; preds = %4202, %3717
  %4204 = phi float [ 0.000000e+00, %3717 ], [ %3903, %4202 ]
  %4205 = phi float [ %1299, %3717 ], [ %3904, %4202 ]
  %4206 = phi float [ %3661, %3717 ], [ %3905, %4202 ]
  %4207 = phi float [ %3640, %3717 ], [ %3906, %4202 ]
  %4208 = phi float [ %3639, %3717 ], [ %3907, %4202 ]
  %4209 = phi float [ 0.000000e+00, %3717 ], [ %3908, %4202 ]
  %4210 = phi float [ %3683, %3717 ], [ %3909, %4202 ]
  %4211 = phi float [ %3685, %3717 ], [ %3910, %4202 ]
  %4212 = phi float [ %3687, %3717 ], [ %3911, %4202 ]
  %4213 = phi float [ %3713, %3717 ], [ %3912, %4202 ]
  %4214 = phi float [ %3714, %3717 ], [ %3913, %4202 ]
  %4215 = phi float [ %3715, %3717 ], [ %3914, %4202 ]
  %4216 = phi float [ %3638, %3717 ], [ %3915, %4202 ]
  %4217 = phi float [ %3637, %3717 ], [ %3916, %4202 ]
  %4218 = phi float [ 0.000000e+00, %3717 ], [ %3917, %4202 ]
  %4219 = phi float [ %3636, %3717 ], [ %3918, %4202 ]
  %4220 = phi float [ %3668, %3717 ], [ %3919, %4202 ]
  %4221 = phi float [ %3669, %3717 ], [ %3920, %4202 ]
  %4222 = phi float [ %3670, %3717 ], [ %3921, %4202 ]
  %4223 = call float @dx.op.dot3.f32(i32 55, float %4213, float %4214, float %4215, float %4213, float %4214, float %4215)  ; Dot3(ax,ay,az,bx,by,bz)
  %4224 = call float @dx.op.unary.f32(i32 25, float %4223)  ; Rsqrt(value)
  %4225 = fmul fast float %4224, %4213
  %4226 = fmul fast float %4224, %4214
  %4227 = fmul fast float %4224, %4215
  %4228 = fadd fast float %4218, %1299
  %4229 = call float @dx.op.unary.f32(i32 7, float %4228)  ; Saturate(value)
  %4230 = call float @dx.op.dot3.f32(i32 55, float %4225, float %4226, float %4227, float %4225, float %4226, float %4227)  ; Dot3(ax,ay,az,bx,by,bz)
  %4231 = call float @dx.op.unary.f32(i32 25, float %4230)  ; Rsqrt(value)
  %4232 = fmul fast float %4231, %4225
  %4233 = fmul fast float %4231, %4226
  %4234 = fmul fast float %4231, %4227
  br label %4235

; <label>:4235                                    ; preds = %4203, %3627
  %4236 = phi float [ %4232, %4203 ], [ %3713, %3627 ]
  %4237 = phi float [ %4233, %4203 ], [ %3714, %3627 ]
  %4238 = phi float [ %4234, %4203 ], [ %3715, %3627 ]
  %4239 = phi float [ %4220, %4203 ], [ %3668, %3627 ]
  %4240 = phi float [ %4221, %4203 ], [ %3669, %3627 ]
  %4241 = phi float [ %4222, %4203 ], [ %3670, %3627 ]
  %4242 = phi float [ %4210, %4203 ], [ %3683, %3627 ]
  %4243 = phi float [ %4211, %4203 ], [ %3685, %3627 ]
  %4244 = phi float [ %4212, %4203 ], [ %3687, %3627 ]
  %4245 = phi float [ %4219, %4203 ], [ %3636, %3627 ]
  %4246 = phi float [ %4229, %4203 ], [ %1299, %3627 ]
  %4247 = phi float [ %4217, %4203 ], [ %3637, %3627 ]
  %4248 = phi float [ %4216, %4203 ], [ %3638, %3627 ]
  %4249 = phi float [ %4209, %4203 ], [ 0.000000e+00, %3627 ]
  %4250 = phi float [ %4208, %4203 ], [ %3639, %3627 ]
  %4251 = phi float [ %4204, %4203 ], [ 0.000000e+00, %3627 ]
  %4252 = phi float [ %4206, %4203 ], [ %3661, %3627 ]
  %4253 = phi float [ %4205, %4203 ], [ %1299, %3627 ]
  %4254 = phi float [ %4207, %4203 ], [ %3640, %3627 ]
  %4255 = fadd fast float %4245, 0xBFB99999A0000000
  %4256 = call float @dx.op.unary.f32(i32 7, float %4255)  ; Saturate(value)
  %4257 = fmul fast float %4256, 0x3FF1C71C80000000
  %4258 = call float @dx.op.binary.f32(i32 36, float %4245, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4259 = fsub fast float 1.000000e+00, %4257
  %4260 = call float @dx.op.unary.f32(i32 7, float %4259)  ; Saturate(value)
  %4261 = fmul fast float %4260, %4239
  %4262 = fmul fast float %4260, %4240
  %4263 = fmul fast float %4260, %4241
  %4264 = call float @dx.op.unary.f32(i32 7, float %4261)  ; Saturate(value)
  %4265 = call float @dx.op.unary.f32(i32 7, float %4262)  ; Saturate(value)
  %4266 = call float @dx.op.unary.f32(i32 7, float %4263)  ; Saturate(value)
  %4267 = fmul fast float %4257, %4239
  %4268 = fmul fast float %4257, %4240
  %4269 = fmul fast float %4257, %4241
  %4270 = fadd fast float %4267, %4258
  %4271 = fadd fast float %4268, %4258
  %4272 = fadd fast float %4269, %4258
  %4273 = call float @dx.op.unary.f32(i32 7, float %4270)  ; Saturate(value)
  %4274 = call float @dx.op.unary.f32(i32 7, float %4271)  ; Saturate(value)
  %4275 = call float @dx.op.unary.f32(i32 7, float %4272)  ; Saturate(value)
  %4276 = call float @dx.op.unary.f32(i32 7, float %4247)  ; Saturate(value)
  %4277 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4278 = extractvalue %dx.types.CBufRet.i32 %4277, 3
  %4279 = and i32 %4278, 8
  %4280 = icmp ne i32 %4279, 0
  %4281 = call float @dx.op.binary.f32(i32 35, float %4264, float %4239)  ; FMax(a,b)
  %4282 = call float @dx.op.binary.f32(i32 35, float %4265, float %4239)  ; FMax(a,b)
  %4283 = call float @dx.op.binary.f32(i32 35, float %4266, float %4239)  ; FMax(a,b)
  %4284 = call float @dx.op.dot3.f32(i32 55, float %4264, float %4265, float %4266, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4285 = select i1 %279, float %4239, float %4264
  %4286 = select i1 %279, float %4284, float %4265
  %4287 = select i1 %279, float 1.000000e+00, float %4266
  %4288 = select i1 %4280, float %4281, float %4285
  %4289 = select i1 %4280, float %4282, float %4286
  %4290 = select i1 %4280, float %4283, float %4287
  %4291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4292 = extractvalue %dx.types.CBufRet.f32 %4291, 0
  %4293 = extractvalue %dx.types.CBufRet.f32 %4291, 1
  %4294 = extractvalue %dx.types.CBufRet.f32 %4291, 2
  %4295 = fadd fast float %4292, %207
  %4296 = fadd fast float %4293, %208
  %4297 = fadd fast float %4294, %209
  %4298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4299 = extractvalue %dx.types.CBufRet.f32 %4298, 0
  %4300 = extractvalue %dx.types.CBufRet.f32 %4298, 1
  %4301 = fsub fast float %4295, %4299
  %4302 = fsub fast float %4296, %4300
  %4303 = fmul fast float %4301, %4301
  %4304 = fmul fast float %4302, %4302
  %4305 = fadd fast float %4303, %4304
  %4306 = call float @dx.op.unary.f32(i32 24, float %4305)  ; Sqrt(value)
  %4307 = extractvalue %dx.types.CBufRet.f32 %4298, 2
  %4308 = fcmp fast olt float %4306, %4307
  br i1 %4308, label %4309, label %4376

; <label>:4309                                    ; preds = %4235
  %4310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4311 = extractvalue %dx.types.CBufRet.f32 %4310, 0
  %4312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4313 = extractvalue %dx.types.CBufRet.f32 %4312, 0
  %4314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4315 = extractvalue %dx.types.CBufRet.f32 %4314, 0
  %4316 = extractvalue %dx.types.CBufRet.f32 %4310, 1
  %4317 = extractvalue %dx.types.CBufRet.f32 %4312, 1
  %4318 = extractvalue %dx.types.CBufRet.f32 %4314, 1
  %4319 = extractvalue %dx.types.CBufRet.f32 %4310, 3
  %4320 = extractvalue %dx.types.CBufRet.f32 %4312, 3
  %4321 = extractvalue %dx.types.CBufRet.f32 %4314, 3
  %4322 = fadd fast float %4319, %4295
  %4323 = fadd fast float %4320, %4296
  %4324 = fadd fast float %4321, %4297
  %4325 = fmul fast float %4322, %4311
  %4326 = call float @dx.op.tertiary.f32(i32 46, float %4323, float %4313, float %4325)  ; FMad(a,b,c)
  %4327 = call float @dx.op.tertiary.f32(i32 46, float %4324, float %4315, float %4326)  ; FMad(a,b,c)
  %4328 = fmul fast float %4322, %4316
  %4329 = call float @dx.op.tertiary.f32(i32 46, float %4323, float %4317, float %4328)  ; FMad(a,b,c)
  %4330 = call float @dx.op.tertiary.f32(i32 46, float %4324, float %4318, float %4329)  ; FMad(a,b,c)
  %4331 = fsub fast float %4327, %4319
  %4332 = fsub fast float %4330, %4320
  %4333 = fsub fast float %4331, %4299
  %4334 = fadd fast float %4333, %4307
  %4335 = fsub fast float %4332, %4300
  %4336 = fadd fast float %4335, %4307
  %4337 = extractvalue %dx.types.CBufRet.f32 %4298, 3
  %4338 = fmul fast float %4334, %4337
  %4339 = fmul fast float %4336, %4337
  %4340 = call float @dx.op.unary.f32(i32 7, float %4338)  ; Saturate(value)
  %4341 = call float @dx.op.unary.f32(i32 7, float %4339)  ; Saturate(value)
  %4342 = fsub fast float 1.000000e+00, %4340
  %4343 = fsub fast float 1.000000e+00, %4341
  %4344 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %56, float %4342, float %4343, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4345 = extractvalue %dx.types.ResRet.f32 %4344, 0
  %4346 = fcmp fast ugt float %4345, 0.000000e+00
  br i1 %4346, label %4347, label %4650

; <label>:4347                                    ; preds = %4309
  %4348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4349 = extractvalue %dx.types.CBufRet.f32 %4348, 2
  %4350 = fmul fast float %4349, %4345
  %4351 = extractvalue %dx.types.CBufRet.f32 %4348, 3
  %4352 = fadd fast float %4351, %4350
  %4353 = extractvalue %dx.types.CBufRet.f32 %4314, 2
  %4354 = fadd fast float %4352, %4321
  %4355 = fmul fast float %4327, %4315
  %4356 = call float @dx.op.tertiary.f32(i32 46, float %4330, float %4318, float %4355)  ; FMad(a,b,c)
  %4357 = call float @dx.op.tertiary.f32(i32 46, float %4354, float %4353, float %4356)  ; FMad(a,b,c)
  %4358 = fsub fast float %4357, %4321
  %4359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4360 = extractvalue %dx.types.CBufRet.f32 %4359, 2
  %4361 = fsub fast float %4358, %4360
  %4362 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %56, float %4342, float %4343, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4363 = extractvalue %dx.types.ResRet.f32 %4362, 0
  %4364 = extractvalue %dx.types.ResRet.f32 %4362, 1
  %4365 = extractvalue %dx.types.ResRet.f32 %4362, 2
  %4366 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %56, float %4342, float %4343, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4367 = extractvalue %dx.types.ResRet.f32 %4366, 0
  %4368 = extractvalue %dx.types.ResRet.f32 %4366, 1
  %4369 = extractvalue %dx.types.ResRet.f32 %4366, 2
  %4370 = fadd fast float %4367, %4363
  %4371 = fmul fast float %4370, 0x3F847AE140000000
  %4372 = fadd fast float %4368, %4364
  %4373 = fmul fast float %4372, 0x3F847AE140000000
  %4374 = fadd fast float %4369, %4365
  %4375 = fmul fast float %4374, 0x3F847AE140000000
  br label %4650

; <label>:4376                                    ; preds = %4235
  %4377 = and i32 %258, 1
  %4378 = icmp eq i32 %4377, 0
  br i1 %4378, label %4650, label %4379

; <label>:4379                                    ; preds = %4376
  %4380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4381 = extractvalue %dx.types.CBufRet.f32 %4380, 0
  %4382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4383 = extractvalue %dx.types.CBufRet.f32 %4382, 0
  %4384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4385 = extractvalue %dx.types.CBufRet.f32 %4384, 0
  %4386 = extractvalue %dx.types.CBufRet.f32 %4380, 1
  %4387 = extractvalue %dx.types.CBufRet.f32 %4382, 1
  %4388 = extractvalue %dx.types.CBufRet.f32 %4384, 1
  %4389 = extractvalue %dx.types.CBufRet.f32 %4380, 3
  %4390 = extractvalue %dx.types.CBufRet.f32 %4382, 3
  %4391 = extractvalue %dx.types.CBufRet.f32 %4384, 3
  %4392 = fadd fast float %4389, %4295
  %4393 = fadd fast float %4390, %4296
  %4394 = fadd fast float %4391, %4297
  %4395 = fmul fast float %4392, %4381
  %4396 = call float @dx.op.tertiary.f32(i32 46, float %4393, float %4383, float %4395)  ; FMad(a,b,c)
  %4397 = call float @dx.op.tertiary.f32(i32 46, float %4394, float %4385, float %4396)  ; FMad(a,b,c)
  %4398 = fmul fast float %4392, %4386
  %4399 = call float @dx.op.tertiary.f32(i32 46, float %4393, float %4387, float %4398)  ; FMad(a,b,c)
  %4400 = call float @dx.op.tertiary.f32(i32 46, float %4394, float %4388, float %4399)  ; FMad(a,b,c)
  %4401 = fsub fast float %4397, %4389
  %4402 = fsub fast float %4400, %4390
  %4403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4404 = extractvalue %dx.types.CBufRet.f32 %4403, 0
  %4405 = extractvalue %dx.types.CBufRet.f32 %4403, 1
  %4406 = extractvalue %dx.types.CBufRet.f32 %4403, 2
  %4407 = extractvalue %dx.types.CBufRet.f32 %4403, 3
  %4408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4409 = extractvalue %dx.types.CBufRet.f32 %4408, 3
  %4410 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4411 = extractvalue %dx.types.CBufRet.i32 %4410, 0
  %4412 = extractvalue %dx.types.CBufRet.i32 %4410, 1
  %4413 = udiv i32 %4412, %4411
  %4414 = fsub fast float %4401, %4404
  %4415 = fsub fast float %4402, %4405
  %4416 = call float @dx.op.binary.f32(i32 35, float %4414, float 0.000000e+00)  ; FMax(a,b)
  %4417 = call float @dx.op.binary.f32(i32 35, float %4415, float 0.000000e+00)  ; FMax(a,b)
  %4418 = call float @dx.op.binary.f32(i32 36, float %4416, float %4406)  ; FMin(a,b)
  %4419 = call float @dx.op.binary.f32(i32 36, float %4417, float %4407)  ; FMin(a,b)
  %4420 = add i32 %4411, -1
  %4421 = add i32 %4413, -1
  %4422 = fmul fast float %4418, %4409
  %4423 = fmul fast float %4419, %4409
  %4424 = fptoui float %4422 to i32
  %4425 = fptoui float %4423 to i32
  %4426 = call i32 @dx.op.binary.i32(i32 40, i32 %4424, i32 %4420)  ; UMin(a,b)
  %4427 = call i32 @dx.op.binary.i32(i32 40, i32 %4425, i32 %4421)  ; UMin(a,b)
  %4428 = mul i32 %4427, %4411
  %4429 = add i32 %4428, %4426
  %4430 = shl i32 %4429, 2
  %4431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4430, i32 undef)  ; BufferLoad(srv,index,wot)
  %4432 = extractvalue %dx.types.ResRet.i32 %4431, 0
  %4433 = icmp eq i32 %4432, -1
  br i1 %4433, label %4650, label %4434

; <label>:4434                                    ; preds = %4379
  %4435 = mul i32 %4432, 148
  %4436 = add i32 %4435, 4
  %4437 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4436, i32 undef)  ; BufferLoad(srv,index,wot)
  %4438 = extractvalue %dx.types.ResRet.f32 %4437, 0
  %4439 = add i32 %4435, 8
  %4440 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4439, i32 undef)  ; BufferLoad(srv,index,wot)
  %4441 = extractvalue %dx.types.ResRet.f32 %4440, 0
  %4442 = add i32 %4435, 36
  %4443 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4442, i32 undef)  ; BufferLoad(srv,index,wot)
  %4444 = extractvalue %dx.types.ResRet.f32 %4443, 0
  %4445 = add i32 %4435, 60
  %4446 = add i32 %4435, 92
  %4447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4446, i32 undef)  ; BufferLoad(srv,index,wot)
  %4448 = extractvalue %dx.types.ResRet.i32 %4447, 0
  %4449 = add i32 %4435, 116
  %4450 = fsub fast float %4401, %4438
  %4451 = fsub fast float %4402, %4441
  %4452 = fmul fast float %4409, %4450
  %4453 = fmul fast float %4409, %4451
  %4454 = call float @dx.op.unary.f32(i32 7, float %4452)  ; Saturate(value)
  %4455 = call float @dx.op.unary.f32(i32 7, float %4453)  ; Saturate(value)
  %4456 = fsub fast float 1.000000e+00, %4455
  %4457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4458 = extractvalue %dx.types.CBufRet.f32 %4457, 2
  %4459 = call float @dx.op.unary.f32(i32 83, float %4454)  ; DerivCoarseX(value)
  %4460 = call float @dx.op.unary.f32(i32 83, float %4456)  ; DerivCoarseX(value)
  %4461 = call float @dx.op.unary.f32(i32 84, float %4454)  ; DerivCoarseY(value)
  %4462 = call float @dx.op.unary.f32(i32 84, float %4456)  ; DerivCoarseY(value)
  %4463 = fmul fast float %4459, %4458
  %4464 = fmul fast float %4460, %4458
  %4465 = fmul fast float %4461, %4458
  %4466 = fmul fast float %4462, %4458
  %4467 = call float @dx.op.dot2.f32(i32 54, float %4465, float %4466, float %4465, float %4466)  ; Dot2(ax,ay,bx,by)
  %4468 = call float @dx.op.dot2.f32(i32 54, float %4463, float %4464, float %4463, float %4464)  ; Dot2(ax,ay,bx,by)
  %4469 = call float @dx.op.binary.f32(i32 35, float %4468, float %4467)  ; FMax(a,b)
  %4470 = call float @dx.op.unary.f32(i32 23, float %4469)  ; Log(value)
  %4471 = fmul fast float %4470, 5.000000e-01
  %4472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4473 = extractvalue %dx.types.CBufRet.f32 %4472, 1
  %4474 = fadd fast float %4473, %4471
  %4475 = call float @dx.op.binary.f32(i32 35, float %4474, float 0.000000e+00)  ; FMax(a,b)
  %4476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4477 = extractvalue %dx.types.CBufRet.f32 %4476, 3
  %4478 = fadd fast float %4477, %4475
  %4479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4480 = extractvalue %dx.types.CBufRet.f32 %4479, 3
  %4481 = fadd fast float %4478, %4480
  %4482 = add i32 %4448, 0
  %4483 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4482, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4484 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4483, i32 0)  ; GetDimensions(handle,mipLevel)
  %4485 = extractvalue %dx.types.Dimensions %4484, 0
  %4486 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4485)  ; FirstbitLo(value)
  %4487 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4488 = extractvalue %dx.types.CBufRet.i32 %4487, 1
  %4489 = sub nsw i32 %4488, %4486
  %4490 = sitofp i32 %4489 to float
  %4491 = fsub fast float %4481, %4490
  %4492 = call float @dx.op.binary.f32(i32 35, float %4491, float 0.000000e+00)  ; FMax(a,b)
  %4493 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4483, %dx.types.Handle %54, float %4454, float %4456, float %4444, float undef, i32 0, i32 0, i32 undef, float %4492)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4494 = extractvalue %dx.types.ResRet.f32 %4493, 0
  %4495 = fcmp ule float %4494, 0x3FE0101020000000
  %4496 = extractvalue %dx.types.CBufRet.i32 %4487, 0
  %4497 = and i32 %4496, 128
  %4498 = icmp ne i32 %4497, 0
  %4499 = and i1 %4495, %4498
  br i1 %4499, label %4650, label %4500

; <label>:4500                                    ; preds = %4434
  %4501 = add i32 %4435, 20
  %4502 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4501, i32 undef)  ; BufferLoad(srv,index,wot)
  %4503 = extractvalue %dx.types.ResRet.f32 %4502, 0
  %4504 = add i32 %4435, 24
  %4505 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4504, i32 undef)  ; BufferLoad(srv,index,wot)
  %4506 = extractvalue %dx.types.ResRet.f32 %4505, 0
  %4507 = add i32 %4435, 40
  %4508 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4507, i32 undef)  ; BufferLoad(srv,index,wot)
  %4509 = extractvalue %dx.types.ResRet.f32 %4508, 0
  %4510 = add i32 %4435, 96
  %4511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4510, i32 undef)  ; BufferLoad(srv,index,wot)
  %4512 = extractvalue %dx.types.ResRet.i32 %4511, 0
  %4513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4514 = extractvalue %dx.types.CBufRet.f32 %4513, 2
  %4515 = fmul fast float %4514, %4454
  %4516 = fmul fast float %4514, %4456
  %4517 = extractvalue %dx.types.CBufRet.f32 %4513, 3
  %4518 = fadd fast float %4515, %4517
  %4519 = fadd fast float %4516, %4517
  %4520 = add i32 %4512, 0
  %4521 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4520, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4522 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4521, i32 0)  ; GetDimensions(handle,mipLevel)
  %4523 = extractvalue %dx.types.Dimensions %4522, 0
  %4524 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4523)  ; FirstbitLo(value)
  %4525 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4526 = extractvalue %dx.types.CBufRet.i32 %4525, 1
  %4527 = sub nsw i32 %4526, %4524
  %4528 = sitofp i32 %4527 to float
  %4529 = fsub fast float %4478, %4528
  %4530 = call float @dx.op.binary.f32(i32 35, float %4529, float 0.000000e+00)  ; FMax(a,b)
  %4531 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4521, %dx.types.Handle %54, float %4518, float %4519, float %4509, float undef, i32 0, i32 0, i32 undef, float %4530)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4532 = extractvalue %dx.types.ResRet.f32 %4531, 0
  %4533 = fmul fast float %4532, %4503
  %4534 = fadd fast float %4533, %4506
  %4535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4536 = extractvalue %dx.types.CBufRet.f32 %4535, 0
  %4537 = extractvalue %dx.types.CBufRet.f32 %4535, 1
  %4538 = extractvalue %dx.types.CBufRet.f32 %4535, 2
  %4539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4540 = extractvalue %dx.types.CBufRet.f32 %4539, 3
  %4541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4542 = extractvalue %dx.types.CBufRet.f32 %4541, 3
  %4543 = extractvalue %dx.types.CBufRet.f32 %4535, 3
  %4544 = fadd fast float %4540, %4401
  %4545 = fadd fast float %4542, %4402
  %4546 = fadd fast float %4534, %4543
  %4547 = fmul fast float %4544, %4536
  %4548 = call float @dx.op.tertiary.f32(i32 46, float %4545, float %4537, float %4547)  ; FMad(a,b,c)
  %4549 = call float @dx.op.tertiary.f32(i32 46, float %4546, float %4538, float %4548)  ; FMad(a,b,c)
  %4550 = fsub fast float %4549, %4543
  %4551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4552 = extractvalue %dx.types.CBufRet.f32 %4551, 2
  %4553 = fsub fast float %4550, %4552
  %4554 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4555 = extractvalue %dx.types.CBufRet.i32 %4554, 0
  %4556 = call i32 @dx.op.binary.i32(i32 40, i32 %4432, i32 %4555)  ; UMin(a,b)
  %4557 = mul i32 %4556, 36
  %4558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4557, i32 undef)  ; BufferLoad(srv,index,wot)
  %4559 = extractvalue %dx.types.ResRet.i32 %4558, 0
  %4560 = add i32 %4557, 4
  %4561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4562 = extractvalue %dx.types.CBufRet.f32 %4561, 0
  %4563 = fmul fast float %4562, %4454
  %4564 = fmul fast float %4562, %4456
  %4565 = extractvalue %dx.types.CBufRet.f32 %4561, 1
  %4566 = fadd fast float %4563, %4565
  %4567 = fadd fast float %4564, %4565
  %4568 = icmp eq i32 %4559, 0
  br i1 %4568, label %4637, label %4569

; <label>:4569                                    ; preds = %4500
  br label %4570

; <label>:4570                                    ; preds = %4627, %4569
  %4571 = phi float [ %4628, %4627 ], [ 0.000000e+00, %4569 ]
  %4572 = phi float [ %4629, %4627 ], [ 0.000000e+00, %4569 ]
  %4573 = phi float [ %4630, %4627 ], [ 0.000000e+00, %4569 ]
  %4574 = phi float [ %4631, %4627 ], [ 0.000000e+00, %4569 ]
  %4575 = phi float [ %4632, %4627 ], [ 0.000000e+00, %4569 ]
  %4576 = phi float [ %4633, %4627 ], [ 0.000000e+00, %4569 ]
  %4577 = phi i32 [ %4634, %4627 ], [ 0, %4569 ]
  %4578 = shl i32 %4577, 2
  %4579 = add i32 %4445, %4578
  %4580 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4579, i32 undef)  ; BufferLoad(srv,index,wot)
  %4581 = extractvalue %dx.types.ResRet.f32 %4580, 0
  %4582 = add i32 %4449, %4578
  %4583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4582, i32 undef)  ; BufferLoad(srv,index,wot)
  %4584 = extractvalue %dx.types.ResRet.i32 %4583, 0
  %4585 = add i32 %4584, 0
  %4586 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4585, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4587 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4586, i32 0)  ; GetDimensions(handle,mipLevel)
  %4588 = extractvalue %dx.types.Dimensions %4587, 0
  %4589 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4588)  ; FirstbitLo(value)
  %4590 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4591 = extractvalue %dx.types.CBufRet.i32 %4590, 1
  %4592 = sub nsw i32 %4591, %4589
  %4593 = sitofp i32 %4592 to float
  %4594 = fsub fast float %4478, %4593
  %4595 = call float @dx.op.binary.f32(i32 35, float %4594, float 0.000000e+00)  ; FMax(a,b)
  %4596 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4586, %dx.types.Handle %54, float %4566, float %4567, float %4581, float undef, i32 0, i32 0, i32 undef, float %4595)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4597 = extractvalue %dx.types.ResRet.f32 %4596, 0
  %4598 = fcmp fast ogt float %4597, 0.000000e+00
  br i1 %4598, label %4599, label %4627

; <label>:4599                                    ; preds = %4570
  %4600 = add i32 %4560, %4578
  %4601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4600, i32 undef)  ; BufferLoad(srv,index,wot)
  %4602 = extractvalue %dx.types.ResRet.i32 %4601, 0
  %4603 = and i32 %4602, 32767
  %4604 = mul nuw nsw i32 %4603, 928
  %4605 = add nuw nsw i32 %4604, 48
  %4606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4605, i32 undef)  ; BufferLoad(srv,index,wot)
  %4607 = extractvalue %dx.types.ResRet.f32 %4606, 0
  %4608 = extractvalue %dx.types.ResRet.f32 %4606, 1
  %4609 = extractvalue %dx.types.ResRet.f32 %4606, 2
  %4610 = add nuw nsw i32 %4604, 60
  %4611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4610, i32 undef)  ; BufferLoad(srv,index,wot)
  %4612 = extractvalue %dx.types.ResRet.f32 %4611, 0
  %4613 = extractvalue %dx.types.ResRet.f32 %4611, 1
  %4614 = extractvalue %dx.types.ResRet.f32 %4611, 2
  %4615 = fmul fast float %4607, %4597
  %4616 = fmul fast float %4608, %4597
  %4617 = fmul fast float %4609, %4597
  %4618 = fadd fast float %4615, %4571
  %4619 = fadd fast float %4616, %4572
  %4620 = fadd fast float %4617, %4573
  %4621 = fmul fast float %4612, %4597
  %4622 = fmul fast float %4613, %4597
  %4623 = fmul fast float %4614, %4597
  %4624 = fadd fast float %4621, %4574
  %4625 = fadd fast float %4622, %4575
  %4626 = fadd fast float %4623, %4576
  br label %4627

; <label>:4627                                    ; preds = %4599, %4570
  %4628 = phi float [ %4618, %4599 ], [ %4571, %4570 ]
  %4629 = phi float [ %4619, %4599 ], [ %4572, %4570 ]
  %4630 = phi float [ %4620, %4599 ], [ %4573, %4570 ]
  %4631 = phi float [ %4624, %4599 ], [ %4574, %4570 ]
  %4632 = phi float [ %4625, %4599 ], [ %4575, %4570 ]
  %4633 = phi float [ %4626, %4599 ], [ %4576, %4570 ]
  %4634 = add nuw i32 %4577, 1
  %4635 = icmp eq i32 %4634, %4559
  br i1 %4635, label %4636, label %4570

; <label>:4636                                    ; preds = %4627
  br label %4637

; <label>:4637                                    ; preds = %4636, %4500
  %4638 = phi float [ 0.000000e+00, %4500 ], [ %4628, %4636 ]
  %4639 = phi float [ 0.000000e+00, %4500 ], [ %4629, %4636 ]
  %4640 = phi float [ 0.000000e+00, %4500 ], [ %4630, %4636 ]
  %4641 = phi float [ 0.000000e+00, %4500 ], [ %4631, %4636 ]
  %4642 = phi float [ 0.000000e+00, %4500 ], [ %4632, %4636 ]
  %4643 = phi float [ 0.000000e+00, %4500 ], [ %4633, %4636 ]
  %4644 = fadd fast float %4641, %4638
  %4645 = fmul fast float %4644, 0x3F847AE140000000
  %4646 = fadd fast float %4642, %4639
  %4647 = fmul fast float %4646, 0x3F847AE140000000
  %4648 = fadd fast float %4643, %4640
  %4649 = fmul fast float %4648, 0x3F847AE140000000
  br label %4650

; <label>:4650                                    ; preds = %4637, %4434, %4379, %4376, %4347, %4309
  %4651 = phi float [ %4361, %4347 ], [ -1.310720e+05, %4309 ], [ %4553, %4637 ], [ -1.310720e+05, %4379 ], [ -1.310720e+05, %4434 ], [ -1.310720e+05, %4376 ]
  %4652 = phi float [ %4371, %4347 ], [ 0.000000e+00, %4309 ], [ %4645, %4637 ], [ 0.000000e+00, %4379 ], [ 0.000000e+00, %4434 ], [ 0.000000e+00, %4376 ]
  %4653 = phi float [ %4373, %4347 ], [ 0.000000e+00, %4309 ], [ %4647, %4637 ], [ 0.000000e+00, %4379 ], [ 0.000000e+00, %4434 ], [ 0.000000e+00, %4376 ]
  %4654 = phi float [ %4375, %4347 ], [ 0.000000e+00, %4309 ], [ %4649, %4637 ], [ 0.000000e+00, %4379 ], [ 0.000000e+00, %4434 ], [ 0.000000e+00, %4376 ]
  %4655 = phi i1 [ true, %4347 ], [ false, %4309 ], [ true, %4637 ], [ false, %4379 ], [ false, %4434 ], [ false, %4376 ]
  %4656 = and i32 %258, 3
  %4657 = icmp eq i32 %4656, 1
  %4658 = select i1 %4657, float 1.000000e+00, float 0.000000e+00
  %4659 = fsub fast float %4651, %209
  %4660 = call float @dx.op.unary.f32(i32 7, float %4659)  ; Saturate(value)
  %4661 = select i1 %4655, float %4660, float 1.000000e+00
  %4662 = fmul fast float %4661, %4658
  %4663 = icmp eq i32 %4656, 3
  %4664 = select i1 %4663, float 1.000000e+00, float %4662
  %4665 = call float @dx.op.binary.f32(i32 35, float %4251, float %4664)  ; FMax(a,b)
  %4666 = fcmp fast olt float %4664, 1.000000e+00
  %4667 = fcmp uge float %80, 0.000000e+00
  %4668 = and i1 %4667, %4666
  br i1 %4668, label %4669, label %4679

; <label>:4669                                    ; preds = %4650
  %4670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %80, float %81, float %82, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4671 = extractvalue %dx.types.ResRet.f32 %4670, 0
  %4672 = extractvalue %dx.types.ResRet.f32 %4670, 1
  %4673 = extractvalue %dx.types.ResRet.f32 %4670, 2
  %4674 = fadd fast float %4671, %4665
  %4675 = fcmp ule float %79, 0.000000e+00
  %4676 = call float @dx.op.dot3.f32(i32 55, float %76, float %77, float %78, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4677 = select i1 %4675, float %4676, float 1.000000e+00
  %4678 = fmul fast float %4677, %4673
  br label %4679

; <label>:4679                                    ; preds = %4669, %4650
  %4680 = phi float [ %4674, %4669 ], [ %4665, %4650 ]
  %4681 = phi float [ %4672, %4669 ], [ 0.000000e+00, %4650 ]
  %4682 = phi float [ %4678, %4669 ], [ 0.000000e+00, %4650 ]
  %4683 = call float @dx.op.unary.f32(i32 7, float %4680)  ; Saturate(value)
  %4684 = call float @dx.op.unary.f32(i32 7, float %4681)  ; Saturate(value)
  %4685 = call float @dx.op.unary.f32(i32 7, float %4682)  ; Saturate(value)
  %4686 = fcmp fast une float %4684, 0.000000e+00
  %4687 = fcmp fast une float %4685, 0.000000e+00
  %4688 = or i1 %4686, %4687
  br i1 %4688, label %4689, label %5248

; <label>:4689                                    ; preds = %4679
  br i1 %4686, label %4690, label %4963

; <label>:4690                                    ; preds = %4689
  %4691 = call float @dx.op.unary.f32(i32 23, float %4248)  ; Log(value)
  %4692 = fmul fast float %4691, 4.000000e+00
  %4693 = call float @dx.op.unary.f32(i32 21, float %4692)  ; Exp(value)
  %4694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4695 = extractvalue %dx.types.CBufRet.f32 %4694, 0
  %4696 = fmul fast float %4695, %66
  %4697 = fmul fast float %4695, %67
  %4698 = fmul fast float %4695, %68
  %4699 = call float @dx.op.unary.f32(i32 6, float %76)  ; FAbs(value)
  %4700 = call float @dx.op.unary.f32(i32 6, float %77)  ; FAbs(value)
  %4701 = call float @dx.op.unary.f32(i32 6, float %78)  ; FAbs(value)
  %4702 = call float @dx.op.unary.f32(i32 23, float %4699)  ; Log(value)
  %4703 = call float @dx.op.unary.f32(i32 23, float %4700)  ; Log(value)
  %4704 = call float @dx.op.unary.f32(i32 23, float %4701)  ; Log(value)
  %4705 = fmul fast float %4702, 4.000000e+00
  %4706 = fmul fast float %4703, 4.000000e+00
  %4707 = fmul fast float %4704, 4.000000e+00
  %4708 = call float @dx.op.unary.f32(i32 21, float %4705)  ; Exp(value)
  %4709 = call float @dx.op.unary.f32(i32 21, float %4706)  ; Exp(value)
  %4710 = call float @dx.op.unary.f32(i32 21, float %4707)  ; Exp(value)
  %4711 = fadd fast float %4709, %4708
  %4712 = fadd fast float %4711, %4710
  %4713 = fdiv fast float 1.000000e+00, %4712
  %4714 = fmul fast float %4713, %4708
  %4715 = fcmp fast ogt float %76, 0.000000e+00
  %4716 = fcmp fast ogt float %77, 0.000000e+00
  %4717 = fcmp fast ogt float %78, 0.000000e+00
  %4718 = fcmp fast olt float %76, 0.000000e+00
  %4719 = fcmp fast olt float %77, 0.000000e+00
  %4720 = fcmp fast olt float %78, 0.000000e+00
  %4721 = zext i1 %4715 to i32
  %4722 = zext i1 %4716 to i32
  %4723 = zext i1 %4717 to i32
  %4724 = zext i1 %4718 to i32
  %4725 = zext i1 %4719 to i32
  %4726 = zext i1 %4720 to i32
  %4727 = sub nsw i32 %4721, %4724
  %4728 = sub nsw i32 %4722, %4725
  %4729 = sub nsw i32 %4723, %4726
  %4730 = call float @dx.op.unary.f32(i32 83, float %4696)  ; DerivCoarseX(value)
  %4731 = call float @dx.op.unary.f32(i32 83, float %4697)  ; DerivCoarseX(value)
  %4732 = call float @dx.op.unary.f32(i32 83, float %4698)  ; DerivCoarseX(value)
  %4733 = call float @dx.op.unary.f32(i32 84, float %4696)  ; DerivCoarseY(value)
  %4734 = call float @dx.op.unary.f32(i32 84, float %4697)  ; DerivCoarseY(value)
  %4735 = call float @dx.op.unary.f32(i32 84, float %4698)  ; DerivCoarseY(value)
  %4736 = fcmp fast ole float %290, %4714
  %4737 = fmul fast float %4713, %4711
  %4738 = fcmp fast ole float %290, %4737
  %4739 = select i1 %4738, float %4698, float %4696
  %4740 = select i1 %4738, float %4696, float %4697
  %4741 = select i1 %4736, float %4697, float %4739
  %4742 = select i1 %4736, float %4698, float %4740
  %4743 = select i1 %4738, float %4732, float %4730
  %4744 = select i1 %4738, float %4730, float %4731
  %4745 = select i1 %4736, float %4731, float %4743
  %4746 = select i1 %4736, float %4732, float %4744
  %4747 = select i1 %4738, float %4735, float %4733
  %4748 = select i1 %4738, float %4733, float %4734
  %4749 = select i1 %4736, float %4734, float %4747
  %4750 = select i1 %4736, float %4735, float %4748
  %4751 = call float @dx.op.unary.f32(i32 27, float %4741)  ; Round_ni(value)
  %4752 = call float @dx.op.unary.f32(i32 27, float %4742)  ; Round_ni(value)
  %4753 = fptosi float %4751 to i32
  %4754 = fptosi float %4752 to i32
  %4755 = xor i32 %4754, %4753
  %4756 = sitofp i32 %4755 to float
  %4757 = fptosi float %4756 to i32
  %4758 = sitofp i32 %4757 to float
  %4759 = fmul fast float %4758, 0x3FE3C6EF40000000
  %4760 = frem fast float %4751, 2.560000e+02
  %4761 = frem fast float %4752, 2.560000e+02
  %4762 = fptoui float %4760 to i32
  %4763 = fptoui float %4761 to i32
  %4764 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4762, i32 %4763, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4765 = extractvalue %dx.types.ResRet.f32 %4764, 0
  %4766 = extractvalue %dx.types.ResRet.f32 %4764, 1
  %4767 = extractvalue %dx.types.ResRet.f32 %4764, 2
  %4768 = fadd fast float %4765, %4759
  %4769 = fadd fast float %4766, %4759
  %4770 = fadd fast float %4767, %4759
  %4771 = call float @dx.op.unary.f32(i32 22, float %4768)  ; Frc(value)
  %4772 = call float @dx.op.unary.f32(i32 22, float %4769)  ; Frc(value)
  %4773 = call float @dx.op.unary.f32(i32 22, float %4770)  ; Frc(value)
  %4774 = fmul fast float %4773, 0x401921FB60000000
  %4775 = call float @dx.op.unary.f32(i32 13, float %4774)  ; Sin(value)
  %4776 = call float @dx.op.unary.f32(i32 12, float %4774)  ; Cos(value)
  %4777 = fsub fast float -0.000000e+00, %4776
  %4778 = fmul fast float %4776, %4741
  %4779 = call float @dx.op.tertiary.f32(i32 46, float %4775, float %4742, float %4778)  ; FMad(a,b,c)
  %4780 = fmul fast float %4775, %4741
  %4781 = call float @dx.op.tertiary.f32(i32 46, float %4777, float %4742, float %4780)  ; FMad(a,b,c)
  %4782 = fadd fast float %4779, %4771
  %4783 = fadd fast float %4781, %4772
  %4784 = extractvalue %dx.types.CBufRet.f32 %4694, 3
  %4785 = bitcast float %4784 to i32
  %4786 = icmp eq i32 %4785, 0
  br i1 %4786, label %4825, label %4787

; <label>:4787                                    ; preds = %4690
  %4788 = add i32 %4785, 0
  %4789 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4788, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4790 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4789, %dx.types.Handle %117, float %4782, float %4783, float undef, float undef, i32 0, i32 0, i32 undef, float %4745, float %4746, float undef, float %4749, float %4750, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4791 = extractvalue %dx.types.ResRet.f32 %4790, 0
  %4792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4793 = extractvalue %dx.types.CBufRet.f32 %4792, 1
  %4794 = extractvalue %dx.types.CBufRet.f32 %4792, 2
  %4795 = fsub fast float 1.000000e+00, %4684
  %4796 = call float @dx.op.binary.f32(i32 35, float %4795, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4797 = bitcast float %4684 to i32
  %4798 = sitofp i32 %4797 to float
  %4799 = fadd fast float %4798, 0xC1CFBF8940000000
  %4800 = fmul fast float %4794, %4799
  %4801 = fadd fast float %4800, 0x41CFBF8940000000
  %4802 = fptosi float %4801 to i32
  %4803 = bitcast i32 %4802 to float
  %4804 = bitcast float %4796 to i32
  %4805 = sitofp i32 %4804 to float
  %4806 = fadd fast float %4805, 0xC1CFBF8940000000
  %4807 = fmul fast float %4806, %4794
  %4808 = fadd fast float %4807, 0x41CFBF8940000000
  %4809 = fptosi float %4808 to i32
  %4810 = bitcast i32 %4809 to float
  %4811 = fmul fast float %4803, %4793
  %4812 = fmul fast float %4810, %4793
  %4813 = fsub fast float %4796, %4811
  %4814 = fadd fast float %4812, %4796
  %4815 = call float @dx.op.unary.f32(i32 7, float %4813)  ; Saturate(value)
  %4816 = call float @dx.op.unary.f32(i32 7, float %4814)  ; Saturate(value)
  %4817 = fsub fast float %4791, %4815
  %4818 = fsub fast float %4816, %4815
  %4819 = bitcast float %4818 to i32
  %4820 = sub nsw i32 2129859010, %4819
  %4821 = bitcast i32 %4820 to float
  %4822 = fmul fast float %4821, %4817
  %4823 = call float @dx.op.unary.f32(i32 7, float %4822)  ; Saturate(value)
  %4824 = fcmp fast olt float %4823, 0x3F70101020000000
  br i1 %4824, label %4963, label %4825

; <label>:4825                                    ; preds = %4787, %4690
  %4826 = phi float [ %4823, %4787 ], [ %4684, %4690 ]
  %4827 = fmul fast float %4826, %4693
  %4828 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4829 = extractvalue %dx.types.CBufRet.i32 %4828, 1
  %4830 = extractvalue %dx.types.CBufRet.i32 %4828, 0
  %4831 = add i32 %4830, 0
  %4832 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4831, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4833 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4832, %dx.types.Handle %116, float %4782, float %4783, float undef, float undef, i32 0, i32 0, i32 undef, float %4745, float %4746, float undef, float %4749, float %4750, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4834 = extractvalue %dx.types.ResRet.f32 %4833, 0
  %4835 = extractvalue %dx.types.ResRet.f32 %4833, 1
  %4836 = extractvalue %dx.types.ResRet.f32 %4833, 2
  %4837 = extractvalue %dx.types.ResRet.f32 %4833, 3
  %4838 = and i32 %4829, 255
  %4839 = uitofp i32 %4838 to float
  %4840 = lshr i32 %4829, 8
  %4841 = and i32 %4840, 255
  %4842 = uitofp i32 %4841 to float
  %4843 = fmul fast float %4837, %4839
  %4844 = fadd fast float %4843, %4842
  %4845 = fmul fast float %4844, 0x3F70101000000000
  %4846 = fadd fast float %4845, 0xBFB99999A0000000
  %4847 = call float @dx.op.unary.f32(i32 7, float %4846)  ; Saturate(value)
  %4848 = fmul fast float %4847, 0x3FF1C71C80000000
  %4849 = call float @dx.op.binary.f32(i32 36, float %4845, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4850 = fsub fast float 1.000000e+00, %4848
  %4851 = call float @dx.op.unary.f32(i32 7, float %4850)  ; Saturate(value)
  %4852 = fmul fast float %4851, %4834
  %4853 = fmul fast float %4851, %4835
  %4854 = fmul fast float %4851, %4836
  %4855 = call float @dx.op.unary.f32(i32 7, float %4852)  ; Saturate(value)
  %4856 = call float @dx.op.unary.f32(i32 7, float %4853)  ; Saturate(value)
  %4857 = call float @dx.op.unary.f32(i32 7, float %4854)  ; Saturate(value)
  %4858 = fmul fast float %4848, %4834
  %4859 = fmul fast float %4848, %4835
  %4860 = fmul fast float %4848, %4836
  %4861 = fadd fast float %4858, %4849
  %4862 = fadd fast float %4859, %4849
  %4863 = fadd fast float %4860, %4849
  %4864 = call float @dx.op.unary.f32(i32 7, float %4861)  ; Saturate(value)
  %4865 = call float @dx.op.unary.f32(i32 7, float %4862)  ; Saturate(value)
  %4866 = call float @dx.op.unary.f32(i32 7, float %4863)  ; Saturate(value)
  %4867 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4868 = extractvalue %dx.types.CBufRet.i32 %4867, 3
  %4869 = extractvalue %dx.types.CBufRet.i32 %4867, 2
  %4870 = add i32 %4869, 0
  %4871 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4870, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4872 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4871, %dx.types.Handle %116, float %4782, float %4783, float undef, float undef, i32 0, i32 0, i32 undef, float %4745, float %4746, float undef, float %4749, float %4750, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4873 = extractvalue %dx.types.ResRet.f32 %4872, 0
  %4874 = extractvalue %dx.types.ResRet.f32 %4872, 1
  %4875 = extractvalue %dx.types.ResRet.f32 %4872, 2
  %4876 = extractvalue %dx.types.ResRet.f32 %4872, 3
  %4877 = and i32 %4868, 255
  %4878 = uitofp i32 %4877 to float
  %4879 = lshr i32 %4868, 8
  %4880 = and i32 %4879, 255
  %4881 = uitofp i32 %4880 to float
  %4882 = lshr i32 %4868, 16
  %4883 = and i32 %4882, 255
  %4884 = uitofp i32 %4883 to float
  %4885 = fmul fast float %4884, 0x3F70101000000000
  %4886 = fmul fast float %4873, %4878
  %4887 = fadd fast float %4886, %4881
  %4888 = fmul fast float %4887, 0x3F70101000000000
  %4889 = fadd fast float %4874, -5.000000e-01
  %4890 = fadd fast float %4876, -5.000000e-01
  %4891 = fmul fast float %4889, %4885
  %4892 = fmul fast float %4890, %4885
  %4893 = fadd fast float %4891, 5.000000e-01
  %4894 = fadd fast float %4892, 5.000000e-01
  %4895 = fmul fast float %4893, 2.000000e+00
  %4896 = fadd fast float %4895, -1.000000e+00
  %4897 = fmul fast float %4894, 2.000000e+00
  %4898 = fadd fast float %4897, -1.000000e+00
  %4899 = fadd fast float %4896, %4898
  %4900 = fmul fast float %4899, 5.000000e-01
  %4901 = fsub fast float %4896, %4898
  %4902 = fmul fast float %4901, 5.000000e-01
  %4903 = call float @dx.op.unary.f32(i32 6, float %4900)  ; FAbs(value)
  %4904 = fsub fast float 1.000000e+00, %4903
  %4905 = call float @dx.op.unary.f32(i32 6, float %4902)  ; FAbs(value)
  %4906 = fsub fast float %4904, %4905
  %4907 = call float @dx.op.dot3.f32(i32 55, float %4900, float %4902, float %4906, float %4900, float %4902, float %4906)  ; Dot3(ax,ay,az,bx,by,bz)
  %4908 = call float @dx.op.unary.f32(i32 25, float %4907)  ; Rsqrt(value)
  %4909 = fmul fast float %4900, %4908
  %4910 = fmul fast float %4902, %4908
  %4911 = select i1 %4738, i32 %4728, i32 %4729
  %4912 = select i1 %4736, i32 %4727, i32 %4911
  %4913 = sitofp i32 %4912 to float
  %4914 = fmul fast float %4906, %4913
  %4915 = fmul fast float %4914, %4908
  %4916 = select i1 %4738, float %4915, float %4910
  %4917 = select i1 %4738, float %4910, float %4915
  %4918 = select i1 %4736, float %4915, float %4909
  %4919 = select i1 %4736, float %4910, float %4916
  %4920 = select i1 %4736, float %4909, float %4917
  %4921 = fsub fast float %4855, %4288
  %4922 = fsub fast float %4856, %4289
  %4923 = fsub fast float %4857, %4290
  %4924 = fmul fast float %4921, %4827
  %4925 = fmul fast float %4922, %4827
  %4926 = fmul fast float %4923, %4827
  %4927 = fadd fast float %4924, %4288
  %4928 = fadd fast float %4925, %4289
  %4929 = fadd fast float %4926, %4290
  %4930 = fsub fast float %4864, %4273
  %4931 = fsub fast float %4865, %4274
  %4932 = fsub fast float %4866, %4275
  %4933 = fmul fast float %4930, %4827
  %4934 = fmul fast float %4931, %4827
  %4935 = fmul fast float %4932, %4827
  %4936 = fadd fast float %4933, %4273
  %4937 = fadd fast float %4934, %4274
  %4938 = fadd fast float %4935, %4275
  %4939 = fadd fast float %4918, %4236
  %4940 = fadd fast float %4919, %4237
  %4941 = fadd fast float %4920, %4238
  %4942 = call float @dx.op.dot3.f32(i32 55, float %4939, float %4940, float %4941, float %4939, float %4940, float %4941)  ; Dot3(ax,ay,az,bx,by,bz)
  %4943 = call float @dx.op.unary.f32(i32 25, float %4942)  ; Rsqrt(value)
  %4944 = fmul fast float %4939, %4943
  %4945 = fmul fast float %4940, %4943
  %4946 = fmul fast float %4941, %4943
  %4947 = fsub fast float %4944, %4236
  %4948 = fsub fast float %4945, %4237
  %4949 = fsub fast float %4946, %4238
  %4950 = fmul fast float %4947, %4827
  %4951 = fmul fast float %4948, %4827
  %4952 = fmul fast float %4949, %4827
  %4953 = fadd fast float %4950, %4236
  %4954 = fadd fast float %4951, %4237
  %4955 = fadd fast float %4952, %4238
  %4956 = call float @dx.op.binary.f32(i32 36, float %4248, float %4875)  ; FMin(a,b)
  %4957 = fsub fast float %4956, %4248
  %4958 = fmul fast float %4957, %4827
  %4959 = fadd fast float %4958, %4248
  %4960 = fsub fast float %4888, %4276
  %4961 = fmul fast float %4960, %4827
  %4962 = fadd fast float %4961, %4276
  br label %4963

; <label>:4963                                    ; preds = %4825, %4787, %4689
  %4964 = phi float [ %4953, %4825 ], [ %4236, %4787 ], [ %4236, %4689 ]
  %4965 = phi float [ %4954, %4825 ], [ %4237, %4787 ], [ %4237, %4689 ]
  %4966 = phi float [ %4955, %4825 ], [ %4238, %4787 ], [ %4238, %4689 ]
  %4967 = phi float [ %4927, %4825 ], [ %4288, %4787 ], [ %4288, %4689 ]
  %4968 = phi float [ %4928, %4825 ], [ %4289, %4787 ], [ %4289, %4689 ]
  %4969 = phi float [ %4929, %4825 ], [ %4290, %4787 ], [ %4290, %4689 ]
  %4970 = phi float [ %4936, %4825 ], [ %4273, %4787 ], [ %4273, %4689 ]
  %4971 = phi float [ %4937, %4825 ], [ %4274, %4787 ], [ %4274, %4689 ]
  %4972 = phi float [ %4938, %4825 ], [ %4275, %4787 ], [ %4275, %4689 ]
  %4973 = phi float [ %4962, %4825 ], [ %4276, %4787 ], [ %4276, %4689 ]
  %4974 = phi float [ %4959, %4825 ], [ %4248, %4787 ], [ %4248, %4689 ]
  br i1 %4687, label %4975, label %5248

; <label>:4975                                    ; preds = %4963
  %4976 = call float @dx.op.unary.f32(i32 23, float %4974)  ; Log(value)
  %4977 = fmul fast float %4976, 4.000000e+00
  %4978 = call float @dx.op.unary.f32(i32 21, float %4977)  ; Exp(value)
  %4979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4980 = extractvalue %dx.types.CBufRet.f32 %4979, 0
  %4981 = fmul fast float %4980, %66
  %4982 = fmul fast float %4980, %67
  %4983 = fmul fast float %4980, %68
  %4984 = call float @dx.op.unary.f32(i32 6, float %76)  ; FAbs(value)
  %4985 = call float @dx.op.unary.f32(i32 6, float %77)  ; FAbs(value)
  %4986 = call float @dx.op.unary.f32(i32 6, float %78)  ; FAbs(value)
  %4987 = call float @dx.op.unary.f32(i32 23, float %4984)  ; Log(value)
  %4988 = call float @dx.op.unary.f32(i32 23, float %4985)  ; Log(value)
  %4989 = call float @dx.op.unary.f32(i32 23, float %4986)  ; Log(value)
  %4990 = fmul fast float %4987, 4.000000e+00
  %4991 = fmul fast float %4988, 4.000000e+00
  %4992 = fmul fast float %4989, 4.000000e+00
  %4993 = call float @dx.op.unary.f32(i32 21, float %4990)  ; Exp(value)
  %4994 = call float @dx.op.unary.f32(i32 21, float %4991)  ; Exp(value)
  %4995 = call float @dx.op.unary.f32(i32 21, float %4992)  ; Exp(value)
  %4996 = fadd fast float %4994, %4993
  %4997 = fadd fast float %4996, %4995
  %4998 = fdiv fast float 1.000000e+00, %4997
  %4999 = fmul fast float %4998, %4993
  %5000 = fcmp fast ogt float %76, 0.000000e+00
  %5001 = fcmp fast ogt float %77, 0.000000e+00
  %5002 = fcmp fast ogt float %78, 0.000000e+00
  %5003 = fcmp fast olt float %76, 0.000000e+00
  %5004 = fcmp fast olt float %77, 0.000000e+00
  %5005 = fcmp fast olt float %78, 0.000000e+00
  %5006 = zext i1 %5000 to i32
  %5007 = zext i1 %5001 to i32
  %5008 = zext i1 %5002 to i32
  %5009 = zext i1 %5003 to i32
  %5010 = zext i1 %5004 to i32
  %5011 = zext i1 %5005 to i32
  %5012 = sub nsw i32 %5006, %5009
  %5013 = sub nsw i32 %5007, %5010
  %5014 = sub nsw i32 %5008, %5011
  %5015 = call float @dx.op.unary.f32(i32 83, float %4981)  ; DerivCoarseX(value)
  %5016 = call float @dx.op.unary.f32(i32 83, float %4982)  ; DerivCoarseX(value)
  %5017 = call float @dx.op.unary.f32(i32 83, float %4983)  ; DerivCoarseX(value)
  %5018 = call float @dx.op.unary.f32(i32 84, float %4981)  ; DerivCoarseY(value)
  %5019 = call float @dx.op.unary.f32(i32 84, float %4982)  ; DerivCoarseY(value)
  %5020 = call float @dx.op.unary.f32(i32 84, float %4983)  ; DerivCoarseY(value)
  %5021 = fcmp fast ole float %290, %4999
  %5022 = fmul fast float %4998, %4996
  %5023 = fcmp fast ole float %290, %5022
  %5024 = select i1 %5023, float %4983, float %4981
  %5025 = select i1 %5023, float %4981, float %4982
  %5026 = select i1 %5021, float %4982, float %5024
  %5027 = select i1 %5021, float %4983, float %5025
  %5028 = select i1 %5023, float %5017, float %5015
  %5029 = select i1 %5023, float %5015, float %5016
  %5030 = select i1 %5021, float %5016, float %5028
  %5031 = select i1 %5021, float %5017, float %5029
  %5032 = select i1 %5023, float %5020, float %5018
  %5033 = select i1 %5023, float %5018, float %5019
  %5034 = select i1 %5021, float %5019, float %5032
  %5035 = select i1 %5021, float %5020, float %5033
  %5036 = call float @dx.op.unary.f32(i32 27, float %5026)  ; Round_ni(value)
  %5037 = call float @dx.op.unary.f32(i32 27, float %5027)  ; Round_ni(value)
  %5038 = fptosi float %5036 to i32
  %5039 = fptosi float %5037 to i32
  %5040 = xor i32 %5039, %5038
  %5041 = sitofp i32 %5040 to float
  %5042 = fptosi float %5041 to i32
  %5043 = sitofp i32 %5042 to float
  %5044 = fmul fast float %5043, 0x3FE3C6EF40000000
  %5045 = frem fast float %5036, 2.560000e+02
  %5046 = frem fast float %5037, 2.560000e+02
  %5047 = fptoui float %5045 to i32
  %5048 = fptoui float %5046 to i32
  %5049 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %5047, i32 %5048, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5050 = extractvalue %dx.types.ResRet.f32 %5049, 0
  %5051 = extractvalue %dx.types.ResRet.f32 %5049, 1
  %5052 = extractvalue %dx.types.ResRet.f32 %5049, 2
  %5053 = fadd fast float %5050, %5044
  %5054 = fadd fast float %5051, %5044
  %5055 = fadd fast float %5052, %5044
  %5056 = call float @dx.op.unary.f32(i32 22, float %5053)  ; Frc(value)
  %5057 = call float @dx.op.unary.f32(i32 22, float %5054)  ; Frc(value)
  %5058 = call float @dx.op.unary.f32(i32 22, float %5055)  ; Frc(value)
  %5059 = fmul fast float %5058, 0x401921FB60000000
  %5060 = call float @dx.op.unary.f32(i32 13, float %5059)  ; Sin(value)
  %5061 = call float @dx.op.unary.f32(i32 12, float %5059)  ; Cos(value)
  %5062 = fsub fast float -0.000000e+00, %5061
  %5063 = fmul fast float %5061, %5026
  %5064 = call float @dx.op.tertiary.f32(i32 46, float %5060, float %5027, float %5063)  ; FMad(a,b,c)
  %5065 = fmul fast float %5060, %5026
  %5066 = call float @dx.op.tertiary.f32(i32 46, float %5062, float %5027, float %5065)  ; FMad(a,b,c)
  %5067 = fadd fast float %5064, %5056
  %5068 = fadd fast float %5066, %5057
  %5069 = extractvalue %dx.types.CBufRet.f32 %4979, 3
  %5070 = bitcast float %5069 to i32
  %5071 = icmp eq i32 %5070, 0
  br i1 %5071, label %5110, label %5072

; <label>:5072                                    ; preds = %4975
  %5073 = add i32 %5070, 0
  %5074 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5073, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5075 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5074, %dx.types.Handle %117, float %5067, float %5068, float undef, float undef, i32 0, i32 0, i32 undef, float %5030, float %5031, float undef, float %5034, float %5035, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5076 = extractvalue %dx.types.ResRet.f32 %5075, 0
  %5077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5078 = extractvalue %dx.types.CBufRet.f32 %5077, 1
  %5079 = extractvalue %dx.types.CBufRet.f32 %5077, 2
  %5080 = fsub fast float 1.000000e+00, %4685
  %5081 = call float @dx.op.binary.f32(i32 35, float %5080, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5082 = bitcast float %4685 to i32
  %5083 = sitofp i32 %5082 to float
  %5084 = fadd fast float %5083, 0xC1CFBF8940000000
  %5085 = fmul fast float %5079, %5084
  %5086 = fadd fast float %5085, 0x41CFBF8940000000
  %5087 = fptosi float %5086 to i32
  %5088 = bitcast i32 %5087 to float
  %5089 = bitcast float %5081 to i32
  %5090 = sitofp i32 %5089 to float
  %5091 = fadd fast float %5090, 0xC1CFBF8940000000
  %5092 = fmul fast float %5091, %5079
  %5093 = fadd fast float %5092, 0x41CFBF8940000000
  %5094 = fptosi float %5093 to i32
  %5095 = bitcast i32 %5094 to float
  %5096 = fmul fast float %5088, %5078
  %5097 = fmul fast float %5095, %5078
  %5098 = fsub fast float %5081, %5096
  %5099 = fadd fast float %5097, %5081
  %5100 = call float @dx.op.unary.f32(i32 7, float %5098)  ; Saturate(value)
  %5101 = call float @dx.op.unary.f32(i32 7, float %5099)  ; Saturate(value)
  %5102 = fsub fast float %5076, %5100
  %5103 = fsub fast float %5101, %5100
  %5104 = bitcast float %5103 to i32
  %5105 = sub nsw i32 2129859010, %5104
  %5106 = bitcast i32 %5105 to float
  %5107 = fmul fast float %5106, %5102
  %5108 = call float @dx.op.unary.f32(i32 7, float %5107)  ; Saturate(value)
  %5109 = fcmp fast olt float %5108, 0x3F70101020000000
  br i1 %5109, label %5248, label %5110

; <label>:5110                                    ; preds = %5072, %4975
  %5111 = phi float [ %5108, %5072 ], [ %4685, %4975 ]
  %5112 = fmul fast float %5111, %4978
  %5113 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5114 = extractvalue %dx.types.CBufRet.i32 %5113, 1
  %5115 = extractvalue %dx.types.CBufRet.i32 %5113, 0
  %5116 = add i32 %5115, 0
  %5117 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5116, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5118 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5117, %dx.types.Handle %116, float %5067, float %5068, float undef, float undef, i32 0, i32 0, i32 undef, float %5030, float %5031, float undef, float %5034, float %5035, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5119 = extractvalue %dx.types.ResRet.f32 %5118, 0
  %5120 = extractvalue %dx.types.ResRet.f32 %5118, 1
  %5121 = extractvalue %dx.types.ResRet.f32 %5118, 2
  %5122 = extractvalue %dx.types.ResRet.f32 %5118, 3
  %5123 = and i32 %5114, 255
  %5124 = uitofp i32 %5123 to float
  %5125 = lshr i32 %5114, 8
  %5126 = and i32 %5125, 255
  %5127 = uitofp i32 %5126 to float
  %5128 = fmul fast float %5122, %5124
  %5129 = fadd fast float %5128, %5127
  %5130 = fmul fast float %5129, 0x3F70101000000000
  %5131 = fadd fast float %5130, 0xBFB99999A0000000
  %5132 = call float @dx.op.unary.f32(i32 7, float %5131)  ; Saturate(value)
  %5133 = fmul fast float %5132, 0x3FF1C71C80000000
  %5134 = call float @dx.op.binary.f32(i32 36, float %5130, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5135 = fsub fast float 1.000000e+00, %5133
  %5136 = call float @dx.op.unary.f32(i32 7, float %5135)  ; Saturate(value)
  %5137 = fmul fast float %5136, %5119
  %5138 = fmul fast float %5136, %5120
  %5139 = fmul fast float %5136, %5121
  %5140 = call float @dx.op.unary.f32(i32 7, float %5137)  ; Saturate(value)
  %5141 = call float @dx.op.unary.f32(i32 7, float %5138)  ; Saturate(value)
  %5142 = call float @dx.op.unary.f32(i32 7, float %5139)  ; Saturate(value)
  %5143 = fmul fast float %5133, %5119
  %5144 = fmul fast float %5133, %5120
  %5145 = fmul fast float %5133, %5121
  %5146 = fadd fast float %5143, %5134
  %5147 = fadd fast float %5144, %5134
  %5148 = fadd fast float %5145, %5134
  %5149 = call float @dx.op.unary.f32(i32 7, float %5146)  ; Saturate(value)
  %5150 = call float @dx.op.unary.f32(i32 7, float %5147)  ; Saturate(value)
  %5151 = call float @dx.op.unary.f32(i32 7, float %5148)  ; Saturate(value)
  %5152 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5153 = extractvalue %dx.types.CBufRet.i32 %5152, 3
  %5154 = extractvalue %dx.types.CBufRet.i32 %5152, 2
  %5155 = add i32 %5154, 0
  %5156 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5155, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5157 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5156, %dx.types.Handle %116, float %5067, float %5068, float undef, float undef, i32 0, i32 0, i32 undef, float %5030, float %5031, float undef, float %5034, float %5035, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5158 = extractvalue %dx.types.ResRet.f32 %5157, 0
  %5159 = extractvalue %dx.types.ResRet.f32 %5157, 1
  %5160 = extractvalue %dx.types.ResRet.f32 %5157, 2
  %5161 = extractvalue %dx.types.ResRet.f32 %5157, 3
  %5162 = and i32 %5153, 255
  %5163 = uitofp i32 %5162 to float
  %5164 = lshr i32 %5153, 8
  %5165 = and i32 %5164, 255
  %5166 = uitofp i32 %5165 to float
  %5167 = lshr i32 %5153, 16
  %5168 = and i32 %5167, 255
  %5169 = uitofp i32 %5168 to float
  %5170 = fmul fast float %5169, 0x3F70101000000000
  %5171 = fmul fast float %5158, %5163
  %5172 = fadd fast float %5171, %5166
  %5173 = fmul fast float %5172, 0x3F70101000000000
  %5174 = fadd fast float %5159, -5.000000e-01
  %5175 = fadd fast float %5161, -5.000000e-01
  %5176 = fmul fast float %5174, %5170
  %5177 = fmul fast float %5175, %5170
  %5178 = fadd fast float %5176, 5.000000e-01
  %5179 = fadd fast float %5177, 5.000000e-01
  %5180 = fmul fast float %5178, 2.000000e+00
  %5181 = fadd fast float %5180, -1.000000e+00
  %5182 = fmul fast float %5179, 2.000000e+00
  %5183 = fadd fast float %5182, -1.000000e+00
  %5184 = fadd fast float %5181, %5183
  %5185 = fmul fast float %5184, 5.000000e-01
  %5186 = fsub fast float %5181, %5183
  %5187 = fmul fast float %5186, 5.000000e-01
  %5188 = call float @dx.op.unary.f32(i32 6, float %5185)  ; FAbs(value)
  %5189 = fsub fast float 1.000000e+00, %5188
  %5190 = call float @dx.op.unary.f32(i32 6, float %5187)  ; FAbs(value)
  %5191 = fsub fast float %5189, %5190
  %5192 = call float @dx.op.dot3.f32(i32 55, float %5185, float %5187, float %5191, float %5185, float %5187, float %5191)  ; Dot3(ax,ay,az,bx,by,bz)
  %5193 = call float @dx.op.unary.f32(i32 25, float %5192)  ; Rsqrt(value)
  %5194 = fmul fast float %5185, %5193
  %5195 = fmul fast float %5187, %5193
  %5196 = select i1 %5023, i32 %5013, i32 %5014
  %5197 = select i1 %5021, i32 %5012, i32 %5196
  %5198 = sitofp i32 %5197 to float
  %5199 = fmul fast float %5191, %5198
  %5200 = fmul fast float %5199, %5193
  %5201 = select i1 %5023, float %5200, float %5195
  %5202 = select i1 %5023, float %5195, float %5200
  %5203 = select i1 %5021, float %5200, float %5194
  %5204 = select i1 %5021, float %5195, float %5201
  %5205 = select i1 %5021, float %5194, float %5202
  %5206 = fsub fast float %5140, %4967
  %5207 = fsub fast float %5141, %4968
  %5208 = fsub fast float %5142, %4969
  %5209 = fmul fast float %5206, %5112
  %5210 = fmul fast float %5207, %5112
  %5211 = fmul fast float %5208, %5112
  %5212 = fadd fast float %5209, %4967
  %5213 = fadd fast float %5210, %4968
  %5214 = fadd fast float %5211, %4969
  %5215 = fsub fast float %5149, %4970
  %5216 = fsub fast float %5150, %4971
  %5217 = fsub fast float %5151, %4972
  %5218 = fmul fast float %5215, %5112
  %5219 = fmul fast float %5216, %5112
  %5220 = fmul fast float %5217, %5112
  %5221 = fadd fast float %5218, %4970
  %5222 = fadd fast float %5219, %4971
  %5223 = fadd fast float %5220, %4972
  %5224 = fadd fast float %5203, %4964
  %5225 = fadd fast float %5204, %4965
  %5226 = fadd fast float %5205, %4966
  %5227 = call float @dx.op.dot3.f32(i32 55, float %5224, float %5225, float %5226, float %5224, float %5225, float %5226)  ; Dot3(ax,ay,az,bx,by,bz)
  %5228 = call float @dx.op.unary.f32(i32 25, float %5227)  ; Rsqrt(value)
  %5229 = fmul fast float %5224, %5228
  %5230 = fmul fast float %5225, %5228
  %5231 = fmul fast float %5226, %5228
  %5232 = fsub fast float %5229, %4964
  %5233 = fsub fast float %5230, %4965
  %5234 = fsub fast float %5231, %4966
  %5235 = fmul fast float %5232, %5112
  %5236 = fmul fast float %5233, %5112
  %5237 = fmul fast float %5234, %5112
  %5238 = fadd fast float %5235, %4964
  %5239 = fadd fast float %5236, %4965
  %5240 = fadd fast float %5237, %4966
  %5241 = call float @dx.op.binary.f32(i32 36, float %4974, float %5160)  ; FMin(a,b)
  %5242 = fsub fast float %5241, %4974
  %5243 = fmul fast float %5242, %5112
  %5244 = fadd fast float %5243, %4974
  %5245 = fsub fast float %5173, %4973
  %5246 = fmul fast float %5245, %5112
  %5247 = fadd fast float %5246, %4973
  br label %5248

; <label>:5248                                    ; preds = %5110, %5072, %4963, %4679
  %5249 = phi float [ %5238, %5110 ], [ %4964, %5072 ], [ %4964, %4963 ], [ %4236, %4679 ]
  %5250 = phi float [ %5239, %5110 ], [ %4965, %5072 ], [ %4965, %4963 ], [ %4237, %4679 ]
  %5251 = phi float [ %5240, %5110 ], [ %4966, %5072 ], [ %4966, %4963 ], [ %4238, %4679 ]
  %5252 = phi float [ %5212, %5110 ], [ %4967, %5072 ], [ %4967, %4963 ], [ %4288, %4679 ]
  %5253 = phi float [ %5213, %5110 ], [ %4968, %5072 ], [ %4968, %4963 ], [ %4289, %4679 ]
  %5254 = phi float [ %5214, %5110 ], [ %4969, %5072 ], [ %4969, %4963 ], [ %4290, %4679 ]
  %5255 = phi float [ %5221, %5110 ], [ %4970, %5072 ], [ %4970, %4963 ], [ %4273, %4679 ]
  %5256 = phi float [ %5222, %5110 ], [ %4971, %5072 ], [ %4971, %4963 ], [ %4274, %4679 ]
  %5257 = phi float [ %5223, %5110 ], [ %4972, %5072 ], [ %4972, %4963 ], [ %4275, %4679 ]
  %5258 = phi float [ %5247, %5110 ], [ %4973, %5072 ], [ %4973, %4963 ], [ %4276, %4679 ]
  %5259 = phi float [ %5244, %5110 ], [ %4974, %5072 ], [ %4974, %4963 ], [ %4248, %4679 ]
  %5260 = fcmp fast une float %4683, 0.000000e+00
  %5261 = call float @dx.op.dot3.f32(i32 55, float %207, float %208, float %209, float %207, float %208, float %209)  ; Dot3(ax,ay,az,bx,by,bz)
  %5262 = call float @dx.op.unary.f32(i32 25, float %5261)  ; Rsqrt(value)
  br i1 %5260, label %5270, label %5263

; <label>:5263                                    ; preds = %5248
  %5264 = fmul fast float %5262, %207
  %5265 = fmul fast float %5262, %208
  %5266 = fmul fast float %5262, %209
  %5267 = fsub fast float -0.000000e+00, %5264
  %5268 = fsub fast float -0.000000e+00, %5265
  %5269 = fsub fast float -0.000000e+00, %5266
  br label %5437

; <label>:5270                                    ; preds = %5248
  %5271 = fmul fast float %207, %5262
  %5272 = fsub fast float -0.000000e+00, %5271
  %5273 = fmul fast float %208, %5262
  %5274 = fsub fast float -0.000000e+00, %5273
  %5275 = fmul fast float %209, %5262
  %5276 = fsub fast float -0.000000e+00, %5275
  %5277 = call float @dx.op.dot3.f32(i32 55, float %5272, float %5274, float %5276, float %127, float %128, float %129)  ; Dot3(ax,ay,az,bx,by,bz)
  %5278 = fmul fast float %4683, 2.500000e+00
  %5279 = call float @dx.op.unary.f32(i32 7, float %5278)  ; Saturate(value)
  %5280 = fmul fast float %4683, 0x4013FFFFE0000000
  %5281 = fadd fast float %5280, 0xBFFFFFFFE0000000
  %5282 = call float @dx.op.unary.f32(i32 7, float %5281)  ; Saturate(value)
  %5283 = fmul fast float %4683, 0x4004000020000000
  %5284 = fadd fast float %5283, 0xBFF8000040000000
  %5285 = call float @dx.op.unary.f32(i32 7, float %5284)  ; Saturate(value)
  %5286 = fmul fast float %4255, 1.000000e+01
  %5287 = call float @dx.op.unary.f32(i32 7, float %5286)  ; Saturate(value)
  %5288 = fmul fast float %5287, 2.000000e+00
  %5289 = fsub fast float 3.000000e+00, %5288
  %5290 = fmul fast float %5287, %5287
  %5291 = fmul fast float %5290, %5289
  %5292 = fsub fast float 1.000000e+00, %5291
  %5293 = fsub fast float 0x3FE3333340000000, %5258
  %5294 = fmul fast float %5293, 0x400AAAAAA0000000
  %5295 = call float @dx.op.unary.f32(i32 7, float %5294)  ; Saturate(value)
  %5296 = fmul fast float %5292, %5295
  %5297 = fmul fast float %5252, 0x3FEA2B8620000000
  %5298 = fmul fast float %5253, 0x3FEA2B8620000000
  %5299 = fmul fast float %5254, 0x3FEA2B8620000000
  %5300 = fadd fast float %5297, 0x3FC81DFBA0000000
  %5301 = fmul fast float %5300, %5252
  %5302 = fadd fast float %5301, 0x3F910E6020000000
  %5303 = fadd fast float %5298, 0x3FC81DFBA0000000
  %5304 = fmul fast float %5303, %5253
  %5305 = fadd fast float %5304, 0x3F910E6020000000
  %5306 = fadd fast float %5299, 0x3FC81DFBA0000000
  %5307 = fmul fast float %5306, %5254
  %5308 = fadd fast float %5307, 0x3F910E6020000000
  %5309 = call float @dx.op.unary.f32(i32 7, float %5302)  ; Saturate(value)
  %5310 = call float @dx.op.unary.f32(i32 7, float %5305)  ; Saturate(value)
  %5311 = call float @dx.op.unary.f32(i32 7, float %5308)  ; Saturate(value)
  %5312 = fsub fast float %5309, %5252
  %5313 = fsub fast float %5310, %5253
  %5314 = fsub fast float %5311, %5254
  %5315 = fmul fast float %5312, %5279
  %5316 = fmul fast float %5315, %5296
  %5317 = fmul fast float %5313, %5279
  %5318 = fmul fast float %5317, %5296
  %5319 = fmul fast float %5314, %5279
  %5320 = fmul fast float %5319, %5296
  %5321 = fadd fast float %5316, %5252
  %5322 = fadd fast float %5318, %5253
  %5323 = fadd fast float %5320, %5254
  %5324 = fmul fast float %5259, %5259
  %5325 = fmul fast float %5324, %5324
  %5326 = fadd fast float %5282, 1.000000e+00
  %5327 = fsub fast float %5326, %5296
  %5328 = call float @dx.op.unary.f32(i32 7, float %5327)  ; Saturate(value)
  %5329 = call float @dx.op.dot3.f32(i32 55, float %127, float %128, float %129, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5330 = call float @dx.op.unary.f32(i32 7, float %5329)  ; Saturate(value)
  %5331 = fsub fast float 1.000000e+00, %5325
  %5332 = call float @dx.op.binary.f32(i32 36, float %5328, float %5331)  ; FMin(a,b)
  %5333 = call float @dx.op.unary.f32(i32 7, float %5285)  ; Saturate(value)
  %5334 = call float @dx.op.binary.f32(i32 35, float %5332, float %5333)  ; FMax(a,b)
  %5335 = fadd fast float %5330, 0xBFE4CCCCC0000000
  %5336 = fmul fast float %5335, 0x4006DB6DA0000000
  %5337 = call float @dx.op.unary.f32(i32 7, float %5336)  ; Saturate(value)
  %5338 = fmul fast float %5337, 2.000000e+00
  %5339 = fsub fast float 3.000000e+00, %5338
  %5340 = bitcast float %5255 to i32
  %5341 = ashr i32 %5340, 1
  %5342 = add nsw i32 %5341, 532487669
  %5343 = bitcast i32 %5342 to float
  %5344 = fsub fast float 1.000000e+00, %5343
  %5345 = bitcast float %5344 to i32
  %5346 = sub nsw i32 2129859010, %5345
  %5347 = bitcast i32 %5346 to float
  %5348 = fmul fast float %5347, 2.000000e+00
  %5349 = bitcast float %5256 to i32
  %5350 = ashr i32 %5349, 1
  %5351 = add nsw i32 %5350, 532487669
  %5352 = bitcast i32 %5351 to float
  %5353 = fsub fast float 1.000000e+00, %5352
  %5354 = bitcast float %5353 to i32
  %5355 = sub nsw i32 2129859010, %5354
  %5356 = bitcast i32 %5355 to float
  %5357 = fmul fast float %5356, 2.000000e+00
  %5358 = bitcast float %5257 to i32
  %5359 = ashr i32 %5358, 1
  %5360 = add nsw i32 %5359, 532487669
  %5361 = bitcast i32 %5360 to float
  %5362 = fsub fast float 1.000000e+00, %5361
  %5363 = bitcast float %5362 to i32
  %5364 = sub nsw i32 2129859010, %5363
  %5365 = bitcast i32 %5364 to float
  %5366 = fmul fast float %5365, 2.000000e+00
  %5367 = fsub fast float 0x4002A9FBE0000000, %5348
  %5368 = fadd fast float %5348, 0x3FD54FDF00000000
  %5369 = bitcast float %5368 to i32
  %5370 = sub nsw i32 2129859010, %5369
  %5371 = bitcast i32 %5370 to float
  %5372 = fmul fast float %5371, %5367
  %5373 = fmul fast float %5372, %5372
  %5374 = fsub fast float 0x4002A9FBE0000000, %5357
  %5375 = fadd fast float %5357, 0x3FD54FDF00000000
  %5376 = bitcast float %5375 to i32
  %5377 = sub nsw i32 2129859010, %5376
  %5378 = bitcast i32 %5377 to float
  %5379 = fmul fast float %5378, %5374
  %5380 = fmul fast float %5379, %5379
  %5381 = fsub fast float 0x4002A9FBE0000000, %5366
  %5382 = fadd fast float %5366, 0x3FD54FDF00000000
  %5383 = bitcast float %5382 to i32
  %5384 = sub nsw i32 2129859010, %5383
  %5385 = bitcast i32 %5384 to float
  %5386 = fmul fast float %5385, %5381
  %5387 = fmul fast float %5386, %5386
  %5388 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5373)  ; FMax(a,b)
  %5389 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5380)  ; FMax(a,b)
  %5390 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5387)  ; FMax(a,b)
  %5391 = fsub fast float 1.000000e+00, %5277
  %5392 = fadd fast float %5391, %5292
  %5393 = call float @dx.op.unary.f32(i32 7, float %5392)  ; Saturate(value)
  %5394 = fsub fast float 1.000000e+00, %4664
  %5395 = fmul fast float %5334, %5394
  %5396 = fmul fast float %5337, %5337
  %5397 = fmul fast float %5396, %5395
  %5398 = fmul fast float %5397, %5339
  %5399 = fmul fast float %5394, 0xBFE99999A0000000
  %5400 = fmul fast float %5399, %5279
  %5401 = fmul fast float %5400, %5296
  %5402 = fadd fast float %5401, 1.000000e+00
  %5403 = fadd fast float %5258, -1.000000e+00
  %5404 = fmul fast float %5402, %5403
  %5405 = fadd fast float %5404, 1.000000e+00
  %5406 = fsub fast float %5388, %5255
  %5407 = fsub fast float %5389, %5256
  %5408 = fsub fast float %5390, %5257
  %5409 = fmul fast float %5398, %5406
  %5410 = fmul fast float %5398, %5407
  %5411 = fmul fast float %5398, %5408
  %5412 = fadd fast float %5409, %5255
  %5413 = fadd fast float %5410, %5256
  %5414 = fadd fast float %5411, %5257
  %5415 = fsub fast float %127, %5249
  %5416 = fsub fast float %128, %5250
  %5417 = fsub fast float %129, %5251
  %5418 = fmul fast float %5398, %5415
  %5419 = fmul fast float %5398, %5416
  %5420 = fmul fast float %5398, %5417
  %5421 = fadd fast float %5418, %5249
  %5422 = fadd fast float %5419, %5250
  %5423 = fadd fast float %5420, %5251
  %5424 = fmul fast float %5398, %5393
  %5425 = call float @dx.op.unary.f32(i32 7, float %5405)  ; Saturate(value)
  %5426 = fsub fast float 1.000000e+00, %5425
  %5427 = fmul fast float %5424, %5426
  %5428 = fadd fast float %5427, %5425
  %5429 = fsub fast float 1.000000e+00, %5259
  %5430 = fmul fast float %5398, %5429
  %5431 = fadd fast float %5430, %5259
  %5432 = call float @dx.op.dot3.f32(i32 55, float %5421, float %5422, float %5423, float %5421, float %5422, float %5423)  ; Dot3(ax,ay,az,bx,by,bz)
  %5433 = call float @dx.op.unary.f32(i32 25, float %5432)  ; Rsqrt(value)
  %5434 = fmul fast float %5421, %5433
  %5435 = fmul fast float %5422, %5433
  %5436 = fmul fast float %5423, %5433
  br label %5437

; <label>:5437                                    ; preds = %5270, %5263
  %5438 = phi float [ %5269, %5263 ], [ %5276, %5270 ]
  %5439 = phi float [ %5268, %5263 ], [ %5274, %5270 ]
  %5440 = phi float [ %5267, %5263 ], [ %5272, %5270 ]
  %5441 = phi float [ %5266, %5263 ], [ %5275, %5270 ]
  %5442 = phi float [ %5265, %5263 ], [ %5273, %5270 ]
  %5443 = phi float [ %5264, %5263 ], [ %5271, %5270 ]
  %5444 = phi float [ %5249, %5263 ], [ %5434, %5270 ]
  %5445 = phi float [ %5250, %5263 ], [ %5435, %5270 ]
  %5446 = phi float [ %5251, %5263 ], [ %5436, %5270 ]
  %5447 = phi float [ %5252, %5263 ], [ %5321, %5270 ]
  %5448 = phi float [ %5253, %5263 ], [ %5322, %5270 ]
  %5449 = phi float [ %5254, %5263 ], [ %5323, %5270 ]
  %5450 = phi float [ %5255, %5263 ], [ %5412, %5270 ]
  %5451 = phi float [ %5256, %5263 ], [ %5413, %5270 ]
  %5452 = phi float [ %5257, %5263 ], [ %5414, %5270 ]
  %5453 = phi float [ %5258, %5263 ], [ %5428, %5270 ]
  %5454 = phi float [ %5259, %5263 ], [ %5431, %5270 ]
  %5455 = fsub fast float -0.000000e+00, %209
  %5456 = select i1 %279, float 0.000000e+00, float %5452
  %5457 = call float @dx.op.dot3.f32(i32 55, float %5444, float %5445, float %5446, float %5440, float %5439, float %5438)  ; Dot3(ax,ay,az,bx,by,bz)
  %5458 = call float @dx.op.unary.f32(i32 7, float %5457)  ; Saturate(value)
  %5459 = call float @dx.op.dot3.f32(i32 55, float %5443, float %5442, float %5441, float %5444, float %5445, float %5446)  ; Dot3(ax,ay,az,bx,by,bz)
  %5460 = fmul fast float %5459, 2.000000e+00
  %5461 = fmul fast float %5460, %5444
  %5462 = fmul fast float %5460, %5445
  %5463 = fmul fast float %5460, %5446
  %5464 = fsub fast float %5443, %5461
  %5465 = fsub fast float %5442, %5462
  %5466 = fsub fast float %5441, %5463
  %5467 = call float @dx.op.binary.f32(i32 36, float %5454, float 1.000000e+00)  ; FMin(a,b)
  %5468 = fsub fast float 1.000000e+00, %5467
  %5469 = bitcast float %5468 to i32
  %5470 = ashr i32 %5469, 1
  %5471 = add nsw i32 %5470, 532487669
  %5472 = bitcast i32 %5471 to float
  %5473 = fsub fast float 1.000000e+00, %5453
  %5474 = call float @dx.op.binary.f32(i32 35, float %5473, float 0x3F847AE140000000)  ; FMax(a,b)
  %5475 = fmul fast float %5474, %5474
  %5476 = fmul fast float %5475, %5475
  %5477 = call float @dx.op.unary.f32(i32 7, float %5458)  ; Saturate(value)
  %5478 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %56, float %5472, float %5476, float %5477, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5479 = extractvalue %dx.types.ResRet.f32 %5478, 0
  %5480 = fsub fast float 1.000000e+00, %5454
  %5481 = bitcast float %5480 to i32
  %5482 = sub nsw i32 2129859010, %5481
  %5483 = fsub fast float 1.000000e+00, %87
  %5484 = call float @dx.op.dot3.f32(i32 55, float %147, float %148, float %149, float %127, float %128, float %129)  ; Dot3(ax,ay,az,bx,by,bz)
  %5485 = call float @dx.op.binary.f32(i32 35, float %5484, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5486 = fdiv fast float %5483, %5485
  %5487 = call float @dx.op.dot3.f32(i32 55, float %5444, float %5445, float %5446, float %127, float %128, float %129)  ; Dot3(ax,ay,az,bx,by,bz)
  %5488 = call float @dx.op.unary.f32(i32 7, float %5487)  ; Saturate(value)
  %5489 = fmul fast float %5488, 5.000000e-01
  %5490 = fadd fast float %5489, 5.000000e-01
  %5491 = fmul fast float %5490, %87
  %5492 = call float @dx.op.dot3.f32(i32 55, float %5444, float %5445, float %5446, float %147, float %148, float %149)  ; Dot3(ax,ay,az,bx,by,bz)
  %5493 = call float @dx.op.unary.f32(i32 7, float %5492)  ; Saturate(value)
  %5494 = fmul fast float %5493, %5486
  %5495 = fadd fast float %5491, %5494
  %5496 = fsub fast float 5.000000e-01, %5489
  %5497 = fmul fast float %5496, %5447
  %5498 = fmul fast float %5496, %5448
  %5499 = fmul fast float %5496, %5449
  %5500 = fadd fast float %5495, %5497
  %5501 = fadd fast float %5495, %5498
  %5502 = fadd fast float %5495, %5499
  %5503 = call float @dx.op.dot3.f32(i32 55, float %5464, float %5465, float %5466, float %127, float %128, float %129)  ; Dot3(ax,ay,az,bx,by,bz)
  %5504 = call float @dx.op.unary.f32(i32 7, float %5503)  ; Saturate(value)
  %5505 = fmul fast float %5504, 5.000000e-01
  %5506 = fadd fast float %5505, 5.000000e-01
  %5507 = fmul fast float %5506, %87
  %5508 = call float @dx.op.dot3.f32(i32 55, float %5464, float %5465, float %5466, float %147, float %148, float %149)  ; Dot3(ax,ay,az,bx,by,bz)
  %5509 = call float @dx.op.unary.f32(i32 7, float %5508)  ; Saturate(value)
  %5510 = fmul fast float %5509, %5486
  %5511 = fadd fast float %5507, %5510
  %5512 = fsub fast float 5.000000e-01, %5505
  %5513 = fmul fast float %5512, %5447
  %5514 = fmul fast float %5512, %5448
  %5515 = fmul fast float %5512, %5449
  %5516 = fadd fast float %5511, %5513
  %5517 = fadd fast float %5511, %5514
  %5518 = fadd fast float %5511, %5515
  %5519 = call float @dx.op.dot3.f32(i32 55, float %88, float %89, float %90, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5521 = extractvalue %dx.types.CBufRet.f32 %5520, 0
  %5522 = call float @dx.op.binary.f32(i32 36, float %5447, float %5521)  ; FMin(a,b)
  %5523 = fmul fast float %5522, %5468
  %5524 = fsub fast float 1.000000e+00, %5523
  %5525 = bitcast float %5524 to i32
  %5526 = sub nsw i32 2129859010, %5525
  %5527 = bitcast i32 %5526 to float
  %5528 = call float @dx.op.binary.f32(i32 36, float %5448, float %5521)  ; FMin(a,b)
  %5529 = fmul fast float %5528, %5468
  %5530 = fsub fast float 1.000000e+00, %5529
  %5531 = bitcast float %5530 to i32
  %5532 = sub nsw i32 2129859010, %5531
  %5533 = bitcast i32 %5532 to float
  %5534 = call float @dx.op.binary.f32(i32 36, float %5449, float %5521)  ; FMin(a,b)
  %5535 = fmul fast float %5534, %5468
  %5536 = fsub fast float 1.000000e+00, %5535
  %5537 = bitcast float %5536 to i32
  %5538 = sub nsw i32 2129859010, %5537
  %5539 = bitcast i32 %5538 to float
  %5540 = fmul fast float %5467, %88
  %5541 = fmul fast float %5540, %5500
  %5542 = fmul fast float %5541, %5527
  %5543 = fmul fast float %5467, %89
  %5544 = fmul fast float %5543, %5501
  %5545 = fmul fast float %5544, %5533
  %5546 = fmul fast float %5467, %90
  %5547 = fmul fast float %5546, %5502
  %5548 = fmul fast float %5547, %5539
  %5549 = call float @dx.op.binary.f32(i32 36, float %5450, float %5521)  ; FMin(a,b)
  %5550 = fmul fast float %5549, %5468
  %5551 = fsub fast float 1.000000e+00, %5550
  %5552 = bitcast float %5551 to i32
  %5553 = sub nsw i32 2129859010, %5552
  %5554 = bitcast i32 %5553 to float
  %5555 = call float @dx.op.binary.f32(i32 36, float %5451, float %5521)  ; FMin(a,b)
  %5556 = fmul fast float %5555, %5468
  %5557 = fsub fast float 1.000000e+00, %5556
  %5558 = bitcast float %5557 to i32
  %5559 = sub nsw i32 2129859010, %5558
  %5560 = bitcast i32 %5559 to float
  %5561 = call float @dx.op.binary.f32(i32 36, float %5456, float %5521)  ; FMin(a,b)
  %5562 = fmul fast float %5561, %5468
  %5563 = fsub fast float 1.000000e+00, %5562
  %5564 = bitcast float %5563 to i32
  %5565 = sub nsw i32 2129859010, %5564
  %5566 = bitcast i32 %5565 to float
  %5567 = fmul fast float %5540, %5516
  %5568 = fmul fast float %5567, %5554
  %5569 = fmul fast float %5543, %5517
  %5570 = fmul fast float %5569, %5560
  %5571 = fmul fast float %5546, %5518
  %5572 = fmul fast float %5571, %5566
  %5573 = call float @dx.op.dot3.f32(i32 55, float %5542, float %5545, float %5548, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5574 = select i1 %279, float 0.000000e+00, float %5542
  %5575 = select i1 %279, float %5573, float %5545
  %5576 = select i1 %279, float 0.000000e+00, float %5548
  %5577 = call float @dx.op.dot3.f32(i32 55, float %5568, float %5570, float %5572, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5578 = select i1 %279, float 0.000000e+00, float %5568
  %5579 = select i1 %279, float %5577, float %5570
  %5580 = select i1 %279, float 0.000000e+00, float %5572
  %5581 = call float @dx.op.unary.f32(i32 6, float %83)  ; FAbs(value)
  %5582 = fmul fast float %5581, %5574
  %5583 = fmul fast float %5581, %5575
  %5584 = fmul fast float %5576, %5581
  %5585 = fmul fast float %5458, 9.843750e-01
  %5586 = fmul fast float %5453, 9.843750e-01
  %5587 = fadd fast float %5585, 7.812500e-03
  %5588 = fadd fast float %5586, 7.812500e-03
  %5589 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %56, float %5587, float %5588, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5590 = extractvalue %dx.types.ResRet.f32 %5589, 2
  %5591 = extractvalue %dx.types.ResRet.f32 %5589, 3
  %5592 = fmul fast float %5590, %5450
  %5593 = fmul fast float %5590, %5451
  %5594 = fmul fast float %5590, %5456
  %5595 = fadd fast float %5592, %5591
  %5596 = fadd fast float %5593, %5591
  %5597 = fadd fast float %5594, %5591
  %5598 = fcmp fast ogt float %4249, 0.000000e+00
  br i1 %5598, label %5599, label %5625

; <label>:5599                                    ; preds = %5437
  %5600 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %56, float %4249, float %5458, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5601 = extractvalue %dx.types.ResRet.f32 %5600, 0
  %5602 = extractvalue %dx.types.ResRet.f32 %5600, 1
  %5603 = extractvalue %dx.types.ResRet.f32 %5600, 2
  %5604 = fadd fast float %5601, -5.000000e-01
  %5605 = fadd fast float %5602, -5.000000e-01
  %5606 = fadd fast float %5603, -5.000000e-01
  %5607 = fsub fast float 1.000000e+00, %5450
  %5608 = fsub fast float 1.000000e+00, %5451
  %5609 = fsub fast float 1.000000e+00, %5456
  %5610 = fmul fast float %5450, 4.000000e+00
  %5611 = fmul fast float %5610, %5607
  %5612 = fmul fast float %5611, %5604
  %5613 = fmul fast float %5451, 4.000000e+00
  %5614 = fmul fast float %5613, %5608
  %5615 = fmul fast float %5614, %5605
  %5616 = fmul fast float %5456, 4.000000e+00
  %5617 = fmul fast float %5616, %5609
  %5618 = fmul fast float %5617, %5606
  %5619 = fadd fast float %5612, %5595
  %5620 = fadd fast float %5615, %5596
  %5621 = fadd fast float %5618, %5597
  %5622 = call float @dx.op.unary.f32(i32 7, float %5619)  ; Saturate(value)
  %5623 = call float @dx.op.unary.f32(i32 7, float %5620)  ; Saturate(value)
  %5624 = call float @dx.op.unary.f32(i32 7, float %5621)  ; Saturate(value)
  br label %5625

; <label>:5625                                    ; preds = %5599, %5437
  %5626 = phi float [ %5622, %5599 ], [ %5595, %5437 ]
  %5627 = phi float [ %5623, %5599 ], [ %5596, %5437 ]
  %5628 = phi float [ %5624, %5599 ], [ %5597, %5437 ]
  %5629 = call float @dx.op.binary.f32(i32 35, float %5627, float %5628)  ; FMax(a,b)
  %5630 = call float @dx.op.binary.f32(i32 35, float %5626, float %5629)  ; FMax(a,b)
  %5631 = fsub fast float 1.000000e+00, %5630
  %5632 = fmul fast float %5630, %5453
  %5633 = fadd fast float %5632, %5453
  %5634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5635 = extractvalue %dx.types.CBufRet.f32 %5634, 2
  %5636 = extractvalue %dx.types.CBufRet.f32 %5634, 3
  %5637 = fmul fast float %5633, %5635
  %5638 = fadd fast float %5637, %5636
  %5639 = call float @dx.op.unary.f32(i32 7, float %5638)  ; Saturate(value)
  %5640 = fsub fast float 1.000000e+00, %5479
  %5641 = fadd fast float %5640, %5639
  %5642 = call float @dx.op.unary.f32(i32 7, float %5641)  ; Saturate(value)
  %5643 = fcmp fast olt float %5642, 1.000000e+00
  br i1 %5643, label %5644, label %6120

; <label>:5644                                    ; preds = %5625
  %5645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5646 = extractvalue %dx.types.CBufRet.f32 %5645, 2
  %5647 = extractvalue %dx.types.CBufRet.f32 %5645, 3
  %5648 = fmul fast float %5646, %120
  %5649 = fmul fast float %5647, %121
  %5650 = fptoui float %5648 to i32
  %5651 = fptoui float %5649 to i32
  %5652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5653 = extractvalue %dx.types.CBufRet.f32 %5652, 0
  %5654 = extractvalue %dx.types.CBufRet.f32 %5652, 2
  %5655 = extractvalue %dx.types.CBufRet.f32 %5652, 3
  %5656 = fadd fast float %107, -4.000000e+00
  %5657 = call float @dx.op.binary.f32(i32 35, float %5656, float 0.000000e+00)  ; FMax(a,b)
  %5658 = fadd fast float %5657, %5653
  %5659 = fmul fast float %5658, %5654
  %5660 = call float @dx.op.unary.f32(i32 23, float %5659)  ; Log(value)
  %5661 = fmul fast float %5660, %5655
  %5662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5663 = extractvalue %dx.types.CBufRet.f32 %5662, 2
  %5664 = fmul fast float %5661, %5663
  %5665 = call float @dx.op.unary.f32(i32 7, float %5664)  ; Saturate(value)
  %5666 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5667 = extractvalue %dx.types.CBufRet.i32 %5666, 1
  %5668 = add i32 %5667, -1
  %5669 = uitofp i32 %5667 to float
  %5670 = fmul fast float %5669, %5665
  %5671 = fptoui float %5670 to i32
  %5672 = call i32 @dx.op.binary.i32(i32 40, i32 %5671, i32 %5668)  ; UMin(a,b)
  %5673 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5674 = extractvalue %dx.types.CBufRet.i32 %5673, 2
  %5675 = extractvalue %dx.types.CBufRet.i32 %5673, 3
  %5676 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5651, i32 %5674, i32 %5650)  ; UMad(a,b,c)
  %5677 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5672, i32 %5675, i32 %5676)  ; UMad(a,b,c)
  %5678 = call float @dx.op.binary.f32(i32 35, float %107, float 0.000000e+00)  ; FMax(a,b)
  %5679 = fptoui float %5678 to i32
  %5680 = lshr i32 %5679, 5
  %5681 = call i32 @dx.op.binary.i32(i32 40, i32 %5680, i32 8191)  ; UMin(a,b)
  %5682 = fsub fast float %4651, %209
  %5683 = call float @dx.op.unary.f32(i32 7, float %5682)  ; Saturate(value)
  %5684 = fcmp fast ogt float %5683, 0.000000e+00
  %5685 = fcmp fast ogt float %5466, 0.000000e+00
  %5686 = and i1 %5685, %5684
  br i1 %5686, label %5687, label %5716

; <label>:5687                                    ; preds = %5644
  %5688 = call float @dx.op.dot3.f32(i32 55, float %5464, float %5465, float %5466, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5689 = call float @dx.op.binary.f32(i32 35, float %5688, float -1.000000e+00)  ; FMax(a,b)
  %5690 = call float @dx.op.binary.f32(i32 36, float %5689, float 1.000000e+00)  ; FMin(a,b)
  %5691 = fmul fast float %5690, %5690
  %5692 = fsub fast float 1.000000e+00, %5691
  %5693 = fmul fast float %5692, 0x3FFC6E2300000000
  %5694 = fsub fast float 1.000000e+00, %5693
  %5695 = fcmp fast ogt float %5694, 0.000000e+00
  %5696 = call float @dx.op.unary.f32(i32 24, float %5694)  ; Sqrt(value)
  %5697 = fsub fast float 1.000000e+00, %5696
  %5698 = call float @dx.op.unary.f32(i32 23, float %5697)  ; Log(value)
  %5699 = fmul fast float %5698, 5.000000e+00
  %5700 = call float @dx.op.unary.f32(i32 21, float %5699)  ; Exp(value)
  %5701 = fmul fast float %5700, 0x3FEF591A60000000
  %5702 = fadd fast float %5701, 0x3F94DCB540000000
  %5703 = select i1 %5695, float %5702, float 1.000000e+00
  %5704 = fcmp fast oge float %5703, 1.000000e+00
  %5705 = fmul fast float %5688, 2.000000e+00
  %5706 = fadd fast float %5705, %5466
  %5707 = select i1 %5704, float %5706, float %5466
  %5708 = fsub fast float %5707, %5466
  %5709 = fmul fast float %5708, %5683
  %5710 = fadd fast float %5709, %5466
  %5711 = call float @dx.op.dot3.f32(i32 55, float %5464, float %5465, float %5710, float %5464, float %5465, float %5710)  ; Dot3(ax,ay,az,bx,by,bz)
  %5712 = call float @dx.op.unary.f32(i32 25, float %5711)  ; Rsqrt(value)
  %5713 = fmul fast float %5712, %5464
  %5714 = fmul fast float %5712, %5465
  %5715 = fmul fast float %5710, %5712
  br label %5716

; <label>:5716                                    ; preds = %5687, %5644
  %5717 = phi float [ %5713, %5687 ], [ %5464, %5644 ]
  %5718 = phi float [ %5714, %5687 ], [ %5465, %5644 ]
  %5719 = phi float [ %5715, %5687 ], [ %5466, %5644 ]
  %5720 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5721 = extractvalue %dx.types.CBufRet.i32 %5720, 2
  %5722 = add nsw i32 %5721, -1
  %5723 = call i32 @dx.op.binary.i32(i32 37, i32 %5722, i32 0)  ; IMax(a,b)
  %5724 = shl i32 %5681, 2
  %5725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %5724, i32 undef)  ; BufferLoad(srv,index,wot)
  %5726 = extractvalue %dx.types.ResRet.i32 %5725, 0
  %5727 = lshr i32 %5726, 16
  %5728 = and i32 %5726, 65535
  %5729 = lshr i32 %5726, 21
  %5730 = lshr i32 %5728, 5
  %5731 = call i32 @dx.op.binary.i32(i32 40, i32 %5730, i32 %5723)  ; UMin(a,b)
  %5732 = icmp ugt i32 %5729, %5731
  br i1 %5732, label %6096, label %5733

; <label>:5733                                    ; preds = %5716
  br label %5734

; <label>:5734                                    ; preds = %6088, %5733
  %5735 = phi float [ %6089, %6088 ], [ 0.000000e+00, %5733 ]
  %5736 = phi float [ %6090, %6088 ], [ 0.000000e+00, %5733 ]
  %5737 = phi float [ %6091, %6088 ], [ 0.000000e+00, %5733 ]
  %5738 = phi float [ %6092, %6088 ], [ 1.000000e+00, %5733 ]
  %5739 = phi i32 [ %6093, %6088 ], [ %5729, %5733 ]
  %5740 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5741 = extractvalue %dx.types.CBufRet.i32 %5740, 2
  %5742 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5677, i32 %5741, i32 %5739)  ; UMad(a,b,c)
  %5743 = shl i32 %5742, 2
  %5744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5743, i32 undef)  ; BufferLoad(srv,index,wot)
  %5745 = extractvalue %dx.types.ResRet.i32 %5744, 0
  %5746 = shl i32 %5739, 5
  %5747 = sub nsw i32 %5727, %5746
  %5748 = call i32 @dx.op.binary.i32(i32 37, i32 %5747, i32 0)  ; IMax(a,b)
  %5749 = call i32 @dx.op.binary.i32(i32 38, i32 %5748, i32 31)  ; IMin(a,b)
  %5750 = sub nsw i32 1, %5727
  %5751 = add nsw i32 %5750, %5728
  %5752 = call i32 @dx.op.binary.i32(i32 37, i32 %5751, i32 0)  ; IMax(a,b)
  %5753 = call i32 @dx.op.binary.i32(i32 38, i32 %5752, i32 32)  ; IMin(a,b)
  %5754 = and i32 %5753, 31
  %5755 = shl i32 -1, %5754
  %5756 = xor i32 %5755, -1
  %5757 = and i32 %5749, 31
  %5758 = shl i32 %5756, %5757
  %5759 = icmp eq i32 %5753, 32
  %5760 = select i1 %5759, i32 -1, i32 %5758
  %5761 = and i32 %5760, %5745
  %5762 = icmp eq i32 %5761, 0
  br i1 %5762, label %6088, label %5763

; <label>:5763                                    ; preds = %5734
  br label %5764

; <label>:5764                                    ; preds = %5871, %5763
  %5765 = phi float [ %5872, %5871 ], [ %5735, %5763 ]
  %5766 = phi float [ %5873, %5871 ], [ %5736, %5763 ]
  %5767 = phi float [ %5874, %5871 ], [ %5737, %5763 ]
  %5768 = phi float [ %5875, %5871 ], [ %5738, %5763 ]
  %5769 = phi i32 [ %5774, %5871 ], [ %5761, %5763 ]
  %5770 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5769)  ; FirstbitLo(value)
  %5771 = add i32 %5770, %5746
  %5772 = and i32 %5770, 31
  %5773 = shl i32 1, %5772
  %5774 = xor i32 %5773, %5769
  %5775 = mul i32 %5771, 72
  %5776 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5775, i32 undef)  ; BufferLoad(srv,index,wot)
  %5777 = extractvalue %dx.types.ResRet.f32 %5776, 0
  %5778 = extractvalue %dx.types.ResRet.f32 %5776, 1
  %5779 = extractvalue %dx.types.ResRet.f32 %5776, 2
  %5780 = add i32 %5775, 12
  %5781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %5780, i32 undef)  ; BufferLoad(srv,index,wot)
  %5782 = extractvalue %dx.types.ResRet.i32 %5781, 0
  %5783 = add i32 %5775, 16
  %5784 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5783, i32 undef)  ; BufferLoad(srv,index,wot)
  %5785 = extractvalue %dx.types.ResRet.f32 %5784, 0
  %5786 = extractvalue %dx.types.ResRet.f32 %5784, 1
  %5787 = extractvalue %dx.types.ResRet.f32 %5784, 2
  %5788 = add i32 %5775, 28
  %5789 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5788, i32 undef)  ; BufferLoad(srv,index,wot)
  %5790 = extractvalue %dx.types.ResRet.f32 %5789, 0
  %5791 = add i32 %5775, 32
  %5792 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5791, i32 undef)  ; BufferLoad(srv,index,wot)
  %5793 = extractvalue %dx.types.ResRet.f32 %5792, 0
  %5794 = extractvalue %dx.types.ResRet.f32 %5792, 1
  %5795 = extractvalue %dx.types.ResRet.f32 %5792, 2
  %5796 = extractvalue %dx.types.ResRet.f32 %5792, 3
  %5797 = add i32 %5775, 48
  %5798 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5797, i32 undef)  ; BufferLoad(srv,index,wot)
  %5799 = extractvalue %dx.types.ResRet.f32 %5798, 0
  %5800 = extractvalue %dx.types.ResRet.f32 %5798, 1
  %5801 = add i32 %5775, 56
  %5802 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5801, i32 undef)  ; BufferLoad(srv,index,wot)
  %5803 = extractvalue %dx.types.ResRet.f32 %5802, 0
  %5804 = extractvalue %dx.types.ResRet.f32 %5802, 1
  %5805 = add i32 %5775, 64
  %5806 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5805, i32 undef)  ; BufferLoad(srv,index,wot)
  %5807 = extractvalue %dx.types.ResRet.f32 %5806, 0
  %5808 = extractvalue %dx.types.ResRet.f32 %5806, 1
  %5809 = mul i32 %5771, 60
  %5810 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5809, i32 undef)  ; BufferLoad(srv,index,wot)
  %5811 = extractvalue %dx.types.ResRet.f32 %5810, 0
  %5812 = extractvalue %dx.types.ResRet.f32 %5810, 1
  %5813 = extractvalue %dx.types.ResRet.f32 %5810, 2
  %5814 = add i32 %5809, 12
  %5815 = add i32 %5809, 48
  %5816 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5815, i32 undef)  ; BufferLoad(srv,index,wot)
  %5817 = extractvalue %dx.types.ResRet.f32 %5816, 0
  %5818 = extractvalue %dx.types.ResRet.f32 %5816, 1
  %5819 = extractvalue %dx.types.ResRet.f32 %5816, 2
  %5820 = and i32 %5782, 32767
  %5821 = bitcast float %5777 to i32
  %5822 = icmp eq i32 %5821, -1
  %5823 = bitcast float %5778 to i32
  %5824 = and i32 %5782, 32768
  %5825 = icmp ne i32 %5824, 0
  %5826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5827 = extractvalue %dx.types.CBufRet.f32 %5826, 0
  %5828 = extractvalue %dx.types.CBufRet.f32 %5826, 1
  %5829 = extractvalue %dx.types.CBufRet.f32 %5826, 2
  %5830 = fsub fast float %5811, %5827
  %5831 = fsub fast float %5812, %5828
  %5832 = fsub fast float %5813, %5829
  %5833 = fsub fast float %207, %5830
  %5834 = fsub fast float %208, %5831
  %5835 = fsub fast float %209, %5832
  %5836 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5814, i32 undef)  ; BufferLoad(srv,index,wot)
  %5837 = extractvalue %dx.types.ResRet.f32 %5836, 0
  %5838 = extractvalue %dx.types.ResRet.f32 %5836, 1
  %5839 = extractvalue %dx.types.ResRet.f32 %5836, 2
  %5840 = call float @dx.op.dot3.f32(i32 55, float %5833, float %5834, float %5835, float %5837, float %5838, float %5839)  ; Dot3(ax,ay,az,bx,by,bz)
  %5841 = add i32 %5809, 24
  %5842 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5841, i32 undef)  ; BufferLoad(srv,index,wot)
  %5843 = extractvalue %dx.types.ResRet.f32 %5842, 0
  %5844 = extractvalue %dx.types.ResRet.f32 %5842, 1
  %5845 = extractvalue %dx.types.ResRet.f32 %5842, 2
  %5846 = call float @dx.op.dot3.f32(i32 55, float %5833, float %5834, float %5835, float %5843, float %5844, float %5845)  ; Dot3(ax,ay,az,bx,by,bz)
  %5847 = add i32 %5809, 36
  %5848 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5847, i32 undef)  ; BufferLoad(srv,index,wot)
  %5849 = extractvalue %dx.types.ResRet.f32 %5848, 0
  %5850 = extractvalue %dx.types.ResRet.f32 %5848, 1
  %5851 = extractvalue %dx.types.ResRet.f32 %5848, 2
  %5852 = call float @dx.op.dot3.f32(i32 55, float %5833, float %5834, float %5835, float %5849, float %5850, float %5851)  ; Dot3(ax,ay,az,bx,by,bz)
  %5853 = call float @dx.op.unary.f32(i32 6, float %5840)  ; FAbs(value)
  %5854 = call float @dx.op.unary.f32(i32 6, float %5846)  ; FAbs(value)
  %5855 = call float @dx.op.unary.f32(i32 6, float %5852)  ; FAbs(value)
  %5856 = fsub fast float %5817, %5853
  %5857 = fsub fast float %5818, %5854
  %5858 = fsub fast float %5819, %5855
  %5859 = fmul fast float %5856, %5785
  %5860 = fmul fast float %5857, %5786
  %5861 = fmul fast float %5858, %5787
  %5862 = call float @dx.op.binary.f32(i32 36, float %5860, float %5861)  ; FMin(a,b)
  %5863 = call float @dx.op.binary.f32(i32 36, float %5859, float %5862)  ; FMin(a,b)
  %5864 = call float @dx.op.unary.f32(i32 7, float %5863)  ; Saturate(value)
  %5865 = call float @dx.op.binary.f32(i32 36, float %5768, float %5864)  ; FMin(a,b)
  %5866 = uitofp i1 %5825 to float
  %5867 = fadd fast float %5683, 1.000000e+00
  %5868 = fsub fast float %5867, %5866
  %5869 = fmul fast float %5865, %5868
  %5870 = fcmp fast ogt float %5869, 0.000000e+00
  br i1 %5870, label %5877, label %5871

; <label>:5871                                    ; preds = %6019, %5764
  %5872 = phi float [ %6083, %6019 ], [ %5765, %5764 ]
  %5873 = phi float [ %6084, %6019 ], [ %5766, %5764 ]
  %5874 = phi float [ %6085, %6019 ], [ %5767, %5764 ]
  %5875 = phi float [ %6086, %6019 ], [ %5768, %5764 ]
  %5876 = icmp eq i32 %5769, %5773
  br i1 %5876, label %6087, label %5764

; <label>:5877                                    ; preds = %5764
  br i1 %5822, label %5935, label %5878

; <label>:5878                                    ; preds = %5877
  %5879 = fsub fast float -0.000000e+00, %5837
  %5880 = fsub fast float -0.000000e+00, %5838
  %5881 = fsub fast float -0.000000e+00, %5839
  %5882 = call float @dx.op.dot3.f32(i32 55, float %5717, float %5718, float %5719, float %5879, float %5880, float %5881)  ; Dot3(ax,ay,az,bx,by,bz)
  %5883 = fsub fast float -0.000000e+00, %5882
  %5884 = call float @dx.op.dot3.f32(i32 55, float %5833, float %5834, float %5835, float %5879, float %5880, float %5881)  ; Dot3(ax,ay,az,bx,by,bz)
  %5885 = fadd fast float %5884, %5800
  %5886 = fadd fast float %5799, %5884
  %5887 = fsub fast float -0.000000e+00, %5886
  %5888 = fcmp ogt float %5882, -0.000000e+00
  %5889 = select i1 %5888, float %5887, float %5885
  %5890 = call float @dx.op.unary.f32(i32 6, float %5883)  ; FAbs(value)
  %5891 = fdiv fast float 1.000000e+00, %5890
  %5892 = fmul fast float %5889, %5891
  %5893 = call float @dx.op.binary.f32(i32 35, float %5892, float 0.000000e+00)  ; FMax(a,b)
  %5894 = fsub fast float -0.000000e+00, %5843
  %5895 = fsub fast float -0.000000e+00, %5844
  %5896 = fsub fast float -0.000000e+00, %5845
  %5897 = call float @dx.op.dot3.f32(i32 55, float %5717, float %5718, float %5719, float %5894, float %5895, float %5896)  ; Dot3(ax,ay,az,bx,by,bz)
  %5898 = fsub fast float -0.000000e+00, %5897
  %5899 = call float @dx.op.dot3.f32(i32 55, float %5833, float %5834, float %5835, float %5894, float %5895, float %5896)  ; Dot3(ax,ay,az,bx,by,bz)
  %5900 = fadd fast float %5899, %5804
  %5901 = fadd fast float %5803, %5899
  %5902 = fsub fast float -0.000000e+00, %5901
  %5903 = fcmp ogt float %5897, -0.000000e+00
  %5904 = select i1 %5903, float %5902, float %5900
  %5905 = call float @dx.op.unary.f32(i32 6, float %5898)  ; FAbs(value)
  %5906 = fdiv fast float 1.000000e+00, %5905
  %5907 = fmul fast float %5904, %5906
  %5908 = call float @dx.op.binary.f32(i32 35, float %5907, float 0.000000e+00)  ; FMax(a,b)
  %5909 = fsub fast float -0.000000e+00, %5849
  %5910 = fsub fast float -0.000000e+00, %5850
  %5911 = fsub fast float -0.000000e+00, %5851
  %5912 = call float @dx.op.dot3.f32(i32 55, float %5717, float %5718, float %5719, float %5909, float %5910, float %5911)  ; Dot3(ax,ay,az,bx,by,bz)
  %5913 = fsub fast float -0.000000e+00, %5912
  %5914 = call float @dx.op.dot3.f32(i32 55, float %5833, float %5834, float %5835, float %5909, float %5910, float %5911)  ; Dot3(ax,ay,az,bx,by,bz)
  %5915 = fadd fast float %5914, %5808
  %5916 = fadd fast float %5807, %5914
  %5917 = fsub fast float -0.000000e+00, %5916
  %5918 = fcmp ogt float %5912, -0.000000e+00
  %5919 = select i1 %5918, float %5917, float %5915
  %5920 = call float @dx.op.unary.f32(i32 6, float %5913)  ; FAbs(value)
  %5921 = fdiv fast float 1.000000e+00, %5920
  %5922 = fmul fast float %5919, %5921
  %5923 = call float @dx.op.binary.f32(i32 35, float %5922, float 0.000000e+00)  ; FMax(a,b)
  %5924 = call float @dx.op.binary.f32(i32 36, float %5908, float %5923)  ; FMin(a,b)
  %5925 = call float @dx.op.binary.f32(i32 36, float %5893, float %5924)  ; FMin(a,b)
  %5926 = fmul fast float %5925, %5717
  %5927 = fmul fast float %5925, %5718
  %5928 = fmul fast float %5925, %5719
  %5929 = fadd fast float %5926, %207
  %5930 = fadd fast float %5927, %208
  %5931 = fadd fast float %5928, %209
  %5932 = fsub fast float %5929, %5777
  %5933 = fsub fast float %5930, %5778
  %5934 = fsub fast float %5931, %5779
  br label %5942

; <label>:5935                                    ; preds = %5877
  %5936 = fmul fast float %5717, 8.096000e+03
  %5937 = fmul fast float %5718, 8.096000e+03
  %5938 = fmul fast float %5719, 8.096000e+03
  %5939 = fadd fast float %5936, %207
  %5940 = fadd fast float %5937, %208
  %5941 = fadd fast float %5938, %209
  br label %5942

; <label>:5942                                    ; preds = %5935, %5878
  %5943 = phi float [ %5717, %5935 ], [ %5932, %5878 ]
  %5944 = phi float [ %5718, %5935 ], [ %5933, %5878 ]
  %5945 = phi float [ %5719, %5935 ], [ %5934, %5878 ]
  %5946 = phi float [ %5939, %5935 ], [ %5929, %5878 ]
  %5947 = phi float [ %5940, %5935 ], [ %5930, %5878 ]
  %5948 = phi float [ %5941, %5935 ], [ %5931, %5878 ]
  %5949 = fcmp fast olt float %5796, 1.000000e+00
  br i1 %5949, label %5950, label %5981, !dx.controlflow.hints !104

; <label>:5950                                    ; preds = %5942
  %5951 = fmul fast float %5945, %5794
  %5952 = fmul fast float %5944, %5795
  %5953 = fsub fast float %5951, %5952
  %5954 = fmul fast float %5943, %5795
  %5955 = fmul fast float %5945, %5793
  %5956 = fsub fast float %5954, %5955
  %5957 = fmul fast float %5944, %5793
  %5958 = fmul fast float %5943, %5794
  %5959 = fsub fast float %5957, %5958
  %5960 = fmul fast float %5953, 2.000000e+00
  %5961 = fmul fast float %5956, 2.000000e+00
  %5962 = fmul fast float %5959, 2.000000e+00
  %5963 = fmul fast float %5960, %5796
  %5964 = fmul fast float %5961, %5796
  %5965 = fmul fast float %5962, %5796
  %5966 = fmul fast float %5962, %5794
  %5967 = fmul fast float %5961, %5795
  %5968 = fmul fast float %5960, %5795
  %5969 = fmul fast float %5962, %5793
  %5970 = fmul fast float %5961, %5793
  %5971 = fmul fast float %5960, %5794
  %5972 = fadd fast float %5966, %5943
  %5973 = fadd fast float %5972, %5963
  %5974 = fsub fast float %5973, %5967
  %5975 = fsub fast float %5944, %5969
  %5976 = fadd fast float %5975, %5964
  %5977 = fadd fast float %5976, %5968
  %5978 = fadd fast float %5965, %5945
  %5979 = fsub fast float %5978, %5971
  %5980 = fadd fast float %5979, %5970
  br label %5981

; <label>:5981                                    ; preds = %5950, %5942
  %5982 = phi float [ %5974, %5950 ], [ %5943, %5942 ]
  %5983 = phi float [ %5977, %5950 ], [ %5944, %5942 ]
  %5984 = phi float [ %5980, %5950 ], [ %5945, %5942 ]
  br i1 %5822, label %6016, label %5985

; <label>:5985                                    ; preds = %5981
  %5986 = fmul fast float %5453, 0x400187C840000000
  %5987 = fadd fast float %5986, 0xC00EFC2120000000
  %5988 = fmul fast float %5987, %5453
  %5989 = fadd fast float %5988, 0x3FE5D16340000000
  %5990 = fmul fast float %5989, %5453
  %5991 = fadd fast float %5990, 1.000000e+00
  %5992 = call float @dx.op.unary.f32(i32 7, float %5991)  ; Saturate(value)
  %5993 = fsub fast float %5946, %207
  %5994 = fsub fast float %5947, %208
  %5995 = fsub fast float %5948, %209
  %5996 = fsub fast float %5946, %5777
  %5997 = fsub fast float %5947, %5778
  %5998 = fsub fast float %5948, %5779
  %5999 = call float @dx.op.dot3.f32(i32 55, float %5993, float %5994, float %5995, float %5993, float %5994, float %5995)  ; Dot3(ax,ay,az,bx,by,bz)
  %6000 = call float @dx.op.dot3.f32(i32 55, float %5996, float %5997, float %5998, float %5996, float %5997, float %5998)  ; Dot3(ax,ay,az,bx,by,bz)
  %6001 = fadd fast float %6000, 0x3EE4F8B580000000
  %6002 = fdiv fast float %5999, %6001
  %6003 = bitcast float %6002 to i32
  %6004 = ashr i32 %6003, 1
  %6005 = add nsw i32 %6004, 532487669
  %6006 = bitcast i32 %6005 to float
  %6007 = fmul fast float %6006, %5992
  %6008 = call float @dx.op.unary.f32(i32 7, float %6007)  ; Saturate(value)
  %6009 = fmul fast float %6008, 0x4009981AE0000000
  %6010 = fsub fast float 0x40111BBD80000000, %6009
  %6011 = fmul fast float %6010, %6008
  %6012 = fadd fast float %6011, 0xC0009F6020000000
  %6013 = fmul fast float %6012, %6008
  %6014 = fadd fast float %6013, 1.000000e+00
  %6015 = call float @dx.op.unary.f32(i32 7, float %6014)  ; Saturate(value)
  br label %6019

; <label>:6016                                    ; preds = %5981
  %6017 = icmp ne i32 %5823, -1
  %6018 = zext i1 %6017 to i32
  br label %6019

; <label>:6019                                    ; preds = %6016, %5985
  %6020 = phi float [ %5453, %6016 ], [ %6015, %5985 ]
  %6021 = phi i32 [ %6018, %6016 ], [ 0, %5985 ]
  %6022 = fmul float %6020, 5.000000e+00
  %6023 = fsub float 5.000000e+00, %6022
  %6024 = icmp ne i32 %6021, 0
  %6025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6026 = extractvalue %dx.types.CBufRet.f32 %6025, 3
  %6027 = fadd fast float %6026, %6023
  %6028 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6027)  ; FMax(a,b)
  %6029 = call float @dx.op.unary.f32(i32 6, float %5982)  ; FAbs(value)
  %6030 = call float @dx.op.unary.f32(i32 6, float %5983)  ; FAbs(value)
  %6031 = fadd fast float %6030, %6029
  %6032 = call float @dx.op.unary.f32(i32 6, float %5984)  ; FAbs(value)
  %6033 = fadd fast float %6031, %6032
  %6034 = fcmp fast oeq float %6033, 0.000000e+00
  %6035 = fdiv fast float 1.000000e+00, %6033
  %6036 = select i1 %6034, float 1.000000e+00, float %6035
  %6037 = fmul fast float %6036, %5982
  %6038 = fmul fast float %6036, %5983
  %6039 = call float @dx.op.unary.f32(i32 6, float %6038)  ; FAbs(value)
  %6040 = call float @dx.op.unary.f32(i32 6, float %6037)  ; FAbs(value)
  %6041 = fsub fast float 1.000000e+00, %6039
  %6042 = fsub fast float 1.000000e+00, %6040
  %6043 = fcmp fast oge float %6037, 0.000000e+00
  %6044 = fcmp fast oge float %6038, 0.000000e+00
  %6045 = select i1 %6043, float 1.000000e+00, float -1.000000e+00
  %6046 = select i1 %6044, float 1.000000e+00, float -1.000000e+00
  %6047 = fcmp fast ole float %5984, 0.000000e+00
  %6048 = fmul fast float %6045, %6041
  %6049 = fmul fast float %6046, %6042
  %6050 = select i1 %6047, float %6048, float %6037
  %6051 = select i1 %6047, float %6049, float %6038
  %6052 = fmul fast float %6050, 5.000000e-01
  %6053 = fmul fast float %6051, 5.000000e-01
  %6054 = fadd fast float %6052, 5.000000e-01
  %6055 = fadd fast float %6053, 5.000000e-01
  %6056 = uitofp i32 %5820 to float
  %6057 = call float @dx.op.binary.f32(i32 36, float %6028, float 3.000000e+00)  ; FMin(a,b)
  %6058 = fadd fast float %6057, 2.000000e+00
  %6059 = call float @dx.op.unary.f32(i32 21, float %6058)  ; Exp(value)
  %6060 = extractvalue %dx.types.CBufRet.f32 %6025, 1
  %6061 = fmul fast float %6060, %6059
  %6062 = fmul fast float %6061, 2.000000e+00
  %6063 = fsub fast float 1.000000e+00, %6062
  %6064 = fmul fast float %6054, %6063
  %6065 = fmul fast float %6055, %6063
  %6066 = fadd fast float %6064, %6061
  %6067 = fadd fast float %6065, %6061
  %6068 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %54, float %6066, float %6067, float %6056, float undef, i32 0, i32 0, i32 undef, float %6028)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6069 = extractvalue %dx.types.ResRet.f32 %6068, 0
  %6070 = extractvalue %dx.types.ResRet.f32 %6068, 1
  %6071 = extractvalue %dx.types.ResRet.f32 %6068, 2
  %6072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6073 = extractvalue %dx.types.CBufRet.f32 %6072, 3
  %6074 = fmul fast float %6073, %5790
  %6075 = call float @dx.op.binary.f32(i32 36, float %5519, float %6074)  ; FMin(a,b)
  %6076 = select i1 %6024, float %6075, float %6074
  %6077 = fmul fast float %6069, %5869
  %6078 = fmul fast float %6077, %6076
  %6079 = fmul fast float %6070, %5869
  %6080 = fmul fast float %6079, %6076
  %6081 = fmul fast float %6071, %5869
  %6082 = fmul fast float %6081, %6076
  %6083 = fadd fast float %6078, %5765
  %6084 = fadd fast float %6080, %5766
  %6085 = fadd fast float %6082, %5767
  %6086 = fsub fast float %5768, %5869
  br label %5871

; <label>:6087                                    ; preds = %5871
  br label %6088

; <label>:6088                                    ; preds = %6087, %5734
  %6089 = phi float [ %5735, %5734 ], [ %5872, %6087 ]
  %6090 = phi float [ %5736, %5734 ], [ %5873, %6087 ]
  %6091 = phi float [ %5737, %5734 ], [ %5874, %6087 ]
  %6092 = phi float [ %5738, %5734 ], [ %5875, %6087 ]
  %6093 = add i32 %5739, 1
  %6094 = icmp ugt i32 %6093, %5731
  br i1 %6094, label %6095, label %5734, !llvm.loop !105

; <label>:6095                                    ; preds = %6088
  br label %6096

; <label>:6096                                    ; preds = %6095, %5716
  %6097 = phi float [ 0.000000e+00, %5716 ], [ %6089, %6095 ]
  %6098 = phi float [ 0.000000e+00, %5716 ], [ %6090, %6095 ]
  %6099 = phi float [ 0.000000e+00, %5716 ], [ %6091, %6095 ]
  %6100 = call float @dx.op.dot3.f32(i32 55, float %6097, float %6098, float %6099, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6101 = select i1 %279, float 0.000000e+00, float %6097
  %6102 = select i1 %279, float %6100, float %6098
  %6103 = select i1 %279, float 0.000000e+00, float %6099
  %6104 = fcmp fast olt float %5642, 0.000000e+00
  %6105 = call float @dx.op.unary.f32(i32 6, float %5642)  ; FAbs(value)
  %6106 = fmul fast float %6105, %5578
  %6107 = fmul fast float %6105, %5579
  %6108 = fmul fast float %6105, %5580
  %6109 = select i1 %6104, float %5578, float %6106
  %6110 = select i1 %6104, float %5579, float %6107
  %6111 = select i1 %6104, float %5580, float %6108
  %6112 = fsub fast float 1.000000e+00, %6105
  %6113 = call float @dx.op.unary.f32(i32 7, float %6112)  ; Saturate(value)
  %6114 = fmul fast float %6113, %6101
  %6115 = fmul fast float %6113, %6102
  %6116 = fmul fast float %6113, %6103
  %6117 = fadd fast float %6109, %6114
  %6118 = fadd fast float %6110, %6115
  %6119 = fadd fast float %6111, %6116
  br label %6120

; <label>:6120                                    ; preds = %6096, %5625
  %6121 = phi float [ %6117, %6096 ], [ %5578, %5625 ]
  %6122 = phi float [ %6118, %6096 ], [ %5579, %5625 ]
  %6123 = phi float [ %6119, %6096 ], [ %5580, %5625 ]
  %6124 = fmul fast float %207, %207
  %6125 = fmul fast float %208, %208
  %6126 = fadd fast float %6125, %6124
  %6127 = fmul fast float %209, %209
  %6128 = fadd fast float %6126, %6127
  %6129 = call float @dx.op.unary.f32(i32 24, float %6128)  ; Sqrt(value)
  %6130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6131 = extractvalue %dx.types.CBufRet.f32 %6130, 1
  %6132 = fsub fast float %6129, %6131
  %6133 = extractvalue %dx.types.CBufRet.f32 %6130, 2
  %6134 = fmul fast float %6132, %6133
  %6135 = call float @dx.op.unary.f32(i32 7, float %6134)  ; Saturate(value)
  %6136 = extractvalue %dx.types.CBufRet.f32 %6130, 0
  %6137 = extractvalue %dx.types.CBufRet.f32 %6130, 3
  %6138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %6139 = extractvalue %dx.types.ResRet.i32 %6138, 0
  %6140 = and i32 %6139, 4194304
  %6141 = icmp ne i32 %6140, 0
  %6142 = and i32 %6139, 8388608
  %6143 = icmp ne i32 %6142, 0
  %6144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %6145 = extractvalue %dx.types.CBufRet.f32 %6144, 0
  %6146 = extractvalue %dx.types.CBufRet.f32 %6144, 1
  %6147 = extractvalue %dx.types.CBufRet.f32 %6144, 2
  %6148 = extractvalue %dx.types.CBufRet.f32 %6144, 3
  %6149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %6150 = extractvalue %dx.types.CBufRet.f32 %6149, 0
  %6151 = extractvalue %dx.types.CBufRet.f32 %6149, 1
  %6152 = extractvalue %dx.types.CBufRet.f32 %6149, 2
  %6153 = extractvalue %dx.types.CBufRet.f32 %6149, 3
  %6154 = select i1 %6141, float %6145, float %6150
  %6155 = select i1 %6141, float %6146, float %6151
  %6156 = select i1 %6141, float %6147, float %6152
  %6157 = select i1 %6141, float %6148, float %6153
  %6158 = select i1 %6143, float 0.000000e+00, float %6157
  %6159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %6160 = extractvalue %dx.types.CBufRet.f32 %6159, 0
  %6161 = extractvalue %dx.types.CBufRet.f32 %6159, 1
  %6162 = select i1 %6141, float %6160, float %6161
  %6163 = select i1 %6143, float 0.000000e+00, float %6162
  %6164 = extractvalue %dx.types.CBufRet.f32 %6159, 2
  %6165 = extractvalue %dx.types.CBufRet.f32 %6159, 3
  %6166 = select i1 %6141, float %6164, float %6165
  %6167 = select i1 %6143, float 0.000000e+00, float %6166
  %6168 = fmul fast float %6135, %69
  %6169 = fmul fast float %6168, %6136
  %6170 = fmul fast float %6169, %6163
  %6171 = fmul fast float %6168, %6137
  %6172 = fmul fast float %6171, %6167
  %6173 = fadd fast float %6172, 1.000000e+00
  %6174 = fmul fast float %5631, %5582
  %6175 = fmul fast float %6174, %6173
  %6176 = fmul fast float %5631, %5583
  %6177 = fmul fast float %6176, %6173
  %6178 = fmul fast float %5631, %5584
  %6179 = fmul fast float %6178, %6173
  %6180 = call float @dx.op.dot3.f32(i32 55, float %5447, float %5448, float %5449, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6181 = fcmp fast ogt float %6180, 0x3E7FF19E20000000
  %6182 = fdiv fast float 1.000000e+00, %6180
  %6183 = select i1 %6181, float %6182, float 0.000000e+00
  %6184 = fmul fast float %6183, %5447
  %6185 = fmul fast float %6183, %5448
  %6186 = fmul fast float %6183, %5449
  %6187 = fadd fast float %6184, -1.000000e+00
  %6188 = fadd fast float %6185, -1.000000e+00
  %6189 = fadd fast float %6186, -1.000000e+00
  %6190 = fmul fast float %6187, 5.000000e-01
  %6191 = fmul fast float %6188, 5.000000e-01
  %6192 = fmul fast float %6189, 5.000000e-01
  %6193 = fadd fast float %6190, 1.000000e+00
  %6194 = fadd fast float %6191, 1.000000e+00
  %6195 = fadd fast float %6192, 1.000000e+00
  %6196 = fadd fast float %6170, %4250
  %6197 = fsub fast float %6154, %6193
  %6198 = fsub fast float %6155, %6194
  %6199 = fsub fast float %6156, %6195
  %6200 = fmul fast float %6197, %6158
  %6201 = fmul fast float %6198, %6158
  %6202 = fmul fast float %6199, %6158
  %6203 = fadd fast float %6200, %6193
  %6204 = fadd fast float %6201, %6194
  %6205 = fadd fast float %6202, %6195
  %6206 = fmul fast float %6121, %5626
  %6207 = fmul fast float %6122, %5627
  %6208 = fmul fast float %6123, %5628
  %6209 = fsub fast float 1.000000e+00, %5458
  %6210 = bitcast float %6209 to i32
  %6211 = sitofp i32 %6210 to float
  %6212 = fmul fast float %6211, 5.000000e+00
  %6213 = fadd fast float %6212, 0xC1EFBF8940000000
  %6214 = fptosi float %6213 to i32
  %6215 = bitcast i32 %6214 to float
  %6216 = fmul fast float %6196, %6215
  %6217 = fmul fast float %6174, %6216
  %6218 = fmul fast float %6217, %6203
  %6219 = fmul fast float %6176, %6216
  %6220 = fmul fast float %6219, %6204
  %6221 = fmul fast float %6178, %6216
  %6222 = fmul fast float %6221, %6205
  %6223 = fmul fast float %6175, %4246
  %6224 = fmul fast float %6177, %4246
  %6225 = fmul fast float %6179, %4246
  %6226 = fadd fast float %6206, %4242
  %6227 = fadd fast float %6226, %6218
  %6228 = fmul fast float %6227, %4246
  %6229 = fadd fast float %6207, %4243
  %6230 = fadd fast float %6229, %6220
  %6231 = fmul fast float %6230, %4246
  %6232 = fadd fast float %6208, %4244
  %6233 = fadd fast float %6232, %6222
  %6234 = fmul fast float %6233, %4246
  %6235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6236 = extractvalue %dx.types.CBufRet.f32 %6235, 3
  %6237 = fcmp fast oeq float %6236, 0.000000e+00
  br i1 %6237, label %7942, label %6238

; <label>:6238                                    ; preds = %6120
  %6239 = extractvalue %dx.types.CBufRet.f32 %6235, 0
  %6240 = extractvalue %dx.types.CBufRet.f32 %6235, 1
  %6241 = extractvalue %dx.types.CBufRet.f32 %6235, 2
  %6242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6243 = extractvalue %dx.types.CBufRet.f32 %6242, 0
  %6244 = extractvalue %dx.types.CBufRet.f32 %6242, 1
  %6245 = extractvalue %dx.types.CBufRet.f32 %6242, 2
  %6246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6247 = extractvalue %dx.types.CBufRet.f32 %6246, 0
  %6248 = extractvalue %dx.types.CBufRet.f32 %6246, 1
  %6249 = call float @dx.op.dot3.f32(i32 55, float %6243, float %6244, float %6245, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6250 = select i1 %279, float %6247, float %6243
  %6251 = select i1 %279, float %6249, float %6244
  %6252 = select i1 %279, float %6248, float %6245
  %6253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6254 = extractvalue %dx.types.CBufRet.f32 %6253, 2
  %6255 = fmul fast float %6254, %127
  %6256 = fmul fast float %6254, %128
  %6257 = fmul fast float %6254, %129
  %6258 = fadd fast float %6255, %207
  %6259 = fadd fast float %6256, %208
  %6260 = fadd fast float %6257, %209
  %6261 = fcmp fast olt float %6236, 0.000000e+00
  br i1 %6261, label %7519, label %6262

; <label>:6262                                    ; preds = %6238
  %6263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6264 = extractvalue %dx.types.CBufRet.f32 %6263, 0
  %6265 = extractvalue %dx.types.CBufRet.f32 %6263, 1
  %6266 = extractvalue %dx.types.CBufRet.f32 %6263, 2
  %6267 = extractvalue %dx.types.CBufRet.f32 %6263, 3
  %6268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6269 = extractvalue %dx.types.CBufRet.f32 %6268, 0
  %6270 = extractvalue %dx.types.CBufRet.f32 %6268, 1
  %6271 = extractvalue %dx.types.CBufRet.f32 %6268, 2
  %6272 = extractvalue %dx.types.CBufRet.f32 %6268, 3
  %6273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6274 = extractvalue %dx.types.CBufRet.f32 %6273, 0
  %6275 = extractvalue %dx.types.CBufRet.f32 %6273, 1
  %6276 = extractvalue %dx.types.CBufRet.f32 %6273, 2
  %6277 = extractvalue %dx.types.CBufRet.f32 %6273, 3
  %6278 = fmul fast float %6264, %6258
  %6279 = call float @dx.op.tertiary.f32(i32 46, float %6259, float %6265, float %6278)  ; FMad(a,b,c)
  %6280 = call float @dx.op.tertiary.f32(i32 46, float %6260, float %6266, float %6279)  ; FMad(a,b,c)
  %6281 = fadd fast float %6280, %6267
  %6282 = fmul fast float %6269, %6258
  %6283 = call float @dx.op.tertiary.f32(i32 46, float %6259, float %6270, float %6282)  ; FMad(a,b,c)
  %6284 = call float @dx.op.tertiary.f32(i32 46, float %6260, float %6271, float %6283)  ; FMad(a,b,c)
  %6285 = fadd fast float %6284, %6272
  %6286 = fmul fast float %6274, %6258
  %6287 = call float @dx.op.tertiary.f32(i32 46, float %6259, float %6275, float %6286)  ; FMad(a,b,c)
  %6288 = call float @dx.op.tertiary.f32(i32 46, float %6260, float %6276, float %6287)  ; FMad(a,b,c)
  %6289 = fadd fast float %6288, %6277
  %6290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6291 = extractvalue %dx.types.CBufRet.f32 %6290, 0
  %6292 = fcmp fast une float %6291, 0.000000e+00
  %6293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6294 = extractvalue %dx.types.CBufRet.f32 %6293, 0
  %6295 = extractvalue %dx.types.CBufRet.f32 %6293, 1
  %6296 = extractvalue %dx.types.CBufRet.f32 %6293, 3
  %6297 = fmul fast float %6296, %6281
  %6298 = fmul fast float %6296, %6285
  %6299 = fadd fast float %6297, %6294
  %6300 = fadd fast float %6298, %6295
  %6301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6302 = extractvalue %dx.types.CBufRet.f32 %6301, 0
  %6303 = extractvalue %dx.types.CBufRet.f32 %6301, 1
  %6304 = extractvalue %dx.types.CBufRet.f32 %6301, 3
  %6305 = fmul fast float %6304, %6281
  %6306 = fmul fast float %6304, %6285
  %6307 = fadd fast float %6305, %6302
  %6308 = fadd fast float %6306, %6303
  %6309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6310 = extractvalue %dx.types.CBufRet.f32 %6309, 1
  %6311 = fsub fast float %6310, %6289
  %6312 = extractvalue %dx.types.CBufRet.f32 %6309, 2
  %6313 = fmul fast float %6311, %6312
  %6314 = fsub fast float 1.000000e+00, %6313
  %6315 = call float @dx.op.unary.f32(i32 7, float %6314)  ; Saturate(value)
  br i1 %6292, label %6376, label %6316

; <label>:6316                                    ; preds = %6262
  %6317 = extractvalue %dx.types.CBufRet.f32 %6301, 2
  %6318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6319 = extractvalue %dx.types.CBufRet.f32 %6318, 2
  %6320 = fadd fast float %6319, %6317
  %6321 = fcmp fast ogt float %6320, 0.000000e+00
  br i1 %6321, label %6322, label %6346

; <label>:6322                                    ; preds = %6316
  %6323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6324 = extractvalue %dx.types.CBufRet.f32 %6323, 0
  %6325 = extractvalue %dx.types.CBufRet.f32 %6323, 1
  %6326 = fsub fast float %6307, %6324
  %6327 = fsub fast float %6308, %6325
  %6328 = fcmp fast olt float %6326, 0.000000e+00
  %6329 = fcmp fast olt float %6327, 0.000000e+00
  %6330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6331 = extractvalue %dx.types.CBufRet.f32 %6330, 0
  %6332 = extractvalue %dx.types.CBufRet.f32 %6330, 1
  %6333 = extractvalue %dx.types.CBufRet.f32 %6330, 2
  %6334 = extractvalue %dx.types.CBufRet.f32 %6330, 3
  %6335 = select i1 %6328, float %6331, float %6333
  %6336 = select i1 %6329, float %6332, float %6334
  %6337 = fmul fast float %6335, %6326
  %6338 = fmul fast float %6336, %6327
  %6339 = call float @dx.op.unary.f32(i32 6, float %6337)  ; FAbs(value)
  %6340 = call float @dx.op.unary.f32(i32 6, float %6338)  ; FAbs(value)
  %6341 = extractvalue %dx.types.CBufRet.f32 %6253, 0
  %6342 = call float @dx.op.binary.f32(i32 35, float %6339, float %6340)  ; FMax(a,b)
  %6343 = fsub fast float %6341, %6342
  %6344 = call float @dx.op.unary.f32(i32 7, float %6343)  ; Saturate(value)
  %6345 = fmul fast float %6344, %6315
  br label %6346

; <label>:6346                                    ; preds = %6322, %6316
  %6347 = phi float [ %6345, %6322 ], [ 0.000000e+00, %6316 ]
  %6348 = extractvalue %dx.types.CBufRet.f32 %6293, 2
  %6349 = extractvalue %dx.types.CBufRet.f32 %6318, 1
  %6350 = fadd fast float %6349, %6348
  %6351 = fcmp fast ogt float %6350, 0.000000e+00
  br i1 %6351, label %6352, label %6376

; <label>:6352                                    ; preds = %6346
  %6353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6354 = extractvalue %dx.types.CBufRet.f32 %6353, 0
  %6355 = extractvalue %dx.types.CBufRet.f32 %6353, 1
  %6356 = fsub fast float %6299, %6354
  %6357 = fsub fast float %6300, %6355
  %6358 = fcmp fast olt float %6356, 0.000000e+00
  %6359 = fcmp fast olt float %6357, 0.000000e+00
  %6360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6361 = extractvalue %dx.types.CBufRet.f32 %6360, 0
  %6362 = extractvalue %dx.types.CBufRet.f32 %6360, 1
  %6363 = extractvalue %dx.types.CBufRet.f32 %6360, 2
  %6364 = extractvalue %dx.types.CBufRet.f32 %6360, 3
  %6365 = select i1 %6358, float %6361, float %6363
  %6366 = select i1 %6359, float %6362, float %6364
  %6367 = fmul fast float %6365, %6356
  %6368 = fmul fast float %6366, %6357
  %6369 = call float @dx.op.unary.f32(i32 6, float %6367)  ; FAbs(value)
  %6370 = call float @dx.op.unary.f32(i32 6, float %6368)  ; FAbs(value)
  %6371 = extractvalue %dx.types.CBufRet.f32 %6253, 0
  %6372 = call float @dx.op.binary.f32(i32 35, float %6369, float %6370)  ; FMax(a,b)
  %6373 = fsub fast float %6371, %6372
  %6374 = call float @dx.op.unary.f32(i32 7, float %6373)  ; Saturate(value)
  %6375 = fmul fast float %6374, %6315
  br label %6376

; <label>:6376                                    ; preds = %6352, %6346, %6262
  %6377 = phi float [ 0.000000e+00, %6262 ], [ %6375, %6352 ], [ 0.000000e+00, %6346 ]
  %6378 = phi float [ 0.000000e+00, %6262 ], [ %6347, %6352 ], [ %6347, %6346 ]
  %6379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6380 = extractvalue %dx.types.CBufRet.f32 %6379, 1
  %6381 = call float @dx.op.unary.f32(i32 7, float %6380)  ; Saturate(value)
  %6382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6383 = extractvalue %dx.types.CBufRet.f32 %6382, 0
  %6384 = extractvalue %dx.types.CBufRet.f32 %6382, 1
  %6385 = fsub fast float %6281, %6383
  %6386 = fsub fast float %6285, %6384
  %6387 = fcmp fast olt float %6385, 0.000000e+00
  %6388 = fcmp fast olt float %6386, 0.000000e+00
  %6389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6390 = extractvalue %dx.types.CBufRet.f32 %6389, 0
  %6391 = extractvalue %dx.types.CBufRet.f32 %6389, 1
  %6392 = extractvalue %dx.types.CBufRet.f32 %6389, 2
  %6393 = extractvalue %dx.types.CBufRet.f32 %6389, 3
  %6394 = select i1 %6387, float %6390, float %6392
  %6395 = select i1 %6388, float %6391, float %6393
  %6396 = fmul fast float %6394, %6385
  %6397 = fmul fast float %6395, %6386
  %6398 = call float @dx.op.unary.f32(i32 6, float %6396)  ; FAbs(value)
  %6399 = call float @dx.op.unary.f32(i32 6, float %6397)  ; FAbs(value)
  %6400 = extractvalue %dx.types.CBufRet.f32 %6253, 0
  %6401 = call float @dx.op.binary.f32(i32 35, float %6398, float %6399)  ; FMax(a,b)
  %6402 = fsub fast float %6400, %6401
  %6403 = call float @dx.op.unary.f32(i32 7, float %6402)  ; Saturate(value)
  %6404 = call float @dx.op.binary.f32(i32 36, float %6403, float %6381)  ; FMin(a,b)
  %6405 = fmul fast float %6404, %6315
  %6406 = fsub fast float %6377, %6405
  %6407 = fsub fast float %6378, %6377
  %6408 = fsub fast float %6407, %6405
  %6409 = call float @dx.op.binary.f32(i32 35, float %6377, float %6378)  ; FMax(a,b)
  %6410 = call float @dx.op.binary.f32(i32 35, float %6405, float %6409)  ; FMax(a,b)
  %6411 = fcmp fast olt float %6410, 1.000000e+00
  br i1 %6411, label %6412, label %6810, !dx.controlflow.hints !107

; <label>:6412                                    ; preds = %6376
  %6413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6414 = extractvalue %dx.types.CBufRet.f32 %6413, 0
  %6415 = fcmp fast une float %6414, 0.000000e+00
  br i1 %6415, label %6416, label %6810, !dx.controlflow.hints !108

; <label>:6416                                    ; preds = %6412
  %6417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6418 = extractvalue %dx.types.CBufRet.f32 %6417, 0
  %6419 = extractvalue %dx.types.CBufRet.f32 %6417, 1
  %6420 = extractvalue %dx.types.CBufRet.f32 %6417, 2
  %6421 = extractvalue %dx.types.CBufRet.f32 %6417, 3
  %6422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6423 = extractvalue %dx.types.CBufRet.f32 %6422, 0
  %6424 = extractvalue %dx.types.CBufRet.f32 %6422, 1
  %6425 = extractvalue %dx.types.CBufRet.f32 %6422, 2
  %6426 = extractvalue %dx.types.CBufRet.f32 %6422, 3
  %6427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6428 = extractvalue %dx.types.CBufRet.f32 %6427, 0
  %6429 = extractvalue %dx.types.CBufRet.f32 %6427, 1
  %6430 = extractvalue %dx.types.CBufRet.f32 %6427, 2
  %6431 = extractvalue %dx.types.CBufRet.f32 %6427, 3
  %6432 = fmul fast float %6418, %6258
  %6433 = call float @dx.op.tertiary.f32(i32 46, float %6259, float %6419, float %6432)  ; FMad(a,b,c)
  %6434 = call float @dx.op.tertiary.f32(i32 46, float %6260, float %6420, float %6433)  ; FMad(a,b,c)
  %6435 = fadd fast float %6434, %6421
  %6436 = fmul fast float %6423, %6258
  %6437 = call float @dx.op.tertiary.f32(i32 46, float %6259, float %6424, float %6436)  ; FMad(a,b,c)
  %6438 = call float @dx.op.tertiary.f32(i32 46, float %6260, float %6425, float %6437)  ; FMad(a,b,c)
  %6439 = fadd fast float %6438, %6426
  %6440 = fmul fast float %6428, %6258
  %6441 = call float @dx.op.tertiary.f32(i32 46, float %6259, float %6429, float %6440)  ; FMad(a,b,c)
  %6442 = call float @dx.op.tertiary.f32(i32 46, float %6260, float %6430, float %6441)  ; FMad(a,b,c)
  %6443 = fadd fast float %6442, %6431
  %6444 = fcmp fast oge float %6435, 1.000000e+00
  %6445 = fcmp fast oge float %6439, 1.000000e+00
  %6446 = or i1 %6444, %6445
  %6447 = fcmp fast olt float %6435, 0.000000e+00
  %6448 = fcmp fast olt float %6439, 0.000000e+00
  %6449 = or i1 %6447, %6448
  %6450 = or i1 %6446, %6449
  br i1 %6450, label %6810, label %6451, !dx.controlflow.hints !109

; <label>:6451                                    ; preds = %6416
  %6452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6453 = extractvalue %dx.types.CBufRet.f32 %6452, 0
  %6454 = extractvalue %dx.types.CBufRet.f32 %6452, 1
  %6455 = extractvalue %dx.types.CBufRet.f32 %6452, 2
  %6456 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6457 = extractvalue %dx.types.CBufRet.i32 %6456, 2
  %6458 = uitofp i32 %6457 to float
  %6459 = extractvalue %dx.types.CBufRet.i32 %6456, 3
  %6460 = uitofp i32 %6459 to float
  %6461 = extractvalue %dx.types.CBufRet.f32 %6452, 3
  %6462 = fmul fast float %6461, 2.000000e+00
  %6463 = fsub fast float %6435, %6453
  %6464 = fsub fast float %6439, %6454
  %6465 = fmul fast float %6462, %6463
  %6466 = fmul fast float %6462, %6464
  %6467 = fdiv fast float 1.000000e+00, %6241
  %6468 = fmul fast float %6466, %6467
  %6469 = call float @dx.op.unary.f32(i32 6, float %6468)  ; FAbs(value)
  %6470 = fmul fast float %6455, %6260
  %6471 = fmul fast float %6470, %6462
  %6472 = call float @dx.op.unary.f32(i32 6, float %6471)  ; FAbs(value)
  %6473 = call float @dx.op.unary.f32(i32 6, float %6465)  ; FAbs(value)
  %6474 = call float @dx.op.binary.f32(i32 35, float %6472, float %6469)  ; FMax(a,b)
  %6475 = call float @dx.op.binary.f32(i32 35, float %6473, float %6474)  ; FMax(a,b)
  %6476 = fmul fast float %6475, 2.000000e+00
  %6477 = call float @dx.op.unary.f32(i32 23, float %6476)  ; Log(value)
  %6478 = call float @dx.op.binary.f32(i32 35, float %6477, float %6458)  ; FMax(a,b)
  %6479 = call float @dx.op.unary.f32(i32 22, float %6478)  ; Frc(value)
  %6480 = fadd fast float %6479, 0xBFEA666660000000
  %6481 = fmul fast float %6480, 8.000000e+00
  %6482 = call float @dx.op.unary.f32(i32 7, float %6481)  ; Saturate(value)
  %6483 = call float @dx.op.unary.f32(i32 27, float %6478)  ; Round_ni(value)
  %6484 = fadd fast float %6483, %6482
  %6485 = call float @dx.op.binary.f32(i32 36, float %6484, float %6460)  ; FMin(a,b)
  %6486 = call float @dx.op.unary.f32(i32 27, float %6485)  ; Round_ni(value)
  %6487 = fsub fast float -0.000000e+00, %6486
  %6488 = call float @dx.op.unary.f32(i32 21, float %6487)  ; Exp(value)
  %6489 = fmul fast float %6488, %6462
  %6490 = fmul fast float %6489, %6435
  %6491 = fmul fast float %6489, %6439
  %6492 = fmul fast float %6490, 2.500000e-01
  %6493 = fmul fast float %6491, 2.500000e-01
  %6494 = fadd fast float %6492, 5.000000e-01
  %6495 = fadd fast float %6493, 5.000000e-01
  %6496 = fsub fast float %6460, %6458
  %6497 = fptoui float %6496 to i32
  %6498 = add i32 %6497, 320
  %6499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 %6498)  ; CBufferLoadLegacy(handle,regIndex)
  %6500 = extractvalue %dx.types.CBufRet.f32 %6499, 0
  %6501 = extractvalue %dx.types.CBufRet.f32 %6499, 1
  %6502 = fcmp fast une float %6485, %6460
  %6503 = fsub fast float %6435, %6500
  %6504 = fsub fast float %6439, %6501
  %6505 = call float @dx.op.unary.f32(i32 6, float %6503)  ; FAbs(value)
  %6506 = call float @dx.op.unary.f32(i32 6, float %6504)  ; FAbs(value)
  %6507 = fmul fast float %6505, %6489
  %6508 = fmul fast float %6506, %6489
  %6509 = fcmp fast olt float %6507, 1.000000e+00
  %6510 = fcmp fast olt float %6508, 1.000000e+00
  %6511 = and i1 %6509, %6510
  %6512 = or i1 %6502, %6511
  br i1 %6512, label %6513, label %6810, !dx.controlflow.hints !110

; <label>:6513                                    ; preds = %6451
  %6514 = fmul fast float %6491, 5.000000e-01
  %6515 = fmul fast float %6490, 5.000000e-01
  %6516 = fadd fast float %6514, 5.000000e-01
  %6517 = fadd fast float %6515, 5.000000e-01
  %6518 = sitofp i32 %6457 to float
  %6519 = fsub fast float %6485, %6518
  %6520 = call float @dx.op.unary.f32(i32 27, float %6519)  ; Round_ni(value)
  %6521 = call float @dx.op.unary.f32(i32 22, float %6485)  ; Frc(value)
  %6522 = call float @dx.op.unary.f32(i32 22, float %6517)  ; Frc(value)
  %6523 = call float @dx.op.unary.f32(i32 22, float %6516)  ; Frc(value)
  %6524 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %55, float %6522, float %6523, float %6520, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6525 = extractvalue %dx.types.ResRet.f32 %6524, 0
  %6526 = extractvalue %dx.types.ResRet.f32 %6524, 1
  %6527 = extractvalue %dx.types.ResRet.f32 %6524, 2
  %6528 = extractvalue %dx.types.ResRet.f32 %6524, 3
  %6529 = fcmp fast ogt float %6521, 0.000000e+00
  br i1 %6529, label %6530, label %6551, !dx.controlflow.hints !111

; <label>:6530                                    ; preds = %6513
  %6531 = fadd fast float %6520, 1.000000e+00
  %6532 = call float @dx.op.unary.f32(i32 22, float %6494)  ; Frc(value)
  %6533 = call float @dx.op.unary.f32(i32 22, float %6495)  ; Frc(value)
  %6534 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %55, float %6532, float %6533, float %6531, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6535 = extractvalue %dx.types.ResRet.f32 %6534, 0
  %6536 = extractvalue %dx.types.ResRet.f32 %6534, 1
  %6537 = extractvalue %dx.types.ResRet.f32 %6534, 2
  %6538 = extractvalue %dx.types.ResRet.f32 %6534, 3
  %6539 = fsub fast float %6535, %6525
  %6540 = fsub fast float %6536, %6526
  %6541 = fsub fast float %6537, %6527
  %6542 = fsub fast float %6538, %6528
  %6543 = fmul fast float %6539, %6521
  %6544 = fmul fast float %6540, %6521
  %6545 = fmul fast float %6541, %6521
  %6546 = fmul fast float %6542, %6521
  %6547 = fadd fast float %6543, %6525
  %6548 = fadd fast float %6544, %6526
  %6549 = fadd fast float %6545, %6527
  %6550 = fadd fast float %6546, %6528
  br label %6551

; <label>:6551                                    ; preds = %6530, %6513
  %6552 = phi float [ %6547, %6530 ], [ %6525, %6513 ]
  %6553 = phi float [ %6548, %6530 ], [ %6526, %6513 ]
  %6554 = phi float [ %6549, %6530 ], [ %6527, %6513 ]
  %6555 = phi float [ %6550, %6530 ], [ %6528, %6513 ]
  %6556 = fadd fast float %6552, -5.000000e-01
  %6557 = fadd fast float %6554, -5.000000e-01
  %6558 = fmul fast float %6556, 0xBFD5555560000000
  %6559 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6557, float %6558)  ; FMad(a,b,c)
  %6560 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6553, float 0.000000e+00)  ; FMad(a,b,c)
  %6561 = fadd fast float %6560, %6555
  %6562 = fmul fast float %6556, -7.500000e-01
  %6563 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6557, float %6562)  ; FMad(a,b,c)
  %6564 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6553, float 0.000000e+00)  ; FMad(a,b,c)
  %6565 = fadd fast float %6564, %6555
  %6566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6567 = extractvalue %dx.types.CBufRet.f32 %6566, 0
  %6568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6569 = extractvalue %dx.types.CBufRet.f32 %6568, 0
  %6570 = extractvalue %dx.types.CBufRet.f32 %6568, 1
  %6571 = extractvalue %dx.types.CBufRet.f32 %6568, 2
  %6572 = extractvalue %dx.types.CBufRet.f32 %6568, 3
  %6573 = fsub fast float %6569, %6559
  %6574 = fsub fast float %6570, %6561
  %6575 = fsub fast float %6571, %6563
  %6576 = fsub fast float %6572, %6565
  %6577 = fmul fast float %6573, %6567
  %6578 = fmul fast float %6574, %6567
  %6579 = fmul fast float %6575, %6567
  %6580 = fmul fast float %6576, %6567
  %6581 = fadd fast float %6577, %6559
  %6582 = fadd fast float %6578, %6561
  %6583 = fadd fast float %6579, %6563
  %6584 = fadd fast float %6580, %6565
  %6585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6586 = extractvalue %dx.types.ResRet.i32 %6585, 0
  %6587 = and i32 %6586, 536870911
  %6588 = uitofp i32 %6587 to float
  %6589 = fmul fast float %6588, %6435
  %6590 = fmul fast float %6588, %6439
  %6591 = fptoui float %6589 to i32
  %6592 = fptoui float %6590 to i32
  %6593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6594 = extractvalue %dx.types.ResRet.i32 %6593, 0
  %6595 = and i32 %6594, 31
  %6596 = lshr i32 %6591, %6595
  %6597 = lshr i32 %6592, %6595
  %6598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6599 = extractvalue %dx.types.ResRet.i32 %6598, 0
  %6600 = and i32 %6599, 31
  %6601 = shl i32 1, %6600
  %6602 = call i32 @dx.op.binary.i32(i32 40, i32 %6601, i32 4)  ; UMin(a,b)
  %6603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6604 = extractvalue %dx.types.ResRet.i32 %6603, 0
  %6605 = extractvalue %dx.types.ResRet.i32 %6603, 1
  %6606 = icmp eq i32 %6602, 0
  br i1 %6606, label %6648, label %6607

; <label>:6607                                    ; preds = %6551
  br label %6608

; <label>:6608                                    ; preds = %6636, %6607
  %6609 = phi i32 [ %6639, %6636 ], [ 0, %6607 ]
  %6610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6611 = extractvalue %dx.types.ResRet.i32 %6610, 0
  %6612 = lshr i32 %6611, 16
  %6613 = and i32 %6612, 31
  %6614 = shl i32 %6597, %6613
  %6615 = add i32 %6614, %6596
  %6616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6617 = extractvalue %dx.types.ResRet.i32 %6616, 0
  %6618 = and i32 %6617, 31
  %6619 = shl i32 %6615, %6618
  %6620 = add i32 %6619, %6609
  %6621 = shl i32 %6620, 2
  %6622 = add i32 %6621, 32
  %6623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6622, i32 undef)  ; BufferLoad(srv,index,wot)
  %6624 = extractvalue %dx.types.ResRet.i32 %6623, 0
  %6625 = icmp slt i32 %6624, 0
  %6626 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6609
  %6627 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 %6609
  %6628 = bitcast float* %6626 to i32*
  %6629 = bitcast float* %6627 to i32*
  br i1 %6625, label %6630, label %6636

; <label>:6630                                    ; preds = %6608
  %6631 = and i32 %6624, 1073741823
  %6632 = add nuw nsw i32 %6631, 20
  %6633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6632, i32 undef)  ; BufferLoad(srv,index,wot)
  %6634 = extractvalue %dx.types.ResRet.i32 %6633, 0
  %6635 = extractvalue %dx.types.ResRet.i32 %6633, 1
  br label %6636

; <label>:6636                                    ; preds = %6630, %6608
  %6637 = phi i32 [ %6634, %6630 ], [ %6604, %6608 ]
  %6638 = phi i32 [ %6635, %6630 ], [ %6605, %6608 ]
  store i32 %6637, i32* %6628, align 4
  store i32 %6638, i32* %6629, align 4
  %6639 = add nuw i32 %6609, 1
  %6640 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6641 = extractvalue %dx.types.CBufRet.i32 %6640, 2
  %6642 = icmp eq i32 %6641, 0
  %6643 = icmp ugt i32 %6624, -1073741825
  %6644 = and i1 %6643, %6642
  %6645 = icmp ult i32 %6639, %6602
  %6646 = and i1 %6644, %6645
  br i1 %6646, label %6608, label %6647

; <label>:6647                                    ; preds = %6636
  br label %6648

; <label>:6648                                    ; preds = %6647, %6551
  %6649 = phi i32 [ 0, %6551 ], [ %6639, %6647 ]
  %6650 = extractvalue %dx.types.CBufRet.f32 %6413, 2
  %6651 = fptoui float %6650 to i32
  %6652 = icmp eq i32 %6651, 0
  br i1 %6652, label %6704, label %6653

; <label>:6653                                    ; preds = %6648
  br label %6654

; <label>:6654                                    ; preds = %6699, %6653
  %6655 = phi i32 [ %6700, %6699 ], [ %6649, %6653 ]
  %6656 = phi i32 [ %6701, %6699 ], [ 0, %6653 ]
  %6657 = lshr i32 %6656, 2
  %6658 = and i32 %6656, 3
  %6659 = add nuw nsw i32 %6657, 83
  %6660 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 %6659)  ; CBufferLoadLegacy(handle,regIndex)
  %6661 = extractvalue %dx.types.CBufRet.i32 %6660, 0
  %6662 = extractvalue %dx.types.CBufRet.i32 %6660, 1
  %6663 = extractvalue %dx.types.CBufRet.i32 %6660, 2
  %6664 = extractvalue %dx.types.CBufRet.i32 %6660, 3
  %6665 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 0
  store i32 %6661, i32* %6665, align 4
  %6666 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 1
  store i32 %6662, i32* %6666, align 4
  %6667 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 2
  store i32 %6663, i32* %6667, align 4
  %6668 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 3
  store i32 %6664, i32* %6668, align 4
  %6669 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 %6658
  %6670 = load i32, i32* %6669, align 4, !tbaa !112, !noalias !116
  %6671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6672 = extractvalue %dx.types.ResRet.i32 %6671, 0
  %6673 = lshr i32 %6672, 16
  %6674 = and i32 %6673, 31
  %6675 = shl i32 %6597, %6674
  %6676 = add i32 %6675, %6596
  %6677 = shl i32 %6676, 2
  %6678 = add i32 %6677, %6670
  %6679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6678, i32 undef)  ; BufferLoad(srv,index,wot)
  %6680 = extractvalue %dx.types.ResRet.i32 %6679, 0
  %6681 = icmp eq i32 %6680, 0
  br i1 %6681, label %6699, label %6682

; <label>:6682                                    ; preds = %6654
  %6683 = icmp slt i32 %6680, 0
  %6684 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6655
  %6685 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 %6655
  %6686 = bitcast float* %6684 to i32*
  %6687 = bitcast float* %6685 to i32*
  br i1 %6683, label %6688, label %6695

; <label>:6688                                    ; preds = %6682
  %6689 = and i32 %6680, 1073741823
  %6690 = add i32 %6670, 20
  %6691 = add i32 %6690, %6689
  %6692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6691, i32 undef)  ; BufferLoad(srv,index,wot)
  %6693 = extractvalue %dx.types.ResRet.i32 %6692, 0
  %6694 = extractvalue %dx.types.ResRet.i32 %6692, 1
  br label %6695

; <label>:6695                                    ; preds = %6688, %6682
  %6696 = phi i32 [ %6693, %6688 ], [ %6604, %6682 ]
  %6697 = phi i32 [ %6694, %6688 ], [ %6605, %6682 ]
  store i32 %6696, i32* %6686, align 4
  store i32 %6697, i32* %6687, align 4
  %6698 = add i32 %6655, 1
  br label %6699

; <label>:6699                                    ; preds = %6695, %6654
  %6700 = phi i32 [ %6655, %6654 ], [ %6698, %6695 ]
  %6701 = add nuw i32 %6656, 1
  %6702 = icmp eq i32 %6701, %6651
  br i1 %6702, label %6703, label %6654

; <label>:6703                                    ; preds = %6699
  br label %6704

; <label>:6704                                    ; preds = %6703, %6648
  %6705 = phi i32 [ %6649, %6648 ], [ %6700, %6703 ]
  %6706 = icmp eq i32 %6705, 1
  %6707 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 0
  %6708 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 0
  br i1 %6706, label %6709, label %6712

; <label>:6709                                    ; preds = %6704
  %6710 = load float, float* %6707, align 4
  %6711 = load float, float* %6708, align 4
  br label %6739

; <label>:6712                                    ; preds = %6704
  %6713 = load float, float* %6707, align 4
  %6714 = load float, float* %6708, align 4
  %6715 = fdiv fast float 1.000000e+00, %6714
  %6716 = fsub fast float %6713, %6715
  %6717 = icmp ugt i32 %6705, 1
  br i1 %6717, label %6718, label %6734

; <label>:6718                                    ; preds = %6712
  br label %6719

; <label>:6719                                    ; preds = %6719, %6718
  %6720 = phi float [ %6729, %6719 ], [ %6716, %6718 ]
  %6721 = phi float [ %6730, %6719 ], [ %6713, %6718 ]
  %6722 = phi i32 [ %6731, %6719 ], [ 1, %6718 ]
  %6723 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6722
  %6724 = load float, float* %6723, align 4
  %6725 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 %6722
  %6726 = load float, float* %6725, align 4
  %6727 = fdiv fast float 1.000000e+00, %6726
  %6728 = fsub fast float %6724, %6727
  %6729 = call float @dx.op.binary.f32(i32 36, float %6720, float %6728)  ; FMin(a,b)
  %6730 = call float @dx.op.binary.f32(i32 35, float %6721, float %6724)  ; FMax(a,b)
  %6731 = add nuw i32 %6722, 1
  %6732 = icmp eq i32 %6731, %6705
  br i1 %6732, label %6733, label %6719

; <label>:6733                                    ; preds = %6719
  br label %6734

; <label>:6734                                    ; preds = %6733, %6712
  %6735 = phi float [ %6716, %6712 ], [ %6729, %6733 ]
  %6736 = phi float [ %6713, %6712 ], [ %6730, %6733 ]
  %6737 = fsub fast float %6736, %6735
  %6738 = fdiv fast float 1.000000e+00, %6737
  br label %6739

; <label>:6739                                    ; preds = %6734, %6709
  %6740 = phi float [ %6710, %6709 ], [ %6736, %6734 ]
  %6741 = phi float [ %6711, %6709 ], [ %6738, %6734 ]
  %6742 = fadd fast float %6443, %6740
  %6743 = fmul fast float %6742, %6741
  %6744 = call float @dx.op.unary.f32(i32 7, float %6743)  ; Saturate(value)
  %6745 = fmul fast float %6744, 2.000000e+00
  %6746 = fsub fast float 1.000000e+00, %6745
  %6747 = fmul fast float %6581, %6581
  %6748 = fsub fast float %6582, %6747
  %6749 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6748)  ; FMax(a,b)
  %6750 = fdiv fast float 1.000000e+00, %6749
  %6751 = fmul fast float %6582, %6581
  %6752 = fsub fast float %6583, %6751
  %6753 = fsub fast float %6746, %6581
  %6754 = fmul fast float %6746, %6746
  %6755 = fsub fast float %6754, %6582
  %6756 = fmul fast float %6750, %6752
  %6757 = fmul fast float %6756, %6753
  %6758 = fsub fast float %6755, %6757
  %6759 = fmul fast float %6582, %6582
  %6760 = fsub fast float %6584, %6759
  %6761 = fmul fast float %6752, %6752
  %6762 = fmul fast float %6761, %6750
  %6763 = fsub fast float %6760, %6762
  %6764 = fdiv fast float %6758, %6763
  %6765 = fmul fast float %6764, %6752
  %6766 = fsub fast float %6753, %6765
  %6767 = fmul fast float %6766, %6750
  %6768 = fmul fast float %6767, %6581
  %6769 = fsub fast float 1.000000e+00, %6768
  %6770 = fmul fast float %6764, %6582
  %6771 = fsub fast float %6769, %6770
  %6772 = fmul fast float %6767, %6767
  %6773 = fmul fast float %6764, 4.000000e+00
  %6774 = fmul fast float %6773, %6771
  %6775 = fsub fast float %6772, %6774
  %6776 = call float @dx.op.unary.f32(i32 24, float %6775)  ; Sqrt(value)
  %6777 = fcmp fast oge float %6767, 0.000000e+00
  %6778 = fsub fast float -0.000000e+00, %6776
  %6779 = select i1 %6777, float %6778, float %6776
  %6780 = fsub fast float %6779, %6767
  %6781 = fdiv fast float %6780, %6764
  %6782 = fdiv fast float %6771, %6780
  %6783 = fmul fast float %6781, 5.000000e-01
  %6784 = fmul fast float %6782, 2.000000e+00
  %6785 = select i1 %6777, float %6783, float %6784
  %6786 = select i1 %6777, float %6784, float %6783
  %6787 = call float @dx.op.binary.f32(i32 35, float %6785, float %6786)  ; FMax(a,b)
  %6788 = call float @dx.op.binary.f32(i32 36, float %6785, float %6786)  ; FMin(a,b)
  %6789 = fcmp fast ogt float %6746, %6787
  %6790 = fsub fast float %6746, %6788
  %6791 = fsub fast float %6746, %6787
  %6792 = fsub fast float %6787, %6788
  %6793 = select i1 %6789, float %6791, float %6792
  %6794 = fmul float %6790, %6793
  %6795 = select i1 %6789, float %6788, float %6746
  %6796 = fcmp fast ogt float %6746, %6788
  %6797 = fmul fast float %6795, %6787
  %6798 = fadd fast float %6795, %6787
  %6799 = fmul fast float %6798, %6581
  %6800 = fadd fast float %6797, %6582
  %6801 = fsub fast float %6800, %6799
  %6802 = fdiv fast float %6801, %6794
  %6803 = select i1 %6796, float %6802, float 0.000000e+00
  %6804 = fsub fast float 1.000000e+00, %6803
  %6805 = select i1 %6789, float %6804, float %6803
  %6806 = call float @dx.op.unary.f32(i32 7, float %6805)  ; Saturate(value)
  %6807 = extractvalue %dx.types.CBufRet.f32 %6566, 3
  %6808 = fmul fast float %6807, %6806
  %6809 = fsub fast float 1.000000e+00, %6808
  br label %6810

; <label>:6810                                    ; preds = %6739, %6451, %6416, %6412, %6376
  %6811 = phi float [ 1.000000e+00, %6376 ], [ %6809, %6739 ], [ 1.000000e+00, %6416 ], [ 1.000000e+00, %6451 ], [ 1.000000e+00, %6412 ]
  %6812 = fcmp fast ogt float %6408, 0.000000e+00
  br i1 %6812, label %6813, label %6977, !dx.controlflow.hints !125

; <label>:6813                                    ; preds = %6810
  %6814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6815 = extractvalue %dx.types.CBufRet.f32 %6814, 2
  %6816 = fadd fast float %6815, %6289
  %6817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6818 = extractvalue %dx.types.CBufRet.f32 %6817, 2
  %6819 = extractvalue %dx.types.CBufRet.f32 %6817, 3
  %6820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6821 = extractvalue %dx.types.CBufRet.f32 %6820, 2
  %6822 = call float @dx.op.binary.f32(i32 35, float %6816, float 0.000000e+00)  ; FMax(a,b)
  %6823 = fadd fast float %6822, 0x3F10000000000000
  %6824 = fcmp fast oeq float %6821, 0.000000e+00
  br i1 %6824, label %6825, label %6892

; <label>:6825                                    ; preds = %6813
  %6826 = extractvalue %dx.types.CBufRet.f32 %6817, 1
  %6827 = extractvalue %dx.types.CBufRet.f32 %6817, 0
  %6828 = fmul fast float %6827, %6307
  %6829 = fmul fast float %6826, %6308
  %6830 = fadd fast float %6828, 5.000000e-01
  %6831 = call float @dx.op.unary.f32(i32 27, float %6830)  ; Round_ni(value)
  %6832 = fadd fast float %6829, 5.000000e-01
  %6833 = call float @dx.op.unary.f32(i32 27, float %6832)  ; Round_ni(value)
  %6834 = fsub fast float %6830, %6831
  %6835 = fsub fast float %6832, %6833
  %6836 = fadd fast float %6831, -5.000000e-01
  %6837 = fadd fast float %6833, -5.000000e-01
  %6838 = fmul fast float %6834, 2.000000e+00
  %6839 = fsub fast float 3.000000e+00, %6838
  %6840 = fadd fast float %6838, 1.000000e+00
  %6841 = fsub fast float 2.000000e+00, %6834
  %6842 = bitcast float %6839 to i32
  %6843 = sub nsw i32 2129859010, %6842
  %6844 = bitcast i32 %6843 to float
  %6845 = fmul fast float %6844, %6841
  %6846 = fadd fast float %6845, -1.000000e+00
  %6847 = bitcast float %6840 to i32
  %6848 = sub nsw i32 2129859010, %6847
  %6849 = bitcast i32 %6848 to float
  %6850 = fmul fast float %6849, %6834
  %6851 = fadd fast float %6850, 1.000000e+00
  %6852 = fmul fast float %6835, 2.000000e+00
  %6853 = fsub fast float 3.000000e+00, %6852
  %6854 = fadd fast float %6852, 1.000000e+00
  %6855 = fsub fast float 2.000000e+00, %6835
  %6856 = bitcast float %6853 to i32
  %6857 = sub nsw i32 2129859010, %6856
  %6858 = bitcast i32 %6857 to float
  %6859 = fmul fast float %6858, %6855
  %6860 = fadd fast float %6859, -1.000000e+00
  %6861 = bitcast float %6854 to i32
  %6862 = sub nsw i32 2129859010, %6861
  %6863 = bitcast i32 %6862 to float
  %6864 = fmul fast float %6863, %6835
  %6865 = fadd fast float %6864, 1.000000e+00
  %6866 = fadd fast float %6846, %6836
  %6867 = fmul fast float %6866, %6818
  %6868 = fadd fast float %6860, %6837
  %6869 = fmul fast float %6868, %6819
  %6870 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %58, float %6867, float %6869, float undef, float undef, i32 0, i32 0, i32 undef, float %6823)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6871 = extractvalue %dx.types.ResRet.f32 %6870, 0
  %6872 = fmul fast float %6871, %6839
  %6873 = fadd fast float %6851, %6836
  %6874 = fmul fast float %6873, %6818
  %6875 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %58, float %6874, float %6869, float undef, float undef, i32 0, i32 0, i32 undef, float %6823)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6876 = extractvalue %dx.types.ResRet.f32 %6875, 0
  %6877 = fmul fast float %6876, %6840
  %6878 = fadd fast float %6865, %6837
  %6879 = fmul fast float %6878, %6819
  %6880 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %58, float %6867, float %6879, float undef, float undef, i32 0, i32 0, i32 undef, float %6823)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6881 = extractvalue %dx.types.ResRet.f32 %6880, 0
  %6882 = fmul fast float %6881, %6839
  %6883 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %58, float %6874, float %6879, float undef, float undef, i32 0, i32 0, i32 undef, float %6823)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6884 = extractvalue %dx.types.ResRet.f32 %6883, 0
  %6885 = fmul fast float %6884, %6840
  %6886 = fadd fast float %6885, %6882
  %6887 = fmul fast float %6886, %6854
  %6888 = fadd fast float %6877, %6872
  %6889 = fmul fast float %6888, %6853
  %6890 = fadd fast float %6889, %6887
  %6891 = fmul fast float %6890, 6.250000e-02
  br label %6977

; <label>:6892                                    ; preds = %6813
  %6893 = fmul fast float %290, 0x401921FB60000000
  %6894 = call float @dx.op.unary.f32(i32 13, float %6893)  ; Sin(value)
  %6895 = call float @dx.op.unary.f32(i32 12, float %6893)  ; Cos(value)
  %6896 = fsub fast float -0.000000e+00, %6894
  br label %6897

; <label>:6897                                    ; preds = %6946, %6892
  %6898 = phi float [ 0.000000e+00, %6892 ], [ %6941, %6946 ]
  %6899 = phi float [ 0.000000e+00, %6892 ], [ %6943, %6946 ]
  %6900 = phi i32 [ 0, %6892 ], [ %6947, %6946 ]
  %6901 = mul i32 %6900, 2
  %6902 = add i32 0, %6901
  %6903 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6902
  %6904 = load float, float* %6903, align 4
  %6905 = mul i32 %6900, 2
  %6906 = add i32 1, %6905
  %6907 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6906
  %6908 = load float, float* %6907, align 4
  %6909 = fmul fast float %6904, %6895
  %6910 = call float @dx.op.tertiary.f32(i32 46, float %6908, float %6896, float %6909)  ; FMad(a,b,c)
  %6911 = fmul fast float %6904, %6894
  %6912 = call float @dx.op.tertiary.f32(i32 46, float %6908, float %6895, float %6911)  ; FMad(a,b,c)
  %6913 = fmul fast float %6910, %6821
  %6914 = fmul fast float %6912, %6821
  %6915 = fadd fast float %6913, %6307
  %6916 = fadd fast float %6914, %6308
  %6917 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %57, float %6915, float %6916, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6918 = extractvalue %dx.types.ResRet.f32 %6917, 0
  %6919 = extractvalue %dx.types.ResRet.f32 %6917, 1
  %6920 = extractvalue %dx.types.ResRet.f32 %6917, 2
  %6921 = extractvalue %dx.types.ResRet.f32 %6917, 3
  %6922 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 0
  store float %6918, float* %6922, align 4
  %6923 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 1
  store float %6919, float* %6923, align 4
  %6924 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 2
  store float %6920, float* %6924, align 4
  %6925 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 3
  store float %6921, float* %6925, align 4
  %6926 = fsub fast float %6918, %6823
  %6927 = fcmp fast olt float %6926, 0.000000e+00
  %6928 = select i1 %6927, float 0.000000e+00, float 1.000000e+00
  %6929 = fadd fast float %6928, %6898
  %6930 = fmul fast float %6928, %6926
  %6931 = fadd fast float %6930, %6899
  br label %6932

; <label>:6932                                    ; preds = %6932, %6897
  %6933 = phi i32 [ 1, %6897 ], [ %6944, %6932 ]
  %6934 = phi float [ %6931, %6897 ], [ %6943, %6932 ]
  %6935 = phi float [ %6929, %6897 ], [ %6941, %6932 ]
  %6936 = getelementptr [4 x float], [4 x float]* %113, i32 0, i32 %6933
  %6937 = load float, float* %6936, align 4, !tbaa !126, !noalias !116
  %6938 = fsub fast float %6937, %6823
  %6939 = fcmp fast olt float %6938, 0.000000e+00
  %6940 = select i1 %6939, float 0.000000e+00, float 1.000000e+00
  %6941 = fadd fast float %6940, %6935
  %6942 = fmul fast float %6940, %6938
  %6943 = fadd fast float %6942, %6934
  %6944 = add nuw nsw i32 %6933, 1
  %6945 = icmp eq i32 %6944, 4
  br i1 %6945, label %6946, label %6932, !llvm.loop !128

; <label>:6946                                    ; preds = %6932
  %6947 = add nuw nsw i32 %6900, 1
  %6948 = icmp eq i32 %6947, 8
  br i1 %6948, label %6949, label %6897, !llvm.loop !129

; <label>:6949                                    ; preds = %6946
  %6950 = fdiv fast float 1.000000e+00, %6941
  %6951 = fmul fast float %6950, %6943
  %6952 = fdiv fast float 1.000000e+00, %6823
  %6953 = fmul fast float %6951, %6952
  %6954 = call float @dx.op.unary.f32(i32 7, float %6953)  ; Saturate(value)
  %6955 = call float @dx.op.binary.f32(i32 35, float %6954, float 0.000000e+00)  ; FMax(a,b)
  %6956 = fmul fast float %6941, 3.125000e-02
  %6957 = call float @dx.op.unary.f32(i32 7, float %6956)  ; Saturate(value)
  %6958 = fmul fast float %6957, 2.000000e+00
  %6959 = fadd fast float %6958, -1.000000e+00
  %6960 = fcmp fast ogt float %6959, 0.000000e+00
  %6961 = fcmp fast olt float %6959, 0.000000e+00
  %6962 = zext i1 %6960 to i32
  %6963 = zext i1 %6961 to i32
  %6964 = sub nsw i32 %6962, %6963
  %6965 = sitofp i32 %6964 to float
  %6966 = fmul fast float %6965, %6959
  %6967 = fsub fast float 1.000000e+00, %6966
  %6968 = fmul fast float %6967, %6967
  %6969 = fmul fast float %6968, %6967
  %6970 = fsub fast float %6967, %6969
  %6971 = fmul fast float %6970, %6955
  %6972 = fsub fast float 1.000000e+00, %6969
  %6973 = fsub fast float %6972, %6971
  %6974 = fmul fast float %6965, 5.000000e-01
  %6975 = fmul fast float %6974, %6973
  %6976 = fsub fast float 5.000000e-01, %6975
  br label %6977

; <label>:6977                                    ; preds = %6949, %6825, %6810
  %6978 = phi float [ 1.000000e+00, %6810 ], [ %6891, %6825 ], [ %6976, %6949 ]
  %6979 = fcmp fast ogt float %6406, 0.000000e+00
  br i1 %6979, label %6980, label %7144, !dx.controlflow.hints !130

; <label>:6980                                    ; preds = %6977
  %6981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6982 = extractvalue %dx.types.CBufRet.f32 %6981, 1
  %6983 = fadd fast float %6982, %6289
  %6984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6985 = extractvalue %dx.types.CBufRet.f32 %6984, 2
  %6986 = extractvalue %dx.types.CBufRet.f32 %6984, 3
  %6987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6988 = extractvalue %dx.types.CBufRet.f32 %6987, 1
  %6989 = call float @dx.op.binary.f32(i32 35, float %6983, float 0.000000e+00)  ; FMax(a,b)
  %6990 = fadd fast float %6989, 0x3F10000000000000
  %6991 = fcmp fast oeq float %6988, 0.000000e+00
  br i1 %6991, label %6992, label %7059

; <label>:6992                                    ; preds = %6980
  %6993 = extractvalue %dx.types.CBufRet.f32 %6984, 1
  %6994 = extractvalue %dx.types.CBufRet.f32 %6984, 0
  %6995 = fmul fast float %6994, %6299
  %6996 = fmul fast float %6993, %6300
  %6997 = fadd fast float %6995, 5.000000e-01
  %6998 = call float @dx.op.unary.f32(i32 27, float %6997)  ; Round_ni(value)
  %6999 = fadd fast float %6996, 5.000000e-01
  %7000 = call float @dx.op.unary.f32(i32 27, float %6999)  ; Round_ni(value)
  %7001 = fsub fast float %6997, %6998
  %7002 = fsub fast float %6999, %7000
  %7003 = fadd fast float %6998, -5.000000e-01
  %7004 = fadd fast float %7000, -5.000000e-01
  %7005 = fmul fast float %7001, 2.000000e+00
  %7006 = fsub fast float 3.000000e+00, %7005
  %7007 = fadd fast float %7005, 1.000000e+00
  %7008 = fsub fast float 2.000000e+00, %7001
  %7009 = bitcast float %7006 to i32
  %7010 = sub nsw i32 2129859010, %7009
  %7011 = bitcast i32 %7010 to float
  %7012 = fmul fast float %7011, %7008
  %7013 = fadd fast float %7012, -1.000000e+00
  %7014 = bitcast float %7007 to i32
  %7015 = sub nsw i32 2129859010, %7014
  %7016 = bitcast i32 %7015 to float
  %7017 = fmul fast float %7016, %7001
  %7018 = fadd fast float %7017, 1.000000e+00
  %7019 = fmul fast float %7002, 2.000000e+00
  %7020 = fsub fast float 3.000000e+00, %7019
  %7021 = fadd fast float %7019, 1.000000e+00
  %7022 = fsub fast float 2.000000e+00, %7002
  %7023 = bitcast float %7020 to i32
  %7024 = sub nsw i32 2129859010, %7023
  %7025 = bitcast i32 %7024 to float
  %7026 = fmul fast float %7025, %7022
  %7027 = fadd fast float %7026, -1.000000e+00
  %7028 = bitcast float %7021 to i32
  %7029 = sub nsw i32 2129859010, %7028
  %7030 = bitcast i32 %7029 to float
  %7031 = fmul fast float %7030, %7002
  %7032 = fadd fast float %7031, 1.000000e+00
  %7033 = fadd fast float %7013, %7003
  %7034 = fmul fast float %7033, %6985
  %7035 = fadd fast float %7027, %7004
  %7036 = fmul fast float %7035, %6986
  %7037 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %7034, float %7036, float undef, float undef, i32 0, i32 0, i32 undef, float %6990)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7038 = extractvalue %dx.types.ResRet.f32 %7037, 0
  %7039 = fmul fast float %7038, %7006
  %7040 = fadd fast float %7018, %7003
  %7041 = fmul fast float %7040, %6985
  %7042 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %7041, float %7036, float undef, float undef, i32 0, i32 0, i32 undef, float %6990)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7043 = extractvalue %dx.types.ResRet.f32 %7042, 0
  %7044 = fmul fast float %7043, %7007
  %7045 = fadd fast float %7032, %7004
  %7046 = fmul fast float %7045, %6986
  %7047 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %7034, float %7046, float undef, float undef, i32 0, i32 0, i32 undef, float %6990)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7048 = extractvalue %dx.types.ResRet.f32 %7047, 0
  %7049 = fmul fast float %7048, %7006
  %7050 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %7041, float %7046, float undef, float undef, i32 0, i32 0, i32 undef, float %6990)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7051 = extractvalue %dx.types.ResRet.f32 %7050, 0
  %7052 = fmul fast float %7051, %7007
  %7053 = fadd fast float %7052, %7049
  %7054 = fmul fast float %7053, %7021
  %7055 = fadd fast float %7044, %7039
  %7056 = fmul fast float %7055, %7020
  %7057 = fadd fast float %7056, %7054
  %7058 = fmul fast float %7057, 6.250000e-02
  br label %7144

; <label>:7059                                    ; preds = %6980
  %7060 = fmul fast float %290, 0x401921FB60000000
  %7061 = call float @dx.op.unary.f32(i32 13, float %7060)  ; Sin(value)
  %7062 = call float @dx.op.unary.f32(i32 12, float %7060)  ; Cos(value)
  %7063 = fsub fast float -0.000000e+00, %7061
  br label %7064

; <label>:7064                                    ; preds = %7113, %7059
  %7065 = phi float [ 0.000000e+00, %7059 ], [ %7108, %7113 ]
  %7066 = phi float [ 0.000000e+00, %7059 ], [ %7110, %7113 ]
  %7067 = phi i32 [ 0, %7059 ], [ %7114, %7113 ]
  %7068 = mul i32 %7067, 2
  %7069 = add i32 0, %7068
  %7070 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7069
  %7071 = load float, float* %7070, align 4
  %7072 = mul i32 %7067, 2
  %7073 = add i32 1, %7072
  %7074 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7073
  %7075 = load float, float* %7074, align 4
  %7076 = fmul fast float %7071, %7062
  %7077 = call float @dx.op.tertiary.f32(i32 46, float %7075, float %7063, float %7076)  ; FMad(a,b,c)
  %7078 = fmul fast float %7071, %7061
  %7079 = call float @dx.op.tertiary.f32(i32 46, float %7075, float %7062, float %7078)  ; FMad(a,b,c)
  %7080 = fmul fast float %7077, %6988
  %7081 = fmul fast float %7079, %6988
  %7082 = fadd fast float %7080, %6299
  %7083 = fadd fast float %7081, %6300
  %7084 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %57, float %7082, float %7083, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7085 = extractvalue %dx.types.ResRet.f32 %7084, 0
  %7086 = extractvalue %dx.types.ResRet.f32 %7084, 1
  %7087 = extractvalue %dx.types.ResRet.f32 %7084, 2
  %7088 = extractvalue %dx.types.ResRet.f32 %7084, 3
  %7089 = getelementptr inbounds [4 x float], [4 x float]* %112, i32 0, i32 0
  store float %7085, float* %7089, align 4
  %7090 = getelementptr inbounds [4 x float], [4 x float]* %112, i32 0, i32 1
  store float %7086, float* %7090, align 4
  %7091 = getelementptr inbounds [4 x float], [4 x float]* %112, i32 0, i32 2
  store float %7087, float* %7091, align 4
  %7092 = getelementptr inbounds [4 x float], [4 x float]* %112, i32 0, i32 3
  store float %7088, float* %7092, align 4
  %7093 = fsub fast float %7085, %6990
  %7094 = fcmp fast olt float %7093, 0.000000e+00
  %7095 = select i1 %7094, float 0.000000e+00, float 1.000000e+00
  %7096 = fadd fast float %7095, %7065
  %7097 = fmul fast float %7095, %7093
  %7098 = fadd fast float %7097, %7066
  br label %7099

; <label>:7099                                    ; preds = %7099, %7064
  %7100 = phi i32 [ 1, %7064 ], [ %7111, %7099 ]
  %7101 = phi float [ %7098, %7064 ], [ %7110, %7099 ]
  %7102 = phi float [ %7096, %7064 ], [ %7108, %7099 ]
  %7103 = getelementptr [4 x float], [4 x float]* %112, i32 0, i32 %7100
  %7104 = load float, float* %7103, align 4, !tbaa !126, !noalias !116
  %7105 = fsub fast float %7104, %6990
  %7106 = fcmp fast olt float %7105, 0.000000e+00
  %7107 = select i1 %7106, float 0.000000e+00, float 1.000000e+00
  %7108 = fadd fast float %7107, %7102
  %7109 = fmul fast float %7107, %7105
  %7110 = fadd fast float %7109, %7101
  %7111 = add nuw nsw i32 %7100, 1
  %7112 = icmp eq i32 %7111, 4
  br i1 %7112, label %7113, label %7099, !llvm.loop !128

; <label>:7113                                    ; preds = %7099
  %7114 = add nuw nsw i32 %7067, 1
  %7115 = icmp eq i32 %7114, 8
  br i1 %7115, label %7116, label %7064, !llvm.loop !129

; <label>:7116                                    ; preds = %7113
  %7117 = fdiv fast float 1.000000e+00, %7108
  %7118 = fmul fast float %7117, %7110
  %7119 = fdiv fast float 1.000000e+00, %6990
  %7120 = fmul fast float %7118, %7119
  %7121 = call float @dx.op.unary.f32(i32 7, float %7120)  ; Saturate(value)
  %7122 = call float @dx.op.binary.f32(i32 35, float %7121, float 0.000000e+00)  ; FMax(a,b)
  %7123 = fmul fast float %7108, 3.125000e-02
  %7124 = call float @dx.op.unary.f32(i32 7, float %7123)  ; Saturate(value)
  %7125 = fmul fast float %7124, 2.000000e+00
  %7126 = fadd fast float %7125, -1.000000e+00
  %7127 = fcmp fast ogt float %7126, 0.000000e+00
  %7128 = fcmp fast olt float %7126, 0.000000e+00
  %7129 = zext i1 %7127 to i32
  %7130 = zext i1 %7128 to i32
  %7131 = sub nsw i32 %7129, %7130
  %7132 = sitofp i32 %7131 to float
  %7133 = fmul fast float %7132, %7126
  %7134 = fsub fast float 1.000000e+00, %7133
  %7135 = fmul fast float %7134, %7134
  %7136 = fmul fast float %7135, %7134
  %7137 = fsub fast float %7134, %7136
  %7138 = fmul fast float %7137, %7122
  %7139 = fsub fast float 1.000000e+00, %7136
  %7140 = fsub fast float %7139, %7138
  %7141 = fmul fast float %7132, 5.000000e-01
  %7142 = fmul fast float %7141, %7140
  %7143 = fsub fast float 5.000000e-01, %7142
  br label %7144

; <label>:7144                                    ; preds = %7116, %6992, %6977
  %7145 = phi float [ 1.000000e+00, %6977 ], [ %7058, %6992 ], [ %7143, %7116 ]
  %7146 = fcmp fast ogt float %6405, 0.000000e+00
  br i1 %7146, label %7147, label %7465, !dx.controlflow.hints !131

; <label>:7147                                    ; preds = %7144
  %7148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7149 = extractvalue %dx.types.CBufRet.f32 %7148, 0
  %7150 = fadd fast float %7149, %6289
  %7151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7152 = extractvalue %dx.types.CBufRet.f32 %7151, 2
  %7153 = extractvalue %dx.types.CBufRet.f32 %7151, 3
  %7154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7155 = extractvalue %dx.types.CBufRet.f32 %7154, 0
  %7156 = call float @dx.op.binary.f32(i32 35, float %7150, float 0.000000e+00)  ; FMax(a,b)
  %7157 = fadd fast float %7156, 0x3F10000000000000
  %7158 = fcmp fast oeq float %7155, 0.000000e+00
  br i1 %6292, label %7159, label %7312, !dx.controlflow.hints !132

; <label>:7159                                    ; preds = %7147
  br i1 %7158, label %7160, label %7227

; <label>:7160                                    ; preds = %7159
  %7161 = extractvalue %dx.types.CBufRet.f32 %7151, 1
  %7162 = extractvalue %dx.types.CBufRet.f32 %7151, 0
  %7163 = fmul fast float %7162, %6281
  %7164 = fmul fast float %7161, %6285
  %7165 = fadd fast float %7163, 5.000000e-01
  %7166 = call float @dx.op.unary.f32(i32 27, float %7165)  ; Round_ni(value)
  %7167 = fadd fast float %7164, 5.000000e-01
  %7168 = call float @dx.op.unary.f32(i32 27, float %7167)  ; Round_ni(value)
  %7169 = fsub fast float %7165, %7166
  %7170 = fsub fast float %7167, %7168
  %7171 = fadd fast float %7166, -5.000000e-01
  %7172 = fadd fast float %7168, -5.000000e-01
  %7173 = fmul fast float %7169, 2.000000e+00
  %7174 = fsub fast float 3.000000e+00, %7173
  %7175 = fadd fast float %7173, 1.000000e+00
  %7176 = fsub fast float 2.000000e+00, %7169
  %7177 = bitcast float %7174 to i32
  %7178 = sub nsw i32 2129859010, %7177
  %7179 = bitcast i32 %7178 to float
  %7180 = fmul fast float %7179, %7176
  %7181 = fadd fast float %7180, -1.000000e+00
  %7182 = bitcast float %7175 to i32
  %7183 = sub nsw i32 2129859010, %7182
  %7184 = bitcast i32 %7183 to float
  %7185 = fmul fast float %7184, %7169
  %7186 = fadd fast float %7185, 1.000000e+00
  %7187 = fmul fast float %7170, 2.000000e+00
  %7188 = fsub fast float 3.000000e+00, %7187
  %7189 = fadd fast float %7187, 1.000000e+00
  %7190 = fsub fast float 2.000000e+00, %7170
  %7191 = bitcast float %7188 to i32
  %7192 = sub nsw i32 2129859010, %7191
  %7193 = bitcast i32 %7192 to float
  %7194 = fmul fast float %7193, %7190
  %7195 = fadd fast float %7194, -1.000000e+00
  %7196 = bitcast float %7189 to i32
  %7197 = sub nsw i32 2129859010, %7196
  %7198 = bitcast i32 %7197 to float
  %7199 = fmul fast float %7198, %7170
  %7200 = fadd fast float %7199, 1.000000e+00
  %7201 = fadd fast float %7181, %7171
  %7202 = fmul fast float %7201, %7152
  %7203 = fadd fast float %7195, %7172
  %7204 = fmul fast float %7203, %7153
  %7205 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %58, float %7202, float %7204, float undef, float undef, i32 0, i32 0, i32 undef, float %7157)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7206 = extractvalue %dx.types.ResRet.f32 %7205, 0
  %7207 = fmul fast float %7206, %7174
  %7208 = fadd fast float %7186, %7171
  %7209 = fmul fast float %7208, %7152
  %7210 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %58, float %7209, float %7204, float undef, float undef, i32 0, i32 0, i32 undef, float %7157)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7211 = extractvalue %dx.types.ResRet.f32 %7210, 0
  %7212 = fmul fast float %7211, %7175
  %7213 = fadd fast float %7200, %7172
  %7214 = fmul fast float %7213, %7153
  %7215 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %58, float %7202, float %7214, float undef, float undef, i32 0, i32 0, i32 undef, float %7157)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7216 = extractvalue %dx.types.ResRet.f32 %7215, 0
  %7217 = fmul fast float %7216, %7174
  %7218 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %58, float %7209, float %7214, float undef, float undef, i32 0, i32 0, i32 undef, float %7157)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7219 = extractvalue %dx.types.ResRet.f32 %7218, 0
  %7220 = fmul fast float %7219, %7175
  %7221 = fadd fast float %7220, %7217
  %7222 = fmul fast float %7221, %7189
  %7223 = fadd fast float %7212, %7207
  %7224 = fmul fast float %7223, %7188
  %7225 = fadd fast float %7224, %7222
  %7226 = fmul fast float %7225, 6.250000e-02
  br label %7465

; <label>:7227                                    ; preds = %7159
  %7228 = fmul fast float %290, 0x401921FB60000000
  %7229 = call float @dx.op.unary.f32(i32 13, float %7228)  ; Sin(value)
  %7230 = call float @dx.op.unary.f32(i32 12, float %7228)  ; Cos(value)
  %7231 = fsub fast float -0.000000e+00, %7229
  br label %7232

; <label>:7232                                    ; preds = %7281, %7227
  %7233 = phi float [ 0.000000e+00, %7227 ], [ %7276, %7281 ]
  %7234 = phi float [ 0.000000e+00, %7227 ], [ %7278, %7281 ]
  %7235 = phi i32 [ 0, %7227 ], [ %7282, %7281 ]
  %7236 = mul i32 %7235, 2
  %7237 = add i32 0, %7236
  %7238 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7237
  %7239 = load float, float* %7238, align 4
  %7240 = mul i32 %7235, 2
  %7241 = add i32 1, %7240
  %7242 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7241
  %7243 = load float, float* %7242, align 4
  %7244 = fmul fast float %7239, %7230
  %7245 = call float @dx.op.tertiary.f32(i32 46, float %7243, float %7231, float %7244)  ; FMad(a,b,c)
  %7246 = fmul fast float %7239, %7229
  %7247 = call float @dx.op.tertiary.f32(i32 46, float %7243, float %7230, float %7246)  ; FMad(a,b,c)
  %7248 = fmul fast float %7245, %7155
  %7249 = fmul fast float %7247, %7155
  %7250 = fadd fast float %7248, %6281
  %7251 = fadd fast float %7249, %6285
  %7252 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %57, float %7250, float %7251, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7253 = extractvalue %dx.types.ResRet.f32 %7252, 0
  %7254 = extractvalue %dx.types.ResRet.f32 %7252, 1
  %7255 = extractvalue %dx.types.ResRet.f32 %7252, 2
  %7256 = extractvalue %dx.types.ResRet.f32 %7252, 3
  %7257 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 0
  store float %7253, float* %7257, align 4
  %7258 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 1
  store float %7254, float* %7258, align 4
  %7259 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 2
  store float %7255, float* %7259, align 4
  %7260 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 3
  store float %7256, float* %7260, align 4
  %7261 = fsub fast float %7253, %7157
  %7262 = fcmp fast olt float %7261, 0.000000e+00
  %7263 = select i1 %7262, float 0.000000e+00, float 1.000000e+00
  %7264 = fadd fast float %7263, %7233
  %7265 = fmul fast float %7263, %7261
  %7266 = fadd fast float %7265, %7234
  br label %7267

; <label>:7267                                    ; preds = %7267, %7232
  %7268 = phi i32 [ 1, %7232 ], [ %7279, %7267 ]
  %7269 = phi float [ %7266, %7232 ], [ %7278, %7267 ]
  %7270 = phi float [ %7264, %7232 ], [ %7276, %7267 ]
  %7271 = getelementptr [4 x float], [4 x float]* %111, i32 0, i32 %7268
  %7272 = load float, float* %7271, align 4, !tbaa !126, !noalias !116
  %7273 = fsub fast float %7272, %7157
  %7274 = fcmp fast olt float %7273, 0.000000e+00
  %7275 = select i1 %7274, float 0.000000e+00, float 1.000000e+00
  %7276 = fadd fast float %7275, %7270
  %7277 = fmul fast float %7275, %7273
  %7278 = fadd fast float %7277, %7269
  %7279 = add nuw nsw i32 %7268, 1
  %7280 = icmp eq i32 %7279, 4
  br i1 %7280, label %7281, label %7267, !llvm.loop !128

; <label>:7281                                    ; preds = %7267
  %7282 = add nuw nsw i32 %7235, 1
  %7283 = icmp eq i32 %7282, 8
  br i1 %7283, label %7284, label %7232, !llvm.loop !129

; <label>:7284                                    ; preds = %7281
  %7285 = fdiv fast float 1.000000e+00, %7276
  %7286 = fmul fast float %7285, %7278
  %7287 = fdiv fast float 1.000000e+00, %7157
  %7288 = fmul fast float %7286, %7287
  %7289 = call float @dx.op.unary.f32(i32 7, float %7288)  ; Saturate(value)
  %7290 = call float @dx.op.binary.f32(i32 35, float %7289, float 0.000000e+00)  ; FMax(a,b)
  %7291 = fmul fast float %7276, 3.125000e-02
  %7292 = call float @dx.op.unary.f32(i32 7, float %7291)  ; Saturate(value)
  %7293 = fmul fast float %7292, 2.000000e+00
  %7294 = fadd fast float %7293, -1.000000e+00
  %7295 = fcmp fast ogt float %7294, 0.000000e+00
  %7296 = fcmp fast olt float %7294, 0.000000e+00
  %7297 = zext i1 %7295 to i32
  %7298 = zext i1 %7296 to i32
  %7299 = sub nsw i32 %7297, %7298
  %7300 = sitofp i32 %7299 to float
  %7301 = fmul fast float %7300, %7294
  %7302 = fsub fast float 1.000000e+00, %7301
  %7303 = fmul fast float %7302, %7302
  %7304 = fmul fast float %7303, %7302
  %7305 = fsub fast float %7302, %7304
  %7306 = fmul fast float %7305, %7290
  %7307 = fsub fast float 1.000000e+00, %7304
  %7308 = fsub fast float %7307, %7306
  %7309 = fmul fast float %7300, 5.000000e-01
  %7310 = fmul fast float %7309, %7308
  %7311 = fsub fast float 5.000000e-01, %7310
  br label %7465

; <label>:7312                                    ; preds = %7147
  br i1 %7158, label %7313, label %7380

; <label>:7313                                    ; preds = %7312
  %7314 = extractvalue %dx.types.CBufRet.f32 %7151, 1
  %7315 = extractvalue %dx.types.CBufRet.f32 %7151, 0
  %7316 = fmul fast float %7315, %6281
  %7317 = fmul fast float %7314, %6285
  %7318 = fadd fast float %7316, 5.000000e-01
  %7319 = call float @dx.op.unary.f32(i32 27, float %7318)  ; Round_ni(value)
  %7320 = fadd fast float %7317, 5.000000e-01
  %7321 = call float @dx.op.unary.f32(i32 27, float %7320)  ; Round_ni(value)
  %7322 = fsub fast float %7318, %7319
  %7323 = fsub fast float %7320, %7321
  %7324 = fadd fast float %7319, -5.000000e-01
  %7325 = fadd fast float %7321, -5.000000e-01
  %7326 = fmul fast float %7322, 2.000000e+00
  %7327 = fsub fast float 3.000000e+00, %7326
  %7328 = fadd fast float %7326, 1.000000e+00
  %7329 = fsub fast float 2.000000e+00, %7322
  %7330 = bitcast float %7327 to i32
  %7331 = sub nsw i32 2129859010, %7330
  %7332 = bitcast i32 %7331 to float
  %7333 = fmul fast float %7332, %7329
  %7334 = fadd fast float %7333, -1.000000e+00
  %7335 = bitcast float %7328 to i32
  %7336 = sub nsw i32 2129859010, %7335
  %7337 = bitcast i32 %7336 to float
  %7338 = fmul fast float %7337, %7322
  %7339 = fadd fast float %7338, 1.000000e+00
  %7340 = fmul fast float %7323, 2.000000e+00
  %7341 = fsub fast float 3.000000e+00, %7340
  %7342 = fadd fast float %7340, 1.000000e+00
  %7343 = fsub fast float 2.000000e+00, %7323
  %7344 = bitcast float %7341 to i32
  %7345 = sub nsw i32 2129859010, %7344
  %7346 = bitcast i32 %7345 to float
  %7347 = fmul fast float %7346, %7343
  %7348 = fadd fast float %7347, -1.000000e+00
  %7349 = bitcast float %7342 to i32
  %7350 = sub nsw i32 2129859010, %7349
  %7351 = bitcast i32 %7350 to float
  %7352 = fmul fast float %7351, %7323
  %7353 = fadd fast float %7352, 1.000000e+00
  %7354 = fadd fast float %7334, %7324
  %7355 = fmul fast float %7354, %7152
  %7356 = fadd fast float %7348, %7325
  %7357 = fmul fast float %7356, %7153
  %7358 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %7355, float %7357, float undef, float undef, i32 0, i32 0, i32 undef, float %7157)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7359 = extractvalue %dx.types.ResRet.f32 %7358, 0
  %7360 = fmul fast float %7359, %7327
  %7361 = fadd fast float %7339, %7324
  %7362 = fmul fast float %7361, %7152
  %7363 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %7362, float %7357, float undef, float undef, i32 0, i32 0, i32 undef, float %7157)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7364 = extractvalue %dx.types.ResRet.f32 %7363, 0
  %7365 = fmul fast float %7364, %7328
  %7366 = fadd fast float %7353, %7325
  %7367 = fmul fast float %7366, %7153
  %7368 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %7355, float %7367, float undef, float undef, i32 0, i32 0, i32 undef, float %7157)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7369 = extractvalue %dx.types.ResRet.f32 %7368, 0
  %7370 = fmul fast float %7369, %7327
  %7371 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %7362, float %7367, float undef, float undef, i32 0, i32 0, i32 undef, float %7157)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7372 = extractvalue %dx.types.ResRet.f32 %7371, 0
  %7373 = fmul fast float %7372, %7328
  %7374 = fadd fast float %7373, %7370
  %7375 = fmul fast float %7374, %7342
  %7376 = fadd fast float %7365, %7360
  %7377 = fmul fast float %7376, %7341
  %7378 = fadd fast float %7377, %7375
  %7379 = fmul fast float %7378, 6.250000e-02
  br label %7465

; <label>:7380                                    ; preds = %7312
  %7381 = fmul fast float %290, 0x401921FB60000000
  %7382 = call float @dx.op.unary.f32(i32 13, float %7381)  ; Sin(value)
  %7383 = call float @dx.op.unary.f32(i32 12, float %7381)  ; Cos(value)
  %7384 = fsub fast float -0.000000e+00, %7382
  br label %7385

; <label>:7385                                    ; preds = %7434, %7380
  %7386 = phi float [ 0.000000e+00, %7380 ], [ %7429, %7434 ]
  %7387 = phi float [ 0.000000e+00, %7380 ], [ %7431, %7434 ]
  %7388 = phi i32 [ 0, %7380 ], [ %7435, %7434 ]
  %7389 = mul i32 %7388, 2
  %7390 = add i32 0, %7389
  %7391 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7390
  %7392 = load float, float* %7391, align 4
  %7393 = mul i32 %7388, 2
  %7394 = add i32 1, %7393
  %7395 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7394
  %7396 = load float, float* %7395, align 4
  %7397 = fmul fast float %7392, %7383
  %7398 = call float @dx.op.tertiary.f32(i32 46, float %7396, float %7384, float %7397)  ; FMad(a,b,c)
  %7399 = fmul fast float %7392, %7382
  %7400 = call float @dx.op.tertiary.f32(i32 46, float %7396, float %7383, float %7399)  ; FMad(a,b,c)
  %7401 = fmul fast float %7398, %7155
  %7402 = fmul fast float %7400, %7155
  %7403 = fadd fast float %7401, %6281
  %7404 = fadd fast float %7402, %6285
  %7405 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %57, float %7403, float %7404, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7406 = extractvalue %dx.types.ResRet.f32 %7405, 0
  %7407 = extractvalue %dx.types.ResRet.f32 %7405, 1
  %7408 = extractvalue %dx.types.ResRet.f32 %7405, 2
  %7409 = extractvalue %dx.types.ResRet.f32 %7405, 3
  %7410 = getelementptr inbounds [4 x float], [4 x float]* %110, i32 0, i32 0
  store float %7406, float* %7410, align 4
  %7411 = getelementptr inbounds [4 x float], [4 x float]* %110, i32 0, i32 1
  store float %7407, float* %7411, align 4
  %7412 = getelementptr inbounds [4 x float], [4 x float]* %110, i32 0, i32 2
  store float %7408, float* %7412, align 4
  %7413 = getelementptr inbounds [4 x float], [4 x float]* %110, i32 0, i32 3
  store float %7409, float* %7413, align 4
  %7414 = fsub fast float %7406, %7157
  %7415 = fcmp fast olt float %7414, 0.000000e+00
  %7416 = select i1 %7415, float 0.000000e+00, float 1.000000e+00
  %7417 = fadd fast float %7416, %7386
  %7418 = fmul fast float %7416, %7414
  %7419 = fadd fast float %7418, %7387
  br label %7420

; <label>:7420                                    ; preds = %7420, %7385
  %7421 = phi i32 [ 1, %7385 ], [ %7432, %7420 ]
  %7422 = phi float [ %7419, %7385 ], [ %7431, %7420 ]
  %7423 = phi float [ %7417, %7385 ], [ %7429, %7420 ]
  %7424 = getelementptr [4 x float], [4 x float]* %110, i32 0, i32 %7421
  %7425 = load float, float* %7424, align 4, !tbaa !126, !noalias !116
  %7426 = fsub fast float %7425, %7157
  %7427 = fcmp fast olt float %7426, 0.000000e+00
  %7428 = select i1 %7427, float 0.000000e+00, float 1.000000e+00
  %7429 = fadd fast float %7428, %7423
  %7430 = fmul fast float %7428, %7426
  %7431 = fadd fast float %7430, %7422
  %7432 = add nuw nsw i32 %7421, 1
  %7433 = icmp eq i32 %7432, 4
  br i1 %7433, label %7434, label %7420, !llvm.loop !128

; <label>:7434                                    ; preds = %7420
  %7435 = add nuw nsw i32 %7388, 1
  %7436 = icmp eq i32 %7435, 8
  br i1 %7436, label %7437, label %7385, !llvm.loop !129

; <label>:7437                                    ; preds = %7434
  %7438 = fdiv fast float 1.000000e+00, %7429
  %7439 = fmul fast float %7438, %7431
  %7440 = fdiv fast float 1.000000e+00, %7157
  %7441 = fmul fast float %7439, %7440
  %7442 = call float @dx.op.unary.f32(i32 7, float %7441)  ; Saturate(value)
  %7443 = call float @dx.op.binary.f32(i32 35, float %7442, float 0.000000e+00)  ; FMax(a,b)
  %7444 = fmul fast float %7429, 3.125000e-02
  %7445 = call float @dx.op.unary.f32(i32 7, float %7444)  ; Saturate(value)
  %7446 = fmul fast float %7445, 2.000000e+00
  %7447 = fadd fast float %7446, -1.000000e+00
  %7448 = fcmp fast ogt float %7447, 0.000000e+00
  %7449 = fcmp fast olt float %7447, 0.000000e+00
  %7450 = zext i1 %7448 to i32
  %7451 = zext i1 %7449 to i32
  %7452 = sub nsw i32 %7450, %7451
  %7453 = sitofp i32 %7452 to float
  %7454 = fmul fast float %7453, %7447
  %7455 = fsub fast float 1.000000e+00, %7454
  %7456 = fmul fast float %7455, %7455
  %7457 = fmul fast float %7456, %7455
  %7458 = fsub fast float %7455, %7457
  %7459 = fmul fast float %7458, %7443
  %7460 = fsub fast float 1.000000e+00, %7457
  %7461 = fsub fast float %7460, %7459
  %7462 = fmul fast float %7453, 5.000000e-01
  %7463 = fmul fast float %7462, %7461
  %7464 = fsub fast float 5.000000e-01, %7463
  br label %7465

; <label>:7465                                    ; preds = %7437, %7313, %7284, %7160, %7144
  %7466 = phi float [ 1.000000e+00, %7144 ], [ %7226, %7160 ], [ %7311, %7284 ], [ %7379, %7313 ], [ %7464, %7437 ]
  %7467 = fsub fast float %6978, %6811
  %7468 = fmul fast float %7467, %6378
  %7469 = fadd fast float %7468, %6811
  %7470 = fsub fast float %7145, %7469
  %7471 = fmul fast float %7470, %6377
  %7472 = fadd fast float %7471, %7469
  %7473 = fsub fast float %7466, %7472
  %7474 = fmul fast float %7473, %6405
  %7475 = fadd fast float %7474, %7472
  %7476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7477 = extractvalue %dx.types.CBufRet.f32 %7476, 2
  %7478 = fcmp fast ogt float %7477, 0.000000e+00
  br i1 %7478, label %7479, label %7519, !dx.controlflow.hints !133

; <label>:7479                                    ; preds = %7465
  %7480 = fcmp fast ugt float %7477, 0.000000e+00
  br i1 %7480, label %7481, label %7516

; <label>:7481                                    ; preds = %7479
  %7482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7483 = extractvalue %dx.types.CBufRet.f32 %7482, 0
  %7484 = extractvalue %dx.types.CBufRet.f32 %7482, 1
  %7485 = extractvalue %dx.types.CBufRet.f32 %7482, 2
  %7486 = extractvalue %dx.types.CBufRet.f32 %7482, 3
  %7487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7488 = extractvalue %dx.types.CBufRet.f32 %7487, 0
  %7489 = extractvalue %dx.types.CBufRet.f32 %7487, 1
  %7490 = extractvalue %dx.types.CBufRet.f32 %7487, 2
  %7491 = extractvalue %dx.types.CBufRet.f32 %7487, 3
  %7492 = extractvalue %dx.types.CBufRet.f32 %7476, 0
  %7493 = extractvalue %dx.types.CBufRet.f32 %7476, 1
  %7494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7495 = extractvalue %dx.types.CBufRet.f32 %7494, 0
  %7496 = extractvalue %dx.types.CBufRet.f32 %7494, 1
  %7497 = extractvalue %dx.types.CBufRet.f32 %7494, 2
  %7498 = fadd fast float %7495, %6258
  %7499 = fadd fast float %7496, %6259
  %7500 = fadd fast float %7497, %6260
  %7501 = fmul fast float %7498, %7483
  %7502 = call float @dx.op.tertiary.f32(i32 46, float %7484, float %7499, float %7501)  ; FMad(a,b,c)
  %7503 = call float @dx.op.tertiary.f32(i32 46, float %7485, float %7500, float %7502)  ; FMad(a,b,c)
  %7504 = fadd fast float %7503, %7486
  %7505 = fmul fast float %7498, %7488
  %7506 = call float @dx.op.tertiary.f32(i32 46, float %7489, float %7499, float %7505)  ; FMad(a,b,c)
  %7507 = call float @dx.op.tertiary.f32(i32 46, float %7490, float %7500, float %7506)  ; FMad(a,b,c)
  %7508 = fadd fast float %7507, %7491
  %7509 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %53, float %7504, float %7508, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7510 = extractvalue %dx.types.ResRet.f32 %7509, 0
  %7511 = fmul fast float %7510, %7493
  %7512 = fadd fast float %7511, %7492
  %7513 = call float @dx.op.unary.f32(i32 7, float %7512)  ; Saturate(value)
  %7514 = fmul fast float %7513, %7477
  %7515 = fsub fast float 1.000000e+00, %7514
  br label %7516

; <label>:7516                                    ; preds = %7481, %7479
  %7517 = phi float [ %7515, %7481 ], [ 1.000000e+00, %7479 ]
  %7518 = fmul fast float %7517, %7475
  br label %7519

; <label>:7519                                    ; preds = %7516, %7465, %6238
  %7520 = phi float [ 1.000000e+00, %6238 ], [ %7518, %7516 ], [ %7475, %7465 ]
  %7521 = call float @dx.op.binary.f32(i32 36, float %7520, float %7520)  ; FMin(a,b)
  %7522 = call float @dx.op.binary.f32(i32 36, float %7520, float %7521)  ; FMin(a,b)
  %7523 = fcmp fast ogt float %7522, 0.000000e+00
  br i1 %7523, label %7524, label %7689, !dx.controlflow.hints !134

; <label>:7524                                    ; preds = %7519
  %7525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7526 = extractvalue %dx.types.CBufRet.f32 %7525, 0
  %7527 = extractvalue %dx.types.CBufRet.f32 %7525, 1
  %7528 = extractvalue %dx.types.CBufRet.f32 %7525, 2
  %7529 = extractvalue %dx.types.CBufRet.f32 %7525, 3
  %7530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7531 = extractvalue %dx.types.CBufRet.f32 %7530, 0
  %7532 = extractvalue %dx.types.CBufRet.f32 %7530, 1
  %7533 = extractvalue %dx.types.CBufRet.f32 %7530, 2
  %7534 = extractvalue %dx.types.CBufRet.f32 %7530, 3
  %7535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7536 = extractvalue %dx.types.CBufRet.f32 %7535, 0
  %7537 = extractvalue %dx.types.CBufRet.f32 %7535, 1
  %7538 = extractvalue %dx.types.CBufRet.f32 %7535, 2
  %7539 = extractvalue %dx.types.CBufRet.f32 %7535, 3
  %7540 = fmul fast float %7526, %6258
  %7541 = call float @dx.op.tertiary.f32(i32 46, float %6259, float %7527, float %7540)  ; FMad(a,b,c)
  %7542 = call float @dx.op.tertiary.f32(i32 46, float %6260, float %7528, float %7541)  ; FMad(a,b,c)
  %7543 = fadd fast float %7542, %7529
  %7544 = fmul fast float %7531, %6258
  %7545 = call float @dx.op.tertiary.f32(i32 46, float %6259, float %7532, float %7544)  ; FMad(a,b,c)
  %7546 = call float @dx.op.tertiary.f32(i32 46, float %6260, float %7533, float %7545)  ; FMad(a,b,c)
  %7547 = fadd fast float %7546, %7534
  %7548 = fmul fast float %7536, %6258
  %7549 = call float @dx.op.tertiary.f32(i32 46, float %6259, float %7537, float %7548)  ; FMad(a,b,c)
  %7550 = call float @dx.op.tertiary.f32(i32 46, float %6260, float %7538, float %7549)  ; FMad(a,b,c)
  %7551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7552 = extractvalue %dx.types.CBufRet.f32 %7551, 0
  %7553 = extractvalue %dx.types.CBufRet.f32 %7551, 1
  %7554 = extractvalue %dx.types.CBufRet.f32 %7551, 3
  %7555 = fmul fast float %7554, %7543
  %7556 = fmul fast float %7554, %7547
  %7557 = fadd fast float %7555, %7552
  %7558 = fadd fast float %7556, %7553
  %7559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7560 = extractvalue %dx.types.CBufRet.f32 %7559, 0
  %7561 = extractvalue %dx.types.CBufRet.f32 %7559, 1
  %7562 = fsub fast float %7557, %7560
  %7563 = fsub fast float %7558, %7561
  %7564 = fcmp fast olt float %7562, 0.000000e+00
  %7565 = fcmp fast olt float %7563, 0.000000e+00
  %7566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7567 = extractvalue %dx.types.CBufRet.f32 %7566, 0
  %7568 = extractvalue %dx.types.CBufRet.f32 %7566, 1
  %7569 = extractvalue %dx.types.CBufRet.f32 %7566, 2
  %7570 = extractvalue %dx.types.CBufRet.f32 %7566, 3
  %7571 = select i1 %7564, float %7567, float %7569
  %7572 = select i1 %7565, float %7568, float %7570
  %7573 = fmul fast float %7571, %7562
  %7574 = fmul fast float %7572, %7563
  %7575 = call float @dx.op.unary.f32(i32 6, float %7573)  ; FAbs(value)
  %7576 = call float @dx.op.unary.f32(i32 6, float %7574)  ; FAbs(value)
  %7577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7578 = extractvalue %dx.types.CBufRet.f32 %7577, 0
  %7579 = call float @dx.op.binary.f32(i32 35, float %7575, float %7576)  ; FMax(a,b)
  %7580 = fsub fast float %7578, %7579
  %7581 = call float @dx.op.unary.f32(i32 7, float %7580)  ; Saturate(value)
  %7582 = fcmp fast ogt float %7581, 0.000000e+00
  br i1 %7582, label %7583, label %7624, !dx.controlflow.hints !135

; <label>:7583                                    ; preds = %7524
  %7584 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %56, float %7557, float %7558, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7585 = extractvalue %dx.types.ResRet.f32 %7584, 1
  %7586 = fcmp fast ogt float %7585, 0.000000e+00
  br i1 %7586, label %7587, label %7619

; <label>:7587                                    ; preds = %7583
  %7588 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %56, float %7557, float %7558, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7589 = extractvalue %dx.types.ResRet.f32 %7588, 0
  %7590 = extractvalue %dx.types.ResRet.f32 %7588, 1
  %7591 = extractvalue %dx.types.ResRet.f32 %7588, 2
  %7592 = extractvalue %dx.types.ResRet.f32 %7588, 3
  %7593 = fsub fast float 1.000000e+00, %7539
  %7594 = fsub fast float %7593, %7550
  %7595 = fmul fast float %7594, 0x400921FB60000000
  %7596 = fadd fast float %7595, 0x3FF921FB60000000
  %7597 = call float @dx.op.unary.f32(i32 13, float %7596)  ; Sin(value)
  %7598 = fadd fast float %7597, -1.000000e+00
  %7599 = fmul fast float %7598, 0x3FD45F3060000000
  %7600 = fmul fast float %7594, 0x401921FB60000000
  %7601 = fadd fast float %7600, 0x400921FB60000000
  %7602 = call float @dx.op.unary.f32(i32 13, float %7601)  ; Sin(value)
  %7603 = fadd fast float %7602, 0x3E7777A5C0000000
  %7604 = fmul fast float %7603, 0x3FC45F3060000000
  %7605 = fmul fast float %7594, 0x4022D97C80000000
  %7606 = fadd fast float %7605, 0x4012D97C80000000
  %7607 = call float @dx.op.unary.f32(i32 13, float %7606)  ; Sin(value)
  %7608 = fadd fast float %7607, 1.000000e+00
  %7609 = fmul fast float %7608, 0x3FBB2995E0000000
  %7610 = fmul fast float %7594, 0x402921FB60000000
  %7611 = fadd fast float %7610, 0x401921FB60000000
  %7612 = call float @dx.op.unary.f32(i32 13, float %7611)  ; Sin(value)
  %7613 = fadd fast float %7612, 0xBE8777A5C0000000
  %7614 = fmul fast float %7613, 0x3FB45F3060000000
  %7615 = call float @dx.op.dot4.f32(i32 56, float %7589, float %7590, float %7591, float %7592, float %7599, float %7604, float %7609, float %7614)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7616 = fmul fast float %7615, 0xBFF7154760000000
  %7617 = call float @dx.op.unary.f32(i32 21, float %7616)  ; Exp(value)
  %7618 = call float @dx.op.unary.f32(i32 7, float %7617)  ; Saturate(value)
  br label %7619

; <label>:7619                                    ; preds = %7587, %7583
  %7620 = phi float [ %7618, %7587 ], [ 1.000000e+00, %7583 ]
  %7621 = fadd fast float %7620, -1.000000e+00
  %7622 = fmul fast float %7621, %7581
  %7623 = fadd fast float %7622, 1.000000e+00
  br label %7624

; <label>:7624                                    ; preds = %7619, %7524
  %7625 = phi float [ %7623, %7619 ], [ 1.000000e+00, %7524 ]
  %7626 = fmul fast float %7625, %7520
  %7627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7628 = extractvalue %dx.types.CBufRet.f32 %7627, 0
  %7629 = extractvalue %dx.types.CBufRet.f32 %7627, 1
  %7630 = extractvalue %dx.types.CBufRet.f32 %7627, 2
  %7631 = fadd fast float %7628, %207
  %7632 = fadd fast float %7629, %208
  %7633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7634 = extractvalue %dx.types.CBufRet.f32 %7633, 1
  %7635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7636 = extractvalue %dx.types.CBufRet.f32 %7635, 0
  %7637 = extractvalue %dx.types.CBufRet.f32 %7635, 1
  %7638 = extractvalue %dx.types.CBufRet.f32 %7635, 2
  %7639 = fsub fast float -0.000000e+00, %7631
  %7640 = fsub fast float -0.000000e+00, %7632
  %7641 = fsub fast float %5455, %7630
  %7642 = fadd fast float %7641, %7634
  %7643 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7639, float %7640, float %7642)  ; Dot3(ax,ay,az,bx,by,bz)
  %7644 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7636, float %7637, float %7638)  ; Dot3(ax,ay,az,bx,by,bz)
  %7645 = fdiv fast float 1.000000e+00, %7644
  %7646 = fmul fast float %7645, %7643
  %7647 = fmul fast float %7636, %7646
  %7648 = fmul fast float %7637, %7646
  %7649 = fadd fast float %7647, %7631
  %7650 = fadd fast float %7648, %7632
  %7651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7652 = extractvalue %dx.types.CBufRet.f32 %7651, 0
  %7653 = extractvalue %dx.types.CBufRet.f32 %7651, 1
  %7654 = fsub fast float %7649, %7652
  %7655 = fsub fast float %7650, %7653
  %7656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7657 = extractvalue %dx.types.CBufRet.f32 %7656, 2
  %7658 = extractvalue %dx.types.CBufRet.f32 %7656, 3
  %7659 = fmul fast float %7654, %7657
  %7660 = fmul fast float %7655, %7658
  %7661 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7662 = extractvalue %dx.types.CBufRet.i32 %7661, 3
  %7663 = icmp eq i32 %7662, 0
  br i1 %7663, label %7669, label %7664

; <label>:7664                                    ; preds = %7624
  %7665 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %55, float %7659, float %7660, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7666 = extractvalue %dx.types.ResRet.f32 %7665, 0
  %7667 = extractvalue %dx.types.ResRet.f32 %7665, 1
  %7668 = extractvalue %dx.types.ResRet.f32 %7665, 2
  br label %7674

; <label>:7669                                    ; preds = %7624
  %7670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %56, float %7659, float %7660, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7671 = extractvalue %dx.types.ResRet.f32 %7670, 0
  %7672 = extractvalue %dx.types.ResRet.f32 %7670, 1
  %7673 = extractvalue %dx.types.ResRet.f32 %7670, 2
  br label %7674

; <label>:7674                                    ; preds = %7669, %7664
  %7675 = phi float [ %7666, %7664 ], [ %7671, %7669 ]
  %7676 = phi float [ %7667, %7664 ], [ %7672, %7669 ]
  %7677 = phi float [ %7668, %7664 ], [ %7673, %7669 ]
  %7678 = extractvalue %dx.types.CBufRet.f32 %7633, 2
  %7679 = fmul fast float %7678, %7675
  %7680 = extractvalue %dx.types.CBufRet.f32 %7633, 0
  %7681 = fsub fast float %7646, %7680
  %7682 = fsub fast float %7681, %7679
  %7683 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7682)  ; FMax(a,b)
  %7684 = fmul fast float %7683, %7676
  %7685 = call float @dx.op.binary.f32(i32 36, float %7677, float %7684)  ; FMin(a,b)
  %7686 = fmul fast float %7685, 0xBFF7154760000000
  %7687 = call float @dx.op.unary.f32(i32 21, float %7686)  ; Exp(value)
  %7688 = fmul fast float %7626, %7687
  br label %7689

; <label>:7689                                    ; preds = %7674, %7519
  %7690 = phi float [ %7688, %7674 ], [ %7520, %7519 ]
  %7691 = call float @dx.op.binary.f32(i32 36, float %7690, float %7690)  ; FMin(a,b)
  %7692 = call float @dx.op.binary.f32(i32 36, float %7690, float %7691)  ; FMin(a,b)
  %7693 = fcmp fast ogt float %7692, 0.000000e+00
  br i1 %7693, label %7694, label %7942, !dx.controlflow.hints !136

; <label>:7694                                    ; preds = %7689
  %7695 = fmul fast float %7690, %6250
  %7696 = fmul fast float %7690, %6251
  %7697 = fmul fast float %7690, %6252
  %7698 = fsub fast float %209, %4651
  %7699 = fcmp fast ogt float %7698, 0.000000e+00
  %7700 = fmul fast float %6239, 5.120000e+02
  %7701 = fmul fast float %6240, 5.120000e+02
  %7702 = fmul fast float %6241, 5.120000e+02
  %7703 = fadd fast float %7702, %209
  %7704 = fsub fast float %4651, %7703
  %7705 = fmul fast float %7704, 2.000000e+00
  %7706 = fadd fast float %7705, %7703
  %7707 = select i1 %7699, float %7706, float %7703
  %7708 = fsub fast float %7707, %209
  %7709 = call float @dx.op.dot3.f32(i32 55, float %7700, float %7701, float %7708, float %7700, float %7701, float %7708)  ; Dot3(ax,ay,az,bx,by,bz)
  %7710 = call float @dx.op.unary.f32(i32 25, float %7709)  ; Rsqrt(value)
  %7711 = fmul fast float %7710, %7700
  %7712 = fmul fast float %7710, %7701
  %7713 = fmul fast float %7710, %7708
  %7714 = fsub fast float %4651, %209
  %7715 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7714)  ; Dot3(ax,ay,az,bx,by,bz)
  %7716 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7711, float %7712, float %7713)  ; Dot3(ax,ay,az,bx,by,bz)
  %7717 = fdiv fast float 1.000000e+00, %7716
  %7718 = fmul fast float %7717, %7715
  %7719 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7698, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7720 = fcmp fast ogt float %7719, 0.000000e+00
  %7721 = fcmp fast olt float %7719, 0.000000e+00
  %7722 = zext i1 %7720 to i32
  %7723 = zext i1 %7721 to i32
  %7724 = sub nsw i32 %7722, %7723
  %7725 = sitofp i32 %7724 to float
  %7726 = fsub fast float %7707, %4651
  %7727 = call float @dx.op.dot3.f32(i32 55, float %7700, float %7701, float %7726, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7728 = fcmp fast ogt float %7727, 0.000000e+00
  %7729 = fcmp fast olt float %7727, 0.000000e+00
  %7730 = zext i1 %7728 to i32
  %7731 = zext i1 %7729 to i32
  %7732 = sub nsw i32 %7730, %7731
  %7733 = sitofp i32 %7732 to float
  %7734 = fcmp fast une float %7725, %7733
  br i1 %7734, label %7735, label %7745

; <label>:7735                                    ; preds = %7694
  %7736 = fmul fast float %7718, %7713
  %7737 = fmul fast float %7718, %7712
  %7738 = fmul fast float %7718, %7711
  %7739 = fmul fast float %7738, %7738
  %7740 = fmul fast float %7737, %7737
  %7741 = fadd fast float %7739, %7740
  %7742 = fmul fast float %7736, %7736
  %7743 = fadd fast float %7741, %7742
  %7744 = call float @dx.op.unary.f32(i32 24, float %7743)  ; Sqrt(value)
  br label %7755

; <label>:7745                                    ; preds = %7694
  %7746 = icmp slt i32 %7724, 0
  br i1 %7746, label %7747, label %7755

; <label>:7747                                    ; preds = %7745
  %7748 = fsub fast float %209, %7707
  %7749 = fmul fast float %7700, %7700
  %7750 = fmul fast float %7701, %7701
  %7751 = fadd fast float %7749, %7750
  %7752 = fmul fast float %7748, %7748
  %7753 = fadd fast float %7751, %7752
  %7754 = call float @dx.op.unary.f32(i32 24, float %7753)  ; Sqrt(value)
  br label %7755

; <label>:7755                                    ; preds = %7747, %7745, %7735
  %7756 = phi float [ %7744, %7735 ], [ %7754, %7747 ], [ 0.000000e+00, %7745 ]
  %7757 = fsub fast float -0.000000e+00, %7756
  %7758 = select i1 %7699, float -0.000000e+00, float %7757
  %7759 = fmul fast float %4652, 0x3FF7154760000000
  %7760 = fmul fast float %7759, %7758
  %7761 = fmul fast float %4653, 0x3FF7154760000000
  %7762 = fmul fast float %7761, %7758
  %7763 = fmul fast float %4654, 0x3FF7154760000000
  %7764 = fmul fast float %7763, %7758
  %7765 = call float @dx.op.unary.f32(i32 21, float %7760)  ; Exp(value)
  %7766 = call float @dx.op.unary.f32(i32 21, float %7762)  ; Exp(value)
  %7767 = call float @dx.op.unary.f32(i32 21, float %7764)  ; Exp(value)
  %7768 = call float @dx.op.unary.f32(i32 7, float %7765)  ; Saturate(value)
  %7769 = call float @dx.op.unary.f32(i32 7, float %7766)  ; Saturate(value)
  %7770 = call float @dx.op.unary.f32(i32 7, float %7767)  ; Saturate(value)
  %7771 = fmul fast float %7695, %7768
  %7772 = fmul fast float %7696, %7769
  %7773 = fmul fast float %7697, %7770
  %7774 = fsub fast float %6239, %5443
  %7775 = fsub fast float %6240, %5442
  %7776 = fsub fast float %6241, %5441
  %7777 = call float @dx.op.dot3.f32(i32 55, float %7774, float %7775, float %7776, float %7774, float %7775, float %7776)  ; Dot3(ax,ay,az,bx,by,bz)
  %7778 = call float @dx.op.unary.f32(i32 25, float %7777)  ; Rsqrt(value)
  %7779 = fmul fast float %7778, %7774
  %7780 = fmul fast float %7778, %7775
  %7781 = fmul fast float %7778, %7776
  %7782 = call float @dx.op.dot3.f32(i32 55, float %6239, float %6240, float %6241, float %5444, float %5445, float %5446)  ; Dot3(ax,ay,az,bx,by,bz)
  %7783 = call float @dx.op.dot3.f32(i32 55, float %5440, float %5439, float %5438, float %7779, float %7780, float %7781)  ; Dot3(ax,ay,az,bx,by,bz)
  %7784 = call float @dx.op.unary.f32(i32 7, float %7782)  ; Saturate(value)
  %7785 = bitcast i32 %5482 to float
  %7786 = fmul fast float %7784, %7784
  %7787 = fmul fast float %7786, %7785
  %7788 = call float @dx.op.unary.f32(i32 7, float %7787)  ; Saturate(value)
  %7789 = fmul fast float %7788, %7784
  %7790 = call float @dx.op.dot3.f32(i32 55, float %5444, float %5445, float %5446, float %7779, float %7780, float %7781)  ; Dot3(ax,ay,az,bx,by,bz)
  %7791 = fmul fast float %7790, %7790
  %7792 = call float @dx.op.unary.f32(i32 6, float %7782)  ; FAbs(value)
  %7793 = fsub fast float 1.000000e+00, %5476
  %7794 = fmul fast float %5458, %5458
  %7795 = fmul fast float %7794, %7793
  %7796 = fadd fast float %7795, %5476
  %7797 = bitcast float %7796 to i32
  %7798 = ashr i32 %7797, 1
  %7799 = add nsw i32 %7798, 532487669
  %7800 = bitcast i32 %7799 to float
  %7801 = fadd fast float %7800, %5458
  %7802 = fmul fast float %5476, %7791
  %7803 = fsub fast float 1.000000e+00, %7791
  %7804 = fadd fast float %7803, %7802
  %7805 = fmul fast float %7792, %7792
  %7806 = fmul fast float %7805, %7793
  %7807 = fadd fast float %7806, %5476
  %7808 = bitcast float %7807 to i32
  %7809 = ashr i32 %7808, 1
  %7810 = add nsw i32 %7809, 532487669
  %7811 = bitcast i32 %7810 to float
  %7812 = fadd fast float %7811, %7792
  %7813 = fmul fast float %7804, %7804
  %7814 = fmul fast float %7813, %7801
  %7815 = fmul fast float %7814, %7812
  %7816 = fdiv fast float 0x3FF0A00000000000, %7815
  %7817 = fmul fast float %7816, %5476
  %7818 = call float @dx.op.unary.f32(i32 6, float %7783)  ; FAbs(value)
  %7819 = fsub fast float 1.000000e+00, %7818
  %7820 = bitcast float %7819 to i32
  %7821 = sitofp i32 %7820 to float
  %7822 = fmul fast float %7821, 5.000000e+00
  %7823 = fadd fast float %7822, 0xC1EFBF8940000000
  %7824 = fptosi float %7823 to i32
  %7825 = bitcast i32 %7824 to float
  %7826 = fsub fast float 1.000000e+00, %5450
  %7827 = fsub fast float 1.000000e+00, %5451
  %7828 = fsub fast float 1.000000e+00, %5456
  %7829 = fmul fast float %7825, %7826
  %7830 = fmul fast float %7825, %7827
  %7831 = fmul fast float %7825, %7828
  %7832 = fadd fast float %7829, %5450
  %7833 = fadd fast float %7830, %5451
  %7834 = fadd fast float %7831, %5456
  br i1 %5598, label %7835, label %7858

; <label>:7835                                    ; preds = %7755
  %7836 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %56, float %4249, float %7818, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7837 = extractvalue %dx.types.ResRet.f32 %7836, 0
  %7838 = extractvalue %dx.types.ResRet.f32 %7836, 1
  %7839 = extractvalue %dx.types.ResRet.f32 %7836, 2
  %7840 = fadd fast float %7837, -5.000000e-01
  %7841 = fadd fast float %7838, -5.000000e-01
  %7842 = fadd fast float %7839, -5.000000e-01
  %7843 = fmul fast float %5450, 4.000000e+00
  %7844 = fmul fast float %7843, %7826
  %7845 = fmul fast float %7844, %7840
  %7846 = fmul fast float %5451, 4.000000e+00
  %7847 = fmul fast float %7846, %7827
  %7848 = fmul fast float %7847, %7841
  %7849 = fmul fast float %5456, 4.000000e+00
  %7850 = fmul fast float %7849, %7828
  %7851 = fmul fast float %7850, %7842
  %7852 = fadd fast float %7845, %7832
  %7853 = fadd fast float %7848, %7833
  %7854 = fadd fast float %7851, %7834
  %7855 = call float @dx.op.unary.f32(i32 7, float %7852)  ; Saturate(value)
  %7856 = call float @dx.op.unary.f32(i32 7, float %7853)  ; Saturate(value)
  %7857 = call float @dx.op.unary.f32(i32 7, float %7854)  ; Saturate(value)
  br label %7858

; <label>:7858                                    ; preds = %7835, %7755
  %7859 = phi float [ %7855, %7835 ], [ %7832, %7755 ]
  %7860 = phi float [ %7856, %7835 ], [ %7833, %7755 ]
  %7861 = phi float [ %7857, %7835 ], [ %7834, %7755 ]
  %7862 = fmul fast float %7782, 9.843750e-01
  %7863 = fadd fast float %7862, 7.812500e-03
  %7864 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %56, float %7863, float %5588, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7865 = extractvalue %dx.types.ResRet.f32 %7864, 2
  %7866 = extractvalue %dx.types.ResRet.f32 %7864, 3
  %7867 = fmul fast float %7865, %5450
  %7868 = fmul fast float %7865, %5451
  %7869 = fmul fast float %7865, %5456
  %7870 = fadd fast float %7867, %7866
  %7871 = fadd fast float %7868, %7866
  %7872 = fadd fast float %7869, %7866
  br i1 %5598, label %7873, label %7896

; <label>:7873                                    ; preds = %7858
  %7874 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %56, float %4249, float %7782, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7875 = extractvalue %dx.types.ResRet.f32 %7874, 0
  %7876 = extractvalue %dx.types.ResRet.f32 %7874, 1
  %7877 = extractvalue %dx.types.ResRet.f32 %7874, 2
  %7878 = fadd fast float %7875, -5.000000e-01
  %7879 = fadd fast float %7876, -5.000000e-01
  %7880 = fadd fast float %7877, -5.000000e-01
  %7881 = fmul fast float %5450, 4.000000e+00
  %7882 = fmul fast float %7881, %7826
  %7883 = fmul fast float %7882, %7878
  %7884 = fmul fast float %5451, 4.000000e+00
  %7885 = fmul fast float %7884, %7827
  %7886 = fmul fast float %7885, %7879
  %7887 = fmul fast float %5456, 4.000000e+00
  %7888 = fmul fast float %7887, %7828
  %7889 = fmul fast float %7888, %7880
  %7890 = fadd fast float %7883, %7870
  %7891 = fadd fast float %7886, %7871
  %7892 = fadd fast float %7889, %7872
  %7893 = call float @dx.op.unary.f32(i32 7, float %7890)  ; Saturate(value)
  %7894 = call float @dx.op.unary.f32(i32 7, float %7891)  ; Saturate(value)
  %7895 = call float @dx.op.unary.f32(i32 7, float %7892)  ; Saturate(value)
  br label %7896

; <label>:7896                                    ; preds = %7873, %7858
  %7897 = phi float [ %7893, %7873 ], [ %7870, %7858 ]
  %7898 = phi float [ %7894, %7873 ], [ %7871, %7858 ]
  %7899 = phi float [ %7895, %7873 ], [ %7872, %7858 ]
  %7900 = call float @dx.op.binary.f32(i32 35, float %7898, float %7899)  ; FMax(a,b)
  %7901 = call float @dx.op.binary.f32(i32 35, float %7897, float %7900)  ; FMax(a,b)
  %7902 = fsub fast float 1.000000e+00, %7901
  %7903 = fmul fast float %7859, %7817
  %7904 = fmul fast float %7860, %7817
  %7905 = fmul fast float %7861, %7817
  %7906 = fsub fast float 1.000000e+00, %7783
  %7907 = bitcast float %7906 to i32
  %7908 = sitofp i32 %7907 to float
  %7909 = fmul fast float %7908, 5.000000e+00
  %7910 = fadd fast float %7909, 0xC1EFBF8940000000
  %7911 = fptosi float %7910 to i32
  %7912 = bitcast i32 %7911 to float
  %7913 = fmul fast float %7912, %4250
  %7914 = fmul fast float %7902, %7913
  %7915 = fmul fast float %7914, %6193
  %7916 = fmul fast float %7914, %6194
  %7917 = fmul fast float %7914, %6195
  %7918 = fadd fast float %7915, %7903
  %7919 = fadd fast float %7916, %7904
  %7920 = fadd fast float %7917, %7905
  %7921 = fmul fast float %7789, %7771
  %7922 = fmul fast float %7921, %7902
  %7923 = fmul fast float %7789, %7772
  %7924 = fmul fast float %7923, %7902
  %7925 = fmul fast float %7789, %7773
  %7926 = fmul fast float %7925, %7902
  %7927 = fmul fast float %7921, %7918
  %7928 = fmul fast float %7923, %7919
  %7929 = fmul fast float %7925, %7920
  %7930 = fadd fast float %7922, %6175
  %7931 = fmul fast float %7930, %4246
  %7932 = fadd fast float %7924, %6177
  %7933 = fmul fast float %7932, %4246
  %7934 = fadd fast float %7926, %6179
  %7935 = fmul fast float %7934, %4246
  %7936 = fadd fast float %7927, %6227
  %7937 = fmul fast float %7936, %4246
  %7938 = fadd fast float %7928, %6230
  %7939 = fmul fast float %7938, %4246
  %7940 = fadd fast float %7929, %6233
  %7941 = fmul fast float %7940, %4246
  br label %7942

; <label>:7942                                    ; preds = %7896, %7689, %6120
  %7943 = phi float [ %6228, %6120 ], [ %6228, %7689 ], [ %7937, %7896 ]
  %7944 = phi float [ %6231, %6120 ], [ %6231, %7689 ], [ %7939, %7896 ]
  %7945 = phi float [ %6234, %6120 ], [ %6234, %7689 ], [ %7941, %7896 ]
  %7946 = phi float [ %6223, %6120 ], [ %6223, %7689 ], [ %7931, %7896 ]
  %7947 = phi float [ %6224, %6120 ], [ %6224, %7689 ], [ %7933, %7896 ]
  %7948 = phi float [ %6225, %6120 ], [ %6225, %7689 ], [ %7935, %7896 ]
  %7949 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7950 = extractvalue %dx.types.CBufRet.i32 %7949, 0
  %7951 = icmp eq i32 %7950, 0
  br i1 %7951, label %8615, label %7952

; <label>:7952                                    ; preds = %7942
  %7953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7954 = extractvalue %dx.types.CBufRet.f32 %7953, 2
  %7955 = extractvalue %dx.types.CBufRet.f32 %7953, 3
  %7956 = fmul fast float %7954, %120
  %7957 = fmul fast float %7955, %121
  %7958 = fptoui float %7956 to i32
  %7959 = fptoui float %7957 to i32
  %7960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7961 = extractvalue %dx.types.CBufRet.f32 %7960, 0
  %7962 = extractvalue %dx.types.CBufRet.f32 %7960, 2
  %7963 = extractvalue %dx.types.CBufRet.f32 %7960, 3
  %7964 = fadd fast float %107, -4.000000e+00
  %7965 = call float @dx.op.binary.f32(i32 35, float %7964, float 0.000000e+00)  ; FMax(a,b)
  %7966 = fadd fast float %7965, %7961
  %7967 = fmul fast float %7966, %7962
  %7968 = call float @dx.op.unary.f32(i32 23, float %7967)  ; Log(value)
  %7969 = fmul fast float %7968, %7963
  %7970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7971 = extractvalue %dx.types.CBufRet.f32 %7970, 2
  %7972 = fmul fast float %7969, %7971
  %7973 = call float @dx.op.unary.f32(i32 7, float %7972)  ; Saturate(value)
  %7974 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7975 = extractvalue %dx.types.CBufRet.i32 %7974, 1
  %7976 = add i32 %7975, -1
  %7977 = uitofp i32 %7975 to float
  %7978 = fmul fast float %7977, %7973
  %7979 = fptoui float %7978 to i32
  %7980 = call i32 @dx.op.binary.i32(i32 40, i32 %7979, i32 %7976)  ; UMin(a,b)
  %7981 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7982 = extractvalue %dx.types.CBufRet.i32 %7981, 2
  %7983 = extractvalue %dx.types.CBufRet.i32 %7981, 3
  %7984 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7959, i32 %7982, i32 %7958)  ; UMad(a,b,c)
  %7985 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7980, i32 %7983, i32 %7984)  ; UMad(a,b,c)
  %7986 = add nsw i32 %7950, -1
  %7987 = call i32 @dx.op.binary.i32(i32 37, i32 %7986, i32 0)  ; IMax(a,b)
  %7988 = call float @dx.op.binary.f32(i32 35, float %107, float 0.000000e+00)  ; FMax(a,b)
  %7989 = fptoui float %7988 to i32
  %7990 = lshr i32 %7989, 5
  %7991 = call i32 @dx.op.binary.i32(i32 40, i32 %7990, i32 8191)  ; UMin(a,b)
  %7992 = shl i32 %7991, 2
  %7993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7992, i32 undef)  ; BufferLoad(srv,index,wot)
  %7994 = extractvalue %dx.types.ResRet.i32 %7993, 0
  %7995 = lshr i32 %7994, 16
  %7996 = and i32 %7994, 65535
  %7997 = lshr i32 %7994, 21
  %7998 = lshr i32 %7996, 5
  %7999 = call i32 @dx.op.binary.i32(i32 40, i32 %7998, i32 %7987)  ; UMin(a,b)
  %8000 = icmp ugt i32 %7997, %7999
  br i1 %8000, label %8615, label %8001

; <label>:8001                                    ; preds = %7952
  br label %8002

; <label>:8002                                    ; preds = %8605, %8001
  %8003 = phi i32 [ %8612, %8605 ], [ %7997, %8001 ]
  %8004 = phi float [ %8606, %8605 ], [ %7943, %8001 ]
  %8005 = phi float [ %8607, %8605 ], [ %7944, %8001 ]
  %8006 = phi float [ %8608, %8605 ], [ %7945, %8001 ]
  %8007 = phi float [ %8609, %8605 ], [ %7946, %8001 ]
  %8008 = phi float [ %8610, %8605 ], [ %7947, %8001 ]
  %8009 = phi float [ %8611, %8605 ], [ %7948, %8001 ]
  %8010 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8011 = extractvalue %dx.types.CBufRet.i32 %8010, 0
  %8012 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7985, i32 %8011, i32 %8003)  ; UMad(a,b,c)
  %8013 = shl i32 %8012, 2
  %8014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %8013, i32 undef)  ; BufferLoad(srv,index,wot)
  %8015 = extractvalue %dx.types.ResRet.i32 %8014, 0
  %8016 = shl i32 %8003, 5
  %8017 = sub nsw i32 %7995, %8016
  %8018 = call i32 @dx.op.binary.i32(i32 37, i32 %8017, i32 0)  ; IMax(a,b)
  %8019 = call i32 @dx.op.binary.i32(i32 38, i32 %8018, i32 31)  ; IMin(a,b)
  %8020 = sub nsw i32 1, %7995
  %8021 = add nsw i32 %8020, %7996
  %8022 = call i32 @dx.op.binary.i32(i32 37, i32 %8021, i32 0)  ; IMax(a,b)
  %8023 = call i32 @dx.op.binary.i32(i32 38, i32 %8022, i32 32)  ; IMin(a,b)
  %8024 = and i32 %8023, 31
  %8025 = shl i32 -1, %8024
  %8026 = xor i32 %8025, -1
  %8027 = and i32 %8019, 31
  %8028 = shl i32 %8026, %8027
  %8029 = icmp eq i32 %8023, 32
  %8030 = select i1 %8029, i32 -1, i32 %8028
  %8031 = and i32 %8030, %8015
  %8032 = icmp eq i32 %8031, 0
  br i1 %8032, label %8605, label %8033

; <label>:8033                                    ; preds = %8002
  br label %8034

; <label>:8034                                    ; preds = %8168, %8033
  %8035 = phi i32 [ %8046, %8168 ], [ %8031, %8033 ]
  %8036 = phi float [ %8169, %8168 ], [ %8004, %8033 ]
  %8037 = phi float [ %8170, %8168 ], [ %8005, %8033 ]
  %8038 = phi float [ %8171, %8168 ], [ %8006, %8033 ]
  %8039 = phi float [ %8172, %8168 ], [ %8007, %8033 ]
  %8040 = phi float [ %8173, %8168 ], [ %8008, %8033 ]
  %8041 = phi float [ %8174, %8168 ], [ %8009, %8033 ]
  %8042 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %8035)  ; FirstbitLo(value)
  %8043 = add i32 %8042, %8016
  %8044 = and i32 %8042, 31
  %8045 = shl i32 1, %8044
  %8046 = xor i32 %8045, %8035
  %8047 = mul i32 %8043, 112
  %8048 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8047, i32 undef)  ; BufferLoad(srv,index,wot)
  %8049 = extractvalue %dx.types.ResRet.f32 %8048, 0
  %8050 = extractvalue %dx.types.ResRet.f32 %8048, 1
  %8051 = extractvalue %dx.types.ResRet.f32 %8048, 2
  %8052 = or i32 %8047, 12
  %8053 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8052, i32 undef)  ; BufferLoad(srv,index,wot)
  %8054 = extractvalue %dx.types.ResRet.f32 %8053, 0
  %8055 = add i32 %8047, 16
  %8056 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8055, i32 undef)  ; BufferLoad(srv,index,wot)
  %8057 = extractvalue %dx.types.ResRet.f32 %8056, 0
  %8058 = extractvalue %dx.types.ResRet.f32 %8056, 1
  %8059 = extractvalue %dx.types.ResRet.f32 %8056, 2
  %8060 = add i32 %8047, 28
  %8061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %8060, i32 undef)  ; BufferLoad(srv,index,wot)
  %8062 = extractvalue %dx.types.ResRet.i32 %8061, 0
  %8063 = add i32 %8047, 44
  %8064 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8063, i32 undef)  ; BufferLoad(srv,index,wot)
  %8065 = extractvalue %dx.types.ResRet.f32 %8064, 0
  %8066 = add i32 %8047, 48
  %8067 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8066, i32 undef)  ; BufferLoad(srv,index,wot)
  %8068 = extractvalue %dx.types.ResRet.f32 %8067, 0
  %8069 = extractvalue %dx.types.ResRet.f32 %8067, 1
  %8070 = extractvalue %dx.types.ResRet.f32 %8067, 2
  %8071 = extractvalue %dx.types.ResRet.f32 %8067, 3
  %8072 = add i32 %8047, 64
  %8073 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8072, i32 undef)  ; BufferLoad(srv,index,wot)
  %8074 = extractvalue %dx.types.ResRet.f32 %8073, 0
  %8075 = extractvalue %dx.types.ResRet.f32 %8073, 1
  %8076 = extractvalue %dx.types.ResRet.f32 %8073, 2
  %8077 = extractvalue %dx.types.ResRet.f32 %8073, 3
  %8078 = add i32 %8047, 80
  %8079 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8078, i32 undef)  ; BufferLoad(srv,index,wot)
  %8080 = extractvalue %dx.types.ResRet.f32 %8079, 1
  %8081 = extractvalue %dx.types.ResRet.f32 %8079, 2
  %8082 = add i32 %8047, 92
  %8083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %8082, i32 undef)  ; BufferLoad(srv,index,wot)
  %8084 = extractvalue %dx.types.ResRet.i32 %8083, 0
  %8085 = call float @dx.op.dot3.f32(i32 55, float %8049, float %8050, float %8051, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8086 = select i1 %279, float %8080, float %8049
  %8087 = select i1 %279, float %8085, float %8050
  %8088 = select i1 %279, float %8081, float %8051
  %8089 = and i32 %8084, 65535
  %8090 = uitofp i32 %8089 to float
  %8091 = lshr i32 %8084, 16
  %8092 = uitofp i32 %8091 to float
  %8093 = and i32 %8062, 65535
  %8094 = and i32 %8062, 50331648
  %8095 = icmp eq i32 %8094, 33554432
  %8096 = fsub fast float %8068, %207
  %8097 = fsub fast float %8069, %208
  %8098 = fsub fast float %8070, %209
  %8099 = call float @dx.op.dot3.f32(i32 55, float %8096, float %8097, float %8098, float %8096, float %8097, float %8098)  ; Dot3(ax,ay,az,bx,by,bz)
  %8100 = call float @dx.op.unary.f32(i32 24, float %8099)  ; Sqrt(value)
  %8101 = fdiv fast float 1.000000e+00, %8100
  %8102 = fmul fast float %8101, %8096
  %8103 = fmul fast float %8101, %8097
  %8104 = fmul fast float %8101, %8098
  %8105 = fadd fast float %8100, %8054
  %8106 = fdiv fast float 1.000000e+00, %8105
  %8107 = fmul float %8065, %8106
  %8108 = fmul float %8107, %8107
  %8109 = call float @dx.op.unary.f32(i32 7, float %8108)  ; Saturate(value)
  br i1 %8095, label %8110, label %8131

; <label>:8110                                    ; preds = %8034
  %8111 = fmul fast float %8076, %8057
  %8112 = fmul fast float %8076, %8058
  %8113 = fmul fast float %8076, %8059
  %8114 = fadd fast float %8096, %8111
  %8115 = fadd fast float %8097, %8112
  %8116 = fadd fast float %8098, %8113
  %8117 = call float @dx.op.dot3.f32(i32 55, float %8114, float %8115, float %8116, float %8114, float %8115, float %8116)  ; Dot3(ax,ay,az,bx,by,bz)
  %8118 = call float @dx.op.unary.f32(i32 25, float %8117)  ; Rsqrt(value)
  %8119 = fmul fast float %8118, %8114
  %8120 = fmul fast float %8118, %8115
  %8121 = fmul fast float %8118, %8116
  %8122 = fsub fast float %207, %8068
  %8123 = fsub fast float %208, %8069
  %8124 = fsub fast float %209, %8070
  %8125 = fsub fast float -0.000000e+00, %8122
  %8126 = fsub fast float -0.000000e+00, %8123
  %8127 = fsub fast float -0.000000e+00, %8124
  %8128 = call float @dx.op.dot3.f32(i32 55, float %8125, float %8126, float %8127, float %8057, float %8058, float %8059)  ; Dot3(ax,ay,az,bx,by,bz)
  %8129 = fcmp fast ogt float %8128, 0.000000e+00
  %8130 = uitofp i1 %8129 to float
  br label %8131

; <label>:8131                                    ; preds = %8110, %8034
  %8132 = phi float [ %8130, %8110 ], [ 1.000000e+00, %8034 ]
  %8133 = phi float [ %8119, %8110 ], [ %8102, %8034 ]
  %8134 = phi float [ %8120, %8110 ], [ %8103, %8034 ]
  %8135 = phi float [ %8121, %8110 ], [ %8104, %8034 ]
  %8136 = call float @dx.op.dot3.f32(i32 55, float %8057, float %8058, float %8059, float %8133, float %8134, float %8135)  ; Dot3(ax,ay,az,bx,by,bz)
  %8137 = fmul fast float %8136, %8136
  %8138 = call float @dx.op.unary.f32(i32 7, float %8137)  ; Saturate(value)
  %8139 = fsub fast float 1.000000e+00, %8138
  %8140 = fmul fast float %8139, 5.000000e-01
  %8141 = fcmp fast ogt float %8136, 0.000000e+00
  %8142 = fsub fast float 1.000000e+00, %8140
  %8143 = select i1 %8141, float %8140, float %8142
  %8144 = fmul fast float %8143, %8092
  %8145 = fadd fast float %8144, %8090
  %8146 = fmul fast float %8145, 0x3EF0001000000000
  %8147 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %56, float %8146, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8148 = extractvalue %dx.types.ResRet.f32 %8147, 0
  %8149 = fmul fast float %8136, %8074
  %8150 = fadd fast float %8149, %8075
  %8151 = call float @dx.op.unary.f32(i32 7, float %8150)  ; Saturate(value)
  %8152 = select i1 %8095, float 1.000000e+00, float %8151
  %8153 = select i1 %8095, float %8151, float 1.000000e+00
  %8154 = fmul fast float %8100, %8071
  %8155 = fsub fast float 1.000000e+00, %8154
  %8156 = fmul fast float %8155, %8077
  %8157 = call float @dx.op.unary.f32(i32 7, float %8156)  ; Saturate(value)
  %8158 = fmul fast float %8157, %8153
  %8159 = fmul fast float %8158, 2.000000e+00
  %8160 = fsub fast float 3.000000e+00, %8159
  %8161 = fmul fast float %8148, %8132
  %8162 = fmul fast float %8158, %8158
  %8163 = fmul fast float %8162, %8161
  %8164 = fmul fast float %8163, %8160
  %8165 = call float @dx.op.binary.f32(i32 36, float %8164, float %8164)  ; FMin(a,b)
  %8166 = call float @dx.op.binary.f32(i32 36, float %8164, float %8165)  ; FMin(a,b)
  %8167 = fcmp fast ogt float %8166, 0.000000e+00
  br i1 %8167, label %8176, label %8168, !dx.controlflow.hints !137

; <label>:8168                                    ; preds = %8561, %8322, %8131
  %8169 = phi float [ %8036, %8322 ], [ %8036, %8131 ], [ %8601, %8561 ]
  %8170 = phi float [ %8037, %8322 ], [ %8037, %8131 ], [ %8602, %8561 ]
  %8171 = phi float [ %8038, %8322 ], [ %8038, %8131 ], [ %8603, %8561 ]
  %8172 = phi float [ %8039, %8322 ], [ %8039, %8131 ], [ %8595, %8561 ]
  %8173 = phi float [ %8040, %8322 ], [ %8040, %8131 ], [ %8596, %8561 ]
  %8174 = phi float [ %8041, %8322 ], [ %8041, %8131 ], [ %8597, %8561 ]
  %8175 = icmp eq i32 %8035, %8045
  br i1 %8175, label %8604, label %8034

; <label>:8176                                    ; preds = %8131
  %8177 = icmp eq i32 %8093, 255
  br i1 %8177, label %8322, label %8178, !dx.controlflow.hints !138

; <label>:8178                                    ; preds = %8176
  %8179 = mul nuw nsw i32 %8093, 176
  %8180 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8179, i32 undef)  ; BufferLoad(srv,index,wot)
  %8181 = extractvalue %dx.types.ResRet.f32 %8180, 0
  %8182 = extractvalue %dx.types.ResRet.f32 %8180, 1
  %8183 = extractvalue %dx.types.ResRet.f32 %8180, 2
  %8184 = extractvalue %dx.types.ResRet.f32 %8180, 3
  %8185 = add nuw nsw i32 %8179, 16
  %8186 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8185, i32 undef)  ; BufferLoad(srv,index,wot)
  %8187 = extractvalue %dx.types.ResRet.f32 %8186, 0
  %8188 = extractvalue %dx.types.ResRet.f32 %8186, 1
  %8189 = add nuw nsw i32 %8179, 32
  %8190 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8189, i32 undef)  ; BufferLoad(srv,index,wot)
  %8191 = extractvalue %dx.types.ResRet.f32 %8190, 0
  %8192 = extractvalue %dx.types.ResRet.f32 %8190, 1
  %8193 = extractvalue %dx.types.ResRet.f32 %8190, 2
  %8194 = add nuw nsw i32 %8179, 48
  %8195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8194, i32 undef)  ; BufferLoad(srv,index,wot)
  %8196 = extractvalue %dx.types.ResRet.f32 %8195, 0
  %8197 = extractvalue %dx.types.ResRet.f32 %8195, 1
  %8198 = extractvalue %dx.types.ResRet.f32 %8195, 2
  %8199 = extractvalue %dx.types.ResRet.f32 %8195, 3
  %8200 = add nuw nsw i32 %8179, 64
  %8201 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8200, i32 undef)  ; BufferLoad(srv,index,wot)
  %8202 = extractvalue %dx.types.ResRet.f32 %8201, 0
  %8203 = extractvalue %dx.types.ResRet.f32 %8201, 1
  %8204 = extractvalue %dx.types.ResRet.f32 %8201, 2
  %8205 = extractvalue %dx.types.ResRet.f32 %8201, 3
  %8206 = add nuw nsw i32 %8179, 80
  %8207 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8206, i32 undef)  ; BufferLoad(srv,index,wot)
  %8208 = extractvalue %dx.types.ResRet.f32 %8207, 0
  %8209 = extractvalue %dx.types.ResRet.f32 %8207, 1
  %8210 = extractvalue %dx.types.ResRet.f32 %8207, 2
  %8211 = extractvalue %dx.types.ResRet.f32 %8207, 3
  %8212 = add nuw nsw i32 %8179, 96
  %8213 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8212, i32 undef)  ; BufferLoad(srv,index,wot)
  %8214 = extractvalue %dx.types.ResRet.f32 %8213, 0
  %8215 = extractvalue %dx.types.ResRet.f32 %8213, 1
  %8216 = extractvalue %dx.types.ResRet.f32 %8213, 2
  %8217 = extractvalue %dx.types.ResRet.f32 %8213, 3
  %8218 = bitcast float %8188 to i32
  %8219 = fmul fast float %8193, %127
  %8220 = fmul fast float %8193, %128
  %8221 = fmul fast float %8193, %129
  %8222 = fadd fast float %8219, %207
  %8223 = fadd fast float %8220, %208
  %8224 = fadd fast float %8221, %209
  %8225 = fmul fast float %8222, %8196
  %8226 = call float @dx.op.tertiary.f32(i32 46, float %8223, float %8202, float %8225)  ; FMad(a,b,c)
  %8227 = call float @dx.op.tertiary.f32(i32 46, float %8224, float %8208, float %8226)  ; FMad(a,b,c)
  %8228 = fadd fast float %8227, %8214
  %8229 = fmul fast float %8222, %8197
  %8230 = call float @dx.op.tertiary.f32(i32 46, float %8223, float %8203, float %8229)  ; FMad(a,b,c)
  %8231 = call float @dx.op.tertiary.f32(i32 46, float %8224, float %8209, float %8230)  ; FMad(a,b,c)
  %8232 = fadd fast float %8231, %8215
  %8233 = fmul fast float %8222, %8198
  %8234 = call float @dx.op.tertiary.f32(i32 46, float %8223, float %8204, float %8233)  ; FMad(a,b,c)
  %8235 = call float @dx.op.tertiary.f32(i32 46, float %8224, float %8210, float %8234)  ; FMad(a,b,c)
  %8236 = fadd fast float %8235, %8216
  %8237 = fmul fast float %8222, %8199
  %8238 = call float @dx.op.tertiary.f32(i32 46, float %8223, float %8205, float %8237)  ; FMad(a,b,c)
  %8239 = call float @dx.op.tertiary.f32(i32 46, float %8224, float %8211, float %8238)  ; FMad(a,b,c)
  %8240 = fadd fast float %8239, %8217
  %8241 = fdiv fast float %8228, %8240
  %8242 = fdiv fast float %8232, %8240
  %8243 = fdiv fast float %8236, %8240
  %8244 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8243)  ; FMax(a,b)
  %8245 = fmul fast float %290, 0x401921FB60000000
  %8246 = call float @dx.op.unary.f32(i32 13, float %8245)  ; Sin(value)
  %8247 = call float @dx.op.unary.f32(i32 12, float %8245)  ; Cos(value)
  %8248 = fmul fast float %8247, %8192
  %8249 = call float @dx.op.tertiary.f32(i32 46, float %8246, float %8192, float 0.000000e+00)  ; FMad(a,b,c)
  %8250 = fmul fast float %8192, %8246
  %8251 = fsub fast float -0.000000e+00, %8250
  %8252 = call float @dx.op.tertiary.f32(i32 46, float %8247, float %8192, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8253

; <label>:8253                                    ; preds = %8253, %8178
  %8254 = phi float [ 0.000000e+00, %8178 ], [ %8286, %8253 ]
  %8255 = phi float [ 0.000000e+00, %8178 ], [ %8288, %8253 ]
  %8256 = phi i32 [ 0, %8178 ], [ %8289, %8253 ]
  %8257 = mul i32 %8256, 2
  %8258 = add i32 0, %8257
  %8259 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8258
  %8260 = load float, float* %8259, align 4
  %8261 = mul i32 %8256, 2
  %8262 = add i32 1, %8261
  %8263 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8262
  %8264 = load float, float* %8263, align 4
  %8265 = fmul fast float %8248, %8260
  %8266 = call float @dx.op.tertiary.f32(i32 46, float %8264, float %8251, float %8265)  ; FMad(a,b,c)
  %8267 = fmul fast float %8260, %8249
  %8268 = call float @dx.op.tertiary.f32(i32 46, float %8264, float %8252, float %8267)  ; FMad(a,b,c)
  %8269 = fadd fast float %8266, %8241
  %8270 = fadd fast float %8268, %8242
  %8271 = fmul fast float %8269, %8187
  %8272 = fmul fast float %8270, %8187
  %8273 = call float @dx.op.binary.f32(i32 35, float %8271, float %8183)  ; FMax(a,b)
  %8274 = call float @dx.op.binary.f32(i32 35, float %8272, float %8183)  ; FMax(a,b)
  %8275 = call float @dx.op.binary.f32(i32 36, float %8273, float %8184)  ; FMin(a,b)
  %8276 = call float @dx.op.binary.f32(i32 36, float %8274, float %8184)  ; FMin(a,b)
  %8277 = fadd fast float %8275, %8181
  %8278 = fadd fast float %8276, %8182
  %8279 = uitofp i32 %8218 to float
  %8280 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %57, float %8277, float %8278, float %8279, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8281 = extractvalue %dx.types.ResRet.f32 %8280, 0
  %8282 = fsub fast float %8281, %8244
  %8283 = fsub fast float %8282, %8191
  %8284 = fcmp fast ogt float %8283, 0.000000e+00
  %8285 = select i1 %8284, float 1.000000e+00, float 0.000000e+00
  %8286 = fadd fast float %8285, %8254
  %8287 = select i1 %8284, float %8283, float 0.000000e+00
  %8288 = fadd fast float %8287, %8255
  %8289 = add nuw nsw i32 %8256, 1
  %8290 = icmp eq i32 %8289, 8
  br i1 %8290, label %8291, label %8253

; <label>:8291                                    ; preds = %8253
  %8292 = fdiv fast float 1.000000e+00, %8286
  %8293 = fmul fast float %8292, %8288
  %8294 = fdiv fast float 1.000000e+00, %8244
  %8295 = fmul fast float %8293, %8294
  %8296 = call float @dx.op.unary.f32(i32 7, float %8295)  ; Saturate(value)
  %8297 = call float @dx.op.binary.f32(i32 35, float %8296, float 0.000000e+00)  ; FMax(a,b)
  %8298 = fmul fast float %8286, 1.250000e-01
  %8299 = call float @dx.op.unary.f32(i32 7, float %8298)  ; Saturate(value)
  %8300 = fmul fast float %8299, 2.000000e+00
  %8301 = fadd fast float %8300, -1.000000e+00
  %8302 = fcmp fast ogt float %8301, 0.000000e+00
  %8303 = fcmp fast olt float %8301, 0.000000e+00
  %8304 = zext i1 %8302 to i32
  %8305 = zext i1 %8303 to i32
  %8306 = sub nsw i32 %8304, %8305
  %8307 = sitofp i32 %8306 to float
  %8308 = fmul fast float %8307, %8301
  %8309 = fsub fast float 1.000000e+00, %8308
  %8310 = fmul fast float %8309, %8309
  %8311 = fmul fast float %8310, %8309
  %8312 = fsub fast float %8309, %8311
  %8313 = fmul fast float %8312, %8297
  %8314 = fsub fast float 1.000000e+00, %8311
  %8315 = fsub fast float %8314, %8313
  %8316 = fmul fast float %8307, 5.000000e-01
  %8317 = fmul fast float %8316, %8315
  %8318 = fsub fast float -5.000000e-01, %8317
  %8319 = fmul fast float %8318, %8152
  %8320 = fadd fast float %8319, 1.000000e+00
  %8321 = fmul fast float %8320, %8164
  br label %8322

; <label>:8322                                    ; preds = %8291, %8176
  %8323 = phi float [ %8321, %8291 ], [ %8164, %8176 ]
  %8324 = call float @dx.op.binary.f32(i32 36, float %8323, float %8323)  ; FMin(a,b)
  %8325 = call float @dx.op.binary.f32(i32 36, float %8323, float %8324)  ; FMin(a,b)
  %8326 = fcmp fast ogt float %8325, 0.000000e+00
  br i1 %8326, label %8327, label %8168, !dx.controlflow.hints !139

; <label>:8327                                    ; preds = %8322
  %8328 = fmul fast float %8323, %8086
  %8329 = fmul fast float %8323, %8087
  %8330 = fmul fast float %8323, %8088
  %8331 = fsub fast float %8070, %4651
  %8332 = fcmp fast ogt float %8331, 0.000000e+00
  %8333 = fsub fast float %209, %4651
  %8334 = fcmp fast ogt float %8333, 0.000000e+00
  %8335 = xor i1 %8334, %8332
  %8336 = fsub fast float %4651, %8070
  %8337 = fmul fast float %8336, 2.000000e+00
  %8338 = fadd fast float %8337, %8070
  %8339 = select i1 %8335, float %8070, float %8338
  %8340 = fsub fast float %8339, %209
  %8341 = call float @dx.op.dot3.f32(i32 55, float %8096, float %8097, float %8340, float %8096, float %8097, float %8340)  ; Dot3(ax,ay,az,bx,by,bz)
  %8342 = call float @dx.op.unary.f32(i32 25, float %8341)  ; Rsqrt(value)
  %8343 = fmul fast float %8342, %8096
  %8344 = fmul fast float %8342, %8097
  %8345 = fmul fast float %8342, %8340
  %8346 = fsub fast float %4651, %209
  %8347 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8346)  ; Dot3(ax,ay,az,bx,by,bz)
  %8348 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8343, float %8344, float %8345)  ; Dot3(ax,ay,az,bx,by,bz)
  %8349 = fdiv fast float 1.000000e+00, %8348
  %8350 = fmul fast float %8349, %8347
  %8351 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8333, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8352 = fcmp fast ogt float %8351, 0.000000e+00
  %8353 = fcmp fast olt float %8351, 0.000000e+00
  %8354 = zext i1 %8352 to i32
  %8355 = zext i1 %8353 to i32
  %8356 = sub nsw i32 %8354, %8355
  %8357 = sitofp i32 %8356 to float
  %8358 = fsub fast float %8339, %4651
  %8359 = call float @dx.op.dot3.f32(i32 55, float %8096, float %8097, float %8358, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8360 = fcmp fast ogt float %8359, 0.000000e+00
  %8361 = fcmp fast olt float %8359, 0.000000e+00
  %8362 = zext i1 %8360 to i32
  %8363 = zext i1 %8361 to i32
  %8364 = sub nsw i32 %8362, %8363
  %8365 = sitofp i32 %8364 to float
  %8366 = fcmp fast une float %8357, %8365
  br i1 %8366, label %8367, label %8377

; <label>:8367                                    ; preds = %8327
  %8368 = fmul fast float %8350, %8345
  %8369 = fmul fast float %8350, %8344
  %8370 = fmul fast float %8350, %8343
  %8371 = fmul fast float %8370, %8370
  %8372 = fmul fast float %8369, %8369
  %8373 = fadd fast float %8371, %8372
  %8374 = fmul fast float %8368, %8368
  %8375 = fadd fast float %8373, %8374
  %8376 = call float @dx.op.unary.f32(i32 24, float %8375)  ; Sqrt(value)
  br label %8389

; <label>:8377                                    ; preds = %8327
  %8378 = icmp slt i32 %8356, 0
  br i1 %8378, label %8379, label %8389

; <label>:8379                                    ; preds = %8377
  %8380 = fsub fast float %207, %8068
  %8381 = fsub fast float %208, %8069
  %8382 = fsub fast float %209, %8339
  %8383 = fmul fast float %8380, %8380
  %8384 = fmul fast float %8381, %8381
  %8385 = fadd fast float %8383, %8384
  %8386 = fmul fast float %8382, %8382
  %8387 = fadd fast float %8385, %8386
  %8388 = call float @dx.op.unary.f32(i32 24, float %8387)  ; Sqrt(value)
  br label %8389

; <label>:8389                                    ; preds = %8379, %8377, %8367
  %8390 = phi float [ %8376, %8367 ], [ %8388, %8379 ], [ 0.000000e+00, %8377 ]
  %8391 = and i1 %8334, %8332
  %8392 = fsub fast float -0.000000e+00, %8390
  %8393 = select i1 %8391, float -0.000000e+00, float %8392
  %8394 = fmul fast float %4652, 0x3FF7154760000000
  %8395 = fmul fast float %8394, %8393
  %8396 = fmul fast float %4653, 0x3FF7154760000000
  %8397 = fmul fast float %8396, %8393
  %8398 = fmul fast float %4654, 0x3FF7154760000000
  %8399 = fmul fast float %8398, %8393
  %8400 = call float @dx.op.unary.f32(i32 21, float %8395)  ; Exp(value)
  %8401 = call float @dx.op.unary.f32(i32 21, float %8397)  ; Exp(value)
  %8402 = call float @dx.op.unary.f32(i32 21, float %8399)  ; Exp(value)
  %8403 = call float @dx.op.unary.f32(i32 7, float %8400)  ; Saturate(value)
  %8404 = call float @dx.op.unary.f32(i32 7, float %8401)  ; Saturate(value)
  %8405 = call float @dx.op.unary.f32(i32 7, float %8402)  ; Saturate(value)
  %8406 = fmul fast float %8328, %8403
  %8407 = fmul fast float %8329, %8404
  %8408 = fmul fast float %8330, %8405
  %8409 = fsub fast float %8102, %5443
  %8410 = fsub fast float %8103, %5442
  %8411 = fsub fast float %8104, %5441
  %8412 = call float @dx.op.dot3.f32(i32 55, float %8409, float %8410, float %8411, float %8409, float %8410, float %8411)  ; Dot3(ax,ay,az,bx,by,bz)
  %8413 = call float @dx.op.unary.f32(i32 25, float %8412)  ; Rsqrt(value)
  %8414 = fmul fast float %8413, %8409
  %8415 = fmul fast float %8413, %8410
  %8416 = fmul fast float %8413, %8411
  %8417 = call float @dx.op.dot3.f32(i32 55, float %8102, float %8103, float %8104, float %5444, float %5445, float %5446)  ; Dot3(ax,ay,az,bx,by,bz)
  %8418 = call float @dx.op.dot3.f32(i32 55, float %5440, float %5439, float %5438, float %8414, float %8415, float %8416)  ; Dot3(ax,ay,az,bx,by,bz)
  %8419 = call float @dx.op.unary.f32(i32 7, float %8417)  ; Saturate(value)
  %8420 = fmul fast float %8419, %8109
  %8421 = bitcast i32 %5482 to float
  %8422 = fmul fast float %8419, %8419
  %8423 = fmul fast float %8422, %8421
  %8424 = call float @dx.op.unary.f32(i32 7, float %8423)  ; Saturate(value)
  %8425 = fmul fast float %8420, %8424
  %8426 = bitcast float %8099 to i32
  %8427 = ashr i32 %8426, 1
  %8428 = sub nsw i32 1597463007, %8427
  %8429 = bitcast i32 %8428 to float
  %8430 = fmul fast float %8429, %8096
  %8431 = fmul fast float %8429, %8097
  %8432 = fmul fast float %8429, %8098
  %8433 = fsub fast float %8430, %5443
  %8434 = fsub fast float %8431, %5442
  %8435 = fsub fast float %8432, %5441
  %8436 = call float @dx.op.dot3.f32(i32 55, float %8433, float %8434, float %8435, float %8433, float %8434, float %8435)  ; Dot3(ax,ay,az,bx,by,bz)
  %8437 = call float @dx.op.unary.f32(i32 25, float %8436)  ; Rsqrt(value)
  %8438 = fmul fast float %8433, %8437
  %8439 = fmul fast float %8434, %8437
  %8440 = fmul fast float %8435, %8437
  %8441 = call float @dx.op.dot3.f32(i32 55, float %5444, float %5445, float %5446, float %8438, float %8439, float %8440)  ; Dot3(ax,ay,az,bx,by,bz)
  %8442 = fmul fast float %8441, %8441
  %8443 = call float @dx.op.unary.f32(i32 6, float %8417)  ; FAbs(value)
  %8444 = fsub fast float 1.000000e+00, %5476
  %8445 = fmul fast float %5458, %5458
  %8446 = fmul fast float %8445, %8444
  %8447 = fadd fast float %8446, %5476
  %8448 = bitcast float %8447 to i32
  %8449 = ashr i32 %8448, 1
  %8450 = add nsw i32 %8449, 532487669
  %8451 = bitcast i32 %8450 to float
  %8452 = fadd fast float %8451, %5458
  %8453 = fmul fast float %5476, %8442
  %8454 = fsub fast float 1.000000e+00, %8442
  %8455 = fadd fast float %8454, %8453
  %8456 = fmul fast float %8443, %8443
  %8457 = fmul fast float %8456, %8444
  %8458 = fadd fast float %8457, %5476
  %8459 = bitcast float %8458 to i32
  %8460 = ashr i32 %8459, 1
  %8461 = add nsw i32 %8460, 532487669
  %8462 = bitcast i32 %8461 to float
  %8463 = fadd fast float %8462, %8443
  %8464 = fmul fast float %8455, %8455
  %8465 = fmul fast float %8464, %8452
  %8466 = fmul fast float %8465, %8463
  %8467 = fdiv fast float 1.000000e+00, %8466
  %8468 = bitcast float %5476 to i32
  %8469 = sitofp i32 %8468 to float
  %8470 = fmul fast float %8469, 0x3FE7F73180000000
  %8471 = fadd fast float %8470, 0x41AFE27C40000000
  %8472 = fptosi float %8471 to i32
  %8473 = bitcast i32 %8472 to float
  %8474 = fmul fast float %8065, 0x3FD80E9D60000000
  %8475 = fmul fast float %8474, %8429
  %8476 = fadd fast float %8473, %8475
  %8477 = bitcast float %8476 to i32
  %8478 = sub nsw i32 2129859010, %8477
  %8479 = bitcast i32 %8478 to float
  %8480 = fmul fast float %5476, %8467
  %8481 = fmul fast float %8480, %8473
  %8482 = fmul fast float %8481, %8479
  %8483 = call float @dx.op.unary.f32(i32 6, float %8418)  ; FAbs(value)
  %8484 = fsub fast float 1.000000e+00, %8483
  %8485 = bitcast float %8484 to i32
  %8486 = sitofp i32 %8485 to float
  %8487 = fmul fast float %8486, 5.000000e+00
  %8488 = fadd fast float %8487, 0xC1EFBF8940000000
  %8489 = fptosi float %8488 to i32
  %8490 = bitcast i32 %8489 to float
  %8491 = fsub fast float 1.000000e+00, %5450
  %8492 = fsub fast float 1.000000e+00, %5451
  %8493 = fsub fast float 1.000000e+00, %5456
  %8494 = fmul fast float %8490, %8491
  %8495 = fmul fast float %8490, %8492
  %8496 = fmul fast float %8490, %8493
  %8497 = fadd fast float %8494, %5450
  %8498 = fadd fast float %8495, %5451
  %8499 = fadd fast float %8496, %5456
  br i1 %5598, label %8500, label %8523

; <label>:8500                                    ; preds = %8389
  %8501 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %56, float %4249, float %8483, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8502 = extractvalue %dx.types.ResRet.f32 %8501, 0
  %8503 = extractvalue %dx.types.ResRet.f32 %8501, 1
  %8504 = extractvalue %dx.types.ResRet.f32 %8501, 2
  %8505 = fadd fast float %8502, -5.000000e-01
  %8506 = fadd fast float %8503, -5.000000e-01
  %8507 = fadd fast float %8504, -5.000000e-01
  %8508 = fmul fast float %5450, 4.000000e+00
  %8509 = fmul fast float %8508, %8491
  %8510 = fmul fast float %8509, %8505
  %8511 = fmul fast float %5451, 4.000000e+00
  %8512 = fmul fast float %8511, %8492
  %8513 = fmul fast float %8512, %8506
  %8514 = fmul fast float %5456, 4.000000e+00
  %8515 = fmul fast float %8514, %8493
  %8516 = fmul fast float %8515, %8507
  %8517 = fadd fast float %8510, %8497
  %8518 = fadd fast float %8513, %8498
  %8519 = fadd fast float %8516, %8499
  %8520 = call float @dx.op.unary.f32(i32 7, float %8517)  ; Saturate(value)
  %8521 = call float @dx.op.unary.f32(i32 7, float %8518)  ; Saturate(value)
  %8522 = call float @dx.op.unary.f32(i32 7, float %8519)  ; Saturate(value)
  br label %8523

; <label>:8523                                    ; preds = %8500, %8389
  %8524 = phi float [ %8520, %8500 ], [ %8497, %8389 ]
  %8525 = phi float [ %8521, %8500 ], [ %8498, %8389 ]
  %8526 = phi float [ %8522, %8500 ], [ %8499, %8389 ]
  %8527 = fmul fast float %8417, 9.843750e-01
  %8528 = fadd fast float %8527, 7.812500e-03
  %8529 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %56, float %8528, float %5588, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8530 = extractvalue %dx.types.ResRet.f32 %8529, 2
  %8531 = extractvalue %dx.types.ResRet.f32 %8529, 3
  %8532 = fmul fast float %8530, %5450
  %8533 = fmul fast float %8530, %5451
  %8534 = fmul fast float %8530, %5456
  %8535 = fadd fast float %8532, %8531
  %8536 = fadd fast float %8533, %8531
  %8537 = fadd fast float %8534, %8531
  br i1 %5598, label %8538, label %8561

; <label>:8538                                    ; preds = %8523
  %8539 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %56, float %4249, float %8417, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8540 = extractvalue %dx.types.ResRet.f32 %8539, 0
  %8541 = extractvalue %dx.types.ResRet.f32 %8539, 1
  %8542 = extractvalue %dx.types.ResRet.f32 %8539, 2
  %8543 = fadd fast float %8540, -5.000000e-01
  %8544 = fadd fast float %8541, -5.000000e-01
  %8545 = fadd fast float %8542, -5.000000e-01
  %8546 = fmul fast float %5450, 4.000000e+00
  %8547 = fmul fast float %8546, %8491
  %8548 = fmul fast float %8547, %8543
  %8549 = fmul fast float %5451, 4.000000e+00
  %8550 = fmul fast float %8549, %8492
  %8551 = fmul fast float %8550, %8544
  %8552 = fmul fast float %5456, 4.000000e+00
  %8553 = fmul fast float %8552, %8493
  %8554 = fmul fast float %8553, %8545
  %8555 = fadd fast float %8548, %8535
  %8556 = fadd fast float %8551, %8536
  %8557 = fadd fast float %8554, %8537
  %8558 = call float @dx.op.unary.f32(i32 7, float %8555)  ; Saturate(value)
  %8559 = call float @dx.op.unary.f32(i32 7, float %8556)  ; Saturate(value)
  %8560 = call float @dx.op.unary.f32(i32 7, float %8557)  ; Saturate(value)
  br label %8561

; <label>:8561                                    ; preds = %8538, %8523
  %8562 = phi float [ %8558, %8538 ], [ %8535, %8523 ]
  %8563 = phi float [ %8559, %8538 ], [ %8536, %8523 ]
  %8564 = phi float [ %8560, %8538 ], [ %8537, %8523 ]
  %8565 = call float @dx.op.binary.f32(i32 35, float %8563, float %8564)  ; FMax(a,b)
  %8566 = call float @dx.op.binary.f32(i32 35, float %8562, float %8565)  ; FMax(a,b)
  %8567 = fsub fast float 1.000000e+00, %8566
  %8568 = fmul fast float %8524, %8482
  %8569 = fmul fast float %8525, %8482
  %8570 = fmul fast float %8526, %8482
  %8571 = fsub fast float 1.000000e+00, %8418
  %8572 = bitcast float %8571 to i32
  %8573 = sitofp i32 %8572 to float
  %8574 = fmul fast float %8573, 5.000000e+00
  %8575 = fadd fast float %8574, 0xC1EFBF8940000000
  %8576 = fptosi float %8575 to i32
  %8577 = bitcast i32 %8576 to float
  %8578 = fmul fast float %8577, %4250
  %8579 = fmul fast float %8567, %8578
  %8580 = fmul fast float %8579, %6193
  %8581 = fmul fast float %8579, %6194
  %8582 = fmul fast float %8579, %6195
  %8583 = fadd fast float %8580, %8568
  %8584 = fadd fast float %8581, %8569
  %8585 = fadd fast float %8582, %8570
  %8586 = fmul fast float %8406, %4246
  %8587 = fmul fast float %8586, %8425
  %8588 = fmul fast float %8587, %8567
  %8589 = fmul fast float %8407, %4246
  %8590 = fmul fast float %8589, %8425
  %8591 = fmul fast float %8590, %8567
  %8592 = fmul fast float %8408, %4246
  %8593 = fmul fast float %8592, %8425
  %8594 = fmul fast float %8593, %8567
  %8595 = fadd fast float %8588, %8039
  %8596 = fadd fast float %8591, %8040
  %8597 = fadd fast float %8594, %8041
  %8598 = fmul fast float %8587, %8583
  %8599 = fmul fast float %8590, %8584
  %8600 = fmul fast float %8593, %8585
  %8601 = fadd fast float %8598, %8036
  %8602 = fadd fast float %8599, %8037
  %8603 = fadd fast float %8600, %8038
  br label %8168

; <label>:8604                                    ; preds = %8168
  br label %8605

; <label>:8605                                    ; preds = %8604, %8002
  %8606 = phi float [ %8004, %8002 ], [ %8169, %8604 ]
  %8607 = phi float [ %8005, %8002 ], [ %8170, %8604 ]
  %8608 = phi float [ %8006, %8002 ], [ %8171, %8604 ]
  %8609 = phi float [ %8007, %8002 ], [ %8172, %8604 ]
  %8610 = phi float [ %8008, %8002 ], [ %8173, %8604 ]
  %8611 = phi float [ %8009, %8002 ], [ %8174, %8604 ]
  %8612 = add i32 %8003, 1
  %8613 = icmp ugt i32 %8612, %7999
  br i1 %8613, label %8614, label %8002

; <label>:8614                                    ; preds = %8605
  br label %8615

; <label>:8615                                    ; preds = %8614, %7952, %7942
  %8616 = phi float [ %7943, %7942 ], [ %7943, %7952 ], [ %8606, %8614 ]
  %8617 = phi float [ %7944, %7942 ], [ %7944, %7952 ], [ %8607, %8614 ]
  %8618 = phi float [ %7945, %7942 ], [ %7945, %7952 ], [ %8608, %8614 ]
  %8619 = phi float [ %7946, %7942 ], [ %7946, %7952 ], [ %8609, %8614 ]
  %8620 = phi float [ %7947, %7942 ], [ %7947, %7952 ], [ %8610, %8614 ]
  %8621 = phi float [ %7948, %7942 ], [ %7948, %7952 ], [ %8611, %8614 ]
  %8622 = fmul fast float %4246, %4246
  %8623 = fsub fast float 1.000000e+00, %8622
  %8624 = call float @dx.op.dot3.f32(i32 55, float %8623, float %8623, float %8623, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8625 = fsub fast float 1.000000e+00, %8624
  %8626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8627 = extractvalue %dx.types.CBufRet.f32 %8626, 0
  %8628 = fmul fast float %8627, %6209
  %8629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8630 = extractvalue %dx.types.CBufRet.f32 %8629, 3
  %8631 = fsub fast float 1.000000e+00, %4254
  %8632 = call float @dx.op.unary.f32(i32 7, float %8631)  ; Saturate(value)
  %8633 = fadd fast float %8621, %4252
  %8634 = fmul fast float %8633, %4254
  %8635 = fmul fast float %8632, %8630
  %8636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8637 = extractvalue %dx.types.CBufRet.f32 %8636, 3
  %8638 = fmul fast float %8619, %5447
  %8639 = fmul fast float %8620, %5448
  %8640 = fmul fast float %8621, %5449
  %8641 = fcmp fast ogt float %107, %242
  %8642 = and i1 %8641, %4657
  %8643 = or i1 %4663, %8642
  %8644 = icmp eq i32 %4656, 2
  %8645 = fcmp fast ole float %107, %242
  %8646 = and i1 %8645, %8644
  %8647 = or i1 %8646, %8643
  br i1 %8642, label %8648, label %8905

; <label>:8648                                    ; preds = %8615
  %8649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8650 = extractvalue %dx.types.CBufRet.f32 %8649, 2
  %8651 = extractvalue %dx.types.CBufRet.f32 %8649, 3
  %8652 = fmul fast float %8650, %120
  %8653 = fmul fast float %8651, %121
  %8654 = call float @dx.op.unary.f32(i32 7, float %8652)  ; Saturate(value)
  %8655 = call float @dx.op.unary.f32(i32 7, float %8653)  ; Saturate(value)
  %8656 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %56, float %8654, float %8655, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8657 = extractvalue %dx.types.ResRet.f32 %8656, 0
  %8658 = extractvalue %dx.types.ResRet.f32 %8656, 1
  %8659 = extractvalue %dx.types.ResRet.f32 %8656, 2
  %8660 = extractvalue %dx.types.ResRet.f32 %8656, 3
  %8661 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %56, float %8654, float %8655, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8662 = extractvalue %dx.types.ResRet.f32 %8661, 0
  %8663 = extractvalue %dx.types.ResRet.f32 %8661, 1
  %8664 = extractvalue %dx.types.ResRet.f32 %8661, 2
  %8665 = extractvalue %dx.types.ResRet.f32 %8661, 3
  %8666 = call float @dx.op.binary.f32(i32 35, float %8658, float %8659)  ; FMax(a,b)
  %8667 = call float @dx.op.binary.f32(i32 35, float %8657, float %8666)  ; FMax(a,b)
  %8668 = call float @dx.op.binary.f32(i32 35, float %8667, float %8660)  ; FMax(a,b)
  %8669 = call float @dx.op.binary.f32(i32 36, float %8663, float %8664)  ; FMin(a,b)
  %8670 = call float @dx.op.binary.f32(i32 36, float %8662, float %8669)  ; FMin(a,b)
  %8671 = call float @dx.op.binary.f32(i32 36, float %8670, float %8665)  ; FMin(a,b)
  %8672 = fmul fast float %8668, 2.550000e+02
  %8673 = fadd fast float %8672, 0x3F70101020000000
  %8674 = fptoui float %8673 to i32
  %8675 = fmul fast float %8671, 2.550000e+02
  %8676 = fadd fast float %8675, 0x3F70101020000000
  %8677 = fptoui float %8676 to i32
  %8678 = icmp ult i32 %8674, %8677
  br i1 %8678, label %8679, label %8847

; <label>:8679                                    ; preds = %8648
  %8680 = fcmp fast ogt float %106, 9.843750e-01
  %8681 = fadd fast float %107, -4.000000e+00
  %8682 = select i1 %8680, float -4.000000e+00, float %8681
  %8683 = call float @dx.op.binary.f32(i32 35, float %8682, float 0.000000e+00)  ; FMax(a,b)
  %8684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8685 = extractvalue %dx.types.CBufRet.f32 %8684, 0
  %8686 = fadd fast float %8685, %8683
  %8687 = extractvalue %dx.types.CBufRet.f32 %8684, 2
  %8688 = fmul fast float %8686, %8687
  %8689 = call float @dx.op.unary.f32(i32 23, float %8688)  ; Log(value)
  %8690 = extractvalue %dx.types.CBufRet.f32 %8684, 3
  %8691 = fmul fast float %8690, %8689
  %8692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8693 = extractvalue %dx.types.CBufRet.f32 %8692, 2
  %8694 = fmul fast float %8691, %8693
  %8695 = call float @dx.op.unary.f32(i32 7, float %8694)  ; Saturate(value)
  %8696 = uitofp i32 %8674 to float
  %8697 = uitofp i32 %8677 to float
  %8698 = fadd fast float %8696, 5.000000e-01
  %8699 = fadd fast float %8697, 5.000000e-01
  %8700 = fmul fast float %8693, %8698
  %8701 = fmul fast float %8693, %8699
  %8702 = fadd fast float %8700, 0x3F0FFB4800000000
  %8703 = fadd fast float %8701, 0xBF0FFB4800000000
  %8704 = call float @dx.op.binary.f32(i32 35, float %8695, float %8702)  ; FMax(a,b)
  %8705 = call float @dx.op.binary.f32(i32 36, float %8704, float %8703)  ; FMin(a,b)
  %8706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8707 = extractvalue %dx.types.CBufRet.f32 %8706, 1
  %8708 = extractvalue %dx.types.CBufRet.f32 %8706, 2
  %8709 = extractvalue %dx.types.CBufRet.f32 %8706, 0
  %8710 = fmul fast float %8707, %8705
  %8711 = fadd fast float %8709, %8710
  %8712 = fadd fast float %8709, %8708
  %8713 = fsub fast float %8707, %8708
  %8714 = fadd fast float %8713, %8709
  %8715 = call float @dx.op.binary.f32(i32 35, float %8711, float %8712)  ; FMax(a,b)
  %8716 = call float @dx.op.binary.f32(i32 36, float %8715, float %8714)  ; FMin(a,b)
  %8717 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %54, float %8654, float %8655, float %8716, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8718 = extractvalue %dx.types.ResRet.f32 %8717, 0
  %8719 = extractvalue %dx.types.ResRet.f32 %8717, 1
  %8720 = extractvalue %dx.types.ResRet.f32 %8717, 2
  %8721 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8722 = extractvalue %dx.types.CBufRet.i32 %8721, 0
  %8723 = extractvalue %dx.types.CBufRet.i32 %8721, 1
  %8724 = uitofp i32 %8722 to float
  %8725 = uitofp i32 %8723 to float
  %8726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8727 = extractvalue %dx.types.CBufRet.f32 %8726, 0
  %8728 = extractvalue %dx.types.CBufRet.f32 %8726, 1
  %8729 = fmul fast float %8724, %8654
  %8730 = fmul fast float %8725, %8655
  %8731 = fadd fast float %8729, -5.000000e-01
  %8732 = fadd fast float %8730, -5.000000e-01
  %8733 = call float @dx.op.unary.f32(i32 22, float %8731)  ; Frc(value)
  %8734 = call float @dx.op.unary.f32(i32 22, float %8732)  ; Frc(value)
  %8735 = fmul fast float %8733, %8733
  %8736 = fmul fast float %8735, %8733
  %8737 = fsub fast float 3.000000e+00, %8733
  %8738 = fmul fast float %8735, %8737
  %8739 = fmul fast float %8733, 3.000000e+00
  %8740 = fmul fast float %8736, 3.000000e+00
  %8741 = fmul fast float %8735, 6.000000e+00
  %8742 = fsub fast float %8740, %8741
  %8743 = fadd fast float %8742, 4.000000e+00
  %8744 = fmul fast float %8743, 0x3FC5555560000000
  %8745 = fmul fast float %8736, -3.000000e+00
  %8746 = fadd fast float %8735, %8733
  %8747 = fmul fast float %8746, 3.000000e+00
  %8748 = fadd fast float %8745, 1.000000e+00
  %8749 = fadd fast float %8748, %8747
  %8750 = fmul fast float %8736, 0x3FC5555560000000
  %8751 = fmul fast float %8734, %8734
  %8752 = fmul fast float %8751, %8734
  %8753 = fsub fast float 3.000000e+00, %8734
  %8754 = fmul fast float %8751, %8753
  %8755 = fmul fast float %8734, 3.000000e+00
  %8756 = fmul fast float %8752, 3.000000e+00
  %8757 = fmul fast float %8751, 6.000000e+00
  %8758 = fsub fast float %8756, %8757
  %8759 = fadd fast float %8758, 4.000000e+00
  %8760 = fmul fast float %8759, 0x3FC5555560000000
  %8761 = fmul fast float %8752, -3.000000e+00
  %8762 = fadd fast float %8751, %8734
  %8763 = fmul fast float %8762, 3.000000e+00
  %8764 = fadd fast float %8761, 1.000000e+00
  %8765 = fadd fast float %8764, %8763
  %8766 = fmul fast float %8752, 0x3FC5555560000000
  %8767 = fadd fast float %8733, 1.000000e+00
  %8768 = fsub fast float 1.000000e+00, %8739
  %8769 = fadd fast float %8768, %8738
  %8770 = fadd fast float %8769, %8743
  %8771 = fmul fast float %8770, 0x3FC5555560000000
  %8772 = fdiv fast float %8744, %8771
  %8773 = fsub fast float %8767, %8772
  %8774 = fsub fast float 1.000000e+00, %8733
  %8775 = fadd fast float %8749, %8736
  %8776 = fmul fast float %8775, 0x3FC5555560000000
  %8777 = fdiv fast float %8750, %8776
  %8778 = fadd fast float %8774, %8777
  %8779 = fadd fast float %8734, 1.000000e+00
  %8780 = fsub fast float 1.000000e+00, %8755
  %8781 = fadd fast float %8780, %8754
  %8782 = fadd fast float %8781, %8759
  %8783 = fmul fast float %8782, 0x3FC5555560000000
  %8784 = fdiv fast float %8760, %8783
  %8785 = fsub fast float %8779, %8784
  %8786 = fsub fast float 1.000000e+00, %8734
  %8787 = fadd fast float %8765, %8752
  %8788 = fmul fast float %8787, 0x3FC5555560000000
  %8789 = fdiv fast float %8766, %8788
  %8790 = fadd fast float %8789, %8786
  %8791 = fmul fast float %8773, %8727
  %8792 = fsub fast float %8654, %8791
  %8793 = fmul fast float %8778, %8727
  %8794 = fadd fast float %8793, %8654
  %8795 = fmul fast float %8790, %8728
  %8796 = fadd fast float %8795, %8655
  %8797 = fmul fast float %8785, %8728
  %8798 = fsub fast float %8655, %8797
  %8799 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %8792, float %8798, float %8716, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8800 = extractvalue %dx.types.ResRet.f32 %8799, 0
  %8801 = extractvalue %dx.types.ResRet.f32 %8799, 1
  %8802 = extractvalue %dx.types.ResRet.f32 %8799, 2
  %8803 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %8794, float %8798, float %8716, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8804 = extractvalue %dx.types.ResRet.f32 %8803, 0
  %8805 = extractvalue %dx.types.ResRet.f32 %8803, 1
  %8806 = extractvalue %dx.types.ResRet.f32 %8803, 2
  %8807 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %8792, float %8796, float %8716, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8808 = extractvalue %dx.types.ResRet.f32 %8807, 0
  %8809 = extractvalue %dx.types.ResRet.f32 %8807, 1
  %8810 = extractvalue %dx.types.ResRet.f32 %8807, 2
  %8811 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %8794, float %8796, float %8716, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8812 = extractvalue %dx.types.ResRet.f32 %8811, 0
  %8813 = extractvalue %dx.types.ResRet.f32 %8811, 1
  %8814 = extractvalue %dx.types.ResRet.f32 %8811, 2
  %8815 = fsub fast float %8808, %8800
  %8816 = fsub fast float %8809, %8801
  %8817 = fsub fast float %8810, %8802
  %8818 = fmul fast float %8815, %8788
  %8819 = fmul fast float %8816, %8788
  %8820 = fmul fast float %8817, %8788
  %8821 = fadd fast float %8818, %8800
  %8822 = fadd fast float %8819, %8801
  %8823 = fadd fast float %8820, %8802
  %8824 = fsub fast float %8812, %8804
  %8825 = fsub fast float %8813, %8805
  %8826 = fsub fast float %8814, %8806
  %8827 = fmul fast float %8824, %8788
  %8828 = fmul fast float %8825, %8788
  %8829 = fmul fast float %8826, %8788
  %8830 = fsub fast float %8804, %8821
  %8831 = fadd fast float %8830, %8827
  %8832 = fsub fast float %8805, %8822
  %8833 = fadd fast float %8832, %8828
  %8834 = fsub fast float %8806, %8823
  %8835 = fadd fast float %8834, %8829
  %8836 = fmul fast float %8831, %8776
  %8837 = fmul fast float %8833, %8776
  %8838 = fmul fast float %8835, %8776
  %8839 = fadd fast float %8836, %8821
  %8840 = fadd fast float %8837, %8822
  %8841 = fadd fast float %8838, %8823
  %8842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8843 = extractvalue %dx.types.CBufRet.f32 %8842, 1
  %8844 = fmul fast float %8839, %8843
  %8845 = fmul fast float %8840, %8843
  %8846 = fmul fast float %8841, %8843
  br label %8847

; <label>:8847                                    ; preds = %8679, %8648
  %8848 = phi float [ %8718, %8679 ], [ 1.000000e+00, %8648 ]
  %8849 = phi float [ %8719, %8679 ], [ 1.000000e+00, %8648 ]
  %8850 = phi float [ %8720, %8679 ], [ 1.000000e+00, %8648 ]
  %8851 = phi float [ %8844, %8679 ], [ 0.000000e+00, %8648 ]
  %8852 = phi float [ %8845, %8679 ], [ 0.000000e+00, %8648 ]
  %8853 = phi float [ %8846, %8679 ], [ 0.000000e+00, %8648 ]
  %8854 = fmul fast float %8851, %8625
  %8855 = fmul fast float %8852, %8625
  %8856 = fmul fast float %8853, %8625
  %8857 = call float @dx.op.dot3.f32(i32 55, float %8848, float %8849, float %8850, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8858 = call float @dx.op.dot3.f32(i32 55, float %8854, float %8855, float %8856, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8859 = select i1 %279, float %8857, float %8848
  %8860 = select i1 %279, float %8857, float %8849
  %8861 = select i1 %279, float 1.000000e+00, float %8850
  %8862 = select i1 %279, float %8858, float %8854
  %8863 = select i1 %279, float 0.000000e+00, float %8855
  %8864 = select i1 %279, float 0.000000e+00, float %8856
  %8865 = fmul fast float %8859, %8638
  %8866 = fmul fast float %8860, %8639
  %8867 = fmul fast float %8861, %8640
  %8868 = fadd fast float %8865, %8862
  %8869 = fadd fast float %8866, %8863
  %8870 = fadd fast float %8864, %8867
  %8871 = fmul fast float %8859, %8616
  %8872 = fmul fast float %8860, %8617
  %8873 = fmul fast float %8861, %8618
  %8874 = fmul fast float %156, %8650
  %8875 = fmul fast float %158, %8651
  %8876 = fsub fast float 1.000000e+00, %8874
  %8877 = fsub fast float 1.000000e+00, %8875
  %8878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8879 = extractvalue %dx.types.CBufRet.f32 %8878, 0
  %8880 = extractvalue %dx.types.CBufRet.f32 %8878, 1
  %8881 = extractvalue %dx.types.CBufRet.f32 %8878, 2
  %8882 = fmul fast float %8876, %8879
  %8883 = fmul fast float %8876, %8880
  %8884 = fmul fast float %8876, %8881
  %8885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8886 = extractvalue %dx.types.CBufRet.f32 %8885, 0
  %8887 = extractvalue %dx.types.CBufRet.f32 %8885, 1
  %8888 = extractvalue %dx.types.CBufRet.f32 %8885, 2
  %8889 = fmul fast float %8877, %8886
  %8890 = fmul fast float %8877, %8887
  %8891 = fmul fast float %8877, %8888
  %8892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8893 = extractvalue %dx.types.CBufRet.f32 %8892, 0
  %8894 = extractvalue %dx.types.CBufRet.f32 %8892, 1
  %8895 = extractvalue %dx.types.CBufRet.f32 %8892, 2
  %8896 = fadd fast float %8889, %8893
  %8897 = fadd fast float %8896, %8882
  %8898 = fadd fast float %8890, %8894
  %8899 = fadd fast float %8898, %8883
  %8900 = fadd fast float %8891, %8895
  %8901 = fadd fast float %8900, %8884
  %8902 = fmul fast float %8897, %242
  %8903 = fmul fast float %8899, %242
  %8904 = fmul fast float %8901, %242
  br label %8905

; <label>:8905                                    ; preds = %8847, %8615
  %8906 = phi float [ %8902, %8847 ], [ %207, %8615 ]
  %8907 = phi float [ %8903, %8847 ], [ %208, %8615 ]
  %8908 = phi float [ %8904, %8847 ], [ %209, %8615 ]
  %8909 = phi float [ %242, %8847 ], [ %107, %8615 ]
  %8910 = phi float [ %8868, %8847 ], [ %8638, %8615 ]
  %8911 = phi float [ %8869, %8847 ], [ %8639, %8615 ]
  %8912 = phi float [ %8870, %8847 ], [ %8640, %8615 ]
  %8913 = phi float [ %8871, %8847 ], [ %8616, %8615 ]
  %8914 = phi float [ %8872, %8847 ], [ %8617, %8615 ]
  %8915 = phi float [ %8873, %8847 ], [ %8618, %8615 ]
  %8916 = phi float [ %8848, %8847 ], [ 1.000000e+00, %8615 ]
  br i1 %8647, label %10071, label %8917

; <label>:8917                                    ; preds = %8905
  %8918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8919 = extractvalue %dx.types.CBufRet.f32 %8918, 0
  %8920 = extractvalue %dx.types.CBufRet.f32 %8918, 1
  %8921 = extractvalue %dx.types.CBufRet.f32 %8918, 2
  %8922 = extractvalue %dx.types.CBufRet.f32 %8918, 3
  %8923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8924 = extractvalue %dx.types.CBufRet.f32 %8923, 0
  %8925 = extractvalue %dx.types.CBufRet.f32 %8923, 1
  %8926 = extractvalue %dx.types.CBufRet.f32 %8923, 2
  %8927 = extractvalue %dx.types.CBufRet.f32 %8923, 3
  %8928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8929 = extractvalue %dx.types.CBufRet.f32 %8928, 0
  %8930 = extractvalue %dx.types.CBufRet.f32 %8928, 1
  %8931 = extractvalue %dx.types.CBufRet.f32 %8928, 2
  %8932 = extractvalue %dx.types.CBufRet.f32 %8928, 3
  %8933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8934 = extractvalue %dx.types.CBufRet.f32 %8933, 0
  %8935 = extractvalue %dx.types.CBufRet.f32 %8933, 1
  %8936 = extractvalue %dx.types.CBufRet.f32 %8933, 2
  %8937 = extractvalue %dx.types.CBufRet.f32 %8933, 3
  %8938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8939 = extractvalue %dx.types.CBufRet.f32 %8938, 3
  %8940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8941 = extractvalue %dx.types.CBufRet.f32 %8940, 3
  %8942 = extractvalue %dx.types.CBufRet.f32 %8940, 0
  %8943 = extractvalue %dx.types.CBufRet.f32 %8940, 1
  %8944 = extractvalue %dx.types.CBufRet.f32 %8940, 2
  %8945 = fcmp fast olt float %8944, -5.000000e-01
  %8946 = call float @dx.op.dot3.f32(i32 55, float %8906, float %8907, float %8908, float %8906, float %8907, float %8908)  ; Dot3(ax,ay,az,bx,by,bz)
  %8947 = call float @dx.op.unary.f32(i32 25, float %8946)  ; Rsqrt(value)
  %8948 = fmul fast float %8947, %8946
  %8949 = fmul fast float %8947, %8906
  %8950 = fmul fast float %8947, %8907
  %8951 = fmul fast float %8947, %8908
  %8952 = fadd fast float %8948, %8922
  %8953 = call float @dx.op.dot3.f32(i32 55, float %8949, float %8950, float %8951, float %8919, float %8920, float %8921)  ; Dot3(ax,ay,az,bx,by,bz)
  %8954 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8955 = extractvalue %dx.types.CBufRet.i32 %8954, 1
  %8956 = and i32 %8955, 1
  %8957 = icmp ne i32 %8956, 0
  %8958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8959 = extractvalue %dx.types.CBufRet.f32 %8958, 2
  %8960 = fcmp fast ogt float %8959, 0.000000e+00
  %8961 = and i1 %8957, %8960
  br i1 %8961, label %8962, label %9368, !dx.controlflow.hints !140

; <label>:8962                                    ; preds = %8917
  %8963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8964 = extractvalue %dx.types.CBufRet.f32 %8963, 3
  %8965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8966 = extractvalue %dx.types.CBufRet.f32 %8965, 2
  %8967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8968 = extractvalue %dx.types.CBufRet.f32 %8967, 2
  %8969 = fsub fast float %8966, %8968
  %8970 = and i32 %8955, 2
  %8971 = extractvalue %dx.types.CBufRet.i32 %8954, 0
  %8972 = call i32 @dx.op.binary.i32(i32 40, i32 %8971, i32 3)  ; UMin(a,b)
  %8973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8974 = extractvalue %dx.types.CBufRet.f32 %8973, 0
  %8975 = extractvalue %dx.types.CBufRet.f32 %8973, 1
  %8976 = extractvalue %dx.types.CBufRet.f32 %8967, 0
  %8977 = extractvalue %dx.types.CBufRet.f32 %8967, 1
  %8978 = fsub fast float %8974, %8976
  %8979 = fsub fast float %8975, %8977
  %8980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8981 = extractvalue %dx.types.CBufRet.f32 %8980, 0
  %8982 = fcmp fast ogt float %8981, 0.000000e+00
  %8983 = fsub fast float -0.000000e+00, %8978
  %8984 = fsub fast float -0.000000e+00, %8979
  %8985 = call float @dx.op.dot2.f32(i32 54, float %8949, float %8950, float %8949, float %8950)  ; Dot2(ax,ay,bx,by)
  %8986 = call float @dx.op.dot2.f32(i32 54, float %8949, float %8950, float %8983, float %8984)  ; Dot2(ax,ay,bx,by)
  %8987 = fmul fast float %8986, 2.000000e+00
  %8988 = call float @dx.op.dot2.f32(i32 54, float %8983, float %8984, float %8983, float %8984)  ; Dot2(ax,ay,bx,by)
  %8989 = fmul fast float %8981, %8981
  %8990 = fsub fast float %8988, %8989
  %8991 = fmul fast float %8987, %8987
  %8992 = fmul fast float %8985, 4.000000e+00
  %8993 = fmul fast float %8992, %8990
  %8994 = fsub fast float %8991, %8993
  %8995 = fcmp fast ogt float %8994, 0.000000e+00
  br i1 %8995, label %8996, label %9011

; <label>:8996                                    ; preds = %8962
  %8997 = fcmp fast ogt float %8987, 0.000000e+00
  %8998 = call float @dx.op.unary.f32(i32 24, float %8994)  ; Sqrt(value)
  %8999 = fsub fast float -0.000000e+00, %8998
  %9000 = select i1 %8997, float %8998, float %8999
  %9001 = fadd fast float %9000, %8987
  %9002 = fmul float %9001, -5.000000e-01
  %9003 = fdiv fast float %9002, %8985
  %9004 = call float @dx.op.binary.f32(i32 35, float %9003, float 0.000000e+00)  ; FMax(a,b)
  %9005 = call float @dx.op.binary.f32(i32 36, float %8948, float %9004)  ; FMin(a,b)
  %9006 = fdiv fast float %8990, %9002
  %9007 = call float @dx.op.binary.f32(i32 35, float %9006, float 0.000000e+00)  ; FMax(a,b)
  %9008 = call float @dx.op.binary.f32(i32 36, float %8948, float %9007)  ; FMin(a,b)
  %9009 = call float @dx.op.binary.f32(i32 36, float %9005, float %9008)  ; FMin(a,b)
  %9010 = call float @dx.op.binary.f32(i32 35, float %9005, float %9008)  ; FMax(a,b)
  br label %9011

; <label>:9011                                    ; preds = %8996, %8962
  %9012 = phi float [ %9010, %8996 ], [ -1.000000e+00, %8962 ]
  %9013 = phi float [ %9009, %8996 ], [ -1.000000e+00, %8962 ]
  %9014 = phi i1 [ true, %8996 ], [ false, %8962 ]
  %9015 = and i1 %8982, %9014
  br i1 %9015, label %9016, label %9018

; <label>:9016                                    ; preds = %9011
  %9017 = fcmp fast oeq float %9013, %9012
  br i1 %9017, label %9321, label %9019

; <label>:9018                                    ; preds = %9011
  br i1 %8982, label %9321, label %9019

; <label>:9019                                    ; preds = %9018, %9016
  %9020 = phi float [ %8948, %9018 ], [ %9012, %9016 ]
  %9021 = phi float [ 0.000000e+00, %9018 ], [ %9013, %9016 ]
  %9022 = icmp ne i32 %8970, 0
  %9023 = fmul fast float %9020, %8951
  %9024 = fadd fast float %9023, %8964
  %9025 = fmul fast float %9024, %9020
  %9026 = select i1 %9022, float 0.000000e+00, float %9025
  %9027 = fcmp fast oeq float %8951, 0.000000e+00
  %9028 = fdiv fast float %8969, %8951
  %9029 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9028)  ; FMax(a,b)
  %9030 = select i1 %9027, float %9020, float %9029
  %9031 = call float @dx.op.binary.f32(i32 36, float %9020, float %9030)  ; FMin(a,b)
  %9032 = fcmp fast ogt float %8951, 0.000000e+00
  %9033 = fcmp fast olt float %8969, 0.000000e+00
  br i1 %9032, label %9034, label %9091

; <label>:9034                                    ; preds = %9019
  %9035 = icmp eq i32 %8970, 0
  br i1 %9033, label %9036, label %9080

; <label>:9036                                    ; preds = %9034
  %9037 = select i1 %9035, float %9020, float 0.000000e+00
  %9038 = fsub fast float -0.000000e+00, %9037
  %9039 = call float @dx.op.unary.f32(i32 6, float %9038)  ; FAbs(value)
  %9040 = fmul fast float %9037, %8951
  %9041 = fadd fast float %9040, %8964
  %9042 = fmul fast float %9039, %9041
  %9043 = fsub fast float %9026, %9042
  %9044 = fsub fast float %9020, %9039
  %9045 = select i1 %9035, float %9044, float 0.000000e+00
  %9046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9047 = extractvalue %dx.types.CBufRet.f32 %9046, 0
  %9048 = extractvalue %dx.types.CBufRet.f32 %9046, 1
  %9049 = extractvalue %dx.types.CBufRet.f32 %9046, 2
  %9050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9051 = extractvalue %dx.types.CBufRet.f32 %9050, 0
  %9052 = extractvalue %dx.types.CBufRet.f32 %9050, 1
  %9053 = extractvalue %dx.types.CBufRet.f32 %9050, 2
  %9054 = extractvalue %dx.types.CBufRet.f32 %9050, 3
  %9055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9056 = extractvalue %dx.types.CBufRet.f32 %9055, 3
  %9057 = call float @dx.op.binary.f32(i32 36, float %9043, float %9056)  ; FMin(a,b)
  %9058 = fmul fast float %9054, %9045
  %9059 = call float @dx.op.unary.f32(i32 7, float %9058)  ; Saturate(value)
  %9060 = fsub fast float %9051, %9047
  %9061 = fsub fast float %9052, %9048
  %9062 = fsub fast float %9053, %9049
  %9063 = fmul fast float %9059, %9060
  %9064 = fmul fast float %9059, %9061
  %9065 = fmul fast float %9059, %9062
  %9066 = fadd fast float %9063, %9047
  %9067 = fadd fast float %9064, %9048
  %9068 = fadd fast float %9065, %9049
  %9069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9070 = extractvalue %dx.types.CBufRet.f32 %9069, 0
  %9071 = extractvalue %dx.types.CBufRet.f32 %9069, 1
  %9072 = fadd fast float %9071, %9070
  %9073 = call float @dx.op.unary.f32(i32 7, float %9072)  ; Saturate(value)
  %9074 = extractvalue %dx.types.CBufRet.f32 %9069, 2
  %9075 = extractvalue %dx.types.CBufRet.f32 %9069, 3
  %9076 = fadd fast float %9075, %9074
  %9077 = call float @dx.op.unary.f32(i32 7, float %9076)  ; Saturate(value)
  %9078 = fmul fast float %9073, %9057
  %9079 = fmul fast float %9078, %9077
  br label %9321

; <label>:9080                                    ; preds = %9034
  br i1 %9035, label %9081, label %9102

; <label>:9081                                    ; preds = %9080
  %9082 = call float @dx.op.binary.f32(i32 36, float %9031, float %9021)  ; FMin(a,b)
  %9083 = fsub fast float %9031, %9082
  %9084 = fsub fast float %9083, %9020
  %9085 = call float @dx.op.unary.f32(i32 6, float %9084)  ; FAbs(value)
  %9086 = fadd fast float %9083, %9020
  %9087 = fmul fast float %9086, %8951
  %9088 = fadd fast float %9087, %8964
  %9089 = fmul fast float %9088, %9085
  %9090 = fsub fast float %9026, %9089
  br label %9102

; <label>:9091                                    ; preds = %9019
  br i1 %9033, label %9092, label %9102

; <label>:9092                                    ; preds = %9091
  %9093 = call float @dx.op.binary.f32(i32 35, float %9021, float %9031)  ; FMax(a,b)
  %9094 = icmp eq i32 %8970, 0
  %9095 = select i1 %9094, float %9031, float 0.000000e+00
  %9096 = fsub fast float -0.000000e+00, %9095
  %9097 = call float @dx.op.unary.f32(i32 6, float %9096)  ; FAbs(value)
  %9098 = fmul fast float %9095, %8951
  %9099 = fadd fast float %9098, %8964
  %9100 = fmul fast float %9097, %9099
  %9101 = fsub fast float %9026, %9100
  br label %9102

; <label>:9102                                    ; preds = %9092, %9091, %9081, %9080
  %9103 = phi float [ %9021, %9080 ], [ %9021, %9081 ], [ %9093, %9092 ], [ %9021, %9091 ]
  %9104 = phi float [ 0.000000e+00, %9080 ], [ %9085, %9081 ], [ %9097, %9092 ], [ 0.000000e+00, %9091 ]
  %9105 = phi float [ %9026, %9080 ], [ %9090, %9081 ], [ %9101, %9092 ], [ %9026, %9091 ]
  %9106 = phi float [ %9031, %9080 ], [ %9031, %9081 ], [ %9020, %9092 ], [ %9020, %9091 ]
  %9107 = getelementptr inbounds [3 x float], [3 x float]* %114, i32 0, i32 0
  store float -1.000000e+00, float* %9107, align 4, !tbaa !126, !noalias !141
  %9108 = getelementptr inbounds [3 x float], [3 x float]* %114, i32 0, i32 1
  store float -1.000000e+00, float* %9108, align 4, !tbaa !126, !noalias !141
  %9109 = getelementptr inbounds [3 x float], [3 x float]* %114, i32 0, i32 2
  store float -1.000000e+00, float* %9109, align 4, !tbaa !126, !noalias !141
  %9110 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 0
  store float -1.000000e+00, float* %9110, align 4, !tbaa !126, !noalias !141
  %9111 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 1
  store float -1.000000e+00, float* %9111, align 4, !tbaa !126, !noalias !141
  %9112 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 2
  store float -1.000000e+00, float* %9112, align 4, !tbaa !126, !noalias !141
  %9113 = icmp sgt i32 %8972, 0
  br i1 %9113, label %9114, label %9175

; <label>:9114                                    ; preds = %9102
  br label %9115

; <label>:9115                                    ; preds = %9164, %9114
  %9116 = phi i32 [ %9165, %9164 ], [ 0, %9114 ]
  %9117 = phi i32 [ %9166, %9164 ], [ 0, %9114 ]
  %9118 = add nuw i32 %9117, 171
  %9119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 %9118)  ; CBufferLoadLegacy(handle,regIndex)
  %9120 = extractvalue %dx.types.CBufRet.f32 %9119, 0
  %9121 = extractvalue %dx.types.CBufRet.f32 %9119, 1
  %9122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9123 = extractvalue %dx.types.CBufRet.f32 %9122, 0
  %9124 = extractvalue %dx.types.CBufRet.f32 %9122, 1
  %9125 = fsub fast float %9120, %9123
  %9126 = fsub fast float %9121, %9124
  %9127 = extractvalue %dx.types.CBufRet.f32 %9119, 2
  %9128 = fsub fast float -0.000000e+00, %9125
  %9129 = fsub fast float -0.000000e+00, %9126
  %9130 = call float @dx.op.dot2.f32(i32 54, float %8949, float %8950, float %9128, float %9129)  ; Dot2(ax,ay,bx,by)
  %9131 = fmul fast float %9130, 2.000000e+00
  %9132 = call float @dx.op.dot2.f32(i32 54, float %9128, float %9129, float %9128, float %9129)  ; Dot2(ax,ay,bx,by)
  %9133 = fmul fast float %9127, %9127
  %9134 = fsub fast float %9132, %9133
  %9135 = fmul fast float %9131, %9131
  %9136 = fmul fast float %8992, %9134
  %9137 = fsub fast float %9135, %9136
  %9138 = fcmp fast ogt float %9137, 0.000000e+00
  br i1 %9138, label %9139, label %9154

; <label>:9139                                    ; preds = %9115
  %9140 = fcmp fast ogt float %9131, 0.000000e+00
  %9141 = call float @dx.op.unary.f32(i32 24, float %9137)  ; Sqrt(value)
  %9142 = fsub fast float -0.000000e+00, %9141
  %9143 = select i1 %9140, float %9141, float %9142
  %9144 = fadd fast float %9143, %9131
  %9145 = fmul float %9144, -5.000000e-01
  %9146 = fdiv fast float %9145, %8985
  %9147 = call float @dx.op.binary.f32(i32 35, float %9146, float 0.000000e+00)  ; FMax(a,b)
  %9148 = call float @dx.op.binary.f32(i32 36, float %9020, float %9147)  ; FMin(a,b)
  %9149 = fdiv fast float %9134, %9145
  %9150 = call float @dx.op.binary.f32(i32 35, float %9149, float 0.000000e+00)  ; FMax(a,b)
  %9151 = call float @dx.op.binary.f32(i32 36, float %9020, float %9150)  ; FMin(a,b)
  %9152 = call float @dx.op.binary.f32(i32 36, float %9148, float %9151)  ; FMin(a,b)
  %9153 = call float @dx.op.binary.f32(i32 35, float %9148, float %9151)  ; FMax(a,b)
  br label %9154

; <label>:9154                                    ; preds = %9139, %9115
  %9155 = phi float [ %9153, %9139 ], [ -1.000000e+00, %9115 ]
  %9156 = phi float [ %9152, %9139 ], [ -1.000000e+00, %9115 ]
  %9157 = phi i1 [ true, %9139 ], [ false, %9115 ]
  br i1 %9157, label %9158, label %9164

; <label>:9158                                    ; preds = %9154
  %9159 = call float @dx.op.binary.f32(i32 35, float %9103, float %9156)  ; FMax(a,b)
  %9160 = getelementptr inbounds [3 x float], [3 x float]* %114, i32 0, i32 %9117
  store float %9159, float* %9160, align 4, !tbaa !126, !noalias !141
  %9161 = call float @dx.op.binary.f32(i32 35, float %9103, float %9155)  ; FMax(a,b)
  %9162 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 %9117
  store float %9161, float* %9162, align 4, !tbaa !126, !noalias !141
  %9163 = add nsw i32 %9116, 1
  br label %9164

; <label>:9164                                    ; preds = %9158, %9154
  %9165 = phi i32 [ %9163, %9158 ], [ %9116, %9154 ]
  %9166 = add nuw nsw i32 %9117, 1
  %9167 = icmp eq i32 %9166, %8972
  br i1 %9167, label %9168, label %9115

; <label>:9168                                    ; preds = %9164
  %9169 = load float, float* %9109, align 4, !tbaa !126, !alias.scope !157, !noalias !160
  %9170 = load float, float* %9108, align 4, !tbaa !126, !alias.scope !163, !noalias !164
  %9171 = load float, float* %9107, align 4, !tbaa !126, !alias.scope !165, !noalias !166
  %9172 = load float, float* %9112, align 4, !tbaa !126, !alias.scope !167, !noalias !170
  %9173 = load float, float* %9111, align 4, !tbaa !126, !alias.scope !173, !noalias !174
  %9174 = load float, float* %9110, align 4, !tbaa !126, !alias.scope !175, !noalias !176
  br label %9175

; <label>:9175                                    ; preds = %9168, %9102
  %9176 = phi float [ -1.000000e+00, %9102 ], [ %9174, %9168 ]
  %9177 = phi float [ -1.000000e+00, %9102 ], [ %9173, %9168 ]
  %9178 = phi float [ -1.000000e+00, %9102 ], [ %9172, %9168 ]
  %9179 = phi float [ -1.000000e+00, %9102 ], [ %9171, %9168 ]
  %9180 = phi float [ -1.000000e+00, %9102 ], [ %9170, %9168 ]
  %9181 = phi float [ -1.000000e+00, %9102 ], [ %9169, %9168 ]
  %9182 = phi i32 [ 0, %9102 ], [ %9165, %9168 ]
  %9183 = call float @dx.op.binary.f32(i32 36, float %9180, float %9181)  ; FMin(a,b)
  %9184 = call float @dx.op.binary.f32(i32 36, float %9179, float %9183)  ; FMin(a,b)
  %9185 = call float @dx.op.binary.f32(i32 35, float %9179, float %9180)  ; FMax(a,b)
  %9186 = call float @dx.op.binary.f32(i32 36, float %9185, float %9181)  ; FMin(a,b)
  %9187 = call float @dx.op.binary.f32(i32 36, float %9179, float %9180)  ; FMin(a,b)
  %9188 = call float @dx.op.binary.f32(i32 35, float %9187, float %9186)  ; FMax(a,b)
  %9189 = call float @dx.op.binary.f32(i32 35, float %9180, float %9181)  ; FMax(a,b)
  %9190 = call float @dx.op.binary.f32(i32 35, float %9179, float %9189)  ; FMax(a,b)
  store float %9184, float* %9107, align 4, !tbaa !126, !alias.scope !165, !noalias !166
  store float %9188, float* %9108, align 4, !tbaa !126, !alias.scope !163, !noalias !164
  store float %9190, float* %9109, align 4, !tbaa !126, !alias.scope !157, !noalias !160
  %9191 = call float @dx.op.binary.f32(i32 36, float %9177, float %9178)  ; FMin(a,b)
  %9192 = call float @dx.op.binary.f32(i32 36, float %9176, float %9191)  ; FMin(a,b)
  %9193 = call float @dx.op.binary.f32(i32 35, float %9176, float %9177)  ; FMax(a,b)
  %9194 = call float @dx.op.binary.f32(i32 36, float %9193, float %9178)  ; FMin(a,b)
  %9195 = call float @dx.op.binary.f32(i32 36, float %9176, float %9177)  ; FMin(a,b)
  %9196 = call float @dx.op.binary.f32(i32 35, float %9195, float %9194)  ; FMax(a,b)
  %9197 = call float @dx.op.binary.f32(i32 35, float %9177, float %9178)  ; FMax(a,b)
  %9198 = call float @dx.op.binary.f32(i32 35, float %9176, float %9197)  ; FMax(a,b)
  store float %9192, float* %9110, align 4, !tbaa !126, !alias.scope !175, !noalias !176
  store float %9196, float* %9111, align 4, !tbaa !126, !alias.scope !173, !noalias !174
  store float %9198, float* %9112, align 4, !tbaa !126, !alias.scope !167, !noalias !170
  %9199 = sub nsw i32 3, %9182
  %9200 = icmp sgt i32 %9199, 2
  br i1 %9200, label %9201, label %9239

; <label>:9201                                    ; preds = %9175
  %9202 = icmp eq i32 %8970, 0
  %9203 = fsub fast float %9020, %9104
  %9204 = select i1 %9202, float %9203, float %9104
  %9205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9206 = extractvalue %dx.types.CBufRet.f32 %9205, 0
  %9207 = extractvalue %dx.types.CBufRet.f32 %9205, 1
  %9208 = extractvalue %dx.types.CBufRet.f32 %9205, 2
  %9209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9210 = extractvalue %dx.types.CBufRet.f32 %9209, 0
  %9211 = extractvalue %dx.types.CBufRet.f32 %9209, 1
  %9212 = extractvalue %dx.types.CBufRet.f32 %9209, 2
  %9213 = extractvalue %dx.types.CBufRet.f32 %9209, 3
  %9214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9215 = extractvalue %dx.types.CBufRet.f32 %9214, 3
  %9216 = call float @dx.op.binary.f32(i32 36, float %9105, float %9215)  ; FMin(a,b)
  %9217 = fmul fast float %9213, %9204
  %9218 = call float @dx.op.unary.f32(i32 7, float %9217)  ; Saturate(value)
  %9219 = fsub fast float %9210, %9206
  %9220 = fsub fast float %9211, %9207
  %9221 = fsub fast float %9212, %9208
  %9222 = fmul fast float %9218, %9219
  %9223 = fmul fast float %9218, %9220
  %9224 = fmul fast float %9218, %9221
  %9225 = fadd fast float %9222, %9206
  %9226 = fadd fast float %9223, %9207
  %9227 = fadd fast float %9224, %9208
  %9228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9229 = extractvalue %dx.types.CBufRet.f32 %9228, 0
  %9230 = extractvalue %dx.types.CBufRet.f32 %9228, 1
  %9231 = fadd fast float %9230, %9229
  %9232 = call float @dx.op.unary.f32(i32 7, float %9231)  ; Saturate(value)
  %9233 = extractvalue %dx.types.CBufRet.f32 %9228, 2
  %9234 = extractvalue %dx.types.CBufRet.f32 %9228, 3
  %9235 = fadd fast float %9234, %9233
  %9236 = call float @dx.op.unary.f32(i32 7, float %9235)  ; Saturate(value)
  %9237 = fmul fast float %9232, %9216
  %9238 = fmul fast float %9237, %9236
  br label %9321

; <label>:9239                                    ; preds = %9175
  %9240 = getelementptr inbounds [3 x float], [3 x float]* %114, i32 0, i32 %9199
  %9241 = load float, float* %9240, align 4, !tbaa !126, !noalias !141
  %9242 = fcmp fast olt float %9241, %9106
  %9243 = icmp sgt i32 %9182, 0
  %9244 = and i1 %9243, %9242
  br i1 %9244, label %9245, label %9282

; <label>:9245                                    ; preds = %9239
  br label %9246

; <label>:9246                                    ; preds = %9275, %9245
  %9247 = phi float [ %9276, %9275 ], [ %9104, %9245 ]
  %9248 = phi float [ %9277, %9275 ], [ %9105, %9245 ]
  %9249 = phi float [ %9257, %9275 ], [ %9241, %9245 ]
  %9250 = phi i32 [ %9254, %9275 ], [ %9199, %9245 ]
  %9251 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 %9250
  %9252 = load float, float* %9251, align 4, !tbaa !126, !noalias !141
  %9253 = icmp slt i32 %9250, 2
  %9254 = add nsw i32 %9250, 1
  %9255 = getelementptr inbounds [3 x float], [3 x float]* %114, i32 0, i32 %9254
  %9256 = load float, float* %9255, align 4, !tbaa !126, !noalias !141
  %9257 = select i1 %9253, float %9256, float %9020
  %9258 = call float @dx.op.binary.f32(i32 36, float %9257, float %9252)  ; FMin(a,b)
  %9259 = call float @dx.op.binary.f32(i32 36, float %9106, float %9258)  ; FMin(a,b)
  %9260 = icmp eq i32 %8970, 0
  %9261 = fadd fast float %9259, %9249
  %9262 = fmul fast float %9261, %8951
  %9263 = fadd fast float %9262, %8964
  br i1 %9260, label %9269, label %9264

; <label>:9264                                    ; preds = %9246
  %9265 = fsub fast float %9259, %9249
  %9266 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9265)  ; FMax(a,b)
  %9267 = fmul fast float %9266, %9263
  %9268 = fadd fast float %9267, %9248
  br label %9275

; <label>:9269                                    ; preds = %9246
  %9270 = fsub fast float %9249, %9259
  %9271 = call float @dx.op.unary.f32(i32 6, float %9270)  ; FAbs(value)
  %9272 = fadd fast float %9271, %9247
  %9273 = fmul fast float %9271, %9263
  %9274 = fsub fast float %9248, %9273
  br label %9275

; <label>:9275                                    ; preds = %9269, %9264
  %9276 = phi float [ %9266, %9264 ], [ %9272, %9269 ]
  %9277 = phi float [ %9268, %9264 ], [ %9274, %9269 ]
  %9278 = fcmp fast olt float %9257, %9106
  %9279 = icmp slt i32 %9254, 3
  %9280 = and i1 %9279, %9278
  br i1 %9280, label %9246, label %9281

; <label>:9281                                    ; preds = %9275
  br label %9282

; <label>:9282                                    ; preds = %9281, %9239
  %9283 = phi float [ %9104, %9239 ], [ %9276, %9281 ]
  %9284 = phi float [ %9105, %9239 ], [ %9277, %9281 ]
  %9285 = fsub fast float %9020, %9283
  %9286 = select i1 %9022, float %9283, float %9285
  %9287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9288 = extractvalue %dx.types.CBufRet.f32 %9287, 0
  %9289 = extractvalue %dx.types.CBufRet.f32 %9287, 1
  %9290 = extractvalue %dx.types.CBufRet.f32 %9287, 2
  %9291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9292 = extractvalue %dx.types.CBufRet.f32 %9291, 0
  %9293 = extractvalue %dx.types.CBufRet.f32 %9291, 1
  %9294 = extractvalue %dx.types.CBufRet.f32 %9291, 2
  %9295 = extractvalue %dx.types.CBufRet.f32 %9291, 3
  %9296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9297 = extractvalue %dx.types.CBufRet.f32 %9296, 3
  %9298 = call float @dx.op.binary.f32(i32 36, float %9284, float %9297)  ; FMin(a,b)
  %9299 = fmul fast float %9295, %9286
  %9300 = call float @dx.op.unary.f32(i32 7, float %9299)  ; Saturate(value)
  %9301 = fsub fast float %9292, %9288
  %9302 = fsub fast float %9293, %9289
  %9303 = fsub fast float %9294, %9290
  %9304 = fmul fast float %9300, %9301
  %9305 = fmul fast float %9300, %9302
  %9306 = fmul fast float %9300, %9303
  %9307 = fadd fast float %9304, %9288
  %9308 = fadd fast float %9305, %9289
  %9309 = fadd fast float %9306, %9290
  %9310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9311 = extractvalue %dx.types.CBufRet.f32 %9310, 0
  %9312 = extractvalue %dx.types.CBufRet.f32 %9310, 1
  %9313 = fadd fast float %9312, %9311
  %9314 = call float @dx.op.unary.f32(i32 7, float %9313)  ; Saturate(value)
  %9315 = extractvalue %dx.types.CBufRet.f32 %9310, 2
  %9316 = extractvalue %dx.types.CBufRet.f32 %9310, 3
  %9317 = fadd fast float %9316, %9315
  %9318 = call float @dx.op.unary.f32(i32 7, float %9317)  ; Saturate(value)
  %9319 = fmul fast float %9314, %9298
  %9320 = fmul fast float %9319, %9318
  br label %9321

; <label>:9321                                    ; preds = %9282, %9201, %9036, %9018, %9016
  %9322 = phi float [ %9045, %9036 ], [ %9204, %9201 ], [ %9286, %9282 ], [ 0.000000e+00, %9016 ], [ 0.000000e+00, %9018 ]
  %9323 = phi float [ %9079, %9036 ], [ %9238, %9201 ], [ %9320, %9282 ], [ 0.000000e+00, %9016 ], [ 0.000000e+00, %9018 ]
  %9324 = phi float [ %9066, %9036 ], [ %9225, %9201 ], [ %9307, %9282 ], [ 0.000000e+00, %9016 ], [ 0.000000e+00, %9018 ]
  %9325 = phi float [ %9067, %9036 ], [ %9226, %9201 ], [ %9308, %9282 ], [ 0.000000e+00, %9016 ], [ 0.000000e+00, %9018 ]
  %9326 = phi float [ %9068, %9036 ], [ %9227, %9201 ], [ %9309, %9282 ], [ 0.000000e+00, %9016 ], [ 0.000000e+00, %9018 ]
  %9327 = fmul fast float %8959, %9323
  %9328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9329 = extractvalue %dx.types.CBufRet.f32 %9328, 2
  %9330 = fsub fast float %8966, %9329
  %9331 = fcmp fast olt float %9327, -2.000000e+01
  %9332 = call float @dx.op.unary.f32(i32 21, float %9327)  ; Exp(value)
  %9333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9334 = extractvalue %dx.types.CBufRet.f32 %9333, 2
  %9335 = extractvalue %dx.types.CBufRet.f32 %9333, 3
  %9336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9337 = extractvalue %dx.types.CBufRet.f32 %9336, 2
  %9338 = fmul fast float %9335, %9330
  %9339 = call float @dx.op.unary.f32(i32 7, float %9338)  ; Saturate(value)
  %9340 = fsub fast float 1.000000e+00, %9339
  %9341 = fmul fast float %8951, 5.000000e-01
  %9342 = fadd fast float %9341, 5.000000e-01
  %9343 = call float @dx.op.unary.f32(i32 7, float %9342)  ; Saturate(value)
  %9344 = fsub fast float 1.000000e+00, %9343
  %9345 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9340)  ; FMax(a,b)
  %9346 = fdiv fast float %9344, %9345
  %9347 = fsub fast float %9330, %8908
  %9348 = call float @dx.op.unary.f32(i32 6, float %9347)  ; FAbs(value)
  %9349 = fmul fast float %9348, %9334
  %9350 = call float @dx.op.unary.f32(i32 7, float %9346)  ; Saturate(value)
  %9351 = fsub fast float 1.000000e+00, %9349
  %9352 = fmul fast float %9351, %9350
  %9353 = fadd fast float %9352, %9349
  %9354 = fmul fast float %9337, %9330
  %9355 = call float @dx.op.unary.f32(i32 7, float %9354)  ; Saturate(value)
  %9356 = fsub fast float 1.000000e+00, %9353
  %9357 = fmul fast float %9356, %9355
  %9358 = fadd fast float %9357, %9353
  %9359 = call float @dx.op.unary.f32(i32 7, float %9358)  ; Saturate(value)
  %9360 = fadd fast float %9332, -1.000000e+00
  %9361 = select i1 %9331, float -1.000000e+00, float %9360
  %9362 = fmul fast float %9359, %9361
  %9363 = fadd fast float %9362, 1.000000e+00
  %9364 = fsub fast float -0.000000e+00, %9362
  %9365 = fmul fast float %9324, %9364
  %9366 = fmul fast float %9325, %9364
  %9367 = fmul fast float %9326, %9364
  br label %9368

; <label>:9368                                    ; preds = %9321, %8917
  %9369 = phi float [ %9322, %9321 ], [ 0.000000e+00, %8917 ]
  %9370 = phi float [ %9363, %9321 ], [ 1.000000e+00, %8917 ]
  %9371 = phi float [ %9365, %9321 ], [ 0.000000e+00, %8917 ]
  %9372 = phi float [ %9366, %9321 ], [ 0.000000e+00, %8917 ]
  %9373 = phi float [ %9367, %9321 ], [ 0.000000e+00, %8917 ]
  %9374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9375 = extractvalue %dx.types.CBufRet.f32 %9374, 1
  %9376 = fsub fast float 1.000000e+00, %9370
  %9377 = fmul fast float %9376, %8952
  %9378 = fmul fast float %9377, %9375
  %9379 = fsub fast float %8952, %9378
  br i1 %8945, label %9380, label %9409, !dx.controlflow.hints !177

; <label>:9380                                    ; preds = %9368
  %9381 = fmul fast float %8953, %8942
  %9382 = fadd fast float %9381, %8943
  %9383 = call float @dx.op.unary.f32(i32 7, float %9382)  ; Saturate(value)
  %9384 = fmul fast float %8924, %9379
  %9385 = fsub fast float -0.000000e+00, %9384
  %9386 = fmul fast float %8925, %9379
  %9387 = fsub fast float -0.000000e+00, %9386
  %9388 = call float @dx.op.unary.f32(i32 21, float %9385)  ; Exp(value)
  %9389 = call float @dx.op.unary.f32(i32 21, float %9387)  ; Exp(value)
  %9390 = call float @dx.op.binary.f32(i32 35, float %8932, float %9388)  ; FMax(a,b)
  %9391 = call float @dx.op.binary.f32(i32 35, float %8932, float %9389)  ; FMax(a,b)
  %9392 = fsub fast float %9391, %9390
  %9393 = fmul fast float %9392, %9383
  %9394 = fadd fast float %9393, %9390
  %9395 = call float @dx.op.unary.f32(i32 7, float %9394)  ; Saturate(value)
  %9396 = fsub fast float %8929, %8934
  %9397 = fsub fast float %8930, %8935
  %9398 = fsub fast float %8931, %8936
  %9399 = fmul fast float %9383, %9396
  %9400 = fmul fast float %9383, %9397
  %9401 = fmul fast float %9383, %9398
  %9402 = fadd fast float %9399, %8934
  %9403 = fadd fast float %9400, %8935
  %9404 = fadd fast float %9401, %8936
  %9405 = fsub fast float 1.000000e+00, %9395
  %9406 = fmul fast float %9405, %9402
  %9407 = fmul fast float %9405, %9403
  %9408 = fmul fast float %9405, %9404
  br label %9468

; <label>:9409                                    ; preds = %9368
  %9410 = fmul fast float %9379, %8941
  %9411 = call float @dx.op.unary.f32(i32 7, float %9410)  ; Saturate(value)
  %9412 = fsub fast float 2.000000e+00, %9411
  %9413 = fmul fast float %9411, 9.921875e-01
  %9414 = fmul fast float %9413, %9412
  %9415 = fadd fast float %9414, 3.906250e-03
  %9416 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %56, float %9415, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9417 = extractvalue %dx.types.ResRet.f32 %9416, 0
  %9418 = fsub fast float %9411, %9417
  %9419 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9418)  ; FMax(a,b)
  %9420 = fmul fast float %8927, %8908
  %9421 = call float @dx.op.unary.f32(i32 6, float %9420)  ; FAbs(value)
  %9422 = fcmp fast ogt float %9421, 0x3EB0C6F7A0000000
  br i1 %9422, label %9423, label %9429, !dx.controlflow.hints !178

; <label>:9423                                    ; preds = %9409
  %9424 = fmul fast float %9420, 0xBFF7154760000000
  %9425 = call float @dx.op.unary.f32(i32 21, float %9424)  ; Exp(value)
  %9426 = fsub fast float 1.000000e+00, %9425
  %9427 = fdiv fast float %9426, %9420
  %9428 = fmul fast float %9427, %8937
  br label %9429

; <label>:9429                                    ; preds = %9423, %9409
  %9430 = phi float [ %9428, %9423 ], [ %8937, %9409 ]
  %9431 = fadd fast float %9430, %8939
  %9432 = fmul fast float %9431, %9419
  %9433 = fmul fast float %8924, %9432
  %9434 = fsub fast float -0.000000e+00, %9433
  %9435 = fmul fast float %8925, %9432
  %9436 = fsub fast float -0.000000e+00, %9435
  %9437 = fmul fast float %8926, %9432
  %9438 = fsub fast float -0.000000e+00, %9437
  %9439 = call float @dx.op.unary.f32(i32 21, float %9434)  ; Exp(value)
  %9440 = call float @dx.op.unary.f32(i32 21, float %9436)  ; Exp(value)
  %9441 = call float @dx.op.unary.f32(i32 21, float %9438)  ; Exp(value)
  %9442 = fmul fast float %8953, %8953
  %9443 = fadd fast float %9442, 1.000000e+00
  %9444 = fmul fast float %9443, 0x3FAE8EC8A0000000
  %9445 = fmul fast float %9444, %8934
  %9446 = fmul fast float %9444, %8935
  %9447 = fmul fast float %9444, %8936
  %9448 = fmul fast float %8953, %8932
  %9449 = fsub fast float 1.000000e+00, %9448
  %9450 = fmul fast float %8932, %8932
  %9451 = fsub fast float 1.000000e+00, %9450
  %9452 = fmul fast float %9451, 0x3FB45F3060000000
  %9453 = fmul fast float %9449, %9449
  %9454 = fdiv fast float 1.000000e+00, %9453
  %9455 = fmul fast float %9452, %9454
  %9456 = fmul fast float %9455, %8929
  %9457 = fmul fast float %9455, %8930
  %9458 = fmul fast float %9455, %8931
  %9459 = fadd fast float %9456, %9445
  %9460 = fadd fast float %9457, %9446
  %9461 = fadd fast float %9458, %9447
  %9462 = fsub fast float 1.000000e+00, %9439
  %9463 = fsub fast float 1.000000e+00, %9440
  %9464 = fsub fast float 1.000000e+00, %9441
  %9465 = fmul fast float %9459, %9462
  %9466 = fmul fast float %9460, %9463
  %9467 = fmul fast float %9461, %9464
  br label %9468

; <label>:9468                                    ; preds = %9429, %9380
  %9469 = phi float [ %9406, %9380 ], [ %9465, %9429 ]
  %9470 = phi float [ %9407, %9380 ], [ %9466, %9429 ]
  %9471 = phi float [ %9408, %9380 ], [ %9467, %9429 ]
  %9472 = phi float [ %9395, %9380 ], [ %9439, %9429 ]
  %9473 = phi float [ %9395, %9380 ], [ %9440, %9429 ]
  %9474 = phi float [ %9395, %9380 ], [ %9441, %9429 ]
  br i1 %8961, label %9475, label %9673, !dx.controlflow.hints !179

; <label>:9475                                    ; preds = %9468
  %9476 = extractvalue %dx.types.CBufRet.f32 %9374, 0
  %9477 = fmul fast float %9476, %9376
  %9478 = fsub fast float %9371, %9469
  %9479 = fsub fast float %9372, %9470
  %9480 = fsub fast float %9373, %9471
  %9481 = fmul fast float %9477, %9478
  %9482 = fmul fast float %9477, %9479
  %9483 = fmul fast float %9477, %9480
  %9484 = fadd fast float %9481, %9469
  %9485 = fadd fast float %9482, %9470
  %9486 = fadd fast float %9483, %9471
  %9487 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9472)  ; FMax(a,b)
  %9488 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9473)  ; FMax(a,b)
  %9489 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9474)  ; FMax(a,b)
  %9490 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9370)  ; FMax(a,b)
  %9491 = call float @dx.op.binary.f32(i32 35, float %9369, float %9379)  ; FMax(a,b)
  %9492 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9491)  ; FMax(a,b)
  %9493 = fdiv fast float %9369, %9492
  %9494 = call float @dx.op.unary.f32(i32 7, float %9493)  ; Saturate(value)
  %9495 = fdiv fast float %9379, %9492
  %9496 = call float @dx.op.unary.f32(i32 7, float %9495)  ; Saturate(value)
  %9497 = fcmp fast une float %9490, 1.000000e+00
  br i1 %9497, label %9498, label %9511, !dx.controlflow.hints !180

; <label>:9498                                    ; preds = %9475
  %9499 = call float @dx.op.unary.f32(i32 23, float %9490)  ; Log(value)
  %9500 = fmul fast float %9499, 0x3FE62E4300000000
  %9501 = fmul fast float %9371, %9500
  %9502 = fsub fast float -0.000000e+00, %9501
  %9503 = fmul fast float %9372, %9500
  %9504 = fsub fast float -0.000000e+00, %9503
  %9505 = fmul fast float %9373, %9500
  %9506 = fsub fast float -0.000000e+00, %9505
  %9507 = fsub fast float 1.000000e+00, %9490
  %9508 = fdiv fast float %9502, %9507
  %9509 = fdiv fast float %9504, %9507
  %9510 = fdiv fast float %9506, %9507
  br label %9511

; <label>:9511                                    ; preds = %9498, %9475
  %9512 = phi float [ %9508, %9498 ], [ %9371, %9475 ]
  %9513 = phi float [ %9509, %9498 ], [ %9372, %9475 ]
  %9514 = phi float [ %9510, %9498 ], [ %9373, %9475 ]
  %9515 = phi float [ %9500, %9498 ], [ 0.000000e+00, %9475 ]
  %9516 = fcmp fast une float %9487, 1.000000e+00
  br i1 %9516, label %9517, label %9524, !dx.controlflow.hints !181

; <label>:9517                                    ; preds = %9511
  %9518 = call float @dx.op.unary.f32(i32 23, float %9487)  ; Log(value)
  %9519 = fmul fast float %9518, 0x3FE62E4300000000
  %9520 = fmul fast float %9484, %9519
  %9521 = fsub fast float -0.000000e+00, %9520
  %9522 = fsub fast float 1.000000e+00, %9487
  %9523 = fdiv fast float %9521, %9522
  br label %9524

; <label>:9524                                    ; preds = %9517, %9511
  %9525 = phi float [ %9523, %9517 ], [ %9484, %9511 ]
  %9526 = phi float [ %9519, %9517 ], [ 0.000000e+00, %9511 ]
  %9527 = fcmp fast une float %9488, 1.000000e+00
  br i1 %9527, label %9528, label %9535, !dx.controlflow.hints !181

; <label>:9528                                    ; preds = %9524
  %9529 = call float @dx.op.unary.f32(i32 23, float %9488)  ; Log(value)
  %9530 = fmul fast float %9529, 0x3FE62E4300000000
  %9531 = fmul fast float %9485, %9530
  %9532 = fsub fast float -0.000000e+00, %9531
  %9533 = fsub fast float 1.000000e+00, %9488
  %9534 = fdiv fast float %9532, %9533
  br label %9535

; <label>:9535                                    ; preds = %9528, %9524
  %9536 = phi float [ %9534, %9528 ], [ %9485, %9524 ]
  %9537 = phi float [ %9530, %9528 ], [ 0.000000e+00, %9524 ]
  %9538 = fcmp fast une float %9489, 1.000000e+00
  br i1 %9538, label %9539, label %9546, !dx.controlflow.hints !181

; <label>:9539                                    ; preds = %9535
  %9540 = call float @dx.op.unary.f32(i32 23, float %9489)  ; Log(value)
  %9541 = fmul fast float %9540, 0x3FE62E4300000000
  %9542 = fmul fast float %9486, %9541
  %9543 = fsub fast float -0.000000e+00, %9542
  %9544 = fsub fast float 1.000000e+00, %9489
  %9545 = fdiv fast float %9543, %9544
  br label %9546

; <label>:9546                                    ; preds = %9539, %9535
  %9547 = phi float [ %9545, %9539 ], [ %9486, %9535 ]
  %9548 = phi float [ %9541, %9539 ], [ 0.000000e+00, %9535 ]
  %9549 = fmul fast float %9512, %9496
  %9550 = fmul fast float %9513, %9496
  %9551 = fmul fast float %9514, %9496
  %9552 = fmul fast float %9515, %9496
  %9553 = fmul fast float %9525, %9494
  %9554 = fmul fast float %9536, %9494
  %9555 = fmul fast float %9547, %9494
  %9556 = fmul fast float %9526, %9494
  %9557 = fmul fast float %9537, %9494
  %9558 = fmul fast float %9548, %9494
  %9559 = fadd fast float %9553, %9549
  %9560 = fadd fast float %9554, %9550
  %9561 = fadd fast float %9555, %9551
  %9562 = fadd fast float %9556, %9552
  %9563 = fadd fast float %9557, %9552
  %9564 = fadd fast float %9558, %9552
  %9565 = fcmp fast une float %9562, 0.000000e+00
  br i1 %9565, label %9566, label %9573, !dx.controlflow.hints !182

; <label>:9566                                    ; preds = %9546
  %9567 = fmul fast float %9562, 0x3FF7154760000000
  %9568 = call float @dx.op.unary.f32(i32 21, float %9567)  ; Exp(value)
  %9569 = fsub fast float 1.000000e+00, %9568
  %9570 = fmul fast float %9559, %9569
  %9571 = fsub fast float -0.000000e+00, %9570
  %9572 = fdiv fast float %9571, %9562
  br label %9573

; <label>:9573                                    ; preds = %9566, %9546
  %9574 = phi float [ %9568, %9566 ], [ 1.000000e+00, %9546 ]
  %9575 = phi float [ %9572, %9566 ], [ %9559, %9546 ]
  %9576 = fcmp fast une float %9563, 0.000000e+00
  br i1 %9576, label %9577, label %9584, !dx.controlflow.hints !182

; <label>:9577                                    ; preds = %9573
  %9578 = fmul fast float %9563, 0x3FF7154760000000
  %9579 = call float @dx.op.unary.f32(i32 21, float %9578)  ; Exp(value)
  %9580 = fsub fast float 1.000000e+00, %9579
  %9581 = fmul fast float %9560, %9580
  %9582 = fsub fast float -0.000000e+00, %9581
  %9583 = fdiv fast float %9582, %9563
  br label %9584

; <label>:9584                                    ; preds = %9577, %9573
  %9585 = phi float [ %9579, %9577 ], [ 1.000000e+00, %9573 ]
  %9586 = phi float [ %9583, %9577 ], [ %9560, %9573 ]
  %9587 = fcmp fast une float %9564, 0.000000e+00
  br i1 %9587, label %9588, label %9595, !dx.controlflow.hints !182

; <label>:9588                                    ; preds = %9584
  %9589 = fmul fast float %9564, 0x3FF7154760000000
  %9590 = call float @dx.op.unary.f32(i32 21, float %9589)  ; Exp(value)
  %9591 = fsub fast float 1.000000e+00, %9590
  %9592 = fmul fast float %9561, %9591
  %9593 = fsub fast float -0.000000e+00, %9592
  %9594 = fdiv fast float %9593, %9564
  br label %9595

; <label>:9595                                    ; preds = %9588, %9584
  %9596 = phi float [ %9590, %9588 ], [ 1.000000e+00, %9584 ]
  %9597 = phi float [ %9594, %9588 ], [ %9561, %9584 ]
  %9598 = fcmp fast ogt float %9494, %9496
  br i1 %9598, label %9599, label %9619

; <label>:9599                                    ; preds = %9595
  %9600 = fsub fast float 1.000000e+00, %9496
  %9601 = fmul fast float %9512, %9600
  %9602 = fmul fast float %9513, %9600
  %9603 = fmul fast float %9514, %9600
  %9604 = fmul fast float %9515, %9600
  %9605 = fcmp fast une float %9604, 0.000000e+00
  br i1 %9605, label %9606, label %9657, !dx.controlflow.hints !183

; <label>:9606                                    ; preds = %9599
  %9607 = fmul fast float %9604, 0x3FF7154760000000
  %9608 = call float @dx.op.unary.f32(i32 21, float %9607)  ; Exp(value)
  %9609 = fsub fast float 1.000000e+00, %9608
  %9610 = fmul fast float %9601, %9609
  %9611 = fsub fast float -0.000000e+00, %9610
  %9612 = fmul fast float %9602, %9609
  %9613 = fsub fast float -0.000000e+00, %9612
  %9614 = fmul fast float %9603, %9609
  %9615 = fsub fast float -0.000000e+00, %9614
  %9616 = fdiv fast float %9611, %9604
  %9617 = fdiv fast float %9613, %9604
  %9618 = fdiv fast float %9615, %9604
  br label %9657

; <label>:9619                                    ; preds = %9595
  %9620 = fsub fast float 1.000000e+00, %9494
  %9621 = fmul fast float %9525, %9620
  %9622 = fmul fast float %9536, %9620
  %9623 = fmul fast float %9547, %9620
  %9624 = fmul fast float %9526, %9620
  %9625 = fmul fast float %9537, %9620
  %9626 = fmul fast float %9548, %9620
  %9627 = fcmp fast une float %9624, 0.000000e+00
  br i1 %9627, label %9628, label %9635, !dx.controlflow.hints !182

; <label>:9628                                    ; preds = %9619
  %9629 = fmul fast float %9624, 0x3FF7154760000000
  %9630 = call float @dx.op.unary.f32(i32 21, float %9629)  ; Exp(value)
  %9631 = fsub fast float 1.000000e+00, %9630
  %9632 = fmul fast float %9621, %9631
  %9633 = fsub fast float -0.000000e+00, %9632
  %9634 = fdiv fast float %9633, %9624
  br label %9635

; <label>:9635                                    ; preds = %9628, %9619
  %9636 = phi float [ %9634, %9628 ], [ %9621, %9619 ]
  %9637 = phi float [ %9630, %9628 ], [ 1.000000e+00, %9619 ]
  %9638 = fcmp fast une float %9625, 0.000000e+00
  br i1 %9638, label %9639, label %9646, !dx.controlflow.hints !182

; <label>:9639                                    ; preds = %9635
  %9640 = fmul fast float %9625, 0x3FF7154760000000
  %9641 = call float @dx.op.unary.f32(i32 21, float %9640)  ; Exp(value)
  %9642 = fsub fast float 1.000000e+00, %9641
  %9643 = fmul fast float %9622, %9642
  %9644 = fsub fast float -0.000000e+00, %9643
  %9645 = fdiv fast float %9644, %9625
  br label %9646

; <label>:9646                                    ; preds = %9639, %9635
  %9647 = phi float [ %9645, %9639 ], [ %9622, %9635 ]
  %9648 = phi float [ %9641, %9639 ], [ 1.000000e+00, %9635 ]
  %9649 = fcmp fast une float %9626, 0.000000e+00
  br i1 %9649, label %9650, label %9657, !dx.controlflow.hints !182

; <label>:9650                                    ; preds = %9646
  %9651 = fmul fast float %9626, 0x3FF7154760000000
  %9652 = call float @dx.op.unary.f32(i32 21, float %9651)  ; Exp(value)
  %9653 = fsub fast float 1.000000e+00, %9652
  %9654 = fmul fast float %9623, %9653
  %9655 = fsub fast float -0.000000e+00, %9654
  %9656 = fdiv fast float %9655, %9626
  br label %9657

; <label>:9657                                    ; preds = %9650, %9646, %9606, %9599
  %9658 = phi float [ %9656, %9650 ], [ %9618, %9606 ], [ %9603, %9599 ], [ %9623, %9646 ]
  %9659 = phi float [ %9647, %9650 ], [ %9617, %9606 ], [ %9602, %9599 ], [ %9647, %9646 ]
  %9660 = phi float [ %9636, %9650 ], [ %9616, %9606 ], [ %9601, %9599 ], [ %9636, %9646 ]
  %9661 = phi float [ %9652, %9650 ], [ %9608, %9606 ], [ 1.000000e+00, %9599 ], [ 1.000000e+00, %9646 ]
  %9662 = phi float [ %9648, %9650 ], [ %9608, %9606 ], [ 1.000000e+00, %9599 ], [ %9648, %9646 ]
  %9663 = phi float [ %9637, %9650 ], [ %9608, %9606 ], [ 1.000000e+00, %9599 ], [ %9637, %9646 ]
  %9664 = fmul fast float %9663, %9575
  %9665 = fmul fast float %9662, %9586
  %9666 = fmul fast float %9661, %9597
  %9667 = fadd fast float %9664, %9660
  %9668 = fadd fast float %9665, %9659
  %9669 = fadd fast float %9666, %9658
  %9670 = fmul fast float %9663, %9574
  %9671 = fmul fast float %9662, %9585
  %9672 = fmul fast float %9661, %9596
  br label %9673

; <label>:9673                                    ; preds = %9657, %9468
  %9674 = phi float [ %9672, %9657 ], [ %9474, %9468 ]
  %9675 = phi float [ %9671, %9657 ], [ %9473, %9468 ]
  %9676 = phi float [ %9670, %9657 ], [ %9472, %9468 ]
  %9677 = phi float [ %9669, %9657 ], [ %9471, %9468 ]
  %9678 = phi float [ %9668, %9657 ], [ %9470, %9468 ]
  %9679 = phi float [ %9667, %9657 ], [ %9469, %9468 ]
  %9680 = fmul fast float %9679, %8625
  %9681 = fmul fast float %9678, %8625
  %9682 = fmul fast float %9677, %8625
  %9683 = fmul fast float %9676, %8916
  %9684 = call float @dx.op.dot3.f32(i32 55, float %9676, float %9675, float %9674, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9685 = call float @dx.op.dot3.f32(i32 55, float %9680, float %9681, float %9682, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9686 = select i1 %279, float %9684, float %9676
  %9687 = select i1 %279, float %9684, float %9675
  %9688 = select i1 %279, float 1.000000e+00, float %9674
  %9689 = select i1 %279, float %9685, float %9680
  %9690 = select i1 %279, float 0.000000e+00, float %9681
  %9691 = select i1 %279, float 0.000000e+00, float %9682
  %9692 = fmul fast float %9686, %8910
  %9693 = fmul fast float %9687, %8911
  %9694 = fmul fast float %9688, %8912
  %9695 = fadd fast float %9692, %9689
  %9696 = fadd fast float %9693, %9690
  %9697 = fadd fast float %9691, %9694
  %9698 = fmul fast float %9686, %8913
  %9699 = fmul fast float %9687, %8914
  %9700 = fmul fast float %9688, %8915
  %9701 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9702 = extractvalue %dx.types.CBufRet.i32 %9701, 0
  %9703 = icmp eq i32 %9702, 0
  br i1 %9703, label %10071, label %9704, !dx.controlflow.hints !184

; <label>:9704                                    ; preds = %9673
  %9705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9706 = extractvalue %dx.types.CBufRet.f32 %9705, 2
  %9707 = extractvalue %dx.types.CBufRet.f32 %9705, 3
  %9708 = fmul fast float %9706, %120
  %9709 = fmul fast float %9707, %121
  %9710 = fmul fast float %9708, 2.000000e+00
  %9711 = fmul fast float %9709, 2.000000e+00
  %9712 = fsub fast float 1.000000e+00, %9710
  %9713 = fsub fast float 1.000000e+00, %9711
  %9714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9715 = extractvalue %dx.types.CBufRet.f32 %9714, 0
  %9716 = extractvalue %dx.types.CBufRet.f32 %9714, 1
  %9717 = extractvalue %dx.types.CBufRet.f32 %9714, 2
  %9718 = fmul fast float %9712, %9715
  %9719 = fmul fast float %9712, %9716
  %9720 = fmul fast float %9712, %9717
  %9721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9722 = extractvalue %dx.types.CBufRet.f32 %9721, 0
  %9723 = extractvalue %dx.types.CBufRet.f32 %9721, 1
  %9724 = extractvalue %dx.types.CBufRet.f32 %9721, 2
  %9725 = fmul fast float %9713, %9722
  %9726 = fmul fast float %9713, %9723
  %9727 = fmul fast float %9713, %9724
  %9728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9729 = extractvalue %dx.types.CBufRet.f32 %9728, 0
  %9730 = extractvalue %dx.types.CBufRet.f32 %9728, 1
  %9731 = extractvalue %dx.types.CBufRet.f32 %9728, 2
  %9732 = fadd fast float %9725, %9729
  %9733 = fadd fast float %9732, %9718
  %9734 = fadd fast float %9726, %9730
  %9735 = fadd fast float %9734, %9719
  %9736 = fadd fast float %9727, %9731
  %9737 = fadd fast float %9736, %9720
  %9738 = fmul fast float %9733, %8909
  %9739 = fmul fast float %9735, %8909
  %9740 = fmul fast float %9737, %8909
  %9741 = fmul fast float %9738, %9738
  %9742 = fmul fast float %9739, %9739
  %9743 = fadd fast float %9741, %9742
  %9744 = fmul fast float %9740, %9740
  %9745 = fadd fast float %9743, %9744
  %9746 = call float @dx.op.unary.f32(i32 24, float %9745)  ; Sqrt(value)
  %9747 = extractvalue %dx.types.CBufRet.f32 %8636, 0
  %9748 = fsub fast float %9746, %9747
  %9749 = extractvalue %dx.types.CBufRet.f32 %8636, 2
  %9750 = fmul fast float %9748, %9749
  %9751 = call float @dx.op.unary.f32(i32 7, float %9750)  ; Saturate(value)
  %9752 = fadd fast float %9751, -5.000000e-01
  %9753 = fmul fast float %9752, 2.000000e+00
  %9754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9755 = extractvalue %dx.types.CBufRet.f32 %9754, 2
  %9756 = call float @dx.op.binary.f32(i32 36, float %9755, float %9753)  ; FMin(a,b)
  %9757 = fsub fast float -0.000000e+00, %9755
  %9758 = fcmp fast ogt float %9756, %9757
  br i1 %9758, label %9759, label %10071, !dx.controlflow.hints !185

; <label>:9759                                    ; preds = %9704
  %9760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9761 = extractvalue %dx.types.CBufRet.f32 %9760, 3
  %9762 = fcmp fast ogt float %9761, 0.000000e+00
  br i1 %9762, label %9763, label %9838, !dx.controlflow.hints !186

; <label>:9763                                    ; preds = %9759
  %9764 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %9765 = extractvalue %dx.types.Dimensions %9764, 0
  %9766 = sitofp i32 %9765 to float
  %9767 = extractvalue %dx.types.Dimensions %9764, 1
  %9768 = sitofp i32 %9767 to float
  %9769 = fmul fast float %9708, %9766
  %9770 = fmul fast float %9709, %9768
  %9771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9772 = extractvalue %dx.types.CBufRet.f32 %9771, 1
  %9773 = fsub fast float -0.000000e+00, %9772
  %9774 = fptoui float %9773 to i32
  %9775 = fptoui float %9769 to i32
  %9776 = fptoui float %9770 to i32
  %9777 = and i32 %9774, 31
  %9778 = lshr i32 %9775, %9777
  %9779 = lshr i32 %9776, %9777
  %9780 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %9774, i32 %9778, i32 %9779, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9781 = extractvalue %dx.types.ResRet.f32 %9780, 0
  %9782 = fcmp fast olt float %9781, -1.000000e+00
  %9783 = fcmp fast ogt float %9781, -1.000000e+00
  %9784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9785 = extractvalue %dx.types.CBufRet.f32 %9784, 1
  %9786 = select i1 %9783, float %9785, float 1.000000e+00
  %9787 = fadd fast float %9781, 1.000000e+00
  %9788 = fmul fast float %9786, %9787
  %9789 = call float @dx.op.unary.f32(i32 6, float %9788)  ; FAbs(value)
  %9790 = extractvalue %dx.types.CBufRet.f32 %9784, 3
  %9791 = fcmp fast oge float %9789, %9790
  %9792 = select i1 %9791, float 0x4197782600000000, float %9789
  %9793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9794 = extractvalue %dx.types.CBufRet.f32 %9793, 0
  %9795 = extractvalue %dx.types.CBufRet.f32 %9793, 1
  %9796 = extractvalue %dx.types.CBufRet.f32 %9793, 2
  %9797 = select i1 %9782, float %9794, float %9715
  %9798 = select i1 %9782, float %9795, float %9716
  %9799 = select i1 %9782, float %9796, float %9717
  %9800 = fmul fast float %9797, %9712
  %9801 = fmul fast float %9798, %9712
  %9802 = fmul fast float %9799, %9712
  %9803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9804 = extractvalue %dx.types.CBufRet.f32 %9803, 0
  %9805 = extractvalue %dx.types.CBufRet.f32 %9803, 1
  %9806 = extractvalue %dx.types.CBufRet.f32 %9803, 2
  %9807 = select i1 %9782, float %9804, float %9722
  %9808 = select i1 %9782, float %9805, float %9723
  %9809 = select i1 %9782, float %9806, float %9724
  %9810 = fmul fast float %9807, %9713
  %9811 = fmul fast float %9808, %9713
  %9812 = fmul fast float %9809, %9713
  %9813 = fadd fast float %9810, %9800
  %9814 = fadd fast float %9811, %9801
  %9815 = fadd fast float %9812, %9802
  %9816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9817 = extractvalue %dx.types.CBufRet.f32 %9816, 0
  %9818 = extractvalue %dx.types.CBufRet.f32 %9816, 1
  %9819 = extractvalue %dx.types.CBufRet.f32 %9816, 2
  %9820 = select i1 %9782, float %9817, float %9729
  %9821 = select i1 %9782, float %9818, float %9730
  %9822 = select i1 %9782, float %9819, float %9731
  %9823 = fadd fast float %9813, %9820
  %9824 = fadd fast float %9814, %9821
  %9825 = fadd fast float %9815, %9822
  %9826 = fmul fast float %9823, %9792
  %9827 = fmul fast float %9824, %9792
  %9828 = fmul fast float %9825, %9792
  %9829 = fmul fast float %9826, %9826
  %9830 = fmul fast float %9827, %9827
  %9831 = fadd fast float %9829, %9830
  %9832 = fmul fast float %9828, %9828
  %9833 = fadd fast float %9831, %9832
  %9834 = call float @dx.op.unary.f32(i32 24, float %9833)  ; Sqrt(value)
  %9835 = fsub fast float %9834, %9747
  %9836 = fmul fast float %9835, %9749
  %9837 = call float @dx.op.unary.f32(i32 7, float %9836)  ; Saturate(value)
  br label %9838

; <label>:9838                                    ; preds = %9763, %9759
  %9839 = phi float [ %9837, %9763 ], [ 1.000000e+00, %9759 ]
  %9840 = fmul fast float %9756, 5.000000e-01
  %9841 = fadd fast float %9840, 5.000000e-01
  %9842 = call float @dx.op.unary.f32(i32 22, float %9841)  ; Frc(value)
  %9843 = call float @dx.op.unary.f32(i32 27, float %9842)  ; Round_ni(value)
  %9844 = call float @dx.op.unary.f32(i32 22, float %9842)  ; Frc(value)
  %9845 = fmul fast float %9844, 2.000000e+00
  %9846 = fadd fast float %9845, -1.000000e+00
  %9847 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %56, float %9708, float %9709, float %9843, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9848 = extractvalue %dx.types.ResRet.f32 %9847, 0
  %9849 = extractvalue %dx.types.ResRet.f32 %9847, 1
  %9850 = extractvalue %dx.types.ResRet.f32 %9847, 2
  %9851 = extractvalue %dx.types.ResRet.f32 %9847, 3
  %9852 = fadd fast float %9848, -5.000000e-01
  %9853 = fadd fast float %9850, -5.000000e-01
  %9854 = fmul fast float %9852, 0xBFD5555560000000
  %9855 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9853, float %9854)  ; FMad(a,b,c)
  %9856 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9849, float 0.000000e+00)  ; FMad(a,b,c)
  %9857 = fadd fast float %9856, %9851
  %9858 = fmul fast float %9852, -7.500000e-01
  %9859 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9853, float %9858)  ; FMad(a,b,c)
  %9860 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9849, float 0.000000e+00)  ; FMad(a,b,c)
  %9861 = fadd fast float %9860, %9851
  %9862 = call float @dx.op.binary.f32(i32 35, float %9855, float -1.000000e+00)  ; FMax(a,b)
  %9863 = call float @dx.op.binary.f32(i32 35, float %9857, float -1.000000e+00)  ; FMax(a,b)
  %9864 = call float @dx.op.binary.f32(i32 35, float %9859, float -1.000000e+00)  ; FMax(a,b)
  %9865 = call float @dx.op.binary.f32(i32 35, float %9861, float -1.000000e+00)  ; FMax(a,b)
  %9866 = call float @dx.op.binary.f32(i32 36, float %9862, float 1.000000e+00)  ; FMin(a,b)
  %9867 = call float @dx.op.binary.f32(i32 36, float %9863, float 1.000000e+00)  ; FMin(a,b)
  %9868 = call float @dx.op.binary.f32(i32 36, float %9864, float 1.000000e+00)  ; FMin(a,b)
  %9869 = call float @dx.op.binary.f32(i32 36, float %9865, float 1.000000e+00)  ; FMin(a,b)
  %9870 = fcmp fast olt float %9866, 0x3FEFFF8020000000
  br i1 %9870, label %9871, label %9986, !dx.controlflow.hints !187

; <label>:9871                                    ; preds = %9838
  %9872 = extractvalue %dx.types.CBufRet.f32 %9754, 3
  %9873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9874 = extractvalue %dx.types.CBufRet.f32 %9873, 0
  %9875 = extractvalue %dx.types.CBufRet.f32 %9873, 1
  %9876 = extractvalue %dx.types.CBufRet.f32 %9873, 2
  %9877 = extractvalue %dx.types.CBufRet.f32 %9873, 3
  %9878 = fsub fast float %9874, %9866
  %9879 = fsub fast float %9875, %9867
  %9880 = fsub fast float %9876, %9868
  %9881 = fsub fast float %9877, %9869
  %9882 = fmul fast float %9878, %9872
  %9883 = fmul fast float %9879, %9872
  %9884 = fmul fast float %9880, %9872
  %9885 = fmul fast float %9881, %9872
  %9886 = fadd fast float %9882, %9866
  %9887 = fadd fast float %9883, %9867
  %9888 = fsub fast float -0.000000e+00, %9887
  %9889 = fadd fast float %9884, %9868
  %9890 = fadd fast float %9885, %9869
  %9891 = fmul fast float %9886, %9886
  %9892 = fsub fast float %9887, %9891
  %9893 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9892)  ; FMax(a,b)
  %9894 = fdiv fast float 1.000000e+00, %9893
  %9895 = fmul fast float %9887, %9886
  %9896 = fsub fast float %9889, %9895
  %9897 = fsub fast float %9846, %9886
  %9898 = fmul fast float %9846, %9846
  %9899 = fsub fast float %9898, %9887
  %9900 = fmul fast float %9897, %9894
  %9901 = fmul fast float %9900, %9896
  %9902 = fsub fast float %9899, %9901
  %9903 = fmul fast float %9887, %9887
  %9904 = fsub fast float %9890, %9903
  %9905 = fmul fast float %9896, %9896
  %9906 = fmul fast float %9905, %9894
  %9907 = fsub fast float %9904, %9906
  %9908 = fdiv fast float %9902, %9907
  %9909 = fmul fast float %9896, %9908
  %9910 = fsub fast float %9897, %9909
  %9911 = fmul fast float %9910, %9894
  %9912 = fmul fast float %9911, %9886
  %9913 = fsub fast float 1.000000e+00, %9912
  %9914 = fmul fast float %9887, %9908
  %9915 = fsub fast float %9913, %9914
  %9916 = fmul fast float %9911, %9911
  %9917 = fmul fast float %9908, 4.000000e+00
  %9918 = fmul fast float %9917, %9915
  %9919 = fsub fast float %9916, %9918
  %9920 = call float @dx.op.unary.f32(i32 24, float %9919)  ; Sqrt(value)
  %9921 = fcmp fast oge float %9911, 0.000000e+00
  %9922 = fsub fast float -0.000000e+00, %9920
  %9923 = select i1 %9921, float %9922, float %9920
  %9924 = fsub fast float %9923, %9911
  %9925 = fdiv fast float %9924, %9908
  %9926 = fdiv fast float %9915, %9924
  %9927 = fmul fast float %9925, 5.000000e-01
  %9928 = fmul fast float %9926, 2.000000e+00
  %9929 = select i1 %9921, float %9927, float %9928
  %9930 = select i1 %9921, float %9928, float %9927
  %9931 = call float @dx.op.binary.f32(i32 35, float %9929, float %9930)  ; FMax(a,b)
  %9932 = call float @dx.op.binary.f32(i32 36, float %9929, float %9930)  ; FMin(a,b)
  %9933 = fcmp fast ogt float %9846, %9932
  br i1 %9933, label %9934, label %9944

; <label>:9934                                    ; preds = %9871
  %9935 = fsub fast float %9846, %9932
  %9936 = fsub fast float %9931, %9932
  %9937 = fmul fast float %9935, %9936
  %9938 = fmul fast float %9931, %9846
  %9939 = fadd fast float %9931, %9846
  %9940 = fmul fast float %9939, %9886
  %9941 = fadd fast float %9938, %9887
  %9942 = fsub fast float %9941, %9940
  %9943 = fdiv fast float %9942, %9937
  br label %9944

; <label>:9944                                    ; preds = %9934, %9871
  %9945 = phi float [ %9943, %9934 ], [ 0.000000e+00, %9871 ]
  %9946 = fcmp fast ogt float %9846, %9931
  %9947 = fsub fast float %9846, %9931
  br i1 %9946, label %9948, label %9958

; <label>:9948                                    ; preds = %9944
  %9949 = fsub fast float %9931, %9932
  %9950 = fmul fast float %9949, %9947
  %9951 = fmul fast float %9932, %9846
  %9952 = fadd fast float %9932, %9846
  %9953 = fmul fast float %9952, %9886
  %9954 = fsub fast float %9888, %9951
  %9955 = fadd fast float %9954, %9953
  %9956 = fdiv fast float %9955, %9950
  %9957 = fadd fast float %9956, %9945
  br label %9958

; <label>:9958                                    ; preds = %9948, %9944
  %9959 = phi float [ %9957, %9948 ], [ %9945, %9944 ]
  %9960 = fsub fast float %9846, %9932
  %9961 = fmul fast float %9960, %9947
  %9962 = fmul fast float %9932, %9931
  %9963 = fadd fast float %9932, %9931
  %9964 = fmul fast float %9963, %9886
  %9965 = fadd fast float %9962, %9887
  %9966 = fsub fast float %9965, %9964
  %9967 = fdiv fast float %9966, %9961
  %9968 = call float @dx.op.unary.f32(i32 7, float %9959)  ; Saturate(value)
  %9969 = fcmp fast oeq float %8637, 0.000000e+00
  %9970 = extractvalue %dx.types.CBufRet.f32 %9754, 0
  %9971 = fcmp fast oeq float %9970, 0.000000e+00
  %9972 = or i1 %9969, %9971
  %9973 = fmul fast float %9970, 2.000000e+00
  %9974 = fadd fast float %9755, %9756
  %9975 = fdiv fast float %9974, %9973
  %9976 = call float @dx.op.unary.f32(i32 7, float %9975)  ; Saturate(value)
  %9977 = fmul fast float %9976, 2.000000e+00
  %9978 = fsub fast float 3.000000e+00, %9977
  %9979 = fmul fast float %9976, %9976
  %9980 = fmul fast float %9979, %9978
  %9981 = select i1 %9972, float 1.000000e+00, float %9980
  %9982 = fmul fast float %9967, %8637
  %9983 = fadd fast float %9968, %9982
  %9984 = call float @dx.op.unary.f32(i32 7, float %9983)  ; Saturate(value)
  %9985 = fmul fast float %9981, %9984
  br label %9986

; <label>:9986                                    ; preds = %9958, %9838
  %9987 = phi float [ %9985, %9958 ], [ 0.000000e+00, %9838 ]
  %9988 = fsub fast float 1.000000e+00, %9987
  %9989 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %56, float %9708, float %9709, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9990 = extractvalue %dx.types.ResRet.f32 %9989, 0
  %9991 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9992 = extractvalue %dx.types.CBufRet.i32 %9991, 2
  %9993 = icmp eq i32 %9992, 0
  br i1 %9993, label %9999, label %9994

; <label>:9994                                    ; preds = %9986
  %9995 = call float @dx.op.unary.f32(i32 7, float %9987)  ; Saturate(value)
  %9996 = fadd fast float %9990, -1.000000e+00
  %9997 = fmul fast float %9995, %9996
  %9998 = fadd fast float %9997, 1.000000e+00
  br label %9999

; <label>:9999                                    ; preds = %9994, %9986
  %10000 = phi float [ %9998, %9994 ], [ %9988, %9986 ]
  br i1 %9762, label %10001, label %10019

; <label>:10001                                   ; preds = %9999
  %10002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10003 = extractvalue %dx.types.CBufRet.f32 %10002, 1
  %10004 = fsub fast float %9839, %10003
  %10005 = call float @dx.op.unary.f32(i32 7, float %10004)  ; Saturate(value)
  %10006 = fsub fast float %9839, %9761
  %10007 = call float @dx.op.unary.f32(i32 7, float %10006)  ; Saturate(value)
  %10008 = fsub fast float %10005, %10007
  %10009 = fsub fast float %9841, %10007
  %10010 = fdiv fast float %10009, %10008
  %10011 = call float @dx.op.unary.f32(i32 7, float %10010)  ; Saturate(value)
  %10012 = fmul fast float %10011, 2.000000e+00
  %10013 = fsub fast float 3.000000e+00, %10012
  %10014 = fsub fast float %9990, %10000
  %10015 = fmul fast float %10011, %10011
  %10016 = fmul fast float %10015, %10014
  %10017 = fmul fast float %10016, %10013
  %10018 = fadd fast float %10017, %10000
  br label %10019

; <label>:10019                                   ; preds = %10001, %9999
  %10020 = phi float [ %10018, %10001 ], [ %10000, %9999 ]
  %10021 = call float @dx.op.binary.f32(i32 35, float %9990, float %10020)  ; FMax(a,b)
  %10022 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %10023 = extractvalue %dx.types.CBufRet.i32 %10022, 2
  %10024 = and i32 %10023, 1
  %10025 = icmp eq i32 %10024, 0
  %10026 = fcmp fast une float %10021, 1.000000e+00
  %10027 = and i1 %10026, %10025
  br i1 %10027, label %10028, label %10047

; <label>:10028                                   ; preds = %10019
  %10029 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %56, float %9708, float %9709, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10030 = extractvalue %dx.types.ResRet.f32 %10029, 0
  %10031 = extractvalue %dx.types.ResRet.f32 %10029, 1
  %10032 = extractvalue %dx.types.ResRet.f32 %10029, 2
  %10033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10034 = extractvalue %dx.types.CBufRet.f32 %10033, 1
  %10035 = fmul fast float %10034, %10030
  %10036 = fmul fast float %10034, %10031
  %10037 = fmul fast float %10034, %10032
  %10038 = fcmp fast ogt float %9990, 0x3FEFFF2E40000000
  %10039 = fsub fast float 1.000000e+00, %10021
  %10040 = fsub fast float 1.000000e+00, %9990
  %10041 = fdiv fast float %10039, %10040
  %10042 = call float @dx.op.unary.f32(i32 7, float %10041)  ; Saturate(value)
  %10043 = select i1 %10038, float 0.000000e+00, float %10042
  %10044 = fmul fast float %10035, %10043
  %10045 = fmul fast float %10036, %10043
  %10046 = fmul fast float %10037, %10043
  br label %10047

; <label>:10047                                   ; preds = %10028, %10019
  %10048 = phi float [ 0.000000e+00, %10019 ], [ %10044, %10028 ]
  %10049 = phi float [ 0.000000e+00, %10019 ], [ %10045, %10028 ]
  %10050 = phi float [ 0.000000e+00, %10019 ], [ %10046, %10028 ]
  %10051 = fmul fast float %10048, %8625
  %10052 = fmul fast float %10049, %8625
  %10053 = fmul fast float %10050, %8625
  %10054 = fmul fast float %10021, %9683
  %10055 = call float @dx.op.dot3.f32(i32 55, float %10021, float %10021, float %10021, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10056 = call float @dx.op.dot3.f32(i32 55, float %10051, float %10052, float %10053, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10057 = select i1 %279, float %10055, float %10021
  %10058 = select i1 %279, float 1.000000e+00, float %10021
  %10059 = select i1 %279, float %10056, float %10051
  %10060 = select i1 %279, float 0.000000e+00, float %10052
  %10061 = select i1 %279, float 0.000000e+00, float %10053
  %10062 = fmul fast float %10057, %9695
  %10063 = fmul fast float %10057, %9696
  %10064 = fmul fast float %10058, %9697
  %10065 = fadd fast float %10062, %10059
  %10066 = fadd fast float %10063, %10060
  %10067 = fadd fast float %10061, %10064
  %10068 = fmul fast float %10057, %9698
  %10069 = fmul fast float %10057, %9699
  %10070 = fmul fast float %10058, %9700
  br label %10071

; <label>:10071                                   ; preds = %10047, %9704, %9673, %8905
  %10072 = phi float [ %8910, %8905 ], [ %9695, %9673 ], [ %10065, %10047 ], [ %9695, %9704 ]
  %10073 = phi float [ %8911, %8905 ], [ %9696, %9673 ], [ %10066, %10047 ], [ %9696, %9704 ]
  %10074 = phi float [ %8912, %8905 ], [ %9697, %9673 ], [ %10067, %10047 ], [ %9697, %9704 ]
  %10075 = phi float [ %8913, %8905 ], [ %9698, %9673 ], [ %10068, %10047 ], [ %9698, %9704 ]
  %10076 = phi float [ %8914, %8905 ], [ %9699, %9673 ], [ %10069, %10047 ], [ %9699, %9704 ]
  %10077 = phi float [ %8915, %8905 ], [ %9700, %9673 ], [ %10070, %10047 ], [ %9700, %9704 ]
  %10078 = phi float [ %8916, %8905 ], [ %9683, %9673 ], [ %10054, %10047 ], [ %9683, %9704 ]
  %10079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10080 = extractvalue %dx.types.CBufRet.f32 %10079, 2
  %10081 = extractvalue %dx.types.CBufRet.f32 %10079, 3
  %10082 = fmul fast float %10080, %120
  %10083 = fmul fast float %10081, %121
  %10084 = call float @dx.op.unary.f32(i32 7, float %10082)  ; Saturate(value)
  %10085 = call float @dx.op.unary.f32(i32 7, float %10083)  ; Saturate(value)
  %10086 = select i1 %8647, i32 2, i32 0
  %10087 = or i32 %10086, 1
  %10088 = uitofp i32 %10087 to float
  %10089 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %56, float %10084, float %10085, float %10088, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10090 = extractvalue %dx.types.ResRet.f32 %10089, 0
  %10091 = extractvalue %dx.types.ResRet.f32 %10089, 1
  %10092 = extractvalue %dx.types.ResRet.f32 %10089, 2
  %10093 = extractvalue %dx.types.ResRet.f32 %10089, 3
  %10094 = add nuw nsw i32 %10086, 2
  %10095 = uitofp i32 %10094 to float
  %10096 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %56, float %10084, float %10085, float %10095, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10097 = extractvalue %dx.types.ResRet.f32 %10096, 0
  %10098 = extractvalue %dx.types.ResRet.f32 %10096, 1
  %10099 = extractvalue %dx.types.ResRet.f32 %10096, 2
  %10100 = extractvalue %dx.types.ResRet.f32 %10096, 3
  %10101 = call float @dx.op.binary.f32(i32 35, float %10091, float %10092)  ; FMax(a,b)
  %10102 = call float @dx.op.binary.f32(i32 35, float %10090, float %10101)  ; FMax(a,b)
  %10103 = call float @dx.op.binary.f32(i32 35, float %10102, float %10093)  ; FMax(a,b)
  %10104 = call float @dx.op.binary.f32(i32 36, float %10098, float %10099)  ; FMin(a,b)
  %10105 = call float @dx.op.binary.f32(i32 36, float %10097, float %10104)  ; FMin(a,b)
  %10106 = call float @dx.op.binary.f32(i32 36, float %10105, float %10100)  ; FMin(a,b)
  %10107 = fmul fast float %10103, 2.550000e+02
  %10108 = fadd fast float %10107, 0x3F70101020000000
  %10109 = fptoui float %10108 to i32
  %10110 = fmul fast float %10106, 2.550000e+02
  %10111 = fadd fast float %10110, 0x3F70101020000000
  %10112 = fptoui float %10111 to i32
  %10113 = icmp ult i32 %10109, %10112
  br i1 %10113, label %10114, label %10283

; <label>:10114                                   ; preds = %10071
  %10115 = fcmp fast ogt float %106, 9.843750e-01
  %10116 = fadd fast float %8909, -4.000000e+00
  %10117 = select i1 %10115, float -4.000000e+00, float %10116
  %10118 = call float @dx.op.binary.f32(i32 35, float %10117, float 0.000000e+00)  ; FMax(a,b)
  %10119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10120 = extractvalue %dx.types.CBufRet.f32 %10119, 0
  %10121 = fadd fast float %10120, %10118
  %10122 = extractvalue %dx.types.CBufRet.f32 %10119, 2
  %10123 = fmul fast float %10121, %10122
  %10124 = call float @dx.op.unary.f32(i32 23, float %10123)  ; Log(value)
  %10125 = extractvalue %dx.types.CBufRet.f32 %10119, 3
  %10126 = fmul fast float %10125, %10124
  %10127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10128 = extractvalue %dx.types.CBufRet.f32 %10127, 2
  %10129 = fmul fast float %10126, %10128
  %10130 = call float @dx.op.unary.f32(i32 7, float %10129)  ; Saturate(value)
  %10131 = uitofp i32 %10109 to float
  %10132 = uitofp i32 %10112 to float
  %10133 = fadd fast float %10131, 5.000000e-01
  %10134 = fadd fast float %10132, 5.000000e-01
  %10135 = fmul fast float %10128, %10133
  %10136 = fmul fast float %10128, %10134
  %10137 = fadd fast float %10135, 0x3F0FFB4800000000
  %10138 = fadd fast float %10136, 0xBF0FFB4800000000
  %10139 = call float @dx.op.binary.f32(i32 35, float %10130, float %10137)  ; FMax(a,b)
  %10140 = call float @dx.op.binary.f32(i32 36, float %10139, float %10138)  ; FMin(a,b)
  %10141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10142 = extractvalue %dx.types.CBufRet.f32 %10141, 1
  %10143 = extractvalue %dx.types.CBufRet.f32 %10141, 2
  %10144 = extractvalue %dx.types.CBufRet.f32 %10141, 0
  %10145 = select i1 %8647, float %10144, float 0.000000e+00
  %10146 = fmul fast float %10142, %10140
  %10147 = fadd fast float %10145, %10146
  %10148 = fadd fast float %10145, %10143
  %10149 = fsub fast float %10142, %10143
  %10150 = fadd fast float %10149, %10145
  %10151 = call float @dx.op.binary.f32(i32 35, float %10147, float %10148)  ; FMax(a,b)
  %10152 = call float @dx.op.binary.f32(i32 36, float %10151, float %10150)  ; FMin(a,b)
  %10153 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %54, float %10084, float %10085, float %10152, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10154 = extractvalue %dx.types.ResRet.f32 %10153, 0
  %10155 = extractvalue %dx.types.ResRet.f32 %10153, 1
  %10156 = extractvalue %dx.types.ResRet.f32 %10153, 2
  %10157 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10158 = extractvalue %dx.types.CBufRet.i32 %10157, 0
  %10159 = extractvalue %dx.types.CBufRet.i32 %10157, 1
  %10160 = uitofp i32 %10158 to float
  %10161 = uitofp i32 %10159 to float
  %10162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10163 = extractvalue %dx.types.CBufRet.f32 %10162, 0
  %10164 = extractvalue %dx.types.CBufRet.f32 %10162, 1
  %10165 = fmul fast float %10160, %10084
  %10166 = fmul fast float %10161, %10085
  %10167 = fadd fast float %10165, -5.000000e-01
  %10168 = fadd fast float %10166, -5.000000e-01
  %10169 = call float @dx.op.unary.f32(i32 22, float %10167)  ; Frc(value)
  %10170 = call float @dx.op.unary.f32(i32 22, float %10168)  ; Frc(value)
  %10171 = fmul fast float %10169, %10169
  %10172 = fmul fast float %10171, %10169
  %10173 = fsub fast float 3.000000e+00, %10169
  %10174 = fmul fast float %10171, %10173
  %10175 = fmul fast float %10169, 3.000000e+00
  %10176 = fmul fast float %10172, 3.000000e+00
  %10177 = fmul fast float %10171, 6.000000e+00
  %10178 = fsub fast float %10176, %10177
  %10179 = fadd fast float %10178, 4.000000e+00
  %10180 = fmul fast float %10179, 0x3FC5555560000000
  %10181 = fmul fast float %10172, -3.000000e+00
  %10182 = fadd fast float %10171, %10169
  %10183 = fmul fast float %10182, 3.000000e+00
  %10184 = fadd fast float %10181, 1.000000e+00
  %10185 = fadd fast float %10184, %10183
  %10186 = fmul fast float %10172, 0x3FC5555560000000
  %10187 = fmul fast float %10170, %10170
  %10188 = fmul fast float %10187, %10170
  %10189 = fsub fast float 3.000000e+00, %10170
  %10190 = fmul fast float %10187, %10189
  %10191 = fmul fast float %10170, 3.000000e+00
  %10192 = fmul fast float %10188, 3.000000e+00
  %10193 = fmul fast float %10187, 6.000000e+00
  %10194 = fsub fast float %10192, %10193
  %10195 = fadd fast float %10194, 4.000000e+00
  %10196 = fmul fast float %10195, 0x3FC5555560000000
  %10197 = fmul fast float %10188, -3.000000e+00
  %10198 = fadd fast float %10187, %10170
  %10199 = fmul fast float %10198, 3.000000e+00
  %10200 = fadd fast float %10197, 1.000000e+00
  %10201 = fadd fast float %10200, %10199
  %10202 = fmul fast float %10188, 0x3FC5555560000000
  %10203 = fadd fast float %10169, 1.000000e+00
  %10204 = fsub fast float 1.000000e+00, %10175
  %10205 = fadd fast float %10204, %10174
  %10206 = fadd fast float %10205, %10179
  %10207 = fmul fast float %10206, 0x3FC5555560000000
  %10208 = fdiv fast float %10180, %10207
  %10209 = fsub fast float %10203, %10208
  %10210 = fsub fast float 1.000000e+00, %10169
  %10211 = fadd fast float %10185, %10172
  %10212 = fmul fast float %10211, 0x3FC5555560000000
  %10213 = fdiv fast float %10186, %10212
  %10214 = fadd fast float %10210, %10213
  %10215 = fadd fast float %10170, 1.000000e+00
  %10216 = fsub fast float 1.000000e+00, %10191
  %10217 = fadd fast float %10216, %10190
  %10218 = fadd fast float %10217, %10195
  %10219 = fmul fast float %10218, 0x3FC5555560000000
  %10220 = fdiv fast float %10196, %10219
  %10221 = fsub fast float %10215, %10220
  %10222 = fsub fast float 1.000000e+00, %10170
  %10223 = fadd fast float %10201, %10188
  %10224 = fmul fast float %10223, 0x3FC5555560000000
  %10225 = fdiv fast float %10202, %10224
  %10226 = fadd fast float %10225, %10222
  %10227 = fmul fast float %10209, %10163
  %10228 = fsub fast float %10084, %10227
  %10229 = fmul fast float %10214, %10163
  %10230 = fadd fast float %10229, %10084
  %10231 = fmul fast float %10226, %10164
  %10232 = fadd fast float %10231, %10085
  %10233 = fmul fast float %10221, %10164
  %10234 = fsub fast float %10085, %10233
  %10235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %10228, float %10234, float %10152, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10236 = extractvalue %dx.types.ResRet.f32 %10235, 0
  %10237 = extractvalue %dx.types.ResRet.f32 %10235, 1
  %10238 = extractvalue %dx.types.ResRet.f32 %10235, 2
  %10239 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %10230, float %10234, float %10152, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10240 = extractvalue %dx.types.ResRet.f32 %10239, 0
  %10241 = extractvalue %dx.types.ResRet.f32 %10239, 1
  %10242 = extractvalue %dx.types.ResRet.f32 %10239, 2
  %10243 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %10228, float %10232, float %10152, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10244 = extractvalue %dx.types.ResRet.f32 %10243, 0
  %10245 = extractvalue %dx.types.ResRet.f32 %10243, 1
  %10246 = extractvalue %dx.types.ResRet.f32 %10243, 2
  %10247 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %10230, float %10232, float %10152, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10248 = extractvalue %dx.types.ResRet.f32 %10247, 0
  %10249 = extractvalue %dx.types.ResRet.f32 %10247, 1
  %10250 = extractvalue %dx.types.ResRet.f32 %10247, 2
  %10251 = fsub fast float %10244, %10236
  %10252 = fsub fast float %10245, %10237
  %10253 = fsub fast float %10246, %10238
  %10254 = fmul fast float %10251, %10224
  %10255 = fmul fast float %10252, %10224
  %10256 = fmul fast float %10253, %10224
  %10257 = fadd fast float %10254, %10236
  %10258 = fadd fast float %10255, %10237
  %10259 = fadd fast float %10256, %10238
  %10260 = fsub fast float %10248, %10240
  %10261 = fsub fast float %10249, %10241
  %10262 = fsub fast float %10250, %10242
  %10263 = fmul fast float %10260, %10224
  %10264 = fmul fast float %10261, %10224
  %10265 = fmul fast float %10262, %10224
  %10266 = fsub fast float %10240, %10257
  %10267 = fadd fast float %10266, %10263
  %10268 = fsub fast float %10241, %10258
  %10269 = fadd fast float %10268, %10264
  %10270 = fsub fast float %10242, %10259
  %10271 = fadd fast float %10270, %10265
  %10272 = fmul fast float %10267, %10212
  %10273 = fmul fast float %10269, %10212
  %10274 = fmul fast float %10271, %10212
  %10275 = fadd fast float %10272, %10257
  %10276 = fadd fast float %10273, %10258
  %10277 = fadd fast float %10274, %10259
  %10278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10279 = extractvalue %dx.types.CBufRet.f32 %10278, 1
  %10280 = fmul fast float %10275, %10279
  %10281 = fmul fast float %10276, %10279
  %10282 = fmul fast float %10277, %10279
  br label %10283

; <label>:10283                                   ; preds = %10114, %10071
  %10284 = phi float [ %10154, %10114 ], [ 1.000000e+00, %10071 ]
  %10285 = phi float [ %10155, %10114 ], [ 1.000000e+00, %10071 ]
  %10286 = phi float [ %10156, %10114 ], [ 1.000000e+00, %10071 ]
  %10287 = phi float [ %10280, %10114 ], [ 0.000000e+00, %10071 ]
  %10288 = phi float [ %10281, %10114 ], [ 0.000000e+00, %10071 ]
  %10289 = phi float [ %10282, %10114 ], [ 0.000000e+00, %10071 ]
  %10290 = fmul fast float %10287, %8625
  %10291 = fmul fast float %10288, %8625
  %10292 = fmul fast float %10289, %8625
  %10293 = fmul fast float %10284, %10078
  %10294 = call float @dx.op.dot3.f32(i32 55, float %10284, float %10285, float %10286, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10295 = call float @dx.op.dot3.f32(i32 55, float %10290, float %10291, float %10292, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10296 = select i1 %279, float %10294, float %10284
  %10297 = select i1 %279, float %10294, float %10285
  %10298 = select i1 %279, float 1.000000e+00, float %10286
  %10299 = select i1 %279, float %10295, float %10290
  %10300 = select i1 %279, float 0.000000e+00, float %10291
  %10301 = select i1 %279, float 0.000000e+00, float %10292
  %10302 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10303 = extractvalue %dx.types.CBufRet.i32 %10302, 3
  %10304 = and i32 %10303, 3
  %10305 = icmp ne i32 %10304, 0
  %10306 = and i32 %10303, 4
  %10307 = icmp ne i32 %10306, 0
  %10308 = and i1 %10305, %10307
  %10309 = and i1 %279, %10308
  br i1 %10309, label %10310, label %10316

; <label>:10310                                   ; preds = %10283
  %10311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10312 = extractvalue %dx.types.CBufRet.f32 %10311, 1
  %10313 = fadd fast float %10293, -1.000000e+00
  %10314 = fmul fast float %10312, %10313
  %10315 = fadd fast float %10314, 1.000000e+00
  br label %10316

; <label>:10316                                   ; preds = %10310, %10283
  %10317 = phi float [ %10315, %10310 ], [ %10293, %10283 ]
  %10318 = fadd fast float %10075, %10072
  %10319 = fmul fast float %10296, %10318
  %10320 = fadd fast float %10319, %10299
  %10321 = fadd fast float %10076, %10073
  %10322 = fmul fast float %10297, %10321
  %10323 = fadd fast float %10322, %10300
  %10324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10325 = extractvalue %dx.types.CBufRet.f32 %10324, 0
  br i1 %279, label %10326, label %10350

; <label>:10326                                   ; preds = %10316
  %10327 = fadd fast float %10320, %10323
  %10328 = fmul fast float %10325, %10327
  %10329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10330 = extractvalue %dx.types.CBufRet.f32 %10329, 3
  %10331 = extractvalue %dx.types.CBufRet.f32 %8629, 1
  %10332 = fsub fast float %8634, %8628
  %10333 = fadd fast float %10332, %8635
  %10334 = fsub fast float %10333, %10331
  %10335 = extractvalue %dx.types.CBufRet.f32 %8629, 2
  %10336 = fmul fast float %10334, %10335
  %10337 = call float @dx.op.unary.f32(i32 7, float %10336)  ; Saturate(value)
  %10338 = fsub fast float %10337, %10330
  %10339 = fmul fast float %10338, %10317
  %10340 = fadd fast float %10339, %10330
  %10341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10342 = extractvalue %dx.types.CBufRet.f32 %10341, 0
  %10343 = fsub fast float %10340, %10342
  %10344 = fmul fast float %10343, 1.000000e+01
  %10345 = call float @dx.op.unary.f32(i32 7, float %10344)  ; Saturate(value)
  %10346 = fsub fast float %4253, %8625
  %10347 = fmul fast float %10345, %10346
  %10348 = fadd fast float %10347, %8625
  %10349 = fmul fast float %10348, %10340
  br label %10374

; <label>:10350                                   ; preds = %10316
  %10351 = fadd fast float %10077, %10074
  %10352 = fmul fast float %10298, %10351
  %10353 = fadd fast float %10352, %10301
  %10354 = fmul fast float %10325, %10320
  %10355 = fmul fast float %10325, %10323
  %10356 = fmul fast float %10325, %10353
  %10357 = call float @dx.op.binary.f32(i32 35, float %10355, float %10356)  ; FMax(a,b)
  %10358 = call float @dx.op.binary.f32(i32 35, float %10354, float %10357)  ; FMax(a,b)
  %10359 = call float @dx.op.binary.f32(i32 35, float %10358, float %8625)  ; FMax(a,b)
  %10360 = fcmp fast ugt float %10359, 0x3F10000000000000
  br i1 %10360, label %10362, label %10361

; <label>:10361                                   ; preds = %10350
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10362

; <label>:10362                                   ; preds = %10361, %10350
  %10363 = add i32 %62, 356
  %10364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %10363, i32 undef)  ; BufferLoad(srv,index,wot)
  %10365 = extractvalue %dx.types.ResRet.i32 %10364, 0
  %10366 = and i32 %10365, 32
  %10367 = icmp eq i32 %10366, 0
  br i1 %10367, label %10374, label %10368

; <label>:10368                                   ; preds = %10362
  %10369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10370 = extractvalue %dx.types.CBufRet.f32 %10369, 0
  %10371 = fmul fast float %10370, 0x3FE99999A0000000
  %10372 = fadd fast float %10370, %10354
  %10373 = fadd fast float %10371, %10356
  br label %10374

; <label>:10374                                   ; preds = %10368, %10362, %10326
  %10375 = phi float [ %10328, %10326 ], [ %10372, %10368 ], [ %10354, %10362 ]
  %10376 = phi float [ %10349, %10326 ], [ %10355, %10368 ], [ %10355, %10362 ]
  %10377 = phi float [ %10348, %10326 ], [ %10373, %10368 ], [ %10356, %10362 ]
  %10378 = phi float [ %10348, %10326 ], [ %8625, %10368 ], [ %8625, %10362 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10379 = call float @dx.op.binary.f32(i32 36, float %10375, float 3.225500e+04)  ; FMin(a,b)
  %10380 = call float @dx.op.binary.f32(i32 36, float %10376, float 3.225500e+04)  ; FMin(a,b)
  %10381 = call float @dx.op.binary.f32(i32 36, float %10377, float 3.225500e+04)  ; FMin(a,b)
  %10382 = call float @dx.op.binary.f32(i32 36, float %10378, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10379)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10380)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10381)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %10382)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

